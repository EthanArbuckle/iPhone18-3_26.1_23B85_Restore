void sub_223D8(void *a1)
{
  __cxa_begin_catch(a1);
  (*(*v1 + 8))(v1);
  __cxa_rethrow();
}

_BYTE *std::__add_grouping<char>(_BYTE *result, char a2, char *a3, uint64_t a4, char *a5, char *a6)
{
  v6 = *a3;
  if (v6 < 1 || a6 - a5 <= v6)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      a6 -= v6;
      if (v9 >= a4 - 1)
      {
        ++v8;
      }

      else
      {
        ++v9;
      }

      v10 = a3[v9];
      v11 = v10 < 1 || a6 - a5 <= v10;
      LOBYTE(v6) = a3[v9];
    }

    while (!v11);
  }

  for (; a5 != a6; ++result)
  {
    v12 = *a5++;
    *result = v12;
  }

  for (; v8; --v8)
  {
    *result++ = a2;
    v13 = a3[v9];
    if (v13 >= 1)
    {
      do
      {
        v14 = *a5++;
        *result++ = v14;
        v15 = v13--;
      }

      while (v15 > 1);
    }
  }

  while (v9)
  {
    --v9;
    *result++ = a2;
    v16 = a3[v9];
    if (v16 >= 1)
    {
      do
      {
        v17 = *a5++;
        *result++ = v17;
        v18 = v16--;
      }

      while (v18 > 1);
    }
  }

  return result;
}

uint64_t std::numpunct<char>::numpunct(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5DB28;
  *(a1 + 16) = 0;
  std::numpunct<char>::_M_initialize_numpunct(a1);
  return a1;
}

uint64_t std::numpunct<char>::numpunct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a3 != 0;
  *a1 = off_5DB28;
  *(a1 + 16) = a2;
  std::numpunct<char>::_M_initialize_numpunct(a1);
  return a1;
}

{
  *(a1 + 8) = a3 != 0;
  *a1 = off_5DB28;
  *(a1 + 16) = 0;
  std::numpunct<char>::_M_initialize_numpunct(a1);
  return a1;
}

double std::__numpunct_cache<char>::__numpunct_cache(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5DB70;
  *(a1 + 136) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5DB70;
  *(a1 + 136) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void std::__numpunct_cache<char>::~__numpunct_cache(std::locale::facet *this)
{
  *this = off_5DB70;
  if (*(this + 136) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      operator delete[](v2);
    }

    v3 = *(this + 5);
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = *(this + 7);
    if (v4)
    {
      operator delete[](v4);
    }
  }

  std::locale::facet::~facet(this);
}

void std::__numpunct_cache<char>::~__numpunct_cache(std::locale::facet *a1)
{
  std::__numpunct_cache<char>::~__numpunct_cache(a1);

  operator delete(v1);
}

uint64_t std::__numpunct_cache<char>::_M_cache(uint64_t a1, uint64_t a2)
{
  *(a1 + 136) = 1;
  v4 = std::locale::id::_M_id(&std::numpunct<char>::id);
  if (v4 >= *(*a2 + 16) || (v5 = *(*(*a2 + 8) + 8 * v4)) == 0)
  {
    std::__throw_bad_cast();
  }

  (*(*v5 + 32))(&v21, v5);
  v6 = v21;
  v7 = v21 - 6;
  *(a1 + 24) = *(v21 - 3);
  if (v7 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v6 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v7);
  }

  v8 = operator new[](*(a1 + 24));
  (*(*v5 + 32))(&v21, v5);
  std::string::copy(&v21, v8, *(a1 + 24), 0);
  v9 = v21 - 6;
  if (v21 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v21 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v9);
  }

  *(a1 + 16) = v8;
  if (*(a1 + 24))
  {
    (*(*v5 + 32))(&v21, v5);
    v10 = v21;
    if ((*(v21 - 2) & 0x80000000) == 0)
    {
      std::string::_M_leak_hard(&v21);
      v10 = v21;
    }

    *(a1 + 32) = *v10 > 0;
    if (v10 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v10 - 2, 0xFFFFFFFF) <= 0)
    {
      std::string::_Rep::_M_destroy(v10 - 6);
    }
  }

  else
  {
    *(a1 + 32) = 0;
  }

  (*(*v5 + 40))(&v21, v5);
  v11 = v21;
  v12 = v21 - 6;
  *(a1 + 48) = *(v21 - 3);
  if (v12 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v11 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v12);
  }

  v13 = operator new[](*(a1 + 48));
  (*(*v5 + 40))(&v21, v5);
  std::string::copy(&v21, v13, *(a1 + 48), 0);
  v14 = v21 - 6;
  if (v21 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v21 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v14);
  }

  *(a1 + 40) = v13;
  (*(*v5 + 48))(&v21, v5);
  v15 = v21;
  v16 = v21 - 6;
  *(a1 + 64) = *(v21 - 3);
  if (v16 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v15 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v16);
  }

  v17 = operator new[](*(a1 + 64));
  (*(*v5 + 48))(&v21, v5);
  std::string::copy(&v21, v17, *(a1 + 64), 0);
  v18 = v21 - 6;
  if (v21 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v21 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v18);
  }

  *(a1 + 56) = v17;
  *(a1 + 72) = (*(*v5 + 16))(v5);
  *(a1 + 73) = (*(*v5 + 24))(v5);
  v19 = std::use_facet<std::ctype<char>>(a2);
  std::ctype<char>::widen(v19, std::__num_base::_S_atoms_out, (std::__num_base::_S_atoms_out + 36), (a1 + 74));
  return std::ctype<char>::widen(v19, std::__num_base::_S_atoms_in[0], (std::__num_base::_S_atoms_in[0] + 26), (a1 + 110));
}

