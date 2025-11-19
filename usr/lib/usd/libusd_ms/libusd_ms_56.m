uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::_UpdateChildNames(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 64);
  result = a1 + 64;
  if ((v3 & 1) == 0)
  {
    result = sub_29B298758(result, a1);
    if (result)
    {
      sub_29A1DA6E4(a1);
    }
  }

  return result;
}

void sub_29A2F5FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 - 48) = &a10;
  sub_29A1E234C((v10 - 48));
  _Unwind_Resume(a1);
}

_DWORD *sub_29A2F602C@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _DWORD *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(a1, &v7);
  pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(a2, &v7, &v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  sub_29A1DE3A4(&v7);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapper(a1, &v9, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  return sub_29A1DE3A4(&v9);
}

void sub_29A2F60B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A2F60DC@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_29A1E045C(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v3, &v6);
  TargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath(&v6);
  sub_29A1E21F4(a2, TargetPath);
  sub_29A1E2240(a2 + 1, TargetPath + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  return sub_29A1DE3A4(&v6);
}

void sub_29A2F6154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::Sdf_Children(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::_UpdateChildNames(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 64);
  result = a1 + 64;
  if ((v3 & 1) == 0)
  {
    result = sub_29B2984B8(result, a1);
    if (result)
    {
      sub_29A1DA6E4(a1);
    }
  }

  return result;
}

void sub_29A2F63E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 - 48) = &a10;
  sub_29A124AB0((v10 - 48));
  _Unwind_Resume(a1);
}

_DWORD *sub_29A2F641C@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_29A1E045C(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v3, &v7);
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v7);
  if (*(Name + 23) < 0)
  {
    sub_29A008D14(a2, *Name, Name[1]);
  }

  else
  {
    v5 = *Name;
    *(a2 + 16) = Name[2];
    *a2 = v5;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  return sub_29A1DE3A4(&v7);
}

void sub_29A2F6498(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::Sdf_Children(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::GetSize()
{
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::_UpdateChildNames();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::_UpdateChildNames(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 64);
  result = a1 + 64;
  if ((v3 & 1) == 0)
  {
    result = sub_29B2984B8(result, a1);
    if (result)
    {
      sub_29A1DA6E4(a1);
    }
  }

  return result;
}

void sub_29A2F672C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 - 48) = &a10;
  sub_29A124AB0((v10 - 48));
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity **sub_29A2F6760(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    v7[0] = "sdf/declareHandles.h";
    v7[1] = "operator->";
    v7[2] = 80;
    v7[3] = "SpecType *pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>::operator->() const [T = pxrInternal__aapl__pxrReserved__::SdfPrimSpec]";
    v8 = 0;
    v9 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B48B204 & 0x7FFFFFFFFFFFFFFFLL), v5);
    if (v6 >= 0)
    {
      v4 = v5;
    }

    else
    {
      v4 = v5[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v7, "Dereferenced an invalid %s", v3, v4);
  }

  return a1;
}

void sub_29A2F6808(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29A2F6780);
}

void sub_29A2F6820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29A2F683C@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_29A2F6760(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v3, &v7);
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v7);
  if (*(Name + 23) < 0)
  {
    sub_29A008D14(a2, *Name, Name[1]);
  }

  else
  {
    v5 = *Name;
    *(a2 + 16) = Name[2];
    *a2 = v5;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  return sub_29A1DE3A4(&v7);
}

void sub_29A2F68B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::Sdf_Children(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::GetSize()
{
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::_UpdateChildNames();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::_UpdateChildNames(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 64);
  result = a1 + 64;
  if ((v3 & 1) == 0)
  {
    result = sub_29B2984B8(result, a1);
    if (result)
    {
      sub_29A1DA6E4(a1);
    }
  }

  return result;
}

void sub_29A2F6B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 - 48) = &a10;
  sub_29A124AB0((v10 - 48));
  _Unwind_Resume(a1);
}

_DWORD *sub_29A2F6B80@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_29A1F190C(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v3, &v7);
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v7);
  if (*(Name + 23) < 0)
  {
    sub_29A008D14(a2, *Name, Name[1]);
  }

  else
  {
    v5 = *Name;
    *(a2 + 16) = Name[2];
    *a2 = v5;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  return sub_29A1DE3A4(&v7);
}

void sub_29A2F6BFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::Sdf_Children(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::GetSize()
{
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::_UpdateChildNames();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::_UpdateChildNames(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 64);
  result = a1 + 64;
  if ((v3 & 1) == 0)
  {
    result = sub_29B2984B8(result, a1);
    if (result)
    {
      sub_29A1DA6E4(a1);
    }
  }

  return result;
}

void sub_29A2F6E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 - 48) = &a10;
  sub_29A124AB0((v10 - 48));
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity **sub_29A2F6EC4(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    v7[0] = "sdf/declareHandles.h";
    v7[1] = "operator->";
    v7[2] = 80;
    v7[3] = "SpecType *pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec>::operator->() const [T = pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec]";
    v8 = 0;
    v9 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B4870B6 & 0x7FFFFFFFFFFFFFFFLL), v5);
    if (v6 >= 0)
    {
      v4 = v5;
    }

    else
    {
      v4 = v5[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v7, "Dereferenced an invalid %s", v3, v4);
  }

  return a1;
}

void sub_29A2F6F6C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29A2F6EE4);
}

void sub_29A2F6F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29A2F6FA0@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_29A2F6EC4(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v3, &v7);
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v7);
  if (*(Name + 23) < 0)
  {
    sub_29A008D14(a2, *Name, Name[1]);
  }

  else
  {
    v5 = *Name;
    *(a2 + 16) = Name[2];
    *a2 = v5;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  return sub_29A1DE3A4(&v7);
}

void sub_29A2F701C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::Sdf_Children(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::GetSize()
{
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::_UpdateChildNames();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::_UpdateChildNames(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 64);
  result = a1 + 64;
  if ((v3 & 1) == 0)
  {
    result = sub_29B2984B8(result, a1);
    if (result)
    {
      sub_29A1DA6E4(a1);
    }
  }

  return result;
}

void sub_29A2F72B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 - 48) = &a10;
  sub_29A124AB0((v10 - 48));
  _Unwind_Resume(a1);
}

void sub_29A2F72E4(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, _DWORD *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetVariantSelection(a1, v10);
  *v14 = *v10;
  v15 = v11;
  v10[1] = 0;
  v11 = 0;
  v10[0] = 0;
  if (v13 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a1, v10);
  EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v9);
  if ((v9 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = (v9 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
    v7 = EmptyString;
  }

  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v8 = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection(v10, v7, v8, a3);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v10 + 1);
  sub_29A1DE3A4(v10);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_29A2F73FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_29A1DCEA8(&a11);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29A2F7448(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, _DWORD *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetVariantSelection(a1, v6);
  v10 = *v6;
  v11 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  if (v9 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(v6[0]);
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a1, &v4);
  sub_29A008E78(v6, "");
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection(&v4, &v10, v6, a2);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5);
  sub_29A1DE3A4(&v4);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }
}

void sub_29A2F751C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8(&a10);
  if (*(v16 - 25) < 0)
  {
    operator delete(*(v16 - 48));
  }

  _Unwind_Resume(a1);
}

_DWORD *sub_29A2F7560@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_29A1F38D8(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v3, &v7);
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v7);
  if (*(Name + 23) < 0)
  {
    sub_29A008D14(a2, *Name, Name[1]);
  }

  else
  {
    v5 = *Name;
    *(a2 + 16) = Name[2];
    *a2 = v5;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  return sub_29A1DE3A4(&v7);
}

void sub_29A2F75DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::Sdf_Children(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::GetSize()
{
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::_UpdateChildNames();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::_UpdateChildNames(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 64);
  result = a1 + 64;
  if ((v3 & 1) == 0)
  {
    result = sub_29B2984B8(result, a1);
    if (result)
    {
      sub_29A1DA6E4(a1);
    }
  }

  return result;
}

void sub_29A2F7870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 - 48) = &a10;
  sub_29A124AB0((v10 - 48));
  _Unwind_Resume(a1);
}

void sub_29A2F78A4(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, void *a2@<X1>, _DWORD *a3@<X8>)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  sub_29A008E78(__p, "");
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection(a1, EmptyString, __p, a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2F7928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity **sub_29A2F7944(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    v7[0] = "sdf/declareHandles.h";
    v7[1] = "operator->";
    v7[2] = 80;
    v7[3] = "SpecType *pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec>::operator->() const [T = pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec]";
    v8 = 0;
    v9 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B48B356 & 0x7FFFFFFFFFFFFFFFLL), v5);
    if (v6 >= 0)
    {
      v4 = v5;
    }

    else
    {
      v4 = v5[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v7, "Dereferenced an invalid %s", v3, v4);
  }

  return a1;
}

void sub_29A2F79EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29A2F7964);
}

void sub_29A2F7A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29A2F7A20@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_29A2F7944(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v3, &v7);
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v7);
  if (*(Name + 23) < 0)
  {
    sub_29A008D14(a2, *Name, Name[1]);
  }

  else
  {
    v5 = *Name;
    *(a2 + 16) = Name[2];
    *a2 = v5;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  return sub_29A1DE3A4(&v7);
}

void sub_29A2F7A9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A2F7B20(void **a1)
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
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_29A2F7B90()
{
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 64) = 0;
  *(v0 + 56) = 0;
  return v0;
}

void *sub_29A2F7BA4(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  return result;
}

uint64_t sub_29A2F7CD0(_BYTE *a1, uint64_t a2)
{
  *a1 = 1;

  return sub_29B293A0C(a2);
}

uint64_t sub_29A2F7D48(uint64_t a1, const std::string::value_type *a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(va, a2, 0);
}

void sub_29A2F7DA8()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
}

uint64_t sub_29A2F7E50(uint64_t a1, ...)
{
  va_start(va, a1);

  return pxrInternal__aapl__pxrReserved__::TfToken::TfToken(va);
}

_DWORD *sub_29A2F7E80()
{

  return sub_29A1E2240((v0 + 20), (v1 + 20));
}

_DWORD *sub_29A2F7E98()
{

  return sub_29A1E21F4((v0 + 16), (v1 + 16));
}

uint64_t sub_29A2F7EB0(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(va, a2, 0);
}

void sub_29A2F7EC8()
{

  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
}

_DWORD *sub_29A2F7EE0(uint64_t **a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, atomic_uint *);

  return pxrInternal__aapl__pxrReserved__::SdfLayer::GetObjectAtPath(a1, va1, va);
}

_DWORD *sub_29A2F7EF8()
{

  return sub_29A1E2240((v0 + 20), (v1 + 4));
}

_DWORD *sub_29A2F7F10()
{

  return sub_29A1E21F4((v0 + 16), v1);
}

_DWORD *sub_29A2F7F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{

  return sub_29A1DCEA8(&a9);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::CreateSpec(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v17);
    Spec = pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateSpec(a1, a2, a3, a4);
    if (Spec)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v18);
      sub_29A2F81C8(__p);
      v9 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(a2);
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPushChild<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 84;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2047348, a3, __p);
    v10 = v16;
    v11 = __p[0];
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v13 = __p;
    if (v10 < 0)
    {
      v13 = v11;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Failed to create spec of type '%s' at <%s>", v13, Text);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A1DD644(v17);
  }

  else
  {
    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 73;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Invalid object type");
    return 0;
  }

  return Spec;
}

void sub_29A2F8144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t __p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, int a20)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a20);
  sub_29A1DD644(&a18);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType *sub_29A2F81C8@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!result)
  {
    result = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  v3 = *(result + 5);
  *a1 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::IsValidName(pxrInternal__aapl__pxrReserved__::TfToken *a1)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::IsValidName(EmptyString);
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::IsValidName(size_t *a1)
{
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidNamespacedIdentifier(a1, &__p);
  v1 = v5;
  if (v5 == 1 && v4 < 0)
  {
    operator delete(__p);
  }

  return v1 == 0;
}

void sub_29A2F851C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8(&a11);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A2F85D8@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, int *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a1, &v6);
  sub_29A2F5828(&v6, a2, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  return sub_29A1DE3A4(&v6);
}

void sub_29A2F863C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::Rename(pxrInternal__aapl__pxrReserved__::SdfSpec *a1)
{
  v2 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, v1);
  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::IsValidName();
}

void sub_29A2F8B84(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = sub_29A2EDBE4((a1 + 112));
  (*(*v3 + 136))(&v4);
  if (sub_29A1DE724(&v4))
  {
    if ((v5 & 4) != 0)
    {
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v4);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

uint64_t sub_29A2F8C94(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::TfToken>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A2F8D14(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::TfToken>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

void sub_29A2F8D94()
{
  v1 = *MEMORY[0x29EDCA608];
  v0 = &off_2A2049148;
  sub_29A242610();
}

void sub_29A2F8E2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::SetChildren(uint64_t a1, void **a2, uint64_t *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  sub_29A2F81C8(&v24);
  memset(v23, 0, sizeof(v23));
  v21[0] = 0;
  v21[1] = 0;
  __p = v21;
  v8 = a3[1];
  v27 = *a3;
  v28 = v8;
  while (v27 != v28)
  {
    v9 = sub_29A31B5A0(&v27, v6, v7);
    if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(v9))
    {
      goto LABEL_13;
    }

    v12 = sub_29A31B5A0(&v27, v10, v11);
    sub_29A2F5B6C(v12, &v25);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v22);
    if (v26 < 0)
    {
      operator delete(v25);
    }

    sub_29A31B870(&__p, &v22, &v22);
    v17 = 1;
    if ((v10 & 1) == 0)
    {
      v13 = sub_29A31B5A0(&v27, v10, v11);
      v14 = sub_29A2F5A90(v13);
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v14, &v19);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v19, &v25);
      v15 = v25;
      v16 = *a2;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
      sub_29A1DE3A4(&v25);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
      sub_29A1DE3A4(&v19);
      if (v15 == v16)
      {
        v17 = 0;
      }
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v17)
    {
LABEL_13:
      v18 = sub_29A31B5A0(&v27, v10, v11);
      sub_29A31B6A0(v23, v18);
    }

    sub_29A31B620(&v27);
  }

  sub_29A1602D4(&__p, v21[0]);
  sub_29A1DA6E4(a1);
}

void sub_29A2F97FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a35;
  sub_29A124AB0(&__p);
  sub_29A1602D4(v38 - 136, *(v38 - 128));
  __p = (v38 - 168);
  sub_29A124AB0(&__p);
  __p = &a38;
  sub_29A1F19E8(&__p);
  v40 = *(v38 - 176);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A2F9B28(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfAttributeSpec>>>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfAttributeSpec>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A2F9BA8(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfAttributeSpec>>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfAttributeSpec>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

void *sub_29A2F9C28(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (a2 + 1 == v2)
  {
    v4 = a2;
  }

  else
  {
    v3 = a2;
    do
    {
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v4 = v3 + 1;
      *v3 = v3[1];
      v3[1] = 0;
      v5 = v3 + 2;
      ++v3;
    }

    while (v5 != v2);
    v2 = *(a1 + 8);
  }

  while (v2 != v4)
  {
    v7 = *--v2;
    v6 = v7;
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *(a1 + 8) = v4;
  return a2;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::InsertChild(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3)
{
  v9[7] = *MEMORY[0x29EDCA608];
  sub_29A2F81C8(v9);
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a3))
  {
    v4 = sub_29A2F5A90(a3);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v4, &v6);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  __p[0] = "sdf/childrenUtils.cpp";
  __p[1] = "InsertChild";
  __p[2] = 273;
  __p[3] = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::InsertChild(const SdfLayerHandle &, const SdfPath &, const typename ChildPolicy::ValueType &, int) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy]";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Invalid child");
  if ((v9[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 0;
}

void sub_29A2FA398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, __int16 *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_29A1DD644(&__p);
  __p = (v31 - 112);
  sub_29A124AB0(&__p);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a12);
  __p = &a14;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a19);
  if ((a20 & 7) != 0)
  {
    atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a31 & 7) != 0)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

