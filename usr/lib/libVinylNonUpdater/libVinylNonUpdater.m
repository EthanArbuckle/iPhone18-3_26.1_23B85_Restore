eUICC::eUICCVinylMAVValve *eUICC::eUICCVinylMAVValve::eUICCVinylMAVValve(eUICC::eUICCVinylMAVValve *this, void *a2, int a3, char a4)
{
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 275) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *this = &unk_2A1EB27C8;
  *(this + 37) = a2;
  *(this + 73) = a3;
  *(this + 291) = a4;
  *(this + 304) = 15;
  eUICC::eUICCVinylValve::hardwareHasESIM = eUICC::eUICCVinylMAVValve::HardwareHasESIM(this, &eUICC::eUICCVinylValve::simSKUID);
  return this;
}

uint64_t eUICC::eUICCVinylMAVValve::HardwareHasESIM(eUICC::eUICCVinylMAVValve *this, unsigned __int8 *a2)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN5eUICC18eUICCVinylMAVValve15HardwareHasESIMERh_block_invoke;
  v3[3] = &__block_descriptor_tmp;
  v3[4] = this;
  v3[5] = a2;
  if (eUICC::eUICCVinylValve::simSKUOnceToken != -1)
  {
    dispatch_once(&eUICC::eUICCVinylValve::simSKUOnceToken, v3);
  }

  return eUICC::eUICCVinylMAVValve::HardwareHasESIM(unsigned char &)::result;
}

uint64_t ___ZN5eUICC18eUICCVinylMAVValve15HardwareHasESIMERh_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = capabilities::euicc::supportsGenericUpdater(a1);
  if (!result)
  {
    return result;
  }

  v16[0] = *(v2 + 296);
  v16[1] = 30000;
  v6 = eUICC::GetSIMSKUID::Perform(v16);
  if (v6 || v4 != 1)
  {
    gBBULogMaskGet();
    return _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "GetSIMSKUID error %d status 0x%hhx\n", v10, v11, v12, v6);
  }

  **(a1 + 40) = v5;
  v7 = **(a1 + 40);
  result = TelephonyRadiosGetRadio();
  if (result == 13)
  {
    goto LABEL_7;
  }

  v8 = result;
  if (result != 18)
  {
    if (result != 17)
    {
      gBBULogMaskGet();
      return _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "MAV radio %d eSIM lookup not supported!\n", v13, v14, v15, v8);
    }

LABEL_7:
    if (v7 <= 6 && ((1 << v7) & 0x74) != 0)
    {
      eUICC::eUICCVinylMAVValve::HardwareHasESIM(unsigned char &)::result = 1;
    }

    return result;
  }

  if (v7 - 7 <= 1)
  {
    eUICC::eUICCVinylMAVValve::HardwareHasESIM(unsigned char &)::result = 1;
  }

  return result;
}

void *eUICC::eUICCVinylMAVValve::GetVinylType@<X0>(eUICC::eUICCVinylMAVValve *this@<X0>, void *a2@<X8>)
{
  v14 = *(this + 37);
  v15 = *(this + 73);
  v4 = eUICC::GetVinylType::Perform();
  v6 = v5;
  v7 = v4;
  v9 = v8;
  gBBULogMaskGet();
  if (v7 || v9 != 1)
  {
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "error %d status 0x%hhx\n", v10, v11, v12, v7);
  }

  else
  {
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "status 0x%hhx cards_type: %hhu \n", v10, v11, v12, 1);
    *(this + 2) = 1;
    *(this + 285) = v6;
    *(this + 288) = v6 == 3;
  }

  return memcpy(a2, this + 8, 0x11BuLL);
}

void *eUICC::eUICCVinylMAVValve::GetData@<X0>(eUICC::eUICCVinylMAVValve *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v48 = *MEMORY[0x29EDCA608];
  if (!*(this + 37))
  {
    eUICC::eUICCVinylMAVValve::GetData(this, a2, a3, a4, a5, a6, a7, a8, v20);
    goto LABEL_8;
  }

  if (*(this + 290) == 1)
  {
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "eUICCVinylData cache is valid. Using cached data!\n", v11, v12, v13, v20);
  }

  else
  {
    *(this + 248) = 0u;
    *(this + 264) = 0u;
    *(this + 216) = 0u;
    *(this + 232) = 0u;
    *(this + 184) = 0u;
    *(this + 200) = 0u;
    *(this + 152) = 0u;
    *(this + 168) = 0u;
    *(this + 120) = 0u;
    *(this + 136) = 0u;
    *(this + 88) = 0u;
    *(this + 104) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 8) = 0u;
    *(this + 275) = 0u;
    *(this + 2) = TelephonyRadiosGetRadioVendor() - 2 < 3;
    v23 = *(this + 37);
    v24 = *(this + 73);
    eUICC::GetData::Perform();
    *(this + 2) = v26;
    *(this + 13) = bswap32(v28) >> 16;
    *(this + 15) = v29;
    *(this + 31) = v30;
    *(this + 2) = v31;
    *(this + 3) = v32;
    *(this + 4) = v33;
    *(this + 5) = v34;
    *(this + 143) = *&v37[15];
    *(this + 7) = v36;
    *(this + 8) = *v37;
    *(this + 6) = v35;
    *(this + 218) = *&v41[15];
    *(this + 203) = *v41;
    *(this + 187) = v40;
    *(this + 171) = v39;
    *(this + 155) = v38;
    *(this + 115) = v42;
    *(this + 250) = v44;
    *(this + 124) = v43;
    *(this + 267) = v46;
    *(this + 251) = v45;
    *(this + 12) = v27;
    *(this + 283) = v47;
    v14 = eUICC::eUICCVinylValve::hardwareHasESIM;
    *(this + 289) = eUICC::eUICCVinylValve::hardwareHasESIM;
    *(this + 286) = eUICC::eUICCVinylValve::simSKUID;
    *(this + 287) = (v26 == 4) & (v14 ^ 1);
    if (*(this + 2) != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
    {
      gBBULogMaskGet();
      v21 = *(this + 2);
      v22 = *(this + 13);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "error %d status %u sw1_sw2 0x%x\n", v15, v16, v17, v25);
      goto LABEL_8;
    }

    *(this + 290) = 1;
  }

  eUICC::logEUICCData(this + 2);
LABEL_8:
  result = memcpy(a9, this + 8, 0x11BuLL);
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::SetCardMode(uint64_t a1, int a2, char a3)
{
  __src[36] = *MEMORY[0x29EDCA608];
  v6 = (a1 + 8);
  (*(*a1 + 8))(__src);
  memcpy(v6, __src, 0x11BuLL);
  if ((a3 & 1) == 0)
  {
    if (*v6 != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, "outData.Valid()");
      goto LABEL_8;
    }

    if (*(a1 + 31) == a2)
    {
      gBBULogMaskGet();
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "SwitchCardMode: Baseband already in mode %hhu\n", v13, v14, v15, a2);
LABEL_11:
      result = 0;
      goto LABEL_12;
    }
  }

  v7 = *(a1 + 292);
  __src[0] = *(a1 + 296);
  LOBYTE(__src[1]) = v7;
  BYTE1(__src[1]) = a2;
  WORD1(__src[1]) = 1;
  HIDWORD(__src[1]) = 10000;
  v9 = eUICC::SwitchMode::Perform();
  if (!v9 && (v8 & 0xFF00000000) == 0x100000000 && a2 == BYTE5(v8))
  {
    goto LABEL_11;
  }

  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "SwitchCardMode: Failed err %d status %hhu mode %d sw1 0x%x sw2 0x%x\n", v10, v11, v12, v9);
LABEL_8:
  result = 18;
LABEL_12:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::ResetCard(eUICC::eUICCVinylMAVValve *this)
{
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "eUICCVinylMAVValve::ResetCard not supported\n", v1, v2, v3, vars0);
  return 9;
}

uint64_t eUICC::eUICCVinylMAVValve::DeleteProfile(eUICC::eUICCVinylMAVValve *this, char a2)
{
  if (*(this + 37))
  {
    v2 = *(this + 73);
    v10 = *(this + 37);
    v11 = v2;
    v12 = a2;
    v13 = 0;
    v14 = 60000;
    v3 = eUICC::DeleteProfile::Perform();
    v5 = v3;
    if (v3 || (result = 0, v4 != 1))
    {
      gBBULogMaskGet();
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "DeleteProfile failed, error %d status %hhu sw1 0x%x sw2 0x%x\n", v7, v8, v9, v5);
      return 18;
    }
  }

  else
  {
    eUICC::eUICCVinylMAVValve::DeleteProfile(&v10);
    return v10;
  }

  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::StoreData()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v22 = *MEMORY[0x29EDCA608];
  v14 = *(v0 + 296);
  v15 = *(v0 + 292);
  v16 = v5[1] - *v5;
  eUICC::StoreData::Perform();
  if (v17 || v18 != 1)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "rsp.Valid()");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to StoreData status %hhu SW1 0x%x SW2 0x%x\n", v10, v11, v12, v18);
    result = 18;
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4, v21, &v21[v20], v20);
    result = 0;
  }

  *v2 = bswap32(v19) >> 16;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t eUICC::eUICCVinylMAVValve::LETOEnableEUICC(eUICC::eUICCVinylMAVValve *this)
{
  v11[0] = *(this + 37);
  v11[1] = 0x271000003201;
  result = eUICC::LETOMuxSwitch::Perform(v11);
  v3 = HIDWORD(result);
  if (result)
  {
    goto LABEL_6;
  }

  v4 = BYTE4(result) == 0;
  if ((v2 & 0xFF000000000000) != 0x5000000000000)
  {
    v4 = 0;
  }

  if (BYTE4(result) != 2 && !v4)
  {
LABEL_6:
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v5, v6, v7, "rsp.Valid() &&(( rsp.hwSetRsp == LETOMuxSwitch::MgrSetSIMHWSetResultType::kSuccess && rsp.contents.resultPhase == LETOMuxSwitch::ResultPhase::kTargetHWActivationCompleted) || rsp.hwSetRsp == LETOMuxSwitch::MgrSetSIMHWSetResultType::kErrorAlreadySet)");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to LETOEnableEUICC hwSetRsp %hhu resultAvailable %d srcSimHwSet %hhu targetSimHwSet %hhu resultPhase %hhu\n", v8, v9, v10, v3);
    return 18;
  }

  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::InitPerso(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  *&__dst[6] = 0;
  *__dst = 0;
  *&__dst[14] = 30000;
  v4 = *(a1 + 296);
  v5 = *(a1 + 292);
  v6 = *a2;
  v8 = *(a2 + 8) - v6;
  if (v8 >= 0xC)
  {
    v9 = 12;
  }

  else
  {
    v9 = v8;
  }

  memcpy(__dst, v6, v9);
  v26 = v4;
  v27 = v5;
  v28 = 0;
  v29 = 0;
  v30 = v9;
  v31 = *__dst;
  v32 = *&__dst[16];
  eUICC::InitPersoSession::Perform();
  if (*__dst)
  {
    if (!**__dst && *(*__dst + 8) == 1 && *(*__dst + 11))
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, (*__dst + 13), (*__dst + 13 + *(*__dst + 11)), *(*__dst + 11));
      v10 = 0;
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "rsp->Valid() && rsp->contents.rsp_len");
      gBBULogMaskGet();
      v23 = *(*__dst + 10);
      v24 = *(*__dst + 11);
      v22 = *(*__dst + 9);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to InitPerso status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v14, v15, v16, *(*__dst + 8));
      v10 = 18;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "rsp");
    v10 = 11;
  }

  if (*&__dst[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&__dst[8]);
  }

  v20 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t eUICC::eUICCVinylMAVValve::AuthPerso(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = operator new(0x818uLL);
  bzero(v6 + 2, 0x810uLL);
  bzero(v6 + 3, 0x802uLL);
  v6[516] = 30000;
  *v6 = *(a1 + 296);
  *(v6 + 8) = *(a1 + 292);
  v7 = *a2;
  if (*(a2 + 8) - *a2 >= 0x800uLL)
  {
    v8 = 2048;
  }

  else
  {
    v8 = *(a2 + 8) - *a2;
  }

  memcpy(v6 + 14, v7, v8);
  *(v6 + 6) = v8;
  eUICC::AuthPersoSession::Perform();
  if (v23)
  {
    if (!*v23 && *(v23 + 8) == 1 && *(v23 + 11))
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, (v23 + 13), (v23 + 13 + *(v23 + 11)), *(v23 + 11));
      v9 = 0;
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v10, v11, v12, "rsp->Valid() && rsp->contents.rsp_len");
      gBBULogMaskGet();
      v21 = *(v23 + 10);
      v22 = *(v23 + 11);
      v20 = *(v23 + 9);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to AuthenticatePersoDevice status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v13, v14, v15, *(v23 + 8));
      v9 = 18;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, "rsp");
    v9 = 11;
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  operator delete(v6);
  return v9;
}

uint64_t eUICC::eUICCVinylMAVValve::FinalizePerso(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  memset(__dst, 0, 266);
  *(&__dst[16] + 2) = 30000;
  v3 = *(a1 + 296);
  v4 = *(a1 + 292);
  v5 = *a2;
  v7 = *(a2 + 8) - v5;
  if (v7 >= 0x100)
  {
    v8 = 256;
  }

  else
  {
    v8 = v7;
  }

  memcpy(__dst, v5, v8);
  v9 = *(a1 + 291);
  v25 = v3;
  v26 = v4;
  v27 = 0;
  v28 = v9;
  v29 = 0;
  v30 = v8;
  memcpy(v31, __dst, sizeof(v31));
  eUICC::FinalizePersoSession::Perform();
  if (*&__dst[0])
  {
    if (**&__dst[0] || *(*&__dst[0] + 8) != 1)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "rsp->Valid()");
      gBBULogMaskGet();
      v22 = *(*&__dst[0] + 9);
      v23 = *(*&__dst[0] + 10);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to FinalizePersoDevice status %hhu SW1 0x%x SW2 0x%x\n", v14, v15, v16, *(*&__dst[0] + 8));
      v10 = 18;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "rsp");
    v10 = 11;
  }

  if (*(&__dst[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__dst[0] + 1));
  }

  v20 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t eUICC::eUICCVinylMAVValve::ValidatePerso(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = *MEMORY[0x29EDCA608];
  v30 = 0u;
  memset(v31, 0, 24);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  __dst = 0u;
  *&v31[24] = 30000;
  v4 = *(a1 + 296);
  v5 = *(a1 + 292);
  v6 = *a2;
  v8 = *(a2 + 8) - v6;
  if (v8 >= 0x78)
  {
    v9 = 120;
  }

  else
  {
    v9 = v8;
  }

  memcpy(&__dst, v6, v9);
  v40 = v29;
  v41 = v30;
  *v42 = *v31;
  *&v42[12] = *&v31[12];
  v36 = __dst;
  v37 = v26;
  v38 = v27;
  v32 = v4;
  v33 = v5;
  v34 = 0;
  v35 = v9;
  v39 = v28;
  eUICC::VinylValidatePerso::Perform(&v32, &__dst);
  if (__dst)
  {
    if (!*__dst && *(__dst + 8) == 1 && *(__dst + 11))
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, (__dst + 13), (__dst + 13 + *(__dst + 11)), *(__dst + 11));
      v10 = 0;
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "rsp->Valid() && rsp->contents.rsp_len");
      gBBULogMaskGet();
      v23 = *(__dst + 10);
      v24 = *(__dst + 11);
      v22 = *(__dst + 9);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to AuthenticatePersoDevice status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v14, v15, v16, *(__dst + 8));
      v10 = 18;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "rsp");
    v10 = 11;
  }

  if (*(&__dst + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__dst + 1));
  }

  v20 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t eUICC::eUICCVinylMAVValve::InstallPairingMSM()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v26 = *MEMORY[0x29EDCA608];
  v20 = 0;
  v19 = 0;
  v1 = *(v0 + 292);
  v3 = *v2;
  v4 = v2[1] - *v2;
  v16 = *(v0 + 296);
  v17 = v1;
  v18 = 0;
  v21 = v3;
  v22 = v4;
  v23 = 10000;
  eUICC::VinylManagePairing::Perform(&v16, &v24);
  v5 = v24;
  v6 = v25;
  gBBULogMaskGet();
  if (v5 || v6 != 1)
  {
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "rsp.Valid()");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to InstallPairingMSM status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v11, v12, v13, v25);
    result = 18;
  }

  else
  {
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "InstallPairingMSM returning success\n", v7, v8, v9, v15);
    result = 0;
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::ManagePairingGetNonce()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v25 = *MEMORY[0x29EDCA608];
  v3 = *(v0 + 292);
  v16 = *(v0 + 296);
  v17 = v3;
  v18 = 1;
  *v20 = 0;
  v19 = 0;
  *&v20[3] = 0;
  *&v20[7] = 10000;
  eUICC::VinylManagePairing::Perform(&v16, &v21);
  if (!v21 && v22 == 1 && v23)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v2, v24, &v24[v23], v23);
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "ManagePairingGetNonce returning success\n", v12, v13, v14, v15);
    result = 0;
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v4, v5, v6, "rsp.Valid() && rsp.contents.rsp_len");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "ManagePairingGetNonce Failed status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v7, v8, v9, v22);
    result = 18;
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::ManagePairingAuthenticate()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v26 = *MEMORY[0x29EDCA608];
  v20 = 0;
  v19 = 0;
  v1 = *(v0 + 292);
  v3 = *v2;
  v4 = v2[1] - *v2;
  v16 = *(v0 + 296);
  v17 = v1;
  v18 = 2;
  v21 = v3;
  v22 = v4;
  v23 = 10000;
  eUICC::VinylManagePairing::Perform(&v16, &v24);
  v5 = v24;
  v6 = v25;
  gBBULogMaskGet();
  if (v5 || v6 != 1)
  {
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "rsp.Valid()");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "ManagePairingAuthenticate Failed status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v11, v12, v13, v25);
    result = 18;
  }

  else
  {
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "ManagePairingAuthenticate returning success\n", v7, v8, v9, v15);
    result = 0;
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void eUICC::eUICCVinylMAVValve::~eUICCVinylMAVValve(eUICC::eUICCVinylMAVValve *this)
{
  VinylCommunication::~VinylCommunication(this);

  operator delete(v1);
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (v15 - v9 >= a4)
    {
      v18 = a3 - __src;
      if (v18)
      {
        result = memmove(*result, __src, v18);
      }

      v14 = &v9[v18];
    }

    else
    {
      v17 = &__src[v16];
      if (v15 != v9)
      {
        result = memmove(*result, __src, v16);
        v15 = *(v7 + 8);
      }

      if (a3 != v17)
      {
        result = memmove(v15, v17, a3 - v17);
      }

      v14 = &v15[a3 - v17];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    v12 = *(v7 + 8);
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(*(v7 + 8), __src, v13);
    }

    v14 = (v12 + v13);
  }

  *(v7 + 8) = v14;
  return result;
}

char *std::vector<unsigned char>::__vallocate[abi:ne200100](void *a1, size_t __sz)
{
  if ((__sz & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = operator new(__sz);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[__sz];
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE8E6D8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t OUTLINED_FUNCTION_0@<X0>(const char *a1@<X2>, const char *a2@<X3>, const char *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char a7@<W8>)
{

  return _BBULog(1, 6, a1, a2, a3, a4, a5, a6, a7);
}

uint64_t VinylController::create(uint64_t a1, int a2)
{
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "entering VinylController::create\n", v4, v5, v6, v19);
  v14 = VinylController::instance;
  if (!a2 || VinylController::instance)
  {
    if (VinylController::instance)
    {
      goto LABEL_7;
    }

    v14 = operator new(0x88uLL);
    VinylController::VinylController(v14);
  }

  else
  {
    v14 = operator new(0x88uLL);
    VinylController::VinylController(v14, 0, a1);
  }

  VinylController::instance = v14;
LABEL_7:
  if (!*(v14 + 2))
  {
    VinylControllerObjDestroy(v14, v7, v8, v9, v10, v11, v12, v13, v20);
    VinylController::instance = 0;
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "returning VinylController::create\n", v15, v16, v17, v20);
  return VinylController::instance;
}

uint64_t VinylControllerObjDestroy(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    (*(*result + 8))(result);
    VinylController::instance = 0;
    gBBULogMaskGet();

    return _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Cleaning up VinylController object \n", v9, v10, v11, a9);
  }

  return result;
}

uint64_t VinylController::create(uint64_t *a1)
{
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "entering VinylController::create\n", v2, v3, v4, v20[0]);
  v12 = VinylController::instance;
  if (!VinylController::instance)
  {
    v13 = operator new(0x88uLL);
    v12 = v13;
    v14 = *a1;
    v15 = a1[1];
    v20[0] = v14;
    v20[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    VinylController::VinylController(v13, v20);
    VinylController::instance = v12;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      v12 = VinylController::instance;
    }
  }

  if (!*(v12 + 16))
  {
    VinylControllerObjDestroy(v12, v5, v6, v7, v8, v9, v10, v11, v20[0]);
    VinylController::instance = 0;
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "returning VinylController::create\n", v16, v17, v18, v20[0]);
  return VinylController::instance;
}

void sub_29826CD14(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t VinylController::VinylController(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_2A1EB2888;
  *(a1 + 8) = 0;
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = VinylCommunication::create(&v7);
  v5 = v8;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *(a1 + 120) = VinylSecureElement::create(v5);
  *(a1 + 128) = 0;
  *(a1 + 24) = *a2 != 0;
  return a1;
}

void sub_29826CDDC(_Unwind_Exception *a1)
{
  v4 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v4)
  {
    VinylController::VinylController(v4);
  }

  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(v1);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t VinylController::VinylController(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = &unk_2A1EB2888;
  *(a1 + 8) = 0;
  v5 = VinylCommunication::create(a2, 0);
  *(a1 + 16) = v5;
  *(a1 + 120) = VinylSecureElement::create(v5);
  *(a1 + 128) = 0;
  if (a3)
  {
    v6 = *(a3 + 16);
    *(a1 + 32) = *a3;
    *(a1 + 48) = v6;
    v7 = *(a3 + 32);
    v8 = *(a3 + 48);
    v9 = *(a3 + 64);
    *(a1 + 112) = *(a3 + 80);
    *(a1 + 80) = v8;
    *(a1 + 96) = v9;
    *(a1 + 64) = v7;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *(a1 + 112) = 0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 32) = 0u;
  }

  *(a1 + 24) = v10;
  return a1;
}