void sub_22D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (a9 - 24 != v13 && atomic_fetch_add((a9 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a9 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::use_facet<std::numpunct<char>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::numpunct<char>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::numpunct_byname<char>::numpunct_byname(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *std::numpunct<char>::numpunct(a1, a3) = off_5DB90;
  if (*a2 != 67 || *(a2 + 1))
  {
    if (strcmp(a2, "POSIX"))
    {
      std::locale::facet::_S_create_c_locale(&v8, a2, 0, v5);
      std::numpunct<char>::_M_initialize_numpunct(a1);
      std::locale::facet::_S_destroy_c_locale(&v8, v6);
    }
  }

  return a1;
}

void std::numpunct_byname<char>::~numpunct_byname(std::locale::facet *a1)
{
  std::numpunct<char>::~numpunct(a1);

  operator delete(v1);
}

uint64_t std::num_get<char,std::istreambuf_iterator<char>>::num_get(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2 != 0;
  *result = off_5DBD8;
  return result;
}

{
  *(result + 8) = a2 != 0;
  *result = off_5DBD8;
  return result;
}

uint64_t std::num_get<char,std::istreambuf_iterator<char>>::get(uint64_t a1)
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

{
  return (*(*a1 + 80))(a1);
}

{
  return (*(*a1 + 88))(a1);
}

{
  return (*(*a1 + 96))(a1);
}

void std::num_get<char,std::istreambuf_iterator<char>>::~num_get(std::locale::facet *a1)
{
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

uint64_t *std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, std::string *a8)
{
  v55 = a2;
  v56 = a3;
  v54[0] = a4;
  v54[1] = a5;
  v9 = std::__use_cache<std::__numpunct_cache<char>>::operator()(&v53, (a6 + 208));
  v10 = std::istreambuf_iterator<char>::_M_get(&v55);
  v11 = std::istreambuf_iterator<char>::_M_get(v54);
  v13 = v10 == -1 || v11 == -1;
  if ((v10 & v11) == 0xFFFFFFFF || !v13)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v21 = std::istreambuf_iterator<char>::_M_get(&v55);
  v15 = v21;
  v22 = *(v9 + 111);
  if ((v22 == v21 || *(v9 + 110) == v21) && (*(v9 + 32) != 1 || *(v9 + 73) != v21) && *(v9 + 72) != v21)
  {
    if (v22 == v21)
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    std::string::push_back(a8, v23);
    if (v55)
    {
      v24 = v55[2];
      if (v24 >= v55[3])
      {
        std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v55);
      }

      else
      {
        v55[2] = v24 + 1;
      }

      LODWORD(v56) = -1;
    }

    v25 = std::istreambuf_iterator<char>::_M_get(&v55) == -1;
    if (v25 != (std::istreambuf_iterator<char>::_M_get(v54) == -1))
    {
      v15 = std::istreambuf_iterator<char>::_M_get(&v55);
      goto LABEL_29;
    }

LABEL_13:
    v16 = 0;
    v17 = 0;
    v18 = (v9 + 73);
    v19 = (v9 + 114);
    goto LABEL_14;
  }

LABEL_29:
  v17 = 0;
  v16 = 0;
  v18 = (v9 + 73);
  v19 = (v9 + 114);
  while (1)
  {
    if (*(v9 + 32) == 1 && *v18 == v15 || *(v9 + 72) == v15 || *v19 != v15)
    {
      v20 = 0;
      goto LABEL_44;
    }

    if ((v17 & 1) == 0)
    {
      std::string::push_back(a8, 48);
    }

    if (v55)
    {
      v26 = v55[2];
      if (v26 >= v55[3])
      {
        std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v55);
      }

      else
      {
        v55[2] = v26 + 1;
      }

      LODWORD(v56) = -1;
    }

    v27 = std::istreambuf_iterator<char>::_M_get(&v55) == -1;
    if (v27 == (std::istreambuf_iterator<char>::_M_get(v54) == -1))
    {
      break;
    }

    v15 = std::istreambuf_iterator<char>::_M_get(&v55);
    ++v16;
    v17 = 1;
  }

  ++v16;
  v17 = 1;
LABEL_14:
  v20 = 1;
LABEL_44:
  v52 = &unk_60620;
  if (*(v9 + 32) == 1)
  {
    std::string::reserve(&v52, 0x20uLL);
  }

  if ((*(v9 + 136) & 1) == 0)
  {
    if ((v20 & 1) == 0)
    {
      v28 = 0;
      v29 = 0;
      while (1)
      {
        v39 = v17 ^ 1;
        while (1)
        {
          if ((v15 - 58) >= 0xF6u && v15 != 47)
          {
            std::string::push_back(a8, (v15 - 48) | 0x30);
            v17 = 1;
            goto LABEL_117;
          }

          if (!((*(v9 + 72) != v15) | (v28 | v29) & 1))
          {
            std::string::push_back(a8, 46);
            v29 = 0;
            v28 = 1;
            goto LABEL_117;
          }

          if (*(v9 + 128) == v15)
          {
            if ((v29 | v39))
            {
              goto LABEL_129;
            }
          }

          else if ((*(v9 + 134) != v15) | (v29 | v39) & 1)
          {
            goto LABEL_129;
          }

          std::string::push_back(a8, 101);
          if (v55)
          {
            v41 = v55[2];
            if (v41 >= v55[3])
            {
              (*(*v55 + 80))();
            }

            else
            {
              v55[2] = v41 + 1;
            }

            LODWORD(v56) = -1;
          }

          v42 = std::istreambuf_iterator<char>::_M_get(&v55);
          if ((v42 == -1) == (std::istreambuf_iterator<char>::_M_get(v54) == -1))
          {
LABEL_124:
            v29 = 1;
            goto LABEL_125;
          }

          v43 = std::istreambuf_iterator<char>::_M_get(&v55);
          v15 = v43;
          if (*(v9 + 111) == v43)
          {
            break;
          }

          v29 = 1;
          if (*(v9 + 110) == v43)
          {
            v44 = 45;
            goto LABEL_116;
          }
        }

        v44 = 43;
LABEL_116:
        std::string::push_back(a8, v44);
        v29 = 1;
LABEL_117:
        if (v55)
        {
          v45 = v55[2];
          if (v45 >= v55[3])
          {
            (*(*v55 + 80))();
          }

          else
          {
            v55[2] = v45 + 1;
          }

          LODWORD(v56) = -1;
        }

        v46 = std::istreambuf_iterator<char>::_M_get(&v55);
        if ((v46 == -1) == (std::istreambuf_iterator<char>::_M_get(v54) == -1))
        {
          goto LABEL_125;
        }

        v15 = std::istreambuf_iterator<char>::_M_get(&v55);
      }
    }

LABEL_92:
    v29 = 0;
    v28 = 0;
    goto LABEL_125;
  }

  if (v20)
  {
    goto LABEL_92;
  }

  v28 = 0;
  v29 = 0;
  while (2)
  {
    v30 = v17 ^ 1;
    while (1)
    {
      if (*(v9 + 32) == 1 && *v18 == v15)
      {
        if (((v28 | v29) & 1) == 0)
        {
          if (v16)
          {
            std::string::push_back(&v52, v16);
            v29 = 0;
            v28 = 0;
            v16 = 0;
            goto LABEL_84;
          }

          std::string::_M_mutate(a8, 0, *(*a8 - 24), 0);
          v29 = 0;
          v28 = 0;
          LOBYTE(v16) = 0;
LABEL_129:
          v47 = 0;
          goto LABEL_130;
        }

LABEL_127:
        v47 = 0;
        v29 |= v28 ^ 1;
        goto LABEL_130;
      }

      if (*(v9 + 72) == v15)
      {
        if (((v28 | v29) & 1) == 0)
        {
          if (*(v52 - 3))
          {
            std::string::push_back(&v52, v16);
          }

          std::string::push_back(a8, 46);
          v29 = 0;
          v28 = 1;
          goto LABEL_84;
        }

        goto LABEL_127;
      }

      v31 = memchr(v19, v15, 0xAuLL);
      if (v31)
      {
        break;
      }

      if (*(v9 + 128) == v15)
      {
        if ((v29 | v30))
        {
          goto LABEL_129;
        }
      }

      else if ((*(v9 + 134) != v15) | (v29 | v30) & 1)
      {
        goto LABEL_129;
      }

      if (!((*(v52 - 3) == 0) | v28 & 1))
      {
        std::string::push_back(&v52, v16);
      }

      std::string::push_back(a8, 101);
      if (v55)
      {
        v32 = v55[2];
        if (v32 >= v55[3])
        {
          (*(*v55 + 80))();
        }

        else
        {
          v55[2] = v32 + 1;
        }

        LODWORD(v56) = -1;
      }

      v33 = std::istreambuf_iterator<char>::_M_get(&v55);
      if ((v33 == -1) == (std::istreambuf_iterator<char>::_M_get(v54) == -1))
      {
        goto LABEL_124;
      }

      v34 = std::istreambuf_iterator<char>::_M_get(&v55);
      v15 = v34;
      v35 = *(v9 + 111);
      if (v35 != v34)
      {
        v29 = 1;
        if (*(v9 + 110) != v34)
        {
          continue;
        }
      }

      if (*(v9 + 32) == 1)
      {
        v29 = 1;
        if (*v18 == v34)
        {
          continue;
        }
      }

      v29 = 1;
      if (*(v9 + 72) != v34)
      {
        if (v35 == v34)
        {
          v36 = 43;
        }

        else
        {
          v36 = 45;
        }

        std::string::push_back(a8, v36);
        goto LABEL_84;
      }
    }

    std::string::push_back(a8, v31 - v19 + 48);
    ++v16;
    v17 = 1;
LABEL_84:
    if (v55)
    {
      v37 = v55[2];
      if (v37 >= v55[3])
      {
        (*(*v55 + 80))();
      }

      else
      {
        v55[2] = v37 + 1;
      }

      LODWORD(v56) = -1;
    }

    v38 = std::istreambuf_iterator<char>::_M_get(&v55);
    if ((v38 == -1) != (std::istreambuf_iterator<char>::_M_get(v54) == -1))
    {
      v15 = std::istreambuf_iterator<char>::_M_get(&v55);
      continue;
    }

    break;
  }

LABEL_125:
  v47 = 1;
LABEL_130:
  if (*(v52 - 3))
  {
    if (((v28 | v29) & 1) == 0)
    {
      std::string::push_back(&v52, v16);
    }

    if ((std::__verify_grouping(*(v9 + 16), *(v9 + 24), &v52) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if (v47)
  {
    *a7 |= 2u;
  }

  v48 = v55;
  v49 = v52 - 24;
  if (v52 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v52 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v49);
  }

  return v48;
}

void sub_239A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if ((a10 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a10 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a10 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__use_cache<std::__numpunct_cache<char>>::operator()(uint64_t a1, std::locale::_Impl **a2)
{
  v3 = std::locale::id::_M_id(&std::numpunct<char>::id);
  v4 = *(*a2 + 3);
  result = *(v4 + 8 * v3);
  if (!result)
  {
    v6 = operator new(0x90uLL);
    *(v6 + 2) = 0;
    *v6 = off_5DB70;
    v6[136] = 0;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    v6[32] = 0;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 36) = 0;
    std::__numpunct_cache<char>::_M_cache(v6, a2);
    std::locale::_Impl::_M_install_cache(*a2, v6, v3);
    return *(v4 + 8 * v3);
  }

  return result;
}

void sub_23AB0(void *a1)
{
  __cxa_begin_catch(a1);
  (*(*v1 + 8))(v1);
  __cxa_rethrow();
}

uint64_t std::num_get<char,std::istreambuf_iterator<char>>::_M_find<char>(uint64_t a1, uint64_t a2, unint64_t a3, signed int a4)
{
  v4 = a4 - 48;
  if ((a4 - 65) >= 6)
  {
    v5 = -1;
  }

  else
  {
    v5 = a4 - 55;
  }

  if ((a4 - 97) <= 5)
  {
    v6 = a4 - 87;
  }

  else
  {
    v6 = v5;
  }

  if (v4 > 9)
  {
    v4 = v6;
  }

  if ((a3 | 0x30) <= a4 || a4 <= 47)
  {
    v8 = -1;
  }

  else
  {
    v8 = a4 - 48;
  }

  if (a3 <= 0xA)
  {
    return v8;
  }

  else
  {
    return v4;
  }
}

uint64_t *std::num_get<char,std::istreambuf_iterator<char>>::do_get(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, _BYTE *a8)
{
  v31 = a2;
  v32 = a3;
  v30[0] = a4;
  v30[1] = a5;
  if ((*(a6 + 24) & 1) == 0)
  {
    v29 = -1;
    result = std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_int<long>(a1, a2, a3, a4, a5, a6, a7, &v29);
    LODWORD(v32) = v11;
    if (v29 > 1)
    {
      *a7 |= 4u;
    }

    else
    {
      *a8 = v29;
    }

    return result;
  }

  v12 = std::__use_cache<std::__numpunct_cache<char>>::operator()(&v29, (a6 + 208));
  v13 = std::istreambuf_iterator<char>::_M_get(&v31);
  v14 = std::istreambuf_iterator<char>::_M_get(v30);
  v15 = 0;
  v17 = v13 == -1 || v14 == -1;
  v18 = 1;
  if ((v13 & v14) == 0xFFFFFFFF)
  {
LABEL_41:
    LOBYTE(v19) = 1;
LABEL_42:
    if (v15 != v12[8])
    {
      goto LABEL_45;
    }

    *a8 = 0;
    if (v18)
    {
      goto LABEL_50;
    }

    return v31;
  }

  LOBYTE(v19) = 1;
  if (!v17)
  {
    goto LABEL_42;
  }

  v15 = 0;
  LOBYTE(v20) = 1;
  do
  {
    v21 = std::istreambuf_iterator<char>::_M_get(&v31);
    if (v20)
    {
      if (v15 >= v12[8])
      {
        v18 = 0;
        goto LABEL_42;
      }

      v20 = *(v12[7] + v15) == v21;
      if (!v19)
      {
LABEL_16:
        v19 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v20 = 0;
      if (!v19)
      {
        goto LABEL_16;
      }
    }

    v22 = v12[6];
    if (v15 >= v22)
    {
      if (v20)
      {
        v18 = 0;
        goto LABEL_41;
      }

      if (v15 == v22)
      {
        *a8 = 1;
        return v31;
      }

LABEL_53:
      v28 = *a7 | 4;
      goto LABEL_54;
    }

    v19 = *(v12[5] + v15) == v21;
LABEL_20:
    if (!v20 && !v19)
    {
      goto LABEL_53;
    }

    if (v31)
    {
      v23 = v31[2];
      if (v23 >= v31[3])
      {
        std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v31);
      }

      else
      {
        v31[2] = v23 + 1;
      }

      LODWORD(v32) = -1;
    }

    v24 = std::istreambuf_iterator<char>::_M_get(&v31);
    v25 = std::istreambuf_iterator<char>::_M_get(v30);
    v27 = v24 == -1 || v25 == -1;
    ++v15;
  }

  while ((v24 & v25) != 0xFFFFFFFF && v27);
  v18 = 1;
  if (v20)
  {
    goto LABEL_42;
  }

LABEL_45:
  if (v19 && v15 == v12[6])
  {
    *a8 = 1;
    if ((v18 & 1) == 0)
    {
      return v31;
    }
  }

  else
  {
    *a7 |= 4u;
    if ((v18 & 1) == 0)
    {
      return v31;
    }
  }

LABEL_50:
  v28 = *a7 | 2;
LABEL_54:
  *a7 = v28;
  return v31;
}

uint64_t *std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_int<long>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, unint64_t *a8)
{
  v63 = a2;
  v64 = a3;
  v62[0] = a4;
  v62[1] = a5;
  v10 = std::__use_cache<std::__numpunct_cache<char>>::operator()(&v61, (a6 + 208));
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

  v14 = std::istreambuf_iterator<char>::_M_get(&v63);
  v15 = std::istreambuf_iterator<char>::_M_get(v62);
  v16 = 0;
  v18 = v14 == -1 || v15 == -1;
  v53 = a8;
  if ((v14 & v15) == 0xFFFFFFFF)
  {
    v55 = 0;
    goto LABEL_63;
  }

  v55 = 0;
  if (!v18)
  {
    goto LABEL_63;
  }

  v19 = std::istreambuf_iterator<char>::_M_get(&v63);
  v16 = v19;
  v55 = *(v10 + 110) == v19;
  if (*(v10 + 110) != v19 && *(v10 + 111) != v19 || *(v10 + 32) == 1 && *(v10 + 73) == v19 || *(v10 + 72) == v19)
  {
    goto LABEL_26;
  }

  if (v63)
  {
    v20 = v63[2];
    if (v20 >= v63[3])
    {
      std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v63);
    }

    else
    {
      v63[2] = v20 + 1;
    }

    LODWORD(v64) = -1;
  }

  v21 = std::istreambuf_iterator<char>::_M_get(&v63) == -1;
  if (v21 == (std::istreambuf_iterator<char>::_M_get(v62) == -1))
  {
LABEL_63:
    v23 = 0;
    v22 = 0;
    v59 = (v10 + 73);
    v31 = 1;
    goto LABEL_68;
  }

  v16 = std::istreambuf_iterator<char>::_M_get(&v63);
LABEL_26:
  v22 = 0;
  v23 = 0;
  v59 = (v10 + 73);
  while (1)
  {
    if (*(v10 + 32) == 1 && *v59 == v16 || *(v10 + 72) == v16)
    {
LABEL_64:
      v31 = 0;
      goto LABEL_68;
    }

    if (*(v10 + 114) == v16)
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

    if (*(v10 + 112) == v16)
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
      if (*(v10 + 113) != v16 || (v28 & 1) == 0)
      {
        goto LABEL_64;
      }

      v26 = 0;
      v25 = 16;
    }

LABEL_54:
    if (v63)
    {
      v29 = v63[2];
      if (v29 >= v63[3])
      {
        std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v63);
      }

      else
      {
        v63[2] = v29 + 1;
      }

      LODWORD(v64) = -1;
    }

    v30 = std::istreambuf_iterator<char>::_M_get(&v63) == -1;
    if (((v30 ^ (std::istreambuf_iterator<char>::_M_get(v62) == -1)) & 1) == 0)
    {
      v22 = v24 ^ 1;
      v31 = 1;
      goto LABEL_66;
    }

    v16 = std::istreambuf_iterator<char>::_M_get(&v63);
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

  v60 = &unk_60620;
  if (*(v10 + 32) == 1)
  {
    std::string::reserve(&v60, 0x20uLL);
  }

  if (v55)
  {
    v33 = 0x8000000000000000;
  }

  else
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v34 = v10 + 114;
  v56 = v13;
  v57 = v33;
  v35 = v33 / v13;
  if (*(v10 + 136))
  {
    if ((v31 & 1) == 0)
    {
      v36 = 0;
      v37 = 0;
      while (1)
      {
        if (*(v10 + 32) == 1 && *v59 == v16)
        {
          if (!v23)
          {
            v43 = 0;
            v37 = 1;
            goto LABEL_117;
          }

          std::string::push_back(&v60, v23);
          v23 = 0;
        }

        else
        {
          if (*(v10 + 72) == v16)
          {
            goto LABEL_116;
          }

          v38 = memchr((v10 + 114), v16, v32);
          if (!v38)
          {
            goto LABEL_116;
          }

          if (v36 <= v35)
          {
            v39 = v36 * v56;
            if (v38 - v34 <= 15)
            {
              v40 = (v38 - v34) << 32;
            }

            else
            {
              v40 = ((v38 - v34) << 32) - 0x600000000;
            }

            v37 |= v39 > v57 - (v40 >> 32);
            v36 = v39 + (v40 >> 32);
            ++v23;
          }

          else
          {
            v37 = 1;
          }
        }

        if (v63)
        {
          v41 = v63[2];
          if (v41 >= v63[3])
          {
            (*(*v63 + 80))();
          }

          else
          {
            v63[2] = v41 + 1;
          }

          LODWORD(v64) = -1;
        }

        v42 = std::istreambuf_iterator<char>::_M_get(&v63);
        if ((v42 == -1) == (std::istreambuf_iterator<char>::_M_get(v62) == -1))
        {
          goto LABEL_100;
        }

        v16 = std::istreambuf_iterator<char>::_M_get(&v63);
      }
    }

LABEL_99:
    v37 = 0;
    v36 = 0;
LABEL_100:
    v43 = 1;
  }

  else
  {
    if (v31)
    {
      goto LABEL_99;
    }

    v44 = std::num_get<char,std::istreambuf_iterator<char>>::_M_find<char>(a1, v10 + 114, v32, v16);
    if (v44 == -1)
    {
      v37 = 0;
      v36 = 0;
LABEL_116:
      v43 = 0;
    }

    else
    {
      v37 = 0;
      v36 = 0;
      do
      {
        if (v36 <= v35)
        {
          v37 |= v36 * v56 > v57 - v44;
          v36 = v36 * v56 + v44;
          ++v23;
        }

        else
        {
          v37 = 1;
        }

        if (v63)
        {
          v45 = v63[2];
          if (v45 >= v63[3])
          {
            (*(*v63 + 80))();
          }

          else
          {
            v63[2] = v45 + 1;
          }

          LODWORD(v64) = -1;
        }

        v46 = std::istreambuf_iterator<char>::_M_get(&v63) == -1;
        v47 = std::istreambuf_iterator<char>::_M_get(v62) == -1;
        if (v46 == v47)
        {
          break;
        }

        v48 = std::istreambuf_iterator<char>::_M_get(&v63);
        v44 = std::num_get<char,std::istreambuf_iterator<char>>::_M_find<char>(a1, v10 + 114, v32, v48);
      }

      while (v44 != -1);
      v43 = v46 ^ v47 ^ 1;
    }
  }

LABEL_117:
  if (*(v60 - 3))
  {
    std::string::push_back(&v60, v23);
    if ((std::__verify_grouping(*(v10 + 16), *(v10 + 24), &v60) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if ((v37 & 1) == 0 && (v22 & 1 | (v23 != 0) || *(v60 - 3)))
  {
    if (v55)
    {
      v49 = -v36;
    }

    else
    {
      v49 = v36;
    }

    *v53 = v49;
  }

  else
  {
    *a7 |= 4u;
  }

  if (v43)
  {
    *a7 |= 2u;
  }

  v50 = v63;
  v51 = v60 - 24;
  if (v60 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v60 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v51);
  }

  return v50;
}

void sub_24438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if ((a16 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a16 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a16 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::num_get<char,std::istreambuf_iterator<char>>::do_get(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, unint64_t *a8)
{
  return std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_int<long>(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  return std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_int<unsigned long>(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  return std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_int<long long>(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  return std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_int<unsigned long long>(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t *std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_int<unsigned short>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, unsigned __int16 *a8)
{
  v58 = a2;
  v59 = a3;
  v57[0] = a4;
  v57[1] = a5;
  v10 = std::__use_cache<std::__numpunct_cache<char>>::operator()(&v56, (a6 + 208));
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

  v14 = std::istreambuf_iterator<char>::_M_get(&v58);
  v15 = std::istreambuf_iterator<char>::_M_get(v57);
  v16 = 0;
  v18 = v14 == -1 || v15 == -1;
  v50 = a8;
  if ((v14 & v15) == 0xFFFFFFFF || !v18)
  {
    goto LABEL_61;
  }

  v19 = std::istreambuf_iterator<char>::_M_get(&v58);
  v16 = v19;
  if (*(v10 + 111) != v19 || *(v10 + 32) == 1 && *(v10 + 73) == v19 || *(v10 + 72) == v19)
  {
    goto LABEL_25;
  }

  if (v58)
  {
    v20 = v58[2];
    if (v20 >= v58[3])
    {
      std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v58);
    }

    else
    {
      v58[2] = v20 + 1;
    }

    LODWORD(v59) = -1;
  }

  v21 = std::istreambuf_iterator<char>::_M_get(&v58) == -1;
  if (v21 == (std::istreambuf_iterator<char>::_M_get(v57) == -1))
  {
LABEL_61:
    v23 = 0;
    v22 = 0;
    v53 = (v10 + 73);
    v31 = 1;
    goto LABEL_66;
  }

  v16 = std::istreambuf_iterator<char>::_M_get(&v58);
LABEL_25:
  v22 = 0;
  v23 = 0;
  v53 = (v10 + 73);
  while (1)
  {
    if (*(v10 + 32) == 1 && *v53 == v16 || *(v10 + 72) == v16)
    {
LABEL_62:
      v31 = 0;
      goto LABEL_66;
    }

    if (*(v10 + 114) == v16)
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

    if (*(v10 + 112) == v16)
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
      if (*(v10 + 113) != v16 || (v28 & 1) == 0)
      {
        goto LABEL_62;
      }

      v26 = 0;
      v25 = 16;
    }

LABEL_53:
    if (v58)
    {
      v29 = v58[2];
      if (v29 >= v58[3])
      {
        std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v58);
      }

      else
      {
        v58[2] = v29 + 1;
      }

      LODWORD(v59) = -1;
    }

    v30 = std::istreambuf_iterator<char>::_M_get(&v58) == -1;
    if (((v30 ^ (std::istreambuf_iterator<char>::_M_get(v57) == -1)) & 1) == 0)
    {
      v22 = v24 ^ 1;
      v31 = 1;
      goto LABEL_64;
    }

    v16 = std::istreambuf_iterator<char>::_M_get(&v58);
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

  __n = v32;
  v55 = &unk_60620;
  if (*(v10 + 32) == 1)
  {
    std::string::reserve(&v55, 0x20uLL);
  }

  v33 = v10 + 114;
  v34 = 0xFFFF / v13;
  if (*(v10 + 136))
  {
    if ((v31 & 1) == 0)
    {
      v35 = 0;
      v36 = 0;
      while (1)
      {
        if (*(v10 + 32) == 1 && *v53 == v16)
        {
          if (!v23)
          {
            v41 = 0;
            v36 = 1;
            goto LABEL_111;
          }

          std::string::push_back(&v55, v23);
          v23 = 0;
        }

        else
        {
          if (*(v10 + 72) == v16)
          {
            goto LABEL_110;
          }

          v37 = memchr((v10 + 114), v16, __n);
          if (!v37)
          {
            goto LABEL_110;
          }

          if (v34 >= v35)
          {
            v38 = v37 - v33;
            if (v37 - v33 > 15)
            {
              v38 = v37 - v33 - 6;
            }

            v36 |= 0xFFFF - v38 < (v35 * v13);
            v35 = v35 * v13 + v38;
            ++v23;
          }

          else
          {
            v36 = 1;
          }
        }

        if (v58)
        {
          v39 = v58[2];
          if (v39 >= v58[3])
          {
            (*(*v58 + 80))();
          }

          else
          {
            v58[2] = v39 + 1;
          }

          LODWORD(v59) = -1;
        }

        v40 = std::istreambuf_iterator<char>::_M_get(&v58);
        if ((v40 == -1) == (std::istreambuf_iterator<char>::_M_get(v57) == -1))
        {
          goto LABEL_94;
        }

        v16 = std::istreambuf_iterator<char>::_M_get(&v58);
      }
    }

LABEL_93:
    v36 = 0;
    v35 = 0;
LABEL_94:
    v41 = 1;
  }

  else
  {
    if (v31)
    {
      goto LABEL_93;
    }

    v42 = std::num_get<char,std::istreambuf_iterator<char>>::_M_find<char>(a1, v10 + 114, __n, v16);
    if (v42 == -1)
    {
      v36 = 0;
      v35 = 0;
LABEL_110:
      v41 = 0;
    }

    else
    {
      v36 = 0;
      v35 = 0;
      do
      {
        if (v34 >= v35)
        {
          v36 |= 0xFFFF - v42 < (v35 * v13);
          v35 = v35 * v13 + v42;
          ++v23;
        }

        else
        {
          v36 = 1;
        }

        if (v58)
        {
          v43 = v58[2];
          if (v43 >= v58[3])
          {
            (*(*v58 + 80))();
          }

          else
          {
            v58[2] = v43 + 1;
          }

          LODWORD(v59) = -1;
        }

        v44 = std::istreambuf_iterator<char>::_M_get(&v58) == -1;
        v45 = std::istreambuf_iterator<char>::_M_get(v57) == -1;
        if (v44 == v45)
        {
          break;
        }

        v46 = std::istreambuf_iterator<char>::_M_get(&v58);
        v42 = std::num_get<char,std::istreambuf_iterator<char>>::_M_find<char>(a1, v10 + 114, __n, v46);
      }

      while (v42 != -1);
      v41 = v44 ^ v45 ^ 1;
    }
  }

LABEL_111:
  if (*(v55 - 3))
  {
    std::string::push_back(&v55, v23);
    if ((std::__verify_grouping(*(v10 + 16), *(v10 + 24), &v55) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if ((v36 & 1) == 0 && (v22 & 1 | (v23 != 0) || *(v55 - 3)))
  {
    *v50 = v35;
  }

  else
  {
    *a7 |= 4u;
  }

  if (v41)
  {
    *a7 |= 2u;
  }

  v47 = v58;
  v48 = v55 - 24;
  if (v55 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v55 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v48);
  }

  return v47;
}

void sub_24B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a14 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a14 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a14 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_int<unsigned int>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, unsigned int *a8)
{
  v61 = a2;
  v62 = a3;
  v60[0] = a4;
  v60[1] = a5;
  v10 = std::__use_cache<std::__numpunct_cache<char>>::operator()(&v59, (a6 + 208));
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

  v14 = std::istreambuf_iterator<char>::_M_get(&v61);
  v15 = std::istreambuf_iterator<char>::_M_get(v60);
  v16 = 0;
  v18 = v14 == -1 || v15 == -1;
  v53 = a8;
  if ((v14 & v15) == 0xFFFFFFFF || !v18)
  {
    goto LABEL_61;
  }

  v19 = std::istreambuf_iterator<char>::_M_get(&v61);
  v16 = v19;
  if (*(v10 + 111) != v19 || *(v10 + 32) == 1 && *(v10 + 73) == v19 || *(v10 + 72) == v19)
  {
    goto LABEL_25;
  }

  if (v61)
  {
    v20 = v61[2];
    if (v20 >= v61[3])
    {
      std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v61);
    }

    else
    {
      v61[2] = v20 + 1;
    }

    LODWORD(v62) = -1;
  }

  v21 = std::istreambuf_iterator<char>::_M_get(&v61) == -1;
  if (v21 == (std::istreambuf_iterator<char>::_M_get(v60) == -1))
  {
LABEL_61:
    v23 = 0;
    v22 = 0;
    v56 = (v10 + 73);
    v31 = 1;
    goto LABEL_66;
  }

  v16 = std::istreambuf_iterator<char>::_M_get(&v61);
LABEL_25:
  v22 = 0;
  v23 = 0;
  v56 = (v10 + 73);
  while (1)
  {
    if (*(v10 + 32) == 1 && *v56 == v16 || *(v10 + 72) == v16)
    {
LABEL_62:
      v31 = 0;
      goto LABEL_66;
    }

    if (*(v10 + 114) == v16)
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

    if (*(v10 + 112) == v16)
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
      if (*(v10 + 113) != v16 || (v28 & 1) == 0)
      {
        goto LABEL_62;
      }

      v26 = 0;
      v25 = 16;
    }

LABEL_53:
    if (v61)
    {
      v29 = v61[2];
      if (v29 >= v61[3])
      {
        std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v61);
      }

      else
      {
        v61[2] = v29 + 1;
      }

      LODWORD(v62) = -1;
    }

    v30 = std::istreambuf_iterator<char>::_M_get(&v61) == -1;
    if (((v30 ^ (std::istreambuf_iterator<char>::_M_get(v60) == -1)) & 1) == 0)
    {
      v22 = v24 ^ 1;
      v31 = 1;
      goto LABEL_64;
    }

    v16 = std::istreambuf_iterator<char>::_M_get(&v61);
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

  __n = v32;
  v58 = &unk_60620;
  if (*(v10 + 32) == 1)
  {
    std::string::reserve(&v58, 0x20uLL);
  }

  v33 = v10 + 114;
  v34 = 0xFFFFFFFF / v13;
  if (*(v10 + 136))
  {
    if ((v31 & 1) == 0)
    {
      v35 = 0;
      LOBYTE(v36) = 0;
      while (1)
      {
        if (*(v10 + 32) == 1 && *v56 == v16)
        {
          if (!v23)
          {
            v42 = 0;
            LOBYTE(v36) = 1;
            goto LABEL_119;
          }

          std::string::push_back(&v58, v23);
          v23 = 0;
        }

        else
        {
          if (*(v10 + 72) == v16)
          {
            goto LABEL_118;
          }

          v37 = memchr((v10 + 114), v16, __n);
          if (!v37)
          {
            goto LABEL_118;
          }

          if (v35 <= v34)
          {
            v38 = v37 - v33;
            if (v37 - v33 > 15)
            {
              v38 = v37 - v33 - 6;
            }

            v39 = __CFADD__(v38, v35 * v13);
            LOBYTE(v36) = v36 | v39;
            v35 = v38 + v35 * v13;
            ++v23;
          }

          else
          {
            LOBYTE(v36) = 1;
          }
        }

        if (v61)
        {
          v40 = v61[2];
          if (v40 >= v61[3])
          {
            (*(*v61 + 80))();
          }

          else
          {
            v61[2] = v40 + 1;
          }

          LODWORD(v62) = -1;
        }

        v41 = std::istreambuf_iterator<char>::_M_get(&v61);
        if ((v41 == -1) == (std::istreambuf_iterator<char>::_M_get(v60) == -1))
        {
          goto LABEL_97;
        }

        v16 = std::istreambuf_iterator<char>::_M_get(&v61);
      }
    }

LABEL_96:
    LOBYTE(v36) = 0;
    v35 = 0;
LABEL_97:
    v42 = 1;
  }

  else
  {
    if (v31)
    {
      goto LABEL_96;
    }

    v43 = std::num_get<char,std::istreambuf_iterator<char>>::_M_find<char>(a1, v10 + 114, __n, v16);
    if (v43 == -1)
    {
      LOBYTE(v36) = 0;
      v35 = 0;
LABEL_118:
      v42 = 0;
    }

    else
    {
      v36 = 0;
      v35 = 0;
      do
      {
        v44 = __CFADD__(v43, v35 * v13);
        v45 = v36 | v44;
        if (v35 <= v34)
        {
          v36 = v45;
        }

        else
        {
          v36 = 1;
        }

        if (v35 <= v34)
        {
          ++v23;
          v35 = v43 + v35 * v13;
        }

        if (v61)
        {
          v46 = v61[2];
          if (v46 >= v61[3])
          {
            (*(*v61 + 80))();
          }

          else
          {
            v61[2] = v46 + 1;
          }

          LODWORD(v62) = -1;
        }

        v47 = std::istreambuf_iterator<char>::_M_get(&v61) == -1;
        v48 = std::istreambuf_iterator<char>::_M_get(v60) == -1;
        if (v47 == v48)
        {
          break;
        }

        v49 = std::istreambuf_iterator<char>::_M_get(&v61);
        v43 = std::num_get<char,std::istreambuf_iterator<char>>::_M_find<char>(a1, v10 + 114, __n, v49);
      }

      while (v43 != -1);
      v42 = v47 ^ v48 ^ 1;
    }
  }

LABEL_119:
  if (*(v58 - 3))
  {
    std::string::push_back(&v58, v23);
    if ((std::__verify_grouping(*(v10 + 16), *(v10 + 24), &v58) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if ((v36 & 1) == 0 && (v22 & 1 | (v23 != 0) || *(v58 - 3)))
  {
    *v53 = v35;
    if (!v42)
    {
      goto LABEL_125;
    }

LABEL_124:
    *a7 |= 2u;
  }

  else
  {
    *a7 |= 4u;
    if (v42)
    {
      goto LABEL_124;
    }
  }

LABEL_125:
  v50 = v61;
  v51 = v58 - 24;
  if (v58 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v58 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v51);
  }

  return v50;
}

void sub_251C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a14 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a14 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a14 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_int<unsigned long>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, unint64_t *a8)
{
  v63 = a2;
  v64 = a3;
  v62[0] = a4;
  v62[1] = a5;
  v10 = std::__use_cache<std::__numpunct_cache<char>>::operator()(&v61, (a6 + 208));
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

  v14 = std::istreambuf_iterator<char>::_M_get(&v63);
  v15 = std::istreambuf_iterator<char>::_M_get(v62);
  v16 = 0;
  v18 = v14 == -1 || v15 == -1;
  v55 = a8;
  if ((v14 & v15) == 0xFFFFFFFF || !v18)
  {
    goto LABEL_61;
  }

  v19 = std::istreambuf_iterator<char>::_M_get(&v63);
  v16 = v19;
  if (*(v10 + 111) != v19 || *(v10 + 32) == 1 && *(v10 + 73) == v19 || *(v10 + 72) == v19)
  {
    goto LABEL_25;
  }

  if (v63)
  {
    v20 = v63[2];
    if (v20 >= v63[3])
    {
      std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v63);
    }

    else
    {
      v63[2] = v20 + 1;
    }

    LODWORD(v64) = -1;
  }

  v21 = std::istreambuf_iterator<char>::_M_get(&v63) == -1;
  if (v21 == (std::istreambuf_iterator<char>::_M_get(v62) == -1))
  {
LABEL_61:
    v23 = 0;
    v22 = 0;
    v58 = (v10 + 73);
    v31 = 1;
    goto LABEL_66;
  }

  v16 = std::istreambuf_iterator<char>::_M_get(&v63);
LABEL_25:
  v22 = 0;
  v23 = 0;
  v58 = (v10 + 73);
  while (1)
  {
    if (*(v10 + 32) == 1 && *v58 == v16 || *(v10 + 72) == v16)
    {
LABEL_62:
      v31 = 0;
      goto LABEL_66;
    }

    if (*(v10 + 114) == v16)
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

    if (*(v10 + 112) == v16)
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
      if (*(v10 + 113) != v16 || (v28 & 1) == 0)
      {
        goto LABEL_62;
      }

      v26 = 0;
      v25 = 16;
    }

LABEL_53:
    if (v63)
    {
      v29 = v63[2];
      if (v29 >= v63[3])
      {
        std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v63);
      }

      else
      {
        v63[2] = v29 + 1;
      }

      LODWORD(v64) = -1;
    }

    v30 = std::istreambuf_iterator<char>::_M_get(&v63) == -1;
    if (((v30 ^ (std::istreambuf_iterator<char>::_M_get(v62) == -1)) & 1) == 0)
    {
      v22 = v24 ^ 1;
      v31 = 1;
      goto LABEL_64;
    }

    v16 = std::istreambuf_iterator<char>::_M_get(&v63);
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

  __n = v32;
  v60 = &unk_60620;
  if (*(v10 + 32) == 1)
  {
    std::string::reserve(&v60, 0x20uLL);
  }

  v33 = v13;
  v34 = v10 + 114;
  v35 = 0xFFFFFFFFFFFFFFFFLL / v13;
  if (*(v10 + 136))
  {
    if ((v31 & 1) == 0)
    {
      v36 = 0;
      LOBYTE(v37) = 0;
      while (1)
      {
        if (*(v10 + 32) == 1 && *v58 == v16)
        {
          if (!v23)
          {
            v44 = 0;
            LOBYTE(v37) = 1;
            goto LABEL_120;
          }

          std::string::push_back(&v60, v23);
          v23 = 0;
        }

        else
        {
          if (*(v10 + 72) == v16)
          {
            goto LABEL_119;
          }

          v38 = memchr((v10 + 114), v16, __n);
          if (!v38)
          {
            goto LABEL_119;
          }

          if (v36 <= v35)
          {
            v39 = v36 * v33;
            if (v38 - v34 <= 15)
            {
              v40 = (v38 - v34) << 32;
            }

            else
            {
              v40 = ((v38 - v34) << 32) - 0x600000000;
            }

            v41 = __CFADD__(v39, v40 >> 32);
            LOBYTE(v37) = v37 | v41;
            v36 = v39 + (v40 >> 32);
            ++v23;
          }

          else
          {
            LOBYTE(v37) = 1;
          }
        }

        if (v63)
        {
          v42 = v63[2];
          if (v42 >= v63[3])
          {
            (*(*v63 + 80))();
          }

          else
          {
            v63[2] = v42 + 1;
          }

          LODWORD(v64) = -1;
        }

        v43 = std::istreambuf_iterator<char>::_M_get(&v63);
        if ((v43 == -1) == (std::istreambuf_iterator<char>::_M_get(v62) == -1))
        {
          goto LABEL_98;
        }

        v16 = std::istreambuf_iterator<char>::_M_get(&v63);
      }
    }

LABEL_97:
    LOBYTE(v37) = 0;
    v36 = 0;
LABEL_98:
    v44 = 1;
  }

  else
  {
    if (v31)
    {
      goto LABEL_97;
    }

    v45 = std::num_get<char,std::istreambuf_iterator<char>>::_M_find<char>(a1, v10 + 114, __n, v16);
    if (v45 == -1)
    {
      LOBYTE(v37) = 0;
      v36 = 0;
LABEL_119:
      v44 = 0;
    }

    else
    {
      v37 = 0;
      v36 = 0;
      do
      {
        v46 = __CFADD__(v36 * v33, v45);
        v47 = v37 | v46;
        if (v36 <= v35)
        {
          v37 = v47;
        }

        else
        {
          v37 = 1;
        }

        if (v36 <= v35)
        {
          ++v23;
          v36 = v36 * v33 + v45;
        }

        if (v63)
        {
          v48 = v63[2];
          if (v48 >= v63[3])
          {
            (*(*v63 + 80))();
          }

          else
          {
            v63[2] = v48 + 1;
          }

          LODWORD(v64) = -1;
        }

        v49 = std::istreambuf_iterator<char>::_M_get(&v63) == -1;
        v50 = std::istreambuf_iterator<char>::_M_get(v62) == -1;
        if (v49 == v50)
        {
          break;
        }

        v51 = std::istreambuf_iterator<char>::_M_get(&v63);
        v45 = std::num_get<char,std::istreambuf_iterator<char>>::_M_find<char>(a1, v10 + 114, __n, v51);
      }

      while (v45 != -1);
      v44 = v49 ^ v50 ^ 1;
    }
  }

LABEL_120:
  if (*(v60 - 3))
  {
    std::string::push_back(&v60, v23);
    if ((std::__verify_grouping(*(v10 + 16), *(v10 + 24), &v60) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if ((v37 & 1) == 0 && (v22 & 1 | (v23 != 0) || *(v60 - 3)))
  {
    *v55 = v36;
  }

  else
  {
    *a7 |= 4u;
  }

  if (v44)
  {
    *a7 |= 2u;
  }

  v52 = v63;
  v53 = v60 - 24;
  if (v60 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v60 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v53);
  }

  return v52;
}

void sub_25888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a14 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a14 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a14 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_int<long long>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, unint64_t *a8)
{
  v63 = a2;
  v64 = a3;
  v62[0] = a4;
  v62[1] = a5;
  v10 = std::__use_cache<std::__numpunct_cache<char>>::operator()(&v61, (a6 + 208));
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

  v14 = std::istreambuf_iterator<char>::_M_get(&v63);
  v15 = std::istreambuf_iterator<char>::_M_get(v62);
  v16 = 0;
  v18 = v14 == -1 || v15 == -1;
  v53 = a8;
  if ((v14 & v15) == 0xFFFFFFFF)
  {
    v55 = 0;
    goto LABEL_63;
  }

  v55 = 0;
  if (!v18)
  {
    goto LABEL_63;
  }

  v19 = std::istreambuf_iterator<char>::_M_get(&v63);
  v16 = v19;
  v55 = *(v10 + 110) == v19;
  if (*(v10 + 110) != v19 && *(v10 + 111) != v19 || *(v10 + 32) == 1 && *(v10 + 73) == v19 || *(v10 + 72) == v19)
  {
    goto LABEL_26;
  }

  if (v63)
  {
    v20 = v63[2];
    if (v20 >= v63[3])
    {
      std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v63);
    }

    else
    {
      v63[2] = v20 + 1;
    }

    LODWORD(v64) = -1;
  }

  v21 = std::istreambuf_iterator<char>::_M_get(&v63) == -1;
  if (v21 == (std::istreambuf_iterator<char>::_M_get(v62) == -1))
  {
LABEL_63:
    v23 = 0;
    v22 = 0;
    v59 = (v10 + 73);
    v31 = 1;
    goto LABEL_68;
  }

  v16 = std::istreambuf_iterator<char>::_M_get(&v63);
LABEL_26:
  v22 = 0;
  v23 = 0;
  v59 = (v10 + 73);
  while (1)
  {
    if (*(v10 + 32) == 1 && *v59 == v16 || *(v10 + 72) == v16)
    {
LABEL_64:
      v31 = 0;
      goto LABEL_68;
    }

    if (*(v10 + 114) == v16)
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

    if (*(v10 + 112) == v16)
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
      if (*(v10 + 113) != v16 || (v28 & 1) == 0)
      {
        goto LABEL_64;
      }

      v26 = 0;
      v25 = 16;
    }

LABEL_54:
    if (v63)
    {
      v29 = v63[2];
      if (v29 >= v63[3])
      {
        std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v63);
      }

      else
      {
        v63[2] = v29 + 1;
      }

      LODWORD(v64) = -1;
    }

    v30 = std::istreambuf_iterator<char>::_M_get(&v63) == -1;
    if (((v30 ^ (std::istreambuf_iterator<char>::_M_get(v62) == -1)) & 1) == 0)
    {
      v22 = v24 ^ 1;
      v31 = 1;
      goto LABEL_66;
    }

    v16 = std::istreambuf_iterator<char>::_M_get(&v63);
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

  v60 = &unk_60620;
  if (*(v10 + 32) == 1)
  {
    std::string::reserve(&v60, 0x20uLL);
  }

  if (v55)
  {
    v33 = 0x8000000000000000;
  }

  else
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v34 = v10 + 114;
  v56 = v13;
  v57 = v33;
  v35 = v33 / v13;
  if (*(v10 + 136))
  {
    if ((v31 & 1) == 0)
    {
      v36 = 0;
      v37 = 0;
      while (1)
      {
        if (*(v10 + 32) == 1 && *v59 == v16)
        {
          if (!v23)
          {
            v43 = 0;
            v37 = 1;
            goto LABEL_117;
          }

          std::string::push_back(&v60, v23);
          v23 = 0;
        }

        else
        {
          if (*(v10 + 72) == v16)
          {
            goto LABEL_116;
          }

          v38 = memchr((v10 + 114), v16, v32);
          if (!v38)
          {
            goto LABEL_116;
          }

          if (v36 <= v35)
          {
            v39 = v36 * v56;
            if (v38 - v34 <= 15)
            {
              v40 = (v38 - v34) << 32;
            }

            else
            {
              v40 = ((v38 - v34) << 32) - 0x600000000;
            }

            v37 |= v39 > v57 - (v40 >> 32);
            v36 = v39 + (v40 >> 32);
            ++v23;
          }

          else
          {
            v37 = 1;
          }
        }

        if (v63)
        {
          v41 = v63[2];
          if (v41 >= v63[3])
          {
            (*(*v63 + 80))();
          }

          else
          {
            v63[2] = v41 + 1;
          }

          LODWORD(v64) = -1;
        }

        v42 = std::istreambuf_iterator<char>::_M_get(&v63);
        if ((v42 == -1) == (std::istreambuf_iterator<char>::_M_get(v62) == -1))
        {
          goto LABEL_100;
        }

        v16 = std::istreambuf_iterator<char>::_M_get(&v63);
      }
    }

LABEL_99:
    v37 = 0;
    v36 = 0;
LABEL_100:
    v43 = 1;
  }

  else
  {
    if (v31)
    {
      goto LABEL_99;
    }

    v44 = std::num_get<char,std::istreambuf_iterator<char>>::_M_find<char>(a1, v10 + 114, v32, v16);
    if (v44 == -1)
    {
      v37 = 0;
      v36 = 0;
LABEL_116:
      v43 = 0;
    }

    else
    {
      v37 = 0;
      v36 = 0;
      do
      {
        if (v36 <= v35)
        {
          v37 |= v36 * v56 > v57 - v44;
          v36 = v36 * v56 + v44;
          ++v23;
        }

        else
        {
          v37 = 1;
        }

        if (v63)
        {
          v45 = v63[2];
          if (v45 >= v63[3])
          {
            (*(*v63 + 80))();
          }

          else
          {
            v63[2] = v45 + 1;
          }

          LODWORD(v64) = -1;
        }

        v46 = std::istreambuf_iterator<char>::_M_get(&v63) == -1;
        v47 = std::istreambuf_iterator<char>::_M_get(v62) == -1;
        if (v46 == v47)
        {
          break;
        }

        v48 = std::istreambuf_iterator<char>::_M_get(&v63);
        v44 = std::num_get<char,std::istreambuf_iterator<char>>::_M_find<char>(a1, v10 + 114, v32, v48);
      }

      while (v44 != -1);
      v43 = v46 ^ v47 ^ 1;
    }
  }

LABEL_117:
  if (*(v60 - 3))
  {
    std::string::push_back(&v60, v23);
    if ((std::__verify_grouping(*(v10 + 16), *(v10 + 24), &v60) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if ((v37 & 1) == 0 && (v22 & 1 | (v23 != 0) || *(v60 - 3)))
  {
    if (v55)
    {
      v49 = -v36;
    }

    else
    {
      v49 = v36;
    }

    *v53 = v49;
  }

  else
  {
    *a7 |= 4u;
  }

  if (v43)
  {
    *a7 |= 2u;
  }

  v50 = v63;
  v51 = v60 - 24;
  if (v60 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v60 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v51);
  }

  return v50;
}

void sub_25F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if ((a16 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a16 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a16 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_int<unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, unint64_t *a8)
{
  v63 = a2;
  v64 = a3;
  v62[0] = a4;
  v62[1] = a5;
  v10 = std::__use_cache<std::__numpunct_cache<char>>::operator()(&v61, (a6 + 208));
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

  v14 = std::istreambuf_iterator<char>::_M_get(&v63);
  v15 = std::istreambuf_iterator<char>::_M_get(v62);
  v16 = 0;
  v18 = v14 == -1 || v15 == -1;
  v55 = a8;
  if ((v14 & v15) == 0xFFFFFFFF || !v18)
  {
    goto LABEL_61;
  }

  v19 = std::istreambuf_iterator<char>::_M_get(&v63);
  v16 = v19;
  if (*(v10 + 111) != v19 || *(v10 + 32) == 1 && *(v10 + 73) == v19 || *(v10 + 72) == v19)
  {
    goto LABEL_25;
  }

  if (v63)
  {
    v20 = v63[2];
    if (v20 >= v63[3])
    {
      std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v63);
    }

    else
    {
      v63[2] = v20 + 1;
    }

    LODWORD(v64) = -1;
  }

  v21 = std::istreambuf_iterator<char>::_M_get(&v63) == -1;
  if (v21 == (std::istreambuf_iterator<char>::_M_get(v62) == -1))
  {
LABEL_61:
    v23 = 0;
    v22 = 0;
    v58 = (v10 + 73);
    v31 = 1;
    goto LABEL_66;
  }

  v16 = std::istreambuf_iterator<char>::_M_get(&v63);
LABEL_25:
  v22 = 0;
  v23 = 0;
  v58 = (v10 + 73);
  while (1)
  {
    if (*(v10 + 32) == 1 && *v58 == v16 || *(v10 + 72) == v16)
    {
LABEL_62:
      v31 = 0;
      goto LABEL_66;
    }

    if (*(v10 + 114) == v16)
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

    if (*(v10 + 112) == v16)
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
      if (*(v10 + 113) != v16 || (v28 & 1) == 0)
      {
        goto LABEL_62;
      }

      v26 = 0;
      v25 = 16;
    }

LABEL_53:
    if (v63)
    {
      v29 = v63[2];
      if (v29 >= v63[3])
      {
        std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v63);
      }

      else
      {
        v63[2] = v29 + 1;
      }

      LODWORD(v64) = -1;
    }

    v30 = std::istreambuf_iterator<char>::_M_get(&v63) == -1;
    if (((v30 ^ (std::istreambuf_iterator<char>::_M_get(v62) == -1)) & 1) == 0)
    {
      v22 = v24 ^ 1;
      v31 = 1;
      goto LABEL_64;
    }

    v16 = std::istreambuf_iterator<char>::_M_get(&v63);
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

  __n = v32;
  v60 = &unk_60620;
  if (*(v10 + 32) == 1)
  {
    std::string::reserve(&v60, 0x20uLL);
  }

  v33 = v13;
  v34 = v10 + 114;
  v35 = 0xFFFFFFFFFFFFFFFFLL / v13;
  if (*(v10 + 136))
  {
    if ((v31 & 1) == 0)
    {
      v36 = 0;
      LOBYTE(v37) = 0;
      while (1)
      {
        if (*(v10 + 32) == 1 && *v58 == v16)
        {
          if (!v23)
          {
            v44 = 0;
            LOBYTE(v37) = 1;
            goto LABEL_120;
          }

          std::string::push_back(&v60, v23);
          v23 = 0;
        }

        else
        {
          if (*(v10 + 72) == v16)
          {
            goto LABEL_119;
          }

          v38 = memchr((v10 + 114), v16, __n);
          if (!v38)
          {
            goto LABEL_119;
          }

          if (v36 <= v35)
          {
            v39 = v36 * v33;
            if (v38 - v34 <= 15)
            {
              v40 = (v38 - v34) << 32;
            }

            else
            {
              v40 = ((v38 - v34) << 32) - 0x600000000;
            }

            v41 = __CFADD__(v39, v40 >> 32);
            LOBYTE(v37) = v37 | v41;
            v36 = v39 + (v40 >> 32);
            ++v23;
          }

          else
          {
            LOBYTE(v37) = 1;
          }
        }

        if (v63)
        {
          v42 = v63[2];
          if (v42 >= v63[3])
          {
            (*(*v63 + 80))();
          }

          else
          {
            v63[2] = v42 + 1;
          }

          LODWORD(v64) = -1;
        }

        v43 = std::istreambuf_iterator<char>::_M_get(&v63);
        if ((v43 == -1) == (std::istreambuf_iterator<char>::_M_get(v62) == -1))
        {
          goto LABEL_98;
        }

        v16 = std::istreambuf_iterator<char>::_M_get(&v63);
      }
    }

LABEL_97:
    LOBYTE(v37) = 0;
    v36 = 0;
LABEL_98:
    v44 = 1;
  }

  else
  {
    if (v31)
    {
      goto LABEL_97;
    }

    v45 = std::num_get<char,std::istreambuf_iterator<char>>::_M_find<char>(a1, v10 + 114, __n, v16);
    if (v45 == -1)
    {
      LOBYTE(v37) = 0;
      v36 = 0;
LABEL_119:
      v44 = 0;
    }

    else
    {
      v37 = 0;
      v36 = 0;
      do
      {
        v46 = __CFADD__(v36 * v33, v45);
        v47 = v37 | v46;
        if (v36 <= v35)
        {
          v37 = v47;
        }

        else
        {
          v37 = 1;
        }

        if (v36 <= v35)
        {
          ++v23;
          v36 = v36 * v33 + v45;
        }

        if (v63)
        {
          v48 = v63[2];
          if (v48 >= v63[3])
          {
            (*(*v63 + 80))();
          }

          else
          {
            v63[2] = v48 + 1;
          }

          LODWORD(v64) = -1;
        }

        v49 = std::istreambuf_iterator<char>::_M_get(&v63) == -1;
        v50 = std::istreambuf_iterator<char>::_M_get(v62) == -1;
        if (v49 == v50)
        {
          break;
        }

        v51 = std::istreambuf_iterator<char>::_M_get(&v63);
        v45 = std::num_get<char,std::istreambuf_iterator<char>>::_M_find<char>(a1, v10 + 114, __n, v51);
      }

      while (v45 != -1);
      v44 = v49 ^ v50 ^ 1;
    }
  }

LABEL_120:
  if (*(v60 - 3))
  {
    std::string::push_back(&v60, v23);
    if ((std::__verify_grouping(*(v10 + 16), *(v10 + 24), &v60) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if ((v37 & 1) == 0 && (v22 & 1 | (v23 != 0) || *(v60 - 3)))
  {
    *v55 = v36;
  }

  else
  {
    *a7 |= 4u;
  }

  if (v44)
  {
    *a7 |= 2u;
  }

  v52 = v63;
  v53 = v60 - 24;
  if (v60 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v60 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v53);
  }

  return v52;
}

void sub_26654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a14 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a14 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a14 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::num_get<char,std::istreambuf_iterator<char>>::do_get(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, float *a8)
{
  v23 = &unk_60620;
  std::string::reserve(&v23, 0x20uLL);
  v16 = std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(a1, a2, a3, a4, a5, a6, a7, &v23);
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

void sub_267AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10 - 24 != v10 && atomic_fetch_add((a10 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a10 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::num_get<char,std::istreambuf_iterator<char>>::do_get(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, double *a8)
{
  v23 = &unk_60620;
  std::string::reserve(&v23, 0x20uLL);
  v16 = std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(a1, a2, a3, a4, a5, a6, a7, &v23);
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
  v16 = std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(a1, a2, a3, a4, a5, a6, a7, &v23);
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

void sub_268F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10 - 24 != v10 && atomic_fetch_add((a10 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a10 - 24));
  }

  _Unwind_Resume(exception_object);
}

void sub_26A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10 - 24 != v10 && atomic_fetch_add((a10 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a10 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::num_get<char,std::istreambuf_iterator<char>>::do_get(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, void *a8)
{
  v11 = *(a6 + 24);
  *(a6 + 24) = v11 & 0xFFFFFFB5 | 8;
  result = std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_int<unsigned long>(a1, a2, a3, a4, a5, a6, a7, &v13);
  *(a6 + 24) = v11;
  if ((*a7 & 4) == 0)
  {
    *a8 = v13;
  }

  return result;
}

uint64_t std::num_put<char,std::ostreambuf_iterator<char>>::num_put(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2 != 0;
  *result = off_5DC50;
  return result;
}

{
  *(result + 8) = a2 != 0;
  *result = off_5DC50;
  return result;
}

uint64_t std::num_put<char,std::ostreambuf_iterator<char>>::put(uint64_t a1)
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

void *std::num_put<char,std::ostreambuf_iterator<char>>::_M_group_float(uint64_t a1, char *a2, uint64_t a3, char a4, const void *a5, _BYTE *a6, char *a7, int *a8)
{
  v9 = a6;
  v11 = a5 - a7;
  v12 = *a8;
  if (a5)
  {
    v12 = a5 - a7;
  }

  result = std::__add_grouping<char>(a6, a4, a2, a3, a7, &a7[v12]);
  v14 = result - v9;
  if (a5)
  {
    result = memcpy(result, a5, *a8 - v11);
    v14 = v14 - v11 + *a8;
  }

  *a8 = v14;
  return result;
}

_BYTE *std::num_put<char,std::ostreambuf_iterator<char>>::_M_group_int(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, _BYTE *a6, char *a7, int *a8)
{
  v9 = a6;
  result = std::__add_grouping<char>(a6, a4, a2, a3, a7, &a7[*a8]);
  *a8 = result - v9;
  return result;
}

void *std::num_put<char,std::ostreambuf_iterator<char>>::_M_pad(int a1, int a2, uint64_t a3, uint64_t a4, _BYTE *__dst, _BYTE *__src, int *a7)
{
  v8 = a3;
  result = std::__pad<char,std::char_traits<char>>::_S_pad(a4, a2, __dst, __src, a3, *a7, 1);
  *a7 = v8;
  return result;
}

void *std::__pad<char,std::char_traits<char>>::_S_pad(uint64_t a1, int a2, _BYTE *__dst, _BYTE *__src, uint64_t a5, int64_t __n, int a7)
{
  v9 = __dst;
  v11 = a5 - __n;
  v12 = *(a1 + 24) & 0xB0;
  if (v12 != 16)
  {
    if (v12 == 32)
    {
      memcpy(__dst, __src, __n);

      return memset(&v9[__n], a2, v11);
    }

    goto LABEL_17;
  }

  if (!a7)
  {
    goto LABEL_17;
  }

  v14 = std::use_facet<std::ctype<char>>(a1 + 208);
  v15 = *__src == std::ctype<char>::widen(v14, 45) || *__src == std::ctype<char>::widen(v14, 43);
  v16 = std::ctype<char>::widen(v14, 48);
  if (__n < 2 || *__src != v16 || __src[1] != std::ctype<char>::widen(v14, 120) && __src[1] != std::ctype<char>::widen(v14, 88))
  {
    if (v15)
    {
      *v9++ = *__src;
      v17 = 1;
      goto LABEL_18;
    }

LABEL_17:
    v17 = 0;
    goto LABEL_18;
  }

  *v9 = *__src;
  v9[1] = __src[1];
  v9 += 2;
  v17 = 2;
LABEL_18:
  memset(v9, a2, v11);

  return memcpy(&v9[v11], &__src[v17], __n - v17);
}

void std::num_put<char,std::ostreambuf_iterator<char>>::~num_put(std::locale::facet *a1)
{
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

uint64_t std::num_put<char,std::ostreambuf_iterator<char>>::do_put(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, int a6)
{
  if (*(a4 + 24))
  {
    v11 = std::__use_cache<std::__numpunct_cache<char>>::operator()(&v22, (a4 + 208));
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
      v18 = *(a4 + 16);
      off_5C2F0(v11);
      bzero(&v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], v17);
      std::__pad<char,std::char_traits<char>>::_S_pad(a4, a5, &v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], v14, v17, v16, 1);
      LODWORD(v16) = v17;
      v14 = &v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
    }

    *(a4 + 16) = 0;
    if ((a3 & 1) == 0)
    {
      (*(*a2 + 96))(a2, v14, v16);
    }
  }

  else
  {
    std::num_put<char,std::ostreambuf_iterator<char>>::_M_insert_int<long>();
    return v20;
  }

  return a2;
}

void std::num_put<char,std::ostreambuf_iterator<char>>::do_put()
{
  std::num_put<char,std::ostreambuf_iterator<char>>::_M_insert_int<unsigned long>();
}

{
  std::num_put<char,std::ostreambuf_iterator<char>>::_M_insert_int<long long>();
}

{
  std::num_put<char,std::ostreambuf_iterator<char>>::_M_insert_int<unsigned long long>();
}

{
  std::num_put<char,std::ostreambuf_iterator<char>>::_M_insert_int<long>();
}

uint64_t std::num_put<char,std::ostreambuf_iterator<char>>::do_put(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  return std::num_put<char,std::ostreambuf_iterator<char>>::_M_insert_float<double>(a1, a2, a3, a4, a5);
}

{
  return std::num_put<char,std::ostreambuf_iterator<char>>::_M_insert_float<long double>(a1, a2, a3, a4, a5);
}

uint64_t std::__int_to_char<char,unsigned long>(uint64_t a1, unint64_t a2, uint64_t a3, __int16 a4, int a5)
{
  if (a5)
  {
    v5 = a1;
    do
    {
      *--v5 = *(a3 + 4 + a2 % 0xA);
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
      *--v5 = *(a3 + 4 + (a2 & 7));
      v6 = a2 >= 8;
      a2 >>= 3;
    }

    while (v6);
  }

  else
  {
    v8 = 20;
    if ((a4 & 0x4000) == 0)
    {
      v8 = 4;
    }

    v9 = a3 + v8;
    v5 = a1;
    do
    {
      *--v5 = *(v9 + (a2 & 0xF));
      v10 = a2 > 0xF;
      a2 >>= 4;
    }

    while (v10);
  }

  return (a1 - v5);
}

uint64_t std::__timepunct<char>::__timepunct(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5DCB0;
  *(a1 + 16) = 0;
  *(a1 + 32) = std::locale::facet::_S_get_c_name(a1);
  std::__timepunct<char>::_M_initialize_timepunct(a1);
  return a1;
}

uint64_t std::__timepunct<char>::__timepunct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a3 != 0;
  *a1 = off_5DCB0;
  *(a1 + 16) = a2;
  *(a1 + 32) = std::locale::facet::_S_get_c_name(a1);
  std::__timepunct<char>::_M_initialize_timepunct(a1);
  return a1;
}

uint64_t std::__timepunct<char>::__timepunct(uint64_t a1, int a2, char *__s, uint64_t a4)
{
  *(a1 + 8) = a4 != 0;
  *a1 = off_5DCB0;
  *(a1 + 16) = 0;
  v6 = strlen(__s);
  v7 = operator new[](v6 + 1);
  memcpy(v7, __s, v6 + 1);
  *(a1 + 32) = v7;
  std::__timepunct<char>::_M_initialize_timepunct(a1);
  return a1;
}

void sub_274A4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 + 32);
  if (v2)
  {
    operator delete[](v2);
  }

  __cxa_rethrow();
}

void sub_274BC(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  std::locale::facet::~facet(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__timepunct<char>::_M_date_formats(uint64_t result, void *a2)
{
  *a2 = *(*(result + 16) + 16);
  a2[1] = *(*(result + 16) + 24);
  return result;
}

uint64_t std::__timepunct<char>::_M_time_formats(uint64_t result, void *a2)
{
  *a2 = *(*(result + 16) + 32);
  a2[1] = *(*(result + 16) + 40);
  return result;
}

uint64_t std::__timepunct<char>::_M_date_time_formats(uint64_t result, void *a2)
{
  *a2 = *(*(result + 16) + 48);
  a2[1] = *(*(result + 16) + 56);
  return result;
}

uint64_t std::__timepunct<char>::_M_am_pm(uint64_t result, void *a2)
{
  *a2 = *(*(result + 16) + 64);
  a2[1] = *(*(result + 16) + 72);
  return result;
}

uint64_t std::__timepunct<char>::_M_days(uint64_t result, void *a2)
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

uint64_t std::__timepunct<char>::_M_days_abbreviated(uint64_t result, void *a2)
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

uint64_t std::__timepunct<char>::_M_months(uint64_t result, void *a2)
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

uint64_t std::__timepunct<char>::_M_months_abbreviated(uint64_t result, void *a2)
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

void std::__timepunct<char>::~__timepunct(std::locale::facet *a1)
{
  *a1 = off_5DCB0;
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
  std::__timepunct<char>::~__timepunct(a1);

  operator delete(v1);
}

double std::__timepunct_cache<char>::__timepunct_cache(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5DCD0;
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
  *a1 = off_5DCD0;
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

void std::__timepunct_cache<char>::~__timepunct_cache(std::locale::facet *a1)
{
  *a1 = off_5DCD0;
  std::locale::facet::~facet(a1);
}

{
  *a1 = off_5DCD0;
  std::locale::facet::~facet(a1);
}

{
  *a1 = off_5DCD0;
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

uint64_t std::time_put<char,std::ostreambuf_iterator<char>>::time_put(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2 != 0;
  *result = off_5DCF0;
  return result;
}

{
  *(result + 8) = a2 != 0;
  *result = off_5DCF0;
  return result;
}

uint64_t std::time_put<char,std::ostreambuf_iterator<char>>::put(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, unsigned __int8 *a8)
{
  v29 = a2;
  v12 = a2;
  v30 = a3;
  v14 = std::use_facet<std::ctype<char>>(a4 + 208);
  if (a7 != a8)
  {
    v15 = v14;
    v16 = v14 + 313;
    while (1)
    {
      v17 = *a7;
      LOBYTE(v18) = *(v16 + v17);
      if (!v18)
      {
        v18 = (*(*v15 + 64))(v15, v17, 0);
        if (!v18)
        {
          goto LABEL_16;
        }

        *(v16 + v17) = v18;
      }

      if (v18 == 37)
      {
        v19 = a7 + 1;
        if (a7 + 1 == a8)
        {
          return v29;
        }

        v20 = *v19;
        v21 = *(v16 + v20);
        if (v21)
        {
LABEL_11:
          if (v21 != 79 && v21 != 69)
          {
            goto LABEL_17;
          }

          v19 = a7 + 2;
          if (a7 + 2 == a8)
          {
            return v29;
          }

          v23 = *v19;
          if (*(v16 + v23))
          {
            v24 = v21;
            v21 = *(v16 + v23);
          }

          else
          {
            v25 = (*(*v15 + 64))(v15, v23, 0);
            if (v25)
            {
              *(v16 + v23) = v25;
              v24 = v21;
              v21 = v25;
            }

            else
            {
              v24 = v21;
              v21 = 0;
            }
          }
        }

        else
        {
          v22 = (*(*v15 + 64))(v15, v20, 0);
          v21 = v22;
          if (v22)
          {
            *(v16 + v20) = v22;
            goto LABEL_11;
          }

LABEL_17:
          v24 = 0;
        }

        v29 = (*(*a1 + 16))(a1, v29, v30, a4, a5, a6, v21, v24);
        LOBYTE(v30) = v26;
        a7 = v19;
        goto LABEL_22;
      }

LABEL_16:
      std::ostreambuf_iterator<char>::operator=(&v29, *a7);
LABEL_22:
      if (++a7 == a8)
      {
        return v29;
      }
    }
  }

  return v12;
}

uint64_t *std::ostreambuf_iterator<char>::operator=(uint64_t *a1, unsigned __int8 a2)
{
  if ((a1[1] & 1) == 0)
  {
    v3 = *a1;
    v4 = *(*a1 + 40);
    if (v4 >= *(*a1 + 48))
    {
      std::ostreambuf_iterator<char>::operator=(a2, *a1, a1 + 8);
    }

    else
    {
      *v4 = a2;
      ++*(v3 + 40);
    }
  }

  return a1;
}

void std::time_put<char,std::ostreambuf_iterator<char>>::~time_put(std::locale::facet *a1)
{
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

uint64_t std::time_put<char,std::ostreambuf_iterator<char>>::do_put(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, const tm *a6, char a7, int a8)
{
  v14 = std::use_facet<std::ctype<char>>(a4 + 208);
  v15 = std::locale::id::_M_id(&std::__timepunct<char>::id);
  v16 = *(a4 + 208);
  if (v15 >= *(v16 + 16) || (v17 = *(*(v16 + 8) + 8 * v15)) == 0)
  {
    std::__throw_bad_cast();
  }

  off_5C2F0(v15);
  memset(v20, 0, 128);
  v21[0] = std::ctype<char>::widen(v14, 37);
  if (a8)
  {
    v21[3] = 0;
  }

  else
  {
    LOBYTE(a8) = a7;
    a7 = 0;
  }

  v21[1] = a8;
  v21[2] = a7;
  std::__timepunct<char>::_M_put(v17, v20, 0x80uLL, v21, a6);
  if ((a3 & 1) == 0)
  {
    v18 = strlen(v20);
    (*(*a2 + 96))(a2, v20, v18);
  }

  return a2;
}

uint64_t std::use_facet<std::__timepunct<char>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::__timepunct<char>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::time_put_byname<char,std::ostreambuf_iterator<char>>::time_put_byname(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 8) = a3 != 0;
  *result = off_5DD18;
  return result;
}

{
  *(result + 8) = a3 != 0;
  *result = off_5DD18;
  return result;
}

void std::time_put_byname<char,std::ostreambuf_iterator<char>>::~time_put_byname(std::locale::facet *a1)
{
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

uint64_t std::time_get<char,std::istreambuf_iterator<char>>::time_get(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2 != 0;
  *result = off_5DD40;
  return result;
}

{
  *(result + 8) = a2 != 0;
  *result = off_5DD40;
  return result;
}

void std::time_get<char,std::istreambuf_iterator<char>>::~time_get(std::locale::facet *a1)
{
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

uint64_t *std::time_get<char,std::istreambuf_iterator<char>>::do_get_time(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, int *a8)
{
  v27 = a3;
  v25[0] = a4;
  v25[1] = a5;
  v16 = std::locale::id::_M_id(&std::__timepunct<char>::id);
  v17 = *(a6 + 208);
  if (v16 >= *(v17 + 16) || (v18 = *(*(v17 + 8) + 8 * v16)) == 0)
  {
    std::__throw_bad_cast();
  }

  v26 = std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_via_format(a1, a2, a3, a4, a5, a6, a7, a8, *(*(v18 + 16) + 32));
  LODWORD(v27) = v19;
  v20 = std::istreambuf_iterator<char>::_M_get(&v26);
  v21 = std::istreambuf_iterator<char>::_M_get(v25);
  v23 = v20 == -1 || v21 == -1;
  if ((v20 & v21) == 0xFFFFFFFF || !v23)
  {
    *a7 |= 2u;
  }

  return v26;
}

uint64_t *std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_via_format(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, int *a8, const char *a9)
{
  v94 = a2;
  v95 = a3;
  v92 = a4;
  v93 = a5;
  v12 = std::locale::id::_M_id(&std::__timepunct<char>::id);
  v13 = *(a6 + 208);
  if (v12 >= *(v13 + 16) || (v14 = *(*(v13 + 8) + 8 * v12)) == 0)
  {
    std::__throw_bad_cast();
  }

  v15 = std::use_facet<std::ctype<char>>(a6 + 208);
  v16 = strlen(a9);
  v91 = 0;
  v17 = std::istreambuf_iterator<char>::_M_get(&v94) == -1;
  v18 = std::istreambuf_iterator<char>::_M_get(&v92) == -1;
  v19 = 1;
  v87 = a7;
  if (v17 != v18 && v16)
  {
    v20 = 0;
    v21 = v15 + 313;
    while (1)
    {
      v22 = a9[v20];
      LOBYTE(v23) = *(v21 + v22);
      if (!v23)
      {
        v23 = (*(*v15 + 64))(v15, v22, 0);
        if (!v23)
        {
          goto LABEL_20;
        }

        *(v21 + v22) = v23;
      }

      if (v23 != 37)
      {
LABEL_20:
        v30 = a9[v20];
        if (v30 == std::istreambuf_iterator<char>::_M_get(&v94))
        {
          if (v94)
          {
            v31 = v94[2];
            if (v31 >= v94[3])
            {
              std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v94);
            }

            else
            {
              v94[2] = v31 + 1;
            }

            LODWORD(v95) = -1;
          }
        }

        else
        {
          v91 |= 4u;
        }

        goto LABEL_99;
      }

      v24 = v20 + 1;
      v25 = a9[v20 + 1];
      LOBYTE(v26) = *(v21 + v25);
      if (!v26)
      {
        v26 = (*(*v15 + 64))(v15, v25, 0);
        if (!v26)
        {
          v90 = 0;
          goto LABEL_27;
        }

        *(v21 + v25) = v26;
      }

      v90 = 0;
      if (v26 != 79 && v26 != 69)
      {
        goto LABEL_18;
      }

      v24 = v20 + 2;
      v27 = a9[v20 + 2];
      LOBYTE(v26) = *(v21 + v27);
      if (v26)
      {
        goto LABEL_18;
      }

      v26 = (*(*v15 + 64))(v15, v27, 0);
      if (v26)
      {
        *(v21 + v27) = v26;
LABEL_18:
        switch(v26)
        {
          case 'A':
            v64 = *(v14 + 16);
            v118 = *(v64 + 88);
            v119 = *(v64 + 104);
            v120 = *(*(v14 + 16) + 112);
            v121 = *(*(v14 + 16) + 120);
            v122 = *(*(v14 + 16) + 128);
            v123 = *(*(v14 + 16) + 136);
            v33 = v94;
            v34 = v95;
            v35 = v92;
            v36 = v93;
            v84 = a6;
            v37 = a8 + 6;
            v38 = &v118;
            goto LABEL_65;
          case 'B':
            v65 = *(v14 + 16);
            v96 = *(v65 + 200);
            v97 = *(v65 + 216);
            v98 = *(*(v14 + 16) + 224);
            v99 = *(*(v14 + 16) + 232);
            v100 = *(*(v14 + 16) + 240);
            v101 = *(*(v14 + 16) + 248);
            v102 = *(*(v14 + 16) + 256);
            v103 = *(*(v14 + 16) + 264);
            v104 = *(*(v14 + 16) + 272);
            v105 = *(*(v14 + 16) + 280);
            v106 = *(*(v14 + 16) + 288);
            v33 = v94;
            v34 = v95;
            v35 = v92;
            v36 = v93;
            v84 = a6;
            v37 = a8 + 4;
            v38 = &v96;
            goto LABEL_61;
          case 'C':
          case 'y':
            v28 = std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_num(a1, v94, v95, v92, v93, a8 + 5, 0, 99, 2uLL, a6, &v91);
            goto LABEL_97;
          case 'D':
            v55 = "%m/%d/%y";
            goto LABEL_68;
          case 'H':
            v28 = std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_num(a1, v94, v95, v92, v93, a8 + 2, 0, 23, 2uLL, a6, &v91);
            goto LABEL_97;
          case 'I':
            v28 = std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_num(a1, v94, v95, v92, v93, a8 + 2, 1, 12, 2uLL, a6, &v91);
            goto LABEL_97;
          case 'M':
            v39 = v94;
            v40 = v95;
            v41 = v92;
            v42 = v93;
            v86 = a6;
            v43 = a8 + 1;
            v85 = 2;
            v44 = a1;
            goto LABEL_63;
          case 'R':
            v55 = "%H:%M";
            v69 = "%H:%M:%S";
            goto LABEL_73;
          case 'S':
            v28 = std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_num(a1, v94, v95, v92, v93, a8, 0, 60, 2uLL, a6, &v91);
            goto LABEL_97;
          case 'T':
            v55 = "%H:%M:%S";
LABEL_68:
            v69 = v55 + 9;
LABEL_73:
            std::ctype<char>::widen(v15, v55, v69, __dst);
            v70 = v94;
            v71 = v95;
            v72 = v92;
            v73 = v93;
            v54 = __dst;
            goto LABEL_74;
          case 'X':
            v54 = *(*(v14 + 16) + 32);
            goto LABEL_71;
          case 'Y':
            v94 = std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_num(a1, v94, v95, v92, v93, &v90, 0, 9999, 4uLL, a6, &v91);
            LODWORD(v95) = v63;
            if (!v91)
            {
              a8[5] = v90 - 1900;
            }

            goto LABEL_98;
          case 'Z':
            v52 = std::istreambuf_iterator<char>::_M_get(&v94);
            v53 = *(v15 + 48);
            if (v53)
            {
              if ((*(v53 + 8 * v52) & 0x8000) == 0)
              {
                goto LABEL_27;
              }
            }

            else if ((v52 & 0x80) != 0)
            {
              if (!__maskrune(v52, 0x8000uLL))
              {
                goto LABEL_27;
              }
            }

            else if ((_DefaultRuneLocale.__runetype[v52] & 0x8000) == 0)
            {
              goto LABEL_27;
            }

            v94 = std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_name(a1, v94, v95, v92, v93, &v89, std::__timepunct_cache<char>::_S_timezones, 14, a6, &v91);
            LODWORD(v95) = v75;
            v76 = std::istreambuf_iterator<char>::_M_get(&v94) == -1;
            if (v76 == (std::istreambuf_iterator<char>::_M_get(&v92) == -1))
            {
              goto LABEL_98;
            }

            if (v91)
            {
              goto LABEL_98;
            }

            if (v89)
            {
              goto LABEL_98;
            }

            v77 = std::istreambuf_iterator<char>::_M_get(&v94);
            if (std::ctype<char>::widen(v15, 45) != v77)
            {
              v78 = std::istreambuf_iterator<char>::_M_get(&v94);
              if (std::ctype<char>::widen(v15, 43) != v78)
              {
                goto LABEL_98;
              }
            }

            v94 = std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_num(a1, v94, v95, v92, v93, &v89, 0, 23, 2uLL, a6, &v91);
            LODWORD(v95) = v79;
            v40 = v95;
            v41 = v92;
            v42 = v93;
            v86 = a6;
            v43 = &v89;
            v85 = 2;
            v44 = a1;
            v39 = v94;
LABEL_63:
            v45 = 0;
            v62 = 59;
            goto LABEL_96;
          case 'a':
            v68 = *(v14 + 16);
            v124 = *(v68 + 144);
            v125 = *(v68 + 160);
            v126 = *(*(v14 + 16) + 168);
            v127 = *(*(v14 + 16) + 176);
            v128 = *(*(v14 + 16) + 184);
            v129 = *(*(v14 + 16) + 192);
            v33 = v94;
            v34 = v95;
            v35 = v92;
            v36 = v93;
            v84 = a6;
            v37 = a8 + 6;
            v38 = &v124;
LABEL_65:
            v66 = a1;
            v67 = 7;
            goto LABEL_66;
          case 'b':
          case 'h':
            v32 = *(v14 + 16);
            v107 = *(v32 + 296);
            v108 = *(v32 + 312);
            v109 = *(*(v14 + 16) + 320);
            v110 = *(*(v14 + 16) + 328);
            v111 = *(*(v14 + 16) + 336);
            v112 = *(*(v14 + 16) + 344);
            v113 = *(*(v14 + 16) + 352);
            v114 = *(*(v14 + 16) + 360);
            v115 = *(*(v14 + 16) + 368);
            v116 = *(*(v14 + 16) + 376);
            v117 = *(*(v14 + 16) + 384);
            v33 = v94;
            v34 = v95;
            v35 = v92;
            v36 = v93;
            v84 = a6;
            v37 = a8 + 4;
            v38 = &v107;
LABEL_61:
            v66 = a1;
            v67 = 12;
LABEL_66:
            v28 = std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_name(v66, v33, v34, v35, v36, v37, v38, v67, v84, &v91);
            goto LABEL_97;
          case 'c':
            v54 = *(*(v14 + 16) + 48);
            goto LABEL_71;
          case 'd':
            v39 = v94;
            v40 = v95;
            v41 = v92;
            v42 = v93;
            v86 = a6;
            v43 = a8 + 3;
            v85 = 2;
            v44 = a1;
            v45 = 1;
            goto LABEL_53;
          case 'e':
            v60 = std::istreambuf_iterator<char>::_M_get(&v94);
            v61 = *(v15 + 48);
            if (v61)
            {
              if ((*(v61 + 8 * v60) & 0x4000) != 0)
              {
                goto LABEL_91;
              }
            }

            else if ((v60 & 0x80) != 0)
            {
              if (__maskrune(v60, 0x4000uLL))
              {
LABEL_91:
                v39 = v94;
                if (v94)
                {
                  v80 = v94[2];
                  if (v80 >= v94[3])
                  {
                    (*(*v94 + 80))(v94);
                    v39 = v94;
                  }

                  else
                  {
                    v94[2] = v80 + 1;
                  }

                  LODWORD(v95) = -1;
                }

                v40 = v95;
                v41 = v92;
                v42 = v93;
                v86 = a6;
                v43 = a8 + 3;
                v85 = 1;
                v44 = a1;
                v45 = 1;
                v62 = 9;
                goto LABEL_96;
              }
            }

            else if ((_DefaultRuneLocale.__runetype[v60] & 0x4000) != 0)
            {
              goto LABEL_91;
            }

            v39 = v94;
            v40 = v95;
            v41 = v92;
            v42 = v93;
            v86 = a6;
            v43 = a8 + 3;
            v85 = 2;
            v44 = a1;
            v45 = 10;
LABEL_53:
            v62 = 31;
LABEL_96:
            v28 = std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_num(v44, v39, v40, v41, v42, v43, v45, v62, v85, v86, &v91);
LABEL_97:
            v94 = v28;
            LODWORD(v95) = v29;
            break;
          case 'm':
            v94 = std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_num(a1, v94, v95, v92, v93, &v90, 1, 12, 2uLL, a6, &v91);
            LODWORD(v95) = v74;
            if (!v91)
            {
              a8[4] = v90 - 1;
            }

            goto LABEL_98;
          case 'n':
            v46 = std::istreambuf_iterator<char>::_M_get(&v94);
            v47 = v46;
            v48 = *(v21 + v46);
            if (v48)
            {
              goto LABEL_33;
            }

            v49 = (*(*v15 + 64))(v15, v46, 0);
            if (!v49)
            {
              goto LABEL_27;
            }

            v48 = v49;
            *(v21 + v47) = v49;
LABEL_33:
            if (v48 != 10)
            {
              goto LABEL_27;
            }

            v50 = v94;
            if (!v94)
            {
              goto LABEL_98;
            }

            v51 = v94[2];
            if (v51 >= v94[3])
            {
              goto LABEL_36;
            }

            goto LABEL_48;
          case 't':
            v56 = std::istreambuf_iterator<char>::_M_get(&v94);
            v57 = v56;
            v58 = *(v21 + v56);
            if (v58)
            {
              goto LABEL_45;
            }

            v59 = (*(*v15 + 64))(v15, v56, 0);
            if (!v59)
            {
              goto LABEL_27;
            }

            v58 = v59;
            *(v21 + v57) = v59;
LABEL_45:
            if (v58 != 9)
            {
              goto LABEL_27;
            }

            v50 = v94;
            if (!v94)
            {
              goto LABEL_98;
            }

            v51 = v94[2];
            if (v51 >= v94[3])
            {
LABEL_36:
              std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v50);
            }

            else
            {
LABEL_48:
              v50[2] = v51 + 1;
            }

            LODWORD(v95) = -1;
            goto LABEL_98;
          case 'x':
            v54 = *(*(v14 + 16) + 16);
LABEL_71:
            v70 = v94;
            v71 = v95;
            v72 = v92;
            v73 = v93;
LABEL_74:
            v28 = std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_via_format(a1, v70, v71, v72, v73, a6, &v91, a8, v54);
            goto LABEL_97;
          default:
            goto LABEL_27;
        }

        goto LABEL_98;
      }

LABEL_27:
      v91 |= 4u;
LABEL_98:
      v20 = v24;
LABEL_99:
      v81 = std::istreambuf_iterator<char>::_M_get(&v94) == -1;
      v82 = std::istreambuf_iterator<char>::_M_get(&v92) == -1;
      v19 = v91 == 0;
      if (v81 != v82 && ++v20 < v16 && !v91)
      {
        continue;
      }

      break;
    }
  }

  if (!v19)
  {
    *v87 |= 4u;
  }

  return v94;
}

uint64_t *std::time_get<char,std::istreambuf_iterator<char>>::do_get_date(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, int *a8)
{
  v27 = a3;
  v25[0] = a4;
  v25[1] = a5;
  v16 = std::locale::id::_M_id(&std::__timepunct<char>::id);
  v17 = *(a6 + 208);
  if (v16 >= *(v17 + 16) || (v18 = *(*(v17 + 8) + 8 * v16)) == 0)
  {
    std::__throw_bad_cast();
  }

  v26 = std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_via_format(a1, a2, a3, a4, a5, a6, a7, a8, *(*(v18 + 16) + 16));
  LODWORD(v27) = v19;
  v20 = std::istreambuf_iterator<char>::_M_get(&v26);
  v21 = std::istreambuf_iterator<char>::_M_get(v25);
  v23 = v20 == -1 || v21 == -1;
  if ((v20 & v21) == 0xFFFFFFFF || !v23)
  {
    *a7 |= 2u;
  }

  return v26;
}

uint64_t *std::time_get<char,std::istreambuf_iterator<char>>::do_get_weekday(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v41 = a3;
  v39[0] = a4;
  v39[1] = a5;
  v16 = std::locale::id::_M_id(&std::__timepunct<char>::id);
  v17 = *(a6 + 208);
  if (v16 >= *(v17 + 16) || (v18 = *(*(v17 + 8) + 8 * v16)) == 0)
  {
    std::__throw_bad_cast();
  }

  std::use_facet<std::ctype<char>>(a6 + 208);
  v19 = *(v18 + 16);
  v20 = *(v19 + 160);
  v42 = *(v19 + 144);
  v43 = v20;
  v44 = *(v19 + 176);
  v45 = *(v19 + 192);
  v37 = 0;
  v40 = std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_name(a1, a2, a3, a4, a5, &v38, &v42, 7, a6, &v37);
  LODWORD(v41) = v21;
  if (v37)
  {
    goto LABEL_18;
  }

  v22 = std::istreambuf_iterator<char>::_M_get(&v40) == -1;
  if (v22 != (std::istreambuf_iterator<char>::_M_get(v39) == -1))
  {
    v23 = strlen(*(&v42 + v38));
    v24 = *(v18 + 16);
    v25 = *(v24 + 104);
    v42 = *(v24 + 88);
    v43 = v25;
    v44 = *(v24 + 120);
    v45 = *(v24 + 136);
    v26 = *(&v42 + v38);
    v27 = v26[v23];
    if (v27 == std::istreambuf_iterator<char>::_M_get(&v40))
    {
      v28 = strlen(v26);
      if (v23 < v28)
      {
        while (1)
        {
          v29 = std::istreambuf_iterator<char>::_M_get(&v40) == -1;
          if (v29 == (std::istreambuf_iterator<char>::_M_get(v39) == -1))
          {
            break;
          }

          v30 = v26[v23];
          if (v30 != std::istreambuf_iterator<char>::_M_get(&v40))
          {
            break;
          }

          if (v40)
          {
            v31 = v40[2];
            if (v31 >= v40[3])
            {
              std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v40);
            }

            else
            {
              v40[2] = v31 + 1;
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
  v32 = std::istreambuf_iterator<char>::_M_get(&v40);
  v33 = std::istreambuf_iterator<char>::_M_get(v39);
  v35 = v32 == -1 || v33 == -1;
  if ((v32 & v33) == 0xFFFFFFFF || !v35)
  {
    *a7 |= 2u;
  }

  return v40;
}

uint64_t *std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_name(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10)
{
  v41 = a2;
  v42 = a3;
  v40[0] = a4;
  v40[1] = a5;
  v13 = std::use_facet<std::ctype<char>>(a9 + 208);
  off_5C2F0(v13);
  v14 = (&v40[-1] - ((4 * a8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = std::istreambuf_iterator<char>::_M_get(&v41) == -1;
  if (v15 == (std::istreambuf_iterator<char>::_M_get(v40) == -1))
  {
    goto LABEL_47;
  }

  v16 = std::istreambuf_iterator<char>::_M_get(&v41);
  if (!a8)
  {
    goto LABEL_47;
  }

  v17 = v16;
  bzero(&v40[-1] - ((4 * a8 + 15) & 0xFFFFFFFFFFFFFFF0), 4 * a8);
  v18 = 0;
  v19 = 0;
  do
  {
    v20 = **(a7 + 8 * v19);
    if (v20 == v17 || (*(*v13 + 16))(v13, v20) == v17)
    {
      v14[v18++] = v19;
    }

    ++v19;
  }

  while (a8 != v19);
  if (v18 < 2)
  {
    v30 = 1;
  }

  else
  {
    v21 = 0;
    do
    {
      v22 = v21;
      v23 = strlen(*(a7 + 8 * *v14));
      for (i = 1; i != v18; ++i)
      {
        v25 = strlen(*(a7 + 8 * v14[i]));
        if (v25 < v23)
        {
          v23 = v25;
        }
      }

      if (v41)
      {
        v26 = v41[2];
        if (v26 >= v41[3])
        {
          std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v41);
        }

        else
        {
          v41[2] = v26 + 1;
        }

        LODWORD(v42) = -1;
      }

      v21 = v22 + 1;
      if (v22 + 1 >= v23)
      {
        break;
      }

      v27 = std::istreambuf_iterator<char>::_M_get(&v41) == -1;
      if (v27 == (std::istreambuf_iterator<char>::_M_get(v40) == -1))
      {
        break;
      }

      v28 = 0;
      do
      {
        v29 = *(*(a7 + 8 * v14[v28]) + v21);
        if (v29 == std::istreambuf_iterator<char>::_M_get(&v41))
        {
          ++v28;
        }

        else
        {
          v14[v28] = v14[--v18];
        }
      }

      while (v28 < v18);
    }

    while (v18 >= 2);
    v30 = v22 + 2;
  }

  if (v18 != 1)
  {
    goto LABEL_47;
  }

  if (v41)
  {
    v31 = v41[2];
    if (v31 >= v41[3])
    {
      std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v41);
    }

    else
    {
      v41[2] = v31 + 1;
    }

    LODWORD(v42) = -1;
  }

  v32 = *v14;
  v33 = *(a7 + 8 * v32);
  v34 = strlen(v33);
  if (v30 < v34)
  {
    while (1)
    {
      v35 = std::istreambuf_iterator<char>::_M_get(&v41) == -1;
      if (v35 == (std::istreambuf_iterator<char>::_M_get(v40) == -1))
      {
        break;
      }

      v36 = v33[v30];
      if (v36 != std::istreambuf_iterator<char>::_M_get(&v41))
      {
        break;
      }

      if (v41)
      {
        v37 = v41[2];
        if (v37 >= v41[3])
        {
          std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v41);
        }

        else
        {
          v41[2] = v37 + 1;
        }

        LODWORD(v42) = -1;
      }

      if (v34 == ++v30)
      {
        goto LABEL_46;
      }
    }
  }

  if (v34 == v30)
  {
LABEL_46:
    *a6 = v32;
  }

  else
  {
LABEL_47:
    *a10 |= 4u;
  }

  return v41;
}

uint64_t *std::time_get<char,std::istreambuf_iterator<char>>::do_get_monthname(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v41 = a3;
  v39[0] = a4;
  v39[1] = a5;
  v16 = std::locale::id::_M_id(&std::__timepunct<char>::id);
  v17 = *(a6 + 208);
  if (v16 >= *(v17 + 16) || (v18 = *(*(v17 + 8) + 8 * v16)) == 0)
  {
    std::__throw_bad_cast();
  }

  std::use_facet<std::ctype<char>>(a6 + 208);
  v19 = (*(v18 + 16) + 296);
  v42 = *v19;
  v43 = v19[1];
  v44 = v19[2];
  v45 = v19[3];
  v46 = v19[4];
  v47 = v19[5];
  v37 = 0;
  v40 = std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_name(a1, a2, a3, a4, a5, &v38, &v42, 12, a6, &v37);
  LODWORD(v41) = v20;
  if (v37)
  {
    goto LABEL_18;
  }

  v21 = std::istreambuf_iterator<char>::_M_get(&v40) == -1;
  if (v21 != (std::istreambuf_iterator<char>::_M_get(v39) == -1))
  {
    v22 = strlen(*(&v42 + v38));
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
    if (v27 == std::istreambuf_iterator<char>::_M_get(&v40))
    {
      v28 = strlen(v26);
      if (v22 < v28)
      {
        while (1)
        {
          v29 = std::istreambuf_iterator<char>::_M_get(&v40) == -1;
          if (v29 == (std::istreambuf_iterator<char>::_M_get(v39) == -1))
          {
            break;
          }

          v30 = v26[v22];
          if (v30 != std::istreambuf_iterator<char>::_M_get(&v40))
          {
            break;
          }

          if (v40)
          {
            v31 = v40[2];
            if (v31 >= v40[3])
            {
              std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v40);
            }

            else
            {
              v40[2] = v31 + 1;
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
  v32 = std::istreambuf_iterator<char>::_M_get(&v40);
  v33 = std::istreambuf_iterator<char>::_M_get(v39);
  v35 = v32 == -1 || v33 == -1;
  if ((v32 & v33) == 0xFFFFFFFF || !v35)
  {
    *a7 |= 2u;
  }

  return v40;
}

uint64_t *std::time_get<char,std::istreambuf_iterator<char>>::do_get_year(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v30 = a2;
  v31 = a3;
  v29[0] = a4;
  v29[1] = a5;
  v10 = std::use_facet<std::ctype<char>>(a6 + 208);
  v11 = std::istreambuf_iterator<char>::_M_get(&v30) == -1;
  if (v11 == (std::istreambuf_iterator<char>::_M_get(v29) == -1))
  {
    goto LABEL_22;
  }

  v12 = 0;
  v13 = 0;
  v14 = v10 + 313;
  while (1)
  {
    v15 = std::istreambuf_iterator<char>::_M_get(&v30);
    v16 = v15;
    v17 = *(v14 + v15);
    if (!v17)
    {
      v18 = (*(*v10 + 64))(v10, v15, 42);
      if (v18 == 42)
      {
        break;
      }

      v17 = v18;
      *(v14 + v16) = v18;
    }

    if ((v17 - 48) > 9u)
    {
      break;
    }

    if (v30)
    {
      v19 = v30[2];
      if (v19 >= v30[3])
      {
        std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v30);
      }

      else
      {
        v30[2] = v19 + 1;
      }

      LODWORD(v31) = -1;
    }

    v13 = 10 * v13 + v17 - 48;
    v20 = v12 + 1;
    v21 = std::istreambuf_iterator<char>::_M_get(&v30) == -1;
    if (v21 != (std::istreambuf_iterator<char>::_M_get(v29) == -1) && v12++ < 3)
    {
      continue;
    }

    goto LABEL_17;
  }

  v20 = v12;
LABEL_17:
  if (v20 == 4 || v20 == 2)
  {
    v23 = v13 - 1900;
    if (v20 == 2)
    {
      v23 = v13;
    }

    *(a8 + 20) = v23;
  }

  else
  {
LABEL_22:
    *a7 |= 4u;
  }

  v24 = std::istreambuf_iterator<char>::_M_get(&v30);
  v25 = std::istreambuf_iterator<char>::_M_get(v29);
  v27 = v24 == -1 || v25 == -1;
  if ((v24 & v25) == 0xFFFFFFFF || !v27)
  {
    *a7 |= 2u;
  }

  return v30;
}

uint64_t *std::time_get<char,std::istreambuf_iterator<char>>::_M_extract_num(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, int a7, int a8, unint64_t a9, uint64_t a10, _DWORD *a11)
{
  v30 = a2;
  v31 = a3;
  v29[0] = a4;
  v29[1] = a5;
  v13 = std::use_facet<std::ctype<char>>(a10 + 208);
  v14 = std::istreambuf_iterator<char>::_M_get(&v30) == -1;
  if (v14 == (std::istreambuf_iterator<char>::_M_get(v29) == -1) || a9 == 0)
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

    v20 = v13 + 313;
    do
    {
      v21 = std::istreambuf_iterator<char>::_M_get(&v30);
      v22 = v21;
      LOBYTE(v23) = *(v20 + v21);
      if (!v23)
      {
        v23 = (*(*v13 + 64))(v13, v21, 42);
        if (v23 == 42)
        {
          break;
        }

        *(v20 + v22) = v23;
      }

      if ((v23 - 48) > 9u)
      {
        break;
      }

      v17 = 10 * v17 + v23 - 48;
      if ((v17 * v19) > a8 || (v17 * v19 + v19) <= a7)
      {
        break;
      }

      if (v30)
      {
        v25 = v30[2];
        if (v25 >= v30[3])
        {
          std::num_get<char,std::istreambuf_iterator<char>>::_M_extract_float(v30);
        }

        else
        {
          v30[2] = v25 + 1;
        }

        LODWORD(v31) = -1;
      }

      ++v16;
      v26 = std::istreambuf_iterator<char>::_M_get(&v30) == -1;
      if (v26 == (std::istreambuf_iterator<char>::_M_get(v29) == -1))
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

  return v30;
}

uint64_t std::time_get_byname<char,std::istreambuf_iterator<char>>::time_get_byname(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 8) = a3 != 0;
  *result = off_5DD90;
  return result;
}

{
  *(result + 8) = a3 != 0;
  *result = off_5DD90;
  return result;
}

void std::time_get_byname<char,std::istreambuf_iterator<char>>::~time_get_byname(std::locale::facet *a1)
{
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

uint64_t std::messages<char>::messages(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5DDE0;
  *(a1 + 16) = std::locale::facet::_S_get_c_locale(a1, a2, a3, a4);
  return a1;
}

{
  *(a1 + 8) = a4 != 0;
  *a1 = off_5DDE0;
  *(a1 + 16) = std::locale::facet::_S_get_c_locale(a1, a2, a3, a4);
  return a1;
}

uint64_t std::messages<char>::open(uint64_t a1)
{
  return (*(*a1 + 16))();
}

{
  return (*(*a1 + 16))();
}

void std::messages<char>::~messages(std::locale::facet *a1, int **a2)
{
  *a1 = off_5DDE0;
  std::locale::facet::_S_destroy_c_locale(a1 + 2, a2);

  std::locale::facet::~facet(a1);
}

{
  std::messages<char>::~messages(a1, a2);

  operator delete(v2);
}

uint64_t std::messages_byname<char>::messages_byname(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *std::messages<char>::messages(a1, a3, a3, a4) = off_5DE18;
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

void std::messages_byname<char>::~messages_byname(std::locale::facet *a1, int **a2)
{
  std::messages<char>::~messages(a1, a2);

  operator delete(v2);
}

void std::ctype_byname<char>::~ctype_byname(uint64_t a1, int **a2)
{
  std::ctype<char>::~ctype(a1, a2);

  operator delete(v2);
}

uint64_t std::codecvt_byname<char,char,__mbstate_t>::codecvt_byname(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *std::codecvt<char,char,__mbstate_t>::codecvt(a1, a3, a3, a4) = off_5DF28;
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

void std::codecvt_byname<char,char,__mbstate_t>::~codecvt_byname(std::locale::facet *a1, int **a2)
{
  std::codecvt<char,char,__mbstate_t>::~codecvt(a1, a2);

  operator delete(v2);
}

uint64_t std::collate<char>::collate(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5DF80;
  *(a1 + 16) = std::locale::facet::_S_get_c_locale(a1, a2, a3, a4);
  return a1;
}

uint64_t std::collate<char>::collate(uint64_t a1, int **a2, uint64_t a3)
{
  v5 = a2;
  *(a1 + 8) = a3 != 0;
  *a1 = off_5DF80;
  *(a1 + 16) = std::locale::facet::_S_clone_c_locale(&v5, a2);
  return a1;
}

void std::collate<char>::~collate(std::locale::facet *a1, int **a2)
{
  *a1 = off_5DF80;
  std::locale::facet::_S_destroy_c_locale(a1 + 2, a2);

  std::locale::facet::~facet(a1);
}

{
  std::collate<char>::~collate(a1, a2);

  operator delete(v2);
}

uint64_t std::collate<char>::do_compare(int a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  v8 = std::string::_S_construct<char const*>(a2, a3);
  v9 = std::string::_S_construct<char const*>(a4, a5);
  v10 = &v8[*(v8 - 3)];
  v11 = (v9 - 24);
  v12 = &v9[*(v9 - 3)];
  v13 = v8;
  for (i = v9; ; i = v17 + 1)
  {
    v15 = std::collate<char>::_M_compare(a1, v13, i);
    if (v15)
    {
      break;
    }

    v16 = &v13[strlen(v13)];
    v17 = &i[strlen(i)];
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

  if (v11 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v9 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v11);
  }

  if (v8 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v8 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v8 - 24);
  }

  return v15;
}

void sub_2A208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, __int16 a12, char a13)
{
  if ((v13 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((v13 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((v13 - 24));
  }

  _Unwind_Resume(exception_object);
}

void std::collate<char>::do_transform(int a1@<W0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, std::string *a4@<X8>)
{
  *a4 = &unk_60620;
  v8 = std::string::_S_construct<char const*>(a2, a3);
  v9 = (v8 - 24);
  v10 = *(v8 - 3);
  v11 = 2 * (a3 - a2);
  v12 = operator new[](v11);
  v13 = &v8[v10];
  for (i = v8; ; i = v16 + 1)
  {
    v15 = std::collate<char>::_M_transform(a1, v12, i, v11);
    if (v15 >= v11)
    {
      if (v12)
      {
        operator delete[](v12);
      }

      v11 = v15 + 1;
      v12 = operator new[](v15 + 1);
      v15 = std::collate<char>::_M_transform(a1, v12, i, v15 + 1);
    }

    std::string::append(a4, v12, v15);
    v16 = &i[strlen(i)];
    if (v16 == v13)
    {
      break;
    }

    std::string::push_back(a4, 0);
  }

  if (v12)
  {
    operator delete[](v12);
  }

  if (v9 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v8 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v9);
  }
}

void sub_2A3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (v13 != v16 && atomic_fetch_add((v15 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v13);
  }

  v18 = (*v14 - 24);
  if (v18 != v16 && atomic_fetch_add((*v14 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::collate<char>::do_hash(uint64_t a1, char *a2, char *a3)
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

  while (a2 != a3);
  return result;
}

uint64_t std::collate_byname<char>::collate_byname(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *std::collate<char>::collate(a1, a3, a3, a4) = off_5DFB8;
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

void std::collate_byname<char>::~collate_byname(std::locale::facet *a1, int **a2)
{
  std::collate<char>::~collate(a1, a2);

  operator delete(v2);
}

uint64_t std::use_facet<std::codecvt<char,char,__mbstate_t>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::codecvt<char,char,__mbstate_t>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::use_facet<std::collate<char>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::collate<char>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::use_facet<std::num_put<char,std::ostreambuf_iterator<char>>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::num_put<char,std::ostreambuf_iterator<char>>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::use_facet<std::num_get<char,std::istreambuf_iterator<char>>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::num_get<char,std::istreambuf_iterator<char>>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::use_facet<std::money_put<char,std::ostreambuf_iterator<char>>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::money_put<char,std::ostreambuf_iterator<char>>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::use_facet<std::money_get<char,std::istreambuf_iterator<char>>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::money_get<char,std::istreambuf_iterator<char>>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::use_facet<std::time_put<char,std::ostreambuf_iterator<char>>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::time_put<char,std::ostreambuf_iterator<char>>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::use_facet<std::time_get<char,std::istreambuf_iterator<char>>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::time_get<char,std::istreambuf_iterator<char>>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::use_facet<std::messages<char>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::messages<char>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::istreambuf_iterator<char>::equal(void *a1, void *a2)
{
  v3 = std::istreambuf_iterator<char>::_M_get(a1);
  v4 = std::istreambuf_iterator<char>::_M_get(a2);
  v6 = v3 == -1 || v4 == -1;
  return (v3 & v4) == 0xFFFFFFFF || !v6;
}

uint64_t std::istreambuf_iterator<char>::_M_get(void *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 2);
  if (v2 == -1)
  {
    v3 = v1[2];
    if (v3 >= v1[3])
    {
      v5 = a1;
      v2 = (*(*v1 + 72))(v1);
      a1 = v5;
      if (v2 == -1)
      {
        *v5 = 0;
        return v2;
      }
    }

    else
    {
      v2 = *v3;
    }

    *(a1 + 2) = v2;
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_4_0()
{
  result = v0;
  v3 = *(v1 - 148);
  return result;
}

uint64_t OUTLINED_FUNCTION_7()
{
  *(v0 - 96) = 0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return v0 - 88;
}

uint64_t OUTLINED_FUNCTION_8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(v2 - 88) = a2;

  return std::__use_cache<std::__numpunct_cache<char>>::operator()(v2 - 129, (a1 + 208));
}

void *OUTLINED_FUNCTION_10()
{
  v7 = *(v5 - 196);

  return std::__pad<char,std::char_traits<char>>::_S_pad(v0, v7, v2, v3, v1, v4, 1);
}

void OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
}

_BYTE *OUTLINED_FUNCTION_14()
{
  if (v0)
  {
    v6 = v0 - (v5 + v4);
  }

  else
  {
    v6 = v1;
  }

  return std::__add_grouping<char>((v3 + v4), *(v2 + 73), *(v2 + 16), *(v2 + 24), (v5 + v4), (v5 + v4 + v6));
}

void OUTLINED_FUNCTION_15(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
}

_BYTE *OUTLINED_FUNCTION_20()
{
  v5 = &v1[v0];
  v6 = *(v4 - 160);
  return std::__add_grouping<char>((v2 + 2), *(v3 + 73), *(v3 + 16), *(v3 + 24), v1, v5);
}

uint64_t OUTLINED_FUNCTION_22()
{

  return std::__convert_from_v((v0 - 192), (v0 - 176), 45, (v0 - 120));
}

void OUTLINED_FUNCTION_23(uint64_t a1@<X8>, uint64_t a2)
{

  bzero(&a2 - v2, a1 + 2);
}

void OUTLINED_FUNCTION_24(uint64_t a1@<X8>, uint64_t a2)
{

  bzero(&a2 - v2, a1 + 2);
}

void OUTLINED_FUNCTION_25(uint64_t a1@<X8>, uint64_t a2)
{

  bzero(&a2 - a1, v2);
}

uint64_t OUTLINED_FUNCTION_38()
{

  return std::__convert_from_v((v2 - 192), v1, v0, (v2 - 120));
}

uint64_t OUTLINED_FUNCTION_39()
{

  return std::ctype<char>::widen(v0, v2, v2 + v1, v3);
}

void *OUTLINED_FUNCTION_41(uint64_t a1, int a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{

  return std::__pad<char,std::char_traits<char>>::_S_pad(a1, a2, a3, a4, a5, v5, 1);
}

void __cxx_global_var_init_0()
{
  {
  }
}

void __cxx_global_var_init_1_0()
{
  {
  }
}

void __cxx_global_var_init_3_0()
{
  {
  }
}

void __cxx_global_var_init_4_0()
{
  {
  }
}

void __cxx_global_var_init_6()
{
  {
  }
}

void __cxx_global_var_init_7()
{
  {
  }
}

void __cxx_global_var_init_8()
{
  {
  }
}

void __cxx_global_var_init_9()
{
  {
  }
}

void __cxx_global_var_init_10()
{
  {
  }
}

void __cxx_global_var_init_11()
{
  {
  }
}

void __cxx_global_var_init_15()
{
  {
  }
}

void __cxx_global_var_init_16()
{
  {
  }
}

std::istream *std::getline<char,std::char_traits<char>,std::allocator<char>>(std::istream *a1, int **a2)
{
  v4 = std::ios::widen(a1 + *(*a1 - 24), 10);

  return std::getline<char,std::char_traits<char>,std::allocator<char>>(a1, a2, v4);
}

void *std::operator>><wchar_t>(void *a1, const __int32 **a2)
{
  std::wistream::sentry::sentry(&v16, a1, 0);
  if (v16 == 1)
  {
    std::wstring::erase(a2, 0, 0xFFFFFFFFFFFFFFFFLL);
    v4 = a1 + *(*a1 - 24);
    if (*(v4 + 2) <= 0)
    {
      v5 = 0xFFFFFFFFFFFFFFELL;
    }

    else
    {
      v5 = *(v4 + 2);
    }

    std::locale::locale(&v15, v4 + 26);
    v6 = std::use_facet<std::ctype<wchar_t>>(&v15);
    std::locale::~locale(&v15);
    v7 = *(a1 + *(*a1 - 24) + 232);
    v8 = v7[2];
    if (v8 >= v7[3])
    {
      v9 = (*(*v7 + 72))(*(a1 + *(*a1 - 24) + 232));
    }

    else
    {
      v9 = *v8;
    }

    if (v9 == -1)
    {
      v11 = 0;
      v10 = 0;
      v13 = 2;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      do
      {
        if ((*(*v6 + 16))(v6, 0x4000, v9))
        {
          break;
        }

        if (v11 == 128)
        {
          std::wstring::append(a2, v17, 0x80uLL);
          v11 = 0;
        }

        v17[v11] = v9;
        v12 = std::wstreambuf::snextc(v7);
        v9 = v12;
        ++v10;
        ++v11;
        if (v10 >= v5)
        {
          break;
        }
      }

      while (v12 != -1);
      v13 = 2 * (v9 == -1);
    }

    std::wstring::append(a2, v17, v11);
    *(a1 + *(*a1 - 24) + 16) = 0;
    if (v10)
    {
      if (!v13)
      {
        return a1;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v13 = 0;
  }

  v13 |= 4u;
LABEL_22:
  std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v13);
  return a1;
}

void sub_2B68C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *std::getline<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>(void *a1, const __int32 **a2)
{
  v4 = std::wios::widen(a1 + *(*a1 - 24));

  return std::getline<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>(a1, a2, v4);
}

uint64_t __gnu_cxx::stdio_sync_filebuf<char>::stdio_sync_filebuf(uint64_t a1, uint64_t a2)
{
  *a1 = off_5EE88;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::locale::locale((a1 + 56));
  *a1 = off_5E3C8;
  *(a1 + 64) = a2;
  *(a1 + 72) = -1;
  return a1;
}

{
  *a1 = off_5EE88;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::locale::locale((a1 + 56));
  *a1 = off_5E3C8;
  *(a1 + 64) = a2;
  *(a1 + 72) = -1;
  return a1;
}

void *__gnu_cxx::stdio_sync_filebuf<char>::~stdio_sync_filebuf(void *a1)
{
  *a1 = off_5EE88;
  std::locale::~locale((a1 + 7));
  return a1;
}

{
  *a1 = off_5EE88;
  std::locale::~locale((a1 + 7));
  return a1;
}

void __gnu_cxx::stdio_sync_filebuf<char>::~stdio_sync_filebuf(void *a1)
{
  *a1 = off_5EE88;
  std::locale::~locale((a1 + 7));

  operator delete(a1);
}

uint64_t __gnu_cxx::stdio_sync_filebuf<char>::underflow(uint64_t a1)
{
  v2 = getc(*(a1 + 64));
  v3 = *(a1 + 64);

  return ungetc(v2, v3);
}

uint64_t __gnu_cxx::stdio_sync_filebuf<char>::uflow(uint64_t a1)
{
  result = getc(*(a1 + 64));
  *(a1 + 72) = result;
  return result;
}

uint64_t __gnu_cxx::stdio_sync_filebuf<char>::pbackfail(uint64_t a1, int a2)
{
  if (a2 == -1 && (a2 = *(a1 + 72), a2 == -1))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = ungetc(a2, *(a1 + 64));
  }

  *(a1 + 72) = -1;
  return result;
}

uint64_t __gnu_cxx::stdio_sync_filebuf<char>::overflow(uint64_t a1, int a2)
{
  v4 = *(a1 + 64);
  if (a2 == -1)
  {
    if (fflush(v4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return putc(a2, v4);
  }
}

double __gnu_cxx::stdio_sync_filebuf<char>::seekoff@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = -1;
  *(a4 + 8) = 0u;
  v6 = (a4 + 8);
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  if (a3 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (!fseek(*(a1 + 64), a2, v8))
  {
    v10 = ftell(*(a1 + 64));
    result = 0.0;
    *v6 = 0u;
    v6[1] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    v6[4] = 0u;
    v6[5] = 0u;
    v6[6] = 0u;
    v6[7] = 0u;
    *a4 = v10;
  }

  return result;
}

uint64_t __gnu_cxx::stdio_sync_filebuf<wchar_t>::stdio_sync_filebuf(uint64_t a1, uint64_t a2)
{
  *a1 = off_5EF08;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::locale::locale((a1 + 56));
  *a1 = off_5E448;
  *(a1 + 64) = a2;
  *(a1 + 72) = -1;
  return a1;
}

{
  *a1 = off_5EF08;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::locale::locale((a1 + 56));
  *a1 = off_5E448;
  *(a1 + 64) = a2;
  *(a1 + 72) = -1;
  return a1;
}

void *__gnu_cxx::stdio_sync_filebuf<wchar_t>::~stdio_sync_filebuf(void *a1)
{
  *a1 = off_5EF08;
  std::locale::~locale((a1 + 7));
  return a1;
}

{
  *a1 = off_5EF08;
  std::locale::~locale((a1 + 7));
  return a1;
}

void __gnu_cxx::stdio_sync_filebuf<wchar_t>::~stdio_sync_filebuf(void *a1)
{
  *a1 = off_5EF08;
  std::locale::~locale((a1 + 7));

  operator delete(a1);
}

uint64_t __gnu_cxx::stdio_sync_filebuf<wchar_t>::underflow(uint64_t a1)
{
  v2 = getwc(*(a1 + 64));
  v3 = *(a1 + 64);

  return ungetwc(v2, v3);
}

uint64_t __gnu_cxx::stdio_sync_filebuf<wchar_t>::uflow(uint64_t a1)
{
  result = getwc(*(a1 + 64));
  *(a1 + 72) = result;
  return result;
}

uint64_t __gnu_cxx::stdio_sync_filebuf<wchar_t>::pbackfail(uint64_t a1, wint_t a2)
{
  if (a2 == -1 && (a2 = *(a1 + 72), a2 == -1))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = ungetwc(a2, *(a1 + 64));
  }

  *(a1 + 72) = -1;
  return result;
}

uint64_t __gnu_cxx::stdio_sync_filebuf<wchar_t>::overflow(uint64_t a1, __int32 a2)
{
  v4 = *(a1 + 64);
  if (a2 == -1)
  {
    if (fflush(v4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return putwc(a2, v4);
  }
}

double __gnu_cxx::stdio_sync_filebuf<wchar_t>::seekoff@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = -1;
  *(a4 + 8) = 0u;
  v6 = (a4 + 8);
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  if (a3 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (!fseek(*(a1 + 64), a2, v8))
  {
    v10 = ftell(*(a1 + 64));
    result = 0.0;
    *v6 = 0u;
    v6[1] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    v6[4] = 0u;
    v6[5] = 0u;
    v6[6] = 0u;
    v6[7] = 0u;
    *a4 = v10;
  }

  return result;
}

uint64_t __gnu_cxx::stdio_sync_filebuf<char>::xsgetn(uint64_t a1, char *__ptr, size_t a3)
{
  result = fread(__ptr, 1uLL, a3, *(a1 + 64));
  if (result < 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = __ptr[result - 1];
  }

  *(a1 + 72) = v6;
  return result;
}

uint64_t __gnu_cxx::stdio_sync_filebuf<wchar_t>::xsgetn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v6 = 0;
LABEL_9:
    v8 = -1;
    goto LABEL_10;
  }

  v6 = 0;
  while (1)
  {
    v7 = getwc(*(a1 + 64));
    if (v7 == -1)
    {
      break;
    }

    *(a2 + 4 * v6++) = v7;
    if (a3 == v6)
    {
      v6 = a3;
      break;
    }
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = *(a2 + 4 * v6 - 4);
LABEL_10:
  *(a1 + 72) = v8;
  return v6;
}

uint64_t __gnu_cxx::stdio_sync_filebuf<wchar_t>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  while (putwc(*(a2 + 4 * v6), *(a1 + 64)) != -1)
  {
    if (a3 == ++v6)
    {
      return a3;
    }
  }

  return v6;
}

uint64_t *std::ostream::ostream(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[1];
  std::ios::init(a1 + *(*a1 - 24), a3);
  return a1;
}

uint64_t std::ostream::ostream(uint64_t a1, uint64_t a2)
{
  v4 = std::ios_base::ios_base((a1 + 8));
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *a1 = off_5E500;
  *(a1 + 8) = off_5E528;
  std::ios::init(v4, a2);
  return a1;
}

void std::ostream::~ostream(std::ostream *this)
{
  std::ios_base::~ios_base((this + 8));
}

{
  std::ios_base::~ios_base((this + 8));

  operator delete(this);
}

void virtual thunk tostd::ostream::~ostream(std::ostream *this)
{
  std::ios_base::~ios_base((this + *(*this - 24) + 8));
}

{
  v1 = this + *(*this - 24);
  std::ios_base::~ios_base((v1 + 8));

  operator delete(v1);
}

std::ostream::sentry *std::ostream::sentry::sentry(std::ostream::sentry *this, std::ostream *a2)
{
  *this = 0;
  *(this + 1) = a2;
  v4 = *a2;
  v5 = a2 + *(*a2 - 24);
  v6 = *(v5 + 27);
  if (v6 && !*(v5 + 8))
  {
    std::ostream::flush(v6);
    v4 = *a2;
  }

  v7 = a2 + *(v4 - 24);
  v8 = *(v7 + 8);
  if (v8)
  {
    std::ios::clear(v7, v8 | 4);
  }

  else
  {
    *this = 1;
  }

  return this;
}

std::ostream *std::ostream::flush(std::ostream *this)
{
  v2 = *(this + *(*this - 24) + 232);
  if (v2 && (*(*v2 + 48))(v2) == -1)
  {
    std::ios::clear(this + *(*this - 24), *(this + *(*this - 24) + 32) | 1);
  }

  return this;
}

void sub_2C350(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2C340);
  }

  __cxa_rethrow();
}

void std::ostream::sentry::~sentry(std::ostream::sentry *this)
{
  if ((*(*(this + 1) + *(**(this + 1) - 24) + 25) & 0x20) != 0 && !std::uncaught_exception())
  {
    v2 = *(*(this + 1) + *(**(this + 1) - 24) + 232);
    if (v2)
    {
      if ((*(*v2 + 48))(v2) == -1)
      {
        v3 = *(this + 1) + *(**(this + 1) - 24);
        std::ios::clear(v3, *(v3 + 32) | 1);
      }
    }
  }
}

char *std::ostream::operator<<(char *a1, void (*a2)(char *))
{
  a2(&a1[*(*a1 - 24)]);
  return a1;
}

{
  a2(&a1[*(*a1 - 24)]);
  return a1;
}

std::ostream *std::ostream::_M_insert<long>(std::ostream *a1, uint64_t a2)
{
  std::ostream::sentry::sentry(v10, a1);
  if (v10[0] == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 31);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    v6 = *(v4 + 29);
    if (v4[225] == 1)
    {
      v7 = v4[224];
    }

    else
    {
      v7 = std::ios::widen(v4, 32);
      v4[224] = v7;
      v4[225] = 1;
    }

    (*(*v5 + 24))(v5, v6, v6 == 0, v4, v7, a2);
    if (v8)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::ostream::sentry::~sentry(v10);
  return a1;
}

void sub_2C670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::ostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

std::ostream *std::ostream::_M_insert<unsigned long>(std::ostream *a1, uint64_t a2)
{
  std::ostream::sentry::sentry(v10, a1);
  if (v10[0] == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 31);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    v6 = *(v4 + 29);
    if (v4[225] == 1)
    {
      v7 = v4[224];
    }

    else
    {
      v7 = std::ios::widen(v4, 32);
      v4[224] = v7;
      v4[225] = 1;
    }

    (*(*v5 + 32))(v5, v6, v6 == 0, v4, v7, a2);
    if (v8)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::ostream::sentry::~sentry(v10);
  return a1;
}

void sub_2C800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::ostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

std::ostream *std::ostream::_M_insert<BOOL>(std::ostream *a1, uint64_t a2)
{
  std::ostream::sentry::sentry(v10, a1);
  if (v10[0] == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 31);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    v6 = *(v4 + 29);
    if (v4[225] == 1)
    {
      v7 = v4[224];
    }

    else
    {
      v7 = std::ios::widen(v4, 32);
      v4[224] = v7;
      v4[225] = 1;
    }

    (*(*v5 + 16))(v5, v6, v6 == 0, v4, v7, a2);
    if (v8)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::ostream::sentry::~sentry(v10);
  return a1;
}

void sub_2C990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::ostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

std::ostream *std::ostream::operator<<(std::ostream *a1, uint64_t a2)
{
  v2 = *(a1 + *(*a1 - 24) + 24) & 0x4A;
  if (v2 == 64 || v2 == 8)
  {
    a2 = a2;
  }

  else
  {
    a2 = a2;
  }

  return std::ostream::_M_insert<long>(a1, a2);
}

{
  v2 = *(a1 + *(*a1 - 24) + 24) & 0x4A;
  if (v2 == 64 || v2 == 8)
  {
    a2 = a2;
  }

  else
  {
    a2 = a2;
  }

  return std::ostream::_M_insert<long>(a1, a2);
}

std::ostream *std::ostream::operator<<(std::ostream *a1, unsigned int a2)
{
  return std::ostream::_M_insert<unsigned long>(a1, a2);
}

{
  return std::ostream::_M_insert<unsigned long>(a1, a2);
}

std::ostream *std::ostream::_M_insert<long long>(std::ostream *a1, uint64_t a2)
{
  std::ostream::sentry::sentry(v10, a1);
  if (v10[0] == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 31);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    v6 = *(v4 + 29);
    if (v4[225] == 1)
    {
      v7 = v4[224];
    }

    else
    {
      v7 = std::ios::widen(v4, 32);
      v4[224] = v7;
      v4[225] = 1;
    }

    (*(*v5 + 40))(v5, v6, v6 == 0, v4, v7, a2);
    if (v8)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::ostream::sentry::~sentry(v10);
  return a1;
}

void sub_2CBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::ostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

std::ostream *std::ostream::_M_insert<unsigned long long>(std::ostream *a1, uint64_t a2)
{
  std::ostream::sentry::sentry(v10, a1);
  if (v10[0] == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 31);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    v6 = *(v4 + 29);
    if (v4[225] == 1)
    {
      v7 = v4[224];
    }

    else
    {
      v7 = std::ios::widen(v4, 32);
      v4[224] = v7;
      v4[225] = 1;
    }

    (*(*v5 + 48))(v5, v6, v6 == 0, v4, v7, a2);
    if (v8)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::ostream::sentry::~sentry(v10);
  return a1;
}

void sub_2CD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::ostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

std::ostream *std::ostream::_M_insert<double>(std::ostream *a1, double a2)
{
  std::ostream::sentry::sentry(v10, a1);
  if (v10[0] == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 31);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    v6 = *(v4 + 29);
    if (v4[225] == 1)
    {
      v7 = v4[224];
    }

    else
    {
      v7 = std::ios::widen(v4, 32);
      v4[224] = v7;
      v4[225] = 1;
    }

    (*(*v5 + 56))(v5, v6, v6 == 0, v4, v7, a2);
    if (v8)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::ostream::sentry::~sentry(v10);
  return a1;
}

void sub_2CED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::ostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

std::ostream *std::ostream::_M_insert<long double>(std::ostream *a1, double a2)
{
  std::ostream::sentry::sentry(v10, a1);
  if (v10[0] == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 31);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    v6 = *(v4 + 29);
    if (v4[225] == 1)
    {
      v7 = v4[224];
    }

    else
    {
      v7 = std::ios::widen(v4, 32);
      v4[224] = v7;
      v4[225] = 1;
    }

    (*(*v5 + 64))(v5, v6, v6 == 0, v4, v7, a2);
    if (v8)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::ostream::sentry::~sentry(v10);
  return a1;
}

void sub_2D078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::ostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

std::ostream *std::ostream::_M_insert<void const*>(std::ostream *a1, uint64_t a2)
{
  std::ostream::sentry::sentry(v10, a1);
  if (v10[0] == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 31);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    v6 = *(v4 + 29);
    if (v4[225] == 1)
    {
      v7 = v4[224];
    }

    else
    {
      v7 = std::ios::widen(v4, 32);
      v4[224] = v7;
      v4[225] = 1;
    }

    (*(*v5 + 72))(v5, v6, v6 == 0, v4, v7, a2);
    if (v8)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::ostream::sentry::~sentry(v10);
  return a1;
}

void sub_2D208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::ostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

std::ostream *std::ostream::operator<<(std::ostream *a1, void *a2)
{
  std::ostream::sentry::sentry(v6, a1);
  if (a2 && (v6[0] & 1) != 0)
  {
    if (!std::__copy_streambufs_eof<char,std::char_traits<char>>(a2, *(a1 + *(*a1 - 24) + 232), &v7))
    {
      v4 = 4;
LABEL_7:
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v4);
    }
  }

  else if (!a2)
  {
    v4 = 1;
    goto LABEL_7;
  }

  std::ostream::sentry::~sentry(v6);
  return a1;
}

void sub_2D2E4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 4u;
  if ((v2[28] & 4) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2D2C8);
  }

  __cxa_rethrow();
}

void sub_2D324(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  std::ostream::sentry::~sentry(va);
  _Unwind_Resume(a1);
}

std::ostream *std::ostream::put(std::ostream *this, unsigned __int8 a2)
{
  std::ostream::sentry::sentry(v7, this);
  if (v7[0] == 1)
  {
    v4 = *(this + *(*this - 24) + 232);
    v5 = v4[5];
    if (v5 >= v4[6])
    {
      if ((*(*v4 + 104))(v4, a2) == -1)
      {
        std::ios::clear(this + *(*this - 24), *(this + *(*this - 24) + 32) | 1);
      }
    }

    else
    {
      *v5 = a2;
      ++v4[5];
    }
  }

  std::ostream::sentry::~sentry(v7);
  return this;
}

void sub_2D428(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2D3B4);
  }

  __cxa_rethrow();
}

void sub_2D468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::ostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::ostream::_M_write(std::ostream *this, const char *a2, uint64_t a3)
{
  v5 = *(this + *(*this - 24) + 232);
  result = (*(*v5 + 96))(v5, a2);
  if (result != a3)
  {
    v7 = this + *(*this - 24);
    v8 = *(v7 + 8) | 1;

    return std::ios::clear(v7, v8);
  }

  return result;
}

std::ostream *std::ostream::write(std::ostream *this, const char *a2, uint64_t a3)
{
  std::ostream::sentry::sentry(v7, this);
  if (v7[0] == 1)
  {
    std::ostream::_M_write(this, a2, a3);
  }

  std::ostream::sentry::~sentry(v7);
  return this;
}

void sub_2D5A0(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2D580);
  }

  __cxa_rethrow();
}

void sub_2D5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::ostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

__n128 std::ostream::tellp@<Q0>(std::ostream *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = -1;
  result = 0uLL;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  v4 = this + *(*this - 24);
  if ((v4[32] & 5) == 0)
  {
    (*(**(v4 + 29) + 32))(v8);
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9;
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

void sub_2D710(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v3 = v2 + *(*v2 - 24);
    *(v3 + 8) |= 1u;
    if ((v3[28] & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x2D6E4);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void *std::ostream::seekp(void *a1, __int128 *a2)
{
  v3 = a1 + *(*a1 - 24);
  if ((v3[32] & 5) == 0)
  {
    v4 = *(v3 + 29);
    v5 = a2[1];
    v11 = *a2;
    v12 = v5;
    v6 = a2[3];
    v13 = a2[2];
    v14 = v6;
    v19 = *(a2 + 16);
    v7 = a2[7];
    v17 = a2[6];
    v18 = v7;
    v8 = a2[5];
    v15 = a2[4];
    v16 = v8;
    (*(*v4 + 40))(v10);
    if (v10[0] == -1)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 4);
    }
  }

  return a1;
}

void sub_2D89C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v3 = v2 + *(*v2 - 24);
    *(v3 + 8) |= 1u;
    if ((v3[28] & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x2D868);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void *std::ostream::seekp(void *a1)
{
  v2 = a1 + *(*a1 - 24);
  if ((v2[32] & 5) == 0)
  {
    (*(**(v2 + 29) + 32))(v4);
    if (v4[0] == -1)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 4);
    }
  }

  return a1;
}

void sub_2D9F0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v3 = v2 + *(*v2 - 24);
    *(v3 + 8) |= 1u;
    if ((v3[28] & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x2D9C0);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ostream::ostream(uint64_t *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 24)) = a2[1];
  return this;
}

std::ostream *std::ostream::ostream(std::ostream *this)
{
  std::ios_base::ios_base((this + 8));
  *(this + 28) = 0;
  *(this + 116) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *this = off_5E500;
  *(this + 1) = off_5E528;
  return this;
}

std::ostream *std::endl<char,std::char_traits<char>>(std::ostream *a1)
{
  v2 = std::ios::widen(a1 + *(*a1 - 24), 10);
  v3 = std::ostream::put(a1, v2);

  return std::ostream::flush(v3);
}

std::ostream *std::operator<<<std::char_traits<char>>(std::ostream *a1, char a2)
{
  v3 = a2;
  return std::__ostream_insert<char,std::char_traits<char>>(a1, &v3, 1);
}

{
  v3 = a2;
  return std::__ostream_insert<char,std::char_traits<char>>(a1, &v3, 1);
}

{
  v3 = a2;
  return std::__ostream_insert<char,std::char_traits<char>>(a1, &v3, 1);
}

std::ostream *std::__ostream_insert<char,std::char_traits<char>>(std::ostream *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry(v21, a1);
  if (v21[0] != 1)
  {
    goto LABEL_23;
  }

  v6 = a1 + *(*a1 - 24);
  v7 = *(v6 + 2);
  v8 = v7 - a3;
  if (v7 <= a3)
  {
    if ((*(**(v6 + 29) + 96))(*(v6 + 29), a2, a3) != a3)
    {
LABEL_7:
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }

    goto LABEL_22;
  }

  v9 = *(v6 + 6) & 0xB0;
  if (v9 == 32)
  {
    goto LABEL_17;
  }

  if (v6[225] == 1)
  {
    v10 = v6[224];
  }

  else
  {
    v10 = std::ios::widen(a1 + *(*a1 - 24), 32);
    v6[224] = v10;
    v6[225] = 1;
  }

  if (v8 < 1)
  {
    goto LABEL_17;
  }

  v11 = v8 + 1;
  while (1)
  {
    v12 = *(a1 + *(*a1 - 24) + 232);
    v13 = v12[5];
    if (v13 >= v12[6])
    {
      break;
    }

    *v13 = v10;
    ++v12[5];
LABEL_13:
    if (--v11 <= 1)
    {
      goto LABEL_17;
    }
  }

  if ((*(*v12 + 104))(v12, v10) != -1)
  {
    goto LABEL_13;
  }

  std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
LABEL_17:
  v14 = a1 + *(*a1 - 24);
  if (!*(v14 + 8) && (*(**(v14 + 29) + 96))(*(v14 + 29), a2, a3) != a3)
  {
    std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
  }

  if (v9 == 32)
  {
    v15 = a1 + *(*a1 - 24);
    if (!*(v15 + 8))
    {
      if (v15[225] == 1)
      {
        v17 = v15[224];
      }

      else
      {
        v17 = std::ios::widen(a1 + *(*a1 - 24), 32);
        v15[224] = v17;
        v15[225] = 1;
      }

      if (v8 >= 1)
      {
        for (i = v8 + 1; i > 1; --i)
        {
          v19 = *(a1 + *(*a1 - 24) + 232);
          v20 = v19[5];
          if (v20 >= v19[6])
          {
            if ((*(*v19 + 104))(v19, v17) == -1)
            {
              goto LABEL_7;
            }
          }

          else
          {
            *v20 = v17;
            ++v19[5];
          }
        }
      }
    }
  }

LABEL_22:
  *(a1 + *(*a1 - 24) + 16) = 0;
LABEL_23:
  std::ostream::sentry::~sentry(v21);
  return a1;
}

void sub_2DF6C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2DE68);
  }

  __cxa_rethrow();
}

void sub_2DFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::ostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

std::ostream *std::operator<<<std::char_traits<char>>(std::ostream *a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
    std::__ostream_insert<char,std::char_traits<char>>(a1, __s, v4);
  }

  else
  {
    std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
  }

  return a1;
}

{
  if (__s)
  {
    v4 = strlen(__s);
    std::__ostream_insert<char,std::char_traits<char>>(a1, __s, v4);
  }

  else
  {
    std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
  }

  return a1;
}

{
  if (__s)
  {
    v4 = strlen(__s);
    std::__ostream_insert<char,std::char_traits<char>>(a1, __s, v4);
  }

  else
  {
    std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
  }

  return a1;
}

void *std::operator<<<char,std::char_traits<char>>(void *a1, char a2)
{
  v4 = a1 + *(*a1 - 24);
  if ((v4[225] & 1) == 0)
  {
    std::ios::widen(a1 + *(*a1 - 24), 32);
    v4[225] = 1;
  }

  v4[224] = a2;
  return a1;
}

void *std::operator<<<char,std::char_traits<char>>(void *result, int a2)
{
  *(result + *(*result - 24) + 24) |= a2;
  return result;
}

{
  *(result + *(*result - 24) + 24) &= ~a2;
  return result;
}

{
  *(result + *(*result - 24) + 8) = a2;
  return result;
}

{
  *(result + *(*result - 24) + 16) = a2;
  return result;
}

uint64_t *std::operator<<<char,std::char_traits<char>>(uint64_t *result, int a2)
{
  v2 = *result;
  if (a2 == 10)
  {
    v3 = 2;
  }

  else
  {
    v3 = 8 * (a2 == 16);
  }

  if (a2 == 8)
  {
    v4 = 64;
  }

  else
  {
    v4 = v3;
  }

  *(result + *(*result - 24) + 24) = *(result + *(*result - 24) + 24) & 0xFFFFFFB5 | v4;
  return result;
}

uint64_t *std::wostream::basic_ostream(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[1];
  std::wios::init(a1 + *(*a1 - 24), a3);
  return a1;
}

uint64_t std::wostream::basic_ostream(uint64_t a1, uint64_t a2)
{
  v4 = std::ios_base::ios_base((a1 + 8));
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *a1 = off_5E560;
  *(a1 + 8) = off_5E588;
  std::wios::init(v4, a2);
  return a1;
}

void virtual thunk tostd::wostream::~wostream(void *a1)
{
  std::ios_base::~ios_base((a1 + *(*a1 - 24) + 8));
}

{
  v1 = a1 + *(*a1 - 24);
  std::ios_base::~ios_base((v1 + 8));

  operator delete(v1);
}

void std::wostream::~wostream(uint64_t a1)
{
  std::ios_base::~ios_base((a1 + 8));

  operator delete(a1);
}

uint64_t std::wostream::sentry::sentry(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  v4 = *a2;
  v5 = a2 + *(*a2 - 24);
  v6 = *(v5 + 27);
  if (v6 && !*(v5 + 8))
  {
    std::wostream::flush(v6);
    v4 = *a2;
  }

  v7 = a2 + *(v4 - 24);
  v8 = *(v7 + 32);
  if (v8)
  {
    std::wios::clear(v7, v8 | 4);
  }

  else
  {
    *a1 = 1;
  }

  return a1;
}

void *std::wostream::flush(void *a1)
{
  v2 = *(a1 + *(*a1 - 24) + 232);
  if (v2 && (*(*v2 + 48))(v2) == -1)
  {
    std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
  }

  return a1;
}

void sub_2E640(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2E630);
  }

  __cxa_rethrow();
}

uint64_t std::wostream::sentry::~sentry(uint64_t a1)
{
  if ((*(*(a1 + 8) + *(**(a1 + 8) - 24) + 25) & 0x20) != 0 && !std::uncaught_exception())
  {
    v2 = *(*(a1 + 8) + *(**(a1 + 8) - 24) + 232);
    if (v2)
    {
      if ((*(*v2 + 48))(v2) == -1)
      {
        v3 = *(a1 + 8) + *(**(a1 + 8) - 24);
        std::wios::clear(v3, *(v3 + 32) | 1);
      }
    }
  }

  return a1;
}

char *std::wostream::operator<<(char *a1, void (*a2)(char *))
{
  a2(&a1[*(*a1 - 24)]);
  return a1;
}

{
  a2(&a1[*(*a1 - 24)]);
  return a1;
}

uint64_t *std::wostream::_M_insert<long>(uint64_t *a1, uint64_t a2)
{
  std::wostream::sentry::sentry(v10, a1);
  if (v10[0] == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 248);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    v6 = *(v4 + 232);
    if (*(v4 + 228) == 1)
    {
      v7 = *(v4 + 224);
    }

    else
    {
      v7 = std::wios::widen(v4);
      *(v4 + 224) = v7;
      *(v4 + 228) = 1;
    }

    (*(*v5 + 24))(v5, v6, v6 == 0, v4, v7, a2);
    if (v8)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::wostream::sentry::~sentry(v10);
  return a1;
}

void sub_2E960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::wostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::wostream::_M_insert<unsigned long>(uint64_t *a1, uint64_t a2)
{
  std::wostream::sentry::sentry(v10, a1);
  if (v10[0] == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 248);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    v6 = *(v4 + 232);
    if (*(v4 + 228) == 1)
    {
      v7 = *(v4 + 224);
    }

    else
    {
      v7 = std::wios::widen(v4);
      *(v4 + 224) = v7;
      *(v4 + 228) = 1;
    }

    (*(*v5 + 32))(v5, v6, v6 == 0, v4, v7, a2);
    if (v8)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::wostream::sentry::~sentry(v10);
  return a1;
}

void sub_2EAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::wostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::wostream::_M_insert<BOOL>(uint64_t *a1, uint64_t a2)
{
  std::wostream::sentry::sentry(v10, a1);
  if (v10[0] == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 248);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    v6 = *(v4 + 232);
    if (*(v4 + 228) == 1)
    {
      v7 = *(v4 + 224);
    }

    else
    {
      v7 = std::wios::widen(v4);
      *(v4 + 224) = v7;
      *(v4 + 228) = 1;
    }

    (*(*v5 + 16))(v5, v6, v6 == 0, v4, v7, a2);
    if (v8)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::wostream::sentry::~sentry(v10);
  return a1;
}

void sub_2EC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::wostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::wostream::operator<<(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + *(*a1 - 24) + 24) & 0x4A;
  if (v2 == 64 || v2 == 8)
  {
    a2 = a2;
  }

  else
  {
    a2 = a2;
  }

  return std::wostream::_M_insert<long>(a1, a2);
}

{
  v2 = *(a1 + *(*a1 - 24) + 24) & 0x4A;
  if (v2 == 64 || v2 == 8)
  {
    a2 = a2;
  }

  else
  {
    a2 = a2;
  }

  return std::wostream::_M_insert<long>(a1, a2);
}

uint64_t *std::wostream::operator<<(uint64_t *a1, unsigned int a2)
{
  return std::wostream::_M_insert<unsigned long>(a1, a2);
}

{
  return std::wostream::_M_insert<unsigned long>(a1, a2);
}

uint64_t *std::wostream::_M_insert<long long>(uint64_t *a1, uint64_t a2)
{
  std::wostream::sentry::sentry(v10, a1);
  if (v10[0] == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 248);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    v6 = *(v4 + 232);
    if (*(v4 + 228) == 1)
    {
      v7 = *(v4 + 224);
    }

    else
    {
      v7 = std::wios::widen(v4);
      *(v4 + 224) = v7;
      *(v4 + 228) = 1;
    }

    (*(*v5 + 40))(v5, v6, v6 == 0, v4, v7, a2);
    if (v8)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::wostream::sentry::~sentry(v10);
  return a1;
}

void sub_2EEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::wostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::wostream::_M_insert<unsigned long long>(uint64_t *a1, uint64_t a2)
{
  std::wostream::sentry::sentry(v10, a1);
  if (v10[0] == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 248);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    v6 = *(v4 + 232);
    if (*(v4 + 228) == 1)
    {
      v7 = *(v4 + 224);
    }

    else
    {
      v7 = std::wios::widen(v4);
      *(v4 + 224) = v7;
      *(v4 + 228) = 1;
    }

    (*(*v5 + 48))(v5, v6, v6 == 0, v4, v7, a2);
    if (v8)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::wostream::sentry::~sentry(v10);
  return a1;
}

void sub_2F030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::wostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::wostream::_M_insert<double>(uint64_t *a1, double a2)
{
  std::wostream::sentry::sentry(v10, a1);
  if (v10[0] == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 248);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    v6 = *(v4 + 232);
    if (*(v4 + 228) == 1)
    {
      v7 = *(v4 + 224);
    }

    else
    {
      v7 = std::wios::widen(v4);
      *(v4 + 224) = v7;
      *(v4 + 228) = 1;
    }

    (*(*v5 + 56))(v5, v6, v6 == 0, v4, v7, a2);
    if (v8)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::wostream::sentry::~sentry(v10);
  return a1;
}

void sub_2F1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::wostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::wostream::_M_insert<long double>(uint64_t *a1, double a2)
{
  std::wostream::sentry::sentry(v10, a1);
  if (v10[0] == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 248);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    v6 = *(v4 + 232);
    if (*(v4 + 228) == 1)
    {
      v7 = *(v4 + 224);
    }

    else
    {
      v7 = std::wios::widen(v4);
      *(v4 + 224) = v7;
      *(v4 + 228) = 1;
    }

    (*(*v5 + 64))(v5, v6, v6 == 0, v4, v7, a2);
    if (v8)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::wostream::sentry::~sentry(v10);
  return a1;
}

void sub_2F368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::wostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::wostream::_M_insert<void const*>(uint64_t *a1, uint64_t a2)
{
  std::wostream::sentry::sentry(v10, a1);
  if (v10[0] == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 248);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    v6 = *(v4 + 232);
    if (*(v4 + 228) == 1)
    {
      v7 = *(v4 + 224);
    }

    else
    {
      v7 = std::wios::widen(v4);
      *(v4 + 224) = v7;
      *(v4 + 228) = 1;
    }

    (*(*v5 + 72))(v5, v6, v6 == 0, v4, v7, a2);
    if (v8)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::wostream::sentry::~sentry(v10);
  return a1;
}

void sub_2F4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::wostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::wostream::operator<<(uint64_t *a1, void *a2)
{
  std::wostream::sentry::sentry(v6, a1);
  if (a2 && (v6[0] & 1) != 0)
  {
    if (!std::__copy_streambufs_eof<wchar_t,std::char_traits<wchar_t>>(a2, *(a1 + *(*a1 - 24) + 232), &v7))
    {
      v4 = 4;
LABEL_7:
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v4);
    }
  }

  else if (!a2)
  {
    v4 = 1;
    goto LABEL_7;
  }

  std::wostream::sentry::~sentry(v6);
  return a1;
}

void sub_2F5D4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 4u;
  if ((v2[28] & 4) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2F5B8);
  }

  __cxa_rethrow();
}

void sub_2F614(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  std::wostream::sentry::~sentry(va);
  _Unwind_Resume(a1);
}

uint64_t *std::wostream::put(uint64_t *a1, uint64_t a2)
{
  std::wostream::sentry::sentry(v7, a1);
  if (v7[0] == 1)
  {
    v4 = *(a1 + *(*a1 - 24) + 232);
    v5 = v4[5];
    if (v5 >= v4[6])
    {
      LODWORD(a2) = (*(*v4 + 104))(v4, a2);
    }

    else
    {
      *v5 = a2;
      v4[5] = v5 + 1;
    }

    if (a2 == -1)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::wostream::sentry::~sentry(v7);
  return a1;
}

void sub_2F714(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2F6C8);
  }

  __cxa_rethrow();
}

void sub_2F754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::wostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::wostream::_M_write(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + *(*a1 - 24) + 232);
  result = (*(*v5 + 96))(v5);
  if (result != a3)
  {
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 32) | 1;

    return std::wios::clear(v7, v8);
  }

  return result;
}

uint64_t *std::wostream::write(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  std::wostream::sentry::sentry(v7, a1);
  if (v7[0] == 1)
  {
    std::wostream::_M_write(a1, a2, a3);
  }

  std::wostream::sentry::~sentry(v7);
  return a1;
}

void sub_2F88C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2F86CLL);
  }

  __cxa_rethrow();
}

void sub_2F8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::wostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

__n128 std::wostream::tellp@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = -1;
  result = 0uLL;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  v4 = a1 + *(*a1 - 24);
  if ((v4[32] & 5) == 0)
  {
    (*(**(v4 + 29) + 32))(v8);
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9;
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

void sub_2F9FC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v3 = v2 + *(*v2 - 24);
    *(v3 + 8) |= 1u;
    if ((v3[28] & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x2F9D0);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void *std::wostream::seekp(void *a1, __int128 *a2)
{
  v3 = a1 + *(*a1 - 24);
  if ((v3[32] & 5) == 0)
  {
    v4 = *(v3 + 29);
    v5 = a2[1];
    v11 = *a2;
    v12 = v5;
    v6 = a2[3];
    v13 = a2[2];
    v14 = v6;
    v19 = *(a2 + 16);
    v7 = a2[7];
    v17 = a2[6];
    v18 = v7;
    v8 = a2[5];
    v15 = a2[4];
    v16 = v8;
    (*(*v4 + 40))(v10);
    if (v10[0] == -1)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 4);
    }
  }

  return a1;
}

void sub_2FB88(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v3 = v2 + *(*v2 - 24);
    *(v3 + 8) |= 1u;
    if ((v3[28] & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x2FB54);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void *std::wostream::seekp(void *a1)
{
  v2 = a1 + *(*a1 - 24);
  if ((v2[32] & 5) == 0)
  {
    (*(**(v2 + 29) + 32))(v4);
    if (v4[0] == -1)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 4);
    }
  }

  return a1;
}

void sub_2FCDC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v3 = v2 + *(*v2 - 24);
    *(v3 + 8) |= 1u;
    if ((v3[28] & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x2FCACLL);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::wostream::basic_ostream(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  *(result + *(v2 - 24)) = a2[1];
  return result;
}

uint64_t std::wostream::basic_ostream(uint64_t a1)
{
  std::ios_base::ios_base((a1 + 8));
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *a1 = off_5E560;
  *(a1 + 8) = off_5E588;
  return a1;
}

void *std::endl<wchar_t,std::char_traits<wchar_t>>(uint64_t *a1)
{
  v2 = std::wios::widen(a1 + *(*a1 - 24));
  v3 = std::wostream::put(a1, v2);

  return std::wostream::flush(v3);
}

uint64_t *std::__ostream_insert<wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  std::wostream::sentry::sentry(v23, a1);
  if (v23[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 2);
    v8 = v7 - a3;
    if (v7 <= a3)
    {
      if ((*(**(v6 + 29) + 96))(*(v6 + 29), a2, a3) == a3)
      {
LABEL_23:
        *(a1 + *(*a1 - 24) + 16) = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v9 = *(v6 + 6) & 0xB0;
      if (v9 != 32)
      {
        if (v6[228] == 1)
        {
          v10 = *(v6 + 56);
        }

        else
        {
          v10 = std::wios::widen(a1 + *(*a1 - 24));
          *(v6 + 56) = v10;
          v6[228] = 1;
        }

        if (v8 >= 1)
        {
          v11 = v8 + 1;
          while (1)
          {
            v12 = *(a1 + *(*a1 - 24) + 232);
            v13 = v12[5];
            if (v13 >= v12[6])
            {
              v14 = (*(*v12 + 104))(v12, v10);
            }

            else
            {
              *v13 = v10;
              v12[5] = v13 + 1;
              v14 = v10;
            }

            if (v14 == -1)
            {
              break;
            }

            if (--v11 < 2)
            {
              goto LABEL_18;
            }
          }

          std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
        }
      }

LABEL_18:
      v15 = a1 + *(*a1 - 24);
      if (!*(v15 + 8) && (*(**(v15 + 29) + 96))(*(v15 + 29), a2, a3) != a3)
      {
        std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
      }

      if (v9 != 32)
      {
        goto LABEL_23;
      }

      v16 = a1 + *(*a1 - 24);
      if (*(v16 + 8))
      {
        goto LABEL_23;
      }

      if (v16[228] == 1)
      {
        v18 = *(v16 + 56);
      }

      else
      {
        v18 = std::wios::widen(a1 + *(*a1 - 24));
        *(v16 + 56) = v18;
        v16[228] = 1;
      }

      if (v8 < 1)
      {
        goto LABEL_23;
      }

      v19 = v8 + 1;
      while (1)
      {
        v20 = *(a1 + *(*a1 - 24) + 232);
        v21 = v20[5];
        if (v21 >= v20[6])
        {
          v22 = (*(*v20 + 104))(v20, v18);
        }

        else
        {
          *v21 = v18;
          v20[5] = v21 + 1;
          v22 = v18;
        }

        if (v22 == -1)
        {
          break;
        }

        if (--v19 < 2)
        {
          goto LABEL_23;
        }
      }
    }

    std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    goto LABEL_23;
  }

LABEL_24:
  std::wostream::sentry::~sentry(v23);
  return a1;
}

void sub_3025C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x30158);
  }

  __cxa_rethrow();
}

