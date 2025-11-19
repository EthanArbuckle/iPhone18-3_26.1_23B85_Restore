void sub_2724FF248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *VoiceProcessorV8::SetupDownlinkBasicAUChain(VoiceProcessorV8 *this)
{
  result = VoiceProcessorV7::SetupDownlinkBasicAUChain(this);
  *(this + 1108) = *(this + 1108) & 0xFFFFEFF8FFFFFC53 | 0x1004000002A8;
  return result;
}

uint64_t VoiceProcessorV8::SetupUplink_MS(uint64_t this, unsigned int a2)
{
  if (a2 != 1)
  {
    v2 = this;
    v3 = *(this + 4688);
    v4 = v3 | 0x800101;
    v5 = 8388895;
    if (a2 == 3)
    {
      v5 = 8388879;
    }

    v6 = v3 | v5;
    if (a2 >= 3)
    {
      v7 = a2 != 3;
    }

    else
    {
      v6 = v3 | 0x800107;
      v7 = 0;
    }

    v8 = a2 >= 3;
    if (a2)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }

    if (a2)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    if (!a2)
    {
      v8 = 0;
    }

    v11 = v9 & 0xF9FFFFFFBBFFE7FFLL;
    *(this + 4688) = v11 | 0x600000004001800;
    if ((*(this + 76) - 21) <= 1)
    {
      if (v8)
      {
        v12 = v11 | 0x600000004001A00;
      }

      else
      {
        v12 = v11 | 0x600000004001800;
      }

      if (v10)
      {
        v13 = v12 | 0x400;
      }

      else
      {
        v13 = v12;
      }

      *(this + 4688) = v13 & 0xFFBA6FFFBC7FFFFFLL | 0x45100003800000;
    }

    if ((*(this + 16568) & 1) == 0)
    {
      if ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (this = *(this + 16536)) : (this = VoiceProcessorV2::GetAutomaticChatFlavor(this)), this == 2))
      {
        if ((*(v2 + 16544) & 4) != 0)
        {
          *(v2 + 4688) |= 0x800000000000000uLL;
          if (*(v2 + 2262) == 1)
          {
            this = VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(this);
            if (this)
            {
              *(v2 + 4696) |= 4uLL;
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t VoiceProcessorV8::SetupUplink_MMNS(uint64_t this, unsigned int a2)
{
  if (a2 != 1)
  {
    v2 = *(this + 4688) & 0xFD3F8FFFFF7FFEFFLL;
    *(this + 4688) = v2 | 0x80700000800100;
    if (a2)
    {
      *(this + 4688) = v2 | 0x80700000800106;
      if (a2 >= 3)
      {
        *(this + 4688) = v2 | 0x8070000080010ELL;
        if (a2 != 3)
        {
          *(this + 4688) = v2 & 0xF9390FFCFC7FF8E1 | 0x486B0030380071ELL;
        }
      }
    }
  }

  return this;
}

void VoiceProcessorV8::InitializeDownlinkTimeFreqConverters(VoiceProcessorV8 *this)
{
  v2 = *(this + 2190);
  if (v2)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v2);
    MEMORY[0x2743CBFA0]();
    *(this + 2190) = 0;
  }

  if (*(this + 2189))
  {
    myFreeABLDynamic(this + 2189);
  }

  if ((~*(this + 2216) & 0xC0) == 0)
  {
    v3 = *(this + 37);
    v4 = *(this + 42);
    v5 = *(this + 131);
    if (v3 != v4)
    {
      v5 = vcvtpd_u64_f64(v3 * v5 / v4);
    }

    if (*(this + 488) == 1)
    {
      if (v5 / v3 >= 0.012)
      {
        v6 = v5;
      }

      else
      {
        v6 = (v3 * 0.012);
      }

      BlockSizeHelper::GetNextFFTFriendlyBlkSz(v6);
      v7 = *(this + 81);
      operator new();
    }

    VPTimeFreqConverter_Create();
  }
}

void sub_2724FF744(_Unwind_Exception *a1)
{
  BlockBuffer::Free(v2);
  MEMORY[0x2743CBFA0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<BlockProcessor>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    BlockBuffer::Free((v2 + 24));
    BlockBuffer::Free(v2);

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

uint64_t VoiceProcessorV8::Initialize(VoiceProcessorV8 *this)
{
  *(this + 102) = 0;
  v2 = *(this + 155);
  if (v2)
  {
    v3 = 0;
    do
    {
      v3 = (2 * v3) | 1;
      --v2;
    }

    while (v2);
    *(this + 102) = v3;
  }

  result = VoiceProcessorV2::Initialize(this);
  if (!result)
  {
    VoiceProcessorV4::InitializeV4Specifics(this);
  }

  return result;
}

void VoiceProcessorV8::~VoiceProcessorV8(VoiceProcessorV8 *this)
{
  VoiceProcessorV8::~VoiceProcessorV8(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B1448;
  caulk::details::lifetime_guard_base<VoiceProcessorV2>::invalidate(this + 16616);
  myFreeABLDynamic(this + 2179);
  myFreeABLDynamic(this + 2180);
  myFreeABLDynamic(this + 2181);
  myFreeABLDynamic(this + 2182);
  myFreeABLDynamic(this + 2183);
  v2 = *(this + 2190);
  if (v2)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v2);
    MEMORY[0x2743CBFA0]();
    *(this + 2190) = 0;
  }

  myFreeABLDynamic(this + 2189);
  myFreeABLDynamic(this + 2184);
  myFreeABLDynamic(this + 2185);
  myFreeABLDynamic(this + 2186);
  v3 = *(this + 2187);
  if (v3)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v3);
    MEMORY[0x2743CBFA0]();
    *(this + 2187) = 0;
  }

  myFreeABLDynamic(this + 2191);
  if ((*(this + 19) - 21) <= 1)
  {
    myFreeABLDynamic(this + 2195);
    myFreeABLDynamic(this + 2196);
    myFreeABLDynamic(this + 2197);
    myFreeABLDynamic(this + 2198);
    myFreeABLDynamic(this + 2199);
    v4 = *(this + 2200);
    if (v4)
    {
      VPTimeFreqConverter::~VPTimeFreqConverter(v4);
      MEMORY[0x2743CBFA0]();
      *(this + 2200) = 0;
    }

    v5 = *(this + 2201);
    if (v5)
    {
      VPTimeFreqConverter::~VPTimeFreqConverter(v5);
      MEMORY[0x2743CBFA0]();
      *(this + 2201) = 0;
    }

    v6 = *(this + 2202);
    if (v6)
    {
      VPTimeFreqConverter::~VPTimeFreqConverter(v6);
      MEMORY[0x2743CBFA0]();
      *(this + 2202) = 0;
    }

    v7 = *(this + 2203);
    if (v7)
    {
      VPTimeFreqConverter::~VPTimeFreqConverter(v7);
      MEMORY[0x2743CBFA0]();
      *(this + 2203) = 0;
    }
  }

  StopVPWirelessChargingMatStateListener();
  std::unique_ptr<BlockProcessor>::reset[abi:ne200100](this + 2205, 0);
  v8 = *(this + 2192);
  if (v8)
  {
    *(this + 2193) = v8;
    operator delete(v8);
  }

  VoiceProcessorV7::~VoiceProcessorV7(this);
}

void sub_2724FFF04(_Unwind_Exception *a1)
{
  std::unique_ptr<BlockProcessor>::reset[abi:ne200100](v2, 0);
  v4 = *(v1 + 2192);
  if (v4)
  {
    *(v1 + 2193) = v4;
    operator delete(v4);
  }

  VoiceProcessorV7::~VoiceProcessorV7(v1);
  _Unwind_Resume(a1);
}

BOOL VoiceProcessorV9::ShouldUseFullIOCycle(VoiceProcessorV9 *this)
{
  if (**(this + 294) == 1886613611)
  {
    return 1;
  }

  if ((*(this + 16568) & 1) == 0 && ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (AutomaticChatFlavor = *(this + 4134)) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this)), AutomaticChatFlavor == 2)) && (*(this + 16544) & 4) != 0)
  {
    return 1;
  }

  else
  {
    return *(this + 20) != 1;
  }
}

void VoiceProcessorV9::SetupDownlinkBasicAUChain(VoiceProcessorV9 *this)
{
  VoiceProcessorV7::SetupDownlinkBasicAUChain(this);
  v2 = *(this + 1108) & 0xFFFFEFF8FFFFFC43;
  v3 = v2 | 0x1004000002B8;
  *(this + 1108) = v2 | 0x1004000002B8;
  v4 = *(this + 19);
  if (v4 > 40)
  {
    if (v4 > 0x30)
    {
      return;
    }

    if (((1 << v4) & 0xDE0000000000) == 0)
    {
      if (v4 == 45)
      {
        v3 = v2 | 0x18001004000002B8;
        *(this + 1108) = v2 | 0x18001004000002B8;
        *(this + 1136) = 1;
        if (*(this + 280))
        {
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1555, 0xFA08u, 0, 0, 8uLL, this + 2240, 1);
          v3 = *(this + 1108);
        }
      }

      else if (v4 != 48)
      {
        return;
      }

      v2 = v3 & 0xFFFFFFF3F9FFFFFFLL;
      v5 = 0x804000000;
LABEL_20:
      *(this + 1108) = v2 | v5;
      return;
    }

    goto LABEL_13;
  }

  if ((v4 - 35) >= 2)
  {
    if ((v4 - 37) < 2)
    {
LABEL_13:
      if (v4 <= 0x30 && ((0x1FFFE67E7FFDEuLL >> v4) & 1) != 0)
      {
        *(this + 1108) = v2 | 0x1001004000002B8;
        v7 = 1;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1543, 0xFA02u, 0, 0, 4uLL, &v7, 1);
        v6 = 0;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1543, 0xFA04u, 0, 0, 4uLL, &v6, 1);
        if (*(this + 280))
        {
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1543, 0xFA08u, 0, 0, 8uLL, this + 2240, 1);
        }
      }

      return;
    }

    if ((v4 - 39) >= 2)
    {
      return;
    }
  }

  if (v4 <= 0x30 && ((0x1FFFE67E7FFDEuLL >> v4) & 1) != 0)
  {
    v5 = 0x81004000002B8;
    goto LABEL_20;
  }
}

uint64_t VoiceProcessorV9::SetupUplink_NNVI_Multi(uint64_t this, unsigned int a2)
{
  if (a2 >= 2)
  {
    v2 = this;
    v3 = 25166606;
    if (a2 > 3)
    {
      v3 = 58722078;
    }

    if (a2 == 2)
    {
      v3 = 8388870;
    }

    *(this + 4688) = *(this + 4688) & 0xF1FFF7EFBF7FFEF8 | v3 | 0x400001000000001;
    if (*(this + 2262) == 1)
    {
      this = VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(this);
      if (this)
      {
        *(v2 + 4696) |= 4uLL;
      }
    }
  }

  return this;
}

uint64_t VoiceProcessorV9::SetupUplink_MS(uint64_t this, unsigned int a2)
{
  if (a2 != 1)
  {
    v2 = this;
    v3 = this + 0x4000;
    v4 = *(this + 4688);
    v5 = v4 | 0x800101;
    v6 = 8388895;
    if (a2 == 3)
    {
      v6 = 8388879;
    }

    v7 = v4 | v6;
    if (a2 >= 3)
    {
      v8 = a2 != 3;
    }

    else
    {
      v7 = v4 | 0x800107;
      v8 = 0;
    }

    v9 = a2 >= 3;
    if (a2)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }

    if (a2)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    if (!a2)
    {
      v9 = 0;
    }

    v12 = v10 & 0xF9FFFFFFBBFFE7FFLL;
    *(this + 4688) = v12 | 0x600000004001800;
    if ((*(this + 76) - 23) <= 3)
    {
      if (v9)
      {
        v13 = v12 | 0x600000004001A00;
      }

      else
      {
        v13 = v12 | 0x600000004001800;
      }

      if (v11)
      {
        v14 = v13 | 0x400;
      }

      else
      {
        v14 = v13;
      }

      *(this + 4688) = v14 & 0xFFBA6FFFBC7FFFFFLL | 0x45100003800000;
    }

    if ((*(this + 16568) & 1) == 0 && (*(this + 2262) & 1) == 0)
    {
      this = *(this + 2288) == 1 ? VoiceProcessorV2::GetAutomaticChatFlavor(this) : *(this + 16536);
      if (this == 1 && (*(v2 + 16544) & 2) != 0)
      {
        *(v2 + 4688) |= 0x8000000000000uLL;
      }
    }

    if ((*(v3 + 184) & 1) == 0)
    {
      if ((*(v2 + 2262) & 1) != 0 || (*(v2 + 2288) != 1 ? (this = *(v3 + 152)) : (this = VoiceProcessorV2::GetAutomaticChatFlavor(v2)), this == 2))
      {
        if ((*(v2 + 16544) & 4) != 0)
        {
          *(v2 + 4688) |= 0x800000000000000uLL;
          if (*(v2 + 2262) == 1)
          {
            this = VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(this);
            if (this)
            {
              *(v2 + 4696) |= 4uLL;
            }
          }
        }
      }
    }
  }

  return this;
}

void VoiceProcessorV9::SetupUplinkPowerWatchAUChain(int8x16_t *this)
{
  v5 = this + 293;
  v6 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(&v5);
  v2 = this[293];
  this[293] = vorrq_s8(v2, xmmword_2727564F0);
  v3 = this[144].i32[0];
  if (v3 == 1 || v3 == -1)
  {
    this[293].i64[1] = v2.i64[1] | 0x12;
  }
}

uint64_t VoiceProcessorV9::Initialize(VoiceProcessorV9 *this)
{
  v2 = this + 0x4000;
  VoiceProcessorV8::Initialize(this);
  if (*(this + 3134) == 12)
  {
    myAllocABLDynamic((this + 912), *(v2 + 224) + *(this + 129), this + 2215);
  }

  myAllocABLDynamic((this + 912), 2 * *(this + 129), this + 2186);
  v3 = *(this + 19);
  if ((v3 - 23) <= 3)
  {
    VoiceProcessorV7::LoadTrimGains(this);
    v3 = *(this + 19);
  }

  if ((v3 - 6) < 0xD || (v3 - 23) < 4)
  {
    myAllocABLDynamic((this + 912), 2 * *(this + 129), this + 2195);
    myAllocABLDynamic((this + 912), 2 * *(this + 129), this + 2196);
    myAllocABLDynamic((this + 912), 2 * *(this + 129), this + 2197);
    myAllocABLDynamic((this + 912), 2 * *(this + 129), this + 2198);
    myAllocABLDynamic((this + 912), 2 * *(this + 129), this + 2199);
    myAllocABLDynamic((this + 912), 2 * *(this + 129), this + 2214);
    v4 = *(this + 2200);
    if (v4)
    {
      VPTimeFreqConverter::~VPTimeFreqConverter(v4);
      MEMORY[0x2743CBFA0]();
    }

    v5 = *(this + 129);
    VPTimeFreqConverter_Create();
  }

  if (v3 == 45 && (*(this + 8871) & 8) != 0 && (*(this + 8879) & 8) != 0)
  {
    v10 = *(this + 498);
    if (v10)
    {
      AudioUnitGetPropertyInfo(v10, 0x19E6u, 0, 0, v2 + 340, 0);
      v11 = *(v2 + 340);
      operator new[]();
    }
  }

  v2[776] = 0;
  v6 = *(this + 294);
  if (v6 == *(this + 295))
  {
    v7 = *(this + 19);
  }

  else
  {
    v7 = *(this + 19);
    if ((v7 - 34) >= 0xFFFFFFFB && *v6 == 1886613611)
    {
      v8 = 1;
LABEL_18:
      v2[776] = v8;
      return 0;
    }
  }

  if ((v7 - 23) < 4 || v7 == 34)
  {
    v8 = *(this + 3134) == 3;
    goto LABEL_18;
  }

  return 0;
}

void VoiceProcessorV9::~VoiceProcessorV9(VoiceProcessorV9 *this)
{
  VoiceProcessorV9::~VoiceProcessorV9(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B1770;
  caulk::details::lifetime_guard_base<VoiceProcessorV2>::invalidate(this + 16616);
  v2 = *(this + 2216);
  if (v2)
  {
    VoiceProcessor::CFNotificationDelegate::shutdown(v2);
  }

  myFreeABLDynamic(this + 2186);
  v3 = *(this + 19);
  if ((v3 - 6) < 0xD || (v3 - 23) <= 3)
  {
    myFreeABLDynamic(this + 2195);
    myFreeABLDynamic(this + 2196);
    myFreeABLDynamic(this + 2197);
    myFreeABLDynamic(this + 2198);
    myFreeABLDynamic(this + 2199);
    myFreeABLDynamic(this + 2214);
    v4 = *(this + 2200);
    if (v4)
    {
      VPTimeFreqConverter::~VPTimeFreqConverter(v4);
      MEMORY[0x2743CBFA0]();
      *(this + 2200) = 0;
    }

    v5 = *(this + 2201);
    if (v5)
    {
      VPTimeFreqConverter::~VPTimeFreqConverter(v5);
      MEMORY[0x2743CBFA0]();
      *(this + 2201) = 0;
    }

    v6 = *(this + 2202);
    if (v6)
    {
      VPTimeFreqConverter::~VPTimeFreqConverter(v6);
      MEMORY[0x2743CBFA0]();
      *(this + 2202) = 0;
    }

    v7 = *(this + 2203);
    if (v7)
    {
      VPTimeFreqConverter::~VPTimeFreqConverter(v7);
      MEMORY[0x2743CBFA0]();
      *(this + 2203) = 0;
    }
  }

  if (*(this + 3134) == 12)
  {
    myFreeABLDynamic(this + 2215);
  }

  v8 = *(this + 2219);
  *(this + 2219) = 0;
  if (v8)
  {
    MEMORY[0x2743CBF70](v8, 0x1000C8077774924);
  }

  v9 = *(this + 2217);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  VoiceProcessorV8::~VoiceProcessorV8(this);
}

void std::__function::__func<VoiceProcessorV9::VoiceProcessorV9(vp::Context const&)::$_0,std::allocator<VoiceProcessorV9::VoiceProcessorV9(vp::Context const&)::$_0>,void ()(__CFDictionary const*)>::operator()(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  if ((*(v1 + 8870) & 0x80) != 0 && (*(v1 + 8878) & 0x80) != 0 && *(v1 + 3952))
  {
    if (FigCaptureSpeakerInterferenceMitigationIsRequired())
    {
      v2 = 1.0;
    }

    else
    {
      v2 = 0.0;
    }

    AudioUnitSetParameter(*(v1 + 3952), 5u, 0, 0, v2, 0);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v3 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v4 = (*v3 ? *v3 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v9 = "VoiceProcessor_v9.cpp";
        v10 = 1024;
        v11 = 31;
        v12 = 2048;
        v13 = v2;
        _os_log_impl(&dword_2724B4000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> notification: mitigate front camera noise: %f", buf, 0x1Cu);
      }
    }

    v5 = *(v1 + 12704);
    if (v5 && ((*(v1 + 15881) & 1) != 0 || *(v1 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        v7 = *(v1 + 12704);
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        v5 = v7;
      }

      CALegacyLog::log(v5, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v9.cpp", 31, "operator()", "notification: mitigate front camera noise: %f", v2);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<VoiceProcessorV9::VoiceProcessorV9(vp::Context const&)::$_0,std::allocator<VoiceProcessorV9::VoiceProcessorV9(vp::Context const&)::$_0>,void ()(__CFDictionary const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B1A98;
  a2[1] = v2;
  return result;
}

unsigned int *util::make_abl_view(unsigned int *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  if (!a2)
  {
LABEL_18:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v4 = *result;
  if (v4 != *a2)
  {
LABEL_19:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  if (v4)
  {
    if ((a3 & 0x100000000) != 0)
    {
      v5 = a3;
    }

    else
    {
      v5 = 0;
    }

    v6 = result + 2;
    v7 = a2 + 4;
    while (1)
    {
      v9 = *v6;
      v8 = v6[1];
      v10 = *v6 * v5;
      if (4 * v10 > v8)
      {
        break;
      }

      *v7 = *(v6 + 1) + 4 * v10;
      *(v7 - 2) = v9;
      if ((a4 & 0x100000000) != 0)
      {
        if (v5 > a4)
        {
          goto LABEL_21;
        }

        v12 = *v6 * a4;
        if (v8 < 4 * v12)
        {
          goto LABEL_22;
        }

        v11 = 4 * (v12 - v10);
      }

      else
      {
        v11 = v8 - 4 * v10;
      }

      *(v7 - 1) = v11;
      v6 += 4;
      v7 += 2;
      if (!--v4)
      {
        goto LABEL_16;
      }
    }

LABEL_20:
    _os_crash();
    __break(1u);
LABEL_21:
    _os_crash();
    __break(1u);
LABEL_22:
    _os_crash();
    __break(1u);
  }

LABEL_16:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *util::copy_abl_data(_DWORD *this, const AudioBufferList *a2, AudioBufferList *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  if (!a2)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v3 = this;
  if (*this != a2->mNumberBuffers)
  {
LABEL_12:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  if (*this)
  {
    v4 = 0;
    v5 = 4 * a3;
    p_mData = &a2->mBuffers[0].mData;
    v7 = (this + 4);
    while (*(v7 - 1) >= v5)
    {
      if (*(p_mData - 1) < v5)
      {
        goto LABEL_14;
      }

      v9 = *p_mData;
      p_mData += 2;
      v8 = v9;
      v10 = *v7;
      v7 += 2;
      this = memcpy(v8, v10, v5);
      if (++v4 >= *v3)
      {
        goto LABEL_9;
      }
    }

LABEL_13:
    _os_crash();
    __break(1u);
LABEL_14:
    _os_crash();
    __break(1u);
  }

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return this;
}

void util::zero_fill_abl(util *this, AudioBufferList *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*this)
  {
    v3 = 0;
    v4 = (this + 16);
    do
    {
      if (!*v4)
      {
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      bzero(*v4, *(v4 - 1));
      ++v3;
      v4 += 2;
    }

    while (v3 < *this);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t VPSPICreateWithContext(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = vp::log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2724B4000, v4, OS_LOG_TYPE_DEFAULT, "creating", buf, 2u);
  }

  if (a2)
  {
    if (a1)
    {
      vp::Context::Context(buf, (a1 + 8));
      v18 = 1;
      v6 = gVPSPIBaseFactory;
      VoiceProcessorVersion = GetVoiceProcessorVersion(buf, 0, 0, 0, 0);
      v6[2](v6, VoiceProcessorVersion, buf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v20 < 0)
      {
        operator delete(__p);
      }

      if (v17 < 0)
      {
        operator delete(v16);
      }

      if (v15 < 0)
      {
        operator delete(v14[0]);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }

      if (*&buf[8])
      {
        CFRelease(*&buf[8]);
      }

      operator new();
    }

    v8 = vp::log(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2724B4000, v8, OS_LOG_TYPE_ERROR, "VoiceProcessor_Create BadArgument (inContext)", buf, 2u);
    }
  }

  else
  {
    v8 = vp::log(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2724B4000, v8, OS_LOG_TYPE_ERROR, "VoiceProcessor_Create BadArgument (outVoiceProcessor)", buf, 2u);
    }
  }

  result = 1650553447;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725015D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

id vp::log(vp *this)
{
  if (vp::log(void)::onceToken != -1)
  {
    dispatch_once(&vp::log(void)::onceToken, &__block_literal_global_7);
  }

  v2 = vp::log(void)::g_log;

  return v2;
}

uint64_t ___ZN2vpL3logEv_block_invoke()
{
  vp::log(void)::g_log = os_log_create("com.apple.coreaudio", "VoiceProcessor_spi");

  return MEMORY[0x2821F96F8]();
}

uint64_t VPSPICreateWithConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  [v4 setRunsInAudioDSPManagerMode:1];
  if (a2)
  {
    if (*a2)
    {
      [v4 setShortHardwareModelName:?];
    }

    if (*(a2 + 12))
    {
      [v4 setAcousticID:?];
    }

    if (*(a2 + 16))
    {
      [v4 setTemporaryDirectoryPath:?];
    }

    if (*(a2 + 24))
    {
      [v4 setTuningDirectoryPath:?];
    }
  }

  v5 = VPSPICreateWithContext(v4, a1);

  return v5;
}

uint64_t ErrorFromOSStatus(uint64_t result)
{
  if (result <= 1651270506)
  {
    if (result > 1650681446)
    {
      if (result == 1650681447)
      {
        return result;
      }

      v1 = 1651076964;
    }

    else
    {
      if (!result)
      {
        return result;
      }

      v1 = 1650553447;
    }
  }

  else if (result > 1651733600)
  {
    if (result == 1651733601)
    {
      return result;
    }

    v1 = 2004186175;
  }

  else
  {
    if ((result - 1651270507) < 2)
    {
      return result;
    }

    v1 = 1651664230;
  }

  if (result != v1)
  {
    return 2004186175;
  }

  return result;
}

uint64_t VPSPIDestroy(uint64_t a1)
{
  v2 = vp::log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2724B4000, v2, OS_LOG_TYPE_DEFAULT, "destroying", buf, 2u);
  }

  if (a1)
  {
    if (*(a1 + 2216) == 1)
    {
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 2184), 0);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 2176), 0);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 2168), 0);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 2160), 0);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 2152), 0);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 2144), 0);
    }

    if (*(a1 + 1200) == 1)
    {
      std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 1160), 0);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 1136), 0);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 1128), 0);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 1120), 0);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 1112), 0);
    }

    MEMORY[0x2743CB650](a1 + 16);
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    caulk::concurrent::shared_spin_lock::~shared_spin_lock(a1);
    v5 = MEMORY[0x2743CBFA0]();
    v6 = vp::log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_DEFAULT, "destroyed", v9, 2u);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1651664230;
    v6 = vp::log(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_2724B4000, v6, OS_LOG_TYPE_FAULT, "failed to destroy voice processor due to bad reference", v10, 2u);
    }
  }

  return v7;
}

