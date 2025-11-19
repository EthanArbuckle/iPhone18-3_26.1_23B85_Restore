void sub_29A3BE5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3BE5D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A3BE600(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A3BE630(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204C830))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A3BE670(uint64_t a1)
{
  if ((*(*a1 + 16))(a1))
  {
    return 1;
  }

  v3 = (*(*a1 + 24))(a1);
  v4 = *(*a1 + 112);
  if (v3)
  {
    v5 = v4(a1, 3);
    return *v5 != v5[1];
  }

  v2 = 1;
  v6 = v4(a1, 1);
  if (*v6 == v6[1])
  {
    v7 = (*(*a1 + 112))(a1, 4);
    if (*v7 == v7[1])
    {
      v8 = (*(*a1 + 112))(a1, 5);
      if (*v8 == v8[1])
      {
        v9 = (*(*a1 + 112))(a1, 2);
        if (*v9 == v9[1])
        {
          v5 = (*(*a1 + 112))(a1, 3);
          return *v5 != v5[1];
        }
      }
    }
  }

  return v2;
}

void sub_29A3BEA74(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A3BEA9C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A3BEACC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204C890))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A3BEB0C(void *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 48))(v2) && (!*a1 || !(*(**a1 + 32))(*a1)))
  {
    return 1;
  }

  v4[0] = "sdf/mapEditProxy.h";
  v4[1] = "_Validate";
  v4[2] = 744;
  v4[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<std::string, std::string>>::_Validate() [T = std::map<std::string, std::string>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<std::map<std::string, std::string>>]";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Editing an invalid map proxy");
  return 0;
}

uint64_t sub_29A3BEBDC(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 24))(&v11);
  }

  else
  {
    v11 = 0;
  }

  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v11) & 1) != 0 || (v3 = sub_29A1E045C(&v11), (pxrInternal__aapl__pxrReserved__::SdfSpec::PermissionToEdit(v3)))
  {
    v4 = 1;
  }

  else
  {
    v9[0] = "sdf/mapEditProxy.h";
    v9[1] = "_ValidateErase";
    v9[2] = 1002;
    v9[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<std::string, std::string>>::_ValidateErase(const key_type &) [T = std::map<std::string, std::string>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<std::map<std::string, std::string>>]";
    v10 = 0;
    if (*a1)
    {
      (*(**a1 + 16))(__p);
      if (v8 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v5 = __p;
      v8 = 0;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Can't erase value from %s: Permission denied.", v5);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }

    v4 = 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v11);
  return v4;
}

uint64_t sub_29A3BED44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_29A3BEB0C(a1);
  if (!result)
  {
    goto LABEL_9;
  }

  if (*a1)
  {
    (*(**a1 + 24))(&v10);
  }

  else
  {
    v10 = 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v10);
  result = sub_29A3BEE50(a1);
  if (result)
  {
    v7 = (*(**a1 + 72))(*a1, a2);
    v9 = v8;
    result = *a1;
    if (*a1)
    {
      result = (*(*result + 48))(result);
    }

    *a3 = a1;
    *(a3 + 8) = result;
    *(a3 + 16) = v7;
    *(a3 + 24) = v9;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 24) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

BOOL sub_29A3BEE50(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 24))(&v28);
  }

  else
  {
    v28 = 0;
  }

  if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v28) & 1) == 0)
  {
    v3 = sub_29A1E045C(&v28);
    if ((pxrInternal__aapl__pxrReserved__::SdfSpec::PermissionToEdit(v3) & 1) == 0)
    {
      v23 = "sdf/mapEditProxy.h";
      v24 = "_ValidateInsert";
      v25 = 963;
      v26 = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<std::string, std::string>>::_ValidateInsert(const value_type &) [T = std::map<std::string, std::string>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<std::map<std::string, std::string>>]";
      v27 = 0;
      if (*a1)
      {
        (*(**a1 + 16))(v20);
        if (v21 >= 0)
        {
          v9 = v20;
        }

        else
        {
          v9 = v20[0];
        }
      }

      else
      {
        v20[0] = 0;
        v20[1] = 0;
        v9 = v20;
        v21 = 0;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Can't insert value in %s: Permission denied.", v9);
LABEL_28:
      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }

LABEL_30:
      v6 = 0;
      goto LABEL_31;
    }
  }

  (*(**a1 + 88))(v20);
  if (v22)
  {
    v23 = "sdf/mapEditProxy.h";
    v24 = "_ValidateInsert";
    v25 = 973;
    v26 = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<std::string, std::string>>::_ValidateInsert(const value_type &) [T = std::map<std::string, std::string>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<std::map<std::string, std::string>>]";
    v27 = 0;
    if (*a1)
    {
      (*(**a1 + 16))(&__p);
      v4 = __p;
      v5 = v19 < 0;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      __p = 0;
      v18 = 0;
      v19 = 0;
    }

    WhyNot = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(v20);
    p_p = &__p;
    if (v5)
    {
      p_p = v4;
    }

    if (*(WhyNot + 23) >= 0)
    {
      v12 = WhyNot;
    }

    else
    {
      v12 = *WhyNot;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Can't insert key in %s: %s", p_p, v12);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    if (v22 != 1)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  (*(**a1 + 96))(v20);
  v6 = v22 == 0;
  if (v22)
  {
    v23 = "sdf/mapEditProxy.h";
    v24 = "_ValidateInsert";
    v25 = 983;
    v26 = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<std::string, std::string>>::_ValidateInsert(const value_type &) [T = std::map<std::string, std::string>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<std::map<std::string, std::string>>]";
    v27 = 0;
    if (*a1)
    {
      (*(**a1 + 16))(&__p);
      v7 = __p;
      v8 = v19 < 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      __p = 0;
      v18 = 0;
      v19 = 0;
    }

    v14 = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(v20);
    v15 = &__p;
    if (v8)
    {
      v15 = v7;
    }

    if (*(v14 + 23) >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = *v14;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Can't insert value in %s: %s", v15, v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    if ((v22 & 1) != 0 && SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }
  }

LABEL_31:
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v28);
  return v6;
}

void sub_29A3BF1C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a24 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v24 - 40));
  _Unwind_Resume(a1);
}

BOOL sub_29A3BF22C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 == *a2 && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  if (v3)
  {
    v5 = *(a1 + 16);
    v6 = *v3;
    if (*v3)
    {
      v6 = (*(*v6 + 48))(v6);
    }

    if (v5 != v6 + 8)
    {
      return 0;
    }

    v4 = *a2;
  }

  if (!v4)
  {
    return 1;
  }

  v8 = *(a2 + 16);
  v9 = *v4;
  if (*v4)
  {
    v9 = (*(*v9 + 48))(v9);
  }

  return v8 == v9 + 8;
}

uint64_t sub_29A3BF300(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = sub_29A3BEB0C(a1);
  if (result)
  {
    if (*a1)
    {
      (*(**a1 + 24))(&v8);
    }

    else
    {
      v8 = 0;
    }

    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v8);
    result = sub_29A3BF3CC(a1);
    if (result)
    {
      return (*(**a1 + 64))(*a1, *a3 + 32, a4);
    }
  }

  return result;
}

BOOL sub_29A3BF3CC(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 24))(&v22);
  }

  else
  {
    v22 = 0;
  }

  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v22) & 1) != 0 || (v3 = sub_29A1E045C(&v22), (pxrInternal__aapl__pxrReserved__::SdfSpec::PermissionToEdit(v3)))
  {
    (*(**a1 + 96))(v14);
    v4 = v16 == 0;
    if (v16)
    {
      v17 = "sdf/mapEditProxy.h";
      v18 = "_ValidateSet";
      v19 = 935;
      v20 = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<std::string, std::string>>::_ValidateSet(const key_type &, const mapped_type &) [T = std::map<std::string, std::string>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<std::map<std::string, std::string>>]";
      v21 = 0;
      if (*a1)
      {
        (*(**a1 + 16))(__p);
        v5 = __p[0];
        v6 = v13 < 0;
      }

      else
      {
        v5 = 0;
        v6 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v13 = 0;
      }

      WhyNot = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(v14);
      v9 = __p;
      if (v6)
      {
        v9 = v5;
      }

      if (*(WhyNot + 23) >= 0)
      {
        v10 = WhyNot;
      }

      else
      {
        v10 = *WhyNot;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 1, "Can't set value in %s: %s", v9, v10);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }

      if ((v16 & 1) != 0 && SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }
    }
  }

  else
  {
    v17 = "sdf/mapEditProxy.h";
    v18 = "_ValidateSet";
    v19 = 925;
    v20 = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<std::string, std::string>>::_ValidateSet(const key_type &, const mapped_type &) [T = std::map<std::string, std::string>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<std::map<std::string, std::string>>]";
    v21 = 0;
    if (*a1)
    {
      (*(**a1 + 16))(v14);
      if (v15 >= 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v14[0];
      }
    }

    else
    {
      v14[0] = 0;
      v14[1] = 0;
      v7 = v14;
      v15 = 0;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 1, "Can't set value in %s: Permission denied.", v7);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    v4 = 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v22);
  return v4;
}

void sub_29A3BF744(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A3BF76C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A3BF79C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204C8F0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A3BF7DC(uint64_t *a1, void *a2)
{
  if (sub_29A3BFAA8(a1))
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = *a2;
    v23 = a2 + 1;
    v24 = v25;
    while (v22 != v23)
    {
      if (*a1)
      {
        (*(**a1 + 24))(v16);
      }

      else
      {
        v16[0] = 0;
      }

      v6 = sub_29A3BFB78(&v22, v4, v5);
      pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy::CanonicalizePair(v16, v6, &v18);
      pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v16);
      sub_29A384C04(&v24, &v18, &v18);
      if ((v7 & 1) == 0)
      {
        v16[0] = "sdf/mapEditProxy.h";
        v16[1] = "_Copy";
        v16[2] = 875;
        v16[3] = "void pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy>::_Copy(const Type &) [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy]";
        v17 = 0;
        if (*a1)
        {
          (*(**a1 + 16))(v14);
          v8 = v14[0];
          v9 = v15 < 0;
        }

        else
        {
          v8 = 0;
          v9 = 0;
          v14[0] = 0;
          v14[1] = 0;
          v15 = 0;
        }

        sub_29A1E3D18(&v18);
        v10 = v14;
        if (v9)
        {
          v10 = v8;
        }

        if (v13 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "Can't copy to %s: Duplicate key '%s' exists in map.", v10, p_p);
        if (v13 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
        sub_29A1DE3A4(&v20);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
        sub_29A1DE3A4(&v18);
        goto LABEL_24;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
      sub_29A1DE3A4(&v20);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
      sub_29A1DE3A4(&v18);
      sub_29A1FA50C(&v22);
    }

    if (sub_29A3BFC50(a1, &v24))
    {
      (*(**a1 + 56))(*a1, &v24);
    }

LABEL_24:
    sub_29A1EF938(&v24, v25[0]);
  }
}

void sub_29A3BFA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  sub_29A3BFBFC((v23 - 88));
  sub_29A1EF938(v23 - 56, *(v23 - 48));
  _Unwind_Resume(a1);
}

uint64_t sub_29A3BFAA8(void *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 48))(v2) && (!*a1 || !(*(**a1 + 32))(*a1)))
  {
    return 1;
  }

  v4[0] = "sdf/mapEditProxy.h";
  v4[1] = "_Validate";
  v4[2] = 744;
  v4[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy>::_Validate() [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy]";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Editing an invalid map proxy");
  return 0;
}

uint64_t sub_29A3BFB78(void *a1, uint64_t a2, char *a3)
{
  if (*a1 == a1[1])
  {
    v11 = v4;
    v12 = v3;
    v13 = v5;
    v14 = v6;
    v8[0] = "tf/iterator.h";
    v8[1] = "operator*";
    v8[2] = 254;
    v8[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>>::operator*() [T = const std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, Reverse = false]";
    v9 = 0;
    v10 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v8, "iterator exhausted", a3);
  }

  return *a1 + 28;
}

_DWORD *sub_29A3BFBFC(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

BOOL sub_29A3BFC50(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    (*(*v4 + 24))(&v18);
  }

  else
  {
    v18 = 0;
  }

  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v18) & 1) != 0 || (v7 = sub_29A1E045C(&v18), (pxrInternal__aapl__pxrReserved__::SdfSpec::PermissionToEdit(v7)))
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
      v14 = (a2 + 8);
      while (1)
      {
        v8 = v13 == v14;
        if (v13 == v14)
        {
          break;
        }

        sub_29A3BFB78(&v13, v5, v6);
        if (!sub_29A3BFE04(a1))
        {
          break;
        }

        sub_29A1FA50C(&v13);
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v13 = "sdf/mapEditProxy.h";
    v14 = "_ValidateCopy";
    v15 = 891;
    v16 = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy>::_ValidateCopy(const Type &) [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy]";
    v17 = 0;
    if (*a1)
    {
      (*(**a1 + 16))(__p);
      if (v12 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v9 = __p;
      v12 = 0;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v13, 1, "Can't copy to %s: Permission denied.", v9);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v18);
  return v8;
}

BOOL sub_29A3BFE04(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 24))(&v28);
  }

  else
  {
    v28 = 0;
  }

  if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v28) & 1) == 0)
  {
    v3 = sub_29A1E045C(&v28);
    if ((pxrInternal__aapl__pxrReserved__::SdfSpec::PermissionToEdit(v3) & 1) == 0)
    {
      v23 = "sdf/mapEditProxy.h";
      v24 = "_ValidateInsert";
      v25 = 963;
      v26 = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy>::_ValidateInsert(const value_type &) [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy]";
      v27 = 0;
      if (*a1)
      {
        (*(**a1 + 16))(v20);
        if (v21 >= 0)
        {
          v9 = v20;
        }

        else
        {
          v9 = v20[0];
        }
      }

      else
      {
        v20[0] = 0;
        v20[1] = 0;
        v9 = v20;
        v21 = 0;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Can't insert value in %s: Permission denied.", v9);
LABEL_28:
      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }

LABEL_30:
      v6 = 0;
      goto LABEL_31;
    }
  }

  (*(**a1 + 88))(v20);
  if (v22)
  {
    v23 = "sdf/mapEditProxy.h";
    v24 = "_ValidateInsert";
    v25 = 973;
    v26 = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy>::_ValidateInsert(const value_type &) [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy]";
    v27 = 0;
    if (*a1)
    {
      (*(**a1 + 16))(&__p);
      v4 = __p;
      v5 = v19 < 0;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      __p = 0;
      v18 = 0;
      v19 = 0;
    }

    WhyNot = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(v20);
    p_p = &__p;
    if (v5)
    {
      p_p = v4;
    }

    if (*(WhyNot + 23) >= 0)
    {
      v12 = WhyNot;
    }

    else
    {
      v12 = *WhyNot;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Can't insert key in %s: %s", p_p, v12);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    if (v22 != 1)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  (*(**a1 + 96))(v20);
  v6 = v22 == 0;
  if (v22)
  {
    v23 = "sdf/mapEditProxy.h";
    v24 = "_ValidateInsert";
    v25 = 983;
    v26 = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy>::_ValidateInsert(const value_type &) [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy]";
    v27 = 0;
    if (*a1)
    {
      (*(**a1 + 16))(&__p);
      v7 = __p;
      v8 = v19 < 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      __p = 0;
      v18 = 0;
      v19 = 0;
    }

    v14 = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(v20);
    v15 = &__p;
    if (v8)
    {
      v15 = v7;
    }

    if (*(v14 + 23) >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = *v14;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Can't insert value in %s: %s", v15, v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    if ((v22 & 1) != 0 && SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }
  }

LABEL_31:
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v28);
  return v6;
}

void sub_29A3C0174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a24 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v24 - 40));
  _Unwind_Resume(a1);
}

_DWORD *sub_29A3C01E0(uint64_t a1)
{
  v2 = (a1 + 16);

  return sub_29A1DE3A4(v2);
}

uint64_t *sub_29A3C01F8()
{
  v1 = nullsub_252;
  var8.__vftable = &unk_2A204A980;
  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204A990, &var8, &v1, 1, 8, 0, 0);
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetName(pxrInternal__aapl__pxrReserved__::SdfPropertySpec *this)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v3);
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v4);
  sub_29A1DE3A4(&v3);
  return Name;
}

void sub_29A3C02BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetNameToken@<X0>(pxrInternal__aapl__pxrReserved__::SdfPropertySpec *this@<X0>, atomic_uint **a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v7);
  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v7);
  v4 = *NameToken;
  *a2 = *NameToken;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v5;
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  return sub_29A1DE3A4(&v7);
}

void sub_29A3C0344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A3C03F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetOwner(pxrInternal__aapl__pxrReserved__::SdfPropertySpec *this)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, v2);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v2, &v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2 + 1);
  sub_29A1DE3A4(v2);
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(&v3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v3, v2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, v2);
  sub_29A1DA6E4(v2);
}