void sub_29826CEFC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    VinylController::VinylController(v4);
  }

  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(v2);
  _Unwind_Resume(a1);
}

void VinylController::VinylController(VinylController *this)
{
  *this = &unk_2A1EB2888;
  *(this + 1) = 0;
  *(this + 2) = VinylCommunication::create(0, 0);
  *(this + 24) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
}

uint64_t get_info(__CFDictionary **a1, uint64_t a2)
{
  v45 = *MEMORY[0x29EDCA608];
  if (*a2 != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    result = 1;
    goto LABEL_60;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    get_info(&v43);
    result = LODWORD(v43.__r_.__value_.__l.__data_);
    goto LABEL_60;
  }

  v5 = Mutable;
  stringifyDataBuffer((a2 + 7), 16, &v43);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v41 = v43;
  }

  v7 = copyAsCFString();
  v42 = v7;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v5, @"kVinylEID", v7);
  memset(v44, 0, sizeof(v44));
  if (*(a2 + 4))
  {
    qmemcpy(v44, "Unpersonalized", 14);
    v8 = 14;
  }

  else
  {
    qmemcpy(v44, "Personalized", 12);
    v8 = 12;
  }

  *v38 = *v44;
  *&v38[15] = *&v44[15];
  v39 = v8;
  v9 = copyAsCFString();
  v40 = v9;
  if (v39 < 0)
  {
    operator delete(*v38);
  }

  CFDictionarySetValue(v5, @"kVinylPersoState", v9);
  v10 = operator new(0x28uLL);
  v11 = *(a2 + 40);
  *v10 = *(a2 + 24);
  v10[1] = v11;
  *(v10 + 32) = 0;
  std::string::__init_copy_ctor_external(&v36, v10, 0x20uLL);
  v12 = copyAsCFString();
  v37 = v12;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v5, @"kVinylFirmware", v12);
  v13 = *(a2 + 281);
  v14 = *(a2 + 278);
  std::to_string(&v34, v14);
  v15 = copyAsCFString();
  v35 = v15;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v5, @"kVinylSIMSKUID", v15);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  v17 = "ESIM";
  if ((RadioVendor - 2) < 2)
  {
    if (!v13)
    {
      v17 = "PSIM";
    }

    goto LABEL_24;
  }

  if (RadioVendor != 1)
  {
    if (RadioVendor != 4)
    {
      goto LABEL_28;
    }

LABEL_24:
    std::string::basic_string[abi:ne200100]<0>(&v33, v17);
    goto LABEL_29;
  }

  if (v14 < 0xB)
  {
    std::string::basic_string[abi:ne200100]<0>(&v33, (&eUICC::MAVHWSIMSKUStr)[v14]);
    goto LABEL_29;
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Condition <<%s>> failed %s %s/%d\n", v18, v19, v20, "simSKUID < ARR_SIZE(MAVHWSIMSKUStr)");
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Error: invalid simSKUID = %u\n", v21, v22, v23, v14);
LABEL_28:
  memset(&v33, 0, sizeof(v33));
LABEL_29:
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    v31 = v33;
  }

  v24 = copyAsCFString();
  v32 = v24;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v5, @"kVinylSIMSKU", v24);
  capabilities::radio::radioType(&__p, v25);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v28 = __p;
  }

  v26 = copyAsCFString();
  v29 = v26;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v5, @"kVinylRadioType", v26);
  *a1 = v5;
  if (v26)
  {
    CFRelease(v26);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v24)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (v24)
  {
LABEL_45:
    CFRelease(v24);
  }

LABEL_46:
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v15)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  operator delete(v33.__r_.__value_.__l.__data_);
  if (v15)
  {
LABEL_50:
    CFRelease(v15);
  }

LABEL_51:
  if (v12)
  {
    CFRelease(v12);
  }

  operator delete(v10);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  result = 0;
LABEL_60:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29826D464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, const void *a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, const void *a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, const void *a54)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a34);
  if (a40 < 0)
  {
    operator delete(a35);
  }

  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a47);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a54);
  operator delete(v54);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v55 - 184));
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v55 - 144));
  if (*(v55 - 113) < 0)
  {
    operator delete(*(v55 - 136));
  }

  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t VinylController::performNonUpdateOperation(uint64_t a1, int a2, eUICC::Pairing *a3, const __CFDictionary *a4)
{
  v287 = *MEMORY[0x29EDCA608];
  v284 = 0;
  memset(__dst, 0, 283);
  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v8 = xmmword_2A13A8CA0;
  if (!xmmword_2A13A8CA0)
  {
    BBUCapabilities::create_default_global(__p);
    v9 = *&__p[0].__r_.__value_.__l.__data_;
    *&__p[0].__r_.__value_.__l.__data_ = 0uLL;
    v10 = *(&xmmword_2A13A8CA0 + 1);
    xmmword_2A13A8CA0 = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      if (__p[0].__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p[0].__r_.__value_.__l.__size_);
      }
    }

    v8 = xmmword_2A13A8CA0;
  }

  v11 = *(&xmmword_2A13A8CA0 + 1);
  if (*(&xmmword_2A13A8CA0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v12 = BBUCapabilities::supportsVinylRestore(v8);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if ((v12 & 1) == 0)
  {
    v39 = 0;
    goto LABEL_171;
  }

  if (a4)
  {
    __p[0].__r_.__value_.__r.__words[0] = a4;
    ctu::cf::CFSharedRef<__CFDictionary const>::reset((a1 + 128), &__p[0].__r_.__value_.__l.__data_);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&cf, (a1 + 128));
  Options::Options(&v264, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&v262, (a1 + 128));
  BBULogParseDebugArgs(&v262);
  if (v262)
  {
    CFRelease(v262);
  }

  gBBULogMaskGet();
  Options::ToString(&v264, __p);
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = __p;
  }

  else
  {
    LOBYTE(v16) = __p[0].__r_.__value_.__s.__data_[0];
  }

  v17 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "VinylRestore Options:\n%s\n", v13, v14, v15, v16);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (v266)
  {
    if (a2 != 1)
    {
      v184 = gBBULogMaskGet();
      if (VinylController::performNonUpdateOperation(v184))
      {
        _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v185, v186, v187, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
      }

      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Perso Only can only be performed with kVinylOperationNonUpdate\n", v188, v189, v190, v250);
      TransportNoEvents = 1;
      goto LABEL_150;
    }

    a2 = 5;
  }

  if (VinylController::operationRequested(v17, a2, &v264))
  {
    TransportNoEvents = VinylController::createTransportNoEvents(a1);
    if (TransportNoEvents)
    {
      v170 = gBBULogMaskGet();
      if (VinylController::performNonUpdateOperation(v170))
      {
        _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v171, v172, v173, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
      }

      if ((*gBBULogMaskGet() & 1) != 0 && gBBULogVerbosity >= 1)
      {
        _BBULog(0, 1, "VinylController", "", "Fail to create transport: %d\n", v174, v175, v176, TransportNoEvents);
      }

      goto LABEL_150;
    }

    v19 = v264;
    (*(**(a1 + 16) + 48))(&v260);
    eUICC::VinylFactory::GetValve((a1 + 32), v19, 0, &v260, __p);
    v20 = v284;
    v284 = __p[0].__r_.__value_.__r.__words[0];
    __p[0].__r_.__value_.__r.__words[0] = 0;
    if (v20)
    {
      (*v20)[15](v20);
      v21 = __p[0].__r_.__value_.__r.__words[0];
      __p[0].__r_.__value_.__r.__words[0] = 0;
      if (v21)
      {
        (*(*v21 + 120))(v21);
      }
    }

    if (v261)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v261);
    }

    if (!v284)
    {
      v177 = gBBULogMaskGet();
      if (VinylController::performNonUpdateOperation(v177))
      {
        _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v178, v179, v180, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
      }

      TransportNoEvents = 18;
      if ((*gBBULogMaskGet() & 1) != 0 && gBBULogVerbosity >= 1)
      {
        _BBULog(0, 1, "VinylController", "", "Fail to get valve\n", v181, v182, v183, v250);
        TransportNoEvents = 18;
      }

      goto LABEL_150;
    }

    pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    v22 = xmmword_2A13A8CA0;
    if (!xmmword_2A13A8CA0)
    {
      BBUCapabilities::create_default_global(__p);
      v23 = *&__p[0].__r_.__value_.__l.__data_;
      *&__p[0].__r_.__value_.__l.__data_ = 0uLL;
      v24 = *(&xmmword_2A13A8CA0 + 1);
      xmmword_2A13A8CA0 = v23;
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        if (__p[0].__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p[0].__r_.__value_.__l.__size_);
        }
      }

      v22 = xmmword_2A13A8CA0;
    }

    v25 = *(&xmmword_2A13A8CA0 + 1);
    if (*(&xmmword_2A13A8CA0 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    v26 = BBUCapabilities::supportsEuiccViaEOS(v22);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (!v26)
    {
      v28 = 0;
      goto LABEL_51;
    }

    v27 = *(a1 + 120);
    if (v27)
    {
      v28 = VinylSecureElement::PowerUpSE(v27);
      if (!v28)
      {
        v195 = gBBULogMaskGet();
        if (VinylController::performNonUpdateOperation(v195))
        {
          _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v196, v197, v198, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
        }

        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Failed to power SE\n", v199, v200, v201, v250);
        if (eUICC::eUICCVinylValve::hardwareHasESIM)
        {
          TransportNoEvents = 107;
        }

        else
        {
          TransportNoEvents = 0;
        }

        goto LABEL_150;
      }

      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Power up SE successful.\n", v29, v30, v31, v250);
      (*v284)[1](__p);
      memcpy(__dst, __p, 0x11BuLL);
      if (__dst[0] != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "No valid GetData found and trying to reset Vinyl.\n", v32, v33, v34, v250);
        if (((*v284)[2])(v284, 0, 1))
        {
          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Reset card failed\n", v35, v36, v37, v250);
        }

        v38 = v284;
        *(v284 + 1) = 0u;
        *(++v38 + 1) = 0u;
        *(v38 + 2) = 0u;
        *(v38 + 3) = 0u;
        *(v38 + 4) = 0u;
        *(v38 + 5) = 0u;
        *(v38 + 6) = 0u;
        *(v38 + 7) = 0u;
        *(v38 + 8) = 0u;
        *(v38 + 9) = 0u;
        *(v38 + 10) = 0u;
        *(v38 + 11) = 0u;
        *(v38 + 12) = 0u;
        *(v38 + 13) = 0u;
        *(v38 + 14) = 0u;
        *(v38 + 15) = 0u;
        *(v38 + 16) = 0u;
        *(v38 + 267) = 0u;
        *v38 = TelephonyRadiosGetRadioVendor() - 2 < 3;
      }

LABEL_51:
      (*v284)[1](__p);
      memcpy(__dst, __p, 0x11BuLL);
      RadioVendor = TelephonyRadiosGetRadioVendor();
      if (__dst[0] != (RadioVendor - 5) < 0xFFFFFFFD)
      {
        if ((__dst[69] & 0x1000000) == 0)
        {
          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Condition <<%s>> failed %s %s/%d\n", v50, v51, v52, "outData.contents.isAbsentOk");
          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "GetData() output not valid and isAbsentOK = false. kBBUReturnGetEIDFailure will be reported as kVinylResultDataMissing!\n", v53, v54, v55, v251);
          TransportNoEvents = 107;
          goto LABEL_148;
        }

        if (capabilities::euicc::supportsVinylSEPPairing(RadioVendor))
        {
          if (a2 == 4)
          {
            gBBULogMaskGet();
            _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_GET_PAIRING_PARAMETERS_DUMMY\n", v93, v94, v95, v250);
            if (eUICC::Pairing::GetParametersDummy(a3, v96))
            {
              TransportNoEvents = 11;
            }

            else
            {
              TransportNoEvents = 0;
            }

LABEL_148:
            if (v28)
            {
              VinylSecureElement::PowerDownSE(*(a1 + 120), v28);
            }

            goto LABEL_150;
          }

          if (a2 == 8)
          {
            gBBULogMaskGet();
            _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_GET_PAIRING_IDENTIFIER\n", v45, v46, v47, v250);
            PairingIdentifier = eUICC::getPairingIdentifier(a3, v48);
            goto LABEL_66;
          }

          gBBULogMaskGet();
          v66 = "GetData not valid but isAbsentOK = true, eUICC not detected, skipping.\n";
        }

        else
        {
          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Condition <<%s>> failed %s %s/%d\n", v60, v61, v62, "capabilities::euicc::supportsVinylSEPPairing()");
          gBBULogMaskGet();
          v66 = "GetaData() output not valid and isAbsentOK = true. However, device doesn't support SEPPairing, no further non-update operation.\n";
        }

LABEL_145:
        v136 = 0xFFFFFFFFLL;
LABEL_146:
        _BBULog(0, v136, "VinylController", "", v66, v63, v64, v65, v250);
        goto LABEL_147;
      }

      if (BYTE1(__dst[10]) == 82)
      {
        if (LOBYTE(__dst[1]))
        {
          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "resetting refurb fw with perso supported in an attempt to clear perso\n", v41, v42, v43, v250);
          ((*v284)[2])(v284, 1, 1);
          ((*v284)[2])(v284, 0, 1);
          v44 = v284;
          *(v284 + 1) = 0u;
          *(++v44 + 1) = 0u;
          *(v44 + 2) = 0u;
          *(v44 + 3) = 0u;
          *(v44 + 4) = 0u;
          *(v44 + 5) = 0u;
          *(v44 + 6) = 0u;
          *(v44 + 7) = 0u;
          *(v44 + 8) = 0u;
          *(v44 + 9) = 0u;
          *(v44 + 10) = 0u;
          *(v44 + 11) = 0u;
          *(v44 + 12) = 0u;
          *(v44 + 13) = 0u;
          *(v44 + 14) = 0u;
          *(v44 + 15) = 0u;
          *(v44 + 16) = 0u;
          *(v44 + 267) = 0u;
          *v44 = TelephonyRadiosGetRadioVendor() - 2 < 3;
          (*v284)[1](__p);
          memcpy(__dst, __p, 0x11BuLL);
          if (__dst[0] != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
          {
            gBBULogMaskGet();
            _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Condition <<%s>> failed %s %s/%d\n", v67, v68, v69, "outData.Valid()");
            TransportNoEvents = 18;
            if ((*gBBULogMaskGet() & 1) != 0 && gBBULogVerbosity >= 1)
            {
              _BBULog(0, 1, "VinylController", "", "Fail to get data after resetting refurb\n", v70, v71, v72, v252);
              TransportNoEvents = 18;
            }

            goto LABEL_148;
          }
        }
      }

      if (a2 > 3)
      {
        if (a2 > 5)
        {
          if (a2 == 6)
          {
            gBBULogMaskGet();
            _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_GET_INFO\n", v118, v119, v120, v250);
            if (a3)
            {
              info = get_info(a3, __dst);
              v122 = info;
              if (info)
              {
                v123 = gBBULogMaskGet();
                if (VinylController::performNonUpdateOperation(v123))
                {
                  _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v124, v125, v126, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
                }

                TransportNoEvents = 1;
                if ((*gBBULogMaskGet() & 1) != 0 && gBBULogVerbosity >= 1)
                {
                  TransportNoEvents = 1;
                  _BBULog(0, 1, "VinylController", "", "Failed to get info: %d\n", v127, v128, v129, v122);
                }

                goto LABEL_148;
              }

              goto LABEL_147;
            }

            v228 = gBBULogMaskGet();
            if (VinylController::performNonUpdateOperation(v228))
            {
              _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v229, v230, v231, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
            }

            TransportNoEvents = 0;
            if ((*gBBULogMaskGet() & 1) == 0 || gBBULogVerbosity <= 0)
            {
              goto LABEL_148;
            }

            v66 = "Client rsp data buffer is not valid\n";
            goto LABEL_240;
          }

          if (a2 != 7)
          {
            if (a2 != 8)
            {
              goto LABEL_144;
            }

            goto LABEL_95;
          }

          goto LABEL_123;
        }

        if (a2 != 4)
        {
          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_PERFORM_SECURE_PERSO\n", v74, v75, v76, v250);
          if (LOBYTE(__dst[1]))
          {
            std::to_string(&v257, LOBYTE(__dst[60]));
            v77 = std::string::append(&v257, ".", 1uLL);
            v78 = *&v77->__r_.__value_.__l.__data_;
            __p[0].__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
            *&__p[0].__r_.__value_.__l.__data_ = v78;
            v77->__r_.__value_.__l.__size_ = 0;
            v77->__r_.__value_.__r.__words[2] = 0;
            v77->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v256, BYTE1(__dst[60]));
            if ((v256.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v79 = &v256;
            }

            else
            {
              v79 = v256.__r_.__value_.__r.__words[0];
            }

            if ((v256.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v256.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v256.__r_.__value_.__l.__size_;
            }

            v81 = std::string::append(__p, v79, size);
            v82 = *&v81->__r_.__value_.__l.__data_;
            v259 = v81->__r_.__value_.__r.__words[2];
            *v258 = v82;
            v81->__r_.__value_.__l.__size_ = 0;
            v81->__r_.__value_.__r.__words[2] = 0;
            v81->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v256.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v257.__r_.__value_.__l.__data_);
            }

            ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&v255, (a1 + 128));
            Options::Options(__p, &v255);
            TransportNoEvents = eUICC::Perso::Perform(__p, v258, &v284);
            Options::~Options(&__p[0].__r_.__value_.__l.__data_);
            ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v255);
            if (TransportNoEvents)
            {
              v232 = gBBULogMaskGet();
              if (VinylController::performNonUpdateOperation(v232))
              {
                _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v233, v234, v235, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
              }

              gBBULogMaskGet();
              _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Failed to complete secure perso: %d\n", v236, v237, v238, TransportNoEvents);
            }

            if (SHIBYTE(v259) < 0)
            {
              operator delete(v258[0]);
            }

            goto LABEL_148;
          }

          v224 = gBBULogMaskGet();
          if (VinylController::performNonUpdateOperation(v224))
          {
            _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v225, v226, v227, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
          }

          gBBULogMaskGet();
          v66 = "Card already perso'ed\n";
          goto LABEL_145;
        }

        __p[0].__r_.__value_.__s.__data_[0] = 0;
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_GET_PAIRING_PARAMS\n", v130, v131, v132, v250);
        TransportNoEvents = eUICC::checkEOSDev(__p, &v284);
        if (TransportNoEvents)
        {
          goto LABEL_148;
        }

        if (__p[0].__r_.__value_.__s.__data_[0] == 1)
        {
          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "EOS - dev product type detected, returning not supported\n", v133, v134, v135, v253);
          TransportNoEvents = 9;
          goto LABEL_148;
        }

        PairingIdentifier = VinylController::getPairingParameters(0, a4, a3, &v284);
LABEL_66:
        TransportNoEvents = PairingIdentifier;
        goto LABEL_148;
      }

      if (a2 > 1)
      {
        v73 = 1;
        if (a2 != 2)
        {
          goto LABEL_113;
        }

        v59 = 1;
      }

      else
      {
        if (!a2)
        {
LABEL_95:
          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_GET_EID\n", v83, v84, v85, v250);
          if (a3)
          {
            TransportNoEvents = eUICC::getEID();
            if (TransportNoEvents)
            {
              v86 = gBBULogMaskGet();
              if (VinylController::performNonUpdateOperation(v86))
              {
                _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v87, v88, v89, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
              }

              if ((*gBBULogMaskGet() & 1) != 0 && gBBULogVerbosity >= 1)
              {
                _BBULog(0, 1, "VinylController", "", "Failed to retrieve EID: %d\n", v90, v91, v92, TransportNoEvents);
              }
            }

            goto LABEL_148;
          }

          v202 = gBBULogMaskGet();
          if (VinylController::performNonUpdateOperation(v202))
          {
            _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v203, v204, v205, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
          }

          TransportNoEvents = 0;
          if ((*gBBULogMaskGet() & 1) == 0 || gBBULogVerbosity <= 0)
          {
            goto LABEL_148;
          }

          v66 = "Client rsp data is not valid\n";
LABEL_240:
          v136 = 1;
          goto LABEL_146;
        }

        if (a2 != 1)
        {
LABEL_144:
          gBBULogMaskGet();
          v66 = "Invalid user operation\n";
          goto LABEL_145;
        }

        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_NON_UPDATE\n", v56, v57, v58, v250);
        v59 = 0;
      }

      if (v265)
      {
        gBBULogMaskGet();
        v100 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_REFURB\n", v97, v98, v99, v250);
        if ((v265 - 3) <= 1)
        {
          v100 = VinylController::pairingSupported(v100, v101, &v284);
          if (v100)
          {
            v100 = VinylController::verifyPairing(a1, &v284, 1);
            TransportNoEvents = v100;
            if (v100)
            {
              v246 = gBBULogMaskGet();
              if (VinylController::performNonUpdateOperation(v246))
              {
                _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v247, v248, v249, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
              }

              if ((*gBBULogMaskGet() & 1) == 0 || gBBULogVerbosity < 1)
              {
                goto LABEL_148;
              }

              goto LABEL_253;
            }
          }
        }

        TransportNoEvents = VinylController::Refurb(v100, v265, &v284);
        if (TransportNoEvents)
        {
          v213 = gBBULogMaskGet();
          if (VinylController::performNonUpdateOperation(v213))
          {
            _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v214, v215, v216, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
          }

          if ((*gBBULogMaskGet() & 1) != 0 && gBBULogVerbosity >= 1)
          {
            _BBULog(0, 1, "VinylController", "", "Failed to Refurb: %d\n", v217, v218, v219, TransportNoEvents);
          }

          goto LABEL_148;
        }
      }

      v73 = 0;
      if (v59)
      {
        goto LABEL_147;
      }

