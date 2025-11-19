uint64_t tlv::parseV<coex::tlv::abm::BandInfo>(tlv **a1, int a2)
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

uint64_t sub_296FA1568(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<coex::tlv::abm::BandInfo>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

_DWORD **tlv::writeV<coex::tlv::abm::LTEBandInformation>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  v2[3] = a2[3];
  *result = v2 + 4;
  return result;
}

unint64_t tlv::parseV<coex::tlv::abm::LTE2BandInformation>(tlv **a1, int a2)
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

void sub_296FA1820(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA1800);
}

_DWORD **tlv::writeV<coex::tlv::abm::LTE2BandInformation>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  v2[3] = a2[3];
  *result = v2 + 4;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::LTETDDInformation>@<X0>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
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
  result = tlv::throwIfNotEnoughBytes((v5 + 16), v6, 4);
  *(a3 + 16) = *(v5 + 4);
  *a1 = (v5 + 20);
  return result;
}

void sub_296FA1A00(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

_DWORD **tlv::writeV<coex::tlv::abm::LTETDDInformation>(_DWORD **result, _DWORD *a2)
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

uint64_t tlv::parseV<coex::tlv::abm::LTE2TDDInformation>@<X0>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
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
  result = tlv::throwIfNotEnoughBytes((v5 + 16), v6, 4);
  *(a3 + 16) = *(v5 + 4);
  *a1 = (v5 + 20);
  return result;
}

void sub_296FA1C00(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

_DWORD **tlv::writeV<coex::tlv::abm::LTE2TDDInformation>(_DWORD **result, _DWORD *a2)
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

uint64_t coex::tlv::abm::writeField(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 16);
  *(a1 + 16) = *(a2 + 20);
  *(a1 + 20) = *(a2 + 24);
  *(a1 + 24) = *(a2 + 28);
  *(a1 + 28) = *(a2 + 32);
  *(a1 + 32) = *(a2 + 36);
  return a1 + 33;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 24) = *(a2 + 24);
  return a1 + 26;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  return a1 + 16;
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
  v3 = a1 + 5;
  *(a1 + 4) = *(a2 + 16) - *(a2 + 8);
  memcpy((a1 + 5), *(a2 + 8), *(a2 + 16) - *(a2 + 8));
  return v3 + *(a2 + 16) - *(a2 + 8);
}

uint64_t tlv::parseV<coex::tlv::abm::LTECarrierInformation>@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v4;
  *(a3 + 16) = v4;
  *a3 = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 29) = 0;
  result = coex::tlv::abm::parseField(*a1, (*a1 + a2), a3);
  *a1 = result;
  return result;
}

void sub_296FA1D08(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t *tlv::writeV<coex::tlv::abm::LTECarrierInformation>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 8);
  *(v2 + 12) = *(a2 + 16);
  *(v2 + 16) = *(a2 + 20);
  *(v2 + 20) = *(a2 + 24);
  *(v2 + 24) = *(a2 + 28);
  *(v2 + 28) = *(a2 + 32);
  *(v2 + 32) = *(a2 + 36);
  *result = v2 + 33;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::NGCCarrierInformation>@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = -1431655766;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  result = coex::tlv::abm::parseField(*a1, (*a1 + a2), a3);
  *a1 = result;
  return result;
}

void sub_296FA1F08(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t *tlv::writeV<coex::tlv::abm::NGCCarrierInformation>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  *(v2 + 12) = *(a2 + 12);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 20) = *(a2 + 20);
  *(v2 + 22) = *(a2 + 22);
  *(v2 + 24) = *(a2 + 24);
  *result = v2 + 26;
  return result;
}

uint64_t coex::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, uint64_t *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v7 = a1 + 1;
  v6 = *a1;
  v8 = *a3;
  v9 = a3[1];
  v10 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - *a3) >> 3);
  if (v6 <= v10)
  {
    if (v6 < v10)
    {
      v9 = v8 + 40 * v6;
      a3[1] = v9;
    }

    result = v7;
  }

  else
  {
    std::vector<coex::tlv::abm::LTECarrierInformation>::__append(a3, v6 - v10);
    v8 = *a3;
    v9 = a3[1];
    result = v7;
  }

  while (v8 != v9)
  {
    result = coex::tlv::abm::parseField(result, a2, v8);
    v8 += 40;
  }

  return result;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v7 = a1 + 1;
  v6 = *a1;
  v8 = *a3;
  v9 = a3[1];
  v10 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - *a3) >> 3);
  if (v6 <= v10)
  {
    if (v6 < v10)
    {
      v9 = v8 + 40 * v6;
      a3[1] = v9;
    }

    result = v7;
  }

  else
  {
    std::vector<coex::tlv::abm::LTECarrierInformation>::__append(a3, v6 - v10);
    v8 = *a3;
    v9 = a3[1];
    result = v7;
  }

  while (v8 != v9)
  {
    result = coex::tlv::abm::parseField(result, a2, v8);
    v8 += 40;
  }

  return result;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v7 = a1 + 1;
  v6 = *a1;
  v8 = *a3;
  v9 = a3[1];
  v10 = 0x6DB6DB6DB6DB6DB7 * ((v9 - *a3) >> 2);
  if (v6 <= v10)
  {
    if (v6 < v10)
    {
      v9 = v8 + 28 * v6;
      a3[1] = v9;
    }

    result = v7;
  }

  else
  {
    std::vector<coex::tlv::abm::NGCCarrierInformation>::__append(a3, v6 - v10);
    v8 = *a3;
    v9 = a3[1];
    result = v7;
  }

  while (v8 != v9)
  {
    result = coex::tlv::abm::parseField(result, a2, v8);
    v8 += 28;
  }

  return result;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v7 = a1 + 1;
  v6 = *a1;
  v8 = *a3;
  v9 = a3[1];
  v10 = 0x6DB6DB6DB6DB6DB7 * ((v9 - *a3) >> 2);
  if (v6 <= v10)
  {
    if (v6 < v10)
    {
      v9 = v8 + 28 * v6;
      a3[1] = v9;
    }

    result = v7;
  }

  else
  {
    std::vector<coex::tlv::abm::NGCCarrierInformation>::__append(a3, v6 - v10);
    v8 = *a3;
    v9 = a3[1];
    result = v7;
  }

  while (v8 != v9)
  {
    result = coex::tlv::abm::parseField(result, a2, v8);
    v8 += 28;
  }

  return result;
}

_BYTE *coex::tlv::abm::writeField(_BYTE *a1, _DWORD *a2)
{
  *a1 = -51 * ((a2[2] - *a2) >> 3);
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 4) = *(v3 + 8);
      *(result + 3) = *(v3 + 16);
      *(result + 4) = *(v3 + 20);
      *(result + 5) = *(v3 + 24);
      *(result + 6) = *(v3 + 28);
      *(result + 7) = *(v3 + 32);
      v5 = result + 33;
      result[32] = *(v3 + 36);
      v3 += 40;
      result += 33;
    }

    while (v3 != v4);
    return v5;
  }

  return result;
}

{
  *a1 = -51 * ((a2[2] - *a2) >> 3);
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 4) = *(v3 + 8);
      *(result + 3) = *(v3 + 16);
      *(result + 4) = *(v3 + 20);
      *(result + 5) = *(v3 + 24);
      *(result + 6) = *(v3 + 28);
      *(result + 7) = *(v3 + 32);
      v5 = result + 33;
      result[32] = *(v3 + 36);
      v3 += 40;
      result += 33;
    }

    while (v3 != v4);
    return v5;
  }

  return result;
}

{
  *a1 = -73 * ((a2[2] - *a2) >> 2);
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 2) = *(v3 + 8);
      *(result + 3) = *(v3 + 12);
      *(result + 4) = *(v3 + 16);
      *(result + 10) = *(v3 + 20);
      *(result + 11) = *(v3 + 22);
      *(result + 12) = *(v3 + 24);
      result += 26;
      v3 += 28;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = -73 * ((a2[2] - *a2) >> 2);
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 2) = *(v3 + 8);
      *(result + 3) = *(v3 + 12);
      *(result + 4) = *(v3 + 16);
      *(result + 10) = *(v3 + 20);
      *(result + 11) = *(v3 + 22);
      *(result + 12) = *(v3 + 24);
      result += 26;
      v3 += 28;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = -85 * ((a2[2] - *a2) >> 3);
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 2) = *(v3 + 8);
      *(result + 3) = *(v3 + 12);
      *(result + 2) = *(v3 + 16);
      result += 24;
      v3 += 24;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = a2[2] - *a2;
  result = a1 + 1;
  v5 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    v6 = v4 - v5;
    if ((v4 - v5) < 0x20)
    {
      goto LABEL_10;
    }

    if ((a1 - v5 + 1) < 0x20)
    {
      goto LABEL_10;
    }

    result += v6 & 0xFFFFFFFFFFFFFFE0;
    v7 = &v5[v6 & 0xFFFFFFFFFFFFFFE0];
    v8 = (v5 + 16);
    v9 = a1 + 17;
    v10 = v6 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v11 = *v8;
      *(v9 - 1) = *(v8 - 1);
      *v9 = v11;
      v8 += 2;
      v9 += 2;
      v10 -= 32;
    }

    while (v10);
    v5 = v7;
    if (v6 != (v6 & 0xFFFFFFFFFFFFFFE0))
    {
LABEL_10:
      do
      {
        v12 = *v5++;
        *result++ = v12;
      }

      while (v5 != v4);
    }
  }

  return result;
}

{
  *a1 = -51 * ((a2[2] - *a2) >> 3);
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      while (1)
      {
        *result = *v3;
        *(result + 1) = *(v3 + 4);
        result[8] = *(v3 + 8);
        v5 = result + 10;
        result[9] = (*(v3 + 24) - *(v3 + 16)) >> 5;
        v6 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v6 != v7)
        {
          break;
        }

        result += 10;
        v3 += 40;
        if (v3 == v4)
        {
          return result;
        }
      }

      do
      {
        *v5 = *v6;
        result = v5 + 2;
        v5[1] = (*(v6 + 16) - *(v6 + 8)) >> 2;
        v9 = *(v6 + 8);
        v8 = *(v6 + 16);
        if (v9 != v8)
        {
          v10 = v8 - v9 - 4;
          if (v10 < 0x1C)
          {
            goto LABEL_18;
          }

          if ((v5 - v9 + 2) < 0x20)
          {
            goto LABEL_18;
          }

          v11 = (v10 >> 2) + 1;
          v12 = 4 * (v11 & 0x7FFFFFFFFFFFFFF8);
          result += v12;
          v13 = &v9[v12];
          v14 = (v9 + 16);
          v15 = v5 + 18;
          v16 = v11 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v17 = *v14;
            *(v15 - 1) = *(v14 - 1);
            *v15 = v17;
            v14 += 2;
            v15 += 2;
            v16 -= 8;
          }

          while (v16);
          v9 = v13;
          if (v11 != (v11 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_18:
            do
            {
              v18 = *v9;
              v9 += 4;
              *result = v18;
              result += 4;
            }

            while (v9 != v8);
          }
        }

        v6 += 32;
        v5 = result;
      }

      while (v6 != v7);
      v3 += 40;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = -51 * ((a2[2] - *a2) >> 3);
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      while (1)
      {
        *result = *v3;
        *(result + 1) = *(v3 + 4);
        result[8] = *(v3 + 8);
        v5 = result + 10;
        result[9] = (*(v3 + 24) - *(v3 + 16)) >> 5;
        v6 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v6 != v7)
        {
          break;
        }

        result += 10;
        v3 += 40;
        if (v3 == v4)
        {
          return result;
        }
      }

      do
      {
        *v5 = *v6;
        result = v5 + 2;
        v5[1] = (*(v6 + 16) - *(v6 + 8)) >> 2;
        v9 = *(v6 + 8);
        v8 = *(v6 + 16);
        if (v9 != v8)
        {
          v10 = v8 - v9 - 4;
          if (v10 < 0x1C)
          {
            goto LABEL_18;
          }

          if ((v5 - v9 + 2) < 0x20)
          {
            goto LABEL_18;
          }

          v11 = (v10 >> 2) + 1;
          v12 = 4 * (v11 & 0x7FFFFFFFFFFFFFF8);
          result += v12;
          v13 = &v9[v12];
          v14 = (v9 + 16);
          v15 = v5 + 18;
          v16 = v11 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v17 = *v14;
            *(v15 - 1) = *(v14 - 1);
            *v15 = v17;
            v14 += 2;
            v15 += 2;
            v16 -= 8;
          }

          while (v16);
          v9 = v13;
          if (v11 != (v11 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_18:
            do
            {
              v18 = *v9;
              v9 += 4;
              *result = v18;
              result += 4;
            }

            while (v9 != v8);
          }
        }

        v6 += 32;
        v5 = result;
      }

      while (v6 != v7);
      v3 += 40;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 5;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      v5 = result + 5;
      result[4] = *(v3 + 16) - *(v3 + 8);
      memcpy(result + 5, *(v3 + 8), *(v3 + 16) - *(v3 + 8));
      result = &v5[*(v3 + 16) - *(v3 + 8)];
      v3 += 32;
    }

    while (v3 != v4);
  }

  return result;
}

unint64_t coex::tlv::abm::getFieldSize(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return 33 * ((v1 - *a1 - 40) / 0x28uLL) + 34;
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
    return 33 * ((v1 - *a1 - 40) / 0x28uLL) + 34;
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
    return 26 * ((v1 - *a1 - 28) / 0x1CuLL) + 27;
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
    return 26 * ((v1 - *a1 - 28) / 0x1CuLL) + 27;
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
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
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
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
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
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
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
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
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
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
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
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
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
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
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
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
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
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
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
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
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
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
  }
}

{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 1;
  }

  else
  {
    return ((v1 - *a1) & 0xFFFFFFFFFFFFFFF8) + 1;
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
    return 24 * ((v1 - *a1 - 24) / 0x18uLL) + 25;
  }
}

{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 1;
  }

  else
  {
    return ((v1 - *a1) & 0xFFFFFFFFFFFFFFF8) + 1;
  }
}

unint64_t tlv::size<coex::tlv::abm::LTECarrierInformationSet>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return 33 * ((v1 - *a1 - 40) / 0x28uLL) + 37;
  }
}

_BYTE **tlv::writeV<coex::tlv::abm::LTECarrierInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = -51 * ((a2[2] - *a2) >> 3);
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 == v5)
  {
    *result = v3;
  }

  else
  {
    do
    {
      *v3 = *v4;
      *(v3 + 4) = *(v4 + 8);
      *(v3 + 3) = *(v4 + 16);
      *(v3 + 4) = *(v4 + 20);
      *(v3 + 5) = *(v4 + 24);
      *(v3 + 6) = *(v4 + 28);
      *(v3 + 7) = *(v4 + 32);
      v6 = v3 + 33;
      v3[32] = *(v4 + 36);
      v4 += 40;
      v3 += 33;
    }

    while (v4 != v5);
    *result = v6;
  }

  return result;
}

