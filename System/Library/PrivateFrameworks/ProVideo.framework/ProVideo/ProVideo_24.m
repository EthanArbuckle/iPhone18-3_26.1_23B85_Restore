uint64_t PCXMLWriteStream::writeValue(PCXMLWriteStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  started = PCXMLWriteStream::terminateStartTag(this, a2, a3, a4, a5, a6, a7, a8);
  snprintf(started, (this + 92) - started + 1024, "%d", v8);
  v11 = *(this + 10);

  return PCStream::operator<<(v11, this + 92);
}

{
  v8 = a2;
  started = PCXMLWriteStream::terminateStartTag(this, a2, a3, a4, a5, a6, a7, a8);
  snprintf(started, (this + 92) - started + 1024, "%u", v8);
  v11 = *(this + 10);

  return PCStream::operator<<(v11, this + 92);
}

{
  started = PCXMLWriteStream::terminateStartTag(this, a2, a3, a4, a5, a6, a7, a8);
  snprintf(started, (this + 92) - started + 1024, "%lld", a2);
  v11 = *(this + 10);

  return PCStream::operator<<(v11, this + 92);
}

{
  started = PCXMLWriteStream::terminateStartTag(this, a2, a3, a4, a5, a6, a7, a8);
  snprintf(started, (this + 92) - started + 1024, "%llu", a2);
  v11 = *(this + 10);

  return PCStream::operator<<(v11, this + 92);
}

uint64_t PCXMLWriteStream::writeValue(PCXMLWriteStream *this, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  started = PCXMLWriteStream::terminateStartTag(this, a3, a4, a5, a6, a7, a8, a9);
  snprintf(started, (this + 92) - started + 1024, "%.10g", a2);
  v12 = *(this + 10);

  return PCStream::operator<<(v12, this + 92);
}

uint64_t PCXMLWriteStream::writeValue(PCXMLWriteStream *this, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  started = PCXMLWriteStream::terminateStartTag(this, a3, a4, a5, a6, a7, a8, a9);
  snprintf(started, (this + 92) - started + 1024, "%.17lg", a2);
  v12 = *(this + 10);

  return PCStream::operator<<(v12, this + 92);
}

uint64_t PCXMLWriteStream::writeValue(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  started = PCXMLWriteStream::terminateStartTag(a1, a2, a3, a4, a5, a6, a7, a8);
  snprintf(started, a1 + 92 - started + 1024, "%08x%08x%08x%08x", *a2, a2[1], a2[2], a2[3]);
  v11 = *(a1 + 80);

  return PCStream::operator<<(v11, (a1 + 92));
}

void PCXMLWriteStream::writeValue(PCXMLWriteStream *this, PCString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(this + 9))
  {
    PCPrint("value not within an element body!\n", a2, a3, a4, a5, a6, a7, a8, v19);
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = 0u;
    *(exception + 1) = 0u;
    *(exception + 2) = 0u;
    *(exception + 3) = 0u;
    PCException_NoElementDefined::PCException_NoElementDefined(exception);
  }

  v9 = PCString::cf_str(a2);
  v10 = myCFXMLCreateStringByEscapingEntities(v9);
  v11 = 4 * CFStringGetLength(v10);
  v12 = malloc_type_malloc(v11 + 256, 0x100004077774924uLL);
  if (v12)
  {
    v13 = v12;
    v14 = *(this + 9) + *(this + 8) - 1;
    v15 = *(*(this + 5) + ((v14 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v14;
    v16 = v12;
    if ((*(v15 + 13) & 1) == 0)
    {
      *v12 = 62;
      v16 = v12 + 1;
      *(v15 + 12) = 256;
    }

    *v16 = 0;
    v17 = strlen(v12);
    CFStringGetCString(v10, &v13[v17], v11, 0x8000100u);
    PCStream::operator<<(*(this + 10), v13);
    free(v13);
  }

  CFRelease(v10);
}

CFMutableStringRef myCFXMLCreateStringByEscapingEntities(CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  v3.length = CFStringGetLength(MutableCopy);
  v3.location = 0;
  CFStringFindAndReplace(MutableCopy, @"&", @"&amp;", v3, 0);
  v4.length = CFStringGetLength(MutableCopy);
  v4.location = 0;
  CFStringFindAndReplace(MutableCopy, @"<", @"&lt;", v4, 0);
  v5.length = CFStringGetLength(MutableCopy);
  v5.location = 0;
  CFStringFindAndReplace(MutableCopy, @">", @"&gt;", v5, 0);
  v6.length = CFStringGetLength(MutableCopy);
  v6.location = 0;
  CFStringFindAndReplace(MutableCopy, @"", @"&quot;", v6, 0);
  return MutableCopy;
}

uint64_t PCXMLWriteStream::writeValue(PCXMLWriteStream *this, const CMTime *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  started = PCXMLWriteStream::terminateStartTag(this, a2, a3, a4, a5, a6, a7, a8);
  snprintf(started, (this + 92) - started + 1024, "%lld %d %x %lld", a2->value, a2->timescale, a2->flags, a2->epoch);
  v11 = *(this + 10);

  return PCStream::operator<<(v11, this + 92);
}

uint64_t PCXMLWriteStream::getAttributeInfo(PCXMLWriteStream *this, int a2)
{
  v2 = *(this + 9);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = 0u;
    *(exception + 1) = 0u;
    *(exception + 2) = 0u;
    *(exception + 3) = 0u;
    PCException_NoElementDefined::PCException_NoElementDefined(exception);
    v10 = PCException_NoElementDefined::~PCException_NoElementDefined;
LABEL_10:
    __cxa_throw(exception, v9, v10);
  }

  v4 = *(this + 2);
  if (*(this + 1) == v4 || (result = *(v4 - 8)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = 0u;
    *(exception + 1) = 0u;
    *(exception + 2) = 0u;
    *(exception + 3) = 0u;
    PCException_ScopeUndefined::PCException_ScopeUndefined(exception);
    v10 = PCException_ScopeUndefined::~PCException_ScopeUndefined;
    goto LABEL_10;
  }

  if (!*result)
  {
LABEL_9:
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = 0u;
    *(exception + 1) = 0u;
    *(exception + 2) = 0u;
    *(exception + 3) = 0u;
    PCException_AttributeUndefined::PCException_AttributeUndefined(exception);
    v10 = PCException_AttributeUndefined::~PCException_AttributeUndefined;
    goto LABEL_10;
  }

  v6 = *(*(*(this + 5) + (((v2 + *(this + 8) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v2 + *(this + 64) - 1) + 8);
  while (*(result + 8) != v6 || *(result + 12) != a2)
  {
    v7 = *(result + 16);
    result += 16;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t PCXMLWriteStream::writeAttribute(PCXMLWriteStream *this, int a2, int a3)
{
  AttributeInfo = PCXMLWriteStream::getAttributeInfo(this, a2);
  snprintf(this + 92, 0x400uLL, " %s=%u", *AttributeInfo, a3);
  v6 = *(this + 10);

  return PCStream::operator<<(v6, this + 92);
}

{
  AttributeInfo = PCXMLWriteStream::getAttributeInfo(this, a2);
  snprintf(this + 92, 0x400uLL, " %s=%d", *AttributeInfo, a3);
  v6 = *(this + 10);

  return PCStream::operator<<(v6, this + 92);
}

uint64_t PCXMLWriteStream::writeAttribute(PCXMLWriteStream *this, int a2, uint64_t a3)
{
  AttributeInfo = PCXMLWriteStream::getAttributeInfo(this, a2);
  snprintf(this + 92, 0x400uLL, " %s=%llu", *AttributeInfo, a3);
  v6 = *(this + 10);

  return PCStream::operator<<(v6, this + 92);
}

{
  AttributeInfo = PCXMLWriteStream::getAttributeInfo(this, a2);
  snprintf(this + 92, 0x400uLL, " %s=%lld", *AttributeInfo, a3);
  v6 = *(this + 10);

  return PCStream::operator<<(v6, this + 92);
}

uint64_t PCXMLWriteStream::writeAttribute(PCXMLWriteStream *this, int a2, float a3)
{
  AttributeInfo = PCXMLWriteStream::getAttributeInfo(this, a2);
  snprintf(this + 92, 0x400uLL, " %s=%.10g", *AttributeInfo, a3);
  v6 = *(this + 10);

  return PCStream::operator<<(v6, this + 92);
}

uint64_t PCXMLWriteStream::writeAttribute(PCXMLWriteStream *this, int a2, double a3)
{
  AttributeInfo = PCXMLWriteStream::getAttributeInfo(this, a2);
  snprintf(this + 92, 0x400uLL, " %s=%.17lg", *AttributeInfo, a3);
  v6 = *(this + 10);

  return PCStream::operator<<(v6, this + 92);
}

uint64_t PCXMLWriteStream::writeAttribute(uint64_t a1, int a2, _DWORD *a3)
{
  AttributeInfo = PCXMLWriteStream::getAttributeInfo(a1, a2);
  snprintf((a1 + 92), 0x400uLL, " %s=%08x%08x%08x%08x", *AttributeInfo, *a3, a3[1], a3[2], a3[3]);
  v6 = *(a1 + 80);

  return PCStream::operator<<(v6, (a1 + 92));
}

void PCXMLWriteStream::writeAttribute(PCXMLWriteStream *this, int a2, PCString *a3)
{
  AttributeInfo = PCXMLWriteStream::getAttributeInfo(this, a2);
  v6 = PCString::cf_str(a3);
  v7 = myCFXMLCreateStringByEscapingEntities(v6);
  v8 = 4 * CFStringGetLength(v7);
  v9 = malloc_type_malloc(v8 + 256, 0x100004077774924uLL);
  if (v9)
  {
    v10 = v9;
    *v9 = 32;
    strcpy(v9 + 1, *AttributeInfo);
    strcat(v10, "=");
    v11 = strlen(v10);
    CFStringGetCString(v7, &v10[v11], v8, 0x8000100u);
    *&v10[strlen(v10)] = 34;
    PCStream::operator<<(*(this + 10), v10);
    free(v10);
  }

  CFRelease(v7);
}

uint64_t PCXMLWriteStream::writeAttribute(PCXMLWriteStream *this, int a2, const CMTime *a3)
{
  AttributeInfo = PCXMLWriteStream::getAttributeInfo(this, a2);
  snprintf(this + 92, 0x400uLL, " %s=%lld %d %x %lld", *AttributeInfo, a3->value, a3->timescale, a3->flags, a3->epoch);
  v6 = *(this + 10);

  return PCStream::operator<<(v6, this + 92);
}

void PCXMLWriteStream::~PCXMLWriteStream(PCXMLWriteStream *this)
{
  *this = &unk_2872091F0;
  PCURL::~PCURL((this + 1120));
  std::deque<PCHash128>::~deque[abi:ne200100](this + 4);
  *this = &unk_287208ED0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_2872091F0;
  PCURL::~PCURL((this + 1120));
  std::deque<PCHash128>::~deque[abi:ne200100](this + 4);
  *this = &unk_287208ED0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_2872091F0;
  PCURL::~PCURL((this + 1120));
  std::deque<PCHash128>::~deque[abi:ne200100](this + 4);
  *this = &unk_287208ED0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void PCException_ScopeUndefined::~PCException_ScopeUndefined(PCString *this)
{
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

void PCException_NoElementDefined::~PCException_NoElementDefined(PCString *this)
{
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

void PCException_AttributeUndefined::~PCException_AttributeUndefined(PCString *this)
{
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

__n128 std::deque<PCXMLWriteStream::PCXMLElementInfo>::push_back(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<PCXMLWriteStream::PCXMLElementInfo>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void *std::deque<PCXMLWriteStream::PCXMLElementInfo>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<PVLoadedEffectItem *>::emplace_back<PVLoadedEffectItem *>(a1, &v10);
}

void sub_25FBC2F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float PCEstimateGammaFromTag(const PCICCTag *a1)
{
  PCGetTransferFunctionFromTag(a1, &v4);
  if (!v4)
  {
    return 0.0;
  }

  v5 = &unk_287209410;
  v6 = 0.0;
  (*(*v4 + 24))(v4, &v5);
  v1 = v6;
  v2 = v4;
  v4 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return v1;
}

void sub_25FBC302C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCEstimateGammaFromTag(a10);
  }

  _Unwind_Resume(exception_object);
}

float PCEstimateGammaFromTransferFunction(uint64_t a1)
{
  v2 = &unk_287209410;
  v3 = 0.0;
  (*(*a1 + 24))(a1, &v2);
  return v3;
}

void anonymous namespace::EstimateGammaVisitor::visit(_anonymous_namespace_::EstimateGammaVisitor *this, const PCICCTransferFunctionLUT *a2)
{
  LUTEnd = PCICCTransferFunctionLUT::getLUTEnd(a2);
  FactoryForSerialization = OZFactoryBase::getFactoryForSerialization(a2);
  v6 = 1.0;
  if (LUTEnd - FactoryForSerialization != 8)
  {
    v6 = PCEstimateGammaNumerically<PCICCTransferFunctionLUT>(a2);
  }

  *(this + 2) = v6;
}

void anonymous namespace::EstimateGammaVisitor::visit(_anonymous_namespace_::EstimateGammaVisitor *this, const PCICCTransferFunctionParametric3 *a2)
{
  Gamma = PCICCTransferFunctionGamma::getGamma(a2);
  v5 = PCICCTransferFunctionParametric3::getA(a2);
  v6 = PCICCTransferFunctionParametric3::getB(a2);
  v7 = PCICCTransferFunctionParametric3::getC(a2);
  v8 = PCICCTransferFunctionParametric3::getD(a2);
  if (PCIs709TransferFunction(Gamma, v5, v6, v7, v8))
  {
    v9 = 1.961;
  }

  else if (PCIssRGBTransferFunction(Gamma, v5, v6, v7, v8))
  {
    v9 = 2.2;
  }

  else
  {
    v9 = PCEstimateGammaNumerically<PCICCTransferFunctionLUT>(a2);
  }

  *(this + 2) = v9;
}

float PCEstimateGammaNumerically<PCICCTransferFunctionLUT>(uint64_t a1)
{
  v2 = (*(*a1 + 16))(a1, 0.5);
  v3.n128_f64[0] = v2;
  if (v2 < 0.01 || v3.n128_f64[0] > 0.99)
  {
    goto LABEL_7;
  }

  v4 = 0.0;
  v5 = logf(v2) / -0.69315;
  do
  {
    v6 = (*(*a1 + 16))(a1, v4 * 0.00097656);
    v7 = vabds_f32(v6, powf(v4 * 0.00097656, v5));
    if (v7 >= 0.001)
    {
      break;
    }

    v4 = v4 + 1.0;
  }

  while (v4 != 1025.0);
  if (v7 >= 0.001)
  {
LABEL_7:
    v8 = 52;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = vcvts_n_f32_u32(v8, 0xAuLL);
      v12 = (*(*a1 + 16))(a1, v11, v3);
      v3.n128_f32[0] = fabsf(v12);
      if (v3.n128_f32[0] >= 0.00001)
      {
        v3.n128_f32[0] = fabsf(v12 + -1.0);
        if (v3.n128_f32[0] >= 0.00001)
        {
          v13 = logf(v12);
          v9 = v9 + (v13 / logf(v11));
          v10 = v10 + 1.0;
        }
      }

      ++v8;
    }

    while (v8 != 1024);
    v14 = 0.0;
    v15 = v9 / v10;
    do
    {
      v16 = (*(*a1 + 16))(a1, v14 * 0.00097656);
      v17 = powf(v14 * 0.00097656, v15);
      if ((v14 * 0.00097656) > 0.9 || (v14 * 0.00097656) < 0.1)
      {
        v19 = 0.01;
      }

      else
      {
        v19 = 0.05;
      }

      v20 = vabds_f32(v16, v17);
      if (v20 >= v19)
      {
        break;
      }

      v14 = v14 + 1.0;
    }

    while (v14 != 1025.0);
    v5 = 0.0;
    if (v20 < v19)
    {
      return floorf((v15 * 10.0) + 0.5) / 10.0;
    }
  }

  return v5;
}

void PCString::PCString(PCString *this, const char *a2)
{
  if (a2 && *a2)
  {
    Copy = CFStringCreateWithCString(0, a2, 0x8000100u);
  }

  else
  {
    Copy = CFStringCreateCopy(0, &stru_2872E16E0);
  }

  this->var0 = Copy;
}

void PCString::PCString(PCString *this, const char *a2, const char *a3)
{
  v4 = 0;
  if (a2 && a3)
  {
    v4 = CFStringCreateWithCString(0, a2, 0x8000100u);
  }

  this->var0 = v4;
}

void PCString::PCString(PCString *this, const unsigned __int16 *a2)
{
  if (a2)
  {
    v2 = 0;
      ;
    }

    this->var0 = CFStringCreateWithCharacters(0, a2, v2 - 1);
  }
}

void PCString::PCString(PCString *this, const PCString *a2)
{
  this->var0 = 0;
  var0 = a2->var0;
  if (var0)
  {
    this->var0 = CFStringCreateCopy(0, var0);
  }
}

void PCString::PCString(PCString *this, const __CFString *cf, int a3)
{
  if (!a3)
  {
    if (cf)
    {
      Copy = CFStringCreateCopy(0, cf);
      goto LABEL_7;
    }

LABEL_6:
    Copy = 0;
    goto LABEL_7;
  }

  if (!cf)
  {
    goto LABEL_6;
  }

  Copy = CFRetain(cf);
LABEL_7:
  this->var0 = Copy;
}

void PCString::~PCString(PCString *this)
{
  var0 = this->var0;
  if (var0)
  {
    CFRelease(var0);
  }
}

__CFString *PCString::intern(PCString *this, const PCString *a2)
{
  {
    operator new();
  }

  return std::__tree<PCString>::__emplace_unique_key_args<PCString,PCString const&>(PCString::intern(PCString const&)::sTable, this) + 1;
}

void PCString::set(PCString *this, const PCString *a2)
{
  var0 = this->var0;
  if (var0)
  {
    this->var0 = 0;
    CFRelease(var0);
  }

  if (a2->var0)
  {
    this->var0 = CFStringCreateCopy(0, a2->var0);
  }
}

void PCString::clear(PCString *this)
{
  var0 = this->var0;
  if (var0)
  {
    this->var0 = 0;
    CFRelease(var0);
  }
}

void PCString::set(PCString *this, const char *a2)
{
  v3 = CFStringCreateWithCString(0, a2, 0x8000100u);
  var0 = this->var0;
  if (this->var0)
  {
    this->var0 = 0;
    CFRelease(var0);
  }

  this->var0 = v3;
}

__CFString *PCString::set(PCString *this, UniChar *chars)
{
  if (*chars)
  {
    v4 = 0;
      ;
    }

    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  var0 = this->var0;
  if (this->var0)
  {
    this->var0 = 0;
    CFRelease(var0);
  }

  result = CFStringCreateWithCharacters(0, chars, v6);
  this->var0 = result;
  return result;
}

void PCString::set(PCString *this, CFStringRef theString)
{
  var0 = this->var0;
  if (var0)
  {
    this->var0 = 0;
    CFRelease(var0);
  }

  if (theString)
  {
    this->var0 = CFStringCreateCopy(0, theString);
  }
}

__CFString *PCString::size(PCString *this)
{
  result = this->var0;
  if (result)
  {
    return CFStringGetLength(result);
  }

  return result;
}

char *PCString::createCStr(PCString *this)
{
  var0 = this->var0;
  if (var0)
  {
    Length = CFStringGetLength(var0);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v5 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    if (v5)
    {
      CFStringGetCString(this->var0, v5, MaximumSizeForEncoding + 1, 0x8000100u);
    }
  }

  else
  {
    v5 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
    *v5 = 0;
  }

  return v5;
}

char *PCString::createUTF8Str(PCString *this)
{
  var0 = this->var0;
  if (!var0)
  {
    return 0;
  }

  Length = CFStringGetLength(var0);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v5 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (v5)
  {
    CFStringGetCString(this->var0, v5, MaximumSizeForEncoding + 1, 0x8000100u);
  }

  return v5;
}

__CFString *PCString::cf_str(PCString *this)
{
  if (this->var0)
  {
    return this->var0;
  }

  else
  {
    return &stru_2872E16E0;
  }
}

UniChar *PCString::createUniStr(PCString *this)
{
  var0 = this->var0;
  if (!var0)
  {
    return 0;
  }

  Length = CFStringGetLength(var0);
  v4 = malloc_type_malloc(2 * Length + 2, 0x1000040BDFB0063uLL);
  if (v4)
  {
    v6.location = 0;
    v6.length = Length;
    CFStringGetCharacters(this->var0, v6, v4);
    v4[Length] = 0;
  }

  return v4;
}

const char *PCString::createVerifiedFormatString(PCString *this, const char *a2)
{
  CStr = PCString::createCStr(this);
  v4 = strlen(a2);
  v5 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
  strcpy(v5, a2);
  v6 = fmtcheck(CStr, v5);
  free(v5);
  if (v6 != CStr)
  {
    free(CStr);
    return 0;
  }

  return v6;
}

CFComparisonResult PCString::compare(PCString *this, const PCString *a2)
{
  var0 = this->var0;
  v3 = a2->var0;
  if (!(var0 | v3))
  {
    return 0;
  }

  if (var0)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (var0)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return 1;
  }

  else
  {
    return CFStringCompare(var0, v3, 0x20uLL);
  }
}

CFComparisonResult PCString::caseInsensitiveCompare(PCString *this, const PCString *a2)
{
  var0 = this->var0;
  v3 = a2->var0;
  if (!(var0 | v3))
  {
    return 0;
  }

  if (var0)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (var0)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return 1;
  }

  else
  {
    return CFStringCompare(var0, v3, 0x21uLL);
  }
}

PCString *PCString::insert(PCString *this, CFIndex a2, const PCString *a3)
{
  var0 = this->var0;
  v6 = *MEMORY[0x277CBECE8];
  if (var0)
  {
    MutableCopy = CFStringCreateMutableCopy(v6, 0, var0);
    CFStringInsert(MutableCopy, a2, a3->var0);
    v9 = this->var0;
    if (this->var0)
    {
      this->var0 = 0;
      CFRelease(v9);
    }
  }

  else
  {
    MutableCopy = CFStringCreateCopy(v6, a3->var0);
  }

  this->var0 = MutableCopy;
  return this;
}

PCString *PCString::append(PCString *this, const PCString *a2)
{
  values[2] = *MEMORY[0x277D85DE8];
  var0 = a2->var0;
  if (a2->var0)
  {
    if (this->var0)
    {
      values[0] = this->var0;
      values[1] = var0;
      v4 = *MEMORY[0x277CBECE8];
      v5 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 2, MEMORY[0x277CBF128]);
      v6 = CFStringCreateByCombiningStrings(v4, v5, &stru_2872E16E0);
      CFRelease(v5);
      v7 = this->var0;
      if (this->var0)
      {
        this->var0 = 0;
        CFRelease(v7);
      }

      this->var0 = v6;
    }

    else
    {
      PCString::set(this, a2);
    }
  }

  return this;
}

PCString *PCString::append(PCString *this, const char *a2)
{
  if (a2)
  {
    if (this->var0)
    {
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, this->var0);
      CFStringAppendCString(MutableCopy, a2, 0x8000100u);
      var0 = this->var0;
      if (this->var0)
      {
        this->var0 = 0;
        CFRelease(var0);
      }

      this->var0 = MutableCopy;
    }

    else
    {
      PCString::set(this, a2);
    }
  }

  return this;
}

PCString *PCString::erase(PCString *this, CFIndex a2, unsigned int a3)
{
  if (a3 && this->var0)
  {
    v5 = a3;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, this->var0);
    v9.location = a2;
    v9.length = v5;
    CFStringDelete(MutableCopy, v9);
    var0 = this->var0;
    if (this->var0)
    {
      this->var0 = 0;
      CFRelease(var0);
    }

    this->var0 = MutableCopy;
  }

  return this;
}

PCString *PCString::replace(PCString *this, CFIndex a2, unsigned int a3, const PCString *a4)
{
  if (a4->var0 && this->var0)
  {
    v7 = a3;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, this->var0);
    v11.location = a2;
    v11.length = v7;
    CFStringReplace(MutableCopy, v11, a4->var0);
    var0 = this->var0;
    if (this->var0)
    {
      this->var0 = 0;
      CFRelease(var0);
    }

    this->var0 = MutableCopy;
  }

  return this;
}

uint64_t PCString::find(PCString *this, const PCString *a2)
{
  var0 = this->var0;
  if (!var0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = CFStringFind(var0, a2->var0, 0);
  if (v3.length)
  {
    v4 = v3.location == -1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return LODWORD(v3.location);
  }
}

void PCString::substr(PCString *this@<X0>, CFIndex a2@<X1>, unsigned int a3@<W2>, CFStringRef *a4@<X8>)
{
  if (this->var0)
  {
    v7.length = a3;
    v7.location = a2;
    v5 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], this->var0, v7);
    v6 = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    *a4 = v6;
    CFRelease(v6);
  }

  else
  {
    *a4 = 0;
  }
}

void PCString::substrTo(PCString *this@<X0>, uint64_t a2@<X1>, CFStringRef *a3@<X8>)
{
  if (this->var0 && (v6.length = a2 + 1, v6.location = 0, (v4 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], this->var0, v6)) != 0))
  {
    v5 = v4;
    CFRetain(v4);
    *a3 = v5;
    CFRelease(v5);
  }

  else
  {
    *a3 = 0;
  }
}

void PCString::substrFrom(PCString *this@<X0>, CFIndex a2@<X1>, CFStringRef *a3@<X8>)
{
  var0 = this->var0;
  if (var0 && (v7.length = CFStringGetLength(var0) - a2, v7.length >= 0))
  {
    v7.location = a2;
    v8 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], this->var0, v7);
    v9 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    *a3 = v9;
    CFRelease(v9);
  }

  else
  {
    *a3 = 0;
  }
}

void PCString::sprintf(PCString *this, CFStringRef format, ...)
{
  va_start(va, format);
  var0 = this->var0;
  if (var0)
  {
    this->var0 = 0;
    CFRelease(var0);
  }

  if (format)
  {
    this->var0 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  }
}

void PCString::sprintf(PCString *this, const char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(sprintf_buf, 0x800uLL, __format, va);
  byte_27FE4B40F = 0;
  PCString::set(this, sprintf_buf);
}

void PCString::ssprintf(PCString *this@<X0>, PCString *a2@<X8>, ...)
{
  va_start(va, a2);
  a2->var0 = 0;
  vsnprintf(sprintf_buf, 0x800uLL, this, va);
  byte_27FE4B40F = 0;
  PCString::set(a2, sprintf_buf);
}