void caulk::concurrent::shared_spin_lock::~shared_spin_lock(caulk::concurrent::shared_spin_lock *this)
{
  v3 = *MEMORY[0x277D85DE8];
  if (atomic_load(this))
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void sub_272501B8C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t VPSPIGetVersion(uint64_t a1, _DWORD *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = vp::log(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2724B4000, v4, OS_LOG_TYPE_FAULT, "failed to get version due to bad reference", buf, 2u);
    }

    result = 1651664230;
    goto LABEL_10;
  }

  if (!a2)
  {
    result = 1650553447;
LABEL_10:
    v5 = *MEMORY[0x277D85DE8];
    return result;
  }

  *a2 = (*(**(a1 + 8) + 112))(*(a1 + 8));
  v2 = *MEMORY[0x277D85DE8];

  return ErrorFromOSStatus(0);
}

void sub_272501CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    v36 = __cxa_begin_catch(a1);
    v37 = vp::log(v36);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x272501C04);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(&a27);
  }

  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const* const&,char const*,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const* const&>();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a3)
  {
    v4 = a2 + 16;
    v5 = 32 * a3;
    while (**v4 == 2)
    {
      v7 = *(*v4 + 8);
      v6 = *v7;
      if (*(v7 + 8) - *v7 != 32 || *v6 != 3)
      {
        break;
      }

      v4 += 32;
      v5 -= 32;
      if (!v5)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (a4)
    {
      *a1 = 1;
      operator new();
    }
  }

  *a1 = 2;
  operator new();
}

void sub_272502234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[15],char [15],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[200],char [200],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

unsigned __int8 *nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::moved_or_copied(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    *a2 = 0;
    *(a2 + 8) = 0;

    return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  }

  else
  {

    return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(a1, a2);
  }
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(unsigned __int8 *a1, unsigned __int8 *a2)
{
  *a1 = *a2;
  *(a1 + 1) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v4 = *a1;
  if (v4 > 4)
  {
    if (*a1 > 6u)
    {
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          v7 = *(a2 + 1);
          operator new();
        }

        goto LABEL_20;
      }
    }

    else if (v4 != 5 && v4 != 6)
    {
      goto LABEL_20;
    }

    v6 = *(a2 + 1);
    goto LABEL_19;
  }

  if (*a1 <= 2u)
  {
    if (v4 == 1)
    {
      v8 = *(a2 + 1);
      operator new();
    }

    if (v4 == 2)
    {
      v5 = *(a2 + 1);
      operator new();
    }

    goto LABEL_20;
  }

  if (v4 == 3)
  {
    v9 = *(a2 + 1);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,std::string const&>();
  }

  if (v4 == 4)
  {
    v6 = a2[8];
LABEL_19:
    *(a1 + 1) = v6;
  }

LABEL_20:
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

void sub_272502764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2725028B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a2 + 56));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a2 + 64), *(a2 + 56));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t VPSPIInitializeUplink(vp *a1, unsigned int *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = VoiceProcessorImplementation::InitializeUplink(a1, a2);

      return ErrorFromOSStatus(v2);
    }

    else
    {
      v5 = vp::log(a1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_error_impl(&dword_2724B4000, v5, OS_LOG_TYPE_ERROR, "VoiceProcessor_InitializeUplink BadArgument (inConfiguration)", v6, 2u);
      }

      return 1650553447;
    }
  }

  else
  {
    v4 = vp::log(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2724B4000, v4, OS_LOG_TYPE_FAULT, "failed to initialize uplink due to bad reference", buf, 2u);
    }

    return 1651664230;
  }
}

unint64_t VoiceProcessorImplementation::InitializeUplink(uint64_t a1, unsigned int *a2)
{
  v218 = *MEMORY[0x277D85DE8];
  v7 = vp::log(a1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v166[0] = 0;
    v167 = 0;
    v8 = *a2;
    v188[0] = 5;
    v189 = v8;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v188);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v188);
    v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "topology");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v188);
    v10 = *v9;
    *v9 = 5;
    v188[0] = v10;
    v11 = *(v9 + 1);
    *(v9 + 1) = v8;
    v189 = v11;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v9);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v188);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v189, v10);
    v158 = a2;
    v12 = a2[1];
    v186[0] = 0;
    v187 = 0;
    if (v12)
    {
      v13 = a2 + 42;
      do
      {
        v190[0] = 0;
        v191 = 0;
        v14 = *(v13 - 40);
        LOBYTE(v198[0]) = 5;
        *(&v198[0] + 1) = v14;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v198);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v198);
        v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v190, "type");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v198);
        v16 = *v15;
        *v15 = 5;
        LOBYTE(v198[0]) = v16;
        v17 = *(v15 + 1);
        *(v15 + 1) = v14;
        *(&v198[0] + 1) = v17;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v198);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v198 + 1, v16);
        v18 = *(v13 - 39);
        LOBYTE(v164[0]) = 6;
        *(&v164[0] + 1) = v18;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v164);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v164);
        v19 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v190, "io_block_size");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v164);
        v20 = *v19;
        *v19 = 6;
        LOBYTE(v164[0]) = v20;
        v21 = *(v19 + 1);
        *(v19 + 1) = v18;
        *(&v164[0] + 1) = v21;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v164);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v164 + 1, v20);
        *v159 = *(v13 - 38);
        *&v159[8] = v13 - 37;
        LOBYTE(v162[0]) = 0;
        *(&v162[0] + 1) = 0;
        nlohmann::detail::to_json_fn::operator()<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,util::view<VoiceProcessorUplinkTerminalType>>(v162, v159);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v162);
        v22 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v190, "input_types");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v162);
        v23 = *v22;
        *v22 = v162[0];
        LOBYTE(v162[0]) = v23;
        v24 = *(v22 + 1);
        *(v22 + 1) = *(&v162[0] + 1);
        *(&v162[0] + 1) = v24;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v22);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v162);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v162 + 1, v23);
        *v159 = *(v13 - 38);
        *&v159[8] = v13 - 34;
        LOBYTE(v196) = 0;
        v197 = 0;
        nlohmann::detail::to_json_fn::operator()<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,util::view<AudioStreamBasicDescription>>(&v196, v159);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v196);
        v25 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v190, "input_formats");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v196);
        v26 = *v25;
        *v25 = v196;
        LOBYTE(v196) = v26;
        v27 = *(v25 + 1);
        *(v25 + 1) = v197;
        v197 = v27;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v196);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v197, v26);
        *v159 = *(v13 - 4);
        *&v159[8] = v13 - 3;
        LOBYTE(v194) = 0;
        v195 = 0;
        nlohmann::detail::to_json_fn::operator()<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,util::view<VoiceProcessorUplinkTerminalType>>(&v194, v159);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v194);
        v28 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v190, "output_types");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v194);
        v29 = *v28;
        *v28 = v194;
        LOBYTE(v194) = v29;
        v30 = *(v28 + 1);
        *(v28 + 1) = v195;
        v195 = v30;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v194);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v195, v29);
        *v159 = *(v13 - 4);
        *&v159[8] = v13;
        v192[0] = 0;
        v193 = 0;
        nlohmann::detail::to_json_fn::operator()<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,util::view<AudioStreamBasicDescription>>(v192, v159);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v192);
        v31 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v190, "output_formats");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v192);
        v32 = *v31;
        *v31 = v192[0];
        v192[0] = v32;
        v33 = *(v31 + 1);
        *(v31 + 1) = v193;
        v193 = v33;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v192);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v193, v32);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v190);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::push_back(v186, v190);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v190);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v191, v190[0]);
        v13 += 70;
        --v12;
      }

      while (v12);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v186);
    v34 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "node_configurations");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v186);
    v35 = *v34;
    *v34 = v186[0];
    v186[0] = v35;
    v36 = *(v34 + 1);
    *(v34 + 1) = v187;
    v187 = v36;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v34);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v186);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v187, v35);
    v37 = v158[212];
    LOBYTE(v198[0]) = 6;
    *(&v198[0] + 1) = v37;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v198);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v198);
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "microphone_port_type");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v198);
    v39 = *v38;
    *v38 = 6;
    LOBYTE(v198[0]) = v39;
    v40 = *(v38 + 1);
    *(v38 + 1) = v37;
    *(&v198[0] + 1) = v40;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v38);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v198);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v198 + 1, v39);
    v41 = v158[213];
    LOBYTE(v164[0]) = 6;
    *(&v164[0] + 1) = v41;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v164);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v164);
    v42 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "microphone_port_subtype");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v164);
    v43 = *v42;
    *v42 = 6;
    LOBYTE(v164[0]) = v43;
    v44 = *(v42 + 1);
    *(v42 + 1) = v41;
    *(&v164[0] + 1) = v44;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v42);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v164);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v164 + 1, v43);
    v45 = *(v158 + 107);
    LOBYTE(v162[0]) = 7;
    *(&v162[0] + 1) = v45;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v162);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v162);
    v46 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "microphone_hardware_sample_rate");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v162);
    v47 = *v46;
    *v46 = 7;
    LOBYTE(v162[0]) = v47;
    v48 = *(v46 + 1);
    *(v46 + 1) = v45;
    *(&v162[0] + 1) = v48;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v46);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v162);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v162 + 1, v47);
    v49 = v158[216];
    v159[0] = 6;
    *&v159[8] = v49;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v159);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v159);
    v50 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "microphone_hardware_input_latency");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v159);
    v51 = *v50;
    *v50 = 6;
    v159[0] = v51;
    v52 = *(v50 + 1);
    *(v50 + 1) = v49;
    *&v159[8] = v52;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v50);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v159);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v159[8], v51);
    v53 = v158[217];
    LOBYTE(v196) = 6;
    v197 = v53;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v196);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v196);
    v54 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "microphone_hardware_input_safety_offset");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v196);
    v55 = *v54;
    *v54 = 6;
    LOBYTE(v196) = v55;
    v56 = *(v54 + 1);
    *(v54 + 1) = v53;
    v197 = v56;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v54);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v196);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v197, v55);
    v57 = v158[232];
    LOBYTE(v194) = 6;
    v195 = v57;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v194);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v194);
    v58 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "reference_port_type");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v194);
    v59 = *v58;
    *v58 = 6;
    LOBYTE(v194) = v59;
    v60 = *(v58 + 1);
    *(v58 + 1) = v57;
    v195 = v60;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v58);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v194);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v195, v59);
    v61 = v158[233];
    v192[0] = 6;
    v193 = v61;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v192);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v192);
    v62 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "reference_port_subtype");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v192);
    v63 = *v62;
    *v62 = 6;
    v192[0] = v63;
    v64 = *(v62 + 1);
    *(v62 + 1) = v61;
    v193 = v64;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v62);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v192);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v193, v63);
    v65 = *(v158 + 117);
    v190[0] = 7;
    v191 = v65;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v190);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v190);
    v66 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "reference_hardware_sample_rate");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v190);
    v67 = *v66;
    *v66 = 7;
    v190[0] = v67;
    v68 = *(v66 + 1);
    *(v66 + 1) = v65;
    v191 = v68;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v66);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v190);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v191, v67);
    v69 = v158[236];
    v184[0] = 6;
    v185 = v69;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v184);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v184);
    v70 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "reference_hardware_input_latency");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v184);
    v71 = *v70;
    *v70 = 6;
    v184[0] = v71;
    v72 = *(v70 + 1);
    *(v70 + 1) = v69;
    v185 = v72;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v70);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v184);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v185, v71);
    v73 = v158[237];
    v182[0] = 6;
    v183 = v73;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v182);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v182);
    v74 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "reference_hardware_input_safety_offset");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v182);
    v75 = *v74;
    *v74 = 6;
    v182[0] = v75;
    v76 = *(v74 + 1);
    *(v74 + 1) = v73;
    v183 = v76;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v74);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v182);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v183, v75);
    v77 = v158[238];
    v180[0] = 6;
    v181 = v77;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v180);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v180);
    v78 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "reference_hardware_output_latency");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v180);
    v79 = *v78;
    *v78 = 6;
    v180[0] = v79;
    v80 = *(v78 + 1);
    *(v78 + 1) = v77;
    v181 = v80;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v78);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v180);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v181, v79);
    v81 = v158[239];
    v178[0] = 6;
    v179 = v81;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v178);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v178);
    v82 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "reference_hardware_output_safety_offset");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v178);
    v83 = *v82;
    *v82 = 6;
    v178[0] = v83;
    v84 = *(v82 + 1);
    *(v82 + 1) = v81;
    v179 = v84;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v82);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v178);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v179, v83);
    v85 = v158[257];
    v176[0] = 6;
    v177 = v85;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v176);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v176);
    v86 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "client_io_block_size");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v176);
    v87 = *v86;
    *v86 = 6;
    v176[0] = v87;
    v88 = *(v86 + 1);
    *(v86 + 1) = v85;
    v177 = v88;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v86);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v176);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v177, v87);
    v89 = v158[258];
    v174[0] = 6;
    v175 = v89;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v174);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v174);
    v90 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "reference_is_hardware_tap_stream");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v174);
    v91 = *v90;
    *v90 = 6;
    v174[0] = v91;
    v92 = *(v90 + 1);
    *(v90 + 1) = v89;
    v175 = v92;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v90);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v174);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v175, v91);
    v93 = v158[259];
    v172[0] = 6;
    v173 = v93;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v172);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v172);
    v94 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "chat_flavor");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v172);
    v95 = *v94;
    *v94 = 6;
    v172[0] = v95;
    v96 = *(v94 + 1);
    *(v94 + 1) = v93;
    v173 = v96;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v94);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v172);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v173, v95);
    v97 = v158[260];
    v170[0] = 6;
    v171 = v97;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v170);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v170);
    v98 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "enable_agc");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v170);
    v99 = *v98;
    *v98 = 6;
    v170[0] = v99;
    v100 = *(v98 + 1);
    *(v98 + 1) = v97;
    v171 = v100;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v98);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v170);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v171, v99);
    v101 = v158[261];
    v168[0] = 6;
    v169 = v101;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v168);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v168);
    v102 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v166, "enable_media_chat");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v168);
    v103 = *v102;
    *v102 = 6;
    v168[0] = v103;
    v104 = *(v102 + 1);
    *(v102 + 1) = v101;
    v169 = v104;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v102);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v168);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v169, v103);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v166);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(__p);
  }

  if (*a2 != 1)
  {
    if (*a2)
    {
      v107 = vp::log(v105);
      if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      LOWORD(__p[0]) = 0;
      v108 = "uplink configuration is not valid - topology is not supported";
      goto LABEL_24;
    }

    if (a2[1] != 1)
    {
      v107 = vp::log(v105);
      if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      LOWORD(__p[0]) = 0;
      v108 = "uplink configuration is not valid - wrong number of node configurations";
      goto LABEL_24;
    }

    v106 = (a2 + 2);
    if (a2[2])
    {
      v107 = vp::log(v106);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v108 = "uplink configuration is not valid - 'AllOfUplinkDSP' node configuration not found";
        goto LABEL_24;
      }

      goto LABEL_53;
    }

    goto LABEL_39;
  }

  if (a2[1] != 3)
  {
    v107 = vp::log(v105);
    if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    LOWORD(__p[0]) = 0;
    v108 = "uplink configuration is not valid - wrong number of node configurations";
    goto LABEL_24;
  }

  v109 = (a2 + 2);
  v110 = 3;
  v111 = (a2 + 2);
  do
  {
    if (*v111 == 1)
    {
      IsValid = VoiceProcessorImplementation::IsValid(v111);
      if (!IsValid)
      {
        goto LABEL_54;
      }

      v113 = a2[1];
      if (!v113)
      {
LABEL_30:
        v107 = vp::log(IsValid);
        if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        LOWORD(__p[0]) = 0;
        v108 = "uplink configuration is not valid - 'EchoDSP' node configuration not found";
        goto LABEL_24;
      }

      IsValid = (a2 + 2);
      while (*IsValid != 2)
      {
        IsValid += 280;
        if (!--v113)
        {
          goto LABEL_30;
        }
      }

      IsValid = VoiceProcessorImplementation::IsValid(IsValid);
      if (!IsValid)
      {
        goto LABEL_54;
      }

      v114 = a2[1];
      if (!v114)
      {
LABEL_36:
        v107 = vp::log(IsValid);
        if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        LOWORD(__p[0]) = 0;
        v108 = "uplink configuration is not valid - 'DynamicsDSP' node configuration not found";
        goto LABEL_24;
      }

      while (*v109 != 3)
      {
        v109 = (v109 + 280);
        if (!--v114)
        {
          goto LABEL_36;
        }
      }

      v106 = v109;
LABEL_39:
      IsValid = VoiceProcessorImplementation::IsValid(v106);
      if ((IsValid & 1) == 0)
      {
        goto LABEL_54;
      }

      if (a2[229] >= 8)
      {
        v107 = vp::log(IsValid);
        if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        LOWORD(__p[0]) = 0;
        v108 = "uplink configuration is not valid - microphone trim gains count is out of bounds";
        goto LABEL_24;
      }

      if (a2[250] >= 8)
      {
        v107 = vp::log(IsValid);
        if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        LOWORD(__p[0]) = 0;
        v108 = "uplink configuration is not valid - reference trim gains count is out of bounds";
        goto LABEL_24;
      }

      v115 = a2[257];
      v116 = vp::log(IsValid);
      v107 = v116;
      if (!v115)
      {
        if (!os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        LOWORD(__p[0]) = 0;
        v108 = "uplink configuration is not valid - client I/O block size can't be 0";
LABEL_24:
        _os_log_error_impl(&dword_2724B4000, v107, OS_LOG_TYPE_ERROR, v108, __p, 2u);
        goto LABEL_53;
      }

      if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&dword_2724B4000, v107, OS_LOG_TYPE_INFO, "uplink configuration is valid!", __p, 2u);
      }

      caulk::pooled_semaphore_mutex::_lock((a1 + 32));
      if (*a2 == 1)
      {
        v118 = 1;
        v125 = util::get_node_configuration<VoiceProcessorUplinkConfiguration,VoiceProcessorUplinkNodeType,util::required_tag>(a2, 1);
        v126 = util::get_node_configuration<VoiceProcessorUplinkConfiguration,VoiceProcessorUplinkNodeType,util::required_tag>(a2, 2);
        v127 = util::get_node_configuration<VoiceProcessorUplinkConfiguration,VoiceProcessorUplinkNodeType,util::required_tag>(a2, 3);
        v4 = v125[1];
        v196 = v4;
        v3 = util::get_input_asbd<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v125, 0);
        v2 = util::get_input_asbd<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v125, 2);
        v107 = util::get_output_asbd<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v127);
        v119 = *(v126 + 1);
        v120 = v126[3];
      }

      else
      {
        if (*a2)
        {
          v139 = _os_crash();
          __break(1u);
          goto LABEL_111;
        }

        v117 = util::get_node_configuration<VoiceProcessorUplinkConfiguration,VoiceProcessorUplinkNodeType,util::required_tag>(a2, 0);
        v4 = a2[257];
        v196 = v4;
        v3 = util::get_input_asbd<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v117, 0);
        v2 = util::get_input_asbd<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v117, 2);
        v107 = util::get_output_asbd<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v117);
        v118 = 0;
        v119 = 0;
        v120 = 0.0;
      }

      if (v3)
      {
        if (v2)
        {
          if (v107)
          {
            v5 = a2;
            LODWORD(v162[0]) = a2[258];
            LODWORD(v198[0]) = 32792;
            __p[0] = v162;
            LODWORD(v164[0]) = 4;
            v128 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)7,unsigned int &,void const*&,unsigned int &>(a1, v198, __p, v164);
            if (!HIDWORD(v128))
            {
              v122 = v128;
              if (v128)
              {
                goto LABEL_82;
              }
            }

            LODWORD(v162[0]) = a2[259];
            LODWORD(v198[0]) = 1718384242;
            __p[0] = v162;
            LODWORD(v164[0]) = 4;
            v129 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)7,unsigned int &,void const*&,unsigned int &>(a1, v198, __p, v164);
            if (!HIDWORD(v129))
            {
              v122 = v129;
              if (v129)
              {
                goto LABEL_82;
              }
            }

            LODWORD(v162[0]) = a2[213];
            LODWORD(v198[0]) = 1986883699;
            __p[0] = v162;
            LODWORD(v164[0]) = 4;
            v130 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)7,unsigned int &,void const*&,unsigned int &>(a1, v198, __p, v164);
            if (!HIDWORD(v130))
            {
              v122 = v130;
              if (v130)
              {
                goto LABEL_82;
              }
            }

            *&v198[0] = *(a2 + 107);
            LODWORD(v164[0]) = 1986884466;
            __p[0] = v198;
            LODWORD(v162[0]) = 8;
            v131 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)7,unsigned int &,void const*&,unsigned int &>(a1, v164, __p, v162);
            if (!HIDWORD(v131))
            {
              v122 = v131;
              if (v131)
              {
                goto LABEL_82;
              }
            }

            LODWORD(v162[0]) = a2[216];
            LODWORD(v198[0]) = 1986881900;
            __p[0] = v162;
            LODWORD(v164[0]) = 4;
            v132 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)7,unsigned int &,void const*&,unsigned int &>(a1, v198, __p, v164);
            v122 = v132 >= 0x100000000 ? 0x100000000 : v132;
            if (v122)
            {
              goto LABEL_82;
            }

            v133 = VoiceProcessorImplementation::SetProperty<unsigned int,(decltype(nullptr))0>(a1, 0x766D696Fu, a2[217]);
            if (v133)
            {
              goto LABEL_81;
            }

            v133 = VoiceProcessorImplementation::SetProperty<unsigned int,(decltype(nullptr))0>(a1, 0x76727073u, a2[233]);
            if (v133)
            {
              goto LABEL_81;
            }

            v133 = VoiceProcessorImplementation::SetProperty<double,(decltype(nullptr))0>(a1, 0x76727372u, *(a2 + 117));
            if (v133)
            {
              goto LABEL_81;
            }

            v133 = VoiceProcessorImplementation::SetProperty<unsigned int,(decltype(nullptr))0>(a1, 0x7672696Cu, a2[236]);
            if (v133)
            {
              goto LABEL_81;
            }

            v133 = VoiceProcessorImplementation::SetProperty<unsigned int,(decltype(nullptr))0>(a1, 0x7672696Fu, a2[237]);
            if (v133)
            {
              goto LABEL_81;
            }

            v133 = VoiceProcessorImplementation::SetProperty<unsigned int,(decltype(nullptr))0>(a1, 0x76726F6Cu, a2[238]);
            if (v133)
            {
              goto LABEL_81;
            }

            v133 = VoiceProcessorImplementation::SetProperty<unsigned int,(decltype(nullptr))0>(a1, 0x76726F6Fu, a2[239]);
            if (v133)
            {
              goto LABEL_81;
            }

            if (v118)
            {
              v133 = VoiceProcessorImplementation::SetProperty<unsigned int,(decltype(nullptr))0>(a1, 0x65706273u, v119);
              if (v133)
              {
LABEL_81:
                v122 = v133;
                goto LABEL_82;
              }

              *__p = v120;
              v122 = VoiceProcessorImplementation::SetProperty(a1, 0x65707372u, __p, 4u);
              if (v122)
              {
                goto LABEL_82;
              }
            }

            v133 = VoiceProcessorImplementation::SetProperty<unsigned int,(decltype(nullptr))0>(a1, 0x8013u, a2[251]);
            if (v133)
            {
              goto LABEL_81;
            }

            v133 = VoiceProcessorImplementation::SetProperty<unsigned int,(decltype(nullptr))0>(a1, 0x74766374u, a2[252]);
            if (v133)
            {
              goto LABEL_81;
            }

            v133 = VoiceProcessorImplementation::SetProperty<double,(decltype(nullptr))0>(a1, 0x74766372u, *(a2 + 127));
            if (v133)
            {
              goto LABEL_81;
            }

            v133 = VoiceProcessorImplementation::SetProperty<unsigned int,(decltype(nullptr))0>(a1, 0x8005u, a2[256]);
            if (v133)
            {
              goto LABEL_81;
            }

            v133 = VoiceProcessorImplementation::SetProperty<unsigned int,(decltype(nullptr))0>(a1, 0x8001u, a2[260]);
            if (v133)
            {
              goto LABEL_81;
            }

            v133 = VoiceProcessorImplementation::SetProperty<unsigned int,(decltype(nullptr))0>(a1, 0x6D656463u, a2[261]);
            if (v133)
            {
              goto LABEL_81;
            }

            v134 = a2[229];
            if (v134)
            {
              v122 = VoiceProcessorImplementation::SetProperty(a1, 0x800Cu, a2 + 221, 4 * v134);
              if (v122)
              {
                goto LABEL_82;
              }
            }

            v135 = *(a2 + 109);
            if (v135)
            {
              applesauce::CF::DictionaryRef::from_get(__p, v135);
              v122 = VoiceProcessorImplementation::SetProperty<applesauce::CF::DictionaryRef,(decltype(nullptr))0>(a1, 0x800Fu, __p[0]);
              applesauce::CF::DictionaryRef::~DictionaryRef(__p);
              if (v122)
              {
                goto LABEL_82;
              }
            }

            v136 = *(a2 + 115);
            if (v136)
            {
              CFRetain(*(a2 + 115));
              applesauce::CF::ArrayRef::ArrayRef(v198, v136);
              __p[0] = *&v198[0];
              v122 = VoiceProcessorImplementation::SetProperty(a1, 0x66696964u, __p, 8u);
              applesauce::CF::ArrayRef::~ArrayRef(v198);
              if (v122)
              {
                goto LABEL_82;
              }
            }

            v133 = VoiceProcessorImplementation::SetProperty<unsigned int,(decltype(nullptr))0>(a1, 0x8014u, a2[220]);
            if (v133)
            {
              goto LABEL_81;
            }

            v137 = a2[250];
            if (v137)
            {
              v122 = VoiceProcessorImplementation::SetProperty(a1, 0x800Du, a2 + 242, 4 * v137);
              if (v122)
              {
                goto LABEL_82;
              }
            }

            v138 = *(a2 + 120);
            if (v138)
            {
              applesauce::CF::DictionaryRef::from_get(__p, v138);
              v122 = VoiceProcessorImplementation::SetProperty<applesauce::CF::DictionaryRef,(decltype(nullptr))0>(a1, 0x8010u, __p[0]);
              applesauce::CF::DictionaryRef::~DictionaryRef(__p);
              if (v122)
              {
                goto LABEL_82;
              }
            }

            LODWORD(v164[0]) = 0;
            LODWORD(v162[0]) = 1;
            __p[0] = a2 + 232;
            *v159 = 0;
            v194 = 1;
            *&v198[0] = a2 + 212;
            v139 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)1,AudioStreamBasicDescription const&,decltype(nullptr),unsigned int &,int,int,unsigned int const*,AudioStreamBasicDescription const&,decltype(nullptr),unsigned int &,int,int,unsigned int const*>(a1, v2, &v196, v164, v162, __p, v3, &v196, v159, &v194, v198);
            if (!HIDWORD(v139))
            {
              goto LABEL_109;
            }

            v140 = *v107;
            v141 = *(v107 + 16);
            __p[4] = *(v107 + 32);
            *__p = v140;
            *&__p[2] = v141;
            LODWORD(v198[0]) = 0;
            LODWORD(v164[0]) = 0;
            LODWORD(v162[0]) = 0;
            v139 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)2,CA::StreamDescription &,decltype(nullptr),unsigned int &,unsigned int &,unsigned int &>(a1, __p, v198, v164, v162);
            if (!HIDWORD(v139))
            {
LABEL_109:
              v122 = v139;
              goto LABEL_82;
            }