void tlv::parseV<coex::tlv::abm::LTE2CarrierInformationSet>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
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
    std::vector<coex::tlv::abm::LTECarrierInformation>::__append(a3, v7);
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v8 = coex::tlv::abm::parseField(v8, v6, v10);
        v10 += 40;
      }

      while (v10 != v11);
    }
  }

  *a1 = v8;
}

void sub_296FA23C4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA23B0);
}

void sub_296FA23D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<coex::tlv::abm::LTE2CarrierInformationSet>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return 33 * ((v1 - *a1 - 40) / 0x28uLL) + 37;
  }
}

_BYTE **tlv::writeV<coex::tlv::abm::LTE2CarrierInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = -51 * ((a2[2] - *a2) >> 3);
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 == v5)
  {
    *result = v3;
  }

  else
  {
    do
    {
      *v3 = *v4;
      *(v3 + 4) = *(v4 + 8);
      *(v3 + 3) = *(v4 + 16);
      *(v3 + 4) = *(v4 + 20);
      *(v3 + 5) = *(v4 + 24);
      *(v3 + 6) = *(v4 + 28);
      *(v3 + 7) = *(v4 + 32);
      v6 = v3 + 33;
      v3[32] = *(v4 + 36);
      v4 += 40;
      v3 += 33;
    }

    while (v4 != v5);
    *result = v6;
  }

  return result;
}

void tlv::parseV<coex::tlv::abm::NGCCarrierInformationSet>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
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
    std::vector<coex::tlv::abm::NGCCarrierInformation>::__append(a3, v7);
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v8 = coex::tlv::abm::parseField(v8, v6, v10);
        v10 += 28;
      }

      while (v10 != v11);
    }
  }

  *a1 = v8;
}

void sub_296FA26D0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA26BCLL);
}

void sub_296FA26E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<coex::tlv::abm::NGCCarrierInformationSet>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return 26 * ((v1 - *a1 - 28) / 0x1CuLL) + 30;
  }
}

_BYTE **tlv::writeV<coex::tlv::abm::NGCCarrierInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = -73 * ((a2[2] - *a2) >> 2);
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      *(v3 + 2) = *(v4 + 8);
      *(v3 + 3) = *(v4 + 12);
      *(v3 + 4) = *(v4 + 16);
      *(v3 + 10) = *(v4 + 20);
      *(v3 + 11) = *(v4 + 22);
      *(v3 + 12) = *(v4 + 24);
      v3 += 26;
      v4 += 28;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

void tlv::parseV<coex::tlv::abm::NGC2CarrierInformationSet>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
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
    std::vector<coex::tlv::abm::NGCCarrierInformation>::__append(a3, v7);
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v8 = coex::tlv::abm::parseField(v8, v6, v10);
        v10 += 28;
      }

      while (v10 != v11);
    }
  }

  *a1 = v8;
}

void sub_296FA29E0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA29CCLL);
}

void sub_296FA29F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<coex::tlv::abm::NGC2CarrierInformationSet>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return 26 * ((v1 - *a1 - 28) / 0x1CuLL) + 30;
  }
}

_BYTE **tlv::writeV<coex::tlv::abm::NGC2CarrierInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = -73 * ((a2[2] - *a2) >> 2);
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      *(v3 + 2) = *(v4 + 8);
      *(v3 + 3) = *(v4 + 12);
      *(v3 + 4) = *(v4 + 16);
      *(v3 + 10) = *(v4 + 20);
      *(v3 + 11) = *(v4 + 22);
      *(v3 + 12) = *(v4 + 24);
      v3 += 26;
      v4 += 28;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

char *coex::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _DWORD *a3)
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

uint64_t tlv::parseV<coex::tlv::abm::LTEOffPeriod>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FA2B68(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::LTEOffPeriod>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::LTE2OffPeriod>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FA2C28(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::LTE2OffPeriod>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

unint64_t tlv::parseV<coex::tlv::abm::BandInfoSet>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = a2;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 4), v3 + v4, 4);
  v6 = *(v3 + 1);
  v7 = (v3 + 8);
  tlv::throwIfNotEnoughBytes((v3 + 8), v3 + v4, 8);
  if ((v4 & 0xFFFFFFFFFFFFFFF8) != 8)
  {
    v8 = *(v3 + 1);
    v7 = (v3 + 16);
  }

  *a1 = v7;
  return v5 | (v6 << 32);
}

void sub_296FA2DB8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA2D9CLL);
}

uint64_t *tlv::writeV<coex::tlv::abm::BandInfoSet>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  *result = v2 + 16;
  return result;
}

char *tlv::parseV<coex::tlv::abm::LTEBandInformationSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = coex::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FA2EA8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA2E9CLL);
}

void sub_296FA2EB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<coex::tlv::abm::LTEBandInformationSet>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 20;
  }
}

_BYTE **tlv::writeV<coex::tlv::abm::LTEBandInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = (a2[2] - *a2) >> 4;
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      *(v3 + 1) = *(v4 + 8);
      v3 += 16;
      v4 += 16;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

char *tlv::parseV<coex::tlv::abm::TDSCDMABandInformationSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = coex::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FA30FC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA30F0);
}

void sub_296FA310C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<coex::tlv::abm::TDSCDMABandInformationSet>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 20;
  }
}

_BYTE **tlv::writeV<coex::tlv::abm::TDSCDMABandInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = (a2[2] - *a2) >> 4;
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      *(v3 + 1) = *(v4 + 8);
      v3 += 16;
      v4 += 16;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

char *tlv::parseV<coex::tlv::abm::GSMBandInformationSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = coex::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FA3350(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA3344);
}

void sub_296FA3360(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<coex::tlv::abm::GSMBandInformationSet>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 20;
  }
}

_BYTE **tlv::writeV<coex::tlv::abm::GSMBandInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = (a2[2] - *a2) >> 4;
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      *(v3 + 1) = *(v4 + 8);
      v3 += 16;
      v4 += 16;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

char *tlv::parseV<coex::tlv::abm::ONEXBandInformationSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = coex::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FA35A4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA3598);
}

void sub_296FA35B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<coex::tlv::abm::ONEXBandInformationSet>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 20;
  }
}

_BYTE **tlv::writeV<coex::tlv::abm::ONEXBandInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = (a2[2] - *a2) >> 4;
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      *(v3 + 1) = *(v4 + 8);
      v3 += 16;
      v4 += 16;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

char *tlv::parseV<coex::tlv::abm::HDRBandInformationSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = coex::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FA37F8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA37ECLL);
}

void sub_296FA3808(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<coex::tlv::abm::HDRBandInformationSet>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 20;
  }
}

_BYTE **tlv::writeV<coex::tlv::abm::HDRBandInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = (a2[2] - *a2) >> 4;
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      *(v3 + 1) = *(v4 + 8);
      v3 += 16;
      v4 += 16;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

char *tlv::parseV<coex::tlv::abm::WCDMABandInformationSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = coex::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FA3A4C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA3A40);
}

void sub_296FA3A5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<coex::tlv::abm::WCDMABandInformationSet>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 20;
  }
}

_BYTE **tlv::writeV<coex::tlv::abm::WCDMABandInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = (a2[2] - *a2) >> 4;
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      *(v3 + 1) = *(v4 + 8);
      v3 += 16;
      v4 += 16;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

char *tlv::parseV<coex::tlv::abm::GSM2BandInformationSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = coex::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FA3CA0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA3C94);
}

void sub_296FA3CB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<coex::tlv::abm::GSM2BandInformationSet>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 20;
  }
}

_BYTE **tlv::writeV<coex::tlv::abm::GSM2BandInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = (a2[2] - *a2) >> 4;
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      *(v3 + 1) = *(v4 + 8);
      v3 += 16;
      v4 += 16;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

char *tlv::parseV<coex::tlv::abm::WCDMA2BandInformationSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = coex::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FA3EF4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA3EE8);
}

void sub_296FA3F04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<coex::tlv::abm::WCDMA2BandInformationSet>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 20;
  }
}

_BYTE **tlv::writeV<coex::tlv::abm::WCDMA2BandInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = (a2[2] - *a2) >> 4;
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      *(v3 + 1) = *(v4 + 8);
      v3 += 16;
      v4 += 16;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

char *tlv::parseV<coex::tlv::abm::LTE2BandInformationSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = coex::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FA4148(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA413CLL);
}

void sub_296FA4158(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<coex::tlv::abm::LTE2BandInformationSet>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 20;
  }
}

_BYTE **tlv::writeV<coex::tlv::abm::LTE2BandInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = (a2[2] - *a2) >> 4;
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      *(v3 + 1) = *(v4 + 8);
      v3 += 16;
      v4 += 16;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

char *tlv::parseV<coex::tlv::abm::NGCBandInformationSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = coex::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FA439C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA4390);
}

void sub_296FA43AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<coex::tlv::abm::NGCBandInformationSet>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 20;
  }
}

_BYTE **tlv::writeV<coex::tlv::abm::NGCBandInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = (a2[2] - *a2) >> 4;
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      *(v3 + 1) = *(v4 + 8);
      v3 += 16;
      v4 += 16;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

char *tlv::parseV<coex::tlv::abm::NGC2BandInformationSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = coex::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FA45F0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA45E4);
}

void sub_296FA4600(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<coex::tlv::abm::NGC2BandInformationSet>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 20;
  }
}

_BYTE **tlv::writeV<coex::tlv::abm::NGC2BandInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = (a2[2] - *a2) >> 4;
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      *(v3 + 1) = *(v4 + 8);
      v3 += 16;
      v4 += 16;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

unint64_t tlv::parseV<coex::tlv::abm::WLANScanInfo>(tlv **a1, int a2)
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
  v8 = *(v3 + 3);
  *a1 = (v3 + 16);
  return v5 | (v6 << 32);
}

void sub_296FA4808(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA47E8);
}

_DWORD **tlv::writeV<coex::tlv::abm::WLANScanInfo>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  v2[3] = a2[3];
  *result = v2 + 4;
  return result;
}

unsigned __int8 *coex::tlv::abm::parseField(unsigned __int8 *a1, const unsigned __int8 *a2, uint64_t a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 1);
  v6 = a1[4];
  v7 = a1 + 5;
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  v10 = (v9 - v8) >> 3;
  if (v6 <= v10)
  {
    if (v6 < v10)
    {
      v9 = &v8[8 * v6];
      *(a3 + 16) = v9;
    }
  }

  else
  {
    std::vector<coex::tlv::abm::BandInfo>::__append(a3 + 8, v6 - v10);
    v8 = *(a3 + 8);
    v9 = *(a3 + 16);
  }

  while (v8 != v9)
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 4);
    *v8 = *v7;
    tlv::throwIfNotEnoughBytes((v7 + 4), a2, 4);
    *(v8 + 1) = *(v7 + 1);
    v7 += 8;
    v8 += 8;
  }

  tlv::throwIfNotEnoughBytes(v7, a2, 1);
  *(a3 + 32) = *v7;
  tlv::throwIfNotEnoughBytes((v7 + 1), a2, 1);
  *(a3 + 36) = v7[1];
  return v7 + 2;
}

unint64_t coex::tlv::abm::writeField(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  v2 = a1 + 5;
  *(a1 + 4) = (a2[4] - a2[2]) >> 3;
  v4 = *(a2 + 1);
  v3 = *(a2 + 2);
  if (v4 != v3)
  {
    v5 = v3 - v4 - 8;
    if (v5 < 0x58)
    {
      goto LABEL_15;
    }

    if (v2 < &v4[(v5 & 0xFFFFFFFFFFFFFFF8) + 8] && v4 < a1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 13)
    {
      goto LABEL_15;
    }

    v7 = (v5 >> 3) + 1;
    v8 = 8 * (v7 & 0x3FFFFFFFFFFFFFF8);
    v2 += v8;
    v9 = &v4[v8];
    v10 = (v4 + 32);
    v11 = (a1 + 37);
    v12 = v7 & 0x3FFFFFFFFFFFFFF8;
    do
    {
      v14 = *(v10 - 2);
      v13 = *(v10 - 1);
      v16 = *v10;
      v15 = v10[1];
      v10 += 4;
      *(v11 - 2) = v14;
      *(v11 - 1) = v13;
      *v11 = v16;
      v11[1] = v15;
      v11 += 4;
      v12 -= 8;
    }

    while (v12);
    v4 = v9;
    if (v7 != (v7 & 0x3FFFFFFFFFFFFFF8))
    {
LABEL_15:
      do
      {
        *v2 = *v4;
        *(v2 + 4) = *(v4 + 1);
        v2 += 8;
        v4 += 8;
      }

      while (v4 != v3);
    }
  }

  *v2 = a2[8];
  *(v2 + 1) = a2[9];
  return v2 + 2;
}

uint64_t coex::tlv::abm::getFieldSize(uint64_t a1)
{
  if (*(a1 + 16) == *(a1 + 8))
  {
    return 7;
  }

  else
  {
    return (*(a1 + 16) - *(a1 + 8)) | 7;
  }
}

{
  if (*(a1 + 16) == *(a1 + 8))
  {
    return 2;
  }

  else
  {
    return (*(a1 + 16) - *(a1 + 8)) | 2;
  }
}

{
  return *(a1 + 16) - *(a1 + 8) + 5;
}

unsigned __int8 *tlv::parseV<coex::tlv::abm::WLANConnectionInfo>@<X0>(unsigned __int8 **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0xAAAAAAAA00000000;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  result = coex::tlv::abm::parseField(*a1, &(*a1)[a2], a3);
  *a1 = result;
  return result;
}

void sub_296FA4AA0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA4A90);
}

void sub_296FA4AB0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tlv::size<coex::tlv::abm::WLANConnectionInfo>(uint64_t a1)
{
  if (*(a1 + 16) == *(a1 + 8))
  {
    return 10;
  }

  else
  {
    return ((*(a1 + 16) - *(a1 + 8)) | 7) + 3;
  }
}

uint64_t *tlv::writeV<coex::tlv::abm::WLANConnectionInfo>(uint64_t *result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v3 = v2 + 5;
  *(v2 + 4) = (a2[4] - a2[2]) >> 3;
  v5 = *(a2 + 1);
  v4 = *(a2 + 2);
  if (v5 != v4)
  {
    v6 = v4 - v5 - 8;
    if (v6 < 0x58)
    {
      goto LABEL_15;
    }

    if (v3 < &v5[(v6 & 0xFFFFFFFFFFFFFFF8) + 8] && v5 < v2 + (v6 & 0xFFFFFFFFFFFFFFF8) + 13)
    {
      goto LABEL_15;
    }

    v8 = (v6 >> 3) + 1;
    v9 = 8 * (v8 & 0x3FFFFFFFFFFFFFF8);
    v3 += v9;
    v10 = &v5[v9];
    v11 = (v5 + 32);
    v12 = (v2 + 37);
    v13 = v8 & 0x3FFFFFFFFFFFFFF8;
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
      v13 -= 8;
    }

    while (v13);
    v5 = v10;
    if (v8 != (v8 & 0x3FFFFFFFFFFFFFF8))
    {
LABEL_15:
      do
      {
        *v3 = *v5;
        *(v3 + 4) = *(v5 + 1);
        v3 += 8;
        v5 += 8;
      }

      while (v5 != v4);
    }
  }

  *v3 = a2[8];
  *(v3 + 1) = a2[9];
  *result = v3 + 2;
  return result;
}