__CFString *std::__tree<PCString>::__emplace_unique_key_args<PCString,PCString const&>(PCString *a1, PCString *this)
{
  var0 = std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::__find_equal<PCString>(a1, &v4, this)->var0;
  if (!var0)
  {
    std::__tree<PCString>::__construct_node<PCString const&>();
  }

  return var0;
}

uint64_t std::unique_ptr<std::__tree_node<PCString,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<PCString,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      PCString::~PCString(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

__CFString *PCString::ns_str(PCString *this)
{
  if (!this->var0)
  {
    return &stru_2872E16E0;
  }

  v1 = this->var0;

  return v1;
}

void PCString::stringWithoutSpacesAndNewlines(PCString *this@<X0>, PCString *a2@<X8>)
{
  v3 = -[__CFString stringByRemovingCharactersInSet:](this->var0, "stringByRemovingCharactersInSet:", [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet]);
  a2->var0 = 0;

  PCString::set(a2, v3);
}

void PCMutex::PCMutex(PCMutex *this, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  this->_vptr$PCMutex = &unk_287209488;
  if (a2)
  {
    v3 = pthread_mutexattr_init(&v16);
    if (v3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::ssprintf("error: %s returned %d", &v15, "pthread_mutexattr_init(&rmta)", v3);
      PCString::PCString(&v14, "/Library/Caches/com.apple.xbs/Sources/ProCoreiOS/PCMutex.cpp");
      PCException::PCException(exception, &v15, &v14, 47);
      *exception = &unk_2872094D0;
    }

    v4 = pthread_mutexattr_settype(&v16, 2);
    if (v4)
    {
      v12 = __cxa_allocate_exception(0x40uLL);
      PCString::ssprintf("error: %s returned %d", &v15, "pthread_mutexattr_settype(&rmta, PTHREAD_MUTEX_RECURSIVE)", v4);
      PCString::PCString(&v14, "/Library/Caches/com.apple.xbs/Sources/ProCoreiOS/PCMutex.cpp");
      PCException::PCException(v12, &v15, &v14, 48);
      *v12 = &unk_2872094D0;
    }

    v5 = pthread_mutex_init(&this->_Mutex, &v16);
    if (v5)
    {
      v13 = __cxa_allocate_exception(0x40uLL);
      PCString::ssprintf("error: %s returned %d", &v15, "pthread_mutex_init(&_Mutex, &rmta)", v5);
      PCString::PCString(&v14, "/Library/Caches/com.apple.xbs/Sources/ProCoreiOS/PCMutex.cpp");
      PCException::PCException(v13, &v15, &v14, 50);
      *v13 = &unk_2872094D0;
    }

    v6 = pthread_mutexattr_destroy(&v16);
    if (v6)
    {
      v7 = __cxa_allocate_exception(0x40uLL);
      PCString::ssprintf("error: %s returned %d", &v15, "pthread_mutexattr_destroy(&rmta)", v6);
      PCString::PCString(&v14, "/Library/Caches/com.apple.xbs/Sources/ProCoreiOS/PCMutex.cpp");
      PCException::PCException(v7, &v15, &v14, 52);
      *v7 = &unk_2872094D0;
    }
  }

  else
  {
    v8 = pthread_mutex_init(&this->_Mutex, 0);
    if (v8)
    {
      v9 = v8;
      v10 = __cxa_allocate_exception(0x40uLL);
      PCString::ssprintf("error: %s returned %d", &v16, "pthread_mutex_init(&_Mutex, NULL)", v9);
      PCString::PCString(&v15, "/Library/Caches/com.apple.xbs/Sources/ProCoreiOS/PCMutex.cpp");
      PCException::PCException(v10, &v16, &v15, 56);
      *v10 = &unk_2872094D0;
    }
  }
}

void sub_25FBC4E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCString a12, PCString a13, PCString a14)
{
  PCString::~PCString(&a12);
  PCString::~PCString(&a13);
  if (v15)
  {
    __cxa_free_exception(v14);
  }

  _Unwind_Resume(a1);
}

void PCMutex::~PCMutex(PCMutex *this)
{
  this->_vptr$PCMutex = &unk_287209488;
  pthread_mutex_destroy(&this->_Mutex);
}

{
  PCMutex::~PCMutex(this);

  JUMPOUT(0x2666E9F00);
}

void PCSystemException::~PCSystemException(PCString *this)
{
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

void PCSemaphore::PCSemaphore(PCSemaphore *this, unsigned int a2)
{
  *this = a2;
  v2 = (this + 56);
  pthread_cond_init((this + 8), 0);
  pthread_mutex_init(v2, 0);
}

uint64_t PCSemaphore::wait(PCSemaphore *this)
{
  pthread_mutex_lock((this + 56));
  while (!*this)
  {
    pthread_cond_wait((this + 8), (this + 56));
  }

  --*this;

  return pthread_mutex_unlock((this + 56));
}

uint64_t PCSemaphore::signal(PCSemaphore *this)
{
  pthread_mutex_lock((this + 56));
  ++*this;
  pthread_cond_signal((this + 8));

  return pthread_mutex_unlock((this + 56));
}

uint64_t PCThread::startup(PCThread *this, void *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    pthread_setname_np(v3);
  }

  (*this)(*(this + 1), a2);
  v4 = *(this + 2);
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C8077774924);
    *(this + 2) = 0;
  }

  MEMORY[0x2666E9F00](this, 0x90C401993945DLL);
  return 0;
}

BOOL PCThread::isSelf(_opaque_pthread_t **this)
{
  v1 = *this;
  v2 = pthread_self();
  return pthread_equal(v1, v2) != 0;
}

void *operator<<(void *a1, int a2)
{
  switch(a2)
  {
    case 0:
      v3 = "PC_BLEND_NORMAL";
      goto LABEL_57;
    case 1:
      v3 = "PC_BLEND_SEPARATOR0";
      goto LABEL_48;
    case 2:
      v3 = "PC_BLEND_SUBTRACT";
      goto LABEL_33;
    case 3:
      v3 = "PC_BLEND_DARKEN";
      goto LABEL_57;
    case 4:
      v3 = "PC_BLEND_MULTIPLY";
      goto LABEL_33;
    case 5:
      v3 = "PC_BLEND_COLOR_BURN";
      goto LABEL_48;
    case 6:
      v3 = "PC_BLEND_LINEAR_BURN";
      goto LABEL_38;
    case 7:
      v3 = "PC_BLEND_SEPARATOR1";
      goto LABEL_48;
    case 8:
      v3 = "PC_BLEND_ADD";
      goto LABEL_42;
    case 9:
      v3 = "PC_BLEND_LIGHTEN";
      goto LABEL_59;
    case 10:
      v3 = "PC_BLEND_SCREEN";
      goto LABEL_57;
    case 11:
      v3 = "PC_BLEND_COLOR_DODGE";
      goto LABEL_38;
    case 12:
      v3 = "PC_BLEND_LINEAR_DODGE";
      goto LABEL_61;
    case 13:
      v3 = "PC_BLEND_SEPARATOR2";
      goto LABEL_48;
    case 14:
      v3 = "PC_BLEND_OVERLAY";
      goto LABEL_59;
    case 15:
      v3 = "PC_BLEND_SOFT_LIGHT";
      goto LABEL_48;
    case 16:
      v3 = "PC_BLEND_HARD_LIGHT";
      goto LABEL_48;
    case 17:
      v3 = "PC_BLEND_VIVID_LIGHT";
LABEL_38:
      v4 = 20;
      goto LABEL_65;
    case 18:
      v3 = "PC_BLEND_LINEAR_LIGHT";
      goto LABEL_61;
    case 19:
      v3 = "PC_BLEND_PIN_LIGHT";
      goto LABEL_54;
    case 20:
      v3 = "PC_BLEND_HARD_MIX";
      goto LABEL_33;
    case 21:
      v3 = "PC_BLEND_SEPARATOR3";
      goto LABEL_48;
    case 22:
      v3 = "PC_BLEND_DIFFERENCE";
      goto LABEL_48;
    case 23:
      v3 = "PC_BLEND_EXCLUSION";
      goto LABEL_54;
    case 24:
      v3 = "PC_BLEND_SEPARATOR4";
      goto LABEL_48;
    case 25:
      v3 = "PC_BLEND_STENCIL_ALPHA";
      v4 = 22;
      goto LABEL_65;
    case 26:
      v3 = "PC_BLEND_STENCIL_LUMA";
LABEL_61:
      v4 = 21;
      goto LABEL_65;
    case 27:
      v3 = "PC_BLEND_SILHOUETTE_ALPHA";
      v4 = 25;
      goto LABEL_65;
    case 28:
      v3 = "PC_BLEND_SILHOUETTE_LUMA";
      v4 = 24;
      goto LABEL_65;
    case 29:
      v3 = "PC_BLEND_BEHIND";
      goto LABEL_57;
    case 30:
      v3 = "PC_BLEND_SEPARATOR5";
      goto LABEL_48;
    case 31:
      v3 = "PC_BLEND_ALPHA_ADD";
      goto LABEL_54;
    case 32:
      v3 = "PC_BLEND_LUMINESCENT_PREMUL";
      goto LABEL_45;
    case 33:
      v3 = "PC_BLEND_SEPARATOR6";
      goto LABEL_48;
    case 34:
      v3 = "PC_BLEND_COMBINE";
      goto LABEL_59;
    case 35:
      v3 = "PC_BLEND_LIGHT_WRAP";
      goto LABEL_48;
    case 36:
      v3 = "PC_BLEND_SUPPORTED_LIST_END";
LABEL_45:
      v4 = 27;
      goto LABEL_65;
    case 37:
      v3 = "PC_BLEND_SEPARATOR";
LABEL_54:
      v4 = 18;
      goto LABEL_65;
    case 38:
      v3 = "PC_BLEND_AVERAGE";
LABEL_59:
      v4 = 16;
      goto LABEL_65;
    case 39:
      v3 = "PC_BLEND_CLEAR";
      goto LABEL_50;
    case 40:
      v3 = "PC_BLEND_COLOR";
LABEL_50:
      v4 = 14;
      goto LABEL_65;
    case 41:
      v3 = "PC_BLEND_DISSOLVE";
      goto LABEL_33;
    case 42:
      v3 = "PC_BLEND_GRAY";
      goto LABEL_64;
    case 43:
      v3 = "PC_BLEND_HUE";
LABEL_42:
      v4 = 12;
      goto LABEL_65;
    case 44:
      v3 = "PC_BLEND_INVERT";
LABEL_57:
      v4 = 15;
      goto LABEL_65;
    case 45:
      v3 = "PC_BLEND_LUMINOSITY";
      goto LABEL_48;
    case 46:
      v3 = "PC_BLEND_MASK";
      goto LABEL_64;
    case 47:
      v3 = "PC_BLEND_NEGATION";
LABEL_33:
      v4 = 17;
      goto LABEL_65;
    case 48:
      v3 = "PC_BLEND_NONE";
      goto LABEL_64;
    case 49:
      v3 = "PC_BLEND_OVER";
      goto LABEL_64;
    case 50:
      v3 = "PC_BLEND_SATURATION";
LABEL_48:
      v4 = 19;
      goto LABEL_65;
    case 51:
      v3 = "PC_BLEND_TEST";
LABEL_64:
      v4 = 13;
LABEL_65:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
      break;
    default:
      return a1;
  }

  return a1;
}

PCColorSpaceCache *PCGetWorkingColorSpace(PCColorSpaceCache *result)
{
  if (result == 1)
  {
    return PCColorSpaceCache::cgRec2020Linear(result);
  }

  if (!result)
  {
    return PCColorSpaceCache::cgsRGB(result);
  }

  return result;
}

float PCGetGamutColorSpaceLuminanceCoefficients(unsigned int a1, uint64_t a2)
{
  if (a1 <= 5)
  {
    if (initGamutInfo(void)::once != -1)
    {
      PCGetGamutColorSpaceLuminanceCoefficients_cold_1();
    }

    v4 = gamutInfo + 72 * a1;
    *a2 = *v4;
    *(a2 + 4) = *(v4 + 4);
    result = *(v4 + 8);
    *(a2 + 8) = result;
  }

  return result;
}

void PCGetColorSpaceLuminanceCoefficients(CGColorSpace *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (CGColorSpaceGetModel(a1))
  {
    PCICCProfile::PCICCProfile(&v17, a1);
    PCGetChromaticities(&v17, v16);
    PCGetLuminanceCoefficients(v16[0].f32, &v14, v4, v5, v6, v7, v8, v9, v10);
    v13 = v14;
    v11 = v15;
    PCICCProfile::~PCICCProfile(&v17);
    v12 = v13;
    if (*&v13 == 0.0 && *(&v13 + 1) == 0.0 && v11 == 0.0)
    {
      PCGetRec709LuminanceCoefficients(&v17);
      v12 = v17;
      v11 = v18;
    }
  }

  else
  {
    v12 = 1065353216;
    v11 = 0.0;
  }

  *a2 = v12;
  *(a2 + 8) = v11;
}

void sub_25FBC5820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    PCICCProfile::~PCICCProfile(&a18);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x25FBC57C4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PCGetWorkingColorSpaceRGBToYCbCrMatrix(int a1, _DWORD *a2)
{
  result = getGamutInfoForWorkingGamut(a1);
  for (i = 0; i != 3; ++i)
  {
    v5 = result;
    v6 = 3;
    do
    {
      v7 = *v5++;
      *a2++ = v7;
      --v6;
    }

    while (v6);
    result += 12;
  }

  return result;
}

uint64_t getGamutInfoForWorkingGamut(int a1)
{
  if (initGamutInfo(void)::once != -1)
  {
    PCGetGamutColorSpaceLuminanceCoefficients_cold_1();
  }

  v2 = 288;
  if (!a1)
  {
    v2 = 0;
  }

  return gamutInfo + v2;
}

uint64_t PCGetWorkingColorSpaceYCbCrToRGBMatrix(int a1, _DWORD *a2)
{
  result = getGamutInfoForWorkingGamut(a1);
  for (i = 0; i != 3; ++i)
  {
    for (j = 9; j != 12; ++j)
    {
      *a2++ = *(result + 4 * j);
    }

    result += 12;
  }

  return result;
}

void PCICCTransferFunctionLUT::~PCICCTransferFunctionLUT(PCICCTransferFunctionLUT *this)
{
  *this = &unk_287209570;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_287209570;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2666E9F00);
}

float PCICCTransferFunctionLUT::operator()(uint64_t a1, float a2)
{
  if (a2 <= 0.0)
  {
    return **(a1 + 8);
  }

  v2 = *(a1 + 8);
  v3 = ((*(a1 + 16) - v2) >> 2) - 1;
  if (a2 >= 1.0)
  {
    return *(v2 + 4 * v3);
  }

  v4 = v3 * a2;
  v5 = vcvtms_u32_f32(v4);
  return (1.0 - (v4 - v5)) * *(v2 + 4 * v5) + (v4 - v5) * *(v2 + 4 * v5 + 4);
}

float PCICCTransferFunctionParametric1::operator()(float *a1, float a2)
{
  v3 = a1[3];
  v2 = a1[4];
  if ((-v2 / v3) <= a2)
  {
    return powf(v2 + (v3 * a2), a1[2]);
  }

  else
  {
    return 0.0;
  }
}

float PCICCTransferFunctionParametric2::operator()(float *a1, float a2)
{
  v3 = a1[3];
  v2 = a1[4];
  if ((-v2 / v3) <= a2)
  {
    return powf(v2 + (v3 * a2), a1[2]) + a1[5];
  }

  else
  {
    return a1[5];
  }
}

void PCICCTransferFunctionParametric3::PCICCTransferFunctionParametric3(PCICCTransferFunctionParametric3 *this, float a2, float a3, float a4, float a5, float a6)
{
  *this = &unk_287209630;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 4) = a4;
  *(this + 5) = a5;
  *(this + 6) = a6;
}

float PCICCTransferFunctionParametric3::operator()(float *a1, float a2)
{
  if (a1[6] <= a2)
  {
    return powf((a1[3] * a2) + a1[4], a1[2]);
  }

  else
  {
    return a1[5] * a2;
  }
}

float PCICCTransferFunctionParametric4::operator()(float *a1, float a2)
{
  if (a1[6] <= a2)
  {
    v3 = powf((a1[3] * a2) + a1[4], a1[2]);
    v4 = a1[7];
  }

  else
  {
    v3 = a1[5] * a2;
    v4 = a1[8];
  }

  return v3 + v4;
}

uint64_t PCGetTransferFunctionFromTag@<X0>(const PCICCTag *a1@<X0>, void *a2@<X8>)
{
  result = PVPerfStats::FrameStats::GetSize(a1);
  if (result > 1800688194)
  {
    if (result != 1800688195)
    {
      v5 = 1918128707;
LABEL_6:
      if (result != v5)
      {
        goto LABEL_20;
      }
    }
  }

  else if (result != 1649693251)
  {
    v5 = 1733579331;
    goto LABEL_6;
  }

  FactoryForSerialization = OZFactoryBase::getFactoryForSerialization(a1);
  result = ProCore::Private::getInt32Number(FactoryForSerialization, v7);
  if (result == 1885434465)
  {
    result = ProCore::Private::getUInt16Number((FactoryForSerialization + 8), v8);
    if (result <= 1)
    {
      if (!result)
      {
        Int32Number = ProCore::Private::getInt32Number((FactoryForSerialization + 12), v13);
        if (Int32Number >> 1 != 58982)
        {
          ProCore::Private::convertFromS15Fixed16(Int32Number);
        }

        operator new();
      }

      if (result == 1)
      {
        ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 12), v13);
        ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 16), v20);
        ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 20), v21);
        operator new();
      }
    }

    else
    {
      switch(result)
      {
        case 2:
          ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 12), v13);
          ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 16), v27);
          ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 20), v28);
          ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 24), v29);
          operator new();
        case 3:
          ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 12), v13);
          ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 16), v30);
          ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 20), v31);
          ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 24), v32);
          ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 28), v33);
          operator new();
        case 4:
          ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 12), v13);
          ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 16), v14);
          ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 20), v15);
          ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 24), v16);
          ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 28), v17);
          ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 32), v18);
          ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 36), v19);
          operator new();
      }
    }
  }

  else if (result == 1668641398)
  {
    v9 = ProCore::Private::getInt32Number((FactoryForSerialization + 8), v8);
    v11 = (FactoryForSerialization + 12);
    if (v9 != 1)
    {
      v12 = v9;
      if (!v9)
      {
        operator new();
      }

      if ((v9 & 0x7FFFFFFF) != 0x400 || memcmp(v11, &is_sRGB_LUT(unsigned char const*,unsigned int)::sRGB_LUT, 0x800uLL))
      {
        std::vector<float>::vector[abi:ne200100](&__p, v12);
        v24 = 0;
        v25 = 0;
        do
        {
          v26 = ProCore::Private::getUInt16Number(&v11[v24 & 0xFFFFFFFE], v23) / 65535.0;
          *(__p + v25++) = v26;
          v24 += 2;
        }

        while (v12 != v25);
        operator new();
      }

      operator new();
    }

    UInt16Number = ProCore::Private::getUInt16Number(v11, v10);
    if ((UInt16Number & 0xFFFE) != 0x1CC)
    {
      ProCore::Private::convertFromU8Fixed8(UInt16Number);
    }

    operator new();
  }

LABEL_20:
  *a2 = 0;
  return result;
}

void sub_25FBC6500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x2666E9F00](v11, 0x81C4018A671A6);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t PCMakeTRCTag(uint64_t a1, uint64_t a2, int a3)
{
  v4[0] = &unk_287209760;
  v4[1] = a2;
  v5 = a3;
  return (*(*a1 + 24))(a1, v4);
}

_WORD *anonymous namespace::MakeTagVisitor::visit(_anonymous_namespace_::MakeTagVisitor *this, const PCICCTransferFunctionLinear *a2)
{
  beginCurveTag(*(this + 1), *(this + 4));
  v3 = *(this + 1);

  return addTableToTag(v3, 0, 0);
}

_WORD *anonymous namespace::MakeTagVisitor::visit(_anonymous_namespace_::MakeTagVisitor *this, const PCICCTransferFunctionGamma *a2)
{
  beginCurveTag(*(this + 1), *(this + 4));
  v5 = *(a2 + 2);
  return addTableToTag(*(this + 1), &v5, &v6);
}

_WORD *anonymous namespace::MakeTagVisitor::visit(_anonymous_namespace_::MakeTagVisitor *this, const PCICCTransferFunctionLUT *a2)
{
  beginCurveTag(*(this + 1), *(this + 4));
  v4 = *(this + 1);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);

  return addTableToTag(v4, v5, v6);
}

_BYTE *anonymous namespace::MakeTagVisitor::visit(_anonymous_namespace_::MakeTagVisitor *this, const PCICCTransferFunctionParametric0 *a2)
{
  beginParametricTag(*(this + 1), *(this + 4), 0);
  v5 = *(a2 + 2);
  v6 = *(this + 1);
  if (fabsf(v5 + -1.8) >= 0.00001)
  {
    v8 = v5;

    return ProCore::Private::add15Fixed16ToTag(v6, v4, v8);
  }

  else
  {

    return ProCore::Private::addInt32ToTag(v6, 0x1CCCC);
  }
}

_BYTE *anonymous namespace::MakeTagVisitor::visit(_anonymous_namespace_::MakeTagVisitor *this, const PCICCTransferFunctionParametric1 *a2)
{
  beginParametricTag(*(this + 1), *(this + 4), 1);
  ProCore::Private::add15Fixed16ToTag(*(this + 1), v4, *(a2 + 2));
  ProCore::Private::add15Fixed16ToTag(*(this + 1), v5, *(a2 + 3));
  v7 = *(this + 1);
  v8 = *(a2 + 4);

  return ProCore::Private::add15Fixed16ToTag(v7, v6, v8);
}

_BYTE *anonymous namespace::MakeTagVisitor::visit(_anonymous_namespace_::MakeTagVisitor *this, const PCICCTransferFunctionParametric2 *a2)
{
  beginParametricTag(*(this + 1), *(this + 4), 2);
  ProCore::Private::add15Fixed16ToTag(*(this + 1), v4, *(a2 + 2));
  ProCore::Private::add15Fixed16ToTag(*(this + 1), v5, *(a2 + 3));
  ProCore::Private::add15Fixed16ToTag(*(this + 1), v6, *(a2 + 4));
  v8 = *(this + 1);
  v9 = *(a2 + 5);

  return ProCore::Private::add15Fixed16ToTag(v8, v7, v9);
}

_BYTE *anonymous namespace::MakeTagVisitor::visit(_anonymous_namespace_::MakeTagVisitor *this, const PCICCTransferFunctionParametric3 *a2)
{
  beginParametricTag(*(this + 1), *(this + 4), 3);
  ProCore::Private::add15Fixed16ToTag(*(this + 1), v4, *(a2 + 2));
  ProCore::Private::add15Fixed16ToTag(*(this + 1), v5, *(a2 + 3));
  ProCore::Private::add15Fixed16ToTag(*(this + 1), v6, *(a2 + 4));
  ProCore::Private::add15Fixed16ToTag(*(this + 1), v7, *(a2 + 5));
  v9 = *(this + 1);
  v10 = *(a2 + 6);

  return ProCore::Private::add15Fixed16ToTag(v9, v8, v10);
}

_BYTE *anonymous namespace::MakeTagVisitor::visit(_anonymous_namespace_::MakeTagVisitor *this, const PCICCTransferFunctionParametric4 *a2)
{
  beginParametricTag(*(this + 1), *(this + 4), 4);
  ProCore::Private::add15Fixed16ToTag(*(this + 1), v4, *(a2 + 2));
  ProCore::Private::add15Fixed16ToTag(*(this + 1), v5, *(a2 + 3));
  ProCore::Private::add15Fixed16ToTag(*(this + 1), v6, *(a2 + 4));
  ProCore::Private::add15Fixed16ToTag(*(this + 1), v7, *(a2 + 5));
  ProCore::Private::add15Fixed16ToTag(*(this + 1), v8, *(a2 + 6));
  ProCore::Private::add15Fixed16ToTag(*(this + 1), v9, *(a2 + 7));
  v11 = *(this + 1);
  v12 = *(a2 + 8);

  return ProCore::Private::add15Fixed16ToTag(v11, v10, v12);
}

_DWORD *beginCurveTag(ProCore::Private *a1, unsigned int a2)
{
  setTRCTagName(a1, a2);
  ProCore::Private::addInt32ToTag(a1, 0x63757276);

  return ProCore::Private::addInt32ToTag(a1, 0);
}

_WORD *addTableToTag(PCICCTag *a1, const float *a2, const float *a3)
{
  v4 = a2;
  if (a3 - a2 != 4)
  {
    v6 = ((a3 - a2) >> 2);
LABEL_5:
    for (result = ProCore::Private::addInt32ToTag(a1, v6); v4 != a3; result = ProCore::Private::addInt16ToTag(a1, v11))
    {
      v8 = *v4++;
      v9 = vcvtmd_s64_f64((v8 * 65535.0) + 0.5 + 0.0000001);
      v10 = v9;
      if (v9 > 65535.0)
      {
        v10 = 65535.0;
      }

      if (v9 >= 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    return result;
  }

  if (ProCore::Private::convertToU8Fixed8(a1, *a2) == 256)
  {
    v6 = 0;
    goto LABEL_5;
  }

  ProCore::Private::addInt32ToTag(a1, 1);
  v13 = 4.0;
  if (*v4 <= 4.0)
  {
    v13 = *v4;
  }

  if (*v4 >= 0.25)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.25;
  }

  v15 = v14;
  if (v14 >= 2.25 || v15 <= 2.15)
  {
    if (v14 <= 1.75 || v15 >= 1.85)
    {
      if (v15 > 0.95 && v15 < 1.05)
      {
        v14 = 1.0;
      }
    }

    else
    {
      v14 = 1.8;
    }
  }

  else
  {
    v14 = 2.2;
  }

  if (fabsf(v14 + -1.8) >= 0.00001)
  {
    v17 = v14;

    return ProCore::Private::add8Fixed8ToTag(a1, v12, v17);
  }

  else
  {

    return ProCore::Private::addInt16ToTag(a1, 0x1CC);
  }
}

uint64_t setTRCTagName(uint64_t result, unsigned int a2)
{
  if (a2 <= 3)
  {
    return PCICCTag::reset(result, dword_26034DD00[a2]);
  }

  return result;
}

_WORD *beginParametricTag(ProCore::Private *a1, unsigned int a2, PCICCTag *a3)
{
  setTRCTagName(a1, a2);
  ProCore::Private::addInt32ToTag(a1, 0x70617261);
  ProCore::Private::addInt32ToTag(a1, 0);
  ProCore::Private::addInt16ToTag(a1, a3);

  return ProCore::Private::addInt16ToTag(a1, 0);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25FBC6C7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

Float64 OZChannelSecondsForFigTime(const CMTime *a1, int32_t a2)
{
  memset(&v4, 0, sizeof(v4));
  v3 = *a1;
  CMTimeConvertScale(&v4, &v3, a2, kCMTimeRoundingMethod_RoundTowardZero);
  v3 = v4;
  return CMTimeGetSeconds(&v3);
}

BOOL PCMath::equal(PCMath *this, const CMTime *a2, const CMTime *a3, const CMTime *a4)
{
  v6 = *(this + 3);
  if ((v6 & 0x1D) != 1 || (a2->flags & 0x1D) != 1)
  {
    return (~v6 & 5) == 0 && (~a2->flags & 5) == 0 || (~v6 & 9) == 0 && (~a2->flags & 9) == 0;
  }

  v13 = v4;
  v14 = v5;
  v12 = *this;
  time2 = *a2;
  PC_CMTimeSaferSubtract(&v12, &time2, &v9);
  v10 = v9;
  v12 = v9;
  time2 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&v12, &time2) < 0)
  {
    operator*(&v10, &v12, -1.0);
  }

  else
  {
    v12 = v10;
  }

  v10 = v12;
  time2 = *a3;
  return CMTimeCompare(&v12, &time2) < 1;
}

