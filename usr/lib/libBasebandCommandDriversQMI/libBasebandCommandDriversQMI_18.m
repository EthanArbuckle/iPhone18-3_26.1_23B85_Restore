uint64_t tlv::parseV<bsp::tlv::abm::GSMCalibrationStatusItem>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 2);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 2), v4, 2);
  v6 = *(v3 + 1);
  *a1 = (v3 + 4);
  return (v6 << 16) | v5;
}

uint64_t sub_296FAD54C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_WORD **tlv::writeV<bsp::tlv::abm::GSMCalibrationStatusItem>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t bsp::tlv::abm::parseField(uint64_t a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

_DWORD *bsp::tlv::abm::writeField(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t tlv::parseV<bsp::tlv::abm::CDMACalibrationStatusItem>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 4);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 4);
  v6 = *(v3 + 1);
  *a1 = (v3 + 8);
  return (v6 << 32) | v5;
}

uint64_t sub_296FAD684(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<bsp::tlv::abm::CDMACalibrationStatusItem>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t bsp::tlv::abm::parseField(uint64_t a1, const unsigned __int8 *a2, void *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 8);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 8);
  a3[1] = *(a1 + 8);
  return a1 + 16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 8);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 8);
  a3[1] = *(a1 + 8);
  return a1 + 16;
}

void *bsp::tlv::abm::writeField(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

uint64_t tlv::parseV<bsp::tlv::abm::LTECalibrationStatusItem>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 8);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 8), v4, 8);
  v6 = *(v3 + 1);
  *a1 = (v3 + 16);
  return v5;
}

uint64_t sub_296FAD7B8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

void **tlv::writeV<bsp::tlv::abm::LTECalibrationStatusItem>(void **result, void *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

char *bsp::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _WORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

uint64_t tlv::parseV<bsp::tlv::abm::BBSecurityStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FAD88C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::BBSecurityStatus>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *bsp::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, void *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 8);
  *a3 = *a1;
  return a1 + 8;
}

{
  v5 = a1;
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  v6 = *v5;
  v5 = (v5 + 2);
  tlv::throwIfNotEnoughBytes(v5, a2, v6);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, v5, v5 + v6, v6);
  return v5 + v6;
}

{
  v5 = a1;
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  v6 = *v5;
  v5 = (v5 + 2);
  tlv::throwIfNotEnoughBytes(v5, a2, v6);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, v5, v5 + v6, v6);
  return v5 + v6;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = &v10[-*a3] >> 1;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = &v9[2 * v6];
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<bsp::tlv::abm::Mitigation>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  while (v9 != v10)
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 1);
    *v9 = *v7;
    tlv::throwIfNotEnoughBytes((v7 + 1), a2, 1);
    v9[1] = v7[1];
    v7 += 2;
    v9 += 2;
  }

  return v7;
}

uint64_t tlv::parseV<bsp::tlv::abm::SerialNumber64Bit>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 8);
  result = *v3;
  *a1 = (v3 + 8);
  return result;
}

uint64_t sub_296FAD94C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

void **tlv::writeV<bsp::tlv::abm::SerialNumber64Bit>(void **result, void *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

unint64_t tlv::parseV<bsp::tlv::abm::Accessory>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 2);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 2), v4, 2);
  v6 = *(v3 + 1);
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 2);
  v7 = *(v3 + 2);
  tlv::throwIfNotEnoughBytes((v3 + 6), v4, 2);
  v8 = *(v3 + 3);
  tlv::throwIfNotEnoughBytes((v3 + 8), v4, 2);
  v9 = *(v3 + 4);
  tlv::throwIfNotEnoughBytes((v3 + 10), v4, 2);
  v10 = v9 | (*(v3 + 5) << 16);
  *a1 = (v3 + 12);
  return (v7 << 32) | (v8 << 48) | (v6 << 16) | v5;
}

void sub_296FADB9C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FADB68);
}

_WORD **tlv::writeV<bsp::tlv::abm::Accessory>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  v2[3] = a2[3];
  v2[4] = a2[4];
  v2[5] = a2[5];
  *result = v2 + 6;
  return result;
}

char *bsp::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

uint64_t tlv::parseV<bsp::tlv::abm::EraseMask>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FADC7C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<bsp::tlv::abm::EraseMask>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *bsp::tlv::abm::writeField(char *a1, void *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  memcpy(a1, a2, v5);
  v6 = *(v2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = v2[1];
  }

  return &a1[v6];
}

uint64_t bsp::tlv::abm::getFieldSize(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    return *(a1 + 23);
  }

  else
  {
    return *(a1 + 8);
  }
}

{
  return *(a1 + 16) - *(a1 + 8) + 6;
}

{
  if (*(a1 + 16) == *(a1 + 8))
  {
    return 4;
  }

  else
  {
    return *(a1 + 16) - *(a1 + 8) + 4;
  }
}

void tlv::parseV<bsp::tlv::abm::DumpLogsReason>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = (*a1 + a2);
  std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
}

void sub_296FADDB0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FADDA0);
}

void sub_296FADDC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tlv::size<bsp::tlv::abm::DumpLogsReason>(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 + 3;
}

void *tlv::writeV<bsp::tlv::abm::DumpLogsReason>(void **a1, void *a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  result = memcpy(*a1, a2, v6);
  v8 = *(v2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = v2[1];
  }

  *a1 = &v4[v8];
  return result;
}

BOOL tlv::parseV<bsp::tlv::abm::DumpLogsUserNotification>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FADEFC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::DumpLogsUserNotification>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::DumpLogsIssueCategory>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FADFBC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::DumpLogsIssueCategory>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

BOOL tlv::parseV<bsp::tlv::abm::DumpLogsState>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FAE08C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::DumpLogsState>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::RFCalibrationStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FAE14C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::RFCalibrationStatus>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::GSMCalibrationStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 2);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 2), v4, 2);
  v6 = *(v3 + 1);
  *a1 = (v3 + 4);
  return (v6 << 16) | v5;
}

uint64_t sub_296FAE26C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_WORD **tlv::writeV<bsp::tlv::abm::GSMCalibrationStatus>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::CDMACalibrationStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 4);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 4);
  v6 = *(v3 + 1);
  *a1 = (v3 + 8);
  return (v6 << 32) | v5;
}

uint64_t sub_296FAE3A4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<bsp::tlv::abm::CDMACalibrationStatus>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::WCDMACalibrationStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 4);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 4);
  v6 = *(v3 + 1);
  *a1 = (v3 + 8);
  return (v6 << 32) | v5;
}

uint64_t sub_296FAE4E0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<bsp::tlv::abm::WCDMACalibrationStatus>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::TDSCDMACalibrationStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 4);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 4);
  v6 = *(v3 + 1);
  *a1 = (v3 + 8);
  return (v6 << 32) | v5;
}

uint64_t sub_296FAE61C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<bsp::tlv::abm::TDSCDMACalibrationStatus>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::LTECalibrationStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 8);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 8), v4, 8);
  v6 = *(v3 + 1);
  *a1 = (v3 + 16);
  return v5;
}

uint64_t sub_296FAE750(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

void **tlv::writeV<bsp::tlv::abm::LTECalibrationStatus>(void **result, void *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::C_DRXStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FAE824(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::C_DRXStatus>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::SleepManagerStats>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 1);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 1), v4, 4);
  v6 = *(v3 + 1);
  tlv::throwIfNotEnoughBytes((v3 + 5), v4, 4);
  v7 = *(v3 + 5);
  tlv::throwIfNotEnoughBytes((v3 + 9), v4, 4);
  v8 = *(v3 + 9);
  *a1 = (v3 + 13);
  return v5 | (v6 << 32) | 0xAAAAAA00;
}

void sub_296FAE9E0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FAE9B0);
}

uint64_t *tlv::writeV<bsp::tlv::abm::SleepManagerStats>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 1) = *(a2 + 4);
  *(v2 + 5) = *(a2 + 8);
  *(v2 + 9) = *(a2 + 12);
  *result = v2 + 13;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::FactoryCalibrationStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FAEAB4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::FactoryCalibrationStatus>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

void *tlv::parseV<bsp::tlv::abm::Payload>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296FAEBC4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FAEBB4);
}

void sub_296FAEBD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<bsp::tlv::abm::Payload>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::PayloadAdditionalError>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FAECDC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::PayloadAdditionalError>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

void *tlv::parseV<bsp::tlv::abm::PayloadResponse>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296FAEDEC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FAEDDCLL);
}

void sub_296FAEDFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<bsp::tlv::abm::PayloadResponse>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

void *tlv::parseV<bsp::tlv::abm::Nonce>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296FAEF54(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FAEF44);
}

void sub_296FAEF64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<bsp::tlv::abm::Nonce>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

void *tlv::parseV<bsp::tlv::abm::PKHash>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296FAF0BC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FAF0ACLL);
}

void sub_296FAF0CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<bsp::tlv::abm::PKHash>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::ChipInformation>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 4);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 4);
  v6 = *(v3 + 1);
  *a1 = (v3 + 8);
  return (v6 << 32) | v5;
}

uint64_t sub_296FAF238(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<bsp::tlv::abm::ChipInformation>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

unsigned __int8 *bsp::tlv::abm::parseField(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 2);
  *(a3 + 2) = *(a1 + 1);
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 2);
  *(a3 + 4) = *(a1 + 2);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>((a3 + 8), a1 + 6, a2, a2 - (a1 + 6));
  return a2;
}

char *bsp::tlv::abm::writeField(_WORD *a1, uint64_t a2)
{
  *a1 = *a2;
  a1[1] = *(a2 + 2);
  a1[2] = *(a2 + 4);
  v3 = a1 + 3;
  memcpy(a1 + 3, *(a2 + 8), *(a2 + 16) - *(a2 + 8));
  return v3 + *(a2 + 16) - *(a2 + 8);
}

{
  *a1 = *(a2 + 8) - *a2;
  v3 = a1 + 1;
  memcpy(a1 + 1, *a2, *(a2 + 8) - *a2);
  return v3 + *(a2 + 8) - *a2;
}

