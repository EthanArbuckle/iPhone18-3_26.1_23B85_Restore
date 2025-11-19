uint64_t AriSdk::ARI_IBICallPsImsTestModeRspCb_SDK::pack(AriSdk::ARI_IBICallPsImsTestModeRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsImsTestModeIndCb_SDK::ARI_IBICallPsImsTestModeIndCb_SDK(AriSdk::ARI_IBICallPsImsTestModeIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 226951168, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 226951168, 0);
}

void AriSdk::ARI_IBICallPsImsTestModeIndCb_SDK::ARI_IBICallPsImsTestModeIndCb_SDK(AriSdk::ARI_IBICallPsImsTestModeIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsImsTestModeIndCb_SDK::~ARI_IBICallPsImsTestModeIndCb_SDK(AriSdk::ARI_IBICallPsImsTestModeIndCb_SDK *this)
{
  *this = &unk_2A1D1FDF0;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsImsTestModeIndCb_SDK::~ARI_IBICallPsImsTestModeIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsImsTestModeIndCb_SDK::pack(AriSdk::ARI_IBICallPsImsTestModeIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      if (v7)
      {
        v9 = v7 == v8;
      }

      else
      {
        v9 = 1;
      }

      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsImsTestModeIndCb_SDK::unpack(AriSdk::ARI_IBICallPsImsTestModeIndCb_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_29606B290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  MEMORY[0x29C257E50](v29, v28);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBICallPsLTEAttachApnConfigReq_SDK::ARI_IBICallPsLTEAttachApnConfigReq_SDK(AriSdk::ARI_IBICallPsLTEAttachApnConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 209747968, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 209747968, 0);
}

void AriSdk::ARI_IBICallPsLTEAttachApnConfigReq_SDK::ARI_IBICallPsLTEAttachApnConfigReq_SDK(AriSdk::ARI_IBICallPsLTEAttachApnConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsLTEAttachApnConfigReq_SDK::~ARI_IBICallPsLTEAttachApnConfigReq_SDK(AriSdk::ARI_IBICallPsLTEAttachApnConfigReq_SDK *this)
{
  *this = &unk_2A1D1FE28;
  v2 = *(this + 123);
  *(this + 123) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 122);
  *(this + 122) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 121);
  *(this + 121) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 120);
  *(this + 120) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 119);
  *(this + 119) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 118);
  *(this + 118) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 117);
  *(this + 117) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 114);
  if (v9)
  {
    *(this + 115) = v9;
    operator delete(v9);
  }

  v10 = *(this + 111);
  if (v10)
  {
    *(this + 112) = v10;
    operator delete(v10);
  }

  v11 = *(this + 110);
  *(this + 110) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 107);
  if (v12)
  {
    *(this + 108) = v12;
    operator delete(v12);
  }

  v13 = *(this + 104);
  if (v13)
  {
    *(this + 105) = v13;
    operator delete(v13);
  }

  v14 = *(this + 103);
  *(this + 103) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  v15 = *(this + 100);
  if (v15)
  {
    *(this + 101) = v15;
    operator delete(v15);
  }

  v16 = *(this + 97);
  if (v16)
  {
    *(this + 98) = v16;
    operator delete(v16);
  }

  v17 = *(this + 96);
  *(this + 96) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C4052888210);
  }

  v18 = *(this + 93);
  if (v18)
  {
    *(this + 94) = v18;
    operator delete(v18);
  }

  v19 = *(this + 90);
  if (v19)
  {
    *(this + 91) = v19;
    operator delete(v19);
  }

  v20 = *(this + 89);
  *(this + 89) = 0;
  if (v20)
  {
    MEMORY[0x29C257E70](v20, 0x1000C4052888210);
  }

  v21 = *(this + 88);
  *(this + 88) = 0;
  if (v21)
  {
    MEMORY[0x29C257E70](v21, 0x1000C4052888210);
  }

  v22 = *(this + 87);
  *(this + 87) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C4052888210);
  }

  v23 = *(this + 86);
  *(this + 86) = 0;
  if (v23)
  {
    MEMORY[0x29C257E70](v23, 0x1000C4052888210);
  }

  v24 = *(this + 85);
  *(this + 85) = 0;
  if (v24)
  {
    MEMORY[0x29C257E70](v24, 0x1000C4052888210);
  }

  v25 = *(this + 84);
  *(this + 84) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C4052888210);
  }

  v26 = *(this + 83);
  *(this + 83) = 0;
  if (v26)
  {
    MEMORY[0x29C257E70](v26, 0x1000C4052888210);
  }

  v27 = *(this + 82);
  *(this + 82) = 0;
  if (v27)
  {
    MEMORY[0x29C257E70](v27, 0x1000C4052888210);
  }

  v28 = *(this + 81);
  *(this + 81) = 0;
  if (v28)
  {
    MEMORY[0x29C257E70](v28, 0x1000C4052888210);
  }

  v29 = *(this + 80);
  *(this + 80) = 0;
  if (v29)
  {
    MEMORY[0x29C257E70](v29, 0x1000C4052888210);
  }

  v30 = *(this + 79);
  *(this + 79) = 0;
  if (v30)
  {
    MEMORY[0x29C257E70](v30, 0x1000C4052888210);
  }

  v31 = *(this + 78);
  *(this + 78) = 0;
  if (v31)
  {
    MEMORY[0x29C257E70](v31, 0x1000C4052888210);
  }

  v32 = *(this + 77);
  *(this + 77) = 0;
  if (v32)
  {
    MEMORY[0x29C257E70](v32, 0x1000C4052888210);
  }

  v33 = *(this + 76);
  *(this + 76) = 0;
  if (v33)
  {
    MEMORY[0x29C257E70](v33, 0x1000C4052888210);
  }

  v34 = *(this + 75);
  *(this + 75) = 0;
  if (v34)
  {
    MEMORY[0x29C257E70](v34, 0x1000C4052888210);
  }

  v35 = *(this + 74);
  *(this + 74) = 0;
  if (v35)
  {
    MEMORY[0x29C257E70](v35, 0x1000C4052888210);
  }

  v36 = *(this + 73);
  *(this + 73) = 0;
  if (v36)
  {
    MEMORY[0x29C257E70](v36, 0x1000C40504FFAC1);
  }

  v37 = *(this + 70);
  if (v37)
  {
    *(this + 71) = v37;
    operator delete(v37);
  }

  v38 = *(this + 69);
  *(this + 69) = 0;
  if (v38)
  {
    MEMORY[0x29C257E70](v38, 0x1000C4052888210);
  }

  v39 = *(this + 68);
  *(this + 68) = 0;
  if (v39)
  {
    MEMORY[0x29C257E70](v39, 0x1000C4052888210);
  }

  v40 = *(this + 67);
  *(this + 67) = 0;
  if (v40)
  {
    MEMORY[0x29C257E70](v40, 0x1000C4052888210);
  }

  v41 = *(this + 66);
  *(this + 66) = 0;
  if (v41)
  {
    MEMORY[0x29C257E70](v41, 0x1000C4052888210);
  }

  v42 = *(this + 65);
  *(this + 65) = 0;
  if (v42)
  {
    MEMORY[0x29C257E70](v42, 0x1000C4052888210);
  }

  v43 = *(this + 64);
  *(this + 64) = 0;
  if (v43)
  {
    MEMORY[0x29C257E70](v43, 0x1000C4052888210);
  }

  v44 = *(this + 63);
  *(this + 63) = 0;
  if (v44)
  {
    MEMORY[0x29C257E70](v44, 0x1000C4052888210);
  }

  v45 = *(this + 62);
  *(this + 62) = 0;
  if (v45)
  {
    MEMORY[0x29C257E70](v45, 0x1000C4052888210);
  }

  v46 = *(this + 61);
  *(this + 61) = 0;
  if (v46)
  {
    MEMORY[0x29C257E70](v46, 0x1000C4052888210);
  }

  v47 = *(this + 60);
  *(this + 60) = 0;
  if (v47)
  {
    MEMORY[0x29C257E70](v47, 0x1000C4052888210);
  }

  v48 = *(this + 59);
  *(this + 59) = 0;
  if (v48)
  {
    MEMORY[0x29C257E70](v48, 0x1000C4052888210);
  }

  v49 = *(this + 58);
  *(this + 58) = 0;
  if (v49)
  {
    MEMORY[0x29C257E70](v49, 0x1000C4052888210);
  }

  v50 = *(this + 57);
  *(this + 57) = 0;
  if (v50)
  {
    MEMORY[0x29C257E70](v50, 0x1000C4052888210);
  }

  v51 = *(this + 56);
  *(this + 56) = 0;
  if (v51)
  {
    MEMORY[0x29C257E70](v51, 0x1000C4052888210);
  }

  v52 = *(this + 55);
  *(this + 55) = 0;
  if (v52)
  {
    MEMORY[0x29C257E70](v52, 0x1000C4052888210);
  }

  v53 = *(this + 54);
  *(this + 54) = 0;
  if (v53)
  {
    MEMORY[0x29C257E70](v53, 0x1000C4052888210);
  }

  v54 = *(this + 53);
  *(this + 53) = 0;
  if (v54)
  {
    MEMORY[0x29C257E70](v54, 0x1000C40504FFAC1);
  }

  v55 = *(this + 50);
  if (v55)
  {
    *(this + 51) = v55;
    operator delete(v55);
  }

  v56 = *(this + 49);
  *(this + 49) = 0;
  if (v56)
  {
    MEMORY[0x29C257E70](v56, 0x1000C4052888210);
  }

  v57 = *(this + 48);
  *(this + 48) = 0;
  if (v57)
  {
    MEMORY[0x29C257E70](v57, 0x1000C4052888210);
  }

  v58 = *(this + 47);
  *(this + 47) = 0;
  if (v58)
  {
    MEMORY[0x29C257E70](v58, 0x1000C4052888210);
  }

  v59 = *(this + 46);
  *(this + 46) = 0;
  if (v59)
  {
    MEMORY[0x29C257E70](v59, 0x1000C4052888210);
  }

  v60 = *(this + 45);
  *(this + 45) = 0;
  if (v60)
  {
    MEMORY[0x29C257E70](v60, 0x1000C4052888210);
  }

  v61 = *(this + 44);
  *(this + 44) = 0;
  if (v61)
  {
    MEMORY[0x29C257E70](v61, 0x1000C4052888210);
  }

  v62 = *(this + 43);
  *(this + 43) = 0;
  if (v62)
  {
    MEMORY[0x29C257E70](v62, 0x1000C4052888210);
  }

  v63 = *(this + 42);
  *(this + 42) = 0;
  if (v63)
  {
    MEMORY[0x29C257E70](v63, 0x1000C4052888210);
  }

  v64 = *(this + 41);
  *(this + 41) = 0;
  if (v64)
  {
    MEMORY[0x29C257E70](v64, 0x1000C4052888210);
  }

  v65 = *(this + 40);
  *(this + 40) = 0;
  if (v65)
  {
    MEMORY[0x29C257E70](v65, 0x1000C4052888210);
  }

  v66 = *(this + 39);
  *(this + 39) = 0;
  if (v66)
  {
    MEMORY[0x29C257E70](v66, 0x1000C4052888210);
  }

  v67 = *(this + 38);
  *(this + 38) = 0;
  if (v67)
  {
    MEMORY[0x29C257E70](v67, 0x1000C4052888210);
  }

  v68 = *(this + 37);
  *(this + 37) = 0;
  if (v68)
  {
    MEMORY[0x29C257E70](v68, 0x1000C4052888210);
  }

  v69 = *(this + 36);
  *(this + 36) = 0;
  if (v69)
  {
    MEMORY[0x29C257E70](v69, 0x1000C4052888210);
  }

  v70 = *(this + 35);
  *(this + 35) = 0;
  if (v70)
  {
    MEMORY[0x29C257E70](v70, 0x1000C4052888210);
  }

  v71 = *(this + 34);
  *(this + 34) = 0;
  if (v71)
  {
    MEMORY[0x29C257E70](v71, 0x1000C4052888210);
  }

  v72 = *(this + 33);
  *(this + 33) = 0;
  if (v72)
  {
    MEMORY[0x29C257E70](v72, 0x1000C40504FFAC1);
  }

  v73 = *(this + 30);
  if (v73)
  {
    *(this + 31) = v73;
    operator delete(v73);
  }

  v74 = *(this + 29);
  *(this + 29) = 0;
  if (v74)
  {
    MEMORY[0x29C257E70](v74, 0x1000C4052888210);
  }

  v75 = *(this + 28);
  *(this + 28) = 0;
  if (v75)
  {
    MEMORY[0x29C257E70](v75, 0x1000C4052888210);
  }

  v76 = *(this + 27);
  *(this + 27) = 0;
  if (v76)
  {
    MEMORY[0x29C257E70](v76, 0x1000C4052888210);
  }

  v77 = *(this + 26);
  *(this + 26) = 0;
  if (v77)
  {
    MEMORY[0x29C257E70](v77, 0x1000C4052888210);
  }

  v78 = *(this + 25);
  *(this + 25) = 0;
  if (v78)
  {
    MEMORY[0x29C257E70](v78, 0x1000C4052888210);
  }

  v79 = *(this + 24);
  *(this + 24) = 0;
  if (v79)
  {
    MEMORY[0x29C257E70](v79, 0x1000C4052888210);
  }

  v80 = *(this + 23);
  *(this + 23) = 0;
  if (v80)
  {
    MEMORY[0x29C257E70](v80, 0x1000C4052888210);
  }

  v81 = *(this + 22);
  *(this + 22) = 0;
  if (v81)
  {
    MEMORY[0x29C257E70](v81, 0x1000C4052888210);
  }

  v82 = *(this + 21);
  *(this + 21) = 0;
  if (v82)
  {
    MEMORY[0x29C257E70](v82, 0x1000C4052888210);
  }

  v83 = *(this + 20);
  *(this + 20) = 0;
  if (v83)
  {
    MEMORY[0x29C257E70](v83, 0x1000C4052888210);
  }

  v84 = *(this + 19);
  *(this + 19) = 0;
  if (v84)
  {
    MEMORY[0x29C257E70](v84, 0x1000C4052888210);
  }

  v85 = *(this + 18);
  *(this + 18) = 0;
  if (v85)
  {
    MEMORY[0x29C257E70](v85, 0x1000C4052888210);
  }

  v86 = *(this + 17);
  *(this + 17) = 0;
  if (v86)
  {
    MEMORY[0x29C257E70](v86, 0x1000C4052888210);
  }

  v87 = *(this + 16);
  *(this + 16) = 0;
  if (v87)
  {
    MEMORY[0x29C257E70](v87, 0x1000C4052888210);
  }

  v88 = *(this + 15);
  *(this + 15) = 0;
  if (v88)
  {
    MEMORY[0x29C257E70](v88, 0x1000C4052888210);
  }

  v89 = *(this + 14);
  *(this + 14) = 0;
  if (v89)
  {
    MEMORY[0x29C257E70](v89, 0x1000C4052888210);
  }

  v90 = *(this + 13);
  *(this + 13) = 0;
  if (v90)
  {
    MEMORY[0x29C257E70](v90, 0x1000C40504FFAC1);
  }

  v91 = *(this + 10);
  if (v91)
  {
    *(this + 11) = v91;
    operator delete(v91);
  }

  v92 = *(this + 9);
  *(this + 9) = 0;
  if (v92)
  {
    MEMORY[0x29C257E70](v92, 0x1000C4077774924);
  }

  v93 = *(this + 8);
  *(this + 8) = 0;
  if (v93)
  {
    MEMORY[0x29C257E70](v93, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsLTEAttachApnConfigReq_SDK::~ARI_IBICallPsLTEAttachApnConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsLTEAttachApnConfigReq_SDK::pack(AriSdk::ARI_IBICallPsLTEAttachApnConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      v9 = !v7 || v7 == v8;
      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 0x18uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 4uLL, 0), !result))
          {
            v12 = *(this + 15);
            if (!v12 || (result = AriMsg::pack(*(this + 6), 10, v12, 4uLL, 0), !result))
            {
              v13 = *(this + 16);
              if (!v13 || (result = AriMsg::pack(*(this + 6), 11, v13, 4uLL, 0), !result))
              {
                v14 = *(this + 17);
                if (!v14 || (result = AriMsg::pack(*(this + 6), 12, v14, 4uLL, 0), !result))
                {
                  v15 = *(this + 18);
                  if (!v15 || (result = AriMsg::pack(*(this + 6), 13, v15, 4uLL, 0), !result))
                  {
                    v16 = *(this + 19);
                    if (!v16 || (result = AriMsg::pack(*(this + 6), 14, v16, 4uLL, 0), !result))
                    {
                      v17 = *(this + 20);
                      if (!v17 || (result = AriMsg::pack(*(this + 6), 15, v17, 4uLL, 0), !result))
                      {
                        v18 = *(this + 21);
                        if (!v18 || (result = AriMsg::pack(*(this + 6), 16, v18, 4uLL, 0), !result))
                        {
                          v19 = *(this + 22);
                          if (!v19 || (result = AriMsg::pack(*(this + 6), 17, v19, 4uLL, 0), !result))
                          {
                            v20 = *(this + 23);
                            if (!v20 || (result = AriMsg::pack(*(this + 6), 18, v20, 4uLL, 0), !result))
                            {
                              v21 = *(this + 24);
                              if (!v21 || (result = AriMsg::pack(*(this + 6), 19, v21, 4uLL, 0), !result))
                              {
                                v22 = *(this + 25);
                                if (!v22 || (result = AriMsg::pack(*(this + 6), 20, v22, 4uLL, 0), !result))
                                {
                                  v23 = *(this + 26);
                                  if (!v23 || (result = AriMsg::pack(*(this + 6), 21, v23, 4uLL, 0), !result))
                                  {
                                    v24 = *(this + 27);
                                    if (!v24 || (result = AriMsg::pack(*(this + 6), 22, v24, 4uLL, 0), !result))
                                    {
                                      v25 = *(this + 28);
                                      if (!v25 || (result = AriMsg::pack(*(this + 6), 23, v25, 4uLL, 0), !result))
                                      {
                                        v26 = *(this + 29);
                                        if (!v26 || (result = AriMsg::pack(*(this + 6), 24, v26, 4uLL, 0), !result))
                                        {
                                          v27 = *(this + 30);
                                          if (!v27 || (v28 = *(this + 31), v27 == v28) || (result = AriMsg::pack(*(this + 6), 29, v27, v28 - v27, 0), !result))
                                          {
                                            v29 = *(this + 33);
                                            if (!v29 || (result = AriMsg::pack(*(this + 6), 30, v29, 0x18uLL, 0), !result))
                                            {
                                              v30 = *(this + 34);
                                              if (!v30 || (result = AriMsg::pack(*(this + 6), 33, v30, 4uLL, 0), !result))
                                              {
                                                v31 = *(this + 35);
                                                if (!v31 || (result = AriMsg::pack(*(this + 6), 35, v31, 4uLL, 0), !result))
                                                {
                                                  v32 = *(this + 36);
                                                  if (!v32 || (result = AriMsg::pack(*(this + 6), 36, v32, 4uLL, 0), !result))
                                                  {
                                                    v33 = *(this + 37);
                                                    if (!v33 || (result = AriMsg::pack(*(this + 6), 37, v33, 4uLL, 0), !result))
                                                    {
                                                      v34 = *(this + 38);
                                                      if (!v34 || (result = AriMsg::pack(*(this + 6), 38, v34, 4uLL, 0), !result))
                                                      {
                                                        v35 = *(this + 39);
                                                        if (!v35 || (result = AriMsg::pack(*(this + 6), 39, v35, 4uLL, 0), !result))
                                                        {
                                                          v36 = *(this + 40);
                                                          if (!v36 || (result = AriMsg::pack(*(this + 6), 40, v36, 4uLL, 0), !result))
                                                          {
                                                            v37 = *(this + 41);
                                                            if (!v37 || (result = AriMsg::pack(*(this + 6), 41, v37, 4uLL, 0), !result))
                                                            {
                                                              v38 = *(this + 42);
                                                              if (!v38 || (result = AriMsg::pack(*(this + 6), 42, v38, 4uLL, 0), !result))
                                                              {
                                                                v39 = *(this + 43);
                                                                if (!v39 || (result = AriMsg::pack(*(this + 6), 43, v39, 4uLL, 0), !result))
                                                                {
                                                                  v40 = *(this + 44);
                                                                  if (!v40 || (result = AriMsg::pack(*(this + 6), 44, v40, 4uLL, 0), !result))
                                                                  {
                                                                    v41 = *(this + 45);
                                                                    if (!v41 || (result = AriMsg::pack(*(this + 6), 45, v41, 4uLL, 0), !result))
                                                                    {
                                                                      v42 = *(this + 46);
                                                                      if (!v42 || (result = AriMsg::pack(*(this + 6), 46, v42, 4uLL, 0), !result))
                                                                      {
                                                                        v43 = *(this + 47);
                                                                        if (!v43 || (result = AriMsg::pack(*(this + 6), 47, v43, 4uLL, 0), !result))
                                                                        {
                                                                          v44 = *(this + 48);
                                                                          if (!v44 || (result = AriMsg::pack(*(this + 6), 48, v44, 4uLL, 0), !result))
                                                                          {
                                                                            v45 = *(this + 49);
                                                                            if (!v45 || (result = AriMsg::pack(*(this + 6), 49, v45, 4uLL, 0), !result))
                                                                            {
                                                                              v46 = *(this + 50);
                                                                              if (!v46 || (v47 = *(this + 51), v46 == v47) || (result = AriMsg::pack(*(this + 6), 54, v46, v47 - v46, 0), !result))
                                                                              {
                                                                                v48 = *(this + 53);
                                                                                if (!v48 || (result = AriMsg::pack(*(this + 6), 55, v48, 0x18uLL, 0), !result))
                                                                                {
                                                                                  v49 = *(this + 54);
                                                                                  if (!v49 || (result = AriMsg::pack(*(this + 6), 58, v49, 4uLL, 0), !result))
                                                                                  {
                                                                                    v50 = *(this + 55);
                                                                                    if (!v50 || (result = AriMsg::pack(*(this + 6), 60, v50, 4uLL, 0), !result))
                                                                                    {
                                                                                      v51 = *(this + 56);
                                                                                      if (!v51 || (result = AriMsg::pack(*(this + 6), 61, v51, 4uLL, 0), !result))
                                                                                      {
                                                                                        v52 = *(this + 57);
                                                                                        if (!v52 || (result = AriMsg::pack(*(this + 6), 62, v52, 4uLL, 0), !result))
                                                                                        {
                                                                                          v53 = *(this + 58);
                                                                                          if (!v53 || (result = AriMsg::pack(*(this + 6), 63, v53, 4uLL, 0), !result))
                                                                                          {
                                                                                            v54 = *(this + 59);
                                                                                            if (!v54 || (result = AriMsg::pack(*(this + 6), 64, v54, 4uLL, 0), !result))
                                                                                            {
                                                                                              v55 = *(this + 60);
                                                                                              if (!v55 || (result = AriMsg::pack(*(this + 6), 65, v55, 4uLL, 0), !result))
                                                                                              {
                                                                                                v56 = *(this + 61);
                                                                                                if (!v56 || (result = AriMsg::pack(*(this + 6), 66, v56, 4uLL, 0), !result))
                                                                                                {
                                                                                                  v57 = *(this + 62);
                                                                                                  if (!v57 || (result = AriMsg::pack(*(this + 6), 67, v57, 4uLL, 0), !result))
                                                                                                  {
                                                                                                    v58 = *(this + 63);
                                                                                                    if (!v58 || (result = AriMsg::pack(*(this + 6), 68, v58, 4uLL, 0), !result))
                                                                                                    {
                                                                                                      v59 = *(this + 64);
                                                                                                      if (!v59 || (result = AriMsg::pack(*(this + 6), 69, v59, 4uLL, 0), !result))
                                                                                                      {
                                                                                                        v60 = *(this + 65);
                                                                                                        if (!v60 || (result = AriMsg::pack(*(this + 6), 70, v60, 4uLL, 0), !result))
                                                                                                        {
                                                                                                          v61 = *(this + 66);
                                                                                                          if (!v61 || (result = AriMsg::pack(*(this + 6), 71, v61, 4uLL, 0), !result))
                                                                                                          {
                                                                                                            v62 = *(this + 67);
                                                                                                            if (!v62 || (result = AriMsg::pack(*(this + 6), 72, v62, 4uLL, 0), !result))
                                                                                                            {
                                                                                                              v63 = *(this + 68);
                                                                                                              if (!v63 || (result = AriMsg::pack(*(this + 6), 73, v63, 4uLL, 0), !result))
                                                                                                              {
                                                                                                                v64 = *(this + 69);
                                                                                                                if (!v64 || (result = AriMsg::pack(*(this + 6), 74, v64, 4uLL, 0), !result))
                                                                                                                {
                                                                                                                  v65 = *(this + 70);
                                                                                                                  if (!v65 || (v66 = *(this + 71), v65 == v66) || (result = AriMsg::pack(*(this + 6), 79, v65, v66 - v65, 0), !result))
                                                                                                                  {
                                                                                                                    v67 = *(this + 73);
                                                                                                                    if (!v67 || (result = AriMsg::pack(*(this + 6), 80, v67, 0x18uLL, 0), !result))
                                                                                                                    {
                                                                                                                      v68 = *(this + 74);
                                                                                                                      if (!v68 || (result = AriMsg::pack(*(this + 6), 83, v68, 4uLL, 0), !result))
                                                                                                                      {
                                                                                                                        v69 = *(this + 75);
                                                                                                                        if (!v69 || (result = AriMsg::pack(*(this + 6), 85, v69, 4uLL, 0), !result))
                                                                                                                        {
                                                                                                                          v70 = *(this + 76);
                                                                                                                          if (!v70 || (result = AriMsg::pack(*(this + 6), 86, v70, 4uLL, 0), !result))
                                                                                                                          {
                                                                                                                            v71 = *(this + 77);
                                                                                                                            if (!v71 || (result = AriMsg::pack(*(this + 6), 87, v71, 4uLL, 0), !result))
                                                                                                                            {
                                                                                                                              v72 = *(this + 78);
                                                                                                                              if (!v72 || (result = AriMsg::pack(*(this + 6), 88, v72, 4uLL, 0), !result))
                                                                                                                              {
                                                                                                                                v73 = *(this + 79);
                                                                                                                                if (!v73 || (result = AriMsg::pack(*(this + 6), 89, v73, 4uLL, 0), !result))
                                                                                                                                {
                                                                                                                                  v74 = *(this + 80);
                                                                                                                                  if (!v74 || (result = AriMsg::pack(*(this + 6), 90, v74, 4uLL, 0), !result))
                                                                                                                                  {
                                                                                                                                    v75 = *(this + 81);
                                                                                                                                    if (!v75 || (result = AriMsg::pack(*(this + 6), 91, v75, 4uLL, 0), !result))
                                                                                                                                    {
                                                                                                                                      v76 = *(this + 82);
                                                                                                                                      if (!v76 || (result = AriMsg::pack(*(this + 6), 92, v76, 4uLL, 0), !result))
                                                                                                                                      {
                                                                                                                                        v77 = *(this + 83);
                                                                                                                                        if (!v77 || (result = AriMsg::pack(*(this + 6), 93, v77, 4uLL, 0), !result))
                                                                                                                                        {
                                                                                                                                          v78 = *(this + 84);
                                                                                                                                          if (!v78 || (result = AriMsg::pack(*(this + 6), 94, v78, 4uLL, 0), !result))
                                                                                                                                          {
                                                                                                                                            v79 = *(this + 85);
                                                                                                                                            if (!v79 || (result = AriMsg::pack(*(this + 6), 95, v79, 4uLL, 0), !result))
                                                                                                                                            {
                                                                                                                                              v80 = *(this + 86);
                                                                                                                                              if (!v80 || (result = AriMsg::pack(*(this + 6), 96, v80, 4uLL, 0), !result))
                                                                                                                                              {
                                                                                                                                                v81 = *(this + 87);
                                                                                                                                                if (!v81 || (result = AriMsg::pack(*(this + 6), 97, v81, 4uLL, 0), !result))
                                                                                                                                                {
                                                                                                                                                  v82 = *(this + 88);
                                                                                                                                                  if (!v82 || (result = AriMsg::pack(*(this + 6), 98, v82, 4uLL, 0), !result))
                                                                                                                                                  {
                                                                                                                                                    v83 = *(this + 89);
                                                                                                                                                    if (!v83 || (result = AriMsg::pack(*(this + 6), 99, v83, 4uLL, 0), !result))
                                                                                                                                                    {
                                                                                                                                                      v84 = *(this + 90);
                                                                                                                                                      if (!v84 || (v85 = *(this + 91), v84 == v85) || (result = AriMsg::pack(*(this + 6), 112, v84, v85 - v84, 0), !result))
                                                                                                                                                      {
                                                                                                                                                        v86 = *(this + 93);
                                                                                                                                                        if (!v86 || (v87 = *(this + 94), v86 == v87) || (result = AriMsg::pack(*(this + 6), 113, v86, v87 - v86, 0), !result))
                                                                                                                                                        {
                                                                                                                                                          v88 = *(this + 96);
                                                                                                                                                          if (!v88 || (result = AriMsg::pack(*(this + 6), 114, v88, 4uLL, 0), !result))
                                                                                                                                                          {
                                                                                                                                                            v89 = *(this + 97);
                                                                                                                                                            if (!v89 || (v90 = *(this + 98), v89 == v90) || (result = AriMsg::pack(*(this + 6), 116, v89, v90 - v89, 0), !result))
                                                                                                                                                            {
                                                                                                                                                              v91 = *(this + 100);
                                                                                                                                                              if (!v91 || (v92 = *(this + 101), v91 == v92) || (result = AriMsg::pack(*(this + 6), 117, v91, v92 - v91, 0), !result))
                                                                                                                                                              {
                                                                                                                                                                v93 = *(this + 103);
                                                                                                                                                                if (!v93 || (result = AriMsg::pack(*(this + 6), 118, v93, 4uLL, 0), !result))
                                                                                                                                                                {
                                                                                                                                                                  v94 = *(this + 104);
                                                                                                                                                                  if (!v94 || (v95 = *(this + 105), v94 == v95) || (result = AriMsg::pack(*(this + 6), 120, v94, v95 - v94, 0), !result))
                                                                                                                                                                  {
                                                                                                                                                                    v96 = *(this + 107);
                                                                                                                                                                    if (!v96 || (v97 = *(this + 108), v96 == v97) || (result = AriMsg::pack(*(this + 6), 121, v96, v97 - v96, 0), !result))
                                                                                                                                                                    {
                                                                                                                                                                      v98 = *(this + 110);
                                                                                                                                                                      if (!v98 || (result = AriMsg::pack(*(this + 6), 122, v98, 4uLL, 0), !result))
                                                                                                                                                                      {
                                                                                                                                                                        v99 = *(this + 111);
                                                                                                                                                                        if (!v99 || (v100 = *(this + 112), v99 == v100) || (result = AriMsg::pack(*(this + 6), 124, v99, v100 - v99, 0), !result))
                                                                                                                                                                        {
                                                                                                                                                                          v101 = *(this + 114);
                                                                                                                                                                          if (!v101 || (v102 = *(this + 115), v101 == v102) || (result = AriMsg::pack(*(this + 6), 125, v101, v102 - v101, 0), !result))
                                                                                                                                                                          {
                                                                                                                                                                            v103 = *(this + 117);
                                                                                                                                                                            if (!v103 || (result = AriMsg::pack(*(this + 6), 126, v103, 4uLL, 0), !result))
                                                                                                                                                                            {
                                                                                                                                                                              v104 = *(this + 118);
                                                                                                                                                                              if (!v104 || (result = AriMsg::pack(*(this + 6), 129, v104, 4uLL, 0), !result))
                                                                                                                                                                              {
                                                                                                                                                                                v105 = *(this + 119);
                                                                                                                                                                                if (!v105 || (result = AriMsg::pack(*(this + 6), 130, v105, 4uLL, 0), !result))
                                                                                                                                                                                {
                                                                                                                                                                                  v106 = *(this + 120);
                                                                                                                                                                                  if (!v106 || (result = AriMsg::pack(*(this + 6), 131, v106, 4uLL, 0), !result))
                                                                                                                                                                                  {
                                                                                                                                                                                    v107 = *(this + 121);
                                                                                                                                                                                    if (!v107 || (result = AriMsg::pack(*(this + 6), 132, v107, 4uLL, 0), !result))
                                                                                                                                                                                    {
                                                                                                                                                                                      v108 = *(this + 122);
                                                                                                                                                                                      if (!v108 || (result = AriMsg::pack(*(this + 6), 133, v108, 4uLL, 0), !result))
                                                                                                                                                                                      {
                                                                                                                                                                                        v109 = *(this + 123);
                                                                                                                                                                                        if (!v109 || (result = AriMsg::pack(*(this + 6), 134, v109, 4uLL, 0), !result))
                                                                                                                                                                                        {
                                                                                                                                                                                          result = 0;
                                                                                                                                                                                          *a2 = *(this + 6);
                                                                                                                                                                                        }
                                                                                                                                                                                      }
                                                                                                                                                                                    }
                                                                                                                                                                                  }
                                                                                                                                                                                }
                                                                                                                                                                              }
                                                                                                                                                                            }
                                                                                                                                                                          }
                                                                                                                                                                        }
                                                                                                                                                                      }
                                                                                                                                                                    }
                                                                                                                                                                  }
                                                                                                                                                                }
                                                                                                                                                              }
                                                                                                                                                            }
                                                                                                                                                          }
                                                                                                                                                        }
                                                                                                                                                      }
                                                                                                                                                    }
                                                                                                                                                  }
                                                                                                                                                }
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

std::vector<int> *AriSdk::TlvArray<char,65ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x42)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 65;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 65);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29606F410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICallPsAttachApnConfigRspCb_SDK::ARI_IBICallPsAttachApnConfigRspCb_SDK(AriSdk::ARI_IBICallPsAttachApnConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 218136576, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 218136576, 0);
}

void AriSdk::ARI_IBICallPsAttachApnConfigRspCb_SDK::ARI_IBICallPsAttachApnConfigRspCb_SDK(AriSdk::ARI_IBICallPsAttachApnConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsAttachApnConfigRspCb_SDK::~ARI_IBICallPsAttachApnConfigRspCb_SDK(AriSdk::ARI_IBICallPsAttachApnConfigRspCb_SDK *this)
{
  *this = &unk_2A1D1FE60;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsAttachApnConfigRspCb_SDK::~ARI_IBICallPsAttachApnConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsAttachApnConfigRspCb_SDK::pack(AriSdk::ARI_IBICallPsAttachApnConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsLoopbackTestModeConfigIndCb_SDK::ARI_IBICallPsLoopbackTestModeConfigIndCb_SDK(AriSdk::ARI_IBICallPsLoopbackTestModeConfigIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 227311616, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 227311616, 0);
}

void AriSdk::ARI_IBICallPsLoopbackTestModeConfigIndCb_SDK::ARI_IBICallPsLoopbackTestModeConfigIndCb_SDK(AriSdk::ARI_IBICallPsLoopbackTestModeConfigIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsLoopbackTestModeConfigIndCb_SDK::~ARI_IBICallPsLoopbackTestModeConfigIndCb_SDK(AriSdk::ARI_IBICallPsLoopbackTestModeConfigIndCb_SDK *this)
{
  *this = &unk_2A1D1FE98;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 12);
  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsLoopbackTestModeConfigIndCb_SDK::~ARI_IBICallPsLoopbackTestModeConfigIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsLoopbackTestModeConfigIndCb_SDK::pack(AriSdk::ARI_IBICallPsLoopbackTestModeConfigIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 5, v9, v10 - v9, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 6, v11, 1uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (v13 = *(this + 17), v12 == v13) || (result = AriMsg::pack(*(this + 6), 7, v12, v13 - v12, 0), !result))
              {
                result = 0;
                *a2 = *(this + 6);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_29606FF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

AriOsa *AriSdk::TlvArray<IBICallPsLoopbackModeAConfig,8ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 2) < 9)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 2);
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
      v25 = 8;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 2), 8);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29607023C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<int,8ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x21)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = (__c->n128_u64[1] - __c->n128_u64[0]) >> 2;
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 8;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 2, 8);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296070434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICallPsLoopbackTestModeConfigRsp_SDK::ARI_IBICallPsLoopbackTestModeConfigRsp_SDK(AriSdk::ARI_IBICallPsLoopbackTestModeConfigRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211877888, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 211877888, 1);
}

void AriSdk::ARI_IBICallPsLoopbackTestModeConfigRsp_SDK::ARI_IBICallPsLoopbackTestModeConfigRsp_SDK(AriSdk::ARI_IBICallPsLoopbackTestModeConfigRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsLoopbackTestModeConfigRsp_SDK::~ARI_IBICallPsLoopbackTestModeConfigRsp_SDK(AriSdk::ARI_IBICallPsLoopbackTestModeConfigRsp_SDK *this)
{
  *this = &unk_2A1D1FED0;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsLoopbackTestModeConfigRsp_SDK::~ARI_IBICallPsLoopbackTestModeConfigRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsLoopbackTestModeConfigRsp_SDK::pack(AriSdk::ARI_IBICallPsLoopbackTestModeConfigRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 4, v8, v9 - v8, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void sub_2960709A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v10);
  _Unwind_Resume(a1);
}

AriOsa *AriSdk::TlvArray<IBICallPsLoopbackPipeConfig,4ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if ((0x6E93BEF4627F4D97 * ((*(a2 + 1) - *a2) >> 2)) < 5)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0x6E93BEF4627F4D97 * ((*(a2 + 1) - *a2) >> 2);
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
      v25 = 4;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0x6E93BEF4627F4D97 * ((*(a2 + 1) - *a2) >> 2), 4);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296070C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICallPsLoopbackTestModeStatusIndCb_SDK::ARI_IBICallPsLoopbackTestModeStatusIndCb_SDK(AriSdk::ARI_IBICallPsLoopbackTestModeStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 227278848, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 227278848, 0);
}

void AriSdk::ARI_IBICallPsLoopbackTestModeStatusIndCb_SDK::ARI_IBICallPsLoopbackTestModeStatusIndCb_SDK(AriSdk::ARI_IBICallPsLoopbackTestModeStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsLoopbackTestModeStatusIndCb_SDK::~ARI_IBICallPsLoopbackTestModeStatusIndCb_SDK(AriSdk::ARI_IBICallPsLoopbackTestModeStatusIndCb_SDK *this)
{
  *this = &unk_2A1D1FF08;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsLoopbackTestModeStatusIndCb_SDK::~ARI_IBICallPsLoopbackTestModeStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsLoopbackTestModeStatusIndCb_SDK::pack(AriSdk::ARI_IBICallPsLoopbackTestModeStatusIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsLoopbackTestModeStatusRsp_SDK::ARI_IBICallPsLoopbackTestModeStatusRsp_SDK(AriSdk::ARI_IBICallPsLoopbackTestModeStatusRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211845120, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 211845120, 1);
}

void AriSdk::ARI_IBICallPsLoopbackTestModeStatusRsp_SDK::ARI_IBICallPsLoopbackTestModeStatusRsp_SDK(AriSdk::ARI_IBICallPsLoopbackTestModeStatusRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsLoopbackTestModeStatusRsp_SDK::~ARI_IBICallPsLoopbackTestModeStatusRsp_SDK(AriSdk::ARI_IBICallPsLoopbackTestModeStatusRsp_SDK *this)
{
  *this = &unk_2A1D1FF40;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsLoopbackTestModeStatusRsp_SDK::~ARI_IBICallPsLoopbackTestModeStatusRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsLoopbackTestModeStatusRsp_SDK::pack(AriSdk::ARI_IBICallPsLoopbackTestModeStatusRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsLqmDataIndCb_SDK::ARI_IBICallPsLqmDataIndCb_SDK(AriSdk::ARI_IBICallPsLqmDataIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 226820096, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 226820096, 0);
}

void AriSdk::ARI_IBICallPsLqmDataIndCb_SDK::ARI_IBICallPsLqmDataIndCb_SDK(AriSdk::ARI_IBICallPsLqmDataIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsLqmDataIndCb_SDK::~ARI_IBICallPsLqmDataIndCb_SDK(AriSdk::ARI_IBICallPsLqmDataIndCb_SDK *this)
{
  *this = &unk_2A1D1FF78;
  v2 = *(this + 23);
  *(this + 23) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 22);
  *(this + 22) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 21);
  *(this + 21) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 20);
  *(this + 20) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C405DF52C91);
  }

  v6 = *(this + 19);
  *(this + 19) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4033FC2DF1);
  }

  v7 = *(this + 18);
  *(this + 18) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40BDFB0063);
  }

  v8 = *(this + 15);
  if (v8)
  {
    *(this + 16) = v8;
    operator delete(v8);
  }

  v9 = *(this + 14);
  *(this + 14) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 13);
  *(this + 13) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C404A09149ALL);
  }

  v11 = *(this + 12);
  *(this + 12) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C403E1C8BA9);
  }

  v12 = *(this + 11);
  *(this + 11) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C400D840072);
  }

  v13 = *(this + 10);
  *(this + 10) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C40957D8CC4);
  }

  v14 = *(this + 9);
  *(this + 9) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  v15 = *(this + 8);
  *(this + 8) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsLqmDataIndCb_SDK::~ARI_IBICallPsLqmDataIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsLqmDataIndCb_SDK::pack(AriSdk::ARI_IBICallPsLqmDataIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 5uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 0xB8uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 0xCuLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 8uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (v13 = *(this + 16), v12 == v13) || (result = AriMsg::pack(*(this + 6), 8, v12, v13 - v12, 0), !result))
                {
                  v14 = *(this + 18);
                  if (!v14 || (result = AriMsg::pack(*(this + 6), 9, v14, 2uLL, 0), !result))
                  {
                    v15 = *(this + 19);
                    if (!v15 || (result = AriMsg::pack(*(this + 6), 10, v15, 3uLL, 0), !result))
                    {
                      v16 = *(this + 20);
                      if (!v16 || (result = AriMsg::pack(*(this + 6), 11, v16, 0xE0uLL, 0), !result))
                      {
                        v17 = *(this + 21);
                        if (!v17 || (result = AriMsg::pack(*(this + 6), 12, v17, 4uLL, 0), !result))
                        {
                          v18 = *(this + 22);
                          if (!v18 || (result = AriMsg::pack(*(this + 6), 13, v18, 4uLL, 0), !result))
                          {
                            v19 = *(this + 23);
                            if (!v19 || (result = AriMsg::pack(*(this + 6), 14, v19, 4uLL, 0), !result))
                            {
                              result = 0;
                              *a2 = *(this + 6);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

std::vector<int> *AriSdk::TlvArray<unsigned char,100ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x65)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 100;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 100);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296072400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICallPsLqmQueryReq_SDK::ARI_IBICallPsLqmQueryReq_SDK(AriSdk::ARI_IBICallPsLqmQueryReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 210173952, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 210173952, 0);
}

void AriSdk::ARI_IBICallPsLqmQueryReq_SDK::ARI_IBICallPsLqmQueryReq_SDK(AriSdk::ARI_IBICallPsLqmQueryReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsLqmQueryReq_SDK::~ARI_IBICallPsLqmQueryReq_SDK(AriSdk::ARI_IBICallPsLqmQueryReq_SDK *this)
{
  *this = &unk_2A1D1FFB0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsLqmQueryReq_SDK::~ARI_IBICallPsLqmQueryReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsLqmQueryReq_SDK::pack(AriSdk::ARI_IBICallPsLqmQueryReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsLqmQueryRsbCb_SDK::ARI_IBICallPsLqmQueryRsbCb_SDK(AriSdk::ARI_IBICallPsLqmQueryRsbCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 218562560, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 218562560, 0);
}

void AriSdk::ARI_IBICallPsLqmQueryRsbCb_SDK::ARI_IBICallPsLqmQueryRsbCb_SDK(AriSdk::ARI_IBICallPsLqmQueryRsbCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsLqmQueryRsbCb_SDK::~ARI_IBICallPsLqmQueryRsbCb_SDK(AriSdk::ARI_IBICallPsLqmQueryRsbCb_SDK *this)
{
  *this = &unk_2A1D1FFE8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C403E1C8BA9);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsLqmQueryRsbCb_SDK::~ARI_IBICallPsLqmQueryRsbCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsLqmQueryRsbCb_SDK::pack(AriSdk::ARI_IBICallPsLqmQueryRsbCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0xCuLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsLqmRegisterReq_SDK::ARI_IBICallPsLqmRegisterReq_SDK(AriSdk::ARI_IBICallPsLqmRegisterReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 210141184, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 210141184, 0);
}

void AriSdk::ARI_IBICallPsLqmRegisterReq_SDK::ARI_IBICallPsLqmRegisterReq_SDK(AriSdk::ARI_IBICallPsLqmRegisterReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsLqmRegisterReq_SDK::~ARI_IBICallPsLqmRegisterReq_SDK(AriSdk::ARI_IBICallPsLqmRegisterReq_SDK *this)
{
  *this = &unk_2A1D20020;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 10);
  *(this + 10) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 8);
  *(this + 8) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsLqmRegisterReq_SDK::~ARI_IBICallPsLqmRegisterReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsLqmRegisterReq_SDK::pack(AriSdk::ARI_IBICallPsLqmRegisterReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 4uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 4uLL, 0), !result))
                  {
                    result = 0;
                    *a2 = *(this + 6);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsLqmRegisterRspCb_SDK::ARI_IBICallPsLqmRegisterRspCb_SDK(AriSdk::ARI_IBICallPsLqmRegisterRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 218529792, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 218529792, 0);
}

void AriSdk::ARI_IBICallPsLqmRegisterRspCb_SDK::ARI_IBICallPsLqmRegisterRspCb_SDK(AriSdk::ARI_IBICallPsLqmRegisterRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsLqmRegisterRspCb_SDK::~ARI_IBICallPsLqmRegisterRspCb_SDK(AriSdk::ARI_IBICallPsLqmRegisterRspCb_SDK *this)
{
  *this = &unk_2A1D20058;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsLqmRegisterRspCb_SDK::~ARI_IBICallPsLqmRegisterRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsLqmRegisterRspCb_SDK::pack(AriSdk::ARI_IBICallPsLqmRegisterRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsLteAttachIndCb_SDK::ARI_IBICallPsLteAttachIndCb_SDK(AriSdk::ARI_IBICallPsLteAttachIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 226983936, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 226983936, 0);
}

void AriSdk::ARI_IBICallPsLteAttachIndCb_SDK::ARI_IBICallPsLteAttachIndCb_SDK(AriSdk::ARI_IBICallPsLteAttachIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsLteAttachIndCb_SDK::~ARI_IBICallPsLteAttachIndCb_SDK(AriSdk::ARI_IBICallPsLteAttachIndCb_SDK *this)
{
  *this = &unk_2A1D20090;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40504FFAC1);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsLteAttachIndCb_SDK::~ARI_IBICallPsLteAttachIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsLteAttachIndCb_SDK::pack(AriSdk::ARI_IBICallPsLteAttachIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x18uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 4, v8, v9 - v8, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void sub_296073D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBICallPsModifyIndCb_SDK::ARI_IBICallPsModifyIndCb_SDK(AriSdk::ARI_IBICallPsModifyIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 226590720, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 226590720, 0);
}

void AriSdk::ARI_IBICallPsModifyIndCb_SDK::ARI_IBICallPsModifyIndCb_SDK(AriSdk::ARI_IBICallPsModifyIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsModifyIndCb_SDK::~ARI_IBICallPsModifyIndCb_SDK(AriSdk::ARI_IBICallPsModifyIndCb_SDK *this)
{
  *this = &unk_2A1D200C8;
  v2 = *(this + 45);
  *(this + 45) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 44);
  *(this + 44) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4045BD7913);
  }

  v4 = *(this + 43);
  *(this + 43) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 40);
  if (v5)
  {
    *(this + 41) = v5;
    operator delete(v5);
  }

  v6 = *(this + 39);
  *(this + 39) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 38);
  *(this + 38) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40BDFB0063);
  }

  v8 = *(this + 37);
  *(this + 37) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4000313F17);
  }

  v9 = *(this + 36);
  *(this + 36) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4000313F17);
  }

  v10 = *(this + 35);
  *(this + 35) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C40451B5BE8);
  }

  v11 = *(this + 34);
  *(this + 34) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4080B1215BLL);
  }

  v12 = *(this + 33);
  *(this + 33) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  v13 = *(this + 32);
  *(this + 32) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4052888210);
  }

  v14 = *(this + 29);
  if (v14)
  {
    *(this + 30) = v14;
    operator delete(v14);
  }

  v15 = *(this + 28);
  *(this + 28) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4077774924);
  }

  v16 = *(this + 27);
  *(this + 27) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4077774924);
  }

  v17 = *(this + 26);
  *(this + 26) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C4077774924);
  }

  v18 = *(this + 25);
  *(this + 25) = 0;
  if (v18)
  {
    MEMORY[0x29C257E70](v18, 0x1000C40B04AA6E5);
  }

  v19 = *(this + 24);
  *(this + 24) = 0;
  if (v19)
  {
    MEMORY[0x29C257E70](v19, 0x1000C40FF89C88ELL);
  }

  v20 = *(this + 23);
  *(this + 23) = 0;
  if (v20)
  {
    MEMORY[0x29C257E70](v20, 0x1000C40B8E3674DLL);
  }

  v21 = *(this + 22);
  *(this + 22) = 0;
  if (v21)
  {
    MEMORY[0x29C257E70](v21, 0x1000C4052888210);
  }

  v22 = *(this + 21);
  *(this + 21) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C40274DC3F3);
  }

  v23 = *(this + 20);
  *(this + 20) = 0;
  if (v23)
  {
    MEMORY[0x29C257E70](v23, 0x1000C4052888210);
  }

  v24 = *(this + 17);
  if (v24)
  {
    *(this + 18) = v24;
    operator delete(v24);
  }

  v25 = *(this + 16);
  *(this + 16) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C4077774924);
  }

  v26 = *(this + 15);
  *(this + 15) = 0;
  if (v26)
  {
    MEMORY[0x29C257E70](v26, 0x1000C4052888210);
  }

  v27 = *(this + 14);
  *(this + 14) = 0;
  if (v27)
  {
    MEMORY[0x29C257E70](v27, 0x1000C40B4868423);
  }

  v28 = *(this + 13);
  *(this + 13) = 0;
  if (v28)
  {
    MEMORY[0x29C257E70](v28, 0x1000C4052888210);
  }

  v29 = *(this + 12);
  *(this + 12) = 0;
  if (v29)
  {
    MEMORY[0x29C257E70](v29, 0x1000C40FF89C88ELL);
  }

  v30 = *(this + 11);
  *(this + 11) = 0;
  if (v30)
  {
    MEMORY[0x29C257E70](v30, 0x1000C4052888210);
  }

  v31 = *(this + 10);
  *(this + 10) = 0;
  if (v31)
  {
    MEMORY[0x29C257E70](v31, 0x1000C40A86A77D5);
  }

  v32 = *(this + 9);
  *(this + 9) = 0;
  if (v32)
  {
    MEMORY[0x29C257E70](v32, 0x1000C4052888210);
  }

  v33 = *(this + 8);
  *(this + 8) = 0;
  if (v33)
  {
    MEMORY[0x29C257E70](v33, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsModifyIndCb_SDK::~ARI_IBICallPsModifyIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsModifyIndCb_SDK::pack(AriSdk::ARI_IBICallPsModifyIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x14uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 0x48uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 0x14uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 4uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 1uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (v15 = *(this + 18), v14 == v15) || (result = AriMsg::pack(*(this + 6), 10, v14, v15 - v14, 0), !result))
                    {
                      v16 = *(this + 20);
                      if (!v16 || (result = AriMsg::pack(*(this + 6), 11, v16, 4uLL, 0), !result))
                      {
                        v17 = *(this + 21);
                        if (!v17 || (result = AriMsg::pack(*(this + 6), 12, v17, 6uLL, 0), !result))
                        {
                          v18 = *(this + 22);
                          if (!v18 || (result = AriMsg::pack(*(this + 6), 13, v18, 4uLL, 0), !result))
                          {
                            v19 = *(this + 23);
                            if (!v19 || (result = AriMsg::pack(*(this + 6), 14, v19, 0x480uLL, 0), !result))
                            {
                              v20 = *(this + 24);
                              if (!v20 || (result = AriMsg::pack(*(this + 6), 15, v20, 0x48uLL, 0), !result))
                              {
                                v21 = *(this + 25);
                                if (!v21 || (result = AriMsg::pack(*(this + 6), 16, v21, 0x24uLL, 0), !result))
                                {
                                  v22 = *(this + 26);
                                  if (!v22 || (result = AriMsg::pack(*(this + 6), 17, v22, 1uLL, 0), !result))
                                  {
                                    v23 = *(this + 27);
                                    if (!v23 || (result = AriMsg::pack(*(this + 6), 18, v23, 1uLL, 0), !result))
                                    {
                                      v24 = *(this + 28);
                                      if (!v24 || (result = AriMsg::pack(*(this + 6), 19, v24, 1uLL, 0), !result))
                                      {
                                        v25 = *(this + 29);
                                        if (!v25 || (v26 = *(this + 30), v25 == v26) || (result = AriMsg::pack(*(this + 6), 20, v25, v26 - v25, 0), !result))
                                        {
                                          v27 = *(this + 32);
                                          if (!v27 || (result = AriMsg::pack(*(this + 6), 21, v27, 4uLL, 0), !result))
                                          {
                                            v28 = *(this + 33);
                                            if (!v28 || (result = AriMsg::pack(*(this + 6), 22, v28, 4uLL, 0), !result))
                                            {
                                              v29 = *(this + 34);
                                              if (!v29 || (result = AriMsg::pack(*(this + 6), 23, v29, 0xAuLL, 0), !result))
                                              {
                                                v30 = *(this + 35);
                                                if (!v30 || (result = AriMsg::pack(*(this + 6), 24, v30, 0x10uLL, 0), !result))
                                                {
                                                  v31 = *(this + 36);
                                                  if (!v31 || (result = AriMsg::pack(*(this + 6), 25, v31, 8uLL, 0), !result))
                                                  {
                                                    v32 = *(this + 37);
                                                    if (!v32 || (result = AriMsg::pack(*(this + 6), 26, v32, 8uLL, 0), !result))
                                                    {
                                                      v33 = *(this + 38);
                                                      if (!v33 || (result = AriMsg::pack(*(this + 6), 27, v33, 2uLL, 0), !result))
                                                      {
                                                        v34 = *(this + 39);
                                                        if (!v34 || (result = AriMsg::pack(*(this + 6), 28, v34, 1uLL, 0), !result))
                                                        {
                                                          v35 = *(this + 40);
                                                          if (!v35 || (v36 = *(this + 41), v35 == v36) || (result = AriMsg::pack(*(this + 6), 29, v35, v36 - v35, 0), !result))
                                                          {
                                                            v37 = *(this + 43);
                                                            if (!v37 || (result = AriMsg::pack(*(this + 6), 30, v37, 4uLL, 0), !result))
                                                            {
                                                              v38 = *(this + 44);
                                                              if (!v38 || (result = AriMsg::pack(*(this + 6), 31, v38, 0x28uLL, 0), !result))
                                                              {
                                                                v39 = *(this + 45);
                                                                if (!v39 || (result = AriMsg::pack(*(this + 6), 32, v39, 4uLL, 0), !result))
                                                                {
                                                                  result = 0;
                                                                  *a2 = *(this + 6);
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsNotificationIndCb_SDK::ARI_IBICallPsNotificationIndCb_SDK(AriSdk::ARI_IBICallPsNotificationIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 226918400, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 226918400, 0);
}

void AriSdk::ARI_IBICallPsNotificationIndCb_SDK::ARI_IBICallPsNotificationIndCb_SDK(AriSdk::ARI_IBICallPsNotificationIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsNotificationIndCb_SDK::~ARI_IBICallPsNotificationIndCb_SDK(AriSdk::ARI_IBICallPsNotificationIndCb_SDK *this)
{
  *this = &unk_2A1D20100;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsNotificationIndCb_SDK::~ARI_IBICallPsNotificationIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsNotificationIndCb_SDK::pack(AriSdk::ARI_IBICallPsNotificationIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoReq_SDK::ARI_IBICallPsNwSlicingRegStatusInfoReq_SDK(AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 212238336, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 212238336, 0);
}

void AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoReq_SDK::ARI_IBICallPsNwSlicingRegStatusInfoReq_SDK(AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoReq_SDK::~ARI_IBICallPsNwSlicingRegStatusInfoReq_SDK(AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoReq_SDK *this)
{
  *this = &unk_2A1D20138;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoReq_SDK::~ARI_IBICallPsNwSlicingRegStatusInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoReq_SDK::pack(AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoRspCb_SDK::ARI_IBICallPsNwSlicingRegStatusInfoRspCb_SDK(AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220626944, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220626944, 0);
}

void AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoRspCb_SDK::ARI_IBICallPsNwSlicingRegStatusInfoRspCb_SDK(AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoRspCb_SDK::~ARI_IBICallPsNwSlicingRegStatusInfoRspCb_SDK(AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoRspCb_SDK *this)
{
  *this = &unk_2A1D20170;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoRspCb_SDK::~ARI_IBICallPsNwSlicingRegStatusInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoRspCb_SDK::pack(AriSdk::ARI_IBICallPsNwSlicingRegStatusInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsPdnStats_SDK::ARI_IBICallPsPdnStats_SDK(AriSdk::ARI_IBICallPsPdnStats_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 209944576, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 209944576, 1);
}

void AriSdk::ARI_IBICallPsPdnStats_SDK::ARI_IBICallPsPdnStats_SDK(AriSdk::ARI_IBICallPsPdnStats_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsPdnStats_SDK::~ARI_IBICallPsPdnStats_SDK(AriSdk::ARI_IBICallPsPdnStats_SDK *this)
{
  *this = &unk_2A1D201A8;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsPdnStats_SDK::~ARI_IBICallPsPdnStats_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsPdnStats_SDK::pack(AriSdk::ARI_IBICallPsPdnStats_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsPduSessionAuthReq_SDK::ARI_IBICallPsPduSessionAuthReq_SDK(AriSdk::ARI_IBICallPsPduSessionAuthReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211779584, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211779584, 0);
}

void AriSdk::ARI_IBICallPsPduSessionAuthReq_SDK::ARI_IBICallPsPduSessionAuthReq_SDK(AriSdk::ARI_IBICallPsPduSessionAuthReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsPduSessionAuthReq_SDK::~ARI_IBICallPsPduSessionAuthReq_SDK(AriSdk::ARI_IBICallPsPduSessionAuthReq_SDK *this)
{
  *this = &unk_2A1D201E0;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4078488D2ALL);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsPduSessionAuthReq_SDK::~ARI_IBICallPsPduSessionAuthReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsPduSessionAuthReq_SDK::pack(AriSdk::ARI_IBICallPsPduSessionAuthReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x5E0uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsPduSessionAuthRspCb_SDK::ARI_IBICallPsPduSessionAuthRspCb_SDK(AriSdk::ARI_IBICallPsPduSessionAuthRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220168192, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220168192, 0);
}

void AriSdk::ARI_IBICallPsPduSessionAuthRspCb_SDK::ARI_IBICallPsPduSessionAuthRspCb_SDK(AriSdk::ARI_IBICallPsPduSessionAuthRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsPduSessionAuthRspCb_SDK::~ARI_IBICallPsPduSessionAuthRspCb_SDK(AriSdk::ARI_IBICallPsPduSessionAuthRspCb_SDK *this)
{
  *this = &unk_2A1D20218;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsPduSessionAuthRspCb_SDK::~ARI_IBICallPsPduSessionAuthRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsPduSessionAuthRspCb_SDK::pack(AriSdk::ARI_IBICallPsPduSessionAuthRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsPduSessionAuthIndCb_SDK::ARI_IBICallPsPduSessionAuthIndCb_SDK(AriSdk::ARI_IBICallPsPduSessionAuthIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 227246080, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 227246080, 0);
}

void AriSdk::ARI_IBICallPsPduSessionAuthIndCb_SDK::ARI_IBICallPsPduSessionAuthIndCb_SDK(AriSdk::ARI_IBICallPsPduSessionAuthIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsPduSessionAuthIndCb_SDK::~ARI_IBICallPsPduSessionAuthIndCb_SDK(AriSdk::ARI_IBICallPsPduSessionAuthIndCb_SDK *this)
{
  *this = &unk_2A1D20250;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4078488D2ALL);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsPduSessionAuthIndCb_SDK::~ARI_IBICallPsPduSessionAuthIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsPduSessionAuthIndCb_SDK::pack(AriSdk::ARI_IBICallPsPduSessionAuthIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x5E0uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsQosRuleIndCb_SDK::ARI_IBICallPsQosRuleIndCb_SDK(AriSdk::ARI_IBICallPsQosRuleIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 227606528, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 227606528, 0);
}

void AriSdk::ARI_IBICallPsQosRuleIndCb_SDK::ARI_IBICallPsQosRuleIndCb_SDK(AriSdk::ARI_IBICallPsQosRuleIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsQosRuleIndCb_SDK::~ARI_IBICallPsQosRuleIndCb_SDK(AriSdk::ARI_IBICallPsQosRuleIndCb_SDK *this)
{
  *this = &unk_2A1D20288;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsQosRuleIndCb_SDK::~ARI_IBICallPsQosRuleIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsQosRuleIndCb_SDK::pack(AriSdk::ARI_IBICallPsQosRuleIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 4, v8, v9 - v8, 0), !result))
        {
          v10 = *(this + 14);
          if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 4uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsRegisterFT_SDK::ARI_IBICallPsRegisterFT_SDK(AriSdk::ARI_IBICallPsRegisterFT_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 209846272, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 209846272, 1);
}

void AriSdk::ARI_IBICallPsRegisterFT_SDK::ARI_IBICallPsRegisterFT_SDK(AriSdk::ARI_IBICallPsRegisterFT_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsRegisterFT_SDK::~ARI_IBICallPsRegisterFT_SDK(AriSdk::ARI_IBICallPsRegisterFT_SDK *this)
{
  *this = &unk_2A1D202C0;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40504FFAC1);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40504FFAC1);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsRegisterFT_SDK::~ARI_IBICallPsRegisterFT_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsRegisterFT_SDK::pack(AriSdk::ARI_IBICallPsRegisterFT_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x18uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x18uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 2uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 2uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 4uLL, 0), !result))
              {
                result = 0;
                *a2 = *(this + 6);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsReservePDUSessionIDReq_SDK::ARI_IBICallPsReservePDUSessionIDReq_SDK(AriSdk::ARI_IBICallPsReservePDUSessionIDReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211910656, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211910656, 0);
}

void AriSdk::ARI_IBICallPsReservePDUSessionIDReq_SDK::ARI_IBICallPsReservePDUSessionIDReq_SDK(AriSdk::ARI_IBICallPsReservePDUSessionIDReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsReservePDUSessionIDReq_SDK::~ARI_IBICallPsReservePDUSessionIDReq_SDK(AriSdk::ARI_IBICallPsReservePDUSessionIDReq_SDK *this)
{
  *this = &unk_2A1D202F8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsReservePDUSessionIDReq_SDK::~ARI_IBICallPsReservePDUSessionIDReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsReservePDUSessionIDReq_SDK::pack(AriSdk::ARI_IBICallPsReservePDUSessionIDReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsReservePDUSessionIDRspCb_SDK::ARI_IBICallPsReservePDUSessionIDRspCb_SDK(AriSdk::ARI_IBICallPsReservePDUSessionIDRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220299264, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220299264, 0);
}

void AriSdk::ARI_IBICallPsReservePDUSessionIDRspCb_SDK::ARI_IBICallPsReservePDUSessionIDRspCb_SDK(AriSdk::ARI_IBICallPsReservePDUSessionIDRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsReservePDUSessionIDRspCb_SDK::~ARI_IBICallPsReservePDUSessionIDRspCb_SDK(AriSdk::ARI_IBICallPsReservePDUSessionIDRspCb_SDK *this)
{
  *this = &unk_2A1D20330;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsReservePDUSessionIDRspCb_SDK::~ARI_IBICallPsReservePDUSessionIDRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsReservePDUSessionIDRspCb_SDK::pack(AriSdk::ARI_IBICallPsReservePDUSessionIDRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsResumeIndCb_SDK::ARI_IBICallPsResumeIndCb_SDK(AriSdk::ARI_IBICallPsResumeIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 226656256, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 226656256, 0);
}

void AriSdk::ARI_IBICallPsResumeIndCb_SDK::ARI_IBICallPsResumeIndCb_SDK(AriSdk::ARI_IBICallPsResumeIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsResumeIndCb_SDK::~ARI_IBICallPsResumeIndCb_SDK(AriSdk::ARI_IBICallPsResumeIndCb_SDK *this)
{
  *this = &unk_2A1D20368;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsResumeIndCb_SDK::~ARI_IBICallPsResumeIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsResumeIndCb_SDK::pack(AriSdk::ARI_IBICallPsResumeIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBICallPsRtpReq_SDK::ARI_IBICallPsRtpReq_SDK(AriSdk::ARI_IBICallPsRtpReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 210337792, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 210337792, 0);
}

void AriSdk::ARI_IBICallPsRtpReq_SDK::ARI_IBICallPsRtpReq_SDK(AriSdk::ARI_IBICallPsRtpReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsRtpReq_SDK::~ARI_IBICallPsRtpReq_SDK(AriSdk::ARI_IBICallPsRtpReq_SDK *this)
{
  *this = &unk_2A1D203A0;
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 21);
  *(this + 21) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 17);
  if (v5)
  {
    *(this + 18) = v5;
    operator delete(v5);
  }

  v6 = *(this + 16);
  *(this + 16) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 15);
  *(this + 15) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40BDFB0063);
  }

  v8 = *(this + 12);
  if (v8)
  {
    *(this + 13) = v8;
    operator delete(v8);
  }

  v9 = *(this + 11);
  *(this + 11) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  v10 = *(this + 10);
  *(this + 10) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 9);
  *(this + 9) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 8);
  *(this + 8) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsRtpReq_SDK::~ARI_IBICallPsRtpReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsRtpReq_SDK::pack(AriSdk::ARI_IBICallPsRtpReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 2uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 1uLL, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (v14 = *(this + 18), v13 == v14) || (result = AriMsg::pack(*(this + 6), 9, v13, v14 - v13, 0), !result))
                {
                  v15 = *(this + 20);
                  if (!v15 || (result = AriMsg::pack(*(this + 6), 10, v15, 2uLL, 0), !result))
                  {
                    v16 = *(this + 21);
                    if (!v16 || (result = AriMsg::pack(*(this + 6), 11, v16, 1uLL, 0), !result))
                    {
                      v17 = *(this + 22);
                      if (!v17 || (result = AriMsg::pack(*(this + 6), 12, v17, 4uLL, 0), !result))
                      {
                        result = 0;
                        *a2 = *(this + 6);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

std::vector<int> *AriSdk::TlvArray<unsigned char,16ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x11)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 16;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 16);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296079B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICallPsRtpRspCb_SDK::ARI_IBICallPsRtpRspCb_SDK(AriSdk::ARI_IBICallPsRtpRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 218726400, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 218726400, 0);
}

void AriSdk::ARI_IBICallPsRtpRspCb_SDK::ARI_IBICallPsRtpRspCb_SDK(AriSdk::ARI_IBICallPsRtpRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsRtpRspCb_SDK::~ARI_IBICallPsRtpRspCb_SDK(AriSdk::ARI_IBICallPsRtpRspCb_SDK *this)
{
  *this = &unk_2A1D203D8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsRtpRspCb_SDK::~ARI_IBICallPsRtpRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsRtpRspCb_SDK::pack(AriSdk::ARI_IBICallPsRtpRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsSecurityStatusReq_SDK::ARI_IBICallPsSecurityStatusReq_SDK(AriSdk::ARI_IBICallPsSecurityStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211582976, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211582976, 0);
}

void AriSdk::ARI_IBICallPsSecurityStatusReq_SDK::ARI_IBICallPsSecurityStatusReq_SDK(AriSdk::ARI_IBICallPsSecurityStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsSecurityStatusReq_SDK::~ARI_IBICallPsSecurityStatusReq_SDK(AriSdk::ARI_IBICallPsSecurityStatusReq_SDK *this)
{
  *this = &unk_2A1D20410;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsSecurityStatusReq_SDK::~ARI_IBICallPsSecurityStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsSecurityStatusReq_SDK::pack(AriSdk::ARI_IBICallPsSecurityStatusReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBICallPsSecurityStatusRspCb_SDK::ARI_IBICallPsSecurityStatusRspCb_SDK(AriSdk::ARI_IBICallPsSecurityStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 219971584, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 219971584, 0);
}

void AriSdk::ARI_IBICallPsSecurityStatusRspCb_SDK::ARI_IBICallPsSecurityStatusRspCb_SDK(AriSdk::ARI_IBICallPsSecurityStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsSecurityStatusRspCb_SDK::~ARI_IBICallPsSecurityStatusRspCb_SDK(AriSdk::ARI_IBICallPsSecurityStatusRspCb_SDK *this)
{
  *this = &unk_2A1D20448;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C404A09149ALL);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C404A09149ALL);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C404A09149ALL);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C404A09149ALL);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsSecurityStatusRspCb_SDK::~ARI_IBICallPsSecurityStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsSecurityStatusRspCb_SDK::pack(AriSdk::ARI_IBICallPsSecurityStatusRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 8uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 8uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 8uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 8uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 1uLL, 0), !result))
                {
                  result = 0;
                  *a2 = *(this + 6);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsSecurityStatusInd_SDK::ARI_IBICallPsSecurityStatusInd_SDK(AriSdk::ARI_IBICallPsSecurityStatusInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 227082240, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 227082240, 0);
}

void AriSdk::ARI_IBICallPsSecurityStatusInd_SDK::ARI_IBICallPsSecurityStatusInd_SDK(AriSdk::ARI_IBICallPsSecurityStatusInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsSecurityStatusInd_SDK::~ARI_IBICallPsSecurityStatusInd_SDK(AriSdk::ARI_IBICallPsSecurityStatusInd_SDK *this)
{
  *this = &unk_2A1D20480;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C404A09149ALL);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C404A09149ALL);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C404A09149ALL);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C404A09149ALL);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsSecurityStatusInd_SDK::~ARI_IBICallPsSecurityStatusInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsSecurityStatusInd_SDK::pack(AriSdk::ARI_IBICallPsSecurityStatusInd_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 8uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 8uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 8uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 8uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 1uLL, 0), !result))
              {
                result = 0;
                *a2 = *(this + 6);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsServiceTypeUpdateReq_SDK::ARI_IBICallPsServiceTypeUpdateReq_SDK(AriSdk::ARI_IBICallPsServiceTypeUpdateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 212303872, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 212303872, 0);
}

void AriSdk::ARI_IBICallPsServiceTypeUpdateReq_SDK::ARI_IBICallPsServiceTypeUpdateReq_SDK(AriSdk::ARI_IBICallPsServiceTypeUpdateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsServiceTypeUpdateReq_SDK::~ARI_IBICallPsServiceTypeUpdateReq_SDK(AriSdk::ARI_IBICallPsServiceTypeUpdateReq_SDK *this)
{
  *this = &unk_2A1D204B8;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsServiceTypeUpdateReq_SDK::~ARI_IBICallPsServiceTypeUpdateReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsServiceTypeUpdateReq_SDK::pack(AriSdk::ARI_IBICallPsServiceTypeUpdateReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsServiceTypeUpdateRspCb_SDK::ARI_IBICallPsServiceTypeUpdateRspCb_SDK(AriSdk::ARI_IBICallPsServiceTypeUpdateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220692480, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220692480, 0);
}

void AriSdk::ARI_IBICallPsServiceTypeUpdateRspCb_SDK::ARI_IBICallPsServiceTypeUpdateRspCb_SDK(AriSdk::ARI_IBICallPsServiceTypeUpdateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsServiceTypeUpdateRspCb_SDK::~ARI_IBICallPsServiceTypeUpdateRspCb_SDK(AriSdk::ARI_IBICallPsServiceTypeUpdateRspCb_SDK *this)
{
  *this = &unk_2A1D204F0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsServiceTypeUpdateRspCb_SDK::~ARI_IBICallPsServiceTypeUpdateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsServiceTypeUpdateRspCb_SDK::pack(AriSdk::ARI_IBICallPsServiceTypeUpdateRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsSetKeepaliveOffloadReq_SDK::ARI_IBICallPsSetKeepaliveOffloadReq_SDK(AriSdk::ARI_IBICallPsSetKeepaliveOffloadReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 210206720, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 210206720, 0);
}

void AriSdk::ARI_IBICallPsSetKeepaliveOffloadReq_SDK::ARI_IBICallPsSetKeepaliveOffloadReq_SDK(AriSdk::ARI_IBICallPsSetKeepaliveOffloadReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsSetKeepaliveOffloadReq_SDK::~ARI_IBICallPsSetKeepaliveOffloadReq_SDK(AriSdk::ARI_IBICallPsSetKeepaliveOffloadReq_SDK *this)
{
  *this = &unk_2A1D20528;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsSetKeepaliveOffloadReq_SDK::~ARI_IBICallPsSetKeepaliveOffloadReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsSetKeepaliveOffloadReq_SDK::pack(AriSdk::ARI_IBICallPsSetKeepaliveOffloadReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void sub_29607BE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v10, v11);
  _Unwind_Resume(a1);
}

AriOsa *AriSdk::TlvArray<IBICallPsKeepAliveFrameInfo,3ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if ((0xF83E0F83E0F83E1 * ((*(a2 + 1) - *a2) >> 2)) < 4)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0xF83E0F83E0F83E1 * ((*(a2 + 1) - *a2) >> 2);
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
      v25 = 3;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xF83E0F83E0F83E1 * ((*(a2 + 1) - *a2) >> 2), 3);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29607C09C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICallPsSetKeepaliveOffloadRspCb_SDK::ARI_IBICallPsSetKeepaliveOffloadRspCb_SDK(AriSdk::ARI_IBICallPsSetKeepaliveOffloadRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 218595328, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 218595328, 0);
}

void AriSdk::ARI_IBICallPsSetKeepaliveOffloadRspCb_SDK::ARI_IBICallPsSetKeepaliveOffloadRspCb_SDK(AriSdk::ARI_IBICallPsSetKeepaliveOffloadRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsSetKeepaliveOffloadRspCb_SDK::~ARI_IBICallPsSetKeepaliveOffloadRspCb_SDK(AriSdk::ARI_IBICallPsSetKeepaliveOffloadRspCb_SDK *this)
{
  *this = &unk_2A1D20560;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsSetKeepaliveOffloadRspCb_SDK::~ARI_IBICallPsSetKeepaliveOffloadRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsSetKeepaliveOffloadRspCb_SDK::pack(AriSdk::ARI_IBICallPsSetKeepaliveOffloadRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsSignificantLocationReq_SDK::ARI_IBICallPsSignificantLocationReq_SDK(AriSdk::ARI_IBICallPsSignificantLocationReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211451904, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211451904, 0);
}

void AriSdk::ARI_IBICallPsSignificantLocationReq_SDK::ARI_IBICallPsSignificantLocationReq_SDK(AriSdk::ARI_IBICallPsSignificantLocationReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsSignificantLocationReq_SDK::~ARI_IBICallPsSignificantLocationReq_SDK(AriSdk::ARI_IBICallPsSignificantLocationReq_SDK *this)
{
  *this = &unk_2A1D20598;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsSignificantLocationReq_SDK::~ARI_IBICallPsSignificantLocationReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsSignificantLocationReq_SDK::pack(AriSdk::ARI_IBICallPsSignificantLocationReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 4uLL, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsSignificantLocationRspCb_SDK::ARI_IBICallPsSignificantLocationRspCb_SDK(AriSdk::ARI_IBICallPsSignificantLocationRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 219840512, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 219840512, 0);
}

void AriSdk::ARI_IBICallPsSignificantLocationRspCb_SDK::ARI_IBICallPsSignificantLocationRspCb_SDK(AriSdk::ARI_IBICallPsSignificantLocationRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsSignificantLocationRspCb_SDK::~ARI_IBICallPsSignificantLocationRspCb_SDK(AriSdk::ARI_IBICallPsSignificantLocationRspCb_SDK *this)
{
  *this = &unk_2A1D205D0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsSignificantLocationRspCb_SDK::~ARI_IBICallPsSignificantLocationRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsSignificantLocationRspCb_SDK::pack(AriSdk::ARI_IBICallPsSignificantLocationRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsStartBandwidthEstimationReq_SDK::ARI_IBICallPsStartBandwidthEstimationReq_SDK(AriSdk::ARI_IBICallPsStartBandwidthEstimationReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211976192, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211976192, 0);
}

void AriSdk::ARI_IBICallPsStartBandwidthEstimationReq_SDK::ARI_IBICallPsStartBandwidthEstimationReq_SDK(AriSdk::ARI_IBICallPsStartBandwidthEstimationReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsStartBandwidthEstimationReq_SDK::~ARI_IBICallPsStartBandwidthEstimationReq_SDK(AriSdk::ARI_IBICallPsStartBandwidthEstimationReq_SDK *this)
{
  *this = &unk_2A1D20608;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsStartBandwidthEstimationReq_SDK::~ARI_IBICallPsStartBandwidthEstimationReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsStartBandwidthEstimationReq_SDK::pack(AriSdk::ARI_IBICallPsStartBandwidthEstimationReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsStartBandwidthEstimationRspCb_SDK::ARI_IBICallPsStartBandwidthEstimationRspCb_SDK(AriSdk::ARI_IBICallPsStartBandwidthEstimationRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220364800, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220364800, 0);
}

void AriSdk::ARI_IBICallPsStartBandwidthEstimationRspCb_SDK::ARI_IBICallPsStartBandwidthEstimationRspCb_SDK(AriSdk::ARI_IBICallPsStartBandwidthEstimationRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsStartBandwidthEstimationRspCb_SDK::~ARI_IBICallPsStartBandwidthEstimationRspCb_SDK(AriSdk::ARI_IBICallPsStartBandwidthEstimationRspCb_SDK *this)
{
  *this = &unk_2A1D20640;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsStartBandwidthEstimationRspCb_SDK::~ARI_IBICallPsStartBandwidthEstimationRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsStartBandwidthEstimationRspCb_SDK::pack(AriSdk::ARI_IBICallPsStartBandwidthEstimationRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBICallPsStartDataCallReq_SDK::ARI_IBICallPsStartDataCallReq_SDK(AriSdk::ARI_IBICallPsStartDataCallReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 209780736, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 209780736, 0);
}

void AriSdk::ARI_IBICallPsStartDataCallReq_SDK::ARI_IBICallPsStartDataCallReq_SDK(AriSdk::ARI_IBICallPsStartDataCallReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsStartDataCallReq_SDK::~ARI_IBICallPsStartDataCallReq_SDK(AriSdk::ARI_IBICallPsStartDataCallReq_SDK *this)
{
  *this = &unk_2A1D20678;
  v2 = *(this + 52);
  *(this + 52) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 51);
  *(this + 51) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 50);
  *(this + 50) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 49);
  *(this + 49) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 48);
  *(this + 48) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 47);
  *(this + 47) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 46);
  *(this + 46) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C40ADF4F15FLL);
  }

  v9 = *(this + 45);
  *(this + 45) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4080B1215BLL);
  }

  v10 = *(this + 44);
  *(this + 44) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 43);
  *(this + 43) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 42);
  *(this + 42) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4045BD7913);
  }

  v13 = *(this + 41);
  *(this + 41) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C40B04AA6E5);
  }

  v14 = *(this + 40);
  *(this + 40) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C40FF89C88ELL);
  }

  v15 = *(this + 39);
  *(this + 39) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4052888210);
  }

  v16 = *(this + 38);
  *(this + 38) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  v17 = *(this + 37);
  *(this + 37) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C40FF89C88ELL);
  }

  v18 = *(this + 36);
  *(this + 36) = 0;
  if (v18)
  {
    MEMORY[0x29C257E70](v18, 0x1000C4052888210);
  }

  v19 = *(this + 35);
  *(this + 35) = 0;
  if (v19)
  {
    MEMORY[0x29C257E70](v19, 0x1000C4052888210);
  }

  v20 = *(this + 32);
  if (v20)
  {
    *(this + 33) = v20;
    operator delete(v20);
  }

  v21 = *(this + 29);
  if (v21)
  {
    *(this + 30) = v21;
    operator delete(v21);
  }

  v22 = *(this + 28);
  *(this + 28) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C4052888210);
  }

  v23 = *(this + 27);
  *(this + 27) = 0;
  if (v23)
  {
    MEMORY[0x29C257E70](v23, 0x1000C4052888210);
  }

  v24 = *(this + 26);
  *(this + 26) = 0;
  if (v24)
  {
    MEMORY[0x29C257E70](v24, 0x1000C4052888210);
  }

  v25 = *(this + 25);
  *(this + 25) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C4052888210);
  }

  v26 = *(this + 24);
  *(this + 24) = 0;
  if (v26)
  {
    MEMORY[0x29C257E70](v26, 0x1000C4052888210);
  }

  v27 = *(this + 23);
  *(this + 23) = 0;
  if (v27)
  {
    MEMORY[0x29C257E70](v27, 0x1000C4052888210);
  }

  v28 = *(this + 22);
  *(this + 22) = 0;
  if (v28)
  {
    MEMORY[0x29C257E70](v28, 0x1000C4052888210);
  }

  v29 = *(this + 21);
  *(this + 21) = 0;
  if (v29)
  {
    MEMORY[0x29C257E70](v29, 0x1000C4052888210);
  }

  v30 = *(this + 20);
  *(this + 20) = 0;
  if (v30)
  {
    MEMORY[0x29C257E70](v30, 0x1000C4052888210);
  }

  v31 = *(this + 19);
  *(this + 19) = 0;
  if (v31)
  {
    MEMORY[0x29C257E70](v31, 0x1000C4052888210);
  }

  v32 = *(this + 18);
  *(this + 18) = 0;
  if (v32)
  {
    MEMORY[0x29C257E70](v32, 0x1000C4052888210);
  }

  v33 = *(this + 17);
  *(this + 17) = 0;
  if (v33)
  {
    MEMORY[0x29C257E70](v33, 0x1000C4052888210);
  }

  v34 = *(this + 16);
  *(this + 16) = 0;
  if (v34)
  {
    MEMORY[0x29C257E70](v34, 0x1000C4052888210);
  }

  v35 = *(this + 15);
  *(this + 15) = 0;
  if (v35)
  {
    MEMORY[0x29C257E70](v35, 0x1000C4052888210);
  }

  v36 = *(this + 14);
  *(this + 14) = 0;
  if (v36)
  {
    MEMORY[0x29C257E70](v36, 0x1000C4052888210);
  }

  v37 = *(this + 13);
  *(this + 13) = 0;
  if (v37)
  {
    MEMORY[0x29C257E70](v37, 0x1000C4052888210);
  }

  v38 = *(this + 12);
  *(this + 12) = 0;
  if (v38)
  {
    MEMORY[0x29C257E70](v38, 0x1000C4052888210);
  }

  v39 = *(this + 9);
  if (v39)
  {
    *(this + 10) = v39;
    operator delete(v39);
  }

  v40 = *(this + 8);
  *(this + 8) = 0;
  if (v40)
  {
    MEMORY[0x29C257E70](v40, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsStartDataCallReq_SDK::~ARI_IBICallPsStartDataCallReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsStartDataCallReq_SDK::pack(AriSdk::ARI_IBICallPsStartDataCallReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    v8 = !v6 || v6 == v7;
    if (v8 || (result = AriMsg::pack(*(this + 6), 4, v6, v7 - v6, 0), !result))
    {
      v9 = *(this + 12);
      if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 4uLL, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 8, v10, 4uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 10, v11, 4uLL, 0), !result))
          {
            v12 = *(this + 15);
            if (!v12 || (result = AriMsg::pack(*(this + 6), 11, v12, 4uLL, 0), !result))
            {
              v13 = *(this + 16);
              if (!v13 || (result = AriMsg::pack(*(this + 6), 12, v13, 4uLL, 0), !result))
              {
                v14 = *(this + 17);
                if (!v14 || (result = AriMsg::pack(*(this + 6), 13, v14, 4uLL, 0), !result))
                {
                  v15 = *(this + 18);
                  if (!v15 || (result = AriMsg::pack(*(this + 6), 14, v15, 4uLL, 0), !result))
                  {
                    v16 = *(this + 19);
                    if (!v16 || (result = AriMsg::pack(*(this + 6), 15, v16, 4uLL, 0), !result))
                    {
                      v17 = *(this + 20);
                      if (!v17 || (result = AriMsg::pack(*(this + 6), 16, v17, 4uLL, 0), !result))
                      {
                        v18 = *(this + 21);
                        if (!v18 || (result = AriMsg::pack(*(this + 6), 17, v18, 4uLL, 0), !result))
                        {
                          v19 = *(this + 22);
                          if (!v19 || (result = AriMsg::pack(*(this + 6), 18, v19, 4uLL, 0), !result))
                          {
                            v20 = *(this + 23);
                            if (!v20 || (result = AriMsg::pack(*(this + 6), 19, v20, 4uLL, 0), !result))
                            {
                              v21 = *(this + 24);
                              if (!v21 || (result = AriMsg::pack(*(this + 6), 20, v21, 4uLL, 0), !result))
                              {
                                v22 = *(this + 25);
                                if (!v22 || (result = AriMsg::pack(*(this + 6), 21, v22, 4uLL, 0), !result))
                                {
                                  v23 = *(this + 26);
                                  if (!v23 || (result = AriMsg::pack(*(this + 6), 22, v23, 4uLL, 0), !result))
                                  {
                                    v24 = *(this + 27);
                                    if (!v24 || (result = AriMsg::pack(*(this + 6), 23, v24, 4uLL, 0), !result))
                                    {
                                      v25 = *(this + 28);
                                      if (!v25 || (result = AriMsg::pack(*(this + 6), 24, v25, 4uLL, 0), !result))
                                      {
                                        v26 = *(this + 29);
                                        if (!v26 || (v27 = *(this + 30), v26 == v27) || (result = AriMsg::pack(*(this + 6), 29, v26, v27 - v26, 0), !result))
                                        {
                                          v28 = *(this + 32);
                                          if (!v28 || (v29 = *(this + 33), v28 == v29) || (result = AriMsg::pack(*(this + 6), 30, v28, v29 - v28, 0), !result))
                                          {
                                            v30 = *(this + 35);
                                            if (!v30 || (result = AriMsg::pack(*(this + 6), 31, v30, 4uLL, 0), !result))
                                            {
                                              v31 = *(this + 36);
                                              if (!v31 || (result = AriMsg::pack(*(this + 6), 34, v31, 4uLL, 0), !result))
                                              {
                                                v32 = *(this + 37);
                                                if (!v32 || (result = AriMsg::pack(*(this + 6), 35, v32, 0x48uLL, 0), !result))
                                                {
                                                  v33 = *(this + 38);
                                                  if (!v33 || (result = AriMsg::pack(*(this + 6), 36, v33, 4uLL, 0), !result))
                                                  {
                                                    v34 = *(this + 39);
                                                    if (!v34 || (result = AriMsg::pack(*(this + 6), 37, v34, 4uLL, 0), !result))
                                                    {
                                                      v35 = *(this + 40);
                                                      if (!v35 || (result = AriMsg::pack(*(this + 6), 38, v35, 0x48uLL, 0), !result))
                                                      {
                                                        v36 = *(this + 41);
                                                        if (!v36 || (result = AriMsg::pack(*(this + 6), 39, v36, 0x24uLL, 0), !result))
                                                        {
                                                          v37 = *(this + 42);
                                                          if (!v37 || (result = AriMsg::pack(*(this + 6), 40, v37, 0x28uLL, 0), !result))
                                                          {
                                                            v38 = *(this + 43);
                                                            if (!v38 || (result = AriMsg::pack(*(this + 6), 41, v38, 4uLL, 0), !result))
                                                            {
                                                              v39 = *(this + 44);
                                                              if (!v39 || (result = AriMsg::pack(*(this + 6), 42, v39, 4uLL, 0), !result))
                                                              {
                                                                v40 = *(this + 45);
                                                                if (!v40 || (result = AriMsg::pack(*(this + 6), 43, v40, 0xAuLL, 0), !result))
                                                                {
                                                                  v41 = *(this + 46);
                                                                  if (!v41 || (result = AriMsg::pack(*(this + 6), 44, v41, 0x100uLL, 0), !result))
                                                                  {
                                                                    v42 = *(this + 47);
                                                                    if (!v42 || (result = AriMsg::pack(*(this + 6), 45, v42, 1uLL, 0), !result))
                                                                    {
                                                                      v43 = *(this + 48);
                                                                      if (!v43 || (result = AriMsg::pack(*(this + 6), 46, v43, 4uLL, 0), !result))
                                                                      {
                                                                        v44 = *(this + 49);
                                                                        if (!v44 || (result = AriMsg::pack(*(this + 6), 47, v44, 1uLL, 0), !result))
                                                                        {
                                                                          v45 = *(this + 50);
                                                                          if (!v45 || (result = AriMsg::pack(*(this + 6), 48, v45, 4uLL, 0), !result))
                                                                          {
                                                                            v46 = *(this + 51);
                                                                            if (!v46 || (result = AriMsg::pack(*(this + 6), 49, v46, 4uLL, 0), !result))
                                                                            {
                                                                              v47 = *(this + 52);
                                                                              if (!v47 || (result = AriMsg::pack(*(this + 6), 50, v47, 4uLL, 0), !result))
                                                                              {
                                                                                result = 0;
                                                                                *a2 = *(this + 6);
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsStartDataCallRspCb_SDK::ARI_IBICallPsStartDataCallRspCb_SDK(AriSdk::ARI_IBICallPsStartDataCallRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 218169344, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 218169344, 0);
}

void AriSdk::ARI_IBICallPsStartDataCallRspCb_SDK::ARI_IBICallPsStartDataCallRspCb_SDK(AriSdk::ARI_IBICallPsStartDataCallRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsStartDataCallRspCb_SDK::~ARI_IBICallPsStartDataCallRspCb_SDK(AriSdk::ARI_IBICallPsStartDataCallRspCb_SDK *this)
{
  *this = &unk_2A1D206B0;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4000313F17);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsStartDataCallRspCb_SDK::~ARI_IBICallPsStartDataCallRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsStartDataCallRspCb_SDK::pack(AriSdk::ARI_IBICallPsStartDataCallRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 8uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsStatusInd_SDK::ARI_IBICallPsStatusInd_SDK(AriSdk::ARI_IBICallPsStatusInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 227213312, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 227213312, 0);
}

void AriSdk::ARI_IBICallPsStatusInd_SDK::ARI_IBICallPsStatusInd_SDK(AriSdk::ARI_IBICallPsStatusInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsStatusInd_SDK::~ARI_IBICallPsStatusInd_SDK(AriSdk::ARI_IBICallPsStatusInd_SDK *this)
{
  *this = &unk_2A1D206E8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsStatusInd_SDK::~ARI_IBICallPsStatusInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsStatusInd_SDK::pack(AriSdk::ARI_IBICallPsStatusInd_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsStopBandwidthEstimationReq_SDK::ARI_IBICallPsStopBandwidthEstimationReq_SDK(AriSdk::ARI_IBICallPsStopBandwidthEstimationReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 212008960, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 212008960, 0);
}

void AriSdk::ARI_IBICallPsStopBandwidthEstimationReq_SDK::ARI_IBICallPsStopBandwidthEstimationReq_SDK(AriSdk::ARI_IBICallPsStopBandwidthEstimationReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsStopBandwidthEstimationReq_SDK::~ARI_IBICallPsStopBandwidthEstimationReq_SDK(AriSdk::ARI_IBICallPsStopBandwidthEstimationReq_SDK *this)
{
  *this = &unk_2A1D20720;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsStopBandwidthEstimationReq_SDK::~ARI_IBICallPsStopBandwidthEstimationReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsStopBandwidthEstimationReq_SDK::pack(AriSdk::ARI_IBICallPsStopBandwidthEstimationReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBICallPsStopBandwidthEstimationRspCb_SDK::ARI_IBICallPsStopBandwidthEstimationRspCb_SDK(AriSdk::ARI_IBICallPsStopBandwidthEstimationRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220397568, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220397568, 0);
}

void AriSdk::ARI_IBICallPsStopBandwidthEstimationRspCb_SDK::ARI_IBICallPsStopBandwidthEstimationRspCb_SDK(AriSdk::ARI_IBICallPsStopBandwidthEstimationRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsStopBandwidthEstimationRspCb_SDK::~ARI_IBICallPsStopBandwidthEstimationRspCb_SDK(AriSdk::ARI_IBICallPsStopBandwidthEstimationRspCb_SDK *this)
{
  *this = &unk_2A1D20758;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsStopBandwidthEstimationRspCb_SDK::~ARI_IBICallPsStopBandwidthEstimationRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsStopBandwidthEstimationRspCb_SDK::pack(AriSdk::ARI_IBICallPsStopBandwidthEstimationRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBICallPsStopDataCallReq_SDK::ARI_IBICallPsStopDataCallReq_SDK(AriSdk::ARI_IBICallPsStopDataCallReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 209813504, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 209813504, 0);
}

void AriSdk::ARI_IBICallPsStopDataCallReq_SDK::ARI_IBICallPsStopDataCallReq_SDK(AriSdk::ARI_IBICallPsStopDataCallReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsStopDataCallReq_SDK::~ARI_IBICallPsStopDataCallReq_SDK(AriSdk::ARI_IBICallPsStopDataCallReq_SDK *this)
{
  *this = &unk_2A1D20790;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsStopDataCallReq_SDK::~ARI_IBICallPsStopDataCallReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsStopDataCallReq_SDK::pack(AriSdk::ARI_IBICallPsStopDataCallReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsStopDataCallRspCb_SDK::ARI_IBICallPsStopDataCallRspCb_SDK(AriSdk::ARI_IBICallPsStopDataCallRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 218202112, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 218202112, 0);
}

void AriSdk::ARI_IBICallPsStopDataCallRspCb_SDK::ARI_IBICallPsStopDataCallRspCb_SDK(AriSdk::ARI_IBICallPsStopDataCallRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsStopDataCallRspCb_SDK::~ARI_IBICallPsStopDataCallRspCb_SDK(AriSdk::ARI_IBICallPsStopDataCallRspCb_SDK *this)
{
  *this = &unk_2A1D207C8;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4000313F17);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsStopDataCallRspCb_SDK::~ARI_IBICallPsStopDataCallRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsStopDataCallRspCb_SDK::pack(AriSdk::ARI_IBICallPsStopDataCallRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 8uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsSuspendIndCb_SDK::ARI_IBICallPsSuspendIndCb_SDK(AriSdk::ARI_IBICallPsSuspendIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 226623488, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 226623488, 0);
}

void AriSdk::ARI_IBICallPsSuspendIndCb_SDK::ARI_IBICallPsSuspendIndCb_SDK(AriSdk::ARI_IBICallPsSuspendIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsSuspendIndCb_SDK::~ARI_IBICallPsSuspendIndCb_SDK(AriSdk::ARI_IBICallPsSuspendIndCb_SDK *this)
{
  *this = &unk_2A1D20800;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsSuspendIndCb_SDK::~ARI_IBICallPsSuspendIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsSuspendIndCb_SDK::pack(AriSdk::ARI_IBICallPsSuspendIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsSymptomsInfoReq_SDK::ARI_IBICallPsSymptomsInfoReq_SDK(AriSdk::ARI_IBICallPsSymptomsInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 212107264, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 212107264, 0);
}

void AriSdk::ARI_IBICallPsSymptomsInfoReq_SDK::ARI_IBICallPsSymptomsInfoReq_SDK(AriSdk::ARI_IBICallPsSymptomsInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsSymptomsInfoReq_SDK::~ARI_IBICallPsSymptomsInfoReq_SDK(AriSdk::ARI_IBICallPsSymptomsInfoReq_SDK *this)
{
  *this = &unk_2A1D20838;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4000313F17);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsSymptomsInfoReq_SDK::~ARI_IBICallPsSymptomsInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsSymptomsInfoReq_SDK::pack(AriSdk::ARI_IBICallPsSymptomsInfoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 8uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      if (v7)
      {
        v9 = v7 == v8;
      }

      else
      {
        v9 = 1;
      }

      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsSymptomsInfoReq_SDK::unpack(AriSdk::ARI_IBICallPsSymptomsInfoReq_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_2960815F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  MEMORY[0x29C257E50](v29, v28);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBICallPsSymptomsInfoRsp_SDK::ARI_IBICallPsSymptomsInfoRsp_SDK(AriSdk::ARI_IBICallPsSymptomsInfoRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220495872, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220495872, 0);
}

void AriSdk::ARI_IBICallPsSymptomsInfoRsp_SDK::ARI_IBICallPsSymptomsInfoRsp_SDK(AriSdk::ARI_IBICallPsSymptomsInfoRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsSymptomsInfoRsp_SDK::~ARI_IBICallPsSymptomsInfoRsp_SDK(AriSdk::ARI_IBICallPsSymptomsInfoRsp_SDK *this)
{
  *this = &unk_2A1D20870;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsSymptomsInfoRsp_SDK::~ARI_IBICallPsSymptomsInfoRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsSymptomsInfoRsp_SDK::pack(AriSdk::ARI_IBICallPsSymptomsInfoRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 2uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsSymptomsInfoInd_SDK::ARI_IBICallPsSymptomsInfoInd_SDK(AriSdk::ARI_IBICallPsSymptomsInfoInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 228884480, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 228884480, 0);
}

void AriSdk::ARI_IBICallPsSymptomsInfoInd_SDK::ARI_IBICallPsSymptomsInfoInd_SDK(AriSdk::ARI_IBICallPsSymptomsInfoInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsSymptomsInfoInd_SDK::~ARI_IBICallPsSymptomsInfoInd_SDK(AriSdk::ARI_IBICallPsSymptomsInfoInd_SDK *this)
{
  *this = &unk_2A1D208A8;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4000313F17);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsSymptomsInfoInd_SDK::~ARI_IBICallPsSymptomsInfoInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsSymptomsInfoInd_SDK::pack(AriSdk::ARI_IBICallPsSymptomsInfoInd_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 8uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      if (v7)
      {
        v9 = v7 == v8;
      }

      else
      {
        v9 = 1;
      }

      if (v9 || (result = AriMsg::pack(*(this + 6), 3, v7, v8 - v7, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void sub_296081EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBICallPsTrafficClassInfo_SDK::ARI_IBICallPsTrafficClassInfo_SDK(AriSdk::ARI_IBICallPsTrafficClassInfo_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 210108416, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 210108416, 0);
}

void AriSdk::ARI_IBICallPsTrafficClassInfo_SDK::ARI_IBICallPsTrafficClassInfo_SDK(AriSdk::ARI_IBICallPsTrafficClassInfo_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsTrafficClassInfo_SDK::~ARI_IBICallPsTrafficClassInfo_SDK(AriSdk::ARI_IBICallPsTrafficClassInfo_SDK *this)
{
  *this = &unk_2A1D208E0;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4027586B93);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40451B5BE8);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsTrafficClassInfo_SDK::~ARI_IBICallPsTrafficClassInfo_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsTrafficClassInfo_SDK::pack(AriSdk::ARI_IBICallPsTrafficClassInfo_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x10uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x1CuLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_SDK::ARI_IBICallPsTrafficClassInfoRspCb_SDK(AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 218497024, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 218497024, 0);
}

void AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_SDK::ARI_IBICallPsTrafficClassInfoRspCb_SDK(AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_SDK::~ARI_IBICallPsTrafficClassInfoRspCb_SDK(AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_SDK *this)
{
  *this = &unk_2A1D20918;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_SDK::~ARI_IBICallPsTrafficClassInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_SDK::pack(AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsTrafficClassInfo_V2_SDK::ARI_IBICallPsTrafficClassInfo_V2_SDK(AriSdk::ARI_IBICallPsTrafficClassInfo_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 210632704, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 210632704, 0);
}

void AriSdk::ARI_IBICallPsTrafficClassInfo_V2_SDK::ARI_IBICallPsTrafficClassInfo_V2_SDK(AriSdk::ARI_IBICallPsTrafficClassInfo_V2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsTrafficClassInfo_V2_SDK::~ARI_IBICallPsTrafficClassInfo_V2_SDK(AriSdk::ARI_IBICallPsTrafficClassInfo_V2_SDK *this)
{
  *this = &unk_2A1D20950;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsTrafficClassInfo_V2_SDK::~ARI_IBICallPsTrafficClassInfo_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsTrafficClassInfo_V2_SDK::pack(AriSdk::ARI_IBICallPsTrafficClassInfo_V2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    if (v6)
    {
      v8 = v6 == v7;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || (result = AriMsg::pack(*(this + 6), 3, v6, v7 - v6, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void sub_296082B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,1024ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x401)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 1024;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 1024);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296082D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_V2_SDK::ARI_IBICallPsTrafficClassInfoRspCb_V2_SDK(AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 219021312, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 219021312, 0);
}

void AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_V2_SDK::ARI_IBICallPsTrafficClassInfoRspCb_V2_SDK(AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_V2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_V2_SDK::~ARI_IBICallPsTrafficClassInfoRspCb_V2_SDK(AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_V2_SDK *this)
{
  *this = &unk_2A1D20988;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_V2_SDK::~ARI_IBICallPsTrafficClassInfoRspCb_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_V2_SDK::pack(AriSdk::ARI_IBICallPsTrafficClassInfoRspCb_V2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsTransmitStateIndCb_SDK::ARI_IBICallPsTransmitStateIndCb_SDK(AriSdk::ARI_IBICallPsTransmitStateIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 227016704, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 227016704, 0);
}

void AriSdk::ARI_IBICallPsTransmitStateIndCb_SDK::ARI_IBICallPsTransmitStateIndCb_SDK(AriSdk::ARI_IBICallPsTransmitStateIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsTransmitStateIndCb_SDK::~ARI_IBICallPsTransmitStateIndCb_SDK(AriSdk::ARI_IBICallPsTransmitStateIndCb_SDK *this)
{
  *this = &unk_2A1D209C0;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsTransmitStateIndCb_SDK::~ARI_IBICallPsTransmitStateIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsTransmitStateIndCb_SDK::pack(AriSdk::ARI_IBICallPsTransmitStateIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsTransmitStateReq_SDK::ARI_IBICallPsTransmitStateReq_SDK(AriSdk::ARI_IBICallPsTransmitStateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211320832, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211320832, 0);
}

void AriSdk::ARI_IBICallPsTransmitStateReq_SDK::ARI_IBICallPsTransmitStateReq_SDK(AriSdk::ARI_IBICallPsTransmitStateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsTransmitStateReq_SDK::~ARI_IBICallPsTransmitStateReq_SDK(AriSdk::ARI_IBICallPsTransmitStateReq_SDK *this)
{
  *this = &unk_2A1D209F8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsTransmitStateReq_SDK::~ARI_IBICallPsTransmitStateReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsTransmitStateReq_SDK::pack(AriSdk::ARI_IBICallPsTransmitStateReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK::ARI_IBICallPsTransmitStateRspCb_SDK(AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 219709440, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 219709440, 0);
}

void AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK::ARI_IBICallPsTransmitStateRspCb_SDK(AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK::~ARI_IBICallPsTransmitStateRspCb_SDK(AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK *this)
{
  *this = &unk_2A1D20A30;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK::~ARI_IBICallPsTransmitStateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK::pack(AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsUpdateNaiReq_SDK::ARI_IBICallPsUpdateNaiReq_SDK(AriSdk::ARI_IBICallPsUpdateNaiReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 210370560, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 210370560, 0);
}

void AriSdk::ARI_IBICallPsUpdateNaiReq_SDK::ARI_IBICallPsUpdateNaiReq_SDK(AriSdk::ARI_IBICallPsUpdateNaiReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsUpdateNaiReq_SDK::~ARI_IBICallPsUpdateNaiReq_SDK(AriSdk::ARI_IBICallPsUpdateNaiReq_SDK *this)
{
  *this = &unk_2A1D20A68;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsUpdateNaiReq_SDK::~ARI_IBICallPsUpdateNaiReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsUpdateNaiReq_SDK::pack(AriSdk::ARI_IBICallPsUpdateNaiReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    v8 = !v6 || v6 == v7;
    if (v8 || (result = AriMsg::pack(*(this + 6), 3, v6, v7 - v6, 0), !result))
    {
      v9 = *(this + 12);
      v10 = *(this + 13);
      v11 = !v9 || v9 == v10;
      if (v11 || (result = AriMsg::pack(*(this + 6), 4, v9, v10 - v9, 0), !result))
      {
        v12 = *(this + 15);
        if (!v12 || (result = AriMsg::pack(*(this + 6), 5, v12, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsUpdateNaiRspCb_SDK::ARI_IBICallPsUpdateNaiRspCb_SDK(AriSdk::ARI_IBICallPsUpdateNaiRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 218759168, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 218759168, 0);
}

void AriSdk::ARI_IBICallPsUpdateNaiRspCb_SDK::ARI_IBICallPsUpdateNaiRspCb_SDK(AriSdk::ARI_IBICallPsUpdateNaiRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsUpdateNaiRspCb_SDK::~ARI_IBICallPsUpdateNaiRspCb_SDK(AriSdk::ARI_IBICallPsUpdateNaiRspCb_SDK *this)
{
  *this = &unk_2A1D20AA0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsUpdateNaiRspCb_SDK::~ARI_IBICallPsUpdateNaiRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsUpdateNaiRspCb_SDK::pack(AriSdk::ARI_IBICallPsUpdateNaiRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsVoLTECodecReq_SDK::ARI_IBICallPsVoLTECodecReq_SDK(AriSdk::ARI_IBICallPsVoLTECodecReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211419136, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211419136, 0);
}

void AriSdk::ARI_IBICallPsVoLTECodecReq_SDK::ARI_IBICallPsVoLTECodecReq_SDK(AriSdk::ARI_IBICallPsVoLTECodecReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsVoLTECodecReq_SDK::~ARI_IBICallPsVoLTECodecReq_SDK(AriSdk::ARI_IBICallPsVoLTECodecReq_SDK *this)
{
  *this = &unk_2A1D20AD8;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsVoLTECodecReq_SDK::~ARI_IBICallPsVoLTECodecReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsVoLTECodecReq_SDK::pack(AriSdk::ARI_IBICallPsVoLTECodecReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 4uLL, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsVoLTECodecRspCb_SDK::ARI_IBICallPsVoLTECodecRspCb_SDK(AriSdk::ARI_IBICallPsVoLTECodecRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 219807744, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 219807744, 0);
}

void AriSdk::ARI_IBICallPsVoLTECodecRspCb_SDK::ARI_IBICallPsVoLTECodecRspCb_SDK(AriSdk::ARI_IBICallPsVoLTECodecRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsVoLTECodecRspCb_SDK::~ARI_IBICallPsVoLTECodecRspCb_SDK(AriSdk::ARI_IBICallPsVoLTECodecRspCb_SDK *this)
{
  *this = &unk_2A1D20B10;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsVoLTECodecRspCb_SDK::~ARI_IBICallPsVoLTECodecRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsVoLTECodecRspCb_SDK::pack(AriSdk::ARI_IBICallPsVoLTECodecRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsVoiceLQMLinkStateInd_SDK::ARI_IBICallPsVoiceLQMLinkStateInd_SDK(AriSdk::ARI_IBICallPsVoiceLQMLinkStateInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 226689024, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 226689024, 0);
}

void AriSdk::ARI_IBICallPsVoiceLQMLinkStateInd_SDK::ARI_IBICallPsVoiceLQMLinkStateInd_SDK(AriSdk::ARI_IBICallPsVoiceLQMLinkStateInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsVoiceLQMLinkStateInd_SDK::~ARI_IBICallPsVoiceLQMLinkStateInd_SDK(AriSdk::ARI_IBICallPsVoiceLQMLinkStateInd_SDK *this)
{
  *this = &unk_2A1D20B48;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsVoiceLQMLinkStateInd_SDK::~ARI_IBICallPsVoiceLQMLinkStateInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsVoiceLQMLinkStateInd_SDK::pack(AriSdk::ARI_IBICallPsVoiceLQMLinkStateInd_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsVoiceLQMStateInd_SDK::ARI_IBICallPsVoiceLQMStateInd_SDK(AriSdk::ARI_IBICallPsVoiceLQMStateInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 226852864, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 226852864, 0);
}

void AriSdk::ARI_IBICallPsVoiceLQMStateInd_SDK::ARI_IBICallPsVoiceLQMStateInd_SDK(AriSdk::ARI_IBICallPsVoiceLQMStateInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsVoiceLQMStateInd_SDK::~ARI_IBICallPsVoiceLQMStateInd_SDK(AriSdk::ARI_IBICallPsVoiceLQMStateInd_SDK *this)
{
  *this = &unk_2A1D20B80;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40A86A77D5);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsVoiceLQMStateInd_SDK::~ARI_IBICallPsVoiceLQMStateInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsVoiceLQMStateInd_SDK::pack(AriSdk::ARI_IBICallPsVoiceLQMStateInd_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 0x14uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (v11 = *(this + 14), v10 == v11) || (result = AriMsg::pack(*(this + 6), 6, v10, v11 - v10, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2960859D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBICallPsVoipAppInfoReq_SDK::ARI_IBICallPsVoipAppInfoReq_SDK(AriSdk::ARI_IBICallPsVoipAppInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 210305024, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 210305024, 0);
}

void AriSdk::ARI_IBICallPsVoipAppInfoReq_SDK::ARI_IBICallPsVoipAppInfoReq_SDK(AriSdk::ARI_IBICallPsVoipAppInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsVoipAppInfoReq_SDK::~ARI_IBICallPsVoipAppInfoReq_SDK(AriSdk::ARI_IBICallPsVoipAppInfoReq_SDK *this)
{
  *this = &unk_2A1D20BB8;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsVoipAppInfoReq_SDK::~ARI_IBICallPsVoipAppInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsVoipAppInfoReq_SDK::pack(AriSdk::ARI_IBICallPsVoipAppInfoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsVoipAppInfoRspCb_SDK::ARI_IBICallPsVoipAppInfoRspCb_SDK(AriSdk::ARI_IBICallPsVoipAppInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 218693632, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 218693632, 0);
}

void AriSdk::ARI_IBICallPsVoipAppInfoRspCb_SDK::ARI_IBICallPsVoipAppInfoRspCb_SDK(AriSdk::ARI_IBICallPsVoipAppInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsVoipAppInfoRspCb_SDK::~ARI_IBICallPsVoipAppInfoRspCb_SDK(AriSdk::ARI_IBICallPsVoipAppInfoRspCb_SDK *this)
{
  *this = &unk_2A1D20BF0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsVoipAppInfoRspCb_SDK::~ARI_IBICallPsVoipAppInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsVoipAppInfoRspCb_SDK::pack(AriSdk::ARI_IBICallPsVoipAppInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsWiFiAssociationStatusReq_SDK::ARI_IBICallPsWiFiAssociationStatusReq_SDK(AriSdk::ARI_IBICallPsWiFiAssociationStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211386368, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211386368, 0);
}

void AriSdk::ARI_IBICallPsWiFiAssociationStatusReq_SDK::ARI_IBICallPsWiFiAssociationStatusReq_SDK(AriSdk::ARI_IBICallPsWiFiAssociationStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsWiFiAssociationStatusReq_SDK::~ARI_IBICallPsWiFiAssociationStatusReq_SDK(AriSdk::ARI_IBICallPsWiFiAssociationStatusReq_SDK *this)
{
  *this = &unk_2A1D20C28;
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 10);
  if (v6)
  {
    *(this + 11) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsWiFiAssociationStatusReq_SDK::~ARI_IBICallPsWiFiAssociationStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsWiFiAssociationStatusReq_SDK::pack(AriSdk::ARI_IBICallPsWiFiAssociationStatusReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      v9 = !v7 || v7 == v8;
      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 1uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (v12 = *(this + 15), v11 == v12) || (result = AriMsg::pack(*(this + 6), 6, v11, v12 - v11, 0), !result))
          {
            v13 = *(this + 17);
            if (!v13 || (result = AriMsg::pack(*(this + 6), 7, v13, 1uLL, 0), !result))
            {
              v14 = *(this + 18);
              if (!v14 || (result = AriMsg::pack(*(this + 6), 8, v14, 1uLL, 0), !result))
              {
                result = 0;
                *a2 = *(this + 6);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsWiFiAssociationStatusReq_SDK::unpack(AriSdk::ARI_IBICallPsWiFiAssociationStatusReq_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

std::vector<int> *AriSdk::TlvArray<char,6ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 7)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 6;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 6);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296086EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICallPsWiFiAssociationStatusRspCb_SDK::ARI_IBICallPsWiFiAssociationStatusRspCb_SDK(AriSdk::ARI_IBICallPsWiFiAssociationStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 219774976, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 219774976, 0);
}

void AriSdk::ARI_IBICallPsWiFiAssociationStatusRspCb_SDK::ARI_IBICallPsWiFiAssociationStatusRspCb_SDK(AriSdk::ARI_IBICallPsWiFiAssociationStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsWiFiAssociationStatusRspCb_SDK::~ARI_IBICallPsWiFiAssociationStatusRspCb_SDK(AriSdk::ARI_IBICallPsWiFiAssociationStatusRspCb_SDK *this)
{
  *this = &unk_2A1D20C60;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsWiFiAssociationStatusRspCb_SDK::~ARI_IBICallPsWiFiAssociationStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsWiFiAssociationStatusRspCb_SDK::pack(AriSdk::ARI_IBICallPsWiFiAssociationStatusRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsWrmSAInfoReq_SDK::ARI_IBICallPsWrmSAInfoReq_SDK(AriSdk::ARI_IBICallPsWrmSAInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 212074496, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 212074496, 0);
}

void AriSdk::ARI_IBICallPsWrmSAInfoReq_SDK::ARI_IBICallPsWrmSAInfoReq_SDK(AriSdk::ARI_IBICallPsWrmSAInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsWrmSAInfoReq_SDK::~ARI_IBICallPsWrmSAInfoReq_SDK(AriSdk::ARI_IBICallPsWrmSAInfoReq_SDK *this)
{
  *this = &unk_2A1D20C98;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsWrmSAInfoReq_SDK::~ARI_IBICallPsWrmSAInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsWrmSAInfoReq_SDK::pack(AriSdk::ARI_IBICallPsWrmSAInfoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsWrmSAInfoRsp_SDK::ARI_IBICallPsWrmSAInfoRsp_SDK(AriSdk::ARI_IBICallPsWrmSAInfoRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220463104, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220463104, 0);
}

void AriSdk::ARI_IBICallPsWrmSAInfoRsp_SDK::ARI_IBICallPsWrmSAInfoRsp_SDK(AriSdk::ARI_IBICallPsWrmSAInfoRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsWrmSAInfoRsp_SDK::~ARI_IBICallPsWrmSAInfoRsp_SDK(AriSdk::ARI_IBICallPsWrmSAInfoRsp_SDK *this)
{
  *this = &unk_2A1D20CD0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsWrmSAInfoRsp_SDK::~ARI_IBICallPsWrmSAInfoRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsWrmSAInfoRsp_SDK::pack(AriSdk::ARI_IBICallPsWrmSAInfoRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 2uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsWrmSdmInfoReq_SDK::ARI_IBICallPsWrmSdmInfoReq_SDK(AriSdk::ARI_IBICallPsWrmSdmInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 212041728, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 212041728, 0);
}

void AriSdk::ARI_IBICallPsWrmSdmInfoReq_SDK::ARI_IBICallPsWrmSdmInfoReq_SDK(AriSdk::ARI_IBICallPsWrmSdmInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsWrmSdmInfoReq_SDK::~ARI_IBICallPsWrmSdmInfoReq_SDK(AriSdk::ARI_IBICallPsWrmSdmInfoReq_SDK *this)
{
  *this = &unk_2A1D20D08;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40789AEA99);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40451B5BE8);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsWrmSdmInfoReq_SDK::~ARI_IBICallPsWrmSdmInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsWrmSdmInfoReq_SDK::pack(AriSdk::ARI_IBICallPsWrmSdmInfoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x10uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 7, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 8, v10, 8uLL, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsWrmSdmInfoRsp_SDK::ARI_IBICallPsWrmSdmInfoRsp_SDK(AriSdk::ARI_IBICallPsWrmSdmInfoRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220430336, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220430336, 0);
}

void AriSdk::ARI_IBICallPsWrmSdmInfoRsp_SDK::ARI_IBICallPsWrmSdmInfoRsp_SDK(AriSdk::ARI_IBICallPsWrmSdmInfoRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsWrmSdmInfoRsp_SDK::~ARI_IBICallPsWrmSdmInfoRsp_SDK(AriSdk::ARI_IBICallPsWrmSdmInfoRsp_SDK *this)
{
  *this = &unk_2A1D20D40;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsWrmSdmInfoRsp_SDK::~ARI_IBICallPsWrmSdmInfoRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsWrmSdmInfoRsp_SDK::pack(AriSdk::ARI_IBICallPsWrmSdmInfoRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 2uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK::ARI_IBICallPsWrmSdmInfoReq_V2_SDK(AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 212140032, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 212140032, 0);
}

void AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK::ARI_IBICallPsWrmSdmInfoReq_V2_SDK(AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK::~ARI_IBICallPsWrmSdmInfoReq_V2_SDK(AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK *this)
{
  *this = &unk_2A1D20D78;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40789AEA99);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40451B5BE8);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK::~ARI_IBICallPsWrmSdmInfoReq_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK::pack(AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 0x10uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 8uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220528640, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220528640, 0);
}

void AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::~ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK *this)
{
  *this = &unk_2A1D20DB0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::~ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::pack(AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 2uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoReq_SDK::ARI_IBICallPsWrmSdmLocationDBInfoReq_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 212172800, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 212172800, 0);
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoReq_SDK::ARI_IBICallPsWrmSdmLocationDBInfoReq_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoReq_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoReq_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoReq_SDK *this)
{
  *this = &unk_2A1D20DE8;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40A86A77D5);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40A86A77D5);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40A86A77D5);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40A86A77D5);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4000313F17);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4000313F17);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoReq_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoReq_SDK::pack(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 8uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 8uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x14uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x14uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 0x14uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 0x14uLL, 0), !result))
                {
                  result = 0;
                  *a2 = *(this + 6);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK::ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220561408, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220561408, 0);
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK::ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK *this)
{
  *this = &unk_2A1D20E20;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK::pack(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK::ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 228950016, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 228950016, 0);
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK::ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK::~ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK *this)
{
  *this = &unk_2A1D20E58;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4000313F17);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK::~ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK::pack(AriSdk::ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 8uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 8uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegReq_SDK::ARI_IBICallPsWrmSdmLocationDBInfoRegReq_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 212205568, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 212205568, 0);
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegReq_SDK::ARI_IBICallPsWrmSdmLocationDBInfoRegReq_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegReq_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoRegReq_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegReq_SDK *this)
{
  *this = &unk_2A1D20E90;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegReq_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoRegReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegReq_SDK::pack(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK::ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220594176, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220594176, 0);
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK::ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK *this)
{
  *this = &unk_2A1D20EC8;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK::pack(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK::ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 228917248, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 228917248, 0);
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK::ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK *this)
{
  *this = &unk_2A1D20F00;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK::pack(AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIMsCallPsAONConfigReq_SDK::ARI_IBIMsCallPsAONConfigReq_SDK(AriSdk::ARI_IBIMsCallPsAONConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 212271104, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 212271104, 0);
}

void AriSdk::ARI_IBIMsCallPsAONConfigReq_SDK::ARI_IBIMsCallPsAONConfigReq_SDK(AriSdk::ARI_IBIMsCallPsAONConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsCallPsAONConfigReq_SDK::~ARI_IBIMsCallPsAONConfigReq_SDK(AriSdk::ARI_IBIMsCallPsAONConfigReq_SDK *this)
{
  *this = &unk_2A1D20F38;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMsCallPsAONConfigReq_SDK::~ARI_IBIMsCallPsAONConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsCallPsAONConfigReq_SDK::pack(AriSdk::ARI_IBIMsCallPsAONConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void sub_29608ACF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v10, v11);
  _Unwind_Resume(a1);
}

AriOsa *AriSdk::TlvArray<IBICallPsAONFilterInfo,8ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 1) - *a2) >> 2) < 9)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 1) - *a2) >> 2);
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
      v25 = 8;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 1) - *a2) >> 2), 8);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29608AF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIMsCallPsAONConfigRspCb_SDK::ARI_IBIMsCallPsAONConfigRspCb_SDK(AriSdk::ARI_IBIMsCallPsAONConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220659712, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220659712, 0);
}

void AriSdk::ARI_IBIMsCallPsAONConfigRspCb_SDK::ARI_IBIMsCallPsAONConfigRspCb_SDK(AriSdk::ARI_IBIMsCallPsAONConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsCallPsAONConfigRspCb_SDK::~ARI_IBIMsCallPsAONConfigRspCb_SDK(AriSdk::ARI_IBIMsCallPsAONConfigRspCb_SDK *this)
{
  *this = &unk_2A1D20F70;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMsCallPsAONConfigRspCb_SDK::~ARI_IBIMsCallPsAONConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsCallPsAONConfigRspCb_SDK::pack(AriSdk::ARI_IBIMsCallPsAONConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 5, v8, v9 - v8, 0), !result))
        {
          v10 = *(this + 14);
          if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

std::vector<int> *AriSdk::TlvArray<unsigned int,8ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x21)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = (__c->n128_u64[1] - __c->n128_u64[0]) >> 2;
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 8;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 2, 8);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29608B7C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIQoELatencyReportReq_SDK::ARI_IBIQoELatencyReportReq_SDK(AriSdk::ARI_IBIQoELatencyReportReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211681280, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211681280, 0);
}

void AriSdk::ARI_IBIQoELatencyReportReq_SDK::ARI_IBIQoELatencyReportReq_SDK(AriSdk::ARI_IBIQoELatencyReportReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIQoELatencyReportReq_SDK::~ARI_IBIQoELatencyReportReq_SDK(AriSdk::ARI_IBIQoELatencyReportReq_SDK *this)
{
  *this = &unk_2A1D20FA8;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIQoELatencyReportReq_SDK::~ARI_IBIQoELatencyReportReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIQoELatencyReportReq_SDK::pack(AriSdk::ARI_IBIQoELatencyReportReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIQoELatencyReportReqRspCb_SDK::ARI_IBIQoELatencyReportReqRspCb_SDK(AriSdk::ARI_IBIQoELatencyReportReqRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220069888, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220069888, 0);
}

void AriSdk::ARI_IBIQoELatencyReportReqRspCb_SDK::ARI_IBIQoELatencyReportReqRspCb_SDK(AriSdk::ARI_IBIQoELatencyReportReqRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIQoELatencyReportReqRspCb_SDK::~ARI_IBIQoELatencyReportReqRspCb_SDK(AriSdk::ARI_IBIQoELatencyReportReqRspCb_SDK *this)
{
  *this = &unk_2A1D20FE0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIQoELatencyReportReqRspCb_SDK::~ARI_IBIQoELatencyReportReqRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIQoELatencyReportReqRspCb_SDK::pack(AriSdk::ARI_IBIQoELatencyReportReqRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIQoEQueryReq_SDK::ARI_IBIQoEQueryReq_SDK(AriSdk::ARI_IBIQoEQueryReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211714048, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211714048, 0);
}

void AriSdk::ARI_IBIQoEQueryReq_SDK::ARI_IBIQoEQueryReq_SDK(AriSdk::ARI_IBIQoEQueryReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIQoEQueryReq_SDK::~ARI_IBIQoEQueryReq_SDK(AriSdk::ARI_IBIQoEQueryReq_SDK *this)
{
  *this = &unk_2A1D21018;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIQoEQueryReq_SDK::~ARI_IBIQoEQueryReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIQoEQueryReq_SDK::pack(AriSdk::ARI_IBIQoEQueryReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIQoEQueryRspCb_SDK::ARI_IBIQoEQueryRspCb_SDK(AriSdk::ARI_IBIQoEQueryRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220102656, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220102656, 0);
}

void AriSdk::ARI_IBIQoEQueryRspCb_SDK::ARI_IBIQoEQueryRspCb_SDK(AriSdk::ARI_IBIQoEQueryRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIQoEQueryRspCb_SDK::~ARI_IBIQoEQueryRspCb_SDK(AriSdk::ARI_IBIQoEQueryRspCb_SDK *this)
{
  *this = &unk_2A1D21050;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIQoEQueryRspCb_SDK::~ARI_IBIQoEQueryRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIQoEQueryRspCb_SDK::pack(AriSdk::ARI_IBIQoEQueryRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIQoEQueryInd_SDK::ARI_IBIQoEQueryInd_SDK(AriSdk::ARI_IBIQoEQueryInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 227147776, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 227147776, 0);
}

void AriSdk::ARI_IBIQoEQueryInd_SDK::ARI_IBIQoEQueryInd_SDK(AriSdk::ARI_IBIQoEQueryInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIQoEQueryInd_SDK::~ARI_IBIQoEQueryInd_SDK(AriSdk::ARI_IBIQoEQueryInd_SDK *this)
{
  *this = &unk_2A1D21088;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIQoEQueryInd_SDK::~ARI_IBIQoEQueryInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIQoEQueryInd_SDK::pack(AriSdk::ARI_IBIQoEQueryInd_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIQoERequestReq_SDK::ARI_IBIQoERequestReq_SDK(AriSdk::ARI_IBIQoERequestReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211648512, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211648512, 0);
}

void AriSdk::ARI_IBIQoERequestReq_SDK::ARI_IBIQoERequestReq_SDK(AriSdk::ARI_IBIQoERequestReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIQoERequestReq_SDK::~ARI_IBIQoERequestReq_SDK(AriSdk::ARI_IBIQoERequestReq_SDK *this)
{
  *this = &unk_2A1D210C0;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4000313F17);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIQoERequestReq_SDK::~ARI_IBIQoERequestReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIQoERequestReq_SDK::pack(AriSdk::ARI_IBIQoERequestReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 8uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 8uLL, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIQoERequestRspCb_SDK::ARI_IBIQoERequestRspCb_SDK(AriSdk::ARI_IBIQoERequestRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220037120, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220037120, 0);
}

void AriSdk::ARI_IBIQoERequestRspCb_SDK::ARI_IBIQoERequestRspCb_SDK(AriSdk::ARI_IBIQoERequestRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIQoERequestRspCb_SDK::~ARI_IBIQoERequestRspCb_SDK(AriSdk::ARI_IBIQoERequestRspCb_SDK *this)
{
  *this = &unk_2A1D210F8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIQoERequestRspCb_SDK::~ARI_IBIQoERequestRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIQoERequestRspCb_SDK::pack(AriSdk::ARI_IBIQoERequestRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISetFilterReq_SDK::ARI_IBISetFilterReq_SDK(AriSdk::ARI_IBISetFilterReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 210010112, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 210010112, 0);
}

void AriSdk::ARI_IBISetFilterReq_SDK::ARI_IBISetFilterReq_SDK(AriSdk::ARI_IBISetFilterReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISetFilterReq_SDK::~ARI_IBISetFilterReq_SDK(AriSdk::ARI_IBISetFilterReq_SDK *this)
{
  *this = &unk_2A1D21130;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 12);
  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISetFilterReq_SDK::~ARI_IBISetFilterReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISetFilterReq_SDK::pack(AriSdk::ARI_IBISetFilterReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 1uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (v13 = *(this + 17), v12 == v13) || (result = AriMsg::pack(*(this + 6), 8, v12, v13 - v12, 0), !result))
              {
                result = 0;
                *a2 = *(this + 6);
              }
            }
          }
        }
      }
    }
  }

  return result;
}