LABEL_111:
            if ((vminv_u16(vmovn_s32(vceqq_s32(*&__p[1], *(v107 + 8)))) & 1) != 0 && LODWORD(__p[3]) == *(v107 + 24) && *__p == *v107 && *(&__p[3] + 4) == *(v107 + 28))
            {
              if (LODWORD(v164[0]) == 4)
              {
                v142 = v198[0];
                v143 = memcpy(__p, v5, sizeof(__p));
                v201 = 1;
                v202 = v4;
                v203 = 0;
                v204 = v198[0];
                v198[0] = *v3;
                v198[1] = *(v3 + 16);
                v199 = *(v3 + 32);
                default_resource = std::pmr::get_default_resource(v143);
                v145 = vp::Audio_Buffer::create(&v205, v198, 0, default_resource);
                v164[0] = *v2;
                v164[1] = *(v2 + 16);
                v165 = *(v2 + 32);
                v146 = std::pmr::get_default_resource(v145);
                v147 = vp::Audio_Buffer::create(&v206, v164, 0, v146);
                v162[0] = *v107;
                v162[1] = *(v107 + 16);
                v163 = *(v107 + 32);
                v148 = std::pmr::get_default_resource(v147);
                v149 = vp::Audio_Buffer::create(&v207, v162, v142, v148);
                *v159 = *v107;
                v160 = *(v107 + 16);
                v161 = *(v107 + 32);
                v150 = std::pmr::get_default_resource(v149);
                vp::Audio_Buffer::create(&v208, v159, v142, v150);
                v209 = 0;
                v210 = v4;
                v211 = v142;
                v212 = 0;
                v217 = 0;
                v213 = 0;
                v215 = 0;
                v214 = 0;
                v216 = 0;
                std::optional<VoiceProcessorImplementation::Uplink>::emplace[abi:ne200100]<VoiceProcessorImplementation::Uplink,void>((a1 + 40), __p);
                VoiceProcessorImplementation::Uplink::~Uplink(__p);
                if (*(a1 + 1088) == 1)
                {
                  if ((4 * v4) <= 0x1000)
                  {
                    v152 = 4096;
                  }

                  else
                  {
                    v152 = 4 * v4;
                  }

                  *__p = *v107;
                  *&__p[2] = *(v107 + 16);
                  __p[4] = *(v107 + 32);
                  v153 = std::pmr::get_default_resource(v151);
                  vp::Audio_Ring_Buffer::create(v198, __p, v152, v153);
                  v154 = *&v198[0];
                  *&v198[0] = 0;
                  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 1160), v154);
                  v151 = std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v198, 0);
                }

                v155 = vp::log(v151);
                if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
                {
                  LOWORD(__p[0]) = 0;
                  _os_log_impl(&dword_2724B4000, v155, OS_LOG_TYPE_INFO, "initialized uplink", __p, 2u);
                }

                v122 = 0;
                goto LABEL_82;
              }

              v156 = vp::log(v139);
              if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
              {
                *v159 = 0;
                _os_log_error_impl(&dword_2724B4000, v156, OS_LOG_TYPE_ERROR, "failed to initialize uplink - voice processor must output float data", v159, 2u);
              }
            }

            else
            {
              v156 = vp::log(v139);
              if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
              {
                *v159 = 0;
                _os_log_error_impl(&dword_2724B4000, v156, OS_LOG_TYPE_ERROR, "failed to initialize uplink - voice processor did not accept requested output format", v159, 2u);
              }
            }

            v122 = 1651270508;
LABEL_82:
            caulk::pooled_semaphore_mutex::_unlock((a1 + 32));
            goto LABEL_57;
          }

LABEL_86:
          *&v164[0] = 0;
          memset(__p, 0, 80);
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          LODWORD(v198[0]) = 134217984;
          *(v198 + 4) = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }
      }

      else
      {
        *&v164[0] = 0;
        memset(__p, 0, 80);
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        LODWORD(v198[0]) = 134217984;
        *(v198 + 4) = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *&v164[0] = 0;
      memset(__p, 0, 80);
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      LODWORD(v198[0]) = 134217984;
      *(v198 + 4) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_86;
    }

    v111 = (v111 + 280);
    --v110;
  }

  while (v110);
  v107 = vp::log(v111);
  if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    v108 = "uplink configuration is not valid - 'HardwareDSP' node configuration not found";
    goto LABEL_24;
  }

LABEL_53:

LABEL_54:
  v121 = vp::log(IsValid);
  if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    _os_log_error_impl(&dword_2724B4000, v121, OS_LOG_TYPE_ERROR, "failed to initialize uplink due to bad configuration", __p, 2u);
  }

  v122 = 1650681447;
LABEL_57:
  v123 = *MEMORY[0x277D85DE8];
  return v122;
}

_DWORD *util::get_node_configuration<VoiceProcessorUplinkConfiguration,VoiceProcessorUplinkNodeType,util::required_tag>(uint64_t a1, int a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    result = (a1 + 8);
    while (*result != a2)
    {
      result += 70;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t util::get_input_asbd<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = 0;
    while (*(a1 + 12 + 4 * v3) != a2)
    {
      if (v2 == ++v3)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    a1 = _os_crash();
    __break(1u);
  }

  return a1 + 40 * v3 + 24;
}

uint64_t util::get_output_asbd<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1)
  {
    v2 = 0;
    while (*(a1 + 148 + 4 * v2) != 3)
    {
      if (v1 == ++v2)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    a1 = _os_crash();
    __break(1u);
  }

  return a1 + 40 * v2 + 160;
}

uint64_t vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)7,unsigned int &,void const*&,unsigned int &>(uint64_t a1, unsigned int *a2, void *a3, unsigned int *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  caulk::concurrent::shared_spin_lock::lock(a1);
  v8 = (*(**(a1 + 8) + 56))(*(a1 + 8), *a2, *a3, *a4);
  if (v8)
  {
    if (!*MEMORY[0x277D7F098])
    {
      __break(1u);
    }

    v9 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
    *(v9 + 16) = 0;
    *(v9 + 24) = v8;
    *(v9 + 32) = "SetProperty";
    *(v9 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::SetProperty, ArgTypeList = <unsigned int &, const void *&, unsigned int &>]";
    *v9 = &unk_2881B1C60;
    *(v9 + 8) = 0;
    caulk::concurrent::messenger::enqueue((a1 + 16), v9);
  }

  caulk::concurrent::shared_spin_lock::unlock(a1);
  v10 = *MEMORY[0x277D85DE8];
  return 0x1626C6300;
}

void sub_272504904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    v36 = __cxa_begin_catch(a1);
    v37 = vp::log(v36);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x2725048C0);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(&a27);
  }

  _Unwind_Resume(a1);
}

unint64_t VoiceProcessorImplementation::SetProperty<unsigned int,(decltype(nullptr))0>(uint64_t a1, unsigned int a2, int a3)
{
  v7 = a2;
  v6 = &v4;
  v4 = a3;
  v5 = 4;
  result = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)7,unsigned int &,void const*&,unsigned int &>(a1, &v7, &v6, &v5);
  if (result >= 0x100000000)
  {
    return 0x100000000;
  }

  return result;
}

unint64_t VoiceProcessorImplementation::SetProperty<double,(decltype(nullptr))0>(uint64_t a1, unsigned int a2, double a3)
{
  v4 = a3;
  v7 = a2;
  v6 = &v4;
  v5 = 8;
  result = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)7,unsigned int &,void const*&,unsigned int &>(a1, &v7, &v6, &v5);
  if (result >= 0x100000000)
  {
    return 0x100000000;
  }

  return result;
}

unint64_t VoiceProcessorImplementation::SetProperty(VoiceProcessorImplementation *this, unsigned int a2, const void *a3, unsigned int a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v8[0] = a2;
  v7 = a3;
  v6 = a4;
  if (!a3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v8[1] = 134217984;
    v9 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  result = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)7,unsigned int &,void const*&,unsigned int &>(this, v8, &v7, &v6);
  if (result >= 0x100000000)
  {
    result = 0x100000000;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

CFTypeID applesauce::CF::DictionaryRef::from_get(applesauce::CF::DictionaryRef *this, CFTypeRef cf)
{
  CFRetain(cf);
  *this = cf;
  v4 = CFGetTypeID(cf);
  result = CFDictionaryGetTypeID();
  if (v4 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

void sub_272504CF8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

unint64_t VoiceProcessorImplementation::SetProperty<applesauce::CF::DictionaryRef,(decltype(nullptr))0>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a3;
  v7 = a2;
  v6 = &v4;
  v5 = 8;
  result = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)7,unsigned int &,void const*&,unsigned int &>(a1, &v7, &v6, &v5);
  if (result >= 0x100000000)
  {
    return 0x100000000;
  }

  return result;
}

CFTypeRef applesauce::CF::details::Retain<__CFArray const*>(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

applesauce::CF::ArrayRef *applesauce::CF::ArrayRef::ArrayRef(applesauce::CF::ArrayRef *this, CFTypeRef cf)
{
  *this = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CFArrayGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return this;
}

void sub_272504E30(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)1,AudioStreamBasicDescription const&,decltype(nullptr),unsigned int &,int,int,unsigned int const*,AudioStreamBasicDescription const&,decltype(nullptr),unsigned int &,int,int,unsigned int const*>(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t *a6, uint64_t a7, int *a8, int *a9, int *a10, uint64_t *a11)
{
  v30 = *MEMORY[0x277D85DE8];
  caulk::concurrent::shared_spin_lock::lock(a1);
  v17 = *a3;
  v18 = *a4;
  v19 = *a5;
  v20 = *a6;
  v28 = *a11;
  v26 = *a9;
  v27 = *a10;
  v25 = *a8;
  v21 = VoiceProcessorInterface::InitializeHWInput(*(a1 + 8));
  if (v21)
  {
    v22 = vp::log(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v29);
    }
  }

  caulk::concurrent::shared_spin_lock::unlock(a1);
  v23 = *MEMORY[0x277D85DE8];
  return 0x1626C6300;
}

void sub_2725051C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint8_t buf)
{
  if (a2)
  {
    v41 = __cxa_begin_catch(a1);
    v42 = vp::log(v41);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x272504F30);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(v40 - 152);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)2,CA::StreamDescription &,decltype(nullptr),unsigned int &,unsigned int &,unsigned int &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  caulk::concurrent::shared_spin_lock::lock(a1);
  v10 = (*(**(a1 + 8) + 24))(*(a1 + 8), a2, 0, a3, a4, a5);
  if (v10)
  {
    v11 = vp::log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v14);
    }
  }

  caulk::concurrent::shared_spin_lock::unlock(a1);
  v12 = *MEMORY[0x277D85DE8];
  return 0x1626C6300;
}

void sub_2725056D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint8_t buf)
{
  if (a2)
  {
    v37 = __cxa_begin_catch(a1);
    v38 = vp::log(v37);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x272505440);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(v36 - 136);
  }

  _Unwind_Resume(a1);
}

char *std::optional<VoiceProcessorImplementation::Uplink>::emplace[abi:ne200100]<VoiceProcessorImplementation::Uplink,void>(char *__dst, char *__src)
{
  if (__dst[1160] == 1)
  {
    std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](__dst + 140, 0);
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](__dst + 137, 0);
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](__dst + 136, 0);
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](__dst + 135, 0);
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](__dst + 134, 0);
    __dst[1160] = 0;
  }

  memcpy(__dst, __src, 0x418uLL);
  v4 = *(__src + 1048);
  *(__dst + 266) = *(__src + 266);
  *(__dst + 1048) = v4;
  v5 = *(__src + 134);
  *(__src + 134) = 0;
  *(__dst + 134) = v5;
  v6 = *(__src + 135);
  *(__src + 135) = 0;
  *(__dst + 135) = v6;
  v7 = *(__src + 136);
  *(__src + 136) = 0;
  *(__dst + 136) = v7;
  v8 = *(__src + 137);
  *(__src + 137) = 0;
  *(__dst + 137) = v8;
  v9 = *(__src + 138);
  *(__dst + 1109) = *(__src + 1109);
  *(__dst + 138) = v9;
  v10 = *(__src + 140);
  *(__src + 140) = 0;
  *(__dst + 140) = v10;
  v11 = *(__src + 1128);
  *(__dst + 1137) = *(__src + 1137);
  *(__dst + 1128) = v11;
  __dst[1160] = 1;
  return __dst;
}