{
  *a1 = *(a2 + 8) - *a2;
  v3 = a1 + 1;
  memcpy(a1 + 1, *a2, *(a2 + 8) - *a2);
  return v3 + *(a2 + 8) - *a2;
}

void *tlv::parseV<bsp::tlv::abm::ManifestStruct>@<X0>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  v5 = (a3 + 8);
  *a3 = 0xAAAA000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v6 = *a1;
  v7 = a2;
  v8 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v8, 2);
  *a3 = *v6;
  tlv::throwIfNotEnoughBytes((v6 + 2), v8, 2);
  *(a3 + 2) = *(v6 + 1);
  tlv::throwIfNotEnoughBytes((v6 + 4), v8, 2);
  *(a3 + 4) = *(v6 + 2);
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v5, v6 + 6, v8, v7 - 6);
  *a1 = v8;
  return result;
}

void sub_296FAF430(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FAF41CLL);
}

void sub_296FAF440(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<bsp::tlv::abm::ManifestStruct>(_WORD **a1, uint64_t a2)
{
  v4 = *a1;
  *v4 = *a2;
  v4[1] = *(a2 + 2);
  v4[2] = *(a2 + 4);
  v5 = v4 + 3;
  result = memcpy(v4 + 3, *(a2 + 8), *(a2 + 16) - *(a2 + 8));
  *a1 = (v5 + *(a2 + 16) - *(a2 + 8));
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::SKeyStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FAF564(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::SKeyStatus>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::AKeyStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FAF624(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::AKeyStatus>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

void *tlv::parseV<bsp::tlv::abm::SKeyHash>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296FAF734(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FAF724);
}

void sub_296FAF744(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<bsp::tlv::abm::SKeyHash>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

unint64_t tlv::parseV<bsp::tlv::abm::ManifestStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 2);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 2), v4, 2);
  v6 = *(v3 + 1);
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 2);
  v7 = *(v3 + 2);
  tlv::throwIfNotEnoughBytes((v3 + 6), v4, 2);
  v8 = *(v3 + 3);
  *a1 = (v3 + 8);
  return (v8 << 48) | (v7 << 32) | (v6 << 16) | v5;
}

void sub_296FAF940(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FAF918);
}

_WORD **tlv::writeV<bsp::tlv::abm::ManifestStatus>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  v2[3] = a2[3];
  *result = v2 + 4;
  return result;
}

void *tlv::parseV<bsp::tlv::abm::RootManifestData>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 2);
  v7 = *v5;
  v5 = (v5 + 2);
  tlv::throwIfNotEnoughBytes(v5, v6, v7);
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, v5, v5 + v7, v7);
  *a1 = (v5 + v7);
  return result;
}

void sub_296FAFAD8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FAFAC4);
}

void sub_296FAFAE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<bsp::tlv::abm::RootManifestData>(_WORD **a1, uint64_t a2)
{
  v4 = *a1;
  *v4++ = *(a2 + 8) - *a2;
  result = memcpy(v4, *a2, *(a2 + 8) - *a2);
  *a1 = (v4 + *(a2 + 8) - *a2);
  return result;
}

void *tlv::parseV<bsp::tlv::abm::ProvisioningManifestData>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 2);
  v7 = *v5;
  v5 = (v5 + 2);
  tlv::throwIfNotEnoughBytes(v5, v6, v7);
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, v5, v5 + v7, v7);
  *a1 = (v5 + v7);
  return result;
}

void sub_296FAFCC4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FAFCB0);
}

void sub_296FAFCD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<bsp::tlv::abm::ProvisioningManifestData>(_WORD **a1, uint64_t a2)
{
  v4 = *a1;
  *v4++ = *(a2 + 8) - *a2;
  result = memcpy(v4, *a2, *(a2 + 8) - *a2);
  *a1 = (v4 + *(a2 + 8) - *a2);
  return result;
}

void *tlv::parseV<bsp::tlv::abm::ActivationManifestData>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296FAFE3C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FAFE2CLL);
}

void sub_296FAFE4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<bsp::tlv::abm::ActivationManifestData>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

BOOL tlv::parseV<bsp::tlv::abm::ScreenStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FAFF64(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::ScreenStatus>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

BOOL tlv::parseV<bsp::tlv::abm::SleepStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB0034(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::SleepStatus>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

BOOL tlv::parseV<bsp::tlv::abm::TetheringStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB0104(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::TetheringStatus>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::BreadModeType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB01C4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::BreadModeType>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::ButterModeType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB0284(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::ButterModeType>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::ArrivalTime>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FB0344(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<bsp::tlv::abm::ArrivalTime>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::DepartureTime>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FB0404(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<bsp::tlv::abm::DepartureTime>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

BOOL tlv::parseV<bsp::tlv::abm::Coredump>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB04D4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::Coredump>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::PowerSequenceIndex>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB0594(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::PowerSequenceIndex>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::BasebandVersion>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FB0654(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<bsp::tlv::abm::BasebandVersion>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *bsp::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, uint64_t a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  v8 = *a1;
  v7 = a1 + 2;
  v6 = v8;
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = v10 - *a3;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 2);
  v13 = v8 >= v12;
  v14 = v8 - v12;
  if (v8 <= v12)
  {
    if (!v13)
    {
      v10 = &v9[6 * v6];
      *(a3 + 8) = v10;
    }
  }

  else
  {
    v15 = *(a3 + 16);
    if (0xAAAAAAAAAAAAAAABLL * ((v15 - v10) >> 2) >= v14)
    {
      bzero(*(a3 + 8), 12 * ((12 * v14 - 12) / 0xC) + 12);
      v10 += 12 * ((12 * v14 - 12) / 0xC) + 12;
      *(a3 + 8) = v10;
      v9 = *a3;
    }

    else
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v9) >> 2);
      v17 = 0x5555555555555556 * ((v15 - v9) >> 2);
      if (v17 > v6)
      {
        v6 = v17;
      }

      if (v16 >= 0xAAAAAAAAAAAAAAALL)
      {
        v6 = 0x1555555555555555;
      }

      if (v6 > 0x1555555555555555)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v18 = 12 * v6;
      v19 = operator new(12 * v6);
      v20 = &v19[v18];
      bzero(&v19[v11], 12 * ((12 * v14 - 12) / 0xC) + 12);
      v10 = &v19[12 * ((12 * v14 - 12) / 0xC) + 12 + v11];
      memcpy(v19, v9, v11);
      *a3 = v19;
      *(a3 + 8) = v10;
      *(a3 + 16) = v20;
      if (v9)
      {
        operator delete(v9);
        v10 = *(a3 + 8);
      }

      v9 = *a3;
    }
  }

  while (v9 != v10)
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 2);
    *v9 = *v7;
    tlv::throwIfNotEnoughBytes((v7 + 2), a2, 2);
    v9[1] = *(v7 + 1);
    tlv::throwIfNotEnoughBytes((v7 + 4), a2, 2);
    v9[2] = *(v7 + 2);
    tlv::throwIfNotEnoughBytes((v7 + 6), a2, 2);
    v9[3] = *(v7 + 3);
    tlv::throwIfNotEnoughBytes((v7 + 8), a2, 2);
    v9[4] = *(v7 + 4);
    tlv::throwIfNotEnoughBytes((v7 + 10), a2, 2);
    v9[5] = *(v7 + 5);
    v7 += 12;
    v9 += 6;
  }

  return v7;
}

_WORD *bsp::tlv::abm::writeField(_WORD *a1, _DWORD *a2)
{
  *a1 = -21845 * ((a2[2] - *a2) >> 2);
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      result[1] = v3[1];
      result[2] = v3[2];
      result[3] = v3[3];
      result[4] = v3[4];
      result[5] = v3[5];
      result += 6;
      v3 += 6;
    }

    while (v3 != v4);
  }

  return result;
}

unint64_t bsp::tlv::abm::getFieldSize(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 2;
  }

  else
  {
    return 12 * ((v1 - *a1 - 12) / 0xCuLL) + 14;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return 5 * ((v1 - *a1 - 8) >> 3) + 6;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return 5 * ((v1 - *a1 - 8) >> 3) + 6;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return 5 * ((v1 - *a1 - 8) >> 3) + 6;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return 5 * ((v1 - *a1 - 8) >> 3) + 6;
  }
}

char *tlv::parseV<bsp::tlv::abm::AccessoryInfoList>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = bsp::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FB09C0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB09B4);
}

void sub_296FB09D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<bsp::tlv::abm::AccessoryInfoList>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 5;
  }

  else
  {
    return 12 * ((v1 - *a1 - 12) / 0xCuLL) + 17;
  }
}

_WORD **tlv::writeV<bsp::tlv::abm::AccessoryInfoList>(_WORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = -21845 * ((a2[2] - *a2) >> 2);
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      v3[1] = v4[1];
      v3[2] = v4[2];
      v3[3] = v4[3];
      v3[4] = v4[4];
      v3[5] = v4[5];
      v3 += 6;
      v4 += 6;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

BOOL tlv::parseV<bsp::tlv::abm::IsCharging>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB0B38(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::IsCharging>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::ChargeLevelPercentage>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB0BF8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::ChargeLevelPercentage>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::SPMIBusMask>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FB0CB8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<bsp::tlv::abm::SPMIBusMask>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *bsp::parseField(tlv *a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

__n128 tlv::parseV<bsp::tlv::abm::CapabilitiesItem>@<Q0>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 4);
  *a3 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 4), v6, 0x10);
  result = *(v5 + 4);
  *(a3 + 4) = result;
  *a1 = (v5 + 20);
  return result;
}

void sub_296FB0E34(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

__n128 tlv::writeV<bsp::tlv::abm::CapabilitiesItem>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  result = *(a2 + 4);
  *(v2 + 4) = result;
  *a1 = v2 + 20;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::TxAntennaConfig>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB0F10(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::TxAntennaConfig>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

unint64_t tlv::parseV<bsp::tlv::abm::ARTD>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 2);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 2), v4, 2);
  v6 = *(v3 + 1);
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 2);
  v7 = *(v3 + 2);
  tlv::throwIfNotEnoughBytes((v3 + 6), v4, 2);
  v8 = *(v3 + 3);
  tlv::throwIfNotEnoughBytes((v3 + 8), v4, 2);
  v9 = *(v3 + 4);
  *a1 = (v3 + 10);
  return (v7 << 32) | (v8 << 48) | (v6 << 16) | v5;
}