void sub_29A3C0594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetDisplayGroup@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v8);
  if (!v9 || (sub_29A1EFC10(v8) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A1EFC48(v8);
  if (*(v5 + 23) < 0)
  {
    sub_29A008D14(a2, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    *(a2 + 16) = v5[2];
    *a2 = v6;
  }

  return sub_29A186B14(v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetDisplayGroup(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A3BBDB0(a1, (v4 + 104), a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetDisplayName@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v8);
  if (!v9 || (sub_29A1EFC10(v8) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A1EFC48(v8);
  if (*(v5 + 23) < 0)
  {
    sub_29A008D14(a2, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    *(a2 + 16) = v5[2];
    *a2 = v6;
  }

  return sub_29A186B14(v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetDisplayName(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A3BBDB0(a1, (v4 + 120), a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetDocumentation@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v8);
  if (!v9 || (sub_29A1EFC10(v8) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A1EFC48(v8);
  if (*(v5 + 23) < 0)
  {
    sub_29A008D14(a2, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    *(a2 + 16) = v5[2];
    *a2 = v6;
  }

  return sub_29A186B14(v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetDocumentation(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A3BBDB0(a1, (v4 + 136), a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetHidden(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v5);
  if (!v6 || (sub_29A1EFCDC(v5) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v3 = *sub_29A1EFD10(v5);
  sub_29A186B14(v5);
  return v3;
}

void sub_29A3C0BE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetHidden(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, char a2)
{
  v5 = a2;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A2F0400(this, (v3 + 176), &v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetPrefix@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v8);
  if (!v9 || (sub_29A1EFC10(v8) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A1EFC48(v8);
  if (*(v5 + 23) < 0)
  {
    sub_29A008D14(a2, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    *(a2 + 16) = v5[2];
    *a2 = v6;
  }

  return sub_29A186B14(v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetPrefix(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A3BBDB0(a1, (v4 + 264), a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetSuffix@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v8);
  if (!v9 || (sub_29A1EFC10(v8) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A1EFC48(v8);
  if (*(v5 + 23) < 0)
  {
    sub_29A008D14(a2, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    *(a2 + 16) = v5[2];
    *a2 = v6;
  }

  return sub_29A186B14(v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetSuffix(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A3BBDB0(a1, (v4 + 392), a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetSymmetricPeer@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v8);
  if (!v9 || (sub_29A1EFC10(v8) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A1EFC48(v8);
  if (*(v5 + 23) < 0)
  {
    sub_29A008D14(a2, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    *(a2 + 16) = v5[2];
    *a2 = v6;
  }

  return sub_29A186B14(v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetSymmetricPeer(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A3BBDB0(a1, (v4 + 408), a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetSymmetryFunction@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v9);
  if (!v10 || (sub_29A1FA710(v9) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A27A0F8(v9);
  v6 = *v5;
  *a2 = *v5;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v7;
    }
  }

  return sub_29A186B14(v9);
}

void sub_29A3C126C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetSymmetryFunction(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A2F0494(this, (v4 + 432), a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetPermission(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v5);
  if (!v6 || (sub_29A3B7E90(v5) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v3 = *sub_29A3B7F1C(v5);
  sub_29A186B14(v5);
  return v3;
}

void sub_29A3C13D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetPermission(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, int a2)
{
  v5 = a2;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A3BBF44(a1, (v3 + 256), &v5);
}

void pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetCustomData(atomic_uint **this)
{
  sub_29A3B80B0(this, &v2);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A3BBFD8();
}

void sub_29A3C14B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetCustomData(atomic_uint **a1)
{
  sub_29A3B80B0(a1, v2);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A3BBFD8();
}

void sub_29A3C157C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetSymmetryArguments(atomic_uint **this)
{
  sub_29A3B80B0(this, &v2);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A3BBFD8();
}

void sub_29A3C1610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetSymmetryArgument(atomic_uint **a1)
{
  sub_29A3B80B0(a1, v2);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A3BBFD8();
}

void sub_29A3C16D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetAssetInfo(atomic_uint **this)
{
  sub_29A3B80B0(this, &v2);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A3BBFD8();
}

void sub_29A3C1768(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetAssetInfo(atomic_uint **a1)
{
  sub_29A3B80B0(a1, v2);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A3BBFD8();
}

void sub_29A3C182C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetDefaultValue@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, void *a2@<X8>)
{
  v6[2] = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v6);
  if (!v6[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  sub_29A186EF4(a2, v6);
  return sub_29A186B14(v6);
}

void sub_29A3C1944(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity *pxrInternal__aapl__pxrReserved__::SdfPropertySpec::HasDefaultValue(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfSpec::HasField(this, (v2 + 88));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::ClearDefaultValue(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfSpec::ClearField(this, (v2 + 88));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::IsCustom(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v5);
  if (!v6 || (sub_29A1EFCDC(v5) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v3 = *sub_29A1EFD10(v5);
  sub_29A186B14(v5);
  return v3;
}

void sub_29A3C1AFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetCustom(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, char a2)
{
  v5 = a2;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A2F0400(this, (v3 + 64), &v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetComment@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v8);
  if (!v9 || (sub_29A1EFC10(v8) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A1EFC48(v8);
  if (*(v5 + 23) < 0)
  {
    sub_29A008D14(a2, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    *(a2 + 16) = v5[2];
    *a2 = v6;
  }

  return sub_29A186B14(v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetComment(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A3BBDB0(a1, (v4 + 48), a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetVariability(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v5);
  if (!v6 || (sub_29A27CE24(v5) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v3 = *sub_29A27A18C(v5);
  sub_29A186B14(v5);
  return v3;
}

void sub_29A3C1E08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetDefaultValue(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, const pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v38 = *MEMORY[0x29EDCA608];
  if (*(a2 + 1))
  {
    v3 = a2;
    ValueType = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetValueType(this);
    pxrInternal__aapl__pxrReserved__::TfType::TfType(&v33);
    if (ValueType == v33)
    {
      if (!sub_29A2F1FA8(v3))
      {
        v33 = "sdf/propertySpec.cpp";
        v34 = "SetDefaultValue";
        v35 = 163;
        v36 = "BOOL pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetDefaultValue(const VtValue &)";
        v37 = 0;
        pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, __p);
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(__p);
        TypeName = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetTypeName(this);
        pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&TypeName, &v31);
        v18 = v31 & 0xFFFFFFFFFFFFFFF8;
        if ((v31 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v19 = (v18 + 16);
          if (*(v18 + 39) < 0)
          {
            v19 = *v19;
          }
        }

        else
        {
          v19 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 1, "Can't set value on attribute <%s> with unknown type %s", Text, v19);
        if ((v31 & 7) != 0)
        {
          atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(__p + 1);
        v23 = __p;
        goto LABEL_51;
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v12)
      {
        v12 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      return pxrInternal__aapl__pxrReserved__::SdfSpec::SetField(this, (v12 + 88), v3);
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A1741BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741BA0))
      {
        qword_2A1741B98 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2047358, v26);
        __cxa_guard_release(&qword_2A1741BA0);
      }

      if (ValueType == qword_2A1741B98)
      {
        v33 = "sdf/propertySpec.cpp";
        v34 = "SetDefaultValue";
        v35 = 171;
        v36 = "BOOL pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetDefaultValue(const VtValue &)";
        v37 = 0;
        pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v31);
        v14 = __p;
        pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(&v31, __p);
        if (v29 < 0)
        {
          v14 = __p[0];
        }

        v27 = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetTypeName(this);
        pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v27, &TypeName);
        v15 = TypeName & 0xFFFFFFFFFFFFFFF8;
        if ((TypeName & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v16 = (v15 + 16);
          if (*(v15 + 39) < 0)
          {
            v16 = *v16;
          }
        }

        else
        {
          v16 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 1, "Can't set value on <%s>: %s-typed attributes cannot have an authored default value", v14, v16);
        if ((TypeName & 7) != 0)
        {
          atomic_fetch_add_explicit((TypeName & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v31 + 1);
        goto LABEL_46;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::TfType::GetTypeid(&ValueType);
      if (!sub_29A00E9CC(Typeid, MEMORY[0x29EDC9500]) && !pxrInternal__aapl__pxrReserved__::TfType::IsEnumType(&ValueType))
      {
        v21 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeid(&ValueType);
        pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeid(v3, v21, &v33);
        if (v34)
        {
          if (sub_29A1FD484(&v33))
          {
            v22 = (v34 & 4) != 0 ? (*((v34 & 0xFFFFFFFFFFFFFFF8) + 168))(&v33) : v33;
            if (!pxrInternal__aapl__pxrReserved__::SdfPathExpression::IsAbsolute(v22))
            {
              __p[0] = this;
              sub_29A3C271C(&v33, __p);
            }
          }

          if (sub_29A1FD578(&v33))
          {
            pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v31);
            pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v31, __p);
            sub_29A1DCEA8(&v31);
            v31 = __p;
            sub_29A3C29F4(&v33);
            sub_29A1DCEA8(__p);
          }

          v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          if (!v25)
          {
            v25 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          }

          v3 = &v33;
        }

        else
        {
          if (!sub_29A2F1FA8(v3))
          {
            sub_29A186B14(&v33);
            goto LABEL_8;
          }

          v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          if (!v25)
          {
            v25 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          }
        }

        v11 = pxrInternal__aapl__pxrReserved__::SdfSpec::SetField(this, (v25 + 88), v3);
        sub_29A186B14(&v33);
        return v11;
      }

      Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(v3, v5);
      if (ValueType != Type)
      {
LABEL_8:
        v33 = "sdf/propertySpec.cpp";
        v34 = "SetDefaultValue";
        v35 = 232;
        v36 = "BOOL pxrInternal__aapl__pxrReserved__::SdfPropertySpec::SetDefaultValue(const VtValue &)";
        v37 = 0;
        pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v31);
        v7 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v31);
        sub_29A1F87E8(v3);
        v8 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&ValueType);
        v9 = __p;
        if (v29 < 0)
        {
          v9 = __p[0];
        }

        if (*(v8 + 23) >= 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *v8;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 1, "Can't set value on <%s> to %s: expected a value of type %s", v7, v9, v10);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v31 + 1);
LABEL_46:
        v23 = &v31;
LABEL_51:
        sub_29A1DE3A4(v23);
        return 0;
      }

      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v20)
      {
        v20 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      return pxrInternal__aapl__pxrReserved__::SdfSpec::SetField(this, (v20 + 88), v3);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::SdfPropertySpec::ClearDefaultValue(this);
    return 1;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetValueType(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  SpecType = pxrInternal__aapl__pxrReserved__::SdfSpec::GetSpecType(this);
  if (SpecType == 8)
  {
    if ((atomic_load_explicit(&qword_2A1741BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741BB0))
    {
      qword_2A1741BA8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20471A0, v5);
      __cxa_guard_release(&qword_2A1741BB0);
    }

    return qword_2A1741BA8;
  }

  else
  {
    if (SpecType == 1)
    {
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
    }

    v6[0] = "sdf/propertySpec.cpp";
    v6[1] = "GetValueType";
    v6[2] = 256;
    v6[3] = "TfType pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetValueType() const";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v8);
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v8);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Unrecognized subclass of SdfPropertySpec on <%s>", Text);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8 + 1);
    sub_29A1DE3A4(&v8);
    pxrInternal__aapl__pxrReserved__::TfType::TfType(&v9);
  }

  return v9;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetTypeName(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  SpecType = pxrInternal__aapl__pxrReserved__::SdfSpec::GetSpecType(this);
  if (SpecType != 8)
  {
    if (SpecType == 1)
    {
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
    }

    v7[0] = "sdf/propertySpec.cpp";
    v7[1] = "GetTypeName";
    v7[2] = 274;
    v7[3] = "SdfValueTypeName pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetTypeName() const";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v5);
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v5);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Unrecognized subclass of SdfPropertySpec on <%s>", Text);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
    sub_29A1DE3A4(&v5);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v9);
  return v9;
}

void sub_29A3C26E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3C271C(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfSpec **a2)
{
  v3 = sub_29A27C84C(a1);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[9] = 0;
  v3[10] = 0;
  v3[11] = 0;
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(*a2, &v4);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v4, &v5);
  sub_29A27C888();
}

void sub_29A3C29C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, int a23)
{
  sub_29A1DCEA8(&a23);
  sub_29A1DCEA8(&a21);
  sub_29A2174F4(&a9);
  _Unwind_Resume(a1);
}

void sub_29A3C29F4(uint64_t *a1)
{
  v1 = sub_29A27C928(a1);
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  v7 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_29A219950(&v5);
  v3 = v7;
  sub_29A219950(&v5);
  if (v3 != v7 + 96 * v5)
  {
    sub_29A27C888();
  }

  if (v1 != &v5)
  {
    sub_29A219394(v1);
    v4 = v6;
    *v1 = v5;
    *(v1 + 16) = v4;
    v5 = 0u;
    v6 = 0u;
    *(v1 + 32) = v7;
    v7 = 0;
  }

  sub_29A219394(&v5);
}

uint64_t sub_29A3C2BBC@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, v9);
  if (!v10 || (sub_29A1FA710(v9) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(a1);
  }

  v5 = sub_29A27A0F8(v9);
  v6 = *v5;
  *a2 = *v5;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v7;
    }
  }

  return sub_29A186B14(v9);
}

void sub_29A3C2CCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3C2D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy::CanonicalizeType@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1) || (result = sub_29B29D69C(), (result & 1) != 0))
  {
    v6 = sub_29A1E045C(a1);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v6, &v13);
    *(a3 + 16) = 0;
    *(a3 + 8) = 0;
    *a3 = a3 + 8;
    v12[0] = *a2;
    v12[1] = a2 + 1;
    if (v12[0] != a2 + 1)
    {
      v7 = sub_29A1FA4D4(v12);
      pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath((*v7 + 36), &v13, &v11);
      v8 = sub_29A1FA4D4(v12);
      pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath((*v8 + 28), &v13, &v10);
      v15 = &v10;
      sub_29A1EF770(a3, &v10, &unk_29B4D6118, &v15);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    return sub_29A1DE3A4(&v13);
  }

  return result;
}

void sub_29A3C2F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13, int a14)
{
  sub_29A1DCEA8(&a9);
  sub_29A1DCEA8(&a11);
  sub_29A1EF938(v14, *(v14 + 8));
  sub_29A1DCEA8(&a14);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy::CanonicalizeKey@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, int *a3@<X8>)
{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1) || (result = sub_29B29D708(), (result & 1) != 0))
  {
    v6 = sub_29A1E045C(a1);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v6, &v8);
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(a2, &v8, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
    return sub_29A1DE3A4(&v8);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy::CanonicalizeValue@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, int *a3@<X8>)
{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1) || (result = sub_29B29D780(), (result & 1) != 0))
  {
    v6 = sub_29A1E045C(a1);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v6, &v8);
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(a2, &v8, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
    return sub_29A1DE3A4(&v8);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy::CanonicalizePair@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1) || (result = sub_29B29D7F8(), (result & 1) != 0))
  {
    v6 = sub_29A1E045C(a1);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v6, &v12);
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(a2, &v12, &v10);
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath((a2 + 8), &v12, &v8);
    sub_29A393914(a3, &v10, &v8);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
    sub_29A1DE3A4(&v8);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    sub_29A1DE3A4(&v10);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
    return sub_29A1DE3A4(&v12);
  }

  return result;
}

void sub_29A3C319C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfAttributeViewPredicate::SdfAttributeViewPredicate(_DWORD *this)
{
  *this = 1;
  return this;
}

{
  *this = 1;
  return this;
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfRelationshipViewPredicate::SdfRelationshipViewPredicate(_DWORD *this)
{
  *this = 8;
  return this;
}

{
  *this = 8;
  return this;
}

void sub_29A3C3208()
{
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204C900, 0, 0, 0, 16, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204C910, 0, 0, 0, 16, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204C920, 0, 0, 0, 16, 0, 0);
  v0 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204C930, 0, 0, 0, 16, 0, 0);
  v1 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v0);
  sub_29A008E78(__p, "SdfInheritsProxy");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v0, v1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204C940, 0, 0, 0, 16, 0, 0);
  v3 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v2);
  sub_29A008E78(__p, "SdfReferencesProxy");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v2, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204C950, 0, 0, 0, 16, 0, 0);
  v5 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v4);
  sub_29A008E78(__p, "SdfPayloadsProxy");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v4, v5, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A3C33B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfGetPathEditorProxy(atomic_uint **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_29A3C3598(a1, a2, &v5);
  v4 = v6;
  *a3 = v5;
  a3[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::SdfGetNameOrderProxy(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    *a3 = 0;
    *(a3 + 8) = 0;
LABEL_6:
    *(a3 + 16) = 3;
    return;
  }

  v6 = operator new(0x48uLL);
  sub_29A3C715C(v6, a1, a2, 3);
  sub_29A3C8710(&v9, v6);
  v7 = v10;
  *a3 = v9;
  *(a3 + 8) = v7;
  if (!v7)
  {
    goto LABEL_6;
  }

  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = v10;
  *(a3 + 16) = 3;
  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29A3C3598(atomic_uint **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v6)
  {
    v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if ((*(v6 + 55) ^ *a2) > 7)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v10)
    {
      v10 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v11 = *(v10 + 7) ^ *a2;
    v12 = operator new(0xB8uLL);
    v13 = v12;
    if (v11 > 7)
    {
      v15 = *a1;
      v16 = v15;
      if (v15)
      {
        atomic_fetch_add(v15, 1u);
      }

      sub_29A1E1A7C(v12, a1, a2, &v16);
    }

    v14 = *a1;
    v16 = v14;
    if (v14)
    {
      atomic_fetch_add(v14, 1u);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionListEditor::Sdf_AttributeConnectionListEditor(v12, a1, &v16);
    sub_29A3C383C(a3, v13);
  }

  else
  {
    v7 = operator new(0xB8uLL);
    v8 = v7;
    v9 = *a1;
    v16 = v9;
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetListEditor::Sdf_RelationshipTargetListEditor(v7, a1, &v16);
    sub_29A3C3730(a3, v8);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v16);
}

void sub_29A3C36F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void *sub_29A3C3730(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204C970;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A3C3788(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B29D87C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3C37A4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A3C37CC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A3C37FC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204C9C0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A3C383C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204C9E8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A3C3894(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B29D87C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3C38B0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A3C38D8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A3C3908(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204CA38))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A3C3948(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204CA60;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A3C39A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B29D87C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3C39BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A3C39E4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A3C3A14(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204CAB0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A3C3D0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A246038(va);
  sub_29A246038(v3);
  sub_29A3C3E6C(v2);
  _Unwind_Resume(a1);
}

void *sub_29A3C3D48(void *result, atomic_uint **a2, uint64_t *a3)
{
  v3 = *a2;
  *result = &unk_2A204CB88;
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  v4 = *a3;
  result[2] = *a3;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t sub_29A3C3DA4@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, &v6);
  if (v7 && (sub_29A1EF0BC(&v6) & 1) != 0)
  {
    if ((v7 & 4) != 0)
    {
      a2 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(&v6);
    }

    else
    {
      a2 = v6;
    }
  }

  sub_29A2481A4(a3, a2);
  return sub_29A186B14(&v6);
}

void *sub_29A3C3E6C(void *a1)
{
  *a1 = &unk_2A204CB88;
  v2 = a1[2];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 1));
  return a1;
}

void sub_29A3C3ED0(uint64_t a1)
{
  v1 = sub_29A3C4868(a1);

  operator delete(v1);
}

uint64_t sub_29A3C3EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((a1 + 8)))
  {
    v4 = "List editor is expired";
  }

  else
  {
    v5 = sub_29A1E045C((a1 + 8));
    result = pxrInternal__aapl__pxrReserved__::SdfSpec::PermissionToEdit(v5);
    if (result)
    {
      *a2 = 0;
      *(a2 + 24) = 0;
      return result;
    }

    v4 = "Permission denied";
  }

  result = sub_29A008E78(a2, v4);
  *(a2 + 24) = 1;
  return result;
}

BOOL sub_29A3C3F68(uint64_t a1, void *lpsrc)
{
  v3 = __dynamic_cast(lpsrc, &unk_2A204CB50, &unk_2A204CB60, 0);
  if (v3)
  {
    sub_29A3C494C(a1);
  }

  else
  {
    v5[0] = "sdf/listOpListEditor.h";
    v5[1] = "CopyEdits";
    v5[2] = 204;
    v5[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::Sdf_ListOpListEditor<pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy>::CopyEdits(const Sdf_ListEditor<TP> &) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Could not copy from list editor of different type");
  }

  return v3 != 0;
}

void sub_29A3C41B8(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x29EDCA608];
  sub_29A2481A4(&v4, a1 + 32);
  v5[0] = &unk_2A204CC10;
  v5[1] = a1;
  v5[2] = a2;
  v5[3] = v5;
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::ModifyOperations();
}

void sub_29A3C42FC(uint64_t a1, int a2)
{
  v3 = a2;
  sub_29A2481A4(v2, a1 + 32);
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::ReplaceOperations();
}

void sub_29A3C43EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A246038(va);
  _Unwind_Resume(a1);
}

void sub_29A3C4400(uint64_t a1, int a2, void *lpsrc)
{
  v6 = a2;
  if (__dynamic_cast(lpsrc, &unk_2A204CB50, &unk_2A204CB60, 0))
  {
    sub_29A2481A4(v4, a1 + 32);
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::ComposeOperations();
  }

  v4[0] = "sdf/listOpListEditor.h";
  v4[1] = "ApplyList";
  v4[2] = 279;
  v4[3] = "virtual void pxrInternal__aapl__pxrReserved__::Sdf_ListOpListEditor<pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy>::ApplyList(SdfListOpType, const Sdf_ListEditor<TP> &) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy]";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Cannot apply from list editor of different type");
}

void sub_29A3C4558(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A246038(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3C456C(uint64_t a1, uint64_t a2, double **a3, double **a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *a4;
  v9 = a4[1];
  if (*a3 != v7 && v8 != v9)
  {
    do
    {
      if (!pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v6, v8))
      {
        break;
      }

      v6 += 7;
      v8 += 7;
      if (v6 == v7)
      {
        break;
      }
    }

    while (v8 != v9);
  }

  if (v8 == v9)
  {
LABEL_13:
    v13 = sub_29A1E045C((a1 + 8));
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(v13);
  }

  v11 = v8;
LABEL_8:
  for (i = *a4; ; i += 7)
  {
    if (i == v11)
    {
      v11 += 7;
      if (v11 == v9)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    if (pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v11, i))
    {
      break;
    }
  }

  v23[0] = "sdf/listEditor.h";
  v23[1] = "_ValidateEdit";
  v23[2] = 245;
  v23[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::Sdf_ListEditor<pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy>::_ValidateEdit(SdfListOpType, const value_vector_type &, const value_vector_type &) const [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy]";
  v24 = 0;
  p_p = &__p;
  sub_29A366C70(v11);
  if (v20 < 0)
  {
    p_p = __p;
  }

  v15 = *(a1 + 16) & 0xFFFFFFFFFFFFFFF8;
  if (v15)
  {
    v16 = (v15 + 16);
    if (*(v15 + 39) < 0)
    {
      v16 = *v16;
    }
  }

  else
  {
    v16 = "";
  }

  sub_29A1E24EC(a1, &v21);
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v21);
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v23, 1, "Duplicate item '%s' not allowed for field '%s' on <%s>", p_p, v16, Text);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  sub_29A1DE3A4(&v21);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_29A3C4818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3C4868(uint64_t a1)
{
  *a1 = &unk_2A204CAD8;
  v4 = (a1 + 160);
  sub_29A2463D0(&v4);
  v4 = (a1 + 136);
  sub_29A2463D0(&v4);
  v4 = (a1 + 112);
  sub_29A2463D0(&v4);
  v4 = (a1 + 88);
  sub_29A2463D0(&v4);
  v4 = (a1 + 64);
  sub_29A2463D0(&v4);
  v4 = (a1 + 40);
  sub_29A2463D0(&v4);
  *a1 = &unk_2A204CB88;
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 8));
  return a1;
}

void sub_29A3C494C(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((a1 + 8)))
  {
    v2 = sub_29A1E045C((a1 + 8));
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v2, v3);
    sub_29A1DA6E4(v3);
  }

  v3[0] = "sdf/listOpListEditor.h";
  v3[1] = "_UpdateListOp";
  v3[2] = 96;
  v3[3] = "void pxrInternal__aapl__pxrReserved__::Sdf_ListOpListEditor<pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy>::_UpdateListOp(const ListOpType &, const SdfListOpType *) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy]";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Invalid owner.");
}

void sub_29A3C4CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_29A186B14(v28 - 144);
  sub_29A246038(&a9);
  sub_29A1DD644(&a28);
  _Unwind_Resume(a1);
}

__n128 sub_29A3C4DF4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A204CC10;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A3C4E40(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204CC10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A3C4E80(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204CC70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A3C4ECC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  (*(*v2 + 48))(v5);
  if (v6 == 1)
  {
    sub_29A3484BC(a2, v5);
  }

  else
  {
    sub_29A3C4F70(a2, v5);
  }

  return sub_29A36B5AC(v5);
}

char *sub_29A3C4F70(char *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[56] = 0;
  if (*(a2 + 56) == 1)
  {
    sub_29A3C4FCC(__dst, a2);
    __dst[56] = 1;
  }

  return __dst;
}

char *sub_29A3C4FCC(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_29A1E21F4(__dst + 6, a2 + 6);
  sub_29A1E2240(__dst + 7, a2 + 7);
  *(__dst + 2) = a2[2];
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((__dst + 48), (a2 + 3));
  return __dst;
}

void sub_29A3C5048(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_29A3C506C@<X0>(uint64_t *result@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v3 = result[9];
  if (v3)
  {
    v4 = *result;
    v5[1] = &off_2A204CC80;
    sub_29A3C54B0(v5, a2);
    v3(v4, v5);
    return sub_29A186B14(v5);
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

void sub_29A3C510C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A3C5128(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 56), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A3C5148(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A3C52B0(a1);
}

unint64_t sub_29A3C5160(uint64_t *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A24896C(&v3, v1, (v1 + 24), (v1 + 32), (v1 + 48));
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

char *sub_29A3C5298@<X0>(__int128 **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A204CC80;
  return sub_29A3C54B0(a2, v2);
}

void sub_29A3C52B0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit((v1 + 56), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_29A184A10((v1 + 48), 0);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v1 + 28));
    sub_29A1DE3A4((v1 + 24));
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete(v1);
  }
}

__int128 *sub_29A3C533C(__int128 **a1)
{
  v2 = atomic_load(*a1 + 14);
  if (v2 != 1)
  {
    sub_29A3C53A4(*a1, &v4);
    sub_29A3C52B0(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A3C52B0(&v4);
  }

  return *a1;
}

char *sub_29A3C53A4@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x40uLL);
  result = sub_29A3C5408(v4, a1);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 14, 1u, memory_order_relaxed);
  return result;
}

char *sub_29A3C5408(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_29A1E21F4(__dst + 6, a2 + 6);
  sub_29A1E2240(__dst + 7, a2 + 7);
  *(__dst + 2) = a2[2];
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((__dst + 48), (a2 + 3));
  atomic_store(0, __dst + 14);
  return __dst;
}

void sub_29A3C548C(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

char *sub_29A3C54B0(void *a1, __int128 *a2)
{
  v4 = operator new(0x40uLL);
  result = sub_29A3C5408(v4, a2);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 14, 1u, memory_order_relaxed);
  return result;
}

void *sub_29A3C5514(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204CD58;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A3C556C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B29D8A0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3C5588(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A3C55B0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A3C55E0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204CDA8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A3C58D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A24A2DC(va);
  sub_29A24A2DC(v3);
  sub_29A3C5A38(v2);
  _Unwind_Resume(a1);
}

void *sub_29A3C5914(void *result, atomic_uint **a2, uint64_t *a3)
{
  v3 = *a2;
  *result = &unk_2A204CE80;
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  v4 = *a3;
  result[2] = *a3;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t sub_29A3C5970@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, &v6);
  if (v7 && (sub_29A1EF030(&v6) & 1) != 0)
  {
    if ((v7 & 4) != 0)
    {
      a2 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(&v6);
    }

    else
    {
      a2 = v6;
    }
  }

  sub_29A24C0F4(a3, a2);
  return sub_29A186B14(&v6);
}

void *sub_29A3C5A38(void *a1)
{
  *a1 = &unk_2A204CE80;
  v2 = a1[2];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 1));
  return a1;
}

void sub_29A3C5A9C(uint64_t a1)
{
  v1 = sub_29A3C6434(a1);

  operator delete(v1);
}

uint64_t sub_29A3C5AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((a1 + 8)))
  {
    v4 = "List editor is expired";
  }

  else
  {
    v5 = sub_29A1E045C((a1 + 8));
    result = pxrInternal__aapl__pxrReserved__::SdfSpec::PermissionToEdit(v5);
    if (result)
    {
      *a2 = 0;
      *(a2 + 24) = 0;
      return result;
    }

    v4 = "Permission denied";
  }

  result = sub_29A008E78(a2, v4);
  *(a2 + 24) = 1;
  return result;
}

BOOL sub_29A3C5B34(uint64_t a1, void *lpsrc)
{
  v3 = __dynamic_cast(lpsrc, &unk_2A204CE48, &unk_2A204CE58, 0);
  if (v3)
  {
    sub_29A3C6518(a1);
  }

  else
  {
    v5[0] = "sdf/listOpListEditor.h";
    v5[1] = "CopyEdits";
    v5[2] = 204;
    v5[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::Sdf_ListOpListEditor<pxrInternal__aapl__pxrReserved__::SdfPayloadTypePolicy>::CopyEdits(const Sdf_ListEditor<TP> &) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfPayloadTypePolicy]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Could not copy from list editor of different type");
  }

  return v3 != 0;
}

void sub_29A3C5D84(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x29EDCA608];
  sub_29A24C0F4(&v4, a1 + 32);
  v5[0] = &unk_2A204CF08;
  v5[1] = a1;
  v5[2] = a2;
  v5[3] = v5;
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::ModifyOperations();
}

void sub_29A3C5EC8(uint64_t a1, int a2)
{
  v3 = a2;
  sub_29A24C0F4(v2, a1 + 32);
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::ReplaceOperations();
}

void sub_29A3C5FB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A24A2DC(va);
  _Unwind_Resume(a1);
}

void sub_29A3C5FCC(uint64_t a1, int a2, void *lpsrc)
{
  v6 = a2;
  if (__dynamic_cast(lpsrc, &unk_2A204CE48, &unk_2A204CE58, 0))
  {
    sub_29A24C0F4(v4, a1 + 32);
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::ComposeOperations();
  }

  v4[0] = "sdf/listOpListEditor.h";
  v4[1] = "ApplyList";
  v4[2] = 279;
  v4[3] = "virtual void pxrInternal__aapl__pxrReserved__::Sdf_ListOpListEditor<pxrInternal__aapl__pxrReserved__::SdfPayloadTypePolicy>::ApplyList(SdfListOpType, const Sdf_ListEditor<TP> &) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfPayloadTypePolicy]";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Cannot apply from list editor of different type");
}

void sub_29A3C6124(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A24A2DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3C6138(uint64_t a1, uint64_t a2, double **a3, double **a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *a4;
  v9 = a4[1];
  if (*a3 != v7 && v8 != v9)
  {
    do
    {
      if (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v6, v8))
      {
        break;
      }

      v6 += 6;
      v8 += 6;
      if (v6 == v7)
      {
        break;
      }
    }

    while (v8 != v9);
  }

  if (v8 == v9)
  {
LABEL_13:
    v13 = sub_29A1E045C((a1 + 8));
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(v13);
  }

  v11 = v8;
LABEL_8:
  for (i = *a4; ; i += 6)
  {
    if (i == v11)
    {
      v11 += 6;
      if (v11 == v9)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    if (pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v11, i))
    {
      break;
    }
  }

  v23[0] = "sdf/listEditor.h";
  v23[1] = "_ValidateEdit";
  v23[2] = 245;
  v23[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::Sdf_ListEditor<pxrInternal__aapl__pxrReserved__::SdfPayloadTypePolicy>::_ValidateEdit(SdfListOpType, const value_vector_type &, const value_vector_type &) const [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfPayloadTypePolicy]";
  v24 = 0;
  p_p = &__p;
  sub_29A36A000(v11);
  if (v20 < 0)
  {
    p_p = __p;
  }

  v15 = *(a1 + 16) & 0xFFFFFFFFFFFFFFF8;
  if (v15)
  {
    v16 = (v15 + 16);
    if (*(v15 + 39) < 0)
    {
      v16 = *v16;
    }
  }

  else
  {
    v16 = "";
  }

  sub_29A1E24EC(a1, &v21);
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v21);
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v23, 1, "Duplicate item '%s' not allowed for field '%s' on <%s>", p_p, v16, Text);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  sub_29A1DE3A4(&v21);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_29A3C63E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3C6434(uint64_t a1)
{
  *a1 = &unk_2A204CDD0;
  v4 = (a1 + 160);
  sub_29A24A5D0(&v4);
  v4 = (a1 + 136);
  sub_29A24A5D0(&v4);
  v4 = (a1 + 112);
  sub_29A24A5D0(&v4);
  v4 = (a1 + 88);
  sub_29A24A5D0(&v4);
  v4 = (a1 + 64);
  sub_29A24A5D0(&v4);
  v4 = (a1 + 40);
  sub_29A24A5D0(&v4);
  *a1 = &unk_2A204CE80;
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 8));
  return a1;
}

void sub_29A3C6518(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((a1 + 8)))
  {
    v2 = sub_29A1E045C((a1 + 8));
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v2, v3);
    sub_29A1DA6E4(v3);
  }

  v3[0] = "sdf/listOpListEditor.h";
  v3[1] = "_UpdateListOp";
  v3[2] = 96;
  v3[3] = "void pxrInternal__aapl__pxrReserved__::Sdf_ListOpListEditor<pxrInternal__aapl__pxrReserved__::SdfPayloadTypePolicy>::_UpdateListOp(const ListOpType &, const SdfListOpType *) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfPayloadTypePolicy]";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Invalid owner.");
}

void sub_29A3C68C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_29A186B14(v28 - 144);
  sub_29A24A2DC(&a9);
  sub_29A1DD644(&a28);
  _Unwind_Resume(a1);
}

__n128 sub_29A3C69C0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A204CF08;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A3C6A0C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204CF08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A3C6A4C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204CF68))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A3C6A98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  (*(*v2 + 48))(v5);
  if (v6 == 1)
  {
    sub_29A348B54(a2, v5);
  }

  else
  {
    sub_29A3C6B3C(a2, v5);
  }

  return sub_29A36B840(v5);
}

void sub_29A3C6B28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36B840(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_29A3C6B3C(_BYTE *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[48] = 0;
  if (*(a2 + 48) == 1)
  {
    sub_29A3C6B98(__dst, a2);
    __dst[48] = 1;
  }

  return __dst;
}

void *sub_29A3C6B98(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_29A1E21F4(__dst + 6, a2 + 6);
  sub_29A1E2240(__dst + 7, a2 + 7);
  *(__dst + 2) = a2[2];
  return __dst;
}

uint64_t *sub_29A3C6C08@<X0>(uint64_t *result@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v3 = result[9];
  if (v3)
  {
    v4 = *result;
    v5[1] = &off_2A204CF78;
    sub_29A3C6FEC(v5, a2);
    v3(v4, v5);
    return sub_29A186B14(v5);
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

void sub_29A3C6CA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A3C6CC4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A3C6CE4(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A3C6E28(a1);
}

_BYTE *sub_29A3C6E10@<X0>(__int128 **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A204CF78;
  return sub_29A3C6FEC(a2, v2);
}

void sub_29A3C6E28(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit((v1 + 48), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v1 + 28));
    sub_29A1DE3A4((v1 + 24));
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete(v1);
  }
}

__int128 *sub_29A3C6EA8(__int128 **a1)
{
  v2 = atomic_load(*a1 + 12);
  if (v2 != 1)
  {
    sub_29A3C6F10(*a1, &v4);
    sub_29A3C6E28(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A3C6E28(&v4);
  }

  return *a1;
}

_BYTE *sub_29A3C6F10@<X0>(__int128 *a1@<X0>, atomic_uint **a2@<X8>)
{
  v4 = operator new(0x38uLL);
  result = sub_29A3C6F74(v4, a1);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 12, 1u, memory_order_relaxed);
  return result;
}

_BYTE *sub_29A3C6F74(_BYTE *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_29A1E21F4(__dst + 6, a2 + 6);
  sub_29A1E2240(__dst + 7, a2 + 7);
  *(__dst + 2) = a2[2];
  atomic_store(0, __dst + 12);
  return __dst;
}

_BYTE *sub_29A3C6FEC(atomic_uint **a1, __int128 *a2)
{
  v4 = operator new(0x38uLL);
  result = sub_29A3C6F74(v4, a2);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 12, 1u, memory_order_relaxed);
  return result;
}

void *sub_29A3C7050(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204D040;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A3C70A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B29D8C4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3C70C4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A3C70EC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A3C711C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204D090))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A3C715C(void *a1, atomic_uint **a2, uint64_t *a3, int a4)
{
  v7 = sub_29A3C72AC(a1, a2, a3);
  *v7 = &unk_2A204D0B8;
  v7[4] = 0;
  *(v7 + 10) = a4;
  v7[6] = 0;
  v7[7] = 0;
  v7[8] = 0;
  if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a2) & 1) == 0)
  {
    v8 = sub_29A1E045C(a2);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    sub_29A3C7308(v8, &v13);
  }

  return a1;
}

