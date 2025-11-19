void sub_29A9E43C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_29A9E653C((v22 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_29A9E4454(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::ComposeFieldsForFileFormatArguments(pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatContext *a3, int a4)
{
  pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::getAssetsPathToken(a1);
  sub_29A008E78(&__p, usdGltf::DEBUG_TAG);
  adobe::usd::argComposeString(a3, a4, &qword_2A1746738);
}

void sub_29A9E4540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::OpenGltfAsset(uint64_t a1, uint64_t *a2, uint64_t a3, BOOL *a4)
{
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  if (*(a1 + 23) < 0)
  {
    sub_29A008D14(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset(Resolver);
  v10 = *&v23.__r_.__value_.__l.__data_;
  *&v23.__r_.__value_.__l.__data_ = 0uLL;
  v11 = a2[1];
  *a2 = v10;
  if (v11)
  {
    sub_29A014BEC(v11);
    if (v23.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(v23.__r_.__value_.__l.__size_);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = *a2;
  if (!v12)
  {
    __p.__r_.__value_.__r.__words[0] = "usdGltf/fileFormat.cpp";
    __p.__r_.__value_.__l.__size_ = "OpenGltfAsset";
    __p.__r_.__value_.__r.__words[2] = 113;
    v25 = "static BOOL pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::OpenGltfAsset(const std::string &, std::shared_ptr<ArAsset> &, std::string &, BOOL &)";
    LOBYTE(v26) = 0;
    if (*(a1 + 23) >= 0)
    {
      v20 = a1;
    }

    else
    {
      v20 = *a1;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "Couldn't open asset %s", v9, v20);
    return v12 != 0;
  }

  pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathInner(a1, &__p);
  v13 = v27;
  v14 = v27;
  v15 = v26;
  if ((v27 & 0x80u) == 0)
  {
    v16 = v27;
  }

  else
  {
    v16 = v26;
  }

  if (!v16)
  {
    pxrInternal__aapl__pxrReserved__::TfGetPathName(&__p, &v23);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v23;
    v13 = v27;
    v15 = v26;
    v14 = v27;
  }

  if ((v14 & 0x80u) != 0)
  {
    v13 = v15;
  }

  if (v13)
  {
    p_p = &v25;
  }

  else
  {
    p_p = &__p;
  }

  pxrInternal__aapl__pxrReserved__::TfGetExtension(p_p, &v22);
  pxrInternal__aapl__pxrReserved__::TfStringToLower(&v22, &v23);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v18 = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v23.__r_.__value_.__l.__size_ != 4)
    {
      *a4 = 0;
LABEL_37:
      operator delete(v23.__r_.__value_.__l.__data_);
      goto LABEL_38;
    }

    v19 = v23.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) != 4)
    {
      *a4 = 0;
      goto LABEL_38;
    }

    v19 = &v23;
  }

  *a4 = LODWORD(v19->__r_.__value_.__l.__data_) == 1718905959;
  if (v18 < 0)
  {
    goto LABEL_37;
  }

LABEL_38:
  if (v27 < 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v12 != 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::Read(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, uint64_t a3)
{
  mach_absolute_time();
  if (sub_29A9E3F04(0))
  {
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Read: %s\n", v6, v7, v8);
  }

  FileFormatArguments = pxrInternal__aapl__pxrReserved__::SdfLayer::GetFileFormatArguments(a2);
  (*(*a1 + 40))(&v58, a1, FileFormatArguments);
  v10 = v58;
  if (v58)
  {
  }

  v48[0] = v10;
  sub_29B293C98(v48);
  sub_29A9E659C(&v56, v48);
  sub_29A9E656C(v48);
  v54 = 0;
  v55 = 0;
  v52[0] = 0;
  v52[1] = 0;
  v53 = 0;
  v51 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::OpenGltfAsset(a3, &v54, v52, &v51))
  {
    v11 = v54;
    (*(*v54 + 24))(&v49, v54);
    v12 = (*(*v11 + 16))(v11);
    if (sub_29A9E3F04(0))
    {
      if (v51)
      {
        v15 = "GLTF";
      }

      else
      {
        v15 = "GLB";
      }

      v16 = v52;
      if (v53 < 0)
      {
        v16 = v52[0];
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Type: %s, Base path: '%s', Size: %zu KB\n", v13, v14, v15, v16, v12 >> 10);
    }

    sub_29A9CAE1C(v48);
    if (adobe::usd::readGltfFromMemory(v48, v52, v51, v49, v12))
    {
      v25 = 0;
      v26 = 0;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0;
      v27 = 0;
      v28 = 0x4038000000000000;
      v30[0] = 0;
      v30[1] = 0;
      v29 = v30;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0;
      v20 = 1;
      v19 = 257;
      adobe::usd::importGltf(&v19, v48, &v21, a3);
    }

    *&v21 = "usdGltf/fileFormat.cpp";
    *(&v21 + 1) = "Read";
    *&v22 = 161;
    *(&v22 + 1) = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::Read(pxr_aapl::SdfLayer *, const std::string &, BOOL) const";
    LOBYTE(v23) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v21, 3, "Error reading glTF file\n");
    sub_29A9CCF78(v48);
    if (v50)
    {
      sub_29A014BEC(v50);
    }
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
  }

  if (v55)
  {
    sub_29A014BEC(v55);
  }

  v17 = v57;
  if (v57 && atomic_fetch_add_explicit((v57 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v17 + 8))(v17);
  }

  sub_29A32BD28(&v58);
  return 0;
}

void sub_29A9E4D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  sub_29A9E5D10(&a33);
  sub_29A9CCF78(&STACK[0x210]);
  v35 = *(v33 - 128);
  if (v35)
  {
    sub_29A014BEC(v35);
  }

  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  v36 = *(v33 - 80);
  if (v36)
  {
    sub_29A014BEC(v36);
  }

  v37 = *(v33 - 64);
  if (v37)
  {
    if (atomic_fetch_add_explicit(v37 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v37 + 8))(v37);
    }
  }

  sub_29A32BD28((v33 - 56));
  _Unwind_Resume(a1);
}

void sub_29A9E4E40(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B2BBDCC();
}

void pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::Read(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, uint64_t *a3)
{
  mach_absolute_time();
  if (sub_29A9E3F04(0))
  {
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Read: %s\n", v6, v7, v8);
  }

  FileFormatArguments = pxrInternal__aapl__pxrReserved__::SdfLayer::GetFileFormatArguments(a2);
  (*(*a1 + 40))(&v40, a1, FileFormatArguments);
  v10 = v40;
  if (v40)
  {
  }

  v11[0] = v10;
  sub_29B293C98(v11);
  sub_29A9E659C(&v39, v11);
  sub_29A9E656C(v11);
  v17 = 0;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v18 = 0;
  v19 = 0x4038000000000000;
  v21[0] = 0;
  v20 = v21;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21[1] = 0;
  v38 = 0;
  sub_29A9CAE1C(v11);
  sub_29A9E4E40(&v39);
}

void sub_29A9E52C4(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_29A9CCF78(va);
  sub_29A9E5D10(&STACK[0x410]);
  v24 = *(v22 - 64);
  if (v24)
  {
    if (atomic_fetch_add_explicit(v24 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v24 + 8))(v24);
    }
  }

  sub_29A32BD28((v22 - 56));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::ReadFromString(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, uint64_t a3)
{
  mach_absolute_time();
  if (sub_29A9E3F04(0))
  {
    if (*(a3 + 23) >= 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a3 + 8) >> 10;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("ReadFromString: %zu KB\n", v6, v7, v8);
  }

  FileFormatArguments = pxrInternal__aapl__pxrReserved__::SdfLayer::GetFileFormatArguments(a2);
  (*(*a1 + 40))(&v51, a1, FileFormatArguments);
  v10 = v51;
  if (v51)
  {
  }

  v46[0] = v10;
  sub_29B293C98(v46);
  sub_29A9E659C(&v49, v46);
  sub_29A9E656C(v46);
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  sub_29A9CAE1C(v46);
  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    LODWORD(v13) = *(a3 + 23);
  }

  else
  {
    v13 = *(a3 + 8);
  }

  if (adobe::usd::readGltfFromMemory(v46, v47, 1, v12, v13))
  {
    v23 = 0;
    v24 = 0;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    v25 = 0;
    v26 = 0x4038000000000000;
    v28[0] = 0;
    v28[1] = 0;
    v27 = v28;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
    v18 = 1;
    v17 = 257;
    sub_29A008E78(&__p, "");
    adobe::usd::importGltf(&v17, v46, &v19, &__p);
  }

  *&v19 = "usdGltf/fileFormat.cpp";
  *(&v19 + 1) = "ReadFromString";
  *&v20 = 251;
  *(&v20 + 1) = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::ReadFromString(SdfLayer *, const std::string &) const";
  LOBYTE(v21) = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 3, "Error reading glTF from string\n");
  sub_29A9CCF78(v46);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

  v14 = v50;
  if (v50 && atomic_fetch_add_explicit((v50 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v14 + 8))(v14);
  }

  sub_29A32BD28(&v51);
  return 0;
}

void sub_29A9E57E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  sub_29A9E5D10(&a31);
  sub_29A9CCF78(&a72);
  if (*(v72 - 73) < 0)
  {
    operator delete(*(v72 - 96));
  }

  v74 = *(v72 - 64);
  if (v74)
  {
    if (atomic_fetch_add_explicit(v74 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v74 + 8))(v74);
    }
  }

  sub_29A32BD28((v72 - 56));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::WriteToString()
{
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  if (!v0)
  {
    v0 = sub_29A34AE68(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindById(v0, v1);
  sub_29A1DA734(v1);
}

void sub_29A9E59A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::WriteToStream(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = sub_29A00911C(a3, "WriteToStream: Nothing to see.", 30);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v6, MEMORY[0x29EDC93D0]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v6);
  std::ostream::put();
  std::ostream::flush();
  return 0;
}

uint64_t sub_29A9E5A8C()
{
  v2 = nullsub_1446;
  return sub_29A9E5AE8(v0);
}

uint64_t sub_29A9E5AE8(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A206D908;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29A9E5B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B290BEC();
  }

  _Unwind_Resume(exception_object);
}

void sub_29A9E5B98(pxrInternal__aapl__pxrReserved__::Sdf_FileFormatFactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatFactoryBase::~Sdf_FileFormatFactoryBase(a1);

  operator delete(v1);
}

void sub_29A9E5C4C(void **this)
{
  *this = &unk_2A206D948;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  pxrInternal__aapl__pxrReserved__::SdfData::~SdfData(this);
}

void sub_29A9E5CAC(void **this)
{
  *this = &unk_2A206D948;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  pxrInternal__aapl__pxrReserved__::SdfData::~SdfData(this);

  operator delete(v2);
}

uint64_t sub_29A9E5D10(uint64_t a1)
{
  v4 = (a1 + 352);
  sub_29A9E5E3C(&v4);
  v4 = (a1 + 328);
  sub_29A9E5EC0(&v4);
  v4 = (a1 + 304);
  sub_29A9E5F44(&v4);
  v4 = (a1 + 280);
  sub_29A9E5FCC(&v4);
  v4 = (a1 + 256);
  sub_29A8CE034(&v4);
  v4 = (a1 + 232);
  sub_29A9E6054(&v4);
  v4 = (a1 + 208);
  sub_29A9E6194(&v4);
  v4 = (a1 + 184);
  sub_29A9E621C(&v4);
  v4 = (a1 + 160);
  sub_29A9E62A4(&v4);
  v4 = (a1 + 136);
  sub_29A9E6328(&v4);
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  sub_29A019EE8(a1 + 88, *(a1 + 96));
  v4 = (a1 + 56);
  sub_29A9E63AC(&v4);
  sub_29A184A10((a1 + 40), 0);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29A9E5E3C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      sub_29A8EF74C();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

void sub_29A9E5EC0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      sub_29A931C18();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

void sub_29A9E5F44(void ***a1)
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
        v4 = sub_29A9319D8(v4 - 4616);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A9E5FCC(void ***a1)
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
        v4 -= 184;
        sub_29A935F30(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A9E6054(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      sub_29A9E60D8();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

void sub_29A9E6194(void ***a1)
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
        v4 -= 288;
        sub_29A9359AC(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A9E621C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      sub_29A934008();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

void sub_29A9E62A4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      sub_29A9317E4();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

void sub_29A9E6328(void ***a1)
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
        v4 = sub_29A8EF518(v4 - 560);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A9E63AC(void ***a1)
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
        v4 -= 64;
        sub_29A0D27F8(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

pxrInternal__aapl__pxrReserved__::UsdGltfFileFormatTokens_StaticTokenType *sub_29A9E6434(atomic_ullong *a1)
{
  result = sub_29A9E647C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdGltfFileFormatTokens_StaticTokenType::~UsdGltfFileFormatTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdGltfFileFormatTokens_StaticTokenType *sub_29A9E647C()
{
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdGltfFileFormatTokens_StaticTokenType::UsdGltfFileFormatTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29A9E64C0()
{
  if ((atomic_load_explicit(&qword_2A14F8DC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8DC8))
  {
    v1 = operator new(8uLL);
    *v1 = 0;
    qword_2A14F8DC0 = v1;
    __cxa_guard_release(&qword_2A14F8DC8);
  }

  return qword_2A14F8DC0;
}

uint64_t *sub_29A9E659C(uint64_t *a1, uint64_t *a2)
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

void sub_29A9E65FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t adobe::usd::getBuffer(uint64_t a1)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v2 = a1 + 48;
  if (v4 == v3)
  {
    v7[1] = 0u;
    memset(v6, 0, sizeof(v6));
    v9[0] = 0;
    v9[1] = 0;
    v7[0] = v7 + 8;
    v8 = v9;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    sub_29A9E66B4(v2, v6);
    sub_29A9CC158(v6);
    v3 = *(a1 + 56);
  }

  return v3 - 264;
}

uint64_t sub_29A9E66B4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A9DC120(a1, a2);
  }

  else
  {
    result = sub_29A9DC264(v3, a2) + 264;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t adobe::usd::getImage(void *a1, unint64_t a2, char *a3)
{
  if (!a1)
  {
    v9 = "usdGltf/gltf.cpp";
    v10 = "getImage";
    v11 = 58;
    v12 = "const tinygltf::Image *adobe::usd::getImage(const tinygltf::Model *, size_t)";
    v13 = 0;
    v7 = "Model is null.";
LABEL_9:
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v9, v7, a3, v8);
    return 0;
  }

  v3 = a1[21];
  if (0x6DB6DB6DB6DB6DB7 * ((a1[22] - v3) >> 5) > a2)
  {
    v4 = *(v3 + 224 * a2 + 28);
    if ((v4 & 0x80000000) == 0)
    {
      v5 = a1[24];
      if (0x8F9C18F9C18F9C19 * ((a1[25] - v5) >> 3) > v4)
      {
        return v5 + 328 * v4;
      }
    }

    v9 = "usdGltf/gltf.cpp";
    v10 = "getImage";
    v11 = 67;
    v12 = "const tinygltf::Image *adobe::usd::getImage(const tinygltf::Model *, size_t)";
    v13 = 0;
    v8 = v4;
    v7 = "Invalid texture source index: %d";
    goto LABEL_9;
  }

  v9 = "usdGltf/gltf.cpp";
  v10 = "getImage";
  v11 = 62;
  v12 = "const tinygltf::Image *adobe::usd::getImage(const tinygltf::Model *, size_t)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v9, "Invalid texture index: %zu", a3, a2);
  return 0;
}

uint64_t adobe::usd::CustomLoadImageData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, int a8)
{
  v11 = a1 + 48;
  v10 = *(a1 + 48);
  *(v11 + 272) = 1;
  v12 = a8;
  v13 = *(v11 + 8) - v10;
  if (a8 <= v13)
  {
    if (a8 < v13)
    {
      *(a1 + 56) = &v10[a8];
    }
  }

  else
  {
    sub_29A1B2C78(v11, a8 - v13);
    v10 = *v11;
  }

  memcpy(v10, a7, v12);
  return 1;
}

uint64_t adobe::usd::CustomWriteImageData(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v44[2] = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    if (*(a1 + 23) >= 0)
    {
      v10 = *(a1 + 23);
    }

    else
    {
      v10 = *(a1 + 8);
    }

    v11 = &v41;
    sub_29A022DE0(&v41, v10 + 1);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v41.__r_.__value_.__r.__words[0];
    }

    if (v10)
    {
      if (*(a1 + 23) >= 0)
      {
        v12 = a1;
      }

      else
      {
        v12 = *a1;
      }

      memmove(v11, v12, v10);
    }

    *(&v11->__r_.__value_.__l.__data_ + v10) = 47;
    v13 = *(a2 + 23);
    if (v13 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    if (v13 >= 0)
    {
      v15 = *(a2 + 23);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    v16 = std::string::append(&v41, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v40 = v16->__r_.__value_.__r.__words[2];
    *__p = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    pxrInternal__aapl__pxrReserved__::TfMakeDirs(a1, 0xFFFFFFFFLL, 1);
    sub_29A90B4C8(&v41);
    if (v42)
    {
      std::ostream::write();
      std::string::operator=(a6, a2);
    }

    v41.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9520];
    *(v41.__r_.__value_.__r.__words + *(v41.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x29EDC9520] + 24);
    MEMORY[0x29C2C1D20](&v41.__r_.__value_.__r.__words[1]);
    std::ostream::~ostream();
    MEMORY[0x29C2C4390](&v43);
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      return 1;
    }

    v18 = __p[0];
LABEL_83:
    operator delete(v18);
    return 1;
  }

  if (*(a3 + 56) == *(a3 + 48))
  {
    return 1;
  }

  pxrInternal__aapl__pxrReserved__::TfGetExtension(a2, &v41);
  __p[0] = 0;
  __p[1] = 0;
  v40 = 0;
  if ((*(&v41.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (v41.__r_.__value_.__l.__size_ != 3 || (*v41.__r_.__value_.__l.__data_ == 28272 ? (v19 = *(v41.__r_.__value_.__r.__words[0] + 2) == 103) : (v19 = 0), !v19))
    {
      if (v41.__r_.__value_.__l.__size_ == 3 && *v41.__r_.__value_.__l.__data_ == 28778 && *(v41.__r_.__value_.__r.__words[0] + 2) == 103)
      {
        goto LABEL_66;
      }

      if (v41.__r_.__value_.__l.__size_ == 4 && *v41.__r_.__value_.__l.__data_ == 1734701162)
      {
        goto LABEL_66;
      }

      if (v41.__r_.__value_.__l.__size_ != 3)
      {
        goto LABEL_57;
      }

      v21 = v41.__r_.__value_.__r.__words[0];
LABEL_53:
      data_low = LOWORD(v21->__r_.__value_.__l.__data_);
      v25 = v21->__r_.__value_.__s.__data_[2];
      if (data_low == 28002 && v25 == 112)
      {
        v31 = "data:image/bmp;base64,";
        goto LABEL_69;
      }

      goto LABEL_57;
    }

LABEL_67:
    v31 = "data:image/png;base64,";
    goto LABEL_69;
  }

  if (HIBYTE(v41.__r_.__value_.__r.__words[2]) == 3)
  {
    if (LOWORD(v41.__r_.__value_.__l.__data_) != 28272 || v41.__r_.__value_.__s.__data_[2] != 103)
    {
      if (LOWORD(v41.__r_.__value_.__l.__data_) == 28778 && v41.__r_.__value_.__s.__data_[2] == 103)
      {
        goto LABEL_66;
      }

      v21 = &v41;
      goto LABEL_53;
    }

    goto LABEL_67;
  }

  if (HIBYTE(v41.__r_.__value_.__r.__words[2]) == 4 && LODWORD(v41.__r_.__value_.__l.__data_) == 1734701162)
  {
LABEL_66:
    v31 = "data:image/jpeg;base64,";
LABEL_69:
    MEMORY[0x29C2C1A60](__p, v31);
    tinygltf::base64_encode(*(a3 + 48), (*(a3 + 56) - *(a3 + 48)), &v38);
    if (v40 >= 0)
    {
      v32 = __p;
    }

    else
    {
      v32 = __p[0];
    }

    if (v40 >= 0)
    {
      v33 = HIBYTE(v40);
    }

    else
    {
      v33 = __p[1];
    }

    v34 = std::string::insert(&v38, 0, v32, v33);
    v35 = v34->__r_.__value_.__r.__words[0];
    v44[0] = v34->__r_.__value_.__l.__size_;
    *(v44 + 7) = *(&v34->__r_.__value_.__r.__words[1] + 7);
    v36 = HIBYTE(v34->__r_.__value_.__r.__words[2]);
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    if (*(a6 + 23) < 0)
    {
      operator delete(*a6);
    }

    v37 = v44[0];
    *a6 = v35;
    *(a6 + 8) = v37;
    *(a6 + 15) = *(v44 + 7);
    *(a6 + 23) = v36;
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p[0]);
    }

    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 1;
    }

    v18 = v41.__r_.__value_.__r.__words[0];
    goto LABEL_83;
  }

LABEL_57:
  if (sub_29A9E3F04(0))
  {
    v29 = &v41;
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v29 = v41.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Unrecognized image format %s\n", v27, v28, v29);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29A9E6D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t adobe::usd::readGltfFromMemory(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v26[52] = *MEMORY[0x29EDCA608];
  sub_29A9EBA84(v26);
  v25[0] = &unk_2A206DEE8;
  v25[1] = adobe::usd::CustomLoadImageData;
  v25[3] = v25;
  tinygltf::TinyGLTF::SetImageLoader(v26, v25, 0);
  sub_29A9EC5B8(v25);
  memset(&v24, 0, sizeof(v24));
  memset(&__p, 0, sizeof(__p));
  if (a3)
  {
    v10 = tinygltf::TinyGLTF::LoadASCIIFromString(v26, a1, &v24, &__p, a4, a5, a2, 1);
  }

  else
  {
    v10 = tinygltf::TinyGLTF::LoadBinaryFromMemory(v26, a1, &v24, &__p, a4, a5, a2, 1);
  }

  v11 = v10;
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size && sub_29A9E3F04(0))
  {
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Warning: %s\n", v13, v14, p_p);
  }

  v16 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = v24.__r_.__value_.__l.__size_;
  }

  if (v16 && sub_29A9E3F04(0))
  {
    v19 = &v24;
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = v24.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Error: %s\n", v17, v18, v19);
  }

  if ((v11 & 1) == 0 && sub_29A9E3F04(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Failed to read glTF\n", v20, v21);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  sub_29A9EC42C(v26);
  return v11;
}

void sub_29A9E6FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_29A9EC42C(&a26);
  _Unwind_Resume(a1);
}

uint64_t adobe::usd::readGltf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36[52] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfGetExtension(a2, &v34);
  memset(&v33, 0, sizeof(v33));
  memset(&v32, 0, sizeof(v32));
  sub_29A9EBA84(v36);
  v35[0] = &unk_2A206DEE8;
  v35[1] = adobe::usd::CustomLoadImageData;
  v35[3] = v35;
  tinygltf::TinyGLTF::SetImageLoader(v36, v35, 0);
  sub_29A9EC5B8(v35);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v34.__r_.__value_.__l.__size_ == 4 && *v34.__r_.__value_.__l.__data_ == 1718905959 || v34.__r_.__value_.__l.__size_ == 4 && *v34.__r_.__value_.__l.__data_ == 1179929671)
    {
LABEL_33:
      sub_29A008E78(__p, "");
      v16 = tinygltf::TinyGLTF::LoadASCIIFromString(v36, a1, &v33, &v32, *a3, *(a3 + 8) - *a3, __p, 1);
      goto LABEL_35;
    }

    if (v34.__r_.__value_.__l.__size_ != 3 || (*v34.__r_.__value_.__l.__data_ == 27751 ? (v8 = *(v34.__r_.__value_.__r.__words[0] + 2) == 98) : (v8 = 0), !v8))
    {
      if (v34.__r_.__value_.__l.__size_ != 3)
      {
LABEL_27:
        if (sub_29A9E3F04(0))
        {
          if (*(a2 + 23) >= 0)
          {
            v14 = a2;
          }

          else
          {
            v14 = *a2;
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("No glTF found at %s\n", v12, v13, v14);
        }

        v15 = 0;
        goto LABEL_37;
      }

      v7 = v34.__r_.__value_.__r.__words[0];
      goto LABEL_23;
    }
  }

  else
  {
    if (HIBYTE(v34.__r_.__value_.__r.__words[2]) != 3)
    {
      if (HIBYTE(v34.__r_.__value_.__r.__words[2]) != 4 || LODWORD(v34.__r_.__value_.__l.__data_) != 1179929671 && LODWORD(v34.__r_.__value_.__l.__data_) != 1718905959)
      {
        goto LABEL_27;
      }

      goto LABEL_33;
    }

    if (LOWORD(v34.__r_.__value_.__l.__data_) != 27751 || v34.__r_.__value_.__s.__data_[2] != 98)
    {
      v7 = &v34;
LABEL_23:
      data_low = LOWORD(v7->__r_.__value_.__l.__data_);
      v10 = v7->__r_.__value_.__s.__data_[2];
      if (data_low != 19527 || v10 != 66)
      {
        goto LABEL_27;
      }
    }
  }

  v17 = *a3;
  v18 = *(a3 + 8);
  sub_29A008E78(__p, "");
  v16 = tinygltf::TinyGLTF::LoadBinaryFromMemory(v36, a1, &v33, &v32, v17, v18 - v17, __p, 1);
LABEL_35:
  v15 = v16;
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_37:
  size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  if (size && sub_29A9E3F04(0))
  {
    v22 = &v32;
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v32.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Warning: %s\n", v20, v21, v22);
  }

  v23 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v33.__r_.__value_.__l.__size_;
  }

  if (v23 && sub_29A9E3F04(0))
  {
    v26 = &v33;
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v26 = v33.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Error: %s\n", v24, v25, v26);
  }

  if ((v15 & 1) == 0 && sub_29A9E3F04(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Failed to read glTF\n", v27, v28);
  }

  sub_29A9EC42C(v36);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_29A9E73A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29A9EC42C(&a38);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

uint64_t *adobe::usd::computeMinMax(uint64_t *result, float32x2_t *a2, float *a3)
{
  *a2 = vneg_f32(0x80000000800000);
  a2[1].i32[0] = 2139095039;
  *a3 = 0x80000000800000;
  a3[2] = -3.4028e38;
  v3 = *result;
  if (*result)
  {
    v4 = (result[4] + 8);
    do
    {
      v5 = *(v4 - 2);
      v6 = a2->f32[1];
      if (v5 >= a2->f32[0])
      {
        v5 = a2->f32[0];
      }

      a2->f32[0] = v5;
      v7 = *(v4 - 1);
      if (v7 >= v6)
      {
        v7 = v6;
      }

      a2->f32[1] = v7;
      v8 = *v4;
      if (*v4 >= a2[1].f32[0])
      {
        v8 = a2[1].f32[0];
      }

      a2[1].f32[0] = v8;
      v9 = *(v4 - 2);
      v10 = a3[1];
      if (*a3 >= v9)
      {
        v9 = *a3;
      }

      *a3 = v9;
      v11 = *(v4 - 1);
      if (v10 >= v11)
      {
        v11 = v10;
      }

      a3[1] = v11;
      v12 = a3[2];
      v13 = *v4;
      v4 += 3;
      v14 = v13;
      if (v12 < v13)
      {
        v12 = v14;
      }

      a3[2] = v12;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t adobe::usd::printMatrix(uint64_t a1, double *a2)
{
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  v6 = sub_29A00911C(MEMORY[0x29EDC93C8], v4, v5);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v41, MEMORY[0x29EDC93D0]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v41);
  std::ostream::put();
  std::ostream::flush();
  v8 = MEMORY[0x29C2C1EB0](MEMORY[0x29EDC93C8], *a2);
  v9 = sub_29A00911C(v8, ", ", 2);
  v10 = MEMORY[0x29C2C1EB0](v9, a2[4]);
  v11 = sub_29A00911C(v10, ", ", 2);
  v12 = MEMORY[0x29C2C1EB0](v11, a2[8]);
  v13 = sub_29A00911C(v12, ", ", 2);
  v14 = MEMORY[0x29C2C1EB0](v13, a2[12]);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v41, MEMORY[0x29EDC93D0]);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v41);
  std::ostream::put();
  std::ostream::flush();
  v16 = MEMORY[0x29C2C1EB0](MEMORY[0x29EDC93C8], a2[1]);
  v17 = sub_29A00911C(v16, ", ", 2);
  v18 = MEMORY[0x29C2C1EB0](v17, a2[5]);
  v19 = sub_29A00911C(v18, ", ", 2);
  v20 = MEMORY[0x29C2C1EB0](v19, a2[9]);
  v21 = sub_29A00911C(v20, ", ", 2);
  v22 = MEMORY[0x29C2C1EB0](v21, a2[13]);
  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v23 = std::locale::use_facet(&v41, MEMORY[0x29EDC93D0]);
  (v23->__vftable[2].~facet_0)(v23, 10);
  std::locale::~locale(&v41);
  std::ostream::put();
  std::ostream::flush();
  v24 = MEMORY[0x29C2C1EB0](MEMORY[0x29EDC93C8], a2[2]);
  v25 = sub_29A00911C(v24, ", ", 2);
  v26 = MEMORY[0x29C2C1EB0](v25, a2[6]);
  v27 = sub_29A00911C(v26, ", ", 2);
  v28 = MEMORY[0x29C2C1EB0](v27, a2[10]);
  v29 = sub_29A00911C(v28, ", ", 2);
  v30 = MEMORY[0x29C2C1EB0](v29, a2[14]);
  std::ios_base::getloc((v30 + *(*v30 - 24)));
  v31 = std::locale::use_facet(&v41, MEMORY[0x29EDC93D0]);
  (v31->__vftable[2].~facet_0)(v31, 10);
  std::locale::~locale(&v41);
  std::ostream::put();
  std::ostream::flush();
  v32 = MEMORY[0x29C2C1EB0](MEMORY[0x29EDC93C8], a2[3]);
  v33 = sub_29A00911C(v32, ", ", 2);
  v34 = MEMORY[0x29C2C1EB0](v33, a2[7]);
  v35 = sub_29A00911C(v34, ", ", 2);
  v36 = MEMORY[0x29C2C1EB0](v35, a2[11]);
  v37 = sub_29A00911C(v36, ", ", 2);
  v38 = MEMORY[0x29C2C1EB0](v37, a2[15]);
  std::ios_base::getloc((v38 + *(*v38 - 24)));
  v39 = std::locale::use_facet(&v41, MEMORY[0x29EDC93D0]);
  (v39->__vftable[2].~facet_0)(v39, 10);
  std::locale::~locale(&v41);
  std::ostream::put();
  return std::ostream::flush();
}

float64x2_t adobe::usd::copyMatrices(uint64_t *a1, void *a2)
{
  sub_29A0A171C(a2, 16 * *a1);
  v5 = *a1;
  if (*a1)
  {
    v6 = a1[4] + 64;
    v7 = *a2 + 32;
    do
    {
      v8 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v6 - 32)), *(v6 - 16));
      *(v7 - 32) = vcvt_hight_f32_f64(vcvt_f32_f64(*(v6 - 64)), *(v6 - 48));
      *(v7 - 16) = v8;
      result = *(v6 + 48);
      v9 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v6 + 32)), result);
      *v7 = vcvt_hight_f32_f64(vcvt_f32_f64(*v6), *(v6 + 16));
      *(v7 + 16) = v9;
      v7 += 64;
      v6 += 128;
      --v5;
    }

    while (v5);
  }

  return result;
}