LABEL_113:
      v102 = v279;
      if ((v279 & 0x80u) != 0)
      {
        v102 = v278;
      }

      if (!v102)
      {
        v103 = v274;
        if ((v274 & 0x80u) != 0)
        {
          v103 = v273;
        }

        if (!v103)
        {
          goto LABEL_122;
        }
      }

      gBBULogMaskGet();
      v107 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_BOOTSTRAP_PROVISIONING\n", v104, v105, v106, v250);
      if (!VinylController::pairingSupported(v107, v108, &v284) || (TransportNoEvents = VinylController::verifyPairing(a1, &v284, 1)) == 0)
      {
        TransportNoEvents = VinylController::bootstrapProvisioning(a1, &v284);
        if (TransportNoEvents)
        {
          v206 = gBBULogMaskGet();
          if (VinylController::performNonUpdateOperation(v206))
          {
            _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v207, v208, v209, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
          }

          if ((*gBBULogMaskGet() & 1) != 0 && gBBULogVerbosity >= 1)
          {
            _BBULog(0, 1, "VinylController", "", "Failed to complete bootstrap provisioning: %d\n", v210, v211, v212, TransportNoEvents);
          }

          goto LABEL_148;
        }

LABEL_122:
        if ((v73 & 1) == 0)
        {
LABEL_123:
          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_VERFIY_PAIRING_PARAMS\n", v109, v110, v111, v250);
          pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
          v112 = xmmword_2A13A8CA0;
          if (!xmmword_2A13A8CA0)
          {
            BBUCapabilities::create_default_global(__p);
            v113 = *&__p[0].__r_.__value_.__l.__data_;
            *&__p[0].__r_.__value_.__l.__data_ = 0uLL;
            v114 = *(&xmmword_2A13A8CA0 + 1);
            xmmword_2A13A8CA0 = v113;
            if (v114)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v114);
              if (__p[0].__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](__p[0].__r_.__value_.__l.__size_);
              }
            }

            v112 = xmmword_2A13A8CA0;
          }

          v115 = *(&xmmword_2A13A8CA0 + 1);
          if (*(&xmmword_2A13A8CA0 + 1))
          {
            atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
          v116 = BBUCapabilities::supportsEuiccViaEOS(v112);
          v117 = v116;
          if (v115)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v115);
          }

          if (v117)
          {
            gBBULogMaskGet();
            v66 = "Verify Pairing is skipped for EOS product\n";
            goto LABEL_145;
          }

          if (v267 == 1)
          {
            TransportNoEvents = VinylController::managePairingInstallMSM(v116, &v284);
            if (TransportNoEvents)
            {
              v239 = gBBULogMaskGet();
              if (VinylController::performNonUpdateOperation(v239))
              {
                _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v240, v241, v242, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
              }

              if ((*gBBULogMaskGet() & 1) != 0 && gBBULogVerbosity >= 1)
              {
                _BBULog(0, 1, "VinylController", "", "Failed to install MSM: %d\n", v243, v244, v245, TransportNoEvents);
              }

              goto LABEL_148;
            }
          }

          if ((v268 & 1) == 0 && v267 != 1)
          {
            goto LABEL_147;
          }

          TransportNoEvents = VinylController::verifyPairing(a1, &v284, v269);
          if (!TransportNoEvents)
          {
            goto LABEL_148;
          }

          v154 = gBBULogMaskGet();
          if (VinylController::performNonUpdateOperation(v154))
          {
            _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v155, v156, v157, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
          }

          if ((*gBBULogMaskGet() & 1) == 0 || gBBULogVerbosity < 1)
          {
            goto LABEL_148;
          }

          goto LABEL_253;
        }

LABEL_147:
        TransportNoEvents = 0;
        goto LABEL_148;
      }

      v220 = gBBULogMaskGet();
      if (VinylController::performNonUpdateOperation(v220))
      {
        _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v221, v222, v223, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
      }

      if ((*gBBULogMaskGet() & 1) == 0 || gBBULogVerbosity < 1)
      {
        goto LABEL_148;
      }

LABEL_253:
      _BBULog(0, 1, "VinylController", "", "Failed to verify pairing: %d\n", v158, v159, v160, TransportNoEvents);
      goto LABEL_148;
    }

    v191 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v191))
    {
      _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v192, v193, v194, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
    }

    TransportNoEvents = 0;
    if ((*gBBULogMaskGet() & 1) == 0 || gBBULogVerbosity < 1)
    {
      goto LABEL_150;
    }

    v168 = "Vinyl Secure Element object not created, cannot power up SE\n";
    v169 = 1;
  }

  else
  {
    v161 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v161))
    {
      _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v162, v163, v164, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
    }

    gBBULogMaskGet();
    v168 = "No operation requested in options\n";
    v169 = 0xFFFFFFFFLL;
  }

  _BBULog(0, v169, "VinylController", "", v168, v165, v166, v167, v250);
  TransportNoEvents = 0;
LABEL_150:
  v137 = VinylController::freeTransport(a1);
  if (v137)
  {
    v39 = v137;
  }

  else
  {
    v39 = TransportNoEvents;
  }

  if (v283 == 1)
  {
    gBBULogMaskGet();
    v141 = &BBUpdaterCommon::bbCoredumpPath;
    if (byte_2A18995F7 < 0)
    {
      LOBYTE(v141) = BBUpdaterCommon::bbCoredumpPath;
    }

    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Try to copy the BB coredump from %s\n", v138, v139, v140, v141);
    if (BBUpdaterCommon::BBUIsDirectoryEmpty(&BBUpdaterCommon::bbCoredumpPath))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "But the BB coredump dir is empty.\n", v142, v143, v144, v254);
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "And found the BB coredump already collected, don't need to trigger collection again. Now return error = %d, previous ret = %d\n", v148, v149, v150, 14);
      v39 = 14;
    }
  }

  else if (v282 == 1)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Force collecting BB coredump by return error = %d, previous ret = %d\n", v145, v146, v147, 28);
    v39 = 28;
  }

  if (v281 < 0)
  {
    operator delete(v280);
  }

  if (v279 < 0)
  {
    operator delete(v277);
  }

  if (v276 < 0)
  {
    operator delete(v275);
  }

  if (v274 < 0)
  {
    operator delete(v272);
  }

  if (v271 < 0)
  {
    operator delete(v270);
  }

LABEL_171:
  v151 = v284;
  v284 = 0;
  if (v151)
  {
    (*v151)[15](v151);
  }

  v152 = *MEMORY[0x29EDCA608];
  return v39;
}

void sub_29826EF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  Options::~Options(&a31);
  v54 = a53;
  a53 = 0;
  if (v54)
  {
    (*(*v54 + 120))(v54);
  }

  _Unwind_Resume(a1);
}

void ctu::cf::CFSharedRef<__CFDictionary const>::reset(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    CFRelease(v4);
  }
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t VinylController::operationRequested(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a3 + 4))
  {
    pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    v5 = xmmword_2A13A8CA0;
    if (!xmmword_2A13A8CA0)
    {
      BBUCapabilities::create_default_global(&v19);
      v6 = v19;
      v19 = 0uLL;
      v7 = *(&xmmword_2A13A8CA0 + 1);
      xmmword_2A13A8CA0 = v6;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        if (*(&v19 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
        }
      }

      v5 = xmmword_2A13A8CA0;
    }

    v8 = *(&xmmword_2A13A8CA0 + 1);
    if (*(&xmmword_2A13A8CA0 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    if (BBUCapabilities::supportsEuiccViaEOS(v5))
    {
      v9 = 1;
    }

    else
    {
      pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
      v10 = xmmword_2A13A8CA0;
      if (!xmmword_2A13A8CA0)
      {
        BBUCapabilities::create_default_global(&v19);
        v11 = v19;
        v19 = 0uLL;
        v12 = *(&xmmword_2A13A8CA0 + 1);
        xmmword_2A13A8CA0 = v11;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          if (*(&v19 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
          }
        }

        v10 = xmmword_2A13A8CA0;
      }

      v13 = *(&xmmword_2A13A8CA0 + 1);
      if (*(&xmmword_2A13A8CA0 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
      v9 = BBUCapabilities::supportsVinylUpdate(v10);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = *(a3 + 135);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a3 + 120);
  }

  v15 = *(a3 + 79);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a3 + 64);
  }

  if (a2 > 2)
  {
    if ((a2 - 4) >= 3)
    {
      if (a2 == 3)
      {
        return (v15 | v14) != 0;
      }

      if (a2 != 8)
      {
        return 0;
      }
    }

    return 1;
  }

  switch(a2)
  {
    case 0:
      return 1;
    case 1:
      if (v15 | v14)
      {
        v17 = 1;
      }

      else
      {
        v17 = v9;
      }

      return (*(a3 + 13) | *(a3 + 12) | v17);
    case 2:
      return v9;
    default:
      return 0;
  }
}

void sub_29826F3F0(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t VinylController::createTransportNoEvents(VinylController *this)
{
  if (!*(this + 2))
  {
    VinylController::createTransportNoEvents(&v16);
    return v16;
  }

  if (!*(this + 24))
  {
    VinylController::freeTransport(this);
    v7 = 1;
    v8 = 1;
    do
    {
      v9 = v7;
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "createTransport attempt %d/%d\n", v10, v11, v12, v8);
      v13 = (*(**(this + 2) + 16))(*(this + 2), this + 32);
      if (!v13)
      {
        break;
      }

      VinylController::freeTransport(this);
      __ns.__rep_ = 3000000000;
      std::this_thread::sleep_for (&__ns);
      v7 = 0;
      v8 = 2;
    }

    while ((v9 & 1) != 0);
    return v13;
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "opening channel on provided external transport\n", v2, v3, v4, v14);
  v5 = *(**(this + 2) + 24);

  return v5();
}

BOOL VinylController::pairingSupported(uint64_t a1, uint64_t a2, void *a3)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = (*(**a3 + 96))(*a3, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3 == 0;
}

void sub_29826F664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylController::verifyPairing(uint64_t a1, void *a2, uint64_t a3)
{
  v143 = *MEMORY[0x29EDCA608];
  v138 = 0;
  v139 = 0;
  v140 = 0;
  LODWORD(__ns.__rep_) = 1380532560;
  v136 = 0;
  v137 = 0;
  data = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&data, &__ns, &__ns.__rep_ + 4, 4uLL);
  std::vector<unsigned char>::vector[abi:ne200100](&md, 0x20uLL);
  v131 = 0;
  v132 = 0;
  v129 = 0;
  v130 = 0;
  v128 = 0;
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&cf, (a1 + 128));
  Options::Options(v112, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (a3 >= 1)
  {
    v6 = 0;
    while (1)
    {
      if (TelephonyRadiosGetRadioVendor() == 3)
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Performing ResetCard\n", v7, v8, v9, v105);
        v10 = (*(**a2 + 24))();
        if (v10)
        {
          v75 = gBBULogMaskGet();
          updated = VinylController::performNonUpdateOperation(v75);
          if (updated)
          {
            _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
          }

          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Fail to ResetCard\n", v80, v81, v82, v105);
          goto LABEL_39;
        }
      }

      else
      {
        v11 = *a2;
        *(v11 + 8) = 0u;
        v11 += 8;
        *(v11 + 240) = 0u;
        *(v11 + 256) = 0u;
        *(v11 + 208) = 0u;
        *(v11 + 224) = 0u;
        *(v11 + 176) = 0u;
        *(v11 + 192) = 0u;
        *(v11 + 144) = 0u;
        *(v11 + 160) = 0u;
        *(v11 + 112) = 0u;
        *(v11 + 128) = 0u;
        *(v11 + 80) = 0u;
        *(v11 + 96) = 0u;
        *(v11 + 48) = 0u;
        *(v11 + 64) = 0u;
        *(v11 + 16) = 0u;
        *(v11 + 32) = 0u;
        *(v11 + 267) = 0u;
        *v11 = TelephonyRadiosGetRadioVendor() - 2 < 3;
        (*(**a2 + 8))(&__ns);
        LODWORD(v11) = __ns.__rep_;
        if (v11 != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
        {
          v67 = gBBULogMaskGet();
          if (VinylController::performNonUpdateOperation(v67))
          {
            _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
          }

          gBBULogMaskGet();
          v74 = "Invalid GetData output\n";
          goto LABEL_87;
        }

        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Performing SetCardMode(kOpModeRestore)\n", v12, v13, v14, v105);
        v10 = (*(**a2 + 16))(*a2, 1, 1);
        if (v10)
        {
          v83 = gBBULogMaskGet();
          if (VinylController::performNonUpdateOperation(v83))
          {
            _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v84, v85, v86, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
          }

          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Fail to SetCardMode(kOpModeRestore)\n", v87, v88, v89, v106);
          goto LABEL_39;
        }

        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Performing SetCardMode(kOpModeNormal)\n", v15, v16, v17, v106);
        v10 = (*(**a2 + 16))(*a2, 0, 1);
        if (v10)
        {
          v90 = gBBULogMaskGet();
          if (VinylController::performNonUpdateOperation(v90))
          {
            _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v91, v92, v93, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
          }

          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Fail to SetCardMode(kOpModeNormal)\n", v94, v95, v96, v105);
          goto LABEL_39;
        }

        v18 = *a2;
        *(v18 + 8) = 0u;
        v18 += 8;
        *(v18 + 240) = 0u;
        *(v18 + 256) = 0u;
        *(v18 + 208) = 0u;
        *(v18 + 224) = 0u;
        *(v18 + 176) = 0u;
        *(v18 + 192) = 0u;
        *(v18 + 144) = 0u;
        *(v18 + 160) = 0u;
        *(v18 + 112) = 0u;
        *(v18 + 128) = 0u;
        *(v18 + 80) = 0u;
        *(v18 + 96) = 0u;
        *(v18 + 48) = 0u;
        *(v18 + 64) = 0u;
        *(v18 + 16) = 0u;
        *(v18 + 32) = 0u;
        *(v18 + 267) = 0u;
        *v18 = TelephonyRadiosGetRadioVendor() - 2 < 3;
        (*(**a2 + 8))(&__ns);
        rep = __ns.__rep_;
        v20 = v142;
        if (rep != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
        {
          v97 = gBBULogMaskGet();
          if (VinylController::performNonUpdateOperation(v97))
          {
            _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v98, v99, v100, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
          }

          gBBULogMaskGet();
          v74 = "Invalid GetData output\b";
          goto LABEL_87;
        }

        if (v20)
        {
          v101 = gBBULogMaskGet();
          if (VinylController::performNonUpdateOperation(v101))
          {
            _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v102, v103, v104, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
          }

          gBBULogMaskGet();
          v74 = "After check， card mode was not successfully set to normal\n";
LABEL_87:
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", v74, v71, v72, v73, v105);
          v10 = 1;
          goto LABEL_39;
        }
      }

      __ns.__rep_ = 1000000000;
      std::this_thread::sleep_for (&__ns);
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Performing ManagePairingGetNonce\n", v21, v22, v23, v105);
      v10 = (*(**a2 + 96))(*a2, &v138);
      if (v10)
      {
        v46 = gBBULogMaskGet();
        if (VinylController::performNonUpdateOperation(v46))
        {
          _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
        }

        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Failed to get nonce\n", v50, v51, v52, v107);
        goto LABEL_39;
      }

      v24 = v136;
      v25 = v136 - data;
      if ((v136 - data) > 3)
      {
        if (v25 != 4)
        {
          v24 = data + 4;
          v136 = data + 4;
        }
      }

      else
      {
        std::vector<unsigned char>::__append(&data, 4 - v25);
        v24 = v136;
      }

      std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(&data, v24, v138, v139, v139 - v138);
      CC_SHA256(data, v136 - data, md);
      gBBULogMaskGet();
      ctu::hex_sp();
      if ((v142 & 0x80u) == 0)
      {
        p_ns = &__ns;
      }

      else
      {
        LOBYTE(p_ns) = __ns.__rep_;
      }

      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Payload %s\n", v26, v27, v28, p_ns);
      if (v142 < 0)
      {
        operator delete(__ns.__rep_);
      }

      gBBULogMaskGet();
      ctu::hex_sp();
      if ((v142 & 0x80u) == 0)
      {
        v33 = &__ns;
      }

      else
      {
        LOBYTE(v33) = __ns.__rep_;
      }

      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "hash %s\n", v30, v31, v32, v33);
      if (v142 < 0)
      {
        operator delete(__ns.__rep_);
      }

      v34 = aks_system_key_sign(4, 1, 0, 0, md, v134 - md, &v132, &v128, v108, v109, v110, cf, v112[0], v112[1], v112[2], v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
      v35 = v34;
      if (v34)
      {
        v53 = gBBULogMaskGet();
        if (VinylController::performNonUpdateOperation(v53))
        {
          _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
        }

        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "aks_system_key_sign failed signing nonce %d\n", v57, v58, v59, v35);
        v10 = 11;
        goto LABEL_39;
      }

      gBBULogMaskGet();
      ctu::hex_sp(v132, v128);
      if ((v142 & 0x80u) == 0)
      {
        v39 = &__ns;
      }

      else
      {
        LOBYTE(v39) = __ns.__rep_;
      }

      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "sig_out %s\n", v36, v37, v38, v39);
      if (v142 < 0)
      {
        operator delete(__ns.__rep_);
      }

      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v129, v132, v128 + v132, v128);
      gBBULogMaskGet();
      v109 = a3;
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Performing SEP-eUICC pairing authentication %d/%d\n", v40, v41, v42, v6 + 1);
      v10 = (*(**a2 + 104))(*a2, &v129, &v138);
      if (v10)
      {
        v60 = gBBULogMaskGet();
        if (VinylController::performNonUpdateOperation(v60))
        {
          _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
        }

        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Authentication with card failed\n", v64, v65, v66, v105);
        goto LABEL_39;
      }

      if (a3 == ++v6)
      {
        v10 = 0;
        goto LABEL_38;
      }
    }
  }

  v10 = 1;
LABEL_38:
  v43 = *a2;
  *(v43 + 8) = 0u;
  v43 += 8;
  *(v43 + 240) = 0u;
  *(v43 + 256) = 0u;
  *(v43 + 208) = 0u;
  *(v43 + 224) = 0u;
  *(v43 + 176) = 0u;
  *(v43 + 192) = 0u;
  *(v43 + 144) = 0u;
  *(v43 + 160) = 0u;
  *(v43 + 112) = 0u;
  *(v43 + 128) = 0u;
  *(v43 + 80) = 0u;
  *(v43 + 96) = 0u;
  *(v43 + 48) = 0u;
  *(v43 + 64) = 0u;
  *(v43 + 16) = 0u;
  *(v43 + 32) = 0u;
  *(v43 + 267) = 0u;
  *v43 = TelephonyRadiosGetRadioVendor() - 2 < 3;
  (*(**a2 + 8))(&__ns);
LABEL_39:
  if (v132)
  {
    free(v132);
    v132 = 0;
  }

  if (v127 < 0)
  {
    operator delete(__p);
  }

  if (v125 < 0)
  {
    operator delete(v124);
  }

  if (SHIBYTE(v123) < 0)
  {
    operator delete(v121);
  }

  if (SHIBYTE(v119) < 0)
  {
    operator delete(v117);
  }

  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  if (md)
  {
    v134 = md;
    operator delete(md);
  }

  if (data)
  {
    v136 = data;
    operator delete(data);
  }

  if (v138)
  {
    v139 = v138;
    operator delete(v138);
  }

  v44 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t VinylController::Refurb(uint64_t a1, int a2, void *a3)
{
  *&v22[283] = *MEMORY[0x29EDCA608];
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "refurbAction: %d\n", v5, v6, v7, a2);
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v9 = 1;
    }

    else
    {
      if (a2 != 4)
      {
LABEL_8:
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "default case\n", v10, v11, v12, v21);
LABEL_15:
        v14 = 0;
        goto LABEL_16;
      }

      v9 = 0;
    }

    eUICC::ClearMetadata::Perform(v9, a3);
    goto LABEL_15;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v8 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v8 = 0;
LABEL_10:
  v13 = (*(**a3 + 32))(*a3, v8);
  if (!v13)
  {
    v18 = *a3;
    *(v18 + 8) = 0u;
    v18 += 8;
    *(v18 + 240) = 0u;
    *(v18 + 256) = 0u;
    *(v18 + 208) = 0u;
    *(v18 + 224) = 0u;
    *(v18 + 176) = 0u;
    *(v18 + 192) = 0u;
    *(v18 + 144) = 0u;
    *(v18 + 160) = 0u;
    *(v18 + 112) = 0u;
    *(v18 + 128) = 0u;
    *(v18 + 80) = 0u;
    *(v18 + 96) = 0u;
    *(v18 + 48) = 0u;
    *(v18 + 64) = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0u;
    *(v18 + 267) = 0u;
    *v18 = TelephonyRadiosGetRadioVendor() - 2 < 3;
    (*(**a3 + 8))(v22);
    goto LABEL_15;
  }

  v14 = v13;
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Failed to handle Refurb operation, ret %d\n", v15, v16, v17, v14);
LABEL_16:
  v19 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t VinylController::bootstrapProvisioning(uint64_t a1, void *a2)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&cf, (a1 + 128));
  Options::Options(v9, &cf);
  v3 = eUICC::TwoPhaseProv::Perform(v9, a2);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (!v3)
  {
    return 0;
  }

  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "VinylController", "", "Failed to handle bootstrap provisioning operation, ret %d\n", v4, v5, v6, v3);
  return 11;
}

void sub_298270504(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  Options::~Options(va1);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t VinylController::managePairingInstallMSM(uint64_t a1, void *a2)
{
  v52 = 0;
  v53 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  EID = eUICC::getEID();
  if (EID)
  {
    v22 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v22))
    {
      _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
    }

    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Unable to get EID\n", v26, v27, v28, v44);
    goto LABEL_24;
  }

  Value = CFDictionaryGetValue(v53, @"EID");
  if (!Value || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(Value)))
  {
    v15 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v15))
    {
      _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
    }

    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Invalid dictionary returned from getEID\n", v19, v20, v21, v44);
    EID = 0;
LABEL_24:
    v6 = 0;
    goto LABEL_11;
  }

  __p[0] = 0;
  __p[1] = &v52;
  v6 = AMFDRSealingMapCopyLocalMinimalManifestForInstance();
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(__p);
  if (v6)
  {
    BytePtr = CFDataGetBytePtr(v6);
    v8 = CFDataGetBytePtr(v6);
    Length = CFDataGetLength(v6);
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v49, BytePtr, &v8[Length], &v8[Length] - BytePtr);
    gBBULogMaskGet();
    ctu::hex_sp();
    if (v48 >= 0)
    {
      v13 = __p;
    }

    else
    {
      LOBYTE(v13) = __p[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "MSMVectorBlob %s\n", v10, v11, v12, v13);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    EID = (*(**a2 + 88))(*a2, &v49);
    if (EID)
    {
      v37 = gBBULogMaskGet();
      if (VinylController::performNonUpdateOperation(v37))
      {
        _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
      }

      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Failed to push minimal sealing manifest to the card\n", v41, v42, v43, v45);
    }
  }

  else
  {
    v29 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v29))
    {
      _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
    }

    gBBULogMaskGet();
    ctu::cf::CFSharedRef<void const>::CFSharedRef<__CFError,void>(&v46, &v52);
    CFOBJ_STR(&v46, __p);
    if (v48 >= 0)
    {
      v36 = __p;
    }

    else
    {
      LOBYTE(v36) = __p[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Minimal sealing manifest fetch failed %s\n", v33, v34, v35, v36);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    ctu::cf::CFSharedRef<void const>::~CFSharedRef(&v46);
    v6 = 0;
    EID = 11;
  }

LABEL_11:
  if (v53)
  {
    CFRelease(v53);
    v53 = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v52);
  return EID;
}