void sub_25FBC6F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double PCTimeRange::getRangeEnclosingWholeFrames@<D0>(PCTimeRange *this@<X0>, const CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v11, 0, sizeof(v11));
  v13 = *this;
  v12 = *(this + 1);
  PC_CMTimeSaferAdd(&v13, &v12, &v11);
  memset(&v10, 0, sizeof(v10));
  v13 = *this;
  v12 = *a2;
  PC_CMTimeFloorToSampleDuration(&v13, &v12, &v10);
  v8 = 0uLL;
  v9 = 0;
  v13 = v11;
  v12 = v10;
  PC_CMTimeSaferSubtract(&v13, &v12, &v7);
  v13 = v7;
  v12 = *a2;
  PC_CMTimeCeilingToSampleDuration(&v13, &v12, &v8);
  *a3 = v10;
  result = *&v8;
  *(a3 + 24) = v8;
  *(a3 + 40) = v9;
  return result;
}

uint64_t half::convert(half *this)
{
  v1 = (this >> 16) & 0x8000;
  v2 = (this >> 23);
  v3 = this & 0x7FFFFF;
  v4 = v2 - 112;
  if (v2 > 0x70)
  {
    if (v2 == 255)
    {
      v5 = (v3 < 0x2000) | (v3 >> 13) | v1 | 0x7C00;
      LOWORD(v1) = v1 | 0x7C00;
      if (v3)
      {
        LOWORD(v1) = v5;
      }
    }

    else
    {
      v6 = v3 + 0x2000;
      v7 = v2 - 111;
      if (v3 >= 0x7FE000)
      {
        v6 = 0;
      }

      else
      {
        v7 = v4;
      }

      if ((this & 0x1000) != 0)
      {
        v3 = v6;
      }

      else
      {
        v7 = v4;
      }

      if (v7 < 0x1F)
      {
        v1 |= (v7 << 10) | (v3 >> 13);
      }

      else
      {
        v10 = 1.0e10;
        v8 = 10;
        do
        {
          v10 = v10 * v10;
          --v8;
        }

        while (v8);
        LOWORD(v1) = v1 | 0x7C00;
      }
    }
  }

  else
  {
    v1 |= (((2 * ((v3 | 0x800000) >> (113 - v2))) & 0x2000) + ((v3 | 0x800000) >> (113 - v2))) >> 13;
    if (v2 < 0x66)
    {
      LOWORD(v1) = 0;
    }
  }

  return v1;
}

void HGParamBufferDesc::printParamValuesFromBuffer(HGParamBufferDesc *this@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  if (*(this + 5) == a3)
  {
    v6 = *(this + 2);
    if (*(this + 3) != v6)
    {
      v8 = 0;
      v9 = &a2[a3];
      do
      {
        v10 = PVInstructionGraphContext::HGNodeCache(*(v6 + 8 * v8));
        if (&a2[v10 + HGParamField::fieldSize(*(*(this + 2) + 8 * v8))] > v9)
        {
          break;
        }

        (*(**(*(this + 2) + 8 * v8) + 40))(__p);
        v11 = (v14 & 0x80u) == 0 ? __p : __p[0];
        v12 = (v14 & 0x80u) == 0 ? v14 : __p[1];
        std::string::append(a4, v11, v12);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }

        ++v8;
        v6 = *(this + 2);
      }

      while (v8 < (*(this + 3) - v6) >> 3);
    }
  }

  else
  {
    std::string::append(a4, " paramBufferData and ParamBufferDesc.size() does not match, Aborting logging param values\n");
  }
}

void sub_25FBC74EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((*(v15 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v15);
  _Unwind_Resume(exception_object);
}

void HGComicStrokeAndBlend::HGComicStrokeAndBlend(HGComicStrokeAndBlend *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_2872097D8;
  *(v2 + 408) = 0x3F80000000000000;
  *(v2 + 416) = 1065353216;
  *(v2 + 428) = 0;
  *(v2 + 420) = 0;
  HGNode::SetFlags(v2, 2, 4);
  *(this + 4) |= 0x620u;
}

void HGComicStrokeAndBlend::~HGComicStrokeAndBlend(HGNode *this)
{
  HGNode::~HGNode(this);

  HGObject::operator delete(v1);
}

uint64_t HGComicStrokeAndBlend::SetParameter(HGComicStrokeAndBlend *this, int a2, float a3, float a4, float a5, float a6)
{
  result = 0xFFFFFFFFLL;
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (*(this + 105) != a3)
        {
          *(this + 105) = a3;
          return 1;
        }
      }

      else
      {
        if (a2 != 2)
        {
          return result;
        }

        if (*(this + 106) != a3)
        {
          *(this + 106) = a3;
          return 1;
        }
      }
    }

    else if (*(this + 102) != a3)
    {
      *(this + 102) = a3;
      return 1;
    }

    return 0;
  }

  if (a2 > 4)
  {
    if (a2 == 5)
    {
      if (*(this + 103) != a3)
      {
        *(this + 103) = a3;
        return 1;
      }
    }

    else
    {
      if (a2 != 6)
      {
        return result;
      }

      if (*(this + 104) != a3)
      {
        *(this + 104) = a3;
        return 1;
      }
    }

    return 0;
  }

  if (a2 == 3)
  {
    if (*(this + 107) != a3)
    {
      *(this + 107) = a3;
      return 1;
    }

    return 0;
  }

  if (*(this + 108) == a3)
  {
    return 0;
  }

  *(this + 108) = a3;
  return 1;
}

uint64_t HGComicStrokeAndBlend::GetDOD(HGComicStrokeAndBlend *this, HGRenderer *a2, int a3, HGRect a4)
{
  v13 = a4;
  if (a3 != 1)
  {
    return 0;
  }

  if (HGRect::IsInfinite(&v13))
  {
    return *&v13.var0;
  }

  v6 = *(this + 104);
  HGTransform::HGTransform(v12);
  HGTransform::Scale(v12, v6, v6, 1.0);
  v7 = *&v13.var0;
  v8 = *&v13.var2;
  v10 = HGTransformUtils::MinW(v9);
  *&v14.var0 = v8;
  DOD = HGTransformUtils::GetDOD(v12, v7, v14, 0.5, v10);
  HGTransform::~HGTransform(v12);
  return DOD;
}

uint64_t HGComicStrokeAndBlend::GetROI(HGComicStrokeAndBlend *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v15 = (*(this + 103) * (1.0 / *(this + 104)));
      HGTransform::HGTransform(v26);
      HGTransform::Scale(v26, v15, v15, 1.0);
      *&v27.var0 = 0;
      *&v27.var2 = 0;
      v17 = HGTransformUtils::MinW(v16);
      *&v33.var0 = v4;
      *&v27.var0 = HGTransformUtils::GetROI(v26, v5, v33, 0.5, v17);
      *&v27.var2 = *&v29.var0;
      LODWORD(v18) = vcvtps_s32_f32(*(this + 102) + *(this + 102));
      *&v29.var2 = v18 | (v18 << 32);
      v29.var0 = -v18;
      v29.var1 = -v18;
      HGRect::Grow(&v27, v29);
      v19 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      v21 = v20;
      *&v30.var0 = v19;
      *&v30.var2 = v21;
      HGRect::Grow(&v27, v30);
      goto LABEL_10;
    }

    if (a3 == 1)
    {
      v7 = 1.0 / *(this + 104);
      HGTransform::HGTransform(v26);
      HGTransform::Scale(v26, v7, v7, 1.0);
      *&v27.var0 = 0;
      *&v27.var2 = 0;
      v9 = HGTransformUtils::MinW(v8);
      *&v32.var0 = v4;
      *&v27.var0 = HGTransformUtils::GetROI(v26, v5, v32, 0.5, v9);
      *&v27.var2 = v10;
      v11 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      v13 = v12;
      *&v28.var0 = v11;
      *&v28.var2 = v13;
      HGRect::Grow(&v27, v28);
LABEL_10:
      HGTransform::~HGTransform(v26);
      return *&v27.var0;
    }

    goto LABEL_8;
  }

  if (a3 == 3)
  {
    v27 = a4;
    v22 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v24 = v23;
    *&v31.var0 = v22;
    *&v31.var2 = v24;
    HGRect::Grow(&v27, v31);
    return *&v27.var0;
  }

  if (a3 != 2)
  {
LABEL_8:
    v27 = HGRectNull;
    return *&v27.var0;
  }

  *&v27.var0 = HGRectMake4i(0, 0, 0x200u, 0x200u);
  *&v27.var2 = v14;
  return *&v27.var0;
}

uint64_t HGComicStrokeAndBlend::RenderTile(HGComicStrokeAndBlend *this, HGTile *a2)
{
  v4 = *(this + 104);
  v5 = *(this + 103);
  v6 = HGTile::Renderer(a2);
  v7 = (*(*this + 312))(this, v6);
  v9 = *a2;
  v117 = *(a2 + 3) - HIDWORD(*a2);
  if (v117 >= 1)
  {
    v10 = (*(a2 + 2) - v9.i32[0]);
    if (v10 >= 1)
    {
      v11 = v7;
      v12 = 0;
      *v13.f32 = vadd_f32(vcvt_f32_s32(v9), 0x3F0000003F000000);
      v13.i64[1] = 0x3F80000000000000;
      v14 = *(this + 102);
      v15 = 1.0 / (v14 * (v14 * 3.0));
      v16 = v14 + v14;
      v121 = 1.0 / v4;
      v120 = v5 * (1.0 / v4);
      v17 = *(a2 + 2);
      v18.i64[0] = 0x3F0000003F000000;
      v18.i64[1] = 0x3F0000003F000000;
      __asm { FMOV            V10.2S, #-1.0 }

      v24 = v13;
      v124 = v13;
      do
      {
        v119 = v12;
        v25 = 0;
        v118 = v24;
        v26 = v24;
        do
        {
          v28 = vmulq_n_f32(v26, v120);
          v29 = *(a2 + 10);
          v30 = *(a2 + 22);
          v31 = vsubq_f32(v28, v13);
          if (v11)
          {
            v32 = vaddq_s32(vcvtq_s32_f32(v31), vcltzq_f32(v31));
            v33 = vsubq_f32(v31, vcvtq_f32_s32(v32)).u64[0];
            v34 = (v29 + 16 * (v32.i32[0] + v32.i32[1] * v30));
            _Q1 = vaddq_f32(*v34, vmulq_n_f32(vsubq_f32(v34[1], *v34), v33.f32[0]));
            v36 = vaddq_f32(_Q1, vmulq_lane_f32(vsubq_f32(vaddq_f32(v34[v30], vmulq_n_f32(vsubq_f32(v34[v30 + 1], v34[v30]), v33.f32[0])), _Q1), v33, 1));
            v122 = v26;
            v37 = 0.5;
            if (v16 <= 1.0)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v38 = vaddq_f32(v31, v18);
            _Q1 = vcvtq_s32_f32(v38);
            v38.i64[0] = vaddq_s32(_Q1, vcgtq_f32(vcvtq_f32_s32(_Q1), v38)).u64[0];
            v36 = *(v29 + 16 * (v38.i32[0] + v38.i32[1] * v30));
            v122 = v26;
            v37 = 0.5;
            if (v16 <= 1.0)
            {
              goto LABEL_16;
            }
          }

          v123 = v28;
          v39 = vextq_s8(v36, v36, 4uLL).u64[0];
          *v8.f32 = vadd_f32(vadd_f32(v39, v39), _D10);
          v40 = vnegq_f32(v8);
          v41 = vdup_n_s32(v30);
          v42 = 1.0;
          do
          {
            v125 = v40;
            v126 = v8;
            v127 = v36;
            v60 = expf(-(v42 * v15));
            v61 = vsubq_f32(vaddq_f32(v123, v126), v124);
            if (v11)
            {
              v62 = vaddq_s32(vcvtq_s32_f32(v61), vcltzq_f32(v61));
              v47 = v125;
              v63 = vsubq_f32(vaddq_f32(v123, v125), v124);
              v64 = vaddq_s32(vcvtq_s32_f32(v63), vcltzq_f32(v63));
              v65 = vmla_s32(vzip1_s32(*v62.i8, *v64.i8), vzip2_s32(*v62.i8, *v64.i8), v41);
              v66 = v65.i32[1];
              v67 = (v29 + 16 * v65.i32[0]);
              v68 = *v67;
              v69 = v67[1];
              v70 = &v67[v30];
              v71 = vsubq_f32(v61, vcvtq_f32_s32(v62));
              v72 = vsubq_f32(v63, vcvtq_f32_s32(v64));
              v73 = vsubq_f32(v69, v68);
              v74 = vaddq_f32(v68, vmulq_f32(v73, v71));
              v75 = vsubq_f32(v70[1], *v70);
              v76 = (v29 + 16 * v66);
              v77 = vaddq_f32(*v76, vmulq_f32(vsubq_f32(v76[1], *v76), v72)).f32[0];
              v54 = (v74.f32[0] + vmuls_lane_f32(vsubq_f32(vaddq_f32(*v70, vmulq_f32(v71, v75)), v74).f32[0], *v71.f32, 1)) + (v77 + vmuls_lane_f32((v76[v30].f32[0] + ((v76[v30 + 1].f32[0] - v76[v30].f32[0]) * v72.f32[0])) - v77, *v72.f32, 1));
              v78 = vaddq_f32(v68, vmulq_n_f32(v73, v71.f32[0]));
              v53 = vaddq_f32(v78, vmulq_lane_f32(vsubq_f32(vaddq_f32(*v70, vmulq_n_f32(v75, v71.f32[0])), v78), *v71.f32, 1));
              v55 = vaddq_s32(vcvtq_s32_f32(v63), vcltzq_f32(v63));
              v63.i64[0] = vsubq_f32(v63, vcvtq_f32_s32(v55)).u64[0];
              v56 = (v29 + 16 * (v55.i32[0] + v55.i32[1] * v30));
              v57 = vaddq_f32(*v56, vmulq_n_f32(vsubq_f32(v56[1], *v56), v63.f32[0]));
              _Q1 = vaddq_f32(v57, vmulq_lane_f32(vsubq_f32(vaddq_f32(v56[v30], vmulq_n_f32(vsubq_f32(v56[v30 + 1], v56[v30]), v63.f32[0])), v57), *v63.f32, 1));
            }

            else
            {
              v43.i64[0] = 0x3F0000003F000000;
              v43.i64[1] = 0x3F0000003F000000;
              v44 = vaddq_f32(v61, v43);
              v45 = vcvtq_s32_f32(v44);
              v46 = vcgtq_f32(vcvtq_f32_s32(v45), v44).u64[0];
              v47 = v125;
              v48 = vsubq_f32(vaddq_f32(v123, v125), v124);
              v49 = vaddq_f32(v48, v43);
              v50 = vcvtq_s32_f32(v49);
              *v45.i8 = vadd_s32(*v45.i8, v46);
              v51 = vadd_s32(*v50.i8, *&vcgtq_f32(vcvtq_f32_s32(v50), v49));
              *v45.i8 = vmla_s32(vzip1_s32(*v45.i8, v51), vzip2_s32(*v45.i8, v51), v41);
              v52 = v45.i32[1];
              v53 = *(v29 + 16 * v45.i32[0]);
              v54 = *v53.i32 + *(v29 + 16 * v52);
              v49.i64[0] = 0x3F0000003F000000;
              v49.i64[1] = 0x3F0000003F000000;
              v79 = vaddq_f32(v48, v49);
              v80 = vcvtq_s32_f32(v79);
              v79.i64[0] = vaddq_s32(v80, vcgtq_f32(vcvtq_f32_s32(v80), v79)).u64[0];
              _Q1 = *(v29 + 16 * (v79.i32[0] + v79.i32[1] * v30));
            }

            v28 = v127;
            v28.f32[0] = v127.f32[0] + (v60 * v54);
            v36 = v28;
            v37 = v37 + v60;
            v58 = vextq_s8(v53, v53, 4uLL);
            *v58.f32 = vadd_f32(vadd_f32(*v58.f32, *v58.f32), _D10);
            v8 = vaddq_f32(v126, v58);
            v59 = vextq_s8(_Q1, _Q1, 4uLL);
            *v59.f32 = vadd_f32(vadd_f32(*v59.f32, *v59.f32), _D10);
            v40 = vaddq_f32(v47, vnegq_f32(v59).u64[0]);
            v42 = v42 + 1.0;
          }

          while (v42 < v16);
LABEL_16:
          v81 = (*v36.i32 * 0.5) / v37;
          v82 = 0.0;
          v18.i64[0] = 0x3F0000003F000000;
          v18.i64[1] = 0x3F0000003F000000;
          if (v81 > 0.0)
          {
            v83 = fminf(fmaxf(v81 / 0.8, 0.0), 1.0);
            v82 = (v83 * v83) * (3.0 - (v83 + v83));
          }

          v84 = *(a2 + 12);
          v85 = *(a2 + 26);
          v13 = v124;
          v86 = vsubq_f32(vmulq_n_f32(v122, v121), v124);
          if (v11)
          {
            v87 = vaddq_s32(vcvtq_s32_f32(v86), vcltzq_f32(v86));
            v88 = vsubq_f32(v86, vcvtq_f32_s32(v87)).u64[0];
            v89 = (v84 + 16 * (v87.i32[0] + v87.i32[1] * v85));
            v90 = vaddq_f32(*v89, vmulq_n_f32(vsubq_f32(v89[1], *v89), v88.f32[0]));
            v91 = &v89[v85];
            v28 = vmulq_n_f32(vsubq_f32(v91[1], *v91), v88.f32[0]);
            v92 = vaddq_f32(v90, vmulq_lane_f32(vsubq_f32(vaddq_f32(*v91, v28), v90), v88, 1));
            if (*(this + 108) != 0.0)
            {
              v93 = *(a2 + 34);
              v94 = vsubq_f32(v122, v124);
              v95 = vaddq_s32(vcvtq_s32_f32(v94), vcltzq_f32(v94));
              v94.i64[0] = vsubq_f32(v94, vcvtq_f32_s32(v95)).u64[0];
              v96 = (*(a2 + 16) + 16 * (v95.i32[0] + v95.i32[1] * v93));
              v97 = vaddq_f32(*v96, vmulq_n_f32(vsubq_f32(v96[1], *v96), v94.f32[0]));
              v28 = vsubq_f32(vaddq_f32(v96[v93], vmulq_n_f32(vsubq_f32(v96[v93 + 1], v96[v93]), v94.f32[0])), v97);
              v98 = vaddq_f32(v97, vmulq_lane_f32(v28, *v94.f32, 1));
              goto LABEL_24;
            }
          }

          else
          {
            v99 = vaddq_f32(v86, v18);
            v100 = vcvtq_s32_f32(v99);
            v99.i64[0] = vaddq_s32(v100, vcgtq_f32(vcvtq_f32_s32(v100), v99)).u64[0];
            v92 = *(v84 + 16 * (v99.i32[0] + v99.i32[1] * v85));
            if (*(this + 108) != 0.0)
            {
              v101 = vaddq_f32(vsubq_f32(v122, v124), v18);
              v102 = vcvtq_s32_f32(v101);
              v28 = vcvtq_f32_s32(v102);
              v101.i64[0] = vaddq_s32(v102, vcgtq_f32(v28, v101)).u64[0];
              v98 = *(*(a2 + 16) + 16 * (v101.i32[0] + v101.i32[1] * *(a2 + 34)));
              goto LABEL_24;
            }
          }

          v98 = v92;
LABEL_24:
          v103 = 1.0 - v82;
          v28.f32[0] = v103 * (v103 * v103);
          v28.f32[1] = v103 * v103;
          __asm { FMOV            V1.2S, #1.0 }

          v104 = vsub_f32(*_Q1.f32, *v28.f32);
          *v28.f32 = vmul_f32(v104, *v92.f32);
          v28.i32[2] = vmuls_lane_f32(v104.f32[1], v92, 2);
          v105 = v28;
          v105.i32[3] = v92.i32[3];
          if (*(this + 105) != 0.0)
          {
            v28.i32[3] = 0;
            v106 = vmulq_f32(v28, xmmword_26038EA90);
            *v106.i8 = vadd_f32(*v106.i8, *&vextq_s8(v106, v106, 8uLL));
            v107 = vdupq_lane_s32(vadd_f32(*v106.i8, vdup_lane_s32(*v106.i8, 1)), 0);
            v107.i32[3] = v105.i32[3];
            v105 = v107;
          }

          __asm { FMOV            V2.4S, #1.0 }

          v109 = vmaxnmq_f32(vminnmq_f32(v105, _Q2), 0);
          if (*(this + 106) != 0.0)
          {
            v110 = ceilf(vmuls_lane_f32(63.0, v109, 2));
            v111 = floorf(v110 * 0.125);
            v112.f32[0] = v110 + (v111 * -8.0);
            v112.f32[1] = v111;
            v113 = vmaxnm_f32(vminnm_f32(vmul_f32(vmaxnm_f32(vminnm_f32(vadd_f32(vmul_f32(*v109.f32, vdup_n_s32(0x3DFC0000u)), vadd_f32(vmul_f32(v112, 0x3E0000003E000000), vdup_n_s32(0x3A800000u))), *_Q1.f32), 0), 0x4400000044000000), 0x4400000044000000), 0);
            v114 = *(*(a2 + 14) + 16 * (v113.f32[0] + *(a2 + 30) * v113.f32[1]));
            v114.i32[3] = 0;
            v105 = xmmword_260344BA0;
            v115 = vminnmq_f32(v114, xmmword_260344BA0);
            v115.i32[3] = 0;
            _Q1 = vmaxnmq_f32(v115, 0);
            _Q1.i32[3] = v109.i32[3];
            v109 = _Q1;
          }

          _Q1.i32[0] = *(this + 107);
          v105.i32[0] = 1.0;
          v27 = vbslq_s8(vdupq_lane_s32(*&vceqq_f32(_Q1, v105), 0), vmulq_laneq_f32(v109, v98, 3), v109);
          v27.i32[3] = v98.i32[3];
          *(v17 + 16 * v25) = v27;
          v26 = vaddq_f32(v122, xmmword_2603429B0);
          ++v25;
        }

        while (v25 != v10);
        v24 = vaddq_f32(v118, xmmword_2603429C0);
        v17 += 16 * *(a2 + 6);
        v12 = v119 + 1;
      }

      while (v119 + 1 != v117);
    }
  }

  return 0;
}

HGComicStrokeAndBlend *HGComicStrokeAndBlend::GetOutput(HGComicStrokeAndBlend *this, HGRenderer *a2, char *a3)
{
  HGNode::SetParameter(this, 0, *(this + 102), 0.0, 0.0, 0.0, a3);
  HGNode::SetParameter(this, 1, *(this + 105), 0.0, 0.0, 0.0, v4);
  HGNode::SetParameter(this, 2, *(this + 106), 0.0, 0.0, 0.0, v5);
  if (*(this + 107) == 1.0)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  HGNode::SetParameter(this, 3, v7, 0.0, 0.0, 0.0, v6);
  if (*(this + 108) == 1.0)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  HGNode::SetParameter(this, 4, v9, 0.0, 0.0, 0.0, v8);
  if (*(this + 106) == 0.0)
  {
    v11 = (*(*this + 128))(this, 0);
    (*(*this + 120))(this, 2, v11);
    if (*(this + 108) != 0.0)
    {
      return this;
    }
  }

  else if (*(this + 108) != 0.0)
  {
    return this;
  }

  v12 = (*(*this + 128))(this, 0);
  (*(*this + 120))(this, 3, v12);
  return this;
}

const char *HGComicStrokeAndBlend::GetProgram(HGComicStrokeAndBlend *this, HGRenderer *a2)
{
  if (HGRenderer::GetTarget(a2, 393216) > 0x60B0F)
  {
    return aMetal10Len0000_366;
  }

  if ((*(*a2 + 128))(a2, 46))
  {
    return aGlfs10Len00000;
  }

  return 0;
}

uint64_t HGComicStrokeAndBlend::BindTexture(HGComicStrokeAndBlend *this, HGHandler *a2, uint64_t a3)
{
  if (a3 == 1)
  {
    v5 = 1.0 / *(this + 104);
    v6 = a2;
    v7 = 1;
  }

  else
  {
    if (a3)
    {
      HGHandler::TexCoord(a2, a3, 0, 0, 0);
      goto LABEL_7;
    }

    v5 = *(this + 103) * (1.0 / *(this + 104));
    v6 = a2;
    v7 = 0;
  }

  HGHandler::TexCoord(v6, v7, 0, 0, 0);
  (*(*a2 + 104))(a2, v5, v5, 1.0);
LABEL_7:
  (*(*a2 + 72))(a2, a3, 0);
  (*(*a2 + 56))(a2, 0);
  (*(*a2 + 48))(a2, 1, 1);
  return 0;
}

uint64_t HGTraversal::RecursiveTraversal<(HGTraversal::NodeInput)1,(HGTraversal::InputOrder)0>::operator()(uint64_t result, HGRenderer *a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v7 = result;
    result = (*(*a4 + 72))(a4);
    if ((result & 1) == 0)
    {
      (*(*a4 + 16))(a4, a2, a3);
      v8 = (*(*a4 + 24))(a4, a2, a3);
      v9 = *a4;
      if (v8)
      {
        (*v9)(a4, a2, a3);
        if ((*(*a4 + 32))(a4, a2, a3))
        {
          v10 = (*(*a3 + 112))(a3);
          if (v10)
          {
            v11 = v10;
            v12 = 0;
            do
            {
              (*(*a4 + 40))(a4, a2, a3, v12);
              if ((*(*a4 + 48))(a4, a2, a3, v12))
              {
                (*(*a4 + 56))(a4, a2, a3, v12);
                v13 = (*(*a3 + 128))(a3, v12);
                if (v13)
                {
                  Output = HGRenderer::GetOutput(a2, v13);
                  if (Output)
                  {
                    HGTraversal::RecursiveTraversal<(HGTraversal::NodeInput)1,(HGTraversal::InputOrder)0>::operator()(v7, a2, Output, a4);
                  }
                }
              }

              v12 = (v12 + 1);
            }

            while (v11 != v12);
          }
        }

        v16 = *(*a4 + 8);

        return v16(a4, a2, a3);
      }

      else
      {
        v15 = *(v9 + 64);

        return v15(a4, a2, a3);
      }
    }
  }

  return result;
}

void sub_25FBC8DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  std::__tree<HGNode *>::destroy(va, v7);
  std::deque<HGNode *>::~deque[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_25FBC9270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  std::__tree<HGNode *>::destroy(va, v7);
  std::deque<HGNode *>::~deque[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t std::deque<HGNode *>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<HGNode *>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<HGNode *>::destroy(a1, *a2);
    std::__tree<HGNode *>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::deque<HGNode *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<HGNode **>::emplace_back<HGNode **&>(a1, &v11);
}

void sub_25FBC9750(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<HGNode **>::emplace_back<HGNode **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **std::__split_buffer<HGNode **>::emplace_front<HGNode **>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

void HFGrabCutInterface::~HFGrabCutInterface(HFGrabCutInterface *this)
{
  this->var0 = &unk_287209A70;
  var1 = this->var1;
  if (var1)
  {
    (*(*var1 + 8))(this->var1);
  }
}

{
  this->var0 = &unk_287209A70;
  var1 = this->var1;
  if (var1)
  {
    (*(*var1 + 8))(this->var1);
    v1 = vars8;
  }

  JUMPOUT(0x2666E9F00);
}

void HGGradient::HGGradient(HGGradient *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_287209AA0;
  v2[51] = 0;
  v3 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v3);
  v4 = *(this + 51);
  if (v4 == v3)
  {
    if (v3)
    {
      (*(*v3 + 24))(v3);
    }
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    *(this + 51) = v3;
  }

  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 117) = 1065353216;
  *(this + 122) = 1065353216;
  *(this + 128) = 1065353216;
}

void sub_25FBC9D5C(_Unwind_Exception *a1)
{
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v4 = *(v1 + 408);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGGradient::~HGGradient(HGGradient *this)
{
  *this = &unk_287209AA0;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGGradient::~HGGradient(HGNode *this)
{
  *this = &unk_287209AA0;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGGradient::SetGradientMode(uint64_t a1, int a2)
{
  *(a1 + 416) = a2;
  GradientNode = HGGradient::_createGradientNode(a1, a2);
  result = *(a1 + 408);
  if (result == GradientNode)
  {
    if (GradientNode)
    {
      return (*(*GradientNode + 24))(GradientNode);
    }
  }

  else
  {
    if (result)
    {
      result = (*(*result + 24))(result);
    }

    *(a1 + 408) = GradientNode;
  }

  return result;
}

void sub_25FBC9F94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

HGGradientRadial *HGGradient::_createGradientNode(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v2 = HGObject::operator new(0x1B0uLL);
    HGGradientRadial::HGGradientRadial(v2);
  }

  else if (a2)
  {
    v2 = HGObject::operator new(0x1A0uLL);
    HGNode::HGNode(v2);
  }

  else
  {
    v2 = HGObject::operator new(0x1B0uLL);
    HGGradientLinear::HGGradientLinear(v2);
  }

  return v2;
}

uint64_t HGGradient::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(**(this + 51) + 96))(*(this + 51), 0, *(this + 105), *(this + 106), *(this + 107), *(this + 108));
  (*(**(this + 51) + 96))(*(this + 51), 1, *(this + 109), *(this + 110), *(this + 111), *(this + 112));
  (*(**(this + 51) + 96))(*(this + 51), 2, *(this + 113), *(this + 114), *(this + 115), *(this + 116));
  (*(**(this + 51) + 96))(*(this + 51), 3, *(this + 117), *(this + 118), *(this + 119), *(this + 120));
  (*(**(this + 51) + 96))(*(this + 51), 4, *(this + 121), *(this + 122), *(this + 123), *(this + 124));
  (*(**(this + 51) + 96))(*(this + 51), 5, *(this + 125), *(this + 126), *(this + 127), *(this + 128));
  (*(**(this + 51) + 120))(*(this + 51), 0, Input);
  return *(this + 51);
}

uint64_t HGGradient::SetParameter(HGGradient *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 5)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (this + 16 * a2 + 420);
  if (*v7 == a3 && *(this + 4 * a2 + 106) == a4 && *(this + 4 * a2 + 107) == a5 && *(this + 4 * a2 + 108) == a6)
  {
    return 0;
  }

  *v7 = a3;
  *(this + 4 * a2 + 106) = a4;
  *(this + 4 * a2 + 107) = a5;
  *(this + 4 * a2 + 108) = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

void HGCVPixelBufferPoolImpl::HGCVPixelBufferPoolImpl(uint64_t a1, void *a2)
{
  v4 = HGPool::BasePool::BasePool(a1);
  *v4 = &unk_287209E58;
  v4[2] = *a2;
  v5 = a2[1];
  v4[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *a2;
  v6 = a2[1];
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 152) = *a2;
  v7 = a2[1];
  *(a1 + 160) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 232) = 0uLL;
  *(a1 + 216) = 0uLL;
  *(a1 + 200) = 0uLL;
  *(a1 + 184) = 0uLL;
  *(a1 + 168) = 0uLL;
  *(a1 + 264) = 0uLL;
  *(a1 + 280) = 0uLL;
  *(a1 + 296) = 0uLL;
  *(a1 + 343) = 14;
  *(a1 + 312) = 0;
  strcpy((a1 + 320), "(unnamed) pool");
  *(a1 + 367) = 6;
  strcpy((a1 + 344), "hgpool");
  *(a1 + 368) = 0;
  *(a1 + 372) = 257;
  *(a1 + 374) = 1;
  *(a1 + 8) = 17;
  v8 = *(a1 + 10) | 0x110000;
  *(a1 + 144) = v8;
  *(a1 + 248) = v8;
  *(a1 + 256) = 850045863;
  *a1 = &unk_287209D08;
  operator new();
}

void sub_25FBCA610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a16);
  HGPool::Pool<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~Pool(v16, v18);
  _Unwind_Resume(a1);
}