void sub_29A3C7240(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  *(v3 - 40) = va1;
  sub_29A124AB0((v3 - 40));
  *(v3 - 40) = va;
  sub_29A124AB0((v3 - 40));
  sub_29A124AB0(va1);
  v5 = v2[4];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A3C7418(v2);
  _Unwind_Resume(a1);
}

void *sub_29A3C72AC(void *result, atomic_uint **a2, uint64_t *a3)
{
  v3 = *a2;
  *result = &unk_2A204D168;
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  v4 = *a3;
  result[2] = *a3;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void sub_29A3C7308(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, void *a2@<X8>)
{
  v5 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, &v3);
  if (v4 && (sub_29A1DE724(&v3) & 1) != 0 && (v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(&v3);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void **sub_29A3C73E0(void **a1)
{
  v3 = a1;
  sub_29A124AB0(&v3);
  return a1;
}

void *sub_29A3C7418(void *a1)
{
  *a1 = &unk_2A204D168;
  v2 = a1[2];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 1));
  return a1;
}

void sub_29A3C747C(uint64_t a1)
{
  v1 = sub_29A3C8000(a1);

  operator delete(v1);
}

uint64_t sub_29A3C74A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((a1 + 8)))
  {
    v4 = "List editor is expired";
  }

  else
  {
    v5 = sub_29A1E045C((a1 + 8));
    result = pxrInternal__aapl__pxrReserved__::SdfSpec::PermissionToEdit(v5);
    if (result)
    {
      *a2 = 0;
      *(a2 + 24) = 0;
      return result;
    }

    v4 = "Permission denied";
  }

  result = sub_29A008E78(a2, v4);
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_29A3C7514(uint64_t a1, void *lpsrc)
{
  v3 = __dynamic_cast(lpsrc, &unk_2A204D130, &unk_2A204D140, 0);
  if (v3)
  {
    if (*(a1 + 40) == v3[10])
    {
      sub_29A3C80AC(a1);
      return 1;
    }

    v5 = "sdf/vectorListEditor.h";
    v6 = "CopyEdits";
    v7 = 206;
    v8 = "virtual BOOL pxrInternal__aapl__pxrReserved__::Sdf_VectorListEditor<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy>::CopyEdits(const Sdf_ListEditor<TP> &) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy, FieldStorageType = pxrInternal__aapl__pxrReserved__::TfToken]";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v5, 1, "Cannot copy from list editor in different mode");
  }

  else
  {
    v5 = "sdf/vectorListEditor.h";
    v6 = "CopyEdits";
    v7 = 201;
    v8 = "virtual BOOL pxrInternal__aapl__pxrReserved__::Sdf_VectorListEditor<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy>::CopyEdits(const Sdf_ListEditor<TP> &) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy, FieldStorageType = pxrInternal__aapl__pxrReserved__::TfToken]";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v5, 1, "Cannot copy from list editor of different type");
  }

  return 0;
}