char *sub_29A2FA5B4(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 3) + 1;
    if (v11 >> 61)
    {
      sub_29A00C9A4();
    }

    v12 = a2 - v10;
    v13 = v7 - v10;
    v14 = v13 >> 2;
    if (v13 >> 2 <= v11)
    {
      v14 = ((v6 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 3;
    v24 = a1;
    if (v15)
    {
      v17 = sub_29A00C9BC(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v20 = v17;
    v21 = &v17[8 * v16];
    v22 = v21;
    v23 = &v17[8 * v15];
    sub_29A31BA90(&v20, a3);
    v4 = sub_29A31BC0C(a1, &v20, v4);
    sub_29A1541C0(&v20);
  }

  else if (a2 == v6)
  {
    v18 = *a3;
    *v6 = *a3;
    if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    a1[1] = v6 + 1;
  }

  else
  {
    sub_29A31BA04(a1, a2, v6, (a2 + 8));
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 1;
    if (v8)
    {
      v9 = 0;
    }

    sub_29A166F2C(v4, &a3[v9]);
  }

  return v4;
}

void sub_29A2FA704(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1541C0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::RemoveChild(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A2F81C8(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A2FA9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::MoveChildForBatchNamespaceEdit(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, int a5)
{
  v16[7] = *MEMORY[0x29EDCA608];
  sub_29A2F81C8(v16);
  sub_29A2FB27C(a2, a4, &v15);
  v10 = sub_29A2F5A90(a3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v10, &v14);
  v11 = v15;
  v12 = v14;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
  sub_29A1DE3A4(&v14);
  if (a5 != -2 || v11 != v12)
  {
    sub_29A1DA6E4(a1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
  sub_29A1DE3A4(&v15);
  if ((v16[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 1;
}

void sub_29A2FB0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, char *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, void **p_p)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v24 - 88));
  sub_29A1DD644(&p_p);
  p_p = &__p;
  sub_29A124AB0(&p_p);
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a10);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a18;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a21);
  if ((a22 & 7) != 0)
  {
    atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29A2FB27C(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, int *a3@<X8>)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::IsValidName(EmptyString))
  {

    sub_29A2F5828(a1, a2, a3);
  }

  else
  {
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }
}

void sub_29A2FB6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25)
{
  __p = &a22;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a25);
  v27 = *(v25 - 80);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::CanRemoveChildForBatchNamespaceEdit(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A2F81C8(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A2FBA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a10 = &a13;
  sub_29A124AB0(&a10);
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::CreateSpec(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v17);
    Spec = pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateSpec(a1, a2, a3, a4);
    if (Spec)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v18);
      sub_29A2FBCC8(__p);
      sub_29A2FBD2C(a2, &v14);
      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPushChild<pxrInternal__aapl__pxrReserved__::SdfPath>();
    }

    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 84;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2047348, a3, __p);
    v9 = v16;
    v10 = __p[0];
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v12 = __p;
    if (v9 < 0)
    {
      v12 = v10;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Failed to create spec of type '%s' at <%s>", v12, Text);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A1DD644(v17);
  }

  else
  {
    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 73;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Invalid object type");
    return 0;
  }

  return Spec;
}

void sub_29A2FBC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, unint64_t __p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, int a20)
{
  sub_29A1DCEA8(&a11);
  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a20);
  sub_29A1DD644(&a18);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType *sub_29A2FBCC8@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!result)
  {
    result = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  v3 = *(result + 3);
  *a1 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  return result;
}

_DWORD *sub_29A2FBD2C@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, int *a2@<X8>)
{
  TargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath(a1);
  sub_29A1E21F4(&v8, TargetPath);
  sub_29A1E2240(&v9, TargetPath + 1);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(a1, &v6);
  pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(&v8, &v6, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  sub_29A1DE3A4(&v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  return sub_29A1DE3A4(&v8);
}

void sub_29A2FBDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  sub_29A1DCEA8(&a9);
  sub_29A1DCEA8(&a11);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::SetChildren(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v19[5] = *MEMORY[0x29EDCA608];
  sub_29A2FBCC8(&v18);
  memset(v17, 0, sizeof(v17));
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v7 = a3[1];
  v15 = *a3;
  v16 = v7;
  while (v15 != v16)
  {
    v8 = sub_29A31BD04(&v15, v5, v6);
    if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(v8) & 1) == 0)
    {
      v11 = sub_29A31BD04(&v15, v9, v10);
      sub_29A2F60DC(v11, v19);
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
    }

    v12 = sub_29A31BD04(&v15, v9, v10);
    sub_29A1E0538(v17, v12);
    sub_29A31BD84(&v15);
  }

  sub_29A1E2AEC(&v13, v14[0]);
  sub_29A1DA6E4(a1);
}

void sub_29A2FC714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_29A1DCEA8(&a9);
  a24 = &a29;
  sub_29A1E234C(&a24);
  sub_29A1E2AEC(v32 - 136, *(v32 - 128));
  a24 = &a32;
  sub_29A1E234C(&a24);
  a24 = (v32 - 176);
  sub_29A1DEC08(&a24);
  v34 = *(v32 - 152);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29A2FC9D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = sub_29A2EDBE4((a1 + 112));
  (*(*v3 + 136))(&v4);
  if (sub_29A23DDC0(&v4))
  {
    if ((v5 & 4) != 0)
    {
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v4);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void **sub_29A2FCAE8(void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (a2 >> 61)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A00C9BC(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[8 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = &v4[v3 + *v2 - v8];
    sub_29A1E291C(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A1E29E8(&v12);
  }

  return result;
}

void sub_29A2FCB90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E29E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A2FCBA4(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfSpec>>>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfSpec>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A2FCC24(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfSpec>>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfSpec>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t sub_29A2FCCA4(uint64_t a1, uint64_t a2)
{
  sub_29A31BE88(&v8, a2 + 8, *(a1 + 8));
  v5 = v4;
  v6 = *(a1 + 8);
  if (v6 != v4)
  {
    do
    {
      v6 -= 2;
      sub_29A1E230C(a1, v6);
    }

    while (v6 != v5);
  }

  *(a1 + 8) = v5;
  return a2;
}

void sub_29A2FCD1C()
{
  v1 = *MEMORY[0x29EDCA608];
  v0 = &off_2A2048F00;
  sub_29A23E64C();
}

void sub_29A2FCDB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::InsertChild(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3)
{
  v9[7] = *MEMORY[0x29EDCA608];
  sub_29A2FBCC8(v9);
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a3))
  {
    v4 = sub_29A1E045C(a3);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v4, &v6);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  v7[0] = "sdf/childrenUtils.cpp";
  v7[1] = "InsertChild";
  v7[2] = 273;
  v7[3] = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::InsertChild(const SdfLayerHandle &, const SdfPath &, const typename ChildPolicy::ValueType &, int) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy]";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Invalid child");
  if ((v9[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 0;
}

void sub_29A2FD48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, char a14, uint64_t a15, uint64_t a16, int a17, int a18, int a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_29A1DD644(&a22);
  a22 = (v27 - 112);
  sub_29A1E234C(&a22);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a12);
  a22 = &a14;
  sub_29A1E234C(&a22);
  sub_29A1DCEA8(&a17);
  sub_29A1DCEA8(&a19);
  if ((a27 & 7) != 0)
  {
    atomic_fetch_add_explicit((a27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_29A2FD680(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v11 = *a1;
    v12 = ((v7 - *a1) >> 3) + 1;
    if (v12 >> 61)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = v6 - v11;
    v15 = v14 >> 2;
    if (v14 >> 2 <= v12)
    {
      v15 = ((v7 - *a1) >> 3) + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v16 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v17 = v13 >> 3;
    v24 = a1;
    if (v16)
    {
      v18 = sub_29A00C9BC(a1, v16);
    }

    else
    {
      v18 = 0;
    }

    v20 = v18;
    v21 = &v18[8 * v17];
    v22 = v21;
    v23 = &v18[8 * v16];
    sub_29A31BF84(&v20, a3);
    v4 = sub_29A23E100(a1, &v20, v4);
    sub_29A1E29E8(&v20);
  }

  else if (a2 == v7)
  {
    sub_29A1E21F4(a1[1], a3);
    sub_29A1E2240((v7 + 4), a3 + 1);
    a1[1] = v7 + 8;
  }

  else
  {
    sub_29A23DFE4(a1, a2, a1[1], a2 + 8);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 2;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    sub_29A2258F0(v4, &a3[v9]);
    sub_29A225948((v4 + 4), v10 + 1);
  }

  return v4;
}

void sub_29A2FD7D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E29E8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::RemoveChild(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A2FBCC8(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A2FDA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::MoveChildForBatchNamespaceEdit(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4, int a5)
{
  v16[7] = *MEMORY[0x29EDCA608];
  sub_29A2FBCC8(v16);
  sub_29A2F602C(a2, a4, &v15);
  v10 = sub_29A1E045C(a3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v10, &v14);
  v11 = v15;
  v12 = v14;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
  sub_29A1DE3A4(&v14);
  if (a5 != -2 || v11 != v12)
  {
    sub_29A1DA6E4(a1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
  sub_29A1DE3A4(&v15);
  if ((v16[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 1;
}

void sub_29A2FE0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, void **a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, void ***a22)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v22 - 88));
  sub_29A1DD644(&a22);
  a22 = &a13;
  sub_29A1E234C(&a22);
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a10);
  sub_29A1DCEA8(&a12);
  a13 = &a16;
  sub_29A1E234C(&a13);
  sub_29A1DCEA8(&a19);
  if ((a20 & 7) != 0)
  {
    atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29A2FE5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  va_copy(v11, va1);
  sub_29A1E234C(va);
  sub_29A1DCEA8(va2);
  v10 = *(v8 - 80);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::CanRemoveChildForBatchNamespaceEdit(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A2FBCC8(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A2FE8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a10 = &a13;
  sub_29A1E234C(&a10);
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::CreateSpec(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v17);
    Spec = pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateSpec(a1, a2, a3, a4);
    if (Spec)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v18);
      sub_29A2FEBA0(__p);
      v9 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(a2);
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPushChild<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 84;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2047348, a3, __p);
    v10 = v16;
    v11 = __p[0];
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v13 = __p;
    if (v10 < 0)
    {
      v13 = v11;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Failed to create spec of type '%s' at <%s>", v13, Text);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A1DD644(v17);
  }

  else
  {
    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 73;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Invalid object type");
    return 0;
  }

  return Spec;
}

void sub_29A2FEB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t __p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, int a20)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a20);
  sub_29A1DD644(&a18);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType *sub_29A2FEBA0@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!result)
  {
    result = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  v3 = *(result + 2);
  *a1 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::IsValidName(pxrInternal__aapl__pxrReserved__::TfToken *a1)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::IsValidName(EmptyString);
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::IsValidName(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidIdentifier(a1, &__p);
  v1 = v5;
  if (v5 == 1 && v4 < 0)
  {
    operator delete(__p);
  }

  return v1 == 0;
}

void sub_29A2FEEF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8(&a11);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A2FEFB0@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, _DWORD *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a1, &v6);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapperArg(&v6, a2, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  return sub_29A1DE3A4(&v6);
}

void sub_29A2FF014(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::Rename(pxrInternal__aapl__pxrReserved__::SdfSpec *a1)
{
  v2 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, v1);
  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::IsValidName();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::SetChildren(uint64_t a1, void **a2, uint64_t *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  sub_29A2FEBA0(&v24);
  memset(v23, 0, sizeof(v23));
  v21[0] = 0;
  v21[1] = 0;
  __p = v21;
  v8 = a3[1];
  v27 = *a3;
  v28 = v8;
  while (v27 != v28)
  {
    v9 = sub_29A31BD04(&v27, v6, v7);
    if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(v9))
    {
      goto LABEL_13;
    }

    v12 = sub_29A31BD04(&v27, v10, v11);
    sub_29A2F641C(v12, &v25);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v22);
    if (v26 < 0)
    {
      operator delete(v25);
    }

    sub_29A31B870(&__p, &v22, &v22);
    v17 = 1;
    if ((v10 & 1) == 0)
    {
      v13 = sub_29A31BD04(&v27, v10, v11);
      v14 = sub_29A1E045C(v13);
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v14, &v19);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v19, &v25);
      v15 = v25;
      v16 = *a2;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
      sub_29A1DE3A4(&v25);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
      sub_29A1DE3A4(&v19);
      if (v15 == v16)
      {
        v17 = 0;
      }
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v17)
    {
LABEL_13:
      v18 = sub_29A31BD04(&v27, v10, v11);
      sub_29A1E0538(v23, v18);
    }

    sub_29A31BD84(&v27);
  }

  sub_29A1602D4(&__p, v21[0]);
  sub_29A1DA6E4(a1);
}

void sub_29A2FFF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a35;
  sub_29A124AB0(&__p);
  sub_29A1602D4(v38 - 136, *(v38 - 128));
  __p = (v38 - 168);
  sub_29A124AB0(&__p);
  __p = &a38;
  sub_29A1DEC08(&__p);
  v40 = *(v38 - 176);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::InsertChild(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3)
{
  v9[7] = *MEMORY[0x29EDCA608];
  sub_29A2FEBA0(v9);
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a3))
  {
    v4 = sub_29A1E045C(a3);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v4, &v6);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  __p[0] = "sdf/childrenUtils.cpp";
  __p[1] = "InsertChild";
  __p[2] = 273;
  __p[3] = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::InsertChild(const SdfLayerHandle &, const SdfPath &, const typename ChildPolicy::ValueType &, int) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy]";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Invalid child");
  if ((v9[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 0;
}

void sub_29A300920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, __int16 *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_29A1DD644(&__p);
  __p = (v31 - 112);
  sub_29A124AB0(&__p);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a12);
  __p = &a14;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a19);
  if ((a20 & 7) != 0)
  {
    atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a31 & 7) != 0)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::RemoveChild(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A2FEBA0(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A300E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::MoveChildForBatchNamespaceEdit(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, int a5)
{
  v16[7] = *MEMORY[0x29EDCA608];
  sub_29A2FEBA0(v16);
  sub_29A3016A0(a2, a4, &v15);
  v10 = sub_29A1E045C(a3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v10, &v14);
  v11 = v15;
  v12 = v14;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
  sub_29A1DE3A4(&v14);
  if (a5 != -2 || v11 != v12)
  {
    sub_29A1DA6E4(a1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
  sub_29A1DE3A4(&v15);
  if ((v16[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 1;
}

void sub_29A301518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, char *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, void **p_p)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v24 - 88));
  sub_29A1DD644(&p_p);
  p_p = &__p;
  sub_29A124AB0(&p_p);
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a10);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a18;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a21);
  if ((a22 & 7) != 0)
  {
    atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void ***sub_29A3016A0@<X0>(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, _DWORD *a3@<X8>)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::IsValidName(EmptyString))
  {

    return pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapperArg(a1, a2, a3);
  }

  else
  {
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);

    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }
}

void sub_29A301B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25)
{
  __p = &a22;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a25);
  v27 = *(v25 - 80);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::CanRemoveChildForBatchNamespaceEdit(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A2FEBA0(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A301E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a10 = &a13;
  sub_29A124AB0(&a10);
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy>::CreateSpec(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v17);
    Spec = pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateSpec(a1, a2, a3, a4);
    if (Spec)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v18);
      sub_29A30211C(__p);
      v9 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(a2);
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPushChild<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 84;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2047348, a3, __p);
    v10 = v16;
    v11 = __p[0];
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v13 = __p;
    if (v10 < 0)
    {
      v13 = v11;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Failed to create spec of type '%s' at <%s>", v13, Text);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A1DD644(v17);
  }

  else
  {
    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 73;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Invalid object type");
    return 0;
  }

  return Spec;
}

void sub_29A302098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t __p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, int a20)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a20);
  sub_29A1DD644(&a18);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType *sub_29A30211C@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!result)
  {
    result = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  v3 = *(result + 1);
  *a1 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy>::IsValidName(pxrInternal__aapl__pxrReserved__::TfToken *a1)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::IsValidName(EmptyString);
}

void sub_29A30241C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8(&a11);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A3024D8@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, _DWORD *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a1, &v4);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendExpression(&v4, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5);
  return sub_29A1DE3A4(&v4);
}

void sub_29A30252C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy>::Rename(pxrInternal__aapl__pxrReserved__::SdfSpec *a1)
{
  v2 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, v1);
  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy>::IsValidName();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy>::SetChildren(uint64_t a1, void **a2, uint64_t *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  sub_29A30211C(&v24);
  memset(v23, 0, sizeof(v23));
  v21[0] = 0;
  v21[1] = 0;
  __p = v21;
  v8 = a3[1];
  v27 = *a3;
  v28 = v8;
  while (v27 != v28)
  {
    v9 = sub_29A31BD04(&v27, v6, v7);
    if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(v9))
    {
      goto LABEL_13;
    }

    v12 = sub_29A31BD04(&v27, v10, v11);
    sub_29A2F641C(v12, &v25);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v22);
    if (v26 < 0)
    {
      operator delete(v25);
    }

    sub_29A31B870(&__p, &v22, &v22);
    v17 = 1;
    if ((v10 & 1) == 0)
    {
      v13 = sub_29A31BD04(&v27, v10, v11);
      v14 = sub_29A1E045C(v13);
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v14, &v19);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v19, &v25);
      v15 = v25;
      v16 = *a2;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
      sub_29A1DE3A4(&v25);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
      sub_29A1DE3A4(&v19);
      if (v15 == v16)
      {
        v17 = 0;
      }
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v17)
    {
LABEL_13:
      v18 = sub_29A31BD04(&v27, v10, v11);
      sub_29A1E0538(v23, v18);
    }

    sub_29A31BD84(&v27);
  }

  sub_29A1602D4(&__p, v21[0]);
  sub_29A1DA6E4(a1);
}