double adobe::usd::copyMatrix(uint64_t a1, uint64_t *a2)
{
  sub_29A00BF50(a2, 0x10uLL);
  v4 = *a2;
  *v4 = *a1;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = *(a1 + 48);
  *(v4 + 56) = *(a1 + 56);
  *(v4 + 64) = *(a1 + 64);
  *(v4 + 72) = *(a1 + 72);
  *(v4 + 80) = *(a1 + 80);
  *(v4 + 88) = *(a1 + 88);
  *(v4 + 96) = *(a1 + 96);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 112) = *(a1 + 112);
  result = *(a1 + 120);
  *(v4 + 120) = result;
  return result;
}

double adobe::usd::copyMatrix(double **a1, double *a2)
{
  v2 = *a1;
  *a2 = **a1;
  a2[1] = v2[1];
  a2[2] = v2[2];
  a2[3] = v2[3];
  a2[4] = v2[4];
  a2[5] = v2[5];
  a2[6] = v2[6];
  a2[7] = v2[7];
  a2[8] = v2[8];
  a2[9] = v2[9];
  a2[10] = v2[10];
  a2[11] = v2[11];
  a2[12] = v2[12];
  a2[13] = v2[13];
  a2[14] = v2[14];
  result = v2[15];
  a2[15] = result;
  return result;
}

uint64_t adobe::usd::addAccessor(uint64_t *a1, const std::string *a2, char *a3, int a4, int a5, unsigned int a6, const void *a7, int a8)
{
  v8 = 0xFFFFFFFFLL;
  if (a1 && a6 >= 1 && a7)
  {
    v14 = a3;
    if (a4 <= 33)
    {
      if (a4 == 2 || a4 == 3 || a4 == 4)
      {
        v17 = 0;
        v18 = a4;
        goto LABEL_18;
      }
    }

    else
    {
      if (a4 <= 35)
      {
        v17 = 0;
        if (a4 == 34)
        {
          v18 = 4;
        }

        else
        {
          v18 = 9;
        }

LABEL_18:
        if ((a5 - 5120) > 0xA || v17 & 1 | (((0x47Fu >> a5) & 1) == 0))
        {
          v50 = "usdGltf/gltf.cpp";
          *&v51 = "addAccessor";
          *(&v51 + 1) = 378;
          *&v52 = "int adobe::usd::addAccessor(tinygltf::Model *, const std::string &, int, int, int, int, const void *, BOOL)";
          BYTE8(v52) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v50, "Invalid component parameters in addAccessor", a3);
          return v8;
        }

        v20 = dword_29B4DAC48[a5 - 5120] * v18;
        if (0x7FFFFFFF / v20 < a6)
        {
          v50 = "usdGltf/gltf.cpp";
          *&v51 = "addAccessor";
          *(&v51 + 1) = 384;
          *&v52 = "int adobe::usd::addAccessor(tinygltf::Model *, const std::string &, int, int, int, int, const void *, BOOL)";
          BYTE8(v52) = 0;
          v21 = "Integer overflow prevented in addAccessor size calculation";
LABEL_31:
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v50, v21, a3);
          return 0xFFFFFFFFLL;
        }

        v47 = v18;
        Buffer = adobe::usd::getBuffer(a1);
        v24 = (Buffer + 24);
        v23 = *(Buffer + 24);
        v25 = *(Buffer + 32) - v23;
        v26 = v25 & 3;
        if (v23 - *(Buffer + 32) >= 0)
        {
          v26 = -((v23 - *(Buffer + 32)) & 3);
        }

        if (v26)
        {
          v27 = 4 - v26;
        }

        else
        {
          v27 = 0;
        }

        v28 = v20 * a6;
        if (((v28 + v27) ^ 0x7FFFFFFF) < v25)
        {
          v50 = "usdGltf/gltf.cpp";
          *&v51 = "addAccessor";
          *(&v51 + 1) = 396;
          *&v52 = "int adobe::usd::addAccessor(tinygltf::Model *, const std::string &, int, int, int, int, const void *, BOOL)";
          BYTE8(v52) = 0;
          v21 = "Buffer overflow prevented in addAccessor";
          goto LABEL_31;
        }

        v29 = v27 + v25;
        v30 = v27 + v25 + v28;
        if (v30 <= v25)
        {
          if (v30 < v25)
          {
            *(Buffer + 32) = v23 + v30;
          }
        }

        else
        {
          __na = v28;
          v31 = v29;
          sub_29A1B2C78(Buffer + 24, v30 - v25);
          v29 = v31;
          v28 = __na;
          v23 = *v24;
        }

        __n = v29;
        v32 = (v23 + v29);
        memcpy(v32, a7, v28);
        if (a5 == 5130)
        {
          if (v28 >= 8)
          {
            v37 = 0;
            v38 = 0;
            do
            {
              while ((*(v32 + v37) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                *(v32 + v37) = 0;
                v38 = 1;
                v36 = (v28 >> 3) - 1 == v37++;
                if (v36)
                {
                  goto LABEL_60;
                }
              }

              ++v37;
            }

            while (v28 >> 3 != v37);
            if ((v38 & 1) == 0)
            {
              goto LABEL_64;
            }

LABEL_60:
            v50 = "usdGltf/gltf.cpp";
            *&v51 = "addAccessor";
            *(&v51 + 1) = 411;
            *&v52 = "int adobe::usd::addAccessor(tinygltf::Model *, const std::string &, int, int, int, int, const void *, BOOL)";
            BYTE8(v52) = 0;
            if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v40 = a2;
            }

            else
            {
              v40 = a2->__r_.__value_.__r.__words[0];
            }

            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v50, "Double data for %s had invalid values", v33, v40);
          }
        }

        else if (a5 == 5126 && v28 >= 4)
        {
          v34 = 0;
          v35 = 0;
          do
          {
            while ((*(v32 + v34) & 0x7FFFFFFFu) > 0x7F7FFFFF)
            {
              *(v32 + v34) = 0;
              v35 = 1;
              v36 = (v28 >> 2) - 1 == v34++;
              if (v36)
              {
                goto LABEL_55;
              }
            }

            ++v34;
          }

          while (v28 >> 2 != v34);
          if ((v35 & 1) == 0)
          {
            goto LABEL_64;
          }

LABEL_55:
          v50 = "usdGltf/gltf.cpp";
          *&v51 = "addAccessor";
          *(&v51 + 1) = 407;
          *&v52 = "int adobe::usd::addAccessor(tinygltf::Model *, const std::string &, int, int, int, int, const void *, BOOL)";
          BYTE8(v52) = 0;
          if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = a2;
          }

          else
          {
            v39 = a2->__r_.__value_.__r.__words[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v50, "Float data for %s had invalid values", v33, v39);
        }

LABEL_64:
        memset(&v99, 0, sizeof(v99));
        v100 = -1;
        v112[1] = 0;
        v112[0] = 0;
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v103 = 0;
        v101 = 0;
        v102 = 0;
        v104 = 0;
        v110 = 0;
        v111 = v112;
        v113 = 0;
        v115[1] = 0;
        v115[0] = 0;
        v114 = v115;
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v119 = 0;
        std::string::operator=(&v99, a2);
        v100 = 0;
        v101 = __n;
        v102 = v28;
        v103 = 0;
        v104 = v14;
        v41 = a1[9];
        v42 = a1[10];
        sub_29A9E8480((a1 + 9), &v99);
        v53 = 0;
        v51 = 0u;
        v52 = 0u;
        v54 = -1;
        v55 = 0;
        v56 = -1;
        v64 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0;
        v63 = &v64;
        v65 = 0;
        v66 = v67;
        v68 = 0;
        memset(v67, 0, 117);
        v69 = -1;
        v77 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0;
        v76 = &v77;
        v78 = 0;
        memset(v80, 0, sizeof(v80));
        v79 = v80;
        v81 = -1;
        v89 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = &v89;
        v90 = 0;
        memset(v92, 0, sizeof(v92));
        v91 = v92;
        v95 = 0u;
        v93 = 0;
        v94 = &v95;
        v96 = 0;
        memset(v98, 0, sizeof(v98));
        v97 = v98;
        LODWORD(v50) = 1041204193 * ((v42 - v41) >> 3);
        std::string::operator=(&v51, a2);
        *(&v52 + 1) = 0;
        v53 = 0;
        v54 = a5;
        v55 = a6;
        v56 = a4;
        if (a8)
        {
          if (a5 > 5123)
          {
            if (a5 <= 5125)
            {
              if (a5 == 5124)
              {
                sub_29A9E8A24(&v50, v32, a6, v47);
              }

              else
              {
                sub_29A9E8B78(&v50, v32, a6, v47);
              }

              goto LABEL_83;
            }

            if (a5 == 5126)
            {
              sub_29A9E8CCC(&v50, v32, a6, v47);
              goto LABEL_83;
            }

            if (a5 == 5130)
            {
              sub_29A9E8E20(&v50, v32, a6, v47);
              goto LABEL_83;
            }
          }

          else
          {
            if (a5 > 5121)
            {
              if (a5 == 5122)
              {
                sub_29A9E877C(&v50, v32, a6, v47);
              }

              else
              {
                sub_29A9E88D0(&v50, v32, a6, v47);
              }

              goto LABEL_83;
            }

            if (a5 == 5120)
            {
              sub_29A9E84D4(&v50, v32, a6, v47);
              goto LABEL_83;
            }

            if (a5 == 5121)
            {
              sub_29A9E8628(&v50, v32, a6, v47);
              goto LABEL_83;
            }
          }

          v48[0] = "usdGltf/gltf.cpp";
          v48[1] = "addAccessor";
          v48[2] = 463;
          v48[3] = "int adobe::usd::addAccessor(tinygltf::Model *, const std::string &, int, int, int, int, const void *, BOOL)";
          v49 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v48, 3, "Unexpected component type %d for range computation", a5);
        }

LABEL_83:
        v44 = *a1;
        v43 = a1[1];
        sub_29A9E8F70(a1, &v50);
        v8 = 1643291835 * ((v43 - v44) >> 3);
        sub_29A9CC584(&v50);
        sub_29A9CC06C(&v99);
        return v8;
      }

      if (a4 == 36)
      {
        v17 = 0;
        v18 = 16;
        goto LABEL_18;
      }

      if (a4 == 65)
      {
        v17 = 0;
        v18 = 1;
        goto LABEL_18;
      }
    }

    v18 = -1;
    v17 = 1;
    goto LABEL_18;
  }

  return v8;
}