void VoiceProcessorImplementation::Uplink::~Uplink(VoiceProcessorImplementation::Uplink *this)
{
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 140, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 137, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 136, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 135, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 134, 0);
}

atomic_uint *caulk::concurrent::shared_spin_lock::lock(atomic_uint *this)
{
  v1 = 0;
  atomic_compare_exchange_strong(this, &v1, 0x80000000);
  if (v1)
  {
    v2 = this;
    v3 = 0;
    do
    {
      if (v3 >= 0x65)
      {
        v4 = mach_absolute_time();
        this = mach_wait_until(v4 + 24000);
      }

      v5 = 0;
      ++v3;
      atomic_compare_exchange_strong(v2, &v5, 0x80000000);
    }

    while (v5);
  }

  return this;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[293],char [293],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

atomic_uint *caulk::concurrent::shared_spin_lock::unlock(atomic_uint *this)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 0x80000000;
  atomic_compare_exchange_strong(this, &v1, 0);
  if (v1 != 0x80000000)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *MEMORY[0x277D85DE8];
  return this;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[407],char [407],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[246],char [246],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE7EJRjRPKvS9_EEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA246_SL_EE7performEv(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[6] = *(a1 + 40);
  v6[7] = v2;
  v3 = vp::log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272506098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE7EJRjRPKvS9_EEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA246_SL_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VoiceProcessorImplementation::IsValid(uint64_t a1)
{
  result = 0;
  v54 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (*a1 > 1)
  {
    if (v3 == 2)
    {
      if (*(a1 + 8) == 3)
      {
        v9 = 0;
        v10 = a1 + 12;
        do
        {
          if (!*(v10 + 4 * v9))
          {
            v16 = 0;
            v17 = a1 + 24;
            v18 = (a1 + 24 + 40 * v9);
            while (*(v10 + 4 * v16) != 1)
            {
              if (++v16 == 3)
              {
                v19 = std::string::basic_string[abi:ne200100]<0>(&__p, "'EchoDSP' node has no microphone clip data input");
                v6 = vp::log(v19);
                if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_71;
                }

                p_p = &__p;
                if (v51 < 0)
                {
                  p_p = __p;
                }

                goto LABEL_143;
              }
            }

            v27 = 0;
            v28 = (v17 + 40 * v16);
            while (*(v10 + 4 * v27) != 2)
            {
              if (++v27 == 3)
              {
                std::string::basic_string[abi:ne200100]<0>(&__p, "'EchoDSP' node has no reference input");
                goto LABEL_147;
              }
            }

            v38 = *v28;
            *&buf = *v18;
            *(&buf + 1) = v38;
            v53 = *(v17 + 40 * v27);
            std::set<double>::set[abi:ne200100](&__p, &buf, 3);
            v39 = v51;
            std::__tree<unsigned int>::destroy(v50);
            if (v39 != 1)
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "'EchoDSP' node input sample rates are not equal");
              goto LABEL_147;
            }

            if (*(a1 + 144) != 1)
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "'EchoDSP' node has wrong number of outputs");
              goto LABEL_147;
            }

            if (*(a1 + 148) != 3)
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "'EchoDSP' node has no voice data output");
              goto LABEL_147;
            }

            if (*v18 != *(a1 + 160))
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "'EchoDSP' node I/O sample rates are not equal");
              goto LABEL_147;
            }

            if (!*(a1 + 4))
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "'EchoDSP' node doesn't support variable I/O block size");
              goto LABEL_147;
            }

            goto LABEL_98;
          }

          ++v9;
        }

        while (v9 != 3);
        v11 = std::string::basic_string[abi:ne200100]<0>(&__p, "'EchoDSP' node has no microphone input");
        v6 = vp::log(v11);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_71;
        }

        p_p = &__p;
        if (v51 < 0)
        {
          p_p = __p;
        }
      }

      else
      {
        v15 = std::string::basic_string[abi:ne200100]<0>(&__p, "'EchoDSP' node has wrong number of inputs");
        v6 = vp::log(v15);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_71;
        }

        p_p = &__p;
        if (v51 < 0)
        {
          p_p = __p;
        }
      }
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_151;
      }

      if (*(a1 + 8) == 1)
      {
        if (*(a1 + 12) == 3)
        {
          if (*(a1 + 144) == 1)
          {
            if (*(a1 + 148) == 3)
            {
              if (*(a1 + 24) == *(a1 + 160))
              {
                if (*(a1 + 4))
                {
                  goto LABEL_98;
                }

                std::string::basic_string[abi:ne200100]<0>(&__p, "'DynamicsDSP' node doesn't support variable I/O block size");
              }

              else
              {
                std::string::basic_string[abi:ne200100]<0>(&__p, "'DynamicsDSP' node I/O sample rates are not equal");
              }
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "'DynamicsDSP' node has no voice data output");
            }

            goto LABEL_147;
          }

          v29 = std::string::basic_string[abi:ne200100]<0>(&__p, "'DynamicsDSP' node has wrong number of outputs");
          v6 = vp::log(v29);
          if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_71;
          }

          p_p = &__p;
          if (v51 < 0)
          {
            p_p = __p;
          }
        }

        else
        {
          v20 = std::string::basic_string[abi:ne200100]<0>(&__p, "'DynamicsDSP' node has no voice data input");
          v6 = vp::log(v20);
          if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_71;
          }

          p_p = &__p;
          if (v51 < 0)
          {
            p_p = __p;
          }
        }
      }

      else
      {
        v13 = std::string::basic_string[abi:ne200100]<0>(&__p, "'DynamicsDSP' node has wrong number of inputs");
        v6 = vp::log(v13);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_71;
        }

        p_p = &__p;
        if (v51 < 0)
        {
          p_p = __p;
        }
      }
    }

    goto LABEL_143;
  }

  if (!v3)
  {
    if (*(a1 + 8) != 2)
    {
      v14 = std::string::basic_string[abi:ne200100]<0>(&__p, "'AllOfUplinkDSP' node has wrong number of inputs");
      v6 = vp::log(v14);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_71;
      }

      p_p = &__p;
      if (v51 < 0)
      {
        p_p = __p;
      }

      goto LABEL_143;
    }

    v7 = *(a1 + 12);
    if (v7)
    {
      if (*(a1 + 16))
      {
        v8 = std::string::basic_string[abi:ne200100]<0>(&__p, "'AllOfUplinkDSP' node has no microphone input");
        v6 = vp::log(v8);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_71;
        }

        p_p = &__p;
        if (v51 < 0)
        {
          p_p = __p;
        }

        goto LABEL_143;
      }

      if (v7 == 2)
      {
        v25 = 0;
        v26 = a1 + 24;
        v24 = (a1 + 64);
        goto LABEL_65;
      }
    }

    else if (*(a1 + 16) == 2)
    {
      v24 = (a1 + 24);
      v25 = 1;
      v26 = a1 + 24;
LABEL_65:
      if (*v24 == *(v26 + 40 * v25))
      {
        if (*(a1 + 144) == 1)
        {
          if (*(a1 + 148) == 3)
          {
            if (*v24 == *(a1 + 160))
            {
              goto LABEL_98;
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "'AllOfUplinkDSP' node microphone input and uplink output sample rates are not equal");
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "'AllOfUplinkDSP' node has no uplink output");
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "'AllOfUplinkDSP' node has wrong number of outputs");
        }

        goto LABEL_147;
      }

      v35 = std::string::basic_string[abi:ne200100]<0>(&__p, "'AllOfUplinkDSP' node microphone and reference input sample rates are not equal");
      v6 = vp::log(v35);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_71;
      }

      p_p = &__p;
      if (v51 < 0)
      {
        p_p = __p;
      }

LABEL_143:
      LODWORD(buf) = 136315138;
      *(&buf + 4) = p_p;
      _os_log_error_impl(&dword_2724B4000, v6, OS_LOG_TYPE_ERROR, "uplink configuration is not valid - %s", &buf, 0xCu);
      goto LABEL_71;
    }

    v36 = std::string::basic_string[abi:ne200100]<0>(&__p, "'AllOfUplinkDSP' node has no reference input");
    v6 = vp::log(v36);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    p_p = &__p;
    if (v51 < 0)
    {
      p_p = __p;
    }

    goto LABEL_143;
  }

  if (v3 != 1)
  {
    goto LABEL_151;
  }

  if (*(a1 + 8) != 2)
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(&__p, "'HardwareDSP' node has wrong number of inputs");
    v6 = vp::log(v12);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    p_p = &__p;
    if (v51 < 0)
    {
      p_p = __p;
    }

    goto LABEL_143;
  }

  v4 = *(a1 + 12);
  if (!v4)
  {
    if (*(a1 + 16) == 2)
    {
      v21 = (a1 + 24);
      v22 = 1;
      v23 = a1 + 24;
      goto LABEL_55;
    }

LABEL_61:
    v34 = std::string::basic_string[abi:ne200100]<0>(&__p, "'HardwareDSP' node has no reference input");
    v6 = vp::log(v34);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    p_p = &__p;
    if (v51 < 0)
    {
      p_p = __p;
    }

    goto LABEL_143;
  }

  if (*(a1 + 16))
  {
    v5 = std::string::basic_string[abi:ne200100]<0>(&__p, "'HardwareDSP' node has no microphone input");
    v6 = vp::log(v5);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    p_p = &__p;
    if (v51 < 0)
    {
      p_p = __p;
    }

    goto LABEL_143;
  }

  if (v4 != 2)
  {
    goto LABEL_61;
  }

  v22 = 0;
  v23 = a1 + 24;
  v21 = (a1 + 64);
LABEL_55:
  v30 = *(v23 + 40 * v22);
  *&buf = *v21;
  *(&buf + 1) = v30;
  std::set<double>::set[abi:ne200100](&__p, &buf, 2);
  v31 = v51;
  std::__tree<unsigned int>::destroy(v50);
  if (v31 == 1)
  {
    if (*(a1 + 144) == 3)
    {
      v32 = 0;
      v33 = a1 + 148;
      while (*(v33 + 4 * v32))
      {
        if (++v32 == 3)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "'HardwareDSP' node has no microphone output");
          goto LABEL_147;
        }
      }

      v41 = 0;
      v42 = a1 + 160;
      v43 = (a1 + 160 + 40 * v32);
      while (*(v33 + 4 * v41) != 2)
      {
        if (++v41 == 3)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "'HardwareDSP' node has no microphone clip data output");
          goto LABEL_147;
        }
      }

      v44 = 0;
      v45 = (v42 + 40 * v41);
      while (*(v33 + 4 * v44) != 2)
      {
        if (++v44 == 3)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "'HardwareDSP' node has no reference output");
          goto LABEL_147;
        }
      }

      v46 = *v45;
      *&buf = *v43;
      *(&buf + 1) = v46;
      v53 = *(v42 + 40 * v44);
      std::set<double>::set[abi:ne200100](&__p, &buf, 3);
      v47 = v51;
      std::__tree<unsigned int>::destroy(v50);
      if (v47 != 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "'HardwareDSP' node output sample rates are not equal");
        goto LABEL_147;
      }

      if (*v21 != *v43)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "'HardwareDSP' node I/O sample rates are not equal");
        goto LABEL_147;
      }

      if (!*(a1 + 4))
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "'HardwareDSP' node doesn't support variable I/O block size");
        goto LABEL_147;
      }

LABEL_98:
      result = 1;
      goto LABEL_151;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "'HardwareDSP' node has wrong number of outputs");
LABEL_147:
    VoiceProcessorImplementation::IsValid(VoiceProcessorUplinkNodeConfiguration const&)const::{lambda(std::string const&)#1}::operator()(&__p);
    goto LABEL_148;
  }

  v37 = std::string::basic_string[abi:ne200100]<0>(&__p, "'HardwareDSP' node input sample rates are not equal");
  v6 = vp::log(v37);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    p_p = &__p;
    if (v51 < 0)
    {
      p_p = __p;
    }

    goto LABEL_143;
  }

LABEL_71:

LABEL_148:
  if (SHIBYTE(v51) < 0)
  {
    operator delete(__p);
  }

  result = 0;
LABEL_151:
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272506DE0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void VoiceProcessorImplementation::IsValid(VoiceProcessorUplinkNodeConfiguration const&)const::{lambda(std::string const&)#1}::operator()(char *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = vp::log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    if (a1[23] >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = *a1;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_error_impl(&dword_2724B4000, v2, OS_LOG_TYPE_ERROR, "uplink configuration is not valid - %s", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void *std::set<double>::set[abi:ne200100](void *result, double *a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a3)
  {
    v3 = a2;
    v4 = 0;
    v5 = result + 1;
    while (1)
    {
      v6 = result + 1;
      if (v5 == result + 1)
      {
        goto LABEL_9;
      }

      v7 = v4;
      v8 = result + 1;
      if (v4)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *v3;
      if (*(v6 + 4) < *v3)
      {
LABEL_9:
        v11 = v4 ? v6 + 1 : result + 1;
      }

      else
      {
        v11 = result + 1;
        if (v4)
        {
          v11 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v4;
              v13 = *(v4 + 4);
              if (v10 >= v13)
              {
                break;
              }

              v4 = *v4;
              v11 = v12;
              if (!*v12)
              {
                goto LABEL_13;
              }
            }

            if (v13 >= v10)
            {
              break;
            }

            v11 = v4 + 1;
            v4 = v4[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v11)
      {
LABEL_13:
        operator new();
      }

      if (++v3 == &a2[a3])
      {
        break;
      }

      v5 = *result;
      v4 = result[1];
    }
  }

  return result;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(unsigned __int8 *a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = *a1;
    if (v7 > 9)
    {
      v8 = "number";
    }

    else
    {
      v8 = off_279E48DC8[v7];
    }

    std::string::basic_string[abi:ne200100]<0>(&v9, v8);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "cannot use operator[] with a string argument with ", &v9);
    nlohmann::detail::type_error::create(exception, 305, &__p);
  }

  v3 = *(a1 + 1);
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  v4 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(v3, &v9, &__p);
  if (!v4)
  {
    operator new();
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4 + 56;
}

void sub_2725071E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::push_back(unsigned __int8 *a1, uint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = *a1;
    if (v6 > 9)
    {
      v7 = "number";
    }

    else
    {
      v7 = off_279E48DC8[v6];
    }

    std::string::basic_string[abi:ne200100]<0>(&v8, v7);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v9, "cannot use push_back() with ", &v8);
    nlohmann::detail::type_error::create(exception, 308, &v9);
  }

  v3 = *(a1 + 1);

  return std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](v3, a2);
}

void sub_272507378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void nlohmann::detail::to_json_fn::operator()<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,util::view<VoiceProcessorUplinkTerminalType>>(unsigned __int8 *a1, unsigned int *a2)
{
  if (*a2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 1) + 4 * v4);
      v6[0] = 5;
      v7 = v5;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::push_back(a1, v6);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v7, v6[0]);
      ++v4;
    }

    while (v4 < *a2);
  }
}

void nlohmann::detail::to_json_fn::operator()<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,util::view<AudioStreamBasicDescription>>(unsigned __int8 *a1, unsigned int *a2)
{
  if (*a2)
  {
    v3 = 0;
    v4 = 36;
    do
    {
      v5 = *(a2 + 1);
      v43[0] = 0;
      v44 = 0;
      v6 = *(v5 + v4 - 36);
      v61[0] = 7;
      v62 = v6;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v61);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v61);
      v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v43, "sample_rate");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v61);
      v8 = *v7;
      *v7 = 7;
      v61[0] = v8;
      v9 = *(v7 + 1);
      *(v7 + 1) = v6;
      v62 = v9;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v61);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v62, v8);
      v10 = *(v5 + v4 - 28);
      v59[0] = 6;
      v60 = v10;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v59);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v59);
      v11 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v43, "format_id");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v59);
      v12 = *v11;
      *v11 = 6;
      v59[0] = v12;
      v13 = *(v11 + 1);
      *(v11 + 1) = v10;
      v60 = v13;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v59);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v60, v12);
      v14 = *(v5 + v4 - 24);
      v57[0] = 6;
      v58 = v14;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v57);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v57);
      v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v43, "foramt_flags");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v57);
      v16 = *v15;
      *v15 = 6;
      v57[0] = v16;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v58 = v17;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v57);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v58, v16);
      v18 = *(v5 + v4 - 20);
      v55[0] = 6;
      v56 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
      v19 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v43, "bytes_per_packet");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
      v20 = *v19;
      *v19 = 6;
      v55[0] = v20;
      v21 = *(v19 + 1);
      *(v19 + 1) = v18;
      v56 = v21;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v56, v20);
      v22 = *(v5 + v4 - 16);
      v53[0] = 6;
      v54 = v22;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v53);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v53);
      v23 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v43, "frames_per_packet");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v53);
      v24 = *v23;
      *v23 = 6;
      v53[0] = v24;
      v25 = *(v23 + 1);
      *(v23 + 1) = v22;
      v54 = v25;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v53);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v54, v24);
      v26 = *(v5 + v4 - 12);
      v51[0] = 6;
      v52 = v26;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v51);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v51);
      v27 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v43, "bytes_per_frame");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v51);
      v28 = *v27;
      *v27 = 6;
      v51[0] = v28;
      v29 = *(v27 + 1);
      *(v27 + 1) = v26;
      v52 = v29;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v51);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v52, v28);
      v30 = *(v5 + v4 - 8);
      v49[0] = 6;
      v50 = v30;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v49);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v49);
      v31 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v43, "channels_per_frame");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v49);
      v32 = *v31;
      *v31 = 6;
      v49[0] = v32;
      v33 = *(v31 + 1);
      *(v31 + 1) = v30;
      v50 = v33;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v49);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v50, v32);
      v34 = *(v5 + v4 - 4);
      v47[0] = 6;
      v48 = v34;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
      v35 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v43, "bits_per_channel");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
      v36 = *v35;
      *v35 = 6;
      v47[0] = v36;
      v37 = *(v35 + 1);
      *(v35 + 1) = v34;
      v48 = v37;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v35);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v48, v36);
      v38 = *(v5 + v4);
      v45[0] = 6;
      v46 = v38;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
      v39 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v43, "reserved");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
      v40 = *v39;
      *v39 = 6;
      v45[0] = v40;
      v41 = *(v39 + 1);
      *(v39 + 1) = v38;
      v46 = v41;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v39);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v46, v40);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v43);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::push_back(a1, v43);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v43);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v44, v43[0]);
      ++v3;
      v4 += 40;
    }

    while (v3 < *a2);
  }
}

uint64_t VPSPIInitializeDownlink(uint64_t a1, char *a2)
{
  v127 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v43 = vp::log(0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_fault_impl(&dword_2724B4000, v43, OS_LOG_TYPE_FAULT, "failed to initialize downlink due to bad reference", __p, 2u);
    }

    result = 1651664230;
    goto LABEL_20;
  }

  if (!a2)
  {
    v45 = vp::log(a1);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&dword_2724B4000, v45, OS_LOG_TYPE_ERROR, "VoiceProcessor_InitializeDownlink BadArgument (inConfiguration)", __p, 2u);
    }

    result = 1650553447;