void sub_2982708FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a12);
  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v20 - 48));
  _Unwind_Resume(a1);
}

uint64_t VinylController::getPairingParameters(int a1, CFDictionaryRef theDict, __CFDictionary **a3, void *a4)
{
  Value = CFDictionaryGetValue(theDict, @"kToBeSignedPayload");
  if (Value && (v14 = Value, v15 = CFGetTypeID(Value), Value = CFDictionaryGetTypeID(), v15 == Value))
  {
    if (eUICC::Pairing::GetParameters(v14, a3, a4))
    {
      return 11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    VinylController::getPairingParameters(Value, v7, v8, v9, v10, v11, v12, v13, v17);
    return 0;
  }
}

void Options::~Options(void **this)
{
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

uint64_t VinylController::freeTransport(VinylController *this)
{
  if (*(this + 24))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Skipping free of external transport\n", v1, v2, v3, v10);
    return 0;
  }

  else
  {
    v6 = *(this + 2);
    if (v6)
    {
      v7 = *(this + 11);
      if (v7 && (v8 = v7(this + 32), v6 = *(this + 2), v8))
      {
        v9 = *(*v6 + 40);
      }

      else
      {
        v9 = *(*v6 + 40);
      }

      if (v9())
      {
        return 0;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      VinylController::freeTransport(&v11);
      return v11;
    }
  }
}

const void **ctu::cf::CFSharedRef<void const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void VinylController::~VinylController(VinylController *this)
{
  VinylController::~VinylController(this);

  operator delete(v1);
}

{
  *this = &unk_2A1EB2888;
  v2 = *(this + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    CFRelease(v5);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (v14 - v9 >= a4)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      v12 = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = v14;
        v18 = v14;
        do
        {
          v19 = *v16++;
          *v18++ = v19;
          ++v17;
        }

        while (v16 != a3);
      }

      v12 = v17;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    v12 = v7[1];
    while (v6 != a3)
    {
      v13 = *v6++;
      *v12++ = v13;
    }
  }

  v7[1] = v12;
  return result;
}

const void **ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

char *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(char *result, char *a2, char *a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_298270EE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
    v4 = a1[1];
    v5 = &v4[a2];
    bzero(v4, a2);
    a1[1] = v5;
  }

  return a1;
}

void sub_298270F54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__append(uint64_t a1, size_t a2)
{
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v13 = &v4[a2];
      bzero(v4, a2);
      v4 = v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v7 = *a1;
    v8 = &v4[-*a1];
    v9 = v8 + a2;
    if ((v8 + a2) < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    bzero(&v12[v8], a2);
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = &v12[v8 + a2];
    *(a1 + 16) = &v12[v11];
    if (v7)
    {

      operator delete(v7);
    }
  }
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v6 = __len;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      v16 = operator new(v15);
    }

    else
    {
      v16 = 0;
    }

    v32 = &v13[v16];
    v33 = &v13[v16 + v6];
    v34 = v32;
    do
    {
      v35 = *v7++;
      *v34++ = v35;
      --v6;
    }

    while (v6);
    v36 = v16 + v15;
    memcpy(v33, v5, v10 - v5);
    v37 = &v33[v10 - v5];
    *(a1 + 8) = v5;
    v38 = *a1;
    v39 = &v32[*a1 - v5];
    memcpy(v39, *a1, &v5[-*a1]);
    *a1 = v39;
    *(a1 + 8) = v37;
    *(a1 + 16) = v36;
    if (v38)
    {
      operator delete(v38);
    }

    return v32;
  }

  v17 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v28 = &__dst[__len];
    v29 = &v10[-__len];
    v30 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v31 = *v29++;
        *v30++ = v31;
      }

      while (v29 != v10);
    }

    *(a1 + 8) = v30;
    if (v10 != v28)
    {
      memmove(&__dst[__len], __dst, v10 - v28);
    }

    v25 = v5;
    v26 = v7;
    v27 = v6;
    goto LABEL_27;
  }

  v19 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v20 = &v10[v19];
  *(a1 + 8) = &v10[v19];
  if (v17 >= 1)
  {
    v21 = &v5[v6];
    v22 = &v10[v19];
    if (&v20[-v6] < v10)
    {
      v23 = a4 - &v7[v6];
      v24 = a4 - v7;
      do
      {
        v5[v24++] = v5[v23++];
      }

      while (&v5[v23] < v10);
      v22 = &v5[v24];
    }

    *(a1 + 8) = v22;
    if (v20 != v21)
    {
      memmove(&v5[v6], v5, v20 - v21);
    }

    v25 = v5;
    v26 = v7;
    v27 = v10 - v5;
LABEL_27:
    memmove(v25, v26, v27);
  }

  return v5;
}

uint64_t ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v6);
  return a1;
}

const void **ctu::cf::CFSharedRef<void const>::CFSharedRef<__CFError,void>(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t __cxx_global_var_init_126()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_29826A000);
  }

  return result;
}

eUICC::eUICCVinylICEValve *eUICC::eUICCVinylICEValve::eUICCVinylICEValve(eUICC::eUICCVinylICEValve *this, void *a2, int a3, char a4)
{
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 275) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 304) = 0;
  *this = &unk_2A1EB28B8;
  *(this + 39) = 0;
  *(this + 37) = a2;
  v5 = a3 != 1;
  if (a3 == 255)
  {
    v5 = 255;
  }

  *(this + 73) = v5;
  *(this + 291) = a4;
  IceAriGetContext();
  v6 = operator new(0x40uLL);
  eUICC::VinylCommandDriver::VinylCommandDriver();
  std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](this + 39, v6);
  *(this + 304) = 15;
  eUICC::eUICCVinylValve::hardwareHasESIM = (*(*this + 128))(this, &eUICC::eUICCVinylValve::simSKUID);
  return this;
}

void sub_298271624(_Unwind_Exception *a1)
{
  std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](v1 + 39, 0);
  VinylCommunication::~VinylCommunication(v1);
  _Unwind_Resume(a1);
}

uint64_t IceAriGetContext(void)
{
  pthread_mutex_lock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  v0 = off_2A13A8C50;
  if (!off_2A13A8C50)
  {
    v1 = operator new(0x28uLL);
    v1[32] = 0;
    std::shared_ptr<ICEARIContext>::shared_ptr[abi:ne200100]<ICEARIContext,0>(&v6, v1);
    v2 = v6;
    v6 = 0uLL;
    v3 = *(&off_2A13A8C50 + 1);
    off_2A13A8C50 = v2;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      if (*(&v6 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
      }
    }

    v0 = off_2A13A8C50;
  }

  v4 = *(&off_2A13A8C50 + 1);
  if (*(&off_2A13A8C50 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A8C50 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v0;
}

uint64_t eUICC::eUICCVinylICEValve::HardwareHasESIM(eUICC::eUICCVinylICEValve *this, unsigned __int8 *a2)
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN5eUICC18eUICCVinylICEValve15HardwareHasESIMERh_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  block[4] = this;
  if (eUICC::eUICCVinylValve::simSKUOnceToken != -1)
  {
    dispatch_once(&eUICC::eUICCVinylValve::simSKUOnceToken, block);
  }

  return eUICC::eUICCVinylICEValve::HardwareHasESIM(unsigned char &)::result;
}

capabilities::euicc *___ZN5eUICC18eUICCVinylICEValve15HardwareHasESIMERh_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = TelephonyRadiosGetRadio();
  if (result == 4)
  {
    eUICC::eUICCVinylICEValve::HardwareHasESIM(unsigned char &)::result = 1;
  }

  else
  {
    result = capabilities::euicc::supportsGenericUpdater(result);
    if (result)
    {
      AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK::ARI_IBIVinylHwIdSimConfigReq_SDK(v11);
      v3 = *(v1 + 312);
      if (eUICC::VinylCommandDriver::GetHwIdSimConfig())
      {
        if (*(MEMORY[0x48] + 4) == 2)
        {
          gBBULogMaskGet();
          _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "SimConfigRsp: device supports eSIM\n", v4, v5, v6, v10);
          eUICC::eUICCVinylICEValve::HardwareHasESIM(unsigned char &)::result = 1;
        }

        else
        {
          (*(MEMORY[0] + 16))(0);
        }
      }

      else
      {
        gBBULogMaskGet();
        _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: failed to get SimConfig info from BB\n", v7, v8, v9, v10);
      }

      return MEMORY[0x29C286710](v11);
    }
  }

  return result;
}

void *eUICC::eUICCVinylICEValve::GetVinylType@<X0>(eUICC::eUICCVinylICEValve *this@<X0>, void *a2@<X8>)
{
  *(this + 2) = 0;
  *(this + 288) = 1;
  return memcpy(a2, this + 8, 0x11BuLL);
}

uint64_t eUICC::eUICCVinylICEValve::GetData@<X0>(eUICC::eUICCVinylICEValve *this@<X0>, void *a2@<X8>)
{
  AriSdk::ARI_IBIVinylGetDataReq_SDK::ARI_IBIVinylGetDataReq_SDK(v52);
  v3 = (this + 8);
  if (*(this + 290) == 1)
  {
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "eUICCVinylData cache is valid. Using cached data!\n", v4, v5, v6, v50);
    eUICC::logEUICCData(this + 2);
    goto LABEL_36;
  }

  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *v3 = 0u;
  *(this + 275) = 0u;
  *(this + 2) = TelephonyRadiosGetRadioVendor() - 2 < 3;
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v53, this + 73);
  v7 = operator new(1uLL);
  *v7 = 0;
  v8 = __p;
  __p = v7;
  if (v8)
  {
    operator delete(v8);
  }

  RadioVendor = TelephonyRadiosGetRadioVendor();
  v10 = RadioVendor;
  if (RadioVendor == 3)
  {
    v27 = 0;
    *(this + 287) = eUICC::eUICCVinylValve::hardwareHasESIM ^ 1;
    while (1)
    {
      v28 = *(this + 39);
      if ((eUICC::VinylCommandDriver::GetData() & 1) == 0)
      {
        break;
      }

      v29 = *MEMORY[0x48];
      gBBULogMaskGet();
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "GetData IBIVinylResult 0x%x\n", v30, v31, v32, v29);
      if (v29 <= 7 && ((1 << v29) & 0x91) != 0)
      {
        goto LABEL_9;
      }

      gBBULogMaskGet();
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "SIM still initializing, trying again... IBIVinylResult 0x%x (retryCount: %d, retryLimit: %d)\n", v34, v35, v36, v29);
      __ns.__rep_ = 2000000000;
      std::this_thread::sleep_for (&__ns);
      if (++v27 == 7)
      {
        goto LABEL_34;
      }
    }

    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: Invalid GetData response from BB\n", v47, v48, v49, v50);
    goto LABEL_34;
  }

  if (RadioVendor != 2)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "TelephonyRadiosGetRadioVendor %d not supported!", v37, v38, v39, v10);
    goto LABEL_34;
  }

  isAbsentOkay = eUICC::eUICCVinylICEValve::isAbsentOkay(this);
  *(this + 287) = isAbsentOkay;
  if (isAbsentOkay)
  {
LABEL_35:
    *v3 = 255;
    goto LABEL_36;
  }

  v12 = *(this + 39);
  if ((eUICC::VinylCommandDriver::GetData() & 1) == 0)
  {
LABEL_34:
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Invalid GetData response from the BB\n", v40, v41, v42, v50);
    goto LABEL_35;
  }

LABEL_9:
  *(this + 2) = *MEMORY[0x48];
  v13 = MEMORY[0x60];
  *(this + 13) = *MEMORY[0x58];
  if (v13 == MEMORY[0x68])
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  *(this + 15) = *v14;
  v15 = MEMORY[0x80];
  *(this + 31) = *MEMORY[0x78];
  if (v15 == MEMORY[0x88])
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v17 = v16[1];
  *(this + 2) = *v16;
  *(this + 3) = v17;
  *(this + 8) = *MEMORY[0x98];
  *(this + 9) = *MEMORY[0xB0];
  v18 = MEMORY[0xC8];
  if (MEMORY[0xC8] == MEMORY[0xD0])
  {
    v18 = 0;
  }

  *(this + 5) = *v18;
  v19 = MEMORY[0x128];
  if (MEMORY[0x128] == MEMORY[0x130])
  {
    v19 = 0;
  }

  *(this + 155) = *v19;
  v20 = MEMORY[0x1C0];
  if (MEMORY[0x1C0] == MEMORY[0x1C8])
  {
    v20 = 0;
  }

  v21 = v20[1];
  *(this + 251) = *v20;
  *(this + 267) = v21;
  *(this + 115) = *MEMORY[0x188];
  v22 = MEMORY[0x1A8];
  if (MEMORY[0x1A8] == MEMORY[0x1B0])
  {
    v22 = 0;
  }

  v23 = *(v22 + 2);
  *(this + 124) = *v22;
  *(this + 250) = v23;
  *(this + 12) = *MEMORY[0x50];
  *(this + 283) = *MEMORY[0x1E8];
  *(this + 289) = eUICC::eUICCVinylValve::hardwareHasESIM;
  *(this + 286) = eUICC::eUICCVinylValve::simSKUID;
  *(this + 290) = 1;
  eUICC::logEUICCData(this + 2);
  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "result  0x%x \n", v24, v25, v26, *MEMORY[0x48]);
LABEL_36:
  if (*v3 != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD && (eUICC::eUICCVinylValve::hardwareHasESIM & 1) == 0)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "GetData status is not valid, hardware does not have eSIM, set absentOk to True\n", v43, v44, v45, v50);
    *(this + 287) = 1;
  }

  memcpy(a2, this + 8, 0x11BuLL);
  return MEMORY[0x29C286630](v52);
}

void sub_298271DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x29C286630](va);
  _Unwind_Resume(a1);
}

void **AriSdk::Tlv<unsigned int>::operator=<int &,void>(void **a1, _DWORD *a2)
{
  v4 = operator new(4uLL);
  *v4 = *a2;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t eUICC::eUICCVinylICEValve::isAbsentOkay(eUICC::eUICCVinylICEValve *this)
{
  AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::ARI_IBISimAccessGetSimDataReq_SDK(v38);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v39, this + 73);
  v2 = -1;
  while (1)
  {
    v3 = *(this + 39);
    if ((eUICC::VinylCommandDriver::GetVinylType() & 1) == 0)
    {
      gBBULogMaskGet();
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: failed to get slot info from BB\n", v9, v10, v11, v35);
LABEL_13:
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v12, v13, v14, "ret");
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to get data from UIM\n", v15, v16, v17, v36);
LABEL_14:
      v18 = 0;
      goto LABEL_15;
    }

    v4 = *MEMORY[0x48];
    if (*MEMORY[0x48] > 5)
    {
      break;
    }

    if (v4 != 1 && v4 != 4)
    {
      goto LABEL_20;
    }

LABEL_10:
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "SIM still initializing, trying again... sim_state 0x%x (retryCount: %d, retryLimit: %d)\n", v6, v7, v8, *MEMORY[0x48]);
    __ns.__rep_ = 2000000000;
    std::this_thread::sleep_for (&__ns);
    if (++v2 >= 6)
    {
      goto LABEL_13;
    }
  }

  if (v4 == 254)
  {
    goto LABEL_10;
  }

  if (v4 != 6)
  {
    goto LABEL_20;
  }

  if (*MEMORY[0x80])
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v29, v30, v31, "!(GET_RSP_FIELD(rsp, sim_error_cause_t28) & sim_error_cause_mask)");
    gBBULogMaskGet();
    v37 = *MEMORY[0x80];
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "sim_state 0x%x, sim_error_cause 0x%x\n", v32, v33, v34, *MEMORY[0x48]);
    goto LABEL_14;
  }

  if (*MEMORY[0x80] == 2)
  {
    v18 = 1;
    goto LABEL_15;
  }

LABEL_20:
  if (MEMORY[0x88])
  {
    v18 = (*MEMORY[0x88] & 3) == 0;
  }

  else
  {
    v18 = 1;
  }

  gBBULogMaskGet();
  v27 = *MEMORY[0x80];
  if (MEMORY[0x88])
  {
    v28 = *MEMORY[0x88];
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "sim_state 0x%x sim_error_cause: 0x%x sim_ext_capabilities 0x%x isAbsentOk: %s\n", v24, v25, v26, *MEMORY[0x48]);
LABEL_15:
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "isAbsentOkay result %d hardwareHasESIM: %d\n", v19, v20, v21, v18);
  v22 = eUICC::eUICCVinylValve::hardwareHasESIM;
  MEMORY[0x29C286730](v38);
  return v18 & (v22 ^ 1u);
}

void sub_2982721D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x29C286730](va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::SetCardMode(uint64_t a1)
{
  AriSdk::ARI_IBIVinylSwitchModeReq_SDK::ARI_IBIVinylSwitchModeReq_SDK(v10);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v11, (a1 + 292));
  v2 = operator new(1uLL);
  *v2 = 1;
  v3 = __p;
  __p = v2;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 312);
  eUICC::VinylCommandDriver::SwitchCardMode();
  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: failed to SwitchCardMode\n", v5, v6, v7, v9);
  MEMORY[0x29C286690](v10);
  return 18;
}

void sub_29827232C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x29C286690](va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::ResetCard(eUICC::eUICCVinylICEValve *this)
{
  if (TelephonyRadiosGetRadioVendor() == 3)
  {
    AriSdk::ARI_IBIVinylSimCardResetReq_SDK::ARI_IBIVinylSimCardResetReq_SDK(v13);
    AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v14, this + 73);
    v2 = *(this + 39);
    eUICC::VinylCommandDriver::ResetSimCard();
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: failed to perform ResetSimCard\n", v7, v8, v9, v12);
    v10 = 18;
    MEMORY[0x29C2866F0](v13);
  }

  else
  {
    gBBULogMaskGet();
    RadioVendor = TelephonyRadiosGetRadioVendor();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: only kTelephonyRadioVendorINT has IBIVinylSimCardResetReq, current RadioVendor = %d\n", v4, v5, v6, RadioVendor);
    return 1;
  }

  return v10;
}

void sub_2982724A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x29C2866F0](va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::DeleteProfile(eUICC::eUICCVinylICEValve *this, unsigned int a2)
{
  AriSdk::ARI_IBIVinylTapeReq_SDK::ARI_IBIVinylTapeReq_SDK(v31);
  v30 = 0;
  v29[0] = 0xBFD00402820434BFLL;
  *(v29 + 6) = 0xD80302820434BFD0;
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v32, this + 73);
  v4 = operator new(4uLL);
  *v4 = 17;
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = operator new(4uLL);
  *v6 = 1;
  v7 = v34;
  v34 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = operator new(2uLL);
  *v8 = 1;
  v9 = v35;
  v35 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = operator new(2uLL);
  *v10 = 0;
  v11 = v36;
  v36 = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(2uLL);
  *v12 = 7;
  v13 = v37;
  v37 = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = &v29[a2] - a2;
  AriSdk::TlvArray<unsigned char,3584ul>::assign<unsigned char *>(&v38, v14, v14 + 7);
  v15 = *(this + 39);
  if ((eUICC::VinylCommandDriver::DeleteProfile() & 1) == 0)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v24, v25, v26, "status");
    v23 = 11;
LABEL_15:
    v16 = v30;
    if (!v30)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v16 = v30;
  if (**(v30 + 80))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "!GET_RSP_FIELD(rsp, result_t4)");
    gBBULogMaskGet();
    v28 = **(v30 + 88);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to DeleteProfile status %d SW1_SW2 0x%x\n", v20, v21, v22, **(v30 + 80));
    v23 = 18;
    goto LABEL_15;
  }

  v23 = 0;
LABEL_18:
  (*(*v16 + 16))(v16);
LABEL_19:
  MEMORY[0x29C2865F0](v31);
  return v23;
}

void sub_298272718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEMORY[0x29C2865F0](va);
  _Unwind_Resume(a1);
}

BOOL AriSdk::TlvArray<unsigned char,3584ul>::assign<unsigned char *>(Ari *a1, char *a2, char *a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = a3 - a2;
  if ((a3 - a2) >= 0xE01)
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v13, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
        v12 = v14 >= 0 ? v13 : v13[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v16 = 2080;
        v17 = v12;
        v18 = 1024;
        v19 = 385;
        v20 = 2048;
        v21 = a1;
        v22 = 2048;
        v23 = v4;
        v24 = 2048;
        v25 = 3584;
        _os_log_error_impl(&dword_29826A000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", __p, 0x3Au);
        if (v14 < 0)
        {
          operator delete(v13[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
      if (v18 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", v8, v9, 385, a1, v4, 3584);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, a2, a3, a3 - a2);
  }

  result = v4 < 0xE01;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2982728F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylICEValve::StoreData(uint64_t a1, char **a2, void *a3, _WORD *a4)
{
  AriSdk::ARI_IBIVinylTapeReq_SDK::ARI_IBIVinylTapeReq_SDK(v33);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v34, (a1 + 292));
  v8 = operator new(4uLL);
  *v8 = 5;
  v9 = __p;
  __p = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = operator new(4uLL);
  *v10 = 1;
  v11 = v36;
  v36 = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(2uLL);
  *v12 = 1;
  v13 = v37;
  v37 = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(2uLL);
  *v14 = 0;
  v15 = v38;
  v38 = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v17 = *a2;
  v16 = a2[1];
  v18 = operator new(2uLL);
  *v18 = v16 - v17;
  v19 = v39;
  v39 = v18;
  if (v19)
  {
    operator delete(v19);
    v17 = *a2;
    v16 = a2[1];
  }

  AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char const*>>(&v40, v17, v16);
  v20 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::DeleteProfile())
  {
    if (*MEMORY[0x50])
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v21, v22, v23, "!GET_RSP_FIELD(rsp, result_t4)");
      gBBULogMaskGet();
      v32 = *MEMORY[0x58];
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to store data status %d SW1_SW2 0x%x\n", v24, v25, v26, *MEMORY[0x50]);
      v27 = 18;
    }

    else
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a3, MEMORY[0x78], (*MEMORY[0x70] + MEMORY[0x78]), *MEMORY[0x70]);
      v27 = 0;
    }

    *a4 = *MEMORY[0x58];
    (*(MEMORY[0] + 16))(0);
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v28, v29, v30, "status");
    v27 = 11;
  }

  MEMORY[0x29C2865F0](v33);
  return v27;
}