void sub_29A9E8450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29A9CC584(va);
  sub_29A9CC06C(&STACK[0x3E0]);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9E8480(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A9EC734(a1, a2);
  }

  else
  {
    sub_29A9EC87C(*(a1 + 8), a2);
    result = v3 + 264;
    *(a1 + 8) = v3 + 264;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_29A9E84D4(void *a1, uint64_t a2, int a3, int a4)
{
  v8 = a4;
  *&v19 = 0x7FEFFFFFFFFFFFFFLL;
  sub_29A03FB14(__p, a4, &v19);
  v18 = 0xFFEFFFFFFFFFFFFFLL;
  sub_29A03FB14(&v19, v8, &v18);
  if (a4 * a3)
  {
    v9 = 0;
    v10 = __p[0];
    v11 = v19;
    do
    {
      v12 = *(a2 + v9);
      v13 = v9 % v8;
      v14 = v10[v9 % v8];
      if (v14 >= v12)
      {
        v14 = *(a2 + v9);
      }

      v10[v13] = v14;
      if (*(v11 + 8 * v13) > v12)
      {
        v12 = *(v11 + 8 * v13);
      }

      *(v11 + 8 * v13) = v12;
      ++v9;
    }

    while (a4 * a3 != v9);
  }

  v15 = a1[32];
  if (v15)
  {
    a1[33] = v15;
    operator delete(v15);
    a1[32] = 0;
    a1[33] = 0;
    a1[34] = 0;
  }

  *(a1 + 16) = *__p;
  a1[34] = v22;
  __p[1] = 0;
  v22 = 0;
  __p[0] = 0;
  v16 = a1 + 35;
  v17 = a1[35];
  if (v17)
  {
    a1[36] = v17;
    operator delete(v17);
    *v16 = 0;
    a1[36] = 0;
    a1[37] = 0;
    v17 = __p[0];
  }

  *v16 = v19;
  a1[37] = v20;
  if (v17)
  {
    __p[1] = v17;
    operator delete(v17);
  }
}

void sub_29A9E860C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A9E8628(void *a1, uint64_t a2, int a3, int a4)
{
  v8 = a4;
  *&v19 = 0x7FEFFFFFFFFFFFFFLL;
  sub_29A03FB14(__p, a4, &v19);
  v18 = 0xFFEFFFFFFFFFFFFFLL;
  sub_29A03FB14(&v19, v8, &v18);
  if (a4 * a3)
  {
    v10 = 0;
    v11 = __p[0];
    v12 = v19;
    do
    {
      LOBYTE(v9) = *(a2 + v10);
      v9 = *&v9;
      v13 = v10 % v8;
      v14 = v11[v10 % v8];
      if (v14 >= v9)
      {
        v14 = v9;
      }

      v11[v13] = v14;
      if (*(v12 + 8 * v13) > v9)
      {
        v9 = *(v12 + 8 * v13);
      }

      *(v12 + 8 * v13) = v9;
      ++v10;
    }

    while (a4 * a3 != v10);
  }

  v15 = a1[32];
  if (v15)
  {
    a1[33] = v15;
    operator delete(v15);
    a1[32] = 0;
    a1[33] = 0;
    a1[34] = 0;
  }

  *(a1 + 16) = *__p;
  a1[34] = v22;
  __p[1] = 0;
  v22 = 0;
  __p[0] = 0;
  v16 = a1 + 35;
  v17 = a1[35];
  if (v17)
  {
    a1[36] = v17;
    operator delete(v17);
    *v16 = 0;
    a1[36] = 0;
    a1[37] = 0;
    v17 = __p[0];
  }

  *v16 = v19;
  a1[37] = v20;
  if (v17)
  {
    __p[1] = v17;
    operator delete(v17);
  }
}

void sub_29A9E8760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A9E877C(void *a1, uint64_t a2, int a3, int a4)
{
  v8 = a4;
  *&v19 = 0x7FEFFFFFFFFFFFFFLL;
  sub_29A03FB14(__p, a4, &v19);
  v18 = 0xFFEFFFFFFFFFFFFFLL;
  sub_29A03FB14(&v19, v8, &v18);
  if (a4 * a3)
  {
    v9 = 0;
    v10 = __p[0];
    v11 = v19;
    do
    {
      v12 = *(a2 + 2 * v9);
      v13 = v9 % v8;
      v14 = v10[v9 % v8];
      if (v14 >= v12)
      {
        v14 = *(a2 + 2 * v9);
      }

      v10[v13] = v14;
      if (*(v11 + 8 * v13) > v12)
      {
        v12 = *(v11 + 8 * v13);
      }

      *(v11 + 8 * v13) = v12;
      ++v9;
    }

    while (a4 * a3 != v9);
  }

  v15 = a1[32];
  if (v15)
  {
    a1[33] = v15;
    operator delete(v15);
    a1[32] = 0;
    a1[33] = 0;
    a1[34] = 0;
  }

  *(a1 + 16) = *__p;
  a1[34] = v22;
  __p[1] = 0;
  v22 = 0;
  __p[0] = 0;
  v16 = a1 + 35;
  v17 = a1[35];
  if (v17)
  {
    a1[36] = v17;
    operator delete(v17);
    *v16 = 0;
    a1[36] = 0;
    a1[37] = 0;
    v17 = __p[0];
  }

  *v16 = v19;
  a1[37] = v20;
  if (v17)
  {
    __p[1] = v17;
    operator delete(v17);
  }
}

void sub_29A9E88B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A9E88D0(void *a1, uint64_t a2, int a3, int a4)
{
  v8 = a4;
  *&v19 = 0x7FEFFFFFFFFFFFFFLL;
  sub_29A03FB14(__p, a4, &v19);
  v18 = 0xFFEFFFFFFFFFFFFFLL;
  sub_29A03FB14(&v19, v8, &v18);
  if (a4 * a3)
  {
    v10 = 0;
    v11 = __p[0];
    v12 = v19;
    do
    {
      LOWORD(v9) = *(a2 + 2 * v10);
      v9 = *&v9;
      v13 = v10 % v8;
      v14 = v11[v10 % v8];
      if (v14 >= v9)
      {
        v14 = v9;
      }

      v11[v13] = v14;
      if (*(v12 + 8 * v13) > v9)
      {
        v9 = *(v12 + 8 * v13);
      }

      *(v12 + 8 * v13) = v9;
      ++v10;
    }

    while (a4 * a3 != v10);
  }

  v15 = a1[32];
  if (v15)
  {
    a1[33] = v15;
    operator delete(v15);
    a1[32] = 0;
    a1[33] = 0;
    a1[34] = 0;
  }

  *(a1 + 16) = *__p;
  a1[34] = v22;
  __p[1] = 0;
  v22 = 0;
  __p[0] = 0;
  v16 = a1 + 35;
  v17 = a1[35];
  if (v17)
  {
    a1[36] = v17;
    operator delete(v17);
    *v16 = 0;
    a1[36] = 0;
    a1[37] = 0;
    v17 = __p[0];
  }

  *v16 = v19;
  a1[37] = v20;
  if (v17)
  {
    __p[1] = v17;
    operator delete(v17);
  }
}

void sub_29A9E8A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A9E8A24(void *a1, uint64_t a2, int a3, int a4)
{
  v8 = a4;
  *&v19 = 0x7FEFFFFFFFFFFFFFLL;
  sub_29A03FB14(__p, a4, &v19);
  v18 = 0xFFEFFFFFFFFFFFFFLL;
  sub_29A03FB14(&v19, v8, &v18);
  if (a4 * a3)
  {
    v9 = 0;
    v10 = __p[0];
    v11 = v19;
    do
    {
      v12 = *(a2 + 4 * v9);
      v13 = v9 % v8;
      v14 = v10[v9 % v8];
      if (v14 >= v12)
      {
        v14 = *(a2 + 4 * v9);
      }

      v10[v13] = v14;
      if (*(v11 + 8 * v13) > v12)
      {
        v12 = *(v11 + 8 * v13);
      }

      *(v11 + 8 * v13) = v12;
      ++v9;
    }

    while (a4 * a3 != v9);
  }

  v15 = a1[32];
  if (v15)
  {
    a1[33] = v15;
    operator delete(v15);
    a1[32] = 0;
    a1[33] = 0;
    a1[34] = 0;
  }

  *(a1 + 16) = *__p;
  a1[34] = v22;
  __p[1] = 0;
  v22 = 0;
  __p[0] = 0;
  v16 = a1 + 35;
  v17 = a1[35];
  if (v17)
  {
    a1[36] = v17;
    operator delete(v17);
    *v16 = 0;
    a1[36] = 0;
    a1[37] = 0;
    v17 = __p[0];
  }

  *v16 = v19;
  a1[37] = v20;
  if (v17)
  {
    __p[1] = v17;
    operator delete(v17);
  }
}

void sub_29A9E8B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A9E8B78(void *a1, uint64_t a2, int a3, int a4)
{
  v8 = a4;
  *&v19 = 0x7FEFFFFFFFFFFFFFLL;
  sub_29A03FB14(__p, a4, &v19);
  v18 = 0xFFEFFFFFFFFFFFFFLL;
  sub_29A03FB14(&v19, v8, &v18);
  if (a4 * a3)
  {
    v10 = 0;
    v11 = __p[0];
    v12 = v19;
    do
    {
      LODWORD(v9) = *(a2 + 4 * v10);
      v9 = *&v9;
      v13 = v10 % v8;
      v14 = v11[v10 % v8];
      if (v14 >= v9)
      {
        v14 = v9;
      }

      v11[v13] = v14;
      if (*(v12 + 8 * v13) > v9)
      {
        v9 = *(v12 + 8 * v13);
      }

      *(v12 + 8 * v13) = v9;
      ++v10;
    }

    while (a4 * a3 != v10);
  }

  v15 = a1[32];
  if (v15)
  {
    a1[33] = v15;
    operator delete(v15);
    a1[32] = 0;
    a1[33] = 0;
    a1[34] = 0;
  }

  *(a1 + 16) = *__p;
  a1[34] = v22;
  __p[1] = 0;
  v22 = 0;
  __p[0] = 0;
  v16 = a1 + 35;
  v17 = a1[35];
  if (v17)
  {
    a1[36] = v17;
    operator delete(v17);
    *v16 = 0;
    a1[36] = 0;
    a1[37] = 0;
    v17 = __p[0];
  }

  *v16 = v19;
  a1[37] = v20;
  if (v17)
  {
    __p[1] = v17;
    operator delete(v17);
  }
}

void sub_29A9E8CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A9E8CCC(void *a1, uint64_t a2, int a3, int a4)
{
  v8 = a4;
  *&v19 = 0x7FEFFFFFFFFFFFFFLL;
  sub_29A03FB14(__p, a4, &v19);
  v18 = 0xFFEFFFFFFFFFFFFFLL;
  sub_29A03FB14(&v19, v8, &v18);
  if (a4 * a3)
  {
    v9 = 0;
    v10 = __p[0];
    v11 = v19;
    do
    {
      v12 = *(a2 + 4 * v9);
      v13 = v9 % v8;
      v14 = v10[v9 % v8];
      if (v14 >= v12)
      {
        v14 = *(a2 + 4 * v9);
      }

      v10[v13] = v14;
      if (*(v11 + 8 * v13) > v12)
      {
        v12 = *(v11 + 8 * v13);
      }

      *(v11 + 8 * v13) = v12;
      ++v9;
    }

    while (a4 * a3 != v9);
  }

  v15 = a1[32];
  if (v15)
  {
    a1[33] = v15;
    operator delete(v15);
    a1[32] = 0;
    a1[33] = 0;
    a1[34] = 0;
  }

  *(a1 + 16) = *__p;
  a1[34] = v22;
  __p[1] = 0;
  v22 = 0;
  __p[0] = 0;
  v16 = a1 + 35;
  v17 = a1[35];
  if (v17)
  {
    a1[36] = v17;
    operator delete(v17);
    *v16 = 0;
    a1[36] = 0;
    a1[37] = 0;
    v17 = __p[0];
  }

  *v16 = v19;
  a1[37] = v20;
  if (v17)
  {
    __p[1] = v17;
    operator delete(v17);
  }
}

void sub_29A9E8E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A9E8E20(void *a1, uint64_t a2, int a3, int a4)
{
  v8 = a4;
  *&v19 = 0x7FEFFFFFFFFFFFFFLL;
  sub_29A03FB14(__p, a4, &v19);
  v18 = 0xFFEFFFFFFFFFFFFFLL;
  sub_29A03FB14(&v19, v8, &v18);
  if (a4 * a3)
  {
    v9 = 0;
    v10 = __p[0];
    v11 = v19;
    do
    {
      v12 = *(a2 + 8 * v9);
      v13 = v9 % v8;
      v14 = v10[v9 % v8];
      if (v14 >= v12)
      {
        v14 = *(a2 + 8 * v9);
      }

      v10[v13] = v14;
      if (v12 < *(v11 + 8 * v13))
      {
        v12 = *(v11 + 8 * v13);
      }

      *(v11 + 8 * v13) = v12;
      ++v9;
    }

    while (a4 * a3 != v9);
  }

  v15 = a1[32];
  if (v15)
  {
    a1[33] = v15;
    operator delete(v15);
    a1[32] = 0;
    a1[33] = 0;
    a1[34] = 0;
  }

  *(a1 + 16) = *__p;
  a1[34] = v22;
  __p[1] = 0;
  v22 = 0;
  __p[0] = 0;
  v16 = a1 + 35;
  v17 = a1[35];
  if (v17)
  {
    a1[36] = v17;
    operator delete(v17);
    *v16 = 0;
    a1[36] = 0;
    a1[37] = 0;
    v17 = __p[0];
  }

  *v16 = v19;
  a1[37] = v20;
  if (v17)
  {
    __p[1] = v17;
    operator delete(v17);
  }
}

void sub_29A9E8F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A9E8F70(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A9EC9AC(a1, a2);
  }

  else
  {
    sub_29A9ECAF4(a1[1], a2);
    result = v3 + 920;
    a1[1] = v3 + 920;
  }

  a1[1] = result;
  return result;
}

uint64_t adobe::usd::addImageBufferView(uint64_t a1, const std::string *a2, int a3, const void *a4)
{
  Buffer = adobe::usd::getBuffer(a1);
  v10 = (Buffer + 24);
  v9 = *(Buffer + 24);
  v11 = *(Buffer + 32) - v9;
  v12 = v11 & 3;
  if (v9 - *(Buffer + 32) >= 0)
  {
    v12 = -((v9 - *(Buffer + 32)) & 3);
  }

  if (v12)
  {
    v13 = 4 - v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 + v11;
  v15 = v13 + v11 + a3;
  if (v15 <= v11)
  {
    if (v15 < v11)
    {
      *(Buffer + 32) = v9 + v15;
    }
  }

  else
  {
    sub_29A1B2C78(Buffer + 24, v15 - v11);
  }

  if (a3 >= 1)
  {
    memcpy((*v10 + v14), a4, a3);
  }

  memset(&v19, 0, sizeof(v19));
  v20 = -1;
  v32[0] = 0;
  v32[1] = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v24 = 0;
  v30 = 0;
  v31 = v32;
  v33 = 0;
  v35[0] = 0;
  v35[1] = 0;
  v34 = v35;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  std::string::operator=(&v19, a2);
  v20 = 0;
  v21 = v14;
  v22 = a3;
  v23 = 0;
  v24 = 0;
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  sub_29A9E8480(a1 + 72, &v19);
  sub_29A9CC06C(&v19);
  return 1041204193 * ((v17 - v16) >> 3);
}

void sub_29A9E9144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A9CC06C(va);
  _Unwind_Resume(a1);
}

uint64_t adobe::usd::getPrimitiveAttribute(uint64_t a1, const void **a2)
{
  v3 = sub_29A01BCCC(a1, a2);
  if (a1 + 8 == v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(v3 + 56);
  }
}

uint64_t adobe::usd::getAccessorElementCount(void *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || 0x2A4BAFDC61F2A4BBLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*a1 + 920 * a2 + 48);
  }
}

void adobe::usd::readAccessorData(void *a1, unsigned int a2, size_t a3, uint64_t a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    return;
  }

  if (!a4)
  {
    return;
  }

  v4 = a3;
  if (!a3)
  {
    return;
  }

  if (0x2A4BAFDC61F2A4BBLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    return;
  }

  v5 = (*a1 + 920 * a2);
  v6 = *v5;
  if ((v6 & 0x80000000) != 0)
  {
    return;
  }

  v7 = a1[9];
  if (0xF83E0F83E0F83E1 * ((a1[10] - v7) >> 3) <= v6)
  {
    return;
  }

  v8 = v7 + 264 * v6;
  v9 = *(v8 + 24);
  if ((v9 & 0x80000000) != 0)
  {
    return;
  }

  v10 = a1[6];
  if (0xF83E0F83E0F83E1 * ((a1[7] - v10) >> 3) <= v9)
  {
    return;
  }

  v11 = v5[11] - 5120;
  if (v11 > 0xA)
  {
    v12 = -1;
  }

  else
  {
    v12 = qword_29B4DACD0[v11];
  }

  v13 = v5[14];
  if (v13 <= 33)
  {
    if (v13 == 2)
    {
      v14 = 2;
      goto LABEL_27;
    }

    if (v13 != 3)
    {
      if (v13 == 4)
      {
LABEL_19:
        v14 = 4;
        goto LABEL_27;
      }

LABEL_24:
      v14 = -1;
      goto LABEL_27;
    }

    v14 = 3;
  }

  else
  {
    if (v13 <= 35)
    {
      if (v13 != 34)
      {
        v14 = 9;
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v13 != 36)
    {
      if (v13 == 65)
      {
        v14 = 1;
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v14 = 16;
  }

LABEL_27:
  v15 = *(v5 + 6);
  if (!v15)
  {
    v37 = "usdGltf/gltf.cpp";
    v38 = "readAccessorData";
    v39 = 539;
    v40 = "void adobe::usd::readAccessorData(const tinygltf::Model &, int, uint8_t *, size_t)";
    v41 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v37, "Invalid accessor parameters: componentSize=%zu, componentCount=%zu, count=%zu", a3, v12, v14, 0);
    return;
  }

  if (!is_mul_ok(v12, v14))
  {
    v37 = "usdGltf/gltf.cpp";
    v38 = "readAccessorData";
    v39 = 545;
    v40 = "void adobe::usd::readAccessorData(const tinygltf::Model &, int, uint8_t *, size_t)";
    v41 = 0;
    v16 = "Integer overflow in element size calculation";
LABEL_36:
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v37, v16, a3, v34, v35, v36);
    return;
  }

  v17 = v14 * v12;
  if (!is_mul_ok(v14 * v12, v15))
  {
    v37 = "usdGltf/gltf.cpp";
    v38 = "readAccessorData";
    v39 = 551;
    v40 = "void adobe::usd::readAccessorData(const tinygltf::Model &, int, uint8_t *, size_t)";
    v41 = 0;
    v16 = "Integer overflow in total data size calculation";
    goto LABEL_36;
  }

  v18 = sub_29A9E9650(v5, v8);
  v19 = *(v8 + 32);
  v20 = *(v10 + 264 * v9 + 24);
  v21 = *(v10 + 264 * v9 + 32) - v20;
  if (v21 < v19 || (v22 = *(v5 + 4), v22 > v21 - v19))
  {
    v37 = "usdGltf/gltf.cpp";
    v38 = "readAccessorData";
    v39 = 561;
    v40 = "void adobe::usd::readAccessorData(const tinygltf::Model &, int, uint8_t *, size_t)";
    v41 = 0;
    v35 = *(v5 + 4);
    v36 = v21;
    v34 = v19;
    v16 = "Buffer offset out of bounds: bufferView.byteOffset=%zu, accessor.byteOffset=%zu, buffer.size=%zu";
    goto LABEL_36;
  }

  v23 = v18;
  v24 = v22 + v19;
  v25 = v21 - v24;
  if (v17 <= v18)
  {
    v26 = v18;
  }

  else
  {
    v26 = v17;
  }

  v27 = *(v5 + 6);
  if (v27)
  {
    v28 = v17;
    v29 = v27 - 1;
    if (v27 != 1)
    {
      if (!is_mul_ok(v26, v29))
      {
        v37 = "usdGltf/gltf.cpp";
        v38 = "readAccessorData";
        v39 = 579;
        v40 = "void adobe::usd::readAccessorData(const tinygltf::Model &, int, uint8_t *, size_t)";
        v41 = 0;
        v16 = "Integer overflow in required bytes calculation";
        goto LABEL_36;
      }

      v28 = v17 + v29 * v26;
    }

    if (v25 < v28)
    {
      v37 = "usdGltf/gltf.cpp";
      v38 = "readAccessorData";
      v39 = 587;
      v40 = "void adobe::usd::readAccessorData(const tinygltf::Model &, int, uint8_t *, size_t)";
      v41 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v37, "Buffer too small (%zu bytes remaining), need %zu bytes", a3, v25, v28);
      return;
    }

    if (v17 != v18)
    {
      v31 = 0;
      v32 = 0;
      v33 = v20 + v24;
      while (v17 + v31 <= v25)
      {
        memcpy(v4, (v33 + v31), v17);
        v4 += v17;
        ++v32;
        v31 += v23;
        if (v32 >= *(v5 + 6))
        {
          return;
        }
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v37, "Source buffer underrun prevented at element %zu", a3, v32);
      return;
    }

    v30 = (v20 + v24);
    a3 = v27 * v17;
  }

  else
  {
    if (v17 != v18)
    {
      return;
    }

    a3 = 0;
    v30 = (v20 + v24);
  }

  if (a3 > v25)
  {
    v37 = "usdGltf/gltf.cpp";
    v38 = "readAccessorData";
    v39 = 602;
    v40 = "void adobe::usd::readAccessorData(const tinygltf::Model &, int, uint8_t *, size_t)";
    v41 = 0;
    v16 = "Source buffer underrun prevented in packed copy";
    goto LABEL_36;
  }

  memcpy(v4, v30, a3);
}