tlv *coex::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, void *a3)
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

void *coex::tlv::abm::writeField(void *a1, void *a2)
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

uint64_t tlv::parseV<coex::tlv::abm::Policy>(tlv **a1, unsigned int a2)
{
  v4 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 8);
  if (a2 >= 8)
  {
    result = *v4;
    *a1 = (v4 + 8);
  }

  else
  {
    result = 0;
    *a1 = v4;
  }

  return result;
}

uint64_t sub_296FA4C98(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

void **tlv::writeV<coex::tlv::abm::Policy>(void **result, void *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *coex::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _BYTE *a3)
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
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

_BYTE *coex::tlv::abm::writeField(_BYTE *a1, _BYTE *a2)
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

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t tlv::parseV<coex::tlv::abm::PowerThreshold>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FA4D5C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<coex::tlv::abm::PowerThreshold>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::RBThreshold>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FA4E1C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::RBThreshold>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::ContinuousTxSubframeDenialsThreshold>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FA4EDC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::ContinuousTxSubframeDenialsThreshold>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::TxFrameDenialsParameters>(tlv **a1, int a2)
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

uint64_t sub_296FA5000(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<coex::tlv::abm::TxFrameDenialsParameters>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::NGCContinuousTxSubframeDenialsThreshold>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FA50D8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::NGCContinuousTxSubframeDenialsThreshold>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::NGCTxFrameDenialsParameters>(tlv **a1, int a2)
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

uint64_t sub_296FA51FC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<coex::tlv::abm::NGCTxFrameDenialsParameters>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::APTTable>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FA52D4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::APTTable>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

float tlv::parseV<coex::tlv::abm::ControllerTxPowerLimit>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

double sub_296FA5394(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0.0;
}

float tlv::writeV<coex::tlv::abm::ControllerTxPowerLimit>(_DWORD **a1, float *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = *a2;
  *a1 = v2 + 1;
  return result;
}

float tlv::parseV<coex::tlv::abm::WCI2TxPowerLimit>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

double sub_296FA5454(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0.0;
}

float tlv::writeV<coex::tlv::abm::WCI2TxPowerLimit>(_DWORD **a1, float *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = *a2;
  *a1 = v2 + 1;
  return result;
}

float tlv::parseV<coex::tlv::abm::LinkPathLossThreshold>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

double sub_296FA5514(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0.0;
}

float tlv::writeV<coex::tlv::abm::LinkPathLossThreshold>(_DWORD **a1, float *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = *a2;
  *a1 = v2 + 1;
  return result;
}

float tlv::parseV<coex::tlv::abm::RBFilterAlpha>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

double sub_296FA55D4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0.0;
}

float tlv::writeV<coex::tlv::abm::RBFilterAlpha>(_DWORD **a1, float *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = *a2;
  *a1 = v2 + 1;
  return result;
}

float tlv::parseV<coex::tlv::abm::FilteredRBThreshold>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

double sub_296FA5694(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0.0;
}

float tlv::writeV<coex::tlv::abm::FilteredRBThreshold>(_DWORD **a1, float *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = *a2;
  *a1 = v2 + 1;
  return result;
}

char *coex::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _WORD *a3)
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

_WORD *coex::tlv::abm::writeField(_WORD *a1, _WORD *a2)
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

uint64_t tlv::parseV<coex::tlv::abm::WCI2TxPowerLimitTimeout>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FA5754(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<coex::tlv::abm::WCI2TxPowerLimitTimeout>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::ControllerTxPowerLimitTimeout>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FA5814(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<coex::tlv::abm::ControllerTxPowerLimitTimeout>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::TxPowerThresholdForAdvTxNotice>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FA58D4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<coex::tlv::abm::TxPowerThresholdForAdvTxNotice>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::RbThresholdForAdvTxNotice>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FA5994(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<coex::tlv::abm::RbThresholdForAdvTxNotice>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *coex::tlv::abm::writeField(_BYTE *a1, _DWORD *a2)
{
  *a1 = (a2[2] - *a2) >> 3;
  result = a1 + 1;
  v5 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    v6 = v4 - v5 - 8;
    if (v6 < 0x58)
    {
      goto LABEL_14;
    }

    if (result < &v5[(v6 & 0xFFFFFFFFFFFFFFF8) + 8] && v5 < &a1[(v6 & 0xFFFFFFFFFFFFFFF8) + 9])
    {
      goto LABEL_14;
    }

    v8 = (v6 >> 3) + 1;
    v9 = 8 * (v8 & 0x3FFFFFFFFFFFFFF8);
    result += v9;
    v10 = &v5[v9];
    v11 = (v5 + 32);
    v12 = a1 + 33;
    v13 = v8 & 0x3FFFFFFFFFFFFFF8;
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
      v13 -= 8;
    }

    while (v13);
    v5 = v10;
    if (v8 != (v8 & 0x3FFFFFFFFFFFFFF8))
    {
LABEL_14:
      do
      {
        *result = *v5;
        *(result + 1) = *(v5 + 1);
        result += 8;
        v5 += 8;
      }

      while (v5 != v4);
    }
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 3;
  result = a1 + 1;
  v5 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    v6 = v4 - v5 - 8;
    if (v6 < 0x58)
    {
      goto LABEL_14;
    }

    if (result < &v5[(v6 & 0xFFFFFFFFFFFFFFF8) + 8] && v5 < &a1[(v6 & 0xFFFFFFFFFFFFFFF8) + 9])
    {
      goto LABEL_14;
    }

    v8 = (v6 >> 3) + 1;
    v9 = 8 * (v8 & 0x3FFFFFFFFFFFFFF8);
    result += v9;
    v10 = &v5[v9];
    v11 = (v5 + 32);
    v12 = a1 + 33;
    v13 = v8 & 0x3FFFFFFFFFFFFFF8;
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
      v13 -= 8;
    }

    while (v13);
    v5 = v10;
    if (v8 != (v8 & 0x3FFFFFFFFFFFFFF8))
    {
LABEL_14:
      do
      {
        *result = *v5;
        *(result + 1) = *(v5 + 1);
        result += 8;
        v5 += 8;
      }

      while (v5 != v4);
    }
  }

  return result;
}

void tlv::parseV<coex::tlv::abm::ScanFreqBandFilter>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
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
        tlv::throwIfNotEnoughBytes(v8, v6, 4);
        *v10 = *v8;
        tlv::throwIfNotEnoughBytes((v8 + 4), v6, 4);
        v10[1] = *(v8 + 1);
        v10 += 2;
        v8 += 8;
      }

      while (v10 != v11);
      v8 = v12 + 8;
    }
  }

  *a1 = v8;
}

void sub_296FA5C28(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA5C10);
}

void sub_296FA5C3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tlv::size<coex::tlv::abm::ScanFreqBandFilter>(void *a1)
{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 4;
  }

  else
  {
    return (v1 - *a1) | 4;
  }
}

char **tlv::writeV<coex::tlv::abm::ScanFreqBandFilter>(char **result, _DWORD *a2)
{
  v2 = *result;
  v3 = *result;
  *v3 = (a2[2] - *a2) >> 3;
  v4 = v3 + 1;
  v6 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    v7 = v5 - v6 - 8;
    if (v7 < 0x58)
    {
      goto LABEL_15;
    }

    if (v4 < &v6[(v7 & 0xFFFFFFFFFFFFFFF8) + 8] && v6 < &v2[(v7 & 0xFFFFFFFFFFFFFFF8) + 9])
    {
      goto LABEL_15;
    }

    v9 = (v7 >> 3) + 1;
    v10 = 8 * (v9 & 0x3FFFFFFFFFFFFFF8);
    v4 += v10;
    v11 = &v6[v10];
    v12 = (v6 + 32);
    v13 = v2 + 33;
    v14 = v9 & 0x3FFFFFFFFFFFFFF8;
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
      v14 -= 8;
    }

    while (v14);
    v6 = v11;
    if (v9 != (v9 & 0x3FFFFFFFFFFFFFF8))
    {
LABEL_15:
      do
      {
        *v4 = *v6;
        *(v4 + 1) = *(v6 + 1);
        v4 += 8;
        v6 += 8;
      }

      while (v6 != v5);
    }
  }

  *result = v4;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::LTETransportBlockCount>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FA5DC0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::LTETransportBlockCount>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::BandSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = *a1;
  v6 = a2;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  *a3 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 4), v5 + v6, 4);
  *(a3 + 4) = *(v5 + 1);
  tlv::throwIfNotEnoughBytes((v5 + 8), v5 + v6, 4);
  *(a3 + 8) = *(v5 + 2);
  tlv::throwIfNotEnoughBytes((v5 + 12), v5 + v6, 4);
  *(a3 + 12) = *(v5 + 3);
  v7 = (v5 + 16);
  result = tlv::throwIfNotEnoughBytes((v5 + 16), v5 + v6, 8);
  if ((v6 & 0xFFFFFFFFFFFFFFF8) != 0x10)
  {
    *(a3 + 16) = *(v5 + 2);
    v7 = (v5 + 24);
  }

  *a1 = v7;
  return result;
}

void sub_296FA5FBC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t *tlv::writeV<coex::tlv::abm::BandSet>(uint64_t *result, uint64_t a2)
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

char *coex::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, uint64_t a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v10 = *a3;
  v9 = *(a3 + 8);
  v11 = v9 - *a3;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
  v13 = v8 >= v12;
  v14 = v8 - v12;
  if (v8 <= v12)
  {
    if (!v13)
    {
      v9 = &v10[3 * v6];
      *(a3 + 8) = v9;
    }

    if (v10 == v9)
    {
      return v7;
    }
  }

  else
  {
    v15 = *(a3 + 16);
    if (0xAAAAAAAAAAAAAAABLL * ((v15 - v9) >> 3) >= v14)
    {
      bzero(*(a3 + 8), 24 * ((24 * v14 - 24) / 0x18) + 24);
      v9 += 24 * ((24 * v14 - 24) / 0x18) + 24;
      *(a3 + 8) = v9;
      v10 = *a3;
      if (*a3 == v9)
      {
        return v7;
      }
    }

    else
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v10) >> 3);
      v17 = 0x5555555555555556 * ((v15 - v10) >> 3);
      if (v17 > v6)
      {
        v6 = v17;
      }

      if (v16 >= 0x555555555555555)
      {
        v6 = 0xAAAAAAAAAAAAAAALL;
      }

      if (v6 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v18 = 24 * v6;
      v19 = operator new(24 * v6);
      v20 = &v19[v18];
      bzero(&v19[v11], 24 * ((24 * v14 - 24) / 0x18) + 24);
      v9 = &v19[24 * ((24 * v14 - 24) / 0x18) + 24 + v11];
      memcpy(v19, v10, v11);
      *a3 = v19;
      *(a3 + 8) = v9;
      *(a3 + 16) = v20;
      if (v10)
      {
        operator delete(v10);
        v9 = *(a3 + 8);
      }

      v10 = *a3;
      if (*a3 == v9)
      {
        return v7;
      }
    }
  }

  v21 = v10 + 2;
  do
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 4);
    *(v21 - 4) = *v7;
    v22 = v21 - 2;
    tlv::throwIfNotEnoughBytes((v7 + 4), a2, 4);
    *(v21 - 3) = *(v7 + 1);
    tlv::throwIfNotEnoughBytes((v7 + 8), a2, 4);
    *(v21 - 2) = *(v7 + 2);
    tlv::throwIfNotEnoughBytes((v7 + 12), a2, 4);
    *(v21 - 1) = *(v7 + 3);
    v23 = v7 + 16;
    tlv::throwIfNotEnoughBytes((v7 + 16), a2, 8);
    if ((a2 - (v7 + 16)) >= 8)
    {
      *v21 = *(v7 + 2);
      v23 = v7 + 24;
    }

    v21 += 3;
    v7 = v23;
  }

  while (v22 + 3 != v9);
  return v23;
}

{
  v5 = a1;
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 4), a2, 1);
  v6 = *(v5 + 4);
  v5 = (v5 + 5);
  tlv::throwIfNotEnoughBytes(v5, a2, v6);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>((a3 + 8), v5, v5 + v6, v6);
  return v5 + v6;
}

char *tlv::parseV<coex::tlv::abm::BandFilters>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = coex::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FA6378(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA636CLL);
}

void sub_296FA6388(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t tlv::size<coex::tlv::abm::BandFilters>(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  else
  {
    return 24 * ((v1 - *a1 - 24) / 0x18uLL) + 28;
  }
}

_BYTE **tlv::writeV<coex::tlv::abm::BandFilters>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = -85 * ((a2[2] - *a2) >> 3);
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 1) = *(v4 + 4);
      *(v3 + 2) = *(v4 + 8);
      *(v3 + 3) = *(v4 + 12);
      *(v3 + 2) = *(v4 + 16);
      v3 += 24;
      v4 += 24;
    }

    while (v4 != v5);
  }

  *result = v3;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::MinMax>(tlv **a1, int a2)
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

uint64_t sub_296FA653C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<coex::tlv::abm::MinMax>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::LTEInstance>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FA6614(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::LTEInstance>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::TechInstance>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FA66D4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::TechInstance>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::CoexTech>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FA6794(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::CoexTech>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::SecondaryLTEInstance>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FA6854(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::SecondaryLTEInstance>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::SecondaryTechInstance>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FA6914(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::SecondaryTechInstance>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::SecondaryCoexTech>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FA69D4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::SecondaryCoexTech>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

void tlv::parseV<coex::tlv::abm::TimeShareReqBandInformationSet>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
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
        tlv::throwIfNotEnoughBytes(v8, v6, 4);
        *v10 = *v8;
        tlv::throwIfNotEnoughBytes((v8 + 4), v6, 4);
        v10[1] = *(v8 + 1);
        v10 += 2;
        v8 += 8;
      }

      while (v10 != v11);
      v8 = v12 + 8;
    }
  }

  *a1 = v8;
}

void sub_296FA6C68(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA6C50);
}

void sub_296FA6C7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tlv::size<coex::tlv::abm::TimeShareReqBandInformationSet>(void *a1)
{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 4;
  }

  else
  {
    return (v1 - *a1) | 4;
  }
}

char **tlv::writeV<coex::tlv::abm::TimeShareReqBandInformationSet>(char **result, _DWORD *a2)
{
  v2 = *result;
  v3 = *result;
  *v3 = (a2[2] - *a2) >> 3;
  v4 = v3 + 1;
  v6 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    v7 = v5 - v6 - 8;
    if (v7 < 0x58)
    {
      goto LABEL_15;
    }

    if (v4 < &v6[(v7 & 0xFFFFFFFFFFFFFFF8) + 8] && v6 < &v2[(v7 & 0xFFFFFFFFFFFFFFF8) + 9])
    {
      goto LABEL_15;
    }

    v9 = (v7 >> 3) + 1;
    v10 = 8 * (v9 & 0x3FFFFFFFFFFFFFF8);
    v4 += v10;
    v11 = &v6[v10];
    v12 = (v6 + 32);
    v13 = v2 + 33;
    v14 = v9 & 0x3FFFFFFFFFFFFFF8;
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
      v14 -= 8;
    }

    while (v14);
    v6 = v11;
    if (v9 != (v9 & 0x3FFFFFFFFFFFFFF8))
    {
LABEL_15:
      do
      {
        *v4 = *v6;
        *(v4 + 1) = *(v6 + 1);
        v4 += 8;
        v6 += 8;
      }

      while (v6 != v5);
    }
  }

  *result = v4;
  return result;
}

