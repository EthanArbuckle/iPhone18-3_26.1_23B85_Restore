uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfPlane()
{
  v4 = qword_2A14FCFA0;
  if (!qword_2A14FCFA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFA0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfFrustum.ProjectionType()
{
  v4 = qword_2A14FCFA8;
  if (!qword_2A14FCFA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFA8);
      return v1;
    }
  }

  return v4;
}

pxrInternal__aapl__pxrReserved__::GfFrustum *sub_29B1590D8(pxrInternal__aapl__pxrReserved__::GfFrustum *a1, __int128 *a2)
{
  pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(a1);
  sub_29B1590A0(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::GfFrustum *sub_29B159184(pxrInternal__aapl__pxrReserved__::GfFrustum *a1, pxrInternal__aapl__pxrReserved__::GfFrustum *a2)
{
  pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(a1);
  sub_29B15914C(a1, a2);
  pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfFrustum()
{
  v4 = qword_2A14FCFB0;
  if (!qword_2A14FCFB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFB0);
      return v1;
    }
  }

  return v4;
}

__n128 sub_29B15925C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfDualQuath()
{
  v4 = qword_2A14FCFB8;
  if (!qword_2A14FCFB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFB8);
      return v1;
    }
  }

  return v4;
}

__n128 sub_29B159300(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfDualQuatf()
{
  v4 = qword_2A14FCFC0;
  if (!qword_2A14FCFC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFC0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfDualQuatd()
{
  v4 = qword_2A14FCFC8;
  if (!qword_2A14FCFC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFC8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfCamera.FOVDirection()
{
  v4 = qword_2A14FCFD0;
  if (!qword_2A14FCFD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFD0);
      return v1;
    }
  }

  return v4;
}

void *sub_29B159668(void *a1, void *a2)
{
  sub_29B159524(a1);
  sub_29B159630(a1, a2);
  sub_29B159524(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfCamera()
{
  v4 = qword_2A14FCFD8;
  if (!qword_2A14FCFD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFD8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfCamera.Projection()
{
  v4 = qword_2A14FCFE0;
  if (!qword_2A14FCFE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFE0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B159808(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 312))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 304) & 0xFE) != 0)
      {
        v3 = (*(a1 + 304) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_29B15992C(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 39;
  if (a2 > 0xFE)
  {
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 255;
    result[37] = 0;
    result[36] = 0;
    result[35] = 0;
    result[34] = 0;
    result[33] = 0;
    result[32] = 0;
    result[38] = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 304) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfBBox3d()
{
  v4 = qword_2A14FCFE8;
  if (!qword_2A14FCFE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFE8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfNotice.Key()
{
  v4 = qword_2A14FCFF0;
  if (!qword_2A14FCFF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFF0);
      return v1;
    }
  }

  return v4;
}

pxrInternal__aapl__pxrReserved__::TfNotice *sub_29B159EB8(pxrInternal__aapl__pxrReserved__::TfNotice *a1)
{
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(a1);
  sub_29B159E80(a1);
  return a1;
}

pxrInternal__aapl__pxrReserved__::TfNotice *sub_29B159F24(pxrInternal__aapl__pxrReserved__::TfNotice *a1, pxrInternal__aapl__pxrReserved__::TfNotice *a2)
{
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(a1);
  sub_29B159E80(a1);
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfNotice()
{
  v4 = qword_2A14FCFF8;
  if (!qword_2A14FCFF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFF8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfStopwatch()
{
  v4 = qword_2A14FD000;
  if (!qword_2A14FD000)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD000);
      return v1;
    }
  }

  return v4;
}

void *sub_29B15A1B8(void *a1, void *a2)
{
  sub_29B15A0AC(a1);
  sub_29B0B8190(a1, a2);
  sub_29B15A0AC(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.map_pxrInternal__aapl__pxrReserved__.TfToken_ pxrInternal__aapl__pxrReserved__.VtValue_ pxrInternal__aapl__pxrReserved__.TfDictionaryLessThan_ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.TfToken__ pxrInternal__aapl__pxrReserved__.VtValue___()
{
  v4 = qword_2A14FD008;
  if (!qword_2A14FD008)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD008);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfDiagnosticType()
{
  v4 = qword_2A14FD010;
  if (!qword_2A14FD010)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD010);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfMallocTag.CallTree.PrintSetting()
{
  v4 = qword_2A14FD018;
  if (!qword_2A14FD018)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD018);
      return v1;
    }
  }

  return v4;
}

void *sub_29B15A51C(void *a1, void *a2)
{
  sub_29B15A3D8(a1);
  sub_29B15A4E4(a1, a2);
  sub_29B15A3D8(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfMallocTag.CallTree()
{
  v4 = qword_2A14FD020;
  if (!qword_2A14FD020)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD020);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfMallocTag()
{
  v4 = qword_2A14FD028;
  if (!qword_2A14FD028)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD028);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfType.LegacyFlags()
{
  v4 = qword_2A14FD030;
  if (!qword_2A14FD030)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD030);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.ArchMemoryProtection()
{
  v4 = qword_2A14FD038;
  if (!qword_2A14FD038)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD038);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.ArchFileAdvice()
{
  v4 = qword_2A14FD040;
  if (!qword_2A14FD040)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD040);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.ArchMemAdvice()
{
  v4 = qword_2A14FD048;
  if (!qword_2A14FD048)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD048);
      return v1;
    }
  }

  return v4;
}

void *sub_29B15A92C(void *a1, void *a2)
{
  sub_29B0882A0(a1);
  sub_29B0ECEDC(a1, a2);
  return a1;
}

void *sub_29B15A998(void *a1, void *a2)
{
  sub_29B0882A0(a1);
  sub_29B0ED0F8(a1, a2);
  sub_29B0882A0(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.shared_ptr_pxrInternal__aapl__pxrReserved__.HdxShadowMatrixComputation_()
{
  v4 = qword_2A14FD050;
  if (!qword_2A14FD050)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD050);
      return v1;
    }
  }

  return v4;
}

pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial *sub_29B15AAEC(pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::~GlfSimpleMaterial(a1);
  sub_29B15AAB0(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial *sub_29B15AB58(pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::~GlfSimpleMaterial(a1);
  sub_29B15AAB0(a1, a2);
  pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::~GlfSimpleMaterial(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GlfSimpleMaterial()
{
  v4 = qword_2A14FD058;
  if (!qword_2A14FD058)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD058);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for std.__1.pair_CBool_ pxrInternal__aapl__pxrReserved__.CameraUtilConformWindowPolicy_()
{
  v4 = qword_2A14FD060;
  if (!qword_2A14FD060)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD060);
      return v1;
    }
  }

  return v4;
}

void **sub_29B15ADEC(void **a1, void **a2)
{
  sub_29B15ACE0(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15ACE0(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HdxPickHit_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HdxPickHit__()
{
  v4 = qword_2A14FD068;
  if (!qword_2A14FD068)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD068);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B15AF74(uint64_t a1, uint64_t a2)
{
  sub_29B15AEDC(a1);
  sub_29B15AF3C(a1, a2);
  return a1;
}

uint64_t sub_29B15B020(uint64_t a1, uint64_t a2)
{
  sub_29B15AEDC(a1);
  sub_29B15AFE8(a1, a2);
  sub_29B15AEDC(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.function_(() -_ Void)_()
{
  v4 = qword_2A14FD070;
  if (!qword_2A14FD070)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD070);
      return v1;
    }
  }

  return v4;
}

void *sub_29B15B1EC(void *a1, void *a2)
{
  sub_29AC94144(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29AC94144(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4d_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4d__()
{
  v4 = qword_2A14FD078;
  if (!qword_2A14FD078)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD078);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for std.__1.optional_pxrInternal__aapl__pxrReserved__.CameraUtilConformWindowPolicy_()
{
  v4 = qword_2A14FD080;
  if (!qword_2A14FD080)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD080);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.CameraUtilFraming()
{
  v4 = qword_2A14FD088;
  if (!qword_2A14FD088)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD088);
      return v1;
    }
  }

  return v4;
}

void **sub_29B15B4E8(void **a1, void **a2)
{
  sub_29AEDA138(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29AEDA138(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HdRenderPassAovBinding_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HdRenderPassAovBinding__()
{
  v4 = qword_2A14FD090;
  if (!qword_2A14FD090)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD090);
      return v1;
    }
  }

  return v4;
}

uint64_t *sub_29B15B6E4(uint64_t *a1, uint64_t *a2)
{
  sub_29B15B5D8(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15B5D8(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfBBox3d_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfBBox3d__()
{
  v4 = qword_2A14FD098;
  if (!qword_2A14FD098)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD098);
      return v1;
    }
  }

  return v4;
}

void *sub_29B15B8E0(void *a1, void *a2)
{
  sub_29B15B7D4(a1);
  sub_29B0B8190(a1, a2);
  sub_29B15B7D4(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.map_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.vector_pxrInternal__aapl__pxrReserved__.HdMaterialConnection2_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HdMaterialConnection2___ std.__1.less_pxrInternal__aapl__pxrReserved__.TfToken__ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.TfToken__ std.__1.vector_pxrInternal__aapl__pxrReserved__.HdMaterialConnection2_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HdMaterialConnection2_____()
{
  v4 = qword_2A14FD0A0;
  if (!qword_2A14FD0A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0A0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for std.__1.map_pxrInternal__aapl__pxrReserved__.TfToken_ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_pxrInternal__aapl__pxrReserved__.TfToken__ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.TfToken__ pxrInternal__aapl__pxrReserved__.VtValue___()
{
  v4 = qword_2A14FD0A8;
  if (!qword_2A14FD0A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0A8);
      return v1;
    }
  }

  return v4;
}

void *sub_29B15BC1C(void *a1, void *a2)
{
  sub_29B15BB10(a1);
  sub_29B0B8190(a1, a2);
  sub_29B15BB10(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.map_pxrInternal__aapl__pxrReserved__.TfToken_ pxrInternal__aapl__pxrReserved__.HdMaterialNetwork_ std.__1.less_pxrInternal__aapl__pxrReserved__.TfToken__ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.TfToken__ pxrInternal__aapl__pxrReserved__.HdMaterialNetwork___()
{
  v4 = qword_2A14FD0B0;
  if (!qword_2A14FD0B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0B0);
      return v1;
    }
  }

  return v4;
}

void **sub_29B15BE18(void **a1, void **a2)
{
  sub_29B15BD0C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15BD0C(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HdMaterialNode_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HdMaterialNode__()
{
  v4 = qword_2A14FD0B8;
  if (!qword_2A14FD0B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0B8);
      return v1;
    }
  }

  return v4;
}

void **sub_29B15C014(void **a1, void **a2)
{
  sub_29B15BF08(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15BF08(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HdMaterialRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HdMaterialRelationship__()
{
  v4 = qword_2A14FD0C0;
  if (!qword_2A14FD0C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0C0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfHashMap_pxrInternal__aapl__pxrReserved__.TfToken_ pxrInternal__aapl__pxrReserved__.VtValue_ pxrInternal__aapl__pxrReserved__.TfToken.HashFunctor_ std.__1.equal_to_pxrInternal__aapl__pxrReserved__.TfToken__ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.TfToken__ pxrInternal__aapl__pxrReserved__.VtValue___()
{
  v4 = qword_2A14FD0C8;
  if (!qword_2A14FD0C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0C8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTessellationLevel()
{
  v4 = qword_2A14FD0D0;
  if (!qword_2A14FD0D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0D0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiHandle_pxrInternal__aapl__pxrReserved__.HgiTexture_()
{
  v4 = qword_2A14FD0D8;
  if (!qword_2A14FD0D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0D8);
      return v1;
    }
  }

  return v4;
}

uint64_t *sub_29B15C54C(uint64_t *a1, uint64_t *a2)
{
  sub_29B15C440(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15C440(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiHandle_pxrInternal__aapl__pxrReserved__.HgiTexture__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiHandle_pxrInternal__aapl__pxrReserved__.HgiTexture___()
{
  v4 = qword_2A14FD0E0;
  if (!qword_2A14FD0E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0E0);
      return v1;
    }
  }

  return v4;
}

uint64_t *sub_29B15C748(uint64_t *a1, uint64_t *a2)
{
  sub_29B15C63C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15C63C(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiAttachmentDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiAttachmentDesc__()
{
  v4 = qword_2A14FD0E8;
  if (!qword_2A14FD0E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0E8);
      return v1;
    }
  }

  return v4;
}

void **sub_29B15C944(void **a1, void **a2)
{
  sub_29B15C838(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15C838(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer___()
{
  v4 = qword_2A14FD0F0;
  if (!qword_2A14FD0F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0F0);
      return v1;
    }
  }

  return v4;
}

void **sub_29B15CB40(void **a1, void **a2)
{
  sub_29B15CA34(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15CA34(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdSkelBinding_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdSkelBinding__()
{
  v4 = qword_2A14FD0F8;
  if (!qword_2A14FD0F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0F8);
      return v1;
    }
  }

  return v4;
}

void **sub_29B15CD3C(void **a1, void **a2)
{
  sub_29B15CC30(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15CC30(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.PcpNamespaceEdits.LayerStackSite_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.PcpNamespaceEdits.LayerStackSite__()
{
  v4 = qword_2A14FD100;
  if (!qword_2A14FD100)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD100);
      return v1;
    }
  }

  return v4;
}

void **sub_29B15CF38(void **a1, void **a2)
{
  sub_29B15CE2C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15CE2C(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.PcpNamespaceEdits.CacheSite_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.PcpNamespaceEdits.CacheSite__()
{
  v4 = qword_2A14FD108;
  if (!qword_2A14FD108)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD108);
      return v1;
    }
  }

  return v4;
}

void **sub_29B15D134(void **a1, void **a2)
{
  sub_29B15D028(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15D028(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_std.__1.pair_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ pxrInternal__aapl__pxrReserved__.SdfChangeList__ std.__1.allocator_std.__1.pair_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ pxrInternal__aapl__pxrReserved__.SdfChangeList___()
{
  v4 = qword_2A14FD110;
  if (!qword_2A14FD110)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD110);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B15D368(uint64_t a1, uint64_t a2)
{
  sub_29B15D224(a1);
  sub_29B15D330(a1, a2);
  sub_29B15D224(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.unordered_set_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ pxrInternal__aapl__pxrReserved__.TfHash_ std.__1.equal_to_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer___ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer___()
{
  v4 = qword_2A14FD118;
  if (!qword_2A14FD118)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD118);
      return v1;
    }
  }

  return v4;
}

void **sub_29B15D564(void **a1, void **a2)
{
  sub_29B15D458(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15D458(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_std.__1.pair_pxrInternal__aapl__pxrReserved__.SdfPath_ pxrInternal__aapl__pxrReserved__.SdfPath__ std.__1.allocator_std.__1.pair_pxrInternal__aapl__pxrReserved__.SdfPath_ pxrInternal__aapl__pxrReserved__.SdfPath___()
{
  v4 = qword_2A14FD120;
  if (!qword_2A14FD120)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD120);
      return v1;
    }
  }

  return v4;
}

void *sub_29B15D760(void *a1, void *a2)
{
  sub_29B15D654(a1);
  sub_29B0B8190(a1, a2);
  sub_29B15D654(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.map_pxrInternal__aapl__pxrReserved__.SdfPath_ CInt_ pxrInternal__aapl__pxrReserved__.SdfPath.FastLessThan_ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.SdfPath__ CInt___()
{
  v4 = qword_2A14FD128;
  if (!qword_2A14FD128)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD128);
      return v1;
    }
  }

  return v4;
}

void **sub_29B15D95C(void **a1, void **a2)
{
  sub_29B15D850(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15D850(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnArg_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnArg__()
{
  v4 = qword_2A14FD130;
  if (!qword_2A14FD130)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD130);
      return v1;
    }
  }

  return v4;
}

uint64_t *sub_29B15DB58(uint64_t *a1, uint64_t *a2)
{
  sub_29B15DA4C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15DA4C(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfMallocTag.CallStackInfo_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfMallocTag.CallStackInfo__()
{
  v4 = qword_2A14FD138;
  if (!qword_2A14FD138)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD138);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B15DD5C(uint64_t a1, uint64_t a2)
{
  sub_29A1043FC(a1);
  sub_29B15DD24(a1, a2);
  sub_29A1043FC(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfMallocTag.CallTree.PathNode()
{
  v4 = qword_2A14FD140;
  if (!qword_2A14FD140)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD140);
      return v1;
    }
  }

  return v4;
}

void ***sub_29B15DF58(void ***a1, void ***a2)
{
  sub_29B15DE4C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15DE4C(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfMallocTag.CallTree.CallSite_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfMallocTag.CallTree.CallSite__()
{
  v4 = qword_2A14FD148;
  if (!qword_2A14FD148)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD148);
      return v1;
    }
  }

  return v4;
}

void **sub_29B15E154(void **a1, void **a2)
{
  sub_29B15E048(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15E048(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfMallocTag.CallTree.PathNode_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfMallocTag.CallTree.PathNode__()
{
  v4 = qword_2A14FD150;
  if (!qword_2A14FD150)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD150);
      return v1;
    }
  }

  return v4;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatd>::_DecRef(unint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    if (!*(result + 24))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_GetNativeRefCount(result, *(result + 32));
    }

    result = sub_29B0BB8EC(*(result + 24), 1, 3);
    if (result == 1)
    {
      sub_29B0BB924(2u);
      pxrInternal__aapl__pxrReserved__::Vt_ArrayForeignDataSource::_ArraysDetached(*(v1 + 3));
    }

    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatf>::_DecRef(unint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    if (!*(result + 24))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_GetNativeRefCount(result, *(result + 32));
    }

    result = sub_29B0BB8EC(*(result + 24), 1, 3);
    if (result == 1)
    {
      sub_29B0BB924(2u);
      pxrInternal__aapl__pxrReserved__::Vt_ArrayForeignDataSource::_ArraysDetached(*(v1 + 3));
    }

    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuath>::_DecRef(unint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    if (!*(result + 24))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_GetNativeRefCount(result, *(result + 32));
    }

    result = sub_29B0BB8EC(*(result + 24), 1, 3);
    if (result == 1)
    {
      sub_29B0BB924(2u);
      pxrInternal__aapl__pxrReserved__::Vt_ArrayForeignDataSource::_ArraysDetached(*(v1 + 3));
    }

    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
  }

  return result;
}

void sub_29B15E6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::string *a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A424A8C(a10[1].__r_.__value_.__r.__words);
  std::string::~string(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29B15E6D0(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0C1C58((a1 + 24), (a2 + 24));
  *(a1 + 32) = *(a2 + 32);
  sub_29B0C046C((a1 + 40), (a2 + 40));
  return a1;
}

void *sub_29B15E73C(void *a1, uint64_t a2)
{
  sub_29B15E7A8(a1 + 1);
  result = a1;
  *a1 = &unk_2A20B0590;
  a1[3] = *(a2 + 24);
  return result;
}

uint64_t sub_29B15E84C(uint64_t a1)
{
  sub_29AE997DC((a1 + 48));
  sub_29A3C73E0((a1 + 24));
  sub_29AE997DC((a1 + 16));
  sub_29AE997DC((a1 + 8));
  sub_29AE997DC(a1);
  return a1;
}

void sub_29B15E8AC(void *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(a1, a2);
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((a1 + 1), (a2 + 8));
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((a1 + 2), (a2 + 16));
  sub_29B0CCA88(a1 + 3);
}

void sub_29B15E94C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void ***a12)
{
  *(v12 - 24) = a1;
  *(v12 - 28) = a2;
  sub_29AE997DC(a12);
  _Unwind_Resume(*(v12 - 24));
}

uint64_t *sub_29B15E9C8(uint64_t *a1, uint64_t *a2)
{
  sub_29B0C0374(a1, a2);
  sub_29B0C0374(a1 + 1, a2 + 1);
  sub_29B0C0374(a1 + 2, a2 + 2);
  sub_29B0CBDC8(a1 + 3, a2 + 3);
  sub_29B0C0374(a1 + 6, a2 + 6);
  return a1;
}

__n128 sub_29B15EA50(uint64_t a1, uint64_t a2)
{
  sub_29B0ECEDC(a1, a2);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 29) = *(a2 + 29);
  return result;
}

__n128 sub_29B15EA9C(uint64_t a1, uint64_t a2)
{
  sub_29B0ED0F8(a1, a2);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 29) = *(a2 + 29);
  return result;
}

uint64_t sub_29B15EBA8(uint64_t a1, uint64_t a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0CBDC8((a1 + 8), (a2 + 8));
  sub_29B0CBDC8((a1 + 32), (a2 + 32));
  memcpy((a1 + 56), (a2 + 56), 0x98uLL);
  return a1;
}

void *sub_29B15EC20(void *a1)
{
  sub_29A3D65BC((a1 + 1));
  sub_29A424A8C(a1);
  return a1;
}

__n128 sub_29B15ECE4(uint64_t a1, uint64_t a2)
{
  sub_29B0C1C58(a1, a2);
  sub_29B0C046C((a1 + 8), (a2 + 8));
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

_DWORD *sub_29B15ED44(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B975C(a1, a2);
  sub_29B0B975C(a1 + 2, a2 + 2);
  sub_29B0B975C(a1 + 4, a2 + 4);
  sub_29B0B975C(a1 + 6, a2 + 6);
  sub_29B0B975C(a1 + 8, a2 + 8);
  sub_29B0B975C(a1 + 10, a2 + 10);
  memcpy(a1 + 12, a2 + 12, 0x50uLL);
  return a1;
}

_DWORD *sub_29B15EDF8(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0B82B8(a1 + 2, a2 + 2);
  sub_29B0B82B8(a1 + 4, a2 + 4);
  sub_29B0B82B8(a1 + 6, a2 + 6);
  sub_29B0B82B8(a1 + 8, a2 + 8);
  sub_29B0B82B8(a1 + 10, a2 + 10);
  memcpy(a1 + 12, a2 + 12, 0x50uLL);
  return a1;
}

__n128 sub_29B15EEAC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_29B0C1C58((a1 + 16), (a2 + 16));
  sub_29B0C1C58((a1 + 24), (a2 + 24));
  memcpy((a1 + 32), (a2 + 32), 0x108uLL);
  sub_29B0CBDC8((a1 + 296), (a2 + 296));
  sub_29B15AFE8(a1 + 320, a2 + 320);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection((a1 + 352), (a2 + 352));
  result = *(a2 + 456);
  *(a1 + 456) = result;
  return result;
}

void sub_29B15EF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29B15AEDC(a10 + 320);
  sub_29AC94144(a10 + 296);
  sub_29A424A8C((a10 + 24));
  sub_29A424A8C((a10 + 16));
  _Unwind_Resume(a1);
}

uint64_t sub_29B15F098(uint64_t a1, uint64_t a2)
{
  memcpy(a1, a2, 0x64uLL);
  sub_29B0CBDC8((a1 + 104), (a2 + 104));
  sub_29B0CBDC8((a1 + 128), (a2 + 128));
  memcpy((a1 + 152), (a2 + 152), 0x5CuLL);
  sub_29B0B82B8((a1 + 244), (a2 + 244));
  memcpy((a1 + 252), (a2 + 252), 0x4DuLL);
  return a1;
}

uint64_t sub_29B15F140(uint64_t a1, uint64_t a2)
{
  sub_29B0C1C58(a1, a2);
  sub_29B0C0434(a1 + 8, a2 + 8);
  sub_29B0C0434(a1 + 32, a2 + 32);
  sub_29B0C0434(a1 + 56, a2 + 56);
  sub_29B0C0434(a1 + 80, a2 + 80);
  *(a1 + 104) = *(a2 + 104);
  sub_29B0C1C58((a1 + 112), (a2 + 112));
  return a1;
}

_DWORD *sub_29B15F1E8(_DWORD *a1, _DWORD *a2)
{
  memcpy(a1, a2, 0x2CuLL);
  sub_29B0B975C(a1 + 11, a2 + 11);
  sub_29B0B975C(a1 + 13, a2 + 13);
  sub_29B0B975C(a1 + 15, a2 + 15);
  return a1;
}

_DWORD *sub_29B15F260(_DWORD *a1, _DWORD *a2)
{
  memcpy(a1, a2, 0x2CuLL);
  sub_29B0B82B8(a1 + 11, a2 + 11);
  sub_29B0B82B8(a1 + 13, a2 + 13);
  sub_29B0B82B8(a1 + 15, a2 + 15);
  return a1;
}

void *sub_29B15F2D8(void *a1)
{
  sub_29B15B5D8(a1 + 1);
  sub_29A424A8C(a1);
  return a1;
}

__n128 sub_29B15F39C(__n128 *a1, __n128 *a2)
{
  sub_29B0C1C58(a1, a2);
  sub_29B0CBDC8(&a1->n128_u64[1], &a2->n128_u64[1]);
  result = a2[2];
  a1[2] = result;
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  return result;
}

_DWORD *sub_29B15F3FC(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B975C(a1, a2);
  sub_29B0B975C(a1 + 2, a2 + 2);
  return a1;
}

_DWORD *sub_29B15F448(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0B82B8(a1 + 2, a2 + 2);
  return a1;
}

uint64_t sub_29B15F494(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A2085CE0;
  sub_29B0B975C((a1 + 8), (a2 + 8));
  return a1;
}

void *sub_29B15F4F4(void *a1, uint64_t a2)
{
  sub_29B15F54C(a1, a2);
  result = a1;
  *a1 = &unk_2A207DA80;
  return result;
}

uint64_t sub_29B15F54C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A2075D28;
  sub_29B0B975C((a1 + 8), (a2 + 8));
  return a1;
}

uint64_t sub_29B15F6B4(uint64_t a1, uint64_t a2)
{
  sub_29B15F720(a1, a2);
  *a1 = &unk_2A207C268;
  sub_29B0B975C((a1 + 16), (a2 + 16));
  return a1;
}

uint64_t sub_29B15F720(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A2085400;
  sub_29B0B975C((a1 + 8), (a2 + 8));
  return a1;
}

void *sub_29B15F828(void *a1, void *a2)
{
  sub_29B0C1C58(a1, a2);
  sub_29B0B8190(a1 + 1, a2 + 1);
  sub_29B0B8190(a1 + 4, a2 + 4);
  return a1;
}

void *sub_29B15F930(void *a1, void *a2)
{
  sub_29B0B8190(a1, a2);
  sub_29B0CBDC8(a1 + 3, a2 + 3);
  sub_29B0C0374(a1 + 6, a2 + 6);
  return a1;
}

void *sub_29B15FA38(void *a1, void *a2)
{
  sub_29B0CBDC8(a1, a2);
  sub_29B0CBDC8(a1 + 3, a2 + 3);
  sub_29B0CBDC8(a1 + 6, a2 + 6);
  return a1;
}

void *sub_29B15FA98(void *a1, uint64_t a2)
{
  sub_29B15F54C(a1, a2);
  result = a1;
  *a1 = &unk_2A207B2D0;
  return result;
}

void sub_29B15FAF0(void *a1, uint64_t a2)
{
  sub_29B15F720(a1, a2);
  *a1 = &unk_2A20769D0;
  sub_29B0C1C90((a1 + 2), (a2 + 16));
}

uint64_t *sub_29B15FD30(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B15FD78(v3);
  return a1;
}

void sub_29B15FD78(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B15FDFC(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B15FE80(*a1);
    sub_29B15FE48(v3, v2, v1);
  }
}

void sub_29B15FDFC(uint64_t *a1)
{
  sub_29B15FEA8(a1);
  sub_29B15FED0(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B15FED0(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B15FFB8(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

void sub_29B16007C(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B160100(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B0DE1B0(*a1);
    sub_29B0DFE90(v3, v2, v1);
  }
}

void sub_29B160100(uint64_t *a1)
{
  sub_29B0DB058(a1);
  sub_29B16014C(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B16014C(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B1601FC(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B160280(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B160304(*a1);
    sub_29B1602CC(v3, v2, v1);
  }
}

void sub_29B160280(uint64_t *a1)
{
  sub_29B16032C(a1);
  sub_29B160354(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B160354(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B16043C(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

uint64_t *sub_29B1604D8(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B160520(v3);
  return a1;
}

void sub_29B160520(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B1605A4(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B15FE80(*a1);
    sub_29B15FE48(v3, v2, v1);
  }
}

void sub_29B1605A4(uint64_t *a1)
{
  sub_29B15FEA8(a1);
  sub_29B1605F0(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B1605F0(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B160868(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0111A4(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>::__construct_at_end<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B160A34(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>::__construct_at_end<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B160AA0(&v6, a1, a4);
  v7 = sub_29B160AE0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B160AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B160BA8(a1, v9, v8, v5);
  return sub_29B160BE4(a4, v6);
}

void *sub_29B160B64(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 4 * a3;
  return result;
}

uint64_t sub_29B160CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B160D68(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B160DB4(v17, v11);
  v8 = sub_29B160BE4(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B160DE4(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 4;
  sub_29B160E68(a3, a1, v5);
  v4 = &v6[4 * v5];
  return sub_29B0DCFB4(v7, &v4);
}

void *sub_29B160E68(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 4 * (a3 - 1) + 4);
  }

  return a1;
}

uint64_t sub_29B160F20(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B160520(a1);
  }

  return a1;
}

void sub_29B160F6C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl*,pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B1610AC(a1);
  }

  sub_29B0DCBB0(v7);
  return sub_29B1611D0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl*,pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DCDD0(&v6, a1, a4);
  v7 = sub_29B161288(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B161288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B16130C(a1, v9, v8, v5);
  return sub_29B161400(a4, v6);
}

uint64_t sub_29B16130C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(&v6, a1, &v8, &v9);
  sub_29B0DD834(&v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl,pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B161478(v7);
  return v5;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl,pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl,pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl&>();
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A379A04(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component>::__construct_at_end<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B161714(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component>::__construct_at_end<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B161784(&v6, a1, a4);
  v7 = sub_29B1617C4(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1617C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B161894(a1, v9, v8, v5);
  return sub_29B1618D0(a4, v6);
}

void *sub_29B161848(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 12 * a3;
  return result;
}

uint64_t sub_29B16199C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B161A54(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B161AA0(v17, v11);
  v8 = sub_29B1618D0(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B161AD0(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 12;
  sub_29B161B5C(a3, a1, v5);
  v4 = &v6[12 * v5];
  return sub_29B0DCFB4(v7, &v4);
}

void *sub_29B161B5C(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 12 * (a3 - 1) + 12);
  }

  return a1;
}

uint64_t sub_29B161C20(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B1601FC(a1);
  }

  return a1;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment>::__construct_at_end<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B161DC0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment>::__construct_at_end<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B161E18(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B161E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B161E9C(a1, v9, v8, v5);
  return sub_29B161ED8(a4, v6);
}

uint64_t sub_29B161FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B0DE888(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B16205C(v17, v11);
  v8 = sub_29B161ED8(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B16208C(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B16007C(a1);
  }

  return a1;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::ArchRegex>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::ArchRegex*,pxrInternal__aapl__pxrReserved__::ArchRegex*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A1C11FC(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::ArchRegex>::__construct_at_end<pxrInternal__aapl__pxrReserved__::ArchRegex*,pxrInternal__aapl__pxrReserved__::ArchRegex*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B16222C(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::ArchRegex>::__construct_at_end<pxrInternal__aapl__pxrReserved__::ArchRegex*,pxrInternal__aapl__pxrReserved__::ArchRegex*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B162284(&v6, a1, a4);
  v7 = sub_29B1622C4(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1622C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29AF4C3FC(a1, v9, v8, v5);
  return sub_29B162394(a4, v6);
}

void *sub_29B162348(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 48 * a3;
  return result;
}

uint64_t sub_29B1624D4(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A58E5E0(a1);
  }

  return a1;
}

void sub_29B162520(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>*,pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B162660(a1);
  }

  sub_29B0DCBB0(v7);
  return sub_29B162784(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>*,pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B162284(&v6, a1, a4);
  v7 = sub_29B16283C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16283C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B1628C0(a1, v9, v8, v5);
  return sub_29B1629B4(a4, v6);
}

uint64_t sub_29B1628C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(&v6, a1, &v8, &v9);
  sub_29B0DD834(&v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>,pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B162A2C(v7);
  return v5;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>,pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>,pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>&>();
}

{
    ;
  }
}

void sub_29B162BAC(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op*,pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B162CEC(a1);
  }

  sub_29B0DCBB0(v7);
  return sub_29B162E08(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op*,pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B160AA0(&v6, a1, a4);
  v7 = sub_29B162EC0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B162EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B162F44(a1, v9, v8, v5);
  return sub_29B162F80(a4, v6);
}

uint64_t sub_29B16304C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B160D68(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B163104(v17, v11);
  v8 = sub_29B162F80(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B163134(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B15FD78(a1);
  }

  return a1;
}

void sub_29B163180(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>,void,0>();
}

void std::allocator_traits<std::allocator<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>::__init_with_size[abi:ne200100]<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>*,std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B1632C0(a1);
  }

  sub_29B0DCBB0(v7);
  return sub_29B1633DC(v7);
}

void *std::vector<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>::__construct_at_end<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>*,std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B163494(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B163494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B163518(a1, v9, v8, v5);
  return sub_29B16360C(a4, v6);
}

uint64_t sub_29B163518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(&v6, a1, &v8, &v9);
  sub_29B0DD834(&v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>>::construct[abi:ne200100]<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>,std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B163684(v7);
  return v5;
}

void std::allocator_traits<std::allocator<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>>::construct[abi:ne200100]<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>,std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>&,0>()
{
  std::allocator<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>::construct[abi:ne200100]<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>,std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>&>();
}

{
    ;
  }
}

uint64_t sub_29B163790(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    if (*(a2 + 24) == a2)
    {
      sub_29B088388();
      *(a1 + 24) = v2;
      (*(**(a2 + 24) + 24))(*(a2 + 24), *(a1 + 24));
    }

    else
    {
      *(a1 + 24) = (*(**(a2 + 24) + 16))(*(a2 + 24));
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29B163880(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B1638D4(a1);
  }

  return a1;
}

BOOL sub_29B1638D4(uint64_t a1)
{
  v5[2] = a1;
  v3 = *a1;
  sub_29B0DF4A4(v5, **(a1 + 16));
  sub_29B0DF4A4(v4, **(a1 + 8));
  return sub_29B163940(v3, v5[0], v5[1], v4[0], v4[1]);
}

BOOL sub_29B163940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v6[0] = a4;
  v6[1] = a5;
  result = sub_29B0DF4DC(v7, v6);
  if (result)
  {
    sub_29B1639B4(v7);
    std::allocator_traits<std::allocator<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>>::destroy[abi:ne200100]<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>,0>();
  }

  return result;
}

uint64_t sub_29B163A88(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29ABD5F04(a1);
  }

  return a1;
}

uint64_t sub_29B163AD4(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29ABD5F88(a1);
  }

  return a1;
}

uint64_t sub_29B163B20(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29ABD62C4(a1);
  }

  return a1;
}

void *sub_29B163BF0(void *a1, void *a2)
{
  sub_29B137D0C(a1, a2);
  sub_29B0CBDC8(a1 + 3, a2 + 3);
  return a1;
}

void sub_29B163C3C(void *a1, uint64_t a2)
{
  sub_29B15F720(a1, a2);
  *a1 = &unk_2A2076078;
  memcpy(a1 + 2, (a2 + 16), 0xA0uLL);
  sub_29B15B140(a1 + 22);
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_Destruct()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::data()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_GetStorage();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_GetStorage()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_IsLocal();
}

{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_IsLocal();
}

{
    ;
  }
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_GetLocalStorage()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<56ul,8ul,8ul>::GetLocalStorage();
}

{
  pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<56ul,8ul,8ul>::GetLocalStorage();
}

{
    ;
  }
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_GetRemoteStorage()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<56ul,8ul,8ul>::GetRemoteStorage();
}

{
  pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<56ul,8ul,8ul>::GetRemoteStorage();
}

{
    ;
  }
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<56ul,8ul,8ul>::GetLocalStorage()
{
  ;
}

{
  ;
}

{
    ;
  }
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<56ul,8ul,8ul>::GetRemoteStorage(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::begin()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_GetStorage();
}

{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_GetStorage();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::end()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_GetStorage();
}

{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_GetStorage();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_SetRemoteStorage()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<56ul,8ul,8ul>::SetRemoteStorage();
}

{
    ;
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_UninitializedMove<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = sub_29B164354(a1);
  v3 = sub_29B164354(a2);
  return sub_29ABDE7B4(v5, v3, a3);
}

_DWORD *sub_29B164384(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  sub_29B0B975C(a1 + 1, a2 + 1);
  sub_29B0B975C(a1 + 3, a2 + 3);
  sub_29B0B7F5C((a1 + 6), (a2 + 6));
  return a1;
}

void sub_29B1643FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A1DCEA8((a10 + 12));
  sub_29A1DCEA8((a10 + 4));
  _Unwind_Resume(a1);
}

void sub_29B16442C(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  sub_29B0B82B8((a1 + 4), a2 + 1);
  sub_29B0B82B8((a1 + 12), a2 + 3);
  sub_29B0B7D60((a1 + 24), (a2 + 6));
}

void sub_29B1644A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A1DCEA8((a10 + 12));
  sub_29A1DCEA8((a10 + 4));
  _Unwind_Resume(a1);
}

void sub_29B1645A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A1DCEA8((a10 + 16));
  sub_29A424A8C(a10);
  _Unwind_Resume(a1);
}

void sub_29B1645EC(uint64_t a1, uint64_t a2)
{
  sub_29B0C1C58(a1, a2);
  *(a1 + 8) = *(a2 + 8);
  sub_29B0B82B8((a1 + 16), (a2 + 16));
  sub_29B0C046C((a1 + 24), (a2 + 24));
  sub_29B15C164(a1 + 40, a2 + 40);
}

void sub_29B164670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A3D65BC(a10 + 24);
  sub_29A1DCEA8((a10 + 16));
  sub_29A424A8C(a10);
  _Unwind_Resume(a1);
}

__n128 sub_29B16477C(uint64_t a1, uint64_t a2)
{
  sub_29B0CBDC8(a1, a2);
  memcpy((a1 + 24), (a2 + 24), 0x50uLL);
  sub_29B0CBDC8((a1 + 104), (a2 + 104));
  sub_29B0CBDC8((a1 + 128), (a2 + 128));
  *(a1 + 152) = *(a2 + 152);
  result = *(a2 + 168);
  *(a1 + 168) = result;
  return result;
}

uint64_t sub_29B16483C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::basic_string((a1 + 8), (a2 + 8));
  return a1;
}

void *sub_29B164888(void *a1, void *a2)
{
  *a1 = *a2;
  sub_29B0C0434((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t sub_29B1648D4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  std::string::basic_string((a1 + 16), (a2 + 16));
  std::string::basic_string((a1 + 40), (a2 + 40));
  return a1;
}

uint64_t sub_29B164964(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_29B0C0434(a1 + 16, a2 + 16);
  sub_29B0C0434(a1 + 40, a2 + 40);
  return a1;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfMatrix4d*,pxrInternal__aapl__pxrReserved__::GfMatrix4d*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A79C588(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::__construct_at_end<pxrInternal__aapl__pxrReserved__::GfMatrix4d*,pxrInternal__aapl__pxrReserved__::GfMatrix4d*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B164B20(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::__construct_at_end<pxrInternal__aapl__pxrReserved__::GfMatrix4d*,pxrInternal__aapl__pxrReserved__::GfMatrix4d*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B164B8C(&v6, a1, a4);
  v7 = sub_29B164BCC(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B164BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B164C94(a1, v9, v8, v5);
  return sub_29B164CD0(a4, v6);
}

void *sub_29B164C50(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + (a3 << 7);
  return result;
}

uint64_t sub_29B164D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B164E54(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B164EA0(v17, v11);
  v8 = sub_29B164CD0(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B164ED0(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 128;
  sub_29B164F54(a3, a1, v5);
  v4 = &v6[128 * v5];
  return sub_29B0DCFB4(v7, &v4);
}

void *sub_29B164F54(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, ((a3 - 1) << 7) + 128);
  }

  return a1;
}

uint64_t sub_29B16500C(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B08841C(a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfMatrix4d,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void *sub_29B165250(void *a1, void *a2)
{
  sub_29B165330(a1);
  if (sub_29B165368(a2))
  {
    operator new();
  }

  return a1;
}

void sub_29B1653DC(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation*,pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B16551C(a1);
  }

  sub_29B0DCBB0(v7);
  return sub_29B165638(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation>::__construct_at_end<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation*,pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B1656F0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1656F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B165774(a1, v9, v8, v5);
  return sub_29B165868(a4, v6);
}

uint64_t sub_29B165774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(&v6, a1, &v8, &v9);
  sub_29B0DD834(&v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation,pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B1658E0(v7);
  return v5;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation,pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation,pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation&>();
}

{
    ;
  }
}

uint64_t sub_29B16597C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::basic_string((a1 + 8), (a2 + 8));
  return a1;
}

uint64_t sub_29B1659C8(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A156170(a1);
  }

  return a1;
}

void sub_29B165ABC(uint64_t a1, void *a2)
{
  sub_29B0C1C58(a1, a2);
  sub_29B0C1C58((a1 + 8), a2 + 1);
  sub_29B0C1C58((a1 + 16), a2 + 2);
  sub_29B0C1C58((a1 + 24), a2 + 3);
  sub_29B0B7D60((a1 + 32), (a2 + 4));
}

void sub_29B165BB4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  *(v12 - 24) = a1;
  *(v12 - 28) = a2;
  sub_29A424A8C(a12 + 3);
  sub_29A424A8C(a12 + 2);
  sub_29A424A8C(a12 + 1);
  sub_29A424A8C(a12);
  _Unwind_Resume(*(v12 - 24));
}

uint64_t sub_29B165CDC(unsigned __int8 *a1, int a2)
{
  if (a2 != 2 && a2 != 1)
  {
    if (a2 == 5)
    {
      v2 = atomic_load(a1);
      explicit = v2;
    }

    else
    {
      explicit = *a1;
    }
  }

  else
  {
    explicit = atomic_load_explicit(a1, memory_order_acquire);
  }

  return explicit & 1;
}

void sub_29B165E6C(uint64_t a1, void *a2)
{
  sub_29B0C1C58(a1, a2);
  sub_29B0C1C58((a1 + 8), a2 + 1);
  sub_29B0B7D60((a1 + 16), (a2 + 2));
}

void sub_29B165F3C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  *(v12 - 24) = a1;
  *(v12 - 28) = a2;
  sub_29A424A8C(a12 + 1);
  sub_29A424A8C(a12);
  _Unwind_Resume(*(v12 - 24));
}

_BYTE *sub_29B166018(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = sub_29B165C70(a2, 5);
  sub_29B165CA0(a1, v2);
  sub_29B166070(a2, 0);
  return a1;
}

unsigned __int8 *sub_29B1660EC(unsigned __int8 *result, char a2, int a3)
{
  v3 = a2 & 1;
  if (a3 == 3 || a3 == 5)
  {
    atomic_store(v3, result);
  }

  else
  {
    *result = v3;
  }

  return result;
}

uint64_t sub_29B16616C(uint64_t a1)
{
  sub_29A49A240(a1 + 88);
  sub_29AE997DC((a1 + 80));
  sub_29B1661D8((a1 + 56));
  sub_29B166208((a1 + 32));
  sub_29B166238((a1 + 8));
  sub_29A424A8C(a1);
  return a1;
}

void **sub_29B1662BC(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB645B8(v3);
  return a1;
}

void **sub_29B16635C(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB645B8(v3);
  return a1;
}

void **sub_29B1663D4(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB646A0(v3);
  return a1;
}

void sub_29B166530(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  *(v12 - 24) = a1;
  *(v12 - 28) = a2;
  sub_29A424A8C(a12);
  _Unwind_Resume(*(v12 - 24));
}

void sub_29B1666A8(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A10C514(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B166874(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B1668EC(&v6, a1, a4);
  v7 = sub_29B16692C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16692C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29AB67F18(a1, v9, v8, v5);
  return sub_29B1669FC(a4, v6);
}

void *sub_29B1669B0(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 72 * a3;
  return result;
}

uint64_t sub_29B166AE0(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  sub_29B0C04A4((a1 + 24), (a2 + 24));
  std::string::basic_string((a1 + 40), (a2 + 40));
  result = a1;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

uint64_t sub_29B166BF0(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB646A0(a1);
  }

  return a1;
}

void sub_29B166C3C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A1BF94C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B166E08(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B166E60(&v6, a1, a4);
  v7 = sub_29B166EA0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B166EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29AB68344(a1, v9, v8, v5);
  return sub_29B166F68(a4, v6);
}

void *sub_29B166F24(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + (a3 << 6);
  return result;
}

uint64_t sub_29B16704C(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  sub_29B0C04A4((a1 + 24), (a2 + 24));
  std::string::basic_string((a1 + 40), (a2 + 40));
  return a1;
}

uint64_t sub_29B167148(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB645B8(a1);
  }

  return a1;
}

void sub_29B167194(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A1BF94C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B166E08(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B166E60(&v6, a1, a4);
  v7 = sub_29B167388(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B167388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29AB68728(a1, v9, v8, v5);
  return sub_29B16740C(a4, v6);
}

BOOL std::map<std::string,std::vector<std::string>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::string>>,std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *> *,long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a2;
  v7 = a3;
  v6 = a1;
  v5 = sub_29B167558();
  result = sub_29B167588(&v8, &v7);
  if (result)
  {
    sub_29B0BCCB0(&v4, v5);
    sub_29B0E9B98(&v8);
    sub_29B1675B8();
  }

  return result;
}

void std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<std::string>> const&>()
{
  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__find_equal<std::string>();
}

{
    ;
  }
}

void std::__tree_key_value_types<std::__value_type<std::string,std::vector<std::string>>>::__get_key[abi:ne200100]<std::pair<std::string const,std::vector<std::string>> const,0>()
{
  ;
}

{
    ;
  }
}

uint64_t *std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4, const void **a5)
{
  v35 = a2;
  v34 = a1;
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v29 = sub_29B0BCC78();
  sub_29B0BCCB0(&v30, v29);
  v22 = 1;
  if (!sub_29B0BAF80(&v35, &v30))
  {
    sub_29B088388();
    v21 = v5;
    v20 = v31;
    sub_29B0BB0C8(&v35);
    v22 = sub_29B167C0C(v21, v20);
  }

  if (v22)
  {
    v28 = v35;
    v26 = sub_29B0BCD1C();
    sub_29B0BCCB0(&v27, v26);
    v19 = 1;
    if (!sub_29B0BAF80(&v28, &v27))
    {
      sub_29B088388();
      v18 = v6;
      v7 = sub_29B0BCD54(&v28);
      v8 = sub_29B0BB0C8(v7);
      v19 = sub_29B167C5C(v18, v8, v31);
    }

    if (!v19)
    {
      std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__find_equal<std::string>();
    }

    if (*v35)
    {
      *v33 = v28;
      return v28 + 1;
    }

    else
    {
      *v33 = v35;
      return *v33;
    }
  }

  else
  {
    sub_29B088388();
    v17 = v9;
    v10 = sub_29B0BB0C8(&v35);
    if (sub_29B167C5C(v17, v10, v31))
    {
      v24[1] = v35;
      v11 = v35;
      sub_29B0BE6D8();
      v25 = v11;
      v23 = sub_29B0BCC78();
      sub_29B0BCCB0(v24, v23);
      v16 = 1;
      if (!sub_29B0BAF80(&v25, v24))
      {
        sub_29B088388();
        v15 = v12;
        v14 = v31;
        sub_29B0BB0C8(&v25);
        v16 = sub_29B167C0C(v15, v14);
      }

      if (!v16)
      {
        std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__find_equal<std::string>();
      }

      if (*(sub_29B0BCBCC(&v35) + 8))
      {
        *v33 = v25;
        return *v33;
      }

      else
      {
        *v33 = v35;
        return v35 + 1;
      }
    }

    else
    {
      *v33 = v35;
      *v32 = v35;
      return v32;
    }
  }
}

void std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__construct_node<std::pair<std::string const,std::vector<std::string>> const&>()
{
  sub_29B088388();
  sub_29B167E14();
}

{
    ;
  }
}

void *std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__find_equal<std::string>(uint64_t a1, uint64_t a2, const void **a3)
{
  v9 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  v8 = v3;
  if (v9)
  {
    while (1)
    {
      while (1)
      {
        sub_29B088388();
        if (!sub_29B167C0C(v4, a3))
        {
          break;
        }

        if (!*v9)
        {
          *a2 = v9;
          return *a2;
        }

        v8 = v9;
        v9 = *v9;
      }

      sub_29B088388();
      if (!sub_29B167C5C(v5, (v9 + 4), a3))
      {
        break;
      }

      if (!v9[1])
      {
        *a2 = v9;
        return v9 + 1;
      }

      v8 = v9 + 1;
      v9 = v9[1];
    }

    *a2 = v9;
    return v8;
  }

  else
  {
    sub_29B0BC18C();
    *a2 = v6;
    return *a2;
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>>>::construct[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,std::pair<std::string const,std::vector<std::string>> const&,0>()
{
  std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>>::construct[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,std::pair<std::string const,std::vector<std::string>> const&>();
}

{
    ;
  }
}

void *sub_29B167EF8(uint64_t a1, std::align_val_t a2)
{
  v3 = 80 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B167F84();
  }

  return sub_29B0BD424(v3, a2);
}

void *sub_29B168090(void *a1, void *a2)
{
  sub_29B0C1C58(a1, a2);
  sub_29B0CBDC8(a1 + 1, a2 + 1);
  sub_29B0CBDC8(a1 + 4, a2 + 4);
  sub_29B0CBDC8(a1 + 7, a2 + 7);
  sub_29B0C0374(a1 + 10, a2 + 10);
  sub_29B0B8190(a1 + 11, a2 + 11);
  return a1;
}

uint64_t sub_29B16812C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A2071690;
  *(a1 + 8) = *(a2 + 8);
  std::string::basic_string((a1 + 16), (a2 + 16));
  result = a1;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

uint64_t sub_29B1681A4(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  result = a1;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

void sub_29B1681E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  sub_29B15CA94((a1 + 24));
}

void sub_29B1682B0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  sub_29B0CBDC8((a1 + 24), (a2 + 24));
  sub_29B0CBDC8((a1 + 48), (a2 + 48));
  sub_29B0B7D60((a1 + 72), (a2 + 72));
}

void sub_29B168330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29B15C838((a10 + 48));
  sub_29B15CA34((a10 + 24));
  _Unwind_Resume(a1);
}

void sub_29B1683B8(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a1, a2);
  *a1 = &unk_2A205F368;
  sub_29B0C1C90((a1 + 24), a2 + 3);
}

uint64_t sub_29B16847C(uint64_t result, uint64_t a2)
{
  *result = &unk_2A2060CE8;
  *(result + 8) = *(a2 + 8);
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *sub_29B168518(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  sub_29B168570(a1, a2);
  result = a1;
  *a1 = &unk_2A2060328;
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *sub_29B168570(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  sub_29B1685C8(a1, a2);
  result = a1;
  *a1 = &unk_2A205FB38;
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *sub_29B1685C8(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  sub_29B168620(a1, a2);
  result = a1;
  *a1 = &unk_2A20608A8;
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *sub_29B168620(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  sub_29B168678(a1, a2);
  result = a1;
  *a1 = &unk_2A205FF00;
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *sub_29B168678(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a1, a2);
  result = a1;
  *a1 = &unk_2A205F6D0;
  return result;
}

uint64_t sub_29B1686D0(uint64_t a1)
{
  sub_29B168718((a1 + 64));
  sub_29B0882A0(a1 + 48);
  sub_29A57F434(a1);
  return a1;
}

void **sub_29B168748(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A5C6BD8(v3);
  return a1;
}

void sub_29B168850(uint64_t a1, uint64_t a2)
{
  sub_29A58CB08(a1, a2);
  *(a1 + 32) = *(a2 + 32);
  sub_29B0ECEDC((a1 + 48), (a2 + 48));
  sub_29B1688EC((a1 + 64));
}

void sub_29B1688C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29B0882A0(a10 + 48);
  sub_29A57F434(a10);
  _Unwind_Resume(a1);
}

void sub_29B168924(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc*,pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A1BF94C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc*,pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B168AF0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc*,pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B166E60(&v6, a1, a4);
  v7 = sub_29B168B48(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B168B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29A5C75D0(a1, v9, v8, v5);
  return sub_29B168BCC(a4, v6);
}

void *sub_29B168CB0(void *a1, void *a2)
{
  memcpy(a1, a2, 0x30uLL);
  sub_29B0ECEDC(a1 + 6, a2 + 6);
  return a1;
}

uint64_t sub_29B168D00(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A5C6BD8(a1);
  }

  return a1;
}

void **sub_29B168E3C(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A559EF0(v3);
  return a1;
}

void sub_29B168F24(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>>,void,0>();
}

void std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>>::__init_with_size[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A379A04(a1, v8);
    std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>>::__construct_at_end<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1690F0(v7);
}

void *std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>>::__construct_at_end<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B161784(&v6, a1, a4);
  v7 = sub_29B169148(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B169148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29A55A464(a1, v9, v8, v5);
  return sub_29B1691CC(a4, v6);
}

_DWORD *sub_29B1692B0(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B975C(a1, a2);
  result = a1;
  a1[2] = a2[2];
  return result;
}

uint64_t sub_29B1692F4(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A559EF0(a1);
  }

  return a1;
}

uint64_t sub_29B1693E8(uint64_t a1)
{
  sub_29B0B81C8(a1 + 256);
  sub_29B0B81C8(a1 + 232);
  sub_29B169484(a1 + 192);
  sub_29B15D028((a1 + 168));
  sub_29B15D224(a1 + 128);
  sub_29B15D458((a1 + 96));
  sub_29B15D654(a1 + 72);
  sub_29B0B81C8(a1 + 48);
  sub_29B0B81C8(a1 + 24);
  sub_29B0B81C8(a1);
  return a1;
}

void sub_29B1695A4(void **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_29B1695FC((a1 + 1), v1);
  }
}

void sub_29B1695FC(uint64_t a1, void *a2)
{
  sub_29B088388();
  v4 = v2;
  sub_29B088388();
  sub_29B169658(v4, a2, *v3);
}

void sub_29B1696C8(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

void sub_29B169870(uint64_t a1, int a2)
{
  *(v2 - 24) = a1;
  *(v2 - 28) = a2;
  sub_29B0B81C8(*(v2 - 40));
  _Unwind_Resume(*(v2 - 24));
}

void sub_29B169A30(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 - 24) = a1;
  *(v10 - 28) = a2;
  sub_29B1694E4(a10);
  _Unwind_Resume(*(v10 - 24));
}

BOOL std::unordered_set<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>>::insert<std::__hash_const_iterator<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v4 = a3;
  result = sub_29B0BC5E4(&v5, &v4);
  if (result)
  {
    sub_29B16A658();
    sub_29B16A5B4();
  }

  return result;
}

void sub_29B169BB8(uint64_t a1, uint64_t a2)
{
  sub_29B0BD304(a2);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> *>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> *>,void,0>();
}

void std::allocator_traits<std::allocator<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> *>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> *>,void,0>()
{
  ;
}

{
    ;
  }
}

void std::allocator_traits<std::allocator<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *>>,void,0>()
{
  ;
}

{
    ;
  }
}

void *sub_29B169D3C(void *a1, uint64_t a2, void *a3)
{
  *a1 = 0;
  sub_29B169D80(a1 + 1, a3);
  return a1;
}

void *sub_29B169DB8(void *a1, void *a2)
{
  *a1 = *a2;
  sub_29B088388();
  v3 = v2;
  result = a1;
  *v3 = 0;
  return result;
}

size_t *std::__hash_table<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>>::__rehash<true>(uint64_t a1, size_t a2)
{
  v13[1] = a1;
  v13[0] = a2;
  if (a2 == 1)
  {
    v13[0] = 2;
  }

  else if ((v13[0] & (v13[0] - 1)) != 0)
  {
    v13[0] = std::__next_prime(v13[0]);
  }

  result = sub_29B169F9C(a1);
  v12 = result;
  if (v13[0] > result)
  {
    std::__hash_table<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>>::__do_rehash<true>();
  }

  if (v13[0] < v12)
  {
    if (sub_29B16A228(v12))
    {
      v8 = *sub_29B16A2F8(a1);
      v3 = sub_29B16A310(a1);
      v4 = sub_29B16A2E0(v8 / *v3);
      prime = sub_29B16A274(v4);
    }

    else
    {
      v7 = *sub_29B16A2F8(a1);
      v5 = sub_29B16A310(a1);
      v6 = sub_29B16A2E0(v7 / *v5);
      prime = std::__next_prime(v6);
    }

    v11 = prime;
    result = sub_29B0E1A40(v13, &v11);
    v13[0] = *result;
    if (v13[0] < v12)
    {
      std::__hash_table<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>>::__do_rehash<true>();
    }
  }

  return result;
}

void std::__hash_table<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>>::__do_rehash<true>(uint64_t a1, uint64_t a2)
{
  sub_29B0BD304(a1);
  sub_29B088388();
  if (a2)
  {
    sub_29B16A384();
  }

  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> *[],std::__bucket_list_deallocator<std::allocator<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> *>>>::reset[abi:ne200100]<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> **,0>();
}

BOOL sub_29B16A228(unint64_t a1)
{
  v2 = 0;
  if (a1 > 2)
  {
    return (a1 & (a1 - 1)) == 0;
  }

  return v2;
}

uint64_t sub_29B16A274(unint64_t a1)
{
  if (a1 >= 2)
  {
    return 1 << (64 - sub_29B16A598(a1 - 1));
  }

  else
  {
    return a1;
  }
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> *[],std::__bucket_list_deallocator<std::allocator<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> *>>>::reset[abi:ne200100]<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> **,0>(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29B1695FC((a1 + 1), v2);
  }
}

uint64_t sub_29B16A3B4(unint64_t a1, unint64_t a2)
{
  if ((a2 & (a2 - 1)) == 0)
  {
    return a1 & (a2 - 1);
  }

  if (a1 >= a2)
  {
    return a1 % a2;
  }

  else
  {
    return a1;
  }
}

void *sub_29B16A4C0(uint64_t a1, std::align_val_t a2)
{
  v3 = 8 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B16A530();
  }

  return sub_29B0BD424(v3, a2);
}

void std::__hash_table<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>>::__emplace_unique_key_args<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string> const&>()
{
  sub_29B088388();
  pxrInternal__aapl__pxrReserved__::TfHash::operator()<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string> const&>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfHash::operator()<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string> const&>(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B16ACB8(v2);
  pxrInternal__aapl__pxrReserved__::Tf_HashImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string> const&>();
}

void std::__hash_table<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>>::__construct_node_hash<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string> const&>()
{
  sub_29B088388();
  sub_29B16B400();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string> const&>()
{
  pxrInternal__aapl__pxrReserved__::TfHashAppend<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::GetCode()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AsDerived();
}

{
    ;
  }
}

uint64_t sub_29B16AD48(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TfHashAppend<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::Append<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::Append<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AppendImpl<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::Append<std::string const&>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AppendImpl<std::string const&>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AppendImpl<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AsDerived();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AsDerived()
{
  ;
}

{
  ;
}

{
    ;
  }
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashState::_Append<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AppendImpl()
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>()
{
  pxrInternal__aapl__pxrReserved__::TfHashAppend<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfHashAppend<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>()
{
  pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::GetUniqueIdentifier();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::Append<void const*>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AppendImpl<void const*>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AppendImpl<void const*>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AsDerived();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashState::_Append<void const*>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,void const*>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,void const*>()
{
  pxrInternal__aapl__pxrReserved__::TfHashAppend<pxrInternal__aapl__pxrReserved__::Tf_HashState,void>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfHashAppend<pxrInternal__aapl__pxrReserved__::Tf_HashState,void>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::Append<unsigned long>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::Append<unsigned long>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AppendImpl<unsigned long>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AppendImpl<unsigned long>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AsDerived();
}

{
    ;
  }
}

pxrInternal__aapl__pxrReserved__::Tf_HashState *pxrInternal__aapl__pxrReserved__::Tf_HashState::_Append<unsigned long>(pxrInternal__aapl__pxrReserved__::Tf_HashState *result, uint64_t a2)
{
  if (*(result + 8))
  {
    pxrInternal__aapl__pxrReserved__::Tf_HashState::_Combine(result);
  }

  *result = a2;
  *(result + 8) = 1;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AppendImpl<std::string const&>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AsDerived();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashState::_Append<std::string const&>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&>()
{
  pxrInternal__aapl__pxrReserved__::TfHashAppend<pxrInternal__aapl__pxrReserved__::Tf_HashState>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfHashAppend<pxrInternal__aapl__pxrReserved__::Tf_HashState>(uint64_t a1, uint64_t a2)
{
  sub_29B0EB9FC(a2);
  sub_29B16B288(a2);
  pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::AppendContiguous<char>();
}

void pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::AppendContiguous<char>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AsDerived();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashState::_GetCode(pxrInternal__aapl__pxrReserved__::Tf_HashState *this)
{
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_SwapByteOrder(this);
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator==<pxrInternal__aapl__pxrReserved__::SdfLayer>()
{
  pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::GetUniqueIdentifier();
}

{
    ;
  }
}

void std::allocator_traits<std::allocator<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *>>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string> const&,0>()
{
  std::allocator<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string> const&>();
}

{
    ;
  }
}

void *sub_29B16B528(uint64_t a1, std::align_val_t a2)
{
  v3 = 56 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B16B5BC();
  }

  return sub_29B0BD424(v3, a2);
}

void *sub_29B16B668(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29B0884A0(a1, a2);
  result = a1;
  a1[1] = a3;
  return result;
}

uint64_t sub_29B16B7B0(uint64_t a1, uint64_t a2)
{
  sub_29B0B8190(a1, a2);
  sub_29B0B8190((a1 + 24), (a2 + 24));
  sub_29B0B8190((a1 + 48), (a2 + 48));
  sub_29B0B8190((a1 + 72), (a2 + 72));
  sub_29B0CBDC8((a1 + 96), (a2 + 96));
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 122) = *(a2 + 122);
  sub_29B15D330(a1 + 128, a2 + 128);
  sub_29B0CBDC8((a1 + 168), (a2 + 168));
  sub_29B16B8B0(a1 + 192, a2 + 192);
  sub_29B0B8190((a1 + 232), (a2 + 232));
  sub_29B0B8190((a1 + 256), (a2 + 256));
  return a1;
}

uint64_t sub_29B16B958(uint64_t a1, uint64_t a2)
{
  sub_29B16BA3C(a1, a2);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  if (*sub_29B16A2F8(a1))
  {
    sub_29B0C0DA8();
    v7 = v2;
    v6 = sub_29B0C0F48(*(a1 + 16));
    v3 = sub_29B169F9C(a1);
    v4 = sub_29B16A3B4(v6, v3);
    *sub_29B0DB30C(a1, v4) = v7;
    *(a2 + 16) = 0;
    *sub_29B16A2F8(a2) = 0;
  }

  return a1;
}

uint64_t *sub_29B16BA74(uint64_t *a1, uint64_t *a2)
{
  *a1 = sub_29B0BCBE4(a2);
  v2 = sub_29B0BD304(a2);
  sub_29B169D80(a1 + 1, v2);
  return a1;
}

void sub_29B16BBE4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, pxrInternal__aapl__pxrReserved__::PcpErrorRelocationBase *a12)
{
  *(v12 - 24) = a1;
  *(v12 - 28) = a2;
  sub_29A1DCEA8(a12 + 28);
  sub_29A1DCEA8(a12 + 26);
  pxrInternal__aapl__pxrReserved__::PcpErrorRelocationBase::~PcpErrorRelocationBase(a12);
  _Unwind_Resume(*(v12 - 24));
}

void sub_29B16BCB0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A204EBC8;
  *(a1 + 8) = *(a2 + 8);
  sub_29B12F784((a1 + 16), (a2 + 16));
}

uint64_t sub_29B16BD1C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29B156AA0((a1 + 4), (a2 + 4));
  std::string::basic_string((a1 + 24), (a2 + 24));
  return a1;
}

_DWORD *sub_29B16BDA4(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  sub_29B156B44(a1 + 1, a2 + 1);
  sub_29B0C0434((a1 + 6), (a2 + 6));
  return a1;
}

_DWORD *sub_29B16BE04(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B975C(a1, a2);
  sub_29B0B975C(a1 + 2, a2 + 2);
  result = a1;
  a1[4] = a2[4];
  return result;
}

_DWORD *sub_29B16BE5C(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0B82B8(a1 + 2, a2 + 2);
  result = a1;
  a1[4] = a2[4];
  return result;
}

void sub_29B16BEB4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::basic_string((a1 + 8), (a2 + 8));
  sub_29B15D8B0((a1 + 32));
}

uint64_t sub_29B16BF3C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29B0C0434(a1 + 8, a2 + 8);
  sub_29B0CBDC8((a1 + 32), (a2 + 32));
  return a1;
}

void sub_29B16BFF4(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B16C078(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B15FE80(*a1);
    sub_29B15FE48(v3, v2, v1);
  }
}

void sub_29B16C078(uint64_t *a1)
{
  sub_29B15FEA8(a1);
  sub_29B16C0C4(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B16C0C4(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0111A4(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B16C2C8(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B160AA0(&v6, a1, a4);
  v7 = sub_29B16C320(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16C320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B16C3A4(a1, v9, v8, v5);
  return sub_29B16C3E0(a4, v6);
}

uint64_t sub_29B16C4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B160D68(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B16C564(v17, v11);
  v8 = sub_29B16C3E0(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B16C594(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B16BFF4(a1);
  }

  return a1;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A044EF0(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B16C734(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B16C78C(&v6, a1, a4);
  v7 = sub_29B16C7CC(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16C7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29A218960(a1, v9, v8, v5);
  return sub_29B16C89C(a4, v6);
}

void *sub_29B16C850(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 56 * a3;
  return result;
}

uint64_t sub_29B16C9A4(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A2177C4(a1);
  }

  return a1;
}

void *sub_29B16C9F0(void *a1, void *a2)
{
  sub_29B0CBDC8(a1, a2);
  sub_29B0CBDC8(a1 + 3, a2 + 3);
  sub_29B0C0434((a1 + 6), (a2 + 6));
  return a1;
}

void **sub_29B16CAE0(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A10C99C(v3);
  return a1;
}

void sub_29B16CBB4(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B16CC38(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B15FE80(*a1);
    sub_29B15FE48(v3, v2, v1);
  }
}

void sub_29B16CC38(uint64_t *a1)
{
  sub_29B15FEA8(a1);
  sub_29B16CC84(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B16CC84(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op*,pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0111A4(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op*,pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B16CE88(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op*,pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B160AA0(&v6, a1, a4);
  v7 = sub_29B16CEE0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16CEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B16CF64(a1, v9, v8, v5);
  return sub_29B16CFA0(a4, v6);
}

uint64_t sub_29B16D06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B160D68(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B16D124(v17, v11);
  v8 = sub_29B16CFA0(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B16D154(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B16CBB4(a1);
  }

  return a1;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference*,pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A15A71C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference*,pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B16D2F4(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference*,pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B16D34C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16D34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29A218464(a1, v9, v8, v5);
  return sub_29B16D3D0(a4, v6);
}

uint64_t sub_29B16D4B4(uint64_t a1, uint64_t a2)
{
  sub_29B0B975C(a1, a2);
  std::string::basic_string((a1 + 8), (a2 + 8));
  return a1;
}

uint64_t sub_29B16D528(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A21859C(a1);
  }

  return a1;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathPattern*,pxrInternal__aapl__pxrReserved__::SdfPathPattern*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A1BF94C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathPattern*,pxrInternal__aapl__pxrReserved__::SdfPathPattern*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B16D6C8(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathPattern*,pxrInternal__aapl__pxrReserved__::SdfPathPattern*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B166E60(&v6, a1, a4);
  v7 = sub_29B16D720(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16D720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29A218624(a1, v9, v8, v5);
  return sub_29B16D7A4(a4, v6);
}

void sub_29B16D9B0(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*,pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A15A71C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*,pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B16DB7C(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*,pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B16DBD4(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16DBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29A2186D0(a1, v9, v8, v5);
  return sub_29B16DC58(a4, v6);
}

uint64_t sub_29B16DD3C(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  result = a1;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return result;
}

uint64_t sub_29B16DD88(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A10C99C(a1);
  }

  return a1;
}

void sub_29B16DDD4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A10C514(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B16DFA0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B1668EC(&v6, a1, a4);
  v7 = sub_29B16DFF8(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16DFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29A2187DC(a1, v9, v8, v5);
  return sub_29B16E07C(a4, v6);
}

uint64_t sub_29B16E128(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A2176E4(a1);
  }

  return a1;
}

uint64_t sub_29B16E174(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A218CE8(a1);
  }

  return a1;
}

void *sub_29B16E1C0(void *a1, void *a2)
{
  sub_29B0CBDC8(a1, a2);
  sub_29B0CBDC8(a1 + 3, a2 + 3);
  sub_29B0CBDC8(a1 + 6, a2 + 6);
  sub_29B0C0434((a1 + 9), (a2 + 9));
  return a1;
}

__n128 sub_29B16E30C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

__n128 sub_29B16E338(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t *sub_29B16E4AC(unint64_t *result, unint64_t a2, int a3)
{
  if (a3 == 3 || a3 == 5)
  {
    atomic_store(a2, result);
  }

  else
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_29B16E528(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  sub_29B16E35C((a1 + 120), 0);
  v4 = sub_29B16E608((a2 + 120), 0, 0);
  if (v4)
  {
    sub_29B16E394((a1 + 120), v4);
  }

  return a1;
}

unint64_t sub_29B16E640(atomic_ullong *a1, unint64_t a2, int a3)
{
  switch(a3)
  {
    case 2:
    case 1:
      return atomic_exchange_explicit(a1, a2, memory_order_acquire);
    case 3:
      return atomic_exchange_explicit(a1, a2, memory_order_release);
    case 4:
    case 5:
      return atomic_exchange(a1, a2);
  }

  return __swp(a2, a1);
}

void *sub_29B16E7A8(void *a1, void *a2)
{
  memcpy(a1, a2, 0xA0uLL);
  sub_29B0CBDC8(a1 + 20, a2 + 20);
  result = a1;
  a1[23] = a2[23];
  return result;
}

uint64_t sub_29B16E93C(uint64_t a1)
{
  v1 = sub_29B0BC3EC();
  sub_29A5B0668(a1, v1);
  return a1;
}

BOOL std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a2;
  v7 = a3;
  v6 = a1;
  v5 = sub_29B167558();
  result = sub_29B167588(&v8, &v7);
  if (result)
  {
    sub_29B0BCCB0(&v4, v5);
    sub_29B0E9B98(&v8);
    sub_29B16EBE8();
  }

  return result;
}

uint64_t sub_29B16EB20()
{
  v1 = sub_29B0BCD1C();
  sub_29B0BCCB0(&v2, v1);
  return v2;
}

void sub_29B16EB5C(void *a1)
{
  *a1 = 0;
  sub_29B0BC15C(a1 + 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *>>,void,0>();
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *>>,void,0>()
{
  ;
}

{
    ;
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const&>()
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
}

{
    ;
  }
}

void std::__tree_key_value_types<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>::__get_key[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const,0>()
{
  ;
}

{
    ;
  }
}

uint64_t *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4, void *a5)
{
  v37 = a2;
  v36 = a1;
  v35 = a3;
  v34 = a4;
  v33 = a5;
  v31 = sub_29B0BCC78();
  sub_29B0BCCB0(&v32, v31);
  v24 = 1;
  if (!sub_29B0BAF80(&v37, &v32))
  {
    sub_29B088388();
    v23 = v5;
    v22 = v33;
    v6 = sub_29B0BB0C8(&v37);
    v24 = sub_29A662CCC(v23, v22, v6);
  }

  if (v24)
  {
    v30 = v37;
    v28 = sub_29B0BCD1C();
    sub_29B0BCCB0(&v29, v28);
    v21 = 1;
    if (!sub_29B0BAF80(&v30, &v29))
    {
      sub_29B088388();
      v20 = v7;
      v8 = sub_29B0BCD54(&v30);
      v9 = sub_29B0BB0C8(v8);
      v21 = sub_29A662CCC(v20, v9, v33);
    }

    if ((v21 & 1) == 0)
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    if (*v37)
    {
      *v35 = v30;
      return v30 + 1;
    }

    else
    {
      *v35 = v37;
      return *v35;
    }
  }

  else
  {
    sub_29B088388();
    v19 = v10;
    v11 = sub_29B0BB0C8(&v37);
    if (sub_29A662CCC(v19, v11, v33))
    {
      v26[1] = v37;
      v12 = v37;
      sub_29B0BE6D8();
      v27 = v12;
      v25 = sub_29B0BCC78();
      sub_29B0BCCB0(v26, v25);
      v18 = 1;
      if (!sub_29B0BAF80(&v27, v26))
      {
        sub_29B088388();
        v17 = v13;
        v16 = v33;
        v14 = sub_29B0BB0C8(&v27);
        v18 = sub_29A662CCC(v17, v16, v14);
      }

      if ((v18 & 1) == 0)
      {
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
      }

      if (*(sub_29B0BCBCC(&v37) + 8))
      {
        *v35 = v27;
        return *v35;
      }

      else
      {
        *v35 = v37;
        return v37 + 1;
      }
    }

    else
    {
      *v35 = v37;
      *v34 = v37;
      return v34;
    }
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const&>()
{
  sub_29B088388();
  sub_29B16F544();
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  v8 = v3;
  if (v9)
  {
    while (1)
    {
      while (1)
      {
        sub_29B088388();
        if ((sub_29A662CCC(v4, a3, v9 + 4) & 1) == 0)
        {
          break;
        }

        if (!*v9)
        {
          *a2 = v9;
          return *a2;
        }

        v8 = v9;
        v9 = *v9;
      }

      sub_29B088388();
      if ((sub_29A662CCC(v5, v9 + 4, a3) & 1) == 0)
      {
        break;
      }

      if (!v9[1])
      {
        *a2 = v9;
        return v9 + 1;
      }

      v8 = v9 + 1;
      v9 = v9[1];
    }

    *a2 = v9;
    return v8;
  }

  else
  {
    sub_29B0BC18C();
    *a2 = v6;
    return *a2;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29B0EB9FC(a2);
  v11 = *v3;
  sub_29B0EB9FC(a3);
  v10 = *v4;
  v9 = 0;
  if (v11 < 0x80u)
  {
    v9 = v10 < 0x80u;
  }

  v7 = 0;
  if (v11 >= 0x40u)
  {
    v7 = v10 >= 0x40u;
  }

  v6 = 0;
  if (v9)
  {
    v6 = 0;
    if ((v11 & 0xDF) != (v10 & 0xDF))
    {
      v6 = v7;
    }
  }

  if (v6)
  {
    v14 = ((v11 + 5) & 0x1F) < ((v10 + 5) & 0x1F);
  }

  else
  {
    v14 = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a1, a2, a3) & 1;
  }

  return v14 & 1;
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *>>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const&,0>()
{
  std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const&>();
}

{
    ;
  }
}

void *sub_29B16F628(uint64_t a1, std::align_val_t a2)
{
  v3 = 56 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B16F69C();
  }

  return sub_29B0BD424(v3, a2);
}

void sub_29B16F7A4(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29A94BD9C((a1 + 1), v2);
  }
}

uint64_t sub_29B16F800(uint64_t a1)
{
  sub_29B15DA4C((a1 + 96));
  sub_29A1043FC(a1 + 24);
  sub_29B15DE4C(a1);
  return a1;
}

void *sub_29B16F8F0(void *a1, void *a2)
{
  sub_29B0CBDC8(a1, a2);
  sub_29B15DD24((a1 + 3), (a2 + 3));
  sub_29B0CBDC8(a1 + 12, a2 + 12);
  return a1;
}

void **sub_29B16F950(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B06EE78(v3);
  return a1;
}

void sub_29B16F9F0(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdxPickHit>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdxPickHit>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdxPickHit>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdxPickHit>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HdxPickHit>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdxPickHit*,pxrInternal__aapl__pxrReserved__::HdxPickHit*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B16FB30(a1);
  }

  sub_29B0DCBB0(v7);
  return sub_29B16FC54(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HdxPickHit>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdxPickHit*,pxrInternal__aapl__pxrReserved__::HdxPickHit*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B16FD0C(&v6, a1, a4);
  v7 = sub_29B16FD4C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16FD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B16FE1C(a1, v9, v8, v5);
  return sub_29B16FF10(a4, v6);
}

void *sub_29B16FDD0(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 80 * a3;
  return result;
}

uint64_t sub_29B16FE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(&v6, a1, &v8, &v9);
  sub_29B0DD834(&v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdxPickHit>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdxPickHit,pxrInternal__aapl__pxrReserved__::HdxPickHit&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B16FF88(v7);
  return v5;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdxPickHit>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdxPickHit,pxrInternal__aapl__pxrReserved__::HdxPickHit&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::HdxPickHit>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdxPickHit,pxrInternal__aapl__pxrReserved__::HdxPickHit&>();
}

{
    ;
  }
}

uint64_t sub_29B170048(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B06EE78(a1);
  }

  return a1;
}

void sub_29B1701D4(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B170258(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B0DD278(*a1);
    sub_29B1702A4(v3, v2, v1);
  }
}

void sub_29B170258(uint64_t *a1)
{
  sub_29B0DAD68(a1);
  sub_29B1702DC(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B1702DC(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4d>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4d,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4d>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4d,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B1703C4(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

void sub_29B17042C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4d>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4d>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4d>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4d>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::GfVec4d>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4d*,pxrInternal__aapl__pxrReserved__::GfVec4d*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A15A71C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::GfVec4d>::__construct_at_end<pxrInternal__aapl__pxrReserved__::GfVec4d*,pxrInternal__aapl__pxrReserved__::GfVec4d*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1705F8(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::GfVec4d>::__construct_at_end<pxrInternal__aapl__pxrReserved__::GfVec4d*,pxrInternal__aapl__pxrReserved__::GfVec4d*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B170650(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B170650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B1706D4(a1, v9, v8, v5);
  return sub_29B170710(a4, v6);
}

uint64_t sub_29B1707DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B170894(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B1708E0(v17, v11);
  v8 = sub_29B170710(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B170910(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 32;
  sub_29B170994(a3, a1, v5);
  v4 = &v6[32 * v5];
  return sub_29B0DCFB4(v7, &v4);
}

void *sub_29B170994(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 32 * (a3 - 1) + 32);
  }

  return a1;
}

uint64_t sub_29B1709F8(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B1701D4(a1);
  }

  return a1;
}

void sub_29B170A74(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*,pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29AB876CC(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*,pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B170C40(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*,pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B16FD0C(&v6, a1, a4);
  v7 = sub_29B170C98(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B170C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29AC9469C(a1, v9, v8, v5);
  return sub_29B170D1C(a4, v6);
}

uint64_t sub_29B170DC8(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AC943DC(a1);
  }

  return a1;
}

uint64_t *sub_29B170E14(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B170E5C(v3);
  return a1;
}

void sub_29B170E5C(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B170EE0(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B170F64(*a1);
    sub_29B170F2C(v3, v2, v1);
  }
}

void sub_29B170EE0(uint64_t *a1)
{
  sub_29B170F8C(a1);
  sub_29B170FB4(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B170FB4(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfBBox3d>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfBBox3d,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfBBox3d>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfBBox3d,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B17109C(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

void sub_29B171108(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfBBox3d>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::GfBBox3d>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfBBox3d>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::GfBBox3d>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::GfBBox3d>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfBBox3d*,pxrInternal__aapl__pxrReserved__::GfBBox3d*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29AEC832C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::GfBBox3d>::__construct_at_end<pxrInternal__aapl__pxrReserved__::GfBBox3d*,pxrInternal__aapl__pxrReserved__::GfBBox3d*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1712D4(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::GfBBox3d>::__construct_at_end<pxrInternal__aapl__pxrReserved__::GfBBox3d*,pxrInternal__aapl__pxrReserved__::GfBBox3d*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B17134C(&v6, a1, a4);
  v7 = sub_29B17138C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B17138C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B17145C(a1, v9, v8, v5);
  return sub_29B171498(a4, v6);
}

void *sub_29B171410(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 312 * a3;
  return result;
}

uint64_t sub_29B171564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B17161C(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B171668(v17, v11);
  v8 = sub_29B171498(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B171698(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 312;
  sub_29B171724(a3, a1, v5);
  v4 = &v6[312 * v5];
  return sub_29B0DCFB4(v7, &v4);
}

void *sub_29B171724(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 312 * (a3 - 1) + 306);
  }

  return a1;
}

uint64_t sub_29B1717E8(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B170E5C(a1);
  }

  return a1;
}

uint64_t sub_29B171894(uint64_t a1)
{
  v1 = sub_29B0BC3EC();
  sub_29ABF3348(a1, v1);
  return a1;
}

uint64_t sub_29B171954(uint64_t a1)
{
  sub_29B171990((a1 + 8));
  sub_29A424A8C(a1);
  return a1;
}

void **sub_29B1719C0(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29ABF3254(v3);
  return a1;
}

BOOL std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,void *> *,long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a2;
  v7 = a3;
  v6 = a1;
  v5 = sub_29B167558();
  result = sub_29B167588(&v8, &v7);
  if (result)
  {
    sub_29B0BCCB0(&v4, v5);
    sub_29B0E9B98(&v8);
    sub_29B171AD8();
  }

  return result;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>> const&>()
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
}

{
    ;
  }
}

void std::__tree_key_value_types<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>::__get_key[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>> const,0>()
{
  ;
}

{
    ;
  }
}

uint64_t *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4, uint64_t *a5)
{
  v35 = a2;
  v34 = a1;
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v29 = sub_29B0BCC78();
  sub_29B0BCCB0(&v30, v29);
  v22 = 1;
  if (!sub_29B0BAF80(&v35, &v30))
  {
    sub_29B088388();
    v21 = v5;
    v20 = v31;
    sub_29B0BB0C8(&v35);
    v22 = sub_29B17212C(v21, v20);
  }

  if (v22)
  {
    v28 = v35;
    v26 = sub_29B0BCD1C();
    sub_29B0BCCB0(&v27, v26);
    v19 = 1;
    if (!sub_29B0BAF80(&v28, &v27))
    {
      sub_29B088388();
      v18 = v6;
      v7 = sub_29B0BCD54(&v28);
      v8 = sub_29B0BB0C8(v7);
      v19 = sub_29B17217C(v18, v8, v31);
    }

    if ((v19 & 1) == 0)
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    if (*v35)
    {
      *v33 = v28;
      return v28 + 1;
    }

    else
    {
      *v33 = v35;
      return *v33;
    }
  }

  else
  {
    sub_29B088388();
    v17 = v9;
    v10 = sub_29B0BB0C8(&v35);
    if (sub_29B17217C(v17, v10, v31))
    {
      v24[1] = v35;
      v11 = v35;
      sub_29B0BE6D8();
      v25 = v11;
      v23 = sub_29B0BCC78();
      sub_29B0BCCB0(v24, v23);
      v16 = 1;
      if (!sub_29B0BAF80(&v25, v24))
      {
        sub_29B088388();
        v15 = v12;
        v14 = v31;
        sub_29B0BB0C8(&v25);
        v16 = sub_29B17212C(v15, v14);
      }

      if ((v16 & 1) == 0)
      {
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
      }

      if (*(sub_29B0BCBCC(&v35) + 8))
      {
        *v33 = v25;
        return *v33;
      }

      else
      {
        *v33 = v35;
        return v35 + 1;
      }
    }

    else
    {
      *v33 = v35;
      *v32 = v35;
      return v32;
    }
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>> const&>()
{
  sub_29B088388();
  sub_29B172334();
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  v8 = v3;
  if (v9)
  {
    while (1)
    {
      while (1)
      {
        sub_29B088388();
        if ((sub_29B17212C(v4, a3) & 1) == 0)
        {
          break;
        }

        if (!*v9)
        {
          *a2 = v9;
          return *a2;
        }

        v8 = v9;
        v9 = *v9;
      }

      sub_29B088388();
      if ((sub_29B17217C(v5, (v9 + 4), a3) & 1) == 0)
      {
        break;
      }

      if (!v9[1])
      {
        *a2 = v9;
        return v9 + 1;
      }

      v8 = v9 + 1;
      v9 = v9[1];
    }

    *a2 = v9;
    return v8;
  }

  else
  {
    sub_29B0BC18C();
    *a2 = v6;
    return *a2;
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,void *>>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>> const&,0>()
{
  std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,void *>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>> const&>();
}

{
    ;
  }
}

void *sub_29B172418(uint64_t a1, std::align_val_t a2)
{
  v3 = a1 << 6;
  if (!sub_29B0886D8(a2))
  {
    sub_29B172488();
  }

  return sub_29B0BD424(v3, a2);
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2*,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2*,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1726B0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2*,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B172708(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B172708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29ABF30DC(a1, v9, v8, v5);
  return sub_29B17278C(a4, v6);
}

uint64_t sub_29B1728BC(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29ABF3254(a1);
  }

  return a1;
}

void sub_29B17293C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29ABF32DC((a1 + 1), v2);
  }
}

BOOL std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a2;
  v7 = a3;
  v6 = a1;
  v5 = sub_29B167558();
  result = sub_29B167588(&v8, &v7);
  if (result)
  {
    sub_29B0BCCB0(&v4, v5);
    sub_29B0E9B98(&v8);
    sub_29B172A28();
  }

  return result;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const&>()
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
}

{
    ;
  }
}

uint64_t *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4, uint64_t *a5)
{
  v35 = a2;
  v34 = a1;
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v29 = sub_29B0BCC78();
  sub_29B0BCCB0(&v30, v29);
  v22 = 1;
  if (!sub_29B0BAF80(&v35, &v30))
  {
    sub_29B088388();
    v21 = v5;
    v20 = v31;
    sub_29B0BB0C8(&v35);
    v22 = sub_29B17212C(v21, v20);
  }

  if (v22)
  {
    v28 = v35;
    v26 = sub_29B0BCD1C();
    sub_29B0BCCB0(&v27, v26);
    v19 = 1;
    if (!sub_29B0BAF80(&v28, &v27))
    {
      sub_29B088388();
      v18 = v6;
      v7 = sub_29B0BCD54(&v28);
      v8 = sub_29B0BB0C8(v7);
      v19 = sub_29B17217C(v18, v8, v31);
    }

    if ((v19 & 1) == 0)
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    if (*v35)
    {
      *v33 = v28;
      return v28 + 1;
    }

    else
    {
      *v33 = v35;
      return *v33;
    }
  }

  else
  {
    sub_29B088388();
    v17 = v9;
    v10 = sub_29B0BB0C8(&v35);
    if (sub_29B17217C(v17, v10, v31))
    {
      v24[1] = v35;
      v11 = v35;
      sub_29B0BE6D8();
      v25 = v11;
      v23 = sub_29B0BCC78();
      sub_29B0BCCB0(v24, v23);
      v16 = 1;
      if (!sub_29B0BAF80(&v25, v24))
      {
        sub_29B088388();
        v15 = v12;
        v14 = v31;
        sub_29B0BB0C8(&v25);
        v16 = sub_29B17212C(v15, v14);
      }

      if ((v16 & 1) == 0)
      {
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
      }

      if (*(sub_29B0BCBCC(&v35) + 8))
      {
        *v33 = v25;
        return *v33;
      }

      else
      {
        *v33 = v35;
        return v35 + 1;
      }
    }

    else
    {
      *v33 = v35;
      *v32 = v35;
      return v32;
    }
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const&>()
{
  sub_29B088388();
  sub_29B16F544();
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  v8 = v3;
  if (v9)
  {
    while (1)
    {
      while (1)
      {
        sub_29B088388();
        if ((sub_29B17212C(v4, a3) & 1) == 0)
        {
          break;
        }

        if (!*v9)
        {
          *a2 = v9;
          return *a2;
        }

        v8 = v9;
        v9 = *v9;
      }

      sub_29B088388();
      if ((sub_29B17217C(v5, (v9 + 4), a3) & 1) == 0)
      {
        break;
      }

      if (!v9[1])
      {
        *a2 = v9;
        return v9 + 1;
      }

      v8 = v9 + 1;
      v9 = v9[1];
    }

    *a2 = v9;
    return v8;
  }

  else
  {
    sub_29B0BC18C();
    *a2 = v6;
    return *a2;
  }
}

uint64_t sub_29B173208(uint64_t a1)
{
  v1 = sub_29B0BC3EC();
  sub_29ABED2CC(a1, v1);
  return a1;
}

BOOL std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,void *> *,long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a2;
  v7 = a3;
  v6 = a1;
  v5 = sub_29B167558();
  result = sub_29B167588(&v8, &v7);
  if (result)
  {
    sub_29B0BCCB0(&v4, v5);
    sub_29B0E9B98(&v8);
    sub_29B173310();
  }

  return result;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork> const&>()
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
}

{
    ;
  }
}

void std::__tree_key_value_types<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>>::__get_key[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork> const,0>()
{
  ;
}

{
    ;
  }
}

uint64_t *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4, uint64_t *a5)
{
  v35 = a2;
  v34 = a1;
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v29 = sub_29B0BCC78();
  sub_29B0BCCB0(&v30, v29);
  v22 = 1;
  if (!sub_29B0BAF80(&v35, &v30))
  {
    sub_29B088388();
    v21 = v5;
    v20 = v31;
    sub_29B0BB0C8(&v35);
    v22 = sub_29B17212C(v21, v20);
  }

  if (v22)
  {
    v28 = v35;
    v26 = sub_29B0BCD1C();
    sub_29B0BCCB0(&v27, v26);
    v19 = 1;
    if (!sub_29B0BAF80(&v28, &v27))
    {
      sub_29B088388();
      v18 = v6;
      v7 = sub_29B0BCD54(&v28);
      v8 = sub_29B0BB0C8(v7);
      v19 = sub_29B17217C(v18, v8, v31);
    }

    if ((v19 & 1) == 0)
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    if (*v35)
    {
      *v33 = v28;
      return v28 + 1;
    }

    else
    {
      *v33 = v35;
      return *v33;
    }
  }

  else
  {
    sub_29B088388();
    v17 = v9;
    v10 = sub_29B0BB0C8(&v35);
    if (sub_29B17217C(v17, v10, v31))
    {
      v24[1] = v35;
      v11 = v35;
      sub_29B0BE6D8();
      v25 = v11;
      v23 = sub_29B0BCC78();
      sub_29B0BCCB0(v24, v23);
      v16 = 1;
      if (!sub_29B0BAF80(&v25, v24))
      {
        sub_29B088388();
        v15 = v12;
        v14 = v31;
        sub_29B0BB0C8(&v25);
        v16 = sub_29B17212C(v15, v14);
      }

      if ((v16 & 1) == 0)
      {
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
      }

      if (*(sub_29B0BCBCC(&v35) + 8))
      {
        *v33 = v25;
        return *v33;
      }

      else
      {
        *v33 = v35;
        return v35 + 1;
      }
    }

    else
    {
      *v33 = v35;
      *v32 = v35;
      return v32;
    }
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork> const&>()
{
  sub_29B088388();
  sub_29B173AD4();
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  v8 = v3;
  if (v9)
  {
    while (1)
    {
      while (1)
      {
        sub_29B088388();
        if ((sub_29B17212C(v4, a3) & 1) == 0)
        {
          break;
        }

        if (!*v9)
        {
          *a2 = v9;
          return *a2;
        }

        v8 = v9;
        v9 = *v9;
      }

      sub_29B088388();
      if ((sub_29B17217C(v5, (v9 + 4), a3) & 1) == 0)
      {
        break;
      }

      if (!v9[1])
      {
        *a2 = v9;
        return v9 + 1;
      }

      v8 = v9 + 1;
      v9 = v9[1];
    }

    *a2 = v9;
    return v8;
  }

  else
  {
    sub_29B0BC18C();
    *a2 = v6;
    return *a2;
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,void *>>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork> const&,0>()
{
  std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,void *>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork> const&>();
}

{
    ;
  }
}

void *sub_29B173BB8(uint64_t a1, std::align_val_t a2)
{
  v3 = 112 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B173C4C();
  }

  return sub_29B0BD424(v3, a2);
}

void **sub_29B173D54(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29ABED178(v3);
  return a1;
}

void sub_29B173DF4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialNode>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialNode>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialNode>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialNode>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialNode>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdMaterialNode*,pxrInternal__aapl__pxrReserved__::HdMaterialNode*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A10E7C8(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialNode>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdMaterialNode*,pxrInternal__aapl__pxrReserved__::HdMaterialNode*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B173FC0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialNode>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdMaterialNode*,pxrInternal__aapl__pxrReserved__::HdMaterialNode*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B174018(&v6, a1, a4);
  v7 = sub_29B174058(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B174058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29ABECF0C(a1, v9, v8, v5);
  return sub_29B174128(a4, v6);
}

void *sub_29B1740DC(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 40 * a3;
  return result;
}

void sub_29B174270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A424A8C((a10 + 8));
  sub_29A1DCEA8(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29B1742F8(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29ABED178(a1);
  }

  return a1;
}

void **sub_29B174344(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29ABECE84(v3);
  return a1;
}

void sub_29B1743BC(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship*,pxrInternal__aapl__pxrReserved__::HdMaterialRelationship*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A15A71C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship*,pxrInternal__aapl__pxrReserved__::HdMaterialRelationship*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B174588(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship*,pxrInternal__aapl__pxrReserved__::HdMaterialRelationship*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B1745E0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1745E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29ABECCE0(a1, v9, v8, v5);
  return sub_29B174664(a4, v6);
}

uint64_t sub_29B1747BC(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29ABECE84(a1);
  }

  return a1;
}

BOOL std::unordered_map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>>>::insert<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v4 = a3;
  result = sub_29B167588(&v5, &v4);
  if (result)
  {
    sub_29B174F64();
    sub_29B174EC0();
  }

  return result;
}

size_t *std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__rehash<true>(uint64_t a1, size_t a2)
{
  v13[1] = a1;
  v13[0] = a2;
  if (a2 == 1)
  {
    v13[0] = 2;
  }

  else if ((v13[0] & (v13[0] - 1)) != 0)
  {
    v13[0] = std::__next_prime(v13[0]);
  }

  result = sub_29B169F9C(a1);
  v12 = result;
  if (v13[0] > result)
  {
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__do_rehash<true>();
  }

  if (v13[0] < v12)
  {
    if (sub_29B16A228(v12))
    {
      v8 = *sub_29B16A2F8(a1);
      v3 = sub_29B16A310(a1);
      v4 = sub_29B16A2E0(v8 / *v3);
      prime = sub_29B16A274(v4);
    }

    else
    {
      v7 = *sub_29B16A2F8(a1);
      v5 = sub_29B16A310(a1);
      v6 = sub_29B16A2E0(v7 / *v5);
      prime = std::__next_prime(v6);
    }

    v11 = prime;
    result = sub_29B0E1A40(v13, &v11);
    v13[0] = *result;
    if (v13[0] < v12)
    {
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__do_rehash<true>();
    }
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__do_rehash<true>(uint64_t a1, uint64_t a2)
{
  sub_29B0BD304(a1);
  sub_29B088388();
  if (a2)
  {
    sub_29B174E14();
  }

  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *> *[],std::__bucket_list_deallocator<std::allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *> *>>>::reset[abi:ne200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *> **,0>();
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *> *[],std::__bucket_list_deallocator<std::allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *> *>>>::reset[abi:ne200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *> **,0>(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29B1695FC((a1 + 1), v2);
  }
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const&>()
{
  sub_29B088388();
  sub_29B175424();
}

{
    ;
  }
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__construct_node_hash<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const&>()
{
  sub_29B088388();
  sub_29B17586C();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfToken::Hash(pxrInternal__aapl__pxrReserved__::TfToken *this)
{
  pxrInternal__aapl__pxrReserved__::TfHash::operator()<pxrInternal__aapl__pxrReserved__::TfToken const&>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfHash::operator()<pxrInternal__aapl__pxrReserved__::TfToken const&>(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B16ACB8(v2);
  pxrInternal__aapl__pxrReserved__::Tf_HashImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::TfToken const&>();
}

void pxrInternal__aapl__pxrReserved__::Tf_HashImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::TfToken const&>()
{
  pxrInternal__aapl__pxrReserved__::TfHashAppend<pxrInternal__aapl__pxrReserved__::Tf_HashState>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfHashAppend<pxrInternal__aapl__pxrReserved__::Tf_HashState>()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::Get();
}

{
    ;
  }
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::Append<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const*>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AppendImpl<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const*>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AppendImpl<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const*>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AsDerived();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashState::_Append<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const*>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::TfToken::_Rep const*>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::TfToken::_Rep const*>()
{
  pxrInternal__aapl__pxrReserved__::TfHashAppend<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::TfToken::_Rep>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfHashAppend<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::TfToken::_Rep>()
{
  pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::Append<unsigned long>();
}

{
    ;
  }
}

void std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *>>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const&,0>()
{
  std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const&>();
}

{
    ;
  }
}

void *sub_29B175950(uint64_t a1, std::align_val_t a2)
{
  v3 = 40 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B1759C4();
  }

  return sub_29B0BD424(v3, a2);
}

void sub_29B175A94(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29AC1E628((a1 + 1), v2);
  }
}

void sub_29B175AF0()
{
  sub_29B0C0DA8();
  sub_29B0BC338(v0);
  sub_29B088388();
}

uint64_t *sub_29B175B24(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B175B6C(v3);
  return a1;
}

void sub_29B175B6C(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B175BF0(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B0DE1B0(*a1);
    sub_29B0DFE90(v3, v2, v1);
  }
}

void sub_29B175BF0(uint64_t *a1)
{
  sub_29B0DB058(a1);
  sub_29B175C3C(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B175C3C(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B175CEC(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B175EB8(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B175F10(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B175F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B175F94(a1, v9, v8, v5);
  return sub_29B175FD0(a4, v6);
}

uint64_t sub_29B17609C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B0DE888(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B176154(v17, v11);
  v8 = sub_29B175FD0(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B176184(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B175B6C(a1);
  }

  return a1;
}

uint64_t *sub_29B1761D0(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B176218(v3);
  return a1;
}

void sub_29B176218(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B17629C(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B176320(*a1);
    sub_29B1762E8(v3, v2, v1);
  }
}

void sub_29B17629C(uint64_t *a1)
{
  sub_29B16F998(a1);
  sub_29B176348(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B176348(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B176430(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

void sub_29B17649C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*,pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29AB876CC(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*,pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B176668(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*,pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B16FD0C(&v6, a1, a4);
  v7 = sub_29B1766C0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1766C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B176744(a1, v9, v8, v5);
  return sub_29B176780(a4, v6);
}

uint64_t sub_29B17684C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B176904(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B176950(v17, v11);
  v8 = sub_29B176780(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B176980(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 80;
  sub_29B176A0C(a3, a1, v5);
  v4 = &v6[80 * v5];
  return sub_29B0DCFB4(v7, &v4);
}

void *sub_29B176A0C(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 80 * (a3 - 1) + 80);
  }

  return a1;
}

uint64_t sub_29B176A74(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B176218(a1);
  }

  return a1;
}

void **sub_29B176AC0(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A38A7B4(v3);
  return a1;
}

void sub_29B176B64(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B176D30(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B176D88(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B176D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B176E0C(a1, v9, v8, v5);
  return sub_29B176F00(a4, v6);
}

uint64_t sub_29B176E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(&v6, a1, &v8, &v9);
  sub_29B0DD834(&v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B176F78(v7);
  return v5;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>&>();
}

{
    ;
  }
}

uint64_t sub_29B176FDC(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A38A7B4(a1);
  }

  return a1;
}

void **sub_29B177028(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A84BDF8(v3);
  return a1;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery>::_DecRef(unint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    if (!*(result + 24))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_GetNativeRefCount(result, *(result + 32));
    }

    result = sub_29B0BB8EC(*(result + 24), 1, 3);
    if (result == 1)
    {
      sub_29B0BB924(2u);
      pxrInternal__aapl__pxrReserved__::Vt_ArrayForeignDataSource::_ArraysDetached(*(v1 + 3));
    }

    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
  }

  return result;
}

void sub_29B177200(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdSkelBinding>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdSkelBinding>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdSkelBinding>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdSkelBinding>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::UsdSkelBinding>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdSkelBinding*,pxrInternal__aapl__pxrReserved__::UsdSkelBinding*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B177340(a1);
  }

  sub_29B0DCBB0(v7);
  return sub_29B17745C(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::UsdSkelBinding>::__construct_at_end<pxrInternal__aapl__pxrReserved__::UsdSkelBinding*,pxrInternal__aapl__pxrReserved__::UsdSkelBinding*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B166E60(&v6, a1, a4);
  v7 = sub_29B177514(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B177514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29A84C234(a1, v9, v8, v5);
  return sub_29B177598(a4, v6);
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *sub_29B17767C(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  sub_29B1776F0(a1, a2);
  sub_29B0B7F5C(a1 + 24, a2 + 24);
  return a1;
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *sub_29B177728(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  sub_29B168570(a1, a2);
  result = a1;
  *a1 = &unk_2A2063448;
  return result;
}

uint64_t sub_29B177780(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A84BDF8(a1);
  }

  return a1;
}

void **sub_29B1777CC(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A48140C(v3);
  return a1;
}

void sub_29B1778A0(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite*,pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B1779E0(a1);
  }

  sub_29B0DCBB0(v7);
  return sub_29B177B04(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>::__construct_at_end<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite*,pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B16C78C(&v6, a1, a4);
  v7 = sub_29B177BBC(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B177BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B177C40(a1, v9, v8, v5);
  return sub_29B177D34(a4, v6);
}

uint64_t sub_29B177C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(&v6, a1, &v8, &v9);
  sub_29B0DD834(&v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite,pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B177DAC(v7);
  return v5;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite,pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite,pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite&>();
}

{
    ;
  }
}

void sub_29B177E48(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_29B0B9178((a1 + 16), (a2 + 16));
}

uint64_t sub_29B177ED8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B177F2C(a1);
  }

  return a1;
}

BOOL sub_29B177F2C(uint64_t a1)
{
  v5[2] = a1;
  v3 = *a1;
  sub_29B0DF4A4(v5, **(a1 + 16));
  sub_29B0DF4A4(v4, **(a1 + 8));
  return sub_29B177F98(v3, v5[0], v5[1], v4[0], v4[1]);
}

BOOL sub_29B177F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v6[0] = a4;
  v6[1] = a5;
  result = sub_29B0DF4DC(v7, v6);
  if (result)
  {
    sub_29B17800C(v7);
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite,0>();
  }

  return result;
}

uint64_t sub_29B1780E0(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A48140C(a1);
  }

  return a1;
}

void **sub_29B17812C(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A4814F0(v3);
  return a1;
}

void sub_29B1781A4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite*,pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B1782E4(a1);
  }

  sub_29B0DCBB0(v7);
  return sub_29B178408(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>::__construct_at_end<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite*,pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0E135C(&v6, a1, a4);
  v7 = sub_29B1784C0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1784C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B178544(a1, v9, v8, v5);
  return sub_29B178638(a4, v6);
}

uint64_t sub_29B178544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(&v6, a1, &v8, &v9);
  sub_29B0DD834(&v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite,pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B1786B0(v7);
  return v5;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite,pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite,pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite&>();
}

{
    ;
  }
}

uint64_t sub_29B17874C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29B0B975C((a1 + 8), (a2 + 8));
  sub_29B0B975C((a1 + 16), (a2 + 16));
  return a1;
}

uint64_t sub_29B1787AC(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A4814F0(a1);
  }

  return a1;
}

void **sub_29B1787F8(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A1DEB80(v3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfChangeList::Entry>,1u>::_Destruct()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfChangeList::Entry>,1u>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfChangeList::Entry>,1u>::data()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfChangeList::Entry>,1u>::_GetStorage();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfChangeList::Entry>,1u>::_GetStorage()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfChangeList::Entry>,1u>::_IsLocal();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfChangeList::Entry>,1u>::_GetLocalStorage()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<200ul,8ul,1ul>::GetLocalStorage();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfChangeList::Entry>,1u>::_GetRemoteStorage()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<200ul,8ul,1ul>::GetRemoteStorage();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<200ul,8ul,1ul>::GetLocalStorage()
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue>>,3u>::_Destruct()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue>>,3u>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue>>,3u>::data()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue>>,3u>::_GetStorage();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue>>,3u>::_GetStorage()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue>>,3u>::_IsLocal();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue>>,3u>::_GetLocalStorage()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<40ul,8ul,3ul>::GetLocalStorage();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue>>,3u>::_GetRemoteStorage()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<40ul,8ul,3ul>::GetRemoteStorage();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<40ul,8ul,3ul>::GetLocalStorage()
{
  ;
}

{
    ;
  }
}

void *sub_29B178DB0(void *a1)
{
  sub_29B178DEC((a1 + 1));
  sub_29A424A8C(a1);
  return a1;
}

uint64_t sub_29B178E1C(uint64_t a1)
{
  sub_29A3D65BC(a1 + 16);
  sub_29A3D65BC(a1);
  return a1;
}

void sub_29B178E58(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>,void,0>();
}

void std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>::__init_with_size[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>*,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A4478EC(a1, v8);
    std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>::__construct_at_end<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>*,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B179024(v7);
}

void *std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>::__construct_at_end<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>*,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B17909C(&v6, a1, a4);
  v7 = sub_29B1790DC(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1790DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B1791AC(a1, v9, v8, v5);
  return sub_29B1792A0(a4, v6);
}

void *sub_29B179160(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 232 * a3;
  return result;
}

uint64_t sub_29B1791AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(&v6, a1, &v8, &v9);
  sub_29B0DD834(&v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B179318(v7);
  return v5;
}

void std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>&,0>()
{
  std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>&>();
}

{
    ;
  }
}

uint64_t sub_29B179410(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A1DEB80(a1);
  }

  return a1;
}

void sub_29B179568(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 - 24) = a1;
  *(v10 - 28) = a2;
  sub_29B17948C(a10);
  _Unwind_Resume(*(v10 - 24));
}

BOOL std::unordered_set<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::insert<std::__hash_const_iterator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v4 = a3;
  result = sub_29B0BC5E4(&v5, &v4);
  if (result)
  {
    sub_29B16A658();
    sub_29B179C48();
  }

  return result;
}

void sub_29B179668(uint64_t a1, uint64_t a2)
{
  sub_29B0BD304(a2);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> *>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> *>,void,0>();
}

void std::allocator_traits<std::allocator<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> *>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> *>,void,0>()
{
  ;
}

{
    ;
  }
}

void std::allocator_traits<std::allocator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *>>,void,0>()
{
  ;
}

{
    ;
  }
}

size_t *std::__hash_table<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::__rehash<true>(uint64_t a1, size_t a2)
{
  v13[1] = a1;
  v13[0] = a2;
  if (a2 == 1)
  {
    v13[0] = 2;
  }

  else if ((v13[0] & (v13[0] - 1)) != 0)
  {
    v13[0] = std::__next_prime(v13[0]);
  }

  result = sub_29B169F9C(a1);
  v12 = result;
  if (v13[0] > result)
  {
    std::__hash_table<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::__do_rehash<true>();
  }

  if (v13[0] < v12)
  {
    if (sub_29B16A228(v12))
    {
      v8 = *sub_29B16A2F8(a1);
      v3 = sub_29B16A310(a1);
      v4 = sub_29B16A2E0(v8 / *v3);
      prime = sub_29B16A274(v4);
    }

    else
    {
      v7 = *sub_29B16A2F8(a1);
      v5 = sub_29B16A310(a1);
      v6 = sub_29B16A2E0(v7 / *v5);
      prime = std::__next_prime(v6);
    }

    v11 = prime;
    result = sub_29B0E1A40(v13, &v11);
    v13[0] = *result;
    if (v13[0] < v12)
    {
      std::__hash_table<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::__do_rehash<true>();
    }
  }

  return result;
}

void std::__hash_table<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::__do_rehash<true>(uint64_t a1, uint64_t a2)
{
  sub_29B0BD304(a1);
  sub_29B088388();
  if (a2)
  {
    sub_29B179B9C();
  }

  std::unique_ptr<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> *[],std::__bucket_list_deallocator<std::allocator<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> *>>>::reset[abi:ne200100]<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> **,0>();
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> *[],std::__bucket_list_deallocator<std::allocator<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> *>>>::reset[abi:ne200100]<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> **,0>(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29B1695FC((a1 + 1), v2);
  }
}

void std::__hash_table<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>()
{
  sub_29B088388();
  pxrInternal__aapl__pxrReserved__::TfHash::operator()<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfHash::operator()<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B16ACB8(v2);
  pxrInternal__aapl__pxrReserved__::Tf_HashImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>();
}

void std::__hash_table<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::__construct_node_hash<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>()
{
  sub_29B088388();
  sub_29B17A330();
}

{
    ;
  }
}

void std::allocator_traits<std::allocator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,0>()
{
  std::allocator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>();
}

{
    ;
  }
}

void *sub_29B17A414(uint64_t a1, std::align_val_t a2)
{
  v3 = 32 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B17A484();
  }

  return sub_29B0BD424(v3, a2);
}

void sub_29B17A554(void **a1, void *a2)
{
  __p = *a1;
  *a1 = a2;
  if (__p)
  {
    sub_29A0ECBB4((a1 + 1), __p);
  }
}

void **sub_29B17A5B0(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A23F9D4(v3);
  return a1;
}

void sub_29B17A628(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>,void,0>();
}

void std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::__init_with_size[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::__construct_at_end<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B17A7F4(v7);
}

void *std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::__construct_at_end<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B17A84C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B17A84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29A23FBEC(a1, v9, v8, v5);
  return sub_29B17A8D0(a4, v6);
}

uint64_t sub_29B17A97C(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A23F9D4(a1);
  }

  return a1;
}

uint64_t sub_29B17AA28(uint64_t a1)
{
  v1 = sub_29B0BC3EC();
  sub_29A447324(a1, v1);
  return a1;
}

BOOL std::map<pxrInternal__aapl__pxrReserved__::SdfPath,int,pxrInternal__aapl__pxrReserved__::SdfPath::FastLessThan,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,int>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,void *> *,long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a2;
  v7 = a3;
  v6 = a1;
  v5 = sub_29B167558();
  result = sub_29B167588(&v8, &v7);
  if (result)
  {
    sub_29B0BCCB0(&v4, v5);
    sub_29B17ACC4(&v8);
    sub_29B17AC70();
  }

  return result;
}

void sub_29B17ABE4(void *a1)
{
  *a1 = 0;
  sub_29B0BC15C(a1 + 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,void *>>,void,0>();
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,void *>>,void,0>()
{
  ;
}

{
    ;
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,pxrInternal__aapl__pxrReserved__::SdfPath::FastLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,int> const&>()
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,pxrInternal__aapl__pxrReserved__::SdfPath::FastLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>();
}

{
    ;
  }
}

void std::__tree_key_value_types<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>>::__get_key[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,int> const,0>()
{
  ;
}

{
    ;
  }
}

uint64_t *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,pxrInternal__aapl__pxrReserved__::SdfPath::FastLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  v13 = a1;
  v12 = a3;
  v11[2] = a4;
  v11[1] = a5;
  v10 = sub_29B0BCC78();
  sub_29B0BCCB0(v11, v10);
  if (!sub_29B0BAF80(&v14, v11))
  {
    sub_29B088388();
    sub_29B0BAFE8(&v14);
    sub_29B17B2F0();
  }

  v9 = v14;
  v7 = sub_29B0BCD1C();
  sub_29B0BCCB0(&v8, v7);
  if (!sub_29B0BAF80(&v9, &v8))
  {
    sub_29B088388();
    v5 = sub_29B0BCD54(&v9);
    sub_29B0BAFE8(v5);
    sub_29B17B340();
  }

  if (*v14)
  {
    *v12 = v9;
    return v9 + 1;
  }

  else
  {
    *v12 = v14;
    return *v12;
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,pxrInternal__aapl__pxrReserved__::SdfPath::FastLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,int> const&>()
{
  sub_29B088388();
  sub_29B17B544();
}

{
    ;
  }
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,pxrInternal__aapl__pxrReserved__::SdfPath::FastLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, uint64_t a2)
{
  v4 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  if (v4)
  {
    sub_29B088388();
    sub_29B17B2F0();
  }

  sub_29B0BC18C();
  *a2 = v2;
  return *a2;
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,void *>>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,int>,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,int> const&,0>()
{
  std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,void *>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,int>,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,int> const&>();
}

{
    ;
  }
}

void *sub_29B17B628(uint64_t a1, std::align_val_t a2)
{
  v3 = 40 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B17B69C();
  }

  return sub_29B0BD424(v3, a2);
}

void sub_29B17B76C(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29B17B7C8((a1 + 1), v2);
  }
}

void sub_29B17B7C8(uint64_t a1, void *a2)
{
  if (*(a1 + 8))
  {
    sub_29B166294();
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,void *>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,int>,void,0>();
  }

  if (a2)
  {
    sub_29B0BC444(*a1, a2, 1);
  }
}

void **sub_29B17B88C(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A217894(v3);
  return a1;
}

void sub_29B17B904(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A10E7C8(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B17BAD0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B174018(&v6, a1, a4);
  v7 = sub_29B17BB28(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B17BB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29A218A0C(a1, v9, v8, v5);
  return sub_29B17BBAC(a4, v6);
}

std::string *sub_29B17BC90(std::string *a1, const std::string *a2)
{
  std::string::basic_string(a1, a2);
  sub_29B0C04A4(a1[1].__r_.__value_.__r.__words, a2[1].__r_.__value_.__r.__words);
  return a1;
}

uint64_t sub_29B17BD04(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A217894(a1);
  }

  return a1;
}

uint64_t *sub_29B17BD50(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B17BD98(v3);
  return a1;
}

void sub_29B17BD98(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B17BE1C(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B17BE68(*a1);
    sub_29B0BC444(v3, v2, v1);
  }
}

void sub_29B17BE1C(uint64_t *a1)
{
  sub_29B173D9C(a1);
  sub_29B17BE90(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B17BE90(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo,0>();
  }

  *(result + 8) = a2;
  return result;
}

uint64_t *sub_29B17BFFC(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B17C044(v3);
  return a1;
}

void sub_29B17C044(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B17C0C8(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B0DECEC(*a1);
    sub_29B169658(v3, v2, v1);
  }
}

void sub_29B17C0C8(uint64_t *a1)
{
  sub_29B0DB240(a1);
  sub_29B17C114(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B17C114(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<unsigned long>>::destroy[abi:ne200100]<unsigned long,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<unsigned long>>::destroy[abi:ne200100]<unsigned long,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B17C1C4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo*,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B17C304(a1);
  }

  sub_29B0DCBB0(v7);
  return sub_29B17C428(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>::__construct_at_end<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo*,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B174018(&v6, a1, a4);
  v7 = sub_29B17C4E0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B17C4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B17C564(a1, v9, v8, v5);
  return sub_29B17C658(a4, v6);
}

uint64_t sub_29B17C564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(&v6, a1, &v8, &v9);
  sub_29B0DD834(&v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B17C6D0(v7);
  return v5;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo&>();
}

{
    ;
  }
}

void sub_29B17C7E8(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<unsigned long>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<unsigned long>,void,0>();
}

void std::allocator_traits<std::allocator<unsigned long>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<unsigned long>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A00C968(a1, v8);
    std::vector<unsigned long>::__construct_at_end<unsigned long *,unsigned long *>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B17C9B4(v7);
}

void *std::vector<unsigned long>::__construct_at_end<unsigned long *,unsigned long *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DF098(&v6, a1, a4);
  v7 = sub_29B17CA0C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B17CA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B17CA90(a1, v9, v8, v5);
  return sub_29B17CACC(a4, v6);
}

uint64_t sub_29B17CB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B17CC50(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B17CC9C(v17, v11);
  v8 = sub_29B17CACC(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B17CCCC(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 8;
  sub_29B17CD50(a3, a1, v5);
  v4 = &v6[8 * v5];
  return sub_29B0DCFB4(v7, &v4);
}

void *sub_29B17CD50(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 8 * (a3 - 1) + 8);
  }

  return a1;
}

uint64_t sub_29B17CDB4(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B17C044(a1);
  }

  return a1;
}

uint64_t sub_29B17CE00(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B17BD98(a1);
  }

  return a1;
}

void sub_29B17CE4C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  std::string::basic_string((a1 + 24), (a2 + 24));
  sub_29B15E0A8((a1 + 48));
}

uint64_t sub_29B17CEDC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  sub_29B0C0434(a1 + 24, a2 + 24);
  sub_29B0CBDC8((a1 + 48), (a2 + 48));
  return a1;
}

void ***sub_29B17CF44(void ***a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B17CF8C(v3);
  return a1;
}

void sub_29B17CF8C(void ****a1)
{
  if (**a1)
  {
    sub_29A102A5C(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B0DD278(*a1);
    sub_29B1702A4(v3, v2, v1);
  }
}

void sub_29B17D040(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite*,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B17D180(a1);
  }

  sub_29B0DCBB0(v7);
  return sub_29B17D29C(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>::__construct_at_end<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite*,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B17D354(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B17D354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B17D3D8(a1, v9, v8, v5);
  return sub_29B17D4CC(a4, v6);
}

uint64_t sub_29B17D3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(&v6, a1, &v8, &v9);
  sub_29B0DD834(&v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B17D544(v7);
  return v5;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite&>();
}

{
    ;
  }
}

std::string *sub_29B17D5E0(std::string *a1, const std::string *a2)
{
  std::string::basic_string(a1, a2);
  result = a1;
  a1[1].__r_.__value_.__r.__words[0] = a2[1].__r_.__value_.__r.__words[0];
  return result;
}

uint64_t sub_29B17D624(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B17CF8C(a1);
  }

  return a1;
}

void **sub_29B17D670(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A108138(v3);
  return a1;
}

void sub_29B17D714(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode*,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A10C514(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>::__construct_at_end<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode*,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B17D8E0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>::__construct_at_end<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode*,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B1668EC(&v6, a1, a4);
  v7 = sub_29B17D938(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B17D938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29A10C564(a1, v9, v8, v5);
  return sub_29B17D9BC(a4, v6);
}

uint64_t sub_29B17DA68(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A108138(a1);
  }

  return a1;
}

void sub_29B18240C(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  sub_29B18247C(__dst, v4);
}

void sub_29B18247C(const void *a1, const void *a2)
{
  v6 = a1;
  v5 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v3, a2, sizeof(v3));
  pxrInternal__aapl__pxrReserved__::GfBBox3d::operator==();
}

BOOL sub_29B18250C(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B18257C(__dst, v5);
}

BOOL sub_29B18257C(const void *a1, const void *a2)
{
  *&__dst[17] = a1;
  *&__dst[16] = a2;
  memcpy(__dst, a1, 0x80uLL);
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==(__dst, v4);
}

BOOL static pxrInternal__aapl__pxrReserved__.pxr_half.half.== infix(_:_:)(__int16 a1, __int16 a2, const pxrInternal__aapl__pxrReserved__::pxr_half::half *a3)
{
  v5[5] = a1;
  v5[1] = a2;
  v5[0] = a1;
  v4 = a2;
  return Overlay::__operatorEqualsEquals(v5, &v4, a3);
}

void sub_29B182D90(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  sub_29B182DF8(__dst, v4);
}

void sub_29B182DF8(const void *a1, const void *a2)
{
  v6 = a1;
  v5 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v3, a2, sizeof(v3));
  pxrInternal__aapl__pxrReserved__::GfRange3d::operator==();
}

void sub_29B1830D0(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  sub_29B183138(__dst, v4);
}

void sub_29B183138(const void *a1, const void *a2)
{
  v6 = a1;
  v5 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v3, a2, sizeof(v3));
  pxrInternal__aapl__pxrReserved__::GfDualQuatd::operator==();
}

void sub_29B1837EC(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  sub_29B183854(__dst, v4);
}

void sub_29B183854(const void *a1, const void *a2)
{
  v6 = a1;
  v5 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v3, a2, sizeof(v3));
  pxrInternal__aapl__pxrReserved__::GfRay::operator==();
}

void sub_29B183F8C(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  sub_29B183FF4(__dst, v4);
}

void sub_29B183FF4(const void *a1, const void *a2)
{
  v6 = a1;
  v5 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v3, a2, sizeof(v3));
  pxrInternal__aapl__pxrReserved__::GfLine::operator==();
}

void sub_29B184148(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  sub_29B1841B0(__dst, v4);
}

void sub_29B1841B0(const void *a1, const void *a2)
{
  v6 = a1;
  v5 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v3, a2, sizeof(v3));
  pxrInternal__aapl__pxrReserved__::GfLineSeg::operator==();
}

void sub_29B184238(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  sub_29B1842A0(__dst, v4);
}

void sub_29B1842A0(const void *a1, const void *a2)
{
  v6 = a1;
  v5 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v3, a2, sizeof(v3));
  pxrInternal__aapl__pxrReserved__::GfLineSeg2d::operator==();
}

BOOL sub_29B184364(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v10[8] = a1;
  v10[9] = a2;
  v10[10] = a3;
  v10[11] = a4;
  v10[4] = a5;
  v10[5] = a6;
  v10[6] = a7;
  v10[7] = a8;
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v9[0] = a5;
  v9[1] = a6;
  v9[2] = a7;
  v9[3] = a8;
  return pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator==(v10, v9);
}

BOOL sub_29B184430(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  v10[8] = a1;
  v10[9] = a2;
  v10[10] = a3;
  v10[11] = a4;
  v10[4] = a5;
  v10[5] = a6;
  v10[6] = a7;
  v10[7] = a8;
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v9[0] = a5;
  v9[1] = a6;
  v9[2] = a7;
  v9[3] = a8;
  return pxrInternal__aapl__pxrReserved__::GfMatrix2f::operator==(v10, v9);
}

BOOL sub_29B1844B8(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B184520(__dst, v5);
}

BOOL sub_29B184520(const void *a1, const void *a2)
{
  v7 = a1;
  v6 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator==(__dst, v4);
}

BOOL sub_29B1845A8(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B184610(__dst, v5);
}

BOOL sub_29B184610(const void *a1, const void *a2)
{
  *&__dst[10] = a1;
  *&__dst[9] = a2;
  memcpy(__dst, a1, 0x48uLL);
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator==(__dst, v4);
}

BOOL sub_29B184698(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B184700(__dst, v5);
}

BOOL sub_29B184700(const void *a1, const void *a2)
{
  v7 = a1;
  v6 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator==(__dst, v4);
}

BOOL sub_29B184980(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B1849F0(__dst, v5);
}

BOOL sub_29B1849F0(const void *a1, const void *a2)
{
  *&__dst[18] = a1;
  *&__dst[17] = a2;
  memcpy(__dst, a1, 0x88uLL);
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::GfTransform::operator==(__dst, v4);
}

BOOL sub_29B184BCC(const char *a1, const char *a2, const char *a3, const char *a4, const char *a5, const char *a6)
{
  v8[12] = a1;
  v8[13] = a2;
  v8[14] = a3;
  v8[9] = a4;
  v8[10] = a5;
  v8[11] = a6;
  v8[6] = a1;
  v8[7] = a2;
  v8[8] = a3;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v7[0] = a4;
  v7[1] = a5;
  v7[2] = a6;
  return pxrInternal__aapl__pxrReserved__::TraceStaticKeyData::operator==(v8, v7);
}

uint64_t sub_29B184CFC(const pxrInternal__aapl__pxrReserved__::VtDictionary *a1, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&v9, a1);
  sub_29B0C0374(&v8, &v9);
  sub_29AE997DC(&v9);
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&v7, a2);
  sub_29B0C0374(&v6, &v7);
  sub_29AE997DC(&v7);
  v4 = pxrInternal__aapl__pxrReserved__::operator==(&v8, &v6, v2);
  sub_29AE997DC(&v6);
  sub_29AE997DC(&v8);
  return v4;
}

BOOL static pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator<UnsafeMutablePointer<std.__1.map<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>, pxrInternal__aapl__pxrReserved__.VtValue, std.__1.less<Void>, std.__1.allocator<std.__1.pair<__cxxConst<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>>, pxrInternal__aapl__pxrReserved__.VtValue>>>>, std.__1.__map_iterator<std.__1.__tree_iterator<std.__1.__value_type<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>, pxrInternal__aapl__pxrReserved__.VtValue>, UnsafeMutablePointer<std.__1.__tree_node<std.__1.__value_type<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>, pxrInternal__aapl__pxrReserved__.VtValue>, UnsafeMutablePointer<Void>>>, CLong>>>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[8] = a1;
  v6[9] = a2;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return Overlay::__operatorEqualsEquals(v6, v5);
}

BOOL static pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator<UnsafePointer<std.__1.map<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>, pxrInternal__aapl__pxrReserved__.VtValue, std.__1.less<Void>, std.__1.allocator<std.__1.pair<__cxxConst<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>>, pxrInternal__aapl__pxrReserved__.VtValue>>>>, std.__1.__map_const_iterator<std.__1.__tree_const_iterator<std.__1.__value_type<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>, pxrInternal__aapl__pxrReserved__.VtValue>, UnsafeMutablePointer<std.__1.__tree_node<std.__1.__value_type<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>, pxrInternal__aapl__pxrReserved__.VtValue>, UnsafeMutablePointer<Void>>>, CLong>>>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[8] = a1;
  v6[9] = a2;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return Overlay::__operatorEqualsEquals(v6, v5);
}

uint64_t sub_29B185048(__int128 *a1, __int128 *a2)
{
  sub_29B199628(v8, a1);
  sub_29B1996D4(v7, v8);
  sub_29A1D18FC(v8);
  sub_29B199628(v6, a2);
  sub_29B1996D4(v5, v6);
  sub_29A1D18FC(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29A1D18FC(v5);
  sub_29A1D18FC(v7);
  return v3;
}

void sub_29B185A10(uint64_t a1, uint64_t a2)
{
  sub_29B16DD04(&v6, a1);
  sub_29B198C7C(v5, &v6);
  sub_29B130DF8(&v6);
  sub_29B16DD04(&v4, a2);
  sub_29B198C7C(v3, &v4);
  sub_29B130DF8(&v4);
  pxrInternal__aapl__pxrReserved__::operator==();
}

void sub_29B185ADC(uint64_t a1, uint64_t a2)
{
  sub_29B16D47C(v6, a1);
  sub_29B198AC8(v5, v6);
  sub_29A396050(v6);
  sub_29B16D47C(v4, a2);
  sub_29B198AC8(v3, v4);
  sub_29A396050(v4);
  pxrInternal__aapl__pxrReserved__::operator==();
}