void sub_298272B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x29C2865F0](va);
  _Unwind_Resume(a1);
}

BOOL AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char const*>>(Ari *a1, char *a2, char *a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = a3 - a2;
  if ((a3 - a2) >= 0xE01)
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v13, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
        v12 = v14 >= 0 ? v13 : v13[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v16 = 2080;
        v17 = v12;
        v18 = 1024;
        v19 = 385;
        v20 = 2048;
        v21 = a1;
        v22 = 2048;
        v23 = v4;
        v24 = 2048;
        v25 = 3584;
        _os_log_error_impl(&dword_29826A000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", __p, 0x3Au);
        if (v14 < 0)
        {
          operator delete(v13[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
      if (v18 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", v8, v9, 385, a1, v4, 3584);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(a1, a2, a3, a3 - a2);
  }

  result = v4 < 0xE01;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298272D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylICEValve::InitPerso(uint64_t a1, char **a2, void *a3)
{
  AriSdk::ARI_IBIVinylInitPsoReq_SDK::ARI_IBIVinylInitPsoReq_SDK(v37);
  v36 = 0;
  v6 = a2[1];
  v7 = v6 - *a2;
  v8 = (v6 - *a2);
  if (v8 >= 0xE01)
  {
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v9, v10, v11, v7);
LABEL_14:
    v26 = 18;
    goto LABEL_16;
  }

  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v38, (a1 + 292));
  v12 = operator new(1uLL);
  *v12 = 0;
  v13 = __p;
  __p = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(1uLL);
  *v14 = 0;
  v15 = v40;
  v40 = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = operator new(2uLL);
  *v16 = v7;
  v17 = v41;
  v41 = v16;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *a2;
  v35 = 0;
  v34 = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v34, v18, &v18[v8], v8);
  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v42, &v34);
  if (v34.n128_u64[0])
  {
    v34.n128_u64[1] = v34.n128_u64[0];
    operator delete(v34.n128_u64[0]);
  }

  v19 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::InitPerso())
  {
    if (**(v36 + 72) || (v31 = *(v36 + 88), !*v31))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v20, v21, v22, "!GET_RSP_FIELD(rsp, result_t3) && GET_RSP_FIELD(rsp, sim_rsp_len_t5)");
      gBBULogMaskGet();
      v32 = **(v36 + 80);
      v33 = **(v36 + 88);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to InitPerso status %d SW1_SW2 0x%x rsp_len %u\n", v23, v24, v25, **(v36 + 72));
      goto LABEL_14;
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a3, *(v36 + 96), (*(v36 + 96) + *v31), *v31);
    v26 = 0;
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v27, v28, v29, "status");
    v26 = 11;
  }

LABEL_16:
  if (v36)
  {
    (*(*v36 + 16))(v36);
  }

  MEMORY[0x29C286650](v37);
  return v26;
}

Ari *AriSdk::TlvArray<unsigned char,3584ul>::operator=(Ari *a1, __n128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if (a2->n128_u64[1] - a2->n128_u64[0] < 0xE01)
  {
    std::vector<unsigned char>::__move_assign(a1, a2);
  }

  else
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v13, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v6);
        v11 = v14 >= 0 ? v13 : v13[0];
        v12 = a2->n128_u64[1] - a2->n128_u64[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v16 = 2080;
        v17 = v11;
        v18 = 1024;
        v19 = 360;
        v20 = 2048;
        v21 = a1;
        v22 = 2048;
        v23 = v12;
        v24 = 2048;
        v25 = 3584;
        _os_log_error_impl(&dword_29826A000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
        if (v14 < 0)
        {
          operator delete(v13[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v6);
      if (v18 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v7, v8, 360, a1, a2->n128_u64[1] - a2->n128_u64[0], 3584);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_298273228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylICEValve::AuthPerso(uint64_t a1, char **a2, void *a3)
{
  AriSdk::ARI_IBIVinylAuthPsoReq_SDK::ARI_IBIVinylAuthPsoReq_SDK(v37);
  v36 = 0;
  v6 = a2[1];
  v7 = v6 - *a2;
  v8 = (v6 - *a2);
  if (v8 >= 0xE01)
  {
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v9, v10, v11, v7);
LABEL_14:
    v26 = 18;
    goto LABEL_16;
  }

  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v38, (a1 + 292));
  v12 = operator new(1uLL);
  *v12 = 0;
  v13 = __p;
  __p = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(1uLL);
  *v14 = 0;
  v15 = v40;
  v40 = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = operator new(2uLL);
  *v16 = v7;
  v17 = v41;
  v41 = v16;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *a2;
  v35 = 0;
  v34 = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v34, v18, &v18[v8], v8);
  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v42, &v34);
  if (v34.n128_u64[0])
  {
    v34.n128_u64[1] = v34.n128_u64[0];
    operator delete(v34.n128_u64[0]);
  }

  v19 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::AuthPerso())
  {
    if (**(v36 + 72) || (v31 = *(v36 + 88), !*v31))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v20, v21, v22, "!GET_RSP_FIELD(rsp, result_t3) && GET_RSP_FIELD(rsp, sim_rsp_len_t5)");
      gBBULogMaskGet();
      v32 = **(v36 + 80);
      v33 = **(v36 + 88);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to AuthPerso status %d SW1_SW2 0x%x rsp_len %u\n", v23, v24, v25, **(v36 + 72));
      goto LABEL_14;
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a3, *(v36 + 96), (*(v36 + 96) + *v31), *v31);
    v26 = 0;
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v27, v28, v29, "status");
    v26 = 11;
  }

LABEL_16:
  if (v36)
  {
    (*(*v36 + 16))(v36);
  }

  MEMORY[0x29C286610](v37);
  return v26;
}

uint64_t eUICC::eUICCVinylICEValve::FinalizePerso(uint64_t a1, char **a2)
{
  AriSdk::ARI_IBIVinylFinalizePsoReq_SDK::ARI_IBIVinylFinalizePsoReq_SDK(v34);
  v33 = 0;
  v4 = a2[1];
  v5 = v4 - *a2;
  v6 = (v4 - *a2);
  if (v6 >= 0xE01)
  {
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v7, v8, v9, v5);
LABEL_14:
    v25 = 18;
    goto LABEL_16;
  }

  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v35, (a1 + 292));
  v10 = operator new(1uLL);
  *v10 = 0;
  v11 = __p;
  __p = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(1uLL);
  *v12 = 0;
  v13 = v37;
  v37 = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(2uLL);
  *v14 = v5;
  v15 = v38;
  v38 = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = *a2;
  v32 = 0;
  v31 = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v31, v16, &v16[v6], v6);
  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v39, &v31);
  if (v31.n128_u64[0])
  {
    v31.n128_u64[1] = v31.n128_u64[0];
    operator delete(v31.n128_u64[0]);
  }

  v17 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::FinalizePerso())
  {
    v18 = v33;
    if (!**(v33 + 72))
    {
      v25 = 0;
      goto LABEL_17;
    }

    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v19, v20, v21, "!GET_RSP_FIELD(rsp, result_t3)");
    gBBULogMaskGet();
    v30 = **(v33 + 80);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to FinalizePerso status %d SW1_SW2 0x%x\n", v22, v23, v24, **(v33 + 72));
    goto LABEL_14;
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v26, v27, v28, "status");
  v25 = 11;
LABEL_16:
  v18 = v33;
  if (v33)
  {
LABEL_17:
    (*(*v18 + 16))(v18);
  }

  MEMORY[0x29C2866B0](v34);
  return v25;
}

void sub_29827377C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2866B0](&a18);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::ValidatePerso(uint64_t a1, char **a2, void *a3)
{
  AriSdk::ARI_IBIVinylValidatePsoReq_SDK::ARI_IBIVinylValidatePsoReq_SDK(v37);
  v36 = 0;
  v6 = a2[1];
  v7 = v6 - *a2;
  v8 = (v6 - *a2);
  if (v8 >= 0xE01)
  {
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v9, v10, v11, v7);
LABEL_14:
    v26 = 18;
    goto LABEL_16;
  }

  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v38, (a1 + 292));
  v12 = operator new(2uLL);
  *v12 = 1;
  v13 = __p;
  __p = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(2uLL);
  *v14 = 0;
  v15 = v40;
  v40 = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = operator new(2uLL);
  *v16 = v7;
  v17 = v41;
  v41 = v16;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *a2;
  v35 = 0;
  v34 = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v34, v18, &v18[v8], v8);
  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v42, &v34);
  if (v34.n128_u64[0])
  {
    v34.n128_u64[1] = v34.n128_u64[0];
    operator delete(v34.n128_u64[0]);
  }

  v19 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::ValidatePerso())
  {
    if (**(v36 + 72) || (v31 = *(v36 + 88), !*v31))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v20, v21, v22, "!GET_RSP_FIELD(rsp, result_t3) && GET_RSP_FIELD(rsp, sim_rsp_len_t5)");
      gBBULogMaskGet();
      v32 = **(v36 + 80);
      v33 = **(v36 + 88);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to AuthPerso status %d SW1_SW2 0x%x rsp_len %u\n", v23, v24, v25, **(v36 + 72));
      goto LABEL_14;
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a3, *(v36 + 96), (*(v36 + 96) + *v31), *v31);
    v26 = 0;
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v27, v28, v29, "status");
    v26 = 11;
  }

LABEL_16:
  if (v36)
  {
    (*(*v36 + 16))(v36);
  }

  MEMORY[0x29C2866D0](v37);
  return v26;
}

uint64_t eUICC::eUICCVinylICEValve::InstallPairingMSM(uint64_t a1, char **a2)
{
  AriSdk::ARI_IBIVinylPairingReq_SDK::ARI_IBIVinylPairingReq_SDK(v32);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v33, (a1 + 292));
  v4 = operator new(4uLL);
  *v4 = 3;
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = operator new(4uLL);
  *v6 = 1;
  v7 = v35;
  v35 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = operator new(2uLL);
  *v8 = 1;
  v9 = v36;
  v36 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = operator new(2uLL);
  *v10 = 0;
  v11 = v37;
  v37 = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v13 = *a2;
  v12 = a2[1];
  v14 = operator new(2uLL);
  *v14 = v12 - v13;
  v15 = v38;
  v38 = v14;
  if (v15)
  {
    operator delete(v15);
    v13 = *a2;
    v12 = a2[1];
  }

  AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char const*>>(&v39, v13, v12);
  v16 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::ManagePairing())
  {
    if (*MEMORY[0x50])
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "!GET_RSP_FIELD(rsp, result_t4)");
      gBBULogMaskGet();
      v31 = *MEMORY[0x58];
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to InstallPairingMSM result %d SW1_SW2 0x%04x\n", v20, v21, v22, *MEMORY[0x50]);
      v23 = 18;
    }

    else
    {
      v23 = 0;
      (*(MEMORY[0] + 16))(0);
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v24, v25, v26, "status");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to InstallPairingMSM status %d\n", v27, v28, v29, 0);
    v23 = 11;
  }

  MEMORY[0x29C286670](v32);
  return v23;
}

void sub_298273CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x29C286670](va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::ManagePairingGetNonce(uint64_t a1, void *a2)
{
  AriSdk::ARI_IBIVinylPairingReq_SDK::ARI_IBIVinylPairingReq_SDK(v43);
  v41 = 0;
  v42 = 0;
  qmemcpy(v37, "NONCE", sizeof(v37));
  v39 = 0;
  v40 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v39, v37, v38, 5uLL);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v44, (a1 + 292));
  v4 = operator new(4uLL);
  *v4 = 1;
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = operator new(4uLL);
  *v6 = 1;
  v7 = v46;
  v46 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = operator new(2uLL);
  *v8 = 1;
  v9 = v47;
  v47 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = operator new(2uLL);
  *v10 = 0;
  v11 = v48;
  v48 = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = v39;
  v13 = v40;
  v14 = operator new(2uLL);
  *v14 = v13 - v12;
  v15 = v49;
  v49 = v14;
  if (v15)
  {
    operator delete(v15);
    v12 = v39;
    v13 = v40;
  }

  AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char *>>(&v50, v12, v13);
  v16 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::ManagePairing())
  {
    if (**(v42 + 80))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "!GET_RSP_FIELD(rsp, result_t4)");
      gBBULogMaskGet();
      v34 = **(v42 + 88);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to ManagePairingGetNonce result %d SW1_SW2 0x%x\n", v20, v21, v22, **(v42 + 80));
      v23 = 18;
    }

    else
    {
      gBBULogMaskGet();
      v35 = **(v42 + 88);
      v36 = **(v42 + 112);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "ManagePairingGetNonce result %d SW1_SW2 0x%04X length %d\n", v30, v31, v32, **(v42 + 80));
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a2, *(v42 + 120), (**(v42 + 112) + *(v42 + 120)), **(v42 + 112));
      v23 = 0;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v24, v25, v26, "status");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to ManagePairingGetNonce status %d\n", v27, v28, v29, 0);
    v23 = 11;
  }

  if (v42)
  {
    (*(*v42 + 16))(v42);
  }

  v42 = 0;
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  MEMORY[0x29C286670](v43);
  return v23;
}

void sub_298274034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C286670](&a18);
  _Unwind_Resume(a1);
}

BOOL AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char *>>(Ari *a1, char *a2, char *a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = a3 - a2;
  if ((a3 - a2) >= 0xE01)
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v13, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
        v12 = v14 >= 0 ? v13 : v13[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v16 = 2080;
        v17 = v12;
        v18 = 1024;
        v19 = 385;
        v20 = 2048;
        v21 = a1;
        v22 = 2048;
        v23 = v4;
        v24 = 2048;
        v25 = 3584;
        _os_log_error_impl(&dword_29826A000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", __p, 0x3Au);
        if (v14 < 0)
        {
          operator delete(v13[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
      if (v18 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", v8, v9, 385, a1, v4, 3584);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a1, a2, a3, a3 - a2);
  }

  result = v4 < 0xE01;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298274234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylICEValve::ManagePairingAuthenticate(uint64_t a1, char **a2, char **a3)
{
  AriSdk::ARI_IBIVinylPairingReq_SDK::ARI_IBIVinylPairingReq_SDK(v42);
  v40 = 0;
  v41 = 0;
  v38 = 0;
  __dst = 0;
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v38, *a2, a2[1], a2[1] - *a2);
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v38, __dst, *a3, a3[1], a3[1] - *a3);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v43, (a1 + 292));
  v6 = operator new(4uLL);
  *v6 = 2;
  v7 = __p;
  __p = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = operator new(4uLL);
  *v8 = 1;
  v9 = v45;
  v45 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = operator new(2uLL);
  *v10 = 1;
  v11 = v46;
  v46 = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(2uLL);
  *v12 = 0;
  v13 = v47;
  v47 = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v38;
  v15 = __dst;
  v16 = operator new(2uLL);
  *v16 = v15 - v14;
  v17 = v48;
  v48 = v16;
  if (v17)
  {
    operator delete(v17);
    v14 = v38;
    v15 = __dst;
  }

  AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char *>>(&v49, v14, v15);
  v18 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::ManagePairing())
  {
    if (**(v41 + 80))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v19, v20, v21, "!GET_RSP_FIELD(rsp, result_t4)");
      gBBULogMaskGet();
      v37 = **(v41 + 88);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to Pairing authenticate result %d SW1_SW2 0x%04x\n", v22, v23, v24, **(v41 + 80));
      v25 = 18;
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "ManagePairingAuthenticate succeed\n", v32, v33, v34, v36);
      v25 = 0;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v26, v27, v28, "status");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to ManagePairingAuthenticate status %d\n", v29, v30, v31, 0);
    v25 = 11;
  }

  if (v41)
  {
    (*(*v41 + 16))(v41);
  }

  v41 = 0;
  if (v38)
  {
    __dst = v38;
    operator delete(v38);
  }

  MEMORY[0x29C286670](v42);
  return v25;
}

void sub_29827452C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (v18)
  {
    operator delete(v18);
  }

  MEMORY[0x29C286670](&a18);
  _Unwind_Resume(a1);
}

void eUICC::eUICCVinylICEValve::~eUICCVinylICEValve(eUICC::VinylCommandDriver **this)
{
  *this = &unk_2A1EB28B8;
  std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](this + 39, 0);

  VinylCommunication::~VinylCommunication(this);
}

{
  *this = &unk_2A1EB28B8;
  std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](this + 39, 0);

  VinylCommunication::~VinylCommunication(this);
}

{
  *this = &unk_2A1EB28B8;
  std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](this + 39, 0);
  VinylCommunication::~VinylCommunication(this);

  operator delete(v2);
}

void *std::shared_ptr<ICEARIContext>::shared_ptr[abi:ne200100]<ICEARIContext,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1EB2968;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_2982746E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<ICEARIContext *,std::shared_ptr<ICEARIContext>::__shared_ptr_default_delete<ICEARIContext,ICEARIContext>,std::allocator<ICEARIContext>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ICEARIContext *,std::shared_ptr<ICEARIContext>::__shared_ptr_default_delete<ICEARIContext,ICEARIContext>,std::allocator<ICEARIContext>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ICEARIContext *,std::shared_ptr<ICEARIContext>::__shared_ptr_default_delete<ICEARIContext,ICEARIContext>,std::allocator<ICEARIContext>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (v15 - v9 >= a4)
    {
      v18 = a3 - __src;
      if (v18)
      {
        result = memmove(*result, __src, v18);
      }

      v14 = &v9[v18];
    }

    else
    {
      v17 = &__src[v16];
      if (v15 != v9)
      {
        result = memmove(*result, __src, v16);
        v15 = *(v7 + 8);
      }

      if (a3 != v17)
      {
        result = memmove(v15, v17, a3 - v17);
      }

      v14 = &v15[a3 - v17];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    v12 = *(v7 + 8);
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(*(v7 + 8), __src, v13);
    }

    v14 = (v12 + v13);
  }

  *(v7 + 8) = v14;
  return result;
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (v14 - v9 >= a4)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      i = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = (&a3[v14] - v16);
        v18 = v14;
        do
        {
          v19 = *v16++;
          *v18++ = v19;
        }

        while (v16 != a3);
      }

      i = v17;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    for (i = v7[1]; v6 != a3; ++i)
    {
      v13 = *v6++;
      *i = v13;
    }
  }

  v7[1] = i;
  return result;
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v17 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = v7;
      v27 = v6;
    }

    else
    {
      v18 = &__src[v17];
      if (&__src[v17] == a4)
      {
        v19 = *(a1 + 8);
        v20 = v19;
      }

      else
      {
        v19 = (&v10[a4] - v18);
        v20 = *(a1 + 8);
        do
        {
          v35 = *v18++;
          *v20++ = v35;
        }

        while (v18 != a4);
      }

      *(a1 + 8) = v19;
      if (v17 < 1)
      {
        return v5;
      }

      v36 = &__dst[a5];
      v37 = &v19[-a5];
      v38 = v19;
      if (&v19[-a5] < v10)
      {
        do
        {
          v39 = *v37++;
          *v38++ = v39;
        }

        while (v37 != v10);
      }

      *(a1 + 8) = v38;
      if (v20 != v36)
      {
        memmove(&__dst[a5], __dst, v19 - v36);
      }

      v25 = v5;
      v26 = v7;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    v16 = operator new(v15);
  }

  else
  {
    v16 = 0;
  }

  v28 = &v13[v16];
  v29 = &v13[v16 + v6];
  v30 = v28;
  do
  {
    v31 = *v7++;
    *v30++ = v31;
    --v6;
  }

  while (v6);
  v32 = v16 + v15;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v33 = *a1;
  v34 = &v28[*a1 - v5];
  memcpy(v34, *a1, &v5[-*a1]);
  *a1 = v34;
  *(a1 + 8) = &v29[v10 - v5];
  *(a1 + 16) = v32;
  if (v33)
  {
    operator delete(v33);
  }

  return v28;
}

void std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](eUICC::VinylCommandDriver **a1, eUICC::VinylCommandDriver *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    eUICC::VinylCommandDriver::~VinylCommandDriver(v3);

    operator delete(v4);
  }
}

__n128 std::vector<unsigned char>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t __cxx_global_var_init_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_29826A000);
  }

  return result;
}

VinylDaleCommunication *VinylCommunication::create(int a1, uint64_t a2)
{
  if ((*gBBULogMaskGet() & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "VinylCommunication", "", "VinylCommunication::create", v4, v5, v6, v14);
  }

  RadioVendor = TelephonyRadiosGetRadioVendor();
  if ((RadioVendor - 2) < 2)
  {
    v9 = operator new(0x40uLL);
    VinylICECommunication::VinylICECommunication(v9, a1, a2);
  }

  else
  {
    v8 = RadioVendor;
    if (RadioVendor == 4)
    {
      v9 = operator new(0x58uLL);
      VinylDaleCommunication::VinylDaleCommunication(v9);
    }

    else if (RadioVendor == 1)
    {
      v9 = operator new(0x38uLL);
      VinylEURCommunication::VinylEURCommunication(v9, a2);
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylCommunication", "", "Unhandled radio(%d) type or no radio\n", v10, v11, v12, v8);
      return 0;
    }
  }

  return v9;
}

void *VinylCommunication::create(uint64_t *a1)
{
  if ((*gBBULogMaskGet() & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "VinylCommunication", "", "VinylCommunication::create", v2, v3, v4, v14);
  }

  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (RadioVendor == 4)
  {
    v6 = operator new(0x58uLL);
    v7 = v6;
    v8 = a1[1];
    v15 = *a1;
    v16 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    VinylDaleCommunication::VinylDaleCommunication(v6, &v15);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    v9 = RadioVendor;
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylCommunication", "", "Unhandled radio(%d) type or no radio\n", v10, v11, v12, v9);
    return 0;
  }

  return v7;
}