LABEL_20:
    v46 = *MEMORY[0x277D85DE8];
    return result;
  }

  v5 = vp::log(a1);
  __src = a2;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v99[0] = 0;
    v100 = 0;
    v6 = *a2;
    v103[0] = 5;
    v104 = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v103);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v103);
    v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v99, "topology");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v103);
    v8 = *v7;
    *v7 = 5;
    v103[0] = v8;
    v9 = *(v7 + 1);
    *(v7 + 1) = v6;
    v104 = v9;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v103);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v104, v8);
    v10 = *(a2 + 1);
    v101[0] = 0;
    v102 = 0;
    if (v10)
    {
      v11 = __src + 248;
      do
      {
        v105[0] = 0;
        v106 = 0;
        v12 = *(v11 - 60);
        v124[0] = 5;
        *&v124[8] = v12;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v124);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v124);
        v13 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v105, "type");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v124);
        v14 = *v13;
        *v13 = 5;
        v124[0] = v14;
        v15 = *(v13 + 1);
        *(v13 + 1) = v12;
        *&v124[8] = v15;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v124);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v124[8], v14);
        v16 = *(v11 - 59);
        LOBYTE(v122[0]) = 6;
        *(&v122[0] + 1) = v16;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v122);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v122);
        v17 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v105, "io_block_size");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v122);
        v18 = *v17;
        *v17 = 6;
        LOBYTE(v122[0]) = v18;
        v19 = *(v17 + 1);
        *(v17 + 1) = v16;
        *(&v122[0] + 1) = v19;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v122);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v122 + 1, v18);
        LODWORD(aBlock) = *(v11 - 58);
        v95 = (v11 - 228);
        LOBYTE(v118[0]) = 0;
        *(&v118[0] + 1) = 0;
        nlohmann::detail::to_json_fn::operator()<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,util::view<VoiceProcessorDownlinkTerminalType>>(v118, &aBlock);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v118);
        v20 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v105, "input_types");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v118);
        v21 = *v20;
        *v20 = v118[0];
        LOBYTE(v118[0]) = v21;
        v22 = *(v20 + 1);
        *(v20 + 1) = *(&v118[0] + 1);
        *(&v118[0] + 1) = v22;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v118);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v118 + 1, v21);
        LODWORD(aBlock) = *(v11 - 58);
        v95 = (v11 - 208);
        LOBYTE(v107) = 0;
        v108 = 0;
        nlohmann::detail::to_json_fn::operator()<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,util::view<AudioStreamBasicDescription>>(&v107, &aBlock);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v107);
        v23 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v105, "input_formats");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v107);
        v24 = *v23;
        *v23 = v107;
        LOBYTE(v107) = v24;
        v25 = *(v23 + 1);
        *(v23 + 1) = v108;
        v108 = v25;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v107);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v108, v24);
        LODWORD(aBlock) = *(v11 - 2);
        v95 = (v11 - 4);
        v120[0] = 0;
        v121 = 0;
        nlohmann::detail::to_json_fn::operator()<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,util::view<VoiceProcessorDownlinkTerminalType>>(v120, &aBlock);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v120);
        v26 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v105, "output_types");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v120);
        v27 = *v26;
        *v26 = v120[0];
        v120[0] = v27;
        v28 = *(v26 + 1);
        *(v26 + 1) = v121;
        v121 = v28;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v120);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v121, v27);
        LODWORD(aBlock) = *(v11 - 2);
        v95 = v11;
        v116[0] = 0;
        v117 = 0;
        nlohmann::detail::to_json_fn::operator()<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,util::view<AudioStreamBasicDescription>>(v116, &aBlock);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v116);
        v29 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v105, "output_formats");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v116);
        v30 = *v29;
        *v29 = v116[0];
        v116[0] = v30;
        v31 = *(v29 + 1);
        *(v29 + 1) = v117;
        v117 = v31;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v116);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v117, v30);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v105);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::push_back(v101, v105);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v105);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v106, v105[0]);
        v11 += 280;
        --v10;
      }

      while (v10);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v101);
    v32 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v99, "node_configurations");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v101);
    v33 = *v32;
    *v32 = v101[0];
    v101[0] = v33;
    v34 = *(v32 + 1);
    *(v32 + 1) = v102;
    v102 = v34;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v101);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v102, v33);
    v35 = *(__src + 229);
    v124[0] = 6;
    *&v124[8] = v35;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v124);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v124);
    v36 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v99, "client_io_block_size");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v124);
    v37 = *v36;
    *v36 = 6;
    v124[0] = v37;
    v38 = *(v36 + 1);
    *(v36 + 1) = v35;
    *&v124[8] = v38;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v36);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v124);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v124[8], v37);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v99);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(__p);
  }

  if (*a2 != 1)
  {
    v47 = vp::log(v39);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    LOWORD(__p[0]) = 0;
    v48 = "downlink configuration is not valid - topology is not supported";
LABEL_27:
    _os_log_error_impl(&dword_2724B4000, v47, OS_LOG_TYPE_ERROR, v48, __p, 2u);
    goto LABEL_28;
  }

  if (*(a2 + 1) != 1)
  {
    v47 = vp::log(v39);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    LOWORD(__p[0]) = 0;
    v48 = "downlink configuration is not valid - wrong number of node configurations";
    goto LABEL_27;
  }

  v40 = (a2 + 8);
  if (*(a2 + 2) != 1)
  {
    v47 = vp::log(v39);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      v48 = "downlink configuration is not valid - 'AllOfDownlinkDSPWithFarEndVoiceOnly' node configuration not found";
      goto LABEL_27;
    }

LABEL_28:

    goto LABEL_29;
  }

  v41 = *(a2 + 4);
  if ((v41 - 3) > 0xFFFFFFFD)
  {
    v53 = 0;
    while (*&a2[4 * v53 + 20])
    {
      if (v41 == ++v53)
      {
        v54 = std::string::basic_string[abi:ne200100]<0>(__p, "'AllOfDownlinkDSPWithFarEndVoiceOnly' node has no far-end-voice input");
        v40 = vp::log(v54);
        if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_55;
        }

LABEL_69:
        v60 = __p;
        if (SHIBYTE(__p[2]) < 0)
        {
          v60 = __p[0];
        }

        goto LABEL_100;
      }
    }

    v55 = 0;
    v56 = &a2[40 * v53 + 40];
    while (*&a2[4 * v55 + 20] != 4)
    {
      if (v41 == ++v55)
      {
        goto LABEL_47;
      }
    }

    if (*v56 != *&a2[40 * v55 + 40])
    {
      v57 = std::string::basic_string[abi:ne200100]<0>(__p, "'AllOfDownlinkDSPWithFarEndVoiceOnly' node far-end-voice and telemetry input sample rates are not equal");
      v40 = vp::log(v57);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      v60 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v60 = __p[0];
      }

      goto LABEL_100;
    }

LABEL_47:
    if (*(a2 + 60) != 1)
    {
      v58 = std::string::basic_string[abi:ne200100]<0>(__p, "'AllOfDownlinkDSPWithFarEndVoiceOnly' node has wrong number of outputs");
      v40 = vp::log(v58);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      v60 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v60 = __p[0];
      }

      goto LABEL_100;
    }

    if (*(a2 + 61) != 5)
    {
      v59 = std::string::basic_string[abi:ne200100]<0>(__p, "'AllOfDownlinkDSPWithFarEndVoiceOnly' node has no downlink output");
      v40 = vp::log(v59);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      v60 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v60 = __p[0];
      }

      goto LABEL_100;
    }

    if (*(a2 + 228) >= 0x11u)
    {
      v47 = vp::log(v39);
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      LOWORD(__p[0]) = 0;
      v48 = "downlink configuration is not valid - speaker telemetry input data sources count is out of bounds";
      goto LABEL_27;
    }

    v61 = *(a2 + 229);
    v62 = vp::log(v39);
    v47 = v62;
    if (!v61)
    {
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      LOWORD(__p[0]) = 0;
      v48 = "downlink configuration is not valid - client I/O block size can't be 0";
      goto LABEL_27;
    }

    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_2724B4000, v47, OS_LOG_TYPE_INFO, "downlink configuration is valid!", __p, 2u);
    }

    caulk::pooled_semaphore_mutex::_lock((a1 + 32));
    if (*a2 != 1)
    {
      result = _os_crash();
      __break(1u);
      return result;
    }

    v63 = *(a2 + 1);
    if (!v63)
    {
LABEL_68:
      _os_crash();
      __break(1u);
      goto LABEL_69;
    }

    v64 = 0;
    v65 = 280 * v63;
    while (1)
    {
      v66 = v40 + v64;
      if (*(v40 + v64) == 1)
      {
        break;
      }

      v64 += 280;
      if (v65 == v64)
      {
        goto LABEL_68;
      }
    }

    v67 = *(v66 + 8);
    if (v67)
    {
      v68 = 0;
      v2 = *(a2 + 229);
      v69 = v64 + 20;
      v70 = v64 + 244;
      while (*&a2[v69])
      {
        ++v68;
        v69 += 4;
        if (v67 == v68)
        {
          goto LABEL_76;
        }
      }
    }

    else
    {
LABEL_76:
      _os_crash();
      __break(1u);
    }

    v71 = *(v66 + 232);
    if (v71)
    {
      v40 = 0;
      v3 = v66 + 40 * v68;
      while (*&a2[v70] != 5)
      {
        ++v40;
        v70 += 4;
        if (v71 == v40)
        {
          goto LABEL_81;
        }
      }
    }

    else
    {
LABEL_81:
      _os_crash();
      __break(1u);
    }

    aBlock = MEMORY[0x277D85DD0];
    v95 = 3221225472;
    v96 = ___ZN28VoiceProcessorImplementation18InitializeDownlinkERK35VoiceProcessorDownlinkConfiguration_block_invoke;
    v97 = &__block_descriptor_40_e99_i32__0__AudioBufferList_I_1_AudioBuffer_II_v___8__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_16_I24l;
    v98 = a1;
    v72 = _Block_copy(&aBlock);
    caulk::concurrent::shared_spin_lock::lock(a1);
    v73 = v66 + 40 * v40;
    v74 = *(a1 + 8);
    v75 = v72;
    v76 = (*(*v74 + 32))(v74, v73 + 240, v2, v3 + 32, v75);
    if (v76)
    {
      v77 = vp::log(v76);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v124);
      }
    }

    caulk::concurrent::shared_spin_lock::unlock(a1);
    v78 = memcpy(__p, a2, sizeof(__p));
    LOBYTE(v110) = 1;
    HIDWORD(v110) = v2;
    v111 = v2;
    v79 = *(v3 + 48);
    *v124 = *(v3 + 32);
    v125 = v79;
    v126 = *(v3 + 64);
    v80 = 2 * *(a2 + 229);
    default_resource = std::pmr::get_default_resource(v78);
    v82 = vp::Audio_Buffer::create(&v112, v124, v80, default_resource);
    v83 = *(v3 + 48);
    v122[0] = *(v3 + 32);
    v122[1] = v83;
    v123 = *(v3 + 64);
    v84 = std::pmr::get_default_resource(v82);
    v85 = vp::Audio_Buffer::create(&v112 + 1, v122, 0, v84);
    *&v114[0] = 0;
    v113 = 0u;
    v86 = *(v73 + 256);
    v118[0] = *(v73 + 240);
    v118[1] = v86;
    v119 = *(v73 + 272);
    v87 = std::pmr::get_default_resource(v85);
    vp::Audio_Buffer::create(v114 + 1, v118, 0, v87);
    v114[1] = 0u;
    v115 = 0;
    if (*(a1 + 2216) == 1)
    {
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 2184), 0);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 2176), 0);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 2168), 0);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 2160), 0);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 2152), 0);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((a1 + 2144), 0);
      *(a1 + 2216) = 0;
    }

    memcpy((a1 + 1208), __p, 0x398uLL);
    v88 = v113;
    *(a1 + 2144) = v112;
    *(a1 + 2128) = v110;
    *(a1 + 2136) = v111;
    v112 = 0u;
    v113 = 0u;
    *(a1 + 2160) = v88;
    v89 = v114[0];
    v114[0] = 0u;
    *(a1 + 2176) = v89;
    *(a1 + 2192) = 0u;
    *(a1 + 2208) = 0;
    *(a1 + 2216) = 1;
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v114 + 1, 0);
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v114, 0);
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v113 + 1, 0);
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v113, 0);
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v112 + 1, 0);
    v90 = std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v112, 0);
    v91 = vp::log(v90);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_2724B4000, v91, OS_LOG_TYPE_INFO, "initialized downlink", __p, 2u);
    }

    v51 = 0;
    caulk::pooled_semaphore_mutex::_unlock((a1 + 32));
    goto LABEL_32;
  }

  v42 = std::string::basic_string[abi:ne200100]<0>(__p, "'AllOfDownlinkDSPWithFarEndVoiceOnly' node has wrong number of inputs");
  v40 = vp::log(v42);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v60 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v60 = __p[0];
    }

LABEL_100:
    *v124 = 136315138;
    *&v124[4] = v60;
    _os_log_error_impl(&dword_2724B4000, v40, OS_LOG_TYPE_ERROR, "downlink configuration is not valid - %s", v124, 0xCu);
  }

LABEL_55:

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_29:
  v50 = vp::log(v49);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    _os_log_error_impl(&dword_2724B4000, v50, OS_LOG_TYPE_ERROR, "failed to initialize downlink due to bad configuration", __p, 2u);
  }

  v51 = 1650681447;
LABEL_32:
  v52 = *MEMORY[0x277D85DE8];

  return ErrorFromOSStatus(v51);
}

uint64_t ___ZN28VoiceProcessorImplementation18InitializeDownlinkERK35VoiceProcessorDownlinkConfiguration_block_invoke(uint64_t a1, const AudioBufferList *a2, uint64_t a3, _DWORD *a4)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 2144);
  if (v7)
  {
    v8 = *(v7 + 80);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 2152);
  if (v9)
  {
    v10 = *(v9 + 80);
  }

  else
  {
    v10 = 0;
  }

  util::make_abl_view(v8, v10, *(v6 + 2192) | 0x100000000, (*(v6 + 2196) + *(v6 + 2192)) | 0x100000000);
  v11 = *(v6 + 2152);
  if (v11)
  {
    v12 = *(v11 + 80);
  }

  else
  {
    v12 = 0;
  }

  util::copy_abl_data(v12, a2, *a4);
  *(v6 + 2192) += *a4;
  *(v6 + 2196) -= *a4;
  return 0;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[378],char [378],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::detail::to_json_fn::operator()<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,util::view<VoiceProcessorDownlinkTerminalType>>(unsigned __int8 *a1, unsigned int *a2)
{
  if (*a2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 1) + 4 * v4);
      v6[0] = 5;
      v7 = v5;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::push_back(a1, v6);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v7, v6[0]);
      ++v4;
    }

    while (v4 < *a2);
  }
}

uint64_t VPSPIGetParameter(vp *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v3 = 1651664230;
    v4 = vp::log(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2724B4000, v4, OS_LOG_TYPE_FAULT, "failed to get parameter due to bad reference", buf, 2u);
    }

    goto LABEL_8;
  }

  if (!a3)
  {
    v3 = 1650553447;
    v4 = vp::log(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2724B4000, v4, OS_LOG_TYPE_ERROR, "VoiceProcessor_GetParameter BadArgument (outParameterValue)", v6, 2u);
    }

LABEL_8:

    return v3;
  }

  return 1651532146;
}

uint64_t VPSPISetParameter(uint64_t a1)
{
  if (a1)
  {
    return 1651532146;
  }

  v6 = v1;
  v7 = v2;
  v4 = vp::log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_2724B4000, v4, OS_LOG_TYPE_FAULT, "failed to set parameter due to bad reference", v5, 2u);
  }

  return 1651664230;
}

uint64_t VPSPIGetUplinkParameterList(vp *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a1)
  {
    if (a4)
    {
      if (a5)
      {
        v5 = 0;
        *a5 = 0;
        return v5;
      }

      v7 = vp::log(a1);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        v5 = 1650553447;

        return v5;
      }

      v11 = 0;
      v8 = "VoiceProcessor_GetUplinkParameterList BadArgument (ioParameterCount)";
      v9 = &v11;
    }

    else
    {
      v7 = vp::log(a1);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v12 = 0;
      v8 = "VoiceProcessor_GetUplinkParameterList BadArgument (outParameterList)";
      v9 = &v12;
    }

    _os_log_error_impl(&dword_2724B4000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    goto LABEL_11;
  }

  v6 = vp::log(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2724B4000, v6, OS_LOG_TYPE_FAULT, "failed to get uplink parameter list due to bad reference", buf, 2u);
  }

  return 1651664230;
}

uint64_t VPSPIGetDownlinkParameterList(vp *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a1)
  {
    if (a4)
    {
      if (a5)
      {
        v5 = 0;
        *a5 = 0;
        return v5;
      }

      v7 = vp::log(a1);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        v5 = 1650553447;

        return v5;
      }

      v11 = 0;
      v8 = "VoiceProcessor_GetDownlinkParameterList BadArgument (ioParameterCount)";
      v9 = &v11;
    }

    else
    {
      v7 = vp::log(a1);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v12 = 0;
      v8 = "VoiceProcessor_GetDownlinkParameterList BadArgument (outParameterList)";
      v9 = &v12;
    }

    _os_log_error_impl(&dword_2724B4000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    goto LABEL_11;
  }

  v6 = vp::log(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2724B4000, v6, OS_LOG_TYPE_FAULT, "failed to get downlink parameter list due to bad reference", buf, 2u);
  }

  return 1651664230;
}

uint64_t VPSPIGetPropertyInfo(void **a1, int a2, uint64_t a3, _DWORD *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v10 = vp::log(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2724B4000, v10, OS_LOG_TYPE_FAULT, "failed to get property info due to bad reference", buf, 2u);
    }

    result = 1651664230;
    goto LABEL_21;
  }

  if (!a3)
  {
    v11 = vp::log(a1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2724B4000, v11, OS_LOG_TYPE_ERROR, "VoiceProcessor_GetPropertyInfo BadArgument (outPropertySize)", buf, 2u);
    }

    goto LABEL_19;
  }

  if (!a4)
  {
    v11 = vp::log(a1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2724B4000, v11, OS_LOG_TYPE_ERROR, "VoiceProcessor_GetPropertyInfo BadArgument (outPropertyIsWritable)", buf, 2u);
    }

LABEL_19:

    result = 1650553447;
LABEL_21:
    v12 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (a2 != 1651074168)
  {
    result = 1651536498;
    goto LABEL_21;
  }

  v6 = (*(*a1[1] + 152))(a1[1], 32786);
  if (v6)
  {
    if (!*MEMORY[0x277D7F098])
    {
      __break(1u);
    }

    v7 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
    *(v7 + 16) = 0;
    *(v7 + 24) = v6;
    *(v7 + 32) = "GetPropertyInfo";
    *(v7 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::GetPropertyInfo, ArgTypeList = <unsigned int &, unsigned int *&, unsigned char *>]";
    *v7 = &unk_2881B1C10;
    *(v7 + 8) = 0;
    caulk::concurrent::messenger::enqueue((a1 + 2), v7);
  }

  *a4 = 0;
  v8 = *MEMORY[0x277D85DE8];

  return ErrorFromOSStatus(0);
}

void sub_272509668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    v36 = __cxa_begin_catch(a1);
    v37 = vp::log(v36);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x2725094F4);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(&a27);
  }

  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[253],char [253],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE5EJRjRPjPhEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA253_SL_EE7performEv(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[6] = *(a1 + 40);
  v6[7] = v2;
  v3 = vp::log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272509B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE5EJRjRPjPhEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA253_SL_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VPSPIGetProperty(vp *a1, int a2, void *a3, unsigned int *a4)
{
  if (!a1)
  {
    v6 = vp::log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2724B4000, v6, OS_LOG_TYPE_FAULT, "failed to get property due to bad reference", buf, 2u);
    }

    return 1651664230;
  }

  if (!a3)
  {
    v8 = vp::log(a1);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      v7 = 1650553447;

      return v7;
    }

    v12 = 0;
    v9 = "VoiceProcessor_GetProperty BadArgument (outPropertyData)";
    v10 = &v12;
LABEL_18:
    _os_log_error_impl(&dword_2724B4000, v8, OS_LOG_TYPE_ERROR, v9, v10, 2u);
    goto LABEL_14;
  }

  if (!a4)
  {
    v8 = vp::log(a1);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v11 = 0;
    v9 = "VoiceProcessor_GetProperty BadArgument (outPropertySize)";
    v10 = &v11;
    goto LABEL_18;
  }

  if (a2 != 1651074168)
  {
    return 1651536498;
  }

  Property = VoiceProcessorImplementation::GetProperty(a1, 32786, a3, a4);

  return ErrorFromOSStatus(Property);
}

unint64_t VoiceProcessorImplementation::GetProperty(VoiceProcessorImplementation *this, uint64_t a2, void *a3, unsigned int *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = 1651270507;
  v5 = atomic_load(this);
  if (v5 > 0x7FFFFFFE)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    v7 = v5;
    while (1)
    {
      atomic_compare_exchange_strong(this, &v7, v5 + 1);
      if (v7 == v5)
      {
        break;
      }

      v5 = v7;
      if (v7 >= 0x7FFFFFFF)
      {
        goto LABEL_5;
      }
    }

    v9 = (*(**(this + 1) + 48))(*(this + 1), a2, a3, *a4);
    if (v9)
    {
      if (!*MEMORY[0x277D7F098])
      {
        __break(1u);
      }

      v10 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v10 + 16) = 0;
      *(v10 + 24) = v9;
      *(v10 + 32) = "GetProperty";
      *(v10 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::GetProperty, ArgTypeList = <unsigned int &, void *&, unsigned int &, unsigned int *&>]";
      *v10 = &unk_2881B1C38;
      *(v10 + 8) = 0;
      caulk::concurrent::messenger::enqueue((this + 16), v10);
    }

    caulk::concurrent::shared_spin_lock::unlock_shared(this);
    v8 = 0x100000000;
    v4 = 1651270400;
  }

  v11 = v4 | v8;
  if (v11 >= 0x100000000)
  {
    result = 0x100000000;
  }

  else
  {
    result = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272509FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    v36 = __cxa_begin_catch(a1);
    v37 = vp::log(v36);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x272509F48);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(&a27);
  }

  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[257],char [257],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

unsigned int *caulk::concurrent::shared_spin_lock::unlock_shared(unsigned int *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = atomic_load(this);
  v2 = v1 & 0x7FFFFFFF;
  if ((v1 & 0x7FFFFFFF) != 0)
  {
    while (1)
    {
      if ((v1 & 0x80000000) != 0)
      {
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v3 = v2 - 1;
      v4 = v1;
      atomic_compare_exchange_strong(this, &v4, v3);
      if (v4 == v1)
      {
        break;
      }

      v1 = v4;
      v2 = v4 & 0x7FFFFFFF;
      if (!v2)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    this = _os_crash_msg();
    __break(1u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return this;
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPvS9_RPjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSF_EUlT_PKcSN_E_JRiRKSN_RA257_SM_EE7performEv(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[6] = *(a1 + 40);
  v6[7] = v2;
  v3 = vp::log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27250A678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPvS9_RPjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSF_EUlT_PKcSN_E_JRiRKSN_RA257_SM_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VPSPISetProperty(vp *a1, int a2, uint64_t a3, unsigned int a4)
{
  if (a1)
  {
    if (a3)
    {
      if (a2 == 1651074168)
      {
        v10 = 32786;
        *buf = a3;
        v8 = a4;
        v4 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)7,unsigned int &,void const*&,unsigned int &>(a1, &v10, buf, &v8);
        if (v4 >= 0x100000000)
        {
          v4 = 0x100000000;
        }

        return ErrorFromOSStatus(v4);
      }

      else
      {
        return 1651536498;
      }
    }

    else
    {
      v7 = vp::log(a1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2724B4000, v7, OS_LOG_TYPE_ERROR, "VoiceProcessor_SetProperty BadArgument (inPropertyData)", buf, 2u);
      }

      return 1650553447;
    }
  }

  else
  {
    v6 = vp::log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2724B4000, v6, OS_LOG_TYPE_FAULT, "failed to set property due to bad reference", buf, 2u);
    }

    return 1651664230;
  }
}

uint64_t VPSPIGetUplinkPropertyList(vp *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a1)
  {
    if (a4)
    {
      if (a5)
      {
        v5 = 0;
        *a5 = 0;
        return v5;
      }

      v7 = vp::log(a1);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        v5 = 1650553447;

        return v5;
      }

      v11 = 0;
      v8 = "VoiceProcessor_GetUplinkPropertyList BadArgument (ioPropertyCount)";
      v9 = &v11;
    }

    else
    {
      v7 = vp::log(a1);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v12 = 0;
      v8 = "VoiceProcessor_GetUplinkPropertyList BadArgument (outPropertyList)";
      v9 = &v12;
    }

    _os_log_error_impl(&dword_2724B4000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    goto LABEL_11;
  }

  v6 = vp::log(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2724B4000, v6, OS_LOG_TYPE_FAULT, "failed to get uplink property list due to bad reference", buf, 2u);
  }

  return 1651664230;
}