tlv *coex::tlv::abm::parseField(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 1);
  v6 = *(a1 + 1);
  v7 = (a1 + 2);
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  v10 = v9 - v8;
  if (v6 <= v10)
  {
    if (v6 < v10)
    {
      v9 = &v8[v6];
      *(a3 + 16) = v9;
    }
  }

  else
  {
    std::vector<int>::__append((a3 + 8), v6 - v10);
    v8 = *(a3 + 8);
    v9 = *(a3 + 16);
  }

  while (v8 != v9)
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 4);
    v11 = *v7;
    v7 = (v7 + 4);
    *v8++ = v11;
  }

  return v7;
}

_DWORD *coex::tlv::abm::writeField(_BYTE *a1, uint64_t a2)
{
  *a1 = *a2;
  result = a1 + 2;
  a1[1] = (*(a2 + 16) - *(a2 + 8)) >> 2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 != v4)
  {
    v6 = v4 - v5 - 4;
    if (v6 < 0x1C)
    {
      goto LABEL_10;
    }

    if ((a1 - v5 + 2) < 0x20)
    {
      goto LABEL_10;
    }

    v7 = (v6 >> 2) + 1;
    v8 = 4 * (v7 & 0x7FFFFFFFFFFFFFF8);
    result = (result + v8);
    v9 = &v5[v8];
    v10 = (v5 + 16);
    v11 = a1 + 18;
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

void tlv::parseV<coex::tlv::abm::AntBandInfoSet>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  a3[1] = 0;
  v5 = (a3 + 1);
  *a3 = 0xAAAAAAAAAAAAAA00;
  a3[2] = 0;
  a3[3] = 0;
  v6 = *a1;
  v7 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v7, 1);
  *a3 = *v6;
  tlv::throwIfNotEnoughBytes((v6 + 1), v7, 1);
  v8 = *(v6 + 1);
  v9 = (v6 + 2);
  if (v8)
  {
    std::vector<int>::__append(v5, v8);
    v10 = a3[1];
    for (i = a3[2]; v10 != i; ++v10)
    {
      tlv::throwIfNotEnoughBytes(v9, v7, 4);
      v12 = *v9;
      v9 = (v9 + 4);
      *v10 = v12;
    }
  }

  *a1 = v9;
}

void sub_296FA6FB8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA6FA0);
}

void sub_296FA6FCC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tlv::size<coex::tlv::abm::AntBandInfoSet>(uint64_t a1)
{
  if (*(a1 + 16) == *(a1 + 8))
  {
    return 5;
  }

  else
  {
    return *(a1 + 16) - *(a1 + 8) + 5;
  }
}

_BYTE **tlv::writeV<coex::tlv::abm::AntBandInfoSet>(_BYTE **result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  v3 = v2 + 2;
  v2[1] = (*(a2 + 16) - *(a2 + 8)) >> 2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 != v4)
  {
    v6 = v4 - v5 - 4;
    if (v6 < 0x1C)
    {
      goto LABEL_11;
    }

    if ((v2 - v5 + 2) < 0x20)
    {
      goto LABEL_11;
    }

    v7 = (v6 >> 2) + 1;
    v8 = 4 * (v7 & 0x7FFFFFFFFFFFFFF8);
    v3 = (v3 + v8);
    v9 = &v5[v8];
    v10 = (v5 + 16);
    v11 = v2 + 18;
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

tlv *coex::tlv::abm::parseField(coex::tlv::abm *this, unsigned __int8 *a2, const unsigned __int8 *a3, coex::tlv::abm::AntBlockBandInformationSet *a4)
{
  tlv::throwIfNotEnoughBytes(this, a2, 1);
  v7 = *this;

  return tlv::parseSequence<coex::tlv::abm::AntBandInfoSet>((this + 1), a2, a3, v7);
}

tlv *tlv::parseSequence<coex::tlv::abm::AntBandInfoSet>(tlv *this, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v8 = *a3;
  v7 = *(a3 + 8);
  v9 = &v7[-*a3];
  v10 = a4 - (v9 >> 5);
  if (a4 <= v9 >> 5)
  {
    if (a4 >= v9 >> 5)
    {
      v20 = *(a3 + 8);
      i = *a3;
      if (*a3 == v7)
      {
        return this;
      }

      goto LABEL_31;
    }

    v20 = &v8[32 * a4];
    while (v7 != v20)
    {
      v24 = *(v7 - 3);
      if (v24)
      {
        *(v7 - 2) = v24;
        operator delete(v24);
      }

      v7 -= 32;
    }

LABEL_23:
    *(a3 + 8) = v20;
    i = *a3;
    if (i == v20)
    {
      return this;
    }

    goto LABEL_31;
  }

  v11 = *(a3 + 16);
  if (v10 <= (v11 - v7) >> 5)
  {
    bzero(*(a3 + 8), 32 * v10);
    v20 = &v7[32 * v10];
    goto LABEL_23;
  }

  if (a4 >> 59)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v12 = v11 - v8;
  v13 = v12 >> 4;
  if (v12 >> 4 <= a4)
  {
    v13 = a4;
  }

  v14 = v12 >= 0x7FFFFFFFFFFFFFE0;
  v15 = 0x7FFFFFFFFFFFFFFLL;
  if (!v14)
  {
    v15 = v13;
  }

  if (v15 >> 59)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v16 = 32 * v15;
  v17 = operator new(32 * v15);
  v18 = &v17[v9];
  v19 = &v17[v16];
  bzero(v18, 32 * v10);
  v20 = &v18[32 * v10];
  if (v8 != v7)
  {
    v21 = v8;
    v22 = v17;
    do
    {
      *v22 = *v21;
      *(v22 + 8) = *(v21 + 8);
      *(v22 + 3) = *(v21 + 3);
      *(v21 + 1) = 0;
      *(v21 + 2) = 0;
      *(v21 + 3) = 0;
      v21 += 32;
      v22 += 32;
    }

    while (v21 != v7);
    do
    {
      v23 = *(v8 + 1);
      if (v23)
      {
        *(v8 + 2) = v23;
        operator delete(v23);
      }

      v8 += 32;
    }

    while (v8 != v7);
    v8 = *a3;
  }

  *a3 = v17;
  *(a3 + 8) = v20;
  *(a3 + 16) = v19;
  if (v8)
  {
    operator delete(v8);
    v20 = *(a3 + 8);
  }

  for (i = *a3; i != v20; i += 32)
  {
LABEL_31:
    tlv::throwIfNotEnoughBytes(this, a2, 1);
    *i = *this;
    tlv::throwIfNotEnoughBytes((this + 1), a2, 1);
    v26 = *(this + 1);
    v27 = *(i + 1);
    v28 = *(i + 2);
    v29 = v28 - v27;
    if (v26 <= v29)
    {
      if (v26 < v29)
      {
        v28 = &v27[v26];
        *(i + 2) = v28;
      }

      this = (this + 2);
    }

    else
    {
      std::vector<int>::__append((i + 8), v26 - v29);
      v27 = *(i + 1);
      v28 = *(i + 2);
      this = (this + 2);
    }

    while (v27 != v28)
    {
      tlv::throwIfNotEnoughBytes(this, a2, 4);
      v30 = *this;
      this = (this + 4);
      *v27++ = v30;
    }
  }

  return this;
}

_DWORD *coex::tlv::abm::writeField(_BYTE *a1, _DWORD *a2)
{
  *a1 = (a2[2] - *a2) >> 5;
  v2 = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 == v4)
  {
    return a1 + 1;
  }

  do
  {
    *v2 = *v3;
    result = v2 + 2;
    v2[1] = (*(v3 + 16) - *(v3 + 8)) >> 2;
    v7 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v7 != v6)
    {
      v8 = v6 - v7 - 4;
      if (v8 < 0x1C)
      {
        goto LABEL_15;
      }

      if ((v2 - v7 + 2) < 0x20)
      {
        goto LABEL_15;
      }

      v9 = (v8 >> 2) + 1;
      v10 = 4 * (v9 & 0x7FFFFFFFFFFFFFF8);
      result = (result + v10);
      v11 = &v7[v10];
      v12 = (v7 + 16);
      v13 = v2 + 18;
      v14 = v9 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 8;
      }

      while (v14);
      v7 = v11;
      if (v9 != (v9 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_15:
        do
        {
          v16 = *v7;
          v7 += 4;
          *result++ = v16;
        }

        while (v7 != v6);
      }
    }

    v3 += 32;
    v2 = result;
  }

  while (v3 != v4);
  return result;
}

uint64_t coex::tlv::abm::getFieldSize(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  v3 = v1 - v2 - 32;
  if (v3 >= 0x80)
  {
    v7 = (v3 >> 5) + 1;
    v8 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v8 = 4;
    }

    v9 = v7 - v8;
    v5 = v2 + 32 * v9;
    v10 = (v2 + 72);
    v11 = 0uLL;
    v12 = vdupq_n_s64(2uLL);
    v13 = 0uLL;
    do
    {
      v14 = v10 - 8;
      v16 = vld4q_f64(v14);
      v17 = vld4q_f64(v10);
      v11 = vaddq_s64(vbslq_s8(vceqq_s64(v16.val[1], v16.val[0]), v12, vorrq_s8(vsubq_s64(v16.val[1], v16.val[0]), v12)), v11);
      v13 = vaddq_s64(vbslq_s8(vceqq_s64(v17.val[1], v17.val[0]), v12, vorrq_s8(vsubq_s64(v17.val[1], v17.val[0]), v12)), v13);
      v10 += 16;
      v9 -= 4;
    }

    while (v9);
    v4 = vaddvq_s64(vaddq_s64(v13, v11));
  }

  else
  {
    v4 = 0;
    v5 = *a1;
  }

  do
  {
    v15 = (*(v5 + 16) - *(v5 + 8)) | 2;
    if (*(v5 + 16) == *(v5 + 8))
    {
      v15 = 2;
    }

    v4 += v15;
    v5 += 32;
  }

  while (v5 != v1);
  return v4 + 1;
}

{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    while (1)
    {
      v5 = *(v1 + 16);
      v4 = *(v1 + 24);
      if (v5 != v4)
      {
        break;
      }

      v3 += 10;
      v1 += 40;
      if (v1 == v2)
      {
        return v3 + 1;
      }
    }

    v6 = v4 - v5 - 32;
    if (v6 >= 0x80)
    {
      v9 = (v6 >> 5) + 1;
      v10 = v9 & 3;
      if ((v9 & 3) == 0)
      {
        v10 = 4;
      }

      v11 = v9 - v10;
      v8 = v5 + 32 * v11;
      v12 = (v5 + 72);
      v13 = 0uLL;
      v14 = 0uLL;
      do
      {
        v15 = v12 - 8;
        v18 = vld4q_f64(v15);
        v19 = vld4q_f64(v12);
        v18.val[2] = vdupq_n_s64(2uLL);
        v13 = vaddq_s64(vbslq_s8(vceqq_s64(v18.val[1], v18.val[0]), v18.val[2], vorrq_s8(vsubq_s64(v18.val[1], v18.val[0]), v18.val[2])), v13);
        v14 = vaddq_s64(vbslq_s8(vceqq_s64(v19.val[1], v19.val[0]), v18.val[2], vorrq_s8(vsubq_s64(v19.val[1], v19.val[0]), v18.val[2])), v14);
        v12 += 16;
        v11 -= 4;
      }

      while (v11);
      v7 = vaddvq_s64(vaddq_s64(v14, v13));
    }

    else
    {
      v7 = 0;
      v8 = *(v1 + 16);
    }

    do
    {
      v16 = (*(v8 + 16) - *(v8 + 8)) | 2;
      if (*(v8 + 16) == *(v8 + 8))
      {
        v16 = 2;
      }

      v7 += v16;
      v8 += 32;
    }

    while (v8 != v4);
    v3 += v7 + 10;
    v1 += 40;
  }

  while (v1 != v2);
  return v3 + 1;
}

{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    while (1)
    {
      v5 = *(v1 + 16);
      v4 = *(v1 + 24);
      if (v5 != v4)
      {
        break;
      }

      v3 += 10;
      v1 += 40;
      if (v1 == v2)
      {
        return v3 + 1;
      }
    }

    v6 = v4 - v5 - 32;
    if (v6 >= 0x80)
    {
      v9 = (v6 >> 5) + 1;
      v10 = v9 & 3;
      if ((v9 & 3) == 0)
      {
        v10 = 4;
      }

      v11 = v9 - v10;
      v8 = v5 + 32 * v11;
      v12 = (v5 + 72);
      v13 = 0uLL;
      v14 = 0uLL;
      do
      {
        v15 = v12 - 8;
        v18 = vld4q_f64(v15);
        v19 = vld4q_f64(v12);
        v18.val[2] = vdupq_n_s64(2uLL);
        v13 = vaddq_s64(vbslq_s8(vceqq_s64(v18.val[1], v18.val[0]), v18.val[2], vorrq_s8(vsubq_s64(v18.val[1], v18.val[0]), v18.val[2])), v13);
        v14 = vaddq_s64(vbslq_s8(vceqq_s64(v19.val[1], v19.val[0]), v18.val[2], vorrq_s8(vsubq_s64(v19.val[1], v19.val[0]), v18.val[2])), v14);
        v12 += 16;
        v11 -= 4;
      }

      while (v11);
      v7 = vaddvq_s64(vaddq_s64(v14, v13));
    }

    else
    {
      v7 = 0;
      v8 = *(v1 + 16);
    }

    do
    {
      v16 = (*(v8 + 16) - *(v8 + 8)) | 2;
      if (*(v8 + 16) == *(v8 + 8))
      {
        v16 = 2;
      }

      v7 += v16;
      v8 += 32;
    }

    while (v8 != v4);
    v3 += v7 + 10;
    v1 += 40;
  }

  while (v1 != v2);
  return v3 + 1;
}

{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  v3 = v1 - v2 - 32;
  if (v3 >= 0x80)
  {
    v7 = (v3 >> 5) + 1;
    v8 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v8 = 4;
    }

    v9 = v7 - v8;
    v5 = v2 + 32 * v9;
    v10 = (v2 + 72);
    v11 = 0uLL;
    v12 = vdupq_n_s64(5uLL);
    v13 = 0uLL;
    do
    {
      v14 = v10 - 8;
      v15 = vld4q_f64(v14);
      v16 = vld4q_f64(v10);
      v11 = vaddq_s64(vsubq_s64(vaddq_s64(v11, v15.val[1]), v15.val[0]), v12);
      v13 = vaddq_s64(vsubq_s64(vaddq_s64(v13, v16.val[1]), v16.val[0]), v12);
      v10 += 16;
      v9 -= 4;
    }

    while (v9);
    v4 = vaddvq_s64(vaddq_s64(v13, v11));
  }

  else
  {
    v4 = 0;
    v5 = *a1;
  }

  do
  {
    v4 = v4 + *(v5 + 16) - *(v5 + 8) + 5;
    v5 += 32;
  }

  while (v5 != v1);
  return v4 + 1;
}