void sub_296FB1110(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB10E0);
}

_WORD **tlv::writeV<bsp::tlv::abm::ARTD>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  v2[3] = a2[3];
  v2[4] = a2[4];
  *result = v2 + 5;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::ARTDV2>(uint64_t *a1, int a2)
{
  v3[1] = 2863267840;
  v3[0] = 0;
  *a1 = bsp::tlv::abm::parseField(*a1, (*a1 + a2), v3);
  return v3[0];
}

uint64_t sub_296FB1354(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v3;
}

uint64_t *tlv::writeV<bsp::tlv::abm::ARTDV2>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 1) = *(a2 + 1);
  *(v2 + 2) = *(a2 + 2);
  *(v2 + 3) = *(a2 + 3);
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 5) = *(a2 + 5);
  *(v2 + 6) = *(a2 + 6);
  *(v2 + 7) = *(a2 + 7);
  *(v2 + 8) = *(a2 + 8);
  *(v2 + 9) = *(a2 + 9);
  *(v2 + 10) = *(a2 + 12);
  *result = v2 + 14;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::ARFCNLock>@<X0>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 4) = 0;
  v5 = (a3 + 4);
  *a3 = -1431699456;
  *(a3 + 12) = 0;
  *(a3 + 20) = 0;
  v6 = *a1;
  v7 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v7, 2);
  *a3 = *v6;
  tlv::throwIfNotEnoughBytes((v6 + 2), v7, 4);
  *v5 = *(v6 + 2);
  tlv::throwIfNotEnoughBytes((v6 + 6), v7, 4);
  *(a3 + 8) = *(v6 + 6);
  tlv::throwIfNotEnoughBytes((v6 + 10), v7, 4);
  *(a3 + 12) = *(v6 + 10);
  tlv::throwIfNotEnoughBytes((v6 + 14), v7, 4);
  *(a3 + 16) = *(v6 + 14);
  result = tlv::throwIfNotEnoughBytes((v6 + 18), v7, 4);
  *(a3 + 20) = *(v6 + 18);
  *a1 = (v6 + 22);
  return result;
}

void sub_296FB15CC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t *tlv::writeV<bsp::tlv::abm::ARFCNLock>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 2) = *(a2 + 4);
  *(v2 + 6) = *(a2 + 8);
  *(v2 + 10) = *(a2 + 12);
  *(v2 + 14) = *(a2 + 16);
  *(v2 + 18) = *(a2 + 20);
  *result = v2 + 22;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::CarrierAgreggation>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 2);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 2), v4, 2);
  v6 = *(v3 + 1);
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 2);
  v7 = *(v3 + 2);
  *a1 = (v3 + 6);
  return (v6 << 16) | (v7 << 32) | v5;
}

void sub_296FB1774(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB1750);
}

_WORD **tlv::writeV<bsp::tlv::abm::CarrierAgreggation>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  *result = v2 + 3;
  return result;
}

_BYTE *bsp::tlv::abm::writeField(_BYTE *a1, _DWORD *a2)
{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = (a2[2] - *a2) >> 3;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      result += 5;
      v3 += 8;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 3;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      result += 5;
      v3 += 8;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 3;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      result += 5;
      v3 += 8;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 3;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      result += 5;
      v3 += 8;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::WakeReason>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB1840(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::WakeReason>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::ChannelID>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB1900(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::ChannelID>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::WakeBufferLength>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FB19C0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<bsp::tlv::abm::WakeBufferLength>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

void *tlv::parseV<bsp::tlv::abm::WakeBuffer>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296FB1AD0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB1AC0);
}

void sub_296FB1AE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<bsp::tlv::abm::WakeBuffer>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

uint64_t bsp::tlv::abm::parseField(bsp::tlv::abm *this, const unsigned __int8 *a2, unsigned __int8 *a3, Size *a4)
{
  tlv::throwIfNotEnoughBytes(this, a2, 2);
  *a3 = *this;
  return this + 2;
}

uint64_t tlv::parseV<bsp::tlv::abm::Size>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB1BE8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::Size>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

void *tlv::parseV<bsp::tlv::abm::LogData>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296FB1CF8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB1CE8);
}

void sub_296FB1D08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<bsp::tlv::abm::LogData>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

BOOL tlv::parseV<bsp::tlv::abm::Enable>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB1E20(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::Enable>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::Port>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB1EE0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::Port>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

void *tlv::parseV<bsp::tlv::abm::PayloadRFFE>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296FB1FF0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB1FE0);
}

void sub_296FB2000(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<bsp::tlv::abm::PayloadRFFE>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::RxDiversityConfig>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 2);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 2), v4, 2);
  v6 = *(v3 + 1);
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 2);
  v7 = *(v3 + 2);
  *a1 = (v3 + 6);
  return (v6 << 16) | (v7 << 32) | v5;
}

void sub_296FB21B4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB2190);
}

_WORD **tlv::writeV<bsp::tlv::abm::RxDiversityConfig>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  *result = v2 + 3;
  return result;
}

unint64_t tlv::parseV<bsp::tlv::abm::ARTDConfig>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 2);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 2), v4, 2);
  v6 = *(v3 + 1);
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 2);
  v7 = *(v3 + 2);
  tlv::throwIfNotEnoughBytes((v3 + 6), v4, 2);
  v8 = *(v3 + 3);
  tlv::throwIfNotEnoughBytes((v3 + 8), v4, 2);
  v9 = *(v3 + 4);
  *a1 = (v3 + 10);
  return (v7 << 32) | (v8 << 48) | (v6 << 16) | v5;
}

void sub_296FB23C0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB2390);
}

_WORD **tlv::writeV<bsp::tlv::abm::ARTDConfig>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  v2[3] = a2[3];
  v2[4] = a2[4];
  *result = v2 + 5;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::UARFCNLockConfig>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB249C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::UARFCNLockConfig>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::EARFCNLockConfig>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB255C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::EARFCNLockConfig>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::CarrierAgreggationConfig>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 2);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 2), v4, 2);
  v6 = *(v3 + 1);
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 2);
  v7 = *(v3 + 2);
  *a1 = (v3 + 6);
  return (v6 << 16) | (v7 << 32) | v5;
}

void sub_296FB26C8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB26A4);
}

_WORD **tlv::writeV<bsp::tlv::abm::CarrierAgreggationConfig>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  *result = v2 + 3;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::RxDiversityConfigV2>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 2);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 2), v4, 2);
  v6 = *(v3 + 1);
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 2);
  v7 = *(v3 + 2);
  *a1 = (v3 + 6);
  return (v6 << 16) | (v7 << 32) | v5;
}

void sub_296FB2840(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB281CLL);
}

_WORD **tlv::writeV<bsp::tlv::abm::RxDiversityConfigV2>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  *result = v2 + 3;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::ARTDConfigV2>(uint64_t *a1, int a2)
{
  v3[1] = 2863267840;
  v3[0] = 0;
  *a1 = bsp::tlv::abm::parseField(*a1, (*a1 + a2), v3);
  return v3[0];
}

uint64_t sub_296FB2944(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v3;
}

uint64_t *tlv::writeV<bsp::tlv::abm::ARTDConfigV2>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 1) = *(a2 + 1);
  *(v2 + 2) = *(a2 + 2);
  *(v2 + 3) = *(a2 + 3);
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 5) = *(a2 + 5);
  *(v2 + 6) = *(a2 + 6);
  *(v2 + 7) = *(a2 + 7);
  *(v2 + 8) = *(a2 + 8);
  *(v2 + 9) = *(a2 + 9);
  *(v2 + 10) = *(a2 + 12);
  *result = v2 + 14;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::ARFCNLockConfig>@<X0>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 4) = 0;
  v5 = (a3 + 4);
  *a3 = -1431699456;
  *(a3 + 12) = 0;
  *(a3 + 20) = 0;
  v6 = *a1;
  v7 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v7, 2);
  *a3 = *v6;
  tlv::throwIfNotEnoughBytes((v6 + 2), v7, 4);
  *v5 = *(v6 + 2);
  tlv::throwIfNotEnoughBytes((v6 + 6), v7, 4);
  *(a3 + 8) = *(v6 + 6);
  tlv::throwIfNotEnoughBytes((v6 + 10), v7, 4);
  *(a3 + 12) = *(v6 + 10);
  tlv::throwIfNotEnoughBytes((v6 + 14), v7, 4);
  *(a3 + 16) = *(v6 + 14);
  result = tlv::throwIfNotEnoughBytes((v6 + 18), v7, 4);
  *(a3 + 20) = *(v6 + 18);
  *a1 = (v6 + 22);
  return result;
}

void sub_296FB2BBC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t *tlv::writeV<bsp::tlv::abm::ARFCNLockConfig>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 2) = *(a2 + 4);
  *(v2 + 6) = *(a2 + 8);
  *(v2 + 10) = *(a2 + 12);
  *(v2 + 14) = *(a2 + 16);
  *(v2 + 18) = *(a2 + 20);
  *result = v2 + 22;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::SleepConfig>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB2CB8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::SleepConfig>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::FieldTestConfig>@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  result = bsp::tlv::abm::parseField(*a1, (*a1 + a2), a3);
  *a1 = result;
  return result;
}

void sub_296FB2F2C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

_WORD **tlv::writeV<bsp::tlv::abm::FieldTestConfig>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  v2[3] = a2[3];
  v2[4] = a2[4];
  v2[5] = a2[5];
  v2[6] = a2[6];
  v2[7] = a2[7];
  v2[8] = a2[8];
  v2[9] = a2[9];
  v2[10] = a2[10];
  v2[11] = a2[11];
  v2[12] = a2[12];
  v2[13] = a2[13];
  *result = v2 + 14;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::FieldTestConfigV2>@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(a3 + 4) = v4;
  *(a3 + 20) = v4;
  *(a3 + 36) = v4;
  *(a3 + 52) = -1431655766;
  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 20) = 0;
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  v5 = *a1;
  *(a3 + 46) = 0;
  result = bsp::tlv::abm::parseField(v5, (v5 + a2), a3);
  *a1 = result;
  return result;
}