uint64_t VPSPIGetDownlinkPropertyList(vp *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a1)
  {
    if (a4)
    {
      if (a5)
      {
        v5 = 0;
        *a5 = 0;
        return v5;
      }

      v7 = vp::log(a1);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        v5 = 1650553447;

        return v5;
      }

      v11 = 0;
      v8 = "VoiceProcessor_GetDownlinkPropertyList BadArgument (ioPropertyCount)";
      v9 = &v11;
    }

    else
    {
      v7 = vp::log(a1);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v12 = 0;
      v8 = "VoiceProcessor_GetDownlinkPropertyList BadArgument (outPropertyList)";
      v9 = &v12;
    }

    _os_log_error_impl(&dword_2724B4000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    goto LABEL_11;
  }

  v6 = vp::log(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2724B4000, v6, OS_LOG_TYPE_FAULT, "failed to get downlink property list due to bad reference", buf, 2u);
  }

  return 1651664230;
}

uint64_t VPSPIPreflightUplink(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v13 = vp::log(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2724B4000, v13, OS_LOG_TYPE_FAULT, "failed to preflight uplink due to bad reference", buf, 2u);
    }

    result = 1651664230;
    goto LABEL_18;
  }

  if (!a4)
  {
    v15 = vp::log(a1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "VoiceProcessor_PreflightUplink BadArgument (outNumRequiredUplinkInputSamples)", buf, 2u);
    }

    result = 1650553447;
LABEL_18:
    v16 = *MEMORY[0x277D85DE8];
    return result;
  }

  v7 = 1651270507;
  v8 = caulk::pooled_semaphore_mutex::try_lock((a1 + 32));
  if (v8)
  {
    if (*(a1 + 1200) != 1 || (*(a1 + 2216) & 1) == 0)
    {
      v17 = vp::log(v8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "PreflightUplink BadState", buf, 2u);
      }

      v7 = 1651733601;
      goto LABEL_22;
    }

    v9 = 0;
    *(a1 + 1148) = 0;
    *(a1 + 1152) = a3;
    v10 = *(a1 + 1144);
    if (a3 > v10)
    {
      v11 = atomic_load(a1);
      if (v11 > 0x7FFFFFFE)
      {
LABEL_22:
        caulk::pooled_semaphore_mutex::_unlock((a1 + 32));
        goto LABEL_23;
      }

      v12 = v11;
      while (1)
      {
        atomic_compare_exchange_strong(a1, &v12, v11 + 1);
        if (v12 == v11)
        {
          break;
        }

        v11 = v12;
        if (v12 >= 0x7FFFFFFF)
        {
          goto LABEL_22;
        }
      }

      v19 = (*(**(a1 + 8) + 160))(*(a1 + 8), a3 - v10, a1 + 1148);
      if (v19)
      {
        if (!*MEMORY[0x277D7F098])
        {
          __break(1u);
        }

        v20 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
        *(v20 + 16) = 0;
        *(v20 + 24) = v19;
        *(v20 + 32) = "PreflightUplink";
        *(v20 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::PreflightUplink, ArgTypeList = <unsigned int, unsigned int *>]";
        *v20 = &unk_2881B1C88;
        *(v20 + 8) = 0;
        caulk::concurrent::messenger::enqueue((a1 + 16), v20);
      }

      caulk::concurrent::shared_spin_lock::unlock_shared(a1);
      v9 = *(a1 + 1148);
    }

    v7 = 0;
    *a4 = v9;
    *(a1 + 1156) = 1;
    goto LABEL_22;
  }

LABEL_23:
  v18 = *MEMORY[0x277D85DE8];

  return ErrorFromOSStatus(v7);
}

void sub_27250AE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (a2)
  {
    v47 = __cxa_begin_catch(a1);
    v48 = vp::log(v47);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x27250AE1CLL);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(&a27);
  }

  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[233],char [233],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE14EJjPjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSB_EUlT_PKcSJ_E_JRiRKSJ_RA233_SI_EE7performEv(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[6] = *(a1 + 40);
  v6[7] = v2;
  v3 = vp::log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27250B380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE14EJjPjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSB_EUlT_PKcSJ_E_JRiRKSJ_RA233_SI_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VPSPIProcessUplink(uint64_t a1, int *a2)
{
  if (!a1)
  {
    v11 = vp::log(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *v18 = 0;
      _os_log_fault_impl(&dword_2724B4000, v11, OS_LOG_TYPE_FAULT, "failed to process uplink due to bad reference", v18, 2u);
    }

    return 1651664230;
  }

  if (!a2)
  {
    v13 = vp::log(a1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2724B4000, v13, OS_LOG_TYPE_ERROR, "VoiceProcessor_ProcessUplink BadArgument (ioData)", v18, 2u);
    }

    v12 = 1650553447;

    return v12;
  }

  v4 = caulk::pooled_semaphore_mutex::try_lock((a1 + 32));
  if ((v4 & 1) == 0)
  {
    v15 = vp::log(v4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "ProcessUplink BadLock", v18, 2u);
    }

    v5 = 1651270507;
    goto LABEL_28;
  }

  v5 = 1651733601;
  if (*(a1 + 1200) != 1)
  {
    v16 = vp::log(v4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2724B4000, v16, OS_LOG_TYPE_ERROR, "ProcessUplink BadState (uplink)", v18, 2u);
    }

    if (*(a1 + 2216))
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if ((*(a1 + 2216) & 1) == 0)
  {
LABEL_25:
    v9 = vp::log(v4);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *v18 = 0;
    v10 = "ProcessUplink BadState (downlink)";
    goto LABEL_42;
  }

  v6 = *(a1 + 44);
  if (!v6)
  {
LABEL_10:
    v5 = 1651076964;
    v9 = vp::log(v4);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *v18 = 0;
    v10 = "ProcessUplink BadIOData";
LABEL_42:
    _os_log_error_impl(&dword_2724B4000, v9, OS_LOG_TYPE_ERROR, v10, v18, 2u);
    goto LABEL_26;
  }

  v7 = *a2;
  v8 = (a1 + 48);
  while (*v8 != v7)
  {
    v8 += 70;
    if (!--v6)
    {
      goto LABEL_10;
    }
  }

  if (!v8[1])
  {
    if (*(a1 + 1156) != 1)
    {
      v9 = vp::log(v4);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *v18 = 0;
      v10 = "ProcessUplink BadState preflight";
      goto LABEL_42;
    }

    *(a1 + 1156) = 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v17 = VoiceProcessorImplementation::ProcessULEchoDSP(a1, a2);
      goto LABEL_49;
    }

    if (v7 == 3)
    {
      v17 = VoiceProcessorImplementation::ProcessULDynamicsDSP(a1, a2);
      goto LABEL_49;
    }
  }

  else
  {
    if (!v7)
    {
      v17 = VoiceProcessorImplementation::ProcessAllOfULDSP(a1, a2);
      goto LABEL_49;
    }

    if (v7 == 1)
    {
      v17 = VoiceProcessorImplementation::ProcessULHardwareDSP(a1, a2);
LABEL_49:
      v5 = v17;
      goto LABEL_27;
    }
  }

  v5 = 1650553447;
  v9 = vp::log(v4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    v10 = "ProcessUplink BadArgument (nodeType)";
    goto LABEL_42;
  }

LABEL_26:

LABEL_27:
  caulk::pooled_semaphore_mutex::_unlock((a1 + 32));
LABEL_28:

  return ErrorFromOSStatus(v5);
}

uint64_t VoiceProcessorImplementation::ProcessAllOfULDSP(uint64_t a1, uint64_t a2)
{
  v123 = *MEMORY[0x277D85DE8];
  v4 = util::get_node_configuration<VoiceProcessorImplementation::Uplink,VoiceProcessorUplinkNodeType,util::required_tag>(a1 + 40, 0);
  v5 = util::get_input_index<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v4, 0);
  v6 = *(a2 + 8 + 8 * v5);
  if (!v6)
  {
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v120 = 134217984;
    *v121 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_135;
  }

  v7 = v5;
  v8 = *(a2 + 32 + 8 * v5);
  if (!v8)
  {
LABEL_135:
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v120 = 134217984;
    *v121 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_136;
  }

  v9 = util::get_input_index<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v4, 2);
  v10 = *(a2 + 8 + 8 * v9);
  if (!v10)
  {
LABEL_136:
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v120 = 134217984;
    *v121 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_137;
  }

  v11 = v9;
  v12 = *(a2 + 32 + 8 * v9);
  if (!v12)
  {
LABEL_137:
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v120 = 134217984;
    *v121 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_138;
  }

  v13 = util::get_output_index<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v4, 3);
  v14 = *(a2 + 8 * v13 + 72);
  if (!v14)
  {
LABEL_138:
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v120 = 134217984;
    *v121 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_139;
  }

  v15 = *(a2 + 8 * v13 + 96);
  if (!v15)
  {
LABEL_139:
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v120 = 134217984;
    *v121 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_140;
  }

  v16 = *(a2 + 56 + 4 * v7);
  if (v16 != *(a1 + 1148))
  {
LABEL_140:
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v120 = 134217984;
    *v121 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_141;
  }

  if (*(a2 + 56 + 4 * v11) != v16)
  {
LABEL_141:
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v120 = 134217984;
    *v121 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_142;
  }

  if (v16 % *(a1 + 1092))
  {
LABEL_142:
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v120 = 6291970;
    *v121 = 2048;
    *&v121[2] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    goto LABEL_143;
  }

  if (*(a1 + 1088) == 1)
  {
    v17 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)17,AudioBufferList &,AudioTimeStamp &>(a1);
    if (!HIDWORD(v17))
    {
      v19 = v17;
LABEL_120:
      VoiceProcessorImplementation::ZeroOut(a2, v18);
      goto LABEL_121;
    }

    *v122 = 0;
    v23 = *(a1 + 1128);
    if (v23)
    {
      v23 = *(v23 + 24) | 0x100000000;
    }

    if ((v23 & 0x100000000) != 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    vp::Audio_Buffer::prepare((a1 + 1128), v24);
    v26 = *v8;
    v27 = v15;
    v28 = 0;
    if (*(a1 + 1192) == 1)
    {
      LODWORD(v25) = *(a1 + 1092);
      if (v26 != *(a1 + 1184) + v25)
      {
        v28 = 1;
      }
    }

    *(a1 + 1184) = v26;
    *(a1 + 1192) = 1;
    v30 = *(a1 + 1128);
    if (v30)
    {
      v31 = *(v30 + 80);
    }

    else
    {
      v31 = 0;
    }

    v19 = 1651270507;
    v83 = atomic_load(a1);
    if (v83 > 0x7FFFFFFE)
    {
      goto LABEL_120;
    }

    v84 = v83;
    while (1)
    {
      atomic_compare_exchange_strong(a1, &v84, v83 + 1);
      if (v84 == v83)
      {
        break;
      }

      v83 = v84;
      if (v84 >= 0x7FFFFFFF)
      {
        goto LABEL_120;
      }
    }

    v85 = (*(**(a1 + 8) + 64))(*(a1 + 8), v6, v8, v31, v27, v122, 0, 0, 0);
    if (!v85)
    {
      v86 = v14;
      goto LABEL_117;
    }

    if (*MEMORY[0x277D7F098])
    {
      v86 = v14;
      v87 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v87 + 16) = 0;
      *(v87 + 24) = v85;
      *(v87 + 32) = "Process";
      *(v87 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::Process, ArgTypeList = <AudioBufferList &, AudioTimeStamp &, AudioBufferList &, AudioTimeStamp &, unsigned int &, std::nullptr_t, std::nullptr_t, std::nullptr_t>]";
      *v87 = &unk_2881B1CD8;
      *(v87 + 8) = 0;
      caulk::concurrent::messenger::enqueue((a1 + 16), v87);
LABEL_117:
      caulk::concurrent::shared_spin_lock::unlock_shared(a1);
      if (*v122)
      {
        v89 = *(a1 + 1128);
        if (v89)
        {
          v90 = *(v89 + 80);
        }

        else
        {
          v90 = 0;
        }

        vp::Audio_Ring_Buffer::write(*(a1 + 1160), v90, *v27, *v27 + *v122);
      }

      else
      {
        util::zero_fill_abl(v86, v88);
      }

      v94 = *(a1 + 1176);
      v95 = *(a1 + 1168);
      if (((v94 > v95) & ~v28) == 0)
      {
        v95 = *v27;
        v94 = *(a1 + 1092) + v95;
        *(a1 + 1168) = v95;
        *(a1 + 1176) = v94;
      }

      v96 = *(a1 + 1160);
      if (v96 && (v97 = *(v96 + 72), v98 = *(v96 + 80), v98 > v97) && (v94 <= v95 || v98 >= v94 && v97 <= v95))
      {
        vp::Audio_Ring_Buffer::read(v96, v86, v95, v94);
        v99 = *(a1 + 1176);
        v100 = v99 + *(a1 + 1092);
        *(a1 + 1168) = v99;
        *(a1 + 1176) = v100;
      }

      else
      {
        util::zero_fill_abl(v86, v93);
      }

LABEL_33:
      v19 = 0;
      goto LABEL_121;
    }

LABEL_143:
    __break(1u);
LABEL_144:
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v120 = 134217984;
    *v121 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v20 = *(a1 + 1144);
  if (v20)
  {
    v21 = *(a1 + 1136);
    if (v21)
    {
      v22 = *(v21 + 80);
    }

    else
    {
      v22 = 0;
    }

    if (v20 >= *(a1 + 1152))
    {
      util::copy_abl_data(v22, v14, *(a1 + 1152));
      v29 = *(a1 + 1152);
      *(a1 + 1144) -= v29;
      *v15 = *v15 + v29;
      v16 = *(a1 + 1148);
      if (v16)
      {
        v82 = _os_crash();
        __break(1u);
LABEL_146:
        v101 = vp::log(v82);
        if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109376;
          *&buf[4] = v14;
          *&buf[8] = 1024;
          *&buf[10] = v104;
          _os_log_fault_impl(&dword_2724B4000, v101, OS_LOG_TYPE_FAULT, "I/O rate mismatch has occurred on I/O cycle %u out of %d", buf, 0xEu);
        }

        std::terminate();
      }
    }

    else
    {
      util::copy_abl_data(v22, v14, v20);
      v29 = *(a1 + 1144);
      *(a1 + 1144) = 0;
      *v15 = *v15 + v29;
      v16 = *(a1 + 1148);
    }
  }

  else
  {
    v29 = 0;
  }

  v32 = *(a1 + 1092);
  if (v32 > v16)
  {
    goto LABEL_33;
  }

  v106 = v29;
  p_mNumberBuffers = &v14->mNumberBuffers;
  v33 = 0;
  v104 = v16 / v32;
  v103 = v16 / v32 - 1;
  while (1)
  {
    LODWORD(v14) = v33;
    v34 = *(a1 + 1112);
    v35 = v34 ? *(v34 + 80) : 0;
    v36 = *(a1 + 1092);
    v37 = v36 * v33++;
    util::make_abl_view(v6, v35, v37 | 0x100000000, (v36 * v33) | 0x100000000);
    v38 = *(a1 + 1120);
    v39 = v38 ? *(v38 + 80) : 0;
    util::make_abl_view(v10, v39, (*(a1 + 1092) * v14) | 0x100000000, (*(a1 + 1092) * v33) | 0x100000000);
    if (*(a1 + 1152) - v106 >= *(a1 + 1104))
    {
      v42 = *(a1 + 1128);
      v43 = v42 ? *(v42 + 80) : 0;
      util::make_abl_view(p_mNumberBuffers, v43, v106 | 0x100000000, 0);
    }

    else
    {
      v40 = *(a1 + 1136);
      if (v40)
      {
        v41 = *(v40 + 80);
      }

      else
      {
        v41 = 0;
      }

      v44 = *(a1 + 1128);
      if (v44)
      {
        v45 = *(v44 + 80);
      }

      else
      {
        v45 = 0;
      }

      util::make_abl_view(v41, v45, 0, 0);
      if (*(a1 + 1144))
      {
        goto LABEL_144;
      }
    }

    v46 = v12[3];
    v48 = *v12;
    v47 = v12[1];
    v113[2] = v12[2];
    v113[3] = v46;
    v113[0] = v48;
    v113[1] = v47;
    *v113 = *&v48 + (*(a1 + 1092) * v14);
    v49 = *(a1 + 1120);
    v50 = v49 ? *(v49 + 80) : 0;
    v51 = atomic_load(a1);
    if (v51 > 0x7FFFFFFE)
    {
      break;
    }

    v52 = v51;
    while (1)
    {
      atomic_compare_exchange_strong(a1, &v52, v51 + 1);
      if (v52 == v51)
      {
        break;
      }

      v51 = v52;
      if (v52 >= 0x7FFFFFFF)
      {
        goto LABEL_106;
      }
    }

    v53 = (*(**(a1 + 8) + 128))(*(a1 + 8), v50, v113);
    if (v53)
    {
      if (!*MEMORY[0x277D7F098])
      {
        goto LABEL_143;
      }

      v54 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v54 + 16) = 0;
      *(v54 + 24) = v53;
      *(v54 + 32) = "AppendReferenceSignal";
      *(v54 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::AppendReferenceSignal, ArgTypeList = <AudioBufferList &, CA::TimeStamp &>]";
      *v54 = &unk_2881B1D00;
      *(v54 + 8) = 0;
      caulk::concurrent::messenger::enqueue((a1 + 16), v54);
    }

    caulk::concurrent::shared_spin_lock::unlock_shared(a1);
    v112 = 0;
    v55 = *(v8 + 3);
    v57 = *v8;
    v56 = *(v8 + 1);
    v110 = *(v8 + 2);
    v111 = v55;
    *__p = v57;
    v109 = v56;
    *__p = *&v57 + (*(a1 + 1092) * v14);
    v58 = *(a1 + 1112);
    v50 = v58 ? *(v58 + 80) : 0;
    v59 = *(a1 + 1128);
    v60 = v59 ? *(v59 + 80) : 0;
    v61 = atomic_load(a1);
    if (v61 > 0x7FFFFFFE)
    {
      break;
    }

    v62 = v61;
    while (1)
    {
      atomic_compare_exchange_strong(a1, &v62, v61 + 1);
      if (v62 == v61)
      {
        break;
      }

      v61 = v62;
      if (v62 >= 0x7FFFFFFF)
      {
        goto LABEL_106;
      }
    }

    v63 = (*(**(a1 + 8) + 64))(*(a1 + 8), v50, __p, v60, v15, &v112, 0, 0, 0);
    if (v63)
    {
      if (!*MEMORY[0x277D7F098])
      {
        goto LABEL_143;
      }

      v64 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v64 + 16) = 0;
      *(v64 + 24) = v63;
      *(v64 + 32) = "Process";
      *(v64 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::Process, ArgTypeList = <AudioBufferList &, CA::TimeStamp &, AudioBufferList &, AudioTimeStamp &, unsigned int &, std::nullptr_t, std::nullptr_t, std::nullptr_t>]";
      *v64 = &unk_2881B1D28;
      *(v64 + 8) = 0;
      caulk::concurrent::messenger::enqueue((a1 + 16), v64);
    }

    caulk::concurrent::shared_spin_lock::unlock_shared(a1);
    v65 = v106;
    if (*(a1 + 1152) - v106 >= *(a1 + 1104))
    {
      v106 += v112;
    }

    else
    {
      v66 = *(a1 + 1128);
      if (v66)
      {
        v67 = *(v66 + 80);
      }

      else
      {
        v67 = 0;
      }

      util::make_abl_view(p_mNumberBuffers, v67, v106 | 0x100000000, 0);
      v68 = *(a1 + 1136);
      if (v68)
      {
        v69 = *(v68 + 80);
      }

      else
      {
        v69 = 0;
      }

      v70 = *(a1 + 1128);
      if (v70)
      {
        v71 = *(v70 + 80);
      }

      else
      {
        v71 = 0;
      }

      log = *(a1 + 1152);
      if (log - v106 <= v112)
      {
        v107 = log - v106;
        util::copy_abl_data(v69, v71, (log - v65));
        v72 = *(a1 + 1136);
        if (v72)
        {
          v73 = *(v72 + 80);
        }

        else
        {
          v73 = 0;
        }

        v74 = *(a1 + 1128);
        if (v74)
        {
          v75 = *(v74 + 80);
        }

        else
        {
          v75 = 0;
        }

        v76 = v112;
        util::make_abl_view(v73, v75, v107 | 0x100000000, v112 | 0x100000000);
        v77 = *(a1 + 1128);
        if (v77)
        {
          v78 = *(v77 + 80);
        }

        else
        {
          v78 = 0;
        }

        v79 = *(a1 + 1136);
        if (v79)
        {
          v80 = *(v79 + 80);
        }

        else
        {
          v80 = 0;
        }

        v81 = (v76 - v107);
        v82 = util::copy_abl_data(v78, v80, v81);
        *(a1 + 1144) = v81;
        v106 = log;
        if (v14 != v103)
        {
          goto LABEL_146;
        }
      }

      else
      {
        util::copy_abl_data(v69, v71, v112);
        v106 += v112;
        *(a1 + 1144) = 0;
      }
    }

    v19 = 0;
    if (v33 >= v104)
    {
      goto LABEL_121;
    }
  }