tlv *tlv::parseV<coex::tlv::abm::AntBlockBandInformationSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  result = tlv::parseSequence<coex::tlv::abm::AntBandInfoSet>((v5 + 1), v6, a3, *v5);
  *a1 = result;
  return result;
}

void sub_296FA7584(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA7574);
}

uint64_t tlv::size<coex::tlv::abm::AntBlockBandInformationSet>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  v3 = v1 - v2 - 32;
  if (v3 >= 0x80)
  {
    v7 = (v3 >> 5) + 1;
    v8 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v8 = 4;
    }

    v9 = v7 - v8;
    v5 = v2 + 32 * v9;
    v10 = (v2 + 72);
    v11 = 0uLL;
    v12 = vdupq_n_s64(2uLL);
    v13 = 0uLL;
    do
    {
      v14 = v10 - 8;
      v16 = vld4q_f64(v14);
      v17 = vld4q_f64(v10);
      v11 = vaddq_s64(vbslq_s8(vceqq_s64(v16.val[1], v16.val[0]), v12, vorrq_s8(vsubq_s64(v16.val[1], v16.val[0]), v12)), v11);
      v13 = vaddq_s64(vbslq_s8(vceqq_s64(v17.val[1], v17.val[0]), v12, vorrq_s8(vsubq_s64(v17.val[1], v17.val[0]), v12)), v13);
      v10 += 16;
      v9 -= 4;
    }

    while (v9);
    v4 = vaddvq_s64(vaddq_s64(v13, v11));
  }

  else
  {
    v4 = 0;
    v5 = *a1;
  }

  do
  {
    v15 = (*(v5 + 16) - *(v5 + 8)) | 2;
    if (*(v5 + 16) == *(v5 + 8))
    {
      v15 = 2;
    }

    v4 += v15;
    v5 += 32;
  }

  while (v5 != v1);
  return v4 + 4;
}

_BYTE **tlv::writeV<coex::tlv::abm::AntBlockBandInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = (a2[2] - *a2) >> 5;
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 == v5)
  {
    *result = v3;
  }

  else
  {
    do
    {
      *v3 = *v4;
      v6 = v3 + 2;
      v3[1] = (*(v4 + 16) - *(v4 + 8)) >> 2;
      v8 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (v8 != v7)
      {
        v9 = v7 - v8 - 4;
        if (v9 < 0x1C)
        {
          goto LABEL_15;
        }

        if ((v3 - v8 + 2) < 0x20)
        {
          goto LABEL_15;
        }

        v10 = (v9 >> 2) + 1;
        v11 = 4 * (v10 & 0x7FFFFFFFFFFFFFF8);
        v6 = (v6 + v11);
        v12 = &v8[v11];
        v13 = (v8 + 16);
        v14 = v3 + 18;
        v15 = v10 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v16 = *v13;
          *(v14 - 1) = *(v13 - 1);
          *v14 = v16;
          v13 += 2;
          v14 += 2;
          v15 -= 8;
        }

        while (v15);
        v8 = v12;
        if (v10 != (v10 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_15:
          do
          {
            v17 = *v8;
            v8 += 4;
            *v6++ = v17;
          }

          while (v8 != v7);
        }
      }

      v4 += 32;
      v3 = v6;
    }

    while (v4 != v5);
    *result = v6;
  }

  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::AntMapInfoSet>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FA77F4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<coex::tlv::abm::AntMapInfoSet>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

tlv *coex::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, uint64_t a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v6 = (a1 + 1);
  v7 = v8;
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = &v10[-*a3];
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = &v9[v7];
      *(a3 + 8) = &v9[v7];
    }
  }

  else
  {
    v14 = *(a3 + 16);
    if (v14 - v10 >= v13)
    {
      bzero(*(a3 + 8), v13);
      *(a3 + 8) = &v10[v13];
      v10 += v13;
    }

    else
    {
      v15 = v14 - v9;
      v16 = 2 * v15;
      if (2 * v15 <= v7)
      {
        v16 = v7;
      }

      if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      v18 = operator new(v17);
      v19 = &v18[v17];
      v10 = &v18[v7];
      bzero(&v18[v11], v13);
      memcpy(v18, v9, v11);
      *a3 = v18;
      *(a3 + 8) = &v18[v7];
      *(a3 + 16) = v19;
      if (v9)
      {
        operator delete(v9);
        v9 = *a3;
        v10 = *(a3 + 8);
      }

      else
      {
        v9 = v18;
      }
    }
  }

  while (v9 != v10)
  {
    tlv::throwIfNotEnoughBytes(v6, a2, 1);
    v20 = *v6;
    v6 = (v6 + 1);
    *v9++ = v20;
  }

  return v6;
}

uint64_t coex::tlv::abm::getFieldSize(void *a1)
{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 1;
  }

  else
  {
    return v1 - *a1 + 1;
  }
}

tlv *tlv::parseV<coex::tlv::abm::AntMapInformationSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = coex::tlv::abm::parseField(*a1, *a1 + a2, a3);
  *a1 = result;
  return result;
}

void sub_296FA7A44(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA7A38);
}

void sub_296FA7A54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tlv::size<coex::tlv::abm::AntMapInformationSet>(void *a1)
{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 4;
  }

  else
  {
    return v1 - *a1 + 4;
  }
}

void *tlv::writeV<coex::tlv::abm::AntMapInformationSet>(void *result, _DWORD *a2)
{
  v2 = *result;
  v3 = *result;
  *v3 = a2[2] - *a2;
  v4 = v3 + 1;
  v6 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    v7 = v5 - v6;
    if ((v5 - v6) < 0x20)
    {
      goto LABEL_11;
    }

    if ((v2 - v6 + 1) < 0x20)
    {
      goto LABEL_11;
    }

    v4 += v7 & 0xFFFFFFFFFFFFFFE0;
    v8 = &v6[v7 & 0xFFFFFFFFFFFFFFE0];
    v9 = (v6 + 16);
    v10 = v2 + 17;
    v11 = v7 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 32;
    }

    while (v11);
    v6 = v8;
    if (v7 != (v7 & 0xFFFFFFFFFFFFFFE0))
    {
LABEL_11:
      do
      {
        v13 = *v6++;
        *v4++ = v13;
      }

      while (v6 != v5);
    }
  }

  *result = v4;
  return result;
}

char *coex::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, BOOL *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

BOOL tlv::parseV<coex::tlv::abm::Enabled>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FA7BB4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<coex::tlv::abm::Enabled>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

BOOL tlv::parseV<coex::tlv::abm::EnableMmwTxInfo>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FA7C84(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<coex::tlv::abm::EnableMmwTxInfo>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::CriticalCarrierId>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FA7D44(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::CriticalCarrierId>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::SecondaryCriticalCarrierId>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FA7E04(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::SecondaryCriticalCarrierId>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::GnssBandId>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FA7EC4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::GnssBandId>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::GnssL5Level>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FA7F84(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::GnssL5Level>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

tlv *coex::tlv::abm::parseField(coex::tlv::abm *this, unsigned __int8 *a2, unsigned __int8 *a3, coex::tlv::abm::AntBlockClientInfoSet *a4)
{
  tlv::throwIfNotEnoughBytes(this, a2, 4);
  *a3 = *this;
  tlv::throwIfNotEnoughBytes((this + 4), a2, 4);
  *(a3 + 1) = *(this + 1);
  tlv::throwIfNotEnoughBytes((this + 8), a2, 1);
  a3[8] = *(this + 8) != 0;
  tlv::throwIfNotEnoughBytes((this + 9), a2, 1);
  v7 = *(this + 9);

  return tlv::parseSequence<coex::tlv::abm::AntBandInfoSet>((this + 10), a2, (a3 + 16), v7);
}

char *coex::tlv::abm::writeField(coex::tlv::abm *this, unsigned __int8 *a2, const coex::tlv::abm::AntBlockClientInfoSet *a3)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 8) = a2[8];
  v3 = this + 10;
  *(this + 9) = (*(a2 + 6) - *(a2 + 4)) >> 5;
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  if (v4 == v5)
  {
    return this + 10;
  }

  do
  {
    *v3 = *v4;
    result = v3 + 2;
    v3[1] = (*(v4 + 4) - *(v4 + 2)) >> 2;
    v8 = *(v4 + 1);
    v7 = *(v4 + 2);
    if (v8 != v7)
    {
      v9 = v7 - v8 - 4;
      if (v9 < 0x1C)
      {
        goto LABEL_15;
      }

      if ((v3 - v8 + 2) < 0x20)
      {
        goto LABEL_15;
      }

      v10 = (v9 >> 2) + 1;
      v11 = 4 * (v10 & 0x7FFFFFFFFFFFFFF8);
      result += v11;
      v12 = &v8[v11];
      v13 = (v8 + 16);
      v14 = v3 + 18;
      v15 = v10 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 8;
      }

      while (v15);
      v8 = v12;
      if (v10 != (v10 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_15:
        do
        {
          v17 = *v8;
          v8 += 4;
          *result = v17;
          result += 4;
        }

        while (v8 != v7);
      }
    }

    v4 += 32;
    v3 = result;
  }

  while (v4 != v5);
  return result;
}

uint64_t coex::tlv::abm::getFieldSize(coex::tlv::abm *this, const coex::tlv::abm::AntBlockClientInfoSet *a2)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  if (v3 == v2)
  {
    return 10;
  }

  v4 = v2 - v3 - 32;
  if (v4 >= 0x80)
  {
    v8 = (v4 >> 5) + 1;
    v9 = v8 & 3;
    if ((v8 & 3) == 0)
    {
      v9 = 4;
    }

    v10 = v8 - v9;
    v6 = v3 + 32 * v10;
    v11 = (v3 + 72);
    v12 = 0uLL;
    v13 = vdupq_n_s64(2uLL);
    v14 = 0uLL;
    do
    {
      v15 = v11 - 8;
      v17 = vld4q_f64(v15);
      v18 = vld4q_f64(v11);
      v12 = vaddq_s64(vbslq_s8(vceqq_s64(v17.val[1], v17.val[0]), v13, vorrq_s8(vsubq_s64(v17.val[1], v17.val[0]), v13)), v12);
      v14 = vaddq_s64(vbslq_s8(vceqq_s64(v18.val[1], v18.val[0]), v13, vorrq_s8(vsubq_s64(v18.val[1], v18.val[0]), v13)), v14);
      v11 += 16;
      v10 -= 4;
    }

    while (v10);
    v5 = vaddvq_s64(vaddq_s64(v14, v12));
  }

  else
  {
    v5 = 0;
    v6 = *(this + 2);
  }

  do
  {
    v16 = (*(v6 + 16) - *(v6 + 8)) | 2;
    if (*(v6 + 16) == *(v6 + 8))
    {
      v16 = 2;
    }

    v5 += v16;
    v6 += 32;
  }

  while (v6 != v2);
  return v5 + 10;
}

tlv *tlv::parseV<coex::tlv::abm::AntBlockClientInfoSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *a3 = 0;
  *(a3 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a3 + 8) = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 4);
  *a3 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 4), v6, 4);
  *(a3 + 4) = *(v5 + 1);
  tlv::throwIfNotEnoughBytes((v5 + 8), v6, 1);
  *(a3 + 8) = *(v5 + 8) != 0;
  tlv::throwIfNotEnoughBytes((v5 + 9), v6, 1);
  result = tlv::parseSequence<coex::tlv::abm::AntBandInfoSet>((v5 + 10), v6, a3 + 16, *(v5 + 9));
  *a1 = result;
  return result;
}

void sub_296FA8304(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA82F0);
}

uint64_t tlv::size<coex::tlv::abm::AntBlockClientInfoSet>(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  if (v2 == v1)
  {
    return 13;
  }

  v3 = v1 - v2 - 32;
  if (v3 >= 0x80)
  {
    v7 = (v3 >> 5) + 1;
    v8 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v8 = 4;
    }

    v9 = v7 - v8;
    v5 = v2 + 32 * v9;
    v10 = (v2 + 72);
    v11 = 0uLL;
    v12 = vdupq_n_s64(2uLL);
    v13 = 0uLL;
    do
    {
      v14 = v10 - 8;
      v16 = vld4q_f64(v14);
      v17 = vld4q_f64(v10);
      v11 = vaddq_s64(vbslq_s8(vceqq_s64(v16.val[1], v16.val[0]), v12, vorrq_s8(vsubq_s64(v16.val[1], v16.val[0]), v12)), v11);
      v13 = vaddq_s64(vbslq_s8(vceqq_s64(v17.val[1], v17.val[0]), v12, vorrq_s8(vsubq_s64(v17.val[1], v17.val[0]), v12)), v13);
      v10 += 16;
      v9 -= 4;
    }

    while (v9);
    v4 = vaddvq_s64(vaddq_s64(v13, v11));
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 16);
  }

  do
  {
    v15 = (*(v5 + 16) - *(v5 + 8)) | 2;
    if (*(v5 + 16) == *(v5 + 8))
    {
      v15 = 2;
    }

    v4 += v15;
    v5 += 32;
  }

  while (v5 != v1);
  return v4 + 13;
}

uint64_t *tlv::writeV<coex::tlv::abm::AntBlockClientInfoSet>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  v3 = (v2 + 10);
  *(v2 + 9) = (*(a2 + 24) - *(a2 + 16)) >> 5;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    *result = v3;
  }

  else
  {
    do
    {
      *v3 = *v4;
      v6 = v3 + 2;
      v3[1] = (*(v4 + 16) - *(v4 + 8)) >> 2;
      v8 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (v8 != v7)
      {
        v9 = v7 - v8 - 4;
        if (v9 < 0x1C)
        {
          goto LABEL_15;
        }

        if ((v3 - v8 + 2) < 0x20)
        {
          goto LABEL_15;
        }

        v10 = (v9 >> 2) + 1;
        v11 = 4 * (v10 & 0x7FFFFFFFFFFFFFF8);
        v6 = (v6 + v11);
        v12 = &v8[v11];
        v13 = (v8 + 16);
        v14 = v3 + 18;
        v15 = v10 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v16 = *v13;
          *(v14 - 1) = *(v13 - 1);
          *v14 = v16;
          v13 += 2;
          v14 += 2;
          v15 -= 8;
        }

        while (v15);
        v8 = v12;
        if (v10 != (v10 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_15:
          do
          {
            v17 = *v8;
            v8 += 4;
            *v6++ = v17;
          }

          while (v8 != v7);
        }
      }

      v4 += 32;
      v3 = v6;
    }

    while (v4 != v5);
    *result = v6;
  }

  return result;
}

tlv *coex::tlv::abm::parseField(coex::tlv::abm *this, unsigned __int8 *a2, const unsigned __int8 *a3, coex::tlv::abm::ClientAntBlockInformationSet *a4)
{
  tlv::throwIfNotEnoughBytes(this, a2, 1);
  v7 = *this;

  return tlv::parseSequence<coex::tlv::abm::AntBlockClientInfoSet>((this + 1), a2, a3, v7);
}