void sub_298274F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  operator delete(v12);
  _Unwind_Resume(a1);
}

uint64_t VinylCommunication::VinylCommunication(uint64_t result, int a2, uint64_t a3)
{
  *result = &unk_2A1EB29E0;
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

uint64_t VinylEURCommunication::VinylEURCommunication(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *a1 = &unk_2A1EB3A50;
  *(a1 + 24) = dispatch_queue_create("com.apple.VinylCommunication", 0);
  *(a1 + 32) = dispatch_queue_create("com.apple.VinylStatuscallback", 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 35;
  return a1;
}

uint64_t VinylICECommunication::VinylICECommunication(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = &unk_2A1EB39F0;
  *(a1 + 24) = 0;
  *(a1 + 32) = dispatch_queue_create("com.apple.VinylCommunication", 0);
  *(a1 + 40) = dispatch_queue_create("com.apple.VinylStatuscallback", 0);
  *(a1 + 48) = 0;
  *(a1 + 56) = 35;
  return a1;
}

void VinylDaleCommunication::VinylDaleCommunication(VinylDaleCommunication *this)
{
  *(this + 2) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1EB2BB8;
  *(this + 3) = dispatch_queue_create("com.apple.VinylStatuscallback", 0);
  *(this + 4) = dispatch_queue_create("com.apple.VinylCommunicationMisc", 0);
  *(this + 10) = 35;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 80) = 0;
}

uint64_t VinylDaleCommunication::VinylDaleCommunication(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A1EB2BB8;
  *(a1 + 24) = dispatch_queue_create("com.apple.VinylStatuscallback", 0);
  *(a1 + 32) = dispatch_queue_create("com.apple.VinylCommunicationMisc", 0);
  *(a1 + 40) = 35;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v6 = *(a1 + 56);
    *(a1 + 48) = v5;
    *(a1 + 56) = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    *(a1 + 48) = v5;
    *(a1 + 56) = 0;
  }

  return a1;
}

uint64_t eUICC::logEUICCData(int *a1)
{
  gBBULogMaskGet();
  v2 = *(a1 + 5);
  v3 = *a1;
  ctu::hex((a1 + 7), 0x10);
  v30 = *(a1 + 23);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "status 0x%x sw1_sw2 0x%x eid 0x%s op_mode 0x%hhx\n", v4, v5, v6, v3);
  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  gBBULogMaskGet();
  v7 = v35;
  ctu::hex((a1 + 6), 0x20);
  if (v36 < 0)
  {
    LOBYTE(v7) = v35[0];
  }

  ctu::hex((a1 + 14), 8);
  ctu::hex((a1 + 16), 8);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "current_fw_version %s main_fw_nonce 0x%s gold_fw_nonce 0x%s\n", v8, v9, v10, v7);
  if (v32 < 0)
  {
    operator delete(__p);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  gBBULogMaskGet();
  ctu::hex((a1 + 18), 0x10);
  v11 = v36;
  v12 = v35[0];
  ctu::hex((a1 + 147), 0x10);
  if (v11 >= 0)
  {
    v16 = v35;
  }

  else
  {
    LOBYTE(v16) = v12;
  }

  v28 = *(a1 + 111);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "main_fw_pcf_mac 0x%s gold_fw_pcf_mac 0x%s pcf_version 0x%x\n", v13, v14, v15, v16);
  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  gBBULogMaskGet();
  ctu::hex((a1 + 60), 3);
  v17 = v36;
  v18 = v35[0];
  ctu::hex((a1 + 243), 0x20);
  if (v17 >= 0)
  {
    v22 = v35;
  }

  else
  {
    LOBYTE(v22) = v18;
  }

  v29 = *(a1 + 4);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "loader_version 0x%s key_id 0x%s perso %d\n", v19, v20, v21, v22);
  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  gBBULogMaskGet();
  *(a1 + 279);
  v27 = *(a1 + 276);
  return _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "chip_id 0x%x stream_apdu_max_apdus 0x%x isAbsentOk: %s\n", v23, v24, v25, *(a1 + 275));
}

void sub_298275498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
  }

  _Unwind_Resume(exception_object);
}

unint64_t DEREncodeItemIntoVector(unint64_t a1, unint64_t a2, const void *a3, unint64_t *a4)
{
  v8 = DERLengthOfItem(a1, a2);
  v15 = v8;
  v9 = *a4;
  v10 = a4[1] - *a4;
  if (v8 <= v10)
  {
    if (v8 < v10)
    {
      a4[1] = v9 + v8;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a4, v8 - v10);
    v9 = *a4;
  }

  v11 = DEREncodeItem(a1, a2, a3, v9, &v15);
  if (v11)
  {
    v12 = *a4;
  }

  else
  {
    v13 = a4[1] - *a4;
    if (v15 > v13)
    {
      std::vector<unsigned char>::__append(a4, v15 - v13);
      return v11;
    }

    if (v15 >= v13)
    {
      return v11;
    }

    v12 = *a4 + v15;
  }

  a4[1] = v12;
  return v11;
}

uint64_t DEREncodeSequenceIntoVector(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v8 = DERLengthOfEncodedSequence(a1, a2, *(a3 + 8), *a3);
  v15 = v8;
  v9 = *a4;
  v10 = a4[1] - *a4;
  if (v8 <= v10)
  {
    if (v8 < v10)
    {
      a4[1] = v9 + v8;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a4, v8 - v10);
    v9 = *a4;
  }

  v11 = DEREncodeSequence(a1, a2, *(a3 + 8), *a3, v9, &v15);
  if (v11)
  {
    v12 = *a4;
  }

  else
  {
    v13 = a4[1] - *a4;
    if (v15 > v13)
    {
      std::vector<unsigned char>::__append(a4, v15 - v13);
      return v11;
    }

    if (v15 >= v13)
    {
      return v11;
    }

    v12 = *a4 + v15;
  }

  a4[1] = v12;
  return v11;
}

uint64_t DERDecodeBBTicket(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v17[6] = xmmword_2982BF328;
  v17[7] = unk_2982BF338;
  v17[8] = xmmword_2982BF348;
  v17[2] = xmmword_2982BF2E8;
  v17[3] = unk_2982BF2F8;
  v17[4] = xmmword_2982BF308;
  v17[5] = unk_2982BF318;
  v17[0] = xmmword_2982BF2C8;
  v17[1] = unk_2982BF2D8;
  v15[6] = xmmword_2982BF3B8;
  v15[7] = unk_2982BF3C8;
  v15[8] = xmmword_2982BF3D8;
  v15[9] = unk_2982BF3E8;
  v15[2] = xmmword_2982BF378;
  v15[3] = unk_2982BF388;
  v15[4] = xmmword_2982BF398;
  v15[5] = unk_2982BF3A8;
  v15[0] = xmmword_2982BF358;
  v15[1] = unk_2982BF368;
  v16 = 1;
  v12[0] = a1;
  v12[1] = a2;
  result = DERDecodeItem(v12, &v13);
  if (!result)
  {
    if (v13 == 0x2000000000000010)
    {
      if (TelephonyRadiosGetRadioVendor() == 1)
      {
        v5 = v15;
        v6 = 7;
      }

      else
      {
        v5 = v17;
        v6 = 6;
      }

      result = DERParseSequenceContent(&v14, v6, v5, a3, 0);
      if (!result)
      {
        v7 = *(a3 + 16);
        v8 = *v7;
        v9 = *(v7 + 4);
        v10 = v8 == 0x43DCE48862A0806 && v9 == 771;
        result = 3;
        if (v10)
        {
          if (*(a3 + 24) == 10)
          {
            result = 0;
          }

          else
          {
            result = 3;
          }
        }
      }
    }

    else
    {
      result = 2;
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t parseAndCheckIfTagEnabled(uint64_t a1, unsigned int a2, int *a3)
{
  v12 = 0;
  v5 = DERDecodeSeqInit(a1, &v12, v13);
  v6 = 0;
  if (!v5)
  {
    v7 = a2 | 0x8000000000000000;
    while (1)
    {
      v5 = DERDecodeSeqNext(v13, &v9);
      if (v5)
      {
        break;
      }

      if (v9 == v7)
      {
        if (v11 != 4)
        {
          v6 = 0;
LABEL_14:
          v5 = 3;
          goto LABEL_12;
        }

        v6 = 0;
        if (*v10)
        {
          if (*v10 != 1)
          {
            goto LABEL_14;
          }

          v6 = 1;
        }
      }
    }

    if (v5 == 1)
    {
      v5 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_12:
  *a3 = v5;
  return v6 & 1;
}

uint64_t isBBTicketCalibEnabled(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  result = parseAndCheckIfTagEnabled(a1 + 48, 0xD4u, &v4);
  if (v4)
  {
    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t isBBTicketFATPCalibEnabled(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  result = parseAndCheckIfTagEnabled(a1 + 48, 0x1C2u, &v4);
  if (v4)
  {
    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t eUICC::Pairing::CreateValidatePersoPayload(unint64_t *a1, CFDictionaryRef theDict)
{
  v101 = 127;
  v100 = 17433507;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  if (!theDict)
  {
    v48 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v48))
    {
      _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp");
    }

    gBBULogMaskGet();
    v55 = "To be signed dictionary is NULL\n";
    goto LABEL_62;
  }

  Count = CFDictionaryGetCount(theDict);
  v4 = Count;
  if (Count <= 0)
  {
    v56 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v56))
    {
      _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", v57, v58, v59, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp");
    }

    gBBULogMaskGet();
    v55 = "To be signed dictionary is empty\n";
    goto LABEL_62;
  }

  v5 = calloc(Count, 8uLL);
  if (!v5)
  {
    v60 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v60))
    {
      _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp");
    }

    gBBULogMaskGet();
    v55 = "Calloc dict keys failed\n";
LABEL_62:
    _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", v55, v52, v53, v54, v78);
    v6 = 0;
    v5 = 0;
    goto LABEL_66;
  }

  v6 = calloc(v4, 8uLL);
  if (v6)
  {
    CFDictionaryGetKeysAndValues(theDict, v5, v6);
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v87 = 0;
      v88 = 0;
      v89 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      __p = 0;
      v82 = 0;
      v83 = 0;
      v9 = v5[v7];
      v10 = v6[v7];
      v11 = CFGetTypeID(v9);
      if (v11 != CFStringGetTypeID())
      {
        break;
      }

      v12 = CFGetTypeID(v10);
      if (v12 != CFDataGetTypeID())
      {
        break;
      }

      Length = CFStringGetLength(v9);
      CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
      v8 = DEREncodeItemIntoVector(0xCuLL, Length, CStringPtr, &v87);
      if (v8)
      {
        v19 = gBBULogMaskGet();
        if (VinylController::performNonUpdateOperation(v19))
        {
          _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp");
        }

        gBBULogMaskGet();
        v17 = 1;
        _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", "UTF8 string encoding for key failed\n", v23, v24, v25, v78);
      }

      else
      {
        v15 = CFDataGetLength(v10);
        BytePtr = CFDataGetBytePtr(v10);
        v8 = DEREncodeItemIntoVector(4uLL, v15, BytePtr, &v84);
        if (v8)
        {
          v26 = gBBULogMaskGet();
          if (VinylController::performNonUpdateOperation(v26))
          {
            _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp");
          }

          gBBULogMaskGet();
          v17 = 1;
          _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", "Octect string encoding for value failed\n", v30, v31, v32, v78);
        }

        else
        {
          v80[0] = v87;
          v80[1] = v88 - v87;
          v80[2] = v84;
          v80[3] = v85 - v84;
          v8 = DEREncodeSequenceIntoVector(0x2000000000000010, v80, &eUICC::Pairing::derKeyValueSpec, &__p);
          if (!v8)
          {
            std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(&v96, v97, __p, v82, v82 - __p);
            v17 = 0;
            v8 = 0;
LABEL_13:
            v18 = 1;
            goto LABEL_14;
          }

          v33 = gBBULogMaskGet();
          if (VinylController::performNonUpdateOperation(v33))
          {
            _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp");
          }

          gBBULogMaskGet();
          v17 = 1;
          _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", "Creating sequence using Key, Value pair failed\n", v37, v38, v39, v78);
        }
      }

      v18 = 0;
LABEL_14:
      if (__p)
      {
        v82 = __p;
        operator delete(__p);
      }

      if (v84)
      {
        v85 = v84;
        operator delete(v84);
      }

      if (v87)
      {
        v88 = v87;
        operator delete(v87);
      }

      if ((v18 & 1) == 0)
      {
        if (v17)
        {
          goto LABEL_39;
        }

        goto LABEL_46;
      }

      if (v4 == ++v7)
      {
        v40 = DEREncodeItemIntoVector(0x2000000000000010uLL, v97 - v96, v96, &v93);
        v8 = v40;
        if (v40 || (v8 = DEREncodeItemIntoVector(0xA000000000000005, v94 - v93, v93, &v90)) != 0)
        {
          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "Condition <<%s>> failed %s %s/%d\n", v41, v42, v43, "DR_Success == ret");
        }

        else
        {
          v99[0] = &v100;
          v99[1] = 5;
          v99[2] = v90;
          v99[3] = v91 - v90;
          v8 = DEREncodeSequenceIntoVector(0x2000000000000010, v99, &eUICC::Pairing::derKeyValueSpec, a1);
          if (v8)
          {
            v71 = gBBULogMaskGet();
            if (VinylController::performNonUpdateOperation(v71))
            {
              _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp");
            }

            gBBULogMaskGet();
            _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", "Creating validatePerso sequence failed\n", v75, v76, v77, v78);
          }
        }

        goto LABEL_39;
      }
    }

    v17 = 0;
    goto LABEL_13;
  }

  v64 = gBBULogMaskGet();
  if (VinylController::performNonUpdateOperation(v64))
  {
    _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp");
  }

  gBBULogMaskGet();
  _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", "Calloc dict values failed\n", v68, v69, v70, v78);
  v6 = 0;
LABEL_66:
  v8 = 0;
LABEL_39:
  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "VinylPairing", "", "CreateValidatePersoPayload DR %d\n", v44, v45, v46, v8);
  if (v5)
  {
    free(v5);
  }

  if (v6)
  {
    free(v6);
  }

  if (v8)
  {
    v7 = 11;
  }

  else
  {
    v7 = 0;
  }

LABEL_46:
  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  return v7;
}

void sub_2982760A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a31)
  {
    operator delete(a31);
  }

  v34 = *(v32 - 152);
  if (v34)
  {
    *(v32 - 144) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Pairing::GetParameters(const __CFDictionary *a1, __CFDictionary **a2, void *a3)
{
  v98 = 0;
  v99 = 0;
  v97[0] = 0;
  v97[1] = 0;
  v96[0] = 0;
  v96[1] = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  __p = 0;
  v75 = 0;
  v76 = 0;
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "In GetParameters\n", v6, v7, v8, v72);
  if (a2)
  {
    eUICC::Pairing::CreateValidatePersoPayload(&v77, a1);
    gBBULogMaskGet();
    _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v77, v78 - v77, 32, v9);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v11 = (*(**a3 + 72))(*a3, &v77, &__p);
    v12 = VinylControllerMapBBUReturnToVinylResult(v11);
    if (v12)
    {
      v68 = gBBULogMaskGet();
      if (VinylController::performNonUpdateOperation(v68))
      {
        _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", v69, v70, v71, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp");
      }

      goto LABEL_12;
    }

    v98 = __p;
    v99 = v75 - __p;
    if (DERDecodeSeqContentInit(&v98, v97) || DERDecodeSeqNext(v97, &v94) || DERParseSequenceContent(&v95, 4u, &eUICC::Pairing::LPASigningRespSpec, &bytes, 0x40uLL) || DERDecodeSeqContentInit(&bytes, v96) || DERDecodeSeqNext(v96, &v92) || DERParseSequenceContent(&v93, 6u, &eUICC::Pairing::euiccSignedLPADataSpec, &v80, 0x60uLL))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "Condition <<%s>> failed %s %s/%d\n", v13, v14, v15, "(der_ret == DR_Success)");
      v12 = 27;
LABEL_12:
      *a2 = Mutable;
      goto LABEL_13;
    }

    if (length)
    {
      v17 = CFDataCreate(0, bytes, length);
      CFDictionarySetValue(Mutable, @"euiccSignedLPAData", v17);
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "euiccSignedLPAData:: \n", v18, v19, v20, v73);
      gBBULogMaskGet();
      BytePtr = CFDataGetBytePtr(v17);
      v22 = CFDataGetLength(v17);
      _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", BytePtr, v22, 32, v23);
    }

    else
    {
      v17 = 0;
    }

    if (v81)
    {
      v24 = CFDataCreate(0, v80, v81);
      CFDictionarySetValue(Mutable, @"eidValue", v24);
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "eidValue:: \n", v25, v26, v27, v73);
      gBBULogMaskGet();
      v28 = CFDataGetBytePtr(v24);
      v29 = CFDataGetLength(v24);
      _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v28, v29, 32, v30);
    }

    else
    {
      v24 = 0;
    }

    if (v83)
    {
      v31 = CFDataCreate(0, v82, v83);
      CFDictionarySetValue(Mutable, @"eUICCPublicKey", v31);
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "eUICCPublicKey:: \n", v32, v33, v34, v73);
      gBBULogMaskGet();
      v35 = CFDataGetBytePtr(v31);
      v36 = CFDataGetLength(v31);
      _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v35, v36, 32, v37);
    }

    else
    {
      v31 = 0;
    }

    if (v87)
    {
      v38 = CFDataCreate(0, v86, v87);
      CFDictionarySetValue(Mutable, @"euiccSignature", v38);
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "euiccSignature:: \n", v39, v40, v41, v73);
      gBBULogMaskGet();
      v42 = CFDataGetBytePtr(v38);
      v43 = CFDataGetLength(v38);
      _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v42, v43, 32, v44);
    }

    else
    {
      v38 = 0;
    }

    v45 = 0;
    v46 = v89;
    if (v89 && v91)
    {
      v45 = CFDataCreateMutable(0, 0);
      CFDataAppendBytes(v45, v88, v89);
      CFDataAppendBytes(v45, v90, v91);
      CFDictionarySetValue(Mutable, @"euicceumCertificate", v45);
      v46 = v89;
    }

    if (v46)
    {
      v47 = CFDataCreate(0, v88, v46);
      CFDictionarySetValue(Mutable, @"euiccCertificate", v47);
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "euiccCertificate:: \n", v48, v49, v50, v73);
      gBBULogMaskGet();
      v51 = CFDataGetBytePtr(v47);
      v52 = CFDataGetLength(v47);
      _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v51, v52, 32, v53);
    }

    else
    {
      v47 = 0;
    }

    if (v91)
    {
      v54 = CFDataCreate(0, v90, v91);
      CFDictionarySetValue(Mutable, @"eumCertificate", v54);
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "eumCertificate:: \n", v55, v56, v57, v73);
      gBBULogMaskGet();
      v58 = CFDataGetBytePtr(v54);
      v59 = CFDataGetLength(v54);
      _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v58, v59, 32, v60);
    }

    else
    {
      v54 = 0;
    }

    *a2 = Mutable;
    if (v17)
    {
      CFRelease(v17);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    if (v38)
    {
      CFRelease(v38);
    }

    if (v47)
    {
      CFRelease(v47);
    }

    if (v54)
    {
      CFRelease(v54);
    }

    if (v45)
    {
      CFRelease(v45);
    }

    v12 = 0;
  }

  else
  {
    v61 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v61))
    {
      _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp");
    }

    gBBULogMaskGet();
    _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", "Null rsp dictionary reference passed\n", v65, v66, v67, v73);
    v12 = 30;
  }

LABEL_13:
  if (__p)
  {
    v75 = __p;
    operator delete(__p);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  return v12;
}

void sub_2982768A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Pairing::GetParametersDummy(eUICC::Pairing *this, const __CFDictionary **a2)
{
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "In GetParametersDummy\n", v3, v4, v5, v62);
  if (this)
  {
    v72 = this;
    v6 = *MEMORY[0x29EDB8ED8];
    v7 = CFDataCreate(*MEMORY[0x29EDB8ED8], &eUICC::Pairing::GetParametersDummy(__CFDictionary const**)::signedLPA[5], 16);
    v70 = CFDataCreate(v6, &eUICC::Pairing::GetParametersDummy(__CFDictionary const**)::signedLPA[108], 91);
    v8 = CFDataCreate(v6, eUICC::Pairing::GetParametersDummy(__CFDictionary const**)::signedLPA, 199);
    v9 = CFDataCreate(v6, eUICC::Pairing::GetParametersDummy(__CFDictionary const**)::signature, 64);
    v10 = CFDataCreate(v6, eUICC::Pairing::GetParametersDummy(__CFDictionary const**)::euiccCert, 626);
    v11 = CFDataCreate(v6, eUICC::Pairing::GetParametersDummy(__CFDictionary const**)::eumCert, 768);
    MutableCopy = CFDataCreateMutableCopy(0, 0, v11);
    BytePtr = CFDataGetBytePtr(v11);
    Length = CFDataGetLength(v11);
    CFDataAppendBytes(MutableCopy, BytePtr, Length);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v71 = v7;
    CFDictionarySetValue(Mutable, @"eidValue", v7);
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "eidValue:: \n", v16, v17, v18, v63);
    gBBULogMaskGet();
    v19 = CFDataGetBytePtr(v7);
    v20 = CFDataGetLength(v7);
    _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v19, v20, 32, v21);
    CFDictionarySetValue(Mutable, @"eUICCPublicKey", v70);
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "eUICCPublicKey:: \n", v22, v23, v24, v64);
    gBBULogMaskGet();
    v25 = CFDataGetBytePtr(v70);
    v26 = CFDataGetLength(v70);
    _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v25, v26, 32, v27);
    CFDictionarySetValue(Mutable, @"euiccSignedLPAData", v8);
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "euiccSignedLPAData:: \n", v28, v29, v30, v65);
    gBBULogMaskGet();
    v31 = CFDataGetBytePtr(v8);
    v32 = CFDataGetLength(v8);
    _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v31, v32, 32, v33);
    CFDictionarySetValue(Mutable, @"euiccSignature", v9);
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "euiccSignature:: \n", v34, v35, v36, v66);
    gBBULogMaskGet();
    v37 = CFDataGetBytePtr(v9);
    v38 = CFDataGetLength(v9);
    _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v37, v38, 32, v39);
    CFDictionarySetValue(Mutable, @"euiccCertificate", v10);
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "euiccCertificate:: \n", v40, v41, v42, v67);
    gBBULogMaskGet();
    v43 = CFDataGetBytePtr(v10);
    v44 = CFDataGetLength(v10);
    _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v43, v44, 32, v45);
    CFDictionarySetValue(Mutable, @"eumCertificate", v11);
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "eumCertificate:: \n", v46, v47, v48, v68);
    gBBULogMaskGet();
    v49 = CFDataGetBytePtr(v11);
    v50 = CFDataGetLength(v11);
    _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v49, v50, 32, v51);
    CFDictionarySetValue(Mutable, @"euicceumCertificate", MutableCopy);
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "euicceumCertificate:: \n", v52, v53, v54, v69);
    gBBULogMaskGet();
    v55 = CFDataGetBytePtr(MutableCopy);
    v56 = CFDataGetLength(MutableCopy);
    _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v55, v56, 32, v57);
    *v72 = Mutable;
    if (v71)
    {
      CFRelease(v71);
    }

    if (v70)
    {
      CFRelease(v70);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    return 0;
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", "Null rsp dictionary reference passed\n", v59, v60, v61, v63);
    return 2;
  }
}