void sub_296FB324C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t *tlv::writeV<bsp::tlv::abm::FieldTestConfigV2>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 2) = *(a2 + 2);
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 6) = *(a2 + 8);
  *(v2 + 7) = *(a2 + 9);
  *(v2 + 8) = *(a2 + 10);
  *(v2 + 9) = *(a2 + 11);
  *(v2 + 10) = *(a2 + 12);
  *(v2 + 11) = *(a2 + 13);
  *(v2 + 12) = *(a2 + 14);
  *(v2 + 13) = *(a2 + 15);
  *(v2 + 14) = *(a2 + 16);
  *(v2 + 15) = *(a2 + 17);
  *(v2 + 16) = *(a2 + 20);
  *(v2 + 20) = *(a2 + 24);
  *(v2 + 22) = *(a2 + 28);
  *(v2 + 24) = *(a2 + 32);
  *(v2 + 28) = *(a2 + 36);
  *(v2 + 32) = *(a2 + 40);
  *(v2 + 36) = *(a2 + 44);
  *(v2 + 40) = *(a2 + 48);
  *(v2 + 44) = *(a2 + 52);
  *result = v2 + 46;
  return result;
}

uint64_t bsp::tlv::abm::parseField(uint64_t a1, const unsigned __int8 *a2, _BYTE *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 1);
  a3[1] = *(a1 + 1);
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 1);
  a3[2] = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 3), a2, 1);
  a3[3] = *(a1 + 3);
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 1);
  a3[4] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 5), a2, 1);
  a3[5] = *(a1 + 5);
  tlv::throwIfNotEnoughBytes((a1 + 6), a2, 1);
  a3[6] = *(a1 + 6);
  tlv::throwIfNotEnoughBytes((a1 + 7), a2, 1);
  a3[7] = *(a1 + 7);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 1);
  a3[8] = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 9), a2, 1);
  a3[9] = *(a1 + 9);
  tlv::throwIfNotEnoughBytes((a1 + 10), a2, 1);
  a3[10] = *(a1 + 10);
  tlv::throwIfNotEnoughBytes((a1 + 11), a2, 1);
  a3[11] = *(a1 + 11);
  return a1 + 12;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 1);
  a3[1] = *(a1 + 1);
  return a1 + 2;
}

uint64_t tlv::parseV<bsp::tlv::abm::ReadStatus>(uint64_t *a1, int a2)
{
  v4 = 0;
  v3 = 0;
  *a1 = bsp::tlv::abm::parseField(*a1, (*a1 + a2), &v3);
  return v3;
}

uint64_t sub_296FB3540(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v3;
}

_BYTE **tlv::writeV<bsp::tlv::abm::ReadStatus>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  v2[3] = a2[3];
  v2[4] = a2[4];
  v2[5] = a2[5];
  v2[6] = a2[6];
  v2[7] = a2[7];
  v2[8] = a2[8];
  v2[9] = a2[9];
  v2[10] = a2[10];
  v2[11] = a2[11];
  *result = v2 + 12;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::MeasureType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB3664(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::MeasureType>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::TestType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB3724(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::TestType>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::TriggerError>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB37E4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::TriggerError>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::TestTimeout>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB38A4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::TestTimeout>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

void *tlv::parseV<bsp::tlv::abm::RFSelfTestNonce>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296FB39B4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB39A4);
}

void sub_296FB39C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<bsp::tlv::abm::RFSelfTestNonce>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::SecurityStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB3ACC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::SecurityStatus>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

void *tlv::parseV<bsp::tlv::abm::RFSelfTestTicket>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296FB3BDC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB3BCCLL);
}

void sub_296FB3BEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<bsp::tlv::abm::RFSelfTestTicket>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::WakeChannel>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FB3CF4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<bsp::tlv::abm::WakeChannel>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::CommandCode>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB3DB4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::CommandCode>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::RegionIndex>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB3E74(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::RegionIndex>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::BlockIndex>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FB3F34(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<bsp::tlv::abm::BlockIndex>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t bsp::tlv::abm::writeField(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  result = a1 + 5;
  *(a1 + 4) = -51 * ((a2[4] - a2[2]) >> 2);
  v4 = *(a2 + 1);
  for (i = *(a2 + 2); v4 != i; v4 += 20)
  {
    *result = *v4;
    *(result + 4) = *(v4 + 4);
    result += 20;
  }

  return result;
}

unint64_t bsp::tlv::abm::getFieldSize(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return 5;
  }

  else
  {
    return 20 * ((v2 - v1 - 20) / 0x14uLL) + 25;
  }
}

uint64_t tlv::parseV<bsp::tlv::abm::Capabilities>@<X0>(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  a3[1] = 0;
  *a3 = 0xAAAAAAAA00000000;
  a3[2] = 0;
  a3[3] = 0;
  result = bsp::tlv::abm::parseField(*a1, (*a1 + a2), a3);
  *a1 = result;
  return result;
}

void sub_296FB4268(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB4258);
}

void sub_296FB4278(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<bsp::tlv::abm::Capabilities>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return 8;
  }

  else
  {
    return 20 * ((v2 - v1 - 20) / 0x14uLL) + 28;
  }
}

uint64_t *tlv::writeV<bsp::tlv::abm::Capabilities>(uint64_t *result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v3 = v2 + 5;
  *(v2 + 4) = -51 * ((a2[4] - a2[2]) >> 2);
  v4 = *(a2 + 1);
  for (i = *(a2 + 2); v4 != i; v4 += 20)
  {
    *v3 = *v4;
    *(v3 + 4) = *(v4 + 4);
    v3 += 20;
  }

  *result = v3;
  return result;
}

tlv *coex::parseField(tlv *a1, const unsigned __int8 *a2, void *a3)
{
  v5 = a1;
  tlv::throwIfNotEnoughBytes(a1, a2, 8);
  if ((a2 - v5) >= 8)
  {
    v6 = *v5;
    v5 = (v5 + 8);
    *a3 = v6;
  }

  return v5;
}

char *awd::parseField(tlv *a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

uint64_t awd::tlv::abm::writeField(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 14) = *(a2 + 24) - *(a2 + 16);
  v3 = a1 + 16;
  memcpy((a1 + 16), *(a2 + 16), *(a2 + 24) - *(a2 + 16));
  return v3 + *(a2 + 24) - *(a2 + 16);
}

{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 16) - *(a2 + 8);
  v3 = a1 + 4;
  memcpy((a1 + 4), *(a2 + 8), *(a2 + 16) - *(a2 + 8));
  return v3 + *(a2 + 16) - *(a2 + 8);
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 8);
  return a1 + 13;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  return a1 + 6;
}

{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 8);
  return a1 + 9;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 26) = *(a2 + 40) - *(a2 + 32);
  v3 = a1 + 28;
  memcpy((a1 + 28), *(a2 + 32), *(a2 + 40) - *(a2 + 32));
  return v3 + *(a2 + 40) - *(a2 + 32);
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 32) - *(a2 + 24);
  v3 = a1 + 20;
  memcpy((a1 + 20), *(a2 + 24), *(a2 + 32) - *(a2 + 24));
  return v3 + *(a2 + 32) - *(a2 + 24);
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return a1 + 22;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  return a1 + 18;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 24);
  return a1 + 28;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  return a1 + 24;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 23) = *(a2 + 23);
  return a1 + 24;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  return a1 + 20;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  return a1 + 9;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  return a1 + 9;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  return a1 + 5;
}

uint64_t awd::tlv::abm::getFieldSize(uint64_t a1)
{
  return *(a1 + 24) - *(a1 + 16) + 16;
}

{
  return *(a1 + 16) - *(a1 + 8) + 4;
}

{
  return *(a1 + 40) - *(a1 + 32) + 28;
}

{
  return *(a1 + 32) - *(a1 + 24) + 20;
}

char *tlv::parseV<awd::tlv::abm::AddConfig>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = 0;
  *a3 = 0;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  *(a3 + 6) = 0;
  result = awd::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FB45A4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB4594);
}

void sub_296FB45B4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<awd::tlv::abm::AddConfig>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *v4 = *a2;
  *(v4 + 4) = *(a2 + 4);
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 12) = *(a2 + 12);
  *(v4 + 13) = *(a2 + 13);
  v5 = *(a2 + 16);
  v6 = (*(a2 + 24) - v5);
  *(v4 + 14) = *(a2 + 24) - v5;
  v7 = v4 + 16;
  result = memcpy((v4 + 16), *(a2 + 16), *(a2 + 24) - *(a2 + 16));
  *a1 = v7 + *(a2 + 24) - *(a2 + 16);
  return result;
}

uint64_t awd::tlv::abm::parseField(uint64_t a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  a3[2] = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  a3[3] = *(a1 + 12);
  return a1 + 16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  a3[2] = *(a1 + 8);
  return a1 + 12;
}

_DWORD *awd::tlv::abm::writeField(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1 + 4;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1 + 3;
}

uint64_t awd::tlv::abm::getFieldSize()
{
  return 8;
}

{
  return 16;
}

{
  return 12;
}

{
  return 13;
}

{
  return 6;
}

{
  return 9;
}

{
  return 2;
}

{
  return 22;
}

{
  return 18;
}

{
  return 28;
}

{
  return 24;
}

{
  return 24;
}

{
  return 20;
}

{
  return 9;
}

{
  return 9;
}

{
  return 5;
}

uint64_t tlv::parseV<awd::tlv::abm::DeleteConfig>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 4);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 4);
  v6 = *(v3 + 1);
  *a1 = (v3 + 8);
  return (v6 << 32) | v5;
}

uint64_t sub_296FB475C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<awd::tlv::abm::DeleteConfig>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

void *tlv::parseV<awd::tlv::abm::RequestParams>@<X0>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  v5 = (a3 + 8);
  *a3 = 0xAAAAAAAAAAAA0000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v6 = *a1;
  v7 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v7, 1);
  *a3 = *v6;
  tlv::throwIfNotEnoughBytes((v6 + 1), v7, 1);
  *(a3 + 1) = *(v6 + 1);
  tlv::throwIfNotEnoughBytes((v6 + 2), v7, 2);
  v8 = *(v6 + 1);
  v6 = (v6 + 4);
  tlv::throwIfNotEnoughBytes(v6, v7, v8);
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v5, v6, v6 + v8, v8);
  *a1 = (v6 + v8);
  return result;
}