tlv *tlv::parseSequence<coex::tlv::abm::AntBlockClientInfoSet>(tlv *this, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v8 = *a3;
  v7 = *(a3 + 8);
  v9 = &v7[-*a3];
  v10 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 3);
  v11 = a4 - v10;
  if (a4 <= v10)
  {
    if (a4 >= v10)
    {
      v19 = *(a3 + 8);
      v31 = *a3;
      goto LABEL_43;
    }

    v19 = &v8[40 * a4];
    while (v7 != v19)
    {
      v28 = *(v7 - 3);
      if (v28)
      {
        v29 = *(v7 - 2);
        v27 = *(v7 - 3);
        if (v29 != v28)
        {
          do
          {
            v30 = *(v29 - 24);
            if (v30)
            {
              *(v29 - 16) = v30;
              operator delete(v30);
            }

            v29 -= 32;
          }

          while (v29 != v28);
          v27 = *(v7 - 3);
        }

        *(v7 - 2) = v28;
        operator delete(v27);
      }

      v7 -= 40;
    }

    goto LABEL_36;
  }

  v12 = *(a3 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v7) >> 3) >= v11)
  {
    bzero(*(a3 + 8), 40 * ((40 * v11 - 40) / 0x28) + 40);
    v19 = &v7[40 * ((40 * v11 - 40) / 0x28) + 40];
LABEL_36:
    *(a3 + 8) = v19;
LABEL_37:
    v31 = *a3;
    goto LABEL_43;
  }

  if (a4 > 0x666666666666666)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v13 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 3);
  v14 = 2 * v13;
  if (2 * v13 <= a4)
  {
    v14 = a4;
  }

  if (v13 >= 0x333333333333333)
  {
    v15 = 0x666666666666666;
  }

  else
  {
    v15 = v14;
  }

  if (v15 > 0x666666666666666)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v16 = 40 * v15;
  v17 = operator new(40 * v15);
  v18 = &v17[v9];
  v34 = &v17[v16];
  bzero(v18, 40 * ((40 * v11 - 40) / 0x28) + 40);
  v19 = &v18[40 * ((40 * v11 - 40) / 0x28) + 40];
  if (v8 != v7)
  {
    v20 = v8;
    v21 = v17;
    do
    {
      v22 = *v20;
      v21[8] = v20[8];
      *v21 = v22;
      *(v21 + 1) = *(v20 + 1);
      *(v21 + 4) = *(v20 + 4);
      *(v20 + 2) = 0;
      *(v20 + 3) = 0;
      *(v20 + 4) = 0;
      v20 += 40;
      v21 += 40;
    }

    while (v20 != v7);
    do
    {
      v24 = *(v8 + 2);
      if (v24)
      {
        v25 = *(v8 + 3);
        v23 = *(v8 + 2);
        if (v25 != v24)
        {
          do
          {
            v26 = *(v25 - 24);
            if (v26)
            {
              *(v25 - 16) = v26;
              operator delete(v26);
            }

            v25 -= 32;
          }

          while (v25 != v24);
          v23 = *(v8 + 2);
        }

        *(v8 + 3) = v24;
        operator delete(v23);
      }

      v8 += 40;
    }

    while (v8 != v7);
    v8 = *a3;
  }

  *a3 = v17;
  *(a3 + 8) = v19;
  *(a3 + 16) = v34;
  if (!v8)
  {
    goto LABEL_37;
  }

  operator delete(v8);
  v32 = a3;
  v31 = *a3;
  v19 = *(v32 + 8);
LABEL_43:
  while (v31 != v19)
  {
    tlv::throwIfNotEnoughBytes(this, a2, 4);
    *v31 = *this;
    tlv::throwIfNotEnoughBytes((this + 4), a2, 4);
    *(v31 + 1) = *(this + 1);
    tlv::throwIfNotEnoughBytes((this + 8), a2, 1);
    v31[8] = *(this + 8) != 0;
    tlv::throwIfNotEnoughBytes((this + 9), a2, 1);
    this = tlv::parseSequence<coex::tlv::abm::AntBandInfoSet>((this + 10), a2, (v31 + 16), *(this + 9));
    v31 += 40;
  }

  return this;
}

tlv *tlv::parseV<coex::tlv::abm::ClientAntBlockInformationSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  result = tlv::parseSequence<coex::tlv::abm::AntBlockClientInfoSet>((v5 + 1), v6, a3, *v5);
  *a1 = result;
  return result;
}

void sub_296FA8B38(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA8B28);
}

uint64_t tlv::size<coex::tlv::abm::ClientAntBlockInformationSet>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 4;
  }

  v3 = 0;
  do
  {
    while (1)
    {
      v5 = *(v1 + 16);
      v4 = *(v1 + 24);
      if (v5 != v4)
      {
        break;
      }

      v3 += 10;
      v1 += 40;
      if (v1 == v2)
      {
        return v3 + 4;
      }
    }

    v6 = v4 - v5 - 32;
    if (v6 >= 0x80)
    {
      v9 = (v6 >> 5) + 1;
      v10 = v9 & 3;
      if ((v9 & 3) == 0)
      {
        v10 = 4;
      }

      v11 = v9 - v10;
      v8 = v5 + 32 * v11;
      v12 = (v5 + 72);
      v13 = 0uLL;
      v14 = 0uLL;
      do
      {
        v15 = v12 - 8;
        v18 = vld4q_f64(v15);
        v19 = vld4q_f64(v12);
        v18.val[2] = vdupq_n_s64(2uLL);
        v13 = vaddq_s64(vbslq_s8(vceqq_s64(v18.val[1], v18.val[0]), v18.val[2], vorrq_s8(vsubq_s64(v18.val[1], v18.val[0]), v18.val[2])), v13);
        v14 = vaddq_s64(vbslq_s8(vceqq_s64(v19.val[1], v19.val[0]), v18.val[2], vorrq_s8(vsubq_s64(v19.val[1], v19.val[0]), v18.val[2])), v14);
        v12 += 16;
        v11 -= 4;
      }

      while (v11);
      v7 = vaddvq_s64(vaddq_s64(v14, v13));
    }

    else
    {
      v7 = 0;
      v8 = *(v1 + 16);
    }

    do
    {
      v16 = (*(v8 + 16) - *(v8 + 8)) | 2;
      if (*(v8 + 16) == *(v8 + 8))
      {
        v16 = 2;
      }

      v7 += v16;
      v8 += 32;
    }

    while (v8 != v4);
    v3 += v7 + 10;
    v1 += 40;
  }

  while (v1 != v2);
  return v3 + 4;
}

_BYTE **tlv::writeV<coex::tlv::abm::ClientAntBlockInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = -51 * ((a2[2] - *a2) >> 3);
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      while (1)
      {
        *v3 = *v4;
        *(v3 + 1) = *(v4 + 4);
        v3[8] = *(v4 + 8);
        v6 = v3 + 10;
        v3[9] = (*(v4 + 24) - *(v4 + 16)) >> 5;
        v7 = *(v4 + 16);
        v8 = *(v4 + 24);
        if (v7 != v8)
        {
          break;
        }

        v3 += 10;
        v4 += 40;
        if (v4 == v5)
        {
          goto LABEL_2;
        }
      }

      do
      {
        *v6 = *v7;
        v3 = v6 + 2;
        v6[1] = (*(v7 + 16) - *(v7 + 8)) >> 2;
        v10 = *(v7 + 8);
        v9 = *(v7 + 16);
        if (v10 != v9)
        {
          v11 = v9 - v10 - 4;
          if (v11 < 0x1C)
          {
            goto LABEL_18;
          }

          if ((v6 - v10 + 2) < 0x20)
          {
            goto LABEL_18;
          }

          v12 = (v11 >> 2) + 1;
          v13 = 4 * (v12 & 0x7FFFFFFFFFFFFFF8);
          v3 += v13;
          v14 = &v10[v13];
          v15 = (v10 + 16);
          v16 = v6 + 18;
          v17 = v12 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v18 = *v15;
            *(v16 - 1) = *(v15 - 1);
            *v16 = v18;
            v15 += 2;
            v16 += 2;
            v17 -= 8;
          }

          while (v17);
          v10 = v14;
          if (v12 != (v12 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_18:
            do
            {
              v19 = *v10;
              v10 += 4;
              *v3 = v19;
              v3 += 4;
            }

            while (v10 != v9);
          }
        }

        v7 += 32;
        v6 = v3;
      }

      while (v7 != v8);
      v4 += 40;
    }

    while (v4 != v5);
  }

LABEL_2:
  *result = v3;
  return result;
}

tlv *coex::tlv::abm::parseField(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v6 = *a1;

  return tlv::parseSequence<coex::tlv::abm::AntBlockClientInfoSet>((a1 + 1), a2, a3, v6);
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v6 = *a1;

  return tlv::parseSequence<coex::tlv::abm::TransparentMessageInfoSet>((a1 + 1), a2, a3, v6);
}

tlv *tlv::parseV<coex::tlv::abm::ClientAntBlockInformationSetExtended>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  result = tlv::parseSequence<coex::tlv::abm::AntBlockClientInfoSet>((v5 + 1), v6, a3, *v5);
  *a1 = result;
  return result;
}

void sub_296FA90C8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA90B8);
}

uint64_t tlv::size<coex::tlv::abm::ClientAntBlockInformationSetExtended>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 4;
  }

  v3 = 0;
  do
  {
    while (1)
    {
      v5 = *(v1 + 16);
      v4 = *(v1 + 24);
      if (v5 != v4)
      {
        break;
      }

      v3 += 10;
      v1 += 40;
      if (v1 == v2)
      {
        return v3 + 4;
      }
    }

    v6 = v4 - v5 - 32;
    if (v6 >= 0x80)
    {
      v9 = (v6 >> 5) + 1;
      v10 = v9 & 3;
      if ((v9 & 3) == 0)
      {
        v10 = 4;
      }

      v11 = v9 - v10;
      v8 = v5 + 32 * v11;
      v12 = (v5 + 72);
      v13 = 0uLL;
      v14 = 0uLL;
      do
      {
        v15 = v12 - 8;
        v18 = vld4q_f64(v15);
        v19 = vld4q_f64(v12);
        v18.val[2] = vdupq_n_s64(2uLL);
        v13 = vaddq_s64(vbslq_s8(vceqq_s64(v18.val[1], v18.val[0]), v18.val[2], vorrq_s8(vsubq_s64(v18.val[1], v18.val[0]), v18.val[2])), v13);
        v14 = vaddq_s64(vbslq_s8(vceqq_s64(v19.val[1], v19.val[0]), v18.val[2], vorrq_s8(vsubq_s64(v19.val[1], v19.val[0]), v18.val[2])), v14);
        v12 += 16;
        v11 -= 4;
      }

      while (v11);
      v7 = vaddvq_s64(vaddq_s64(v14, v13));
    }

    else
    {
      v7 = 0;
      v8 = *(v1 + 16);
    }

    do
    {
      v16 = (*(v8 + 16) - *(v8 + 8)) | 2;
      if (*(v8 + 16) == *(v8 + 8))
      {
        v16 = 2;
      }

      v7 += v16;
      v8 += 32;
    }

    while (v8 != v4);
    v3 += v7 + 10;
    v1 += 40;
  }

  while (v1 != v2);
  return v3 + 4;
}

_BYTE **tlv::writeV<coex::tlv::abm::ClientAntBlockInformationSetExtended>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = -51 * ((a2[2] - *a2) >> 3);
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    do
    {
      while (1)
      {
        *v3 = *v4;
        *(v3 + 1) = *(v4 + 4);
        v3[8] = *(v4 + 8);
        v6 = v3 + 10;
        v3[9] = (*(v4 + 24) - *(v4 + 16)) >> 5;
        v7 = *(v4 + 16);
        v8 = *(v4 + 24);
        if (v7 != v8)
        {
          break;
        }

        v3 += 10;
        v4 += 40;
        if (v4 == v5)
        {
          goto LABEL_2;
        }
      }

      do
      {
        *v6 = *v7;
        v3 = v6 + 2;
        v6[1] = (*(v7 + 16) - *(v7 + 8)) >> 2;
        v10 = *(v7 + 8);
        v9 = *(v7 + 16);
        if (v10 != v9)
        {
          v11 = v9 - v10 - 4;
          if (v11 < 0x1C)
          {
            goto LABEL_18;
          }

          if ((v6 - v10 + 2) < 0x20)
          {
            goto LABEL_18;
          }

          v12 = (v11 >> 2) + 1;
          v13 = 4 * (v12 & 0x7FFFFFFFFFFFFFF8);
          v3 += v13;
          v14 = &v10[v13];
          v15 = (v10 + 16);
          v16 = v6 + 18;
          v17 = v12 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v18 = *v15;
            *(v16 - 1) = *(v15 - 1);
            *v16 = v18;
            v15 += 2;
            v16 += 2;
            v17 -= 8;
          }

          while (v17);
          v10 = v14;
          if (v12 != (v12 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_18:
            do
            {
              v19 = *v10;
              v10 += 4;
              *v3 = v19;
              v3 += 4;
            }

            while (v10 != v9);
          }
        }

        v7 += 32;
        v6 = v3;
      }

      while (v7 != v8);
      v4 += 40;
    }

    while (v4 != v5);
  }

LABEL_2:
  *result = v3;
  return result;
}

void *tlv::parseV<coex::tlv::abm::TransparentMessageInfoSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  a3[1] = 0;
  v5 = a3 + 1;
  *a3 = 0xAAAAAAAA00000000;
  a3[2] = 0;
  a3[3] = 0;
  v6 = *a1;
  v7 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v7, 4);
  *a3 = *v6;
  tlv::throwIfNotEnoughBytes((v6 + 4), v7, 1);
  v8 = *(v6 + 4);
  v6 = (v6 + 5);
  tlv::throwIfNotEnoughBytes(v6, v7, v8);
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v5, v6, v6 + v8, v8);
  *a1 = (v6 + v8);
  return result;
}

void sub_296FA94E4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA94D0);
}

void sub_296FA94F4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<coex::tlv::abm::TransparentMessageInfoSet>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *v4 = *a2;
  v5 = *(a2 + 8);
  v6 = (*(a2 + 16) - v5);
  v7 = v4 + 5;
  *(v4 + 4) = *(a2 + 16) - v5;
  result = memcpy((v4 + 5), *(a2 + 8), *(a2 + 16) - *(a2 + 8));
  *a1 = v7 + *(a2 + 16) - *(a2 + 8);
  return result;
}