void sub_302A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::wostream::sentry::~sentry(&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::operator<<<wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, __int32 *a2)
{
  if (a2)
  {
    v4 = wcslen(a2);
    std::__ostream_insert<wchar_t,std::char_traits<wchar_t>>(a1, a2, v4);
  }

  else
  {
    std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
  }

  return a1;
}

uint64_t *std::operator<<<wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
    v5 = v4;
    if (v4 >> 62)
    {
      v6 = -1;
    }

    else
    {
      v6 = 4 * v4;
    }

    v7 = operator new[](v6);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v9 = __s[i];
        v7[i] = std::wios::widen(a1 + *(*a1 - 24));
      }
    }

    std::__ostream_insert<wchar_t,std::char_traits<wchar_t>>(a1, v7, v5);
    operator delete[](v7);
  }

  else
  {
    std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
  }

  return a1;
}

void sub_30470(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete[](v1);
  __cxa_rethrow();
}

void *std::operator<<<wchar_t,std::char_traits<wchar_t>>(void *a1, int a2)
{
  v4 = a1 + *(*a1 - 24);
  if ((v4[228] & 1) == 0)
  {
    std::wios::widen(a1 + *(*a1 - 24));
    v4[228] = 1;
  }

  *(v4 + 56) = a2;
  return a1;
}