void sub_296FB4980(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB496CLL);
}

void sub_296FB4990(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<awd::tlv::abm::RequestParams>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *v4 = *a2;
  *(v4 + 1) = *(a2 + 1);
  v5 = *(a2 + 8);
  v6 = (*(a2 + 16) - v5);
  *(v4 + 2) = *(a2 + 16) - v5;
  v7 = v4 + 4;
  result = memcpy((v4 + 4), *(a2 + 8), *(a2 + 16) - *(a2 + 8));
  *a1 = v7 + *(a2 + 16) - *(a2 + 8);
  return result;
}

unint64_t tlv::parseV<awd::tlv::abm::MetricsExt>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 4);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 4);
  v6 = *(v3 + 1);
  tlv::throwIfNotEnoughBytes((v3 + 8), v4, 4);
  v7 = *(v3 + 2);
  tlv::throwIfNotEnoughBytes((v3 + 12), v4, 4);
  v8 = v7 | (*(v3 + 3) << 32);
  *a1 = (v3 + 16);
  return v5 | (v6 << 32);
}

void sub_296FB4BA8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB4B88);
}

_DWORD **tlv::writeV<awd::tlv::abm::MetricsExt>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  v2[3] = a2[3];
  *result = v2 + 4;
  return result;
}

unint64_t tlv::parseV<awd::tlv::abm::Metrics>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 4);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 4);
  v6 = *(v3 + 1);
  tlv::throwIfNotEnoughBytes((v3 + 8), v4, 4);
  v7 = *(v3 + 2);
  *a1 = (v3 + 12);
  return v5 | (v6 << 32);
}

void sub_296FB4D1C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB4D00);
}

_DWORD **tlv::writeV<awd::tlv::abm::Metrics>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  *result = v2 + 3;
  return result;
}

uint64_t awd::tlv::abm::parseField(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 1);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 5), a2, 8);
  *(a3 + 8) = *(a1 + 5);
  return a1 + 13;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 1);
  *(a3 + 4) = *(a1 + 4) != 0;
  tlv::throwIfNotEnoughBytes((a1 + 5), a2, 1);
  *(a3 + 5) = *(a1 + 5) != 0;
  return a1 + 6;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 8);
  *(a3 + 8) = *(a1 + 1);
  return a1 + 9;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  *(a3 + 8) = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  *(a3 + 12) = *(a1 + 12);
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 4);
  *(a3 + 16) = *(a1 + 16);
  tlv::throwIfNotEnoughBytes((a1 + 20), a2, 2);
  *(a3 + 20) = *(a1 + 20);
  return a1 + 22;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  *(a3 + 8) = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  *(a3 + 12) = *(a1 + 12);
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 2);
  *(a3 + 16) = *(a1 + 16);
  return a1 + 18;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  *(a3 + 8) = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  *(a3 + 12) = *(a1 + 12);
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 4);
  *(a3 + 16) = *(a1 + 16);
  tlv::throwIfNotEnoughBytes((a1 + 20), a2, 8);
  *(a3 + 24) = *(a1 + 20);
  return a1 + 28;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  *(a3 + 8) = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  *(a3 + 12) = *(a1 + 12);
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 8);
  *(a3 + 16) = *(a1 + 16);
  return a1 + 24;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  *(a3 + 8) = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  *(a3 + 12) = *(a1 + 12);
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 4);
  *(a3 + 16) = *(a1 + 16);
  tlv::throwIfNotEnoughBytes((a1 + 20), a2, 1);
  *(a3 + 20) = *(a1 + 20);
  tlv::throwIfNotEnoughBytes((a1 + 21), a2, 1);
  *(a3 + 21) = *(a1 + 21);
  tlv::throwIfNotEnoughBytes((a1 + 22), a2, 1);
  *(a3 + 22) = *(a1 + 22);
  tlv::throwIfNotEnoughBytes((a1 + 23), a2, 1);
  *(a3 + 23) = *(a1 + 23);
  return a1 + 24;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  *(a3 + 8) = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  *(a3 + 12) = *(a1 + 12);
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 1);
  *(a3 + 16) = *(a1 + 16);
  tlv::throwIfNotEnoughBytes((a1 + 17), a2, 1);
  *(a3 + 17) = *(a1 + 17);
  tlv::throwIfNotEnoughBytes((a1 + 18), a2, 1);
  *(a3 + 18) = *(a1 + 18);
  tlv::throwIfNotEnoughBytes((a1 + 19), a2, 1);
  *(a3 + 19) = *(a1 + 19);
  return a1 + 20;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 1);
  *(a3 + 8) = *(a1 + 8);
  return a1 + 9;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 1);
  *(a3 + 8) = *(a1 + 8);
  return a1 + 9;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 1);
  *(a3 + 4) = *(a1 + 4);
  return a1 + 5;
}

unint64_t tlv::parseV<awd::tlv::abm::MetricIndicationExt>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 4);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 1);
  v6 = *(v3 + 4);
  tlv::throwIfNotEnoughBytes((v3 + 5), v4, 8);
  v7 = *(v3 + 5);
  *a1 = (v3 + 13);
  return v5 | (v6 << 32) | 0xAAAAAA0000000000;
}

void sub_296FB4E98(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB4E70);
}

uint64_t *tlv::writeV<awd::tlv::abm::MetricIndicationExt>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 5) = *(a2 + 8);
  *result = v2 + 13;
  return result;
}

unint64_t tlv::parseV<awd::tlv::abm::PIILocationExt>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 4);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 1);
  v6 = *(v3 + 4) != 0;
  tlv::throwIfNotEnoughBytes((v3 + 5), v4, 1);
  v7 = *(v3 + 5);
  *a1 = (v3 + 6);
  v8 = v7 == 0;
  v9 = 0xAAAA010000000000;
  if (v8)
  {
    v9 = 0xAAAA000000000000;
  }

  return v9 | (v6 << 32) | v5;
}

void sub_296FB5038(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB5018);
}

uint64_t *tlv::writeV<awd::tlv::abm::PIILocationExt>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 5) = *(a2 + 5);
  *result = v2 + 6;
  return result;
}

unint64_t tlv::parseV<awd::tlv::abm::MetricIndication>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 1);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 1), v4, 8);
  v6 = *(v3 + 1);
  *a1 = (v3 + 9);
  return v5 | 0xAAAAAAAAAAAAAA00;
}

void sub_296FB516C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB514CLL);
}

uint64_t *tlv::writeV<awd::tlv::abm::MetricIndication>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 1) = *(a2 + 8);
  *result = v2 + 9;
  return result;
}

uint64_t awd::tlv::abm::parseField(uint64_t a1, const unsigned __int8 *a2, BOOL *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 1);
  a3[1] = *(a1 + 1) != 0;
  return a1 + 2;
}

_BYTE *awd::tlv::abm::writeField(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

uint64_t tlv::parseV<awd::tlv::abm::PIILocation>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 1);
  v5 = *v3 != 0;
  tlv::throwIfNotEnoughBytes((v3 + 1), v4, 1);
  v6 = *(v3 + 1) != 0;
  *a1 = (v3 + 2);
  return v5 | (v6 << 8);
}

uint64_t sub_296FB52AC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_BYTE **tlv::writeV<awd::tlv::abm::PIILocation>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

char *tlv::parseV<awd::tlv::abm::MetricDataExt>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  a3[4] = 0;
  a3[5] = 0;
  a3[6] = 0;
  a3[2] = 0;
  a3[3] = 0xAAAAAAAAAAAAAAAALL;
  *a3 = 0;
  a3[1] = 0;
  *(a3 + 12) = 0;
  result = awd::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FB53F0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB53E0);
}

void sub_296FB5400(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<awd::tlv::abm::MetricDataExt>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *v4 = *a2;
  *(v4 + 4) = *(a2 + 4);
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 12) = *(a2 + 12);
  *(v4 + 16) = *(a2 + 16);
  *(v4 + 20) = *(a2 + 20);
  *(v4 + 24) = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = (*(a2 + 40) - v5);
  *(v4 + 26) = *(a2 + 40) - v5;
  v7 = v4 + 28;
  result = memcpy((v4 + 28), *(a2 + 32), *(a2 + 40) - *(a2 + 32));
  *a1 = v7 + *(a2 + 40) - *(a2 + 32);
  return result;
}

char *tlv::parseV<awd::tlv::abm::MetricData>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  a3[1] = 0;
  a3[2] = 0xAAAAAAAAAAAAAAAALL;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  result = awd::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FB5694(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB5684);
}

void sub_296FB56A4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<awd::tlv::abm::MetricData>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *v4 = *a2;
  *(v4 + 4) = *(a2 + 4);
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 12) = *(a2 + 12);
  *(v4 + 16) = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = (*(a2 + 32) - v5);
  *(v4 + 18) = *(a2 + 32) - v5;
  v7 = v4 + 20;
  result = memcpy((v4 + 20), *(a2 + 24), *(a2 + 32) - *(a2 + 24));
  *a1 = v7 + *(a2 + 32) - *(a2 + 24);
  return result;
}

uint64_t *tlv::writeV<awd::tlv::abm::MetricDataEndExt>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  *(v2 + 12) = *(a2 + 12);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 20) = *(a2 + 20);
  *result = v2 + 22;
  return result;
}

uint64_t tlv::parseV<awd::tlv::abm::MetricDataEnd>@<X0>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = -1431655766;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 4);
  *a3 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 4), v6, 4);
  *(a3 + 4) = *(v5 + 1);
  tlv::throwIfNotEnoughBytes((v5 + 8), v6, 4);
  *(a3 + 8) = *(v5 + 2);
  tlv::throwIfNotEnoughBytes((v5 + 12), v6, 4);
  *(a3 + 12) = *(v5 + 3);
  result = tlv::throwIfNotEnoughBytes((v5 + 16), v6, 2);
  *(a3 + 16) = *(v5 + 8);
  *a1 = (v5 + 18);
  return result;
}