tlv *tlv::parseSequence<coex::tlv::abm::TransparentMessageInfoSet>(tlv *this, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v8 = *a3;
  v7 = *(a3 + 8);
  v9 = &v7[-*a3];
  v10 = a4 - (v9 >> 5);
  if (a4 <= v9 >> 5)
  {
    if (a4 >= v9 >> 5)
    {
      v20 = *(a3 + 8);
      goto LABEL_28;
    }

    v20 = &v8[32 * a4];
    while (v7 != v20)
    {
      v24 = *(v7 - 3);
      if (v24)
      {
        *(v7 - 2) = v24;
        operator delete(v24);
      }

      v7 -= 32;
    }

LABEL_23:
    *(a3 + 8) = v20;
    goto LABEL_28;
  }

  v11 = *(a3 + 16);
  if (v10 <= (v11 - v7) >> 5)
  {
    bzero(*(a3 + 8), 32 * v10);
    v20 = &v7[32 * v10];
    goto LABEL_23;
  }

  if (a4 >> 59)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v12 = v11 - v8;
  v13 = v12 >> 4;
  if (v12 >> 4 <= a4)
  {
    v13 = a4;
  }

  v14 = v12 >= 0x7FFFFFFFFFFFFFE0;
  v15 = 0x7FFFFFFFFFFFFFFLL;
  if (!v14)
  {
    v15 = v13;
  }

  if (v15 >> 59)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v16 = 32 * v15;
  v17 = operator new(32 * v15);
  v18 = &v17[v9];
  v19 = &v17[v16];
  bzero(v18, 32 * v10);
  v20 = &v18[32 * v10];
  if (v8 != v7)
  {
    v21 = v8;
    v22 = v17;
    do
    {
      *v22 = *v21;
      *(v22 + 8) = *(v21 + 8);
      *(v22 + 3) = *(v21 + 3);
      *(v21 + 1) = 0;
      *(v21 + 2) = 0;
      *(v21 + 3) = 0;
      v21 += 32;
      v22 += 32;
    }

    while (v21 != v7);
    do
    {
      v23 = *(v8 + 1);
      if (v23)
      {
        *(v8 + 2) = v23;
        operator delete(v23);
      }

      v8 += 32;
    }

    while (v8 != v7);
    v8 = *a3;
  }

  *a3 = v17;
  *(a3 + 8) = v20;
  *(a3 + 16) = v19;
  if (v8)
  {
    operator delete(v8);
    v20 = *(a3 + 8);
  }

LABEL_28:
  v25 = *a3;
  if (*a3 != v20)
  {
    v26 = *a3;
    do
    {
      tlv::throwIfNotEnoughBytes(this, a2, 4);
      *v26 = *this;
      v26 += 32;
      tlv::throwIfNotEnoughBytes((this + 4), a2, 1);
      v27 = *(this + 4);
      v28 = this + 5;
      tlv::throwIfNotEnoughBytes((this + 5), a2, v27);
      this = (this + v27 + 5);
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v25 + 1, v28, &v28[v27], v27);
      v25 = v26;
    }

    while (v26 != v20);
  }

  return this;
}

tlv *tlv::parseV<coex::tlv::abm::TransparentMessageInformationSet>@<X0>(tlv **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  result = tlv::parseSequence<coex::tlv::abm::TransparentMessageInfoSet>((v5 + 1), v6, a3, *v5);
  *a1 = result;
  return result;
}

void sub_296FA99AC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA999CLL);
}

uint64_t tlv::size<coex::tlv::abm::TransparentMessageInformationSet>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 4;
  }

  v3 = v1 - v2 - 32;
  if (v3 >= 0x80)
  {
    v7 = (v3 >> 5) + 1;
    v8 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v8 = 4;
    }

    v9 = v7 - v8;
    v5 = v2 + 32 * v9;
    v10 = (v2 + 72);
    v11 = 0uLL;
    v12 = vdupq_n_s64(5uLL);
    v13 = 0uLL;
    do
    {
      v14 = v10 - 8;
      v15 = vld4q_f64(v14);
      v16 = vld4q_f64(v10);
      v11 = vaddq_s64(vsubq_s64(vaddq_s64(v11, v15.val[1]), v15.val[0]), v12);
      v13 = vaddq_s64(vsubq_s64(vaddq_s64(v13, v16.val[1]), v16.val[0]), v12);
      v10 += 16;
      v9 -= 4;
    }

    while (v9);
    v4 = vaddvq_s64(vaddq_s64(v13, v11));
  }

  else
  {
    v4 = 0;
    v5 = *a1;
  }

  do
  {
    v4 = v4 + *(v5 + 16) - *(v5 + 8) + 5;
    v5 += 32;
  }

  while (v5 != v1);
  return v4 + 4;
}

_BYTE **tlv::writeV<coex::tlv::abm::TransparentMessageInformationSet>(_BYTE **result, _DWORD *a2)
{
  v2 = result;
  v3 = *result;
  *v3 = (a2[2] - *a2) >> 5;
  v4 = v3 + 1;
  v5 = *a2;
  v6 = *(a2 + 1);
  if (*a2 != v6)
  {
    do
    {
      *v4 = *v5;
      v7 = *(v5 + 8);
      v8 = (*(v5 + 16) - v7);
      v9 = v4 + 5;
      v4[4] = *(v5 + 16) - v7;
      result = memcpy(v4 + 5, *(v5 + 8), *(v5 + 16) - *(v5 + 8));
      v4 = &v9[*(v5 + 16) - *(v5 + 8)];
      v5 += 32;
    }

    while (v5 != v6);
  }

  *v2 = v4;
  return result;
}

BOOL tlv::parseV<coex::tlv::abm::ReportWWANState>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FA9BBC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<coex::tlv::abm::ReportWWANState>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

BOOL tlv::parseV<coex::tlv::abm::ReportBLERStats>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FA9C8C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<coex::tlv::abm::ReportBLERStats>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

BOOL tlv::parseV<coex::tlv::abm::ReportFailCondition>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FA9D5C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<coex::tlv::abm::ReportFailCondition>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

BOOL tlv::parseV<coex::tlv::abm::ReportSuccessCondition>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FA9E2C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<coex::tlv::abm::ReportSuccessCondition>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

BOOL tlv::parseV<coex::tlv::abm::ReportTxAntennaState>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FA9EFC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<coex::tlv::abm::ReportTxAntennaState>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

BOOL tlv::parseV<coex::tlv::abm::ReportNRState>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FA9FCC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<coex::tlv::abm::ReportNRState>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

BOOL tlv::parseV<coex::tlv::abm::ReportWCI2TxAntMap>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FAA09C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<coex::tlv::abm::ReportWCI2TxAntMap>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::WLANScanID>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FAA15C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::WLANScanID>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::WLANConnectionHandle>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FAA21C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::WLANConnectionHandle>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::LTETransportBlockCountErrorThreshold>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FAA2DC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::LTETransportBlockCountErrorThreshold>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::LTETransportBlockCountErrorCount>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FAA39C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::LTETransportBlockCountErrorCount>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

float tlv::parseV<coex::tlv::abm::LTESINRMetricParameters>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

double sub_296FAA45C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0.0;
}

float tlv::writeV<coex::tlv::abm::LTESINRMetricParameters>(_DWORD **a1, float *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = *a2;
  *a1 = v2 + 1;
  return result;
}

float tlv::parseV<coex::tlv::abm::LTESINRFilteredOutput>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

double sub_296FAA51C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0.0;
}

float tlv::writeV<coex::tlv::abm::LTESINRFilteredOutput>(_DWORD **a1, float *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = *a2;
  *a1 = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::ContinuousTxSubframeDenialsStatus>(tlv **a1, unsigned int a2)
{
  v4 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 8);
  if (a2 >= 8)
  {
    result = *v4;
    *a1 = (v4 + 8);
  }

  else
  {
    result = 0;
    *a1 = v4;
  }

  return result;
}