void sub_29A30341C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a35;
  sub_29A124AB0(&__p);
  sub_29A1602D4(v38 - 136, *(v38 - 128));
  __p = (v38 - 168);
  sub_29A124AB0(&__p);
  __p = &a38;
  sub_29A1DEC08(&__p);
  v40 = *(v38 - 176);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy>::InsertChild(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3)
{
  v9[7] = *MEMORY[0x29EDCA608];
  sub_29A30211C(v9);
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a3))
  {
    v4 = sub_29A1E045C(a3);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v4, &v6);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  __p[0] = "sdf/childrenUtils.cpp";
  __p[1] = "InsertChild";
  __p[2] = 273;
  __p[3] = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy>::InsertChild(const SdfLayerHandle &, const SdfPath &, const typename ChildPolicy::ValueType &, int) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy]";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Invalid child");
  if ((v9[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 0;
}

void sub_29A303E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, __int16 *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_29A1DD644(&__p);
  __p = (v31 - 112);
  sub_29A124AB0(&__p);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a12);
  __p = &a14;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a19);
  if ((a20 & 7) != 0)
  {
    atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a31 & 7) != 0)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy>::RemoveChild(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A30211C(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A304324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy>::MoveChildForBatchNamespaceEdit(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3, void *a4, int a5)
{
  v16[7] = *MEMORY[0x29EDCA608];
  sub_29A30211C(v16);
  sub_29A304BA4(a2, a4, &v15);
  v10 = sub_29A1E045C(a3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v10, &v14);
  v11 = v15;
  v12 = v14;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
  sub_29A1DE3A4(&v14);
  if (a5 != -2 || v11 != v12)
  {
    sub_29A1DA6E4(a1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
  sub_29A1DE3A4(&v15);
  if ((v16[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 1;
}

void sub_29A304A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, char *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, void **p_p)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v24 - 88));
  sub_29A1DD644(&p_p);
  p_p = &__p;
  sub_29A124AB0(&p_p);
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a10);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a18;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a21);
  if ((a22 & 7) != 0)
  {
    atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void ***sub_29A304BA4@<X0>(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, void *a2@<X1>, _DWORD *a3@<X8>)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::IsValidName(EmptyString))
  {

    return pxrInternal__aapl__pxrReserved__::SdfPath::AppendExpression(a1, a3);
  }

  else
  {
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);

    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }
}

void sub_29A304FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25)
{
  __p = &a22;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a25);
  v27 = *(v25 - 80);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy>::CanRemoveChildForBatchNamespaceEdit(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A30211C(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A305340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a10 = &a13;
  sub_29A124AB0(&a10);
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::CreateSpec(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v17);
    Spec = pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateSpec(a1, a2, a3, a4);
    if (Spec)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v18);
      sub_29A30560C(__p);
      v9 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(a2);
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPushChild<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 84;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2047348, a3, __p);
    v10 = v16;
    v11 = __p[0];
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v13 = __p;
    if (v10 < 0)
    {
      v13 = v11;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Failed to create spec of type '%s' at <%s>", v13, Text);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A1DD644(v17);
  }

  else
  {
    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 73;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Invalid object type");
    return 0;
  }

  return Spec;
}

void sub_29A305588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t __p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, int a20)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a20);
  sub_29A1DD644(&a18);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType *sub_29A30560C@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!result)
  {
    result = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  v3 = *(result + 4);
  *a1 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::IsValidName(pxrInternal__aapl__pxrReserved__::TfToken *a1)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::IsValidName(EmptyString);
}

void sub_29A305910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8(&a11);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A3059CC@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, _DWORD *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a1, &v6);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v6, a2, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  return sub_29A1DE3A4(&v6);
}

void sub_29A305A30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::Rename(pxrInternal__aapl__pxrReserved__::SdfSpec *a1)
{
  v2 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, v1);
  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::IsValidName();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::SetChildren(uint64_t a1, void **a2, uint64_t *a3)
{
  v27 = *MEMORY[0x29EDCA608];
  sub_29A30560C(&v22);
  memset(&v21[3], 0, 24);
  v20[0] = 0;
  v20[1] = 0;
  __p = v20;
  v8 = a3[1];
  v25 = *a3;
  v26 = v8;
  while (v25 != v26)
  {
    v9 = sub_29A31C110(&v25, v6, v7);
    if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(v9))
    {
      goto LABEL_13;
    }

    v12 = sub_29A31C110(&v25, v10, v11);
    sub_29A2F683C(v12, &v23);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v21);
    if (v24 < 0)
    {
      operator delete(v23);
    }

    sub_29A31B870(&__p, v21, v21);
    v17 = 1;
    if ((v10 & 1) == 0)
    {
      v13 = sub_29A31C110(&v25, v10, v11);
      v14 = sub_29A2F6760(v13);
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v14, &v18);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v18, &v23);
      v15 = v23;
      v16 = *a2;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23 + 1);
      sub_29A1DE3A4(&v23);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
      sub_29A1DE3A4(&v18);
      if (v15 == v16)
      {
        v17 = 0;
      }
    }

    if ((v21[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v21[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v17)
    {
LABEL_13:
      sub_29A31C110(&v25, v10, v11);
      std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::emplace_back<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> const&>();
    }

    sub_29A31C190(&v25);
  }

  sub_29A1602D4(&__p, v20[0]);
  sub_29A1DA6E4(a1);
}

void sub_29A30692C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a35;
  sub_29A124AB0(&__p);
  sub_29A1602D4(v38 - 136, *(v38 - 128));
  __p = (v38 - 168);
  sub_29A124AB0(&__p);
  __p = &a38;
  sub_29A1F19E8(&__p);
  v40 = *(v38 - 176);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A306C58(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A306CD8(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::InsertChild(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3)
{
  v9[7] = *MEMORY[0x29EDCA608];
  sub_29A30560C(v9);
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a3))
  {
    v4 = sub_29A2F6760(a3);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v4, &v6);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  __p[0] = "sdf/childrenUtils.cpp";
  __p[1] = "InsertChild";
  __p[2] = 273;
  __p[3] = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::InsertChild(const SdfLayerHandle &, const SdfPath &, const typename ChildPolicy::ValueType &, int) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy]";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Invalid child");
  if ((v9[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 0;
}

void sub_29A30743C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, __int16 *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_29A1DD644(&__p);
  __p = (v31 - 112);
  sub_29A124AB0(&__p);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a12);
  __p = &a14;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a19);
  if ((a20 & 7) != 0)
  {
    atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a31 & 7) != 0)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::RemoveChild(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A30560C(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A30793C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::MoveChildForBatchNamespaceEdit(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, int a5)
{
  v16[7] = *MEMORY[0x29EDCA608];
  sub_29A30560C(v16);
  sub_29A3081BC(a2, a4, &v15);
  v10 = sub_29A2F6760(a3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v10, &v14);
  v11 = v15;
  v12 = v14;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
  sub_29A1DE3A4(&v14);
  if (a5 != -2 || v11 != v12)
  {
    sub_29A1DA6E4(a1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
  sub_29A1DE3A4(&v15);
  if ((v16[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 1;
}

void sub_29A308034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, char *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, void **p_p)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v24 - 88));
  sub_29A1DD644(&p_p);
  p_p = &__p;
  sub_29A124AB0(&p_p);
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a10);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a18;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a21);
  if ((a22 & 7) != 0)
  {
    atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

_DWORD *sub_29A3081BC@<X0>(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, _DWORD *a3@<X8>)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::IsValidName(EmptyString))
  {

    return pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a1, a2, a3);
  }

  else
  {
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);

    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }
}

void sub_29A30861C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25)
{
  __p = &a22;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a25);
  v27 = *(v25 - 80);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::CanRemoveChildForBatchNamespaceEdit(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A30560C(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A30896C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a10 = &a13;
  sub_29A124AB0(&a10);
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::CreateSpec(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v17);
    Spec = pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateSpec(a1, a2, a3, a4);
    if (Spec)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v18);
      sub_29A2F81C8(__p);
      v9 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(a2);
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPushChild<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 84;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2047348, a3, __p);
    v10 = v16;
    v11 = __p[0];
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v13 = __p;
    if (v10 < 0)
    {
      v13 = v11;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Failed to create spec of type '%s' at <%s>", v13, Text);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A1DD644(v17);
  }

  else
  {
    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 73;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Invalid object type");
    return 0;
  }

  return Spec;
}

void sub_29A308BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t __p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, int a20)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a20);
  sub_29A1DD644(&a18);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::IsValidName(pxrInternal__aapl__pxrReserved__::TfToken *a1)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::IsValidName(EmptyString);
}

void sub_29A308ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8(&a11);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A308F94@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, int *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a1, &v6);
  sub_29A2F5828(&v6, a2, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  return sub_29A1DE3A4(&v6);
}

void sub_29A308FF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::Rename(pxrInternal__aapl__pxrReserved__::SdfSpec *a1)
{
  v2 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, v1);
  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::IsValidName();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::SetChildren(uint64_t a1, void **a2, uint64_t *a3)
{
  v27 = *MEMORY[0x29EDCA608];
  sub_29A2F81C8(&v22);
  memset(&v21[3], 0, 24);
  v20[0] = 0;
  v20[1] = 0;
  __p = v20;
  v8 = a3[1];
  v25 = *a3;
  v26 = v8;
  while (v25 != v26)
  {
    v9 = sub_29A31C210(&v25, v6, v7);
    if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(v9))
    {
      goto LABEL_13;
    }

    v12 = sub_29A31C210(&v25, v10, v11);
    sub_29A2F6B80(v12, &v23);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v21);
    if (v24 < 0)
    {
      operator delete(v23);
    }

    sub_29A31B870(&__p, v21, v21);
    v17 = 1;
    if ((v10 & 1) == 0)
    {
      v13 = sub_29A31C210(&v25, v10, v11);
      v14 = sub_29A1F190C(v13);
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v14, &v18);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v18, &v23);
      v15 = v23;
      v16 = *a2;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23 + 1);
      sub_29A1DE3A4(&v23);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
      sub_29A1DE3A4(&v18);
      if (v15 == v16)
      {
        v17 = 0;
      }
    }

    if ((v21[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v21[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v17)
    {
LABEL_13:
      sub_29A31C210(&v25, v10, v11);
      std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::emplace_back<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec> const&>();
    }

    sub_29A31C290(&v25);
  }

  sub_29A1602D4(&__p, v20[0]);
  sub_29A1DA6E4(a1);
}

void sub_29A309EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a35;
  sub_29A124AB0(&__p);
  sub_29A1602D4(v38 - 136, *(v38 - 128));
  __p = (v38 - 168);
  sub_29A124AB0(&__p);
  __p = &a38;
  sub_29A1F19E8(&__p);
  v40 = *(v38 - 176);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A30A220(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A30A2A0(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::InsertChild(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3)
{
  v9[7] = *MEMORY[0x29EDCA608];
  sub_29A2F81C8(v9);
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a3))
  {
    v4 = sub_29A1F190C(a3);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v4, &v6);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  __p[0] = "sdf/childrenUtils.cpp";
  __p[1] = "InsertChild";
  __p[2] = 273;
  __p[3] = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::InsertChild(const SdfLayerHandle &, const SdfPath &, const typename ChildPolicy::ValueType &, int) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy]";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Invalid child");
  if ((v9[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 0;
}

void sub_29A30AA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, __int16 *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_29A1DD644(&__p);
  __p = (v31 - 112);
  sub_29A124AB0(&__p);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a12);
  __p = &a14;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a19);
  if ((a20 & 7) != 0)
  {
    atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a31 & 7) != 0)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::RemoveChild(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A2F81C8(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A30AF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::MoveChildForBatchNamespaceEdit(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, int a5)
{
  v16[7] = *MEMORY[0x29EDCA608];
  sub_29A2F81C8(v16);
  sub_29A2FB27C(a2, a4, &v15);
  v10 = sub_29A1F190C(a3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v10, &v14);
  v11 = v15;
  v12 = v14;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
  sub_29A1DE3A4(&v14);
  if (a5 != -2 || v11 != v12)
  {
    sub_29A1DA6E4(a1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
  sub_29A1DE3A4(&v15);
  if ((v16[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 1;
}

void sub_29A30B5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, char *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, void **p_p)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v24 - 88));
  sub_29A1DD644(&p_p);
  p_p = &__p;
  sub_29A124AB0(&p_p);
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a10);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a18;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a21);
  if ((a22 & 7) != 0)
  {
    atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29A30BB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25)
{
  __p = &a22;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a25);
  v27 = *(v25 - 80);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::CanRemoveChildForBatchNamespaceEdit(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A2F81C8(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A30BE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a10 = &a13;
  sub_29A124AB0(&a10);
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::CreateSpec(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v17);
    Spec = pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateSpec(a1, a2, a3, a4);
    if (Spec)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v18);
      sub_29A2F81C8(__p);
      v9 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(a2);
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPushChild<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 84;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2047348, a3, __p);
    v10 = v16;
    v11 = __p[0];
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v13 = __p;
    if (v10 < 0)
    {
      v13 = v11;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Failed to create spec of type '%s' at <%s>", v13, Text);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A1DD644(v17);
  }

  else
  {
    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 73;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Invalid object type");
    return 0;
  }

  return Spec;
}

void sub_29A30C0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t __p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, int a20)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a20);
  sub_29A1DD644(&a18);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::IsValidName(pxrInternal__aapl__pxrReserved__::TfToken *a1)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::IsValidName(EmptyString);
}

void sub_29A30C3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8(&a11);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A30C4B4@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, int *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a1, &v6);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v6, a2, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  return sub_29A1DE3A4(&v6);
}

void sub_29A30C518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::Rename(pxrInternal__aapl__pxrReserved__::SdfSpec *a1)
{
  v2 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, v1);
  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::IsValidName();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::SetChildren(uint64_t a1, void **a2, uint64_t *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  sub_29A2F81C8(&v24);
  memset(v23, 0, sizeof(v23));
  v21[0] = 0;
  v21[1] = 0;
  __p = v21;
  v8 = a3[1];
  v27 = *a3;
  v28 = v8;
  while (v27 != v28)
  {
    v9 = sub_29A31C310(&v27, v6, v7);
    if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(v9))
    {
      goto LABEL_13;
    }

    v12 = sub_29A31C310(&v27, v10, v11);
    sub_29A2F6FA0(v12, &v25);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v22);
    if (v26 < 0)
    {
      operator delete(v25);
    }

    sub_29A31B870(&__p, &v22, &v22);
    v17 = 1;
    if ((v10 & 1) == 0)
    {
      v13 = sub_29A31C310(&v27, v10, v11);
      v14 = sub_29A2F6EC4(v13);
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v14, &v19);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v19, &v25);
      v15 = v25;
      v16 = *a2;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
      sub_29A1DE3A4(&v25);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
      sub_29A1DE3A4(&v19);
      if (v15 == v16)
      {
        v17 = 0;
      }
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v17)
    {
LABEL_13:
      v18 = sub_29A31C310(&v27, v10, v11);
      sub_29A31C410(v23, v18);
    }

    sub_29A31C390(&v27);
  }

  sub_29A1602D4(&__p, v21[0]);
  sub_29A1DA6E4(a1);
}

void sub_29A30D414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a35;
  sub_29A124AB0(&__p);
  sub_29A1602D4(v38 - 136, *(v38 - 128));
  __p = (v38 - 168);
  sub_29A124AB0(&__p);
  __p = &a38;
  sub_29A1F19E8(&__p);
  v40 = *(v38 - 176);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A30D740(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec>>>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A30D7C0(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec>>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::InsertChild(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3)
{
  v9[7] = *MEMORY[0x29EDCA608];
  sub_29A2F81C8(v9);
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a3))
  {
    v4 = sub_29A2F6EC4(a3);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v4, &v6);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  __p[0] = "sdf/childrenUtils.cpp";
  __p[1] = "InsertChild";
  __p[2] = 273;
  __p[3] = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::InsertChild(const SdfLayerHandle &, const SdfPath &, const typename ChildPolicy::ValueType &, int) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy]";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Invalid child");
  if ((v9[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 0;
}

void sub_29A30DF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, __int16 *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_29A1DD644(&__p);
  __p = (v31 - 112);
  sub_29A124AB0(&__p);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a12);
  __p = &a14;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a19);
  if ((a20 & 7) != 0)
  {
    atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a31 & 7) != 0)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::RemoveChild(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A2F81C8(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A30E424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::MoveChildForBatchNamespaceEdit(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, int a5)
{
  v16[7] = *MEMORY[0x29EDCA608];
  sub_29A2F81C8(v16);
  sub_29A30ECA4(a2, a4, &v15);
  v10 = sub_29A2F6EC4(a3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v10, &v14);
  v11 = v15;
  v12 = v14;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
  sub_29A1DE3A4(&v14);
  if (a5 != -2 || v11 != v12)
  {
    sub_29A1DA6E4(a1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
  sub_29A1DE3A4(&v15);
  if ((v16[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 1;
}

void sub_29A30EB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, char *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, void **p_p)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v24 - 88));
  sub_29A1DD644(&p_p);
  p_p = &__p;
  sub_29A124AB0(&p_p);
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a10);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a18;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a21);
  if ((a22 & 7) != 0)
  {
    atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29A30ECA4(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, int *a3@<X8>)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::IsValidName(EmptyString))
  {

    pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a1, a2, a3);
  }

  else
  {
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }
}