uint64_t std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t HGPool::Pool<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~Pool(uint64_t a1, HGPool::BasePool *a2)
{
  *a1 = &unk_287209E58;
  HGPool::unregisterPool(a1, a2);
  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
    if ((*(a1 + 343) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    operator delete(*(a1 + 320));
    goto LABEL_3;
  }

  if (*(a1 + 343) < 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  std::mutex::~mutex((a1 + 256));
  HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,false>::~List((a1 + 152));
  std::deque<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>::~deque[abi:ne200100](a1 + 80);
  v3 = *(a1 + 72);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 56);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 40);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 24);
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

void HGCVPixelBufferPool::HGCVPixelBufferPool(HGCVPixelBufferPool *this)
{
  HGObject::HGObject(this);
  *v1 = &unk_287209D78;
  operator new();
}

void sub_25FBCAA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a9);
  MEMORY[0x2666E9F00](v12, 0x10B3C40C3EE8A59);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a11);
  HGObject::~HGObject(v11);
  _Unwind_Resume(a1);
}

void sub_25FBCAA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  HGObject::~HGObject(v3);
  _Unwind_Resume(a1);
}

void HGCVPixelBufferPool::~HGCVPixelBufferPool(HGCVPixelBufferPool *this, HGPool::BasePool *a2)
{
  *this = &unk_287209D78;
  HGPool::unregisterPool(*(this + 2), a2);
  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  HGObject::~HGObject(this);
}

{
  *this = &unk_287209D78;
  HGPool::unregisterPool(*(this + 2), a2);
  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  HGObject::~HGObject(this);

  HGObject::operator delete(v4);
}

void HGCVPixelBufferPool::setServicingPolicy(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  std::mutex::lock((v3 + 256));
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(v3 + 176);
  *(v3 + 168) = v5;
  *(v3 + 176) = v4;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = (v3 + 256);
  }

  else
  {
    v7 = (v3 + 256);
  }

  std::mutex::unlock(v7);
}

void sub_25FBCAE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void HGPool::Pool<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::service(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  std::mutex::lock((a1 + 256));
  if (*(a1 + 224))
  {
    v8 = 0;
    do
    {
      v9 = atomic_load((a1 + 232));
      if (v9 <= a2)
      {
        v10 = atomic_load((a1 + 240));
        if (v10 <= a4)
        {
          v11 = *(a1 + 216);
          v12 = *(*(a1 + 192) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8));
          if (std::chrono::steady_clock::now().__d_.__rep_ - *(v12 + ((v11 & 0x3F) << 6) + 40) <= a3)
          {
            break;
          }
        }
      }

      HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,false>::_pop_front((a1 + 152));
      ++v8;
    }

    while (*(a1 + 224));
    if (v8)
    {
      (*(*a1 + 24))(a1);
      (*(*a1 + 40))(a1);
      kdebug_trace();
    }
  }

  std::mutex::unlock((a1 + 256));
}

void HGPool::Pool<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::clear(uint64_t a1)
{
  std::mutex::lock((a1 + 256));
  if (*(a1 + 224))
  {
    v2 = 0;
    do
    {
      HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,false>::_pop_front((a1 + 152));
      --v2;
    }

    while (*(a1 + 224));
    if (v2)
    {
      (*(*a1 + 24))(a1);
      (*(*a1 + 40))(a1);
      kdebug_trace();
    }
  }

  std::mutex::unlock((a1 + 256));
}

void HGPool::Pool<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::newObject(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || (v4 = *(a1 + 32)) == 0)
  {
    v5 = *a2;
    v6 = *(a2 + 16);
  }

  else
  {
    (*(*v4 + 16))(&v5);
  }

  std::mutex::lock((a1 + 256));
  HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,false>::retrieveObject(a1 + 152, &v5);
}

void HGPool::Pool<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::releaseObject(std::mutex *a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock(a1 + 4);
  HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,true>::retrieveObject(&a1->__m_.__opaque[40], &v3);
}

void HGCVPixelBuffer::~HGCVPixelBuffer(HGCVPixelBuffer *this)
{
  *this = &unk_287209DB0;
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 2);
    if (v3)
    {
      HGPool::Pool<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::releaseObject(*(v3 + 16), v2);
    }

    CVPixelBufferRelease(*(this + 3));
  }

  v4 = *(this + 2);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  HGObject::~HGObject(this);
}

{
  HGCVPixelBuffer::~HGCVPixelBuffer(this);

  HGObject::operator delete(v1);
}

void HGCVPixelBuffer::create(HGCVPixelBuffer *this@<X0>, HGObject **a2@<X8>)
{
  *a2 = 0;
  if (this)
  {
    CVPixelBufferRetain(this);
    v5 = HGObject::operator new(0x20uLL);
    HGObject::HGObject(v5);
    *v5 = &unk_287209DB0;
    *(v5 + 2) = 0;
    *(v5 + 3) = this;
    *a2 = v5;
  }
}

void HGCVPixelBuffer::convert(HGCVPixelBuffer *this@<X0>, HGObject **a2@<X8>)
{
  *a2 = 0;
  if (this)
  {
    v5 = HGObject::operator new(0x20uLL);
    HGObject::HGObject(v5);
    *v5 = &unk_287209DB0;
    *(v5 + 2) = 0;
    *(v5 + 3) = this;
    *a2 = v5;
  }
}

void HGCVPixelBuffer::create(HGCVPixelBuffer *this@<X0>, size_t a2@<X1>, OSType a3@<W2>, int a4@<W3>, HGObject **a5@<X8>)
{
  *a5 = 0;
  if (CVPixelBuffer)
  {
    v7 = CVPixelBuffer;
    v8 = HGObject::operator new(0x20uLL);
    HGObject::HGObject(v8);
    *v8 = &unk_287209DB0;
    *(v8 + 2) = 0;
    *(v8 + 3) = v7;
    *a5 = v8;
  }
}

void HGCVPixelBuffer::create(HGCVPixelBuffer *this@<X0>, size_t a2@<X1>, OSType a3@<W2>, HGObject **a4@<X8>)
{
  *a4 = 0;
  if (CVPixelBuffer)
  {
    v6 = CVPixelBuffer;
    v7 = HGObject::operator new(0x20uLL);
    HGObject::HGObject(v7);
    *v7 = &unk_287209DB0;
    *(v7 + 2) = 0;
    *(v7 + 3) = v6;
    *a4 = v7;
  }
}