uint64_t sub_296FAA620(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

void **tlv::writeV<coex::tlv::abm::ContinuousTxSubframeDenialsStatus>(void **result, void *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::QMITxPowerLimitEnforceFailure>(tlv **a1, unsigned int a2)
{
  v4 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 8);
  if (a2 >= 8)
  {
    result = *v4;
    *a1 = (v4 + 8);
  }

  else
  {
    result = 0;
    *a1 = v4;
  }

  return result;
}

uint64_t sub_296FAA728(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

void **tlv::writeV<coex::tlv::abm::QMITxPowerLimitEnforceFailure>(void **result, void *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::WCI2TxPowerLimitEnforceFailure>(tlv **a1, unsigned int a2)
{
  v4 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 8);
  if (a2 >= 8)
  {
    result = *v4;
    *a1 = (v4 + 8);
  }

  else
  {
    result = 0;
    *a1 = v4;
  }

  return result;
}

uint64_t sub_296FAA830(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

void **tlv::writeV<coex::tlv::abm::WCI2TxPowerLimitEnforceFailure>(void **result, void *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::WCI2MWSFrameSyncAssertOFFSET>(tlv **a1, int a2)
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

uint64_t sub_296FAA958(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<coex::tlv::abm::WCI2MWSFrameSyncAssertOFFSET>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::WCI2MWSFrameSyncAssertJITTER>(tlv **a1, int a2)
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

uint64_t sub_296FAAA94(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<coex::tlv::abm::WCI2MWSFrameSyncAssertJITTER>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::WCI2MWSRxAssertOFFSET>(tlv **a1, int a2)
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

uint64_t sub_296FAABD0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<coex::tlv::abm::WCI2MWSRxAssertOFFSET>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::WCI2MWSRxAssertJITTER>(tlv **a1, int a2)
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

uint64_t sub_296FAAD0C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<coex::tlv::abm::WCI2MWSRxAssertJITTER>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::WCI2MWSRxDeassertOFFSET>(tlv **a1, int a2)
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

uint64_t sub_296FAAE48(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<coex::tlv::abm::WCI2MWSRxDeassertOFFSET>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::WCI2MWSRxDeassertJITTER>(tlv **a1, int a2)
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

uint64_t sub_296FAAF84(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<coex::tlv::abm::WCI2MWSRxDeassertJITTER>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::WCI2MWSTxAssertOFFSET>(tlv **a1, int a2)
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

uint64_t sub_296FAB0C0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<coex::tlv::abm::WCI2MWSTxAssertOFFSET>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::WCI2MWSTxAssertJITTER>(tlv **a1, int a2)
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

uint64_t sub_296FAB1FC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<coex::tlv::abm::WCI2MWSTxAssertJITTER>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::WCI2MWSTxDeassertOFFSET>(tlv **a1, int a2)
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

uint64_t sub_296FAB338(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<coex::tlv::abm::WCI2MWSTxDeassertOFFSET>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::WCI2MWSTxDeassertJITTER>(tlv **a1, int a2)
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

uint64_t sub_296FAB474(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<coex::tlv::abm::WCI2MWSTxDeassertJITTER>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::TxPowerLimitEnforceSuccess>(tlv **a1, unsigned int a2)
{
  v4 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 8);
  if (a2 >= 8)
  {
    result = *v4;
    *a1 = (v4 + 8);
  }

  else
  {
    result = 0;
    *a1 = v4;
  }

  return result;
}

uint64_t sub_296FAB590(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

void **tlv::writeV<coex::tlv::abm::TxPowerLimitEnforceSuccess>(void **result, void *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::CallType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 8);
  result = *v3;
  *a1 = (v3 + 8);
  return result;
}

uint64_t sub_296FAB654(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

void **tlv::writeV<coex::tlv::abm::CallType>(void **result, void *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::LongDrxCycle>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FAB714(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<coex::tlv::abm::LongDrxCycle>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::ShortDrxTimer>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FAB7D4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<coex::tlv::abm::ShortDrxTimer>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::SleepWakeDurScale>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FAB894(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<coex::tlv::abm::SleepWakeDurScale>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::DefaultIdx>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FAB954(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<coex::tlv::abm::DefaultIdx>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::ThresholdInPercentage>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FABA14(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<coex::tlv::abm::ThresholdInPercentage>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::ThresholdOutPercentage>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FABAD4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<coex::tlv::abm::ThresholdOutPercentage>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::DeactivationTimerMs>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FABB94(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::DeactivationTimerMs>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::StopDeactivationTimerMs>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FABC54(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::StopDeactivationTimerMs>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::ThrottlePeriodicity>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FABD14(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::ThrottlePeriodicity>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::ClientId>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FABDD4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::ClientId>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t coex::tlv::abm::parseField(coex::tlv::abm *this, const unsigned __int8 *a2, unsigned __int8 *a3, Duration *a4)
{
  tlv::throwIfNotEnoughBytes(this, a2, 4);
  *a3 = *this;
  return this + 4;
}

uint64_t tlv::parseV<coex::tlv::abm::Duration>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FABE94(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<coex::tlv::abm::Duration>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

void coex::tlv::abm::AntBlockBandInformationSet::~AntBlockBandInformationSet(coex::tlv::abm::AntBlockBandInformationSet *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 1);
    v4 = *this;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *this;
    }

    *(this + 1) = v2;
    operator delete(v4);
  }
}

void coex::tlv::abm::ClientAntBlockInformationSet::~ClientAntBlockInformationSet(coex::tlv::abm::ClientAntBlockInformationSet *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 1);
    v4 = *this;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 24);
        if (v6)
        {
          v7 = *(v3 - 16);
          v5 = *(v3 - 24);
          if (v7 != v6)
          {
            do
            {
              v8 = *(v7 - 24);
              if (v8)
              {
                *(v7 - 16) = v8;
                operator delete(v8);
              }

              v7 -= 32;
            }

            while (v7 != v6);
            v5 = *(v3 - 24);
          }

          *(v3 - 16) = v6;
          operator delete(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = *this;
    }

    *(this + 1) = v2;
    operator delete(v4);
  }
}

void std::vector<coex::tlv::abm::NGCCarrierInformation>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v3 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v13 = 28 * ((28 * a2 - 28) / 0x1C) + 28;
      bzero(*(a1 + 8), v13);
      v4 += v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 2);
    if (v7 + a2 > 0x924924924924924)
    {
      std::vector<coex::tlv::abm::LTECarrierInformation>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v3 - v5) >> 2);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + a2)
    {
      v9 = v7 + a2;
    }

    if (v8 >= 0x492492492492492)
    {
      v10 = 0x924924924924924;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (v10 > 0x924924924924924)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v11 = a2;
      v12 = operator new(28 * v10);
      a2 = v11;
    }

    else
    {
      v12 = 0;
    }

    v14 = &v12[4 * (v6 >> 2)];
    v15 = &v12[28 * v10];
    v16 = 28 * ((28 * a2 - 28) / 0x1C) + 28;
    bzero(v14, v16);
    v17 = &v14[v16];
    v18 = &v14[-v6];
    memcpy(v18, v5, v6);
    *a1 = v18;
    *(a1 + 8) = v17;
    *(a1 + 16) = v15;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<coex::tlv::abm::BandInfo>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
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

void std::vector<int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 4 * __n;
      bzero(this->__end_, 4 * __n);
      end = (end + v12);
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v6 = end - this->__begin_;
    v7 = (v6 >> 2) + __n;
    if (v7 >> 62)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - begin;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 >> 62)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v10 = __n;
      v11 = operator new(4 * v9);
      __n = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = 4 * __n;
    bzero(&v11[4 * (v6 >> 2)], 4 * __n);
    memcpy(v11, begin, v6);
    this->__begin_ = v11;
    this->__end_ = &v11[4 * (v6 >> 2) + v13];
    this->__end_cap_.__value_ = &v11[4 * v9];
    if (begin)
    {

      operator delete(begin);
    }
  }
}

char *wda::parseField(tlv *a1, const unsigned __int8 *a2, _DWORD *a3)
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

_DWORD *wda::writeField(_DWORD *a1, int a2)
{
  *a1 = a2;
  return a1 + 1;
}

{
  *a1 = a2;
  return a1 + 1;
}

{
  *a1 = a2;
  return a1 + 1;
}

{
  *a1 = a2;
  return a1 + 1;
}

{
  *a1 = a2;
  return a1 + 1;
}

{
  *a1 = a2;
  return a1 + 1;
}

uint64_t wda::getFieldSize()
{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 1;
}

char *wda::parseField(tlv *a1, const unsigned __int8 *a2, _BYTE *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

char *wda::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _DWORD *a3)
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
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

_DWORD *wda::tlv::abm::writeField(_DWORD *a1, _DWORD *a2)
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

uint64_t wda::tlv::abm::getFieldSize()
{
  return 4;
}

{
  return 8;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 2;
}

{
  return 4;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

uint64_t tlv::parseV<wda::tlv::abm::LinkLayerProtocol>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FAC6B0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<wda::tlv::abm::LinkLayerProtocol>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t wda::tlv::abm::parseField(uint64_t a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

uint64_t tlv::parseV<wda::tlv::abm::PeripheralEndPointID>(tlv **a1, int a2)
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

uint64_t sub_296FAC7D4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<wda::tlv::abm::PeripheralEndPointID>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<wda::tlv::abm::DownLinkDataAggregationProtocol>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FAC8AC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<wda::tlv::abm::DownLinkDataAggregationProtocol>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<wda::tlv::abm::DownLinkDataAggregationMaxDatagrams>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FAC96C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<wda::tlv::abm::DownLinkDataAggregationMaxDatagrams>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<wda::tlv::abm::DownLinkDataAggregationMaxSize>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FACA2C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<wda::tlv::abm::DownLinkDataAggregationMaxSize>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<wda::tlv::abm::UpLinkDataAggregationProtocol>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FACAEC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<wda::tlv::abm::UpLinkDataAggregationProtocol>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<wda::tlv::abm::UpLinkDataAggregationMaxDatagrams>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FACBAC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<wda::tlv::abm::UpLinkDataAggregationMaxDatagrams>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<wda::tlv::abm::UpLinkDataAggregationMaxSize>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FACC6C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<wda::tlv::abm::UpLinkDataAggregationMaxSize>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *wda::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, BOOL *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

_BYTE *wda::tlv::abm::writeField(_BYTE *a1, _BYTE *a2)
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

BOOL tlv::parseV<wda::tlv::abm::InBandFlowControl>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FACD3C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<wda::tlv::abm::InBandFlowControl>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

BOOL tlv::parseV<wda::tlv::abm::DataFlowControl>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FACE0C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<wda::tlv::abm::DataFlowControl>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t wda::tlv::abm::parseField(uint64_t a1, const unsigned __int8 *a2, BOOL *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 1);
  a3[1] = *(a1 + 1) != 0;
  return a1 + 2;
}

uint64_t tlv::parseV<wda::tlv::abm::CoalescingInformation>(tlv **a1, int a2)
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

uint64_t sub_296FACF48(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_BYTE **tlv::writeV<wda::tlv::abm::CoalescingInformation>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

uint64_t tlv::parseV<wda::tlv::abm::DataPowerSaveConfig>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FAD01C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<wda::tlv::abm::DataPowerSaveConfig>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<wda::tlv::abm::DefaultFlowRebindVersion>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296FAD0DC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<wda::tlv::abm::DefaultFlowRebindVersion>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *wda::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _BYTE *a3)
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

uint64_t tlv::parseV<wda::tlv::abm::LowLatencyConfig>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FAD19C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<wda::tlv::abm::LowLatencyConfig>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<wda::tlv::abm::IMSLowLatencyConfig>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FAD25C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<wda::tlv::abm::IMSLowLatencyConfig>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t bsp::tlv::abm::parseField(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 4);
  *(a3 + 4) = *(a1 + 1);
  tlv::throwIfNotEnoughBytes((a1 + 5), a2, 4);
  *(a3 + 8) = *(a1 + 5);
  tlv::throwIfNotEnoughBytes((a1 + 9), a2, 4);
  *(a3 + 12) = *(a1 + 9);
  return a1 + 13;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 4);
  *(a3 + 4) = *(a1 + 1);
  tlv::throwIfNotEnoughBytes((a1 + 5), a2, 4);
  *(a3 + 8) = *(a1 + 5);
  tlv::throwIfNotEnoughBytes((a1 + 9), a2, 4);
  *(a3 + 12) = *(a1 + 9);
  return a1 + 13;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 0x10);
  *(a3 + 4) = *(a1 + 4);
  return a1 + 20;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 1);
  *(a3 + 1) = *(a1 + 1);
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 1);
  *(a3 + 2) = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 3), a2, 1);
  *(a3 + 3) = *(a1 + 3);
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 1);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 5), a2, 1);
  *(a3 + 5) = *(a1 + 5);
  tlv::throwIfNotEnoughBytes((a1 + 6), a2, 1);
  *(a3 + 6) = *(a1 + 6);
  tlv::throwIfNotEnoughBytes((a1 + 7), a2, 1);
  *(a3 + 7) = *(a1 + 7);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 1);
  *(a3 + 8) = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 9), a2, 1);
  *(a3 + 9) = *(a1 + 9);
  tlv::throwIfNotEnoughBytes((a1 + 10), a2, 4);
  *(a3 + 12) = *(a1 + 10);
  return a1 + 14;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 4);
  *(a3 + 4) = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 6), a2, 4);
  *(a3 + 8) = *(a1 + 6);
  tlv::throwIfNotEnoughBytes((a1 + 10), a2, 4);
  *(a3 + 12) = *(a1 + 10);
  tlv::throwIfNotEnoughBytes((a1 + 14), a2, 4);
  *(a3 + 16) = *(a1 + 14);
  tlv::throwIfNotEnoughBytes((a1 + 18), a2, 4);
  *(a3 + 20) = *(a1 + 18);
  return a1 + 22;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 4);
  *(a3 + 4) = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 6), a2, 4);
  *(a3 + 8) = *(a1 + 6);
  tlv::throwIfNotEnoughBytes((a1 + 10), a2, 4);
  *(a3 + 12) = *(a1 + 10);
  tlv::throwIfNotEnoughBytes((a1 + 14), a2, 4);
  *(a3 + 16) = *(a1 + 14);
  tlv::throwIfNotEnoughBytes((a1 + 18), a2, 4);
  *(a3 + 20) = *(a1 + 18);
  return a1 + 22;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 2);
  *(a3 + 2) = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 2);
  *(a3 + 4) = *(a1 + 4);
  v6 = bsp::tlv::abm::parseField(a1 + 6, a2, a3 + 8);
  tlv::throwIfNotEnoughBytes(v6, a2, 2);
  *(a3 + 24) = *v6;
  tlv::throwIfNotEnoughBytes((v6 + 2), a2, 2);
  *(a3 + 28) = *(v6 + 2);
  tlv::throwIfNotEnoughBytes((v6 + 4), a2, 4);
  *(a3 + 32) = *(v6 + 4);
  tlv::throwIfNotEnoughBytes((v6 + 8), a2, 4);
  *(a3 + 36) = *(v6 + 8);
  tlv::throwIfNotEnoughBytes((v6 + 12), a2, 4);
  *(a3 + 40) = *(v6 + 12);
  tlv::throwIfNotEnoughBytes((v6 + 16), a2, 4);
  *(a3 + 44) = *(v6 + 16);
  tlv::throwIfNotEnoughBytes((v6 + 20), a2, 4);
  *(a3 + 48) = *(v6 + 20);
  tlv::throwIfNotEnoughBytes((v6 + 24), a2, 2);
  *(a3 + 52) = *(v6 + 24);
  return v6 + 26;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 1);
  v6 = *(a1 + 4);
  v7 = *(a3 + 8);
  v8 = *(a3 + 16);
  v9 = v8 - v7;
  v10 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 2);
  v11 = v6 - v10;
  if (v6 <= v10)
  {
    if (v6 < v10)
    {
      v8 = &v7[5 * *(a1 + 4)];
      *(a3 + 16) = v8;
    }

    v18 = a1 + 5;
  }

  else
  {
    v12 = *(a3 + 24);
    if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 2) >= v11)
    {
      bzero(*(a3 + 16), 20 * ((20 * v11 - 20) / 0x14) + 20);
      v8 += 20 * ((20 * v11 - 20) / 0x14) + 20;
      *(a3 + 16) = v8;
      v7 = *(a3 + 8);
      v18 = a1 + 5;
    }

    else
    {
      v13 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - v7) >> 2);
      v14 = 0x999999999999999ALL * ((v12 - v7) >> 2);
      if (v14 > v6)
      {
        v6 = v14;
      }

      if (v13 >= 0x666666666666666)
      {
        v6 = 0xCCCCCCCCCCCCCCCLL;
      }

      if (v6 > 0xCCCCCCCCCCCCCCCLL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = 20 * v6;
      v16 = operator new(20 * v6);
      v17 = &v16[v15];
      bzero(&v16[v9], 20 * ((20 * v11 - 20) / 0x14) + 20);
      v8 = &v16[20 * ((20 * v11 - 20) / 0x14) + 20 + v9];
      memcpy(v16, v7, v9);
      *(a3 + 8) = v16;
      *(a3 + 16) = v8;
      *(a3 + 24) = v17;
      if (v7)
      {
        operator delete(v7);
        v8 = *(a3 + 16);
      }

      v7 = *(a3 + 8);
      v18 = a1 + 5;
    }
  }

  while (v7 != v8)
  {
    tlv::throwIfNotEnoughBytes(v18, a2, 4);
    *v7 = *v18;
    tlv::throwIfNotEnoughBytes((v18 + 4), a2, 0x10);
    *(v7 + 1) = *(v18 + 4);
    v18 += 20;
    v7 += 5;
  }

  return v18;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 4);
  *(a3 + 4) = *(a1 + 1);
  return a1 + 5;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 4);
  *(a3 + 4) = *(a1 + 1);
  return a1 + 5;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 4);
  *(a3 + 4) = *(a1 + 1);
  return a1 + 5;
}

uint64_t bsp::tlv::abm::writeField(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 12);
  return a1 + 13;
}

{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 12);
  return a1 + 13;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  return a1 + 20;
}

{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 12);
  return a1 + 14;
}

{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 4);
  *(a1 + 6) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 12);
  *(a1 + 14) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 20);
  return a1 + 22;
}

{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 12);
  return a1 + 14;
}

{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 4);
  *(a1 + 6) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 12);
  *(a1 + 14) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 20);
  return a1 + 22;
}

{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 6) = *(a2 + 8);
  *(a1 + 7) = *(a2 + 9);
  *(a1 + 8) = *(a2 + 10);
  *(a1 + 9) = *(a2 + 11);
  *(a1 + 10) = *(a2 + 12);
  *(a1 + 11) = *(a2 + 13);
  *(a1 + 12) = *(a2 + 14);
  *(a1 + 13) = *(a2 + 15);
  *(a1 + 14) = *(a2 + 16);
  *(a1 + 15) = *(a2 + 17);
  *(a1 + 16) = *(a2 + 20);
  *(a1 + 20) = *(a2 + 24);
  *(a1 + 22) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 32);
  *(a1 + 28) = *(a2 + 36);
  *(a1 + 32) = *(a2 + 40);
  *(a1 + 36) = *(a2 + 44);
  *(a1 + 40) = *(a2 + 48);
  *(a1 + 44) = *(a2 + 52);
  return a1 + 46;
}

{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 4);
  return a1 + 5;
}

{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 4);
  return a1 + 5;
}

{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 4);
  return a1 + 5;
}

uint64_t tlv::parseV<bsp::tlv::abm::LTESleepManagerStats>(tlv **a1, int a2)
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

void sub_296FAD418(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FAD3E8);
}

uint64_t *tlv::writeV<bsp::tlv::abm::LTESleepManagerStats>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 1) = *(a2 + 4);
  *(v2 + 5) = *(a2 + 8);
  *(v2 + 9) = *(a2 + 12);
  *result = v2 + 13;
  return result;
}

uint64_t bsp::tlv::abm::parseField(uint64_t a1, const unsigned __int8 *a2, _WORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 2);
  a3[1] = *(a1 + 2);
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 2);
  a3[1] = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 2);
  a3[2] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 6), a2, 2);
  a3[3] = *(a1 + 6);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 2);
  a3[4] = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 10), a2, 2);
  a3[5] = *(a1 + 10);
  return a1 + 12;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 2);
  a3[1] = *(a1 + 2);
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 2);
  a3[1] = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 2);
  a3[2] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 6), a2, 2);
  a3[3] = *(a1 + 6);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 2);
  a3[1] = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 2);
  a3[2] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 6), a2, 2);
  a3[3] = *(a1 + 6);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 2);
  a3[4] = *(a1 + 8);
  return a1 + 10;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 2);
  a3[1] = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 2);
  a3[2] = *(a1 + 4);
  return a1 + 6;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 2);
  a3[1] = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 2);
  a3[2] = *(a1 + 4);
  return a1 + 6;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 2);
  a3[1] = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 2);
  a3[2] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 6), a2, 2);
  a3[3] = *(a1 + 6);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 2);
  a3[4] = *(a1 + 8);
  return a1 + 10;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 2);
  a3[1] = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 2);
  a3[2] = *(a1 + 4);
  return a1 + 6;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 2);
  a3[1] = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 2);
  a3[2] = *(a1 + 4);
  return a1 + 6;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 2);
  a3[1] = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 2);
  a3[2] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 6), a2, 2);
  a3[3] = *(a1 + 6);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 2);
  a3[4] = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 10), a2, 2);
  a3[5] = *(a1 + 10);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 2);
  a3[6] = *(a1 + 12);
  tlv::throwIfNotEnoughBytes((a1 + 14), a2, 2);
  a3[7] = *(a1 + 14);
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 2);
  a3[8] = *(a1 + 16);
  tlv::throwIfNotEnoughBytes((a1 + 18), a2, 2);
  a3[9] = *(a1 + 18);
  tlv::throwIfNotEnoughBytes((a1 + 20), a2, 2);
  a3[10] = *(a1 + 20);
  tlv::throwIfNotEnoughBytes((a1 + 22), a2, 2);
  a3[11] = *(a1 + 22);
  tlv::throwIfNotEnoughBytes((a1 + 24), a2, 2);
  a3[12] = *(a1 + 24);
  tlv::throwIfNotEnoughBytes((a1 + 26), a2, 2);
  a3[13] = *(a1 + 26);
  return a1 + 28;
}

_WORD *bsp::tlv::abm::writeField(_WORD *a1, _WORD *a2)
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
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  return a1 + 6;
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
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1 + 4;
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
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1 + 5;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1 + 3;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1 + 3;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1 + 5;
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
  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1 + 3;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1 + 3;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  a1[11] = a2[11];
  a1[12] = a2[12];
  a1[13] = a2[13];
  return a1 + 14;
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