void sub_29A30F104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25)
{
  __p = &a22;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a25);
  v27 = *(v25 - 80);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::CanRemoveChildForBatchNamespaceEdit(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A2F81C8(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A30F454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a10 = &a13;
  sub_29A124AB0(&a10);
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::CreateSpec(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v17);
    Spec = pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateSpec(a1, a2, a3, a4);
    if (Spec)
    {
      sub_29A2F7448(a2, &v18);
      sub_29A30F720(__p);
      v9 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(a2);
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPushChild<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 84;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2047348, a3, __p);
    v10 = v16;
    v11 = __p[0];
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v13 = __p;
    if (v10 < 0)
    {
      v13 = v11;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Failed to create spec of type '%s' at <%s>", v13, Text);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A1DD644(v17);
  }

  else
  {
    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 73;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Invalid object type");
    return 0;
  }

  return Spec;
}

void sub_29A30F69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t __p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, int a20)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a20);
  sub_29A1DD644(&a18);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType *sub_29A30F720@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!result)
  {
    result = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  v3 = *(result + 7);
  *a1 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::IsValidName(pxrInternal__aapl__pxrReserved__::TfToken *a1)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::IsValidName(EmptyString);
}

void sub_29A30FA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8(&a11);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A30FAE0@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, _DWORD *a3@<X8>)
{
  sub_29A2F7448(a1, &v6);
  sub_29A2F72E4(&v6, a2, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  return sub_29A1DE3A4(&v6);
}

void sub_29A30FB44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::Rename(pxrInternal__aapl__pxrReserved__::SdfSpec *a1)
{
  v2 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, v1);
  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::IsValidName();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::SetChildren(uint64_t a1, void **a2, uint64_t *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  sub_29A30F720(&v24);
  memset(v23, 0, sizeof(v23));
  v21[0] = 0;
  v21[1] = 0;
  __p = v21;
  v8 = a3[1];
  v27 = *a3;
  v28 = v8;
  while (v27 != v28)
  {
    v9 = sub_29A31C528(&v27, v6, v7);
    if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(v9))
    {
      goto LABEL_13;
    }

    v12 = sub_29A31C528(&v27, v10, v11);
    sub_29A2F7560(v12, &v25);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v22);
    if (v26 < 0)
    {
      operator delete(v25);
    }

    sub_29A31B870(&__p, &v22, &v22);
    v17 = 1;
    if ((v10 & 1) == 0)
    {
      v13 = sub_29A31C528(&v27, v10, v11);
      v14 = sub_29A1F38D8(v13);
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v14, &v19);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v19, &v25);
      v15 = v25;
      v16 = *a2;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
      sub_29A1DE3A4(&v25);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
      sub_29A1DE3A4(&v19);
      if (v15 == v16)
      {
        v17 = 0;
      }
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v17)
    {
LABEL_13:
      v18 = sub_29A31C528(&v27, v10, v11);
      sub_29A31C628(v23, v18);
    }

    sub_29A31C5A8(&v27);
  }

  sub_29A1602D4(&__p, v21[0]);
  sub_29A1DA6E4(a1);
}

void sub_29A310A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a35;
  sub_29A124AB0(&__p);
  sub_29A1602D4(v38 - 136, *(v38 - 128));
  __p = (v38 - 168);
  sub_29A124AB0(&__p);
  __p = &a38;
  sub_29A1F19E8(&__p);
  v40 = *(v38 - 176);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A310D6C(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSpec>>>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSpec>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A310DEC(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSpec>>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSpec>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::InsertChild(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3)
{
  v9[7] = *MEMORY[0x29EDCA608];
  sub_29A30F720(v9);
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a3))
  {
    v4 = sub_29A1F38D8(a3);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v4, &v6);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  __p[0] = "sdf/childrenUtils.cpp";
  __p[1] = "InsertChild";
  __p[2] = 273;
  __p[3] = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::InsertChild(const SdfLayerHandle &, const SdfPath &, const typename ChildPolicy::ValueType &, int) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy]";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Invalid child");
  if ((v9[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 0;
}

void sub_29A311550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, __int16 *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_29A1DD644(&__p);
  __p = (v31 - 112);
  sub_29A124AB0(&__p);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a12);
  __p = &a14;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a19);
  if ((a20 & 7) != 0)
  {
    atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a31 & 7) != 0)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::RemoveChild(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A30F720(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A311A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::MoveChildForBatchNamespaceEdit(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3, void *a4, int a5)
{
  v16[7] = *MEMORY[0x29EDCA608];
  sub_29A30F720(v16);
  sub_29A3122D0(a2, a4, &v15);
  v10 = sub_29A1F38D8(a3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v10, &v14);
  v11 = v15;
  v12 = v14;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
  sub_29A1DE3A4(&v14);
  if (a5 != -2 || v11 != v12)
  {
    sub_29A1DA6E4(a1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
  sub_29A1DE3A4(&v15);
  if ((v16[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 1;
}

void sub_29A312148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, char *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, void **p_p)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v24 - 88));
  sub_29A1DD644(&p_p);
  p_p = &__p;
  sub_29A124AB0(&p_p);
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a10);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a18;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a21);
  if ((a22 & 7) != 0)
  {
    atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29A3122D0(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, void *a2@<X1>, _DWORD *a3@<X8>)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::IsValidName(EmptyString))
  {

    sub_29A2F72E4(a1, a2, a3);
  }

  else
  {
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }
}

void sub_29A312730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25)
{
  __p = &a22;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a25);
  v27 = *(v25 - 80);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::CanRemoveChildForBatchNamespaceEdit(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A30F720(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A312A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a10 = &a13;
  sub_29A124AB0(&a10);
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::CreateSpec(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v17);
    Spec = pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateSpec(a1, a2, a3, a4);
    if (Spec)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v18);
      sub_29A312D4C(__p);
      v9 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(a2);
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPushChild<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 84;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2047348, a3, __p);
    v10 = v16;
    v11 = __p[0];
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v13 = __p;
    if (v10 < 0)
    {
      v13 = v11;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Failed to create spec of type '%s' at <%s>", v13, Text);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A1DD644(v17);
  }

  else
  {
    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 73;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Invalid object type");
    return 0;
  }

  return Spec;
}

void sub_29A312CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t __p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, int a20)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a20);
  sub_29A1DD644(&a18);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType *sub_29A312D4C@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!result)
  {
    result = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  v3 = *(result + 8);
  *a1 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::IsValidName(pxrInternal__aapl__pxrReserved__::TfToken *a1)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::IsValidName(EmptyString);
}

void sub_29A313050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8(&a11);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A31310C@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, _DWORD *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a1, &v6);
  sub_29A2F78A4(&v6, a2, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  return sub_29A1DE3A4(&v6);
}

void sub_29A313170(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::Rename(pxrInternal__aapl__pxrReserved__::SdfSpec *a1)
{
  v2 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, v1);
  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::IsValidName();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::SetChildren(uint64_t a1, void **a2, uint64_t *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  sub_29A312D4C(&v24);
  memset(v23, 0, sizeof(v23));
  v21[0] = 0;
  v21[1] = 0;
  __p = v21;
  v8 = a3[1];
  v27 = *a3;
  v28 = v8;
  while (v27 != v28)
  {
    v9 = sub_29A31C740(&v27, v6, v7);
    if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(v9))
    {
      goto LABEL_13;
    }

    v12 = sub_29A31C740(&v27, v10, v11);
    sub_29A2F7A20(v12, &v25);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v22);
    if (v26 < 0)
    {
      operator delete(v25);
    }

    sub_29A31B870(&__p, &v22, &v22);
    v17 = 1;
    if ((v10 & 1) == 0)
    {
      v13 = sub_29A31C740(&v27, v10, v11);
      v14 = sub_29A2F7944(v13);
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v14, &v19);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v19, &v25);
      v15 = v25;
      v16 = *a2;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
      sub_29A1DE3A4(&v25);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
      sub_29A1DE3A4(&v19);
      if (v15 == v16)
      {
        v17 = 0;
      }
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v17)
    {
LABEL_13:
      v18 = sub_29A31C740(&v27, v10, v11);
      sub_29A31C840(v23, v18);
    }

    sub_29A31C7C0(&v27);
  }

  sub_29A1602D4(&__p, v21[0]);
  sub_29A1DA6E4(a1);
}

void sub_29A31406C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a35;
  sub_29A124AB0(&__p);
  sub_29A1602D4(v38 - 136, *(v38 - 128));
  __p = (v38 - 168);
  sub_29A124AB0(&__p);
  __p = &a38;
  sub_29A1F19E8(&__p);
  v40 = *(v38 - 176);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A314398(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec>>>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A314418(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec>>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::InsertChild(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3)
{
  v9[7] = *MEMORY[0x29EDCA608];
  sub_29A312D4C(v9);
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a3))
  {
    v4 = sub_29A2F7944(a3);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v4, &v6);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  __p[0] = "sdf/childrenUtils.cpp";
  __p[1] = "InsertChild";
  __p[2] = 273;
  __p[3] = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::InsertChild(const SdfLayerHandle &, const SdfPath &, const typename ChildPolicy::ValueType &, int) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy]";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Invalid child");
  if ((v9[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 0;
}

void sub_29A314B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, __int16 *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_29A1DD644(&__p);
  __p = (v31 - 112);
  sub_29A124AB0(&__p);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a12);
  __p = &a14;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a19);
  if ((a20 & 7) != 0)
  {
    atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a31 & 7) != 0)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::RemoveChild(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A312D4C(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A31507C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::MoveChildForBatchNamespaceEdit(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3, void *a4, int a5)
{
  v16[7] = *MEMORY[0x29EDCA608];
  sub_29A312D4C(v16);
  sub_29A3158FC(a2, a4, &v15);
  v10 = sub_29A2F7944(a3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v10, &v14);
  v11 = v15;
  v12 = v14;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
  sub_29A1DE3A4(&v14);
  if (a5 != -2 || v11 != v12)
  {
    sub_29A1DA6E4(a1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
  sub_29A1DE3A4(&v15);
  if ((v16[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 1;
}

void sub_29A315774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, char *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, void **p_p)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v24 - 88));
  sub_29A1DD644(&p_p);
  p_p = &__p;
  sub_29A124AB0(&p_p);
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a10);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a18;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a21);
  if ((a22 & 7) != 0)
  {
    atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29A3158FC(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, void *a2@<X1>, _DWORD *a3@<X8>)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::IsValidName(EmptyString))
  {

    sub_29A2F78A4(a1, a2, a3);
  }

  else
  {
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }
}

void sub_29A315D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25)
{
  __p = &a22;
  sub_29A124AB0(&__p);
  sub_29A1DCEA8(&a25);
  v27 = *(v25 - 80);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::CanRemoveChildForBatchNamespaceEdit(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A312D4C(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A3160AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a10 = &a13;
  sub_29A124AB0(&a10);
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy>::CreateSpec(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v17);
    Spec = pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateSpec(a1, a2, a3, a4);
    if (Spec)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v18);
      sub_29A316348(__p);
      sub_29A3163AC(a2, &v14);
      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPushChild<pxrInternal__aapl__pxrReserved__::SdfPath>();
    }

    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 84;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2047348, a3, __p);
    v9 = v16;
    v10 = __p[0];
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v12 = __p;
    if (v9 < 0)
    {
      v12 = v10;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Failed to create spec of type '%s' at <%s>", v12, Text);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A1DD644(v17);
  }

  else
  {
    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 73;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Invalid object type");
    return 0;
  }

  return Spec;
}

void sub_29A3162D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, unint64_t __p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, int a20)
{
  sub_29A1DCEA8(&a11);
  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a20);
  sub_29A1DD644(&a18);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType *sub_29A316348@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!result)
  {
    result = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  v3 = *(result + 6);
  *a1 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  return result;
}

_DWORD *sub_29A3163AC@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, _DWORD *a2@<X8>)
{
  TargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath(a1);
  sub_29A1E21F4(a2, TargetPath);

  return sub_29A1E2240(a2 + 1, TargetPath + 1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy>::SetChildren(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v19[5] = *MEMORY[0x29EDCA608];
  sub_29A316348(&v18);
  memset(v17, 0, sizeof(v17));
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v7 = a3[1];
  v15 = *a3;
  v16 = v7;
  while (v15 != v16)
  {
    v8 = sub_29A31BD04(&v15, v5, v6);
    if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(v8) & 1) == 0)
    {
      v11 = sub_29A31BD04(&v15, v9, v10);
      sub_29A2F60DC(v11, v19);
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
    }

    v12 = sub_29A31BD04(&v15, v9, v10);
    sub_29A1E0538(v17, v12);
    sub_29A31BD84(&v15);
  }

  sub_29A1E2AEC(&v13, v14[0]);
  sub_29A1DA6E4(a1);
}