CVPixelBufferRef anonymous namespace::_allocateCVPixelBuffer(_anonymous_namespace_ *this, size_t a2, OSType a3, int a4)
{
  keys[1] = *MEMORY[0x277D85DE8];
  HGTraceGuard::HGTraceGuard(v19, "hgcv", 1, "allocateCVPixelBuffer()");
  keys[0] = *MEMORY[0x277CD2A78];
  v8 = MEMORY[0x277CBED28];
  if (!a4)
  {
    v8 = MEMORY[0x277CBED10];
  }

  values = *v8;
  v9 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v10 = *MEMORY[0x277CC4DE8];
  v20 = v9;
  v21 = v10;
  v11 = CFDictionaryCreate(0, &v21, &v20, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  pixelBufferOut = 0;
  v12 = CVPixelBufferCreate(0, this, a2, a3, v11, &pixelBufferOut);
  if (v12)
  {
    v15 = atomic_load(HGLogger::_enabled);
    if (v15)
    {
      HGLogger::log("hgcv", 1, " **** CVPixelBufferRef() error! booo! (%d)\n", v13, v14, v12);
    }

    pixelBufferOut = 0;
  }

  CFRelease(v9);
  CFRelease(v11);
  v16 = pixelBufferOut;
  HGTraceGuard::~HGTraceGuard(v19);
  return v16;
}

void sub_25FBCBEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBCBEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBCBED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

const char *HGCVPixelBuffer::create@<X0>(_anonymous_namespace_ *this@<X1>, const char **a2@<X0>, char *a3@<X2>, OSType a4@<W3>, char a5@<W4>, HGObject **a6@<X8>)
{
  *a6 = 0;
  if (this && a3)
  {
    v8 = *a2;
    if (*a2)
    {
      v14[0] = this;
      v14[1] = a3;
      v15 = a4;
      v16 = a5;
      HGPool::Pool<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::newObject(*(v8 + 2), v14, 0);
    }

    if (CVPixelBuffer)
    {
      v9 = HGObject::operator new(0x20uLL);
      HGObject::HGObject(v9);
      *v9 = &unk_287209DB0;
      result = *a2;
      *(v9 + 2) = *a2;
      if (result)
      {
        result = (*(*result + 16))(result);
      }

      *(v9 + 3) = CVPixelBuffer;
      *a6 = v9;
    }

    else
    {
      return HGLogger::warning("HGCVPixelBuffer::create() failed. Could not allocate CVPixelBuffer.", v11, v12);
    }
  }

  else
  {

    return HGLogger::warning("HGCVPixelBuffer::create() failed. Invalid size (width == 0 || height == 0).", this, a3);
  }

  return result;
}

void sub_25FBCC01C(_Unwind_Exception *a1)
{
  HGObject::~HGObject(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

size_t HGCVPixelBuffer::w(HGCVPixelBuffer *this, size_t a2)
{
  PlaneCount = CVPixelBufferGetPlaneCount(*(this + 3));
  v5 = *(this + 3);
  if (PlaneCount)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(v5);
    v7 = *(this + 3);
    if (PixelFormatType == 1647392369)
    {
      return CVPixelBufferGetWidth(v7) >> 1;
    }

    else
    {

      return CVPixelBufferGetWidthOfPlane(v7, a2);
    }
  }

  else
  {

    return CVPixelBufferGetWidth(v5);
  }
}

size_t HGCVPixelBuffer::h(HGCVPixelBuffer *this, size_t a2)
{
  PlaneCount = CVPixelBufferGetPlaneCount(*(this + 3));
  v5 = *(this + 3);
  if (PlaneCount)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(v5);
    v7 = *(this + 3);
    if (PixelFormatType == 1647392369)
    {
      return CVPixelBufferGetHeight(v7) >> 1;
    }

    else
    {

      return CVPixelBufferGetHeightOfPlane(v7, a2);
    }
  }

  else
  {

    return CVPixelBufferGetHeight(v5);
  }
}

size_t HGCVPixelBuffer::rowBytes(HGCVPixelBuffer *this, size_t a2)
{
  PlaneCount = CVPixelBufferGetPlaneCount(*(this + 3));
  v5 = *(this + 3);
  if (PlaneCount)
  {

    return CVPixelBufferGetBytesPerRowOfPlane(v5, a2);
  }

  else
  {

    return CVPixelBufferGetBytesPerRow(v5);
  }
}

void *HGCVPixelBuffer::ptr(HGCVPixelBuffer *this, size_t a2)
{
  PlaneCount = CVPixelBufferGetPlaneCount(*(this + 3));
  v5 = *(this + 3);
  if (PlaneCount)
  {

    return CVPixelBufferGetBaseAddressOfPlane(v5, a2);
  }

  else
  {

    return CVPixelBufferGetBaseAddress(v5);
  }
}

void HGCVPixelBufferPoolImpl::~HGCVPixelBufferPoolImpl(HGCVPixelBufferPoolImpl *this, HGPool::BasePool *a2)
{
  HGPool::Pool<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~Pool(this, a2);

  JUMPOUT(0x2666E9F00);
}

void HGPool::Pool<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::service(uint64_t a1)
{
  std::mutex::lock((a1 + 256));
  if (HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,false>::service((a1 + 152), a1))
  {
    (*(*a1 + 24))(a1);
    (*(*a1 + 40))(a1);
    kdebug_trace();
  }

  std::mutex::unlock((a1 + 256));
}

void HGPool::Pool<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::trace(std::mutex *a1)
{
  std::mutex::lock(a1 + 4);
  sig = a1 + 5;
  if (a1[5].__m_.__opaque[15] < 0)
  {
    sig = sig->__m_.__sig;
  }

  (*(a1->__m_.__sig + 24))(a1, sig);
  (*(a1->__m_.__sig + 16))(a1);
  (*(a1->__m_.__sig + 40))(a1);
  (*(a1->__m_.__sig + 32))(a1);
  std::mutex::unlock(a1 + 4);
}

void HGPool::Pool<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::log(uint64_t a1, const char *a2)
{
  v3 = (a1 + 344);
  if (*(a1 + 367) < 0)
  {
    v3 = *v3;
    if (HGLogger::getLevel(v3, a2) < 2)
    {
      return;
    }
  }

  else if (HGLogger::getLevel((a1 + 344), a2) < 2)
  {
    return;
  }

  std::mutex::lock((a1 + 256));
  v6 = atomic_load(HGLogger::_enabled);
  if (v6)
  {
    v7 = (a1 + 320);
    if (*(a1 + 343) < 0)
    {
      v7 = *v7;
    }

    HGLogger::log(v3, 2, "pool '%s' (%p)\n", v4, v5, v7, a1);
  }

  HGLogger::indent(1);
  v10 = atomic_load(HGLogger::_enabled);
  if (v10)
  {
    HGLogger::log(v3, 2, "live objects:\n", v8, v9);
  }

  HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,true>::log((a1 + 48), v3);
  v13 = atomic_load(HGLogger::_enabled);
  if (v13)
  {
    HGLogger::log(v3, 2, "free objects:\n", v11, v12);
  }

  HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,false>::log((a1 + 152), v3);
  HGLogger::indent(0xFFFFFFFFLL);

  std::mutex::unlock((a1 + 256));
}

void HGPool::Pool<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~Pool(uint64_t a1, HGPool::BasePool *a2)
{
  HGPool::Pool<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~Pool(a1, a2);

  JUMPOUT(0x2666E9F00);
}

int64x2_t *HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,false>::~List(int64x2_t *a1)
{
  while (a1[4].i64[1])
  {
    HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,false>::_pop_front(a1);
  }

  std::deque<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>::~deque[abi:ne200100](a1[2].i64);
  v2 = a1[1].i64[1];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1->i64[1];
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,false>::_pop_front(int64x2_t *a1)
{
  v2 = (*(a1[2].i64[1] + ((a1[4].i64[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((a1[4].i64[0] & 0x3F) << 6));
  v3 = v2[3];
  v5 = *v2;
  v4 = v2[1];
  v11 = v2[2];
  v12 = v3;
  *pixelBuffer = v5;
  v10 = v4;
  atomic_fetch_add(a1[5].i64, 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add(&a1[5].i64[1], -CVPixelBufferGetDataSize(v5));
  v6 = a1[2].i64[1];
  v7 = vaddq_s64(a1[4], xmmword_260342880);
  a1[4] = v7;
  if (v7.i64[0] >= 0x80uLL)
  {
    operator delete(*v6);
    a1[2].i64[1] += 8;
    a1[4].i64[0] -= 64;
  }

  HGPool::EntryEventHandler<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::deleted(pixelBuffer);
  kdebug_trace();
  kdebug_trace();
  (*(*a1->i64[0] + 24))(a1->i64[0], pixelBuffer[0]);
  if (pixelBuffer[1])
  {
    (*(*a1->i64[0] + 24))();
  }

  return kdebug_trace();
}

void HGSignPost::EventScopeGuard::~EventScopeGuard(HGSignPost::EventScopeGuard *this)
{
  kdebug_trace();
}

{
  kdebug_trace();
}

uint64_t HGPool::EntryEventHandler<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::deleted(CVPixelBufferRef *a1)
{
  CVPixelBufferGetDataSize(*a1);
  HGPool::DescriptorString<HGCVPixelBufferPool::Descriptor>::str((a1 + 2));
  IOSurface = CVPixelBufferGetIOSurface(*a1);
  ID = IOSurfaceGetID(IOSurface);
  if (v9 < 0)
  {
    operator delete(__p);
    v7 = atomic_load(HGLogger::_enabled);
    if ((v7 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = atomic_load(HGLogger::_enabled);
  if (v5)
  {
LABEL_3:
    HGLogger::log("hgcv", 1, "HGCV - deleted entry: \n", ID, v4);
  }

LABEL_4:
  HGLogger::indent(1);
  HGPool::EntryLog<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::log(a1, "hgcv", 1);
  return HGLogger::indent(0xFFFFFFFFLL);
}

void sub_25FBCCC00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGPool::DescriptorString<HGCVPixelBufferPool::Descriptor>::str(uint64_t a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v2 = MEMORY[0x2666E9B80](&v14, *a1);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " x ", 3);
  v4 = MEMORY[0x2666E9B80](v3, *(a1 + 8));
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", ", 2);
  v19 = *(a1 + 19);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v19, 1);
  v19 = *(a1 + 18);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v19, 1);
  v19 = *(a1 + 17);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v19, 1);
  v19 = *(a1 + 16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v19, 1);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, ", PSC:", 6);
  if (*(a1 + 20))
  {
    v10 = "Y";
  }

  else
  {
    v10 = "N";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, 1);
  std::stringbuf::str();
  v13[0] = *MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v14 = v11;
  v15 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x2666E9E10](&v18);
}

void HGPool::EntryLog<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::log(uint64_t a1, HGLogger *a2, const char *a3)
{
  v7 = a1 + 16;
  v6 = *a1;
  DataSize = CVPixelBufferGetDataSize(*a1);
  HGLoggerUtils::bytesPrettyString(DataSize);
  HGPool::DescriptorString<HGCVPixelBufferPool::Descriptor>::str(v7);
  if (*(a1 + 56) == 1)
  {
    v11 = atomic_load(HGLogger::_enabled);
    if (v11)
    {
      v12 = v25;
      if (v26 < 0)
      {
        v12 = v25[0];
      }

      v13 = v23;
      if (v24 < 0)
      {
        v13 = v23[0];
      }

      HGLogger::log(a2, a3, "%p %10s  %4lu   %s\n", v9, v10, v6, v12, *(a1 + 48), v13);
    }

    goto LABEL_17;
  }

  v14.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  HGLoggerUtils::timePrettyString((v14.__d_.__rep_ - *(a1 + 40)));
  v17 = atomic_load(HGLogger::_enabled);
  if (v17)
  {
    v18 = v25;
    if (v26 < 0)
    {
      v18 = v25[0];
    }

    p_p = &__p;
    if (v22 < 0)
    {
      p_p = __p;
    }

    v20 = v23;
    if (v24 < 0)
    {
      v20 = v23[0];
    }

    HGLogger::log(a2, a3, "%p %10s  %4lu  %10s   %s\n", v15, v16, v6, v18, *(a1 + 48), p_p, v20);
  }

  if ((v22 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  operator delete(__p);
  if ((v24 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v26 & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(v25[0]);
    return;
  }

LABEL_21:
  operator delete(v23[0]);
  if (v26 < 0)
  {
    goto LABEL_22;
  }
}

void sub_25FBCD018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v25 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  if ((*(v25 - 49) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v25 - 72));
  _Unwind_Resume(exception_object);
}

uint64_t std::deque<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 32;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 64;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<HGPool::FixedServicingPolicy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287209EC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

void std::__shared_ptr_emplace<anonymous namespace::HGCVPixelBufferAllocator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287209F78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,false>::retrieveObject(uint64_t a1, __int128 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = *a2;
  v8 = *(a2 + 2);
  v2 = 0;
  v3 = v7;
  v4 = v8;
  v5 = 0;
  operator new();
}

void sub_25FBCD588(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va1);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va2);
  _Unwind_Resume(a1);
}

void sub_25FBCD5AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va1);
  _Unwind_Resume(a1);
}

void **HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,false>::_retrieve@<X0>(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 36) = 1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  v5 = a1[4].i64[0] + a1[4].i64[1];
  v6 = a1[2].i64[1];
  v7 = (v6 + 8 * (v5 >> 6));
  if (a1[3].i64[0] != v6)
  {
    v8 = *v7 + ((v5 & 0x3F) << 6);
    v9 = *(v6 + ((a1[4].i64[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((a1[4].i64[0] & 0x3F) << 6);
    v10 = v8;
    v11 = *(a2 + 24);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v24 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v10 = 0;
  v9 = 0;
  v11 = *(a2 + 24);
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v11 == a2)
  {
    v24 = v23;
    (*(*v11 + 24))(v11, v23);
  }

  else
  {
    v24 = (*(*v11 + 16))(v11);
  }

LABEL_8:
  if (v10 != v9)
  {
    v14 = *v7;
    do
    {
      v15 = v8;
      if (v8 == v14)
      {
        v15 = *(v7 - 1) + 4096;
      }

      if (!v24)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v24 + 6))(v24, v15 - 64))
      {
        break;
      }

      v14 = *v7;
      if (v8 == *v7)
      {
        v16 = *--v7;
        v14 = v16;
        v8 = v16 + 4096;
      }

      v8 -= 64;
    }

    while (v9 != v8);
  }

  result = v24;
  if (v24 == v23)
  {
    result = (*(*v24 + 4))(v24);
    v13 = a1[2].i64[1];
    if (a1[3].i64[0] != v13)
    {
      goto LABEL_13;
    }

LABEL_24:
    if (!v8)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v24)
  {
    result = (*(*v24 + 5))();
  }

  v13 = a1[2].i64[1];
  if (a1[3].i64[0] == v13)
  {
    goto LABEL_24;
  }

LABEL_13:
  if (*(v13 + ((a1[4].i64[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((a1[4].i64[0] & 0x3F) << 6) == v8)
  {
    return result;
  }

LABEL_25:
  v17 = (v8 - *v7) >> 6;
  if (v17 < 2)
  {
    v21 = 64 - v17;
    v19 = &v7[-(v21 >> 6)];
    v20 = *v19 + ((~v21 & 0x3F) << 6);
  }

  else
  {
    v18 = v17 - 1;
    v19 = &v7[v18 >> 6];
    v20 = *v19 + ((v18 & 0x3F) << 6);
  }

  v22 = *(v20 + 16);
  *a3 = *v20;
  *(a3 + 16) = v22;
  *(a3 + 32) = *(v20 + 32);
  *(a3 + 41) = *(v20 + 41);
  atomic_fetch_add(a1[5].i64, 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add(&a1[5].i64[1], -CVPixelBufferGetDataSize(*a3));
  return std::deque<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>::erase(a1 + 2, v19, v20);
}

void sub_25FBCD8D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va);
  _Unwind_Resume(a1);
}

void sub_25FBCD8EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va);
  _Unwind_Resume(a1);
}

void **std::deque<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>::erase(int64x2_t *a1, char *a2, char *a3)
{
  v6 = a1[2].u64[0];
  v7 = a1->i64[1];
  v8 = a1[1].i64[0];
  v9 = (v7 + 8 * (v6 >> 6));
  if (v8 == v7)
  {
    v10 = 0;
    if (!a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *v9 + 64 * (a1[2].i64[0] & 0x3F);
    if (a3 == v10)
    {
LABEL_3:
      v11 = 0;
      v12 = *v9;
      v13 = 1;
      v14 = (v7 + 8 * (v6 >> 6));
LABEL_14:
      v26 = (a3 - v12) >> 6;
      if (v26 < 0)
      {
        v30 = 62 - v26;
        v28 = &v14[-(v30 >> 6)];
        v29 = *v28 + 64 * (~v30 & 0x3F);
      }

      else
      {
        v27 = v26 + 1;
        v28 = &v14[v27 >> 6];
        v29 = *v28 + 64 * (v27 & 0x3F);
      }

      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>*,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>&,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>**,long,64l>,std::__deque_iterator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>*,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>&,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>**,long,64l>,0>(v9, v10, v14, a3, v28, v29, v41);
      v31 = vaddq_s64(a1[2], xmmword_260342880);
      a1[2] = v31;
      v32 = v31.i64[0];
      v33 = a1->i64[1];
      if (v31.i64[0] >= 0x80uLL)
      {
        operator delete(*v33);
        v33 = (a1->i64[1] + 8);
        a1->i64[1] = v33;
        v32 = a1[2].i64[0] - 64;
        a1[2].i64[0] = v32;
      }

      goto LABEL_19;
    }
  }

  v15 = (&a3[-*a2] >> 6) + 8 * (a2 - v9);
  v12 = *v9;
  v16 = v10 - *v9;
  v11 = v15 - (v16 >> 6);
  v13 = v15 == v16 >> 6;
  if (!v11)
  {
    a3 = v10;
    v14 = (v7 + 8 * (v6 >> 6));
    goto LABEL_14;
  }

  if (v15 < 1)
  {
    v17 = 63 - v15;
    LOBYTE(v15) = ~(63 - v15);
    v14 = &v9[-(v17 >> 6)];
  }

  else
  {
    v14 = &v9[v15 >> 6];
  }

  v12 = *v14;
  a3 = *v14 + 64 * (v15 & 0x3F);
  v18 = a1[2].i64[1];
  if (v11 <= (v18 - 1) >> 1)
  {
    goto LABEL_14;
  }

  v19 = (a3 - v12) >> 6;
  if (v19 < 0)
  {
    v37 = 62 - v19;
    v21 = &v14[-(v37 >> 6)];
    v22 = *v21 + 64 * (~v37 & 0x3F);
    v23 = v18 + v6;
    v24 = (v7 + 8 * ((v18 + v6) >> 6));
    if (v8 != v7)
    {
      goto LABEL_13;
    }

LABEL_27:
    v25 = 0;
    goto LABEL_28;
  }

  v20 = v19 + 1;
  v21 = &v14[v20 >> 6];
  v22 = *v21 + 64 * (v20 & 0x3F);
  v23 = v18 + v6;
  v24 = (v7 + 8 * ((v18 + v6) >> 6));
  if (v8 == v7)
  {
    goto LABEL_27;
  }

LABEL_13:
  v25 = (*v24 + ((v23 & 0x3F) << 6));
LABEL_28:
  v41[0] = v14;
  v41[1] = a3;
  std::__for_each_segment[abi:ne200100]<std::__deque_iterator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>*,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>&,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>**,long,64l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>*,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>&,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>**,long,64l>,std::__deque_iterator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>*,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>&,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>**,long,64l>>>(v21, v22, v24, v25, v41);
  v33 = a1->i64[1];
  v38 = a1[1].i64[0];
  v32 = a1[2].u64[0];
  v39 = a1[2].i64[1];
  a1[2].i64[1] = v39 - 1;
  v40 = 8 * (v38 - v33) - 1;
  if (v38 == v33)
  {
    v40 = 0;
  }

  if (v40 - (v39 + v32) + 1 >= 0x80)
  {
    operator delete(*(v38 - 1));
    v13 = 0;
    v33 = a1->i64[1];
    a1[1].i64[0] -= 8;
    v32 = a1[2].u64[0];
  }

  else
  {
    v13 = 0;
  }

LABEL_19:
  result = &v33[v32 >> 6];
  if (a1[1].i64[0] == v33)
  {
    v35 = 0;
    if (v13)
    {
      return result;
    }
  }

  else
  {
    v35 = *result + 64 * (v32 & 0x3F);
    if (v13)
    {
      return result;
    }
  }

  v36 = v11 + ((v35 - *result) >> 6);
  if (v36 < 1)
  {
    result -= (63 - v36) >> 6;
  }

  else
  {
    result += v36 >> 6;
  }

  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>*,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>&,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>**,long,64l>,std::__deque_iterator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>*,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>&,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>**,long,64l>,0>@<X0>(const void **a1@<X1>, char *a2@<X2>, const void **a3@<X3>, char *a4@<X4>, const void **a5@<X5>, char *a6@<X6>, const void ***a7@<X8>)
{
  v8 = a5;
  if (a1 == a3)
  {
    if (a2 == a4)
    {
      goto LABEL_42;
    }

    v13 = *a5;
    v14 = a4;
    while (1)
    {
      v15 = &a6[-v13] >> 6;
      v16 = (v14 - a2) >> 6;
      if (v16 >= v15)
      {
        v16 = v15;
      }

      v14 -= 64 * v16;
      a6 -= 64 * v16;
      if (v16)
      {
        result = memmove(a6, v14, (v16 << 6) - 7);
      }

      if (v14 == a2)
      {
        break;
      }

      v18 = *--v8;
      v13 = v18;
      a6 = (v18 + 4096);
    }

    goto LABEL_40;
  }

  v20 = *a3;
  if (*a3 != a4)
  {
    v21 = *a5;
    v22 = a4;
    while (1)
    {
      v23 = &a6[-v21] >> 6;
      v24 = (v22 - v20) >> 6;
      if (v24 >= v23)
      {
        v24 = v23;
      }

      v22 -= 64 * v24;
      a6 -= 64 * v24;
      if (v24)
      {
        result = memmove(a6, v22, (v24 << 6) - 7);
      }

      if (v22 == v20)
      {
        break;
      }

      v25 = *--v8;
      v21 = v25;
      a6 = (v25 + 4096);
    }

    if (*v8 + 4096 == a6)
    {
      v26 = v8[1];
      ++v8;
      a6 = v26;
    }
  }

  v27 = a3 - 1;
  if (a3 - 1 != a1)
  {
    v28 = *v8;
    do
    {
      while (1)
      {
        v29 = *v27;
        v30 = *v27 + 4096;
        while (1)
        {
          v31 = (a6 - v28) >> 6;
          v32 = (v30 - v29) >> 6;
          if (v32 >= v31)
          {
            v32 = v31;
          }

          v30 -= 64 * v32;
          a6 -= 64 * v32;
          if (v32)
          {
            result = memmove(a6, v30, (v32 << 6) - 7);
          }

          if (v30 == v29)
          {
            break;
          }

          v33 = *--v8;
          v28 = v33;
          a6 = v33 + 4096;
        }

        v28 = *v8;
        if (*v8 + 4096 == a6)
        {
          break;
        }

        if (--v27 == a1)
        {
          goto LABEL_32;
        }
      }

      v34 = v8[1];
      ++v8;
      v28 = v34;
      a6 = v34;
      --v27;
    }

    while (v27 != a1);
  }

LABEL_32:
  v35 = *v27 + 4096;
  if (v35 != a2)
  {
    v36 = *v8;
    while (1)
    {
      v37 = &a6[-v36] >> 6;
      v38 = (v35 - a2) >> 6;
      if (v38 >= v37)
      {
        v38 = v37;
      }

      v35 -= 64 * v38;
      a6 -= 64 * v38;
      if (v38)
      {
        result = memmove(a6, v35, (v38 << 6) - 7);
      }

      if (v35 == a2)
      {
        break;
      }

      v39 = *--v8;
      v36 = v39;
      a6 = (v39 + 4096);
    }

LABEL_40:
    if (*v8 + 4096 == a6)
    {
      v40 = v8[1];
      ++v8;
      a6 = v40;
    }
  }

LABEL_42:
  *a7 = a3;
  a7[1] = a4;
  a7[2] = v8;
  a7[3] = a6;
  return result;
}

void *std::__for_each_segment[abi:ne200100]<std::__deque_iterator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>*,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>&,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>**,long,64l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>*,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>&,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>**,long,64l>,std::__deque_iterator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>*,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>&,HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>**,long,64l>>>(void *result, _BYTE *__src, void *a3, _BYTE *a4, uint64_t a5)
{
  v7 = __src;
  if (result == a3)
  {
    v9 = *a5;
    v8 = *(a5 + 8);
    if (__src != a4)
    {
      v11 = *v9++;
      v10 = v11;
      while (1)
      {
        v12 = (v10 - v8 + 4096) >> 6;
        if ((a4 - v7) >> 6 < v12)
        {
          v12 = (a4 - v7) >> 6;
        }

        v13 = v12 << 6;
        if (v12)
        {
          result = memmove(v8, v7, v13 - 7);
        }

        v7 += v13;
        if (v7 == a4)
        {
          break;
        }

        v14 = *v9++;
        v10 = v14;
        v8 = v14;
      }

      v8 += v13;
      if (*(v9 - 1) + 4096 != v8)
      {
        *a5 = v9 - 1;
        goto LABEL_50;
      }

      v8 = *v9;
    }

    *a5 = v9;
    goto LABEL_50;
  }

  v16 = result;
  v17 = (*result + 4096);
  v18 = *a5;
  v8 = *(a5 + 8);
  if (v17 == __src)
  {
    goto LABEL_20;
  }

  v20 = *v18++;
  v19 = v20;
  while (1)
  {
    v21 = (v19 - v8 + 4096) >> 6;
    if ((v17 - v7) >> 6 < v21)
    {
      v21 = (v17 - v7) >> 6;
    }

    v22 = v21 << 6;
    if (v21)
    {
      result = memmove(v8, v7, v22 - 7);
    }

    v7 += v22;
    if (v7 == v17)
    {
      break;
    }

    v23 = *v18++;
    v19 = v23;
    v8 = v23;
  }

  v8 += v22;
  if (*(v18 - 1) + 4096 != v8)
  {
    --v18;
LABEL_20:
    *a5 = v18;
    *(a5 + 8) = v8;
    for (i = v16 + 1; i != a3; ++i)
    {
LABEL_23:
      while (1)
      {
        v25 = 0;
        v26 = *i;
        v28 = *v18++;
        v27 = v28;
        while (1)
        {
          v29 = (v27 - v8 + 4096) >> 6;
          if ((4096 - v25) >> 6 < v29)
          {
            v29 = (4096 - v25) >> 6;
          }

          v30 = v29 << 6;
          if (v29)
          {
            result = memmove(v8, &v26[v25], v30 - 7);
          }

          v25 += v30;
          if (v25 == 4096)
          {
            break;
          }

          v31 = *v18++;
          v27 = v31;
          v8 = v31;
        }

        v8 += v30;
        v32 = v18 - 1;
        if (*(v18 - 1) + 4096 != v8)
        {
          break;
        }

        v8 = *v18;
        *a5 = v18;
        *(a5 + 8) = v8;
        if (++i == a3)
        {
          goto LABEL_32;
        }
      }

      --v18;
      *a5 = v32;
      *(a5 + 8) = v8;
    }

    goto LABEL_32;
  }

  v8 = *v18;
  *a5 = v18;
  *(a5 + 8) = v8;
  i = v16 + 1;
  if (v16 + 1 != a3)
  {
    goto LABEL_23;
  }

LABEL_32:
  v33 = *i;
  if (*i != a4)
  {
    v35 = *v18++;
    v34 = v35;
    while (1)
    {
      v36 = (v34 - v8 + 4096) >> 6;
      if ((a4 - v33) >> 6 < v36)
      {
        v36 = (a4 - v33) >> 6;
      }

      v37 = v36 << 6;
      if (v36)
      {
        result = memmove(v8, v33, v37 - 7);
      }

      v33 += v37;
      if (v33 == a4)
      {
        break;
      }

      v38 = *v18++;
      v34 = v38;
      v8 = v38;
    }

    v8 += v37;
    if (*(v18 - 1) + 4096 == v8)
    {
      v8 = *v18;
    }

    else
    {
      --v18;
    }
  }

  *a5 = v18;
LABEL_50:
  *(a5 + 8) = v8;
  return result;
}

void *std::__function::__func<HGPool::MatchDescription<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,std::allocator<HGPool::MatchDescription<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>,BOOL ()(HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> const&)>::~__func(void *a1)
{
  *a1 = &unk_28720A020;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<HGPool::MatchDescription<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,std::allocator<HGPool::MatchDescription<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>,BOOL ()(HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> const&)>::~__func(void *a1)
{
  *a1 = &unk_28720A020;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2666E9F00);
}

__n128 std::__function::__func<HGPool::MatchDescription<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,std::allocator<HGPool::MatchDescription<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>,BOOL ()(HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28720A020;
  v4 = a2 + 8;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v5 == a1 + 8)
    {
      *(a2 + 32) = v4;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      *(a2 + 32) = (*(*v5 + 16))(v5, v4);
    }
  }

  else
  {
    *(a2 + 32) = 0;
  }

  result = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = result;
  return result;
}

uint64_t std::__function::__func<HGPool::MatchDescription<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,std::allocator<HGPool::MatchDescription<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>,BOOL ()(HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> const&)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<HGPool::MatchDescription<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,std::allocator<HGPool::MatchDescription<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>,BOOL ()(HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> const&)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<HGPool::MatchDescription<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,std::allocator<HGPool::MatchDescription<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>,BOOL ()(HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N6HGPool16MatchDescriptionIP10__CVBufferN19HGCVPixelBufferPool10DescriptorEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N6HGPool16MatchDescriptionIP10__CVBufferN19HGCVPixelBufferPool10DescriptorEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N6HGPool16MatchDescriptionIP10__CVBufferN19HGCVPixelBufferPool10DescriptorEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N6HGPool16MatchDescriptionIP10__CVBufferN19HGCVPixelBufferPool10DescriptorEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t HGPool::EntryEventHandler<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::reused(CVPixelBufferRef *a1)
{
  CVPixelBufferGetDataSize(*a1);
  HGPool::DescriptorString<HGCVPixelBufferPool::Descriptor>::str((a1 + 2));
  IOSurface = CVPixelBufferGetIOSurface(*a1);
  ID = IOSurfaceGetID(IOSurface);
  if (v9 < 0)
  {
    operator delete(__p);
    v7 = atomic_load(HGLogger::_enabled);
    if ((v7 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = atomic_load(HGLogger::_enabled);
  if (v5)
  {
LABEL_3:
    HGLogger::log("hgcv", 1, "HGCV - reused entry:\n", ID, v4);
  }

LABEL_4:
  HGLogger::indent(1);
  HGPool::EntryLog<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::log(a1, "hgcv", 1);
  return HGLogger::indent(0xFFFFFFFFLL);
}

void sub_25FBCE6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGPool::EntryEventHandler<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::allocated(CVPixelBufferRef *a1)
{
  CVPixelBufferGetDataSize(*a1);
  HGPool::DescriptorString<HGCVPixelBufferPool::Descriptor>::str((a1 + 2));
  IOSurface = CVPixelBufferGetIOSurface(*a1);
  ID = IOSurfaceGetID(IOSurface);
  if (v9 < 0)
  {
    operator delete(__p);
    v7 = atomic_load(HGLogger::_enabled);
    if ((v7 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = atomic_load(HGLogger::_enabled);
  if (v5)
  {
LABEL_3:
    HGLogger::log("hgcv", 1, "HGCV - allocated entry:\n", ID, v4);
  }

LABEL_4:
  HGLogger::indent(1);
  HGPool::EntryLog<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::log(a1, "hgcv", 1);
  return HGLogger::indent(0xFFFFFFFFLL);
}

void sub_25FBCE804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x40;
  v3 = v1 - 64;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *,std::allocator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *>>::emplace_back<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *&>(a1, &v11);
}

void sub_25FBCEB90(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *,std::allocator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *>>::emplace_back<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **std::__split_buffer<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *,std::allocator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *>>::emplace_front<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

void HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,true>::retrieveObject(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v6 = 0;
  v7 = v2;
  v3 = 0;
  v4 = v2;
  v5 = 0;
  operator new();
}

void sub_25FBCF104(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va1);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va2);
  _Unwind_Resume(a1);
}

void sub_25FBCF128(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va1);
  _Unwind_Resume(a1);
}

uint64_t HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,false>::service(int64x2_t *a1, uint64_t a2)
{
  if (!a1[1].i64[0])
  {
    return 0;
  }

  if (a1[4].i64[1])
  {
    v4 = 0;
    do
    {
      v5 = atomic_load(&a1[5]);
      if (v5 <= (*(*a1[1].i64[0] + 16))(a1[1].i64[0], a2))
      {
        v6 = atomic_load(&a1[5].u64[1]);
        if (v6 <= (*(*a1[1].i64[0] + 24))(a1[1].i64[0], a2))
        {
          v7 = a1[4].u64[0];
          v8 = *(a1[2].i64[1] + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8));
          v9 = std::chrono::steady_clock::now().__d_.__rep_ - *(v8 + ((v7 & 0x3F) << 6) + 40);
          if (v9 <= (*(*a1[1].i64[0] + 32))(a1[1].i64[0], a2))
          {
            break;
          }
        }
      }

      HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,false>::_pop_front(a1);
      ++v4;
    }

    while (a1[4].i64[1]);
    return v4;
  }

  return 0;
}

void HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,false>::retrieveObject(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v6 = 0;
  v7 = v2;
  v3 = 0;
  v4 = v2;
  v5 = 0;
  operator new();
}

void sub_25FBCF4A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va1);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va2);
  _Unwind_Resume(a1);
}

void sub_25FBCF4CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va1);
  _Unwind_Resume(a1);
}