uint64_t sub_29A9E9650(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a1 + 44) - 5120;
  if (v2)
  {
    if (v3 <= 0xA && ((0x47Fu >> *(a1 + 44)) & 1) != 0)
    {
      if ((qword_29B4DAC78[v3] & v2) != 0)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v2;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v3 > 0xA || ((0x47Fu >> *(a1 + 44)) & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = dword_29B4DAC48[v3];
  v6 = *(a1 + 56);
  result = 0xFFFFFFFFLL;
  if (v6 > 33)
  {
    if (v6 > 35)
    {
      if (v6 == 36)
      {
        v6 = 16;
      }

      else
      {
        if (v6 != 65)
        {
          return result;
        }

        v6 = 1;
      }
    }

    else if (v6 == 34)
    {
      v6 = 4;
    }

    else
    {
      v6 = 9;
    }

    return (v6 * v5);
  }

  if (v6 == 2 || v6 == 3 || v6 == 4)
  {
    return (v6 * v5);
  }

  return result;
}

void adobe::usd::readAccessorDataToFloat(void *a1, unsigned int a2, float *a3, unint64_t a4, unint64_t a5)
{
  if ((a2 & 0x80000000) != 0)
  {
    return;
  }

  if (!a4)
  {
    return;
  }

  v6 = a3;
  if (!a3)
  {
    return;
  }

  if (0x2A4BAFDC61F2A4BBLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    return;
  }

  v7 = (*a1 + 920 * a2);
  v8 = *v7;
  if ((v8 & 0x80000000) != 0)
  {
    return;
  }

  v9 = a1[9];
  if (0xF83E0F83E0F83E1 * ((a1[10] - v9) >> 3) <= v8)
  {
    return;
  }

  v10 = v9 + 264 * v8;
  v11 = *(v10 + 24);
  if ((v11 & 0x80000000) != 0)
  {
    return;
  }

  v12 = a1[6];
  if (0xF83E0F83E0F83E1 * ((a1[7] - v12) >> 3) <= v11)
  {
    return;
  }

  v14 = v7[11] - 5120;
  if (v14 > 0xA)
  {
    v15 = -1;
  }

  else
  {
    v15 = qword_29B4DACD0[v14];
  }

  v16 = v7[14];
  if (v16 <= 33)
  {
    if (v16 == 2)
    {
      v17 = 2;
      goto LABEL_27;
    }

    if (v16 != 3)
    {
      if (v16 == 4)
      {
LABEL_19:
        v17 = 4;
        goto LABEL_27;
      }

LABEL_24:
      v17 = -1;
      goto LABEL_27;
    }

    v17 = 3;
  }

  else
  {
    if (v16 <= 35)
    {
      if (v16 != 34)
      {
        v17 = 9;
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v16 != 36)
    {
      if (v16 == 65)
      {
        v17 = 1;
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v17 = 16;
  }

LABEL_27:
  v18 = sub_29A9E9650(v7, v10);
  v22 = *(v7 + 4) + *(v10 + 32);
  v23 = v12 + 264 * v11;
  v24 = *(v23 + 24);
  v25 = *(v23 + 32) - v24;
  v26 = v25 - v22;
  if (v25 <= v22)
  {
    v57 = "usdGltf/gltf.cpp";
    v58 = "readAccessorDataToFloat";
    v59 = 671;
    v60 = "void adobe::usd::readAccessorDataToFloat(const tinygltf::Model &, int, float *, size_t, size_t)";
    v61 = 0;
    v28 = "Buffer offset out of bounds";
    goto LABEL_31;
  }

  v27 = *(v7 + 6);
  if (a5 < 4 * a4 * v27)
  {
    v57 = "usdGltf/gltf.cpp";
    v58 = "readAccessorDataToFloat";
    v59 = 678;
    v60 = "void adobe::usd::readAccessorDataToFloat(const tinygltf::Model &, int, float *, size_t, size_t)";
    v61 = 0;
    v28 = "Destination buffer too small";
LABEL_31:
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v57, v28, v19);
    return;
  }

  v29 = v17 * v15;
  if (v17 >= a4)
  {
    v30 = a4;
  }

  else
  {
    v30 = v17;
  }

  if (v27)
  {
    v31 = v27 * v29;
    if (v29 != v18)
    {
      v31 = v29 + (v27 - 1) * v18;
    }

    if (v31 > v26)
    {
      v57 = "usdGltf/gltf.cpp";
      v58 = "readAccessorDataToFloat";
      v59 = 703;
      v60 = "void adobe::usd::readAccessorDataToFloat(const tinygltf::Model &, int, float *, size_t, size_t)";
      v61 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v57, "Buffer underrun prevented: need %zu bytes, have %zu", v19, v31, v26);
      return;
    }
  }

  v32 = (v24 + v22);
  v33 = v7[11];
  if (v33 <= 5121)
  {
    if (v33 == 5120)
    {
      if (v7[10])
      {
        if (v27)
        {
          v42 = 0;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          do
          {
            for (i = 0; i != v30; ++i)
            {
              v44 = v32[i];
              v45 = v32[i] / 127.0;
              v46 = vcvts_n_f32_s32(v44, 7uLL);
              if (v44 < 0)
              {
                v45 = v46;
              }

              v6[i] = v45;
            }

            v32 += v18;
            ++v42;
            v6 += a4;
          }

          while (v42 != v27);
        }
      }

      else if (v27)
      {
        v51 = 0;
        if (v30 <= 1)
        {
          v30 = 1;
        }

        do
        {
          for (j = 0; j != v30; ++j)
          {
            v6[j] = v32[j];
          }

          v32 += v18;
          ++v51;
          v6 += a4;
        }

        while (v51 != v27);
      }
    }

    else
    {
      if (v33 != 5121)
      {
        goto LABEL_89;
      }

      if (v7[10])
      {
        if (v27)
        {
          v34 = 0;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          do
          {
            for (k = 0; k != v30; ++k)
            {
              LOBYTE(v21) = v32[k];
              v21 = LODWORD(v21) / 255.0;
              v6[k] = v21;
            }

            v32 += v18;
            ++v34;
            v6 += a4;
          }

          while (v34 != v27);
        }
      }

      else if (v27)
      {
        v55 = 0;
        if (v30 <= 1)
        {
          v30 = 1;
        }

        do
        {
          for (m = 0; m != v30; ++m)
          {
            LOBYTE(v20) = v32[m];
            v20 = LODWORD(v20);
            v6[m] = v20;
          }

          v32 += v18;
          ++v55;
          v6 += a4;
        }

        while (v55 != v27);
      }
    }
  }

  else
  {
    switch(v33)
    {
      case 5122:
        if (v7[10])
        {
          if (v27)
          {
            v36 = 0;
            if (v30 <= 1)
            {
              v30 = 1;
            }

            do
            {
              for (n = 0; n != v30; ++n)
              {
                v38 = *&v32[2 * n];
                if ((v38 & 0x80000000) != 0)
                {
                  v39 = vcvts_n_f32_s32(v38, 0xFuLL);
                }

                else
                {
                  v39 = *&v32[2 * n] / 32767.0;
                }

                v6[n] = v39;
              }

              v32 += v18;
              ++v36;
              v6 += a4;
            }

            while (v36 != v27);
          }
        }

        else if (v27)
        {
          v47 = 0;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          do
          {
            for (ii = 0; ii != v30; ++ii)
            {
              v6[ii] = *&v32[2 * ii];
            }

            v32 += v18;
            ++v47;
            v6 += a4;
          }

          while (v47 != v27);
        }

        break;
      case 5123:
        if (v7[10])
        {
          if (v27)
          {
            v40 = 0;
            if (v30 <= 1)
            {
              v30 = 1;
            }

            do
            {
              for (jj = 0; jj != v30; ++jj)
              {
                LOWORD(v21) = *&v32[2 * jj];
                v21 = LODWORD(v21) / 65535.0;
                v6[jj] = v21;
              }

              v32 += v18;
              ++v40;
              v6 += a4;
            }

            while (v40 != v27);
          }
        }

        else if (v27)
        {
          v49 = 0;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          do
          {
            for (kk = 0; kk != v30; ++kk)
            {
              LOWORD(v20) = *&v32[2 * kk];
              v20 = LODWORD(v20);
              v6[kk] = v20;
            }

            v32 += v18;
            ++v49;
            v6 += a4;
          }

          while (v49 != v27);
        }

        break;
      case 5126:
        if (v29 == v18)
        {
          if (v27 * v29 <= a5)
          {

            memcpy(v6, v32, v27 * v29);
          }
        }

        else if (v27)
        {
          v53 = 0;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          do
          {
            for (mm = 0; mm != v30; ++mm)
            {
              v6[mm] = *&v32[4 * mm];
            }

            v32 += v18;
            ++v53;
            v6 += a4;
          }

          while (v53 != v27);
        }

        return;
      default:
LABEL_89:
        v57 = "usdGltf/gltf.cpp";
        v58 = "readAccessorDataToFloat";
        v59 = 808;
        v60 = "void adobe::usd::readAccessorDataToFloat(const tinygltf::Model &, int, float *, size_t, size_t)";
        v61 = 0;
        v28 = "Unsigned Int and Double component types are not supported when converting to float arrays";
        goto LABEL_31;
    }
  }
}

void adobe::usd::readColor(uint64_t *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  sub_29A008E78(&__p, "COLOR_0");
  v8 = sub_29A01BCCC(a2, &__p);
  if (a2 + 8 == v8)
  {
    v10 = -1;
  }

  else
  {
    v10 = *(v8 + 56);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  if ((v10 & 0x80000000) == 0)
  {
    v11 = *a1;
    if (0x2A4BAFDC61F2A4BBLL * ((a1[1] - *a1) >> 3) > v10)
    {
      v12 = *(v11 + 920 * v10 + 48);
      if (v12 >= 1)
      {
        v13 = v11 + 920 * v10;
        if ((*(v13 + 40) & 1) == 0 && *(v13 + 44) != 5126)
        {
          __p = "usdGltf/gltf.cpp";
          v21 = "readColor";
          v22 = 868;
          v23 = "void adobe::usd::readColor(const tinygltf::Model &, const tinygltf::Primitive &, pxr_aapl::VtArray<pxr_aapl::GfVec3f> &, pxr_aapl::VtArray<float> &)";
          v24 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "COLOR_0 data has integer components, but is not normalized. This is not supported", v9);
        }

        v14 = *(v13 + 56);
        if (v14 == 3)
        {
          v16 = *(v13 + 44);
          switch(v16)
          {
            case 0x1401:
              sub_29A9EA66C(a1, v10, v12, a3);
              return;
            case 0x1403:
              sub_29A9EA530(a1, v10, v12, a3);
              return;
            case 0x1406:
              LODWORD(v21) = 0;
              __p = 0;
              p_p = &__p;
              sub_29A193304(a3, v12 & 0x7FFFFFFF, &p_p);
              v17 = 12 * *a3;
              sub_29A1935CC(a3);
              adobe::usd::readAccessorData(a1, v10, a3[4], v17);
              return;
          }

          __p = "usdGltf/gltf.cpp";
          v21 = "readColor";
          v22 = 893;
          v23 = "void adobe::usd::readColor(const tinygltf::Model &, const tinygltf::Primitive &, pxr_aapl::VtArray<pxr_aapl::GfVec3f> &, pxr_aapl::VtArray<float> &)";
          v24 = 0;
          v19 = v16;
          v18 = "Unexpected component type %d for VEC3 COLOR_0 accessor. Signed color?";
        }

        else
        {
          if (v14 == 4)
          {
            v15 = *(v13 + 44);
            switch(v15)
            {
              case 0x1401:
                sub_29A9EA398(a1, v10, v12, a3, a4);
                break;
              case 0x1403:
                sub_29A9EA200(a1, v10, v12, a3, a4);
                break;
              case 0x1406:
                sub_29A9EA0A4(a1, v10, v12, a3, a4);
                break;
              default:
                __p = "usdGltf/gltf.cpp";
                v21 = "readColor";
                v22 = 879;
                v23 = "void adobe::usd::readColor(const tinygltf::Model &, const tinygltf::Primitive &, pxr_aapl::VtArray<pxr_aapl::GfVec3f> &, pxr_aapl::VtArray<float> &)";
                v24 = 0;
                pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "Unexpected component type %d for VEC4 COLOR_0 accessor. Signed color?", v9, v15);
                break;
            }

            return;
          }

          __p = "usdGltf/gltf.cpp";
          v21 = "readColor";
          v22 = 896;
          v23 = "void adobe::usd::readColor(const tinygltf::Model &, const tinygltf::Primitive &, pxr_aapl::VtArray<pxr_aapl::GfVec3f> &, pxr_aapl::VtArray<float> &)";
          v24 = 0;
          v18 = "Unhandled accessor type when reading color data";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, v18, v9, v19);
      }
    }
  }
}

void sub_29A9EA088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A9EA0A4(void *a1, unsigned int a2, int a3, unint64_t *a4, void *a5)
{
  sub_29A0121C0(&__p, 4 * a3);
  adobe::usd::readAccessorData(a1, a2, __p, v19 - __p);
  v21 = 0;
  v20 = 0;
  v22 = &v20;
  sub_29A193304(a4, a3, &v22);
  LODWORD(v22) = 0;
  v20 = &v22;
  sub_29A18E224(a5, a3, &v20, v10);
  if (a3 >= 1)
  {
    v11 = 0;
    v12 = 12 * a3;
    v13 = 3;
    v14 = 8;
    do
    {
      v15 = *(__p + v14 - 8);
      v16 = *(__p + v14);
      sub_29A1935CC(a4);
      v17 = a4[4] + v11;
      *v17 = v15;
      *(v17 + 8) = v16;
      LODWORD(v15) = *(__p + v13);
      sub_29A18E624(a5);
      *(a5[4] + v13 - 3) = v15;
      v13 += 4;
      v14 += 16;
      v11 += 12;
    }

    while (v12 != v11);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

void sub_29A9EA1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A9EA200(void *a1, unsigned int a2, int a3, unint64_t *a4, void *a5)
{
  sub_29A010B0C(&__p, 4 * a3);
  adobe::usd::readAccessorData(a1, a2, __p, v21 - __p);
  v23 = 0;
  v22 = 0;
  v24 = &v22;
  sub_29A193304(a4, a3, &v24);
  LODWORD(v24) = 0;
  v22 = &v24;
  sub_29A18E224(a5, a3, &v22, v10);
  if (a3 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 4 * a3;
    v14 = 4;
    do
    {
      v15 = *(__p + v14 - 4);
      v16 = *(__p + v12 + 1);
      v17 = *(__p + v14);
      sub_29A1935CC(a4);
      v18 = (a4[4] + v11);
      *v18 = v15 / 65535.0;
      v18[1] = v16 / 65535.0;
      v18[2] = v17 / 65535.0;
      v19 = *(__p + v12 + 3);
      sub_29A18E624(a5);
      *(a5[4] + v12) = v19 / 65535.0;
      v12 += 4;
      v11 += 12;
      v14 += 8;
    }

    while (v13 != v12);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

void sub_29A9EA374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A9EA398(void *a1, unsigned int a2, int a3, unint64_t *a4, void *a5)
{
  sub_29A0104F4(&__p, 4 * a3);
  adobe::usd::readAccessorData(a1, a2, __p, v21 - __p);
  v23 = 0;
  v22 = 0;
  v24 = &v22;
  sub_29A193304(a4, a3, &v24);
  LODWORD(v24) = 0;
  v22 = &v24;
  sub_29A18E224(a5, a3, &v22, v10);
  if (a3 >= 1)
  {
    v12 = 0;
    v13 = 4 * a3;
    v14 = 8;
    v15 = vdup_n_s32(0x437F0000u);
    do
    {
      v11.i8[0] = *(__p + v12);
      v11.i8[4] = *(__p + v12 + 1);
      v19 = v11;
      v16 = *(__p + v12 + 2);
      sub_29A1935CC(a4);
      v17 = (a4[4] + v14);
      *(v17 - 1) = vdiv_f32(vcvt_f32_u32(vand_s8(v19, 0xFF000000FFLL)), v15);
      *v17 = v16 / 255.0;
      v18 = *(__p + v12 + 3);
      sub_29A18E624(a5);
      *v11.i32 = v18 / 255.0;
      *(a5[4] + v12) = v11.i32[0];
      v12 += 4;
      v14 += 12;
    }

    while (v13 != v12);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

void sub_29A9EA50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A9EA530(void *a1, unsigned int a2, int a3, unint64_t *a4)
{
  sub_29A010B0C(&__p, 3 * a3);
  adobe::usd::readAccessorData(a1, a2, __p, v17 - __p);
  v19 = 0;
  v18 = 0;
  v20 = &v18;
  sub_29A193304(a4, a3, &v20);
  if (a3 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 12 * a3;
    do
    {
      v11 = (__p + 2 * v9);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      sub_29A1935CC(a4);
      v15 = (a4[4] + v8);
      *v15 = v12 / 65535.0;
      v15[1] = v13 / 65535.0;
      v15[2] = v14 / 65535.0;
      v8 += 12;
      v9 += 3;
    }

    while (v10 != v8);
  }

  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }
}

void sub_29A9EA64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A9EA66C(void *a1, unsigned int a2, int a3, unint64_t *a4)
{
  sub_29A0104F4(&__p, 3 * a3);
  adobe::usd::readAccessorData(a1, a2, __p, v15 - __p);
  v17 = 0;
  v16 = 0;
  v18 = &v16;
  sub_29A193304(a4, a3, &v18);
  if (a3 >= 1)
  {
    v8 = 0;
    v9 = 3 * a3;
    do
    {
      v10 = *(__p + v8);
      v11 = *(__p + v8 + 1);
      v12 = *(__p + v8 + 2);
      sub_29A1935CC(a4);
      v13 = (a4[4] + 4 * v8);
      *v13 = v10 / 255.0;
      v13[1] = v11 / 255.0;
      v13[2] = v12 / 255.0;
      v8 += 3;
    }

    while (v9 != v8);
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }
}

void sub_29A9EA780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void adobe::usd::readAccessorInts(void *a1, unsigned int a2, uint64_t a3)
{
  if ((a2 & 0x80000000) == 0 && 0x2A4BAFDC61F2A4BBLL * ((a1[1] - *a1) >> 3) > a2)
  {
    v5 = *a1 + 920 * a2;
    v6 = *(v5 + 44);
    if (v6 == 5130 || v6 == 5126)
    {
      v17 = "usdGltf/gltf.cpp";
      v18 = "readAccessorInts";
      v19 = 913;
      v20 = "void adobe::usd::readAccessorInts(const tinygltf::Model &, int, pxr_aapl::VtArray<int> &)";
      LOBYTE(v21) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v17, "readAccessorInts called on floating point data", a3);
    }

    else if (*(v5 + 48))
    {
      v9 = v6 - 5120;
      if (v9 > 6)
      {
        v17 = "usdGltf/gltf.cpp";
        v18 = "readAccessorInts";
        v19 = 942;
        v20 = "void adobe::usd::readAccessorInts(const tinygltf::Model &, int, pxr_aapl::VtArray<int> &)";
        LOBYTE(v21) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v17, "Unsupported component size %d in readAccessorInts", a3, 0xFFFFFFFFLL);
        sub_29A19D79C(a3);
      }

      else
      {
        v10 = 1 << v9;
        if ((v10 & 0x70) == 0)
        {
          if ((v10 & 3) != 0)
          {
            sub_29A19E1E4(&v17, *a3);
            v11 = v17;
            sub_29A19E500(&v17);
            adobe::usd::readAccessorData(a1, a2, v21, v11);
            sub_29A19E500(&v17);
            v12 = v21;
            sub_29A19E500(&v17);
            sub_29A9EAA44(a3, v12, v21 + v17);
            pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
          }

          sub_29A19BBD0(&v17, *a3);
          v15 = v17;
          sub_29A19C344(&v17);
          adobe::usd::readAccessorData(a1, a2, v21, 2 * v15);
          sub_29A19C344(&v17);
          v16 = v21;
          sub_29A19C344(&v17);
          sub_29A9EAAA0(a3, v16, v21 + 2 * v17);
          pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
        }

        v13 = 4 * *a3;
        sub_29A19DBEC(a3);
        v14 = *(a3 + 32);

        adobe::usd::readAccessorData(a1, a2, v14, v13);
      }
    }

    else
    {

      sub_29A19D79C(a3);
    }
  }
}

unint64_t *sub_29A9EAA44(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = a3;
  v9 = a2;
  sub_29A19D79C(a1);
  v7[0] = &v9;
  v7[1] = &v8;
  return sub_29A9ECF84(a1, a3 - a2, v7);
}

unint64_t *sub_29A9EAAA0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = a3;
  v9 = a2;
  sub_29A19D79C(a1);
  v7[0] = &v9;
  v7[1] = &v8;
  return sub_29A9ED170(a1, (a3 - a2) >> 1, v7);
}

uint64_t adobe::usd::readAccessorMinMax(void *a1, unsigned int a2, float32x2_t *a3, float32x2_t *a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  if (0x2A4BAFDC61F2A4BBLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    return 0;
  }

  v4 = (*a1 + 920 * a2);
  v5 = v4[32];
  if (v4[33] == v5 || v4[36] == v4[35])
  {
    return 0;
  }

  v6 = v5[1].f64[0];
  *a3 = vcvt_f32_f64(*v5);
  a3[1].f32[0] = v6;
  v7 = v4[35];
  v8 = v7[1].f64[0];
  *a4 = vcvt_f32_f64(*v7);
  a4[1].f32[0] = v8;
  return 1;
}

char *adobe::usd::addToTimeMap(char **a1, unint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *a2;
  if (v4 == *a1 || v6 == 0)
  {
    v8 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = (a2[4] + 4 * v10);
      v13 = *&v5[v9];
      if (vabds_f32(*v12, v13) <= 0.00001)
      {
        ++v10;
      }

      else if ((*v12 - v13) < 0.0)
      {
        sub_29A9EAC94(a1, &v5[v9], v12);
        ++v10;
        v5 = *a1;
        v4 = a1[1];
        v6 = *a2;
      }

      if (v11 >= (v4 - v5) >> 2)
      {
        break;
      }

      v9 += 4;
      ++v11;
    }

    while (v10 < v6);
    v8 = 4 * v10;
  }

  v14 = a2[4];

  return sub_29A9ED45C(a1, v4, (v14 + v8), (v14 + 4 * v6), (4 * v6 - v8) >> 2);
}

float *sub_29A9EAC94(void *a1, char *__src, float *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_29A00C9A4();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v30 = a1;
    if (v14)
    {
      v16 = sub_29A00E7A8(a1, v14);
    }

    else
    {
      v16 = 0;
    }

    v27 = v16;
    v28 = &v16[4 * v15];
    *&v29 = v28;
    *(&v29 + 1) = &v16[4 * v14];
    sub_29A9ED35C(&v27, a3);
    v17 = v28;
    memcpy(v29, v4, a1[1] - v4);
    v18 = *a1;
    v19 = v28;
    *&v29 = v29 + a1[1] - v4;
    a1[1] = v4;
    v20 = v4 - v18;
    v21 = &v19[-(v4 - v18)];
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    v23 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v22;
    *(&v29 + 1) = v23;
    v27 = v22;
    v28 = v22;
    if (v22)
    {
      operator delete(v22);
    }

    return v17;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 4);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
      v9 = a1[1];
    }

    v24 = v9 <= a3 || v4 > a3;
    v25 = 1;
    if (v24)
    {
      v25 = 0;
    }

    *v4 = a3[v25];
  }

  return v4;
}

void sub_29A9EAE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void adobe::usd::printValue(const void **a1, uint64_t a2, int a3, int a4)
{
  if (a4)
  {
    if (*(a1 + 23) >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    sub_29A022DE0(&v68, v7 + 3);
    if ((v70 & 0x80u) == 0)
    {
      v8 = &v68;
    }

    else
    {
      v8 = v68;
    }

    if (v7)
    {
      if (*(a1 + 23) >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      memmove(v8, v9, v7);
    }

    *(v8 + v7) = 2112032;
  }

  else
  {
    sub_29A008E78(&v68, "");
  }

  sub_29A008864(v62);
  v10 = *a2;
  if (*a2 == 3)
  {
    sub_29A00944C(&__p, a3, 32);
    if ((v61 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v61 & 0x80u) == 0)
    {
      v31 = v61;
    }

    else
    {
      v31 = v60;
    }

    v32 = sub_29A00911C(&v63, p_p, v31);
    if ((v70 & 0x80u) == 0)
    {
      v33 = &v68;
    }

    else
    {
      v33 = v68;
    }

    if ((v70 & 0x80u) == 0)
    {
      v34 = v70;
    }

    else
    {
      v34 = v69;
    }

    v35 = sub_29A00911C(v32, v33, v34);
    MEMORY[0x29C2C1EA0](v35, *(a2 + 112));
LABEL_80:
    if (v61 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_119;
  }

  if (v10 == 4)
  {
    sub_29A00944C(&__p, a3, 32);
    if ((v61 & 0x80u) == 0)
    {
      v18 = &__p;
    }

    else
    {
      v18 = __p;
    }

    if ((v61 & 0x80u) == 0)
    {
      v19 = v61;
    }

    else
    {
      v19 = v60;
    }

    v20 = sub_29A00911C(&v63, v18, v19);
    if ((v70 & 0x80u) == 0)
    {
      v21 = &v68;
    }

    else
    {
      v21 = v68;
    }

    if ((v70 & 0x80u) == 0)
    {
      v22 = v70;
    }

    else
    {
      v22 = v69;
    }

    v23 = sub_29A00911C(v20, v21, v22);
    v26 = *(a2 + 16);
    v25 = a2 + 16;
    v24 = v26;
    v27 = *(v25 + 23);
    if (v27 >= 0)
    {
      v28 = v25;
    }

    else
    {
      v28 = v24;
    }

    if (v27 >= 0)
    {
      v29 = *(v25 + 23);
    }

    else
    {
      v29 = *(v25 + 8);
    }

    sub_29A00911C(v23, v28, v29);
    goto LABEL_80;
  }

  if (v10 == 7)
  {
    v11 = *(a2 + 88);
    if (v11 != (a2 + 96))
    {
      do
      {
        adobe::usd::printValue(&__p, v11 + 4, v11 + 7, (a3 + 1), 1);
        if ((v61 & 0x80u) == 0)
        {
          v12 = &__p;
        }

        else
        {
          v12 = __p;
        }

        if ((v61 & 0x80u) == 0)
        {
          v13 = v61;
        }

        else
        {
          v13 = v60;
        }

        v14 = sub_29A00911C(&v63, v12, v13);
        sub_29A00911C(v14, "\n", 1);
        if (v61 < 0)
        {
          operator delete(__p);
        }

        v15 = v11[1];
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
            v16 = v11[2];
            v17 = *v16 == v11;
            v11 = v16;
          }

          while (!v17);
        }

        v11 = v16;
      }

      while (v16 != (a2 + 96));
    }

    goto LABEL_119;
  }

  if ((v10 - 1) <= 1)
  {
    sub_29A00944C(&__p, a3, 32);
    if ((v61 & 0x80u) == 0)
    {
      v36 = &__p;
    }

    else
    {
      v36 = __p;
    }

    if ((v61 & 0x80u) == 0)
    {
      v37 = v61;
    }

    else
    {
      v37 = v60;
    }

    v38 = sub_29A00911C(&v63, v36, v37);
    if ((v70 & 0x80u) == 0)
    {
      v39 = &v68;
    }

    else
    {
      v39 = v68;
    }

    if ((v70 & 0x80u) == 0)
    {
      v40 = v70;
    }

    else
    {
      v40 = v69;
    }

    v41 = sub_29A00911C(v38, v39, v40);
    MEMORY[0x29C2C1EB0](v41, *(a2 + 8));
    goto LABEL_80;
  }

  if (v10 == 5)
  {
    sub_29A00944C(&__p, a3, 32);
    if ((v61 & 0x80u) == 0)
    {
      v42 = &__p;
    }

    else
    {
      v42 = __p;
    }

    if ((v61 & 0x80u) == 0)
    {
      v43 = v61;
    }

    else
    {
      v43 = v60;
    }

    v44 = sub_29A00911C(&v63, v42, v43);
    v45 = *(a1 + 23);
    if (v45 >= 0)
    {
      v46 = a1;
    }

    else
    {
      v46 = *a1;
    }

    if (v45 >= 0)
    {
      v47 = *(a1 + 23);
    }

    else
    {
      v47 = a1[1];
    }

    v48 = sub_29A00911C(v44, v46, v47);
    sub_29A00911C(v48, " [ ", 3);
    if (v61 < 0)
    {
      operator delete(__p);
    }

    v49 = 0;
    for (i = 0; ; ++i)
    {
      v51 = *a2 == 5 ? 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 72) - *(a2 + 64)) >> 3) : 0;
      if (i >= v51)
      {
        break;
      }

      sub_29A008E78(v57, "");
      v52 = sub_29A9C9520(a2, v49 >> 32);
      adobe::usd::printValue(&__p, v57, v52, 0, 0);
      if ((v61 & 0x80u) == 0)
      {
        v53 = &__p;
      }

      else
      {
        v53 = __p;
      }

      if ((v61 & 0x80u) == 0)
      {
        v54 = v61;
      }

      else
      {
        v54 = v60;
      }

      sub_29A00911C(&v63, v53, v54);
      if (v61 < 0)
      {
        operator delete(__p);
      }

      if (v58 < 0)
      {
        operator delete(v57[0]);
      }

      if (*a2 == 5)
      {
        v55 = -1 - 0x1111111111111111 * ((*(a2 + 72) - *(a2 + 64)) >> 3);
      }

      else
      {
        v55 = -1;
      }

      if (i != v55)
      {
        sub_29A00911C(&v63, ", ", 2);
      }

      v49 += 0x100000000;
    }

    sub_29A00911C(&v63, " ]", 2);
  }

