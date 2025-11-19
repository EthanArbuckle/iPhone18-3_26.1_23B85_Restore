void sub_29ABD183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a12 = 0;
  sub_29A0F845C(&a10);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkInstancerClean(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  if (sub_29ABCF8C0(18))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Instancer Cleaned: %s\n", v7, v8, Text);
  }

  result = sub_29A2F4F50(this + 6, a2);
  v10 = result;
  if (result || (result = sub_29B2C4B80(v11), (result & 1) != 0))
  {
    *(v10 + 24) = *(v10 + 24) & 2 | a3;
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdChangeTracker::SprimInserted(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  if (sub_29ABCF8C0(30))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Sprim Added: %s\n", v7, v8, Text);
  }

  v10 = a2;
  result = sub_29ABD33E8(this + 128, a2, &unk_29B4D6118, &v10);
  *(result + 6) = a3;
  ++*(this + 807);
  ++*(this + 804);
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdChangeTracker::SprimRemoved(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (sub_29ABCF8C0(31))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Sprim Removed: %s\n", v5, v6, Text);
  }

  result = sub_29ABD368C(this + 16, a2);
  ++*(this + 807);
  ++*(this + 804);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetSprimDirtyBits(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = sub_29A2F4F50(this + 16, a2);
  if (v2 || (sub_29B2C4BC8(v4) & 1) != 0)
  {
    return *(v2 + 6);
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkSprimClean(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  result = sub_29A2F4F50(this + 16, a2);
  v5 = result;
  if (result || (result = sub_29B2C4C10(v6), (result & 1) != 0))
  {
    *(v5 + 24) = a3;
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdChangeTracker::BprimInserted(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  if (sub_29ABCF8C0(0))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Bprim Added: %s\n", v7, v8, Text);
  }

  v10 = a2;
  result = sub_29ABD33E8(this + 168, a2, &unk_29B4D6118, &v10);
  *(result + 6) = a3;
  ++*(this + 807);
  ++*(this + 805);
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdChangeTracker::BprimRemoved(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (sub_29ABCF8C0(1))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Bprim Removed: %s\n", v5, v6, Text);
  }

  result = sub_29ABD368C(this + 21, a2);
  ++*(this + 807);
  ++*(this + 805);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetBprimDirtyBits(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = sub_29A2F4F50(this + 21, a2);
  if (v2 || (sub_29B2C4C58(v4) & 1) != 0)
  {
    return *(v2 + 6);
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkBprimDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v16[57] = *MEMORY[0x29EDCA608];
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = v3;
    v9 = *(v3 + 3248);
    if (v9)
    {
      (*(*v9 + 16))(v12);
      v16[56] = 0x800000000;
      pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::BprimDirtyBitsToLocatorSet(v12, v6, v16, v10);
      if (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::IsEmpty(v16))
      {
        v11 = *(v8 + 406);
        sub_29ABD2F24(v13, v7, v16);
        v15 = 0x1000000001;
        sub_29ABD3720(v13, v14, v14);
        (*(*v11 + 56))(v11, v14);
        sub_29ABD3844(v14);
        sub_29ABD3178();
      }

      sub_29ABD3178();
    }

    pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkBprimDirty(v8, v4, v5);
  }

  else
  {
    sub_29B2C4CA0();
  }
}

void sub_29ABD1DF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkBprimDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  result = sub_29A2F4F50(this + 21, a2);
  v6 = result;
  if (result || (result = sub_29B2C4CEC(v7), (result & 1) != 0))
  {
    *(v6 + 24) |= a3;
    ++*(this + 807);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkBprimClean(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  result = sub_29A2F4F50(this + 21, a2);
  v5 = result;
  if (result || (result = sub_29B2C4D34(v6), (result & 1) != 0))
  {
    *(v5 + 24) = a3;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRprimDirtyBits(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = sub_29A328A44(this + 1, a2);
  if (v2 || (sub_29B2C4D7C(v4) & 1) != 0)
  {
    return *(v2 + 6);
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsTopologyDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  RprimDirtyBits = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRprimDirtyBits(this, a2);

  return pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsTopologyDirty(RprimDirtyBits, a2, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsTopologyDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = this;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v6 = (v4 & 0x100) == 0;
  v7 = (v4 & 0x100) >> 8;
  v8 = v6;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::_LogCacheAccess((v5 + 616), a2, v8);
  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsDoubleSidedDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  RprimDirtyBits = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRprimDirtyBits(this, a2);

  return pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsDoubleSidedDirty(RprimDirtyBits, a2, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsDoubleSidedDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = this;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v6 = (v4 & 0x1000) == 0;
  v7 = (v4 & 0x1000) >> 12;
  v8 = v6;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::_LogCacheAccess((v5 + 136), a2, v8);
  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsCullStyleDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  RprimDirtyBits = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRprimDirtyBits(this, a2);

  return pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsCullStyleDirty(RprimDirtyBits, a2, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsCullStyleDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = this;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v6 = (v4 & 0x2000) == 0;
  v7 = (v4 & 0x2000) >> 13;
  v8 = v6;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::_LogCacheAccess((v5 + 128), a2, v8);
  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsDisplayStyleDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  RprimDirtyBits = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRprimDirtyBits(this, a2);

  return pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsDisplayStyleDirty(RprimDirtyBits, a2, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsDisplayStyleDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = this;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v6 = (v4 & 0x10) == 0;
  v7 = (v4 & 0x10) >> 4;
  v8 = v6;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::_LogCacheAccess((v5 + 168), a2, v8);
  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsSubdivTagsDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  RprimDirtyBits = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRprimDirtyBits(this, a2);

  return pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsSubdivTagsDirty(RprimDirtyBits, a2, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsSubdivTagsDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = this;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v6 = (v4 & 0x4000) == 0;
  v7 = (v4 & 0x4000) >> 14;
  v8 = v6;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::_LogCacheAccess((v5 + 592), a2, v8);
  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsTransformDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  RprimDirtyBits = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRprimDirtyBits(this, a2);

  return pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsTransformDirty(RprimDirtyBits, a2, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsTransformDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = this;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v6 = (v4 & 0x200) == 0;
  v7 = (v4 & 0x200) >> 9;
  v8 = v6;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::_LogCacheAccess((v5 + 640), a2, v8);
  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsVisibilityDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  RprimDirtyBits = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRprimDirtyBits(this, a2);

  return pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsVisibilityDirty(RprimDirtyBits, a2, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsVisibilityDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = this;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v6 = (v4 & 0x400) == 0;
  v7 = (v4 & 0x400) >> 10;
  v8 = v6;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::_LogCacheAccess((v5 + 664), a2, v8);
  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsExtentDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  RprimDirtyBits = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRprimDirtyBits(this, a2);

  return pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsExtentDirty(RprimDirtyBits, a2, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsExtentDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = this;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v6 = (v4 & 8) == 0;
  v7 = (v4 & 8) >> 3;
  v8 = v6;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::_LogCacheAccess((v5 + 256), a2, v8);
  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimIdDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  RprimDirtyBits = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRprimDirtyBits(this, a2);

  return pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimIdDirty(RprimDirtyBits, a2, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimIdDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = this;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v6 = (v4 & 4) == 0;
  v7 = (v4 & 4) >> 2;
  v8 = v6;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::_LogCacheAccess((v5 + 528), a2, v8);
  return v7;
}

BOOL pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  RprimDirtyBits = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRprimDirtyBits(this, a2);

  return pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(RprimDirtyBits, a2, v4);
}

BOOL pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = this;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v6 = (v4 & 0x8860) == 0;
  v7 = (v4 & 0x8860) != 0;
  v8 = v6;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::_LogCacheAccess((v5 + 520), a2, v8);
  return v7;
}

BOOL pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  RprimDirtyBits = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRprimDirtyBits(this, a2);

  return pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(RprimDirtyBits, a2, a3, v6);
}

BOOL pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v6 = this;
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v7)
  {
    v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v7 + 59) ^ *a3) < 8)
  {
    goto LABEL_13;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v8)
  {
    v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v8 + 82) ^ *a3) < 8)
  {
    goto LABEL_13;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v9)
  {
    v9 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*v9 ^ *a3) < 8)
  {
    goto LABEL_13;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v10)
  {
    v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v10 + 52) ^ *a3) >= 8)
  {
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v16)
    {
      v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v16 + 54) ^ *a3) >= 8)
    {
      v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v17)
      {
        v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v17 + 84) ^ *a3) >= 8)
      {
        v11 = 64;
      }

      else
      {
        v11 = 0x8000;
      }
    }

    else
    {
      v11 = 2048;
    }
  }

  else
  {
LABEL_13:
    v11 = 32;
  }

  v12 = (v11 & v6) == 0;
  v13 = (v11 & v6) != 0;
  v14 = v12;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::_LogCacheAccess(a3, a2, v14);
  return v13;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsInstancerDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = this;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  if (!v5)
  {
    v5 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  }

  v6 = (v4 & 0x10000) == 0;
  v7 = (v4 & 0x10000u) >> 16;
  v8 = v6;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::_LogCacheAccess((v5 + 8), a2, v8);
  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsInstanceIndexDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = this;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  if (!v5)
  {
    v5 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  }

  v6 = (v4 & 0x20000) == 0;
  v7 = (v4 & 0x20000u) >> 17;
  v8 = v6;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::_LogCacheAccess((v5 + 32), a2, v8);
  return v7;
}

void pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkPrimvarDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkPrimvarDirty(&v6, a3, a3);
  v5 = v6;

  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty(this, a2, v5);
}