void **HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,true>::_retrieve@<X0>(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 36) = 1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  v5 = a1[4].i64[0] + a1[4].i64[1];
  v6 = a1[2].i64[1];
  v7 = (v6 + 8 * (v5 >> 6));
  if (a1[3].i64[0] != v6)
  {
    v8 = *v7 + ((v5 & 0x3F) << 6);
    v9 = *(v6 + ((a1[4].i64[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((a1[4].i64[0] & 0x3F) << 6);
    v10 = v8;
    v11 = *(a2 + 24);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v24 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v10 = 0;
  v9 = 0;
  v11 = *(a2 + 24);
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v11 == a2)
  {
    v24 = v23;
    (*(*v11 + 24))(v11, v23);
  }

  else
  {
    v24 = (*(*v11 + 16))(v11);
  }

LABEL_8:
  if (v10 != v9)
  {
    v14 = *v7;
    do
    {
      v15 = v8;
      if (v8 == v14)
      {
        v15 = *(v7 - 1) + 4096;
      }

      if (!v24)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v24 + 6))(v24, v15 - 64))
      {
        break;
      }

      v14 = *v7;
      if (v8 == *v7)
      {
        v16 = *--v7;
        v14 = v16;
        v8 = v16 + 4096;
      }

      v8 -= 64;
    }

    while (v9 != v8);
  }

  result = v24;
  if (v24 == v23)
  {
    result = (*(*v24 + 4))(v24);
    v13 = a1[2].i64[1];
    if (a1[3].i64[0] != v13)
    {
      goto LABEL_13;
    }

LABEL_24:
    if (!v8)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v24)
  {
    result = (*(*v24 + 5))();
  }

  v13 = a1[2].i64[1];
  if (a1[3].i64[0] == v13)
  {
    goto LABEL_24;
  }

LABEL_13:
  if (*(v13 + ((a1[4].i64[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((a1[4].i64[0] & 0x3F) << 6) == v8)
  {
    return result;
  }

LABEL_25:
  v17 = (v8 - *v7) >> 6;
  if (v17 < 2)
  {
    v21 = 64 - v17;
    v19 = &v7[-(v21 >> 6)];
    v20 = *v19 + ((~v21 & 0x3F) << 6);
  }

  else
  {
    v18 = v17 - 1;
    v19 = &v7[v18 >> 6];
    v20 = *v19 + ((v18 & 0x3F) << 6);
  }

  v22 = *(v20 + 16);
  *a3 = *v20;
  *(a3 + 16) = v22;
  *(a3 + 32) = *(v20 + 32);
  *(a3 + 41) = *(v20 + 41);
  atomic_fetch_add(a1[5].i64, 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add(&a1[5].i64[1], -CVPixelBufferGetDataSize(*a3));
  return std::deque<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>::erase(a1 + 2, v19, v20);
}

void sub_25FBCF7F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va);
  _Unwind_Resume(a1);
}

void sub_25FBCF80C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::~MatchObject(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,std::allocator<HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>,BOOL ()(HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> const&)>::~__func(void *a1)
{
  *a1 = &unk_28720A128;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,std::allocator<HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>,BOOL ()(HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> const&)>::~__func(void *a1)
{
  *a1 = &unk_28720A128;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__function::__func<HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,std::allocator<HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>,BOOL ()(HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28720A128;
  v4 = a2 + 1;
  result = *(a1 + 32);
  if (result)
  {
    if (result == a1 + 8)
    {
      a2[4] = v4;
      result = (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      result = (*(*result + 16))(result, v4);
      a2[4] = result;
    }

    a2[5] = *(a1 + 40);
  }

  else
  {
    a2[4] = 0;
    a2[5] = *(a1 + 40);
  }

  return result;
}

uint64_t std::__function::__func<HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,std::allocator<HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>,BOOL ()(HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> const&)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,std::allocator<HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>,BOOL ()(HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> const&)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>,std::allocator<HGPool::MatchObject<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>,BOOL ()(HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N6HGPool11MatchObjectIP10__CVBufferN19HGCVPixelBufferPool10DescriptorEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N6HGPool11MatchObjectIP10__CVBufferN19HGCVPixelBufferPool10DescriptorEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N6HGPool11MatchObjectIP10__CVBufferN19HGCVPixelBufferPool10DescriptorEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N6HGPool11MatchObjectIP10__CVBufferN19HGCVPixelBufferPool10DescriptorEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t HGPool::EntryEventHandler<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::recycled(CVPixelBufferRef *a1)
{
  CVPixelBufferGetDataSize(*a1);
  HGPool::DescriptorString<HGCVPixelBufferPool::Descriptor>::str((a1 + 2));
  IOSurface = CVPixelBufferGetIOSurface(*a1);
  ID = IOSurfaceGetID(IOSurface);
  if (v9 < 0)
  {
    operator delete(__p);
    v7 = atomic_load(HGLogger::_enabled);
    if ((v7 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = atomic_load(HGLogger::_enabled);
  if (v5)
  {
LABEL_3:
    HGLogger::log("hgcv", 1, "HGCV - recycled entry:\n", ID, v4);
  }

LABEL_4:
  HGLogger::indent(1);
  HGPool::EntryLog<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::log(a1, "hgcv", 1);
  return HGLogger::indent(0xFFFFFFFFLL);
}

void sub_25FBCFDE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGPool::EntryTrace<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::trace(uint64_t a1)
{
  IOSurface = CVPixelBufferGetIOSurface(*a1);
  ID = IOSurfaceGetID(IOSurface);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v24);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, ",  sid: ", 8);
  v5 = v4;
  v6 = *v4;
  v7 = v4 + *(*v4 - 24);
  if (*(v7 + 36) == -1)
  {
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v8 = std::locale::use_facet(v22, MEMORY[0x277D82680]);
    v9 = (v8->__vftable[2].~facet_0)(v8, 32);
    std::locale::~locale(v22);
    *(v7 + 36) = v9;
    v6 = *v5;
  }

  *(v7 + 36) = 48;
  *(v5 + *(v6 - 24) + 24) = 8;
  *(v5 + *(v6 - 24) + 8) = *(v5 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  v10 = MEMORY[0x2666E9B60](v5, ID);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (", 2);
  *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 2;
  v12 = MEMORY[0x2666E9B60]();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ")", 1);
  HGPool::DescriptorString<HGCVPixelBufferPool::Descriptor>::str(a1 + 16);
  std::stringbuf::str();
  if ((v20 & 0x80u) == 0)
  {
    v13 = v19;
  }

  else
  {
    v13 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v14 = v20;
  }

  else
  {
    v14 = v19[1];
  }

  v15 = std::string::append(&v21, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v23 = v15->__r_.__value_.__r.__words[2];
  *&v22[0].__locale_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v20 < 0)
  {
    operator delete(v19[0]);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v21.__r_.__value_.__l.__data_);
LABEL_11:
  CVPixelBufferGetDataSize(*a1);
  if (*(a1 + 56) == 1)
  {
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    std::chrono::steady_clock::now();
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  operator delete(v22[0].__locale_);
LABEL_16:
  v24[0] = *MEMORY[0x277D82818];
  v17 = *(MEMORY[0x277D82818] + 72);
  *(v24 + *(v24[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v25 = v17;
  v26 = MEMORY[0x277D82878] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v27);
  std::iostream::~basic_iostream();
  return MEMORY[0x2666E9E10](&v29);
}

void HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,true>::log(void *a1, HGLogger *a2)
{
  if (a1[9])
  {
    HGLogger::indent(1);
    v4 = a1[5];
    if (a1[6] != v4)
    {
      v5 = a1[8];
      v6 = (v4 + 8 * (v5 >> 6));
      v7 = (*v6 + ((v5 & 0x3F) << 6));
      v8 = *(v4 + (((a1[9] + v5) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((a1[9] + v5) & 0x3F) << 6);
      while (v7 != v8)
      {
        v9 = *v7;
        v10 = v7[1];
        v11 = v7[3];
        v21 = v7[2];
        v22 = v11;
        *__p = v9;
        v20 = v10;
        HGPool::EntryLog<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::log(__p, a2, 3);
        v7 += 4;
        if ((v7 - *v6) == 4096)
        {
          v12 = v6[1];
          ++v6;
          v7 = v12;
        }
      }
    }

    HGLogger::indent(0xFFFFFFFFLL);
    v13 = atomic_load(a1 + 11);
    HGLoggerUtils::bytesPrettyString(v13);
    v16 = atomic_load(HGLogger::_enabled);
    if (v16)
    {
      if ((SBYTE7(v20) & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = atomic_load(a1 + 10);
      HGLogger::log(a2, 2, "total : %s (%lu)\n", v14, v15, v17, v18);
    }

    if (SBYTE7(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_25FBD03D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HGPool::List<__CVBuffer *,HGCVPixelBufferPool::Descriptor,false>::log(void *a1, HGLogger *a2)
{
  if (a1[9])
  {
    HGLogger::indent(1);
    v4 = a1[5];
    if (a1[6] != v4)
    {
      v5 = a1[8];
      v6 = (v4 + 8 * (v5 >> 6));
      v7 = (*v6 + ((v5 & 0x3F) << 6));
      v8 = *(v4 + (((a1[9] + v5) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((a1[9] + v5) & 0x3F) << 6);
      while (v7 != v8)
      {
        v9 = *v7;
        v10 = v7[1];
        v11 = v7[3];
        v21 = v7[2];
        v22 = v11;
        *__p = v9;
        v20 = v10;
        HGPool::EntryLog<__CVBuffer *,HGCVPixelBufferPool::Descriptor>::log(__p, a2, 3);
        v7 += 4;
        if ((v7 - *v6) == 4096)
        {
          v12 = v6[1];
          ++v6;
          v7 = v12;
        }
      }
    }

    HGLogger::indent(0xFFFFFFFFLL);
    v13 = atomic_load(a1 + 11);
    HGLoggerUtils::bytesPrettyString(v13);
    v16 = atomic_load(HGLogger::_enabled);
    if (v16)
    {
      if ((SBYTE7(v20) & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = atomic_load(a1 + 10);
      HGLogger::log(a2, 2, "total : %s (%lu)\n", v14, v15, v17, v18);
    }

    if (SBYTE7(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_25FBD0540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HGCVBitmap::~HGCVBitmap(HGCVBitmap *this, void *a2)
{
  *this = &unk_28720A1B0;
  v2 = *(this + 16);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 24))(*(this + 16));
    this = v3;
  }

  HGBitmap::~HGBitmap(this, a2);
}

void HGCVBitmap::~HGCVBitmap(HGBitmap *this, void *a2)
{
  *this = &unk_28720A1B0;
  v3 = *(this + 16);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGBitmap::~HGBitmap(this, a2);

  HGObject::operator delete(v4);
}

HGCVPixelBuffer *HGCVBitmap::_create@<X0>(HGCVPixelBuffer **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, size_t a5@<X4>, void *a6@<X8>)
{
  *a6 = 0;
  v9 = *a1;
  if (v9)
  {
    v10 = a5;
    v13 = HGCVPixelBuffer::rowBytes(v9, a5);
    v14 = HGObject::operator new(0x90uLL);
    HGBitmap::HGBitmap(v14, a2, a3, a4, 0, v13);
    *v14 = &unk_28720A1B0;
    result = *a1;
    v14[16] = *a1;
    if (result)
    {
      result = (*(*result + 16))(result);
    }
  }

  else
  {
    v14 = HGObject::operator new(0x90uLL);
    HGBitmap::HGBitmap(v14, 0, 0, a4, 0, 0);
    *v14 = &unk_28720A1B0;
    result = *a1;
    v14[16] = *a1;
    if (result)
    {
      result = (*(*result + 16))(result);
    }

    v10 = 0;
  }

  v14[17] = v10;
  *(v14 + 3) |= 1u;
  *a6 = v14;
  return result;
}

void sub_25FBD07C8(_Unwind_Exception *a1, void *a2)
{
  HGBitmap::~HGBitmap(v2, a2);
  HGObject::operator delete(v4);
  _Unwind_Resume(a1);
}

HGCVPixelBuffer *HGCVBitmap::create@<X0>(HGCVPixelBuffer *a1@<X0>, int a2@<W1>, size_t a3@<X2>, void *a4@<X8>)
{
  HGCVPixelBuffer::create(a1, &v13);
  if (v13)
  {
    v7 = HGCVPixelBuffer::w(v13, a3);
    v8 = HGCVPixelBuffer::h(v13, a3);
    v9 = HGRectMake4i(0, 0, v7, v8);
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  HGCVBitmap::_create(&v13, v9, v11, a2, a3, a4);
  result = v13;
  if (v13)
  {
    return (*(*v13 + 24))(v13);
  }

  return result;
}

void sub_25FBD08E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

HGCVPixelBuffer *HGCVBitmap::create@<X0>(HGCVPixelBuffer **a1@<X0>, int a2@<W1>, size_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  if (v7)
  {
    v8 = a4;
    v9 = HGCVPixelBuffer::w(v7, a3);
    v10 = HGCVPixelBuffer::h(*a1, a3);
    v11 = HGRectMake4i(0, 0, v9, v10);
    a4 = v8;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return HGCVBitmap::_create(a1, v12, v14, a2, a3, a4);
}

HGCVPixelBuffer *HGCVBitmap::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v15 = a1;
  v16 = a2;
  v6 = HGFormatUtils::collapseRectForFormat(&v15, a3);
  v8 = (v7 - v6);
  v10 = (v9 - HIDWORD(v6));
  v11 = HGCV::CVPixelFormatForHGFormat(a3);
  v12 = HGCV::AllowPixelSizeCastingForHGFormat(a3);
  HGCVPixelBuffer::create(v8, v10, v11, v12, &v14);
  HGCVBitmap::_create(&v14, v15, v16, a3, 0, a4);
  result = v14;
  if (v14)
  {
    return (*(*v14 + 24))(v14);
  }

  return result;
}

void sub_25FBD0A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

HGCVPixelBuffer *HGCVBitmap::create@<X0>(const char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v17 = a2;
  v18 = a3;
  v8 = HGFormatUtils::collapseRectForFormat(&v17, a4);
  v10 = (v9 - v8);
  v12 = (v11 - HIDWORD(v8));
  v13 = HGCV::CVPixelFormatForHGFormat(a4);
  v14 = HGCV::AllowPixelSizeCastingForHGFormat(a4);
  HGCVPixelBuffer::create(v10, a1, v12, v13, v14, &v16);
  HGCVBitmap::_create(&v16, v17, v18, a4, 0, a5);
  result = v16;
  if (v16)
  {
    return (*(*v16 + 24))(v16);
  }

  return result;
}

void sub_25FBD0BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL HGCVBitmap::lock(HGCVBitmap *this, CVPixelBufferLockFlags a2)
{
  result = HGCVPixelBuffer::lock(*(this + 16), a2);
  if (!result)
  {
    v5 = 0;
    if (!*(this + 10))
    {
      return result;
    }

    goto LABEL_5;
  }

  v4 = result;
  v5 = HGCVPixelBuffer::ptr(*(this + 16), *(this + 17));
  result = v4;
  if (v5 != *(this + 10))
  {
LABEL_5:
    *(this + 10) = v5;
  }

  return result;
}

BOOL HGCVBitmap::unlock(HGCVBitmap *this, CVPixelBufferLockFlags a2)
{
  result = HGCVPixelBuffer::unlock(*(this + 16), a2);
  if (!result)
  {
    v5 = 0;
    if (!*(this + 10))
    {
      return result;
    }

    goto LABEL_5;
  }

  v4 = result;
  v5 = HGCVPixelBuffer::ptr(*(this + 16), *(this + 17));
  result = v4;
  if (v5 != *(this + 10))
  {
LABEL_5:
    *(this + 10) = v5;
  }

  return result;
}

void *HGCVBitmap::getCVBitmapStorage(HGBitmap *this, HGBitmap *a2)
{
  v3 = 0;
  while (v3 | this)
  {
    if (v3)
    {
      this = 0;
      v4 = *(v3 + 16);
      v3 = 0;
    }

    else if (this)
    {
      Storage = HGBitmap::GetStorage(this);
      if (Storage)
      {
        v6 = HGBitmap::GetStorage(this);
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 0;
        v6 = HGBitmap::GetStorage(this);
        if (!v6)
        {
LABEL_12:
          this = 0;
          goto LABEL_3;
        }
      }
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

LABEL_3:
    if (v4)
    {
      return v4;
    }
  }

  return 0;
}

void HGeometryData::HGeometryData(HGeometryData *this, HGRasterizer *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 3) = 34;
  HGArrayDataRef::allocate(this);
}

void sub_25FBD10CC(_Unwind_Exception *a1)
{
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(v8);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(v7);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(v6);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(v5);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(v4);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(v3);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(v2);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(v1);
  _Unwind_Resume(a1);
}

void *HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(void *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    v3 = *(v1 + 16);
    if (v3)
    {
      MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v1, 0x1080C4098BBCF0FLL);
    return v2;
  }

  return result;
}

double HGeometryData::operator=(atomic_uint **a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 != *a2)
  {
    if (v4)
    {
      if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        v6 = *(v4 + 2);
        if (v6)
        {
          MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
        }

        MEMORY[0x2666E9F00](v4, 0x1080C4098BBCF0FLL);
      }

      v5 = *a2;
    }

    *a1 = v5;
    if (v5)
    {
      atomic_fetch_add(v5, 1u);
    }
  }

  a1[1] = *(a2 + 8);
  v7 = a1[2];
  v8 = *(a2 + 16);
  if (v7 != v8)
  {
    if (v7)
    {
      if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
      {
        v9 = *(v7 + 2);
        if (v9)
        {
          MEMORY[0x2666E9ED0](v9, 0x1000C8077774924);
        }

        MEMORY[0x2666E9F00](v7, 0x1080C4098BBCF0FLL);
      }

      v8 = *(a2 + 16);
    }

    a1[2] = v8;
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
    }
  }

  a1[3] = *(a2 + 24);
  v10 = a1[4];
  v11 = *(a2 + 32);
  if (v10 != v11)
  {
    if (v10)
    {
      if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
      {
        v12 = *(v10 + 2);
        if (v12)
        {
          MEMORY[0x2666E9ED0](v12, 0x1000C8077774924);
        }

        MEMORY[0x2666E9F00](v10, 0x1080C4098BBCF0FLL);
      }

      v11 = *(a2 + 32);
    }

    a1[4] = v11;
    if (v11)
    {
      atomic_fetch_add(v11, 1u);
    }
  }

  a1[5] = *(a2 + 40);
  v13 = a1[6];
  v14 = *(a2 + 48);
  if (v13 != v14)
  {
    if (v13)
    {
      if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
      {
        v15 = *(v13 + 2);
        if (v15)
        {
          MEMORY[0x2666E9ED0](v15, 0x1000C8077774924);
        }

        MEMORY[0x2666E9F00](v13, 0x1080C4098BBCF0FLL);
      }

      v14 = *(a2 + 48);
    }

    a1[6] = v14;
    if (v14)
    {
      atomic_fetch_add(v14, 1u);
    }
  }

  a1[7] = *(a2 + 56);
  v16 = a1[8];
  v17 = *(a2 + 64);
  if (v16 != v17)
  {
    if (v16)
    {
      if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
      {
        v18 = *(v16 + 2);
        if (v18)
        {
          MEMORY[0x2666E9ED0](v18, 0x1000C8077774924);
        }

        MEMORY[0x2666E9F00](v16, 0x1080C4098BBCF0FLL);
      }

      v17 = *(a2 + 64);
    }

    a1[8] = v17;
    if (v17)
    {
      atomic_fetch_add(v17, 1u);
    }
  }

  a1[9] = *(a2 + 72);
  v19 = a1[10];
  v20 = *(a2 + 80);
  if (v19 != v20)
  {
    if (v19)
    {
      if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
      {
        v21 = *(v19 + 2);
        if (v21)
        {
          MEMORY[0x2666E9ED0](v21, 0x1000C8077774924);
        }

        MEMORY[0x2666E9F00](v19, 0x1080C4098BBCF0FLL);
      }

      v20 = *(a2 + 80);
    }

    a1[10] = v20;
    if (v20)
    {
      atomic_fetch_add(v20, 1u);
    }
  }

  a1[11] = *(a2 + 88);
  v22 = a1[12];
  v23 = *(a2 + 96);
  if (v22 != v23)
  {
    if (v22)
    {
      if (atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
      {
        v24 = *(v22 + 2);
        if (v24)
        {
          MEMORY[0x2666E9ED0](v24, 0x1000C8077774924);
        }

        MEMORY[0x2666E9F00](v22, 0x1080C4098BBCF0FLL);
      }

      v23 = *(a2 + 96);
    }

    a1[12] = v23;
    if (v23)
    {
      atomic_fetch_add(v23, 1u);
    }
  }

  a1[13] = *(a2 + 104);
  v25 = a1[14];
  v26 = *(a2 + 112);
  if (v25 != v26)
  {
    if (v25)
    {
      if (atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
      {
        v27 = *(v25 + 2);
        if (v27)
        {
          MEMORY[0x2666E9ED0](v27, 0x1000C8077774924);
        }

        MEMORY[0x2666E9F00](v25, 0x1080C4098BBCF0FLL);
      }

      v26 = *(a2 + 112);
    }

    a1[14] = v26;
    if (v26)
    {
      atomic_fetch_add(v26, 1u);
    }
  }

  a1[15] = *(a2 + 120);
  v28 = a1[16];
  v29 = *(a2 + 128);
  if (v28 != v29)
  {
    if (v28)
    {
      if (atomic_fetch_add(v28, 0xFFFFFFFF) == 1)
      {
        v30 = *(v28 + 2);
        if (v30)
        {
          MEMORY[0x2666E9ED0](v30, 0x1000C8077774924);
        }

        MEMORY[0x2666E9F00](v28, 0x1080C4098BBCF0FLL);
      }

      v29 = *(a2 + 128);
    }

    a1[16] = v29;
    if (v29)
    {
      atomic_fetch_add(v29, 1u);
    }
  }

  a1[17] = *(a2 + 136);
  v31 = a1[18];
  v32 = *(a2 + 144);
  if (v31 != v32)
  {
    if (v31)
    {
      if (atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
      {
        v33 = *(v31 + 2);
        if (v33)
        {
          MEMORY[0x2666E9ED0](v33, 0x1000C8077774924);
        }

        MEMORY[0x2666E9F00](v31, 0x1080C4098BBCF0FLL);
      }

      v32 = *(a2 + 144);
    }

    a1[18] = v32;
    if (v32)
    {
      atomic_fetch_add(v32, 1u);
    }
  }

  a1[19] = *(a2 + 152);
  v34 = a1[20];
  v35 = *(a2 + 160);
  if (v34 != v35)
  {
    if (v34)
    {
      if (atomic_fetch_add(v34, 0xFFFFFFFF) == 1)
      {
        v36 = *(v34 + 2);
        if (v36)
        {
          MEMORY[0x2666E9ED0](v36, 0x1000C8077774924);
        }

        MEMORY[0x2666E9F00](v34, 0x1080C4098BBCF0FLL);
      }

      v35 = *(a2 + 160);
    }

    a1[20] = v35;
    if (v35)
    {
      atomic_fetch_add(v35, 1u);
    }
  }

  a1[21] = *(a2 + 168);
  v37 = a1[22];
  v38 = *(a2 + 176);
  if (v37 != v38)
  {
    if (v37)
    {
      if (atomic_fetch_add(v37, 0xFFFFFFFF) == 1)
      {
        v39 = *(v37 + 2);
        if (v39)
        {
          MEMORY[0x2666E9ED0](v39, 0x1000C8077774924);
        }

        MEMORY[0x2666E9F00](v37, 0x1080C4098BBCF0FLL);
      }

      v38 = *(a2 + 176);
    }

    a1[22] = v38;
    if (v38)
    {
      atomic_fetch_add(v38, 1u);
    }
  }

  a1[23] = *(a2 + 184);
  v40 = a1[24];
  v41 = *(a2 + 192);
  if (v40 != v41)
  {
    if (v40)
    {
      if (atomic_fetch_add(v40, 0xFFFFFFFF) == 1)
      {
        v42 = *(v40 + 2);
        if (v42)
        {
          MEMORY[0x2666E9ED0](v42, 0x1000C8077774924);
        }

        MEMORY[0x2666E9F00](v40, 0x1080C4098BBCF0FLL);
      }

      v41 = *(a2 + 192);
    }

    a1[24] = v41;
    if (v41)
    {
      atomic_fetch_add(v41, 1u);
    }
  }

  a1[25] = *(a2 + 200);
  v43 = a1[26];
  v44 = *(a2 + 208);
  if (v43 != v44)
  {
    if (v43)
    {
      if (atomic_fetch_add(v43, 0xFFFFFFFF) == 1)
      {
        v45 = *(v43 + 2);
        if (v45)
        {
          MEMORY[0x2666E9ED0](v45, 0x1000C8077774924);
        }

        MEMORY[0x2666E9F00](v43, 0x1080C4098BBCF0FLL);
      }

      v44 = *(a2 + 208);
    }

    a1[26] = v44;
    if (v44)
    {
      atomic_fetch_add(v44, 1u);
    }
  }

  a1[27] = *(a2 + 216);
  v46 = a1[28];
  v47 = *(a2 + 224);
  if (v46 != v47)
  {
    if (v46)
    {
      if (atomic_fetch_add(v46, 0xFFFFFFFF) == 1)
      {
        v48 = *(v46 + 2);
        if (v48)
        {
          MEMORY[0x2666E9ED0](v48, 0x1000C8077774924);
        }

        MEMORY[0x2666E9F00](v46, 0x1080C4098BBCF0FLL);
      }

      v47 = *(a2 + 224);
    }

    a1[28] = v47;
    if (v47)
    {
      atomic_fetch_add(v47, 1u);
    }
  }

  a1[29] = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 61) = *(a2 + 244);
  result = *(a2 + 252);
  *(a1 + 252) = result;
  *(a1 + 65) = *(a2 + 260);
  *(a1 + 248) = *(a2 + 248);
  return result;
}

uint64_t HGeometryData::AppendVertex(uint64_t a1, uint64_t a2, int a3, int32x4_t *a4, char a5)
{
  v10 = vdupq_laneq_s32(*a4, 3);
  v11 = vrecpeq_f32(v10);
  v12 = vmulq_f32(v11, vrecpsq_f32(v10, v11));
  v15 = vmulq_f32(vrecpsq_f32(v10, v12), v12);
  HGArray<__simd128_float32_t,(HGFormat)28>::append((a1 + 96), &v15);
  v14 = vmulq_f32(*a4, v15);
  HGArray<__simd128_float32_t,(HGFormat)28>::append((a1 + 80), &v14);
  result = HGArray<__simd128_float32_t,(HGFormat)28>::append((a1 + 64), (*(*(a2 + 64) + 16) + *(*(a2 + 64) + 4) * a3 + *(a2 + 72)));
  if (a5)
  {
    v14 = vmulq_f32(*(*(*(a2 + 112) + 16) + *(*(a2 + 112) + 4) * a3 + *(a2 + 120)), v15);
    result = HGArray<__simd128_float32_t,(HGFormat)28>::append((a1 + 112), &v14);
    if ((a5 & 2) == 0)
    {
LABEL_3:
      if ((a5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v14 = vmulq_f32(*(*(*(a2 + 128) + 16) + *(*(a2 + 128) + 4) * a3 + *(a2 + 136)), v15);
  result = HGArray<__simd128_float32_t,(HGFormat)28>::append((a1 + 128), &v14);
  if ((a5 & 4) == 0)
  {
LABEL_4:
    if ((a5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v14 = vmulq_f32(*(*(*(a2 + 144) + 16) + *(*(a2 + 144) + 4) * a3 + *(a2 + 152)), v15);
  result = HGArray<__simd128_float32_t,(HGFormat)28>::append((a1 + 144), &v14);
  if ((a5 & 8) == 0)
  {
LABEL_5:
    if ((a5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v14 = vmulq_f32(*(*(*(a2 + 160) + 16) + *(*(a2 + 160) + 4) * a3 + *(a2 + 168)), v15);
  result = HGArray<__simd128_float32_t,(HGFormat)28>::append((a1 + 160), &v14);
  if ((a5 & 0x10) == 0)
  {
LABEL_6:
    if ((a5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v14 = vmulq_f32(*(*(*(a2 + 176) + 16) + *(*(a2 + 176) + 4) * a3 + *(a2 + 184)), v15);
  result = HGArray<__simd128_float32_t,(HGFormat)28>::append((a1 + 176), &v14);
  if ((a5 & 0x20) == 0)
  {
LABEL_7:
    if ((a5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v14 = vmulq_f32(*(*(*(a2 + 192) + 16) + *(*(a2 + 192) + 4) * a3 + *(a2 + 200)), v15);
  result = HGArray<__simd128_float32_t,(HGFormat)28>::append((a1 + 192), &v14);
  if ((a5 & 0x40) == 0)
  {
LABEL_8:
    if ((a5 & 0x80) == 0)
    {
      return result;
    }

LABEL_17:
    v14 = vmulq_f32(*(*(*(a2 + 224) + 16) + *(*(a2 + 224) + 4) * a3 + *(a2 + 232)), v15);
    return HGArray<__simd128_float32_t,(HGFormat)28>::append((a1 + 224), &v14);
  }

LABEL_16:
  v14 = vmulq_f32(*(*(*(a2 + 208) + 16) + *(*(a2 + 208) + 4) * a3 + *(a2 + 216)), v15);
  result = HGArray<__simd128_float32_t,(HGFormat)28>::append((a1 + 208), &v14);
  if (a5 < 0)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t HGArray<__simd128_float32_t,(HGFormat)28>::append(HGArrayDataRef *this, __int128 *a2)
{
  v16 = *a2;
  v3 = *this;
  if (!*this)
  {
    HGArrayDataRef::allocate(this);
  }

  v5 = *(v3 + 8);
  v4 = *(v3 + 12);
  v6 = v5 + 1;
  v7 = 2 * (v5 + 1);
  if (v5 < v4 || v4 >= v7)
  {
    goto LABEL_13;
  }

  v9 = *(v3 + 4) * v7;
  *(v3 + 12) = v7;
  if (v9)
  {
    operator new[]();
  }

  v10 = *(v3 + 16);
  if (v10)
  {
    MEMORY[0x2666E9ED0](v10, 0x1000C8077774924);
  }

  *(v3 + 16) = 0;
  v3 = *this;
  if (!*this)
  {
    if ((v5 & 0x80000000) == 0)
    {
      HGArrayDataRef::allocate(this);
    }
  }

  else
  {
LABEL_13:
    if (*(v3 + 12) >= v6)
    {
      *(v3 + 8) = v6;
    }

    else
    {
      v11 = *(v3 + 4) * v6;
      *(v3 + 12) = v6;
      if (v11)
      {
        operator new[]();
      }

      v12 = *(v3 + 16);
      if (v12)
      {
        MEMORY[0x2666E9ED0](v12, 0x1000C8077774924);
      }

      *(v3 + 16) = 0;
      *(v3 + 8) = v6;
    }
  }

  v13 = *(*this + 16) + *(*this + 4) * v5;
  v14 = *(this + 2);
  *(v13 + v14) = v16;
  return v13 + v14;
}

__n128 HGeometryData::CopyVertex(uint64_t a1, uint64_t a2, int *a3, int a4, char a5)
{
  *(*(*(a1 + 64) + 16) + *(*(a1 + 64) + 4) * *a3 + *(a1 + 72)) = *(*(*(a2 + 64) + 16) + *(*(a2 + 64) + 4) * a4 + *(a2 + 72));
  *(*(*(a1 + 80) + 16) + *(*(a1 + 80) + 4) * *a3 + *(a1 + 88)) = *(*(*(a2 + 80) + 16) + *(*(a2 + 80) + 4) * a4 + *(a2 + 88));
  result = *(*(*(a2 + 96) + 16) + *(*(a2 + 96) + 4) * a4 + *(a2 + 104));
  *(*(*(a1 + 96) + 16) + *(*(a1 + 96) + 4) * *a3 + *(a1 + 104)) = result;
  if (a5)
  {
    result = *(*(*(a2 + 112) + 16) + *(*(a2 + 112) + 4) * a4 + *(a2 + 120));
    *(*(*(a1 + 112) + 16) + *(*(a1 + 112) + 4) * *a3 + *(a1 + 120)) = result;
    if ((a5 & 2) == 0)
    {
LABEL_3:
      if ((a5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(*(*(a2 + 128) + 16) + *(*(a2 + 128) + 4) * a4 + *(a2 + 136));
  *(*(*(a1 + 128) + 16) + *(*(a1 + 128) + 4) * *a3 + *(a1 + 136)) = result;
  if ((a5 & 4) == 0)
  {
LABEL_4:
    if ((a5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = *(*(*(a2 + 144) + 16) + *(*(a2 + 144) + 4) * a4 + *(a2 + 152));
  *(*(*(a1 + 144) + 16) + *(*(a1 + 144) + 4) * *a3 + *(a1 + 152)) = result;
  if ((a5 & 8) == 0)
  {
LABEL_5:
    if ((a5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = *(*(*(a2 + 160) + 16) + *(*(a2 + 160) + 4) * a4 + *(a2 + 168));
  *(*(*(a1 + 160) + 16) + *(*(a1 + 160) + 4) * *a3 + *(a1 + 168)) = result;
  if ((a5 & 0x10) == 0)
  {
LABEL_6:
    if ((a5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = *(*(*(a2 + 176) + 16) + *(*(a2 + 176) + 4) * a4 + *(a2 + 184));
  *(*(*(a1 + 176) + 16) + *(*(a1 + 176) + 4) * *a3 + *(a1 + 184)) = result;
  if ((a5 & 0x20) == 0)
  {
LABEL_7:
    if ((a5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = *(*(*(a2 + 208) + 16) + *(*(a2 + 208) + 4) * a4 + *(a2 + 216));
    *(*(*(a1 + 208) + 16) + *(*(a1 + 208) + 4) * *a3 + *(a1 + 216)) = result;
    if ((a5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = *(*(*(a2 + 192) + 16) + *(*(a2 + 192) + 4) * a4 + *(a2 + 200));
  *(*(*(a1 + 192) + 16) + *(*(a1 + 192) + 4) * *a3 + *(a1 + 200)) = result;
  if ((a5 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a5 & 0x80) == 0)
  {
LABEL_9:
    ++*a3;
    return result;
  }

LABEL_17:
  result = *(*(*(a2 + 224) + 16) + *(*(a2 + 224) + 4) * a4 + *(a2 + 232));
  *(*(*(a1 + 224) + 16) + *(*(a1 + 224) + 4) * (*a3)++ + *(a1 + 232)) = result;
  return result;
}

float64x2_t HGeometryData::InterpVertex(uint64_t a1, uint64_t a2, int *a3, int a4, int a5, char a6, float64x2_t result)
{
  v7 = *(a2 + 64);
  v8 = *(v7 + 16);
  LODWORD(v7) = *(v7 + 4);
  v9 = *(a2 + 72);
  v10 = *(v8 + v7 * a5 + v9);
  v11 = *(v8 + v7 * a4 + v9);
  v12 = vcvtq_f64_f32(*v10.f32);
  v13 = vcvt_hight_f64_f32(v10);
  *(*(*(a1 + 64) + 16) + *(*(a1 + 64) + 4) * *a3 + *(a1 + 72)) = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(vcvtq_f64_f32(*v11.f32), v12), result.f64[0]), v12)), vaddq_f64(vmulq_n_f64(vsubq_f64(vcvt_hight_f64_f32(v11), v13), result.f64[0]), v13));
  v14 = *(a2 + 80);
  v15 = *(v14 + 16);
  LODWORD(v14) = *(v14 + 4);
  v16 = *(a2 + 88);
  v17 = *(v15 + v14 * a5 + v16);
  v18 = *(v15 + v14 * a4 + v16);
  v19 = vcvtq_f64_f32(*v17.f32);
  v20 = vcvt_hight_f64_f32(v17);
  *(*(*(a1 + 80) + 16) + *(*(a1 + 80) + 4) * *a3 + *(a1 + 88)) = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(vcvtq_f64_f32(*v18.f32), v19), result.f64[0]), v19)), vaddq_f64(vmulq_n_f64(vsubq_f64(vcvt_hight_f64_f32(v18), v20), result.f64[0]), v20));
  v21 = *(a2 + 96);
  v22 = *(v21 + 16);
  v23 = *(v21 + 4);
  v24 = *(a2 + 104);
  v25 = *(v22 + v23 * a5 + v24);
  v26 = *(v22 + v23 * a4 + v24);
  v27 = vcvtq_f64_f32(*v25.f32);
  v28 = vcvt_hight_f64_f32(v25);
  *(*(*(a1 + 96) + 16) + *(*(a1 + 96) + 4) * *a3 + *(a1 + 104)) = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(vcvtq_f64_f32(*v26.f32), v27), result.f64[0]), v27)), vaddq_f64(vmulq_n_f64(vsubq_f64(vcvt_hight_f64_f32(v26), v28), result.f64[0]), v28));
  if (a6)
  {
    v29 = *(a2 + 112);
    v30 = *(v29 + 16);
    LODWORD(v29) = *(v29 + 4);
    v31 = *(a2 + 120);
    v32 = *(v30 + v29 * a5 + v31);
    v33 = *(v30 + v29 * a4 + v31);
    v34 = vcvtq_f64_f32(*v32.f32);
    v35 = vcvt_hight_f64_f32(v32);
    *(*(*(a1 + 112) + 16) + *(*(a1 + 112) + 4) * *a3 + *(a1 + 120)) = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(vcvtq_f64_f32(*v33.f32), v34), result.f64[0]), v34)), vaddq_f64(vmulq_n_f64(vsubq_f64(vcvt_hight_f64_f32(v33), v35), result.f64[0]), v35));
    if ((a6 & 2) == 0)
    {
LABEL_3:
      if ((a6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v36 = *(a2 + 128);
  v37 = *(v36 + 16);
  LODWORD(v36) = *(v36 + 4);
  v38 = *(a2 + 136);
  v39 = *(v37 + v36 * a5 + v38);
  v40 = *(v37 + v36 * a4 + v38);
  v41 = vcvtq_f64_f32(*v39.f32);
  v42 = vcvt_hight_f64_f32(v39);
  *(*(*(a1 + 128) + 16) + *(*(a1 + 128) + 4) * *a3 + *(a1 + 136)) = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(vcvtq_f64_f32(*v40.f32), v41), result.f64[0]), v41)), vaddq_f64(vmulq_n_f64(vsubq_f64(vcvt_hight_f64_f32(v40), v42), result.f64[0]), v42));
  if ((a6 & 4) == 0)
  {
LABEL_4:
    if ((a6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v43 = *(a2 + 144);
  v44 = *(v43 + 16);
  LODWORD(v43) = *(v43 + 4);
  v45 = *(a2 + 152);
  v46 = *(v44 + v43 * a5 + v45);
  v47 = *(v44 + v43 * a4 + v45);
  v48 = vcvtq_f64_f32(*v46.f32);
  v49 = vcvt_hight_f64_f32(v46);
  *(*(*(a1 + 144) + 16) + *(*(a1 + 144) + 4) * *a3 + *(a1 + 152)) = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(vcvtq_f64_f32(*v47.f32), v48), result.f64[0]), v48)), vaddq_f64(vmulq_n_f64(vsubq_f64(vcvt_hight_f64_f32(v47), v49), result.f64[0]), v49));
  if ((a6 & 8) == 0)
  {
LABEL_5:
    if ((a6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v50 = *(a2 + 160);
  v51 = *(v50 + 16);
  LODWORD(v50) = *(v50 + 4);
  v52 = *(a2 + 168);
  v53 = *(v51 + v50 * a5 + v52);
  v54 = *(v51 + v50 * a4 + v52);
  v55 = vcvtq_f64_f32(*v53.f32);
  v56 = vcvt_hight_f64_f32(v53);
  *(*(*(a1 + 160) + 16) + *(*(a1 + 160) + 4) * *a3 + *(a1 + 168)) = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(vcvtq_f64_f32(*v54.f32), v55), result.f64[0]), v55)), vaddq_f64(vmulq_n_f64(vsubq_f64(vcvt_hight_f64_f32(v54), v56), result.f64[0]), v56));
  if ((a6 & 0x10) == 0)
  {
LABEL_6:
    if ((a6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v57 = *(a2 + 176);
  v58 = *(v57 + 16);
  LODWORD(v57) = *(v57 + 4);
  v59 = *(a2 + 184);
  v60 = *(v58 + v57 * a5 + v59);
  v61 = *(v58 + v57 * a4 + v59);
  v62 = vcvtq_f64_f32(*v60.f32);
  v63 = vcvt_hight_f64_f32(v60);
  *(*(*(a1 + 176) + 16) + *(*(a1 + 176) + 4) * *a3 + *(a1 + 184)) = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(vcvtq_f64_f32(*v61.f32), v62), result.f64[0]), v62)), vaddq_f64(vmulq_n_f64(vsubq_f64(vcvt_hight_f64_f32(v61), v63), result.f64[0]), v63));
  if ((a6 & 0x20) == 0)
  {
LABEL_7:
    if ((a6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v71 = *(a2 + 208);
    v72 = *(v71 + 16);
    LODWORD(v71) = *(v71 + 4);
    v73 = *(a2 + 216);
    v74 = *(v72 + v71 * a5 + v73);
    v75 = *(v72 + v71 * a4 + v73);
    v76 = vcvtq_f64_f32(*v74.f32);
    v77 = vcvt_hight_f64_f32(v74);
    *(*(*(a1 + 208) + 16) + *(*(a1 + 208) + 4) * *a3 + *(a1 + 216)) = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(vcvtq_f64_f32(*v75.f32), v76), result.f64[0]), v76)), vaddq_f64(vmulq_n_f64(vsubq_f64(vcvt_hight_f64_f32(v75), v77), result.f64[0]), v77));
    if ((a6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v64 = *(a2 + 192);
  v65 = *(v64 + 16);
  LODWORD(v64) = *(v64 + 4);
  v66 = *(a2 + 200);
  v67 = *(v65 + v64 * a5 + v66);
  v68 = *(v65 + v64 * a4 + v66);
  v69 = vcvtq_f64_f32(*v67.f32);
  v70 = vcvt_hight_f64_f32(v67);
  *(*(*(a1 + 192) + 16) + *(*(a1 + 192) + 4) * *a3 + *(a1 + 200)) = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(vcvtq_f64_f32(*v68.f32), v69), result.f64[0]), v69)), vaddq_f64(vmulq_n_f64(vsubq_f64(vcvt_hight_f64_f32(v68), v70), result.f64[0]), v70));
  if ((a6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a6 & 0x80) == 0)
  {
LABEL_9:
    ++*a3;
    return result;
  }

LABEL_17:
  v78 = *(a2 + 224);
  v79 = *(v78 + 16);
  LODWORD(v78) = *(v78 + 4);
  v80 = *(a2 + 232);
  v81 = *(v79 + v78 * a5 + v80);
  v82 = *(v79 + v78 * a4 + v80);
  v83 = vcvtq_f64_f32(*v81.f32);
  v84 = vcvt_hight_f64_f32(v81);
  v85 = vmulq_n_f64(vsubq_f64(vcvtq_f64_f32(*v82.f32), v83), result.f64[0]);
  result = vaddq_f64(vmulq_n_f64(vsubq_f64(vcvt_hight_f64_f32(v82), v84), result.f64[0]), v84);
  *(*(*(a1 + 224) + 16) + *(*(a1 + 224) + 4) * (*a3)++ + *(a1 + 232)) = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v85, v83)), result);
  return result;
}

void HGeometryData::ClipToEdge(int a1, int a2, uint64_t a3, int a4, uint64_t a5, int *a6, char a7, float a8)
{
  *a6 = 0;
  v30 = *(*(*(a3 + 80) + 16) + *(a3 + 88));
  if ((a4 - 1) <= 0xFFFFFFFD)
  {
    v14 = 0;
    v15 = a2;
    v16 = a1 ^ 1;
    v17 = a8;
    v18 = -a4;
    for (i = 1; v18 + i != 1; ++i)
    {
      v20 = v14;
      if (v18 + i)
      {
        v14 = i;
      }

      else
      {
        v14 = 0;
      }

      v22 = *(*(*(a3 + 80) + 16) + *(*(a3 + 80) + 4) * v14 + *(a3 + 88));
      v29 = v22;
      v21 = *(v30.f64 + v15);
      LODWORD(v22.f64[0]) = *(v29.f64 + v15);
      if (*v22.f64 < a8)
      {
        v23 = 1;
      }

      else
      {
        v23 = a1;
      }

      if ((v23 & 1) != 0 || v21 < a8)
      {
        v24 = *v22.f64 > a8 ? 1 : v16;
        if ((v24 & 1) != 0 || v21 > a8)
        {
          if ((a1 & 1) == 0 && (*v22.f64 < a8 ? (v25 = v21 < a8) : (v25 = 1), !v25) || (*v22.f64 <= a8 ? (v26 = 1) : (v26 = v16), (v26 & 1) == 0 && v21 <= a8))
          {
            v22.f64[0] = (v17 - v21) / (*v22.f64 - v21);
            HGeometryData::InterpVertex(a5, a3, a6, v14, v20, a7, v22);
            goto LABEL_5;
          }

          if (v21 >= a8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v23;
          }

          if (v21 <= a8)
          {
            v28 = 1;
          }

          else
          {
            v28 = v24;
          }

          if (v27 == 1 && (v28 & 1) != 0)
          {
            goto LABEL_5;
          }

          v22.f64[0] = (v17 - v21) / (*v22.f64 - v21);
          HGeometryData::InterpVertex(a5, a3, a6, v14, v20, a7, v22);
        }
      }

      HGeometryData::CopyVertex(a5, a3, a6, v14, a7);
LABEL_5:
      v30 = v29;
    }
  }
}

void HGeometryData::ClipPoly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = a6;
  v6[0] = 0;
  v6[1] = 0x1C00000000;
  HGArrayDataRef::allocate(v6);
}

void sub_25FBD342C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(va);
  _Unwind_Resume(a1);
}

void sub_25FBD3440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(va);
  _Unwind_Resume(a1);
}

void sub_25FBD3454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(va);
  _Unwind_Resume(a1);
}

void sub_25FBD3468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(va);
  _Unwind_Resume(a1);
}

void sub_25FBD347C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(va);
  _Unwind_Resume(a1);
}

void sub_25FBD3490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(va);
  _Unwind_Resume(a1);
}

uint64_t HGeometryData::GetValidPolygons(uint64_t this, HGArrayDataRef *a2, uint64_t a3, uint64_t a4, int *a5, unsigned int a6, int a7)
{
  v7 = a6;
  v9 = a2;
  v10 = this;
  *&v35.var0 = a3;
  *&v35.var2 = a4;
  if (a7 == -1)
  {
    if (*a5)
    {
      v12 = *(*a5 + 8);
      v15 = *this;
      if (!*this)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v12 = 0;
      v15 = *this;
      if (!*this)
      {
LABEL_33:
        v19 = *v9;
        if (*v9 && *(v19 + 12) <= -2)
        {
          v20 = *(v19 + 4);
          *(v19 + 12) = -1;
          if (v20)
          {
            operator new[]();
          }

          v21 = *(v19 + 16);
          v9 = a2;
          if (v21)
          {
            this = MEMORY[0x2666E9ED0](v21, 0x1000C8077774924);
          }

          *(v19 + 16) = 0;
        }

LABEL_40:
        if (v12 <= v7)
        {
          return this;
        }

        goto LABEL_46;
      }
    }

    if (*(v15 + 12) <= -2)
    {
      v18 = *(v15 + 4);
      *(v15 + 12) = -1;
      if (v18)
      {
        operator new[]();
      }

      this = *(v15 + 16);
      v9 = a2;
      if (this)
      {
        this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
      }

      *(v15 + 16) = 0;
    }

    goto LABEL_33;
  }

  v12 = a7 + a6;
  v13 = *this;
  if (*this)
  {
    if (*(v13 + 12) < a7)
    {
      v14 = *(v13 + 4) * a7;
      *(v13 + 12) = a7;
      if (v14)
      {
        operator new[]();
      }

      this = *(v13 + 16);
      if (this)
      {
        this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
      }

      *(v13 + 16) = 0;
    }
  }

  else if (a7 > 0)
  {
    HGArrayDataRef::allocate(this);
  }

  v16 = *v9;
  if (!*v9)
  {
    if (a7 > 0)
    {
      HGArrayDataRef::allocate(v9);
    }

    goto LABEL_40;
  }

  if (*(v16 + 12) >= a7)
  {
    goto LABEL_40;
  }

  v17 = *(v16 + 4) * a7;
  *(v16 + 12) = a7;
  if (v17)
  {
    operator new[]();
  }

  this = *(v16 + 16);
  if (this)
  {
    this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
  }

  *(v16 + 16) = 0;
  if (v12 > v7)
  {
    do
    {
LABEL_46:
      v23 = (*(*a5 + 16) + *(*a5 + 4) * v7 + a5[2]);
      this = HGRectExcludesRect(*&v35.var0, *&v35.var2, *v23, v23[1]);
      if (!this)
      {
        v24 = *v10;
        if (!*v10)
        {
          HGArrayDataRef::allocate(v10);
        }

        v26 = *(v24 + 8);
        v25 = *(v24 + 12);
        v27 = v26 + 1;
        v28 = 2 * (v26 + 1);
        if (v26 < v25 || v25 >= v28)
        {
          goto LABEL_59;
        }

        v30 = *(v24 + 4) * v28;
        *(v24 + 12) = v28;
        if (v30)
        {
          operator new[]();
        }

        v31 = *(v24 + 16);
        v9 = a2;
        if (v31)
        {
          MEMORY[0x2666E9ED0](v31, 0x1000C8077774924);
        }

        *(v24 + 16) = 0;
        v24 = *v10;
        if (!*v10)
        {
          if ((v26 & 0x80000000) == 0)
          {
            HGArrayDataRef::allocate(v10);
          }
        }

        else
        {
LABEL_59:
          if (*(v24 + 12) < v27)
          {
            v32 = *(v24 + 4) * v27;
            *(v24 + 12) = v27;
            if (v32)
            {
              operator new[]();
            }

            v33 = *(v24 + 16);
            v9 = a2;
            if (v33)
            {
              MEMORY[0x2666E9ED0](v33, 0x1000C8077774924);
            }

            *(v24 + 16) = 0;
          }

          *(v24 + 8) = v27;
        }

        *(*(*v10 + 16) + *(*v10 + 4) * v26 + v10[2]) = v7;
        v22 = !HGRect::ContainsRect(&v35, *(*(*a5 + 16) + *(*a5 + 4) * v7 + a5[2]));
        this = HGArray<BOOL,(HGFormat)0>::append(v9);
        *this = v22;
      }

      ++v7;
    }

    while (v12 != v7);
  }

  return this;
}

HGArrayDataRef *HGArray<BOOL,(HGFormat)0>::reserve(HGArrayDataRef *result, int a2)
{
  v2 = *result;
  if (*result)
  {
    if (*(v2 + 12) < a2)
    {
      v3 = *(v2 + 4) * a2;
      *(v2 + 12) = a2;
      if (v3)
      {
        operator new[]();
      }

      result = *(v2 + 16);
      if (result)
      {
        result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
      }

      *(v2 + 16) = 0;
    }
  }

  else if (a2 > 0)
  {

    HGArrayDataRef::allocate(result);
  }

  return result;
}

void HGeometryData::ClipPolygons()
{
  v0[0] = 0;
  v0[1] = 0x2200000000;
  HGArrayDataRef::allocate(v0);
}

void sub_25FBD4910(_Unwind_Exception *a1)
{
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray((v1 - 120));
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray((v1 - 104));
  _Unwind_Resume(a1);
}

void sub_25FBD49D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(va);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(va1);
  HGeometryData::~HGeometryData(va2);
  JUMPOUT(0x25FBD4A04);
}

uint64_t HGeometryData::AllocArrays(uint64_t this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 260);
  if (v3 >= a2)
  {
    return this;
  }

  v5 = this;
  if (v3)
  {
    LODWORD(v6) = 2 * v3;
LABEL_5:
    v7 = (this + 64);
    v8 = *(v5 + 64);
    *(v5 + 260) = v6;
    if (v8)
    {
      goto LABEL_6;
    }

    if (v6 <= 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    HGArrayDataRef::allocate(v7);
  }

  v6 = *(this + 272);
  if (v6)
  {
    goto LABEL_5;
  }

  v7 = (this + 64);
  v8 = *(v5 + 64);
  LODWORD(v6) = 256;
  *(v5 + 260) = 256;
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_6:
  if (*(v8 + 12) < v6)
  {
    v9 = *(v8 + 4) * v6;
    *(v8 + 12) = v6;
    if (v9)
    {
      operator new[]();
    }

    v14 = *(v8 + 16);
    if (v14)
    {
      MEMORY[0x2666E9ED0](v14, 0x1000C8077774924);
    }

    *(v8 + 16) = 0;
    v10 = (v5 + 80);
    v11 = *(v5 + 80);
    v12 = *(v5 + 260);
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_14:
    if (*(v11 + 12) < v12)
    {
      v13 = *(v11 + 4) * v12;
      *(v11 + 12) = v12;
      if (v13)
      {
        operator new[]();
      }

      v15 = *(v11 + 16);
      if (v15)
      {
        MEMORY[0x2666E9ED0](v15, 0x1000C8077774924);
      }

      *(v11 + 16) = 0;
    }

    v12 = *(v5 + 260);
    goto LABEL_26;
  }

LABEL_13:
  v10 = (v5 + 80);
  v11 = *(v5 + 80);
  v12 = *(v5 + 260);
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_20:
  if (v12 >= 1)
  {
    HGArrayDataRef::allocate(v10);
  }

LABEL_26:
  this = v5 + 96;
  v16 = *(v5 + 96);
  if (v16)
  {
    if (*(v16 + 12) < v12)
    {
      v17 = *(v16 + 4) * v12;
      *(v16 + 12) = v12;
      if (v17)
      {
        operator new[]();
      }

      this = *(v16 + 16);
      if (this)
      {
        this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
      }

      *(v16 + 16) = 0;
    }
  }

  else if (v12 >= 1)
  {
    HGArrayDataRef::allocate(this);
  }

  v18 = 0;
  v19 = (v5 + 112);
  do
  {
    if ((a3 >> v18))
    {
      v20 = *(v5 + 260);
      v21 = *v19;
      if (*v19)
      {
        if (*(v21 + 12) < v20)
        {
          v22 = *(v21 + 4) * v20;
          *(v21 + 12) = v20;
          if (v22)
          {
            operator new[]();
          }

          this = *(v21 + 16);
          if (this)
          {
            this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
          }

          *(v21 + 16) = 0;
        }
      }

      else if (v20 > 0)
      {
        HGArrayDataRef::allocate(v19);
      }
    }

    ++v18;
    v19 = (v19 + 16);
  }

  while (v18 != 8);
  return this;
}

void sub_25FBD5948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  HGeometryData::~HGeometryData(&a18);
  HGeometryData::~HGeometryData(&a53);
  _Unwind_Resume(a1);
}

uint64_t HGeometryData::SizeIndexArrays(uint64_t this, int a2, int a3)
{
  v5 = this;
  v6 = (this + 48);
  v7 = *(this + 48);
  if (v7)
  {
    v8 = *(v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 + a2;
  v10 = *(this + 252);
  if (v9 <= v10)
  {
    goto LABEL_25;
  }

  v11 = 2 * v10;
  if (2 * v10 <= v10 + a2)
  {
    v11 = v10 + a2;
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = a2;
  }

  *(this + 252) = v12;
  if (v7)
  {
    if (*(v7 + 12) < v12)
    {
      v13 = *(v7 + 4) * v12;
      *(v7 + 12) = v12;
      if (v13)
      {
        operator new[]();
      }

      this = *(v7 + 16);
      if (this)
      {
        this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
      }

      *(v7 + 16) = 0;
      v12 = *(v5 + 252);
    }
  }

  else if (v12 > 0)
  {
    HGArrayDataRef::allocate((this + 48));
  }

  v14 = *v5;
  if (!*v5)
  {
    if (v12 > 0)
    {
      HGArrayDataRef::allocate(v5);
    }

LABEL_25:
    v16 = (v5 + 16);
    v17 = *(v5 + 16);
    if (!v17)
    {
      goto LABEL_31;
    }

LABEL_26:
    v18 = *(v5 + 256);
    if (*(v17 + 8) + a3 <= v18)
    {
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  if (*(v14 + 12) >= v12)
  {
    goto LABEL_25;
  }

  v15 = *(v14 + 4) * v12;
  *(v14 + 12) = v12;
  if (v15)
  {
    operator new[]();
  }

  this = *(v14 + 16);
  if (this)
  {
    this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
  }

  *(v14 + 16) = 0;
  v16 = (v5 + 16);
  v17 = *(v5 + 16);
  if (v17)
  {
    goto LABEL_26;
  }

LABEL_31:
  v18 = *(v5 + 256);
  if (a3 <= v18)
  {
    goto LABEL_43;
  }

LABEL_32:
  v19 = 2 * v18;
  if (2 * v18 <= v18 + a3)
  {
    v19 = v18 + a3;
  }

  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = a3;
  }

  *(v5 + 256) = v20;
  if (v17)
  {
    if (*(v17 + 12) < v20)
    {
      v21 = *(v17 + 4) * v20;
      *(v17 + 12) = v20;
      if (v21)
      {
        operator new[]();
      }

      this = *(v17 + 16);
      if (this)
      {
        this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
      }

      *(v17 + 16) = 0;
      v22 = *(v5 + 244) + a2;
      *(v5 + 244) = v22;
      v23 = *(v5 + 16);
      if (!v23)
      {
        goto LABEL_54;
      }

      goto LABEL_44;
    }
  }

  else if (v20 > 0)
  {
    HGArrayDataRef::allocate(v16);
  }

LABEL_43:
  v22 = *(v5 + 244) + a2;
  *(v5 + 244) = v22;
  v23 = *(v5 + 16);
  if (!v23)
  {
LABEL_54:
    if (a3 > 0)
    {
      HGArrayDataRef::allocate(v16);
    }

    goto LABEL_56;
  }

LABEL_44:
  v24 = *(v23 + 8) + a3;
  if (*(v23 + 12) < v24)
  {
    v25 = *(v23 + 4) * v24;
    *(v23 + 12) = v24;
    if (v25)
    {
      operator new[]();
    }

    this = *(v23 + 16);
    if (this)
    {
      this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
    }

    *(v23 + 16) = 0;
  }

  *(v23 + 8) = v24;
  v22 = *(v5 + 244);
LABEL_56:
  v26 = *v6;
  if (*v6)
  {
    if (*(v26 + 12) < v22)
    {
      v27 = *(v26 + 4) * v22;
      *(v26 + 12) = v22;
      if (v27)
      {
        operator new[]();
      }

      this = *(v26 + 16);
      if (this)
      {
        this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
      }

      *(v26 + 16) = 0;
    }

    *(v26 + 8) = v22;
    v28 = *(v5 + 244);
    v29 = *v5;
    if (!*v5)
    {
LABEL_70:
      if (v28 > 0)
      {

        HGArrayDataRef::allocate(v5);
      }

      return this;
    }
  }

  else
  {
    if (v22 > 0)
    {
      HGArrayDataRef::allocate(v6);
    }

    v28 = *(v5 + 244);
    v29 = *v5;
    if (!*v5)
    {
      goto LABEL_70;
    }
  }

  if (*(v29 + 12) < v28)
  {
    v30 = *(v29 + 4) * v28;
    *(v29 + 12) = v28;
    if (v30)
    {
      operator new[]();
    }

    this = *(v29 + 16);
    if (this)
    {
      this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
    }

    *(v29 + 16) = 0;
  }

  *(v29 + 8) = v28;
  return this;
}

void sub_25FBD5EF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGeometryData::~HGeometryData(va);
  _Unwind_Resume(a1);
}

void sub_25FBD5F08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGeometryData::~HGeometryData(va);
  _Unwind_Resume(a1);
}

void HGeometryData::BuildShapeEdgeList(uint64_t a1, HGArrayDataRef *this, int a3)
{
  v5 = *(*(*(a1 + 48) + 16) + *(*(a1 + 48) + 4) * a3 + *(a1 + 56));
  v6 = *(*(*a1 + 16) + *(*a1 + 4) * a3 + *(a1 + 8));
  v7 = *this;
  if (*this)
  {
    if (*(v7 + 12) < v5)
    {
      v8 = *(v7 + 4) * v5;
      *(v7 + 12) = v5;
      if (v8)
      {
        operator new[]();
      }

      v9 = *(v7 + 16);
      if (v9)
      {
        MEMORY[0x2666E9ED0](v9, 0x1000C8077774924);
      }

      *(v7 + 16) = 0;
    }

    if (v5 >= 1)
    {
      v10 = 0;
      v11 = v6;
      do
      {
        if (v5 == 1)
        {
          v12 = v6;
        }

        else
        {
          v12 = v11 + 1;
        }

        v13 = *(a1 + 80);
        v14 = *(v13 + 16);
        LODWORD(v13) = *(v13 + 4);
        v15 = *(a1 + 88);
        v16 = *(v14 + v13 * v11 + v15 + 4);
        v17 = *(v14 + v13 * v12 + v15 + 4);
        if (v16 != v17)
        {
          HGArray<HEdge,(HGFormat)0>::append(this);
          v19 = (*(*this + 16) + *(*this + 4) * v10 + *(this + 2));
          v19[34].i64[0] = a1;
          if (v16 >= v17)
          {
            v20 = v12;
          }

          else
          {
            v20 = v11;
          }

          if (v16 >= v17)
          {
            v21 = v11;
          }

          else
          {
            v21 = v12;
          }

          v19->i32[0] = v20;
          v19->i32[1] = v21;
          v22 = *(a1 + 80);
          v23 = *(v22 + 16);
          LODWORD(v22) = *(v22 + 4);
          v24 = *(a1 + 88);
          v19->i64[1] = v23 + v22 * v20 + v24;
          v19[1].i64[0] = v23 + v21 * v22 + v24;
          HGeometryData::InitEdge(a1, v20, v21, *(*(a1 + 264) + 1068), &v19[2], v19 + 18, &v30, &v29, v18);
          ++v10;
        }

        ++v11;
        --v5;
      }

      while (v5);
      if (v10 >= 2)
      {
        v25 = *this;
        if (*this)
        {
          v26 = *(v25 + 16);
          if (v26)
          {
            v27 = (v26 + *(this + 2));
          }

          else
          {
            v27 = 0;
          }

          v28 = *(v25 + 4);
        }

        else
        {
          v27 = 0;
          v28 = 0;
        }

        qsort(v27, v10, v28, CompareEdgeY);
      }
    }
  }

  else if (v5 > 0)
  {
    HGArrayDataRef::allocate(this);
  }
}

HGArrayDataRef *HGArray<HEdge,(HGFormat)0>::reserve(HGArrayDataRef *result, int a2)
{
  v2 = *result;
  if (*result)
  {
    if (*(v2 + 12) < a2)
    {
      v3 = *(v2 + 4) * a2;
      *(v2 + 12) = a2;
      if (v3)
      {
        operator new[]();
      }

      result = *(v2 + 16);
      if (result)
      {
        result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
      }

      *(v2 + 16) = 0;
    }
  }

  else if (a2 > 0)
  {

    HGArrayDataRef::allocate(result);
  }

  return result;
}

uint64_t HGArray<HEdge,(HGFormat)0>::append(int *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 + 8);
    v4 = v3 + 1;
    if (v3 < *(v2 + 12))
    {
      goto LABEL_4;
    }

    HGArray<HEdge,(HGFormat)0>::reserve(a1, 2 * v4);
    v2 = *a1;
    if (*a1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = 0;
    v4 = 1;
    HGArray<HEdge,(HGFormat)0>::reserve(a1, 2);
    v2 = *a1;
    if (*a1)
    {
LABEL_4:
      if (*(v2 + 12) < v4)
      {
        v5 = *(v2 + 4) * v4;
        *(v2 + 12) = v4;
        if (v5)
        {
          operator new[]();
        }

        v6 = *(v2 + 16);
        if (v6)
        {
          MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
        }

        *(v2 + 16) = 0;
      }

      *(v2 + 8) = v4;
      return *(*a1 + 16) + *(*a1 + 4) * v3 + a1[2];
    }
  }

  if (v4 > 0)
  {
    HGArrayDataRef::allocate(a1);
  }

  return *(*a1 + 16) + *(*a1 + 4) * v3 + a1[2];
}

float HGeometryData::InitEdge(uint64_t a1, int a2, int a3, char a4, uint64_t a5, float32x4_t *a6, float *a7, _DWORD *a8, double a9)
{
  LODWORD(a9) = *(*(*(a1 + 80) + 16) + *(*(a1 + 80) + 4) * a3 + *(a1 + 88) + 4);
  *a8 = LODWORD(a9);
  HGeometryData::GetEdgeDeltas(a1, a2, a3, a6, a9);
  *(a5 + 144) = *(*(*(a1 + 64) + 16) + *(*(a1 + 64) + 4) * a2 + *(a1 + 72));
  v15 = *(*(*(a1 + 80) + 16) + *(*(a1 + 80) + 4) * a2 + *(a1 + 88));
  *a5 = v15;
  *(a5 + 208) = *(*(*(a1 + 80) + 16) + *(*(a1 + 80) + 4) * a2 + *(a1 + 88));
  *(a5 + 240) = *(*(*(a1 + 96) + 16) + *(*(a1 + 96) + 4) * a2 + *(a1 + 104));
  if (a4)
  {
    *(a5 + 16) = *(*(*(a1 + 112) + 16) + *(*(a1 + 112) + 4) * a2 + *(a1 + 120));
    if ((a4 & 2) == 0)
    {
LABEL_3:
      if ((a4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((a4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a5 + 32) = *(*(*(a1 + 128) + 16) + *(*(a1 + 128) + 4) * a2 + *(a1 + 136));
  if ((a4 & 4) == 0)
  {
LABEL_4:
    if ((a4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a5 + 48) = *(*(*(a1 + 144) + 16) + *(*(a1 + 144) + 4) * a2 + *(a1 + 152));
  if ((a4 & 8) == 0)
  {
LABEL_5:
    if ((a4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a5 + 64) = *(*(*(a1 + 160) + 16) + *(*(a1 + 160) + 4) * a2 + *(a1 + 168));
  if ((a4 & 0x10) == 0)
  {
LABEL_6:
    if ((a4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a5 + 80) = *(*(*(a1 + 176) + 16) + *(*(a1 + 176) + 4) * a2 + *(a1 + 184));
  if ((a4 & 0x20) == 0)
  {
LABEL_7:
    if ((a4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a5 + 96) = *(*(*(a1 + 192) + 16) + *(*(a1 + 192) + 4) * a2 + *(a1 + 200));
  if ((a4 & 0x40) == 0)
  {
LABEL_8:
    v16 = v15.f32[1];
    if ((a4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  *(a5 + 112) = *(*(*(a1 + 208) + 16) + *(*(a1 + 208) + 4) * a2 + *(a1 + 216));
  v16 = v15.f32[1];
  if (a4 < 0)
  {
LABEL_9:
    v15 = *(*(*(a1 + 224) + 16) + *(*(a1 + 224) + 4) * a2 + *(a1 + 232));
    *(a5 + 128) = v15;
  }

LABEL_10:
  v15.f32[0] = v16 - floorf(v16);
  v17 = 0.5;
  if (v15.f32[0] > 0.5)
  {
    v17 = 1.5;
  }

  v18 = v17 - v15.f32[0];
  if ((v17 - v15.f32[0]) > 0.0)
  {
    v15.f32[0] = v17 - v15.f32[0];
    HGeometryData::IncrementEdge(a1, a5, a6, v15);
  }

  result = v16 + v18;
  *a7 = v16 + v18;
  return result;
}

uint64_t CompareEdgeY(void *a1, void *a2)
{
  v2 = *(*(*(a1[68] + 80) + 16) + *(*(a1[68] + 80) + 4) * *a1 + *(a1[68] + 88) + 4);
  v3 = *(*(*(a2[68] + 80) + 16) + *(*(a2[68] + 80) + 4) * *a2 + *(a2[68] + 88) + 4);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2 > v3;
  }
}

float32x4_t HGeometryData::GetEdgeDeltas(uint64_t a1, int a2, int a3, uint64_t a4, double a5)
{
  v5 = *(a1 + 80);
  v6 = *(v5 + 16);
  LODWORD(v5) = *(v5 + 4);
  v7 = *(a1 + 88);
  v8 = v6 + v5 * a2 + v7;
  v9 = v6 + v5 * a3 + v7;
  v10 = *(*(a1 + 264) + 1068);
  LODWORD(a5) = *(v9 + 4);
  v11 = *(v8 + 4);
  if (*&a5 == v11)
  {
    result = 0uLL;
    *(a4 + 144) = 0u;
    *a4 = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 240) = 0u;
    if (v10)
    {
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      if ((v10 & 2) == 0)
      {
LABEL_13:
        if ((v10 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_30;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    if ((v10 & 4) == 0)
    {
LABEL_14:
      if ((v10 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }

LABEL_30:
    *(a4 + 48) = 0;
    *(a4 + 56) = 0;
    if ((v10 & 8) == 0)
    {
LABEL_15:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(a4 + 64) = 0;
    *(a4 + 72) = 0;
    if ((v10 & 0x10) == 0)
    {
LABEL_16:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_33;
    }

LABEL_32:
    *(a4 + 80) = 0;
    *(a4 + 88) = 0;
    if ((v10 & 0x20) == 0)
    {
LABEL_17:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(a4 + 96) = 0;
    *(a4 + 104) = 0;
    if ((v10 & 0x40) == 0)
    {
LABEL_18:
      if ((v10 & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_19;
    }

LABEL_34:
    *(a4 + 112) = 0;
    *(a4 + 120) = 0;
    if ((v10 & 0x80) == 0)
    {
      return result;
    }

LABEL_19:
    *(a4 + 128) = 0uLL;
    return result;
  }

  *&a5 = *&a5 - v11;
  v12 = vdupq_lane_s32(*&a5, 0);
  v13 = vrecpeq_f32(v12);
  v14 = vmulq_f32(v13, vrecpsq_f32(v12, v13));
  result = vmulq_f32(vrecpsq_f32(v12, v14), v14);
  v16 = *(a1 + 64);
  *(a4 + 144) = vmulq_f32(result, vsubq_f32(*(*(v16 + 16) + *(v16 + 4) * a3 + *(a1 + 72)), *(*(v16 + 16) + *(v16 + 4) * a2 + *(a1 + 72))));
  v17 = *(a1 + 80);
  v18 = vmulq_f32(result, vsubq_f32(*(*(v17 + 16) + *(v17 + 4) * a3 + *(a1 + 88)), *(*(v17 + 16) + *(v17 + 4) * a2 + *(a1 + 88))));
  *a4 = v18;
  v19 = *(a1 + 96);
  *(a4 + 240) = vmulq_f32(result, vsubq_f32(*(*(v19 + 16) + *(v19 + 4) * a3 + *(a1 + 104)), *(*(v19 + 16) + *(v19 + 4) * a2 + *(a1 + 104))));
  *(a4 + 208) = v18;
  if (v10)
  {
    v20 = *(a1 + 112);
    *(a4 + 16) = vmulq_f32(result, vsubq_f32(*(*(v20 + 16) + *(v20 + 4) * a3 + *(a1 + 120)), *(*(v20 + 16) + *(v20 + 4) * a2 + *(a1 + 120))));
    if ((v10 & 2) == 0)
    {
LABEL_4:
      if ((v10 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_4;
  }

  v21 = *(a1 + 128);
  *(a4 + 32) = vmulq_f32(result, vsubq_f32(*(*(v21 + 16) + *(v21 + 4) * a3 + *(a1 + 136)), *(*(v21 + 16) + *(v21 + 4) * a2 + *(a1 + 136))));
  if ((v10 & 4) == 0)
  {
LABEL_5:
    if ((v10 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v22 = *(a1 + 144);
  *(a4 + 48) = vmulq_f32(result, vsubq_f32(*(*(v22 + 16) + *(v22 + 4) * a3 + *(a1 + 152)), *(*(v22 + 16) + *(v22 + 4) * a2 + *(a1 + 152))));
  if ((v10 & 8) == 0)
  {
LABEL_6:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v23 = *(a1 + 160);
  *(a4 + 64) = vmulq_f32(result, vsubq_f32(*(*(v23 + 16) + *(v23 + 4) * a3 + *(a1 + 168)), *(*(v23 + 16) + *(v23 + 4) * a2 + *(a1 + 168))));
  if ((v10 & 0x10) == 0)
  {
LABEL_7:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_25:
    v25 = *(a1 + 192);
    *(a4 + 96) = vmulq_f32(result, vsubq_f32(*(*(v25 + 16) + *(v25 + 4) * a3 + *(a1 + 200)), *(*(v25 + 16) + *(v25 + 4) * a2 + *(a1 + 200))));
    if ((v10 & 0x40) == 0)
    {
LABEL_9:
      if ((v10 & 0x80) == 0)
      {
        return result;
      }

LABEL_27:
      v27 = *(a1 + 224);
      result = vmulq_f32(result, vsubq_f32(*(*(v27 + 16) + *(v27 + 4) * a3 + *(a1 + 232)), *(*(v27 + 16) + *(v27 + 4) * a2 + *(a1 + 232))));
      *(a4 + 128) = result;
      return result;
    }

    goto LABEL_26;
  }

LABEL_24:
  v24 = *(a1 + 176);
  *(a4 + 80) = vmulq_f32(result, vsubq_f32(*(*(v24 + 16) + *(v24 + 4) * a3 + *(a1 + 184)), *(*(v24 + 16) + *(v24 + 4) * a2 + *(a1 + 184))));
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_26:
  v26 = *(a1 + 208);
  *(a4 + 112) = vmulq_f32(result, vsubq_f32(*(*(v26 + 16) + *(v26 + 4) * a3 + *(a1 + 216)), *(*(v26 + 16) + *(v26 + 4) * a2 + *(a1 + 216))));
  if ((v10 & 0x80) != 0)
  {
    goto LABEL_27;
  }

  return result;
}

float32x4_t HGeometryData::IncrementEdge(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t result)
{
  v4 = *(*(a1 + 264) + 1068);
  if (result.f32[0] != 1.0)
  {
    *a2 = vaddq_f32(*a2, vmulq_n_f32(*a3, result.f32[0]));
    a2[9] = vaddq_f32(a2[9], vmulq_n_f32(a3[9], result.f32[0]));
    a2[15] = vaddq_f32(a2[15], vmulq_n_f32(a3[15], result.f32[0]));
    a2[13] = vaddq_f32(a2[13], vmulq_n_f32(a3[13], result.f32[0]));
    if (v4)
    {
      a2[1] = vaddq_f32(a2[1], vmulq_n_f32(a3[1], result.f32[0]));
      if ((v4 & 2) == 0)
      {
LABEL_13:
        if ((v4 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_30;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_13;
    }

    a2[2] = vaddq_f32(a2[2], vmulq_n_f32(a3[2], result.f32[0]));
    if ((v4 & 4) == 0)
    {
LABEL_14:
      if ((v4 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }

LABEL_30:
    a2[3] = vaddq_f32(a2[3], vmulq_n_f32(a3[3], result.f32[0]));
    if ((v4 & 8) == 0)
    {
LABEL_15:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }

LABEL_31:
    a2[4] = vaddq_f32(a2[4], vmulq_n_f32(a3[4], result.f32[0]));
    if ((v4 & 0x10) == 0)
    {
LABEL_16:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_33;
    }

LABEL_32:
    a2[5] = vaddq_f32(a2[5], vmulq_n_f32(a3[5], result.f32[0]));
    if ((v4 & 0x20) == 0)
    {
LABEL_17:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_34;
    }

LABEL_33:
    a2[6] = vaddq_f32(a2[6], vmulq_n_f32(a3[6], result.f32[0]));
    if ((v4 & 0x40) == 0)
    {
LABEL_18:
      if ((v4 & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_35;
    }

LABEL_34:
    a2[7] = vaddq_f32(a2[7], vmulq_n_f32(a3[7], result.f32[0]));
    if ((v4 & 0x80) == 0)
    {
      return result;
    }

LABEL_35:
    result = vaddq_f32(a2[8], vmulq_n_f32(a3[8], result.f32[0]));
    a2[8] = result;
    return result;
  }

  *a2 = vaddq_f32(*a3, *a2);
  a2[9] = vaddq_f32(a3[9], a2[9]);
  a2[15] = vaddq_f32(a3[15], a2[15]);
  result = vaddq_f32(a3[13], a2[13]);
  a2[13] = result;
  if (v4)
  {
    result = vaddq_f32(a3[1], a2[1]);
    a2[1] = result;
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = vaddq_f32(a3[2], a2[2]);
  a2[2] = result;
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = vaddq_f32(a3[3], a2[3]);
  a2[3] = result;
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = vaddq_f32(a3[4], a2[4]);
  a2[4] = result;
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_25:
    result = vaddq_f32(a3[6], a2[6]);
    a2[6] = result;
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
        return result;
      }

LABEL_27:
      result = vaddq_f32(a3[8], a2[8]);
      a2[8] = result;
      return result;
    }

    goto LABEL_26;
  }

LABEL_24:
  result = vaddq_f32(a3[5], a2[5]);
  a2[5] = result;
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_26:
  result = vaddq_f32(a3[7], a2[7]);
  a2[7] = result;
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_27;
  }

  return result;
}

void HGeometryData::RenderPolygon()
{
  v0[0] = 0;
  v0[1] = 0;
  HGArrayDataRef::allocate(v0);
}

void sub_25FBD7C8C(_Unwind_Exception *a1)
{
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray((v1 - 224));
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray((v1 - 192));
  _Unwind_Resume(a1);
}

uint64_t CompareEdgeX(const void *a1, const void *a2)
{
  v2 = *(*a1 + 32);
  v3 = *(*a2 + 32);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2 > v3;
  }
}

uint64_t HGeometryData::RenderPolygons(HGeometryData *this, HGTile *a2, HGSampleRectStat *a3)
{
  v5 = *(*(a2 + 42) + 160);
  v6 = HGTile::Renderer(a2);
  v7 = HGRenderer::DepthManager(v6, v5);
  if (v7)
  {
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(**(this + 33) + 592))(*(this + 33)) & 0xA;
  if (v9)
  {
    v10 = *a2;
    v11 = *(a2 + 1);
    v12 = HGTile::Renderer(a2);
    DepthBufferManager::init(v8, v12);
    if (v9 == 2)
    {
      (*(*v8 + 24))(v8);
    }

    (*(*v8 + 40))(v8, 0, v10, v11);
    DepthBuffer = DepthBufferManager::getDepthBuffer(v8);
    *(a2 + 10) = *(DepthBuffer + 64) / *(DepthBuffer + 56);
    *(a2 + 4) = *(v8 + 8);
  }

  v14 = HGTile::Renderer(a2);
  HGRenderer::GetTarget(v14, 0);
  ActiveShaderNode = HGRasterizer::getActiveShaderNode(*(this + 33));
  v16 = HGTile::Renderer(a2);
  result = (*(*ActiveShaderNode + 312))(ActiveShaderNode, v16);
  v18 = *(this + 61);
  if (v18)
  {
    for (i = 0; i < v18; ++i)
    {
      if (*(*(*(this + 6) + 16) + *(*(this + 6) + 4) * i + *(this + 14)) >= 3)
      {
        HGeometryData::RenderPolygon();
      }
    }
  }

  if (v9)
  {
    result = (*(*v8 + 48))(v8);
    if (v9 == 2)
    {
      return (*(*v8 + 32))(v8);
    }
  }

  return result;
}

void HGeometryData::~HGeometryData(HGeometryData *this)
{
  v2 = *(this + 28);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v2, 0x1080C4098BBCF0FLL);
  }

  v4 = *(this + 26);
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      MEMORY[0x2666E9ED0](v5, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v4, 0x1080C4098BBCF0FLL);
  }

  v6 = *(this + 24);
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v6, 0x1080C4098BBCF0FLL);
  }

  v8 = *(this + 22);
  if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      MEMORY[0x2666E9ED0](v9, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v8, 0x1080C4098BBCF0FLL);
  }

  v10 = *(this + 20);
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      MEMORY[0x2666E9ED0](v11, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v10, 0x1080C4098BBCF0FLL);
  }

  v12 = *(this + 18);
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    v13 = *(v12 + 16);
    if (v13)
    {
      MEMORY[0x2666E9ED0](v13, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v12, 0x1080C4098BBCF0FLL);
  }

  v14 = *(this + 16);
  if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    v15 = *(v14 + 16);
    if (v15)
    {
      MEMORY[0x2666E9ED0](v15, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v14, 0x1080C4098BBCF0FLL);
  }

  v16 = *(this + 14);
  if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      MEMORY[0x2666E9ED0](v17, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v16, 0x1080C4098BBCF0FLL);
  }

  v18 = *(this + 12);
  if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    v19 = *(v18 + 16);
    if (v19)
    {
      MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v18, 0x1080C4098BBCF0FLL);
  }

  v20 = *(this + 10);
  if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
  {
    v21 = *(v20 + 16);
    if (v21)
    {
      MEMORY[0x2666E9ED0](v21, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v20, 0x1080C4098BBCF0FLL);
  }

  v22 = *(this + 8);
  if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
  {
    v23 = *(v22 + 16);
    if (v23)
    {
      MEMORY[0x2666E9ED0](v23, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v22, 0x1080C4098BBCF0FLL);
  }

  v24 = *(this + 6);
  if (v24 && atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
  {
    v25 = *(v24 + 16);
    if (v25)
    {
      MEMORY[0x2666E9ED0](v25, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v24, 0x1080C4098BBCF0FLL);
  }

  v26 = *(this + 4);
  if (v26 && atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
  {
    v27 = *(v26 + 16);
    if (v27)
    {
      MEMORY[0x2666E9ED0](v27, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v26, 0x1080C4098BBCF0FLL);
  }

  v28 = *(this + 2);
  if (v28 && atomic_fetch_add(v28, 0xFFFFFFFF) == 1)
  {
    v29 = *(v28 + 16);
    if (v29)
    {
      MEMORY[0x2666E9ED0](v29, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v28, 0x1080C4098BBCF0FLL);
  }

  v30 = *this;
  if (*this && atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
  {
    v31 = *(v30 + 16);
    if (v31)
    {
      MEMORY[0x2666E9ED0](v31, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v30, 0x1080C4098BBCF0FLL);
  }
}

uint64_t HGArray<BOOL,(HGFormat)0>::append(int *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 + 8);
    v4 = v3 + 1;
    if (v3 < *(v2 + 12))
    {
      goto LABEL_4;
    }

    HGArray<BOOL,(HGFormat)0>::reserve(a1, 2 * v4);
    v2 = *a1;
    if (*a1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = 0;
    v4 = 1;
    HGArray<BOOL,(HGFormat)0>::reserve(a1, 2);
    v2 = *a1;
    if (*a1)
    {
LABEL_4:
      if (*(v2 + 12) < v4)
      {
        v5 = *(v2 + 4) * v4;
        *(v2 + 12) = v4;
        if (v5)
        {
          operator new[]();
        }

        v6 = *(v2 + 16);
        if (v6)
        {
          MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
        }

        *(v2 + 16) = 0;
      }

      *(v2 + 8) = v4;
      return *(*a1 + 16) + *(*a1 + 4) * v3 + a1[2];
    }
  }

  if (v4 > 0)
  {
    HGArrayDataRef::allocate(a1);
  }

  return *(*a1 + 16) + *(*a1 + 4) * v3 + a1[2];
}

void HGGLNode::HGGLNode(HGGLNode *this, unint64_t a2)
{
  HGNode::HGNode(this);
  *v4 = &unk_28720A230;
  v4[52] = 0;
  v5 = HGObject::operator new(0x4D0uLL);
  HGRasterizer::HGRasterizer(v5, a2);
  *(this + 51) = v5;
  *(this + 106) = 1;
}

void sub_25FBD866C(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  v4 = *(v1 + 416);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGGLNode::~HGGLNode(HGGLNode *this)
{
  *this = &unk_28720A230;
  (*(**(this + 51) + 24))(*(this + 51));
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28720A230;
  (*(**(this + 51) + 24))(*(this + 51));
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGGLNode::SetParameter(HGGLNode *this, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = fmaxf(fminf(a4, 4.0), 0.0);
  (*(**(this + 51) + 104))(*(this + 51), a2, v15);
  if (v9 > 4)
  {
    v13 = 1;
  }

  else
  {
    v13 = dword_26038F1EC[v9];
  }

  if ((a3 == 1.0) != (v15[0] != 1.0) && *(this + 106) == v13)
  {
    return 0;
  }

  *(this + 106) = v13;
  v10.n128_u64[0] = 0;
  if (a3 == 1.0)
  {
    v10.n128_f32[0] = 1.0;
  }

  v11.n128_u32[0] = *(&xmmword_2603427D0 + v13);
  v12.n128_u32[0] = dword_26038F200[v13];
  (*(**(this + 51) + 96))(*(this + 51), 0, v10, v11, v12, 0.0);
  return 1;
}