LABEL_119:
  std::stringbuf::str();
  v62[0] = *MEMORY[0x29EDC9528];
  v56 = *(MEMORY[0x29EDC9528] + 72);
  *(v62 + *(v62[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v63 = v56;
  v64 = MEMORY[0x29EDC9570] + 16;
  if (v66 < 0)
  {
    operator delete(v65[7].__locale_);
  }

  v64 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v65);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v67);
  if (v70 < 0)
  {
    operator delete(v68);
  }
}

void sub_29A9EB458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_29A008B0C(&a22);
  if (*(v22 - 89) < 0)
  {
    operator delete(*(v22 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t adobe::usd::unpackBase64String(const std::string *a1, int a2, std::string::value_type **a3)
{
  v6 = std::string::find(a1, 44, 0);
  std::string::basic_string(&v21, a1, v6 + 1, 0xFFFFFFFFFFFFFFFFLL, &__p);
  tinygltf::base64_decode(&v21, &__p);
  v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (a2)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((adobe::usd::decompress(p_p, size, a3) & 1) == 0)
    {
      v11 = 0;
      a3[1] = *a3;
      goto LABEL_23;
    }
  }

  else
  {
    v12 = __p.__r_.__value_.__l.__size_;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = __p.__r_.__value_.__l.__size_;
    }

    v14 = *a3;
    v15 = a3[1] - *a3;
    v16 = v13 >= v15;
    v17 = v13 - v15;
    if (v17 != 0 && v16)
    {
      sub_29A1B2C78(a3, v17);
      v14 = *a3;
      v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v12 = __p.__r_.__value_.__l.__size_;
      v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else if (!v16)
    {
      a3[1] = &v14[v13];
    }

    if (v8 >= 0)
    {
      v18 = v7;
    }

    else
    {
      v18 = v12;
    }

    std::string::copy(&__p, v14, v18, 0);
  }

  v11 = 1;
LABEL_23:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_29A9EB624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t adobe::usd::packBase64String(Bytef *a1, const unsigned __int8 *a2, int a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x29EDCA608];
  __p = 0;
  v13 = 0;
  v14 = 0;
  if (a3)
  {
    if ((adobe::usd::compress(a1, a2, &__p) & 1) == 0)
    {
      v9 = 0;
      if (*(a4 + 23) < 0)
      {
        **a4 = 0;
        *(a4 + 8) = 0;
      }

      else
      {
        *a4 = 0;
        *(a4 + 23) = 0;
      }

      goto LABEL_9;
    }

    a1 = __p;
    a2 = (v13 - __p);
  }

  tinygltf::base64_encode(a1, a2, &v11);
  v5 = std::string::insert(&v11, 0, "data:application/octet-stream;base64,");
  v6 = v5->__r_.__value_.__r.__words[0];
  v15[0] = v5->__r_.__value_.__l.__size_;
  *(v15 + 7) = *(&v5->__r_.__value_.__r.__words[1] + 7);
  v7 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  v8 = v15[0];
  *a4 = v6;
  *(a4 + 8) = v8;
  *(a4 + 15) = *(v15 + 7);
  *(a4 + 23) = v7;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v9 = 1;
LABEL_9:
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_29A9EB784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float adobe::usd::sampleBilinear(uint64_t a1, uint64_t a2, char *a3, float a4, float a5, double a6, double a7, float a8, float a9, float a10)
{
  if (!a1 || (v10 = *(a1 + 48), v11 = *(a1 + 56), v10 == v11))
  {
    v38 = "usdGltf/gltf.cpp";
    v39 = "sampleBilinear";
    v40 = 1124;
    v41 = "float adobe::usd::sampleBilinear(const tinygltf::Image *, float, float, int)";
    v42 = 0;
    v16 = "Image is null or empty";
  }

  else if ((a2 & 0x80000000) != 0 || (v12 = *(a1 + 32), v12 <= a2))
  {
    v38 = "usdGltf/gltf.cpp";
    v39 = "sampleBilinear";
    v40 = 1121;
    v41 = "float adobe::usd::sampleBilinear(const tinygltf::Image *, float, float, int)";
    v42 = 0;
    v36 = a2;
    v37 = *(a1 + 32);
    v16 = "Channel %d is out of bounds for image with %d channels";
  }

  else
  {
    v13 = *(a1 + 28);
    v14 = *(a1 + 24);
    v15 = v13;
    if (!v14 || !v13)
    {
      v38 = "usdGltf/gltf.cpp";
      v39 = "sampleBilinear";
      v40 = 1071;
      v41 = "float adobe::usd::sampleBilinear(const tinygltf::Image *, float, float, int)";
      v42 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v38, "Invalid image dimensions: %zu x %zu", a3, v14, v13);
      return 0.0;
    }

    if (0xFFFFFFFFFFFFFFFFLL / v13 / v12 >= v14)
    {
      v18 = v14 * v12 * v13;
      v19 = v11 - v10;
      if (v19 < v18)
      {
        v38 = "usdGltf/gltf.cpp";
        v39 = "sampleBilinear";
        v40 = 1084;
        v41 = "float adobe::usd::sampleBilinear(const tinygltf::Image *, float, float, int)";
        v42 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v38, "Image buffer size (%zu) smaller than expected (%zu)", a3, v19, v18);
        return 0.0;
      }

      v20 = v15 - 1;
      v21 = (v14 - 1) * a4;
      v22 = (v15 - 1) * a5;
      v23 = vcvtms_u32_f32(v21);
      if (v14 - 1 >= v23 + 1)
      {
        v24 = v23 + 1;
      }

      else
      {
        v24 = v14 - 1;
      }

      v25 = vcvtms_u32_f32(v22);
      if (v20 >= v25 + 1)
      {
        v26 = v25 + 1;
      }

      else
      {
        v26 = v20;
      }

      v27 = (v25 * v14 + v23) * v12 + a2;
      v28 = (v25 * v14 + v24) * v12 + a2;
      v29 = v26 * v14;
      v30 = (v29 + v23) * v12 + a2;
      v31 = (v29 + v24) * v12 + a2;
      if (v27 < v19 && v28 < v19 && v30 < v19 && v31 < v19)
      {
        *&v35 = v23;
        LOBYTE(v35) = *(v10 + v27);
        LOBYTE(a8) = *(v10 + v28);
        LOBYTE(a9) = *(v10 + v30);
        LOBYTE(a10) = *(v10 + v31);
        return ((1.0 - (v22 - v25)) * (((1.0 - (v21 - v23)) * (v35 / 255.0)) + ((v21 - v23) * (LODWORD(a8) / 255.0)))) + ((v22 - v25) * (((1.0 - (v21 - v23)) * (LODWORD(a9) / 255.0)) + ((v21 - v23) * (LODWORD(a10) / 255.0))));
      }

      v38 = "usdGltf/gltf.cpp";
      v39 = "sampleBilinear";
      v40 = 1107;
      v41 = "float adobe::usd::sampleBilinear(const tinygltf::Image *, float, float, int)";
      v42 = 0;
      v16 = "Image index out of bounds";
    }

    else
    {
      v38 = "usdGltf/gltf.cpp";
      v39 = "sampleBilinear";
      v40 = 1077;
      v41 = "float adobe::usd::sampleBilinear(const tinygltf::Image *, float, float, int)";
      v42 = 0;
      v16 = "Image size calculation would overflow";
    }
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v38, v16, a3, v36, v37);
  return 0.0;
}

double sub_29A9EBA84(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 32) = 0x7FFFFFFFLL;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = &unk_2A206DAC8;
  *(a1 + 96) = tinygltf::FileExists;
  *(a1 + 112) = a1 + 88;
  *(a1 + 120) = &unk_2A206DB78;
  *(a1 + 128) = tinygltf::ExpandFilePath;
  *(a1 + 144) = a1 + 120;
  *(a1 + 152) = &unk_2A206DC28;
  *(a1 + 160) = tinygltf::ReadWholeFile;
  *(a1 + 176) = a1 + 152;
  *(a1 + 184) = &unk_2A206DCD8;
  *(a1 + 192) = tinygltf::WriteWholeFile;
  *(a1 + 208) = a1 + 184;
  *(a1 + 216) = &unk_2A206DD88;
  *(a1 + 224) = tinygltf::GetFileSizeInBytes;
  *(a1 + 240) = a1 + 216;
  *(a1 + 248) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2A206DE38;
  *(a1 + 296) = tinygltf::URIDecode;
  *(a1 + 312) = a1 + 288;
  *(a1 + 320) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  return result;
}

void *sub_29A9EBBF0(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A206DAC8;
  result[1] = v3;
  return result;
}

uint64_t sub_29A9EBC38(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A206DAC8;
  a2[1] = v2;
  return result;
}

uint64_t sub_29A9EBC78(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A206DB48))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29A9EBCCC(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A206DB78;
  result[1] = v3;
  return result;
}

uint64_t sub_29A9EBD14(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A206DB78;
  a2[1] = v2;
  return result;
}

uint64_t sub_29A9EBD54(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A206DBF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29A9EBDA8(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A206DC28;
  result[1] = v3;
  return result;
}

uint64_t sub_29A9EBDF0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A206DC28;
  a2[1] = v2;
  return result;
}

uint64_t sub_29A9EBE38(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A206DCA8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29A9EBE8C(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A206DCD8;
  result[1] = v3;
  return result;
}

uint64_t sub_29A9EBED4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A206DCD8;
  a2[1] = v2;
  return result;
}

uint64_t sub_29A9EBF1C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A206DD58))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29A9EBF70(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A206DD88;
  result[1] = v3;
  return result;
}

uint64_t sub_29A9EBFB8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A206DD88;
  a2[1] = v2;
  return result;
}

uint64_t sub_29A9EC000(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A206DE08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A9EC04C(uint64_t a1)
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

uint64_t sub_29A9EC0CC(uint64_t a1)
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

uint64_t sub_29A9EC14C(uint64_t a1)
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

uint64_t sub_29A9EC1CC(uint64_t a1)
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

void *sub_29A9EC254(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A206DE38;
  result[1] = v3;
  return result;
}

uint64_t sub_29A9EC29C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A206DE38;
  a2[1] = v2;
  return result;
}

uint64_t sub_29A9EC2E0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A206DEB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A9EC32C(uint64_t a1)
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

uint64_t sub_29A9EC3AC(uint64_t a1)
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

uint64_t sub_29A9EC42C(uint64_t a1)
{
  sub_29A9EC4B8(a1 + 376);
  sub_29A9EC5B8(a1 + 328);
  sub_29A9EC538(a1 + 288);
  sub_29A9EC32C(a1 + 256);
  sub_29A9EC3AC(a1 + 216);
  sub_29A9EC04C(a1 + 184);
  sub_29A9EC0CC(a1 + 152);
  sub_29A9EC14C(a1 + 120);
  sub_29A9EC1CC(a1 + 88);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

uint64_t sub_29A9EC4B8(uint64_t a1)
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

uint64_t sub_29A9EC538(uint64_t a1)
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

uint64_t sub_29A9EC5B8(uint64_t a1)
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

void *sub_29A9EC640(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A206DEE8;
  result[1] = v3;
  return result;
}

uint64_t sub_29A9EC688(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A206DEE8;
  a2[1] = v2;
  return result;
}

uint64_t sub_29A9EC6E8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A206DF68))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A9EC734(uint64_t a1, __int128 *a2)
{
  v2 = 0xF83E0F83E0F83E1 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xF83E0F83E0F83ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0xF83E0F83E0F83E1 * ((*(a1 + 16) - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
  {
    v6 = 0xF83E0F83E0F83ELL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A9DC350(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = v7 + 264 * v2;
  *(&v16 + 1) = v7 + 264 * v6;
  sub_29A9EC87C(v15, a2);
  *&v16 = v15 + 264;
  v8 = *(a1 + 8);
  v9 = &v15[*a1 - v8];
  sub_29A9DC674(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9DC6E4(&v14);
  return v13;
}

void sub_29A9EC868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9DC6E4(va);
  _Unwind_Resume(a1);
}

char *sub_29A9EC87C(char *__dst, __int128 *a2)
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

  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(__dst + 14) = *(a2 + 14);
  *(__dst + 40) = v6;
  *(__dst + 24) = v5;
  sub_29A9C97D8((__dst + 64), (a2 + 4));
  sub_29A9C9590(__dst + 23, a2 + 23);
  if (*(a2 + 231) < 0)
  {
    sub_29A008D14(__dst + 208, *(a2 + 26), *(a2 + 27));
  }

  else
  {
    v7 = a2[13];
    *(__dst + 28) = *(a2 + 28);
    *(__dst + 13) = v7;
  }

  if (*(a2 + 255) < 0)
  {
    sub_29A008D14(__dst + 232, *(a2 + 29), *(a2 + 30));
  }

  else
  {
    v8 = *(a2 + 232);
    *(__dst + 31) = *(a2 + 31);
    *(__dst + 232) = v8;
  }

  __dst[256] = *(a2 + 256);
  return __dst;
}

void sub_29A9EC954(_Unwind_Exception *a1)
{
  if (*(v1 + 231) < 0)
  {
    operator delete(*(v1 + 208));
  }

  sub_29A9C9BD8(v1 + 184, *(v1 + 192));
  sub_29A9C9A40(v1 + 64);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A9EC9AC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2A4BAFDC61F2A4BBLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x473C1AB68A0473)
  {
    sub_29A00C9A4();
  }

  if (0x54975FB8C3E54976 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x54975FB8C3E54976 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2A4BAFDC61F2A4BBLL * ((a1[2] - *a1) >> 3)) >= 0x239E0D5B450239)
  {
    v6 = 0x473C1AB68A0473;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A9DCC58(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[920 * v2];
  *(&v16 + 1) = &v7[920 * v6];
  sub_29A9ECAF4(v15, a2);
  *&v16 = v15 + 920;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29A9DCCA4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9DCD14(&v14);
  return v13;
}

void sub_29A9ECAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9DCD14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9ECAF4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_29A008D14((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  v5 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 32) = v5;
  sub_29A9C97D8(a1 + 64, a2 + 64);
  sub_29A9C9590((a1 + 184), (a2 + 184));
  if (*(a2 + 231) < 0)
  {
    sub_29A008D14((a1 + 208), *(a2 + 208), *(a2 + 216));
  }

  else
  {
    v6 = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 208) = v6;
  }

  if (*(a2 + 255) < 0)
  {
    sub_29A008D14((a1 + 232), *(a2 + 232), *(a2 + 240));
  }

  else
  {
    v7 = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 232) = v7;
  }

  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  sub_29A00C8EC((a1 + 256), *(a2 + 256), *(a2 + 264), (*(a2 + 264) - *(a2 + 256)) >> 3);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  sub_29A00C8EC((a1 + 280), *(a2 + 280), *(a2 + 288), (*(a2 + 288) - *(a2 + 280)) >> 3);
  sub_29A9ECCB4(a1 + 304, (a2 + 304));
  return a1;
}

void sub_29A9ECC14(_Unwind_Exception *a1)
{
  if (*(v2 + 231) < 0)
  {
    operator delete(*(v2 + 208));
  }

  sub_29A9C9BD8(v2 + 184, *(v2 + 192));
  sub_29A9C9A40(v2 + 64);
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A9ECCB4(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *a1 = v4;
  sub_29A9ECDE4(a1 + 8, (a2 + 2));
  sub_29A9ECEB4(a1 + 216, (a2 + 54));
  sub_29A9C97D8(a1 + 424, (a2 + 106));
  sub_29A9C9590((a1 + 544), a2 + 68);
  if (*(a2 + 591) < 0)
  {
    sub_29A008D14((a1 + 568), *(a2 + 71), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 142);
    *(a1 + 584) = *(a2 + 73);
    *(a1 + 568) = v5;
  }

  v6 = (a1 + 592);
  if (*(a2 + 615) < 0)
  {
    sub_29A008D14(v6, *(a2 + 74), *(a2 + 75));
  }

  else
  {
    v7 = *(a2 + 37);
    *(a1 + 608) = *(a2 + 76);
    *v6 = v7;
  }

  return a1;
}

void sub_29A9ECD84(_Unwind_Exception *a1)
{
  if (*(v1 + 591) < 0)
  {
    operator delete(*v2);
  }

  sub_29A9C9BD8(v1 + 544, *(v1 + 552));
  sub_29A9C9A40(v1 + 424);
  sub_29A9CBF18(v1 + 216);
  sub_29A9CBF18(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9ECDE4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29A9C97D8(a1 + 16, a2 + 16);
  sub_29A9C9590((a1 + 136), (a2 + 136));
  if (*(a2 + 183) < 0)
  {
    sub_29A008D14((a1 + 160), *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v4 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v4;
  }

  if (*(a2 + 207) < 0)
  {
    sub_29A008D14((a1 + 184), *(a2 + 184), *(a2 + 192));
  }

  else
  {
    v5 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 184) = v5;
  }

  return a1;
}

void sub_29A9ECE74(_Unwind_Exception *a1)
{
  if (*(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

  sub_29A9C9BD8(v1 + 136, *(v1 + 144));
  sub_29A9C9A40(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9ECEB4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29A9C97D8(a1 + 16, a2 + 16);
  sub_29A9C9590((a1 + 136), (a2 + 136));
  if (*(a2 + 183) < 0)
  {
    sub_29A008D14((a1 + 160), *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v4 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v4;
  }

  if (*(a2 + 207) < 0)
  {
    sub_29A008D14((a1 + 184), *(a2 + 184), *(a2 + 192));
  }

  else
  {
    v5 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 184) = v5;
  }

  return a1;
}

void sub_29A9ECF44(_Unwind_Exception *a1)
{
  if (*(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

  sub_29A9C9BD8(v1 + 136, *(v1 + 144));
  sub_29A9C9A40(v1 + 16);
  _Unwind_Resume(a1);
}

unint64_t *sub_29A9ECF84(unint64_t *result, unint64_t a2, unsigned __int8 ***a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29A19DB58(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  *(result + v10) = *(v9 + v10);
                  v10 += 4;
                }

                while (4 * v3 != v10);
              }
            }

            v11 = **a3;
            v12 = *a3[1];
            if (v11 != v12)
            {
              v13 = 4 * v3;
              do
              {
                v14 = *v11++;
                *(v7 + v13) = v14;
                v13 += 4;
              }

              while (v11 != v12);
            }
          }

          v15 = v7;
LABEL_34:
          if (v15 != v5[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
          }

          *v5 = a2;
          return result;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v20 = a2;
      }

      else
      {
        v20 = *result;
      }

      result = sub_29A19DB58(result, a2);
      v15 = result;
      if (v3)
      {
        v21 = 4 * v20;
        v22 = result;
        do
        {
          v23 = *v7;
          v7 = (v7 + 4);
          *v22 = v23;
          v22 = (v22 + 4);
          v21 -= 4;
        }

        while (v21);
      }

      if (v3 < a2)
      {
        v24 = **a3;
        v25 = *a3[1];
        if (v24 != v25)
        {
          v26 = 4 * v3;
          do
          {
            v27 = *v24++;
            *(result + v26) = v27;
            v26 += 4;
          }

          while (v24 != v25);
        }
      }

      goto LABEL_34;
    }

    if (4 * a2 / a2 == 4)
    {
      result = sub_29A19DB58(result, a2);
      v15 = result;
      v16 = **a3;
      v17 = *a3[1];
      if (v16 != v17)
      {
        v18 = result;
        do
        {
          v19 = *v16++;
          *v18 = v19;
          v18 = (v18 + 4);
        }

        while (v16 != v17);
      }

      goto LABEL_34;
    }
  }

  return sub_29A19D79C(result);
}

unint64_t *sub_29A9ED170(unint64_t *result, unint64_t a2, unsigned __int16 ***a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29A19DB58(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  *(result + v10) = *(v9 + v10);
                  v10 += 4;
                }

                while (4 * v3 != v10);
              }
            }

            v11 = **a3;
            v12 = *a3[1];
            if (v11 != v12)
            {
              v13 = 4 * v3;
              do
              {
                v14 = *v11++;
                *(v7 + v13) = v14;
                v13 += 4;
              }

              while (v11 != v12);
            }
          }

          v15 = v7;
LABEL_34:
          if (v15 != v5[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
          }

          *v5 = a2;
          return result;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v20 = a2;
      }

      else
      {
        v20 = *result;
      }

      result = sub_29A19DB58(result, a2);
      v15 = result;
      if (v3)
      {
        v21 = 4 * v20;
        v22 = result;
        do
        {
          v23 = *v7;
          v7 = (v7 + 4);
          *v22 = v23;
          v22 = (v22 + 4);
          v21 -= 4;
        }

        while (v21);
      }

      if (v3 < a2)
      {
        v24 = **a3;
        v25 = *a3[1];
        if (v24 != v25)
        {
          v26 = 4 * v3;
          do
          {
            v27 = *v24++;
            *(result + v26) = v27;
            v26 += 4;
          }

          while (v24 != v25);
        }
      }

      goto LABEL_34;
    }

    if (4 * a2 / a2 == 4)
    {
      result = sub_29A19DB58(result, a2);
      v15 = result;
      v16 = **a3;
      v17 = *a3[1];
      if (v16 != v17)
      {
        v18 = result;
        do
        {
          v19 = *v16++;
          *v18 = v19;
          v18 = (v18 + 4);
        }

        while (v16 != v17);
      }

      goto LABEL_34;
    }
  }

  return sub_29A19D79C(result);
}