LABEL_106:
  VoiceProcessorImplementation::ZeroOut(a2, v50);
  v19 = 1651270507;
LABEL_121:
  v91 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_27250CB58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a2)
  {
    v62 = __cxa_begin_catch(a1);
    v63 = vp::log(v62);
    if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x27250C40CLL);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(v61 - 240);
  }

  _Unwind_Resume(a1);
}

void sub_27250CD10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t VoiceProcessorImplementation::ProcessULHardwareDSP(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = util::get_node_configuration<VoiceProcessorImplementation::Uplink,VoiceProcessorUplinkNodeType,util::required_tag>(a1 + 40, 1);
  v5 = util::get_input_index<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v4, 0);
  v6 = *(a2 + 8 + 8 * v5);
  if (!v6)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v30 = 134217984;
    v31 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  v7 = *(a2 + 32 + 8 * v5);
  if (!v7)
  {
LABEL_26:
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v30 = 134217984;
    v31 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_27;
  }

  v8 = util::get_input_index<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v4, 2);
  if (!*(a2 + 8 + 8 * v8))
  {
LABEL_27:
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v30 = 134217984;
    v31 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_28;
  }

  if (!*(a2 + 32 + 8 * v8))
  {
LABEL_28:
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v30 = 134217984;
    v31 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_29;
  }

  v9 = a2 + 72;
  v23[0] = *(a2 + 72 + 8 * util::get_output_index<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v4, 0));
  if (!v23[0])
  {
LABEL_29:
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v30 = 134217984;
    v31 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_30;
  }

  v22 = *(v9 + 8 * util::get_output_index<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v4, 1));
  if (!v22)
  {
LABEL_30:
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v30 = 134217984;
    v31 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_31;
  }

  v21 = *(v9 + 8 * util::get_output_index<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v4, 2));
  if (!v21)
  {
LABEL_31:
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v30 = 134217984;
    v31 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    goto LABEL_32;
  }

  v10 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)17,AudioBufferList &,AudioTimeStamp &>(a1);
  if (!HIDWORD(v10))
  {
    v12 = v10;
LABEL_22:
    VoiceProcessorImplementation::ZeroOut(a2, v11);
    goto LABEL_23;
  }

  v12 = 1651270507;
  v13 = atomic_load(a1);
  if (v13 > 0x7FFFFFFE)
  {
    goto LABEL_22;
  }

  v14 = v13;
  while (1)
  {
    atomic_compare_exchange_strong(a1, &v14, v13 + 1);
    if (v14 == v13)
    {
      break;
    }

    v13 = v14;
    if (v14 >= 0x7FFFFFFF)
    {
      goto LABEL_22;
    }
  }

  v15 = (*(**(a1 + 8) + 192))(*(a1 + 8), v6, v7);
  if (v15)
  {
    if (*MEMORY[0x277D7F098])
    {
      v16 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v16 + 16) = 0;
      *(v16 + 24) = v15;
      *(v16 + 32) = "RunUplinkHardwareDSP";
      *(v16 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::RunUplinkHardwareDSP, ArgTypeList = <AudioBufferList *&, AudioTimeStamp *&>]";
      *v16 = &unk_2881B1D50;
      *(v16 + 8) = 0;
      caulk::concurrent::messenger::enqueue((a1 + 16), v16);
      goto LABEL_18;
    }

LABEL_32:
    __break(1u);
  }

LABEL_18:
  caulk::concurrent::shared_spin_lock::unlock_shared(a1);
  LODWORD(v24) = 0;
  v17 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)12,vp::BufferID,AudioBufferList *&>(a1, &v24, v23);
  if (HIDWORD(v17) && (LODWORD(v24) = 1, v17 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)12,vp::BufferID,AudioBufferList *&>(a1, &v24, &v21), HIDWORD(v17)) && (LODWORD(v24) = 2, v17 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)12,vp::BufferID,AudioBufferList *&>(a1, &v24, &v22), HIDWORD(v17)))
  {
    v12 = 0;
  }

  else
  {
    v12 = v17;
    VoiceProcessorImplementation::ZeroOut(a2, v18);
  }

LABEL_23:
  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_27250D3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    v40 = __cxa_begin_catch(a1);
    v41 = vp::log(v40);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x27250CF08);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(v39 - 192);
  }

  _Unwind_Resume(a1);
}

uint64_t VoiceProcessorImplementation::ProcessULEchoDSP(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = util::get_node_configuration<VoiceProcessorImplementation::Uplink,VoiceProcessorUplinkNodeType,util::required_tag>(a1 + 40, 2);
  v5 = util::get_input_index<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v4, 0);
  v6 = a2 + 8;
  v27[0] = *(a2 + 8 + 8 * v5);
  if (!v27[0])
  {
    v33 = 0;
    v32 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v34 = 134217984;
    v35 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_29;
  }

  v7 = a2 + 32;
  v8 = *(a2 + 32 + 8 * v5);
  if (!v8)
  {
LABEL_29:
    v33 = 0;
    v32 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v34 = 134217984;
    v35 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_30;
  }

  v9 = util::get_input_index<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v4, 2);
  v10 = *(v6 + 8 * v9);
  v26 = v10;
  if (!v10)
  {
LABEL_30:
    v33 = 0;
    v32 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v34 = 134217984;
    v35 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_31;
  }

  if (!*(v7 + 8 * v9))
  {
LABEL_31:
    v33 = 0;
    v32 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v34 = 134217984;
    v35 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v11 = util::get_input_index<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v4, 1);
  v25 = *(v6 + 8 * v11);
  if (!v25)
  {
LABEL_32:
    v33 = 0;
    v32 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v34 = 134217984;
    v35 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

  if (!*(v7 + 8 * v11))
  {
LABEL_33:
    v33 = 0;
    v32 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v34 = 134217984;
    v35 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_34;
  }

  v24 = *(a2 + 8 * util::get_output_index<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v4, 3) + 72);
  if (!v24)
  {
LABEL_34:
    v33 = 0;
    v32 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v34 = 134217984;
    v35 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    goto LABEL_35;
  }

  LODWORD(v28) = 3;
  v12 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)13,vp::BufferID,AudioBufferList *&>(a1, &v28, v27);
  if (HIDWORD(v12))
  {
    if (*v10)
    {
      v15 = 0;
      v16 = (v10 + 4);
      do
      {
        bzero(*v16, *(v16 - 1));
        ++v15;
        v16 += 2;
      }

      while (v15 < *v10);
    }

    LODWORD(v28) = 4;
    v17 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)13,vp::BufferID,AudioBufferList *&>(a1, &v28, &v26);
    if (!HIDWORD(v17) || (LODWORD(v28) = 5, v17 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)13,vp::BufferID,AudioBufferList *&>(a1, &v28, &v25), !HIDWORD(v17)))
    {
LABEL_16:
      v14 = v17;
      VoiceProcessorImplementation::ZeroOut(a2, v13);
      goto LABEL_17;
    }

    v14 = 1651270507;
    v20 = atomic_load(a1);
    if (v20 > 0x7FFFFFFE)
    {
      goto LABEL_10;
    }

    v21 = v20;
    while (1)
    {
      atomic_compare_exchange_strong(a1, &v21, v20 + 1);
      if (v21 == v20)
      {
        break;
      }

      v20 = v21;
      if (v21 >= 0x7FFFFFFF)
      {
        goto LABEL_10;
      }
    }

    v22 = (*(**(a1 + 8) + 200))(*(a1 + 8), v8);
    if (!v22)
    {
LABEL_26:
      caulk::concurrent::shared_spin_lock::unlock_shared(a1);
      LODWORD(v28) = 6;
      v17 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)12,vp::BufferID,AudioBufferList *&>(a1, &v28, &v24);
      if (HIDWORD(v17))
      {
        v14 = 0;
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (*MEMORY[0x277D7F098])
    {
      v23 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v23 + 16) = 0;
      *(v23 + 24) = v22;
      *(v23 + 32) = "RunUplinkHardwareDSP";
      *(v23 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::RunUplinkEchoDSP, ArgTypeList = <AudioTimeStamp *&>]";
      *v23 = &unk_2881B1DC8;
      *(v23 + 8) = 0;
      caulk::concurrent::messenger::enqueue((a1 + 16), v23);
      goto LABEL_26;
    }

LABEL_35:
    __break(1u);
  }

  v14 = v12;
LABEL_10:
  VoiceProcessorImplementation::ZeroOut(a2, v13);
LABEL_17:
  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_27250DC04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a2)
  {
    v42 = __cxa_begin_catch(a1);
    v43 = vp::log(v42);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x27250D7F4);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(v41 - 176);
  }

  _Unwind_Resume(a1);
}

uint64_t VoiceProcessorImplementation::ProcessULDynamicsDSP(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = util::get_node_configuration<VoiceProcessorImplementation::Uplink,VoiceProcessorUplinkNodeType,util::required_tag>(a1 + 40, 3);
  v5 = util::get_input_index<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v4, 3);
  v6 = *(a2 + 8 * v5 + 8);
  if (!v6)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v7 = *(a2 + 8 * v5 + 32);
  if (!v7)
  {
LABEL_16:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a2 + 4 * v5 + 56);
  v9 = a2 + 8 * util::get_output_index<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(v4, 3);
  v10 = *(v9 + 72);
  if (!v10)
  {
LABEL_17:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    goto LABEL_18;
  }

  v11 = 1651270507;
  util::copy_abl_data(v6, *(v9 + 72), v8);
  v13 = atomic_load(a1);
  if (v13 > 0x7FFFFFFE)
  {
LABEL_13:
    VoiceProcessorImplementation::ZeroOut(a2, v12);
    goto LABEL_14;
  }

  v14 = v13;
  while (1)
  {
    atomic_compare_exchange_strong(a1, &v14, v13 + 1);
    if (v14 == v13)
    {
      break;
    }

    v13 = v14;
    if (v14 >= 0x7FFFFFFF)
    {
      goto LABEL_13;
    }
  }

  v15 = (*(**(a1 + 8) + 208))(*(a1 + 8), v10, v7, v8);
  if (v15)
  {
    if (*MEMORY[0x277D7F098])
    {
      v16 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v16 + 16) = 0;
      *(v16 + 24) = v15;
      *(v16 + 32) = "RunUplinkDynamicsDSP";
      *(v16 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::RunUplinkDynamicsDSP, ArgTypeList = <AudioBufferList *&, AudioTimeStamp *&, unsigned int &>]";
      *v16 = &unk_2881B1DF0;
      *(v16 + 8) = 0;
      caulk::concurrent::messenger::enqueue((a1 + 16), v16);
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
  }

LABEL_12:
  caulk::concurrent::shared_spin_lock::unlock_shared(a1);
  v11 = 0;
LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_27250E14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    v38 = __cxa_begin_catch(a1);
    v39 = vp::log(v38);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x27250DF44);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(v37 - 176);
  }

  _Unwind_Resume(a1);
}

_DWORD *util::get_node_configuration<VoiceProcessorImplementation::Uplink,VoiceProcessorUplinkNodeType,util::required_tag>(uint64_t a1, int a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    result = (a1 + 8);
    while (*result != a2)
    {
      result += 70;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t util::get_input_index<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    result = 0;
    v5 = a1 + 12;
    while (*(v5 + 4 * result) != a2)
    {
      if (v2 == ++result)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t util::get_output_index<VoiceProcessorUplinkNodeConfiguration,VoiceProcessorUplinkTerminalType,util::required_tag>(uint64_t a1, int a2)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    result = 0;
    v5 = a1 + 148;
    while (*(v5 + 4 * result) != a2)
    {
      if (v2 == ++result)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void VoiceProcessorImplementation::ZeroOut(uint64_t a1, AudioBufferList *a2)
{
  v2 = *(a1 + 68);
  if (v2)
  {
    v4 = 0;
    v5 = a1 + 72;
    do
    {
      v6 = *(v5 + 8 * v4);
      if (v6)
      {
        util::zero_fill_abl(v6, a2);
        v2 = *(a1 + 68);
      }

      ++v4;
    }

    while (v4 < v2);
  }
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[263],char [263],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE11EJRP15AudioBufferListRP14AudioTimeStampRjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSH_EUlT_PKcSP_E_JRiRKSP_RA263_SO_EE7performEv(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[6] = *(a1 + 40);
  v6[7] = v2;
  v3 = vp::log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27250E7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE11EJRP15AudioBufferListRP14AudioTimeStampRjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSH_EUlT_PKcSP_E_JRiRKSP_RA263_SO_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)13,vp::BufferID,AudioBufferList *&>(uint64_t a1, unsigned int *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = 1651270507;
  v4 = atomic_load(a1);
  if (v4 > 0x7FFFFFFE)
  {
LABEL_5:
    v7 = 0;
  }

  else
  {
    v6 = v4;
    while (1)
    {
      atomic_compare_exchange_strong(a1, &v6, v4 + 1);
      if (v6 == v4)
      {
        break;
      }

      v4 = v6;
      if (v6 >= 0x7FFFFFFF)
      {
        goto LABEL_5;
      }
    }

    v8 = (*(**(a1 + 8) + 184))(*(a1 + 8), *a2, *a3);
    if (v8)
    {
      if (!*MEMORY[0x277D7F098])
      {
        __break(1u);
      }

      v9 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v9 + 16) = 0;
      *(v9 + 24) = v8;
      *(v9 + 32) = "WriteBuffer";
      *(v9 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::WriteBuffer, ArgTypeList = <vp::BufferID, AudioBufferList *&>]";
      *v9 = &unk_2881B1DA0;
      *(v9 + 8) = 0;
      caulk::concurrent::messenger::enqueue((a1 + 16), v9);
    }

    caulk::concurrent::shared_spin_lock::unlock_shared(a1);
    v7 = 0x100000000;
    v3 = 1651270400;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3 | v7;
}

void sub_27250EA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    v36 = __cxa_begin_catch(a1);
    v37 = vp::log(v36);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x27250EA28);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(&a27);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)12,vp::BufferID,AudioBufferList *&>(uint64_t a1, unsigned int *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = 1651270507;
  v4 = atomic_load(a1);
  if (v4 > 0x7FFFFFFE)
  {
LABEL_5:
    v7 = 0;
  }

  else
  {
    v6 = v4;
    while (1)
    {
      atomic_compare_exchange_strong(a1, &v6, v4 + 1);
      if (v6 == v4)
      {
        break;
      }

      v4 = v6;
      if (v6 >= 0x7FFFFFFF)
      {
        goto LABEL_5;
      }
    }

    v8 = (*(**(a1 + 8) + 176))(*(a1 + 8), *a2, *a3);
    if (v8)
    {
      if (!*MEMORY[0x277D7F098])
      {
        __break(1u);
      }

      v9 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v9 + 16) = 0;
      *(v9 + 24) = v8;
      *(v9 + 32) = "ReadBuffer";
      *(v9 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::ReadBuffer, ArgTypeList = <vp::BufferID, AudioBufferList *&>]";
      *v9 = &unk_2881B1D78;
      *(v9 + 8) = 0;
      caulk::concurrent::messenger::enqueue((a1 + 16), v9);
    }

    caulk::concurrent::shared_spin_lock::unlock_shared(a1);
    v7 = 0x100000000;
    v3 = 1651270400;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3 | v7;
}

void sub_27250EDB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    v36 = __cxa_begin_catch(a1);
    v37 = vp::log(v36);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x27250ED58);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(&a27);
  }

  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[232],char [232],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE12EJNS3_8BufferIDERP15AudioBufferListEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA232_SL_EE7performEv(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[6] = *(a1 + 40);
  v6[7] = v2;
  v3 = vp::log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27250F2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE12EJNS3_8BufferIDERP15AudioBufferListEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA232_SL_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[223],char [223],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE10EJRP14AudioTimeStampEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSD_EUlT_PKcSL_E_JRiRKSL_RA223_SK_EE7performEv(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[6] = *(a1 + 40);
  v6[7] = v2;
  v3 = vp::log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27250F794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE10EJRP14AudioTimeStampEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSD_EUlT_PKcSL_E_JRiRKSL_RA223_SK_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE13EJNS3_8BufferIDERP15AudioBufferListEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA233_SL_EE7performEv(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[6] = *(a1 + 40);
  v6[7] = v2;
  v3 = vp::log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27250FBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE13EJNS3_8BufferIDERP15AudioBufferListEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA233_SL_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)17,AudioBufferList &,AudioTimeStamp &>(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = 1651270507;
  v2 = atomic_load(a1);
  if (v2 > 0x7FFFFFFE)
  {
LABEL_5:
    v5 = 0;
  }

  else
  {
    v4 = v2;
    while (1)
    {
      atomic_compare_exchange_strong(a1, &v4, v2 + 1);
      if (v4 == v2)
      {
        break;
      }

      v2 = v4;
      if (v4 >= 0x7FFFFFFF)
      {
        goto LABEL_5;
      }
    }

    v6 = (*(**(a1 + 8) + 128))(*(a1 + 8));
    if (v6)
    {
      if (!*MEMORY[0x277D7F098])
      {
        __break(1u);
      }

      v7 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v7 + 16) = 0;
      *(v7 + 24) = v6;
      *(v7 + 32) = "AppendReferenceSignal";
      *(v7 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::AppendReferenceSignal, ArgTypeList = <AudioBufferList &, AudioTimeStamp &>]";
      *v7 = &unk_2881B1CB0;
      *(v7 + 8) = 0;
      caulk::concurrent::messenger::enqueue((a1 + 16), v7);
    }

    caulk::concurrent::shared_spin_lock::unlock_shared(a1);
    v5 = 0x100000000;
    v1 = 1651270400;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v1 | v5;
}

void sub_27250FEA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    v36 = __cxa_begin_catch(a1);
    v37 = vp::log(v36);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x27250FE44);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(&a27);
  }

  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[247],char [247],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE9EJRP15AudioBufferListRP14AudioTimeStampEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSG_EUlT_PKcSO_E_JRiRKSO_RA247_SN_EE7performEv(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[6] = *(a1 + 40);
  v6[7] = v2;
  v3 = vp::log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725103C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE9EJRP15AudioBufferListRP14AudioTimeStampEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSG_EUlT_PKcSO_E_JRiRKSO_RA247_SN_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE17EJR15AudioBufferListR14AudioTimeStampEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA246_SL_EE7performEv(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[6] = *(a1 + 40);
  v6[7] = v2;
  v3 = vp::log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272510808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE17EJR15AudioBufferListR14AudioTimeStampEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA246_SL_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[332],char [332],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE8EJR15AudioBufferListRN2CA9TimeStampESA_R14AudioTimeStampRjDnDnDnEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSI_EUlT_PKcSQ_E_JRiRKSQ_RA332_SP_EE7performEv(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[6] = *(a1 + 40);
  v6[7] = v2;
  v3 = vp::log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272510CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE8EJR15AudioBufferListRN2CA9TimeStampESA_R14AudioTimeStampRjDnDnDnEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSI_EUlT_PKcSQ_E_JRiRKSQ_RA332_SP_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[245],char [245],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE17EJR15AudioBufferListRN2CA9TimeStampEEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSF_EUlT_PKcSN_E_JRiRKSN_RA245_SM_EE7performEv(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[6] = *(a1 + 40);
  v6[7] = v2;
  v3 = vp::log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272511190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE17EJR15AudioBufferListRN2CA9TimeStampEEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSF_EUlT_PKcSN_E_JRiRKSN_RA245_SM_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[333],char [333],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE8EJR15AudioBufferListR14AudioTimeStampSA_SC_RjDnDnDnEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSF_EUlT_PKcSN_E_JRiRKSN_RA333_SM_EE7performEv(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[6] = *(a1 + 40);
  v6[7] = v2;
  v3 = vp::log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272511654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE8EJR15AudioBufferListR14AudioTimeStampSA_SC_RjDnDnDnEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSF_EUlT_PKcSN_E_JRiRKSN_RA333_SM_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VPSPIPreflightDownlink(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, _DWORD *a5)
{
  *(&v31[10] + 4) = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v14 = vp::log(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2724B4000, v14, OS_LOG_TYPE_FAULT, "failed to preflight downlink due to bad reference", buf, 2u);
    }

    result = 1651664230;
    goto LABEL_21;
  }

  if (!a4)
  {
    v16 = vp::log(a1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2724B4000, v16, OS_LOG_TYPE_ERROR, "VoiceProcessor_PreflightDownlink BadArgument (outNumConsumedDownlinkInputSamples)", buf, 2u);
    }

    goto LABEL_20;
  }

  if (!a5)
  {
    v16 = vp::log(a1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2724B4000, v16, OS_LOG_TYPE_ERROR, "VoiceProcessor_PreflightDownlink BadArgument (outNumProducesDownlinkOutputSamples)", buf, 2u);
    }

LABEL_20:

    result = 1650553447;
LABEL_21:
    v17 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = caulk::pooled_semaphore_mutex::try_lock((a1 + 32));
  if ((v9 & 1) == 0)
  {
    v18 = vp::log(v9);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2724B4000, v18, OS_LOG_TYPE_ERROR, "PreflightDownlink BadLock", buf, 2u);
    }

    v10 = 1651270507;
    goto LABEL_32;
  }

  v10 = 1651733601;
  if (*(a1 + 1200) != 1)
  {
    v19 = vp::log(v9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2724B4000, v19, OS_LOG_TYPE_ERROR, "PreflightDownlink BadState (uplink)", buf, 2u);
    }

    if (*(a1 + 2216))
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if ((*(a1 + 2216) & 1) == 0)
  {
LABEL_28:
    v20 = vp::log(v9);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2724B4000, v20, OS_LOG_TYPE_ERROR, "PreflightDownlink BadState (downlink)", buf, 2u);
    }

    goto LABEL_31;
  }

  v10 = 1651270507;
  v11 = *(a1 + 2196);
  v12 = atomic_load(a1);
  if (v12 <= 0x7FFFFFFE)
  {
    v13 = v12;
    while (1)
    {
      atomic_compare_exchange_strong(a1, &v13, v12 + 1);
      if (v13 == v12)
      {
        break;
      }

      v12 = v13;
      if (v13 >= 0x7FFFFFFF)
      {
        goto LABEL_31;
      }
    }

    v22 = (*(**(a1 + 8) + 168))(*(a1 + 8), (v11 + a3), a1 + 2200, a1 + 2204);
    if (v22)
    {
      if (!*MEMORY[0x277D7F098])
      {
        __break(1u);
        goto LABEL_42;
      }

      v23 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v23 + 16) = 0;
      *(v23 + 24) = v22;
      *(v23 + 32) = "PreflightDownlink";
      *(v23 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::PreflightDownlink, ArgTypeList = <unsigned int, unsigned int *, unsigned int *>]";
      *v23 = &unk_2881B1E18;
      *(v23 + 8) = 0;
      caulk::concurrent::messenger::enqueue((a1 + 16), v23);
    }

    caulk::concurrent::shared_spin_lock::unlock_shared(a1);
    if (*(a1 + 2200) <= (*(a1 + 2196) + a3))
    {
      if (!(*(a1 + 2204) % *(a1 + 2136)))
      {
        v10 = 0;
        *(a1 + 2200) = a3;
        *a4 = a3;
        *a5 = *(a1 + 2204);
        *(a1 + 2208) = 1;
        goto LABEL_31;
      }

LABEL_43:
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v30 = 6291970;
      LOWORD(v31[0]) = 2048;
      *(v31 + 2) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_42:
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v30 = 134217984;
    v31[0] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_43;
  }