void sub_296FB5A44(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t *tlv::writeV<awd::tlv::abm::MetricDataEnd>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  *(v2 + 12) = *(a2 + 12);
  *(v2 + 16) = *(a2 + 16);
  *result = v2 + 18;
  return result;
}

uint64_t *tlv::writeV<awd::tlv::abm::SubmitTriggerExt>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  *(v2 + 12) = *(a2 + 12);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 20) = *(a2 + 24);
  *result = v2 + 28;
  return result;
}

uint64_t tlv::parseV<awd::tlv::abm::SubmitTrigger>@<X0>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 4);
  *a3 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 4), v6, 4);
  *(a3 + 4) = *(v5 + 1);
  tlv::throwIfNotEnoughBytes((v5 + 8), v6, 4);
  *(a3 + 8) = *(v5 + 2);
  tlv::throwIfNotEnoughBytes((v5 + 12), v6, 4);
  *(a3 + 12) = *(v5 + 3);
  result = tlv::throwIfNotEnoughBytes((v5 + 16), v6, 8);
  *(a3 + 16) = *(v5 + 2);
  *a1 = (v5 + 24);
  return result;
}

void sub_296FB5D88(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t *tlv::writeV<awd::tlv::abm::SubmitTrigger>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  *(v2 + 12) = *(a2 + 12);
  *(v2 + 16) = *(a2 + 16);
  *result = v2 + 24;
  return result;
}

uint64_t tlv::parseV<awd::tlv::abm::PIILocationUsedExt>@<X0>(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = awd::tlv::abm::parseField(*a1, (*a1 + a2), a3);
  *a1 = result;
  return result;
}

void sub_296FB5F88(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t *tlv::writeV<awd::tlv::abm::PIILocationUsedExt>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  *(v2 + 12) = *(a2 + 12);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 20) = *(a2 + 20);
  *(v2 + 21) = *(a2 + 21);
  *(v2 + 22) = *(a2 + 22);
  *(v2 + 23) = *(a2 + 23);
  *result = v2 + 24;
  return result;
}

uint64_t tlv::parseV<awd::tlv::abm::PIILocationUsed>@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  result = awd::tlv::abm::parseField(*a1, (*a1 + a2), a3);
  *a1 = result;
  return result;
}

void sub_296FB6184(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t *tlv::writeV<awd::tlv::abm::PIILocationUsed>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  *(v2 + 12) = *(a2 + 12);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 17) = *(a2 + 17);
  *(v2 + 18) = *(a2 + 18);
  *(v2 + 19) = *(a2 + 19);
  *result = v2 + 20;
  return result;
}

unint64_t tlv::parseV<awd::tlv::abm::AddConfigResult>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 4);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 4);
  v6 = *(v3 + 1);
  tlv::throwIfNotEnoughBytes((v3 + 8), v4, 1);
  v7 = *(v3 + 8) | 0xAAAAAA00;
  *a1 = (v3 + 9);
  return v5 | (v6 << 32);
}

void sub_296FB633C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB631CLL);
}

uint64_t *tlv::writeV<awd::tlv::abm::AddConfigResult>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  *result = v2 + 9;
  return result;
}

unint64_t tlv::parseV<awd::tlv::abm::DeleteConfigResult>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 4);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 4);
  v6 = *(v3 + 1);
  tlv::throwIfNotEnoughBytes((v3 + 8), v4, 1);
  v7 = *(v3 + 8) | 0xAAAAAA00;
  *a1 = (v3 + 9);
  return v5 | (v6 << 32);
}

void sub_296FB64B8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB6498);
}

uint64_t *tlv::writeV<awd::tlv::abm::DeleteConfigResult>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  *result = v2 + 9;
  return result;
}

unint64_t tlv::parseV<awd::tlv::abm::ConfigurationSuccess>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 4);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 1);
  v6 = *(v3 + 4);
  *a1 = (v3 + 5);
  return (v6 << 32) | 0xAAAAAA0000000000 | v5;
}

void sub_296FB65F4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB65D8);
}

uint64_t *tlv::writeV<awd::tlv::abm::ConfigurationSuccess>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *result = v2 + 5;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::SvcType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB66B4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::SvcType>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::LimitTimeout>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB6774(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::LimitTimeout>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

const unsigned __int8 *bsp::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, uint64_t a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  v7 = *a1;
  v6 = (a1 + 4);
  *a3 = v7;
  tlv::throwIfNotAligned(v6, a2, 4);
  v8 = *(a3 + 8);
  v9 = (a2 - v6) >> 2;
  v10 = (*(a3 + 16) - v8) >> 2;
  if (v9 <= v10)
  {
    if (v9 < v10)
    {
      *(a3 + 16) = &v8[4 * v9];
    }
  }

  else
  {
    std::vector<int>::__append((a3 + 8), v9 - v10);
    v8 = *(a3 + 8);
  }

  memcpy(v8, v6, a2 - v6);
  return a2;
}

_DWORD *bsp::tlv::abm::writeField(_DWORD *a1, uint64_t a2)
{
  *a1 = *a2;
  result = a1 + 1;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 != v4)
  {
    v6 = v4 - v5 - 4;
    if (v6 < 0x1C)
    {
      goto LABEL_10;
    }

    if ((a1 - v5 + 4) < 0x20)
    {
      goto LABEL_10;
    }

    v7 = (v6 >> 2) + 1;
    v8 = 4 * (v7 & 0x7FFFFFFFFFFFFFF8);
    result = (result + v8);
    v9 = &v5[v8];
    v10 = (v5 + 16);
    v11 = a1 + 5;
    v12 = v7 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v13 = *v10;
      *(v11 - 1) = *(v10 - 1);
      *v11 = v13;
      v10 += 2;
      v11 += 2;
      v12 -= 8;
    }

    while (v12);
    v5 = v9;
    if (v7 != (v7 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_10:
      do
      {
        v14 = *v5;
        v5 += 4;
        *result++ = v14;
      }

      while (v5 != v4);
    }
  }

  return result;
}

void *tlv::parseV<bsp::tlv::abm::TxPwrConfigTlv>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  a3[1] = 0;
  v5 = (a3 + 1);
  *a3 = 0xAAAAAAAA00000000;
  a3[2] = 0;
  a3[3] = 0;
  v6 = *a1;
  v7 = a2;
  v8 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v8, 4);
  v10 = *v6;
  v9 = (v6 + 4);
  *a3 = v10;
  tlv::throwIfNotAligned(v9, v8, 4);
  v11 = v7 - 4;
  if (v11 >= 4)
  {
    std::vector<int>::__append(v5, v11 >> 2);
    begin = v5->__begin_;
  }

  else
  {
    begin = 0;
  }

  result = memcpy(begin, v9, v11);
  *a1 = v8;
  return result;
}

void sub_296FB69B0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB699CLL);
}

void sub_296FB69C0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tlv::size<bsp::tlv::abm::TxPwrConfigTlv>(uint64_t a1)
{
  if (*(a1 + 16) == *(a1 + 8))
  {
    return 7;
  }

  else
  {
    return *(a1 + 16) - *(a1 + 8) + 7;
  }
}