float sub_29A9ED35C(void *a1, float *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 1;
      }

      v12 = sub_29A00E7A8(a1[4], v11);
      v14 = &v12[v11 & 0xFFFFFFFFFFFFFFFCLL];
      v15 = a1[1];
      v4 = v14;
      v16 = a1[2] - v15;
      if (v16)
      {
        v4 = &v14[v16];
        v17 = &v12[v11 & 0xFFFFFFFFFFFFFFFCLL];
        do
        {
          v18 = *v15++;
          *v17 = v18;
          v17 += 4;
          v16 -= 4;
        }

        while (v16);
      }

      v19 = *a1;
      *a1 = v12;
      a1[1] = v14;
      a1[2] = v4;
      a1[3] = &v12[4 * v13];
      if (v19)
      {
        operator delete(v19);
        v4 = a1[2];
      }
    }

    else
    {
      v7 = ((v6 >> 2) + 1) / -2;
      v8 = ((v6 >> 2) + 1) / 2;
      v9 = &v5[-4 * v8];
      v10 = v4 - v5;
      if (v4 != v5)
      {
        memmove(&v5[-4 * v8], v5, v4 - v5);
        v5 = a1[1];
      }

      v4 = &v9[v10];
      a1[1] = &v5[4 * v7];
    }
  }

  result = *a2;
  *v4 = *a2;
  a1[2] = v4 + 4;
  return result;
}

char *sub_29A9ED45C(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      sub_29A00C9A4();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      v17 = sub_29A00E7A8(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v34 = &v17[4 * v16];
    v35 = 4 * a5;
    v36 = v34;
    do
    {
      v37 = *v7++;
      *v36 = v37;
      v36 += 4;
      v35 -= 4;
    }

    while (v35);
    v38 = &v17[4 * v15];
    memcpy(&v34[4 * a5], v5, a1[1] - v5);
    v39 = *a1;
    v40 = &v34[4 * a5 + a1[1] - v5];
    a1[1] = v5;
    v41 = v5 - v39;
    v42 = &v34[-(v5 - v39)];
    memcpy(v42, v39, v41);
    v43 = *a1;
    *a1 = v42;
    a1[1] = v40;
    a1[2] = v38;
    if (v43)
    {
      operator delete(v43);
    }

    return v34;
  }

  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v23 = &__dst[4 * a5];
    v24 = &v10[-4 * a5];
    v25 = a1[1];
    while (v24 < v10)
    {
      v26 = *v24;
      v24 += 4;
      *v25++ = v26;
    }

    a1[1] = v25;
    if (v10 != v23)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v23);
    }

    v31 = 4 * a5;
    v32 = v5;
    v33 = v7;
    goto LABEL_35;
  }

  v19 = &__src[v10 - __dst];
  v20 = a1[1];
  v21 = v20;
  while (v19 != a4)
  {
    v22 = *v19;
    v19 += 4;
    *v21 = v22;
    v21 += 4;
    v20 += 4;
  }

  a1[1] = v20;
  if (v18 >= 1)
  {
    v27 = &__dst[4 * a5];
    v28 = &v20[-4 * a5];
    v29 = v20;
    while (v28 < v10)
    {
      v30 = *v28;
      v28 += 4;
      *v29 = v30;
      v29 += 4;
    }

    a1[1] = v29;
    if (v21 != v27)
    {
      memmove(&__dst[4 * a5], __dst, v20 - v27);
    }

    if (v10 != v5)
    {
      v32 = v5;
      v33 = v7;
      v31 = v10 - v5;
LABEL_35:
      memmove(v32, v33, v31);
    }
  }

  return v5;
}

void adobe::usd::reverseASMLevel(adobe::usd *this, float a2, float a3, float a4)
{
  if (a4 <= 1.0 && (1.0 - (a4 * a4)) > 0.0)
  {
    pow(a2, 4.0);
  }
}

float adobe::usd::reverseCalculateASMImageRotation(adobe::usd *this, float a2, float a3, float *a4, float *a5)
{
  v7 = a2 * 6.28318531;
  v8 = fmod((v7 - a3), 6.28318531);
  if (v8 < 0.0)
  {
    v9 = v8 + 6.28318531;
    v8 = v9;
  }

  v10 = __sincosf_stret(v8);
  *this = (v10.__cosval + 1.0) * 0.5;
  result = (v10.__sinval + 1.0) * 0.5;
  *a4 = result;
  return result;
}

uint64_t adobe::usd::generateAnisotropyImageName@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29A008864(v14);
  v4 = v15;
  *(&v15 + *(v15 - 24) + 8) = *(&v15 + *(v15 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v17[0].__locale_ + *(v4 - 24)) = 3;
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = sub_29A00911C(&v15, v6, v7);
  sub_29A00911C(v8, "_", 1);
  v9 = std::ostream::operator<<();
  sub_29A00911C(v9, "_", 1);
  std::ostream::operator<<();
  std::stringbuf::str();
  v10 = *(a2 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  for (; v10; --v10)
  {
    if (*v11 == 46)
    {
      *v11 = 95;
    }

    ++v11;
  }

  v14[0] = *MEMORY[0x29EDC9528];
  v12 = *(MEMORY[0x29EDC9528] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v15 = v12;
  v16 = MEMORY[0x29EDC9570] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v19);
}

void sub_29A9EDAD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t adobe::usd::extractAnisotropyParamsFromName(const std::string *a1, float *a2, float *a3)
{
  *a2 = -1.0;
  *a3 = -1.0;
  sub_29A9EE25C(v54, a1, 24);
  v52 = 0uLL;
  v53 = 0;
  v49 = 0;
  __dst = 0;
  v51 = 0;
  while (1)
  {
    v5 = sub_29A0DE07C(v54, &v52, 0x5Fu);
    v7 = __dst;
    if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if (__dst >= v51)
    {
      v9 = sub_29A9EF79C(&v49, &v52);
    }

    else
    {
      if (SHIBYTE(v53) < 0)
      {
        sub_29A008D14(__dst, v52, *(&v52 + 1));
      }

      else
      {
        v8 = v52;
        *(__dst + 2) = v53;
        *v7 = v8;
      }

      v9 = v7 + 24;
    }

    __dst = v9;
  }

  v10 = v49;
  v11 = __dst - v49;
  if (0xAAAAAAAAAAAAAAABLL * ((__dst - v49) >> 3) > 4)
  {
    if (*(__dst - 73) < 0)
    {
      sub_29A008D14(v44, *(__dst - 12), *(__dst - 11));
      v10 = v49;
      v11 = __dst - v49;
    }

    else
    {
      v13 = *(__dst - 6);
      v45 = *(__dst - 10);
      *v44 = v13;
    }

    v14 = &v11[v10];
    if (v11[v10 - 49] < 0)
    {
      sub_29A008D14(v42, *(v14 - 9), *(v14 - 8));
      v10 = v49;
      v11 = __dst - v49;
    }

    else
    {
      v15 = *(v14 - 72);
      v43 = *(v14 - 7);
      *v42 = v15;
    }

    v16 = &v11[v10];
    if (v11[v10 - 25] < 0)
    {
      sub_29A008D14(v40, *(v16 - 6), *(v16 - 5));
      v10 = v49;
      v11 = __dst - v49;
    }

    else
    {
      v17 = *(v16 - 3);
      v41 = *(v16 - 4);
      *v40 = v17;
    }

    v18 = &v11[v10];
    if (*(v18 - 1) < 0)
    {
      sub_29A008D14(__p, *(v18 - 3), *(v18 - 2));
    }

    else
    {
      v19 = *(v18 - 24);
      v39 = *(v18 - 1);
      *__p = v19;
    }

    if (v45 >= 0)
    {
      v20 = HIBYTE(v45);
    }

    else
    {
      v20 = v44[1];
    }

    v21 = &v46;
    sub_29A022DE0(&v46, v20 + 1);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = v46.__r_.__value_.__r.__words[0];
    }

    if (v20)
    {
      if (v45 >= 0)
      {
        v22 = v44;
      }

      else
      {
        v22 = v44[0];
      }

      memmove(v21, v22, v20);
    }

    *(&v21->__r_.__value_.__l.__data_ + v20) = 46;
    if (v43 >= 0)
    {
      v23 = v42;
    }

    else
    {
      v23 = v42[0];
    }

    if (v43 >= 0)
    {
      v24 = HIBYTE(v43);
    }

    else
    {
      v24 = v42[1];
    }

    v25 = std::string::append(&v46, v23, v24);
    v26 = *&v25->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (v41 >= 0)
    {
      v27 = HIBYTE(v41);
    }

    else
    {
      v27 = v40[1];
    }

    v28 = &v46;
    sub_29A022DE0(&v46, v27 + 1);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v46.__r_.__value_.__r.__words[0];
    }

    if (v27)
    {
      if (v41 >= 0)
      {
        v29 = v40;
      }

      else
      {
        v29 = v40[0];
      }

      memmove(v28, v29, v27);
    }

    *(&v28->__r_.__value_.__l.__data_ + v27) = 46;
    if (v39 >= 0)
    {
      v30 = __p;
    }

    else
    {
      v30 = __p[0];
    }

    if (v39 >= 0)
    {
      v31 = HIBYTE(v39);
    }

    else
    {
      v31 = __p[1];
    }

    v32 = std::string::append(&v46, v30, v31);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    *a2 = std::stof(&__str, 0);
    *a3 = std::stof(&v36, 0);
    v12 = 1;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40[0]);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42[0]);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44[0]);
    }
  }

  else
  {
    v46.__r_.__value_.__r.__words[0] = "usdGltf/gltfAnisotropy.cpp";
    v46.__r_.__value_.__l.__size_ = "extractAnisotropyParamsFromName";
    v46.__r_.__value_.__r.__words[2] = 142;
    v47 = "BOOL adobe::usd::extractAnisotropyParamsFromName(const std::string &, float &, float &)";
    v48 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v46, "Error: Input string does not contain enough segments.", v6);
    v12 = 0;
  }

  v46.__r_.__value_.__r.__words[0] = &v49;
  sub_29A012C90(&v46);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  v54[0] = *MEMORY[0x29EDC9528];
  v34 = *(MEMORY[0x29EDC9528] + 72);
  *(v54 + *(v54[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v54[2] = v34;
  v55 = MEMORY[0x29EDC9570] + 16;
  if (v57 < 0)
  {
    operator delete(v56[7].__locale_);
  }

  v55 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v56);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v58);
  return v12;
}

void sub_29A9EE040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, __int16 a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, char a57)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  a43 = &a48;
  sub_29A012C90(&a43);
  if (a56 < 0)
  {
    operator delete(a51);
  }

  sub_29A008B0C(&a57);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A9EE25C(uint64_t *a1, const std::string *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x29EDC9590] + 104;
  a1[16] = MEMORY[0x29EDC9590] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x29EDC9590] + 64;
  a1[2] = MEMORY[0x29EDC9590] + 64;
  v9 = MEMORY[0x29EDC9528];
  v10 = *(MEMORY[0x29EDC9528] + 24);
  v11 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x29EDC9590] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  sub_29A5DBB7C((a1 + 3), a2, a3);
  return a1;
}

void sub_29A9EE4EC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](v1);
  _Unwind_Resume(a1);
}

unint64_t adobe::usd::cacheAndWriteImage(uint64_t a1, uint64_t a2, std::string *a3, const void **a4)
{
  v7 = adobe::usd::UsdData::addImage(*(a1 + 16), a2, a3);
  v9 = v8;
  std::string::operator=(v8, a3);
  if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  v11 = v18;
  sub_29A022DE0(v18, size + 4);
  if (v19 < 0)
  {
    v11 = v18[0];
  }

  if (size)
  {
    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3->__r_.__value_.__r.__words[0];
    }

    memmove(v11, v13, size);
  }

  strcpy(v11 + size, ".png");
  if (*(v9 + 47) < 0)
  {
    operator delete(*(v9 + 24));
  }

  *(v9 + 24) = *v18;
  *(v9 + 40) = v19;
  *(v9 + 48) = 4;
  if ((adobe::usd::Image::write(a4, v9, v12) & 1) == 0)
  {
    v18[0] = "usdGltf/gltfAnisotropy.cpp";
    v18[1] = "cacheAndWriteImage";
    v19 = 179;
    v20 = "int adobe::usd::cacheAndWriteImage(ImportGltfContext &, std::unordered_map<std::string, int> &, const std::string &, const Image &)";
    v21 = 0;
    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = a3->__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v18, "Failed to write anisotropy image: %s", v14, v15);
  }

  v18[0] = a3;
  *(sub_29B1F2ED4(a2, &a3->__r_.__value_.__l.__data_, &unk_29B4D6118, v18) + 10) = v7;
  std::operator+<char>();
  adobe::usd::imageWrite(v9, v18, 1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  return v7;
}

void sub_29A9EE6D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double adobe::usd::extractRoughness(uint64_t a1, int a2, char *a3, float a4, float a5, double a6, double a7, float a8, float a9, float a10)
{
  if (!a1)
  {
    v17 = "usdGltf/gltfAnisotropy.cpp";
    v18 = "extractRoughness";
    v19 = 217;
    v20 = "float adobe::usd::extractRoughness(const tinygltf::Image *, BOOL, float, float, BOOL)";
    v21 = 0;
    v11 = "Roughness image is null.";
LABEL_12:
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v17, v11, a3);
    return 0.0;
  }

  if (a2)
  {

    *&result = adobe::usd::sampleBilinear(a1, 0, a3, a4, a5, a6, a7, a8, a9, a10);
    return result;
  }

  v12 = *(a1 + 24);
  v13 = (v12 * a4);
  v14 = *(a1 + 28) * a5;
  v15 = (v13 + v14 * v12) * *(a1 + 32);
  v16 = *(a1 + 48);
  if (v15 >= *(a1 + 56) - v16)
  {
    v17 = "usdGltf/gltfAnisotropy.cpp";
    v18 = "extractRoughness";
    v19 = 206;
    v20 = "float adobe::usd::extractRoughness(const tinygltf::Image *, BOOL, float, float, BOOL)";
    v21 = 0;
    v11 = "Linear index out of bounds in roughness image.";
    goto LABEL_12;
  }

  LOBYTE(v14) = *(v16 + v15);
  *&result = LODWORD(v14);
  if (a3)
  {
    *&result = *&result / 255.0;
  }

  return result;
}

void adobe::usd::processAnisotropyPixels(uint64_t a1, uint64_t a2, int a3, double *a4, adobe::usd::Image *this, adobe::usd::Image *a6, float a7)
{
  adobe::usd::Image::allocate(this, *a1, *(a1 + 4), 1);
  v13 = *(this + 2);
  adobe::usd::Image::allocate(a6, *a1, *(a1 + 4), 1);
  v19 = *(a1 + 4);
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v22 = *(a6 + 2);
    v23 = *a1;
    v24 = *a1;
    v25 = *a1;
    do
    {
      if (v25)
      {
        v26 = 0;
        v27 = v21 / v19;
        v28 = v25;
        do
        {
          v29 = (*(a1 + 16) + 4 * (v26 + v21 * v28) * *(a1 + 8));
          v31 = *v29;
          v30 = v29[1];
          v32 = v29[2];
          if (a2)
          {
            Roughness = adobe::usd::extractRoughness(a2, a3, 0, v26 / v25, v27, v14, v15, v16, v17, v18);
            a7 = *&Roughness;
            v23 = *a1;
            v24 = *a1;
          }

          v34 = a4[1];
          v35 = *a4 * v32;
          v36 = v20 * v24;
          *(v13 + v36 + 4 * v26) = sqrtf(sqrtf((1.0 - (a7 * a7)) * (v35 * v35)));
          v37 = v34;
          v38 = (atan2f((v30 + v30) + -1.0, (v31 + v31) + -1.0) + v37) / 6.28318531;
          *(v22 + v36 + 4 * v26++) = v38 - floorf(v38);
          v28 = v23;
          v24 = v23;
          v25 = v23;
        }

        while (v26 < v23);
        v19 = *(a1 + 4);
        v24 = v23;
        v25 = v23;
      }

      ++v21;
      v20 += 4;
    }

    while (v21 < v19);
  }
}

void adobe::usd::processAnisotropyPixelsFromRoughness(double *a1, uint64_t a2, int a3, adobe::usd::Image *this)
{
  adobe::usd::Image::allocate(this, *(a2 + 24), *(a2 + 28), 1);
  v13 = *(a2 + 28);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = *(this + 2);
    LODWORD(v17) = *(a2 + 24);
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = v15 / v13;
        do
        {
          Roughness = adobe::usd::extractRoughness(a2, a3, 0, v18 / v17, v19, v8, v9, v10, v11, v12);
          v21 = *a1;
          v17 = *(a2 + 24);
          *(v16 + v14 * v17 + 4 * v18++) = sqrtf(sqrtf((1.0 - (*&Roughness * *&Roughness)) * (v21 * v21)));
        }

        while (v18 < v17);
        v13 = *(a2 + 28);
      }

      ++v15;
      v14 += 4;
    }

    while (v15 < v13);
  }
}

uint64_t adobe::usd::importAnisotropyData(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, float a7)
{
  v48 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "anisotropyStrength");
  v13 = sub_29A9DD81C(a3, __p);
  DoubleValue = adobe::usd::readDoubleValue(v13, a5);
  if (SBYTE3(v39) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "anisotropyRotation");
  v14 = sub_29A9DD81C(a3, __p);
  adobe::usd::readDoubleValue(v14, (a5 + 8));
  if (SBYTE3(v39) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "anisotropyTexture");
  v15 = sub_29A9DD81C(a3, __p);
  adobe::usd::readTextureInfo(v15, a5 + 16);
  if (SBYTE3(v39) < 0)
  {
    operator delete(__p[0]);
  }

  __p[1] = 0;
  v38 = -1;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0;
  v17 = *(a5 + 16);
  if ((v17 & 0x80000000) != 0)
  {
    v24 = 0;
  }

  else
  {
    sub_29A008E78(v35, "anisotropy");
    v18 = adobe::usd::importImage(a1, v17, a4, v35);
    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    v19 = *(a1 + 8);
    v20 = *(a5 + 16);
    v21 = *(a5 + 20);
    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v22)
    {
      v22 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v23)
    {
      v23 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    adobe::usd::importTexture(v19, v18, v20, v21, __p, v22 + 6, v23 + 25);
    adobe::usd::importTextureTransform(a2, __p);
    adobe::usd::Image::read(a6, *(*(a1 + 16) + 256) + 88 * v38, *(a6 + 8));
    v24 = 1;
    if (*a6 == 4 && *(a6 + 4) == 4)
    {
      v25 = *(a6 + 16);
      if (!DoubleValue)
      {
        *a5 = v25[2];
      }

      v26 = *(a5 + 8);
      v24 = 0;
      v27 = (atan2f((v25[1] + v25[1]) + -1.0, (*v25 + *v25) + -1.0) + v26) / 6.28318531;
      *(a5 + 8) = (v27 - floorf(v27));
    }
  }

  v28 = *a5;
  adobe::usd::importValue1((a4 + 2640), v16, sqrtf(sqrtf((1.0 - (a7 * a7)) * (v28 * v28))));
  v29 = *(a5 + 8);
  v30 = v29 / 6.28318531;
  adobe::usd::importValue1((a4 + 2792), v31, (v30 - floorf(v30)));
  sub_29A8FAC0C(__p);
  return v24;
}