BOOL sub_29A3C7620(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    memset(v3, 0, sizeof(v3));
    sub_29A3C80AC(a1);
    v4 = v3;
    sub_29A124AB0(&v4);
  }

  return v1 != 0;
}

void sub_29A3C7674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A3C768C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    memset(v3, 0, sizeof(v3));
    sub_29A3C80AC(a1);
    v4 = v3;
    sub_29A124AB0(&v4);
  }

  return v1 == 0;
}

void sub_29A3C76E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3C76F8(uint64_t result)
{
  v1 = *MEMORY[0x29EDCA608];
  if (*(result + 48) != *(result + 56))
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SdfListOp();
  }

  return result;
}

void sub_29A3C7838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_29A3C85D4(v9 - 72);
  sub_29A281338(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3C7864(uint64_t result)
{
  if (*(result + 48) != *(result + 56))
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SdfListOp();
  }

  return result;
}

uint64_t sub_29A3C7950(uint64_t a1, int a2)
{
  if (*(a1 + 40) == a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SdfListOp();
  }

  return 0;
}

void sub_29A3C7A7C(uint64_t a1, int a2, void *lpsrc)
{
  v5 = __dynamic_cast(lpsrc, &unk_2A204D130, &unk_2A204D140, 0);
  if (v5)
  {
    if (*(a1 + 40) == a2 || v5[10] == a2)
    {
      pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SdfListOp();
    }
  }

  else
  {
    v6[0] = "sdf/vectorListEditor.h";
    v6[1] = "ApplyList";
    v6[2] = 305;
    v6[3] = "virtual void pxrInternal__aapl__pxrReserved__::Sdf_VectorListEditor<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy>::ApplyList(SdfListOpType, const Sdf_ListEditor<TP> &) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy, FieldStorageType = pxrInternal__aapl__pxrReserved__::TfToken]";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Cannot apply from list editor of different type");
  }
}

uint64_t sub_29A3C7CA8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3[1];
  v6 = *a4;
  v7 = a4[1];
  v8 = *a3 == v5 || v6 == v7;
  v9 = *a4;
  if (!v8)
  {
    v16 = *a3 + 8;
    v9 = *a4;
    do
    {
      if ((*v9 ^ *(v16 - 8)) > 7)
      {
        break;
      }

      ++v9;
      if (v16 == v5)
      {
        break;
      }

      v16 += 8;
    }

    while (v9 != v7);
  }

  if (v9 == v7)
  {
LABEL_13:
    v12 = sub_29A1E045C((a1 + 8));
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(v12);
  }

  v10 = v9;
  while (v6 == v10)
  {
LABEL_12:
    if (++v10 == v7)
    {
      goto LABEL_13;
    }
  }

  v11 = *a4;
  while ((*v11 ^ *v10) > 7)
  {
    if (++v11 == v10)
    {
      goto LABEL_12;
    }
  }

  v23[0] = "sdf/listEditor.h";
  v23[1] = "_ValidateEdit";
  v23[2] = 245;
  v23[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::Sdf_ListEditor<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy>::_ValidateEdit(SdfListOpType, const value_vector_type &, const value_vector_type &) const [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy]";
  v24 = 0;
  p_p = &__p;
  sub_29A224148(v10);
  if (v20 < 0)
  {
    p_p = __p;
  }

  v14 = *(a1 + 16) & 0xFFFFFFFFFFFFFFF8;
  if (v14)
  {
    v15 = (v14 + 16);
    if (*(v14 + 39) < 0)
    {
      v15 = *v15;
    }
  }

  else
  {
    v15 = "";
  }

  sub_29A1E24EC(a1, &v21);
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v21);
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v23, 1, "Duplicate item '%s' not allowed for field '%s' on <%s>", p_p, v15, Text);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  sub_29A1DE3A4(&v21);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_29A3C7F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A3C7FA4(uint64_t a1, int a2)
{
  if (*(a1 + 40) == a2)
  {
    return (a1 + 48);
  }

  {
    return &pxrInternal__aapl__pxrReserved__::Sdf_VectorListEditor<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy,pxrInternal__aapl__pxrReserved__::TfToken>::_GetOperations(pxrInternal__aapl__pxrReserved__::SdfListOpType)const::empty;
  }

  v5[1] = v2;
  v5[2] = v3;
  sub_29B29D8E8(v5);
  return v5[0];
}

uint64_t sub_29A3C8000(uint64_t a1)
{
  *a1 = &unk_2A204D0B8;
  v5 = (a1 + 48);
  sub_29A124AB0(&v5);
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *a1 = &unk_2A204D168;
  v3 = *(a1 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 8));
  return a1;
}

void sub_29A3C80AC(uint64_t a1)
{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((a1 + 8)))
  {
    v2 = sub_29A1E045C((a1 + 8));
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v2, v3);
    sub_29A1DA6E4(v3);
  }

  v3[0] = "sdf/vectorListEditor.h";
  v3[1] = "_UpdateFieldData";
  v3[2] = 125;
  v3[3] = "void pxrInternal__aapl__pxrReserved__::Sdf_VectorListEditor<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy>::_UpdateFieldData(const value_vector_type &) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy, FieldStorageType = pxrInternal__aapl__pxrReserved__::TfToken]";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Invalid owner.");
}

void sub_29A3C8328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12, int a13, char a14)
{
  a9 = &a14;
  sub_29A124AB0(&a9);
  sub_29A1DD644(&a12);
  _Unwind_Resume(a1);
}

void sub_29A3C8384()
{
  v1 = *MEMORY[0x29EDCA608];
  v0 = &off_2A2049148;
  sub_29A242610();
}

void sub_29A3C8414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A3C8438(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A204D1F0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A3C8484(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204D1F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A3C84C4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204D260))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29A3C8510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  result = (*(*v2 + 48))(&v7);
  if (v8 == 1)
  {
    v5 = v7;
    *a2 = v7;
    if ((v5 & 7) != 0)
    {
      v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a2 = v6;
      }
    }

    *(a2 + 8) = 1;
    if ((v8 & 1) != 0 && (v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t sub_29A3C85D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *sub_29A3C8654@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v3 = result[9];
  if (v3)
  {
    v4 = *result;
    v5 = *a2;
    v7[0] = v5;
    v7[1] = &off_2A2044E88 + 1;
    if ((v5 & 7) != 0)
    {
      v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
      {
        v7[0] = v6;
      }
    }

    v3(v4, v7);
    return sub_29A186B14(v7);
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

void sub_29A3C86FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29A3C8710(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204D280;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A3C8768(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B29D958(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3C8784(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A3C87AC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A3C87DC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204D2D0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A3C881C()
{
  v1 = nullsub_262;
  var8.__vftable = &unk_2A204AA18;
  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204D2E8, &var8, &v1, 1, 8, 0, 0);
}

uint64_t *sub_29A3C8890()
{
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204CD38, 0, 0, 0, 56, 0, 0);

  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204D300, 0, 0, 0, 24, 0, 0);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfReference::SdfReference(uint64_t a1, uint64_t a2, _DWORD *a3, _OWORD *a4, const pxrInternal__aapl__pxrReserved__::VtDictionary *a5)
{
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v10);
  if (SHIBYTE(v11) < 0)
  {
    sub_29A008D14(a1, v10[0], v10[1]);
  }

  else
  {
    *a1 = *v10;
    *(a1 + 16) = v11;
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  sub_29A1E21F4((a1 + 24), a3);
  sub_29A1E2240((a1 + 28), a3 + 1);
  *(a1 + 32) = *a4;
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((a1 + 48), a5);
  return a1;
}

uint64_t **pxrInternal__aapl__pxrReserved__::SdfReference::SetCustomData(uint64_t a1, __int128 *a2, void *a3)
{
  if (a3[1])
  {
    v5 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 48), a2);

    return sub_29A1854E8(v5, a3);
  }

  else
  {
    v7 = (a1 + 48);

    return pxrInternal__aapl__pxrReserved__::VtDictionary::erase(v7, a2);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::SdfReference::IsInternal(pxrInternal__aapl__pxrReserved__::SdfReference *this)
{
  v1 = *(this + 23);
  if (v1 < 0)
  {
    v1 = *(this + 1);
  }

  return v1 == 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfReference::operator==(double *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3) || *(v7 + 3) != v6[3] || !pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator==(v7 + 4, v6 + 4))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::operator==(v7 + 6, v6 + 6, v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfReference::operator<(const void **a1, const void **a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v2 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v2 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  v9 = memcmp(v5, v7, v8);
  v10 = v4 < v6;
  if (v9)
  {
    v10 = v9 < 0;
  }

  if (v10)
  {
    return 1;
  }

  if (v4 == v6 && !memcmp(v5, v7, v4))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfFindReferenceByIdentity(const void ***a1, const void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    while (!sub_29A3C8D6C(&v7, a2, v3))
    {
      v3 += 7;
      if (v3 == v4)
      {
        v3 = v4;
        break;
      }
    }

    v4 = a1[1];
  }

  if (v3 == v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return -1227133513 * ((v3 - *a1) >> 3);
  }
}

BOOL sub_29A3C8D6C(uint64_t a1, const void **a2, const void **a3)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = *(a3 + 23);
  v7 = v6;
  if (v6 < 0)
  {
    v6 = a3[1];
  }

  if (v5 == v6 && (v4 >= 0 ? (v9 = a2) : (v9 = *a2), v7 >= 0 ? (v10 = a3) : (v10 = *a3), !memcmp(v9, v10, v5)))
  {
    return a2[3] == a3[3];
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A3C8DF8()
{
  v1 = nullsub_263;
  var8.__vftable = &unk_2A204A990;
  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204AA30, &var8, &v1, 1, 8, 0, 0);
}

void pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::New(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v25 = a3;
  v24 = a4;
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    v19 = "sdf/relationshipSpec.cpp";
    v20 = "New";
    v21 = 46;
    v22 = "static SdfRelationshipSpecHandle pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::New(const SdfPrimSpecHandle &, const std::string &, BOOL, SdfVariability)";
    v23 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 1, "NULL owner prim");
LABEL_12:
    *a5 = 0;
    return;
  }

  if ((MEMORY[0x29C2BB270](a2) & 1) == 0)
  {
    v19 = "sdf/relationshipSpec.cpp";
    v20 = "New";
    v21 = 52;
    v22 = "static SdfRelationshipSpecHandle pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::New(const SdfPrimSpecHandle &, const std::string &, BOOL, SdfVariability)";
    v23 = 0;
    v10 = sub_29A2F6760(a1);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v10, &v17);
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v17);
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 1, "Cannot create a relationship on %s with invalid name: %s", Text, v12);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
    sub_29A1DE3A4(&v17);
    goto LABEL_12;
  }

  v8 = sub_29A2F6760(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v8, &v19);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v16);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v19, &v16, &v17);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
  sub_29A1DE3A4(&v19);
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(&v17))
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(&v16);
    v9 = sub_29A2F6760(a1);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v9, &v19);
    pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::CreateSpec();
  }

  v19 = "sdf/relationshipSpec.cpp";
  v20 = "New";
  v21 = 60;
  v22 = "static SdfRelationshipSpecHandle pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::New(const SdfPrimSpecHandle &, const std::string &, BOOL, SdfVariability)";
  v23 = 0;
  v13 = sub_29A2F6760(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v13, &v16);
  v14 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v16);
  if (*(a2 + 23) >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 1, "Cannot create relationship at invalid path <%s.%s>", v14, v15);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16 + 1);
  sub_29A1DE3A4(&v16);
  *a5 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
  sub_29A1DE3A4(&v17);
}