void *tlv::writeV<bsp::tlv::abm::TxPwrConfigTlv>(void *result, uint64_t a2)
{
  v2 = *result;
  v3 = *result;
  *v3 = *a2;
  v4 = v3 + 1;
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v6 != v5)
  {
    v7 = v5 - v6 - 4;
    if (v7 < 0x1C)
    {
      goto LABEL_11;
    }

    if ((v2 - v6 + 4) < 0x20)
    {
      goto LABEL_11;
    }

    v8 = (v7 >> 2) + 1;
    v9 = 4 * (v8 & 0x7FFFFFFFFFFFFFF8);
    v4 = (v4 + v9);
    v10 = &v6[v9];
    v11 = (v6 + 16);
    v12 = v2 + 5;
    v13 = v8 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v14 = *v11;
      *(v12 - 1) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 2;
      v13 -= 8;
    }

    while (v13);
    v6 = v10;
    if (v8 != (v8 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_11:
      do
      {
        v15 = *v6;
        v6 += 4;
        *v4++ = v15;
      }

      while (v6 != v5);
    }
  }

  *result = v4;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::TxAntennaConfigInfo>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB6B18(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::TxAntennaConfigInfo>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::ARTDConfigInfo>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB6BD8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::ARTDConfigInfo>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::AccessoryStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB6C98(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::AccessoryStatus>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::AccessoryType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FB6D58(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<bsp::tlv::abm::AccessoryType>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::AccessoryStatusARTD>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB6E18(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::AccessoryStatusARTD>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::AccessoryTypeARTD>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FB6ED8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<bsp::tlv::abm::AccessoryTypeARTD>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

BOOL tlv::parseV<bsp::tlv::abm::WiredPortStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB6FA8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::WiredPortStatus>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::LimitEnable>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB7068(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::LimitEnable>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::NotificationEnable>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB7128(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::NotificationEnable>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::ProxBackoffLevel>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB71E8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::ProxBackoffLevel>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::PhoneBackoffLevel>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB72A8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::PhoneBackoffLevel>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::AntennaFreeSpaceConfigLevel>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB7368(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::AntennaFreeSpaceConfigLevel>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::TxPwrStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB7428(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::TxPwrStatus>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::TechType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB74E8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::TechType>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::CLTMPercentile>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB75A8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::CLTMPercentile>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::CLTMDutyCycle>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB7668(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::CLTMDutyCycle>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::LimitTimeoutPhone>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB7728(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::LimitTimeoutPhone>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::SpeakerState>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB77E8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::SpeakerState>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::HandState>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB78A8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::HandState>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::ConnectionState>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB7968(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::ConnectionState>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::ConnectionTrigger>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB7A28(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::ConnectionTrigger>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::TransmitEnable>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB7AE8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::TransmitEnable>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::PowerSourceState>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FB7BA8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<bsp::tlv::abm::PowerSourceState>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::PPMEnable>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB7C68(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::PPMEnable>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t bsp::tlv::abm::parseField(bsp::tlv::abm *this, const unsigned __int8 *a2, unsigned __int8 *a3, Duration *a4)
{
  tlv::throwIfNotEnoughBytes(this, a2, 2);
  *a3 = *this;
  return this + 2;
}

uint64_t tlv::parseV<bsp::tlv::abm::Duration>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB7D28(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::Duration>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::TxHistogramDuration>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FB7DE8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<bsp::tlv::abm::TxHistogramDuration>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::VoiceType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB7EA8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::VoiceType>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::TxPowerMode>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB7F68(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::TxPowerMode>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

tlv *bsp::tlv::abm::parseField(tlv *this, unsigned __int8 *a2, uint64_t a3)
{
  for (i = this; i < a2; *(v6 - 1) = v7)
  {
    v9 = *(a3 + 8);
    v8 = *(a3 + 16);
    if (v9 < v8)
    {
      *v9 = 0;
      v6 = v9 + 1;
    }

    else
    {
      v10 = *a3;
      v11 = v9 - *a3;
      v12 = (v11 >> 2) + 1;
      if (v12 >> 62)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v13 = v8 - v10;
      if (v13 >> 1 > v12)
      {
        v12 = v13 >> 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v14 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 >> 62)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v15 = operator new(4 * v14);
      }

      else
      {
        v15 = 0;
      }

      v16 = &v15[4 * (v11 >> 2)];
      *v16 = 0;
      v6 = v16 + 4;
      memcpy(v15, v10, v11);
      *a3 = v15;
      *(a3 + 8) = v6;
      *(a3 + 16) = &v15[4 * v14];
      if (v10)
      {
        operator delete(v10);
      }
    }

    *(a3 + 8) = v6;
    tlv::throwIfNotEnoughBytes(i, a2, 4);
    v7 = *i;
    i = (i + 4);
  }

  return i;
}

_DWORD *bsp::tlv::abm::writeField(_DWORD *result, char **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 != v2)
  {
    v4 = v2 - v3 - 4;
    if (v4 < 0x1C)
    {
      v8 = *a2;
    }

    else if ((result - v3) < 0x20)
    {
      v8 = *a2;
    }

    else
    {
      v5 = (v4 >> 2) + 1;
      v6 = 4 * (v5 & 0x7FFFFFFFFFFFFFF8);
      v7 = result;
      result = (result + v6);
      v8 = &v3[v6];
      v9 = (v3 + 16);
      v10 = v7 + 4;
      v11 = v5 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v12 = *v9;
        *(v10 - 1) = *(v9 - 1);
        *v10 = v12;
        v9 += 2;
        v10 += 2;
        v11 -= 8;
      }

      while (v11);
      if (v5 == (v5 & 0x7FFFFFFFFFFFFFF8))
      {
        return result;
      }
    }

    do
    {
      v13 = *v8;
      v8 += 4;
      *result++ = v13;
    }

    while (v8 != v2);
  }

  return result;
}

tlv *tlv::parseV<bsp::tlv::abm::TxHistogram>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = bsp::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FB81A4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB8198);
}

void sub_296FB81B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tlv::size<bsp::tlv::abm::TxHistogram>(void *a1)
{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 3;
  }

  else
  {
    return (v1 - *a1) | 3;
  }
}

void *tlv::writeV<bsp::tlv::abm::TxHistogram>(void *result, char **a2)
{
  v2 = *result;
  v3 = *result;
  v5 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = v4 - v5 - 4;
    if (v6 < 0x1C)
    {
      goto LABEL_11;
    }

    if ((v2 - v5) < 0x20)
    {
      goto LABEL_11;
    }

    v7 = (v6 >> 2) + 1;
    v8 = v7 & 0x7FFFFFFFFFFFFFF8;
    v3 = &v2[v8];
    v9 = &v5[v8 * 4];
    v10 = (v5 + 16);
    v11 = v2 + 4;
    v12 = v7 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v13 = *v10;
      *(v11 - 1) = *(v10 - 1);
      *v11 = v13;
      v10 += 2;
      v11 += 2;
      v12 -= 8;
    }

    while (v12);
    v5 = v9;
    if (v7 != (v7 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_11:
      do
      {
        v14 = *v5;
        v5 += 4;
        *v3++ = v14;
      }

      while (v5 != v4);
    }
  }

  *result = v3;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::BottomEnclosure>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB8300(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::BottomEnclosure>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::TopEnclosure>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB83C0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::TopEnclosure>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::FCMType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB8480(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::FCMType>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::BCMType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB8540(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::BCMType>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::WorkoutType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB8600(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::WorkoutType>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::WorkoutState>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB86C0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::WorkoutState>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::WorkoutLocation>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB8780(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::WorkoutLocation>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::SwimLocation>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB8840(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::SwimLocation>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::SensorID>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FB8900(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<bsp::tlv::abm::SensorID>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::BBSensorID>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FB89C0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<bsp::tlv::abm::BBSensorID>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::DIAGPresetID>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB8A80(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::DIAGPresetID>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::DIAGActiveIface>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB8B40(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::DIAGActiveIface>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::DIAGConfig>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB8C00(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::DIAGConfig>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::DIAGBuffering>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB8CC0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::DIAGBuffering>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::DIAGWMHigh>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB8D80(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::DIAGWMHigh>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::DIAGWMLow>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FB8E40(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::DIAGWMLow>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::ThermalSensorData>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 1);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 1), v4, 4);
  v6 = *(v3 + 1);
  *a1 = (v3 + 5);
  return (v6 << 32) | 0xAAAAAA00 | v5;
}

void sub_296FB8F74(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB8F58);
}

uint64_t *tlv::writeV<bsp::tlv::abm::ThermalSensorData>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 1) = *(a2 + 4);
  *result = v2 + 5;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::ThermalSensorDataFloatType>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 1);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 1), v4, 4);
  v6 = *(v3 + 1);
  *a1 = (v3 + 5);
  return (v6 << 32) | 0xAAAAAA00 | v5;
}

void sub_296FB90A8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB908CLL);
}

float tlv::writeV<bsp::tlv::abm::ThermalSensorDataFloatType>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  result = *(a2 + 4);
  *(v2 + 1) = result;
  *a1 = v2 + 5;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::PowerBudget>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 1);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 1), v4, 4);
  v6 = *(v3 + 1);
  *a1 = (v3 + 5);
  return (v6 << 32) | 0xAAAAAA00 | v5;
}

void sub_296FB91DC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB91C0);
}

uint64_t *tlv::writeV<bsp::tlv::abm::PowerBudget>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 1) = *(a2 + 4);
  *result = v2 + 5;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::Mitigation>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 1);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 1), v4, 1);
  v6 = *(v3 + 1);
  *a1 = (v3 + 2);
  return v5 | (v6 << 8);
}

uint64_t sub_296FB92F8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_BYTE **tlv::writeV<bsp::tlv::abm::Mitigation>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::NumberOfSensors>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB93CC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::NumberOfSensors>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

void *tlv::parseV<bsp::tlv::abm::SensorIDs>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296FB94DC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB94CCLL);
}

void sub_296FB94EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<bsp::tlv::abm::SensorIDs>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::ReportFrequency>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FB95F4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<bsp::tlv::abm::ReportFrequency>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *bsp::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, uint64_t *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = (v10 - *a3) >> 3;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = v9 + 8 * v6;
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<bsp::tlv::abm::ThermalSensorData>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  while (v9 != v10)
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 1);
    *v9 = *v7;
    tlv::throwIfNotEnoughBytes((v7 + 1), a2, 4);
    *(v9 + 4) = *(v7 + 1);
    v7 += 5;
    v9 += 8;
  }

  return v7;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = (v10 - *a3) >> 3;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = v9 + 8 * v6;
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<bsp::tlv::abm::ThermalSensorData>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  while (v9 != v10)
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 1);
    *v9 = *v7;
    tlv::throwIfNotEnoughBytes((v7 + 1), a2, 4);
    *(v9 + 4) = *(v7 + 1);
    v7 += 5;
    v9 += 8;
  }

  return v7;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = (v10 - *a3) >> 3;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = v9 + 8 * v6;
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<coex::tlv::abm::BandInfo>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  while (v9 != v10)
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 1);
    *v9 = *v7;
    tlv::throwIfNotEnoughBytes((v7 + 1), a2, 4);
    *(v9 + 4) = *(v7 + 1);
    v7 += 5;
    v9 += 8;
  }

  return v7;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = (v10 - *a3) >> 3;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = v9 + 8 * v6;
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<coex::tlv::abm::BandInfo>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  while (v9 != v10)
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 1);
    *v9 = *v7;
    tlv::throwIfNotEnoughBytes((v7 + 1), a2, 4);
    *(v9 + 4) = *(v7 + 1);
    v7 += 5;
    v9 += 8;
  }

  return v7;
}

void tlv::parseV<bsp::tlv::abm::ThermalSensors>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  v9 = *v5;
  v8 = v5 + 1;
  v7 = v9;
  if (v9)
  {
    std::vector<bsp::tlv::abm::ThermalSensorData>::__append(a3, v7);
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v12 = v8;
        tlv::throwIfNotEnoughBytes(v8, v6, 1);
        *v10 = *v8;
        tlv::throwIfNotEnoughBytes((v8 + 1), v6, 4);
        *(v10 + 4) = *(v8 + 1);
        v10 += 8;
        v8 += 5;
      }

      while (v10 != v11);
      v8 = v12 + 5;
    }
  }

  *a1 = v8;
}

void sub_296FB9820(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB9808);
}

void sub_296FB9834(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<bsp::tlv::abm::ThermalSensors>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return 5 * ((v1 - *a1 - 8) >> 3) + 9;
  }
}

_BYTE **tlv::writeV<bsp::tlv::abm::ThermalSensors>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = (a2[2] - *a2) >> 3;
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      v3 += 5;
      v4 += 8;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

void tlv::parseV<bsp::tlv::abm::ThermalSensorsFloatType>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  v9 = *v5;
  v8 = v5 + 1;
  v7 = v9;
  if (v9)
  {
    std::vector<bsp::tlv::abm::ThermalSensorData>::__append(a3, v7);
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v12 = v8;
        tlv::throwIfNotEnoughBytes(v8, v6, 1);
        *v10 = *v8;
        tlv::throwIfNotEnoughBytes((v8 + 1), v6, 4);
        *(v10 + 4) = *(v8 + 1);
        v10 += 8;
        v8 += 5;
      }

      while (v10 != v11);
      v8 = v12 + 5;
    }
  }

  *a1 = v8;
}