void adobe::usd::importAnisotropyTexture(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int *a5, void *a6, float a7)
{
  v69 = *MEMORY[0x29EDCA608];
  v14 = *(a2 + 352);
  v15 = *(a1 + 8);
  if (0x6DB6DB6DB6DB6DB7 * ((v15[22] - v15[21]) >> 5) <= v14)
  {
    Image = 0;
  }

  else
  {
    Image = adobe::usd::getImage(v15, v14, a3);
  }

  sub_29A008E78(&__p, "");
  sub_29A008E78(&v47, "");
  adobe::usd::Image::Image(v46);
  adobe::usd::Image::Image(v45);
  if ((*(a4 + 16) & 0x80000000) != 0)
  {
    if ((*(a2 + 352) & 0x80000000) == 0)
    {
      sub_29A008E78(&v59, "_roughness");
      if (!atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens))
      {
        sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      std::operator+<char>();
      adobe::usd::generateAnisotropyImageName(&v43, v49);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      *&__p.__r_.__value_.__l.__data_ = *v49;
      __p.__r_.__value_.__r.__words[2] = *v50;
      v50[7] = 0;
      LOBYTE(v49[0]) = 0;
      if (v44 < 0)
      {
        operator delete(v43);
      }

      if ((v60[7] & 0x80000000) != 0)
      {
        v24 = v59;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v17)
    {
      v17 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    v18 = *(v17 + 63) & 0xFFFFFFFFFFFFFFF8;
    if (v18)
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

    sub_29A008E78(v49, v19);
    adobe::usd::generateAnisotropyImageName(v49, &v59);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *&__p.__r_.__value_.__l.__data_ = v59;
    __p.__r_.__value_.__r.__words[2] = *v60;
    v60[7] = 0;
    LOBYTE(v59) = 0;
    if ((v50[7] & 0x80000000) != 0)
    {
      operator delete(v49[0]);
    }

    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v21)
    {
      v21 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    v22 = *(v21 + 65) & 0xFFFFFFFFFFFFFFF8;
    if (v22)
    {
      v23 = (v22 + 16);
      if (*(v22 + 39) < 0)
      {
        v23 = *v23;
      }
    }

    else
    {
      v23 = "";
    }

    sub_29A008E78(v49, v23);
    adobe::usd::generateAnisotropyImageName(v49, &v59);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    *&v47.__r_.__value_.__l.__data_ = v59;
    v47.__r_.__value_.__r.__words[2] = *v60;
    v60[7] = 0;
    LOBYTE(v59) = 0;
    if ((v50[7] & 0x80000000) != 0)
    {
      v24 = v49[0];
LABEL_35:
      operator delete(v24);
    }
  }

  v25 = adobe::usd::lookupTexture(a6, &__p.__r_.__value_.__l.__data_);
  v26 = adobe::usd::lookupTexture(a6, &v47.__r_.__value_.__l.__data_);
  v28 = v26;
  v29 = *a5;
  if (Image)
  {
    v30 = *(Image + 24);
    v31 = a5[1];
    v32 = v29 != v30 || v31 != *(Image + 28);
    if (v29 >= 1 && v31 > 0)
    {
      goto LABEL_45;
    }

    if (v30 >= 1 && *(Image + 28) >= 1)
    {
      if ((v25 & 0x80000000) != 0)
      {
        adobe::usd::processAnisotropyPixelsFromRoughness(a4, Image, v32, v46);
        v25 = adobe::usd::cacheAndWriteImage(a1, a6, &__p, v46);
      }

      *(&v59 + 1) = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      *&v60[4] = 0u;
      v61 = 0u;
      v62 = 0u;
      *v60 = -1;
      v63 = 0;
      v40 = *(a4 + 20);
      v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      if (!v41)
      {
        v41 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      if (!v42)
      {
        v42 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      adobe::usd::setInputImage((a3 + 2640), v25, v40, v41 + 6, (v42 + 200), v27);
      goto LABEL_57;
    }
  }

  else if (v29 >= 1 && a5[1] >= 1)
  {
    v32 = 0;
LABEL_45:
    if ((v25 & 0x80000000) != 0 && (v26 & 0x80000000) != 0)
    {
      adobe::usd::processAnisotropyPixels(a5, Image, a7 != 0.0, a4, v46, v45, v32);
      adobe::usd::UsdData::reserveImages(*(a1 + 16), 2);
      v25 = adobe::usd::cacheAndWriteImage(a1, a6, &__p, v46);
      v28 = adobe::usd::cacheAndWriteImage(a1, a6, &v47, v45);
    }

    *(&v59 + 1) = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    *&v60[4] = 0u;
    v61 = 0u;
    v62 = 0u;
    *v60 = -1;
    v63 = 0;
    v49[1] = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v50[4] = 0u;
    v51 = 0u;
    v52 = 0u;
    *v50 = -1;
    v53 = 0;
    v33 = *(a4 + 20);
    v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v34)
    {
      v34 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v35)
    {
      v35 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    adobe::usd::setInputImage((a3 + 2640), v25, v33, v34 + 6, (v35 + 200), v27);
    v37 = *(a4 + 20);
    v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v38)
    {
      v38 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v39)
    {
      v39 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    adobe::usd::setInputImage((a3 + 2792), v28, v37, v38 + 6, (v39 + 200), v36);
    sub_29A8FAC0C(v49);
LABEL_57:
    sub_29A8FAC0C(&v59);
  }

  adobe::usd::Image::~Image(v45);
  adobe::usd::Image::~Image(v46);
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A9EF488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_29A8FAC0C((v44 - 256));
  adobe::usd::Image::~Image(&a16);
  adobe::usd::Image::~Image(&a21);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(a1);
}

void adobe::usd::constructAnisotropyImage(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, adobe::usd::Image *this, float a6, float a7)
{
  v13 = *a2;
  v14 = a2[1];
  if (*a2 <= *a3)
  {
    v15 = *a3;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 <= *(a3 + 4))
  {
    v16 = *(a3 + 4);
  }

  else
  {
    v16 = v14;
  }

  if (a4)
  {
    v17 = v13 != *(a4 + 24) || v14 != *(a4 + 28);
  }

  else
  {
    v17 = 0;
  }

  v18 = v16 * v15;
  v19 = *(this + 2);
  adobe::usd::Image::allocate(this, v15, v16, v19);
  if (v18)
  {
    v27 = 0;
    v28 = 0;
    v29 = 4 * v19;
    __asm { FMOV            V12.2S, #1.0 }

    do
    {
      if (a4)
      {
        if (v17)
        {
          *&v22 = a2[1];
          v21.f32[0] = adobe::usd::sampleBilinear(a4, 0, v20, (v28 % *a2) / *a2, (v28 / *a2) / *&v22, v22, v23, v24, v25, v26);
        }

        else
        {
          v21.i8[0] = *(*(a4 + 48) + v28);
          v21.f32[0] = v21.u32[0] / 255.0;
        }
      }

      else
      {
        v35 = sub_29A3F9DF4((a1 + 1272));
        v21.i32[0] = 0;
        if (!v35)
        {
          goto LABEL_21;
        }

        v21.i32[0] = *sub_29A8D5794((a1 + 1272));
      }

      v36 = 0.0;
      if (v21.f32[0] <= 1.0)
      {
LABEL_21:
        v37 = 1.0 - (v21.f32[0] * v21.f32[0]);
        v36 = 0.0;
        if (v37 > 0.0)
        {
          v38 = pow(*(*(a2 + 2) + 4 * v28), 4.0) / v37;
          v36 = sqrtf(v38) / a6;
        }
      }

      v39 = (*(this + 2) + v27);
      v39[1].f32[0] = v36;
      v40 = *(*(a3 + 16) + 4 * v28) * 6.28318531;
      v41 = fmod((v40 - a7), 6.28318531);
      if (v41 < 0.0)
      {
        v42 = v41 + 6.28318531;
        v41 = v42;
      }

      v43 = __sincosf_stret(v41);
      v21 = vmul_f32(vadd_f32(__PAIR64__(LODWORD(v43.__sinval), LODWORD(v43.__cosval)), _D12), 0x3F0000003F000000);
      *v39 = v21;
      ++v28;
      v27 += v29;
    }

    while (v18 != v28);
  }
}

char *sub_29A9EF79C(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v18 = v7;
  v19 = v8;
  v9 = &v7[24 * v6];
  v20 = v8;
  v21 = v9;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v8, *a2, *(a2 + 1));
    v8 = v19;
    v11 = v20;
    v9 = v21;
  }

  else
  {
    v10 = *a2;
    *(v8 + 2) = *(a2 + 2);
    *v8 = v10;
    v11 = &v7[24 * v2];
  }

  v12 = v11 + 24;
  v13 = *(a1 + 8) - *a1;
  v14 = &v8[-v13];
  memcpy(&v8[-v13], *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = v9;
  v20 = v15;
  v21 = v16;
  v18 = v15;
  v19 = v15;
  sub_29A01FF14(&v18);
  return v12;
}

void sub_29A9EF8C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

uint64_t adobe::usd::lookupTexture(void *a1, const void **a2)
{
  v2 = sub_29A8877BC(a1, a2);
  if (v2)
  {
    return *(v2 + 10);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *adobe::usd::setInputImage(adobe::usd *this, adobe::usd::Input *a2, int a3, void *a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5, const pxrInternal__aapl__pxrReserved__::TfToken *a6)
{
  v13[2] = *MEMORY[0x29EDCA608];
  *(this + 4) = a2;
  v13[1] = 0;
  sub_29A18606C(this, v13);
  sub_29A186B14(v13);
  *(this + 5) = a3;
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  if (!v10)
  {
    v10 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  }

  sub_29A166F2C(this + 4, v10 + 8);
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  if (!v11)
  {
    v11 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  }

  sub_29A166F2C(this + 5, v11 + 8);
  sub_29A166F2C(this + 3, a4);
  return sub_29A166F2C(this + 8, a5);
}

uint64_t adobe::usd::importMetadata(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (std::stof((*(a1 + 8) + 440), 0) >= 2.0)
  {
    v8 = *(a1 + 8);
    v9 = *(v8 + 648);
    v10 = (v8 + 656);
    if (v9 != (v8 + 656))
    {
      do
      {
        v11 = *(a1 + 16);
        __p.__r_.__value_.__l.__size_ = &off_2A2044DD0;
        sub_29A1B01B8(&__p, (v9 + 9));
        pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath((v11 + 40), (v9 + 4), &__p, ":");
        sub_29A186B14(&__p);
        v12 = v9[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v9[2];
            v14 = *v13 == v9;
            v9 = v13;
          }

          while (!v14);
        }

        v9 = v13;
      }

      while (v13 != v10);
    }

    v15 = *(a1 + 16);
    sub_29A008E78(&__p, "generator");
    v20 = 0;
    sub_29A9FB55C(&v19, "Apple USD Tools (0.25.2)");
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath((v15 + 40), &__p, &v19, ":");
    sub_29A186B14(&v19);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v16 = *(a1 + 8);
    if ((*(v16 + 535) & 0x8000000000000000) != 0)
    {
      if (!*(v16 + 520))
      {
        return 1;
      }
    }

    else if (!*(v16 + 535))
    {
      return 1;
    }

    v17 = *(a1 + 16);
    sub_29A008E78(&__p, "copyright");
    v18 = *(a1 + 8);
    v20 = &off_2A2044DD0;
    sub_29A1B01B8(&v19, v18 + 512);
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath((v17 + 40), &__p, &v19, ":");
    sub_29A186B14(&v19);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return 1;
  }

  v4 = sub_29A9E3F04(0);
  result = 0;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = (v6 + 440);
    if (*(v6 + 463) < 0)
    {
      v7 = *v7;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Error: glTF version is less than 2.0. Found version: %s\n", v2, v3, v7);
    return 0;
  }

  return result;
}

void sub_29A9EFC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_29A186B14(&a11);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void adobe::usd::importCameras(uint64_t a1)
{
  sub_29A9EFF90((*(a1 + 16) + 208), 0x82FA0BE82FA0BE83 * ((*(*(a1 + 8) + 272) - *(*(a1 + 8) + 264)) >> 4));
  v2 = *(a1 + 8);
  v3 = *(v2 + 264);
  if (*(v2 + 272) != v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 280;
    do
    {
      v7 = (v3 + v4);
      v8 = *(*(a1 + 16) + 208);
      std::string::operator=((v8 + v6 - 256), (v3 + v4 + 24));
      v9 = *(v3 + v4 + 23);
      if (v9 < 0)
      {
        if (v7[1] != 11)
        {
          goto LABEL_12;
        }

        v7 = *v7;
      }

      else if (v9 != 11)
      {
        goto LABEL_12;
      }

      if (*v7 == 0x7463657073726570 && *(v7 + 3) == 0x6576697463657073)
      {
        v25.i32[0] = 0;
        pxrInternal__aapl__pxrReserved__::GfCamera::SetProjection(v8 + v6 - 192, &v25);
        v20 = (v3 + v4);
        v25 = vrev64_s32(vcvt_f32_f64(v20[4]));
        pxrInternal__aapl__pxrReserved__::GfCamera::SetClippingRange(v8 + v6 - 192, &v25);
        v21 = v20[3].f64[0];
        v22 = v20[3].f64[1] * 57.2957779;
        pxrInternal__aapl__pxrReserved__::GfCamera::SetPerspectiveFromAspectRatioAndFieldOfView(v8 + v6 - 192, 1, v21, v22, 36.0);
        FocalLength = pxrInternal__aapl__pxrReserved__::GfCamera::GetFocalLength((v8 + v6 - 192));
        v24 = (v8 + v6);
        *v24[-28].i32 = FocalLength;
        *(v24 - 212) = vrev64_s32(vcvt_f32_f64(v20[4]));
        *v24 = vrev64_s32(vcvt_f32_f64(v20[3]));
        goto LABEL_13;
      }

LABEL_12:
      v25.i32[0] = 1;
      pxrInternal__aapl__pxrReserved__::GfCamera::SetProjection(v8 + v6 - 192, &v25);
      v11 = (v3 + v4);
      v25 = vrev64_s32(vcvt_f32_f64(v11[18]));
      pxrInternal__aapl__pxrReserved__::GfCamera::SetClippingRange(v8 + v6 - 192, &v25);
      v12 = v11[17].f64[0];
      v13 = v12 / v11[17].f64[1];
      v14 = v12;
      pxrInternal__aapl__pxrReserved__::GfCamera::SetOrthographicFromAspectRatioAndSize(v8 + v6 - 192, 0, v13, v14);
      v15 = v11[17].f64[0];
      pxrInternal__aapl__pxrReserved__::GfCamera::SetFocusDistance(v8 + v6 - 192, v15);
      v16 = v8 + v6;
      *(v16 - 228) = 1;
      *v16 = 1108344832;
      *(v16 + 4) = v13;
      *(v16 - 224) = pxrInternal__aapl__pxrReserved__::GfCamera::GetFocalLength((v8 + v6 - 192));
      *(v16 - 212) = vrev64_s32(vcvt_f32_f64(v11[18]));
LABEL_13:
      *(v8 + v6 - 220) = pxrInternal__aapl__pxrReserved__::GfCamera::GetHorizontalAperture((v8 + v6 - 192));
      *(v8 + v6 - 216) = pxrInternal__aapl__pxrReserved__::GfCamera::GetVerticalAperture((v8 + v6 - 192));
      if (sub_29A9E3F04(0))
      {
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("gltf::import camera\n", v17, v18);
      }

      ++v5;
      v19 = *(a1 + 8);
      v3 = *(v19 + 264);
      v4 += 688;
      v6 += 288;
    }

    while (v5 < 0x82FA0BE82FA0BE83 * ((*(v19 + 272) - v3) >> 4));
  }
}

void sub_29A9EFF90(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 5);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_29A9FB5D0(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 288 * a2;
    while (v3 != v7)
    {
      v3 -= 288;
      sub_29A9359AC(a1, v3);
    }

    a1[1] = v7;
  }
}

BOOL adobe::usd::readDoubleValue(uint64_t a1, double *a2)
{
  v2 = *a1 - 1;
  if (v2 <= 1)
  {
    v3 = *(a1 + 4);
    if (*a1 != 2)
    {
      v3 = *(a1 + 8);
    }

    *a2 = v3;
  }

  return v2 < 2;
}

uint64_t adobe::usd::readDoubleArray(uint64_t a1, uint64_t a2, int a3)
{
  if (*a1 != 5)
  {
    return 0;
  }

  if (-286331153 * ((*(a1 + 72) - *(a1 + 64)) >> 3) != a3)
  {
    return 0;
  }

  if (a3 >= 1)
  {
    v5 = 0;
    v6 = a3;
    do
    {
      v7 = sub_29A9C9520(a1, v5);
      if ((*v7 - 1) <= 1)
      {
        v8 = *(v7 + 1);
        if (*v7 != 2)
        {
          v8 = *(v7 + 1);
        }

        *(a2 + 8 * v5) = v8;
      }

      ++v5;
    }

    while (v6 != v5);
  }

  return 1;
}

BOOL adobe::usd::readExtensionMap(int *a1, uint64_t **a2)
{
  v2 = *a1;
  if (*a1 == 7)
  {
    sub_29A9C9C44(a1, &v10);
    v5 = v10;
    for (i = v11; v5 != i; v5 += 3)
    {
      v7 = sub_29A9DD81C(a1, v5);
      v12 = v5;
      v8 = sub_29A9CE438(a2, v5, &unk_29B4D6118, &v12);
      sub_29A9F020C((v8 + 7), v7);
    }

    v13 = &v10;
    sub_29A012C90(&v13);
  }

  return v2 == 7;
}

void sub_29A9F01F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  sub_29A012C90(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9F020C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::operator=((a1 + 16), (a2 + 16));
  if (a1 != a2)
  {
    sub_29AA39DA4((a1 + 40), *(a2 + 40), *(a2 + 48), *(a2 + 48) - *(a2 + 40));
    sub_29A9FAD08(a1 + 64, *(a2 + 64), *(a2 + 72), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 72) - *(a2 + 64)) >> 3));
    sub_29A9FAEA0((a1 + 88), *(a2 + 88), (a2 + 96));
  }

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t adobe::usd::readTextureInfo(_DWORD *a1, uint64_t a2)
{
  if (*a1 != 7)
  {
    return 0;
  }

  sub_29A008E78(__p, "index");
  v4 = sub_29A9DD81C(a1, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (*v4 != 2)
  {
    return 0;
  }

  *a2 = v4[1];
  sub_29A008E78(__p, "texCoord");
  v5 = sub_29A9DD81C(a1, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (*v5 == 2)
  {
    *(a2 + 4) = v5[1];
  }

  sub_29A008E78(__p, "extras");
  v6 = sub_29A9DD81C(a1, __p);
  sub_29A9F020C(a2 + 8, v6);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "extensions");
  v7 = sub_29A9DD81C(a1, __p);
  adobe::usd::readExtensionMap(v7, (a2 + 128));
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_29A9F03D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t adobe::usd::readNormalTextureInfo(_DWORD *a1, uint64_t a2)
{
  if (*a1 != 7)
  {
    return 0;
  }

  sub_29A008E78(__p, "index");
  v4 = sub_29A9DD81C(a1, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (*v4 != 2)
  {
    return 0;
  }

  *a2 = v4[1];
  sub_29A008E78(__p, "texCoord");
  v5 = sub_29A9DD81C(a1, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (*v5 == 2)
  {
    *(a2 + 4) = v5[1];
  }

  sub_29A008E78(__p, "scale");
  v6 = sub_29A9DD81C(a1, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*v6 - 1) <= 1)
  {
    v7 = *(v6 + 1);
    if (*v6 != 2)
    {
      v7 = *(v6 + 1);
    }

    *(a2 + 8) = v7;
  }

  sub_29A008E78(__p, "extras");
  v8 = sub_29A9DD81C(a1, __p);
  sub_29A9F020C(a2 + 16, v8);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "extensions");
  v9 = sub_29A9DD81C(a1, __p);
  adobe::usd::readExtensionMap(v9, (a2 + 136));
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_29A9F0590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned int **adobe::usd::importScale1(unsigned int **this, adobe::usd::Input *a2, double a3)
{
  if (a3 != 1.0)
  {
    v6 = v3;
    v7 = v4;
    *&a3 = a3;
    v5 = vdupq_lane_s32(*&a3, 0);
    return sub_29A3FEAA8(this + 9, &v5);
  }

  return this;
}

unsigned int **adobe::usd::importScale3(unsigned int **this, adobe::usd::Input *a2, const double *a3, double a4)
{
  v6.f64[0] = *a2;
  v7 = *(a2 + 1);
  v8 = *a2 == 1.0 && v7 == 1.0;
  if (!v8 || (a4 == 1.0 ? (v9 = *(a2 + 2) == 1.0) : (v9 = 0), v7 = 1.0, !v9))
  {
    v13 = v4;
    v14 = v5;
    v6.f64[1] = v7;
    *&v10 = *(a2 + 2) * a4;
    *&v12 = vcvt_f32_f64(vmulq_n_f64(v6, a4));
    *&v11 = a4;
    *(&v12 + 1) = __PAIR64__(v11, v10);
    return sub_29A3FEAA8(this + 9, &v12);
  }

  return this;
}

float adobe::usd::importValue1(adobe::usd *this, adobe::usd::Input *a2, double a3)
{
  v5 = *(this + 1);
  if (v5)
  {
    v6 = (*(this + 1) & 3) == 3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    (*((v5 & 0xFFFFFFFFFFFFFFF8) + 32))(this, a2);
  }

  result = a3;
  *(this + 1) = &unk_2A2044C63;
  *this = result;
  return result;
}

void *adobe::usd::importValue3(adobe::usd *this, float64x2_t *a2, const double *a3, double a4)
{
  v4 = a2[1].f64[0] * a4;
  v6 = vcvt_f32_f64(vmulq_n_f64(*a2, a4));
  v7 = v4;
  return sub_29A3FDE98(this, &v6);
}

uint64_t adobe::usd::importWebPTextureSource(uint64_t a1, _DWORD *a2)
{
  sub_29A008E78(__p, "EXT_texture_webp");
  v4 = sub_29A01BCCC(a1, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 8 == v4)
  {
    return 0;
  }

  sub_29A008E78(__p, "source");
  v5 = sub_29A9DD81C(v4 + 56, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (*v5 != 2)
  {
    return 0;
  }

  *a2 = v5[1];
  return 1;
}

void sub_29A9F07FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t adobe::usd::importImage(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v55.__r_.__value_.__r.__words[0] = a2 | 0xFFFFFFFF00000000;
  v8 = sub_29A9FB81C(a1 + 208, &v55, &v55);
  v11 = v8;
  if ((v9 & 1) == 0)
  {
    return *(v8 + 5);
  }

  if ((a2 & 0x80000000) != 0 || 0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 8) + 176) - *(*(a1 + 8) + 168)) >> 5) <= a2)
  {
    v55.__r_.__value_.__r.__words[0] = "usdGltf/gltfImport.cpp";
    v55.__r_.__value_.__l.__size_ = "importImage";
    v55.__r_.__value_.__r.__words[2] = 293;
    v56 = "int adobe::usd::importImage(ImportGltfContext &, int, const std::string &, const std::string &)";
    v57 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v55, "Invalid texture index %d (max %zu)", v10, a2, 0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 8) + 176) - *(*(a1 + 8) + 168)) >> 5));
    return 0xFFFFFFFFLL;
  }

  v12 = adobe::usd::UsdData::addImage(*(a1 + 16), v9, v10);
  v14 = v13;
  v15 = *(a1 + 8);
  v16 = *(v15 + 168) + 224 * a2;
  v17 = *(v16 + 28);
  v54 = v17;
  if ((v17 & 0x80000000) != 0)
  {
    adobe::usd::importWebPTextureSource(v16 + 152, &v54);
    v17 = v54;
    if ((v54 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    v15 = *(a1 + 8);
  }

  v19 = v15 + 192;
  v18 = *(v15 + 192);
  if (0x8F9C18F9C18F9C19 * ((*(v19 + 8) - v18) >> 3) <= v17)
  {
LABEL_21:
    if (sub_29A9E3F04(0))
    {
      if (a3[23] >= 0)
      {
        v27 = a3;
      }

      else
      {
        v27 = *a3;
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("For material %s: texture %d without a valid source image (imageIndex=%d, max=%zu)\n", v25, v26, v27, a2, v17, 0x8F9C18F9C18F9C19 * ((*(*(a1 + 8) + 200) - *(*(a1 + 8) + 192)) >> 3));
    }

    return 0xFFFFFFFFLL;
  }

  v20 = (v18 + 328 * v17);
  pxrInternal__aapl__pxrReserved__::TfGetBaseName((v20 + 104), &__p);
  pxrInternal__aapl__pxrReserved__::TfStringGetBeforeSuffix(&__p, 46, &v55);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::TfGetExtension(v20 + 104, &__p);
  v21 = *(v20 + 127);
  if (v21 < 0)
  {
    v21 = *(v20 + 14);
  }

  if (v21)
  {
    sub_29A769530(a1 + 168, v20 + 104);
  }

  if (*(v20 + 23) < 0)
  {
    size = *(v20 + 1);
    v29 = v20;
    if (size)
    {
LABEL_32:
      sub_29A008D14(&__str, v29->__r_.__value_.__l.__data_, size);
      v22 = 0;
      goto LABEL_40;
    }
  }

  else if (*(v20 + 23))
  {
    v22 = 0;
    v23 = *v20;
    __str.__r_.__value_.__r.__words[2] = *(v20 + 2);
    *&__str.__r_.__value_.__l.__data_ = v23;
    goto LABEL_40;
  }

  if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&v55.__r_.__value_.__s + 23))
    {
      v22 = 0;
      __str = v55;
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  size = v55.__r_.__value_.__l.__size_;
  if (v55.__r_.__value_.__l.__size_)
  {
    v29 = &v55;
    goto LABEL_32;
  }

LABEL_33:
  sub_29A911628("_", a3, &v51.__r_.__value_.__l.__data_);
  v30 = *(a4 + 23);
  if (v30 >= 0)
  {
    v31 = a4;
  }

  else
  {
    v31 = *a4;
  }

  if (v30 >= 0)
  {
    v32 = *(a4 + 23);
  }

  else
  {
    v32 = *(a4 + 8);
  }

  v33 = std::string::append(&v51, v31, v32);
  v34 = *&v33->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v22 = 1;
LABEL_40:
  std::string::operator=(v14, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v22 && SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  adobe::usd::UniqueNameEnforcer::enforceUniqueness(a1 + 248, v14);
  pxrInternal__aapl__pxrReserved__::TfGetPathName((v20 + 104), &__str);
  pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&__str.__r_.__value_.__l.__data_, v14, &v49);
  if (*(v14 + 47) < 0)
  {
    operator delete(*(v14 + 24));
  }

  *(v14 + 24) = v49;
  *(v14 + 40) = v50;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ != 3)
    {
      goto LABEL_56;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 3)
    {
      goto LABEL_56;
    }

    p_p = &__p;
  }

  data_low = LOWORD(p_p->__r_.__value_.__l.__data_);
  v37 = p_p->__r_.__value_.__s.__data_[2];
  if (data_low == 28272 && v37 == 103)
  {
    goto LABEL_70;
  }