void sub_29A316D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_29A1DCEA8(&a9);
  a24 = &a29;
  sub_29A1E234C(&a24);
  sub_29A1E2AEC(v32 - 136, *(v32 - 128));
  a24 = &a32;
  sub_29A1E234C(&a24);
  a24 = (v32 - 176);
  sub_29A1DEC08(&a24);
  v34 = *(v32 - 152);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy>::InsertChild(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3)
{
  v9[7] = *MEMORY[0x29EDCA608];
  sub_29A316348(v9);
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a3))
  {
    v4 = sub_29A1E045C(a3);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v4, &v6);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  v7[0] = "sdf/childrenUtils.cpp";
  v7[1] = "InsertChild";
  v7[2] = 273;
  v7[3] = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy>::InsertChild(const SdfLayerHandle &, const SdfPath &, const typename ChildPolicy::ValueType &, int) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy]";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Invalid child");
  if ((v9[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 0;
}

void sub_29A31769C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, char a14, uint64_t a15, uint64_t a16, int a17, int a18, int a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_29A1DD644(&a22);
  a22 = (v27 - 112);
  sub_29A1E234C(&a22);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a12);
  a22 = &a14;
  sub_29A1E234C(&a22);
  sub_29A1DCEA8(&a17);
  sub_29A1DCEA8(&a19);
  if ((a27 & 7) != 0)
  {
    atomic_fetch_add_explicit((a27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy>::RemoveChild(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A316348(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A317B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy>::MoveChildForBatchNamespaceEdit(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4, int a5)
{
  v16[7] = *MEMORY[0x29EDCA608];
  sub_29A316348(v16);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget(a2, a4, &v15);
  v10 = sub_29A1E045C(a3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v10, &v14);
  v11 = v15;
  v12 = v14;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
  sub_29A1DE3A4(&v14);
  if (a5 != -2 || v11 != v12)
  {
    sub_29A1DA6E4(a1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
  sub_29A1DE3A4(&v15);
  if ((v16[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 1;
}

void sub_29A31816C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, void **a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, void ***a22)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v22 - 88));
  sub_29A1DD644(&a22);
  a22 = &a13;
  sub_29A1E234C(&a22);
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a10);
  sub_29A1DCEA8(&a12);
  a13 = &a16;
  sub_29A1E234C(&a13);
  sub_29A1DCEA8(&a19);
  if ((a20 & 7) != 0)
  {
    atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29A31865C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  va_copy(v11, va1);
  sub_29A1E234C(va);
  sub_29A1DCEA8(va2);
  v10 = *(v8 - 80);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy>::CanRemoveChildForBatchNamespaceEdit(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A316348(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A318980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a10 = &a13;
  sub_29A1E234C(&a10);
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy>::CreateSpec(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v17);
    Spec = pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateSpec(a1, a2, a3, a4);
    if (Spec)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v18);
      sub_29A318C1C(__p);
      sub_29A3163AC(a2, &v14);
      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPushChild<pxrInternal__aapl__pxrReserved__::SdfPath>();
    }

    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 84;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2047348, a3, __p);
    v9 = v16;
    v10 = __p[0];
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v12 = __p;
    if (v9 < 0)
    {
      v12 = v10;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Failed to create spec of type '%s' at <%s>", v12, Text);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A1DD644(v17);
  }

  else
  {
    v18 = "sdf/childrenUtils.cpp";
    v19 = "CreateSpec";
    v20 = 73;
    v21 = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy>::CreateSpec(SdfLayer *, const SdfPath &, SdfSpecType, BOOL) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Invalid object type");
    return 0;
  }

  return Spec;
}

void sub_29A318BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, unint64_t __p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, int a20)
{
  sub_29A1DCEA8(&a11);
  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a20);
  sub_29A1DD644(&a18);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType *sub_29A318C1C@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!result)
  {
    result = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  v3 = *result;
  *a1 = *result;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy>::SetChildren(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v19[5] = *MEMORY[0x29EDCA608];
  sub_29A318C1C(&v18);
  memset(v17, 0, sizeof(v17));
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v7 = a3[1];
  v15 = *a3;
  v16 = v7;
  while (v15 != v16)
  {
    v8 = sub_29A31BD04(&v15, v5, v6);
    if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(v8) & 1) == 0)
    {
      v11 = sub_29A31BD04(&v15, v9, v10);
      sub_29A2F60DC(v11, v19);
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
    }

    v12 = sub_29A31BD04(&v15, v9, v10);
    sub_29A1E0538(v17, v12);
    sub_29A31BD84(&v15);
  }

  sub_29A1E2AEC(&v13, v14[0]);
  sub_29A1DA6E4(a1);
}

void sub_29A3195A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_29A1DCEA8(&a9);
  a24 = &a29;
  sub_29A1E234C(&a24);
  sub_29A1E2AEC(v32 - 136, *(v32 - 128));
  a24 = &a32;
  sub_29A1E234C(&a24);
  a24 = (v32 - 176);
  sub_29A1DEC08(&a24);
  v34 = *(v32 - 152);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy>::InsertChild(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3)
{
  v9[7] = *MEMORY[0x29EDCA608];
  sub_29A318C1C(v9);
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a3))
  {
    v4 = sub_29A1E045C(a3);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v4, &v6);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  v7[0] = "sdf/childrenUtils.cpp";
  v7[1] = "InsertChild";
  v7[2] = 273;
  v7[3] = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy>::InsertChild(const SdfLayerHandle &, const SdfPath &, const typename ChildPolicy::ValueType &, int) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy]";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Invalid child");
  if ((v9[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 0;
}

void sub_29A319F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, char a14, uint64_t a15, uint64_t a16, int a17, int a18, int a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_29A1DD644(&a22);
  a22 = (v27 - 112);
  sub_29A1E234C(&a22);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a12);
  a22 = &a14;
  sub_29A1E234C(&a22);
  sub_29A1DCEA8(&a17);
  sub_29A1DCEA8(&a19);
  if ((a27 & 7) != 0)
  {
    atomic_fetch_add_explicit((a27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy>::RemoveChild(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A318C1C(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A31A3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy>::MoveChildForBatchNamespaceEdit(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4, int a5)
{
  v16[7] = *MEMORY[0x29EDCA608];
  sub_29A318C1C(v16);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget(a2, a4, &v15);
  v10 = sub_29A1E045C(a3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v10, &v14);
  v11 = v15;
  v12 = v14;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
  sub_29A1DE3A4(&v14);
  if (a5 != -2 || v11 != v12)
  {
    sub_29A1DA6E4(a1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
  sub_29A1DE3A4(&v15);
  if ((v16[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 1;
}

void sub_29A31A9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, void **a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, void ***a22)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v22 - 88));
  sub_29A1DD644(&a22);
  a22 = &a13;
  sub_29A1E234C(&a22);
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a10);
  sub_29A1DCEA8(&a12);
  a13 = &a16;
  sub_29A1E234C(&a13);
  sub_29A1DCEA8(&a19);
  if ((a20 & 7) != 0)
  {
    atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29A31AEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  va_copy(v11, va1);
  sub_29A1E234C(va);
  sub_29A1DCEA8(va2);
  v10 = *(v8 - 80);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy>::CanRemoveChildForBatchNamespaceEdit(uint64_t a1)
{
  v2[4] = *MEMORY[0x29EDCA608];
  sub_29A318C1C(v2);
  sub_29A1DA6E4(a1);
}

void sub_29A31B208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a10 = &a13;
  sub_29A1E234C(&a10);
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::CanRename@<X0>(uint64_t a1@<X8>)
{
  v3[0] = "sdf/childrenUtils.cpp";
  v3[1] = "CanRename";
  v3[2] = 745;
  v3[3] = "static SdfAllowed pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::CanRename(const SdfSpec &, const SdfPath &) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy]";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Cannot rename mappers");
  result = sub_29A008E78(a1, "Cannot rename mappers");
  *(a1 + 24) = 1;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::Rename()
{
  v1[0] = "sdf/childrenUtils.cpp";
  v1[1] = "Rename";
  v1[2] = 754;
  v1[3] = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::Rename(const SdfSpec &, const SdfPath &) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy]";
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v1, 1, "Cannot rename mappers");
  return 0;
}

void *pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy>::CanRename@<X0>(uint64_t a1@<X8>)
{
  v3[0] = "sdf/childrenUtils.cpp";
  v3[1] = "CanRename";
  v3[2] = 763;
  v3[3] = "static SdfAllowed pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy>::CanRename(const SdfSpec &, const SdfPath &) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy]";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Cannot rename attribute connections");
  result = sub_29A008E78(a1, "Cannot rename attribute connections");
  *(a1 + 24) = 1;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy>::Rename()
{
  v1[0] = "sdf/childrenUtils.cpp";
  v1[1] = "Rename";
  v1[2] = 772;
  v1[3] = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy>::Rename(const SdfSpec &, const SdfPath &) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy]";
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v1, 1, "Cannot rename attribute connections");
  return 0;
}

void *pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy>::CanRename@<X0>(uint64_t a1@<X8>)
{
  v3[0] = "sdf/childrenUtils.cpp";
  v3[1] = "CanRename";
  v3[2] = 781;
  v3[3] = "static SdfAllowed pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy>::CanRename(const SdfSpec &, const SdfPath &) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy]";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Cannot rename relationship targets");
  result = sub_29A008E78(a1, "Cannot rename relationship targets");
  *(a1 + 24) = 1;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy>::Rename()
{
  v1[0] = "sdf/childrenUtils.cpp";
  v1[1] = "Rename";
  v1[2] = 790;
  v1[3] = "static BOOL pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy>::Rename(const SdfSpec &, const SdfPath &) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy]";
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v1, 1, "Cannot rename relationship targets");
  return 0;
}

void *sub_29A31B514(void *a1, uint64_t a2)
{
  sub_29A00911C(a1, "[ ", 2);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a2 != v5)
  {
    do
    {
      v6 = pxrInternal__aapl__pxrReserved__::operator<<(a1, v4);
      sub_29A00911C(v6, " ", 1);
      ++v4;
    }

    while (v4 != v5);
  }

  sub_29A00911C(a1, "]", 1);
  return a1;
}

uint64_t sub_29A31B5A0(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfAttributeSpec>>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfAttributeSpec>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A31B620(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfAttributeSpec>>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfAttributeSpec>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

void *sub_29A31B6A0(void *a1, atomic_uint **a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v10 = v5 - *a1;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v19 = a1;
    if (v11)
    {
      v12 = sub_29A00C9BC(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v8];
    v16[0] = v12;
    v16[1] = v13;
    v17 = v13;
    v18 = &v12[8 * v11];
    v14 = *a2;
    *v13 = *a2;
    if (v14)
    {
      atomic_fetch_add(v14, 1u);
      v13 = v17;
    }

    v17 = v13 + 1;
    sub_29A31B7B8(a1, v16);
    v7 = a1[1];
    sub_29A1F09B4(v16);
  }

  else
  {
    v6 = *a2;
    *v4 = *a2;
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
    }

    v7 = v4 + 1;
    a1[1] = v4 + 1;
  }

  a1[1] = v7;
  return v7 - 1;
}

void sub_29A31B7A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1F09B4(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfSpec *sub_29A31B7B8(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      v10 = *v8;
      *v9 = *v8;
      if (v10)
      {
        atomic_fetch_add(v10, 1u);
      }

      ++v8;
      ++v9;
    }

    while (v8 != v5);
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(result);
      result = (v11 + 8);
    }

    while (result != v5);
  }

  a2[1] = v7;
  v12 = *a1;
  *a1 = v7;
  *(a1 + 8) = v12;
  a2[1] = v12;
  v13 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v13;
  v14 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
  return result;
}

uint64_t *sub_29A31B870(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  v5 = sub_29A153CF4(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    sub_29A1DEB0C(a1, a3, &v7);
    sub_29A00B204(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

uint64_t sub_29A31B8F0(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_29A153D90(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_29A153D90(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_29A31B980(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A2EF300(a1, v4, v6, v6);
      ++v6;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_29A31BA04(uint64_t result, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(result + 8);
  v5 = (a2 + v4 - a4);
  v6 = v4;
  if (v5 < a3)
  {
    v7 = (a2 + v4 - a4);
    v6 = *(result + 8);
    do
    {
      *v6 = *v7;
      v6 += 8;
      *v7++ = 0;
    }

    while (v7 < a3);
  }

  *(result + 8) = v6;
  if (v4 != a4)
  {
    v8 = a4 - v4;
    do
    {
      v9 = v5;
      v10 = v4;
      v5 -= 8;
      v4 -= 8;
      if (v9 != v10)
      {
        if ((*v4 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v4 = *v5;
        *v5 = 0;
      }

      v8 += 8;
    }

    while (v8);
  }

  return result;
}

void *sub_29A31BA90(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = v4;
  if (v4 == result[3])
  {
    v6 = result[1];
    if (v6 <= *result)
    {
      if (v4 == *result)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *result) >> 2;
      }

      v9 = result[4];
      v23 = v3[4];
      v10 = sub_29A00C9BC(v9, v8);
      v12 = &v10[8 * (v8 >> 2)];
      v13 = *(v3 + 1);
      v14 = v13;
      v15 = v12;
      v16 = *(&v13 + 1) - v13;
      if (*(&v13 + 1) != v13)
      {
        v15 = &v12[v16];
        v17 = &v10[8 * (v8 >> 2)];
        do
        {
          *v17 = *v14;
          v17 += 8;
          *v14++ = 0;
          v16 -= 8;
        }

        while (v16);
        v13 = *(v3 + 1);
      }

      v20 = *v3;
      *v3 = v10;
      v3[1] = v12;
      v21 = v13;
      v18 = v3[3];
      v3[2] = v15;
      v3[3] = &v10[8 * v11];
      v22 = v18;
      result = sub_29A1541C0(&v20);
      v5 = v3[2];
    }

    else
    {
      v7 = ((v6 - *result) >> 3) + 1;
      v5 = &v6[-(v7 / 2)];
      if (v6 != v4)
      {
        do
        {
          if (v6 != v5)
          {
            if ((*v5 & 7) != 0)
            {
              atomic_fetch_add_explicit((*v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *v5 = *v6;
            *v6 = 0;
          }

          ++v6;
          ++v5;
        }

        while (v6 != v4);
        v6 = result[1];
      }

      result[1] = &v6[v7 / -2];
      result[2] = v5;
    }
  }

  v19 = *a2;
  *v5 = *a2;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v5 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3[2] += 8;
  return result;
}

uint64_t sub_29A31BC0C(uint64_t a1, void *a2, char *a3)
{
  result = a2[1];
  v5 = *(a1 + 8);
  if (v5 != a3)
  {
    v6 = a2[2];
    v7 = a3;
    do
    {
      *v6++ = *v7;
      *v7 = 0;
      v7 += 8;
    }

    while (v7 != v5);
    v8 = a3;
    do
    {
      if ((*v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 += 8;
    }

    while (v8 != v5);
  }

  v9 = *a1;
  v10 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v11 = (v10 + v9 - a3);
  if (v9 != a3)
  {
    v12 = v9;
    v13 = (v10 + v9 - a3);
    do
    {
      *v13++ = *v12;
      *v12 = 0;
      v12 += 8;
    }

    while (v12 != a3);
    do
    {
      if ((*v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 += 8;
    }

    while (v9 != a3);
  }

  a2[1] = v11;
  v14 = *a1;
  *a1 = v11;
  *(a1 + 8) = v14;
  a2[1] = v14;
  v15 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v15;
  v16 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
  return result;
}

uint64_t sub_29A31BD04(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfSpec>>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfSpec>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A31BD84(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfSpec>>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfSpec>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

void *sub_29A31BE04(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a2 != a3)
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  return result;
}

uint64_t sub_29A31BE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a2;
}

void *sub_29A31BEF8(void *a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  sub_29A00911C(a1, "[ ", 2);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = pxrInternal__aapl__pxrReserved__::operator<<(a1, v4);
      sub_29A00911C(v6, " ", 1);
      v4 = (v4 + 8);
    }

    while (v4 != v5);
  }

  sub_29A00911C(a1, "]", 1);
  return a1;
}

_DWORD *sub_29A31BF84(void *a1, _DWORD *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *a1) >> 2;
      }

      v9 = a1[4];
      v17 = a1[4];
      *&v15 = sub_29A00C9BC(v9, v8);
      *(&v15 + 1) = v15 + 8 * (v8 >> 2);
      *&v16 = *(&v15 + 1);
      *(&v16 + 1) = v15 + 8 * v10;
      sub_29A31C09C(&v15, a1[1], (a1[2] - a1[1]) >> 3);
      v11 = v16;
      v12 = *a1;
      v13 = *(a1 + 1);
      *a1 = v15;
      *(a1 + 1) = v11;
      v15 = v12;
      v16 = v13;
      sub_29A1E29E8(&v15);
      v4 = a1[2];
    }

    else
    {
      v6 = (((v5 - *a1) >> 3) + 1 + ((((v5 - *a1) >> 3) + 1) >> 63)) >> 1;
      sub_29A31BE88(&v15, v5, v4);
      v4 = v7;
      a1[1] -= 8 * v6;
      a1[2] = v7;
    }
  }

  sub_29A1E21F4(v4, a2);
  result = sub_29A1E2240(v4 + 1, a2 + 1);
  a1[2] += 8;
  return result;
}

_DWORD *sub_29A31C09C(_DWORD *result, _DWORD *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 2);
  if (a3)
  {
    v6 = 8 * a3;
    v7 = &v4[2 * a3];
    do
    {
      sub_29A1DDD84(v4, a2);
      result = sub_29A1DDDC0(v4 + 1, a2 + 1);
      v4 += 2;
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
    v4 = v7;
  }

  *(v3 + 2) = v4;
  return result;
}

uint64_t sub_29A31C110(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A31C190(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t sub_29A31C210(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A31C290(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t sub_29A31C310(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec>>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A31C390(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec>>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

void *sub_29A31C410(void *a1, atomic_uint **a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v10 = v5 - *a1;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v19 = a1;
    if (v11)
    {
      v12 = sub_29A00C9BC(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v8];
    v16[0] = v12;
    v16[1] = v13;
    v17 = v13;
    v18 = &v12[8 * v11];
    v14 = *a2;
    *v13 = *a2;
    if (v14)
    {
      atomic_fetch_add(v14, 1u);
      v13 = v17;
    }

    v17 = v13 + 1;
    sub_29A31B7B8(a1, v16);
    v7 = a1[1];
    sub_29A1F09B4(v16);
  }

  else
  {
    v6 = *a2;
    *v4 = *a2;
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
    }

    v7 = v4 + 1;
    a1[1] = v4 + 1;
  }

  a1[1] = v7;
  return v7 - 1;
}

void sub_29A31C514(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1F09B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A31C528(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSpec>>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSpec>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A31C5A8(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSpec>>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSpec>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

void *sub_29A31C628(void *a1, atomic_uint **a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v10 = v5 - *a1;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v19 = a1;
    if (v11)
    {
      v12 = sub_29A00C9BC(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v8];
    v16[0] = v12;
    v16[1] = v13;
    v17 = v13;
    v18 = &v12[8 * v11];
    v14 = *a2;
    *v13 = *a2;
    if (v14)
    {
      atomic_fetch_add(v14, 1u);
      v13 = v17;
    }

    v17 = v13 + 1;
    sub_29A31B7B8(a1, v16);
    v7 = a1[1];
    sub_29A1F09B4(v16);
  }

  else
  {
    v6 = *a2;
    *v4 = *a2;
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
    }

    v7 = v4 + 1;
    a1[1] = v4 + 1;
  }

  a1[1] = v7;
  return v7 - 1;
}

void sub_29A31C72C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1F09B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A31C740(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec>>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A31C7C0(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec>>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

void *sub_29A31C840(void *a1, atomic_uint **a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v10 = v5 - *a1;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v19 = a1;
    if (v11)
    {
      v12 = sub_29A00C9BC(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v8];
    v16[0] = v12;
    v16[1] = v13;
    v17 = v13;
    v18 = &v12[8 * v11];
    v14 = *a2;
    *v13 = *a2;
    if (v14)
    {
      atomic_fetch_add(v14, 1u);
      v13 = v17;
    }

    v17 = v13 + 1;
    sub_29A31B7B8(a1, v16);
    v7 = a1[1];
    sub_29A1F09B4(v16);
  }

  else
  {
    v6 = *a2;
    *v4 = *a2;
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
    }

    v7 = v4 + 1;
    a1[1] = v4 + 1;
  }

  a1[1] = v7;
  return v7 - 1;
}

void sub_29A31C944(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1F09B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A31C9C4()
{
  result = 0;
  *v0 = 0;
  v0[24] = 0;
  return result;
}

pxrInternal__aapl__pxrReserved__::SdfCleanupEnabler *pxrInternal__aapl__pxrReserved__::SdfCleanupEnabler::SdfCleanupEnabler(pxrInternal__aapl__pxrReserved__::SdfCleanupEnabler *this)
{
  v4 = this;
  v2 = sub_29A31CAD4();
  sub_29A0A71C8(v2, &v4);
  return this;
}

{
  v4 = this;
  v2 = sub_29A31CAD4();
  sub_29A0A71C8(v2, &v4);
  return this;
}

void pxrInternal__aapl__pxrReserved__::SdfCleanupEnabler::~SdfCleanupEnabler(pxrInternal__aapl__pxrReserved__::SdfCleanupEnabler *this)
{
  v2 = sub_29A31CAD4();
  if (*(v2 + 1) - *v2 == 8)
  {
    Instance = pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker::GetInstance(v2);
    pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker::CleanupSpecs(Instance);
  }

  sub_29A31CB18(this);
}

uint64_t sub_29A31CAD4()
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::Tf_ExportedStackedStorage<pxrInternal__aapl__pxrReserved__::SdfCleanupEnabler,false>::value))
  {
    sub_29B298CD0();
  }

  result = pxrInternal__aapl__pxrReserved__::Tf_ExportedStackedStorage<pxrInternal__aapl__pxrReserved__::SdfCleanupEnabler,false>::value;
  if ((*(pxrInternal__aapl__pxrReserved__::Tf_ExportedStackedStorage<pxrInternal__aapl__pxrReserved__::SdfCleanupEnabler,false>::value + 24) & 1) == 0)
  {
    *(pxrInternal__aapl__pxrReserved__::Tf_ExportedStackedStorage<pxrInternal__aapl__pxrReserved__::SdfCleanupEnabler,false>::value + 24) = 1;
  }

  return result;
}

uint64_t sub_29A31CB18(uint64_t a1)
{
  v2 = sub_29A31CAD4();
  v3 = v2[1];
  if (*v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v3 - 8);
  }

  if (v4 != a1)
  {
    v10[0] = "tf/stacked.h";
    v10[1] = "_Pop";
    v10[2] = 189;
    v10[3] = "static void pxrInternal__aapl__pxrReserved__::TfStacked<pxrInternal__aapl__pxrReserved__::SdfCleanupEnabler, false, pxrInternal__aapl__pxrReserved__::Tf_ExportedStackedStorage<SdfCleanupEnabler, false>>::_Pop(const Derived *) [Derived = pxrInternal__aapl__pxrReserved__::SdfCleanupEnabler, PerThread = false, Holder = pxrInternal__aapl__pxrReserved__::Tf_ExportedStackedStorage<SdfCleanupEnabler, false>]";
    v11 = 0;
    v12 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B4870F0 & 0x7FFFFFFFFFFFFFFFLL), v8);
    if (v9 >= 0)
    {
      v7 = v8;
    }

    else
    {
      v7 = v8[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v10, "Destroyed %s out of stack order.", v6, v7);
  }

  result = sub_29A31CAD4();
  *(result + 8) -= 8;
  return result;
}

void sub_29A31CBE8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29A31CB64);
}

void sub_29A31CBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfCopySpec(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v7 = sub_29B293A0C(a1);
  if (v8 & 1 | v7 && (v10 = sub_29B293A0C(a3), v11 & 1 | v10))
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2) && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a4))
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(a2))
      {
        IsPrimVariantSelectionPath = 1;
      }

      else
      {
        IsPrimVariantSelectionPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(a2);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(a4))
      {
        v13 = 1;
      }

      else
      {
        v13 = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(a4);
      }

      if (IsPrimVariantSelectionPath == v13)
      {
        IsPropertyPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(a2);
        if (IsPropertyPath == pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(a4))
        {
          IsTargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(a2);
          if (IsTargetPath == pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(a4))
          {
            IsMapperPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsMapperPath(a2);
            if (IsMapperPath == pxrInternal__aapl__pxrReserved__::SdfPath::IsMapperPath(a4))
            {
              IsMapperArgPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsMapperArgPath(a2);
              if (IsMapperArgPath == pxrInternal__aapl__pxrReserved__::SdfPath::IsMapperArgPath(a4))
              {
                IsExpressionPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsExpressionPath(a2);
                if (IsExpressionPath == pxrInternal__aapl__pxrReserved__::SdfPath::IsExpressionPath(a4))
                {
                  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(a4))
                  {
                    sub_29A1DA6E4(a3);
                  }

                  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
                }
              }
            }
          }
        }
      }

      v19 = "sdf/copyUtils.cpp";
      v20 = "SdfCopySpec";
      v21 = 650;
      v22 = "BOOL pxrInternal__aapl__pxrReserved__::SdfCopySpec(const SdfLayerHandle &, const SdfPath &, const SdfLayerHandle &, const SdfPath &, const SdfShouldCopyValueFn &, const SdfShouldCopyChildrenFn &)";
      LOBYTE(v23) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 1, "Incompatible source and destination paths");
    }

    else
    {
      v19 = "sdf/copyUtils.cpp";
      v20 = "SdfCopySpec";
      v21 = 636;
      v22 = "BOOL pxrInternal__aapl__pxrReserved__::SdfCopySpec(const SdfLayerHandle &, const SdfPath &, const SdfLayerHandle &, const SdfPath &, const SdfShouldCopyValueFn &, const SdfShouldCopyChildrenFn &)";
      LOBYTE(v23) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 1, "Invalid empty path");
    }
  }

  else
  {
    v19 = "sdf/copyUtils.cpp";
    v20 = "SdfCopySpec";
    v21 = 631;
    v22 = "BOOL pxrInternal__aapl__pxrReserved__::SdfCopySpec(const SdfLayerHandle &, const SdfPath &, const SdfLayerHandle &, const SdfPath &, const SdfShouldCopyValueFn &, const SdfShouldCopyChildrenFn &)";
    LOBYTE(v23) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 1, "Invalid layer handle");
  }

  return 0;
}

{
  v16 = *MEMORY[0x29EDCA608];
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A204AD80;
  v8[1] = pxrInternal__aapl__pxrReserved__::SdfShouldCopyValue;
  v8[2] = a2;
  v8[3] = a4;
  v15 = v8;
  v9 = operator new(0x20uLL);
  *v9 = &unk_2A204AE28;
  v9[1] = pxrInternal__aapl__pxrReserved__::SdfShouldCopyChildren;
  v9[2] = a2;
  v9[3] = a4;
  v13 = v9;
  v10 = pxrInternal__aapl__pxrReserved__::SdfCopySpec(a1, a2, a3, a4);
  sub_29A3268F0(v12);
  sub_29A32672C(v14);
  return v10;
}

void sub_29A31D618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  v40 = *(v38 - 176);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v38 - 184) = &a12;
  sub_29A124AB0((v38 - 184));
  a12 = v38 - 120;
  sub_29A124AB0(&a12);
  sub_29A1DCEA8(&a15);
  *(v38 - 120) = &a16;
  sub_29A124AB0((v38 - 120));
  a16 = &a19;
  sub_29A124AB0(&a16);
  sub_29A31F0EC(&__p);
  sub_29A31DBE0(&a31);
  sub_29A31F138(&a33);
  sub_29A1DD644((v38 - 200));
  _Unwind_Resume(a1);
}

void sub_29A31D9A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29A3268F0(va);
  sub_29A32672C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A31D9C8(uint64_t a1, _DWORD *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v29 = a1;
  v26 = operator new(8uLL);
  v27 = v26;
  *&v28 = v26;
  *(&v28 + 1) = v26 + 8;
  v25 = operator new(0x1000uLL);
  sub_29A3219D8(&v26, &v25);
  for (i = *(a1 + 16); i != *(a1 + 8); sub_29A321AE4(&v26, i))
  {
    --i;
  }

  v5 = *a1;
  v6 = v27;
  *a1 = v26;
  *(a1 + 8) = v6;
  v7 = v28;
  *(a1 + 16) = v28;
  if (v5)
  {
    operator delete(v5);
    v6 = *(a1 + 8);
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = v7;
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 32) + v9;
  v11 = &v6[8 * (v10 >> 8)];
  v12 = *v11;
  v13 = *v11 + 16 * v10;
  if (v8 == v6)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v15 = (v14 - v12) >> 4;
  if (v15 < 0)
  {
    v19 = 254 - v15;
    v17 = &v11[-8 * (v19 >> 8)];
    v18 = *v17 + 16 * ~v19;
  }

  else
  {
    v16 = v15 + 1;
    v17 = &v11[8 * (v16 >> 8)];
    v18 = *v17 + 16 * v16;
  }

  if (v14 != v18)
  {
    do
    {
      v20 = v12 + 4096;
      if (v11 == v17)
      {
        v21 = v18;
      }

      else
      {
        v21 = v20;
      }

      if (v14 == v21)
      {
        v21 = v14;
      }

      else
      {
        v22 = v14;
        do
        {
          sub_29A1E21F4(v22, a2);
          sub_29A1E2240(v22 + 1, a2 + 1);
          sub_29A1E21F4(v22 + 2, a2 + 2);
          sub_29A1E2240(v22 + 3, a2 + 3);
          v22 += 16;
        }

        while (v22 != v21);
        v9 = *(a1 + 40);
      }

      v9 += (v21 - v14) >> 4;
      *(a1 + 40) = v9;
      if (v11 == v17)
      {
        break;
      }

      v23 = *(v11 + 1);
      v11 += 8;
      v12 = v23;
      v14 = v23;
    }

    while (v23 != v18);
  }

  return a1;
}

_DWORD *sub_29A31DBE0(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29A31DC34(uint64_t a1)
{
  sub_29A321C0C((*(*(a1 + 8) + ((*(a1 + 32) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 32)));
  v2 = vaddq_s64(*(a1 + 32), xmmword_29B487130);
  *(a1 + 32) = v2;
  if (v2.i64[0] >= 0x200uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }
}

void sub_29A31E1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  sub_29A1DCEA8(&a9);
  sub_29A1DCEA8(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_29A31E240(uint64_t a1, _DWORD *a2, int a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  *(a1 + 8) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  return a1;
}

void sub_29A31E3B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A31E3DC(uint64_t result, uint64_t **a2, uint64_t a3)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *a2;
  v7 = a2[1];
  v8 = *result != v5;
  if (*result != v5 && v6 != v7)
  {
    do
    {
      if ((*v6 ^ *v4) > 7)
      {
        if ((*v4 & 0xFFFFFFFFFFFFFFF8) >= (*v6 & 0xFFFFFFFFFFFFFFF8))
        {
          while (v6 != v7 && (*v6 & 0xFFFFFFFFFFFFFFF8) < (*v4 & 0xFFFFFFFFFFFFFFF8))
          {
            result = sub_29A321C60(**a3, v6++, *(a3 + 8), *(a3 + 16), 0, *(a3 + 24), *(a3 + 16) + 8, 1, *(a3 + 32), *(a3 + 40) + 16);
          }
        }

        else
        {
          while (v4 != v5 && (*v4 & 0xFFFFFFFFFFFFFFF8) < (*v6 & 0xFFFFFFFFFFFFFFF8))
          {
            result = sub_29A321C60(**a3, v4++, *(a3 + 8), *(a3 + 16), 1, *(a3 + 24), *(a3 + 16) + 8, 0, *(a3 + 32), *(a3 + 40) + 16);
          }
        }
      }

      else
      {
        result = sub_29A321C60(**a3, v4++, *(a3 + 8), *(a3 + 16), 1, *(a3 + 24), *(a3 + 16) + 8, 1, *(a3 + 32), *(a3 + 40) + 16);
        ++v6;
      }

      v8 = v4 != v5;
    }

    while (v4 != v5 && v6 != v7);
  }

  if (v4 == v5)
  {
    v4 = v6;
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  while (v4 != v10)
  {
    result = sub_29A321C60(**a3, v4++, *(a3 + 8), *(a3 + 16), v8, *(a3 + 24), *(a3 + 16) + 8, !v8, *(a3 + 32), *(a3 + 40) + 16);
  }

  return result;
}

void *sub_29A31E58C(uint64_t a1, void *a2, void *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    while (v4 != v6)
    {
      sub_29A322194(v7, v4);
      v4 += 3;
      v7 += 3;
    }

    sub_29A3218CC(a1, v7);
  }

  return a2;
}

void *sub_29A31E604(void *a1, void *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    while (1)
    {
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v5)
      {
        v5 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v5 + 40) ^ *v2) < 8)
      {
        break;
      }

      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v6)
      {
        v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v6 + 58) ^ *v2) < 8)
      {
        break;
      }

      v2 += 3;
      if (v2 == a2)
      {
        v2 = a2;
        break;
      }
    }

    if (v2 != a2)
    {
      for (i = v2 + 3; i != a2; i += 3)
      {
        v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        if (!v8)
        {
          v8 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        }

        if ((*(v8 + 40) ^ *i) >= 8)
        {
          v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          if (!v9)
          {
            v9 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          }

          if ((*(v9 + 58) ^ *i) >= 8)
          {
            sub_29A322194(v2, i);
            v2 += 3;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_29A31E728(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A3221F0(a1, a2);
    v4 = result;
  }

  else
  {
    *v3 = *a2;
    v4 = v3 + 3;
    *a2 = 0;
    result = sub_29A186A3C(v3 + 1, a2 + 1);
  }

  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_29A31E780(uint64_t result, uint64_t **a2, uint64_t a3)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *a2;
  v7 = a2[1];
  v8 = *result != v5;
  if (*result != v5 && v6 != v7)
  {
    do
    {
      if ((*v6 ^ *v4) > 7)
      {
        if ((*v4 & 0xFFFFFFFFFFFFFFF8) >= (*v6 & 0xFFFFFFFFFFFFFFF8))
        {
          while (v6 != v7 && (*v6 & 0xFFFFFFFFFFFFFFF8) < (*v4 & 0xFFFFFFFFFFFFFFF8))
          {
            result = sub_29A321C60(**a3, v6++, *(a3 + 8), *(a3 + 16), 0, *(a3 + 24), *(a3 + 32) + 8, 1, *(a3 + 40), *(a3 + 48) + 16);
          }
        }

        else
        {
          while (v4 != v5 && (*v4 & 0xFFFFFFFFFFFFFFF8) < (*v6 & 0xFFFFFFFFFFFFFFF8))
          {
            result = sub_29A321C60(**a3, v4++, *(a3 + 8), *(a3 + 16), 1, *(a3 + 24), *(a3 + 32) + 8, 0, *(a3 + 40), *(a3 + 48) + 16);
          }
        }
      }

      else
      {
        result = sub_29A321C60(**a3, v4++, *(a3 + 8), *(a3 + 16), 1, *(a3 + 24), *(a3 + 32) + 8, 1, *(a3 + 40), *(a3 + 48) + 16);
        ++v6;
      }

      v8 = v4 != v5;
    }

    while (v4 != v5 && v6 != v7);
  }

  if (v4 == v5)
  {
    v4 = v6;
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  while (v4 != v10)
  {
    result = sub_29A321C60(**a3, v4++, *(a3 + 8), *(a3 + 16), v8, *(a3 + 24), *(a3 + 32) + 8, !v8, *(a3 + 40), *(a3 + 48) + 16);
  }

  return result;
}

void sub_29A31EDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A31EDCC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B487140 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A204AA78);
}

void sub_29A31EF80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29A31EFA4(uint64_t **a1, uint64_t **a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *a1 != v5;
  if (*a1 != v5 && v6 != v7)
  {
    do
    {
      if ((*v6 ^ *v4) > 7)
      {
        if ((*v4 & 0xFFFFFFFFFFFFFFF8) >= (*v6 & 0xFFFFFFFFFFFFFFF8))
        {
          while (v6 != v7 && (*v6 & 0xFFFFFFFFFFFFFFF8) < (*v4 & 0xFFFFFFFFFFFFFFF8))
          {
            sub_29A322328(a3, v6++, 0, 1);
          }
        }

        else
        {
          while (v4 != v5 && (*v4 & 0xFFFFFFFFFFFFFFF8) < (*v6 & 0xFFFFFFFFFFFFFFF8))
          {
            sub_29A322328(a3, v4++, 1, 0);
          }
        }
      }

      else
      {
        sub_29A322328(a3, v4++, 1, 1);
        ++v6;
      }

      v8 = v4 != v5;
    }

    while (v4 != v5 && v6 != v7);
  }

  if (v4 == v5)
  {
    v4 = v6;
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  while (v4 != v10)
  {
    sub_29A322328(a3, v4++, v8, v8 ^ 1);
  }
}

_DWORD *sub_29A31F0EC(uint64_t a1)
{
  v3 = (a1 + 16);
  sub_29A321878(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

uint64_t sub_29A31F138(void *a1)
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
    v6 = &v2[v5 >> 8];
    v7 = *v6 + 16 * v5;
    v8 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v7 != v8)
    {
      do
      {
        sub_29A321C0C(v7);
        v7 += 16;
        if (v7 - *v6 == 4096)
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
    v11 = 128;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 256;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_29A0D6E48(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfShouldCopyValue(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v9)
    {
      v9 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    if ((*(v9 + 7) ^ *a4) < 8)
    {
      goto LABEL_14;
    }

    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v10)
    {
      v10 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    if ((*(v10 + 55) ^ *a4) < 8)
    {
      goto LABEL_14;
    }

    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v11)
    {
      v11 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    if ((*(v11 + 24) ^ *a4) < 8)
    {
      goto LABEL_14;
    }

    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v12)
    {
      v12 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    if ((*(v12 + 39) ^ *a4) <= 7)
    {
LABEL_14:
      pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SdfListOp();
    }

    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v14)
    {
      v14 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    if ((*(v14 + 36) ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SdfListOp();
    }

    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v15)
    {
      v15 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    if ((*(v15 + 31) ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SdfListOp();
    }

    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v16)
    {
      v16 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    if ((*(v16 + 37) ^ *a4) <= 7)
    {
      sub_29A1DA6E4(a5);
    }
  }

  return 1;
}

void sub_29A31F964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, char a16, void *a17)
{
  sub_29A186B14(v17 - 120);
  sub_29A1EF938(v17 - 104, *(v17 - 96));
  sub_29A1DCEA8(&a12);
  sub_29A1DCEA8(&a14);
  sub_29A1EF938(&a16, a17);
  _Unwind_Resume(a1);
}

uint64_t sub_29A31FB70(uint64_t a1, void *a2)
{
  if (*(a1 + 16) == 1)
  {
    sub_29A18606C(a1, a2);
  }

  else
  {
    sub_29A186A3C(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

uint64_t sub_29A31FBB4(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A20472B8;
    v8 = 0;
    v7[0] = &unk_2A204AB50;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

_DWORD *sub_29A31FC28@<X0>(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a4;
  v6 = *(a1 + 23);
  LOBYTE(a4) = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  if (!v6)
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 24)))
    {
      IsRootPrimPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath((a1 + 24));
      LODWORD(a4) = *(a1 + 23);
      if (!IsRootPrimPath)
      {
        if ((a4 & 0x80000000) != 0)
        {
          sub_29A008D14(v5, *a1, *(a1 + 8));
        }

        else
        {
          *v5 = *a1;
          *(v5 + 16) = *(a1 + 16);
        }

        sub_29A1E21F4((v5 + 24), (a1 + 24));
        sub_29A1E2240((v5 + 28), (a1 + 28));
        *(v5 + 32) = *(a1 + 32);
        pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((v5 + 48), (a1 + 48));
        pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v11, (a1 + 24), a2, a3, 1);
        sub_29A2258F0((v5 + 24), &v11);
        sub_29A225948((v5 + 28), &v11 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
        return sub_29A1DE3A4(&v11);
      }
    }

    else
    {
      LOBYTE(a4) = *(a1 + 23);
    }
  }

  if ((a4 & 0x80) != 0)
  {
    sub_29A008D14(v5, *a1, *(a1 + 8));
  }

  else
  {
    *v5 = *a1;
    *(v5 + 16) = *(a1 + 16);
  }

  sub_29A1E21F4((v5 + 24), (a1 + 24));
  sub_29A1E2240((v5 + 28), (a1 + 28));
  *(v5 + 32) = *(a1 + 32);
  return pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((v5 + 48), (a1 + 48));
}

uint64_t sub_29A31FDCC(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A20472A8;
    v8 = 0;
    v7[0] = &unk_2A204AC30;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

_DWORD *sub_29A31FE40@<X0>(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a4;
  v6 = *(a1 + 23);
  LOBYTE(a4) = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  if (!v6)
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 24)))
    {
      IsRootPrimPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath((a1 + 24));
      LODWORD(a4) = *(a1 + 23);
      if (!IsRootPrimPath)
      {
        if ((a4 & 0x80000000) != 0)
        {
          sub_29A008D14(v5, *a1, *(a1 + 8));
        }

        else
        {
          *v5 = *a1;
          *(v5 + 16) = *(a1 + 16);
        }

        sub_29A1E21F4((v5 + 24), (a1 + 24));
        sub_29A1E2240((v5 + 28), (a1 + 28));
        *(v5 + 32) = *(a1 + 32);
        pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v11, (a1 + 24), a2, a3, 1);
        sub_29A2258F0((v5 + 24), &v11);
        sub_29A225948((v5 + 28), &v11 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
        return sub_29A1DE3A4(&v11);
      }
    }

    else
    {
      LOBYTE(a4) = *(a1 + 23);
    }
  }

  if ((a4 & 0x80) != 0)
  {
    sub_29A008D14(v5, *a1, *(a1 + 8));
  }

  else
  {
    *v5 = *a1;
    *(v5 + 16) = *(a1 + 16);
  }

  sub_29A1E21F4((v5 + 24), (a1 + 24));
  result = sub_29A1E2240((v5 + 28), (a1 + 28));
  *(v5 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_29A31FFA8(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2049070;
    v8 = 0;
    v7[0] = &unk_2A204AD10;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfShouldCopyChildren(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a6)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v8)
    {
      v8 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    if ((*v8 ^ *a3) < 8)
    {
      goto LABEL_11;
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v9)
    {
      v9 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    if ((*(v9 + 6) ^ *a3) < 8)
    {
      goto LABEL_11;
    }

    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v10)
    {
      v10 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    if ((*(v10 + 3) ^ *a3) <= 7)
    {
LABEL_11:
      v12 = 0;
      v13 = 0;
      v14 = 0;
      sub_29A1DA6E4(a4);
    }
  }

  return 1;
}

void sub_29A320300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void *sub_29A3203E8(uint64_t a1, void *a2, void *a3)
{
  if (a3 != a2)
  {
    v3 = *(a1 + 8);
    if (a3 == v3)
    {
      v4 = a2;
    }

    else
    {
      v4 = a2;
      do
      {
        if (a3 != v4)
        {
          if ((*v4 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v4 = *a3;
          *a3 = 0;
        }

        ++a3;
        ++v4;
      }

      while (a3 != v3);
      v3 = *(a1 + 8);
    }

    while (v3 != v4)
    {
      v6 = *--v3;
      v5 = v6;
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    *(a1 + 8) = v4;
  }

  return a2;
}

uint64_t *sub_29A32047C(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v63 = *(a2 - 1);
        v64 = *v9;
        if ((v63 & 0xFFFFFFFFFFFFFFF8) < (*v9 & 0xFFFFFFFFFFFFFFF8))
        {
          *v9 = v63;
          *(a2 - 1) = v64;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v65 = v9 + 1;
      v66 = v9[1];
      v67 = v9 + 2;
      v68 = v9[2];
      v69 = v66 & 0xFFFFFFFFFFFFFFF8;
      v70 = *v9;
      v71 = *v9 & 0xFFFFFFFFFFFFFFF8;
      v72 = v68 & 0xFFFFFFFFFFFFFFF8;
      if ((v66 & 0xFFFFFFFFFFFFFFF8) >= v71)
      {
        if (v72 < v69)
        {
          v73 = v9;
          *v65 = v68;
          *v67 = v66;
          v74 = v9 + 1;
          v77 = v72 >= v71;
          v71 = v66 & 0xFFFFFFFFFFFFFFF8;
          v72 = v66 & 0xFFFFFFFFFFFFFFF8;
          if (!v77)
          {
            goto LABEL_103;
          }

LABEL_105:
          v79 = *(a2 - 1);
          if ((v79 & 0xFFFFFFFFFFFFFFF8) < v72)
          {
            *v67 = v79;
            *(a2 - 1) = v66;
            v80 = *v67;
            v81 = *v65;
            if ((v80 & 0xFFFFFFFFFFFFFFF8) < (v81 & 0xFFFFFFFFFFFFFFF8))
            {
              v9[1] = v80;
              v9[2] = v81;
              v82 = *v9;
              if ((v80 & 0xFFFFFFFFFFFFFFF8) < (*v9 & 0xFFFFFFFFFFFFFFF8))
              {
                *v9 = v80;
                v9[1] = v82;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v72 < v69)
        {
          v73 = v9;
          v74 = v9 + 2;
          v66 = *v9;
          goto LABEL_103;
        }

        *v9 = v66;
        v9[1] = v70;
        v73 = v9 + 1;
        v74 = v9 + 2;
        v66 = v70;
        if (v72 < v71)
        {
LABEL_103:
          *v73 = v68;
          *v74 = v70;
          v72 = v71;
          goto LABEL_105;
        }
      }

      v66 = v68;
      goto LABEL_105;
    }

    if (v12 == 5)
    {

      return sub_29A320AF0(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_29A320C74(v9, a2);
      }

      else
      {

        return sub_29A320D10(v9, a2);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return sub_29A3212C4(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    v16 = v15 & 0xFFFFFFFFFFFFFFF8;
    if (v12 >= 0x81)
    {
      v17 = *v13;
      v18 = *v13 & 0xFFFFFFFFFFFFFFF8;
      v19 = *v9;
      v20 = *v9 & 0xFFFFFFFFFFFFFFF8;
      if (v18 >= v20)
      {
        if (v16 < v18)
        {
          *v13 = v15;
          *(a2 - 1) = v17;
          v25 = *v9;
          if ((*v13 & 0xFFFFFFFFFFFFFFF8) < (*v9 & 0xFFFFFFFFFFFFFFF8))
          {
            *v9 = *v13;
            *v13 = v25;
          }
        }
      }

      else
      {
        if (v16 < v18)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v17;
        *v13 = v19;
        v27 = *(a2 - 1);
        if ((v27 & 0xFFFFFFFFFFFFFFF8) < v20)
        {
          *v13 = v27;
LABEL_29:
          *(a2 - 1) = v19;
        }
      }

      v28 = v13 - 1;
      v29 = *(v13 - 1);
      v30 = v29 & 0xFFFFFFFFFFFFFFF8;
      v31 = v9[1];
      v32 = *(a2 - 2);
      v33 = v32 & 0xFFFFFFFFFFFFFFF8;
      if ((v29 & 0xFFFFFFFFFFFFFFF8) >= (v31 & 0xFFFFFFFFFFFFFFF8))
      {
        if (v33 < v30)
        {
          *v28 = v32;
          *(a2 - 2) = v29;
          v34 = v9[1];
          if ((*v28 & 0xFFFFFFFFFFFFFFF8) < (v34 & 0xFFFFFFFFFFFFFFF8))
          {
            v9[1] = *v28;
            *v28 = v34;
          }
        }
      }

      else
      {
        if (v33 < v30)
        {
          v9[1] = v32;
          goto LABEL_43;
        }

        v9[1] = v29;
        *v28 = v31;
        v36 = *(a2 - 2);
        if ((v36 & 0xFFFFFFFFFFFFFFF8) < (v31 & 0xFFFFFFFFFFFFFFF8))
        {
          *v28 = v36;
LABEL_43:
          *(a2 - 2) = v31;
        }
      }

      v39 = v13[1];
      v37 = v13 + 1;
      v38 = v39;
      v40 = v39 & 0xFFFFFFFFFFFFFFF8;
      v41 = v9[2];
      v42 = *(a2 - 3);
      v43 = v42 & 0xFFFFFFFFFFFFFFF8;
      if ((v39 & 0xFFFFFFFFFFFFFFF8) >= (v41 & 0xFFFFFFFFFFFFFFF8))
      {
        if (v43 < v40)
        {
          *v37 = v42;
          *(a2 - 3) = v38;
          v44 = v9[2];
          if ((*v37 & 0xFFFFFFFFFFFFFFF8) < (v44 & 0xFFFFFFFFFFFFFFF8))
          {
            v9[2] = *v37;
            *v37 = v44;
          }
        }
      }

      else
      {
        if (v43 < v40)
        {
          v9[2] = v42;
          goto LABEL_52;
        }

        v9[2] = v38;
        *v37 = v41;
        v45 = *(a2 - 3);
        if ((v45 & 0xFFFFFFFFFFFFFFF8) < (v41 & 0xFFFFFFFFFFFFFFF8))
        {
          *v37 = v45;
LABEL_52:
          *(a2 - 3) = v41;
        }
      }

      v46 = *v14;
      v47 = *v14 & 0xFFFFFFFFFFFFFFF8;
      v48 = *v28;
      v49 = *v28 & 0xFFFFFFFFFFFFFFF8;
      v50 = *v37;
      v51 = *v37 & 0xFFFFFFFFFFFFFFF8;
      if (v47 < v49)
      {
        if (v51 >= v47)
        {
          *v28 = v46;
          *v14 = v48;
          v28 = v14;
          v46 = v50;
          v52 = v48;
          goto LABEL_58;
        }

        goto LABEL_59;
      }

      v52 = *v14;
      if (v51 < v47)
      {
        *v14 = v50;
        *v37 = v46;
        v37 = v14;
        v46 = v48;
        v52 = v50;
LABEL_58:
        if (v51 < v49)
        {
LABEL_59:
          *v28 = v50;
          *v37 = v48;
          v52 = v46;
        }
      }

      v53 = *v9;
      *v9 = v52;
      *v14 = v53;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v21 = *v9;
    v22 = *v9 & 0xFFFFFFFFFFFFFFF8;
    v23 = *v13;
    v24 = *v14 & 0xFFFFFFFFFFFFFFF8;
    if (v22 < v24)
    {
      if (v16 < v22)
      {
        *v14 = v15;
        goto LABEL_38;
      }

      *v14 = v21;
      *v9 = v23;
      v35 = *(a2 - 1);
      if ((v35 & 0xFFFFFFFFFFFFFFF8) < v24)
      {
        *v9 = v35;
LABEL_38:
        *(a2 - 1) = v23;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v16 >= v22)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v21;
    v26 = *v14;
    if ((*v9 & 0xFFFFFFFFFFFFFFF8) >= (*v14 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v26;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if ((*(v9 - 1) & 0xFFFFFFFFFFFFFFF8) >= (*v9 & 0xFFFFFFFFFFFFFFF8))
    {
      result = sub_29A320D8C(v9, a2);
      v9 = result;
      goto LABEL_67;
    }

LABEL_62:
    v54 = sub_29A320E88(v9, a2);
    if ((v55 & 1) == 0)
    {
      goto LABEL_65;
    }

    v56 = sub_29A320F84(v9, v54);
    v9 = v54 + 1;
    result = sub_29A320F84(v54 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v54;
      if (v56)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v56)
    {
LABEL_65:
      result = sub_29A32047C(v8, v54, a3, -v11, a5 & 1);
      v9 = v54 + 1;
LABEL_67:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v57 = *v9;
  v58 = v9[1];
  v59 = v58 & 0xFFFFFFFFFFFFFFF8;
  v60 = *v9 & 0xFFFFFFFFFFFFFFF8;
  v61 = *(a2 - 1);
  v62 = v61 & 0xFFFFFFFFFFFFFFF8;
  if ((v58 & 0xFFFFFFFFFFFFFFF8) >= v60)
  {
    if (v62 < v59)
    {
      v9[1] = v61;
      *(a2 - 1) = v58;
      v76 = *v9;
      v75 = v9[1];
      if ((v75 & 0xFFFFFFFFFFFFFFF8) < (*v9 & 0xFFFFFFFFFFFFFFF8))
      {
        *v9 = v75;
        v9[1] = v76;
      }
    }
  }

  else
  {
    if (v62 >= v59)
    {
      *v9 = v58;
      v9[1] = v57;
      v78 = *(a2 - 1);
      if ((v78 & 0xFFFFFFFFFFFFFFF8) >= v60)
      {
        return result;
      }

      v9[1] = v78;
    }

    else
    {
      *v9 = v61;
    }

    *(a2 - 1) = v57;
  }

  return result;
}

uint64_t *sub_29A320AF0(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *a2 & 0xFFFFFFFFFFFFFFF8;
  v7 = *result;
  v8 = *result & 0xFFFFFFFFFFFFFFF8;
  v9 = *a3;
  v10 = *a3 & 0xFFFFFFFFFFFFFFF8;
  if (v6 >= v8)
  {
    if (v10 >= v6)
    {
      v8 = *a3 & 0xFFFFFFFFFFFFFFF8;
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      v8 = v6;
      if ((*a2 & 0xFFFFFFFFFFFFFFF8) < (*result & 0xFFFFFFFFFFFFFFF8))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
        v8 = *a3 & 0xFFFFFFFFFFFFFFF8;
      }
    }
  }

  else
  {
    if (v10 >= v6)
    {
      *result = v5;
      *a2 = v7;
      v5 = *a3;
      if ((*a3 & 0xFFFFFFFFFFFFFFF8) >= v8)
      {
        v8 = *a3 & 0xFFFFFFFFFFFFFFF8;
        goto LABEL_12;
      }

      *a2 = v5;
    }

    else
    {
      *result = v9;
    }

    *a3 = v7;
    v5 = v7;
  }

LABEL_12:
  if ((*a4 & 0xFFFFFFFFFFFFFFF8) < v8)
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if ((*a3 & 0xFFFFFFFFFFFFFFF8) < (*a2 & 0xFFFFFFFFFFFFFFF8))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if ((*a2 & 0xFFFFFFFFFFFFFFF8) < (*result & 0xFFFFFFFFFFFFFFF8))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if ((*a5 & 0xFFFFFFFFFFFFFFF8) < (*a4 & 0xFFFFFFFFFFFFFFF8))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if ((*a4 & 0xFFFFFFFFFFFFFFF8) < (*a3 & 0xFFFFFFFFFFFFFFF8))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if ((*a3 & 0xFFFFFFFFFFFFFFF8) < (*a2 & 0xFFFFFFFFFFFFFFF8))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if ((*a2 & 0xFFFFFFFFFFFFFFF8) < (*result & 0xFFFFFFFFFFFFFFF8))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_29A320C74(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v6 = *v4;
        v5 = v4[1];
        v4 = v2;
        if ((v5 & 0xFFFFFFFFFFFFFFF8) < (v6 & 0xFFFFFFFFFFFFFFF8))
        {
          *v2 = 0;
          v7 = v3;
          while (1)
          {
            v8 = (result + v7);
            *v8 = 0;
            v8[1] = v6;
            if (!v7)
            {
              break;
            }

            v6 = *(v8 - 1);
            v7 -= 8;
            if ((v5 & 0xFFFFFFFFFFFFFFF8) >= (v6 & 0xFFFFFFFFFFFFFFF8))
            {
              v9 = (result + v7 + 8);
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          if ((*v9 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v9 = v5;
        }

        v2 = v4 + 1;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

uint64_t *sub_29A320D10(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    for (i = result + 1; result + 1 != a2; ++i)
    {
      v4 = *result;
      v3 = result[1];
      result = i;
      if ((v3 & 0xFFFFFFFFFFFFFFF8) < (v4 & 0xFFFFFFFFFFFFFFF8))
      {
        *i = 0;
        v5 = i;
        do
        {
          v6 = v5;
          *v5 = v4;
          *--v5 = 0;
          v4 = *(v6 - 2);
        }

        while ((v3 & 0xFFFFFFFFFFFFFFF8) < (v4 & 0xFFFFFFFFFFFFFFF8));
        if ((*v5 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v5 = v3;
      }
    }
  }

  return result;
}

uint64_t *sub_29A320D8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = 0;
  v3 = v2 & 0xFFFFFFFFFFFFFFF8;
  if ((v2 & 0xFFFFFFFFFFFFFFF8) >= (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8))
  {
    v6 = a1 + 1;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      ++v6;
    }

    while (v3 >= (*v4 & 0xFFFFFFFFFFFFFFF8));
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[1];
      ++v4;
    }

    while (v3 >= (v5 & 0xFFFFFFFFFFFFFFF8));
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *--a2;
    }

    while (v3 < (v7 & 0xFFFFFFFFFFFFFFF8));
  }

  if (v4 < a2)
  {
    v8 = *v4;
    v9 = *a2;
    do
    {
      *v4 = v9;
      *a2 = v8;
      do
      {
        v10 = v4[1];
        ++v4;
        v8 = v10;
      }

      while (v3 >= (v10 & 0xFFFFFFFFFFFFFFF8));
      do
      {
        v11 = *--a2;
        v9 = v11;
      }

      while (v3 < (v11 & 0xFFFFFFFFFFFFFFF8));
    }

    while (v4 < a2);
  }

  v12 = *a1;
  v13 = *a1 & 7;
  if (v4 - 1 == a1)
  {
    if (v13)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if (v13)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *(v4 - 1);
  }

  *(v4 - 1) = v2;
  return v4;
}

uint64_t *sub_29A320E88(uint64_t *a1, uint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  *a1 = 0;
  v4 = v3 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v5 = a1[++v2];
  }

  while ((v5 & 0xFFFFFFFFFFFFFFF8) < v4);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v9 = *--a2;
    }

    while ((v9 & 0xFFFFFFFFFFFFFFF8) >= v4);
  }

  else
  {
    do
    {
      v8 = *--a2;
    }

    while ((v8 & 0xFFFFFFFFFFFFFFF8) >= v4);
  }

  if (v6 < a2)
  {
    v10 = *a2;
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      *v11 = v10;
      *v12 = v5;
      do
      {
        v13 = v11[1];
        ++v11;
        v5 = v13;
      }

      while ((v13 & 0xFFFFFFFFFFFFFFF8) < v4);
      do
      {
        v14 = *--v12;
        v10 = v14;
      }

      while ((v14 & 0xFFFFFFFFFFFFFFF8) >= v4);
    }

    while (v11 < v12);
    v7 = v11 - 1;
  }

  v15 = *a1;
  v16 = *a1 & 7;
  if (v7 == a1)
  {
    if (v16)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if (v16)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL sub_29A320F84(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = v6 & 0xFFFFFFFFFFFFFFF8;
      v8 = *a1 & 0xFFFFFFFFFFFFFFF8;
      v9 = *(a2 - 1);
      v10 = v9 & 0xFFFFFFFFFFFFFFF8;
      if ((v6 & 0xFFFFFFFFFFFFFFF8) >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v31 = *a1;
          v30 = a1[1];
          if ((v30 & 0xFFFFFFFFFFFFFFF8) < (*a1 & 0xFFFFFFFFFFFFFFF8))
          {
            *a1 = v30;
            a1[1] = v31;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v43 = *(a2 - 1);
        if ((v43 & 0xFFFFFFFFFFFFFFF8) >= v8)
        {
          return 1;
        }

        a1[1] = v43;
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

      sub_29A320AF0(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = v21 & 0xFFFFFFFFFFFFFFF8;
    v25 = *a1;
    v26 = *a1 & 0xFFFFFFFFFFFFFFF8;
    v27 = v23 & 0xFFFFFFFFFFFFFFF8;
    if ((v21 & 0xFFFFFFFFFFFFFFF8) >= v26)
    {
      if (v27 < v24)
      {
        v28 = a1;
        *v20 = v23;
        *v22 = v21;
        v29 = a1 + 1;
        v42 = v27 >= v26;
        v26 = v21 & 0xFFFFFFFFFFFFFFF8;
        v27 = v21 & 0xFFFFFFFFFFFFFFF8;
        if (v42)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }
    }

    else
    {
      if (v27 < v24)
      {
        v28 = a1;
        v29 = a1 + 2;
        v21 = *a1;
LABEL_51:
        *v28 = v23;
        *v29 = v25;
        v27 = v26;
LABEL_53:
        v44 = *(a2 - 1);
        if ((v44 & 0xFFFFFFFFFFFFFFF8) < v27)
        {
          *v22 = v44;
          *(a2 - 1) = v21;
          v45 = *v22;
          v46 = *v20;
          if ((v45 & 0xFFFFFFFFFFFFFFF8) < (v46 & 0xFFFFFFFFFFFFFFF8))
          {
            a1[1] = v45;
            a1[2] = v46;
            v47 = *a1;
            if ((v45 & 0xFFFFFFFFFFFFFFF8) < (*a1 & 0xFFFFFFFFFFFFFFF8))
            {
              *a1 = v45;
              a1[1] = v47;
            }
          }
        }

        return 1;
      }

      *a1 = v21;
      a1[1] = v25;
      v28 = a1 + 1;
      v29 = a1 + 2;
      v21 = v25;
      if (v27 < v26)
      {
        goto LABEL_51;
      }
    }

    v21 = v23;
    goto LABEL_53;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if ((v3 & 0xFFFFFFFFFFFFFFF8) < (*a1 & 0xFFFFFFFFFFFFFFF8))
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
  v14 = v13 & 0xFFFFFFFFFFFFFFF8;
  v15 = *a1;
  v16 = *a1 & 0xFFFFFFFFFFFFFFF8;
  v17 = v11 & 0xFFFFFFFFFFFFFFF8;
  if ((v13 & 0xFFFFFFFFFFFFFFF8) >= v16)
  {
    if (v17 >= v14)
    {
      goto LABEL_26;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_24:
    if (v17 >= v16)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v14)
  {
    *a1 = v13;
    a1[1] = v15;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_24;
  }

LABEL_25:
  *v18 = v11;
  *v19 = v15;
LABEL_26:
  v32 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = *v32;
    v36 = *v32 & 0xFFFFFFFFFFFFFFF8;
    v37 = *v12;
    if (v36 < (*v12 & 0xFFFFFFFFFFFFFFF8))
    {
      *v32 = 0;
      v38 = v33;
      while (1)
      {
        v39 = (a1 + v38 + 16);
        v40 = (a1 + v38 + 24);
        if (v39 != v40)
        {
          if ((*v40 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            v37 = *v39;
          }

          *v40 = v37;
          *v39 = 0;
        }

        if (v38 == -16)
        {
          break;
        }

        v37 = *(a1 + v38 + 8);
        v38 -= 8;
        if (v36 >= (v37 & 0xFFFFFFFFFFFFFFF8))
        {
          v41 = (a1 + v38 + 24);
          goto LABEL_38;
        }
      }

      v41 = a1;
LABEL_38:
      if ((*v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v41 = v35;
      if (++v34 == 8)
      {
        return v32 + 1 == a2;
      }
    }

    v12 = v32;
    v33 += 8;
    if (++v32 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_29A3212C4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_29A32144C(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        if ((*v12 & 0xFFFFFFFFFFFFFFF8) < (*a1 & 0xFFFFFFFFFFFFFFF8))
        {
          *v12 = *a1;
          *a1 = v13;
          sub_29A32144C(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        *a1 = 0;
        v16 = sub_29A321574(a1, a4, v8);
        v17 = *v16;
        v18 = *v16 & 7;
        if (v14 == v16)
        {
          if (v18)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v16 = v15;
        }

        else
        {
          if (v18)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v16 = *v14;
          *v14 = v15;
          sub_29A321608(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_29A32144C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v6 + 2 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        if ((*v8 & 0xFFFFFFFFFFFFFFF8) < (v8[1] & 0xFFFFFFFFFFFFFFF8))
        {
          v10 = v8[1];
          ++v8;
          v7 = v9;
        }
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFF8;
      v12 = *a4;
      v13 = *a4 & 0xFFFFFFFFFFFFFFF8;
      if (v11 >= v13)
      {
        *a4 = 0;
        do
        {
          v14 = v8;
          if (v8 != a4)
          {
            if ((*a4 & 7) != 0)
            {
              atomic_fetch_add_explicit((*a4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *a4 = *v8;
            *v8 = 0;
          }

          if (v5 < v7)
          {
            break;
          }

          v15 = (2 * v7) | 1;
          v8 = (result + 8 * v15);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v16 = *v8;
            v7 = v15;
          }

          else
          {
            v16 = *v8;
            if ((*v8 & 0xFFFFFFFFFFFFFFF8) >= (v8[1] & 0xFFFFFFFFFFFFFFF8))
            {
              v7 = v15;
            }

            else
            {
              v16 = v8[1];
              ++v8;
            }
          }

          a4 = v14;
        }

        while ((v16 & 0xFFFFFFFFFFFFFFF8) >= v13);
        if ((*v14 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v14 = v12;
      }
    }
  }

  return result;
}

void *sub_29A321574(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[v3];
    v5 = v4 + 1;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v8 = v4[2];
      v7 = v4 + 2;
      if ((*(v7 - 1) & 0xFFFFFFFFFFFFFFF8) >= (v8 & 0xFFFFFFFFFFFFFFF8))
      {
        v3 = v6;
      }

      else
      {
        v5 = v7;
      }
    }

    if (v5 != a1)
    {
      if ((*a1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *a1 = *v5;
      *v5 = 0;
    }

    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t sub_29A321608(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = v9 & 0xFFFFFFFFFFFFFFF8;
    if ((*v6 & 0xFFFFFFFFFFFFFFF8) < (v9 & 0xFFFFFFFFFFFFFFF8))
    {
      *v7 = 0;
      do
      {
        v11 = v6;
        if (v6 != v7)
        {
          if ((*v7 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v7 = *v6;
          *v6 = 0;
        }

        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 8 * v5);
        v7 = v11;
      }

      while ((*v6 & 0xFFFFFFFFFFFFFFF8) < v10);
      if ((*v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v11 = v8;
    }
  }

  return result;
}

uint64_t *sub_29A3216A8(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186A3C(a1 + 1, a3);
  return a1;
}

void **sub_29A321704(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A321798(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A321824, &stru_2A2049940);
  }
}

uint64_t sub_29A321798(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B485F65 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2049940);
}

_DWORD *sub_29A321824@<X0>(void *a1@<X8>)
{
  result = operator new(4uLL);
  *result = 0;
  *a1 = result;
  a1[1] = sub_29A32186C;
  a1[2] = &stru_2A2049940;
  return result;
}

void sub_29A32186C(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A321878(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A3218CC(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_29A3218CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 24)
  {
    result = sub_29A186B14(i - 16);
    v6 = *(i - 24);
    v5 = v6;
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t *sub_29A321960(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_29A0ECFD4((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_29B28D0B0(v4, &v6);
    }
  }

  return a1;
}

void sub_29A3219C0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FFF4(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3219D8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a1 + 24))
  {
    v6 = *a1;
    v5 = *(a1 + 8);
    if (v5 <= *a1)
    {
      if (v4 == v6)
      {
        v10 = 1;
      }

      else
      {
        v10 = (v4 - v6) >> 2;
      }

      if (v10 >> 61)
      {
        sub_29A00C8B8();
      }

      v11 = operator new(8 * v10);
      v12 = &v11[8 * (v10 >> 2)];
      v14 = v4 - v5;
      v13 = v4 == v5;
      v4 = v12;
      if (!v13)
      {
        v4 = &v12[v14];
        v15 = &v11[8 * (v10 >> 2)];
        do
        {
          v16 = *v5;
          v5 += 8;
          *v15 = v16;
          v15 += 8;
          v14 -= 8;
        }

        while (v14);
      }

      *a1 = v11;
      *(a1 + 8) = v12;
      *(a1 + 16) = v4;
      *(a1 + 24) = &v11[8 * v10];
      if (v6)
      {
        operator delete(v6);
        v4 = *(a1 + 16);
      }
    }

    else
    {
      v7 = (&v5[-*a1] >> 3) + 1;
      v8 = &v5[-8 * (v7 / 2)];
      v9 = v4 - v5;
      if (v9)
      {
        memmove(&v5[-8 * (v7 / 2)], *(a1 + 8), v9);
        v5 = *(a1 + 8);
      }

      v4 = &v8[v9];
      *(a1 + 8) = &v5[8 * (v7 / -2)];
      *(a1 + 16) = v4;
    }
  }

  *v4 = *a2;
  *(a1 + 16) += 8;
}

void sub_29A321AE4(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v8 >= v7)
    {
      v11 = v7 - v4;
      v10 = v11 == 0;
      v12 = v11 >> 2;
      if (v10)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      if (v13 >> 61)
      {
        sub_29A00C8B8();
      }

      v14 = operator new(8 * v13);
      v6 = &v14[(2 * v13 + 6) & 0xFFFFFFFFFFFFFFF8];
      v15 = v6;
      v16 = v8 - v4;
      if (v8 != v4)
      {
        v15 = &v6[v16];
        v17 = &v14[(2 * v13 + 6) & 0xFFFFFFFFFFFFFFF8];
        v18 = v4;
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          v16 -= 8;
        }

        while (v16);
      }

      *a1 = v14;
      *(a1 + 8) = v6;
      *(a1 + 16) = v15;
      *(a1 + 24) = &v14[8 * v13];
      if (v4)
      {
        operator delete(v5);
        v6 = *(a1 + 8);
      }
    }

    else
    {
      v9 = (((v7 - v8) >> 3) + 1) / 2;
      v6 = &v4[v9];
      if (v8 != v4)
      {
        memmove(&v4[v9], v4, v8 - v4);
        v8 = *(a1 + 16);
      }

      *(a1 + 8) = v6;
      *(a1 + 16) = &v8[8 * v9];
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  *(v6 - 1) = *a2;
  *(a1 + 8) -= 8;
}