pxrInternal__aapl__pxrReserved__::HdTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkPrimvarDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, unsigned int *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!result)
  {
    result = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(result + 59) ^ *a2) >= 8)
  {
    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!result)
    {
      result = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(result + 54) ^ *a2) >= 8)
    {
      result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!result)
      {
        result = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(result + 84) ^ *a2) >= 8)
      {
        v6 = 64;
      }

      else
      {
        v6 = 0x8000;
      }
    }

    else
    {
      v6 = 2048;
    }
  }

  else
  {
    v6 = 32;
  }

  *this |= v6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkAllRprimsDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, uint64_t a2)
{
  if (!a2)
  {
    sub_29B2C4DC4();
    return;
  }

  v4 = *(this + 3);
  if (!*(this + 406))
  {
    if (v4)
    {
      v5 = 0;
      do
      {
        while (1)
        {
          v6 = *(v4 + 6);
          if (((~v6 | 0xC0000) & a2) == 0)
          {
            break;
          }

          v7 = v6 | a2;
          *(v4 + 6) = v7;
          if ((v7 & 2) != 0)
          {
            break;
          }

          *(v4 + 6) = v7 | 2;
          v4 = *v4;
          v5 = 1;
          if (!v4)
          {
            goto LABEL_15;
          }
        }

        v4 = *v4;
      }

      while (v4);
      if ((v5 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_15:
      ++*(this + 802);
    }

LABEL_16:
    ++*(this + 807);
    if ((a2 & 0x400) != 0)
    {
      ++*(this + 808);
      if ((a2 & 0x20000) == 0)
      {
LABEL_18:
        if ((a2 & 0x80000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else if ((a2 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    ++*(this + 809);
    if ((a2 & 0x80000) == 0)
    {
LABEL_20:
      if ((a2 & 0xC0000) != 0)
      {
        ++*(this + 803);
      }

      return;
    }

LABEL_19:
    ++*(this + 810);
    goto LABEL_20;
  }

  while (v4)
  {
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty(this, (v4 + 2), a2);
    v4 = *v4;
  }
}

void *pxrInternal__aapl__pxrReserved__::HdChangeTracker::AddCollection(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  result = sub_29A160470(this + 31, a2);
  if (!result)
  {
    v5 = a2;
    result = sub_29A160810(this + 248, a2, &unk_29B4D6118, &v5);
    *(result + 6) = 1;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkCollectionDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  result = sub_29A160470(this + 31, a2);
  v6 = result;
  if (result || (result = sub_29B2C4E10(v7, a2, v5), (result & 1) != 0))
  {
    ++*(v6 + 24);
    ++*(this + 807);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetCollectionVersion(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = sub_29A16039C(this + 31, a2);
  if (v4)
  {
    return (*(this + 803) + *(v4 + 6));
  }

  v8[0] = "hd/changeTracker.cpp";
  v8[1] = "GetCollectionVersion";
  v8[2] = 1126;
  v8[3] = "unsigned int pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetCollectionVersion(const TfToken &) const";
  v9 = 0;
  v6 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (v6)
  {
    v7 = (v6 + 16);
    if (*(v6 + 39) < 0)
    {
      v7 = *v7;
    }
  }

  else
  {
    v7 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Change Tracker unable to find collection %s", v7);
  return *(this + 803);
}

void *pxrInternal__aapl__pxrReserved__::HdChangeTracker::AddState(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  result = sub_29A160470(this + 26, a2);
  if (result)
  {
    v5 = *(result + 6) + 1;
  }

  else
  {
    v6 = a2;
    result = sub_29ABD42EC(this + 208, a2, &unk_29B4D6118, &v6);
    v5 = 1;
  }

  *(result + 6) = v5;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkStateDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = sub_29A160470(this + 26, a2);
  if (v3)
  {
    ++*(v3 + 6);
  }

  else
  {
    v6[0] = "hd/changeTracker.cpp";
    v6[1] = "MarkStateDirty";
    v6[2] = 1164;
    v6[3] = "void pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkStateDirty(const TfToken &)";
    v7 = 0;
    v4 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (v4 + 16);
      if (*(v4 + 39) < 0)
      {
        v5 = *v5;
      }
    }

    else
    {
      v5 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Change Tracker unable to find state %s", v5);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetStateVersion(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = sub_29A16039C(this + 26, a2);
  if (v3)
  {
    return *(v3 + 6);
  }

  v7[0] = "hd/changeTracker.cpp";
  v7[1] = "GetStateVersion";
  v7[2] = 1176;
  v7[3] = "unsigned int pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetStateVersion(const TfToken &) const";
  v8 = 0;
  v5 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (v5)
  {
    v6 = (v5 + 16);
    if (*(v5 + 39) < 0)
    {
      v6 = *v6;
    }
  }

  else
  {
    v6 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Change Tracker unable to find state %s", v6);
  return 0;
}

void pxrInternal__aapl__pxrReserved__::HdChangeTracker::DumpDirtyBits(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this)
{
  v2 = sub_29A00911C(MEMORY[0x29EDC93C0], "DirtyBits:", 10);
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::StringifyDirtyBits(this, __p);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_29A00911C(v2, v3, v4);
  sub_29A00911C(v5, "\n", 1);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29ABD2E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABD2E64(uint64_t a1)
{
  sub_29ABD2EA0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29ABD2EA0(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29ABD2EE4(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29ABD2EE4(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

_DWORD *sub_29ABD2F24(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  sub_29ABD2F88(a1 + 2, a3);
  return a1;
}

_DWORD *sub_29ABD2F88(_DWORD *a1, uint64_t a2)
{
  a1[113] = 8;
  v4 = *(a2 + 448);
  v5 = a1;
  if (v4 >= 9)
  {
    v5 = malloc(56 * v4);
    *a1 = v5;
    a1[113] = v4;
  }

  a1[112] = v4;
  if (*(a2 + 452) >= 9u)
  {
    v6 = *a2;
  }

  else
  {
    v6 = a2;
  }

  sub_29ABD300C(v6, v6 + 56 * *(a2 + 448), v5);
  return a1;
}

_DWORD *sub_29ABD300C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v4 = a1;
  v5 = 0;
  result = a3;
  do
  {
    v7 = sub_29ABD30AC(result, v4);
    v4 += 56;
    result = v7 + 14;
    v5 -= 56;
  }

  while (v4 != a2);
  return result;
}

void sub_29ABD3070(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      sub_29ABC3488(v1);
      v1 += 56;
      v3 -= 56;
    }

    while (v3);
  }

  __cxa_rethrow();
}

_DWORD *sub_29ABD30AC(_DWORD *a1, uint64_t a2)
{
  v3 = a1;
  a1[13] = 6;
  v4 = *(a2 + 48);
  if (v4 <= 6)
  {
    a1[12] = v4;
    v5 = *a2;
    v6 = *(a2 + 48);
    if (*(a2 + 52) < 7u)
    {
      v5 = a2;
    }

    v7 = &v5[v6];
    if (!v6)
    {
      return v3;
    }

    do
    {
LABEL_9:
      v9 = *v5;
      *a1 = *v5;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *a1 &= 0xFFFFFFFFFFFFFFF8;
      }

      ++v5;
      a1 += 2;
    }

    while (v5 != v7);
    return v3;
  }

  a1 = malloc(8 * v4);
  *v3 = a1;
  v3[12] = v4;
  v3[13] = v4;
  v5 = *a2;
  v8 = *(a2 + 48);
  if (*(a2 + 52) < 7u)
  {
    v5 = a2;
  }

  v7 = &v5[v8];
  if (v8)
  {
    goto LABEL_9;
  }

  return v3;
}

uint64_t sub_29ABD31B8(unint64_t *a1)
{
  v2 = *a1;
  __dmb(0xBu);
  __dmb(0xBu);
  a1[65] = 0;
  v3 = sub_29A0EC0EC(v2);
  do
  {
    v4 = 0;
    v5 = v3;
    v6 = a1[v3 + 1];
    if (v3-- > 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = 1;
    }

    do
    {
      v9 = v6 + 24 * v4;
      v12 = *(v9 + 16);
      v11 = (v9 + 16);
      v10 = v12;
      if (v12 >= 0x40)
      {
        do
        {
          *v11 = *v10;
          sub_29ABD3284(a1, v10);
          v10 = *v11;
        }

        while (*v11 > 0x3FuLL);
      }

      ++v4;
    }

    while (!(v4 >> v8));
    result = sub_29ABD32B8(a1, v5);
  }

  while (v5);
  __dmb(0xBu);
  *a1 = 1;
  return result;
}

uint64_t sub_29ABD32B8(uint64_t a1, unint64_t a2)
{
  v3 = a1 + 8;
  result = *(a1 + 8 + 8 * a2);
  if (a2 < 8)
  {
    if (!a2)
    {
      return result;
    }

    if (a2 == 1)
    {
      result = tbb::internal::deallocate_via_handler_v3(result, 1);
    }
  }

  else
  {
    result = tbb::internal::deallocate_via_handler_v3(result, a2);
  }

  *(v3 + 8 * a2) = 0;
  return result;
}

_DWORD *sub_29ABD330C(uint64_t a1)
{
  sub_29A1E2AEC(a1 + 8, *(a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29ABD3358()
{
  if ((atomic_load_explicit(&qword_2A14F9978, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F9978))
  {
    v1 = operator new(0x90uLL);
    v1[7] = 0u;
    v1[8] = 0u;
    v1[5] = 0u;
    v1[6] = 0u;
    v1[3] = 0u;
    v1[4] = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    *v1 = 0u;
    qword_2A14F9970 = v1;
    __cxa_guard_release(&qword_2A14F9978);
  }

  return qword_2A14F9970;
}

void *sub_29ABD33E8(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if (result[2] == *a2)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A85CD88(a1, v6, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29ABD3618(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABD3630(va, 0);
  _Unwind_Resume(a1);
}

void sub_29ABD3630(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29ABD2EE4(v2 + 4);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29ABD368C(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29ABD36C4(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29ABD36C4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29ABD2EE4(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t sub_29ABD3720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = a2;
  v6 = 0;
  do
  {
    sub_29A1E21F4((a3 + v6), (a1 + v6));
    sub_29A1E2240((a3 + v6 + 4), (a1 + v6 + 4));
    sub_29ABD2F88((a3 + v6 + 8), a1 + v6 + 8);
    v6 += 464;
  }

  while (a1 + v6 != v5);
  return v5;
}

void sub_29ABD37B4(void *a1)
{
  sub_29A1DCEA8(v1);
  __cxa_begin_catch(a1);
  if (v2)
  {
    sub_29ABD37FC();
  }

  __cxa_rethrow();
}

uint64_t sub_29ABD3844(uint64_t a1)
{
  sub_29ABD3884(a1);
  if (*(a1 + 7428) >= 0x11u)
  {
    free(*a1);
  }

  return a1;
}

uint64_t sub_29ABD3884(uint64_t result)
{
  if (*(result + 7424))
  {
    sub_29ABD3178();
  }

  return result;
}

uint64_t sub_29ABD38EC(uint64_t *a1, int a2, unsigned int *a3, uint64_t a4, uint64_t a5, int a6, uint64_t (*a7)(uint64_t *, unsigned int *, uint64_t), void *a8)
{
  v13 = 0;
  v14 = bswap64(0x9E3779B97F4A7C55 * (a3[1] + ((a3[1] + *a3 + (a3[1] + *a3) * (a3[1] + *a3)) >> 1)));
  v15 = *a1;
  __dmb(0xBu);
  while (1)
  {
    sub_29ABD3D94(&v30, a1, v15 & v14, 0);
    v16 = (v32 + 16);
    do
    {
      v16 = *v16;
    }

    while (v16 >= 0x40 && *a3 != v16[2]);
    if (a2)
    {
      break;
    }

    if (v16)
    {
      v17 = 1;
LABEL_10:
      v18 = a8;
      if (!a5)
      {
        goto LABEL_45;
      }

LABEL_11:
      if ((sub_29A10872C(a5, v16 + 1, a6) & 1) == 0)
      {
        sched_yield();
        v19 = 2;
        while ((sub_29A10872C(a5, v16 + 1, a6) & 1) == 0)
        {
          sched_yield();
          v20 = v19 < 16;
          v19 *= 2;
          if (!v20)
          {
            v21 = v30;
            v30 = 0;
            if (v31 == 1)
            {
LABEL_16:
              v22 = *v21;
              v23 = *v21 & 0xFFFFFFFFFFFFFFFCLL;
              while (1)
              {
                v24 = v22;
                atomic_compare_exchange_strong(v21, &v24, v23);
                if (v24 == v22)
                {
                  break;
                }

                if (atomic_fetch_add_explicit(v21, 0, memory_order_relaxed) != v22)
                {
                  sched_yield();
                  goto LABEL_16;
                }
              }
            }

            else
            {
              atomic_fetch_add(v21, 0xFFFFFFFFFFFFFFFCLL);
            }

            sched_yield();
            v25 = *a1;
            __dmb(0xBu);
            a8 = v18;
            goto LABEL_31;
          }
        }
      }

      sub_29A0F845C(&v30);
      *(a5 + 16) = v16;
      *(a5 + 24) = v14;
      if (!v13)
      {
        goto LABEL_42;
      }

LABEL_41:
      sub_29ABD3C0C(a1, v13, (a1 + 72), 0);
      goto LABEL_42;
    }

    v25 = *a1;
    __dmb(0xBu);
    if (v15 == v25 || !sub_29A108BB8(a1, v14, v15, v25))
    {
      sub_29A0F845C(&v30);
      return 0;
    }

LABEL_31:
    sub_29A0F845C(&v30);
    v15 = v25;
  }

  if (v16)
  {
LABEL_7:
    v17 = 0;
    goto LABEL_10;
  }

  if (!a8)
  {
    a8 = a7(a1 + 72, a3, a4);
  }

  if ((v31 & 1) == 0)
  {
    v31 = 1;
    if ((tbb::spin_rw_mutex_v3::internal_upgrade(v30) & 1) == 0)
    {
      v16 = (v32 + 16);
      while (1)
      {
        v16 = *v16;
        if (v16 < 0x40)
        {
          break;
        }

        if (*a3 == v16[2])
        {
          if (v31 != 1)
          {
            goto LABEL_7;
          }

          v17 = 0;
          atomic_fetch_add(v30, 3uLL);
          v31 = 0;
          goto LABEL_10;
        }
      }
    }
  }

  v25 = *a1;
  __dmb(0xBu);
  if (v15 != v25)
  {
    if (!sub_29A108BB8(a1, v14, v15, v25))
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v25 = v15;
LABEL_33:
  v13 = sub_29A108650(a1, v32, a8, v25);
  v18 = 0;
  v17 = 1;
  v16 = a8;
  if (a5)
  {
    goto LABEL_11;
  }

LABEL_45:
  sub_29A0F845C(&v30);
  if (v13)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (v18)
  {
    sub_29ABD3284(a1, v18);
  }

  return v17;
}

void sub_29ABD3BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

void sub_29ABD3C0C(uint64_t *a1, unint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + 1;
  if (a2 < 8)
  {
    v10 = tbb::internal::allocate_via_handler_v3(0x17D0);
    v11 = v10;
    if (a4)
    {
      bzero(v10, 0x17D0uLL);
    }

    else
    {
      v15 = v10 + 2;
      v16 = 254;
      do
      {
        *(v15 - 1) = 0;
        *v15 = 3;
        v15 += 3;
        --v16;
      }

      while (v16);
    }

    v17 = 0;
    v18 = v11 - 6;
    v19 = xmmword_29B43B8D0;
    v20 = a1 + 3;
    v21 = vdupq_n_s64(7uLL);
    v22 = vdupq_n_s64(1uLL);
    v23 = vdupq_n_s64(2uLL);
    v14 = 255;
    do
    {
      v24 = vorrq_s8(vdupq_n_s64(v17), xmmword_29B430070);
      v25 = vshlq_u64(v22, v19);
      if (vmovn_s64(vcgtq_u64(v21, v24)).u8[0])
      {
        *(v20 - 1) = &v18[3 * v25.i64[0]];
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v24)).i32[1])
      {
        *v20 = &v18[3 * v25.i64[1]];
      }

      v17 += 2;
      v19 = vaddq_s64(v19, v23);
      v20 += 2;
    }

    while (v17 != 8);
  }

  else
  {
    v8 = tbb::internal::allocate_via_handler_v3((24 << a2));
    v9 = v8;
    if (a4)
    {
      bzero(v8, 24 << a2);
    }

    else
    {
      v12 = 1 << a2;
      v13 = v8 + 2;
      do
      {
        *(v13 - 1) = 0;
        *v13 = 3;
        v13 += 3;
        --v12;
      }

      while (v12);
    }

    v7[a2] = v9;
    v14 = (2 << a2) - 1;
  }

  __dmb(0xBu);
  *a1 = v14;
}

uint64_t sub_29ABD3D94(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v8 = sub_29A1089E0(a2, a3);
  *(a1 + 16) = v8;
  v9 = *(v8 + 16);
  __dmb(0xBu);
  if (v9 == 3 && (v10 = (*(a1 + 16) + 8), *(a1 + 8) = 1, tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v10)))
  {
    *a1 = v10;
    v11 = *(a1 + 16);
    if (*(v11 + 16) == 3)
    {
      sub_29ABD3E70(a2, v11, a3);
    }
  }

  else
  {
    v12 = (*(a1 + 16) + 8);
    *(a1 + 8) = a4;
    *a1 = v12;
    if (a4)
    {
      tbb::spin_rw_mutex_v3::internal_acquire_writer(v12);
    }

    else
    {
      tbb::spin_rw_mutex_v3::internal_acquire_reader(v12);
    }
  }

  return a1;
}

void *sub_29ABD3E70(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __dmb(0xBu);
  *(a2 + 16) = 0;
  if (a3)
  {
    v5 = HIDWORD(a3);
    if (!HIDWORD(a3))
    {
      v5 = a3;
    }

    v6 = 32 * (HIDWORD(a3) != 0);
    if (v5 >= 0x10000)
    {
      v5 >>= 16;
      v6 = (32 * (HIDWORD(a3) != 0)) | 0x10;
    }

    if (v5 >= 0x100)
    {
      v5 >>= 8;
      v6 |= 8u;
    }

    if (v5 >= 0x10)
    {
      v5 >>= 4;
      v6 |= 4u;
    }

    v7 = v5 >= 4;
    if (v5 >= 4)
    {
      LODWORD(v5) = v5 >> 2;
    }

    v8 = (v5 >> 1) & 1;
    if (v7)
    {
      v6 += 2;
    }

    v9 = v8 + v6;
  }

  else
  {
    v9 = -1;
  }

  v10 = ~(-1 << v9);
  sub_29ABD3D94(&v15, a1, v10 & a3, 0);
  v11 = (v17 + 16);
  v12 = *(v17 + 16);
  __dmb(0xBu);
  if (v12 >= 0x40)
  {
    v13 = (2 * v10) | 1;
    while ((bswap64(0x9E3779B97F4A7C55 * (*(v12 + 20) + ((*(v12 + 20) + *(v12 + 16) + (*(v12 + 20) + *(v12 + 16)) * (*(v12 + 20) + *(v12 + 16))) >> 1))) & v13) == a3)
    {
      if (v16 & 1) != 0 || (v16 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v15)))
      {
        *v11 = *v12;
        *v12 = *(a2 + 16);
        *(a2 + 16) = v12;
LABEL_24:
        v12 = *v11;
        if (*v11 <= 0x3F)
        {
          return sub_29A0F845C(&v15);
        }
      }

      else
      {
        v11 = (v17 + 16);
        v12 = *(v17 + 16);
        __dmb(0xBu);
        if (v12 < 0x40)
        {
          return sub_29A0F845C(&v15);
        }
      }
    }

    v11 = v12;
    goto LABEL_24;
  }

  return sub_29A0F845C(&v15);
}

void sub_29ABD4008(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

BOOL sub_29ABD401C(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1;
  __dmb(0xBu);
  while (1)
  {
    sub_29ABD3D94(v12, a1, v6 & v5, 1);
    v7 = (v12[2] + 16);
    do
    {
      v8 = v7;
      v7 = *v7;
      if (v7)
      {
        v9 = v7 == v4;
      }

      else
      {
        v9 = 1;
      }
    }

    while (!v9);
    if (v7)
    {
      break;
    }

    v10 = *a1;
    __dmb(0xBu);
    if (v6 == v10 || !sub_29A108BB8(a1, v5, v6, v10))
    {
      if (*(a2 + 16))
      {
        sub_29A0F8494(a2);
        *(a2 + 16) = 0;
      }

      sub_29A0F845C(v12);
      return v7 != 0;
    }

    sub_29A0F845C(v12);
    v6 = v10;
  }

  *v8 = *v4;
  atomic_fetch_add(a1 + 65, 0xFFFFFFFFFFFFFFFFLL);
  sub_29A0F845C(v12);
  if ((*(a2 + 8) & 1) == 0)
  {
    *(a2 + 8) = 1;
    tbb::spin_rw_mutex_v3::internal_upgrade(*a2);
  }

  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  sub_29ABD3284(a1, v4);
  return v7 != 0;
}

void sub_29ABD4154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABD41A0(uint64_t a1, uint64_t a2, _DWORD **a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x30);
  v9[1] = a1;
  *v5 = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 16) = 0u;
  v6 = *a3;
  sub_29A1E21F4((v5 + 16), v6);
  sub_29A1E2240((v5 + 20), v6 + 1);
  *(v5 + 40) = 0;
  *(v5 + 32) = 0;
  *(v5 + 24) = v5 + 32;
  v9[0] = 0;
  sub_29ABD422C(v9, v7);
  return v5;
}

uint64_t *sub_29ABD422C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
    tbb::internal::deallocate_via_handler_v3(v3, a2);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::HdInstancerTokens_StaticTokenType *sub_29ABD4260(atomic_ullong *a1)
{
  result = sub_29ABD42A8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdInstancerTokens_StaticTokenType::~HdInstancerTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdInstancerTokens_StaticTokenType *sub_29ABD42A8()
{
  v0 = operator new(0x68uLL);
  pxrInternal__aapl__pxrReserved__::HdInstancerTokens_StaticTokenType::HdInstancerTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29ABD42EC(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A160A58(a1, v6, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29ABD4514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = __p;
  __p = 0;
  if (v11)
  {
    sub_29B28FB14(&__p, v11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdCollectionExpressionEvaluator::HdCollectionExpressionEvaluator(pxrInternal__aapl__pxrReserved__ *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdGetCollectionPredicateLibrary(a1);

  pxrInternal__aapl__pxrReserved__::HdCollectionExpressionEvaluator::HdCollectionExpressionEvaluator(a1, a2);
}

{
  pxrInternal__aapl__pxrReserved__::HdGetCollectionPredicateLibrary(a1);

  pxrInternal__aapl__pxrReserved__::HdCollectionExpressionEvaluator::HdCollectionExpressionEvaluator(a1, a2);
}

void sub_29ABD4648(pxrInternal__aapl__pxrReserved__::SdfPathExpression *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v6[0] = a3;
  v6[1] = a2;
  if (!pxrInternal__aapl__pxrReserved__::Sdf_MakePathExpressionEvalImpl(a3, this, v6, sub_29ABD4E58))
  {
    v4 = *a3;
    if (*a3)
    {
      *(a3 + 8) = v4;
      operator delete(v4);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    sub_29ABD6258((a3 + 24));
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    memset(v5, 0, sizeof(v5));
    v7 = v5;
    sub_29ABD62C4(&v7);
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::HdCollectionExpressionEvaluator::Match(int **a1, uint64_t a2)
{
  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = a1[4];
  if (v5 == a1[5])
  {
    return 0;
  }

  v9[1] = v2;
  v9[2] = v3;
  v7 = v4;
  v9[0] = v5;
  v8[0] = v9;
  v8[1] = a2;
  v8[2] = &v7;
  return pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_EvalExpr(a1 + 1, v8, sub_29ABD634C);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdCollectionExpressionEvaluator::PopulateMatches(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result && a4 && result[4] != result[5])
  {
    v4 = *result;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  return result;
}

void sub_29ABD4B38(uint64_t a1)
{
  v1 = (a1 + 8);
  sub_29ABD4D10(&v1);
  sub_29ABD4DDC();
}

void sub_29ABD4B78(uint64_t a1)
{
  v1 = (a1 + 48);
  sub_29ABD4D10(&v1);
  sub_29ABD4DDC();
}

void *sub_29ABD4BD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
  }

  v7 = 1;
  sub_29ABD4C8C(v6);
  return a4;
}

uint64_t sub_29ABD4C8C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ABD4CC4(a1);
  }

  return a1;
}

void sub_29ABD4CC4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 4;
    v3 = v1;
    sub_29A1E234C(&v3);
  }
}

void sub_29ABD4D10(void ***a1)
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
        v4 -= 4;
        v6 = v4;
        sub_29A1E234C(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

BOOL sub_29ABD4D84(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *a2;
  if ((v2 - *a1) != (*(a2 + 8) - *a2))
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  return *(a1 + 24) == *(a2 + 24);
}

uint64_t sub_29ABD4E0C(uint64_t a1)
{
  v4 = (a1 + 24);
  sub_29ABD62C4(&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29ABD4E58(const void ***a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (*a1)[4];
  if (v5 >= (*a1)[5])
  {
    v6 = sub_29ABD4ED0(v4 + 3, a2, v3);
  }

  else
  {
    sub_29ABD5008((*a1)[4], a2, v3);
    v6 = (v5 + 136);
    v4[4] = v5 + 136;
  }

  v4[4] = v6;
  v7 = *a1;
  v8 = 0;
  sub_29A00D250(v7, &v8);
}

uint64_t sub_29ABD4ED0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    sub_29A00C9A4();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v8 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    v9 = sub_29A58E664(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = &v9[136 * v3];
  *(&v18 + 1) = &v9[136 * v8];
  sub_29ABD5008(v17, a2, a3);
  *&v18 = v17 + 136;
  v10 = a1[1];
  v11 = &v17[*a1 - v10];
  sub_29ABD6010(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29ABD61DC(&v16);
  return v15;
}

void sub_29ABD4FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ABD61DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABD5008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v6 + 1);
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v8[0] = a1;
  v8[1] = a3;
  pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Init(a1, a2, v8, sub_29ABD50C4);
  return a1;
}

void sub_29ABD50A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_29ABD5F88(&a9);
  sub_29A58D568(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABD50C4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  sub_29ABD51DC(a2, a1[1], __p);
  sub_29ABD515C((v2 + 112), __p);
  v6 = &v5;
  sub_29ABD5F04(&v6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return -1431655765 * ((*(v2 + 120) - *(v2 + 112)) >> 4) - 1;
}

void sub_29ABD5148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABD534C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABD515C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29ABD5398(a1, a2);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v3[3] = 0;
    v3[4] = 0;
    v3[5] = 0;
    *(v3 + 3) = *(a2 + 24);
    v3[5] = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    result = (v3 + 6);
  }

  a1[1] = result;
  return result;
}

void sub_29ABD51DC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v14[0] = a3;
  v14[1] = &v15;
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = &v16;
  pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Walk(a1, v14, sub_29ABD5728, v13, sub_29ABD57C4);
  v4 = HIBYTE(v18);
  v5 = HIBYTE(v18);
  if (v18 < 0)
  {
    v4 = v17;
  }

  if (v4)
  {
    v6 = *a3;
    if (*a3)
    {
      *(a3 + 8) = v6;
      operator delete(v6);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v8 = 0;
    v9 = 0;
    __p = 0;
    sub_29ABD5EA4((a3 + 24));
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    v19 = &v10;
    sub_29ABD5F04(&v19);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }

    __p = "sdf/predicateProgram.h";
    v8 = "SdfLinkPredicateExpression";
    v9 = 211;
    v10 = "SdfPredicateProgram<DomainType> pxrInternal__aapl__pxrReserved__::SdfLinkPredicateExpression(const SdfPredicateExpression &, const SdfPredicateLibrary<DomainType> &) [DomainType = const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &]";
    LOBYTE(v11) = 0;
    if (v18 >= 0)
    {
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, &v16);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, v16);
    }

    v5 = HIBYTE(v18);
  }

  if (v5 < 0)
  {
    operator delete(v16);
  }
}

void sub_29ABD5324(_Unwind_Exception *a1)
{
  if (*(v2 - 25) < 0)
  {
    operator delete(*(v2 - 48));
  }

  sub_29ABD534C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABD534C(uint64_t a1)
{
  v4 = (a1 + 24);
  sub_29ABD5F04(&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_29ABD5398(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A08E058(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[48 * v2];
  v15 = v7;
  v16 = v8;
  *(&v17 + 1) = &v7[48 * v6];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = *a2;
  *(v8 + 2) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0;
  *(v8 + 24) = *(a2 + 24);
  *(v8 + 5) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *&v17 = v8 + 48;
  v9 = a1[1];
  v10 = &v8[*a1 - v9];
  sub_29ABD54F8(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29ABD56AC(&v15);
  return v14;
}

void sub_29ABD54E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ABD56AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABD54F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v7;
      a4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v7 + 24);
      a4[5] = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      a4 += 6;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      sub_29ABD55D8(a1, v5);
      v5 += 48;
    }
  }

  return sub_29ABD5620(v9);
}

void sub_29ABD55D8(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 24);
  sub_29ABD5F04(&v4);
  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;
    operator delete(v3);
  }
}

uint64_t sub_29ABD5620(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ABD5658(a1);
  }

  return a1;
}

void sub_29ABD5658(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      sub_29ABD55D8(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29ABD56AC(void **a1)
{
  sub_29ABD56E0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29ABD56E0(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_29ABD55D8(v4, i - 48);
  }
}

void sub_29ABD5728(const void ***a1, int a2, int a3)
{
  if ((a2 - 2) < 3)
  {
    if (a3 == 2)
    {
      v6 = *a1;
      v7 = 3;
    }

    else
    {
      if (a3 != 1)
      {
        return;
      }

      v4 = *a1;
      if (a2 == 4)
      {
        v5 = 5;
      }

      else
      {
        v5 = 4;
      }

      v8 = v5;
      sub_29A00D250(v4, &v8);
      v6 = *a1;
      v7 = 2;
    }

    goto LABEL_12;
  }

  if (a2 == 1 && a3 == 1)
  {
    v6 = *a1;
    v7 = 1;
LABEL_12:
    v8 = v7;
    sub_29A00D250(v6, &v8);
  }
}

uint64_t sub_29ABD57C8(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  sub_29ABD591C(*a1, a2 + 8, v10);
  if (v11)
  {
    sub_29ABD5A88((*(a1 + 8) + 24), v10);
    v3 = *(a1 + 8);
    LODWORD(__p[0]) = 0;
    sub_29A00D250(v3, __p);
    return sub_29ABD5E24(v10);
  }

  v4 = *(a1 + 16);
  if ((*(v4 + 23) & 0x8000000000000000) == 0)
  {
    if (!*(v4 + 23))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*(v4 + 8))
  {
LABEL_7:
    std::string::append(v4, ", ");
  }

LABEL_8:
  std::operator+<char>();
  if ((v9 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = __p[1];
  }

  std::string::append(*(a1 + 16), v5, v6);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_29ABD5E24(v10);
}

void sub_29ABD58E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29ABD5E24(&a15);
  _Unwind_Resume(a1);
}

void sub_29ABD591C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  *(a3 + 24) = 0;
  v6 = sub_29A12A708(a1, a2);
  v7 = sub_29A58DFF0(a1, a2, v6);
  if (a1[4] + 56 * a1[5] == v7)
  {
    v12[0] = "sdf/predicateLibrary.h";
    v12[1] = "_BindCall";
    v12[2] = 308;
    v12[3] = "PredicateFunction pxrInternal__aapl__pxrReserved__::SdfPredicateLibrary<const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &>::_BindCall(const std::string &, const std::vector<SdfPredicateExpression::FnArg> &) const [DomainType = const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &]";
    v13 = 0;
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 3, "No registered function '%s'", v11);
  }

  else
  {
    v9 = *(v7 + 32);
    v8 = *(v7 + 40);
    do
    {
      if (v8 == v9)
      {
        break;
      }

      v10 = *(v8 - 8);
      v8 -= 8;
      (*(*v10 + 24))(v12);
      sub_29ABD5AD0(a3, v12);
      sub_29ABD5E24(v12);
    }

    while (!*(a3 + 24));
  }
}

uint64_t sub_29ABD5A88(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29ABD5BD8(a1, a2);
  }

  else
  {
    result = sub_29ABD5CE4(v3, a2) + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29ABD5AD0(uint64_t a1, uint64_t a2)
{
  sub_29ABD5B54(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29ABD5B54(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_29ABD5BD8(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[32 * v2];
  *(&v17 + 1) = &v8[32 * v7];
  sub_29ABD5CE4(v16, a2);
  *&v17 = v16 + 32;
  v9 = a1[1];
  v10 = &v16[*a1 - v9];
  sub_29ABD5D64(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29ABD5DD4(&v15);
  return v14;
}

void sub_29ABD5CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ABD5DD4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABD5CE4(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_29ABD5D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29ABD5CE4(a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29ABD5E24(v6);
      v6 += 32;
    }
  }
}

uint64_t sub_29ABD5DD4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    sub_29ABD5E24(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29ABD5E24(uint64_t a1)
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

void sub_29ABD5EA4(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_29ABD5E24(v3 - 32);
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

void sub_29ABD5F04(void ***a1)
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
        v4 = sub_29ABD5E24(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29ABD5F88(void ***a1)
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
        v4 -= 48;
        sub_29ABD55D8(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29ABD6010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29A58E75C(a1, a4, v7);
      v7 += 136;
      a4 = v12 + 136;
      v12 += 136;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29ABD60C4(a1, v5);
      v5 += 136;
    }
  }

  return sub_29ABD6150(v9);
}

_DWORD *sub_29ABD60C4(uint64_t a1, uint64_t a2)
{
  v6 = (a2 + 112);
  sub_29ABD5F88(&v6);
  v6 = (a2 + 80);
  sub_29A58E5E0(&v6);
  v6 = (a2 + 56);
  sub_29A012C90(&v6);
  v3 = *(a2 + 32);
  if (v3)
  {
    *(a2 + 40) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    *(a2 + 16) = v4;
    operator delete(v4);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 4));
  return sub_29A1DE3A4(a2);
}

uint64_t sub_29ABD6150(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ABD6188(a1);
  }

  return a1;
}

uint64_t *sub_29ABD6188(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 136;
      result = sub_29ABD60C4(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29ABD61DC(void **a1)
{
  sub_29ABD6210(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29ABD6210(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 136;
      result = sub_29ABD60C4(v4, v1 - 136);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void sub_29ABD6258(void **a1)
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
        v3 -= 136;
        sub_29ABD60C4(a1, v3);
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

void sub_29ABD62C4(void ***a1)
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
        v4 -= 136;
        sub_29ABD60C4(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29ABD634C(uint64_t a1, char a2)
{
  v5 = *a1;
  v6 = **a1;
  *v5 = v6 + 136;
  if (a2)
  {
    return 0x100000000;
  }

  v10[2] = v2;
  v10[3] = v3;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10[0] = v6;
  v10[1] = v9;
  return pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Match(v6, v8, v10, sub_29ABD63AC);
}

unint64_t sub_29ABD63AC(void ***a1, int a2)
{
  v2 = &(*a1)[14][6 * a2];
  (*(**a1[1] + 16))(v5);
  v3 = sub_29ABD6468(v2, v5);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  if ((v5[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v5[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v3;
}

void sub_29ABD6448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29B294B14(&a10);
  _Unwind_Resume(a1);
}

unint64_t sub_29ABD6468(int **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = a1[3];
  do
  {
    v9 = *v2;
    if (*v2 > 2)
    {
      if ((v9 - 4) >= 2)
      {
        if (v9 == 3)
        {
          --v7;
        }
      }

      else
      {
        v11 = v9 != 4;
        if (v2 != v3 && ((v11 ^ v6) & 1) == 0)
        {
          v12 = v7;
          v13 = v7;
          do
          {
            v14 = *v2;
            if (*v2 == 3)
            {
              v12 = v13 - 1;
              v13 = v12;
              if (v12 == v7)
              {
                goto LABEL_34;
              }
            }

            else
            {
              v15 = v8 + 8;
              if (v14)
              {
                v15 = v8;
              }

              if (v14 == 2)
              {
                v12 = ++v13;
              }

              else
              {
                v8 = v15;
              }
            }

            ++v2;
          }

          while (v2 != v3);
          v7 = v12;
        }
      }
    }

    else if (v9)
    {
      if (v9 == 2)
      {
        v10 = v7 + 1;
      }

      else
      {
        v10 = v7;
      }

      if (v9 == 1)
      {
        v6 ^= 1u;
      }

      else
      {
        v7 = v10;
      }
    }

    else
    {
      v16 = *(v8 + 3);
      if (!v16)
      {
        sub_29A0DDCB0();
      }

      v8 += 8;
      v17 = (*(*v16 + 48))(v16, a2);
      v6 = v17 & 1;
      if (HIDWORD(v17) == 1 && v5 == 0)
      {
        v5 = 1;
      }

      else
      {
        v5 = v5;
      }
    }

LABEL_34:
    ++v2;
  }

  while (v2 != v3);
  return v6 | (v5 << 32);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdGetCollectionPredicateLibrary(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A1748DF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748DF8))
  {
    sub_29ABD6668();
    __cxa_atexit(sub_29ABD6A04, &qword_2A1748DA8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748DF8);
  }

  return &qword_2A1748DA8;
}

void sub_29ABD6668()
{
  v23 = *MEMORY[0x29EDCA608];
  sub_29ABD7464(&qword_2A1748DA8, 0, 0.0, 0.5);
  sub_29ABD6A40("hdType");
  sub_29ABD6A40("type");
  sub_29A008E78(v12, "hdVisible");
  sub_29A008E78(v19, "isVisible");
  v22 = &unk_2A20443C3;
  v21[0] = 1;
  v10[0] = v19;
  v10[1] = 1;
  sub_29A595120(v11, v10);
  sub_29ABD6CAC(v12, v11);
  sub_29A008E78(__p, "visible");
  sub_29A008E78(v15, "isVisible");
  v18 = &unk_2A20443C3;
  v17[0] = 1;
  v6[0] = v15;
  v6[1] = 1;
  sub_29A595120(v7, v6);
  sub_29ABD6CAC(__p, v7);
  v14 = v7;
  sub_29A217894(&v14);
  sub_29A186B14(v17);
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v15[0] = v11;
  sub_29A217894(v15);
  sub_29A186B14(v21);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v0 = sub_29A008E78(v19, "hdPurpose");
  sub_29ABD6ED4(v0);
  v1 = sub_29A008E78(v15, "purpose");
  sub_29ABD6ED4(v1);
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v2 = sub_29A008E78(v19, "hdHasDataSource");
  sub_29ABD6FE0(v2);
  v3 = sub_29A008E78(v15, "hasDataSource");
  sub_29ABD6FE0(v3);
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v4 = sub_29A008E78(v19, "hdHasPrimvar");
  sub_29ABD70EC(v4);
  v5 = sub_29A008E78(v15, "hasPrimvar");
  sub_29ABD70EC(v5);
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  sub_29ABD71F8("hdHasMaterialBinding");
  sub_29ABD71F8("hasMaterialBinding");
}

void sub_29ABD6900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 97) < 0)
  {
    operator delete(*(v32 - 120));
  }

  if (*(v32 - 57) < 0)
  {
    operator delete(*(v32 - 80));
  }

  *(v32 - 80) = &unk_2A1748DB0;
  sub_29ABD7698((v32 - 80));
  _Unwind_Resume(a1);
}

uint64_t sub_29ABD6A04(uint64_t a1)
{
  v3 = (a1 + 8);
  sub_29ABD7698(&v3);
  return a1;
}

void sub_29ABD6A40(char *__s)
{
  sub_29A008E78(__p, __s);
  v4 = 0u;
  v5 = 0u;
  v1 = operator new(0x30uLL);
  *v1 = &unk_2A20762B0;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0;
  *(v1 + 1) = 0;
  sub_29A593F48(v1 + 1, 0, 0, 0);
  *(v1 + 4) = *(&v5 + 1);
  *v1 = &unk_2A2076258;
  if (!pxrInternal__aapl__pxrReserved__::SdfPredicateParamNamesAndDefaults::CheckValidity(&v4))
  {
    goto LABEL_8;
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(&v4 + 1) - v4) >> 3) >= 2)
  {
    v8[0] = "sdf/predicateLibrary.h";
    v8[1] = "_CheckNamesAndDefaultsWithSignature";
    v8[2] = 406;
    v8[3] = "static BOOL pxrInternal__aapl__pxrReserved__::SdfPredicateLibrary<const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &>::_CheckNamesAndDefaultsWithSignature(const NamesAndDefaults &) [DomainType = const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &, Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/collectionPredicateLibrary.cpp:80:9)]";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Predicate named arguments (%zu) exceed number of C++ function arguments (%zu)", 0xCCCCCCCCCCCCCCCDLL * ((*(&v4 + 1) - v4) >> 3), 1uLL);
LABEL_8:
    (*(*v1 + 8))(v1);
    goto LABEL_9;
  }

  if (v4 != *(&v4 + 1))
  {
    LOBYTE(v8[0]) = 1;
    sub_29ABD8658(v8, 0, 1, &v4);
    if ((v8[0] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v8[0] = __p;
  v2 = sub_29ABD87F4(&qword_2A1748DA8, __p, &unk_29B4D6118, v8);
  v8[0] = v1;
  sub_29ABD789C((v2 + 32), v8);
  v3 = v8[0];
  v8[0] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

LABEL_9:
  v8[0] = &v4;
  sub_29A217894(v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29ABD6C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  v23 = a21;
  a21 = 0;
  if (v23)
  {
    sub_29B2C4EB4();
  }

  *(v21 - 24) = &a11;
  sub_29A217894((v21 - 24));
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__int128 *sub_29ABD6CAC(__int128 *a1, uint64_t a2)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A20762B0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  sub_29A593F48(v4 + 1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 3));
  *(v4 + 4) = *(a2 + 24);
  *v4 = &unk_2A2076370;
  if (!pxrInternal__aapl__pxrReserved__::SdfPredicateParamNamesAndDefaults::CheckValidity(a2))
  {
    return (*(*v4 + 8))(v4);
  }

  v5 = *(a2 + 8);
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a2) >> 3);
  if (v6 >= 2)
  {
    v9[0] = "sdf/predicateLibrary.h";
    v9[1] = "_CheckNamesAndDefaultsWithSignature";
    v9[2] = 406;
    v9[3] = "static BOOL pxrInternal__aapl__pxrReserved__::SdfPredicateLibrary<const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &>::_CheckNamesAndDefaultsWithSignature(const NamesAndDefaults &) [DomainType = const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &, Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/collectionPredicateLibrary.cpp:102:26)]";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Predicate named arguments (%zu) exceed number of C++ function arguments (%zu)", v6, 1uLL);
    return (*(*v4 + 8))(v4);
  }

  if (*a2 != v5)
  {
    LOBYTE(v9[0]) = 1;
    sub_29ABD9528(v9, 0, 1, a2);
    if ((v9[0] & 1) == 0)
    {
      return (*(*v4 + 8))(v4);
    }
  }

  v9[0] = a1;
  v7 = sub_29ABD87F4(&qword_2A1748DA8, a1, &unk_29B4D6118, v9);
  v9[0] = v4;
  sub_29ABD789C((v7 + 32), v9);
  result = v9[0];
  v9[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29ABD6E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    sub_29B2C4EB4();
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29ABD6ED4(__int128 *a1)
{
  v2 = operator new(0x30uLL);
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *v2 = &unk_2A2076438;
  v5 = a1;
  v3 = sub_29ABD87F4(&qword_2A1748DA8, a1, &unk_29B4D6118, &v5);
  v5 = v2;
  sub_29ABD789C((v3 + 32), &v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29ABD6F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B2C4EB4();
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29ABD6FE0(__int128 *a1)
{
  v2 = operator new(0x30uLL);
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *v2 = &unk_2A2076500;
  v5 = a1;
  v3 = sub_29ABD87F4(&qword_2A1748DA8, a1, &unk_29B4D6118, &v5);
  v5 = v2;
  sub_29ABD789C((v3 + 32), &v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29ABD70A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B2C4EB4();
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29ABD70EC(__int128 *a1)
{
  v2 = operator new(0x30uLL);
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *v2 = &unk_2A20765C8;
  v5 = a1;
  v3 = sub_29ABD87F4(&qword_2A1748DA8, a1, &unk_29B4D6118, &v5);
  v5 = v2;
  sub_29ABD789C((v3 + 32), &v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29ABD71AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B2C4EB4();
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABD71F8(char *__s)
{
  sub_29A008E78(__p, __s);
  v4 = 0u;
  v5 = 0u;
  v1 = operator new(0x30uLL);
  *v1 = &unk_2A20762B0;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0;
  *(v1 + 1) = 0;
  sub_29A593F48(v1 + 1, 0, 0, 0);
  *(v1 + 4) = *(&v5 + 1);
  *v1 = &unk_2A2076690;
  if (!pxrInternal__aapl__pxrReserved__::SdfPredicateParamNamesAndDefaults::CheckValidity(&v4))
  {
    goto LABEL_8;
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(&v4 + 1) - v4) >> 3) >= 2)
  {
    v8[0] = "sdf/predicateLibrary.h";
    v8[1] = "_CheckNamesAndDefaultsWithSignature";
    v8[2] = 406;
    v8[3] = "static BOOL pxrInternal__aapl__pxrReserved__::SdfPredicateLibrary<const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &>::_CheckNamesAndDefaultsWithSignature(const NamesAndDefaults &) [DomainType = const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &, Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/collectionPredicateLibrary.cpp:231:9)]";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Predicate named arguments (%zu) exceed number of C++ function arguments (%zu)", 0xCCCCCCCCCCCCCCCDLL * ((*(&v4 + 1) - v4) >> 3), 1uLL);
LABEL_8:
    (*(*v1 + 8))(v1);
    goto LABEL_9;
  }

  if (v4 != *(&v4 + 1))
  {
    LOBYTE(v8[0]) = 1;
    sub_29ABD8658(v8, 0, 1, &v4);
    if ((v8[0] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v8[0] = __p;
  v2 = sub_29ABD87F4(&qword_2A1748DA8, __p, &unk_29B4D6118, v8);
  v8[0] = v1;
  sub_29ABD789C((v2 + 32), v8);
  v3 = v8[0];
  v8[0] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

LABEL_9:
  v8[0] = &v4;
  sub_29A217894(v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29ABD73DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  v23 = a21;
  a21 = 0;
  if (v23)
  {
    sub_29B2C4EB4();
  }

  *(v21 - 24) = &a11;
  sub_29A217894((v21 - 24));
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29ABD7464(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29ABD760C(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29ABD75D4();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >= 0x492492492492493)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 50) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29ABD75AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABD7698(va);
  _Unwind_Resume(a1);
}

int *sub_29ABD75D4()
{
  if ((atomic_load_explicit(&qword_2A14F99B8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C4EE8();
  }

  return &dword_2A14F9980;
}

void *sub_29ABD760C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A044EF0(a1, a2);
    v4 = a1[1];
    v5 = v4 + 56 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 56;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

void sub_29ABD7698(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29ABD76EC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29ABD76EC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 56;
    do
    {
      if (*(v4 + 4) != -1)
      {
        sub_29ABD7794(v4);
        *(v4 + 4) = -1;
      }

      v5 = v4 == v3;
      v4 -= 56;
    }

    while (!v5);
  }

  a1[1] = v3;
}

uint64_t sub_29ABD7754(uint64_t a1)
{
  if (*(a1 + 4) != -1)
  {
    sub_29ABD7794(a1);
    *(a1 + 4) = -1;
  }

  return a1;
}

void sub_29ABD7794(uint64_t a1)
{
  v2 = (a1 + 32);
  sub_29ABD77DC(&v2);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void sub_29ABD77DC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29ABD7830(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_29ABD7830(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

const void **sub_29ABD789C(const void **result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      sub_29A00C9A4();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    v23[4] = result;
    if (v14)
    {
      v15 = sub_29A00C9BC(result, v14);
      v14 = v16;
      v8 = *v3;
      v9 = v3[1] - *v3;
    }

    else
    {
      v15 = 0;
    }

    v17 = &v15[8 * v10];
    v18 = &v15[8 * v14];
    v19 = *a2;
    *a2 = 0;
    v20 = &v17[-8 * (v9 >> 3)];
    *v17 = v19;
    v7 = v17 + 8;
    memcpy(v20, v8, v9);
    v21 = *v3;
    *v3 = v20;
    v3[1] = v7;
    v22 = v3[2];
    v3[2] = v18;
    v23[2] = v21;
    v23[3] = v22;
    v23[0] = v21;
    v23[1] = v21;
    result = sub_29ABD8C3C(v23);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

uint64_t sub_29ABD799C(uint64_t a1)
{
  *a1 = &unk_2A20762B0;
  v3 = (a1 + 8);
  sub_29A217894(&v3);
  return a1;
}

void sub_29ABD79F4(char *a1)
{
  *a1 = &unk_2A20762B0;
  v2 = (a1 + 8);
  sub_29A217894(&v2);
  operator delete(a1);
}

void *sub_29ABD7A50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A20762B0;
  v4[2] = 0;
  v4[3] = 0;
  v4[1] = 0;
  result = sub_29A593F48(v4 + 1, *(a1 + 8), *(a1 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  v4[4] = *(a1 + 32);
  *v4 = &unk_2A2076258;
  *a2 = v4;
  return result;
}

void sub_29ABD7B04(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  if (v5 < 1 - v4)
  {
    *&__dst = "sdf/predicateLibrary.h";
    *(&__dst + 1) = "_TryToBindCall";
    v12 = 620;
    v13 = "static PredicateFunction pxrInternal__aapl__pxrReserved__::SdfPredicateLibrary<const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &>::_TryToBindCall(const Fn &, const std::vector<SdfPredicateExpression::FnArg> &, const NamesAndDefaults &) [DomainType = const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &, Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/collectionPredicateLibrary.cpp:80:9)]";
    v14 = 0;
    v6 = "s";
    if (!v4)
    {
      v6 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Function requires at least %zu argument%s, %zu given", 1 - v4, v6, v5);
    goto LABEL_7;
  }

  if (v5 >= 2)
  {
    *&__dst = "sdf/predicateLibrary.h";
    *(&__dst + 1) = "_TryToBindCall";
    v12 = 625;
    v13 = "static PredicateFunction pxrInternal__aapl__pxrReserved__::SdfPredicateLibrary<const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &>::_TryToBindCall(const Fn &, const std::vector<SdfPredicateExpression::FnArg> &, const NamesAndDefaults &) [DomainType = const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &, Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/collectionPredicateLibrary.cpp:80:9)]";
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Function takes at most %zu argument%s, %zu given", 1uLL, "", v5);
LABEL_7:
    *(a3 + 24) = 0;
    return;
  }

  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  memset(__p, 0, sizeof(__p));
  if (sub_29ABD7D4C(v9, a2, (a1 + 8), __p))
  {
    if (SHIBYTE(v10) < 0)
    {
      sub_29A008D14(&__dst, v9[0], v9[1]);
    }

    else
    {
      __dst = *v9;
      v12 = v10;
    }

    *(a3 + 24) = 0;
    v7 = operator new(0x28uLL);
    *v7 = &unk_2A20762E0;
    *(v7 + 8) = __dst;
    *(v7 + 3) = v12;
    __dst = 0uLL;
    v12 = 0;
    *(v7 + 33) = 0;
    *(v7 + 9) = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_29ABD7D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABD7D4C(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v11 = 1;
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  v10 = 0;
  sub_29A445E20(a4, v8, &v10);
  sub_29ABD7DDC(0, 1, a1, &v11, a2, a4, a3);
  return v11;
}

unint64_t sub_29ABD7DDC(unint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t *a5, uint64_t *a6, void *a7)
{
  v34 = *MEMORY[0x29EDCA608];
  if (*a4 == 1)
  {
    v10 = result;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((a7[1] - *a7) >> 3) - a2;
    v12 = result >= v11;
    v13 = *a7 + 40 * (result - v11);
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v16 = *a5;
    v15 = a5[1];
    v17 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - *a5) >> 3);
    if (v17 <= result)
    {
      if (v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v18 = v16 + 40 * result;
      v19 = *(v18 + 23);
      if (v19 < 0)
      {
        v19 = *(v18 + 8);
      }

      if (v19)
      {
        v18 = 0;
      }

      if (v14)
      {
        if (v18)
        {
          sub_29A3FA4C8((v18 + 24), &v32);
          if (v33)
          {
LABEL_13:
            sub_29ABD80D8(&v32, &v30);
            if (*(a3 + 23) < 0)
            {
              operator delete(*a3);
            }

            *a3 = v30;
            *(a3 + 16) = v31;
            *(*a6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
            return sub_29A186B14(&v32);
          }

LABEL_49:
          *a4 = 0;
          return sub_29A186B14(&v32);
        }

LABEL_17:
        if (v15 == v16)
        {
LABEL_34:
          sub_29A3FA4C8((v14 + 24), &v32);
          if (v33)
          {
            sub_29ABD80D8(&v32, &v30);
            if (*(a3 + 23) < 0)
            {
              operator delete(*a3);
            }

            *a3 = v30;
            *(a3 + 16) = v31;
            return sub_29A186B14(&v32);
          }
        }

        else
        {
          v20 = 0;
          v21 = *a6;
          while (1)
          {
            if ((*(v21 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
            {
              v22 = *(v16 + 23);
              if (v22 >= 0)
              {
                v23 = *(v16 + 23);
              }

              else
              {
                v23 = *(v16 + 8);
              }

              v24 = *(v14 + 23);
              v25 = v24;
              if ((v24 & 0x80u) != 0)
              {
                v24 = *(v14 + 8);
              }

              if (v23 == v24)
              {
                v26 = v22 >= 0 ? v16 : *v16;
                v27 = v25 >= 0 ? v14 : *v14;
                if (!memcmp(v26, v27, v23))
                {
                  break;
                }
              }
            }

            ++v20;
            v16 += 40;
            if (v17 == v20)
            {
              goto LABEL_34;
            }
          }

          sub_29A3FA4C8((v16 + 24), &v32);
          if (v33)
          {
            sub_29ABD80D8(&v32, &v30);
            if (*(a3 + 23) < 0)
            {
              operator delete(*a3);
            }

            *a3 = v30;
            *(a3 + 16) = v31;
            *(*a6 + 8 * (v20 >> 6)) |= 1 << v20;
            return sub_29A186B14(&v32);
          }
        }

        goto LABEL_49;
      }

      if (v18)
      {
        v28 = *(v18 + 23);
        if (v28 < 0)
        {
          v28 = *(v18 + 8);
        }

        if (!v28)
        {
          sub_29A3FA4C8((v18 + 24), &v32);
          if (v33)
          {
            goto LABEL_13;
          }

          goto LABEL_49;
        }
      }
    }

    *a4 = 0;
  }

  return result;
}

void sub_29ABD80B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABD80D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A230170(a1);
  *a2 = *result;
  a2[2] = *(result + 16);
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  v5 = a1[1];
  if (v5 && (a1[1] & 3) != 3)
  {
    result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
  }

  a1[1] = 0;
  return result;
}

void sub_29ABD8148(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABD8164(uint64_t a1)
{
  *a1 = &unk_2A20762E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29ABD81B4(void **__p)
{
  *__p = &unk_2A20762E0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

char *sub_29ABD8214(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2A20762E0;
  v3 = v2 + 8;
  if (*(a1 + 31) < 0)
  {
    sub_29A008D14(v3, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    *v3 = *(a1 + 8);
    *(v2 + 3) = *(a1 + 24);
  }

  *(v2 + 9) = 0;
  *(v2 + 33) = 0;
  return v2;
}

char *sub_29ABD82A0(char *result, uint64_t a2)
{
  *a2 = &unk_2A20762E0;
  v3 = (a2 + 8);
  if (result[31] < 0)
  {
    result = sub_29A008D14(v3, *(result + 1), *(result + 2));
  }

  else
  {
    v4 = *(result + 8);
    *(a2 + 24) = *(result + 3);
    *v3 = v4;
  }

  *(a2 + 36) = 0;
  *(a2 + 33) = 0;
  return result;
}

void sub_29ABD8310(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void sub_29ABD8324(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29ABD8368(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v14[0] = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14[0] = v3;
    }
  }

  v4 = a2[2];
  v14[1] = a2[1];
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = sub_29ABD8598(&v16, v14, (a1 + 8));
  if ((v16 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v16 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  v7 = *(EmptyString + 23);
  if (v7 >= 0)
  {
    v8 = *(EmptyString + 23);
  }

  else
  {
    v8 = EmptyString[1];
  }

  v9 = v19;
  v10 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v9 = __p[1];
  }

  v11 = 0x100000000;
  if (v8 == v9)
  {
    if (v7 < 0)
    {
      EmptyString = *EmptyString;
    }

    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (!memcmp(EmptyString, v12, v8))
    {
      v11 = 0x100000001;
    }
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if ((v14[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v14[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v11;
}

void sub_29ABD84B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  sub_29ABD8540(va);
  if (a5)
  {
    sub_29A014BEC(a5);
  }

  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29ABD84F4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2076350))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29ABD8540(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t sub_29ABD8598(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v4 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v4;
  }

  return a1;
}

void *sub_29ABD8610(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29ABD8658(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4[1] - *a4;
  if (~a2 + a3 < 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3))
  {
    v6 = *a4 + 40 * (a2 - a3) + v4;
    if (*(v6 + 32))
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v6 + 24));
      if (!pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_2A203B0F8, v9))
      {
        v19[0] = "sdf/predicateLibrary.h";
        v19[1] = "_CheckOneNameAndDefault";
        v19[2] = 349;
        v19[3] = "static void pxrInternal__aapl__pxrReserved__::SdfPredicateLibrary<const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &>::_CheckOneNameAndDefault(BOOL &, size_t, size_t, const NamesAndDefaults &) [DomainType = const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &, ParamType = std::string]";
        v20 = 0;
        if (*(v6 + 23) < 0)
        {
          v10 = *v6;
        }

        else
        {
          v10 = v6;
        }

        pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName((v6 + 24), &v17);
        v11 = v18;
        v12 = v17.__vftable;
        pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B4C54E8 & 0x7FFFFFFFFFFFFFFFLL), __p);
        if (v11 >= 0)
        {
          v13 = &v17;
        }

        else
        {
          v13 = v12;
        }

        if (v16 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v19, 1, "Predicate default parameter '%s' value of type '%s' cannot convert to c++ argument of type '%s' at index %zu", v10, v13, v14, a2);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        if (v18 < 0)
        {
          operator delete(v17.__vftable);
        }

        *a1 = 0;
      }
    }
  }
}

void sub_29ABD87C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABD87F4(uint64_t *a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v8 = sub_29A12A708(a1, a2);
  v9 = *a1 & v8;
  v10 = a1[4] + 56 * v9;
  if (*(v10 + 4) < 0)
  {
    v11 = 0;
LABEL_7:
    while (sub_29ABD89B8(a1, v11))
    {
      v12 = a1[4];
      v9 = v8 & *a1;
      if (*(v12 + 56 * v9 + 4) < 0)
      {
        v11 = 0;
      }

      else
      {
        LOWORD(v11) = 0;
        do
        {
          v11 = (v11 + 1);
          v9 = (v9 + 1) & *a1;
        }

        while (v11 <= *(v12 + 56 * v9 + 4));
      }
    }

    v13 = a1[4] + 56 * v9;
    if (*(v13 + 4) == -1)
    {
      v14 = *a4;
      if (*(*a4 + 23) < 0)
      {
        sub_29A008D14((v13 + 8), *v14, *(v14 + 1));
      }

      else
      {
        v15 = *v14;
        *(v13 + 24) = *(v14 + 2);
        *(v13 + 8) = v15;
      }

      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *v13 = v8;
      *(v13 + 4) = v11;
    }

    else
    {
      sub_29ABD8A8C(a1, v9, v11, v8, a3, a4);
    }

    ++a1[6];
  }

  else
  {
    LOWORD(v11) = 0;
    while (!sub_29A0EC4B8(a1, (v10 + 8), a2))
    {
      v9 = *a1 & (v9 + 1);
      v11 = (v11 + 1);
      v10 = a1[4] + 56 * v9;
      if (v11 > *(v10 + 4))
      {
        goto LABEL_7;
      }
    }
  }

  return a1[4] + 56 * v9;
}

uint64_t sub_29ABD89B8(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29ABD8B40(a1, v7);
    *(a1 + 72) = 0;
    return 1;
  }

  if (*(a1 + 73) == 1)
  {
    *(a1 + 73) = 0;
    v4 = *(a1 + 64);
    if (v4 != 0.0)
    {
      v5 = *(a1 + 40);
      v6 = v5 ? v3 / v5 : 0.0;
      if (v6 < v4)
      {
        v9 = *(a1 + 68);
        v10 = vcvtps_u32_f32((v3 + 1) / v9);
        v11 = vcvtps_u32_f32(v3 / v9);
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        sub_29ABD8B40(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29ABD8A8C(uint64_t *a1, uint64_t a2, __int16 a3, int a4, uint64_t a5, __int128 **a6)
{
  v10 = *a6;
  if (*(*a6 + 23) < 0)
  {
    sub_29A008D14(__p, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    v13 = *(v10 + 2);
    *__p = v11;
  }

  memset(v14, 0, 24);
  sub_29A594ED4(a1, a2, a3, a4, __p);
  v15 = v14;
  sub_29ABD77DC(&v15);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29ABD8B40(uint64_t a1, unint64_t a2)
{
  sub_29ABD7464(&v7, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    v5 = v8[4];
    do
    {
      if (*(v3 + 2) != -1)
      {
        if (v5 > 0x100000000)
        {
          v6 = sub_29A12A708(&v7, (v3 + 2));
        }

        else
        {
          v6 = *v3;
        }

        sub_29A594DEC(&v7, v7 & v6, 0, v6, (v3 + 2));
      }

      v3 += 14;
    }

    while (v3 != v4);
  }

  v8[5] = *(a1 + 48);
  sub_29A10A4B4(&v7, a1);
  v9 = v8;
  sub_29ABD7698(&v9);
}

void sub_29ABD8C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 56) = &a11;
  sub_29ABD7698((v11 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_29ABD8C3C(uint64_t a1)
{
  sub_29ABD8C74(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29ABD8C74(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_29ABD8CE8(uint64_t a1)
{
  *a1 = &unk_2A20762B0;
  v3 = (a1 + 8);
  sub_29A217894(&v3);
  return a1;
}

void sub_29ABD8D40(char *a1)
{
  *a1 = &unk_2A20762B0;
  v2 = (a1 + 8);
  sub_29A217894(&v2);
  operator delete(a1);
}

void *sub_29ABD8D9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A20762B0;
  v4[2] = 0;
  v4[3] = 0;
  v4[1] = 0;
  result = sub_29A593F48(v4 + 1, *(a1 + 8), *(a1 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  v4[4] = *(a1 + 32);
  *v4 = &unk_2A2076370;
  *a2 = v4;
  return result;
}

void sub_29ABD8E50(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 32);
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  if (v5 < 1 - v4)
  {
    __p = "sdf/predicateLibrary.h";
    v10 = "_TryToBindCall";
    v11 = 620;
    v12 = "static PredicateFunction pxrInternal__aapl__pxrReserved__::SdfPredicateLibrary<const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &>::_TryToBindCall(const Fn &, const std::vector<SdfPredicateExpression::FnArg> &, const NamesAndDefaults &) [DomainType = const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &, Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/collectionPredicateLibrary.cpp:102:26)]";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Function requires at least %zu argument%s, %zu given");
LABEL_5:
    *(a3 + 24) = 0;
    return;
  }

  if (v5 >= 2)
  {
    __p = "sdf/predicateLibrary.h";
    v10 = "_TryToBindCall";
    v11 = 625;
    v12 = "static PredicateFunction pxrInternal__aapl__pxrReserved__::SdfPredicateLibrary<const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &>::_TryToBindCall(const Fn &, const std::vector<SdfPredicateExpression::FnArg> &, const NamesAndDefaults &) [DomainType = const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &, Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/collectionPredicateLibrary.cpp:102:26)]";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Function takes at most %zu argument%s, %zu given");
    goto LABEL_5;
  }

  v8 = 0;
  __p = 0;
  v10 = 0;
  v11 = 0;
  if (sub_29ABD8FD4(&v8, a2, (a1 + 8), &__p))
  {
    v6 = v8;
    *a3 = &unk_2A20763B8;
    *(a3 + 8) = v6;
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  *(a3 + 24) = v7;
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29ABD8FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABD8FD4(_BYTE *a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v11 = 1;
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  v10 = 0;
  sub_29A445E20(a4, v8, &v10);
  sub_29ABD9064(0, 1, a1, &v11, a2, a4, a3);
  return v11;
}

unint64_t sub_29ABD9064(unint64_t result, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t *a5, uint64_t *a6, void *a7)
{
  v32 = *MEMORY[0x29EDCA608];
  if (*a4 == 1)
  {
    v10 = result;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((a7[1] - *a7) >> 3) - a2;
    v12 = result >= v11;
    v13 = *a7 + 40 * (result - v11);
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v16 = *a5;
    v15 = a5[1];
    v17 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - *a5) >> 3);
    if (v17 <= result)
    {
      if (v14)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v18 = v16 + 40 * result;
      v19 = *(v18 + 23);
      if (v19 < 0)
      {
        v19 = *(v18 + 8);
      }

      if (v19)
      {
        v18 = 0;
      }

      if (v14)
      {
        if (v18)
        {
          sub_29A3F8CE8((v18 + 24), v30);
          if (v31)
          {
LABEL_13:
            *a3 = sub_29A594450(v30);
            *(*a6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
            return sub_29A186B14(v30);
          }

LABEL_43:
          *a4 = 0;
          return sub_29A186B14(v30);
        }

LABEL_15:
        if (v15 == v16)
        {
LABEL_32:
          sub_29A3F8CE8((v14 + 24), v30);
          if (v31)
          {
            *a3 = sub_29A594450(v30);
            return sub_29A186B14(v30);
          }
        }

        else
        {
          v20 = 0;
          v21 = *a6;
          while (1)
          {
            if ((*(v21 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
            {
              v22 = *(v16 + 23);
              if (v22 >= 0)
              {
                v23 = *(v16 + 23);
              }

              else
              {
                v23 = *(v16 + 8);
              }

              v24 = *(v14 + 23);
              v25 = v24;
              if ((v24 & 0x80u) != 0)
              {
                v24 = *(v14 + 8);
              }

              if (v23 == v24)
              {
                v26 = v22 >= 0 ? v16 : *v16;
                v27 = v25 >= 0 ? v14 : *v14;
                if (!memcmp(v26, v27, v23))
                {
                  break;
                }
              }
            }

            ++v20;
            v16 += 40;
            if (v17 == v20)
            {
              goto LABEL_32;
            }
          }

          sub_29A3F8CE8((v16 + 24), v30);
          if (v31)
          {
            *a3 = sub_29A594450(v30);
            *(*a6 + 8 * (v20 >> 6)) |= 1 << v20;
            return sub_29A186B14(v30);
          }
        }

        goto LABEL_43;
      }

      if (v18)
      {
        v28 = *(v18 + 23);
        if (v28 < 0)
        {
          v28 = *(v18 + 8);
        }

        if (!v28)
        {
          sub_29A3F8CE8((v18 + 24), v30);
          if (v31)
          {
            goto LABEL_13;
          }

          goto LABEL_43;
        }
      }
    }

    *a4 = 0;
  }

  return result;
}

void sub_29ABD92D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

_WORD *sub_29ABD9304(uint64_t a1)
{
  result = operator new(0x10uLL);
  *result = &unk_2A20763B8;
  result[4] = *(a1 + 8);
  return result;
}

uint64_t sub_29ABD9350(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A20763B8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_29ABD9380(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v2 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = a2[1];
  v3 = a2[2];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v2;
  v9 = v4;
  v10 = v3;
  v5 = *(a1 + 8);
  v11 = *(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetFromParent(&v9, &v12);
  pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetVisibility(&v12, &v14);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v14)
  {
    v6 = (*(*v14 + 32))(v14, 0.0) ^ v5 ^ 1 | 0x100000000;
  }

  else
  {
    v6 = 0x100000000;
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v6;
}

void sub_29ABD9488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(v14 - 24);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABD94DC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2076418))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29ABD9528(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4[1] - *a4;
  if (~a2 + a3 < 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3))
  {
    v6 = *a4 + 40 * (a2 - a3) + v4;
    if (*(v6 + 32))
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v6 + 24));
      v9 = MEMORY[0x29EDC94A8];
      if (!pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x29EDC94A8], v10))
      {
        v20[0] = "sdf/predicateLibrary.h";
        v20[1] = "_CheckOneNameAndDefault";
        v20[2] = 349;
        v20[3] = "static void pxrInternal__aapl__pxrReserved__::SdfPredicateLibrary<const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &>::_CheckOneNameAndDefault(BOOL &, size_t, size_t, const NamesAndDefaults &) [DomainType = const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &, ParamType = BOOL]";
        v21 = 0;
        if (*(v6 + 23) < 0)
        {
          v11 = *v6;
        }

        else
        {
          v11 = v6;
        }

        pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName((v6 + 24), &v18);
        v12 = v19;
        v13 = v18.__vftable;
        pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(v9 + 8) & 0x7FFFFFFFFFFFFFFFLL), __p);
        if (v12 >= 0)
        {
          v14 = &v18;
        }

        else
        {
          v14 = v13;
        }

        if (v17 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v20, 1, "Predicate default parameter '%s' value of type '%s' cannot convert to c++ argument of type '%s' at index %zu", v11, v14, v15, a2);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }

        if (v19 < 0)
        {
          operator delete(v18.__vftable);
        }

        *a1 = 0;
      }
    }
  }
}

void sub_29ABD9688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABD96BC(uint64_t a1)
{
  *a1 = &unk_2A20762B0;
  v3 = (a1 + 8);
  sub_29A217894(&v3);
  return a1;
}

void sub_29ABD9714(char *a1)
{
  *a1 = &unk_2A20762B0;
  v2 = (a1 + 8);
  sub_29A217894(&v2);
  operator delete(a1);
}

void *sub_29ABD9770@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A20762B0;
  v4[2] = 0;
  v4[3] = 0;
  v4[1] = 0;
  result = sub_29A593F48(v4 + 1, *(a1 + 8), *(a1 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  v4[4] = *(a1 + 32);
  *v4 = &unk_2A2076438;
  *a2 = v4;
  return result;
}

void *sub_29ABD9824@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v7 = 0;
  result = sub_29ABD98F0(a1, &v7, &v6);
  v4 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v4 &= 0xFFFFFFFFFFFFFFF8;
  }

  a2[3] = 0;
  *a2 = &unk_2A2076480;
  a2[1] = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      a2[1] &= 0xFFFFFFFFFFFFFFF8;
    }

    a2[3] = a2;
    atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_release);
  }

  else
  {
    a2[3] = a2;
  }

  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *sub_29ABD98F0@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a2 < 0xCCCCCCCCCCCCCCCDLL * ((result[1] - *result) >> 3) && (v4 = *result + 40 * *a2, result = sub_29A1EFC10((v4 + 24)), result))
  {
    v5 = *(v4 + 32);
    if ((v5 & 4) != 0)
    {
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v4 + 24);
    }

    return pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a3);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void *sub_29ABD9990(void *result)
{
  *result = &unk_2A2076480;
  v1 = result[1];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29ABD99C8(void *__p)
{
  *__p = &unk_2A2076480;
  v1 = *(__p + 1);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(__p);
}

void *sub_29ABD9A00(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2076480;
  result[1] = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t sub_29ABD9A6C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2076480;
  a2[1] = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a2[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t sub_29ABD9AB4(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29ABD9AD0(void *__p)
{
  v1 = *(__p + 1);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(__p);
}

uint64_t sub_29ABD9AEC(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::HdPurposeSchema::GetFromParent((a2 + 8), &v6);
  pxrInternal__aapl__pxrReserved__::HdPurposeSchema::GetPurpose(&v6, &v8);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (v8)
  {
    (*(*v8 + 32))(&v6, 0.0);
    v3 = *(a1 + 8) ^ v6;
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v3 >= 8)
    {
      v4 = 0x100000000;
    }

    else
    {
      v4 = 0x100000001;
    }
  }

  else
  {
    v4 = 0x100000000;
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  return v4;
}

void sub_29ABD9BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABD9BD8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20764E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29ABD9C24(uint64_t a1)
{
  *a1 = &unk_2A20762B0;
  v3 = (a1 + 8);
  sub_29A217894(&v3);
  return a1;
}

void sub_29ABD9C7C(char *a1)
{
  *a1 = &unk_2A20762B0;
  v2 = (a1 + 8);
  sub_29A217894(&v2);
  operator delete(a1);
}

void *sub_29ABD9CD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A20762B0;
  v4[2] = 0;
  v4[3] = 0;
  v4[1] = 0;
  result = sub_29A593F48(v4 + 1, *(a1 + 8), *(a1 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  v4[4] = *(a1 + 32);
  *v4 = &unk_2A2076500;
  *a2 = v4;
  return result;
}

uint64_t sub_29ABD9D8C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  if (a1[1] == *a1 || !sub_29A1EFC10((v3 + 24)))
  {
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v15);
  }

  else
  {
    v4 = *(v3 + 32);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v3 + 24);
    }

    else
    {
      v5 = *(v3 + 24);
    }

    if (*(v5 + 23) < 0)
    {
      sub_29A008D14(&__str, *v5, *(v5 + 8));
    }

    else
    {
      v6 = *v5;
      __str.__r_.__value_.__r.__words[2] = *(v5 + 16);
      *&__str.__r_.__value_.__l.__data_ = v6;
    }

    sub_29A008E78(__p, ".");
    pxrInternal__aapl__pxrReserved__::TfStringSplit(&__str, __p, v9);
    pxrInternal__aapl__pxrReserved__::TfToTokenVector(v9, v10);
    v13 = v9;
    sub_29A012C90(&v13);
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v15, (v10[1] - v10[0]) >> 3, v10[0]);
    v9[0] = v10;
    sub_29A124AB0(v9);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  sub_29ABD30AC(&__str, v15);
  *(a2 + 24) = 0;
  v7 = operator new(0x40uLL);
  *v7 = &unk_2A2076548;
  sub_29ABD30AC(v7 + 2, &__str);
  *(a2 + 24) = v7;
  sub_29ABC3488(&__str);
  return sub_29ABC3488(v15);
}

void sub_29ABD9F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  a9 = &a12;
  sub_29A124AB0(&a9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void *sub_29ABD9FB8(void *a1)
{
  *a1 = &unk_2A2076548;
  sub_29ABC3488((a1 + 1));
  return a1;
}

void sub_29ABD9FFC(void *a1)
{
  *a1 = &unk_2A2076548;
  sub_29ABC3488((a1 + 1));

  operator delete(a1);
}

_DWORD *sub_29ABDA050(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_2A2076548;
  sub_29ABD30AC(v2 + 2, a1 + 8);
  return v2;
}

void sub_29ABDA0EC(void *a1)
{
  sub_29ABC3488(a1 + 8);

  operator delete(a1);
}

uint64_t sub_29ABDA128(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get((a1 + 8), (a2 + 8), &v4);
  v2 = v4;
  if (*(&v4 + 1))
  {
    sub_29A014BEC(*(&v4 + 1));
  }

  if (v2)
  {
    return 0x100000001;
  }

  else
  {
    return 0x100000000;
  }
}

uint64_t sub_29ABDA178(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20765A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29ABDA1C4(uint64_t a1)
{
  *a1 = &unk_2A20762B0;
  v3 = (a1 + 8);
  sub_29A217894(&v3);
  return a1;
}

void sub_29ABDA21C(char *a1)
{
  *a1 = &unk_2A20762B0;
  v2 = (a1 + 8);
  sub_29A217894(&v2);
  operator delete(a1);
}

void *sub_29ABDA278@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A20762B0;
  v4[2] = 0;
  v4[3] = 0;
  v4[1] = 0;
  result = sub_29A593F48(v4 + 1, *(a1 + 8), *(a1 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  v4[4] = *(a1 + 32);
  *v4 = &unk_2A20765C8;
  *a2 = v4;
  return result;
}

void *sub_29ABDA32C@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v7 = 0;
  result = sub_29ABD98F0(a1, &v7, &v6);
  v4 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v4 &= 0xFFFFFFFFFFFFFFF8;
  }

  a2[3] = 0;
  *a2 = &unk_2A2076610;
  a2[1] = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      a2[1] &= 0xFFFFFFFFFFFFFFF8;
    }

    a2[3] = a2;
    atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_release);
  }

  else
  {
    a2[3] = a2;
  }

  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *sub_29ABDA3F8(void *result)
{
  *result = &unk_2A2076610;
  v1 = result[1];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29ABDA430(void *__p)
{
  *__p = &unk_2A2076610;
  v1 = *(__p + 1);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(__p);
}

void *sub_29ABDA468(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2076610;
  result[1] = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t sub_29ABDA4D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2076610;
  a2[1] = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a2[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t sub_29ABDA51C(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29ABDA538(void *__p)
{
  v1 = *(__p + 1);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(__p);
}

uint64_t sub_29ABDA554(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetFromParent((a2 + 8), &v5);
  pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPrimvar(&v5, (a1 + 8), &v7);
  IsDefined = pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v7);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }

  return IsDefined | 0x100000000;
}

void sub_29ABDA5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABDA5F0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2076670))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29ABDA63C(uint64_t a1)
{
  *a1 = &unk_2A20762B0;
  v3 = (a1 + 8);
  sub_29A217894(&v3);
  return a1;
}

void sub_29ABDA694(char *a1)
{
  *a1 = &unk_2A20762B0;
  v2 = (a1 + 8);
  sub_29A217894(&v2);
  operator delete(a1);
}

void *sub_29ABDA6F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A20762B0;
  v4[2] = 0;
  v4[3] = 0;
  v4[1] = 0;
  result = sub_29A593F48(v4 + 1, *(a1 + 8), *(a1 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  v4[4] = *(a1 + 32);
  *v4 = &unk_2A2076690;
  *a2 = v4;
  return result;
}

void sub_29ABDA7A4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  if (v5 < 1 - v4)
  {
    *&__dst = "sdf/predicateLibrary.h";
    *(&__dst + 1) = "_TryToBindCall";
    v12 = 620;
    v13 = "static PredicateFunction pxrInternal__aapl__pxrReserved__::SdfPredicateLibrary<const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &>::_TryToBindCall(const Fn &, const std::vector<SdfPredicateExpression::FnArg> &, const NamesAndDefaults &) [DomainType = const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &, Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/collectionPredicateLibrary.cpp:231:9)]";
    v14 = 0;
    v6 = "s";
    if (!v4)
    {
      v6 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Function requires at least %zu argument%s, %zu given", 1 - v4, v6, v5);
    goto LABEL_7;
  }

  if (v5 >= 2)
  {
    *&__dst = "sdf/predicateLibrary.h";
    *(&__dst + 1) = "_TryToBindCall";
    v12 = 625;
    v13 = "static PredicateFunction pxrInternal__aapl__pxrReserved__::SdfPredicateLibrary<const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &>::_TryToBindCall(const Fn &, const std::vector<SdfPredicateExpression::FnArg> &, const NamesAndDefaults &) [DomainType = const pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim &, Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/collectionPredicateLibrary.cpp:231:9)]";
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Function takes at most %zu argument%s, %zu given", 1uLL, "", v5);
LABEL_7:
    *(a3 + 24) = 0;
    return;
  }

  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  memset(__p, 0, sizeof(__p));
  if (sub_29ABD7D4C(v9, a2, (a1 + 8), __p))
  {
    if (SHIBYTE(v10) < 0)
    {
      sub_29A008D14(&__dst, v9[0], v9[1]);
    }

    else
    {
      __dst = *v9;
      v12 = v10;
    }

    *(a3 + 24) = 0;
    v7 = operator new(0x28uLL);
    *v7 = &unk_2A20766D8;
    *(v7 + 8) = __dst;
    *(v7 + 3) = v12;
    __dst = 0uLL;
    v12 = 0;
    *(v7 + 33) = 0;
    *(v7 + 9) = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_29ABDA9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABDA9EC(uint64_t a1)
{
  *a1 = &unk_2A20766D8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29ABDAA3C(void **__p)
{
  *__p = &unk_2A20766D8;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

char *sub_29ABDAA9C(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2A20766D8;
  v3 = v2 + 8;
  if (*(a1 + 31) < 0)
  {
    sub_29A008D14(v3, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    *v3 = *(a1 + 8);
    *(v2 + 3) = *(a1 + 24);
  }

  *(v2 + 9) = 0;
  *(v2 + 33) = 0;
  return v2;
}

char *sub_29ABDAB28(char *result, uint64_t a2)
{
  *a2 = &unk_2A20766D8;
  v3 = (a2 + 8);
  if (result[31] < 0)
  {
    result = sub_29A008D14(v3, *(result + 1), *(result + 2));
  }

  else
  {
    v4 = *(result + 8);
    *(a2 + 24) = *(result + 3);
    *v3 = v4;
  }

  *(a2 + 36) = 0;
  *(a2 + 33) = 0;
  return result;
}

void sub_29ABDAB98(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void sub_29ABDABAC(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29ABDABF0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v18[0] = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v18[0] &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = a2[2];
  v18[1] = a2[1];
  v19 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29ABD8598(&v20, v18, (a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetFromParent(&v21, &v25);
  pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetMaterialBinding(&v25, &v27);
  pxrInternal__aapl__pxrReserved__::HdMaterialBindingSchema::GetPath(&v27, &v29);
  if (v28)
  {
    sub_29A014BEC(v28);
  }

  if (v26)
  {
    sub_29A014BEC(v26);
  }

  if (v29)
  {
    (*(*v29 + 32))(&v27, 0.0);
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v27);
    v5 = *(String + 23);
    if ((v5 & 0x80u) == 0)
    {
      v6 = String;
    }

    else
    {
      v6 = *String;
    }

    if ((v5 & 0x80u) != 0)
    {
      v5 = String[1];
    }

    if ((v24 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v24 & 0x80u) == 0)
    {
      v8 = v24;
    }

    else
    {
      v8 = __p[1];
    }

    if (v8)
    {
      if (v5 >= v8)
      {
        v10 = &v6[v5];
        v11 = *v7;
        v12 = v6;
        do
        {
          v13 = v5 - v8;
          if (v13 == -1)
          {
            break;
          }

          v14 = memchr(v12, v11, v13 + 1);
          if (!v14)
          {
            break;
          }

          v15 = v14;
          if (!memcmp(v14, v7, v8))
          {
            goto LABEL_33;
          }

          v12 = v15 + 1;
          v5 = v10 - (v15 + 1);
        }

        while (v5 >= v8);
        v15 = v10;
LABEL_33:
        if (v15 == v10 || v15 - v6 == -1)
        {
          v9 = 0x100000000;
        }

        else
        {
          v9 = 0x100000001;
        }
      }

      else
      {
        v9 = 0x100000000;
      }
    }

    else
    {
      v9 = 0x100000001;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27 + 1);
    sub_29A1DE3A4(&v27);
  }

  else
  {
    v9 = 0x100000000;
  }

  if (v30)
  {
    sub_29A014BEC(v30);
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22)
  {
    sub_29A014BEC(v22);
  }

  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if ((v18[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v18[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v9;
}

void sub_29ABDAE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  sub_29A1DCEA8((v5 - 80));
  v7 = *(v5 - 56);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  sub_29ABD8540(va);
  if (a5)
  {
    sub_29A014BEC(a5);
  }

  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29ABDAEB8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2076738))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens_StaticTokenType::~HdCollectionSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens_StaticTokenType::HdCollectionSchemaTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "collection", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "membershipExpression", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ABDB080(_Unwind_Exception *a1)
{
  v3 = 8;
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
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdCollectionSchema::GetMembershipExpression(pxrInternal__aapl__pxrReserved__::HdCollectionSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABDB580(&pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens);
  }

  v5 = v4[1];
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABDB198(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABDB198(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ABDB60C(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdCollectionSchema::BuildRetained(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11[0] = 0;
  v9 = 0;
  if (*a1)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens);
    if (!v4)
    {
      v4 = sub_29ABDB580(&pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens);
    }

    sub_29A166F2C(v11, v4 + 1);
    v6 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v6;
    v10 = v5;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v7, v11, &v9, &v8);
  *a2 = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v11[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v11[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABDB314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdCollectionSchema::Builder::SetMembershipExpression(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdCollectionSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens))
    {
      sub_29ABDB580(&pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

atomic_uint **pxrInternal__aapl__pxrReserved__::HdCollectionSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdCollectionSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens);
  if (!result)
  {
    return sub_29ABDB580(&pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdCollectionSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdCollectionSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1748E38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748E38))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABDB580(&pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1748E00, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1748E00, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748E38);
  }

  return &unk_2A1748E00;
}

atomic_uint **sub_29ABDB580(atomic_ullong *a1)
{
  result = sub_29ABDB5C8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens_StaticTokenType::~HdCollectionSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

atomic_uint **sub_29ABDB5C8()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens_StaticTokenType::HdCollectionSchemaTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29ABDB60C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2076748, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens_StaticTokenType::~HdCollectionsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens_StaticTokenType::HdCollectionsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "collections", 0);
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCollectionsSchema::GetCollectionNames@<X0>(pxrInternal__aapl__pxrReserved__::HdCollectionsSchema *this@<X0>, void *a2@<X8>)
{
  result = *this;
  if (result)
  {
    return (*(*result + 16))();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdCollectionsSchema::GetCollection(pxrInternal__aapl__pxrReserved__::HdCollectionsSchema *this@<X0>, atomic_uint **a2@<X1>, void *a3@<X8>)
{
  v8 = *a2;
  if ((*a2 & 7) != 0)
  {
    v4 = (*a2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v4;
    }
  }

  sub_29ABC2F3C(this, &v9);
  v6 = v9;
  v5 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v5);
    v7 = v10;
    *a3 = v6;
    a3[1] = v5;
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  else
  {
    *a3 = v9;
    a3[1] = 0;
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

double pxrInternal__aapl__pxrReserved__::HdCollectionsSchema::BuildRetained@<D0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(a1, a2, a3, &v6);
  result = *&v6;
  *a4 = v6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdCollectionsSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens))
    {
      sub_29ABDBB64(&pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::HdCollectionsSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdCollectionsSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens);
  if (!result)
  {
    return sub_29ABDBB64(&pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdCollectionsSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdCollectionsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1748E78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748E78))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABDBB64(&pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1748E40, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1748E40, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748E78);
  }

  return &unk_2A1748E40;
}

unint64_t sub_29ABDBB64(atomic_ullong *a1)
{
  v2 = sub_29ABDBBE4();
  v3 = v2;
  v4 = 0;
  atomic_compare_exchange_strong(a1, &v4, v2);
  if (v4)
  {
    if (v2)
    {
      v6 = (v2 + 8);
      sub_29A124AB0(&v6);
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v3);
    }

    return atomic_load(a1);
  }

  return v3;
}

pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens_StaticTokenType *sub_29ABDBBE4()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens_StaticTokenType::HdCollectionsSchemaTokens_StaticTokenType(v0);
  return v0;
}

void *pxrInternal__aapl__pxrReserved__::HdCommandArgDescriptor::HdCommandArgDescriptor(void *this)
{
  *this = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[2] = 0;
  return this;
}

double pxrInternal__aapl__pxrReserved__::HdCommandDescriptor::HdCommandDescriptor(pxrInternal__aapl__pxrReserved__::HdCommandDescriptor *this)
{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens_StaticTokenType::~HdConeSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens_StaticTokenType *this)
{
  v8 = (this + 56);
  sub_29A124AB0(&v8);
  v2 = *(this + 6);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 5);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 4);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 3);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 1);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens_StaticTokenType::HdConeSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens_StaticTokenType *this)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "cone", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "height", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "radius", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "axis", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "X", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "Y", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "Z", 0);
  v3 = (this + 56);
  v4 = *this;
  v21 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v5;
    }
  }

  v6 = *(this + 1);
  v22 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v7;
    }
  }

  v8 = *(this + 2);
  v23 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v9;
    }
  }

  v10 = *(this + 3);
  v24 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v11;
    }
  }

  v12 = *(this + 4);
  v25 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v13;
    }
  }

  v14 = *(this + 5);
  v26 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v15;
    }
  }

  v16 = *(this + 6);
  v27 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v17;
    }
  }

  *v3 = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  sub_29A12EF7C(v3, &v21, &v28, 7uLL);
  for (i = 48; i != -8; i -= 8)
  {
    v19 = *(&v21 + i);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ABDBF74(_Unwind_Exception *a1)
{
  v3 = 48;
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
      v5 = v1[6];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[5];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[4];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[3];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[2];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[1];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdConeSchema::GetHeight(pxrInternal__aapl__pxrReserved__::HdConeSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
  }

  v5 = *(v4 + 1);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdConeSchema::GetRadius(pxrInternal__aapl__pxrReserved__::HdConeSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
  }

  v5 = *(v4 + 2);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdConeSchema::GetAxis(pxrInternal__aapl__pxrReserved__::HdConeSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
  }

  v5 = *(v4 + 3);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdConeSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v33[2] = *MEMORY[0x29EDCA608];
  v7 = &v30;
  v32 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v8 = &v32;
  memset(v31, 0, sizeof(v31));
  v30 = 0u;
  if (*a1)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
    if (!v10)
    {
      v10 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
    }

    v7 = v31;
    v8 = v33;
    sub_29A166F2C(&v32, v10 + 1);
    v12 = *a1;
    v11 = a1[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(&v30 + 1);
    *&v30 = v12;
    *(&v30 + 1) = v11;
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  if (*a2)
  {
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
    if (!v15)
    {
      v15 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
    }

    sub_29A166F2C(v8, v15 + 2);
    ++v14;
    v17 = *a2;
    v16 = a2[1];
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = *(v7 + 1);
    *v7 = v17;
    *(v7 + 1) = v16;
    if (v18)
    {
      sub_29A014BEC(v18);
    }
  }

  if (*a3)
  {
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
    if (!v19)
    {
      v19 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
    }

    sub_29A166F2C(&v33[v14 - 1], v19 + 3);
    v20 = v14 + 1;
    v21 = &v31[v14 - 1];
    v23 = *a3;
    v22 = a3[1];
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    v24 = v21[1];
    *v21 = v23;
    v21[1] = v22;
    if (v24)
    {
      sub_29A014BEC(v24);
    }
  }

  else
  {
    v20 = v14;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v20, &v32, &v30, &v29);
  *a4 = v29;
  for (i = 40; i != -8; i -= 16)
  {
    v26 = *(&v31[-1] + i);
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  for (j = 2; j != -1; --j)
  {
    v28 = v33[j - 1];
    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29ABDC4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v18 = 40;
  while (1)
  {
    v19 = *(&a11 + v18);
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    v18 -= 16;
    if (v18 == -8)
    {
      v20 = 16;
      while (1)
      {
        v21 = *(&a17 + v20);
        if ((v21 & 7) != 0)
        {
          atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v20 -= 8;
        if (v20 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdConeSchema::Builder::SetHeight(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdConeSchema::Builder::SetRadius(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdConeSchema::Builder::SetAxis(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdConeSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens))
    {
      sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdConeSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdConeSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
  if (!result)
  {
    return sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdConeSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdConeSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1748EB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748EB8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1748E80, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1748E80, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748EB8);
  }

  return &unk_2A1748E80;
}

double pxrInternal__aapl__pxrReserved__::HdConeSchema::BuildAxisDataSource@<D0>(pxrInternal__aapl__pxrReserved__::HdConeSchema *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
  }

  if ((*(v5 + 4) ^ *this) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
    if (!v7)
    {
      v7 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
    }

    if ((*(v7 + 5) ^ *this) > 7)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
      if (!v8)
      {
        v8 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
      }

      if ((*(v8 + 6) ^ *this) > 7)
      {
        sub_29ABCCFA4(this, &v12);
        result = *&v12;
        *a2 = v12;
        return result;
      }

      if ((atomic_load_explicit(&qword_2A1748F00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748F00))
      {
        sub_29ABCCFA4(this, &qword_2A1748EF0);
        __cxa_atexit(sub_29ABCD02C, &qword_2A1748EF0, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1748F00);
      }

      v6 = &qword_2A1748EF0;
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A1748EE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748EE8))
      {
        sub_29ABCCFA4(this, &qword_2A1748ED8);
        __cxa_atexit(sub_29ABCD02C, &qword_2A1748ED8, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1748EE8);
      }

      v6 = &qword_2A1748ED8;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A1748ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748ED0))
    {
      sub_29ABCCFA4(this, &qword_2A1748EC0);
      __cxa_atexit(sub_29ABCD02C, &qword_2A1748EC0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1748ED0);
    }

    v6 = &qword_2A1748EC0;
  }

  v10 = *v6;
  v9 = v6[1];
  *a2 = v10;
  *(a2 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens_StaticTokenType *sub_29ABDCA4C(atomic_ullong *a1)
{
  result = sub_29ABDCA94();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens_StaticTokenType::~HdConeSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens_StaticTokenType *sub_29ABDCA94()
{
  v0 = operator new(0x50uLL);
  pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens_StaticTokenType::HdConeSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor::_GetNode(pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor *this@<X0>, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a2@<X1>, uint64_t **a3@<X8>)
{
  v6 = *this;
  if (!*this)
  {
    v7 = operator new(0x20uLL);
    *v7 = 0u;
    v7[1] = 0u;
    sub_29ABDDD70(&v25, v7);
    v8 = v25;
    v25 = 0uLL;
    v9 = *(this + 1);
    *this = v8;
    if (v9)
    {
      sub_29A014BEC(v9);
      if (*(&v25 + 1))
      {
        sub_29A014BEC(*(&v25 + 1));
      }
    }

    v6 = *this;
  }

  v10 = *(this + 1);
  *a3 = v6;
  a3[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ElementCount = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElementCount(a2);
  v24 = a3;
  if (ElementCount)
  {
    v12 = 0;
    while (1)
    {
      Element = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElement(a2, v12);
      v14 = sub_29ABDCD64(v6, Element);
      v15 = v14;
      if (v6[1] == v14)
      {
        break;
      }

      v17 = v14[3];
      v16 = v14[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v10)
      {
        sub_29A014BEC(v10);
      }

      if (!v17)
      {
        v23 = operator new(0x20uLL);
        *v23 = 0u;
        v23[1] = 0u;
        sub_29ABDDD70(&v25, v23);
        v18 = *(&v25 + 1);
        v17 = v25;
        v25 = 0uLL;
        if (v16)
        {
          sub_29A014BEC(v16);
          if (*(&v25 + 1))
          {
            sub_29A014BEC(*(&v25 + 1));
          }
        }

        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = v15[4];
        v15[3] = v17;
        v15[4] = v18;
        if (!v22)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      v18 = v16;
LABEL_26:
      ++v12;
      v6 = v17;
      v10 = v18;
      if (ElementCount == v12)
      {
        goto LABEL_36;
      }
    }

    v19 = operator new(0x20uLL);
    *v19 = 0u;
    v19[1] = 0u;
    sub_29ABDDD70(&v25, v19);
    v18 = *(&v25 + 1);
    v17 = v25;
    v25 = 0uLL;
    if (v10)
    {
      sub_29A014BEC(v10);
      if (*(&v25 + 1))
      {
        sub_29A014BEC(*(&v25 + 1));
      }
    }

    v25 = 0uLL;
    *&v26 = v17;
    *(&v26 + 1) = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = sub_29ABDCDE0(v6, Element);
    v21 = v20[1];
    *v20 = v25;
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    v22 = v20[3];
    *(v20 + 1) = v26;
    if (!v22)
    {
      goto LABEL_26;
    }

LABEL_25:
    sub_29A014BEC(v22);
    goto LABEL_26;
  }

  v18 = v10;
  v17 = v6;
LABEL_36:
  *v24 = v17;
  v24[1] = v18;
}

void sub_29ABDCD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ABDCD64(void *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = sub_29A160470(v3, a2);
    if (v4)
    {
      return (*a1 + 40 * v4[3]);
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    result = *a1;
    v6 = a1[1];
    if (*a1 != v6)
    {
      while ((*result ^ *a2) >= 8)
      {
        result += 5;
        if (result == v6)
        {
          return a1[1];
        }
      }
    }
  }

  return result;
}

void *sub_29ABDCDE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v6[0] = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6[0] = v3;
    }
  }

  v6[1] = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v4 = sub_29ABDDEB4(a1, v6);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if ((v6[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v6[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v4 + 1;
}

void sub_29ABDCE90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29ABDDC88(va1);
  sub_29A95E544(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor *pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor::Set(pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor *a1, pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *this, uint64_t *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (!*(this + 12))
  {
    return a1;
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::RemoveLastElement(this, v21);
  pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor::_GetNode(a1, v21, &v19);
  sub_29ABC3488(v21);
  v6 = v19;
  LastElement = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetLastElement(this);
  v8 = sub_29ABDCDE0(v6, LastElement);
  v9 = v8;
  v10 = *a3;
  if (*a3)
  {
    v11 = a3[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = v8[1];
    *v9 = v10;
    v9[1] = v11;
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v13 = operator new(8uLL);
  *v13 = &unk_2A2076830;
  sub_29ABDE5AC(v21, v13);
  v14 = v21[0];
  v21[0] = 0uLL;
  v15 = v9[1];
  *v9 = v14;
  if (v15)
  {
    sub_29A014BEC(v15);
    v12 = *(&v21[0] + 1);
    if (*(&v21[0] + 1))
    {
LABEL_9:
      sub_29A014BEC(v12);
    }
  }

LABEL_10:
  if (*(a1 + 2))
  {
    if (!*a3)
    {
      goto LABEL_15;
    }

    sub_29ABC3244(a3, v21);
    v16 = *&v21[0];
    if (*(&v21[0] + 1))
    {
      sub_29A014BEC(*(&v21[0] + 1));
    }

    if (v16)
    {
LABEL_15:
      sub_29ABDE6B8(a1 + 32, this);
    }
  }

  v17 = v9[3];
  v9[2] = 0;
  v9[3] = 0;
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (v20)
  {
    sub_29A014BEC(v20);
  }

  return a1;
}

void sub_29ABDD030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ABDD064@<X0>(void *a1@<X8>)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A2076830;

  return sub_29ABDE5AC(a1, v2);
}

uint64_t sub_29ABDD0C0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor *pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor::Overlay(pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor *a1, pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *this, uint64_t *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  if (*(this + 12))
  {
    v4 = *a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::RemoveLastElement(this, v16);
    pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor::_GetNode(a1, v16, &v14);
    sub_29ABC3488(v16);
    v7 = v14;
    LastElement = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetLastElement(this);
    v9 = sub_29ABDCDE0(v7, LastElement);
    v11 = *a3;
    v10 = a3[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = v9[1];
    *v9 = v11;
    v9[1] = v10;
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    if (v15)
    {
      sub_29A014BEC(v15);
    }
  }

  return a1;
}

void sub_29ABDD1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ABC3488(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor::Finish(pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor *this@<X0>, uint64_t a2@<X8>)
{
  v19[29] = *MEMORY[0x29EDCA608];
  v4 = this + 16;
  if (!*(this + 2))
  {
    if (*this)
    {
      sub_29ABDD5B4(this, &v17);
      *a2 = v17;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
    }

    return;
  }

  if (!*(this + 64))
  {
    sub_29ABDD5B4(this, &v16);
    sub_29ABDD514(&v16, v4, &v17);
    *a2 = v17;
    v17 = 0uLL;
    v12 = *(&v16 + 1);
    if (!*(&v16 + 1))
    {
      return;
    }

LABEL_29:
    sub_29A014BEC(v12);
    return;
  }

  if ((atomic_load_explicit(&qword_2A1748F18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748F18))
  {
    sub_29ABDD064(&xmmword_2A1748F08);
    __cxa_atexit(sub_29ABDD0C0, &xmmword_2A1748F08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748F18);
  }

  v5 = (this + 32);
  v6 = (this + 32);
  if (*(this + 65) >= 5u)
  {
    v6 = *v5;
  }

  v7 = *(this + 64);
  *&v17 = sub_29ABDD684;
  v8 = 126 - 2 * __clz(v7);
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  sub_29ABDEA6C(v6, v6 + 56 * v7, &v17, v9, 1);
  v17 = 0u;
  v18 = 0u;
  v19[28] = 0x400000000;
  if (*(this + 65) >= 5u)
  {
    v5 = *v5;
  }

  v10 = *(this + 64);
  if (v10)
  {
    v11 = 56 * v10;
    do
    {
      v16 = xmmword_2A1748F08;
      if (*(&xmmword_2A1748F08 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_2A1748F08 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor::Set(&v17, v5, &v16);
      if (*(&v16 + 1))
      {
        sub_29A014BEC(*(&v16 + 1));
      }

      v5 = (v5 + 56);
      v11 -= 56;
    }

    while (v11);
  }

  sub_29ABDD5B4(this, &v14);
  sub_29ABDD5B4(&v17, &v16);
  v13 = v16;
  sub_29ABDD6BC(&v14, &v13, v4, &v15);
  *a2 = v15;
  v15 = 0uLL;
  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  sub_29ABDDCDC(v19);
  if (*(&v18 + 1))
  {
    sub_29A014BEC(*(&v18 + 1));
  }

  v12 = *(&v17 + 1);
  if (*(&v17 + 1))
  {
    goto LABEL_29;
  }
}

void sub_29ABDD514(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  v7 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(v6, &v7, a2);
  sub_29ABDE960(a3, v6);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29ABDD590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v11)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABDD5B4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v5 = *a1;
  v6 = a1[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    *v4 = &unk_2A2076770;
    v4[1] = v5;
    v4[2] = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *v4 = &unk_2A2076770;
    v4[1] = v5;
    v4[2] = 0;
  }

  sub_29ABDE854(a2, v4);
  if (v6)
  {

    sub_29A014BEC(v6);
  }
}

void sub_29ABDD66C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABDD6BC(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x90uLL);
  v9 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(v8, &v9, a2, a3);
  sub_29ABDE960(a4, v8);
  if (*(&v9 + 1))
  {
    sub_29A014BEC(*(&v9 + 1));
  }
}

void sub_29ABDD748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v11)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

double pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor::_FinishWithNoInitialContainer@<D0>(pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor *this@<X0>, _OWORD *a2@<X8>)
{
  sub_29ABDD5B4(this, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_29ABDD7A4(uint64_t a1)
{
  sub_29ABDDCDC(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor::_NodeContainerDataSource::_NodeContainerDataSource(void *result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_2A2076770;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_2A2076770;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor::_NodeContainerDataSource::GetNames@<X0>(void *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = this[1];
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    while (v4 != v5)
    {
      if (v4[1] || v4[3])
      {
        this = sub_29A1D8028(a2, v4);
      }

      v4 += 5;
    }
  }

  return this;
}

void sub_29ABDD8C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor::_NodeContainerDataSource::Get(pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor::_NodeContainerDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v5 = *(this + 1);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = sub_29ABDCD64(v5, a2);
  if (*(*(this + 1) + 8) == v6)
  {
    goto LABEL_17;
  }

  v7 = v6;
  sub_29ABC3244((v6 + 1), &v17);
  if (!v17)
  {
    v10 = v7[1];
    if (v10)
    {
      v11 = v7[2];
      *a3 = v10;
      a3[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      goto LABEL_11;
    }

    if (*(&v17 + 1))
    {
      sub_29A014BEC(*(&v17 + 1));
    }

    v14 = v7[3];
    v13 = v7 + 3;
    if (v14)
    {
      sub_29ABDDA24(v13, &v17);
      *a3 = v17;
      return;
    }

LABEL_17:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v9 = v7[3];
  v8 = v7 + 3;
  if (v9)
  {
    sub_29ABDDA24(v8, &v15);
    sub_29ABDD514(&v15, &v17, &v16);
    *a3 = v16;
    v16 = 0uLL;
    if (*(&v15 + 1))
    {
      sub_29A014BEC(*(&v15 + 1));
    }
  }

  else
  {
    v12 = *(&v17 + 1);
    *a3 = v17;
    a3[1] = v12;
    v17 = 0uLL;
  }

LABEL_11:
  if (*(&v17 + 1))
  {
    sub_29A014BEC(*(&v17 + 1));
  }
}

void sub_29ABDD9F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABDDA24(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v5 = *a1;
  v6 = a1[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    *v4 = &unk_2A2076770;
    v4[1] = v5;
    v4[2] = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *v4 = &unk_2A2076770;
    v4[1] = v5;
    v4[2] = 0;
  }

  sub_29ABDE854(a2, v4);
  if (v6)
  {

    sub_29A014BEC(v6);
  }
}

void sub_29ABDDADC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABDDAF4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2076770;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ABDDB50(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2076770;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29ABDDBB0(void ***a1)
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
        v4 -= 5;
        sub_29ABDDC38(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29ABDDC38(uint64_t a1, void *a2)
{
  v3 = a2[4];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a2[2];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void *sub_29ABDDC88(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t sub_29ABDDCDC(uint64_t a1)
{
  sub_29ABDDD1C(a1);
  if (*(a1 + 228) >= 5u)
  {
    free(*a1);
  }

  return a1;
}

uint64_t sub_29ABDDD1C(uint64_t result)
{
  v1 = result;
  if (*(result + 228) >= 5u)
  {
    result = *result;
  }

  v2 = *(v1 + 224);
  if (v2)
  {
    v3 = 56 * v2;
    do
    {
      result = sub_29ABC3488(result) + 56;
      v3 -= 56;
    }

    while (v3);
  }

  return result;
}

void *sub_29ABDDD70(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20767B8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABDDDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_29ABDDE64(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABDDDF4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABDDE24(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2076808))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABDDE64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29A1601D8((a2 + 24), 0);
    v3 = a2;
    sub_29ABDDBB0(&v3);
    operator delete(a2);
  }
}

void *sub_29ABDDEB4(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
    v6 = *a2;
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    v12[0] = v6;
    v12[1] = v5;
    v7 = sub_29A162678(v4, v12, v12);
    if ((v12[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v12[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v8 & 1) == 0)
    {
      return (*a1 + 40 * v7[3]);
    }

    goto LABEL_14;
  }

  result = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    while ((*result ^ *a2) >= 8)
    {
      result += 5;
      if (result == v10)
      {
        goto LABEL_14;
      }
    }
  }

  if (result == v10)
  {
LABEL_14:
    sub_29ABDE3E4(v12, a2, a2 + 1);
    sub_29ABDE058(a1, v12);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    if (v13)
    {
      sub_29A014BEC(v13);
    }

    if ((v12[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v12[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v11 = a1[1];
    if (0xCCCCCCCCCCCCCCCDLL * ((v11 - *a1) >> 3) >= 8)
    {
      sub_29ABDE444(a1);
      v11 = a1[1];
    }

    return (v11 - 40);
  }

  return result;
}

void sub_29ABDE024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABDDC88(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29ABDE058(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29ABDE0A0(a1, a2);
  }

  else
  {
    result = sub_29ABDE1CC(v3, a2) + 5;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29ABDE0A0(uint64_t a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A10E224(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[5 * v2];
  *(&v16 + 1) = &v7[5 * v6];
  sub_29ABDE1CC(v15, a2);
  *&v16 = v15 + 5;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  sub_29ABDE22C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29ABDE368(&v14);
  return v13;
}

void sub_29ABDE1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ABDE368(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29ABDE1CC(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = a2[2];
  result[1] = a2[1];
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[4];
  result[3] = a2[3];
  result[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29ABDE22C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29ABDE1CC(a4, v7);
      v7 += 5;
      a4 = v12 + 5;
      v12 += 5;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29ABDDC38(a1, v5);
      v5 += 5;
    }
  }

  return sub_29ABDE2DC(v9);
}

uint64_t sub_29ABDE2DC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ABDE314(a1);
  }

  return a1;
}

void sub_29ABDE314(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 5;
      sub_29ABDDC38(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29ABDE368(void **a1)
{
  sub_29ABDE39C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29ABDE39C(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 40;
    sub_29ABDDC38(v4, (i - 40));
  }
}

uint64_t *sub_29ABDE3E4(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *result = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = a3[1];
  result[1] = *a3;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[3];
  result[3] = a3[2];
  result[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29ABDE444(uint64_t *a1)
{
  v1 = a1 + 3;
  if (!a1[3])
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    sub_29A019AA0(v3, 8uLL);
    sub_29A1601D8(v1, v3);
    v4 = *a1;
    if (a1[1] != *a1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *v1;
        v8 = *(v4 + v5);
        if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v8 &= 0xFFFFFFFFFFFFFFF8;
        }

        v9[0] = v8;
        v9[1] = v6;
        sub_29A162678(v7, v9, v9);
        if ((v9[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        ++v6;
        v4 = *a1;
        v5 += 40;
      }

      while (v6 < 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3));
    }
  }
}

void sub_29ABDE548(_Unwind_Exception *a1)
{
  v3 = sub_29A155EF4(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_29ABDE584(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void *sub_29ABDE5AC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2076868;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABDE604(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABDE620(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABDE648(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABDE678(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20768B8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_29ABDE6B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 224);
  v5 = *(a1 + 228);
  if (v4 == v5)
  {
    sub_29ABDE72C(a1, v4 + (v4 >> 1) + 1);
    v5 = *(a1 + 228);
  }

  v6 = a1;
  if (v5 >= 5)
  {
    v6 = *a1;
  }

  result = sub_29ABD30AC((v6 + 56 * *(a1 + 224)), a2);
  ++*(a1 + 224);
  return result;
}

void sub_29ABDE72C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(56 * a2);
  v5 = a1;
  if (*(a1 + 228) >= 5u)
  {
    v5 = *a1;
  }

  sub_29ABDE7B4(v5, v5 + 56 * *(a1 + 224), v4);
  sub_29ABDDD1C(a1);
  if (*(a1 + 228) >= 5u)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 228) = v2;
}

_DWORD *sub_29ABDE7B4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v5 = a1;
  v6 = 0;
  result = a3;
  do
  {
    v7 = sub_29ABD30AC(result, v5);
    v5 += 56;
    result = v7 + 14;
    v6 -= 56;
  }

  while (v5 != a2);
  return result;
}

void sub_29ABDE818(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      sub_29ABC3488(v1);
      v1 += 56;
      v3 -= 56;
    }

    while (v3);
  }

  __cxa_rethrow();
}

void *sub_29ABDE854(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20768E0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABDE8AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABDE8C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABDE8F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABDE920(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2076930))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ABDE960(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2076958;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABDE9B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABDE9D4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABDE9FC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABDEA2C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20769A8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29ABDEA6C(uint64_t result, unint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v48 = a2;
  v49 = result;
LABEL_2:
  v9 = 1 - a4;
  v47 = a5;
  while (1)
  {
    v10 = v7 - v8;
    v11 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v8) >> 3);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v42 = *a3;
        v48 = v7 - 56;
        result = (v42)();
        if (result)
        {
          v43 = &v49;
          v44 = &v48;
          return sub_29ABDF12C(v43, v44);
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v48 = v7 - 56;
      return sub_29ABDF200(v8, v8 + 56, v8 + 112, v7 - 56, a3);
    }

    if (v11 == 5)
    {
      v48 = v7 - 56;
      v53 = v8 + 56;
      v54 = v8;
      v51 = v8 + 168;
      v52 = v8 + 112;
      v50 = v7 - 56;
      sub_29ABDF200(v8, v8 + 56, v8 + 112, v8 + 168, a3);
      result = (*a3)(v7 - 56, v8 + 168);
      if (result)
      {
        sub_29ABDF12C(&v51, &v50);
        result = (*a3)(v51, v8 + 112);
        if (result)
        {
          sub_29ABDF12C(&v52, &v51);
          result = (*a3)(v52, v8 + 56);
          if (result)
          {
            sub_29ABDF12C(&v53, &v52);
            result = (*a3)(v53, v8);
            goto LABEL_92;
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v10 <= 1343)
    {
      if (a5)
      {
        return sub_29ABDF340(v8, v7, a3);
      }

      else
      {
        return sub_29ABDF4A4(v8, v7, a3);
      }
    }

    if (v9 == 1)
    {
      if (v8 != v7)
      {
        return sub_29ABE0060(v8, v7, v7, a3);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = v8 + 56 * (v11 >> 1);
    v14 = v7 - 56;
    if (v10 < 0x1C01)
    {
      v53 = v8;
      v54 = v8 + 56 * (v11 >> 1);
      v52 = v14;
      v18 = (*a3)(v8, v54);
      v19 = (*a3)(v14, v8);
      if (v18)
      {
        if (v19)
        {
          v20 = &v54;
          goto LABEL_37;
        }

        sub_29ABDF12C(&v54, &v53);
        if ((*a3)(v52, v53))
        {
          v20 = &v53;
LABEL_37:
          v22 = &v52;
LABEL_38:
          sub_29ABDF12C(v20, v22);
        }
      }

      else if (v19)
      {
        sub_29ABDF12C(&v53, &v52);
        if ((*a3)(v53, v54))
        {
          v20 = &v54;
          v22 = &v53;
          goto LABEL_38;
        }
      }

      if (a5)
      {
        goto LABEL_40;
      }

      goto LABEL_65;
    }

    v53 = v8 + 56 * (v11 >> 1);
    v54 = v8;
    v52 = v14;
    v15 = (*a3)(v53, v8);
    v16 = (*a3)(v14, v13);
    if (v15)
    {
      if (v16)
      {
        v17 = &v54;
      }

      else
      {
        sub_29ABDF12C(&v54, &v53);
        if (!(*a3)(v52, v53))
        {
          goto LABEL_29;
        }

        v17 = &v53;
      }

      v21 = &v52;
      goto LABEL_28;
    }

    if (v16)
    {
      sub_29ABDF12C(&v53, &v52);
      if ((*a3)(v53, v54))
      {
        v17 = &v54;
        v21 = &v53;
LABEL_28:
        sub_29ABDF12C(v17, v21);
      }
    }

LABEL_29:
    v23 = &v49[56 * v12 - 56];
    v53 = v23;
    v54 = (v49 + 56);
    v52 = v48 - 112;
    v24 = (*a3)(v23);
    v25 = (*a3)(v48 - 112, v23);
    if (v24)
    {
      if (v25)
      {
        v26 = &v54;
      }

      else
      {
        sub_29ABDF12C(&v54, &v53);
        if (!(*a3)(v52, v53))
        {
          goto LABEL_45;
        }

        v26 = &v53;
      }

      v27 = &v52;
      goto LABEL_44;
    }

    if (v25)
    {
      sub_29ABDF12C(&v53, &v52);
      if ((*a3)(v53, v54))
      {
        v26 = &v54;
        v27 = &v53;
LABEL_44:
        sub_29ABDF12C(v26, v27);
      }
    }

LABEL_45:
    v28 = &v49[56 * v12 + 56];
    v53 = v28;
    v54 = (v49 + 112);
    v52 = v48 - 168;
    v29 = (*a3)(v28);
    v30 = (*a3)(v48 - 168, v28);
    if (v29)
    {
      if (v30)
      {
        sub_29ABDF12C(&v54, &v52);
        goto LABEL_54;
      }

      sub_29ABDF12C(&v54, &v53);
      if ((*a3)(v52, v53))
      {
        v31 = &v53;
        v32 = &v52;
        goto LABEL_53;
      }
    }

    else if (v30)
    {
      sub_29ABDF12C(&v53, &v52);
      if ((*a3)(v53, v54))
      {
        v31 = &v54;
        v32 = &v53;
LABEL_53:
        sub_29ABDF12C(v31, v32);
      }
    }

LABEL_54:
    v33 = &v49[56 * v12];
    v34 = &v49[56 * v12 + 56];
    v53 = v33;
    v54 = &v49[56 * v12 - 56];
    v52 = v34;
    v35 = (*a3)(v33);
    v36 = (*a3)(v34, v33);
    if (v35)
    {
      a5 = v47;
      if (v36)
      {
        v37 = &v54;
      }

      else
      {
        sub_29ABDF12C(&v54, &v53);
        if (!(*a3)(v52, v53))
        {
          goto LABEL_64;
        }

        v37 = &v53;
      }

      v38 = &v52;
      goto LABEL_63;
    }

    a5 = v47;
    if (v36)
    {
      sub_29ABDF12C(&v53, &v52);
      if ((*a3)(v53, v54))
      {
        v37 = &v54;
        v38 = &v53;
LABEL_63:
        sub_29ABDF12C(v37, v38);
      }
    }

LABEL_64:
    v54 = &v49[56 * v12];
    sub_29ABDF5E0(&v49, &v54);
    if (a5)
    {
LABEL_40:
      v7 = v48;
      goto LABEL_66;
    }

LABEL_65:
    v7 = v48;
    if (((*a3)(v49 - 56) & 1) == 0)
    {
      result = sub_29ABDF6B4(v49, v48, a3);
      v8 = result;
      goto LABEL_75;
    }

LABEL_66:
    v39 = sub_29ABDF8AC(v49, v7, a3);
    if ((v40 & 1) == 0)
    {
      goto LABEL_73;
    }

    v41 = sub_29ABDFA98(v49, v39, a3);
    v8 = (v39 + 56);
    result = sub_29ABDFA98((v39 + 56), v7, a3);
    if (result)
    {
      if (v41)
      {
        return result;
      }

      v48 = v39;
      v8 = v49;
      v7 = v39;
    }

    else
    {
      if (!v41)
      {
LABEL_73:
        result = sub_29ABDEA6C(v49, v39, a3, -v9, a5 & 1);
        v8 = (v39 + 56);
LABEL_75:
        a5 = 0;
        v49 = v8;
        a4 = -v9;
        goto LABEL_2;
      }

      v49 = v39 + 56;
    }

    ++v9;
  }

  v45 = v8 + 56;
  v48 = v7 - 56;
  v53 = v8 + 56;
  v54 = v8;
  v52 = v7 - 56;
  v46 = (*a3)(v8 + 56, v8);
  result = (*a3)(v7 - 56, v45);
  if (v46)
  {
    if (result)
    {
      v43 = &v54;
    }

    else
    {
      sub_29ABDF12C(&v54, &v53);
      result = (*a3)(v52, v53);
      if (!result)
      {
        return result;
      }

      v43 = &v53;
    }

    v44 = &v52;
    return sub_29ABDF12C(v43, v44);
  }

  if (result)
  {
    sub_29ABDF12C(&v53, &v52);
    result = (*a3)(v53, v54);
LABEL_92:
    if (result)
    {
      v43 = &v54;
      v44 = &v53;
      return sub_29ABDF12C(v43, v44);
    }
  }

  return result;
}