LABEL_31:
  caulk::pooled_semaphore_mutex::_unlock((a1 + 32));
LABEL_32:
  v21 = *MEMORY[0x277D85DE8];

  return ErrorFromOSStatus(v10);
}

void sub_272511D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    v38 = __cxa_begin_catch(exception_object);
    v39 = vp::log(v38);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x272511AF8);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(v37 - 192);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[251],char [251],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE15EJjPjS9_EEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSB_EUlT_PKcSJ_E_JRiRKSJ_RA251_SI_EE7performEv(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[6] = *(a1 + 40);
  v6[7] = v2;
  v3 = vp::log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27251224C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE15EJjPjS9_EEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSB_EUlT_PKcSJ_E_JRiRKSJ_RA251_SI_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VPSPIProcessDownlink(uint64_t a1, int *a2)
{
  if (!a1)
  {
    v11 = vp::log(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *v17 = 0;
      _os_log_fault_impl(&dword_2724B4000, v11, OS_LOG_TYPE_FAULT, "failed to process downlink due to bad reference", v17, 2u);
    }

    return 1651664230;
  }

  if (!a2)
  {
    v13 = vp::log(a1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_2724B4000, v13, OS_LOG_TYPE_ERROR, "VoiceProcessor_ProcessDownlink BadArgument (ioData)", v17, 2u);
    }

    v12 = 1650553447;

    return v12;
  }

  v4 = caulk::pooled_semaphore_mutex::try_lock((a1 + 32));
  if ((v4 & 1) == 0)
  {
    v15 = vp::log(v4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "ProcessDownlink BadLock", v17, 2u);
    }

    v5 = 1651270507;
    goto LABEL_28;
  }

  v5 = 1651733601;
  if (*(a1 + 1200) != 1)
  {
    v16 = vp::log(v4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_2724B4000, v16, OS_LOG_TYPE_ERROR, "ProcessDownlink BadState (uplink)", v17, 2u);
    }

    if (*(a1 + 2216))
    {
      goto LABEL_27;
    }

LABEL_25:
    v9 = vp::log(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      v10 = "ProcessDownlink BadState (downlink)";
      goto LABEL_40;
    }

    goto LABEL_26;
  }

  if ((*(a1 + 2216) & 1) == 0)
  {
    goto LABEL_25;
  }

  v6 = *(a1 + 1212);
  if (v6)
  {
    v7 = *a2;
    v8 = (a1 + 1216);
    while (*v8 != v7)
    {
      v8 += 70;
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    if (!v8[1])
    {
      if (*(a1 + 2208) != 1)
      {
        v9 = vp::log(v4);
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        *v17 = 0;
        v10 = "ProcessDownlink BadState (preflight)";
        goto LABEL_40;
      }

      *(a1 + 2208) = 0;
    }

    if (v7 == 1)
    {
      v5 = VoiceProcessorImplementation::ProcessAllOfDownlinkWithFarEndVoiceOnly(a1, a2);
      goto LABEL_27;
    }

    if (!v7)
    {
      result = _os_crash();
      __break(1u);
      return result;
    }

    v5 = 1650553447;
    v9 = vp::log(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      v10 = "ProcessDownlink BadArgument (nodeType)";
      goto LABEL_40;
    }
  }

  else
  {
LABEL_10:
    v5 = 1651076964;
    v9 = vp::log(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      v10 = "ProcessDownlink BadIOData";
LABEL_40:
      _os_log_error_impl(&dword_2724B4000, v9, OS_LOG_TYPE_ERROR, v10, v17, 2u);
    }
  }

LABEL_26:

LABEL_27:
  caulk::pooled_semaphore_mutex::_unlock((a1 + 32));
LABEL_28:

  return ErrorFromOSStatus(v5);
}

uint64_t VoiceProcessorImplementation::ProcessAllOfDownlinkWithFarEndVoiceOnly(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 1212);
  if (v6)
  {
    v2 = a2;
    v3 = a1;
    v5 = &v52;
    v7 = 1216;
    while (1)
    {
      v8 = a1 + v7;
      if (*(a1 + v7) == 1)
      {
        break;
      }

      v7 += 280;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    _os_crash();
    __break(1u);
  }

  v9 = *(v8 + 8);
  if (v9)
  {
    v10 = 0;
    v11 = v7 + 12;
    v12 = v7 + 236;
    while (*(v3 + v11))
    {
      ++v10;
      v11 += 4;
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    _os_crash();
    __break(1u);
  }

  v13 = *(v2 + 8 * v10 + 8);
  if (!v13)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v52 = 134217984;
    *(v5 + 1) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_70;
  }

  v14 = v10;
  if (!*(v2 + 8 * v10 + 48))
  {
LABEL_70:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v52 = 134217984;
    *(v5 + 1) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_71:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v52 = 134217984;
    *(v5 + 1) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_72;
  }

  v15 = *(v8 + 232);
  if (v15)
  {
    v16 = 0;
    v4 = *(v2 + 4 * v14 + 88);
    while (*(v3 + v12) != 5)
    {
      ++v16;
      v12 += 4;
      if (v15 == v16)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    _os_crash();
    __break(1u);
  }

  v17 = *(v2 + 112 + 8 * v16);
  if (!v17)
  {
    goto LABEL_71;
  }

  v18 = *(v2 + 8 * v16 + 120);
  if (!v18)
  {
LABEL_72:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v52 = 134217984;
    *(v5 + 1) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_73;
  }

  if (*(v3 + 2200) != v4)
  {
LABEL_73:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v52 = 134217984;
    *(v5 + 1) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
LABEL_74:
    __break(1u);
  }

  v19 = *(v3 + 2192);
  if (v19)
  {
    v20 = *(v3 + 2144);
    if (v20)
    {
      v21 = *(v20 + 80);
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v3 + 2152);
    if (v22)
    {
      v23 = *(v22 + 80);
    }

    else
    {
      v23 = 0;
    }

    util::make_abl_view(v21, v23, v19 | 0x100000000, (*(v3 + 2196) + v19) | 0x100000000);
    v24 = *(v3 + 2152);
    if (v24)
    {
      v25 = *(v24 + 80);
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v3 + 2144);
    if (v26)
    {
      v27 = *(v26 + 80);
    }

    else
    {
      v27 = 0;
    }

    util::copy_abl_data(v25, v27, *(v3 + 2196));
    *(v3 + 2192) = 0;
  }

  v28 = *(v3 + 2144);
  if (v28)
  {
    v29 = *(v28 + 80);
  }

  else
  {
    v29 = 0;
  }

  v30 = *(v3 + 2152);
  if (v30)
  {
    v31 = *(v30 + 80);
  }

  else
  {
    v31 = 0;
  }

  util::make_abl_view(v29, v31, *(v3 + 2196) | 0x100000000, (*(v3 + 2196) + v4) | 0x100000000);
  v32 = *(v3 + 2152);
  if (v32)
  {
    v33 = *(v32 + 80);
  }

  else
  {
    v33 = 0;
  }

  util::copy_abl_data(v13, v33, v4);
  *(v3 + 2196) += v4;
  v34 = *(v3 + 2136);
  if (v34 <= *(v3 + 2204))
  {
    v36 = 0;
    while (1)
    {
      v37 = *(v3 + 2184);
      v38 = v37 ? *(v37 + 80) : 0;
      v39 = v34 * v36++;
      util::make_abl_view(v17, v38, v39 | 0x100000000, (v34 * v36) | 0x100000000);
      v41 = atomic_load(v3);
      if (v41 > 0x7FFFFFFE)
      {
        break;
      }

      v42 = v41;
      while (1)
      {
        atomic_compare_exchange_strong(v3, &v42, v41 + 1);
        if (v42 == v41)
        {
          break;
        }

        v41 = v42;
        if (v42 >= 0x7FFFFFFF)
        {
          goto LABEL_62;
        }
      }

      v43 = *(v3 + 2184);
      if (v43)
      {
        v44 = *(v43 + 80);
      }

      v45 = *(v3 + 2136);
      v46 = VoiceProcessorInterface::ProcessDownlinkAudio(*(v3 + 8));
      if (v46)
      {
        if (!*MEMORY[0x277D7F098])
        {
          goto LABEL_74;
        }

        v47 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
        *(v47 + 16) = 0;
        *(v47 + 24) = v46;
        *(v47 + 32) = "ProcessDownlinkAudio";
        *(v47 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::ProcessDownlinkAudio, ArgTypeList = <std::nullptr_t, std::nullptr_t, std::nullptr_t, vp::Audio_Buffer &, const unsigned int &, AudioTimeStamp &>]";
        *v47 = &unk_2881B1E40;
        *(v47 + 8) = 0;
        caulk::concurrent::messenger::enqueue((v3 + 16), v47);
      }

      caulk::concurrent::shared_spin_lock::unlock_shared(v3);
      result = 0;
      v34 = *(v3 + 2136);
      *v18 = *v18 + v34;
      if (v36 >= *(v3 + 2204) / v34)
      {
        goto LABEL_68;
      }
    }

LABEL_62:
    v48 = *(v2 + 108);
    if (v48)
    {
      for (i = 0; i < v48; ++i)
      {
        v50 = *(v2 + 112 + 8 * i);
        if (v50)
        {
          util::zero_fill_abl(v50, v40);
          v48 = *(v2 + 108);
        }
      }
    }

    result = 1651270507;
  }

  else
  {
    result = 0;
  }

LABEL_68:
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272512F88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[316],char [316],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE16EJDnDnDnRNS3_12Audio_BufferERKjR14AudioTimeStampEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSG_EUlT_PKcSO_E_JRiRKSO_RA316_SN_EE7performEv(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[6] = *(a1 + 40);
  v6[7] = v2;
  v3 = vp::log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272513318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE16EJDnDnDnRNS3_12Audio_BufferERKjR14AudioTimeStampEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSG_EUlT_PKcSO_E_JRiRKSO_RA316_SN_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VPSPIGetBaseFactory_Private(void *a1)
{
  if (a1)
  {
    v2 = _Block_copy(gVPSPIBaseFactory);
    v3 = v2;
    result = 0;
    *a1 = v2;
  }

  else
  {
    v5 = vp::log(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2724B4000, v5, OS_LOG_TYPE_ERROR, "VoiceProcessor_GetBaseFactory_Private BadArgument (outFactory)", v6, 2u);
    }

    return 1650553447;
  }

  return result;
}

uint64_t VPSPISetBaseFactory_Private(const void *a1)
{
  if (!a1)
  {
    a1 = &__block_literal_global_1126;
  }

  v1 = _Block_copy(a1);
  v2 = gVPSPIBaseFactory;
  gVPSPIBaseFactory = v1;

  return 0;
}

uint64_t VPSPIGetParameter_Private(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = vp::log(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2724B4000, v8, OS_LOG_TYPE_FAULT, "failed to get parameter due to bad reference", buf, 2u);
    }

    result = 1651664230;
    goto LABEL_12;
  }

  if (!a3)
  {
    result = 1650553447;
LABEL_12:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v4 = 1651270507;
  v5 = atomic_load(a1);
  if (v5 > 0x7FFFFFFE)
  {
LABEL_7:
    v7 = 0;
  }

  else
  {
    v6 = v5;
    while (1)
    {
      atomic_compare_exchange_strong(a1, &v6, v5 + 1);
      if (v6 == v5)
      {
        break;
      }

      v5 = v6;
      if (v6 >= 0x7FFFFFFF)
      {
        goto LABEL_7;
      }
    }

    v11 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    if (v11)
    {
      if (!*MEMORY[0x277D7F098])
      {
        __break(1u);
      }

      v12 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v12 + 16) = 0;
      *(v12 + 24) = v11;
      *(v12 + 32) = "GetProperty";
      *(v12 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::GetProperty, ArgTypeList = <unsigned int &, float *&, unsigned int &, unsigned int *>]";
      *v12 = &unk_2881B1BC0;
      *(v12 + 8) = 0;
      caulk::concurrent::messenger::enqueue((a1 + 16), v12);
    }

    caulk::concurrent::shared_spin_lock::unlock_shared(a1);
    v7 = 0x100000000;
    v4 = 1651270400;
  }

  v13 = v4 | v7;
  if (v13 >= 0x100000000)
  {
    v14 = 0x100000000;
  }

  else
  {
    v14 = v13;
  }

  v15 = *MEMORY[0x277D85DE8];

  return ErrorFromOSStatus(v14);
}

void sub_2725137A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    v36 = __cxa_begin_catch(a1);
    v37 = vp::log(v36);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x2725136FCLL);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(&a27);
  }

  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE7performEv(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[6] = *(a1 + 40);
  v6[7] = v2;
  v3 = vp::log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272513C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(caulk::concurrent::message **a1)
{
  v2 = *a1;
  caulk::concurrent::message::~message(*a1);
  result = *MEMORY[0x277D7F098];
  if (*MEMORY[0x277D7F098])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VPSPISetParameter_Private(uint64_t a1, uint64_t a2, float a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v10[0] = a3;
    caulk::concurrent::shared_spin_lock::lock(a1);
    v5 = (*(**(a1 + 8) + 56))(*(a1 + 8), a2, v10, 4);
    if (v5)
    {
      if (!*MEMORY[0x277D7F098])
      {
        __break(1u);
      }

      v6 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v6 + 16) = 0;
      *(v6 + 24) = v5;
      *(v6 + 32) = "SetProperty";
      *(v6 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::SetProperty, ArgTypeList = <unsigned int &, float *, const unsigned int &>]";
      *v6 = &unk_2881B1BE8;
      *(v6 + 8) = 0;
      caulk::concurrent::messenger::enqueue((a1 + 16), v6);
    }

    caulk::concurrent::shared_spin_lock::unlock(a1);
    result = ErrorFromOSStatus(0x100000000);
  }

  else
  {
    v8 = vp::log(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2724B4000, v8, OS_LOG_TYPE_FAULT, "failed to set parameter due to bad reference", buf, 2u);
    }

    result = 1651664230;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272513F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    v36 = __cxa_begin_catch(a1);
    v37 = vp::log(v36);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x272513EECLL);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(&a27);
  }

  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE7EJRjPfRKjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA246_SL_EE7performEv(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[6] = *(a1 + 40);
  v6[7] = v2;
  v3 = vp::log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272514448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE7EJRjPfRKjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA246_SL_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VPSPIGetProperty_Private(VoiceProcessorImplementation *this, uint64_t a2, void *a3, unsigned int *a4)
{
  if (this)
  {
    result = 1650553447;
    if (a3 && a4)
    {
      Property = VoiceProcessorImplementation::GetProperty(this, a2, a3, a4);

      return ErrorFromOSStatus(Property);
    }
  }

  else
  {
    v7 = vp::log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_2724B4000, v7, OS_LOG_TYPE_FAULT, "failed to get property due to bad reference", v8, 2u);
    }

    return 1651664230;
  }

  return result;
}

uint64_t VPSPISetProperty_Private(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  if (a1)
  {
    if (a3)
    {
      v9 = a2;
      *buf = a3;
      v7 = a4;
      v4 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)7,unsigned int &,void const*&,unsigned int &>(a1, &v9, buf, &v7);
      if (v4 >= 0x100000000)
      {
        v4 = 0x100000000;
      }

      return ErrorFromOSStatus(v4);
    }

    else
    {
      return 1650553447;
    }
  }

  else
  {
    v6 = vp::log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2724B4000, v6, OS_LOG_TYPE_FAULT, "failed to set property due to bad reference", buf, 2u);
    }

    return 1651664230;
  }
}

id getADASManagerClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getADASManagerClass(void)::softClass;
  v7 = getADASManagerClass(void)::softClass;
  if (!getADASManagerClass(void)::softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = ___ZL19getADASManagerClassv_block_invoke_1321;
    v3[3] = &unk_279E48E20;
    v3[4] = &v4;
    ___ZL19getADASManagerClassv_block_invoke_1321(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_272514800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL47getADAFPreferenceKeyVolumeLimitEnabledSymbolLocv_block_invoke_1299(uint64_t a1)
{
  v2 = AudioDataAnalysisLibrary();
  result = dlsym(v2, "ADAFPreferenceKeyVolumeLimitEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getADAFPreferenceKeyVolumeLimitEnabledSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AudioDataAnalysisLibrary()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AudioDataAnalysisLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = ___ZL28AudioDataAnalysisLibraryCorePPc_block_invoke_1316;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279E48E40;
    v7 = 0;
    AudioDataAnalysisLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = AudioDataAnalysisLibraryCore(char **)::frameworkLibrary;
  if (!AudioDataAnalysisLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AudioDataAnalysisLibrary()"];
    [v0 handleFailureInFunction:v4 file:@"vpADASManagerInterface.mm" lineNumber:20 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

void *___ZL49getADAFPreferenceKeyVolumeLimitThresholdSymbolLocv_block_invoke_1306(uint64_t a1)
{
  v2 = AudioDataAnalysisLibrary();
  result = dlsym(v2, "ADAFPreferenceKeyVolumeLimitThreshold");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getADAFPreferenceKeyVolumeLimitThresholdSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL28AudioDataAnalysisLibraryCorePPc_block_invoke_1316(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AudioDataAnalysisLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZL19getADASManagerClassv_block_invoke_1321(uint64_t a1)
{
  AudioDataAnalysisLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ADASManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getADASManagerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getADASManagerClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"vpADASManagerInterface.mm" lineNumber:21 description:{@"Unable to find class %s", "ADASManager"}];

    __break(1u);
  }
}

void VoiceProcessorV2::TryLoadingTuningPlists(VoiceProcessorV2 *this, const char *a2, const char *a3, const char *__s1, unsigned int a5, unsigned int a6, unsigned int a7)
{
  v64 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  if (__s1 && !strcmp(__s1, "gen"))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(this + 60);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 0x40000000;
  v27 = ___ZN16VoiceProcessorV222TryLoadingTuningPlistsEPKcS1_S1_jjj_block_invoke;
  v28 = &unk_279E48E60;
  v37 = v14 & 1;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v31 = __s1;
  v32 = a2;
  v33 = a3;
  v29 = &v38;
  v30 = this;
  v15 = ___ZN16VoiceProcessorV222TryLoadingTuningPlistsEPKcS1_S1_jjj_block_invoke(v26, v63, "ulnk");
  v16 = v39[3];
  if (v16)
  {
    CACFString::operator=(this + 4568, v16);
    CFRelease(v39[3]);
    v39[3] = 0;
  }

  v17 = v27(v26, v63, "dlnk");
  v18 = v39[3];
  if (v18)
  {
    CACFString::operator=(this + 4584, v18);
    CFRelease(v39[3]);
    v39[3] = 0;
  }

  if (!(v15 | v17))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v19 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v20 = (*v19 ? *v19 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(v44, a5);
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(v43, a6);
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(v42, a7);
        v21 = (this + 8);
        if (*(this + 31) < 0)
        {
          v21 = *v21;
        }

        *buf = 136317186;
        v46 = "vpAspen_v2.cpp";
        v47 = 1024;
        v48 = 158;
        v49 = 2080;
        v50 = v44;
        v51 = 2080;
        v52 = v43;
        v53 = 2080;
        v54 = v42;
        v55 = 2080;
        v56 = v21;
        v57 = 2080;
        v58 = a2;
        v59 = 2080;
        v60 = a3;
        v61 = 2080;
        v62 = v63;
        _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Tunings loaded successfully for %s-%s-%s! '%s/%s/%s/%s'", buf, 0x58u);
      }
    }

    v22 = *(this + 1588);
    if (v22 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v23 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, a5);
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(v44, a6);
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(v43, a7);
      v24 = this + 8;
      if (*(this + 31) < 0)
      {
        v24 = *v24;
      }

      CALegacyLog::log(v22, 3, v23, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 158, "TryLoadingTuningPlists", "Tunings loaded successfully for %s-%s-%s! '%s/%s/%s/%s'", buf, v44, v43, v24, a2, a3, v63);
    }

    *(this + 4600) = 1;
  }

  _Block_object_dispose(&v38, 8);
  v25 = *MEMORY[0x277D85DE8];
}