LABEL_56:
  v39 = *(v20 + 103);
  if (v39 < 0)
  {
    if (*(v20 + 11) != 9)
    {
      goto LABEL_65;
    }

    v40 = *(v20 + 10);
  }

  else
  {
    v40 = (v20 + 5);
    if (v39 != 9)
    {
      goto LABEL_65;
    }
  }

  v41 = *v40;
  v42 = *(v40 + 8);
  if (v41 == 0x6E702F6567616D69 && v42 == 103)
  {
LABEL_70:
    v44 = ".png";
    v45 = 4;
    goto LABEL_71;
  }

LABEL_65:
  if (sub_29A0F2648(&__p, "jpg") || sub_29A0F2648(&__p, "jpeg") || sub_29A0F2648(v20 + 10, "image/jpg") || sub_29A0F2648(v20 + 10, "image/jpeg"))
  {
    v44 = ".jpg";
    v45 = 3;
  }

  else
  {
    if (!sub_29A0F2648(&__p, "webp") && !sub_29A0F2648(v20 + 10, "image/webp"))
    {
      if (sub_29A9E3F04(0))
      {
        v48 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v48 = __p.__r_.__value_.__r.__words[0];
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Could not read image with extension %s\n", v46, v47, v48);
      }

      v12 = 0xFFFFFFFFLL;
      goto LABEL_74;
    }

    v44 = ".webp";
    v45 = 8;
  }

LABEL_71:
  *(v14 + 48) = v45;
  std::string::append((v14 + 24), v44);
  if ((v14 + 56) != v20 + 3)
  {
    sub_29AA39DA4((v14 + 56), *(v20 + 6), *(v20 + 7), *(v20 + 7) - *(v20 + 6));
  }

  *(v11 + 5) = v12;
LABEL_74:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_29A9F0D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 - 97) < 0)
  {
    operator delete(*(v33 - 120));
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::AdobeTokens_StaticTokenType *adobe::usd::getMipMapCode@<X0>(adobe::usd *this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = this;
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  if (v2 > 9984)
  {
    switch(v2)
    {
      case 9985:
        if (!result)
        {
          result = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        v5 = *(result + 17);
        break;
      case 9986:
        if (!result)
        {
          result = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        v5 = *(result + 19);
        break;
      case 9987:
        if (!result)
        {
          result = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        v5 = *(result + 16);
        break;
      default:
LABEL_13:
        if (!result)
        {
          result = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        v5 = *(result + 14);
        break;
    }
  }

  else
  {
    if (v2 != 9728)
    {
      if (v2 == 9984)
      {
        if (!result)
        {
          result = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        v5 = *(result + 18);
        goto LABEL_25;
      }

      goto LABEL_13;
    }

    if (!result)
    {
      result = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    v5 = *(result + 15);
  }

LABEL_25:
  *a2 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v6;
    }
  }

  return result;
}

uint64_t adobe::usd::importTexture(void *a1, int a2, char *a3, int a4, uint64_t a5, void *a6, void *a7)
{
  if ((a3 & 0x80000000) != 0 || (v8 = a1[21], 0x6DB6DB6DB6DB6DB7 * ((a1[22] - v8) >> 5) <= a3))
  {
    v33 = "usdGltf/gltfImport.cpp";
    v34 = "importTexture";
    v35 = 384;
    v36 = "BOOL adobe::usd::importTexture(const tinygltf::Model *, int, int, int, Input &, const TfToken &, const TfToken &)";
    LOBYTE(v37) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v33, "Invalid texture index %d (max %zu)", a3, a3, 0x6DB6DB6DB6DB6DB7 * ((a1[22] - a1[21]) >> 5));
    return 0;
  }

  sub_29A9FB0F8(__dst, (v8 + 224 * a3));
  if ((v40 & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  v15 = a1[30];
  v16 = 0x34F72C234F72C235 * ((a1[31] - v15) >> 3);
  if (v16 <= v40)
  {
    v33 = "usdGltf/gltfImport.cpp";
    v34 = "importTexture";
    v35 = 393;
    v36 = "BOOL adobe::usd::importTexture(const tinygltf::Model *, int, int, int, Input &, const TfToken &, const TfToken &)";
    LOBYTE(v37) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v33, "Invalid sampler index %d (max %zu)", v14, v40, v16);
LABEL_13:
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v21)
    {
      v21 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    sub_29A166F2C((a5 + 32), v21 + 8);
    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v22)
    {
      v22 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    sub_29A166F2C((a5 + 40), v22 + 8);
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v23)
    {
      v23 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    sub_29A166F2C((a5 + 48), v23 + 14);
    v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v24)
    {
      v24 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    sub_29A166F2C((a5 + 56), v24 + 14);
    *(a5 + 16) = a2;
    *(a5 + 20) = a4;
    sub_29A166F2C((a5 + 24), a6);
    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v25)
    {
      v25 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    if ((*(v25 + 5) ^ *a6) >= 8)
    {
      sub_29A166F2C((a5 + 64), a7);
    }

    goto LABEL_56;
  }

  sub_29A9FB210(&v33, (v15 + 232 * v40));
  v17 = v37;
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  if (v17 == 10497)
  {
    if (!v18)
    {
LABEL_31:
      v18 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

LABEL_32:
    v19 = (v18 + 64);
    goto LABEL_33;
  }

  if (v37 != 33071)
  {
    if (v37 == 33648)
    {
      if (!v18)
      {
        v18 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      v19 = (v18 + 160);
      goto LABEL_33;
    }

    if (!v18)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (!v18)
  {
    v18 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  }

  v19 = (v18 + 72);
LABEL_33:
  sub_29A166F2C((a5 + 32), v19);
  v26 = v38;
  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  if (v26 == 33648)
  {
    if (!v27)
    {
      v27 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    v28 = (v27 + 160);
    goto LABEL_47;
  }

  if (v38 == 33071)
  {
    if (!v27)
    {
      v27 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    v28 = (v27 + 72);
    goto LABEL_47;
  }

  if (v38 == 10497)
  {
    if (!v27)
    {
      goto LABEL_45;
    }
  }

  else if (!v27)
  {
LABEL_45:
    v27 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  }

  v28 = (v27 + 64);
LABEL_47:
  sub_29A166F2C((a5 + 40), v28);
  adobe::usd::getMipMapCode(v36, &v32);
  v29 = *(a5 + 48);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(a5 + 48) = v32;
  adobe::usd::getMipMapCode(HIDWORD(v36), &v32);
  v30 = *(a5 + 56);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(a5 + 56) = v32;
  *(a5 + 16) = a2;
  *(a5 + 20) = a4;
  sub_29A166F2C((a5 + 24), a6);
  v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  if (!v31)
  {
    v31 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  }

  if ((*(v31 + 5) ^ *a6) >= 8)
  {
    sub_29A166F2C((a5 + 64), a7);
  }

  sub_29A9CB508(&v33);
LABEL_56:
  sub_29A9CB80C(__dst);
  return 1;
}

void sub_29A9F137C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_29A9CB508(&a12);
  sub_29A9CB80C(&a41);
  _Unwind_Resume(a1);
}

uint64_t adobe::usd::importTextureTransform(uint64_t a1, uint64_t a2)
{
  sub_29A008E78(__p, "KHR_texture_transform");
  v4 = sub_29A01BCCC(a1, __p);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 8 == v4)
  {
    v27 = *(a2 + 128);
    if (v27 && (*(a2 + 128) & 3) != 3)
    {
      (*((v27 & 0xFFFFFFFFFFFFFFF8) + 32))(a2 + 120);
    }

    *(a2 + 128) = &off_2A2042618 + 3;
    __asm { FMOV            V0.2S, #1.0 }

    *(a2 + 120) = -_D0;
    v32 = *(a2 + 144);
    if (v32 && (*(a2 + 144) & 3) != 3)
    {
      (*((v32 & 0xFFFFFFFFFFFFFFF8) + 32))(a2 + 136);
    }

    *(a2 + 144) = &off_2A2042618 + 3;
    *(a2 + 136) = 0;
    v21 = 1.0;
    goto LABEL_52;
  }

  sub_29A008E78(__p, "rotation");
  v5 = sub_29A9DD81C(v4 + 56, __p);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "scale");
  v6 = sub_29A9DD81C(v4 + 56, __p);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "offset");
  v7 = sub_29A9DD81C(v4 + 56, __p);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*v5 - 1) <= 1)
  {
    v8 = *(v5 + 1);
    if (*v5 != 2)
    {
      v8 = *(v5 + 1);
    }

    v9 = v8 * 57.2957779;
    if (v9 != 0.0)
    {
      v10 = *(a2 + 112);
      if (v10 && (*(a2 + 112) & 3) != 3)
      {
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 32))(a2 + 104);
      }

      *(a2 + 112) = &unk_2A2044C63;
      *(a2 + 104) = v9;
    }
  }

  v11 = 1.0;
  v12 = -1.0;
  if (*v6 != 5 || v6[9] - v6[8] != 240)
  {
    goto LABEL_29;
  }

  v13 = sub_29A9C9520(v6, 0);
  v14 = sub_29A9C9520(v6, 1uLL);
  v15 = *(v13 + 1);
  if (*v13 != 2)
  {
    v15 = *(v13 + 1);
  }

  v11 = v15;
  v16 = *(v14 + 1);
  if (*v14 != 2)
  {
    v16 = *(v14 + 1);
  }

  v17 = v16;
  if (v11 != 1.0 || v17 != -1.0)
  {
    v12 = -v17;
LABEL_29:
    v19 = *(a2 + 128);
    if (v19 && (*(a2 + 128) & 3) != 3)
    {
      (*((v19 & 0xFFFFFFFFFFFFFFF8) + 32))(a2 + 120);
    }

    *(a2 + 128) = &off_2A2042618 + 3;
    *(a2 + 120) = v11;
    *(a2 + 124) = v12;
  }

  v20 = 0.0;
  v21 = 1.0;
  if (*v7 != 5 || v7[9] - v7[8] != 240)
  {
    goto LABEL_41;
  }

  v22 = sub_29A9C9520(v7, 0);
  v23 = sub_29A9C9520(v7, 1uLL);
  v24 = *(v22 + 1);
  if (*v22 != 2)
  {
    v24 = *(v22 + 1);
  }

  v20 = v24;
  v25 = *(v23 + 1);
  if (*v23 != 2)
  {
    v25 = *(v23 + 1);
  }

  v21 = 1.0 - v25;
  if (v20 != 0.0 || v21 != 0.0)
  {
LABEL_41:
    v26 = *(a2 + 144);
    if (v26 && (*(a2 + 144) & 3) != 3)
    {
      (*((v26 & 0xFFFFFFFFFFFFFFF8) + 32))(a2 + 136);
    }

    *(a2 + 144) = &off_2A2042618 + 3;
    *(a2 + 136) = v20;
LABEL_52:
    *(a2 + 140) = v21;
  }

  return 1;
}

void sub_29A9F172C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void adobe::usd::importInput(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t *a6, double *a7, double a8)
{
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  if (!v16)
  {
    v16 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  }

  v17 = *a6;
  if ((*(v16 + 6) ^ *a6) > 7)
  {
    v22 = *a5;
    if ((v22 & 0x80000000) != 0)
    {
      if (a7)
      {
        v29 = *a7;
        if (*a7 != a8)
        {
          v30 = *(a4 + 8);
          if (v30 && (*(a4 + 8) & 3) != 3)
          {
            (*((v30 & 0xFFFFFFFFFFFFFFF8) + 32))(a4);
          }

          v31 = v29;
          *(a4 + 8) = &unk_2A2044C63;
          *a4 = v31;
        }
      }
    }

    else
    {
      v23 = adobe::usd::importImage(a1, v22, a2, a3);
      v24 = *(a1 + 8);
      v25 = *a5;
      v26 = a5[1];
      v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      if (!v27)
      {
        v27 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      adobe::usd::importTexture(v24, v23, v25, v26, a4, a6, v27 + 25);
      adobe::usd::importTextureTransform((a5 + 32), a4);
      if (a7)
      {
        v28 = *a7;
        if (*a7 != 1.0)
        {
          *&v28 = v28;
          v32 = vdupq_lane_s32(*&v28, 0);
          sub_29A3FEAA8((a4 + 72), &v32);
        }
      }
    }
  }

  else
  {
    v32.i64[0] = "usdGltf/gltfImport.cpp";
    v32.i64[1] = "importInput";
    v33 = 538;
    v34 = "void adobe::usd::importInput(ImportGltfContext &, const std::string &, const std::string &, Input &, const tinygltf::TextureInfo &, const TfToken &, const double *, const double)";
    v35 = 0;
    if (a2[23] >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    v20 = v17 & 0xFFFFFFFFFFFFFFF8;
    if ((v17 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v21 = (v20 + 16);
      if (*(v20 + 39) < 0)
      {
        v21 = *v21;
      }
    }

    else
    {
      v21 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v32, 1, "importInput can only be used for single channel textures: %s %s %s", v18, v19, v21);
  }
}

unsigned int **adobe::usd::importColorInput(unsigned int **result, char *a2, uint64_t a3, unsigned int **a4, unsigned int *a5, float64x2_t *a6, double a7)
{
  v11 = *a5;
  if ((v11 & 0x80000000) != 0)
  {
    v21 = a6->f64[0] == a7 && a6->f64[1] == a7;
    if (!v21 || a6[1].f64[0] != a7)
    {
      v22 = a6[1].f64[0];
      v23 = vcvt_f32_f64(*a6);
      v24 = v22;
      return sub_29A3FDE98(a4, &v23);
    }
  }

  else
  {
    v13 = result;
    v14 = adobe::usd::importImage(result, v11, a2, a3);
    v15 = v13[1];
    v16 = *a5;
    v17 = a5[1];
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v18)
    {
      v18 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v19)
    {
      v19 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    adobe::usd::importTexture(v15, v14, v16, v17, a4, v18 + 6, v19 + 26);
    adobe::usd::importTextureTransform((a5 + 32), a4);

    return adobe::usd::importScale3(a4, a6, v20, 1.0);
  }

  return result;
}

unsigned int **adobe::usd::importNormalInput(unsigned int **result, char *a2, uint64_t a3, uint64_t a4, double *a5)
{
  v8 = *a5;
  if ((v8 & 0x80000000) == 0)
  {
    v10 = result;
    v11 = adobe::usd::importImage(result, v8, a2, a3);
    v12 = v10[1];
    v13 = *a5;
    v14 = *(a5 + 1);
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v15)
    {
      v15 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v16)
    {
      v16 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    adobe::usd::importTexture(v12, v11, v13, v14, a4, v15 + 6, v16 + 25);
    adobe::usd::importTextureTransform((a5 + 17), a4);
    v17 = a5[1];
    v18 = v17 + v17;
    __asm { FMOV            V1.4S, #1.0 }

    *_Q1.i32 = v18;
    v24 = vzip1q_s32(_Q1, _Q1);
    *&v24.i32[2] = v18;
    v28 = v24;
    sub_29A3FEAA8((a4 + 72), &v28);
    v25 = v17;
    *&v26 = -v25;
    v27 = vzip1q_s32(v26, v26);
    v27.i32[2] = v26;
    v28 = v27;
    return sub_29A3FEAA8((a4 + 88), &v28);
  }

  return result;
}

unsigned int **adobe::usd::applyInputMultiplier(uint64_t a1, float32x2_t *a2)
{
  if ((*(a1 + 16) & 0x80000000) != 0)
  {
    if (sub_29A3FDE60(a1))
    {
      v15 = *(a1 + 8);
      if ((v15 & 4) != 0)
      {
        v16 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      else
      {
        v16 = *a1;
      }

      v17 = a2[1].f32[0] * v16[1].f32[0];
      *&v18 = vmul_f32(*a2, *v16);
      *(&v18 + 2) = v17;
      return sub_29A3FDE98(a1, &v18);
    }

    else
    {

      return sub_29A3FDE98(a1, a2);
    }
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }

    v18 = _Q0;
    v9.f32[0] = sub_29A8FE218((a1 + 72), &v18);
    *&v11 = v10 * a2[1].f32[0];
    v9.i32[1] = v12;
    *&v18 = vmul_f32(v9, *a2);
    *(&v18 + 1) = __PAIR64__(v13, v11);
    return sub_29A3FEAA8((a1 + 72), &v18);
  }
}

BOOL adobe::usd::importClearcoat(uint64_t a1, double *a2)
{
  sub_29A008E78(__p, "KHR_materials_clearcoat");
  v4 = sub_29A01BCCC(a1, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = a1 + 8;
  if (v5 != v4)
  {
    sub_29A008E78(__p, "clearcoatFactor");
    v6 = sub_29A9DD81C(v4 + 56, __p);
    if ((*v6 - 1) <= 1)
    {
      v7 = *(v6 + 1);
      if (*v6 != 2)
      {
        v7 = *(v6 + 1);
      }

      *a2 = v7;
    }

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "clearcoatTexture");
    v8 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readTextureInfo(v8, (a2 + 1));
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "clearcoatRoughnessFactor");
    v9 = sub_29A9DD81C(v4 + 56, __p);
    if ((*v9 - 1) <= 1)
    {
      v10 = *(v9 + 1);
      if (*v9 != 2)
      {
        v10 = *(v9 + 1);
      }

      a2[26] = v10;
    }

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "clearcoatRoughnessTexture");
    v11 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readTextureInfo(v11, (a2 + 27));
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "clearcoatNormalTexture");
    v12 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readNormalTextureInfo(v12, (a2 + 52));
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v5 != v4;
}

void sub_29A9F1E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL adobe::usd::importEmissionStrength(uint64_t a1, double *a2)
{
  sub_29A008E78(__p, "KHR_materials_emissive_strength");
  v4 = sub_29A01BCCC(a1, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = a1 + 8;
  if (v5 != v4)
  {
    sub_29A008E78(__p, "emissiveStrength");
    v6 = sub_29A9DD81C(v4 + 56, __p);
    if ((*v6 - 1) <= 1)
    {
      v7 = *(v6 + 1);
      if (*v6 != 2)
      {
        v7 = *(v6 + 1);
      }

      *a2 = v7;
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v5 != v4;
}

void sub_29A9F1F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL adobe::usd::importIor(uint64_t a1, double *a2)
{
  sub_29A008E78(__p, "KHR_materials_ior");
  v4 = sub_29A01BCCC(a1, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = a1 + 8;
  if (v5 != v4)
  {
    sub_29A008E78(__p, "ior");
    v6 = sub_29A9DD81C(v4 + 56, __p);
    if ((*v6 - 1) <= 1)
    {
      v7 = *(v6 + 1);
      if (*v6 != 2)
      {
        v7 = *(v6 + 1);
      }

      *a2 = v7;
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v5 != v4;
}

void sub_29A9F2080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL adobe::usd::importSheen(uint64_t a1, uint64_t a2)
{
  sub_29A008E78(__p, "KHR_materials_sheen");
  v4 = sub_29A01BCCC(a1, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = a1 + 8;
  if (v5 != v4)
  {
    sub_29A008E78(__p, "sheenColorFactor");
    v6 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readDoubleArray(v6, a2, 3);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "sheenColorTexture");
    v7 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readTextureInfo(v7, a2 + 24);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "sheenRoughnessFactor");
    v8 = sub_29A9DD81C(v4 + 56, __p);
    if ((*v8 - 1) <= 1)
    {
      v9 = *(v8 + 1);
      if (*v8 != 2)
      {
        v9 = *(v8 + 1);
      }

      *(a2 + 224) = v9;
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "sheenRoughnessTexture");
    v10 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readTextureInfo(v10, a2 + 232);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v5 != v4;
}

void sub_29A9F220C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL adobe::usd::importSpecular(uint64_t a1, double *a2)
{
  sub_29A008E78(__p, "KHR_materials_specular");
  v4 = sub_29A01BCCC(a1, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = a1 + 8;
  if (v5 != v4)
  {
    sub_29A008E78(__p, "specularFactor");
    v6 = sub_29A9DD81C(v4 + 56, __p);
    if ((*v6 - 1) <= 1)
    {
      v7 = *(v6 + 1);
      if (*v6 != 2)
      {
        v7 = *(v6 + 1);
      }

      *a2 = v7;
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "specularTexture");
    v8 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readTextureInfo(v8, (a2 + 1));
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "specularColorFactor");
    v9 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readDoubleArray(v9, (a2 + 26), 3);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "specularColorTexture");
    v10 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readTextureInfo(v10, (a2 + 29));
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v5 != v4;
}

void sub_29A9F23A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}