void sub_296FB9ABC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB9AA4);
}

void sub_296FB9AD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<bsp::tlv::abm::ThermalSensorsFloatType>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return 5 * ((v1 - *a1 - 8) >> 3) + 9;
  }
}

_BYTE **tlv::writeV<bsp::tlv::abm::ThermalSensorsFloatType>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = (a2[2] - *a2) >> 3;
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      v3 += 5;
      v4 += 8;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::NumberOfBudgets>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB9BEC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::NumberOfBudgets>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

void tlv::parseV<bsp::tlv::abm::PowerBudgets>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  v9 = *v5;
  v8 = v5 + 1;
  v7 = v9;
  if (v9)
  {
    std::vector<coex::tlv::abm::BandInfo>::__append(a3, v7);
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v12 = v8;
        tlv::throwIfNotEnoughBytes(v8, v6, 1);
        *v10 = *v8;
        tlv::throwIfNotEnoughBytes((v8 + 1), v6, 4);
        *(v10 + 4) = *(v8 + 1);
        v10 += 8;
        v8 += 5;
      }

      while (v10 != v11);
      v8 = v12 + 5;
    }
  }

  *a1 = v8;
}

void sub_296FB9E18(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FB9E00);
}

void sub_296FB9E2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<bsp::tlv::abm::PowerBudgets>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return 5 * ((v1 - *a1 - 8) >> 3) + 9;
  }
}

_BYTE **tlv::writeV<bsp::tlv::abm::PowerBudgets>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = (a2[2] - *a2) >> 3;
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      v3 += 5;
      v4 += 8;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::NumberOfCurrentBudgets>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FB9F48(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::NumberOfCurrentBudgets>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

void tlv::parseV<bsp::tlv::abm::CurrentPowerBudgets>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  v9 = *v5;
  v8 = v5 + 1;
  v7 = v9;
  if (v9)
  {
    std::vector<coex::tlv::abm::BandInfo>::__append(a3, v7);
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v12 = v8;
        tlv::throwIfNotEnoughBytes(v8, v6, 1);
        *v10 = *v8;
        tlv::throwIfNotEnoughBytes((v8 + 1), v6, 4);
        *(v10 + 4) = *(v8 + 1);
        v10 += 8;
        v8 += 5;
      }

      while (v10 != v11);
      v8 = v12 + 5;
    }
  }

  *a1 = v8;
}

void sub_296FBA174(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FBA15CLL);
}

void sub_296FBA188(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<bsp::tlv::abm::CurrentPowerBudgets>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return 5 * ((v1 - *a1 - 8) >> 3) + 9;
  }
}

_BYTE **tlv::writeV<bsp::tlv::abm::CurrentPowerBudgets>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = (a2[2] - *a2) >> 3;
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      v3 += 5;
      v4 += 8;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::NumberOfMitigation>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FBA2A4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::NumberOfMitigation>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

unint64_t bsp::tlv::abm::writeField(_BYTE *a1, _DWORD *a2)
{
  *a1 = (a2[2] - *a2) >> 1;
  result = (a1 + 1);
  v5 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    v6 = v4 - v5 - 2;
    if (v6 < 0x3E)
    {
      goto LABEL_11;
    }

    if (result < &v5[(v6 & 0xFFFFFFFFFFFFFFFELL) + 2] && v5 < &a1[(v6 & 0xFFFFFFFFFFFFFFFELL) + 3])
    {
      goto LABEL_11;
    }

    v8 = (v6 >> 1) + 1;
    v9 = 2 * (v8 & 0xFFFFFFFFFFFFFFE0);
    result += v9;
    v10 = &v5[v9];
    v11 = (v5 + 32);
    v12 = a1 + 33;
    v13 = v8 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v15 = *(v11 - 2);
      v14 = *(v11 - 1);
      v17 = *v11;
      v16 = v11[1];
      v11 += 4;
      *(v12 - 2) = v15;
      *(v12 - 1) = v14;
      *v12 = v17;
      v12[1] = v16;
      v12 += 4;
      v13 -= 32;
    }

    while (v13);
    v5 = v10;
    if (v8 != (v8 & 0xFFFFFFFFFFFFFFE0))
    {
LABEL_11:
      v18 = result;
      do
      {
        *v18 = *v5;
        result = (v18 + 2);
        v18[1] = v5[1];
        v5 += 2;
        v18 += 2;
      }

      while (v5 != v4);
    }
  }

  return result;
}

void tlv::parseV<bsp::tlv::abm::MitigationData>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  v9 = *v5;
  v8 = v5 + 1;
  v7 = v9;
  if (v9)
  {
    std::vector<bsp::tlv::abm::Mitigation>::__append(a3, v7);
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v12 = v8;
        tlv::throwIfNotEnoughBytes(v8, v6, 1);
        *v10 = *v8;
        tlv::throwIfNotEnoughBytes((v8 + 1), v6, 1);
        v10[1] = v8[1];
        v10 += 2;
        v8 += 2;
      }

      while (v10 != v11);
      v8 = v12 + 2;
    }
  }

  *a1 = v8;
}

void sub_296FBA53C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FBA524);
}

void sub_296FBA550(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tlv::size<bsp::tlv::abm::MitigationData>(void *a1)
{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 4;
  }

  else
  {
    return ((v1 - *a1) | 1) + 3;
  }
}

unint64_t *tlv::writeV<bsp::tlv::abm::MitigationData>(unint64_t *result, _DWORD *a2)
{
  v2 = *result;
  v3 = *result;
  *v3 = (a2[2] - *a2) >> 1;
  v4 = (v3 + 1);
  v6 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    v7 = v5 - v6 - 2;
    if (v7 < 0x3E)
    {
      goto LABEL_11;
    }

    if (v4 < &v6[(v7 & 0xFFFFFFFFFFFFFFFELL) + 2] && v6 < &v2[(v7 & 0xFFFFFFFFFFFFFFFELL) + 3])
    {
      goto LABEL_11;
    }

    v9 = (v7 >> 1) + 1;
    v10 = 2 * (v9 & 0xFFFFFFFFFFFFFFE0);
    v4 += v10;
    v11 = &v6[v10];
    v12 = (v6 + 32);
    v13 = v2 + 33;
    v14 = v9 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v16 = *(v12 - 2);
      v15 = *(v12 - 1);
      v18 = *v12;
      v17 = v12[1];
      v12 += 4;
      *(v13 - 2) = v16;
      *(v13 - 1) = v15;
      *v13 = v18;
      v13[1] = v17;
      v13 += 4;
      v14 -= 32;
    }

    while (v14);
    v6 = v11;
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFE0))
    {
LABEL_11:
      v19 = v4;
      do
      {
        *v19 = *v6;
        v4 = (v19 + 2);
        v19[1] = v6[1];
        v6 += 2;
        v19 += 2;
      }

      while (v6 != v5);
    }
  }

  *result = v4;
  return result;
}

void std::vector<bsp::tlv::abm::ThermalSensorData>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v12 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v12;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      std::vector<bsp::tlv::abm::ThermalSensorData>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v10 = a2;
      v11 = operator new(8 * v9);
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = 8 * a2;
    bzero(&v11[8 * (v6 >> 3)], 8 * a2);
    memcpy(v11, v5, v6);
    *a1 = v11;
    *(a1 + 8) = &v11[8 * (v6 >> 3) + v13];
    *(a1 + 16) = &v11[8 * v9];
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<bsp::tlv::abm::Mitigation>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 1)
  {
    if (a2)
    {
      v12 = 2 * a2;
      bzero(*(a1 + 8), 2 * a2);
      v4 += v12;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 1) + a2;
    if (v7 < 0)
    {
      std::vector<bsp::tlv::abm::ThermalSensorData>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 > v7)
    {
      v7 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 < 0)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v10 = a2;
      v11 = operator new(2 * v9);
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = 2 * a2;
    bzero(&v11[2 * (v6 >> 1)], 2 * a2);
    memcpy(v11, v5, v6);
    *a1 = v11;
    *(a1 + 8) = &v11[2 * (v6 >> 1) + v13];
    *(a1 + 16) = &v11[2 * v9];
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t capabilities::diag::asString()
{
  return MEMORY[0x2A1C6ECA8]();
}

{
  return MEMORY[0x2A1C6ECB0]();
}

uint64_t ctu::OsLogLogger::OsLogLogger()
{
  return MEMORY[0x2A1C6F118]();
}

{
  return MEMORY[0x2A1C6F120]();
}

uint64_t ctu::cf::convert_copy()
{
  return MEMORY[0x2A1C6F218]();
}

{
  return MEMORY[0x2A1C6F220]();
}

uint64_t ctu::cf::assign()
{
  return MEMORY[0x2A1C6F268]();
}

{
  return MEMORY[0x2A1C6F278]();
}

uint64_t ctu::operator<<()
{
  return MEMORY[0x2A1C6F408]();
}

{
  return MEMORY[0x2A1C6F410]();
}

uint64_t qmi::ResponseBase::ResponseBase(qmi::ResponseBase *this, const void *a2)
{
  return MEMORY[0x2A1C6E8B8](this, a2);
}

{
  return MEMORY[0x2A1C6E8C0](this, a2);
}

uint64_t xpc::dyn_cast_or_default()
{
  return MEMORY[0x2A1C6F438]();
}

{
  return MEMORY[0x2A1C6F450]();
}

{
  return MEMORY[0x2A1C6F460]();
}

{
  return MEMORY[0x2A1C6F468]();
}

{
  return MEMORY[0x2A1C6F478]();
}

uint64_t awd::AppContext::operator()()
{
  return MEMORY[0x2A1C6D1B8]();
}

{
  return MEMORY[0x2A1C6D1C0]();
}

{
  return MEMORY[0x2A1C6D1C8]();
}

{
  return MEMORY[0x2A1C6D1D0]();
}

uint64_t qmi::Client::setHandler()
{
  return MEMORY[0x2A1C6C870]();
}

{
  return MEMORY[0x2A1C6C878]();
}

{
  return MEMORY[0x2A1C6C880]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE28]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}