void *std::operator<<<wchar_t,std::char_traits<wchar_t>>(void *result, int a2)
{
  *(result + *(*result - 24) + 24) |= a2;
  return result;
}

{
  *(result + *(*result - 24) + 24) &= ~a2;
  return result;
}

{
  *(result + *(*result - 24) + 8) = a2;
  return result;
}

{
  *(result + *(*result - 24) + 16) = a2;
  return result;
}

uint64_t *std::operator<<<wchar_t,std::char_traits<wchar_t>>(uint64_t *result, int a2)
{
  v2 = *result;
  if (a2 == 10)
  {
    v3 = 2;
  }

  else
  {
    v3 = 8 * (a2 == 16);
  }

  if (a2 == 8)
  {
    v4 = 64;
  }

  else
  {
    v4 = v3;
  }

  *(result + *(*result - 24) + 24) = *(result + *(*result - 24) + 24) & 0xFFFFFFB5 | v4;
  return result;
}

uint64_t std::stringbuf::basic_stringbuf(uint64_t a1, int a2)
{
  *a1 = off_5EE88;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::locale::locale((a1 + 56));
  *a1 = off_5E608;
  *(a1 + 64) = a2;
  *(a1 + 72) = &unk_60620;
  return a1;
}

{
  *a1 = off_5EE88;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::locale::locale((a1 + 56));
  *a1 = off_5E608;
  *(a1 + 64) = a2;
  *(a1 + 72) = &unk_60620;
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf(uint64_t a1, _BYTE **a2, int a3)
{
  *a1 = off_5EE88;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::locale::locale((a1 + 56));
  *a1 = off_5E608;
  *(a1 + 64) = 0;
  std::string::string((a1 + 72), *a2, *(*a2 - 3));
  *(a1 + 64) = a3;
  v6 = *(a1 + 72);
  if ((a3 & 3) != 0)
  {
    v7 = *(v6 - 24);
  }

  else
  {
    LODWORD(v7) = 0;
  }

  std::stringbuf::_M_sync(a1, v6, 0, v7);
  return a1;
}

void sub_30830(_Unwind_Exception *a1)
{
  v4 = v1[9];
  if ((v4 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((v4 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((v4 - 24));
  }

  *v1 = v2;
  std::locale::~locale((v1 + 7));
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::_M_stringbuf_init(uint64_t a1, int a2)
{
  v2 = a2;
  *(a1 + 64) = a2;
  v3 = *(a1 + 72);
  if ((v2 & 3) != 0)
  {
    v4 = *(v3 - 24);
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return std::stringbuf::_M_sync(a1, v3, 0, v4);
}

void *std::stringbuf::~stringbuf(void *a1)
{
  *a1 = off_5E608;
  v2 = a1[9];
  if ((v2 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((v2 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((v2 - 24));
  }

  *a1 = off_5EE88;
  std::locale::~locale((a1 + 7));
  return a1;
}

void std::stringbuf::~stringbuf(void *a1)
{
  v1 = std::stringbuf::~stringbuf(a1);

  operator delete(v1);
}

void std::stringbuf::str(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
{
  *a2 = &unk_60620;
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 24);
    if (v3 <= v4)
    {
      v6 = std::string::_S_construct<char *>(*(a1 + 32), v4);
    }

    else
    {
      v6 = std::string::_S_construct<char *>(*(a1 + 32), v3);
    }

    std::string::assign(a2, &v6);
    v5 = v6 - 6;
    if (v6 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v6 - 2, 0xFFFFFFFF) <= 0)
    {
      std::string::_Rep::_M_destroy(v5);
    }
  }

  else
  {
    std::string::assign(a2, (a1 + 72));
  }
}

void sub_30A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a11 - 24) != v16 && atomic_fetch_add((a11 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a11 - 24));
  }

  v18 = (*v15 - 24);
  if (v18 != v16 && atomic_fetch_add((*v15 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::str(uint64_t a1, const char **a2)
{
  std::string::assign((a1 + 72), *a2, *(*a2 - 3));
  v3 = *(a1 + 72);
  if ((*(a1 + 64) & 3) != 0)
  {
    v4 = *(v3 - 24);
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return std::stringbuf::_M_sync(a1, v3, 0, v4);
}

uint64_t std::stringbuf::_M_sync(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 64);
  v5 = *(result + 72);
  v6 = a2 + *(v5 - 24);
  v7 = a2 + *(v5 - 16);
  v8 = v6 + a3;
  if (v5 != a2)
  {
    v6 += a3;
    v7 = v8;
  }

  if ((v4 & 8) != 0)
  {
    if (v5 == a2)
    {
      v9 = a3;
    }

    else
    {
      v9 = 0;
    }

    *(result + 8) = a2;
    *(result + 16) = a2 + v9;
    *(result + 24) = v6;
    if ((v4 & 0x10) != 0)
    {
      *(result + 32) = a2;
      *(result + 40) = a2 + a4;
      *(result + 48) = v7;
    }
  }

  else if ((v4 & 0x10) != 0)
  {
    *(result + 40) = a2 + a4;
    *(result + 48) = v7;
    *(result + 8) = v6;
    *(result + 16) = v6;
    *(result + 24) = v6;
    *(result + 32) = a2;
  }

  return result;
}

uint64_t std::stringbuf::showmanyc(uint64_t a1)
{
  if ((*(a1 + 64) & 8) == 0)
  {
    return -1;
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 24);
  if (v2)
  {
    v4 = v2 > v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(a1 + 24) = v2;
    v3 = v2;
  }

  return v3 - *(a1 + 16);
}

uint64_t std::stringbuf::_M_update_egptr(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 && v1 > *(result + 24))
  {
    if ((*(result + 64) & 8) == 0)
    {
      *(result + 8) = v1;
      *(result + 16) = v1;
    }

    *(result + 24) = v1;
  }

  return result;
}

uint64_t std::stringbuf::underflow(uint64_t a1)
{
  if ((*(a1 + 64) & 8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  if (v1 && v1 > v2)
  {
    *(a1 + 24) = v1;
    v2 = v1;
  }

  v4 = *(a1 + 16);
  if (v4 < v2)
  {
    return *v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t std::stringbuf::pbackfail(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (*(a1 + 8) >= v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == -1)
  {
    a2 = 0;
    *(a1 + 16) = v2 - 1;
    return a2;
  }

  v5 = *(v2 - 1);
  v3 = (v2 - 1);
  v4 = v5;
  if (v5 != a2 && (*(a1 + 64) & 0x10) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) = v3;
  if (v4 != a2)
  {
    *v3 = a2;
  }

  return a2;
}

uint64_t std::stringbuf::overflow(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 64) & 0x10) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a2;
  if (a2 == -1)
  {
    return 0;
  }

  v4 = (a1 + 72);
  v5 = *(*(a1 + 72) - 16);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v6 >= v7 && v5 == 0x3FFFFFFFFFFFFFF9)
  {
    return 0xFFFFFFFFLL;
  }

  if (v6 >= v7)
  {
    v10 = 2 * v5;
    if (v10 <= 0x200)
    {
      v10 = 512;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFF9)
    {
      v11 = 0x3FFFFFFFFFFFFFF9;
    }

    else
    {
      v11 = v10;
    }

    v13[0] = &unk_60620;
    std::string::reserve(v13, v11);
    v12 = *(a1 + 32);
    if (v12)
    {
      std::string::assign(v13, v12, *(a1 + 48) - v12);
    }

    std::string::push_back(v13, v2);
    std::string::swap(v4, v13);
    std::stringbuf::_M_sync(a1, *(a1 + 72), *(a1 + 16) - *(a1 + 8), *(a1 + 40) - *(a1 + 32));
    std::stringbuf::overflow(v13);
  }

  else
  {
    *v6 = a2;
  }

  ++*(a1 + 40);
  return v2;
}

void sub_30DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (a9 - 24 != v13 && atomic_fetch_add((a9 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a9 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::setbuf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && (a3 & 0x8000000000000000) == 0)
  {
    std::string::_M_mutate((a1 + 72), 0, *(*(a1 + 72) - 24), 0);
    std::stringbuf::_M_sync(a1, a2, a3, 0);
  }

  return a1;
}

uint64_t std::stringbuf::seekoff@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = -1;
  *(a5 + 8) = 0u;
  v5 = (a5 + 8);
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  v6 = *(result + 64);
  v7 = a4 & 0x10 & v6;
  if ((v6 & 8 & a4) != 0)
  {
    v8 = a3 != 1;
    if (v7)
    {
      v9 = (a4 & 8) == 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    if ((a4 & 0x10) == 0)
    {
      v10 = 1;
      v11 = 8;
      goto LABEL_14;
    }
  }

  else
  {
    v8 = 0;
    v9 = (a4 & 8) == 0 && v7 != 0;
  }

  v10 = 0;
  v11 = 32;
LABEL_14:
  v13 = *(result + v11);
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = a2 == 0;
  }

  if (!v14 || (v9 | v10 | v8) == 0)
  {
    return result;
  }

  v16 = *(result + 40);
  if (v16 && v16 > *(result + 24))
  {
    if ((*(result + 64) & 8) == 0)
    {
      *(result + 8) = v16;
      *(result + 16) = v16;
    }

    *(result + 24) = v16;
  }

  if (a3 == 2)
  {
    a2 += *(result + 24) - v13;
  }

  else if (a3 == 1)
  {
    v17 = a2 - v13;
    a2 = a2 - v13 + *(result + 16);
    v18 = v17 + v16;
    if ((v10 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  v18 = a2;
  if ((v10 & 1) == 0)
  {
LABEL_29:
    if (a2 < 0 || !v8)
    {
      goto LABEL_39;
    }

LABEL_37:
    if (*(result + 24) - v13 >= a2)
    {
      *(result + 16) += (v13 + a2 - *(result + 16));
      *v5 = 0uLL;
      *(a5 + 24) = 0uLL;
      *(a5 + 40) = 0uLL;
      *(a5 + 56) = 0uLL;
      *(a5 + 72) = 0uLL;
      *(a5 + 88) = 0uLL;
      *(a5 + 104) = 0uLL;
      *(a5 + 120) = 0uLL;
      *a5 = a2;
    }

    goto LABEL_39;
  }

LABEL_36:
  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_37;
  }

LABEL_39:
  if (v9)
  {
    if (v18 < 0)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (v18 < 0)
  {
    LOBYTE(v8) = 0;
  }

  if (v8)
  {
LABEL_45:
    if (*(result + 24) - v13 >= v18)
    {
      *(result + 40) = v16 + v13 + v18 - v16;
      *v5 = 0uLL;
      *(a5 + 24) = 0uLL;
      *(a5 + 40) = 0uLL;
      *(a5 + 56) = 0uLL;
      *(a5 + 72) = 0uLL;
      *(a5 + 88) = 0uLL;
      *(a5 + 104) = 0uLL;
      *(a5 + 120) = 0uLL;
      *a5 = v18;
    }
  }

  return result;
}

__n128 std::stringbuf::seekpos@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = -1;
  result.n128_u64[0] = 0;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  v5 = *(a1 + 64) & 8;
  v6 = v5 & a3;
  v7 = *(a1 + 64) & a3;
  v8 = 8;
  if ((v5 & a3) == 0)
  {
    v8 = 32;
  }

  v9 = *(a1 + v8);
  if (v9)
  {
    if ((v7 & 0x18) == 0)
    {
      return result;
    }
  }

  else if (*a2 || (v7 & 0x18) == 0)
  {
    return result;
  }

  v10 = *(a1 + 40);
  if (v10 && v10 > *(a1 + 24))
  {
    if (!v5)
    {
      *(a1 + 8) = v10;
      *(a1 + 16) = v10;
    }

    *(a1 + 24) = v10;
  }

  v11 = *a2;
  if ((*a2 & 0x8000000000000000) == 0 && v11 <= *(a1 + 24) - v9)
  {
    if (v6)
    {
      *(a1 + 16) += (v9 + v11 - *(a1 + 16));
    }

    if ((v7 & 0x10) != 0)
    {
      *(a1 + 40) = v10 + v9 + v11 - v10;
    }

    v12 = *(a2 + 7);
    *(a4 + 96) = *(a2 + 6);
    *(a4 + 112) = v12;
    *(a4 + 128) = a2[16];
    v13 = *(a2 + 3);
    *(a4 + 32) = *(a2 + 2);
    *(a4 + 48) = v13;
    v14 = *(a2 + 5);
    *(a4 + 64) = *(a2 + 4);
    *(a4 + 80) = v14;
    result = *(a2 + 1);
    *a4 = *a2;
    *(a4 + 16) = result;
  }

  return result;
}

uint64_t std::istringstream::basic_istringstream(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = a2[1];
  *a1 = v4;
  *(a1 + *(v4 - 24)) = a2[2];
  *(a1 + 8) = 0;
  v5 = *a2;
  *a1 = *a2;
  *(a1 + *(v5 - 24)) = a2[3];
  *(a1 + 16) = off_5EE88;
  *(a1 + 24) = 0u;
  v6 = a3 | 8;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  std::locale::locale((a1 + 72));
  *(a1 + 16) = off_5E608;
  *(a1 + 80) = v6;
  *(a1 + 88) = &unk_60620;
  std::ios::init(a1 + *(*a1 - 24), a1 + 16);
  return a1;
}

void sub_312C0(_Unwind_Exception *a1)
{
  std::stringbuf::~stringbuf(v3);
  v5 = *(v2 + 8);
  *v1 = v5;
  *(v1 + *(v5 - 24)) = *(v2 + 16);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t std::istringstream::basic_istringstream(uint64_t a1, int a2)
{
  std::ios_base::ios_base((a1 + 96));
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *a1 = off_5E690;
  *(a1 + 8) = 0;
  *(a1 + 96) = off_5E6B8;
  *(a1 + 16) = off_5EE88;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  std::locale::locale((a1 + 72));
  *(a1 + 16) = off_5E608;
  *(a1 + 80) = a2 | 8;
  *(a1 + 88) = &unk_60620;
  std::ios::init(a1 + *(*a1 - 24), a1 + 16);
  return a1;
}

void sub_31470(_Unwind_Exception *a1)
{
  std::stringbuf::~stringbuf(v3);
  v1[12] = off_5EAA0;
  *v1 = off_5EA78;
  v1[1] = 0;
  std::ios_base::~ios_base(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::istringstream::basic_istringstream(uint64_t *a1, uint64_t *a2, _BYTE **a3, int a4)
{
  v5 = a2[1];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[2];
  a1[1] = 0;
  v6 = *a2;
  *a1 = *a2;
  *(a1 + *(v6 - 24)) = a2[3];
  std::stringbuf::basic_stringbuf((a1 + 2), a3, a4 | 8);
  std::ios::init(a1 + *(*a1 - 24), (a1 + 2));
  return a1;
}

void sub_31634(_Unwind_Exception *a1)
{
  std::stringbuf::~stringbuf(v1 + 2);
  v4 = *(v2 + 8);
  *v1 = v4;
  *(v1 + *(v4 - 24)) = *(v2 + 16);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t std::istringstream::basic_istringstream(uint64_t a1, _BYTE **a2, int a3)
{
  std::ios_base::ios_base((a1 + 96));
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *a1 = off_5E690;
  *(a1 + 8) = 0;
  *(a1 + 96) = off_5E6B8;
  std::stringbuf::basic_stringbuf(a1 + 16, a2, a3 | 8);
  std::ios::init(a1 + *(*a1 - 24), a1 + 16);
  return a1;
}

void sub_3178C(_Unwind_Exception *a1)
{
  std::stringbuf::~stringbuf(v1 + 2);
  v1[12] = off_5EAA0;
  *v1 = off_5EA78;
  v1[1] = 0;
  std::ios_base::~ios_base(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::istringstream::~istringstream(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  std::stringbuf::~stringbuf(a1 + 2);
  v5 = a2[1];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[2];
  a1[1] = 0;
  return a1;
}

uint64_t *std::istringstream::~istringstream(uint64_t *a1)
{
  std::ios_base::~ios_base((v2 + 12));
  return a1;
}

void virtual thunk tostd::istringstream::~istringstream(void *a1)
{

  std::ios_base::~ios_base(v1);
}

{
  std::istringstream::~istringstream((a1 + *(*a1 - 24)));
}

void std::istringstream::~istringstream(uint64_t *a1)
{
  std::ios_base::~ios_base((v2 + 12));

  operator delete(a1);
}

uint64_t std::ostringstream::basic_ostringstream(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = a2[1];
  *a1 = v4;
  *(a1 + *(v4 - 24)) = a2[2];
  v5 = *a2;
  *a1 = *a2;
  *(a1 + *(v5 - 24)) = a2[3];
  v6 = a3 | 0x10;
  *(a1 + 8) = off_5EE88;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  std::locale::locale((a1 + 64));
  *(a1 + 8) = off_5E608;
  *(a1 + 72) = v6;
  *(a1 + 80) = &unk_60620;
  std::ios::init(a1 + *(*a1 - 24), a1 + 8);
  return a1;
}