uint64_t *ReverseProxyGetSettings@<X0>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3002000000;
  v39[3] = __Block_byref_object_copy_;
  v39[4] = __Block_byref_object_dispose_;
  v4 = operator new(0x90uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 850045863;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 124) = 0u;
  *v4 = &unk_2A1EB2A38;
  v40[0] = v4;
  v38 = v4;
  std::__assoc_sub_state::__attach_future[abi:ne200100](v4);
  *a2 = 0;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *a1, *(a1 + 8));
  }

  else
  {
    v36 = *a1;
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  }

  else
  {
    v41 = v36;
  }

  v40[1] = 0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    v42 = v41;
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v43, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v43 = v42;
  }

  v5 = *MEMORY[0x29EDB8ED8];
  v44 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = CFURLCreateWithString(v5, v44, 0);
    CFRelease(v44);
  }

  else
  {
    v6 = 0;
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v37 = v6;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  v7 = RPRegisterForAvailability();
  if (!v7)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, "reg");
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Failed to register for proxy\n", v19, v20, v21, v34);
    if (!v6)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v8 = *(a1 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (!v8 || !v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", v22, v23, v24, "!url.empty() && urlRef");
    gBBULogMaskGet();
    v28 = "NULL requestURL?\n";
LABEL_34:
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", v28, v25, v26, v27, v35);
    goto LABEL_35;
  }

  RPRegistrationResume();
  v43.__r_.__value_.__r.__words[0] = 5;
  v9 = std::__assoc_sub_state::wait_for[abi:ne200100]<long long,std::ratio<1l,1l>>(v4, &v43);
  RPRegistrationInvalidate();
  if (v9)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", v10, v11, v12, "fs == std::future_status::ready");
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "PRP timed out %d\n", v13, v14, v15, v9);
    goto LABEL_35;
  }

  if ((std::future<BOOL>::get(&v38) & 1) == 0)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", v31, v32, v33, "future.get()");
    gBBULogMaskGet();
    v28 = "Failed to get PRP\n";
    goto LABEL_34;
  }

  v43.__r_.__value_.__r.__words[0] = RPCopyProxyDictionary();
  ctu::cf::CFSharedRef<__CFDictionary const>::operator=(a2, &v43.__r_.__value_.__l.__data_);
LABEL_35:
  CFRelease(v7);
  v6 = v37;
  if (v37)
  {
LABEL_36:
    CFRelease(v6);
  }

LABEL_37:
  v29 = v38;
  if (v38 && !atomic_fetch_add(v38 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v29 + 16))(v29);
  }

  _Block_object_dispose(v39, 8);
  return std::promise<BOOL>::~promise(v40);
}

void sub_2982772B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, const void *a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(&a25);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(v33);
  v36 = a26;
  if (a26)
  {
    if (!atomic_fetch_add((a26 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v36 + 16))(v36);
    }
  }

  _Block_object_dispose(&a27, 8);
  std::promise<BOOL>::~promise((v34 + 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___Z23ReverseProxyGetSettingsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke(uint64_t a1, int a2)
{
  if (a2 != 2)
  {
    v2 = a2;
    if (a2 == 1)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Proxy Available!\n", v4, v5, v6, v11);
      v7 = *(*(a1 + 32) + 8);
      v12 = 1;
      std::promise<BOOL>::set_value((v7 + 40), &v12);
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Proxy Aborted? %d\n", v8, v9, v10, v2);
    }
  }
}

void std::promise<BOOL>::set_value(uint64_t *a1, _BYTE *a2)
{
  v3 = *a1;
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<BOOL>::set_value<BOOL>(v3, a2);
}

uint64_t std::future<BOOL>::get(atomic_ullong **a1)
{
  v1 = *a1;
  *a1 = 0;
  std::__assoc_state<BOOL>::move(v1);
  v3 = v2;
  if (v1 && !atomic_fetch_add(v1 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v1 + 16))(v1);
  }

  return v3;
}

void sub_298277504(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<BOOL>::get(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::operator=(const void **a1, const void **a2)
{
  v3 = *a1;
  *a1 = *a2;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__assoc_state<BOOL>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete(v3);
}

uint64_t *std::promise<BOOL>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x29C2869C0](v7, 4, v4);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        MEMORY[0x29C2869D0](v7);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

uint64_t std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  __cxa_init_primary_exception();
  v3 = std::logic_error::logic_error(exception, a1);
  exception->__vftable = (MEMORY[0x29EDC9548] + 16);
  exception[1] = a1[1];

  return MEMORY[0x2A1C6FB70](v3);
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x29C2869C0](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x29EDC9430], MEMORY[0x29EDC9390]);
}

void std::__assoc_sub_state::__attach_future[abi:ne200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

void std::__assoc_state<BOOL>::set_value<BOOL>(uint64_t a1, _BYTE *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 140) = *a2;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

uint64_t std::__assoc_sub_state::wait_for[abi:ne200100]<long long,std::ratio<1l,1l>>(uint64_t a1, uint64_t *a2)
{
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v5 = *a2;
  m = (a1 + 24);
  v15.__m_ = (a1 + 24);
  v15.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  v7 = *(a1 + 136);
  if ((v7 & 8) != 0)
  {
    v13 = 2;
    goto LABEL_26;
  }

  if ((v7 & 4) != 0)
  {
    goto LABEL_24;
  }

  v8 = v4.__d_.__rep_ + 1000000000 * v5;
  while (std::chrono::steady_clock::now().__d_.__rep_ < v8)
  {
    if (v8 > std::chrono::steady_clock::now().__d_.__rep_)
    {
      v9.__d_.__rep_ = v8 - std::chrono::steady_clock::now().__d_.__rep_;
      if (v9.__d_.__rep_ >= 1)
      {
        std::chrono::steady_clock::now();
        v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v10.__d_.__rep_)
        {
          if (v10.__d_.__rep_ < 1)
          {
            if (v10.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              goto LABEL_14;
            }

            v11 = 0x8000000000000000;
          }

          else
          {
            if (v10.__d_.__rep_ > 0x20C49BA5E353F7)
            {
              v11 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_15;
            }

LABEL_14:
            v11 = 1000 * v10.__d_.__rep_;
LABEL_15:
            if (v11 > (v9.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              v12.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_18;
            }
          }
        }

        else
        {
          v11 = 0;
        }

        v12.__d_.__rep_ = v11 + v9.__d_.__rep_;
LABEL_18:
        std::condition_variable::__do_timed_wait((a1 + 88), &v15, v12);
        std::chrono::steady_clock::now();
      }

      std::chrono::steady_clock::now();
    }

    v7 = *(a1 + 136);
    if ((v7 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

  v7 = *(a1 + 136);
LABEL_24:
  v13 = ((v7 >> 2) & 1) == 0;
  if (v15.__owns_)
  {
    m = v15.__m_;
LABEL_26:
    std::mutex::unlock(m);
  }

  return v13;
}

void std::__assoc_state<BOOL>::move(uint64_t a1)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v2 = *(a1 + 16);
  v6.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v6);
  if (v2)
  {
    std::exception_ptr::exception_ptr(&v5, (a1 + 16));
    v4.__ptr_ = &v5;
    std::rethrow_exception(v4);
    __break(1u);
  }

  else
  {
    v3 = *(a1 + 140);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_298277BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *BBUCapabilities::create_default_global@<X0>(void *a1@<X8>)
{
  v3 = operator new(4uLL);
  *v3 = TelephonyRadiosGetProduct();

  return std::shared_ptr<BBUCapabilities>::shared_ptr[abi:ne200100]<BBUCapabilities,0>(a1, v3);
}

capabilities::euicc *BBUCapabilities::supportsVinylRestore(BBUCapabilities *this)
{
  if (capabilities::euicc::supportsVinylRestore(this))
  {
    return 1;
  }

  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  if (!xmmword_2A13A8CA0)
  {
    BBUCapabilities::create_default_global(&v7);
    v5 = v7;
    v7 = 0uLL;
    v6 = *(&xmmword_2A13A8CA0 + 1);
    xmmword_2A13A8CA0 = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (*(&v7 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
      }
    }
  }

  v2 = *(&xmmword_2A13A8CA0 + 1);
  if (*(&xmmword_2A13A8CA0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v3 = pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v1 = BBUCapabilities::supportsVinylUpdate(v3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v1;
}

capabilities::euicc *BBUCapabilities::supportsVinylUpdate(BBUCapabilities *this)
{
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  if (IsInternalBuild && (IsInternalBuild = BBUpdaterCommon::isNVRAMKeyPresent(@"VinylForceGenericUpdate", v2), IsInternalBuild))
  {
    gBBULogMaskGet();
    result = _BBULog(0, 0xFFFFFFFFLL, "BBUCapabilities", "", "kVinylForceGenericUpdate NV set to TRUE\n", v3, v4, v5, vars0);
  }

  else
  {
    result = capabilities::euicc::supportsGenericUpdater(IsInternalBuild);
    if (!result)
    {
      return result;
    }
  }

  return (capabilities::euicc::supportsEOS(result) ^ 1);
}

uint64_t BBUCapabilities::getEUICCCertIDSize(BBUCapabilities *this, unsigned int a2)
{
  if (a2 <= 4)
  {
    return 4;
  }

  else
  {
    return 20;
  }
}

void *std::shared_ptr<BBUCapabilities>::shared_ptr[abi:ne200100]<BBUCapabilities,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1EB2A80;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_298277E8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<BBUCapabilities *,std::shared_ptr<BBUCapabilities>::__shared_ptr_default_delete<BBUCapabilities,BBUCapabilities>,std::allocator<BBUCapabilities>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<BBUCapabilities *,std::shared_ptr<BBUCapabilities>::__shared_ptr_default_delete<BBUCapabilities,BBUCapabilities>,std::allocator<BBUCapabilities>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<BBUCapabilities *,std::shared_ptr<BBUCapabilities>::__shared_ptr_default_delete<BBUCapabilities,BBUCapabilities>,std::allocator<BBUCapabilities>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t __cxx_global_var_init_1()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t eUICC::Perso::Perform(uint64_t a1, uint64_t a2, void (****a3)(std::string *__return_ptr))
{
  pthread_mutex_lock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  v6 = off_2A13A8D48;
  if (!off_2A13A8D48)
  {
    v7 = operator new(0x38uLL);
    v7[4] = 0;
    v7[5] = 0;
    v7[6] = 0;
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 0;
    std::shared_ptr<eUICC::Perso::PersoImplementation>::shared_ptr[abi:ne200100]<eUICC::Perso::PersoImplementation,0>(&v13, v7);
    v8 = v13;
    v13 = 0uLL;
    v9 = *(&off_2A13A8D48 + 1);
    off_2A13A8D48 = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (*(&v13 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
      }
    }

    v6 = off_2A13A8D48;
  }

  v10 = *(&off_2A13A8D48 + 1);
  if (*(&off_2A13A8D48 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A8D48 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  v11 = eUICC::Perso::PersoImplementation::Perform(v6, a1, a2, a3);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v11;
}

uint64_t eUICC::Perso::PersoImplementation::Perform(uint64_t a1, uint64_t a2, uint64_t a3, void (****a4)(std::string *__return_ptr))
{
  __p = 0;
  v40 = 0;
  v41 = 0;
  if (!*a4)
  {
    gBBULogMaskGet();
    v19 = "vinylValve";
LABEL_15:
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, v19);
    v20 = 10;
    goto LABEL_19;
  }

  *(a1 + 24) = a2;
  v8 = dispatch_queue_create("PersoImpl", 0);
  v9 = *a1;
  *a1 = v8;
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(a2 + 47);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 32);
  }

  if (!v10)
  {
    gBBULogMaskGet();
    v19 = "!performOptions.alderHostname.empty()";
    goto LABEL_15;
  }

  ReverseProxyGetSettings(a2 + 24, &v38);
  v11 = (a1 + 8);
  if ((a1 + 8) != &v38)
  {
    v42 = *v11;
    *v11 = v38;
    v38 = 0;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v42);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v38);
  if (!*v11)
  {
    gBBULogMaskGet();
    v19 = "this->reverseProxySettings";
    goto LABEL_15;
  }

  if (eUICC::Perso::PersoImplementation::ForcePerso(a1, &__p, a4))
  {
    gBBULogMaskGet();
    v15 = "kBBUReturnSuccess == ret";
LABEL_18:
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v12, v13, v14, v15);
    v20 = 18;
    goto LABEL_19;
  }

  if (eUICC::Perso::PersoImplementation::InitPersoDevice(a1, &__p, a4) || __p == v40)
  {
    goto LABEL_17;
  }

  if (eUICC::Perso::PersoImplementation::InitPersoServer(a1, &__p, a3, a4) || __p == v40)
  {
    goto LABEL_26;
  }

  if (eUICC::Perso::PersoImplementation::AuthenticatePersoDevice(a1, &__p, a4) || __p == v40)
  {
LABEL_17:
    gBBULogMaskGet();
    v15 = "kBBUReturnSuccess == ret && !dataBuffer.empty()";
    goto LABEL_18;
  }

  if (eUICC::Perso::PersoImplementation::GetWrapKeyServer(a1, &__p) || __p == v40)
  {
    goto LABEL_26;
  }

  v20 = eUICC::Perso::PersoImplementation::FinalizePersoDevice(a1, &__p, a4);
  if (v20)
  {
LABEL_35:
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v30, v31, v32, "kBBUReturnSuccess == ret");
    goto LABEL_19;
  }

  v33 = *(a1 + 16);
  *(a1 + 16) = 0;
  v42 = v33;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v42);
  NonceServer = eUICC::Perso::PersoImplementation::GetNonceServer(a1, &__p, a4);
  if (NonceServer || __p == v40 || eUICC::Perso::PersoImplementation::CreateValidationBlob(NonceServer, &__p) || __p == v40 || eUICC::Perso::PersoImplementation::ValidatePersoDevice(a1, &__p, a4) || __p == v40)
  {
LABEL_26:
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v27, v28, v29, "kBBUReturnSuccess == ret && !dataBuffer.empty()");
    v20 = 53;
    goto LABEL_19;
  }

  v20 = eUICC::Perso::PersoImplementation::SendReceiptServer(a1, &__p);
  if (v20)
  {
    goto LABEL_35;
  }

  v36 = *(a1 + 32);
  for (i = *(a1 + 40); i != v36; std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(i))
  {
    i -= 48;
  }

  v20 = 0;
  *(a1 + 40) = v36;
LABEL_19:
  v21 = *(a1 + 16);
  *(a1 + 16) = 0;
  v42 = v21;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v42);
  *(a1 + 24) = 0;
  v22 = *a1;
  *a1 = 0;
  if (v22)
  {
    dispatch_release(v22);
  }

  gBBULogMaskGet();
  v37 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - *(a1 + 32)) >> 4);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "ret %d records %zu\n", v23, v24, v25, v20);
  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  return v20;
}

void sub_2982784FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void eUICC::Perso::DumpTransactions(std::string *a1@<X8>)
{
  pthread_mutex_lock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  v3 = off_2A13A8D48;
  if (!off_2A13A8D48)
  {
    v4 = operator new(0x38uLL);
    v4[4] = 0;
    v4[5] = 0;
    v4[6] = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = 0;
    std::shared_ptr<eUICC::Perso::PersoImplementation>::shared_ptr[abi:ne200100]<eUICC::Perso::PersoImplementation,0>(&v8, v4);
    v5 = v8;
    v8 = 0uLL;
    v6 = *(&off_2A13A8D48 + 1);
    off_2A13A8D48 = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (*(&v8 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
      }
    }

    v3 = off_2A13A8D48;
  }

  v7 = *(&off_2A13A8D48 + 1);
  if (*(&off_2A13A8D48 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A8D48 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::vector<std::pair<std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(a1, *(v3 + 32), *(v3 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 40) - *(v3 + 32)) >> 4));
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

std::string *eUICC::Perso::PersoImplementation::DumpTransactions@<X0>(__int128 **this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::vector<std::pair<std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(a2, this[4], this[5], 0xAAAAAAAAAAAAAAABLL * (this[5] - this[4]));
}

void *eUICC::Perso::PersoImplementation::create_default_global@<X0>(void *a1@<X8>)
{
  v3 = operator new(0x38uLL);
  v3[5] = 0;
  v3[6] = 0;
  v3[4] = 0;
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;

  return std::shared_ptr<eUICC::Perso::PersoImplementation>::shared_ptr[abi:ne200100]<eUICC::Perso::PersoImplementation,0>(a1, v3);
}

uint64_t eUICC::Perso::PersoImplementation::ForcePerso(BBUpdaterCommon *a1, uint64_t a2, void *a3)
{
  *&__dst[71] = *MEMORY[0x29EDCA608];
  if (*(*(a1 + 3) + 48) != 1)
  {
    v5 = 0;
    goto LABEL_18;
  }

  v37 = 0;
  ECID = BBUpdaterCommon::getECID(a1);
  v35 = 0;
  v36 = 0;
  __p = 0;
  v33 = 0;
  v34 = 0;
  (*(**a3 + 8))(__dst);
  if (__dst[0] != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    gBBULogMaskGet();
    goto LABEL_7;
  }

  if (!LOBYTE(__dst[1]))
  {
    if (DEREncodeItemIntoVector(4uLL, 8uLL, &ECID, &v35))
    {
      gBBULogMaskGet();
LABEL_13:
      _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, "DR_Success == derRet");
      gBBULogMaskGet();
      _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to encode ECID\n", v12, v13, v14, v29);
      v5 = 10;
      goto LABEL_14;
    }

    if (DEREncodeItemIntoVector(0x2000000000000010uLL, v36 - v35, v35, &__p))
    {
      gBBULogMaskGet();
      goto LABEL_13;
    }

    v5 = (*(**a3 + 56))(*a3, &__p, a2);
    if (v5)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "kBBUReturnSuccess == ret");
      gBBULogMaskGet();
      _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete InitPerso command\n", v20, v21, v22, v30);
      goto LABEL_14;
    }

    (*(**a3 + 16))(*a3, 0, 1);
    *__ns = 10000000000;
    std::this_thread::sleep_for (__ns);
    (*(**a3 + 8))(__ns);
    memcpy(__dst, __ns, 0x11BuLL);
    if (__dst[0] == TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
    {
      if (LOBYTE(__dst[1]))
      {
        goto LABEL_4;
      }

      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v23, v24, v25, "cardData.contents.perso");
      gBBULogMaskGet();
      _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Still persod after force?\n", v26, v27, v28, v31);
LABEL_8:
      v5 = 18;
      goto LABEL_14;
    }

    gBBULogMaskGet();
LABEL_7:
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, "cardData.Valid()");
    goto LABEL_8;
  }

LABEL_4:
  v5 = 0;
LABEL_14:
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

LABEL_18:
  v15 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_298278A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::InitPersoDevice(BBUpdaterCommon *a1, uint64_t a2, void *a3)
{
  v41 = 0;
  ECID = BBUpdaterCommon::getECID(a1);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (DEREncodeItemIntoVector(4uLL, 8uLL, &ECID, &v38))
  {
    gBBULogMaskGet();
LABEL_5:
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, "DR_Success == derRet");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to encode ECID\n", v9, v10, v11, v23);
    v12 = 10;
    goto LABEL_6;
  }

  if (DEREncodeItemIntoVector(0x2000000000000010uLL, v39 - v38, v38, &v35))
  {
    gBBULogMaskGet();
    goto LABEL_5;
  }

  v32 = 0;
  v33 = operator new(0x19uLL);
  v34 = xmmword_2982BFCE0;
  strcpy(v33, "InitPersoDeviceBlob.bin");
  __p = 0;
  v31 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v35, v36, v36 - v35);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v33, &__p);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  v12 = (*(**a3 + 56))(*a3, &v35, a2);
  if (v12)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "kBBUReturnSuccess == ret");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete InitPerso command\n", v20, v21, v22, v24);
  }

  else
  {
    v27 = 0;
    v28 = operator new(0x20uLL);
    v29 = xmmword_2982BFCF0;
    strcpy(v28, "InitPersoDeviceResponse.bin");
    v25 = 0;
    v26 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v25, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    eUICC::Perso::PersoImplementation::logTransactionData(a1, &v28, &v25);
    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28);
    }

    v12 = 0;
  }

LABEL_6:
  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "InitPersoDevice %d\n", v13, v14, v15, v12);
  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  return v12;
}