void sub_29A3C91A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v17);
  sub_29A1DD644(&a11);
  sub_29A1DCEA8(&a12);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::_CanonicalizeTargetPath@<X0>(pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, int *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v6);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v6, &v8);
  pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(a2, &v8, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  return sub_29A1DE3A4(&v6);
}

void sub_29A3C9308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  sub_29A1DCEA8(&a11);
  sub_29A1DCEA8(&a9);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::_MakeCompleteTargetSpecPath@<X0>(pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _DWORD *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::_CanonicalizeTargetPath(this, a2, &v8);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v6);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget(&v6, &v8, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  sub_29A1DE3A4(&v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  return sub_29A1DE3A4(&v8);
}

void sub_29A3C93AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  sub_29A1DCEA8(&a9);
  sub_29A1DCEA8(&a11);
  _Unwind_Resume(a1);
}

void sub_29A3C9458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::GetTargetPathList(atomic_uint **this@<X0>, void *a2@<X8>)
{
  sub_29A2F0678(this, &v4);
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfGetPathEditorProxy(&v5, v3 + 55, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v5);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v4);
}

void sub_29A3C9540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a10);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::HasTargetPathList(atomic_uint **this)
{
  pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::GetTargetPathList(this, &v3);
  if (sub_29A1F222C(&v3))
  {
    v1 = sub_29A1F28A0(v3);
  }

  else
  {
    v1 = 1;
  }

  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return v1;
}

void sub_29A3C95B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::ClearTargetPathList(atomic_uint **this)
{
  pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::GetTargetPathList(this, &v1);
  if (sub_29A2F1CB8(&v1))
  {
    (*(*v1 + 48))(v1);
  }

  if (v2)
  {
    sub_29A014BEC(v2);
  }
}

void sub_29A3C963C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::ReplaceTargetPath(pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::PermissionToEdit(this))
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v11);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, v10);
    pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::_CanonicalizeTargetPath(this, a2, &v9);
    pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::_CanonicalizeTargetPath(this, a3, &v8);
    if (v9 != v8)
    {
      sub_29A1DA6E4(v10);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8 + 1);
    sub_29A1DE3A4(&v8);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9 + 1);
    sub_29B295ABC(&v9, v10);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
    sub_29A1DE3A4(&v11);
  }

  else
  {
    v6[0] = "sdf/relationshipSpec.cpp";
    v6[1] = "ReplaceTargetPath";
    v6[2] = 156;
    v6[3] = "void pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::ReplaceTargetPath(const SdfPath &, const SdfPath &)";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "ReplaceTargetPath: Permission denied.");
  }
}

void sub_29A3C9E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, int a39, int a40, int a41, uint64_t a42, uint64_t a43, int a44, void **a45)
{
  sub_29A1DCEA8(&a45);
  sub_29A1DCEA8((v45 - 104));
  a45 = &a36;
  sub_29A1E234C(&a45);
  sub_29A1DCEA8(&a39);
  sub_29A1DCEA8(&a41);
  v47 = a43;
  if (a43)
  {
    if (atomic_fetch_add_explicit((a43 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v47 + 8))(v47);
    }
  }

  sub_29A1DCEA8(&a44);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A3C9F98@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3 == *result)
  {
    sub_29A1E21F4(a4, a2);
    v6 = (a4 + 4);
    v7 = a2 + 1;
LABEL_6:
    result = sub_29A1E2240(v6, v7);
    v8 = 1;
    goto LABEL_7;
  }

  if (*a3 != *a2)
  {
    sub_29A1E21F4(a4, a3);
    v6 = (a4 + 4);
    v7 = a3 + 1;
    goto LABEL_6;
  }

  v8 = 0;
  *a4 = 0;
LABEL_7:
  *(a4 + 8) = v8;
  return result;
}

_DWORD *sub_29A3CA028(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 5);
  sub_29A1DE3A4(a1 + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  return a1;
}

void sub_29A3CA074(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *MEMORY[0x29EDCA608];
  v5 = &off_2A2046FA0;
  sub_29A1E3654(v4, a4);
}

void sub_29A3CA10C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::RemoveTargetPath(pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, v4);
  pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::_CanonicalizeTargetPath(this, a2, v5);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget(v4, v5, &v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5[1]);
  sub_29A1DE3A4(v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v4 + 1);
  sub_29A1DE3A4(v4);
  pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v6);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, v5);
  memset(v4, 0, sizeof(v4));
  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::SetChildren();
}

void sub_29A3CA250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  sub_29A1DD644((v11 - 48));
  sub_29A1DCEA8((v11 - 40));
  _Unwind_Resume(a1);
}

void sub_29A3CA310(void *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (sub_29A2F1CB8(a1) && ((*(**a1 + 24))() & 1) == 0)
  {
    if ((*(**a1 + 16))())
    {
      v4 = a1[1];
      v8 = *a1;
      v9 = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = 0;
      sub_29A3CACB4(&v8, a2);
    }

    else
    {
      v5 = a1[1];
      v8 = *a1;
      v9 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = 1;
      sub_29A3CACB4(&v8, a2);
      if (v9)
      {
        sub_29A014BEC(v9);
      }

      v6 = a1[1];
      v8 = *a1;
      v9 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = 4;
      sub_29A3CACB4(&v8, a2);
      if (v9)
      {
        sub_29A014BEC(v9);
      }

      v7 = a1[1];
      v8 = *a1;
      v9 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = 5;
      sub_29A3CACB4(&v8, a2);
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }
}

void sub_29A3CA470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::SdfChangeBlock *sub_29A3CA494(uint64_t *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = sub_29A2F1CB8(a1);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v14);
    v5 = a1[1];
    v11 = *a1;
    v12 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = 0;
    sub_29A3CACB4(&v11, a2);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    v6 = a1[1];
    v11 = *a1;
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = 1;
    sub_29A3CACB4(&v11, a2);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    v7 = a1[1];
    v11 = *a1;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = 4;
    sub_29A3CACB4(&v11, a2);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    v8 = a1[1];
    v11 = *a1;
    v12 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = 5;
    sub_29A3CACB4(&v11, a2);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    v9 = a1[1];
    v11 = *a1;
    v12 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = 2;
    sub_29A3CACB4(&v11, a2);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    v10 = a1[1];
    v11 = *a1;
    v12 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = 3;
    sub_29A3CACB4(&v11, a2);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    return sub_29A1DD644(v14);
  }

  return result;
}

void sub_29A3CA624(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  sub_29A1DD644(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::GetNoLoadHint(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v5);
  if (!v6 || (sub_29A1EFCDC(v5) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v3 = *sub_29A1EFD10(v5);
  sub_29A186B14(v5);
  return v3;
}

void sub_29A3CA740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::SetNoLoadHint(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, char a2)
{
  v5 = a2;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A2F0400(this, (v3 + 232), &v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfCreateRelationshipInLayer@<X0>(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, int a3@<W2>, char a4@<W3>, void *a5@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::SdfJustCreateRelationshipInLayer(a1, a2, a3, a4);
  if (result)
  {
    sub_29A1DA6E4(a1);
  }

  *a5 = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfJustCreateRelationshipInLayer(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, int a3, char a4)
{
  v14 = a3;
  v13 = a4;
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath(this))
  {
    if (*(a1 + 8))
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
    }

    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v10);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, v11);
    PrimInLayer = pxrInternal__aapl__pxrReserved__::Sdf_UncheckedCreatePrimInLayer(0, v11, v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v11 + 1);
    sub_29A1DE3A4(v11);
    if (PrimInLayer)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::CreateSpec();
    }

    sub_29A1DD644(v10);
  }

  else
  {
    v11[0] = "sdf/relationshipSpec.cpp";
    v11[1] = "SdfJustCreateRelationshipInLayer";
    v11[2] = 312;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfJustCreateRelationshipInLayer(const SdfLayerHandle &, const SdfPath &, SdfVariability, BOOL)";
    v12 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Cannot create prim relationship at path '%s' because it is not a prim property path", Text);
  }

  return 0;
}

void sub_29A3CAA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DD644(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3CAA58(uint64_t a1)
{
  *a1 = &unk_2A204D320;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  return a1;
}

void sub_29A3CAABC(_DWORD *a1)
{
  *a1 = &unk_2A204D320;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 7);
  sub_29A1DE3A4(a1 + 6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 5);
  sub_29A1DE3A4(a1 + 4);

  operator delete(a1);
}

void *sub_29A3CAB30(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_2A204D320;
  v2[1] = v3;
  sub_29A23F744(v2 + 4, (a1 + 16));
  return v2;
}

_DWORD *sub_29A3CAB88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2A204D320;
  *(a2 + 8) = v2;
  return sub_29A23F744((a2 + 16), (a1 + 16));
}

void sub_29A3CABC0(_DWORD *a1)
{
  sub_29A3CAC60(a1 + 2);

  operator delete(a1);
}

uint64_t sub_29A3CAC14(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204D390))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_29A3CAC60(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 5);
  sub_29A1DE3A4(a1 + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);

  return sub_29A1DE3A4(a1 + 2);
}

void sub_29A3CACB4(unsigned int *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v3 = sub_29A3CAD94(a1, a2);
  if (v3 == -1)
  {
    if (*a1)
    {
      v4 = (*(**a1 + 112))(*a1, a1[4]);
      v5 = (v4[1] - *v4) >> 3;
    }

    else
    {
      v5 = 0;
    }

    memset(v6, 0, sizeof(v6));
    sub_29A3CAE50(a1, v5, 0, v6);
    v7 = v6;
    sub_29A1E234C(&v7);
  }

  else
  {

    sub_29A3CADEC(a1, v3);
  }
}

void sub_29A3CAD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3CAD94(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (!sub_29A1F23E4(a1))
  {
    return -1;
  }

  v4 = *a1;
  v5 = *(a1 + 16);

  return sub_29A3CAFF4(v4, v5, a2);
}

void sub_29A3CADEC(unsigned int *a1, uint64_t a2)
{
  memset(v2, 0, sizeof(v2));
  sub_29A3CAE50(a1, a2, 1, v2);
  v3 = v2;
  sub_29A1E234C(&v3);
}

void sub_29A3CAE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A1E234C(&a12);
  _Unwind_Resume(a1);
}

void sub_29A3CAE50(unsigned int *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (sub_29A3CB0CC(a1))
  {
    if (!a3 && *a4 == a4[1])
    {
      (*(**a1 + 32))(__p);
      v8 = v18;
      if (v18 == 1)
      {
        v11 = "sdf/listProxy.h";
        v12 = "_Edit";
        v13 = 739;
        v14 = "void pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy>::_Edit(size_t, size_t, const value_vector_type &) [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy]";
        v15 = 0;
        WhyNot = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(__p);
        if (*(WhyNot + 23) >= 0)
        {
          v10 = WhyNot;
        }

        else
        {
          v10 = *WhyNot;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Editing list: %s", v10);
        v8 = v18;
      }

      if ((v8 & 1) != 0 && v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else if (((*(**a1 + 80))(*a1, a1[4], a2, a3, a4) & 1) == 0)
    {
      v11 = "sdf/listProxy.h";
      v12 = "_Edit";
      v13 = 747;
      v14 = "void pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy>::_Edit(size_t, size_t, const value_vector_type &) [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy]";
      v15 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Inserting invalid value into list editor");
    }
  }
}

void sub_29A3CAFCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3CAFF4(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = a1 + 3;
  v5 = (*(*a1 + 14))(a1);
  v6 = *v5;
  v7 = *(v5 + 8);
  sub_29A1E388C(v4, a3, &v9);
  if (v6 != v7)
  {
    while (*v6 != v9)
    {
      if (++v6 == v7)
      {
        v6 = v7;
        break;
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9 + 1);
  sub_29A1DE3A4(&v9);
  if (v6 == *(v5 + 8))
  {
    return -1;
  }

  else
  {
    return (v6 - *v5) >> 3;
  }
}

uint64_t sub_29A3CB0CC(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  v2[0] = "sdf/listProxy.h";
  v2[1] = "_Validate";
  v2[2] = 678;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy>::_Validate() [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy]";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Accessing expired list editor");
  return 0;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled(("N32pxrInternal__aapl__pxrReserved__9SdfSchemaE" & 0x7FFFFFFFFFFFFFFFLL), &v9);
  v2 = std::string::insert(&v9, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v13 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v10, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v9);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::SdfSchema*> &)::isInitializing, 1u))
  {
    while (!atomic_load(a1))
    {
      sched_yield();
    }
  }

  else
  {
    if (!atomic_load(a1))
    {
      v8 = operator new(0x3B8uLL);
      pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SdfSchemaBase(v8);
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::SdfSchema*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v9);
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }

  return v6;
}

void sub_29A3CB34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::SdfSchema]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::DeleteInstance()
{
  for (result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance); result; result = v1)
  {
    v1 = result;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance, &v1, 0);
    if (v1 == result)
    {
      v2 = *(*result + 8);

      return v2();
    }

    sched_yield();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfSchema::SdfSchema(pxrInternal__aapl__pxrReserved__::SdfSchema *this)
{
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SdfSchemaBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SdfSchemaBase(this);
}

void sub_29A3CB504()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::SDF_SCHEMA_PROHIBIT_INVALID_VARIANT_SELECTIONS))
  {
    sub_29B29DDAC();
  }
}

pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition::FieldDefinition(pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition *this, const pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  *this = a2;
  v5 = *a3;
  *(this + 1) = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 1) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4(this + 2, a4);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 55) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  return this;
}

pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition::AddInfo(pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::JsValue *a3)
{
  v4 = *a2;
  v8[0] = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8[0] = v5;
    }
  }

  v6 = *(a3 + 1);
  v8[1] = *a3;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A3CB700(this + 32, v8);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if ((v8[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v8[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

void sub_29A3CB6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29B294B14(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3CB700(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A3E0BC8(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *a2 = 0;
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::GetFields@<X0>(pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition *this@<X0>, void *a2@<X8>)
{
  result = sub_29A394184(a2, *(this + 3));
  v4 = *(this + 2);
  if (v4)
  {
    result = *result;
    do
    {
      v5 = result + 1;
      sub_29A166F2C(result, v4 + 2);
      v4 = *v4;
      result = v5;
    }

    while (v4);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::GetMetadataFields@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = *(this + 16);
  v9 = 0;
  while (v8 != v9)
  {
    if (*(*sub_29A3CB860(&v8, a2, a3) + 25) == 1)
    {
      v7 = sub_29A3CB860(&v8, v5, v6);
      sub_29A1D8028(a4, (*v7 + 16));
    }

    this = sub_29A3CB898(&v8);
  }

  return this;
}

void *sub_29A3CB860(void *result, uint64_t a2, char *a3)
{
  if (*result == result[1])
  {
    sub_29B29DDE0(result, a2, a3);
  }

  return result;
}

uint64_t sub_29A3CB898(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::TfToken, pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_FieldInfo, pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::TfToken, pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_FieldInfo, pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::IsMetadataField(void *a1, void *a2)
{
  v2 = sub_29A16039C(a1, a2);
  if (v2)
  {
    v3 = *(v2 + 25);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::GetMetadataFieldDisplayGroup@<X0>(void *a1@<X0>, void *a2@<X1>, atomic_uint **a3@<X8>)
{
  result = sub_29A16039C(a1, a2);
  if (!result || *(result + 25) != 1)
  {
    v6 = 0;
LABEL_7:
    *a3 = v6;
    return result;
  }

  v5 = result[4];
  *a3 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::IsRequiredField(void *a1, void *a2)
{
  v2 = sub_29A16039C(a1, a2);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_SpecDefiner *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_SpecDefiner::MetadataField(pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_SpecDefiner *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, int a3)
{
  v4 = 0;
  result = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_SpecDefiner::MetadataField(this, a2, &v4, a3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_SpecDefiner *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_SpecDefiner::MetadataField(pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_SpecDefiner *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, int a4)
{
  v8[1] = 1;
  v9 = 0;
  sub_29A166F2C(&v9, a3);
  v8[0] = a4;
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::_AddField(*(this + 1), a2, v8);
  if (a4)
  {
    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_AddRequiredFieldName(*this, a2);
  }

  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::_AddField(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  sub_29A3DBED4(&v20, a2, a3);
  v15 = v20;
  LOWORD(v16) = v21;
  v17 = v22;
  v20 = 0;
  v22 = 0;
  sub_29A3E0EB0(a1, &v15, &v15);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v6)
  {
    if (*a3 == 1)
    {
      v9 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = (a1 + 40);
      if (v7 != v9)
      {
        v10 = (v7 - v9) >> 3;
        do
        {
          v11 = &v9[v10 >> 1];
          v12 = sub_29A153D90(&v15, v11, a2);
          if (v12)
          {
            v10 += ~(v10 >> 1);
          }

          else
          {
            v10 >>= 1;
          }

          if (v12)
          {
            v9 = v11 + 1;
          }
        }

        while (v10);
        v7 = v9;
      }

      sub_29A2FA5B4(v8, v7, a2);
    }
  }

  else
  {
    v15 = "sdf/schema.cpp";
    v16 = "_AddField";
    v17 = 288;
    v18 = "void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::_AddField(const TfToken &, const _FieldInfo &)";
    v19 = 0;
    v13 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v13)
    {
      v14 = (v13 + 16);
      if (*(v13 + 39) < 0)
      {
        v14 = *v14;
      }
    }

    else
    {
      v14 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v15, 1, "Duplicate registration for field '%s'", v14);
  }
}

void sub_29A3CBCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B29DE3C(va, (v3 + 16), va1);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_AddRequiredFieldName(void *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v2 = this[116];
  v3 = this[117];
  if (v2 != v3)
  {
    while ((*v2 ^ *a2) >= 8)
    {
      if (++v2 == v3)
      {
        return sub_29A1D8028((this + 116), a2);
      }
    }
  }

  if (v2 == v3)
  {
    return sub_29A1D8028((this + 116), a2);
  }

  return this;
}

pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_SpecDefiner *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_SpecDefiner::Field(pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_SpecDefiner *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, int a3)
{
  v7[1] = 0;
  v8 = 0;
  v7[0] = a3;
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::_AddField(*(this + 1), a2, v7);
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_AddRequiredFieldName(*this, a2);
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_SpecDefiner *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_SpecDefiner::CopyFrom(pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_SpecDefiner *this, const pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition *a2)
{
  v3 = *(this + 1);
  if (v3 != a2)
  {
    *(v3 + 32) = *(a2 + 8);
    sub_29A3DBF38(v3, *(a2 + 2), 0);
    sub_29A34AC54((v3 + 40), *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 3);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType::~SdfChildrenKeys_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType *this)
{
  v10 = (this + 72);
  sub_29A124AB0(&v10);
  v2 = *(this + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 7);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 6);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 5);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 4);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 3);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 2);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 1);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType *pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType::SdfChildrenKeys_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType *this)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "connectionChildren", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "expressionChildren", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "mapperArgChildren", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "mapperChildren", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "primChildren", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "properties", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "targetChildren", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "variantChildren", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "variantSetChildren", 0);
  v3 = (this + 72);
  v4 = *this;
  v25 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v5;
    }
  }

  v6 = *(this + 1);
  v26 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v7;
    }
  }

  v8 = *(this + 2);
  v27 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v9;
    }
  }

  v10 = *(this + 3);
  v28 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v11;
    }
  }

  v12 = *(this + 4);
  v29 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v13;
    }
  }

  v14 = *(this + 5);
  v30 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v15;
    }
  }

  v16 = *(this + 6);
  v31 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v31 = v17;
    }
  }

  v18 = *(this + 7);
  v32 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v32 = v19;
    }
  }

  v20 = *(this + 8);
  v33 = v20;
  if ((v20 & 7) != 0)
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed) & 1) == 0)
    {
      v33 = v21;
    }
  }

  *v3 = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  sub_29A12EF7C(v3, &v25, &v34, 9uLL);
  for (i = 64; i != -8; i -= 8)
  {
    v23 = *(&v25 + i);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29A3CC1E0(_Unwind_Exception *a1)
{
  v3 = 64;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[8];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[7];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[6];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[5];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[4];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[3];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[2];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[1];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType::~SdfFieldKeys_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType *this)
{
  v65 = (this + 512);
  sub_29A124AB0(&v65);
  v2 = *(this + 63);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 62);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 61);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 60);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 59);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 58);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 57);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 56);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 55);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 54);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 53);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 52);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 51);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 50);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 49);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 48);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 47);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 46);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 45);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 44);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 43);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 42);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 41);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 40);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 39);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 38);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 37);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 36);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 35);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(this + 34);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(this + 33);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(this + 32);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(this + 31);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(this + 30);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(this + 29);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(this + 28);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(this + 27);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(this + 26);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = *(this + 25);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v41 = *(this + 24);
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v42 = *(this + 23);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v43 = *(this + 22);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v44 = *(this + 21);
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v45 = *(this + 20);
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = *(this + 19);
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v47 = *(this + 18);
  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v48 = *(this + 17);
  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v49 = *(this + 16);
  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v50 = *(this + 15);
  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v51 = *(this + 14);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v52 = *(this + 13);
  if ((v52 & 7) != 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53 = *(this + 12);
  if ((v53 & 7) != 0)
  {
    atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v54 = *(this + 11);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v55 = *(this + 10);
  if ((v55 & 7) != 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v56 = *(this + 9);
  if ((v56 & 7) != 0)
  {
    atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v57 = *(this + 8);
  if ((v57 & 7) != 0)
  {
    atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v58 = *(this + 7);
  if ((v58 & 7) != 0)
  {
    atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v59 = *(this + 6);
  if ((v59 & 7) != 0)
  {
    atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v60 = *(this + 5);
  if ((v60 & 7) != 0)
  {
    atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v61 = *(this + 4);
  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v62 = *(this + 3);
  if ((v62 & 7) != 0)
  {
    atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v63 = *(this + 2);
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v64 = *(this + 1);
  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType *pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType::SdfFieldKeys_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType *this)
{
  v135 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "active", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "allowedTokens", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "assetInfo", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "colorConfiguration", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "colorManagementSystem", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "colorSpace", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "comment", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "connectionPaths", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "custom", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "customData", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "customLayerData", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "default", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "defaultPrim", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "displayGroup", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "displayGroupOrder", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "displayName", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "displayUnit", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "documentation", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "endTimeCode", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 152, "expressionVariables", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 160, "framePrecision", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 168, "framesPerSecond", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 176, "hidden", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 184, "hasOwnedSubLayers", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 192, "inheritPaths", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 200, "instanceable", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 208, "kind", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 216, "layerRelocates", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 224, "primOrder", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 232, "noLoadHint", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 240, "owner", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 248, "payload", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 256, "permission", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 264, "prefix", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 272, "prefixSubstitutions", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 280, "propertyOrder", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 288, "references", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 296, "relocates", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 304, "sessionOwner", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 312, "specializes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 320, "specifier", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 328, "spline", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 336, "startTimeCode", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 344, "playbackMode", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 352, "autoPlay", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 360, "preliminary:collidesWithEnvironment", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 368, "sceneName", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 376, "subLayers", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 384, "subLayerOffsets", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 392, "suffix", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 400, "suffixSubstitutions", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 408, "symmetricPeer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 416, "symmetryArgs", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 424, "symmetryArguments", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 432, "symmetryFunction", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 440, "targetPaths", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 448, "timeSamples", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 456, "timeCodesPerSecond", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 464, "typeName", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 472, "variantSelection", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 480, "variability", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 488, "variantSetNames", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 496, "endFrame", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 504, "startFrame", 0);
  v3 = *this;
  v71 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v71 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(this + 1);
  v72 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v72 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 2);
  v73 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v73 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 3);
  v74 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v74 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 4);
  v75 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v75 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 5);
  v76 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v76 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 6);
  v77 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v77 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 7);
  v78 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v78 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 8);
  v79 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v79 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 9);
  v80 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v80 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 10);
  v81 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v81 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 11);
  v82 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v82 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 12);
  v83 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v83 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 13);
  v84 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v84 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 14);
  v85 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v85 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 15);
  v86 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v86 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 16);
  v87 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v87 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 17);
  v88 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v88 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 18);
  v89 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v89 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 19);
  v90 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v90 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 20);
  v91 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v91 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 21);
  v92 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v92 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 22);
  v93 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v93 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 23);
  v94 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v94 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 24);
  v95 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v95 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 25);
  v96 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v96 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 26);
  v97 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v97 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 27);
  v98 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v98 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 28);
  v99 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v99 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = *(this + 29);
  v100 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v100 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = *(this + 30);
  v101 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v101 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = *(this + 31);
  v102 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v102 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = *(this + 32);
  v103 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v103 &= 0xFFFFFFFFFFFFFFF8;
  }

  v36 = *(this + 33);
  v104 = v36;
  if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v104 &= 0xFFFFFFFFFFFFFFF8;
  }

  v37 = *(this + 34);
  v105 = v37;
  if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v105 &= 0xFFFFFFFFFFFFFFF8;
  }

  v38 = *(this + 35);
  v106 = v38;
  if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v106 &= 0xFFFFFFFFFFFFFFF8;
  }

  v39 = *(this + 36);
  v107 = v39;
  if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v107 &= 0xFFFFFFFFFFFFFFF8;
  }

  v40 = *(this + 37);
  v108 = v40;
  if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v108 &= 0xFFFFFFFFFFFFFFF8;
  }

  v41 = *(this + 38);
  v109 = v41;
  if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v109 &= 0xFFFFFFFFFFFFFFF8;
  }

  v42 = *(this + 39);
  v110 = v42;
  if ((v42 & 7) != 0 && (atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v110 &= 0xFFFFFFFFFFFFFFF8;
  }

  v43 = *(this + 40);
  v111 = v43;
  if ((v43 & 7) != 0 && (atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v111 &= 0xFFFFFFFFFFFFFFF8;
  }

  v44 = *(this + 41);
  v112 = v44;
  if ((v44 & 7) != 0 && (atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v112 &= 0xFFFFFFFFFFFFFFF8;
  }

  v45 = *(this + 42);
  v113 = v45;
  if ((v45 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v113 &= 0xFFFFFFFFFFFFFFF8;
  }

  v46 = *(this + 43);
  v114 = v46;
  if ((v46 & 7) != 0 && (atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v114 &= 0xFFFFFFFFFFFFFFF8;
  }

  v47 = *(this + 44);
  v115 = v47;
  if ((v47 & 7) != 0 && (atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v115 &= 0xFFFFFFFFFFFFFFF8;
  }

  v48 = *(this + 45);
  v116 = v48;
  if ((v48 & 7) != 0 && (atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v116 &= 0xFFFFFFFFFFFFFFF8;
  }

  v49 = *(this + 46);
  v117 = v49;
  if ((v49 & 7) != 0 && (atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v117 &= 0xFFFFFFFFFFFFFFF8;
  }

  v50 = *(this + 47);
  v118 = v50;
  if ((v50 & 7) != 0 && (atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v118 &= 0xFFFFFFFFFFFFFFF8;
  }

  v51 = *(this + 48);
  v119 = v51;
  if ((v51 & 7) != 0 && (atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v119 &= 0xFFFFFFFFFFFFFFF8;
  }

  v52 = *(this + 49);
  v120 = v52;
  if ((v52 & 7) != 0 && (atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v120 &= 0xFFFFFFFFFFFFFFF8;
  }

  v53 = *(this + 50);
  v121 = v53;
  if ((v53 & 7) != 0 && (atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v121 &= 0xFFFFFFFFFFFFFFF8;
  }

  v54 = *(this + 51);
  v122 = v54;
  if ((v54 & 7) != 0 && (atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v122 &= 0xFFFFFFFFFFFFFFF8;
  }

  v55 = *(this + 52);
  v123 = v55;
  if ((v55 & 7) != 0 && (atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v123 &= 0xFFFFFFFFFFFFFFF8;
  }

  v56 = *(this + 53);
  v124 = v56;
  if ((v56 & 7) != 0 && (atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v124 &= 0xFFFFFFFFFFFFFFF8;
  }

  v57 = *(this + 54);
  v125 = v57;
  if ((v57 & 7) != 0 && (atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v125 &= 0xFFFFFFFFFFFFFFF8;
  }

  v58 = *(this + 55);
  v126 = v58;
  if ((v58 & 7) != 0 && (atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v126 &= 0xFFFFFFFFFFFFFFF8;
  }

  v59 = *(this + 56);
  v127 = v59;
  if ((v59 & 7) != 0 && (atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v127 &= 0xFFFFFFFFFFFFFFF8;
  }

  v60 = *(this + 57);
  v128 = v60;
  if ((v60 & 7) != 0 && (atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v128 &= 0xFFFFFFFFFFFFFFF8;
  }

  v61 = *(this + 58);
  v129 = v61;
  if ((v61 & 7) != 0 && (atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v129 &= 0xFFFFFFFFFFFFFFF8;
  }

  v62 = *(this + 59);
  v130 = v62;
  if ((v62 & 7) != 0 && (atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v130 &= 0xFFFFFFFFFFFFFFF8;
  }

  v63 = *(this + 60);
  v131 = v63;
  if ((v63 & 7) != 0 && (atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v131 &= 0xFFFFFFFFFFFFFFF8;
  }

  v64 = *(this + 61);
  v132 = v64;
  if ((v64 & 7) != 0 && (atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v132 &= 0xFFFFFFFFFFFFFFF8;
  }

  v65 = *(this + 62);
  v133 = v65;
  if ((v65 & 7) != 0 && (atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v133 &= 0xFFFFFFFFFFFFFFF8;
  }

  v66 = (this + 512);
  v67 = *(this + 63);
  v134 = v67;
  if ((v67 & 7) != 0 && (atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v134 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v66 = 0;
  *(this + 65) = 0;
  *(this + 66) = 0;
  sub_29A12EF7C(v66, &v71, &v135, 0x40uLL);
  for (i = 504; i != -8; i -= 8)
  {
    v69 = *(&v71 + i);
    if ((v69 & 7) != 0)
    {
      atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29A3CD9EC(_Unwind_Exception *a1)
{
  v3 = 504;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[63];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[62];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[61];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[60];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[59];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[58];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[57];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[56];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[55];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[54];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[53];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[52];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[51];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[50];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[49];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[48];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[47];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[46];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[45];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[44];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[43];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[42];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[41];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[40];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[39];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[38];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[37];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v1[36];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v1[35];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v1[34];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v1[33];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v1[32];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v1[31];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v38 = v1[30];
      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v39 = v1[29];
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v40 = v1[28];
      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v41 = v1[27];
      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v42 = v1[26];
      if ((v42 & 7) != 0)
      {
        atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v43 = v1[25];
      if ((v43 & 7) != 0)
      {
        atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v44 = v1[24];
      if ((v44 & 7) != 0)
      {
        atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v45 = v1[23];
      if ((v45 & 7) != 0)
      {
        atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v46 = v1[22];
      if ((v46 & 7) != 0)
      {
        atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v47 = v1[21];
      if ((v47 & 7) != 0)
      {
        atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v48 = v1[20];
      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v49 = v1[19];
      if ((v49 & 7) != 0)
      {
        atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v50 = v1[18];
      if ((v50 & 7) != 0)
      {
        atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v51 = v1[17];
      if ((v51 & 7) != 0)
      {
        atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v52 = v1[16];
      if ((v52 & 7) != 0)
      {
        atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v53 = v1[15];
      if ((v53 & 7) != 0)
      {
        atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v54 = v1[14];
      if ((v54 & 7) != 0)
      {
        atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v55 = v1[13];
      if ((v55 & 7) != 0)
      {
        atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v56 = v1[12];
      if ((v56 & 7) != 0)
      {
        atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v57 = v1[11];
      if ((v57 & 7) != 0)
      {
        atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v58 = v1[10];
      if ((v58 & 7) != 0)
      {
        atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v59 = v1[9];
      if ((v59 & 7) != 0)
      {
        atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v60 = v1[8];
      if ((v60 & 7) != 0)
      {
        atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v61 = v1[7];
      if ((v61 & 7) != 0)
      {
        atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v62 = v1[6];
      if ((v62 & 7) != 0)
      {
        atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v63 = v1[5];
      if ((v63 & 7) != 0)
      {
        atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v64 = v1[4];
      if ((v64 & 7) != 0)
      {
        atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v65 = v1[3];
      if ((v65 & 7) != 0)
      {
        atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v66 = v1[2];
      if ((v66 & 7) != 0)
      {
        atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v67 = v1[1];
      if ((v67 & 7) != 0)
      {
        atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_ValueTypeRegistrar::Type *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_ValueTypeRegistrar::Type::Type(pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_ValueTypeRegistrar::Type *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3, const pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v8 = operator new(0x90uLL);
  sub_29A3DC14C(v8, a2, a3, a4);
  *this = v8;
  return this;
}

pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_ValueTypeRegistrar::Type *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_ValueTypeRegistrar::Type::Type(pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_ValueTypeRegistrar::Type *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfType *a3)
{
  v6 = operator new(0x90uLL);
  sub_29A3DC224(v6, a2, a3);
  *this = v6;
  return this;
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_ValueTypeRegistrar::Type::~Type(char **this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    sub_29A3E1108(this, v1);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    sub_29A3E1108(this, v1);
  }
}

uint64_t sub_29A3CE294(uint64_t a1, const std::string *a2)
{
  v9[2] = *MEMORY[0x29EDCA608];
  std::string::operator=((a1 + 48), a2);
  if (*(a1 + 40))
  {
    std::operator+<char>();
    v3 = std::string::append(&__p, ">");
    v4 = v3->__r_.__value_.__r.__words[0];
    v9[0] = v3->__r_.__value_.__l.__size_;
    *(v9 + 7) = *(&v3->__r_.__value_.__r.__words[1] + 7);
    v5 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    v6 = v9[0];
    *(a1 + 72) = v4;
    *(a1 + 80) = v6;
    *(a1 + 87) = *(v9 + 7);
    *(a1 + 95) = v5;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return a1;
}

void sub_29A3CE37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_ValueTypeRegistrar::Type::Dimensions(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  *(v2 + 136) = a2[1].n128_u64[0];
  *(v2 + 120) = result;
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_ValueTypeRegistrar::Type::DefaultUnit(uint64_t *result, uint64_t a2, int a3)
{
  v3 = *result;
  *(v3 + 96) = a2;
  *(v3 + 104) = a3;
  return result;
}

uint64_t sub_29A3CE424(uint64_t a1)
{
  v3[2] = *MEMORY[0x29EDCA608];
  v3[1] = 0;
  sub_29A18606C((a1 + 32), v3);
  sub_29A186B14(v3);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_ValueTypeRegistrar::_ValueTypeRegistrar(void *this, pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry *a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SdfSchemaBase(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this)
{
  v2 = 0;
  *(this + 1) = 0;
  *this = &unk_2A204D3B8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  do
  {
    v3 = this + v2;
    *(v3 + 11) = 0;
    *(v3 + 12) = 0;
    *(v3 + 72) = 0uLL;
    *(v3 + 56) = 0uLL;
    *(v3 + 22) = 1065353216;
    *(v3 + 13) = 0;
    *(v3 + 14) = 0;
    v2 += 72;
    v3[120] = 0;
  }

  while (v2 != 864);
  v4 = operator new(8uLL);
  pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::Sdf_ValueTypeRegistry(v4);
  *(this + 115) = v4;
  *(this + 116) = 0;
  *(this + 118) = 0;
  *(this + 117) = 0;
  sub_29A3D1530(v4, v5);
}

void sub_29A3CE5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v14 = v13;
  operator delete(v14);
  v16 = v12 + 848;
  v17 = -864;
  do
  {
    v16 = sub_29A3CE640(v16) - 72;
    v17 += 72;
  }

  while (v17);
  sub_29A3DC288(v11);
  sub_29A0F6078(v10, v18);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3CE640(uint64_t a1)
{
  v3 = (a1 + 40);
  sub_29A124AB0(&v3);
  return sub_29A2845A8(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_RegisterStandardFields(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this)
{
  v1[20] = *MEMORY[0x29EDCA608];
  v1[0] = this;
  sub_29A3D5330(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_RegisterPluginFields(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this)
{
  v12[4] = *MEMORY[0x29EDCA608];
  Instance = pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(this);
  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetAllPlugins(v10, Instance);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v12[3] = 0;
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_UpdateMetadataFromPlugins(v10, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  sub_29A3E284C(v12);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(v7);
  }

  v12[0] = v10;
  sub_29A17DEA8(v12);
  v3 = sub_29A3E28CC(v12, this);
  v4 = sub_29A3E2940(v3, pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_OnDidRegisterPlugins, 0);
  pxrInternal__aapl__pxrReserved__::TfNotice::_Register(v4, v6);
  return sub_29B290898(v6, v12);
}

void sub_29A3D1308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_29A3E284C(v17 - 56);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  *(v17 - 56) = &a17;
  sub_29A17DEA8((v17 - 56));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SdfSchemaBase(uint64_t a1)
{
  v2 = 0;
  *(a1 + 8) = 0;
  *a1 = &unk_2A204D3B8;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  do
  {
    v3 = a1 + v2;
    *(v3 + 88) = 0;
    *(v3 + 96) = 0;
    *(v3 + 72) = 0uLL;
    *(v3 + 56) = 0uLL;
    *(v3 + 88) = 1065353216;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
    v2 += 72;
    *(v3 + 120) = 0;
  }

  while (v2 != 864);
  v4 = operator new(8uLL);
  pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::Sdf_ValueTypeRegistry(v4);
  *(a1 + 920) = v4;
  *(a1 + 928) = 0;
  *(a1 + 944) = 0;
  *(a1 + 936) = 0;
  return a1;
}

void sub_29A3D1410(_Unwind_Exception *a1)
{
  v5 = v4;
  operator delete(v5);
  v7 = v3 + 848;
  v8 = -864;
  do
  {
    v7 = sub_29A3CE640(v7) - 72;
    v8 += 72;
  }

  while (v8);
  sub_29A3DC288(v2);
  sub_29A0F6078(v1, v9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::~SdfSchemaBase(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this)
{
  *this = &unk_2A204D3B8;
  v4 = (this + 928);
  sub_29A124AB0(&v4);
  sub_29A3E11A4(this + 115, 0);
  for (i = 0; i != -864; i -= 72)
  {
    v4 = (this + i + 888);
    sub_29A124AB0(&v4);
    sub_29A2845A8(this + i + 848);
  }

  sub_29A3DC288(this + 16);
  sub_29A0F6078(this + 1, v3);
}

{
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::~SdfSchemaBase(this);

  operator delete(v1);
}

void sub_29A3D1530(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfEnum *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v10 = &unk_2A204D428;
  v11 = 0;
  v2 = pxrInternal__aapl__pxrReserved__::SdfDefaultUnit(&v10, a2);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames))
  {
    v2 = sub_29A3DF3A8(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames))
  {
    v2 = sub_29A3DF3A8(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames))
  {
    v2 = sub_29A3DF3A8(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames))
  {
    v2 = sub_29A3DF3A8(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames))
  {
    v2 = sub_29A3DF3A8(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
  }

  Instance = pxrInternal__aapl__pxrReserved__::TfRegistryManager::GetInstance(v2);
  pxrInternal__aapl__pxrReserved__::TfRegistryManager::_SubscribeTo(Instance, &stru_2A20405C0);
  LOBYTE(v9[0]) = 0;
  sub_29A3DC378(&v10, "BOOL", v9);
}

void sub_29A3D3D10(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfEnum *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v7 = &unk_2A204D428;
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::SdfDefaultUnit(&v7, a2);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames))
  {
    sub_29A3DF3A8(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames))
  {
    sub_29A3DF3A8(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames))
  {
    sub_29A3DF3A8(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames))
  {
    sub_29A3DF3A8(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
  }

  *&v6 = 0;
  sub_29A3DE624(&v7, "Vec2i", &v6);
}

void sub_29A3D5330(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A3E11E0(a1, v2);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A3E1270(a1, (v3 + 8));
}

void *sub_29A3D5DB0(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, _BYTE *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = &unk_2A20443C3;
  v5[0] = *a3;
  v3 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, v5);
  sub_29A186B14(v5);
  return v3;
}

void sub_29A3D5E30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29A3D5E44(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[1] = off_2A2047A80;
  sub_29A18ECC8(v7, a3);
  v5 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A3D5ED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29A3D5EF0(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const void ****a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[1] = &off_2A2042030;
  sub_29A187864(v7, a3);
  v5 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A3D5F80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3D5F9C(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, uint64_t a2@<X8>)
{
  if (sub_29A1EFC10(a1))
  {
    v4 = sub_29A1EFC48(a1);

    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidIdentifier(v4, a2);
  }

  else
  {
    sub_29A008E78(a2, "Expected value of type std::string");
    *(a2 + 24) = 1;
  }
}

void *sub_29A3D6010(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[1] = &off_2A20495E8;
  sub_29A2575EC(v7, a3);
  v5 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A3D60A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29A3D60BC(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, __int128 *a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[1] = &off_2A2047B38;
  sub_29A215A28(v7, a3);
  v5 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A3D614C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29A3D6168(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t *a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v3 = *a3;
  v7[0] = v3;
  v7[1] = &off_2A2044E88 + 1;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7[0] = v4;
    }
  }

  v5 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A3D6200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29A3D6214(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, char *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = 0;
  sub_29A3E274C(v7, a3);
  v5 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A3D629C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3D62B8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *MEMORY[0x29EDCA608];
  v4 = &off_2A2046FA0;
  sub_29A1E3654(v3, a3);
}

void sub_29A3D6348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3D6364(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, uint64_t a2@<X8>)
{
  if (sub_29A1F594C(a1))
  {
    v4 = sub_29A1F5A34(a1);

    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidAttributeConnectionPath(v4, a2);
  }

  else
  {
    sub_29A008E78(a2, "Expected value of type SdfPath");
    *(a2 + 24) = 1;
  }
}

void *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v5 = sub_29A160470(this + 2, a2);
  v7 = v5;
  if (!v5)
  {
    v24 = "sdf/schema.cpp";
    v25 = "_DoRegisterField";
    v26 = 1042;
    v27 = "SdfSchemaBase::FieldDefinition &pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(const TfToken &, const VtValue &)";
    v28 = 0;
    v29 = 4;
    v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v8)
    {
      v9 = (v8 + 16);
      if (*(v8 + 39) < 0)
      {
        v9 = *v9;
      }
    }

    else
    {
      v9 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(&v24, "Field '%s' has not been created.", v6, v9);
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v5 + 5));
  v11 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a3);
  if (strcmp((*(Typeid + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v11 + 8) & 0x7FFFFFFFFFFFFFFFLL)))
  {
    v24 = "sdf/schema.cpp";
    v25 = "_DoRegisterField";
    v26 = 1052;
    v27 = "SdfSchemaBase::FieldDefinition &pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(const TfToken &, const VtValue &)";
    v28 = 0;
    v29 = 4;
    v12 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v12)
    {
      v13 = (v12 + 16);
      if (*(v12 + 39) < 0)
      {
        v13 = *v13;
      }
    }

    else
    {
      v13 = "";
    }

    pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName((v7 + 5), &v22);
    v14 = v23;
    v15 = v22.__vftable;
    pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(a3, &__p);
    if (v14 >= 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v15;
    }

    if (v21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__vftable;
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(&v24, "Registered fallback value for field '%s' does not match field type definition. (expected: %s, got: %s)", v16, v13, v17, p_p);
  }

  sub_29A1854E8(v7 + 5, a3);
  return v7 + 3;
}

void sub_29A3D6588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A3D65C0(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[1] = off_2A20479C8;
  sub_29A18ECC8(v7, a3);
  v5 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A3D6650(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29A3D666C(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, _OWORD *a3)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v9[1] = &off_2A2048D70;
  v6 = operator new(0x18uLL);
  *v6 = *a3;
  atomic_store(0, v6 + 4);
  v9[0] = v6;
  atomic_fetch_add_explicit(v6 + 4, 1u, memory_order_relaxed);
  v7 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, v9);
  sub_29A186B14(v9);
  return v7;
}

void sub_29A3D6720(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29A3D6734(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, void *a3)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v5[1] = &unk_2A2044D1B;
  v5[0] = *a3;
  v3 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, v5);
  sub_29A186B14(v5);
  return v3;
}

void sub_29A3D67B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29A3D67C8(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, int *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = &unk_2A204475B;
  v5 = *a3;
  v3 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, &v5);
  sub_29A186B14(&v5);
  return v3;
}

void sub_29A3D6848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29A3D685C@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, uint64_t a2@<X8>)
{
  if (sub_29A346994(a1))
  {
    v4 = *sub_29A337248(a1) > 0.0;

    return sub_29A3DF540(a2, v4, "Value must be greater than 0");
  }

  else
  {
    result = sub_29A008E78(a2, "Expected value of type double");
    *(a2 + 24) = 1;
  }

  return result;
}

void *sub_29A3D68E0@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, uint64_t a2@<X8>)
{
  if (sub_29A1F594C(a1))
  {
    v4 = sub_29A1F5A34(a1);

    return pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidInheritPath(v4, a2);
  }

  else
  {
    result = sub_29A008E78(a2, "Expected value of type SdfPath");
    *(a2 + 24) = 1;
  }

  return result;
}

void sub_29A3D6950()
{
  v1 = *MEMORY[0x29EDCA608];
  v0 = &off_2A2049148;
  sub_29A242610();
}

void sub_29A3D69E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3D69FC(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, uint64_t a2@<X8>)
{
  if (sub_29A1FA710(a1))
  {
    v4 = sub_29A27A0F8(a1);
    if ((*v4 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*v4 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
    }

    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidIdentifier(EmptyString, a2);
  }

  else
  {
    sub_29A008E78(a2, "Expected value of type TfToken");
    *(a2 + 24) = 1;
  }
}

void *sub_29A3D6A84(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[1] = &off_2A2049370;
  sub_29A24CBF4(v7, a3);
  v5 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A3D6B14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3D6B30(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, uint64_t a2@<X8>)
{
  if (sub_29A3DF5E8(a1))
  {
    v4 = sub_29A3DF674(a1);

    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidPayload(v4, a2);
  }

  else
  {
    sub_29A008E78(a2, "Expected value of type SdfPayload");
    *(a2 + 24) = 1;
  }
}

void *sub_29A3D6BA0(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, int *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = &off_2A2048CA8 + 3;
  v5 = *a3;
  v3 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, &v5);
  sub_29A186B14(&v5);
  return v3;
}

void sub_29A3D6C20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3D6C34(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, std::string *a2@<X8>)
{
  if (sub_29A1EFC10(a1))
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
    v4 = sub_29A1EFC48(a1);
    v5 = *(v4 + 23);
    if (v5 < 0)
    {
      v5 = v4[1];
    }

    if (!v5)
    {
      sub_29A008E78(&v8, "Expected non-empty string");
      __p = v8;
      v7 = 1;
      sub_29A3DF8B0(a2, &__p);
      if (v7 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    sub_29A008E78(a2, "Expected value of type string");
    a2[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void sub_29A3D6D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 24) == 1 && *(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3D6D50@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_29A1EFC10(a1);
  if (result)
  {
    v4 = 0;
    *a2 = 0;
  }

  else
  {
    result = sub_29A008E78(a2, "Expected value of type string");
    v4 = 1;
  }

  *(a2 + 24) = v4;
  return result;
}

void sub_29A3D6DA0(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, uint64_t a2@<X8>)
{
  if (sub_29A1FA710(a1))
  {
    v4 = sub_29A27A0F8(a1);
    if ((*v4 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*v4 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
    }

    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidNamespacedIdentifier(EmptyString, a2);
  }

  else
  {
    sub_29A008E78(a2, "Expected value of type TfToken");
    *(a2 + 24) = 1;
  }
}

void *sub_29A3D6E28(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[1] = &off_2A20492B8;
  sub_29A248D14(v7, a3);
  v5 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A3D6EB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3D6ED4(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, uint64_t a2@<X8>)
{
  if (sub_29A3DF954(a1))
  {
    v4 = sub_29A3DF9E0(a1);

    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidReference(v4, a2);
  }

  else
  {
    sub_29A008E78(a2, "Expected value of type SdfReference");
    *(a2 + 24) = 1;
  }
}

void *sub_29A3D6F44@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, uint64_t a2@<X8>)
{
  if (sub_29A1F594C(a1))
  {
    v4 = sub_29A1F5A34(a1);

    return pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidSpecializesPath(v4, a2);
  }

  else
  {
    result = sub_29A008E78(a2, "Expected value of type SdfPath");
    *(a2 + 24) = 1;
  }

  return result;
}

void *sub_29A3D6FB4(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TsSpline *a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[1] = &off_2A20496D0;
  sub_29A25B92C(v7, a3);
  v5 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A3D7044(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29A3D7060@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, uint64_t a2@<X8>)
{
  if (sub_29A1F594C(a1))
  {
    v4 = sub_29A1F5A34(a1);

    return pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidRelationshipTargetPath(v4, a2);
  }

  else
  {
    result = sub_29A008E78(a2, "Expected value of type SdfPath");
    *(a2 + 24) = 1;
  }

  return result;
}

void sub_29A3D70D0()
{
  v1 = *MEMORY[0x29EDCA608];
  v0 = &off_2A2049080;
  sub_29A23FC78();
}

void sub_29A3D7160(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3D717C(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, _BYTE *a2@<X8>)
{
  if (sub_29A3DFC50(a1))
  {
    v4 = sub_29A3DFCDC(a1);

    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidRelocate(v4, a2);
  }

  else
  {
    sub_29A008E78(a2, "Expected value of type SdfRelocate");
    a2[24] = 1;
  }
}

void *sub_29A3D71EC(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[1] = &off_2A2048FB8;
  sub_29A23F794(v7, a3);
  v5 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A3D727C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3D7298(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, uint64_t a2@<X8>)
{
  if (sub_29A1F594C(a1))
  {
    v4 = sub_29A1F5A34(a1);

    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidRelocatesSourcePath(v4, a2);
  }

  else
  {
    sub_29A008E78(a2, "Expected value of type SdfPath");
    *(a2 + 24) = 1;
  }
}

void sub_29A3D7308(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, _BYTE *a2@<X8>)
{
  if (sub_29A1F594C(a1))
  {
    v4 = sub_29A1F5A34(a1);

    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidRelocatesTargetPath(v4, a2);
  }

  else
  {
    sub_29A008E78(a2, "Expected value of type SdfPath");
    a2[24] = 1;
  }
}

void *sub_29A3D7378(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, int *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = &off_2A2049888 + 3;
  v5 = *a3;
  v3 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, &v5);
  sub_29A186B14(&v5);
  return v3;
}

void sub_29A3D73F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3D740C()
{
  v1 = *MEMORY[0x29EDCA608];
  v0 = &off_2A2048B60;
  sub_29A22C0F0();
}

void sub_29A3D749C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3D74B8(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, uint64_t a2@<X8>)
{
  if (sub_29A1EFC10(a1))
  {
    v4 = sub_29A1EFC48(a1);

    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidSubLayer(v4, a2);
  }

  else
  {
    sub_29A008E78(a2, "Expected value of type std::string");
    *(a2 + 24) = 1;
  }
}

void sub_29A3D7528()
{
  v1 = *MEMORY[0x29EDCA608];
  v0 = &off_2A2048AA8;
  sub_29A22B8E0();
}

void sub_29A3D75B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3D75D4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *MEMORY[0x29EDCA608];
  v4 = &off_2A2049200;
  sub_29A2430C0(v3, a3);
}

void sub_29A3D7664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29A3D7680(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const void ***a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[1] = &off_2A2049438;
  sub_29A24D9BC(v7, a3);
  v5 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A3D7710(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3D772C(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, _BYTE *a2@<X8>)
{
  if (sub_29A1EFC10(a1))
  {
    v4 = sub_29A1EFC48(a1);

    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidVariantSelection(v4, a2);
  }

  else
  {
    sub_29A008E78(a2, "Expected value of type std::string");
    a2[24] = 1;
  }
}

void *sub_29A3D779C(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, int *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = &off_2A20494F0 + 3;
  v5 = *a3;
  v3 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_DoRegisterField(a1, a2, &v5);
  sub_29A186B14(&v5);
  return v3;
}

void sub_29A3D781C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3D7830()
{
  v1 = *MEMORY[0x29EDCA608];
  v0 = &off_2A2048F00;
  sub_29A23E64C();
}

void sub_29A3D78C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3D78DC(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, uint64_t a2@<X8>)
{
  if (sub_29A1EFC10(a1))
  {
    v4 = sub_29A1EFC48(a1);

    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidVariantIdentifier(v4, a2);
  }

  else
  {
    sub_29A008E78(a2, "Expected value of type std::string");
    *(a2 + 24) = 1;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_UpdateMetadataFromPlugins(uint64_t *a1@<X1>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1741BE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741BE0))
  {
    sub_29A008E78(qword_2A1741BC8, "SdfMetadata");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1741BC8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1741BE0);
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a1 != a1[1])
  {
    sub_29A17F138(*a1);
  }
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_OnDidRegisterPlugins(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this, const pxrInternal__aapl__pxrReserved__::PlugNotice::DidRegisterPlugins *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_UpdateMetadataFromPlugins(a2 + 1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  sub_29A3E284C(v3);
}

void sub_29A3D95FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_29A3E284C(&a19);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3, int a4)
{
  v27 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition::FieldDefinition(v23, this, a2, a3);
  if (a4)
  {
    v26[24] = 1;
  }

  sub_29A3DFE7C(v14, a2, v23);
  sub_29A3E0260(v18, v14);
  v7 = sub_29A3E2D54(this + 16, v18, v18);
  v9 = v8;
  v13 = &v22;
  sub_29A3E01A4(&v13);
  sub_29A186B14(&v20);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v18[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v18[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = &v17;
  sub_29A3E01A4(&v13);
  sub_29A186B14(&v16);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v14[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v14[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v9 & 1) == 0)
  {
    v18[0] = "sdf/schema.cpp";
    v18[1] = "_CreateField";
    v19 = 1028;
    v20 = "SdfSchemaBase::FieldDefinition &pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(const TfToken &, const VtValue &, BOOL)";
    v21 = 0;
    v10 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v10)
    {
      v11 = (v10 + 16);
      if (*(v10 + 39) < 0)
      {
        v11 = *v11;
      }
    }

    else
    {
      v11 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v18, 1, "Duplicate creation for field '%s'", v11);
  }

  v18[0] = v26;
  sub_29A3E01A4(v18);
  sub_29A186B14(&v25);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v7 + 3;
}

uint64_t sub_29A3D9854(uint64_t a1)
{
  v4 = (a1 + 40);
  sub_29A3E01A4(&v4);
  sub_29A186B14(a1 + 24);
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t sub_29A3D98C8(uint64_t a1)
{
  v4 = (a1 + 32);
  sub_29A3E01A4(&v4);
  sub_29A186B14(a1 + 16);
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_ExtendSpecDefinition(uint64_t result, unsigned int a2)
{
  if ((*(result + 72 * a2 + 120) & 1) == 0)
  {
    v6[0] = "sdf/schema.cpp";
    v6[1] = "_ExtendSpecDefinition";
    v6[2] = 1068;
    v6[3] = "SdfSchemaBase::_SpecDefiner pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_ExtendSpecDefinition(SdfSpecType)";
    v7 = 0;
    v8 = 4;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2047348, a2, __p);
    if (v5 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v6, "No definition for spec type %s", v2, v3);
  }

  return result;
}

void sub_29A3D99E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFieldDefinition(uint64_t a1, void *a2)
{
  v2 = sub_29A16039C((a1 + 16), a2);
  if (v2)
  {
    return v2 + 3;
  }

  else
  {
    return 0;
  }
}

void *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFallback(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if ((atomic_load_explicit(&qword_2A1741C10, memory_order_acquire) & 1) == 0)
  {
    v4 = this;
    v5 = a2;
    sub_29B29DE88();
    this = v4;
    a2 = v5;
  }

  v2 = sub_29A16039C(this + 2, a2);
  if (v2)
  {
    return v2 + 5;
  }

  else
  {
    return &unk_2A1741C18;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsRegistered(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v4 = sub_29A16039C(this + 2, a2);
  v5 = v4;
  if (a3 && v4)
  {
    sub_29A1854E8(a3, v4 + 5);
  }

  return v5 != 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSchemaBase::HoldsChildren(uint64_t a1, void *a2)
{
  v2 = sub_29A16039C((a1 + 16), a2);
  if (v2)
  {
    v3 = *(v2 + 82);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSchemaBase::CastToTypeOf@<X0>(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a3@<X2>, void *a4@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  v9 = 0;
  v6 = sub_29A16039C(this + 2, a2);
  if (v6)
  {
    sub_29A1854E8(&v8, v6 + 5);
    if (v9)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeOf(a3, &v8, a4);
    }

    else
    {
      sub_29A186EF4(a4, a3);
    }
  }

  else
  {
    a4[1] = 0;
  }

  return sub_29A186B14(&v8);
}

void sub_29A3D9BAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CheckAndGetSpecDefinition(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    sub_29B29DEFC(a2);
  }

  else
  {
    v3 = a1 + 72 * a2;
    if (*(v3 + 120))
    {
      return v3 + 56;
    }
  }

  v8[0] = "sdf/schema.cpp";
  v8[1] = "_CheckAndGetSpecDefinition";
  v8[2] = 1132;
  v8[3] = "const SdfSchemaBase::SpecDefinition *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CheckAndGetSpecDefinition(SdfSpecType) const";
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2047348, a2, __p);
  if (v7 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "No definition for spec type %s", v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_29A3D9C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_IssueErrorForInvalidSpecType(uint64_t a1, int a2)
{
  v3[0] = "sdf/schema.cpp";
  v3[1] = "_IssueErrorForInvalidSpecType";
  v3[2] = 1141;
  v3[3] = "const SdfSchemaBase::SpecDefinition *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_IssueErrorForInvalidSpecType(SdfSpecType) const";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 3, "Invalid spec type %d", a2);
  return 0;
}

void *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidFieldForSpec(uint64_t a1, void *a2, unsigned int a3)
{
  result = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CheckAndGetSpecDefinition(a1, a3);
  if (result)
  {
    return (sub_29A16039C(result, a2) != 0);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFields@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CheckAndGetSpecDefinition(a1, a2);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::GetFields(result, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetMetadataFields@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CheckAndGetSpecDefinition(a1, a2);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::GetMetadataFields(result, v5, v6, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetMetadataFieldDisplayGroup@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X2>, atomic_uint **a4@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CheckAndGetSpecDefinition(a1, a2);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::GetMetadataFieldDisplayGroup(result, a3, a4);
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetRequiredFields(uint64_t a1, unsigned int a2)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CheckAndGetSpecDefinition(a1, a2);
  if (v2)
  {
    return v2 + 40;
  }

  if ((atomic_load_explicit(&qword_2A1741BC0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A1741BC0))
    {
      v4 = operator new(0x18uLL);
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      qword_2A1741BB8 = v4;
      __cxa_guard_release(&qword_2A1741BC0);
    }
  }

  return qword_2A1741BB8;
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidValue(atomic_ullong ***this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a2 + 1))
  {
    goto LABEL_31;
  }

  if (sub_29A185258(a2))
  {
    v6 = *(a2 + 1);
    if ((v6 & 4) != 0)
    {
      v7 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v7 = *a2;
    }

    v8 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(v7);
    size = v9;
    v43.__r_.__value_.__r.__words[0] = v8;
    v43.__r_.__value_.__l.__size_ = v9;
    v43.__r_.__value_.__r.__words[2] = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v7);
    v44 = v11;
    while (size != v11 || v11 && v43.__r_.__value_.__r.__words[0] != v43.__r_.__value_.__r.__words[2])
    {
      v13 = sub_29A185F48(&v43, v11, v12);
      pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidValue(&v41, this, (*v13 + 56));
      if (v42)
      {
        v24 = sub_29A185F48(&v43, v14, v15);
        v27 = (*v24 + 32);
        if (*(*v24 + 55) < 0)
        {
          v27 = *v27;
        }

        v28 = sub_29A185F48(&v43, v25, v26);
        pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName((*v28 + 56), &__p);
        if (v38 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__vftable;
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("Value for key '%s' does not have a valid scene description type (%s)", v29, v30, v27, p_p);
        if (v38 < 0)
        {
          operator delete(__p.__vftable);
        }

        if (SHIBYTE(v40) < 0)
        {
          sub_29A008D14(a3, v39[0], v39[1]);
          v36 = SHIBYTE(v40);
          *(a3 + 24) = 1;
          if (v36 < 0)
          {
            operator delete(v39[0]);
          }
        }

        else
        {
          *a3 = *v39;
          *(a3 + 16) = v40;
          *(a3 + 24) = 1;
        }

        if (v42 == 1)
        {
          goto LABEL_40;
        }

        return;
      }

      sub_29A186174(&v43);
      size = v43.__r_.__value_.__l.__size_;
      v11 = v44;
    }

    goto LABEL_31;
  }

  if (sub_29A1FD484(a2))
  {
    v16 = *(a2 + 1);
    if ((v16 & 4) != 0)
    {
      v17 = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v17 = *a2;
    }

    if (!pxrInternal__aapl__pxrReserved__::SdfPathExpression::IsAbsolute(v17))
    {
      pxrInternal__aapl__pxrReserved__::SdfPathExpression::GetText(&v41, v17);
      v18 = std::string::insert(&v41, 0, "pathExpression paths must be absolute paths (");
      v19 = *&v18->__r_.__value_.__l.__data_;
      v43.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v43.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v20 = std::string::append(&v43, ")");
      v22 = v20->__r_.__value_.__r.__words[0];
      v21 = v20->__r_.__value_.__l.__size_;
      LODWORD(v39[0]) = v20->__r_.__value_.__r.__words[2];
      *(v39 + 3) = *(&v20->__r_.__value_.__r.__words[2] + 3);
      v23 = SHIBYTE(v20->__r_.__value_.__r.__words[2]);
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (v23 < 0)
      {
        goto LABEL_37;
      }

      goto LABEL_30;
    }

LABEL_31:
    *a3 = 0;
    *(a3 + 24) = 0;
    return;
  }

  v41.__r_.__value_.__r.__words[0] = 0;
  v43.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(this[115], a2, &v41);
  IsEmpty = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::_IsEmpty(&v43);
  if ((v41.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v41.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (!IsEmpty)
  {
    goto LABEL_31;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(a2, &v41);
  v33 = std::string::insert(&v41, 0, "Value does not have a valid scene description type (");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v43, ")");
  v22 = v35->__r_.__value_.__r.__words[0];
  v21 = v35->__r_.__value_.__l.__size_;
  LODWORD(v39[0]) = v35->__r_.__value_.__r.__words[2];
  *(v39 + 3) = *(&v35->__r_.__value_.__r.__words[2] + 3);
  v23 = SHIBYTE(v35->__r_.__value_.__r.__words[2]);
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (v23 < 0)
  {
LABEL_37:
    sub_29A008D14(a3, v22, v21);
    *(a3 + 24) = 1;
    operator delete(v22);
    goto LABEL_38;
  }

LABEL_30:
  *a3 = v22;
  *(a3 + 8) = v21;
  *(a3 + 16) = v39[0];
  *(a3 + 19) = *(v39 + 3);
  *(a3 + 23) = v23;
  *(a3 + 24) = 1;
LABEL_38:
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

LABEL_40:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }
}

void sub_29A3DA238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  operator delete(v29);
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this, const char *a2)
{
  v2 = *(this + 115);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v4, a2);
  result = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(v2, &v4);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(uint64_t a1)
{
  v1 = *(a1 + 920);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v3);
  result = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(v1, &v3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidIdentifier(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsValidIdentifier(a1))
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    std::operator+<char>();
    v3 = std::string::append(&__p, " is not a valid identifier");
    v5 = v3->__r_.__value_.__r.__words[0];
    size = v3->__r_.__value_.__l.__size_;
    v8[0] = v3->__r_.__value_.__r.__words[2];
    *(v8 + 3) = *(&v3->__r_.__value_.__r.__words[2] + 3);
    v6 = SHIBYTE(v3->__r_.__value_.__r.__words[2]);
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (v6 < 0)
    {
      sub_29A008D14(a2, v5, size);
      *(a2 + 24) = 1;
      operator delete(v5);
    }

    else
    {
      *a2 = v5;
      *(a2 + 8) = size;
      *(a2 + 16) = v8[0];
      *(a2 + 19) = *(v8 + 3);
      *(a2 + 23) = v6;
      *(a2 + 24) = 1;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29A3DA4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  operator delete(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidNamespacedIdentifier(size_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsValidNamespacedIdentifier(a1))
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    std::operator+<char>();
    v3 = std::string::append(&__p, " is not a valid identifier");
    v5 = v3->__r_.__value_.__r.__words[0];
    size = v3->__r_.__value_.__l.__size_;
    v8[0] = v3->__r_.__value_.__r.__words[2];
    *(v8 + 3) = *(&v3->__r_.__value_.__r.__words[2] + 3);
    v6 = SHIBYTE(v3->__r_.__value_.__r.__words[2]);
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (v6 < 0)
    {
      sub_29A008D14(a2, v5, size);
      *(a2 + 24) = 1;
      operator delete(v5);
    }

    else
    {
      *a2 = v5;
      *(a2 + 8) = size;
      *(a2 + 16) = v8[0];
      *(a2 + 19) = *(v8 + 3);
      *(a2 + 23) = v6;
      *(a2 + 24) = 1;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29A3DA5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  operator delete(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidVariantIdentifier(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29A2254B4(v11, 1uLL);
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  sub_29A229DD4(__p, a1, "");
  v4 = sub_29A3E02E4(__p);
  sub_29A229D90(__p);
  if (v4)
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    if (*(a1 + 23) >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s is not a valid variant name", v5, v6, v7);
    if (SHIBYTE(v10) < 0)
    {
      sub_29A008D14(a2, __p[0], __p[1]);
      v8 = SHIBYTE(v10);
      *(a2 + 24) = 1;
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *a2 = *__p;
      *(a2 + 16) = v10;
      *(a2 + 24) = 1;
    }
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(*(&v13 + 1));
  }

  if (SBYTE7(v13) < 0)
  {
    operator delete(v12);
  }

  __p[0] = v11;
  sub_29A1E234C(__p);
}

void sub_29A3DA734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 __p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (SHIBYTE(a13) < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(a1);
    (*(*v27 + 16))(v27);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s is not a valid variant name due to '%s'", v28, v29);
    if (SHIBYTE(a13) < 0)
    {
      sub_29A008D14(v24, __p, *(&__p + 1));
      *(v24 + 24) = 1;
      operator delete(__p);
    }

    else
    {
      *v24 = __p;
      *(v24 + 16) = a13;
      *(v24 + 24) = 1;
    }

    __cxa_end_catch();
    JUMPOUT(0x29A3DA6ECLL);
  }

  sub_29A22545C(&a24);
  _Unwind_Resume(a1);
}