void sub_298278D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  v32 = *(v30 - 96);
  if (v32)
  {
    *(v30 - 88) = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 72);
  if (v33)
  {
    *(v30 - 64) = v33;
    operator delete(v33);
  }

  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef((v30 - 48));
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::InitPersoServer(void *a1, uint64_t a2, uint64_t a3, void (****a4)(std::string *__return_ptr))
{
  v80 = *MEMORY[0x29EDCA608];
  cf = 0;
  theDict = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v65, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  memset(v77, 0, 24);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v77, v65, v66, v66 - v65);
  v75 = 0;
  memset(__p, 0, 24);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, *v77, *&v77[8], *&v77[8] - *v77);
  values[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = values[0];
    v75 = values[0];
  }

  else
  {
    v8 = 0;
  }

  if (__p[0].__r_.__value_.__r.__words[0])
  {
    __p[0].__r_.__value_.__l.__size_ = __p[0].__r_.__value_.__r.__words[0];
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v68 = v8;
  if (*v77)
  {
    *&v77[8] = *v77;
    operator delete(*v77);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, *a3, *(a3 + 8));
  }

  else
  {
    v63 = *a3;
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v77, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    *v77 = v63;
  }

  v74 = 0;
  if ((v77[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *v77, *&v77[8]);
  }

  else
  {
    __p[0] = *v77;
  }

  v75 = 0;
  v9 = *MEMORY[0x29EDB8ED8];
  if (ctu::cf::convert_copy())
  {
    v10 = v74;
    v74 = v75;
    values[0] = v10;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(values);
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v64 = v74;
  v74 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v74);
  if ((v77[23] & 0x80000000) != 0)
  {
    operator delete(*v77);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  (***a4)(__p);
  if (LODWORD(__p[0].__r_.__value_.__l.__data_) != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    gBBULogMaskGet();
    v16 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "hwType.Valid()");
LABEL_33:
    v12 = 18;
    goto LABEL_34;
  }

  *v77 = xmmword_29EE8E760;
  *&v77[16] = *&off_29EE8E770;
  values[0] = @"StartSession";
  values[1] = v8;
  v11 = @"2";
  if (!v79)
  {
    v11 = @"0";
  }

  values[2] = v64;
  values[3] = v11;
  v12 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(v77, values, 4);
  if (v12)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v13, v14, v15, "kBBUReturnSuccess == ret");
    v16 = 0;
    goto LABEL_34;
  }

  v60 = 0;
  v61 = operator new(0x20uLL);
  v62 = xmmword_2982BFD00;
  strcpy(v61, "InitPersoServerRequest.plist");
  v58 = 0;
  v59 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v58, v69, v70, v70 - v69);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v61, &v58);
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }

  eUICC::Perso::PersoImplementation::PostDataSync(a1, &v69, v77);
  v16 = *&v77[8];
  v25 = *v77;
  if (!*v77)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v29, v30, v31, "response");
LABEL_66:
    v12 = 53;
    goto LABEL_34;
  }

  v56 = operator new(0x20uLL);
  v57 = xmmword_2982BFD10;
  strcpy(v56, "InitPersoServerResponse.plist");
  (*(*v25 + 40))(&v55, v25);
  eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v56, &v55);
  if (v55)
  {
    CFRelease(v55);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  (*(*v25 + 40))(&v54, v25);
  v12 = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v54, &theDict);
  if (v54)
  {
    CFRelease(v54);
  }

  if (v12)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v26, v27, v28, "kBBUReturnSuccess == ret");
    goto LABEL_34;
  }

  if (!theDict)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v46, v47, v48, "respDict");
    goto LABEL_33;
  }

  values[0] = CFDictionaryGetValue(theDict, @"SessionId");
  ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(v77, values);
  v32 = a1[2];
  a1[2] = *v77;
  *v77 = v32;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(v77);
  v33 = a1[2];
  if (!v33 || !CFStringGetLength(v33))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v37, v38, v39, "this->serverSessionID && CFStringGetLength( this->serverSessionID.get()) != 0");
    gBBULogMaskGet();
    v40 = CFCopyDescription(theDict);
    CStringPtr = CFStringGetCStringPtr(v40, 0x8000100u);
    v45 = "Missing or empty server sssion?! %s\n";
LABEL_65:
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", v45, v42, v43, v44, CStringPtr);
    goto LABEL_66;
  }

  *v77 = CFDictionaryGetValue(theDict, @"DATA");
  ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(&cf, v77);
  if (!cf)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v49, v50, v51, "respDataPayload");
    gBBULogMaskGet();
    v52 = CFCopyDescription(theDict);
    CStringPtr = CFStringGetCStringPtr(v52, 0x8000100u);
    v45 = "Couldn't get response payload %s\n";
    goto LABEL_65;
  }

  memset(v77, 0, 24);
  ctu::cf::assign();
  v34 = *v77;
  v35 = *&v77[16];
  v36 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v36;
    v53 = v34;
    operator delete(v36);
    v34 = v53;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  v12 = 0;
  *a2 = v34;
  *(a2 + 16) = v35;
LABEL_34:
  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "InitPersoServer %d\n", v20, v21, v22, v12);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v64);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&theDict);
  v23 = *MEMORY[0x29EDCA608];
  return v12;
}

void sub_2982795B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, const void *a31, void *a32, uint64_t a33, uint64_t a34, const void *a35, void *a36, uint64_t a37, uint64_t a38, const void *a39, const void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48)
{
  if (__p)
  {
    a48 = __p;
    operator delete(__p);
  }

  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a31);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a35);
  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a39);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a40);
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::AuthenticatePersoDevice(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = operator new(0x28uLL);
  v27 = xmmword_2982BFD20;
  strcpy(v26, "AuthenticatePersoDeviceRequest.bin");
  v24 = 0;
  v25 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v26, &__p);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }

  v6 = (*(**a3 + 64))(*a3, a2, a2);
  if (v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "kBBUReturnSuccess == ret");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete AuthPerso command\n", v10, v11, v12, v17);
  }

  else
  {
    v20 = 0;
    v21 = operator new(0x28uLL);
    v22 = xmmword_2982BFD30;
    strcpy(v21, "AuthenticatePersoDeviceResponse.bin");
    v18 = 0;
    v19 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v18, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    eUICC::Perso::PersoImplementation::logTransactionData(a1, &v21, &v18);
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }
  }

  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "AuthenticatePersoDevice %d\n", v13, v14, v15, v6);
  return v6;
}

void sub_298279968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23)
{
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

uint64_t eUICC::Perso::PersoImplementation::GetWrapKeyServer(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x29EDCA608];
  v50 = 0;
  v51 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v44 = 0;
  v45 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v57 = 0;
  keys = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&keys, __p, v44, v44 - __p);
  v52 = 0;
  v53 = 0uLL;
  v54 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v53, keys, *(&keys + 1), *(&keys + 1) - keys);
  values[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v4 = values[0];
    v52 = values[0];
  }

  else
  {
    v4 = 0;
  }

  if (v53)
  {
    *(&v53 + 1) = v53;
    operator delete(v53);
  }

  v46 = v4;
  if (keys)
  {
    *(&keys + 1) = keys;
    operator delete(keys);
  }

  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  keys = xmmword_29EE8E790;
  v57 = @"SessionId";
  values[0] = @"GetWrapKey";
  values[1] = v4;
  values[2] = *(a1 + 16);
  v5 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(&keys, values, 3);
  if (v5)
  {
    gBBULogMaskGet();
    v6 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "kBBUReturnSuccess == ret");
    goto LABEL_31;
  }

  v40 = 0;
  v41 = operator new(0x20uLL);
  v42 = xmmword_2982BFD10;
  strcpy(v41, "GetWrapKeyServerRequest.plist");
  v38 = 0;
  v39 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v38, v47, v48, v48 - v47);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v41, &v38);
  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  eUICC::Perso::PersoImplementation::PostDataSync(a1, &v47, &v53);
  v6 = *(&v53 + 1);
  v10 = v53;
  if (!v53)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "response");
LABEL_26:
    v5 = 53;
    goto LABEL_31;
  }

  v36 = operator new(0x20uLL);
  v37 = xmmword_2982BFD40;
  strcpy(v36, "GetWrapKeyServerResponse.plist");
  (*(*v10 + 40))(&cf, v10);
  eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v36, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }

  (*(*v10 + 40))(&v34, v10);
  v5 = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v34, &v51);
  if (v34)
  {
    CFRelease(v34);
  }

  if (v5)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "kBBUReturnSuccess == ret");
    goto LABEL_31;
  }

  *&v53 = CFDictionaryGetValue(v51, @"DATA");
  ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(&v50, &v53);
  if (!v50)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v25, v26, v27, "respDataPayload");
    gBBULogMaskGet();
    v28 = CFCopyDescription(v51);
    CStringPtr = CFStringGetCStringPtr(v28, 0x8000100u);
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Couldn't get response payload %s\n", v30, v31, v32, CStringPtr);
    goto LABEL_26;
  }

  v53 = 0uLL;
  v54 = 0;
  ctu::cf::assign();
  v17 = v53;
  v18 = v54;
  v19 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v19;
    v33 = v17;
    operator delete(v19);
    v17 = v33;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  v5 = 0;
  *a2 = v17;
  *(a2 + 16) = v18;
LABEL_31:
  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "GetWrapKeyServer %d\n", v20, v21, v22, v5);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v51);
  v23 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_298279ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, uint64_t a38, const void *a39, void *__p, uint64_t a41)
{
  v44 = *(v42 - 144);
  if (v44)
  {
    *(v42 - 136) = v44;
    operator delete(v44);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a39);
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v42 - 168));
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((v42 - 160));
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::FinalizePersoDevice(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = 0;
  v21 = operator new(0x20uLL);
  v22 = xmmword_2982BFD40;
  strcpy(v21, "FinalizePersoDeviceRequest.bin");
  __p = 0;
  v19 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v21, &__p);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }

  v6 = (*(**a3 + 80))(*a3, a2);
  if (v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "kBBUReturnSuccess == ret");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete FinalizePerso command\n", v10, v11, v12, v17);
  }

  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "FinalizePersoDevice %d\n", v13, v14, v15, v6);
  return v6;
}

void sub_29827A188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
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

uint64_t eUICC::Perso::PersoImplementation::GetNonceServer(void *a1, uint64_t a2, void (****a3)(void *__return_ptr))
{
  v65 = *MEMORY[0x29EDCA608];
  cf = 0;
  theDict = 0;
  __p = 0;
  v56 = 0;
  v57 = 0;
  (***a3)(v61);
  if (LODWORD(v61[0]) != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    gBBULogMaskGet();
    v10 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "hwType.Valid()");
    v6 = 18;
    goto LABEL_8;
  }

  *keys = xmmword_29EE8E780;
  if (v62)
  {
    v5 = @"2";
  }

  else
  {
    v5 = @"0";
  }

  values[0] = @"GetNonce";
  values[1] = v5;
  v6 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(keys, values, 2);
  if (v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "kBBUReturnSuccess == ret");
    v10 = 0;
    goto LABEL_8;
  }

  v52 = 0;
  v53 = operator new(0x20uLL);
  v54 = xmmword_2982BFCF0;
  strcpy(v53, "GetNonceServerRequest.plist");
  v50 = 0;
  v51 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v50, __p, v56, v56 - __p);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v53, &v50);
  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  eUICC::Perso::PersoImplementation::PostDataSync(a1, &__p, keys);
  v19 = keys[0];
  v10 = keys[1];
  if (!keys[0])
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v23, v24, v25, "response");
LABEL_37:
    v6 = 53;
    goto LABEL_8;
  }

  v48 = operator new(0x20uLL);
  v49 = xmmword_2982BFD00;
  strcpy(v48, "GetNonceServerResponse.plist");
  (*(*v19 + 40))(&v47, v19);
  eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v48, &v47);
  if (v47)
  {
    CFRelease(v47);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  (*(*v19 + 40))(&v46, v19);
  v6 = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v46, &theDict);
  if (v46)
  {
    CFRelease(v46);
  }

  if (v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v20, v21, v22, "kBBUReturnSuccess == ret");
    goto LABEL_8;
  }

  values[0] = CFDictionaryGetValue(theDict, @"SessionId");
  v26 = ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(keys, values);
  v27 = a1[2];
  a1[2] = keys[0];
  keys[0] = v27;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(v26);
  v28 = a1[2];
  if (!v28 || !CFStringGetLength(v28))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v32, v33, v34, "this->serverSessionID && CFStringGetLength( this->serverSessionID.get()) != 0");
    gBBULogMaskGet();
    v35 = CFCopyDescription(theDict);
    CStringPtr = CFStringGetCStringPtr(v35, 0x8000100u);
    v40 = "Missing or empty server sssion?! %s\n";
LABEL_36:
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", v40, v37, v38, v39, CStringPtr);
    goto LABEL_37;
  }

  keys[0] = CFDictionaryGetValue(theDict, @"DATA");
  ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(&cf, keys);
  if (!cf)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v41, v42, v43, "respDataPayload");
    gBBULogMaskGet();
    v44 = CFCopyDescription(theDict);
    CStringPtr = CFStringGetCStringPtr(v44, 0x8000100u);
    v40 = "Couldn't get response payload %s\n";
    goto LABEL_36;
  }

  keys[0] = 0;
  keys[1] = 0;
  v64 = 0;
  ctu::cf::assign();
  v29 = *keys;
  v30 = v64;
  v31 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v31;
    v45 = v29;
    operator delete(v31);
    v29 = v45;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  v6 = 0;
  *a2 = v29;
  *(a2 + 16) = v30;
LABEL_8:
  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "GetNonceServer %d\n", v14, v15, v16, v6);
  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&theDict);
  v17 = *MEMORY[0x29EDCA608];
  return v6;
}

void sub_29827A758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, uint64_t a37, const void *a38, const void *a39)
{
  v42 = *(v40 - 80);
  if (v42)
  {
    *(v40 - 72) = v42;
    operator delete(v42);
  }

  if (__p)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a38);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a39);
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::CreateValidationBlob(BBUpdaterCommon *a1, unint64_t *a2)
{
  v46 = *MEMORY[0x29EDCA608];
  ECID = BBUpdaterCommon::getECID(a1);
  v42 = 4;
  v41 = 17433507;
  v44[0] = 0;
  v44[2] = 512;
  *&v45[8] = 0u;
  v44[1] = 12;
  *v45 = xmmword_2982BFD50;
  *&v45[16] = 512;
  v40[0] = v44;
  v40[1] = 2;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  __p = 0;
  v16 = 0;
  v17 = 0;
  v3 = a2[1] - *a2;
  v13[0] = *a2;
  v13[1] = v3;
  v4 = DERDecodeItem(v13, v14);
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = DEREncodeItemIntoVector(0xCuLL, 6uLL, "kNonce", &v24);
  if (v4)
  {
    goto LABEL_14;
  }

  v38[0] = v24;
  v38[1] = v25 - v24;
  v38[2] = v14[1];
  v38[3] = v14[2];
  v4 = DEREncodeSequenceIntoVector(0x2000000000000010, v38, v40, &v30);
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = DEREncodeItemIntoVector(0xCuLL, 0x11uLL, "kDeviceIdentifier", &v33);
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = DEREncodeItemIntoVector(4uLL, 8uLL, &ECID, &v27);
  if (v4)
  {
    goto LABEL_14;
  }

  v39[0] = v33;
  v39[1] = v34 - v33;
  v39[2] = v27;
  v39[3] = v28 - v27;
  v4 = DEREncodeSequenceIntoVector(0x2000000000000010, v39, v40, &v21);
  if (v4)
  {
    goto LABEL_14;
  }

  v37[0] = v21;
  v37[1] = v22 - v21;
  v37[2] = v30;
  v37[3] = v31 - v30;
  v4 = DEREncodeSequenceIntoVector(0x2000000000000010, v37, v40, &v18);
  if (v4 || (v4 = DEREncodeItemIntoVector(0xA000000000000005, v19 - v18, v18, &__p)) != 0 || (v36[0] = &v41, v36[1] = 5, v36[2] = __p, v36[3] = v16 - __p, (v4 = DEREncodeSequenceIntoVector(0x2000000000000010, v36, v40, a2)) != 0))
  {
LABEL_14:
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v5, v6, v7, "DR_Success == ret");
  }

  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "CreateValidationBlob DR %d\n", v8, v9, v10, v4);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v4)
  {
    result = 11;
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29827AD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a36)
  {
    operator delete(a36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::ValidatePersoDevice(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = 0;
  v21 = operator new(0x20uLL);
  v22 = xmmword_2982BFD40;
  strcpy(v21, "ValidatePersoDeviceRequest.bin");
  __p = 0;
  v19 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v21, &__p);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }

  v6 = (*(**a3 + 72))(*a3, a2, a2);
  if (v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "kBBUReturnSuccess == ret");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete ValidatePerso command\n", v10, v11, v12, v17);
  }

  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "ValidatePersoDevice %d\n", v13, v14, v15, v6);
  return v6;
}

void sub_29827AF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
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

uint64_t eUICC::Perso::PersoImplementation::SendReceiptServer(void *a1, uint64_t a2)
{
  v41 = *MEMORY[0x29EDCA608];
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v37 = 0;
  v38 = 0;
  values = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&values, __p, v29, v29 - __p);
  v35 = 0;
  keys[0] = 0;
  keys[1] = 0;
  v40 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(keys, values, v37, v37 - values);
  v22[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v4 = v22[0];
    v35 = v22[0];
  }

  else
  {
    v4 = 0;
  }

  if (keys[0])
  {
    keys[1] = keys[0];
    operator delete(keys[0]);
  }

  v31 = v4;
  if (values)
  {
    v37 = values;
    operator delete(values);
  }

  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  *keys = xmmword_29EE8E790;
  v40 = @"SessionId";
  values = @"SendReceipt";
  v37 = v4;
  v38 = a1[2];
  v5 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(keys, &values, 3);
  if (v5)
  {
    gBBULogMaskGet();
    v6 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "kBBUReturnSuccess == ret");
  }

  else
  {
    v25 = 0;
    v26 = operator new(0x20uLL);
    v27 = xmmword_2982BFD40;
    strcpy(v26, "SendReceiptServerRequest.plist");
    v23 = 0;
    v24 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v23, v32, v33, v33 - v32);
    eUICC::Perso::PersoImplementation::logTransactionData(a1, &v26, &v23);
    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }

    eUICC::Perso::PersoImplementation::PostDataSync(a1, &v32, v22);
    v10 = v22[0];
    v6 = v22[1];
    if (v22[0])
    {
      v20 = operator new(0x20uLL);
      v21 = xmmword_2982BFD60;
      strcpy(v20, "SendReceiptServerResponse.plist");
      (*(*v10 + 40))(&cf, v10);
      eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v20, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }

      v5 = 0;
      *(a2 + 8) = *a2;
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "response");
      v5 = 53;
    }
  }

  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "SendReceiptServer %d\n", v14, v15, v16, v5);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v17 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_29827B324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *eUICC::Perso::PersoImplementation::logTransactionData(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (v4 >= *(a1 + 48))
  {
    result = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, a2, a3);
  }

  else
  {
    std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100]<std::string&,std::vector<unsigned char>&,0>(*(a1 + 40), a2, a3);
    result = v4 + 2;
    *(a1 + 40) = v4 + 2;
  }

  *(a1 + 40) = result;
  return result;
}

uint64_t eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(const void **keys, const void **values, CFIndex numValues)
{
  v38 = 0;
  v39 = 0;
  v3 = *MEMORY[0x29EDB8ED8];
  v4 = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], keys, values, numValues, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v37 = v4;
  if (!v4)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "inDict");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to create dictionary\n", v10, v11, v12, v31);
LABEL_12:
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v37);
    v6 = 11;
    goto LABEL_15;
  }

  error[0] = 0;
  error[1] = &v39;
  Data = CFPropertyListCreateData(v3, v4, kCFPropertyListXMLFormat_v1_0, 0, error);
  v38 = Data;
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  if (!Data)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v13, v14, v15, "outData");
    gBBULogMaskGet();
    ctu::cf::show(1, v37, v16);
    v17 = v36;
    v18 = error[0];
    ctu::cf::show(1, v39, v19);
    v23 = error;
    if (v17 < 0)
    {
      LOBYTE(v23) = v18;
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to serialize dictionary %s error %s\n", v20, v21, v22, v23);
    if (v34 < 0)
    {
      operator delete(__p);
    }

    if (v36 < 0)
    {
      operator delete(error[0]);
    }

    goto LABEL_12;
  }

  if (ctu::cf::assign())
  {
    v6 = 0;
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v24, v25, v26, "success");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to assign output data\n", v27, v28, v29, v32);
    v6 = 11;
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v37);
  CFRelease(Data);
LABEL_15:
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v39);
  return v6;
}

void sub_29827B700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((v25 - 56));
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v25 - 48));
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v25 - 40));
  _Unwind_Resume(a1);
}

uint64_t *eUICC::Perso::PersoImplementation::PostDataSync@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = operator new(0xA0uLL);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 850045863;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 10) = 0;
  *(v6 + 11) = 1018212795;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 124) = 0u;
  *v6 = &unk_2A1EB2B70;
  v26 = v6;
  v27 = v6;
  std::__assoc_sub_state::__attach_future[abi:ne200100](v6);
  v7 = a1[3];
  aBlock[1] = 0;
  v23 = 0;
  v21[2] = 0;
  aBlock[0] = &aBlock[1];
  v21[1] = 0;
  ctu::Http::HttpRequest::create();
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(aBlock, aBlock[1]);
  (*(*v24 + 8))(v24, *a1);
  v8 = v24;
  dispatch::future_callback_impl<std::shared_ptr<ctu::Http::HttpResponse>,std::shared_ptr<ctu::Http::HttpResponse>>(&v26, aBlock);
  (*(*v8 + 16))(v8, aBlock[0]);
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  (*(*v24 + 96))(v24, 60.0);
  v9 = v24;
  v10 = a1[1];
  v21[0] = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  (*(*v9 + 88))(v9, v21);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v21);
  (*(*v24 + 56))(v24, a2);
  __p[1] = 0;
  v20 = 0;
  __p[0] = 0;
  (*(*v24 + 40))(v24, __p);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  std::future<std::shared_ptr<ctu::Http::HttpResponse>>::get(&v26, aBlock);
  if ((*(*aBlock[0] + 16))(aBlock[0]) == 1 && (*(*aBlock[0] + 24))(aBlock[0]) == 200)
  {
    *a3 = *aBlock;
  }

  else
  {
    gBBULogMaskGet();
    v11 = (*(*aBlock[0] + 16))(aBlock[0]);
    (*(*aBlock[0] + 24))(aBlock[0]);
    (*(*aBlock[0] + 32))(aBlock[0]);
    (*(*aBlock[0] + 72))(&cf);
    v12 = CFCopyDescription(cf);
    CFStringGetCStringPtr(v12, 0x8000100u);
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "result %d code %d raw_error %ld error %s\n", v13, v14, v15, v11);
    ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&cf);
    *a3 = 0;
    *(a3 + 8) = 0;
    if (aBlock[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](aBlock[1]);
    }
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v16 = v26;
  if (v26 && !atomic_fetch_add(v26 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v16 + 16))(v16);
  }

  return std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(&v27);
}