void sub_2655CB038(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2655CB0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = SACaseConnectionInfoProvider;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

double __os_log_helper_16_0_1_4_2(_DWORD *a1, int a2)
{
  *&result = 67240192;
  *a1 = 67240192;
  a1[1] = a2;
  return result;
}

double __os_log_helper_16_2_2_8_66_8_66(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 138543618;
  *a1 = 138543618;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2114;
  *(a1 + 14) = a3;
  return result;
}

double __os_log_helper_16_2_1_8_66(uint64_t a1, uint64_t a2)
{
  *&result = 138543362;
  *a1 = 138543362;
  *(a1 + 4) = a2;
  return result;
}

uint64_t SASGetTimestampCallback(void)
{
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
  }

  return mach_continuous_time() * dword_280017CF8 / *algn_280017CFC / 0x3E8;
}

double __os_log_helper_16_0_1_4_0(_DWORD *a1, int a2)
{
  *&result = 67109120;
  *a1 = 67109120;
  a1[1] = a2;
  return result;
}

double __os_log_helper_16_0_3_8_2_8_0_4_0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&result = 134349568;
  *a1 = 134349568;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  *(a1 + 22) = 1024;
  *(a1 + 24) = a4;
  return result;
}

void sub_2655CC2B8()
{
  OUTLINED_FUNCTION_13();
  PacketCollection::~PacketCollection(v1);
  _Unwind_Resume(v0);
}

void sub_2655CC4CC()
{
  OUTLINED_FUNCTION_13();
  PacketCollection::~PacketCollection(v1);
  _Unwind_Resume(v0);
}

double __os_log_helper_16_0_7_8_2_8_0_8_0_4_0_4_0_4_0_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  *&result = 134350592;
  *a1 = 134350592;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a4;
  *(a1 + 32) = 1024;
  *(a1 + 34) = a5;
  *(a1 + 38) = 1024;
  *(a1 + 40) = a6;
  *(a1 + 44) = 1024;
  *(a1 + 46) = a7;
  *(a1 + 50) = 1024;
  *(a1 + 52) = a8;
  return result;
}

void sub_2655CCCE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  PacketCollection::~PacketCollection(va);
  _Unwind_Resume(a1);
}

double __os_log_helper_16_2_2_8_64_8_64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 138412546;
  *a1 = 138412546;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  return result;
}

void sub_2655CD19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  PacketCollection::~PacketCollection(va);
  _Unwind_Resume(a1);
}

void sub_2655CD874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  AlgDataPacket::~AlgDataPacket((v10 - 176));

  PacketCollection::~PacketCollection(va);
  PacketCollection::~PacketCollection(va1);

  _Unwind_Resume(a1);
}

double __os_log_helper_16_2_1_8_64(uint64_t a1, uint64_t a2)
{
  *&result = 138412290;
  *a1 = 138412290;
  *(a1 + 4) = a2;
  return result;
}

double __os_log_helper_16_2_2_8_64_4_0(uint64_t a1, uint64_t a2, int a3)
{
  *&result = 138412546;
  *a1 = 138412546;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  return result;
}

double __os_log_helper_16_2_6_8_64_4_0_8_0_8_0_8_64_8_32(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&result = 138413570;
  *a1 = 138413570;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 2048;
  *(a1 + 20) = a4;
  *(a1 + 28) = 2048;
  *(a1 + 30) = a5;
  *(a1 + 38) = 2112;
  *(a1 + 40) = a6;
  *(a1 + 48) = 2080;
  *(a1 + 50) = a7;
  return result;
}

void sub_2655CDE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  AlgDataPacket::~AlgDataPacket((v7 - 160));
  PacketCollection::~PacketCollection(va);
  PacketCollection::~PacketCollection(va1);

  _Unwind_Resume(a1);
}

double __os_log_helper_16_2_3_8_64_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 138412802;
  *a1 = 138412802;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a4;
  return result;
}

double __os_log_helper_16_2_4_8_64_8_0_8_0_8_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&result = 138413058;
  *a1 = 138413058;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a4;
  *(a1 + 32) = 2112;
  *(a1 + 34) = a5;
  return result;
}

void *AlgDataExtractor::AlgDataExtractor(uint64_t a1, int a2)
{
  result = PacketCollection::PacketCollection(a1, a2);
  *result = &unk_2876F8570;
  result[7] = 0;
  result[8] = 0;
  return result;
}

void PacketCollection::~PacketCollection(PacketCollection *this)
{
  *this = &unk_2876F85A0;
  v2 = (this + 8);
  SAList<unsigned int>::~SAList(this + 5);
  SAList<unsigned int>::~SAList(this + 3);
  SAList<unsigned int>::~SAList(v2);
}

{
  PacketCollection::~PacketCollection(this);
  OUTLINED_FUNCTION_36();

  JUMPOUT(0x266758DE0);
}

uint64_t *SAList<unsigned int>::~SAList(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    MEMORY[0x266758DD0](v2, 0x1000C8077774924);
  }

  return a1;
}

void *AlgDataInjector::AlgDataInjector(uint64_t a1, int a2)
{
  result = PacketCollection::PacketCollection(a1, a2);
  *result = &unk_2876F85D0;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_7()
{

  return mach_get_times();
}

void OUTLINED_FUNCTION_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, (v5 - 176), 0x12u);
}

void OUTLINED_FUNCTION_16(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return PacketCollection::at(va, 0);
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{

  return AlgDataExtractor::callbackFor(a1, a2, a3, a4);
}

uint64_t NovaHost::DoubleHalfPressRecognizer::update(NovaHost::DoubleHalfPressRecognizer *this, TouchSensitiveButtonEventPacket *a2, ForceStageEventPacket *a3, BOOL *a4)
{
  var6_low = LOWORD(a3->var6);
  v5 = var6_low == 1;
  var5 = a3->var5;
  v7 = var6_low == 2;
  v8 = var5 == 2 && v5;
  v9 = var5 == 2 && v7;
  var7 = a3->var7;
  v11 = var5 == 4 && v5;
  var0 = a2->var0;
  *a4 = 0;
  v13 = *this;
  if (*this)
  {
    *(this + 1) = *(this + 1) + fabsf(a2->var2 * 103.33);
  }

  if (v11)
  {
    goto LABEL_13;
  }

  if (v9)
  {
    if (*(this + 17) == 1)
    {
      *(this + 17) = 0;
    }

    else if (v13 == 0.0 || *(this + 16) == 1)
    {
      *this = var0;
      *(this + 16) = 0;
    }

    else if (*(this + 3) < (var0 - *&v13) || *(this + 1) >= *(this + 5))
    {
      *this = var0;
    }

    else
    {
      *this = var0;
      *(this + 16) = 1;
      *a4 = 1;
    }

LABEL_30:
    *(this + 1) = 0;
    return 1;
  }

  if (!v8)
  {
    if (var7 != 8)
    {
      return 1;
    }

    goto LABEL_30;
  }

  if (*(this + 16) == 1 && *(this + 4) > (var0 - *&v13))
  {
LABEL_13:
    *(this + 8) = 0;
    *this = 0;
    *(this + 1) = 0;
    *(this + 17) = 1;
  }

  return 1;
}

uint64_t NovaHost::DoubleHalfPressRecognizer::reset(NovaHost::DoubleHalfPressRecognizer *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  return 1;
}

uint64_t NovaHost::NovaHostAlgsDevice::NovaHostAlgsDevice(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v8 = SANovaHostVersionDescriptor();
  v9 = AlgsDevice::AlgsDevice(a1, a2, "NovaHostDefaultPersonality", a3, a4, *v8, 1);
  *a1 = &unk_2876F7AF8;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  NovaHost::NovaHostAlgsDevice::newPlanNode(v9, 0);
  return a1;
}

BOOL NovaHost::NovaHostAlgsDevice::newPlanNode(NovaHost::NovaHostAlgsDevice *this, int a2)
{
  if (!a2)
  {
    v4 = *(this + 14);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = operator new(4944, *(this + 120));
    *(this + 14) = NovaHost::NovaHostActivePlan::NovaHostActivePlan(v5, 0x396F6AFB61E1367ELL);
  }

  return a2 == 0;
}

void NovaHost::NovaHostAlgsDevice::~NovaHostAlgsDevice(NovaHost::NovaHostAlgsDevice *this)
{
  NovaHost::NovaHostAlgsDevice::~NovaHostAlgsDevice(this);

  JUMPOUT(0x266758DE0);
}

{
  *this = &unk_2876F7AF8;
  v2 = *(this + 14);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  AlgsDevice::~AlgsDevice(this);
}

NovaHost::NovaHostActivePlan *NovaHost::NovaHostActivePlan::NovaHostActivePlan(NovaHost::NovaHostActivePlan *this, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  AlgTaskNode::AlgTaskNode(this, a2);
  *v3 = &unk_2876F7B58;
  v3[12] = 0;
  v4 = (v3 + 12);
  v5 = (v3 + 15);
  v3[13] = 0;
  v3[14] = 0;
  AlgDataNode::AlgDataNode((v3 + 15), 0x726CDCE2C4D2802ALL, 0);
  *(this + 15) = &unk_2876F7BD0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 34) = 61451;
  *(this + 36) = 32;
  AlgDataNode::AlgDataNode((this + 184), 0xC79177FE77B0293ALL, 0);
  *(this + 106) = 0;
  *(this + 50) = 20480;
  *(this + 52) = 1;
  *(this + 23) = &unk_2876F7C20;
  AlgDataNode::AlgDataNode((this + 216), 0x658001896A50D1BALL, 0);
  *(this + 27) = &unk_2876F7C88;
  *(this + 244) = 0;
  *(this + 58) = 20480;
  *(this + 60) = 1;
  AlgDataNode::AlgDataNode((this + 248), 0xA543E2939D3C31C2, 0);
  v10 = v6;
  *(this + 31) = &unk_2876F7C88;
  *(this + 276) = 0;
  *(this + 66) = 20480;
  *(this + 68) = 1;
  AlgDataNode::AlgDataNode((this + 280), 0x5A93A297EE678DAALL, 1);
  *(this + 71) = 0;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 78) = -267714552;
  *(this + 158) = 32;
  *(this + 74) = 39426;
  *(this + 76) = 264;
  v11 = v7;
  *(this + 35) = &unk_2876F7CC0;
  *(this + 72) = &unk_2876F7D08;
  *(this + 292) = 0;
  AlgDataNode::AlgDataNode((this + 592), 0xF761B8249EC06F80, 1);
  bzero(this + 624, 0x408uLL);
  *(this + 156) = -251592696;
  *(this + 314) = 32;
  *(this + 152) = 39426;
  *(this + 154) = 1032;
  *(this + 74) = &unk_2876F7D88;
  *(this + 207) = &unk_2876F7DD0;
  *(this + 832) = 0;
  AlgDataNode::AlgDataNode((this + 1672), 0x5BF249159B57CEALL, 1);
  bzero(this + 1704, 0x508uLL);
  *(this + 426) = -251527160;
  *(this + 854) = 40;
  *(this + 422) = 39426;
  *(this + 424) = 1288;
  *(this + 209) = &unk_2876F7E50;
  *(this + 374) = &unk_2876F7E98;
  *(this + 1500) = 0;
  AlgDataNode::AlgDataNode((this + 3008), 0xE86303465E47D408, 0);
  *(this + 3036) = 0;
  *(this + 756) = 61699;
  *(this + 758) = 8;
  *(this + 376) = &unk_2876F7F18;
  *(this + 3044) = 0;
  AlgDataNode::AlgDataNode((this + 3048), 0xAD01BBB57934580ALL, 0);
  *(this + 3076) = 0u;
  *(this + 3092) = 0u;
  *(this + 766) = 61471;
  *(this + 768) = 32;
  *(this + 381) = &unk_2876F7F80;
  *(this + 3108) = 0;
  AlgDataNode::AlgDataNode((this + 3112), 0xAF483000465377DCLL, 1);
  *(this + 818) = 0;
  *(this + 3240) = 0u;
  *(this + 3256) = 0u;
  *(this + 3208) = 0u;
  *(this + 3224) = 0u;
  *(this + 3176) = 0u;
  *(this + 3192) = 0u;
  *(this + 3144) = 0u;
  *(this + 3160) = 0u;
  *(this + 1572) = 4;
  *(this + 782) = 39426;
  *(this + 392) = 0x5006000800000088;
  *(this + 389) = &unk_2876F7FE8;
  *(this + 410) = &unk_2876F8030;
  *(this + 1644) = 0;
  NovaHost::InterpolationStep::InterpolationStep(this + 3296, 0xAD07F5970BDB4DA9, v5, v11);
  NovaHost::NovaButtonStateMachineStep::NovaButtonStateMachineStep(this + 3808, 0x9E0D7441786CB2A9, v4, v11, this + 184, this + 216, this + 592, this + 1672);
  NovaHost::LiftoffVelocityStep::LiftoffVelocityStep((this + 4264), 0xB54CAD6BAF9995ALL, this + 74, this + 1672, v10, this + 184);
  NovaHost::CoreAnalyticsStep::CoreAnalyticsStep(this + 4616, 0xDA4E27EE52440112, v5, this + 216, this + 184, this + 3048, this + 3008);
  NovaHost::DoubleHalfPressStep::DoubleHalfPressStep(this + 4744, 0x18DC11EB4356D4E4, this + 592, this + 1672, this + 3112);
  v12 = v5;
  v13 = this + 184;
  v14 = this + 216;
  v15 = this + 3048;
  v17 = &v12;
  v18 = 4;
  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(this + 8, &v17);
  v17 = v11;
  v18 = v10;
  v12 = &v17;
  v13 = 2;
  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(this + 24, &v12);
  v12 = (this + 592);
  v13 = this + 1672;
  v14 = this + 3008;
  v15 = this + 3048;
  v16 = this + 3112;
  v17 = &v12;
  v18 = 5;
  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(this + 40, &v17);
  v12 = (this + 3296);
  v13 = this + 3808;
  v14 = this + 4264;
  v15 = this + 4616;
  v16 = this + 4744;
  v17 = &v12;
  v18 = 5;
  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(this + 80, &v17);
  *(this + 3036) = 1;
  *(this + 276) = 1;
  v8 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2655CF7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, NovaHost::InterpolationStep *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  AlgWorkNode::~AlgWorkNode(v19);
  AlgWorkNode::~AlgWorkNode(v21);
  AlgWorkNode::~AlgWorkNode(v20);
  NovaHost::NovaButtonStateMachineStep::~NovaButtonStateMachineStep(v18);
  NovaHost::InterpolationStep::~InterpolationStep(a11);
  *v17 = &unk_2876F83C8;
  *v24 = &unk_2876F83C8;
  *a13 = &unk_2876F83C8;
  *v23 = &unk_2876F83C8;
  *v22 = &unk_2876F83C8;
  *a15 = &unk_2876F83C8;
  *a14 = &unk_2876F83C8;
  *a16 = &unk_2876F83C8;
  *a12 = &unk_2876F83C8;
  *a10 = &unk_2876F83C8;
  AlgTaskNode::~AlgTaskNode(v16);
  _Unwind_Resume(a1);
}

void AlgTaskNode::~AlgTaskNode(AlgTaskNode *this)
{
  *this = &unk_2876F8410;
  if (*(this + 23))
  {
    *(this + 23) = 0;
  }

  v2 = *(this + 10);
  if (v2)
  {
    MEMORY[0x266758DD0](v2, 0x1000C8077774924);
  }

  AlgWorkNode::~AlgWorkNode(this);
}

{
  AlgTaskNode::~AlgTaskNode(this);

  JUMPOUT(0x266758DE0);
}

void NovaHost::NovaHostActivePlan::~NovaHostActivePlan(NovaHost::NovaHostActivePlan *this)
{
  NovaHost::NovaHostActivePlan::~NovaHostActivePlan(this);

  JUMPOUT(0x266758DE0);
}

{
  *this = &unk_2876F7B58;
  AlgWorkNode::~AlgWorkNode((this + 4744));
  AlgWorkNode::~AlgWorkNode((this + 4616));
  AlgWorkNode::~AlgWorkNode((this + 4264));
  *(this + 476) = &unk_2876F81A0;
  v2 = *(this + 524);
  if (v2)
  {
    MEMORY[0x266758DD0](v2, 0x1000C8077774924);
  }

  v3 = *(this + 522);
  if (v3)
  {
    MEMORY[0x266758DD0](v3, 0x1000C8077774924);
  }

  v4 = *(this + 520);
  if (v4)
  {
    MEMORY[0x266758DD0](v4, 0x1000C8077774924);
  }

  *(this + 510) = &unk_2876F83C8;
  *(this + 502) = &unk_2876F83C8;
  *(this + 498) = &unk_2876F83C8;
  *(this + 494) = &unk_2876F83C8;
  *(this + 490) = &unk_2876F83C8;
  AlgWorkNode::~AlgWorkNode((this + 3808));
  NovaHost::InterpolationStep::~InterpolationStep((this + 3296));
  *(this + 389) = &unk_2876F83C8;
  *(this + 381) = &unk_2876F83C8;
  *(this + 376) = &unk_2876F83C8;
  *(this + 209) = &unk_2876F83C8;
  *(this + 74) = &unk_2876F83C8;
  *(this + 35) = &unk_2876F83C8;
  *(this + 31) = &unk_2876F83C8;
  *(this + 27) = &unk_2876F83C8;
  *(this + 23) = &unk_2876F83C8;
  *(this + 15) = &unk_2876F83C8;

  AlgTaskNode::~AlgTaskNode(this);
}

void NovaHost::NovaHostActivePlan::runPlan(uint64_t a1, uint64_t a2, AlgDataInjector *a3, AlgDataExtractor *a4)
{
  v4 = *(a2 + 16);
  v5 = *(v4 + 16);
  *(a1 + 96) = *v4;
  *(a1 + 112) = v5;
  AlgTaskNode::runTask(a1, a3, a4, *(a1 + 96), *(a1 + 104), 0);
}

__n128 PlainDataNode<NovaOutput>::injectBuffer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *a2;
  *(a1 + 48) = v3;
  return result;
}

uint64_t PlainDataNodeWithValidity<BOOL>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(result + 29) == 1)
  {
    *(a3 + 56) = result + 28;
    return a2(a3);
  }

  return result;
}

uint64_t SADynamicArray<NovaOutput,(unsigned short)8>::sendCallback(unsigned __int16 *a1, uint64_t (*a2)(void *), void *a3)
{
  if (*(a1 + 304) == 1 || (result = (*(*a1 + 40))(a1), result))
  {
    a3[4] = a1[16];
    a3[5] = a1 + 16;
    a3[7] = (*(*a1 + 48))(a1);
    a3[6] = 32 * (*(*a1 + 40))(a1);

    return a2(a3);
  }

  return result;
}

void SADynamicArray<NovaOutput,(unsigned short)8>::injectBuffer(uint64_t a1, unsigned __int16 *a2)
{
  if ((*(a1 + 305) & 1) != 0 || (*(a1 + 21) & 1) == 0)
  {
    v3 = a2[3];
    *(a1 + 38) = v3;
    v4 = a2[2];
    v5 = v4 >= 0x20 ? 32 : a2[2];
    if (v3)
    {
      v6 = 0;
      v7 = a2 + *a2;
      if (v4 <= 0x20)
      {
        v8 = 32 - v4;
      }

      else
      {
        v8 = 0;
      }

      v9 = (a1 + 40);
      do
      {
        memcpy(v9, &v7[v6 * a2[2]], v5);
        if (v4 <= 0x1F)
        {
          bzero(&v9[v5], v8);
        }

        ++v6;
        v9 += 32;
      }

      while (v6 < a2[3]);
    }
  }
}

uint64_t SADynamicArray<TouchSensitiveButtonEventPacket,(unsigned short)32>::sendCallback(unsigned __int16 *a1, uint64_t (*a2)(void *), void *a3)
{
  if (*(a1 + 1072) == 1 || (result = (*(*a1 + 40))(a1), result))
  {
    a3[4] = a1[16];
    a3[5] = a1 + 16;
    a3[7] = (*(*a1 + 48))(a1);
    a3[6] = 32 * (*(*a1 + 40))(a1);

    return a2(a3);
  }

  return result;
}

void SADynamicArray<TouchSensitiveButtonEventPacket,(unsigned short)32>::injectBuffer(uint64_t a1, unsigned __int16 *a2)
{
  if ((*(a1 + 1073) & 1) != 0 || (*(a1 + 21) & 1) == 0)
  {
    v3 = a2[3];
    *(a1 + 38) = v3;
    v4 = a2[2];
    v5 = v4 >= 0x20 ? 32 : a2[2];
    if (v3)
    {
      v6 = 0;
      v7 = a2 + *a2;
      if (v4 <= 0x20)
      {
        v8 = 32 - v4;
      }

      else
      {
        v8 = 0;
      }

      v9 = (a1 + 40);
      do
      {
        memcpy(v9, &v7[v6 * a2[2]], v5);
        if (v4 <= 0x1F)
        {
          bzero(&v9[v5], v8);
        }

        ++v6;
        v9 += 32;
      }

      while (v6 < a2[3]);
    }
  }
}

uint64_t SADynamicArray<ForceStageEventPacket,(unsigned short)32>::sendCallback(unsigned __int16 *a1, uint64_t (*a2)(void *), void *a3)
{
  if (*(a1 + 1328) == 1 || (result = (*(*a1 + 40))(a1), result))
  {
    a3[4] = a1[16];
    a3[5] = a1 + 16;
    a3[7] = (*(*a1 + 48))(a1);
    a3[6] = 40 * (*(*a1 + 40))(a1);

    return a2(a3);
  }

  return result;
}

void SADynamicArray<ForceStageEventPacket,(unsigned short)32>::injectBuffer(uint64_t a1, unsigned __int16 *a2)
{
  if ((*(a1 + 1329) & 1) != 0 || (*(a1 + 21) & 1) == 0)
  {
    v3 = a2[3];
    *(a1 + 38) = v3;
    v4 = a2[2];
    v5 = v4 >= 0x28 ? 40 : a2[2];
    if (v3)
    {
      v6 = 0;
      v7 = a2 + *a2;
      if (v4 <= 0x28)
      {
        v8 = 40 - v4;
      }

      else
      {
        v8 = 0;
      }

      v9 = (a1 + 40);
      do
      {
        memcpy(v9, &v7[v6 * a2[2]], v5);
        if (v4 <= 0x27)
        {
          bzero(&v9[v5], v8);
        }

        ++v6;
        v9 += 40;
      }

      while (v6 < a2[3]);
    }
  }
}

uint64_t PlainDataNodeWithValidity<NovaHostCoreAnalytics>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(result + 36) == 1)
  {
    *(a3 + 56) = result + 28;
    return a2(a3);
  }

  return result;
}

uint64_t PlainDataNodeWithValidity<NovaCoreAnalytics>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(result + 60) == 1)
  {
    *(a3 + 56) = result + 28;
    return a2(a3);
  }

  return result;
}

__n128 PlainDataNode<NovaCoreAnalytics>::injectBuffer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 44) = *(a2 + 16);
  *(a1 + 28) = result;
  return result;
}

uint64_t SADynamicArray<unsigned int,(unsigned short)32>::sendCallback(unsigned __int16 *a1, uint64_t (*a2)(void *), void *a3)
{
  if (*(a1 + 176) == 1 || (result = (*(*a1 + 40))(a1), result))
  {
    a3[4] = a1[14];
    a3[5] = a1 + 14;
    a3[7] = (*(*a1 + 48))(a1);
    a3[6] = 4 * (*(*a1 + 40))(a1);

    return a2(a3);
  }

  return result;
}

void SADynamicArray<unsigned int,(unsigned short)32>::injectBuffer(uint64_t a1, unsigned __int16 *a2)
{
  if ((*(a1 + 177) & 1) != 0 || (*(a1 + 21) & 1) == 0)
  {
    v3 = a2[3];
    *(a1 + 34) = v3;
    v4 = a2[2];
    v5 = v4 >= 4 ? 4 : a2[2];
    if (v3)
    {
      v6 = 0;
      v7 = a2 + *a2;
      if (v4 <= 4)
      {
        v8 = 4 - v4;
      }

      else
      {
        v8 = 0;
      }

      v9 = (a1 + 36);
      do
      {
        memcpy(v9, &v7[v6 * a2[2]], v5);
        if (v4 <= 3)
        {
          bzero(&v9[v5], v8);
        }

        ++v6;
        v9 += 4;
      }

      while (v6 < a2[3]);
    }
  }
}

uint64_t NovaHost::InterpolationStep::InterpolationStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  AlgWorkNode::AlgWorkNode(a1, a2);
  *v7 = &unk_2876F80B0;
  v7[10] = a3;
  v8 = v7 + 11;
  AlgDataNode::AlgDataNode((v7 + 11), 0xEA52A8B328945C38, 0);
  *(a1 + 88) = &unk_2876F7C88;
  *(a1 + 116) = 0;
  *(a1 + 104) = 20480;
  *(a1 + 112) = 1;
  AlgDataNode::AlgDataNode((a1 + 120), 0xC99FA38EDDBFB984, 0);
  *(a1 + 152) = 0;
  *(a1 + 120) = &unk_2876F8100;
  *(a1 + 136) = 20720;
  *(a1 + 144) = 8;
  AlgDataNode::AlgDataNode((a1 + 160), 0xC99FB05AB16417D5, 0);
  *(a1 + 160) = &unk_2876F7BD0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 176) = 61451;
  *(a1 + 184) = 32;
  AlgDataNode::AlgDataNode((a1 + 224), 0xF860E8F10D73DE9ELL, 0);
  *(a1 + 224) = &unk_2876F8150;
  *(a1 + 240) = 20488;
  *(a1 + 248) = 8;
  *(a1 + 256) = 0;
  *(a1 + 264) = a4;
  *(a1 + 272) = a1 + 152;
  *(a1 + 280) = 1;
  *(a1 + 284) = 8;
  *(a1 + 288) = 0;
  *(a1 + 296) = 8;
  *(a1 + 304) = 0;
  *(a1 + 312) = 8;
  *(a1 + 352) = a1 + 152;
  *(a1 + 360) = 0;
  *(a1 + 364) = 8;
  *(a1 + 368) = 0;
  *(a1 + 376) = 8;
  *(a1 + 384) = 0;
  *(a1 + 392) = 8;
  *(a1 + 432) = a1 + 152;
  *(a1 + 440) = 0;
  *(a1 + 444) = 8;
  *(a1 + 448) = 0;
  *(a1 + 456) = 8;
  *(a1 + 464) = 0;
  *(a1 + 472) = 8;
  v9 = *(a1 + 80);
  v14 = 1;
  v15[0] = v9;
  v13 = v15;
  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(a1 + 8, &v13);
  v15[0] = a1 + 120;
  v15[1] = v8;
  v13 = v15;
  v14 = 2;
  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(a1 + 24, &v13);
  v10 = *(a1 + 264);
  v13 = v15;
  v14 = 1;
  v15[0] = v10;
  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(a1 + 40, &v13);
  *(a1 + 152) = 0x406E000000000000;
  *(a1 + 116) = 1;
  v11 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2655D0748(_Unwind_Exception *a1)
{
  NovaHost::Interpolator<float>::~Interpolator(v1 + 432);
  NovaHost::Interpolator<float>::~Interpolator(v1 + 352);
  NovaHost::Interpolator<float>::~Interpolator(v1 + 272);
  *v5 = &unk_2876F83C8;
  *v4 = &unk_2876F83C8;
  *v3 = &unk_2876F83C8;
  *v2 = &unk_2876F83C8;
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

uint64_t NovaHost::Interpolator<float>::~Interpolator(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    MEMORY[0x266758DD0](v2, 0x1000C8077774924);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x266758DD0](v3, 0x1000C8077774924);
  }

  return a1;
}

void AlgWorkNode::~AlgWorkNode(AlgWorkNode *this)
{
  *this = &unk_2876F8488;
  if (*(this + 5))
  {
    *(this + 5) = 0;
  }

  if (*(this + 9))
  {
    *(this + 9) = 0;
  }

  if (*(this + 13))
  {
    *(this + 13) = 0;
  }

  if (*(this + 17))
  {
    *(this + 17) = 0;
  }

  v2 = *(this + 7);
  if (v2)
  {
    MEMORY[0x266758DD0](v2, 0x1000C8077774924);
  }

  v3 = *(this + 5);
  if (v3)
  {
    MEMORY[0x266758DD0](v3, 0x1000C8077774924);
  }

  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x266758DD0](v4, 0x1000C8077774924);
  }

  v5 = *(this + 1);
  if (v5)
  {
    MEMORY[0x266758DD0](v5, 0x1000C8077774924);
  }
}

void NovaHost::InterpolationStep::~InterpolationStep(NovaHost::InterpolationStep *this)
{
  NovaHost::InterpolationStep::~InterpolationStep(this);

  JUMPOUT(0x266758DE0);
}

{
  *this = &unk_2876F80B0;
  v2 = *(this + 58);
  if (v2)
  {
    MEMORY[0x266758DD0](v2, 0x1000C8077774924);
  }

  v3 = *(this + 56);
  if (v3)
  {
    MEMORY[0x266758DD0](v3, 0x1000C8077774924);
  }

  v4 = *(this + 48);
  if (v4)
  {
    MEMORY[0x266758DD0](v4, 0x1000C8077774924);
  }

  v5 = *(this + 46);
  if (v5)
  {
    MEMORY[0x266758DD0](v5, 0x1000C8077774924);
  }

  v6 = *(this + 38);
  if (v6)
  {
    MEMORY[0x266758DD0](v6, 0x1000C8077774924);
  }

  v7 = *(this + 36);
  if (v7)
  {
    MEMORY[0x266758DD0](v7, 0x1000C8077774924);
  }

  *(this + 28) = &unk_2876F83C8;
  *(this + 20) = &unk_2876F83C8;
  *(this + 15) = &unk_2876F83C8;
  *(this + 11) = &unk_2876F83C8;

  AlgWorkNode::~AlgWorkNode(this);
}

uint64_t NovaHost::InterpolationStep::run(__n128 *this)
{
  v1 = this[5].n128_u64[0];
  *(this[16].n128_u64[1] + 38) = 0;
  if (v1[1].n128_u8[5] != 1)
  {
    return 0;
  }

  if (v1[2].n128_u8[2] != 1)
  {
    goto LABEL_22;
  }

  v3 = v1[2].n128_i64[1];
  v4 = this[12].n128_u8[2];
  v5 = v3 - this[16].n128_u64[0];
  if (v4 == 1 && v5 >= 0x4E21)
  {
    v18 = SALoggingGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      NovaHost::InterpolationStep::run(&this[16], &v1[2].n128_i64[1], v18);
    }

    goto LABEL_22;
  }

  v7 = (v4 & this[7].n128_u8[4]) != 1 || v5 >= 0x4E21;
  if (v7 || ((v8 = NovaHost::Interpolator<float>::run(&this[17], v3, v1[2].n128_f32[1]), v9 = NovaHost::Interpolator<float>::run(&this[22], v1[2].n128_i64[1], v1[3].n128_f32[0]), v10 = NovaHost::Interpolator<float>::run(&this[27], v1[2].n128_i64[1], v1[3].n128_f32[1]), v8) ? (v11 = !v9) : (v11 = 1), v11 || !v10))
  {
LABEL_22:
    NovaHost::InterpolationStep::runPassthrough(this, v1 + 2);
    return 0;
  }

  if (this[19].n128_u32[3])
  {
    v12 = 0;
    do
    {
      v13 = this[16].n128_u64[1];
      v14 = *(v13 + 38);
      v15 = v13 + 32 * v14;
      *(v13 + 38) = v14 + 1;
      v16 = v1[2];
      *(v15 + 56) = v1[3];
      *(v15 + 40) = v16;
      *(v15 + 48) = *(this[19].n128_u64[0] + 8 * v12);
      *(v15 + 44) = *(this[18].n128_u64[0] + 4 * v12);
      *(v15 + 56) = *(this[23].n128_u64[0] + 4 * v12);
      *(v15 + 60) = *(this[28].n128_u64[0] + 4 * v12++);
    }

    while (v12 < this[19].n128_u32[3]);
  }

  v17 = v1[3];
  this[12] = v1[2];
  this[13] = v17;
  this[16].n128_u64[0] = v1[2].n128_u64[1];
  return 0;
}

__n128 NovaHost::InterpolationStep::runPassthrough(__n128 *a1, __n128 *a2)
{
  NovaHost::Interpolator<float>::reset_state(&a1[17], a2->n128_u64[1], a2->n128_f32[1]);
  NovaHost::Interpolator<float>::reset_state(&a1[22], a2->n128_u64[1], a2[1].n128_f32[0]);
  NovaHost::Interpolator<float>::reset_state(&a1[27], a2->n128_u64[1], a2[1].n128_f32[1]);
  v4 = a1[16].n128_i64[1];
  v5 = *(v4 + 38);
  v6 = v4 + 32 * v5;
  *(v4 + 38) = v5 + 1;
  v7 = *a2;
  *(v6 + 56) = a2[1];
  *(v6 + 40) = v7;
  result = *a2;
  v9 = a2[1];
  a1[12] = *a2;
  a1[13] = v9;
  a1[16].n128_u64[0] = a2->n128_u64[1];
  return result;
}

uint64_t NovaHost::NovaButtonStateMachineStep::NovaButtonStateMachineStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x277D85DE8];
  AlgWorkNode::AlgWorkNode(a1, a2);
  *v15 = &unk_2876F81A0;
  v15[10] = a3;
  v15[11] = a4;
  v15[12] = a5;
  v15[13] = a6;
  v16 = v15 + 14;
  AlgDataNode::AlgDataNode((v15 + 14), 0xC9B3C161F911BBE6, 0);
  *(a1 + 140) = 0;
  *(a1 + 112) = &unk_2876F7C88;
  *(a1 + 128) = 20480;
  *(a1 + 136) = 1;
  AlgDataNode::AlgDataNode((a1 + 144), 0x35AAE77916372217, 0);
  *(a1 + 144) = &unk_2876F81F0;
  *(a1 + 160) = 20481;
  *(a1 + 168) = 4;
  AlgDataNode::AlgDataNode((a1 + 176), 0xC9B395F2E24E96B8, 0);
  *(a1 + 176) = &unk_2876F81F0;
  *(a1 + 192) = 20481;
  *(a1 + 200) = 4;
  AlgDataNode::AlgDataNode((a1 + 208));
  *(a1 + 208) = &unk_2876F7BD0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 61451;
  *(a1 + 232) = 32;
  AlgDataNode::AlgDataNode((a1 + 272), 0x7DC316DA412088EELL, 0);
  *(a1 + 272) = &unk_2876F7C88;
  *(a1 + 300) = 0;
  *(a1 + 288) = 20480;
  *(a1 + 296) = 1;
  *(a1 + 304) = a7;
  *(a1 + 312) = a8;
  *(a1 + 320) = a1 + 140;
  *(a1 + 328) = a1 + 172;
  *(a1 + 336) = a1 + 204;
  *(a1 + 344) = a1 + 300;
  *(a1 + 352) = 0;
  *(a1 + 360) = 16;
  *(a1 + 368) = 0;
  *(a1 + 376) = 16;
  *(a1 + 384) = 0;
  *(a1 + 392) = 16;
  *(a1 + 396) = 0u;
  *(a1 + 412) = 0u;
  *(a1 + 426) = 0u;
  *(a1 + 452) = 0;
  *(a1 + 444) = 0;
  v19 = *(a1 + 88);
  v20 = *(a1 + 104);
  *&v22 = &v19;
  *(&v22 + 1) = 3;
  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(a1 + 8, &v22);
  *&v19 = v16;
  *(&v19 + 1) = a1 + 144;
  v20 = a1 + 176;
  v21 = a1 + 272;
  *&v22 = &v19;
  *(&v22 + 1) = 4;
  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(a1 + 24, &v22);
  v22 = *(a1 + 304);
  *&v19 = &v22;
  *(&v19 + 1) = 2;
  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(a1 + 40, &v19);
  *(a1 + 140) = 1;
  *(a1 + 300) = 0;
  *(a1 + 172) = 1040187392;
  *(a1 + 204) = 1037503038;
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2655D0EB0(_Unwind_Exception *a1)
{
  NovaHost::NovaButtonStateMachine::~NovaButtonStateMachine((v1 + 320));
  *v6 = &unk_2876F83C8;
  *v5 = &unk_2876F83C8;
  *v4 = &unk_2876F83C8;
  *v3 = &unk_2876F83C8;
  *v2 = &unk_2876F83C8;
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

void NovaHost::NovaButtonStateMachineStep::~NovaButtonStateMachineStep(NovaHost::NovaButtonStateMachineStep *this)
{
  *this = &unk_2876F81A0;
  v2 = *(this + 48);
  if (v2)
  {
    MEMORY[0x266758DD0](v2, 0x1000C8077774924);
  }

  v3 = *(this + 46);
  if (v3)
  {
    MEMORY[0x266758DD0](v3, 0x1000C8077774924);
  }

  v4 = *(this + 44);
  if (v4)
  {
    MEMORY[0x266758DD0](v4, 0x1000C8077774924);
  }

  *(this + 34) = &unk_2876F83C8;
  *(this + 26) = &unk_2876F83C8;
  *(this + 22) = &unk_2876F83C8;
  *(this + 18) = &unk_2876F83C8;
  *(this + 14) = &unk_2876F83C8;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758DE0);
}

{
  *this = &unk_2876F81A0;
  v2 = *(this + 48);
  if (v2)
  {
    MEMORY[0x266758DD0](v2, 0x1000C8077774924);
  }

  v3 = *(this + 46);
  if (v3)
  {
    MEMORY[0x266758DD0](v3, 0x1000C8077774924);
  }

  v4 = *(this + 44);
  if (v4)
  {
    MEMORY[0x266758DD0](v4, 0x1000C8077774924);
  }

  *(this + 34) = &unk_2876F83C8;
  *(this + 26) = &unk_2876F83C8;
  *(this + 22) = &unk_2876F83C8;
  *(this + 18) = &unk_2876F83C8;
  *(this + 14) = &unk_2876F83C8;

  AlgWorkNode::~AlgWorkNode(this);
}

uint64_t NovaHost::NovaButtonStateMachineStep::run(NovaHost::NovaButtonStateMachineStep *this)
{
  v2 = *(this + 39);
  *(*(this + 38) + 38) = 0;
  *(v2 + 38) = 0;
  NovaHost::NovaButtonStateMachine::clearHIDEvents(this + 320);
  v3 = *(this + 13);
  v4 = *(v3 + 21);
  v5 = *(v3 + 28);
  if ((v4 & 1) == 0)
  {
    if ((v5 & 1) == 0)
    {
      v6 = *(this + 12);
      if (v6[21] != 1)
      {
        return 0;
      }

      goto LABEL_8;
    }

LABEL_5:
    v6 = *(this + 12);
    if ((v6[21] & 1) == 0)
    {
      v6[29] = 0;
LABEL_9:
      v7 = (*(**(this + 11) + 40))(*(this + 11));
      if (!v7)
      {
        v8 = *(this + 11);
        v9 = *(v8 + 38);
        v10 = v8 + 32 * v9;
        *(v8 + 38) = v9 + 1;
        v11 = *(this + 16);
        *(v10 + 40) = *(this + 15);
        *(v10 + 56) = v11;
        *(v10 + 44) = 0;
      }

      if ((*(**(this + 11) + 40))(*(this + 11)))
      {
        v12 = 0;
        v13 = 40;
        do
        {
          if (v7)
          {
            v14 = *(this + 11);
            v15 = (v14 + v13 + 8);
          }

          else
          {
            v15 = *(this + 10);
            v14 = *(this + 11);
          }

          NovaHost::NovaButtonStateMachine::update(this + 320, v14 + v13, *v15);
          v16 = *(this + 11);
          v17 = *(v16 + v13 + 16);
          *(this + 15) = *(v16 + v13);
          *(this + 16) = v17;
          ++v12;
          v13 += 32;
        }

        while (v12 < (*(*v16 + 40))(v16));
      }

      goto LABEL_17;
    }

LABEL_8:
    v6[29] = 1;
    NovaHost::NovaButtonStateMachine::setFullPressState(this + 320, v6[28]);
    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_5;
  }

  NovaHost::NovaButtonStateMachine::cleanup((this + 320));
LABEL_17:
  if (*(this + 95))
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = (*(this + 46) + v18);
      v21 = *(this + 38);
      v22 = *(v21 + 38);
      v23 = v21 + 32 * v22;
      *(v21 + 38) = v22 + 1;
      v24 = *v20;
      *(v23 + 56) = v20[1];
      *(v23 + 40) = v24;
      ++v19;
      v18 += 32;
    }

    while (v19 < *(this + 95));
  }

  if (*(this + 99))
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = (*(this + 48) + v25);
      v28 = *(this + 39);
      v29 = v28 + 40 * (*(v28 + 38))++;
      v30 = *v27;
      v31 = v27[1];
      *(v29 + 72) = *(v27 + 4);
      *(v29 + 56) = v31;
      *(v29 + 40) = v30;
      ++v26;
      v25 += 40;
    }

    while (v26 < *(this + 99));
  }

  return 0;
}

void NovaHost::NovaButtonStateMachine::~NovaButtonStateMachine(NovaHost::NovaButtonStateMachine *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x266758DD0](v2, 0x1000C8077774924);
  }

  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x266758DD0](v3, 0x1000C8077774924);
  }

  v4 = *(this + 4);
  if (v4)
  {
    MEMORY[0x266758DD0](v4, 0x1000C8077774924);
  }
}

AlgWorkNode *NovaHost::LiftoffVelocityStep::LiftoffVelocityStep(AlgWorkNode *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[2] = *MEMORY[0x277D85DE8];
  AlgWorkNode::AlgWorkNode(a1, a2);
  *v11 = &unk_2876F8240;
  *(v11 + 80) = a5;
  *(v11 + 88) = a6;
  *(v11 + 96) = a3;
  *(v11 + 104) = a4;
  *(v11 + 128) = 0u;
  *(v11 + 144) = 0u;
  *(v11 + 160) = 0u;
  *(v11 + 176) = 0u;
  *(v11 + 192) = 0u;
  *(v11 + 208) = 0u;
  *(v11 + 224) = 0u;
  *(v11 + 240) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 256) = 0u;
  *(v11 + 272) = 0u;
  *(v11 + 281) = 0u;
  *(v11 + 308) = 0;
  *(v11 + 300) = 0;
  *(v11 + 320) = 0;
  *(v11 + 324) = 0;
  *(v11 + 336) = 0;
  *(v11 + 344) = 0;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18[0] = &v14;
  v18[1] = 4;
  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(v11 + 8, v18);
  v18[0] = *(a1 + 12);
  v14 = v18;
  v15 = 1;
  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(a1 + 40, &v14);
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void NovaHost::LiftoffVelocityStep::~LiftoffVelocityStep(NovaHost::LiftoffVelocityStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758DE0);
}

uint64_t NovaHost::LiftoffVelocityStep::run(NovaHost::LiftoffVelocityStep *this)
{
  if ((*(**(this + 12) + 40))(*(this + 12)))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (*(*(*(this + 12) + 1064) + 8))(*(this + 12) + 1064) + 32 * v3;
      v6 = ((*(*(*(this + 13) + 1320) + 8))(*(this + 13) + 1320) + 40 * v3);
      if ((*(v5 + 26) & 1) != 0 || (var5 = v6->var5, var5 > 1))
      {
        v8 = 0;
      }

      else
      {
        v8 = var5 != 1 || v6->var6 == 2;
      }

      if (++v3 < (*(**(this + 12) + 40))(*(this + 12)) && *v5 == *((*(*(*(this + 12) + 1064) + 8))(*(this + 12) + 1064) + 32 * v3))
      {
        ++v4;
      }

      else
      {
        v9 = *(v5 + 24) == 2 || v8;
        if (v9 == 1)
        {
          NovaHost::LiftoffVelocityCalculator::update((this + 112), v5, v6);
          NovaHost::DiscreteCalculator::update((this + 320), v5, v6, *(*(this + 10) + 28), *(*(this + 11) + 28));
          if (v4)
          {
            v10 = v2 - v4;
            v11 = v4 - 1;
            do
            {
              *((*(*(*(this + 12) + 1064) + 8))(*(this + 12) + 1064) + 32 * v10++ + 28) = *(v5 + 28);
            }

            while (v11--);
          }

          v4 = 0;
        }
      }

      ++v2;
    }

    while (v3 < (*(**(this + 12) + 40))(*(this + 12)));
  }

  return 0;
}

uint64_t NovaHost::CoreAnalyticsStep::CoreAnalyticsStep(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = *MEMORY[0x277D85DE8];
  AlgWorkNode::AlgWorkNode(a1, a2);
  *v13 = &unk_2876F8290;
  *(v13 + 80) = a3;
  *(v13 + 88) = a4;
  *(v13 + 96) = a5;
  *(v13 + 104) = a6;
  *(v13 + 112) = a7;
  *(v13 + 120) = 0;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  *&v20 = &v16;
  *(&v20 + 1) = 4;
  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(v13 + 8, &v20);
  v20 = *(a1 + 104);
  v16 = &v20;
  v17 = 2;
  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(a1 + 40, &v16);
  v14 = *MEMORY[0x277D85DE8];
  return a1;
}

void NovaHost::CoreAnalyticsStep::~CoreAnalyticsStep(NovaHost::CoreAnalyticsStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758DE0);
}

uint64_t NovaHost::CoreAnalyticsStep::run(NovaHost::CoreAnalyticsStep *this)
{
  v2 = *(this + 13);
  v1 = *(this + 14);
  v3 = *(this + 120);
  v4 = *(*(this + 12) + 28);
  *(this + 120) = v4;
  *(v2 + 60) = *(v2 + 21);
  if (v4 == 1 && (v3 & 1) == 0)
  {
    v6 = *(this + 10);
    *(v1 + 29) = 257;
    *(v1 + 32) = *(v6 + 48);
    v5 = 1;
    *(v1 + 31) = 1;
  }

  else
  {
    v5 = 0;
  }

  *(v1 + 36) = v5;
  return 0;
}

uint64_t NovaHost::DoubleHalfPressStep::DoubleHalfPressStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[2] = *MEMORY[0x277D85DE8];
  AlgWorkNode::AlgWorkNode(a1, a2);
  *v9 = &unk_2876F82E0;
  *(v9 + 80) = a3;
  *(v9 + 88) = a4;
  *(v9 + 96) = a5;
  *(v9 + 104) = 0;
  v10 = v9 + 104;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0;
  *(v9 + 128) = xmmword_2655D9F80;
  *(v9 + 144) = 0x4000000000000000;
  *(v9 + 176) = xmmword_2655D9F80;
  *(v9 + 192) = 0x4000000000000000;
  v17[0] = a3;
  v17[1] = a4;
  v15 = v17;
  v16 = 2;
  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(v9 + 8, &v15);
  v11 = *(a1 + 96);
  v15 = v17;
  v16 = 1;
  v17[0] = v11;
  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(a1 + 40, &v15);
  v12 = *(a1 + 192);
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(a1 + 128) = vcvtq_f64_u64(vcvtq_u64_f64(*(a1 + 176)));
  *(a1 + 144) = v12;
  v13 = *MEMORY[0x277D85DE8];
  return a1;
}

void NovaHost::DoubleHalfPressStep::~DoubleHalfPressStep(NovaHost::DoubleHalfPressStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758DE0);
}

uint64_t NovaHost::DoubleHalfPressStep::run(NovaHost::DoubleHalfPressStep *this)
{
  *(*(this + 12) + 34) = 0;
  v11 = 0;
  if ((*(**(this + 10) + 40))(*(this + 10)))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (*(*(*(this + 10) + 1064) + 8))(*(this + 10) + 1064);
      v6 = (*(*(*(this + 11) + 1320) + 8))(*(this + 11) + 1320);
      NovaHost::DoubleHalfPressStep::updateStep(this, (v5 + v3), (v6 + v2), &v11);
      v7 = v11;
      v8 = *(this + 12);
      v9 = *(v8 + 34);
      *(v8 + 34) = v9 + 1;
      *(v8 + 4 * v9 + 36) = v7;
      ++v4;
      v3 += 32;
      v2 += 40;
    }

    while (v4 < (*(**(this + 10) + 40))(*(this + 10)));
  }

  return 0;
}

uint64_t NovaHost::DoubleHalfPressStep::updateStep(NovaHost::DoubleHalfPressStep *this, TouchSensitiveButtonEventPacket *a2, ForceStageEventPacket *a3, BOOL *a4)
{
  *a4 = 0;
  NovaHost::DoubleHalfPressRecognizer::update((this + 104), a2, a3, a4);
  v8 = *(this + 19);
  if (v8)
  {
    *(this + 20) = *(this + 20) + fabsf(a2->var2 * 103.33);
  }

  var6_low = LOWORD(a3->var6);
  var5 = a3->var5;
  v11 = var5 == 2 && var6_low == 1;
  if (var6_low == 1 && var5 == 4)
  {
    goto LABEL_17;
  }

  var0 = a2->var0;
  if (var6_low == 2 && var5 == 2)
  {
    if (*(this + 169) == 1)
    {
      *(this + 169) = 0;
    }

    else if (v8 && *(this + 168) != 1)
    {
      v16 = *a4;
      *(this + 19) = var0;
      if (v16)
      {
        *(this + 168) = 1;
      }
    }

    else
    {
      *(this + 19) = var0;
      *(this + 168) = 0;
    }

LABEL_25:
    *(this + 20) = 0;
    return 0;
  }

  if (!v11)
  {
    if (a3->var7 != 8)
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (*(this + 168) == 1 && *(this + 23) > (var0 - v8))
  {
LABEL_17:
    NovaHost::DoubleHalfPressRecognizer::reset((this + 104));
    *(this + 169) = 1;
  }

  return 0;
}

uint64_t SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(uint64_t a1, uint64_t a2)
{
  result = SAList<std::reference_wrapper<AlgDataNode>>::resize(a1, *(a1 + 12) + *(a2 + 8));
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      result = SAList<std::reference_wrapper<AlgDataNode>>::push_back(a1, v6++);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t SAList<std::reference_wrapper<AlgDataNode>>::resize(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  *(result + 8) = a2;
  if (a2)
  {
    if (v2 != a2)
    {
      v3 = result;
      v4 = *result;
      if (*result)
      {
        v5 = operator new(8 * a2, 0);
        *v3 = v5;
        memcpy(v5, v4, 8 * *(v3 + 12));

        JUMPOUT(0x266758DD0);
      }
    }
  }

  return result;
}

uint64_t SAList<std::reference_wrapper<AlgDataNode>>::push_back(uint64_t a1, void *a2)
{
  result = *a1;
  if (!result)
  {
    result = operator new(8 * *(a1 + 8), 0);
    *a1 = result;
  }

  *(result + 8 * (*(a1 + 12))++) = *a2;
  return result;
}

void NovaHost::InterpolationStep::run(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v6 = 134218496;
  v7 = 20000;
  v8 = 2048;
  v9 = v3;
  v10 = 2048;
  v11 = v4;
  _os_log_error_impl(&dword_2655CA000, log, OS_LOG_TYPE_ERROR, "Timeout of %lluus exceeded, likely dropped frames? %llu -> %llu", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t NovaHost::DiscreteCalculator::update(NovaHost::DiscreteCalculator *this, TouchSensitiveButtonEventPacket *a2, ForceStageEventPacket *a3, int a4, char a5)
{
  if (!a4)
  {
    return 1;
  }

  v5 = *(this + 24) | a5;
  *(this + 24) = v5;
  var6 = a2->var6;
  if (*this != 1)
  {
    if (!a2->var6)
    {
      goto LABEL_10;
    }

    *this = 1;
    *(this + 2) = a2->var0;
    *(this + 1) = 0;
LABEL_7:
    if ((a2->var4 & 0x100) == 0)
    {
      var2 = a2->var2;
      *(this + 1) = var2 + *(this + 1);
      if (var2 != 0.0)
      {
        *(this + 2) = var2;
      }
    }

    return 1;
  }

  if (a2->var6)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (*this)
  {
    if (a2->var0 - *(this + 2)) >> 8 > 0xC34 || (v5)
    {
      goto LABEL_20;
    }

    v8 = *(this + 1);
    if (v8 <= 0.015 || *(this + 2) <= 0.0)
    {
      if (v8 >= -0.015 || *(this + 2) >= 0.0)
      {
        goto LABEL_20;
      }

      v9 = 128;
    }

    else
    {
      v9 = 64;
    }

    a2->var4 |= v9;
LABEL_20:
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    *(this + 24) = 0;
  }

  return 1;
}

uint64_t NovaHost::NovaButtonStateMachine::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 112) = a3;
  v5 = *(a1 + 44);
  if (v5)
  {
    v5 = *(*(a1 + 32) + 4 * (v5 - 1));
  }

  v6 = *(a1 + 60);
  do
  {
    v7 = v5;
    if (v5 <= 1)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          NovaHost::NovaButtonStateMachine::_processEngaged(a1, a2);
        }
      }

      else
      {
        NovaHost::NovaButtonStateMachine::_processIdle(a1, a2);
      }
    }

    else if (v5 == 2)
    {
      NovaHost::NovaButtonStateMachine::_processMaybeIntermediate(a1, a2);
    }

    else if (v5 == 3)
    {
      NovaHost::NovaButtonStateMachine::_processIntermediate(a1, a2);
    }

    else if (v5 == 4 && (*(a1 + 120) & 1) == 0)
    {
      NovaHost::NovaButtonStateMachine::_exitStage(a1, a2);
    }

    v5 = *(a1 + 44);
    if (v5)
    {
      v5 = *(*(a1 + 32) + 4 * (v5 - 1));
    }
  }

  while (v7 != v5);
  v8 = *(a1 + 76);
  if (v8 && v7 && v6 != v8 && *(*(a1 + 64) + 40 * (v8 - 1) + 28) == 2 || v6 == v8 && NovaHost::NovaButtonStateMachine::_shouldGenerateEvent(a1, a2))
  {
    NovaHost::NovaButtonStateMachine::_changeInSameStage(a1, a2);
  }

  v9 = *(a2 + 16);
  *(a1 + 80) = *a2;
  *(a1 + 96) = v9;
  return 1;
}

float NovaHost::NovaButtonStateMachine::_processIdle(uint64_t a1, float32x2_t *a2)
{
  if (*(a1 + 120))
  {
    v3 = 4;
LABEL_3:
    v4 = NovaHost::NovaButtonStateMachine::_enterStage(a1, v3, a2);
    return *&v4;
  }

  v5 = a2->i8[2];
  v3 = 1;
  if (v5)
  {
    goto LABEL_3;
  }

  LODWORD(v4) = a2[2].i32[1];
  if (*&v4 >= 50.0 || *(a1 + 88) && a2->u8[1] > *(a1 + 81))
  {
    goto LABEL_3;
  }

  return *&v4;
}

double NovaHost::NovaButtonStateMachine::_processEngaged(uint64_t a1, float32x2_t *a2)
{
  if (*(a1 + 120) == 1)
  {
    v3 = 4;
    return NovaHost::NovaButtonStateMachine::_enterStage(a1, v3, a2);
  }

  v4 = a2->u8[1];
  if (v4 != 3)
  {
    if (a2->i8[1] || (a2->i8[2] & 1) != 0 || (LODWORD(result) = a2[2].i32[1], *&result >= 50.0))
    {
      if (*(a1 + 88) && v4 > *(a1 + 81))
      {
        v3 = 2;
        return NovaHost::NovaButtonStateMachine::_enterStage(a1, v3, a2);
      }
    }

    else
    {
      return NovaHost::NovaButtonStateMachine::_exitStage(a1, a2);
    }
  }

  return result;
}

double NovaHost::NovaButtonStateMachine::_processMaybeIntermediate(uint64_t a1, float32x2_t *a2)
{
  if (*(a1 + 120) == 1)
  {
    v3 = 4;
    return NovaHost::NovaButtonStateMachine::_enterStage(a1, v3, a2);
  }

  v4 = a2->u8[1];
  if (v4 != 3)
  {
    if (a2->i8[1])
    {
      if (*(a1 + 88) && v4 >= 2 && v4 > *(a1 + 81))
      {
        v3 = 3;
        return NovaHost::NovaButtonStateMachine::_enterStage(a1, v3, a2);
      }
    }

    else
    {
      return NovaHost::NovaButtonStateMachine::_exitStage(a1, a2);
    }
  }

  return result;
}

double NovaHost::NovaButtonStateMachine::_processIntermediate(uint64_t a1, float32x2_t *a2)
{
  if (*(a1 + 120) == 1)
  {
    return NovaHost::NovaButtonStateMachine::_enterStage(a1, 4, a2);
  }

  if (a2->u8[1] <= 1u)
  {
    return NovaHost::NovaButtonStateMachine::_exitStage(a1, a2);
  }

  return result;
}

BOOL NovaHost::NovaButtonStateMachine::_shouldGenerateEvent(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0.0 || *(a1 + 82) != *(a2 + 2) || vabds_f32(*(a2 + 24), *(a1 + 128)) > 0.1 || *(a1 + 108) != *(a2 + 28))
  {
    return 1;
  }

  if (*(a1 + 44))
  {
    v2 = *(a2 + 20);
    if (v2 >= 50.0)
    {
      return vabds_f32(v2, *(a1 + 124)) > 5.0;
    }
  }

  return 0;
}

double NovaHost::NovaButtonStateMachine::_changeInSameStage(uint64_t a1, float32x2_t *a2)
{
  v4 = SALoggingGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    NovaHost::NovaButtonStateMachine::_changeInSameStage(a1, v4);
  }

  v5 = *(a1 + 44);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 4 * (v5 - 1));
  }

  else
  {
    v6 = 0;
  }

  return NovaHost::NovaButtonStateMachine::_createEvent(a1, a2, v6, 0);
}

uint64_t NovaHost::NovaButtonStateMachine::clearHIDEvents(uint64_t this)
{
  if (*(this + 60))
  {
    *(this + 60) = 0;
  }

  if (*(this + 76))
  {
    *(this + 76) = 0;
  }

  return this;
}

void NovaHost::NovaButtonStateMachine::cleanup(NovaHost::NovaButtonStateMachine *this)
{
  v2 = SALoggingGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    NovaHost::NovaButtonStateMachine::cleanup(v2);
  }

  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 121) = 1;
  memset(v3, 0, sizeof(v3));
  while (*(this + 11))
  {
    NovaHost::NovaButtonStateMachine::_exitStage(this, v3);
  }

  *(this + 121) = 0;
}

double NovaHost::NovaButtonStateMachine::_exitStage(uint64_t a1, float32x2_t *a2)
{
  v4 = *(a1 + 44);
  v5 = *(*(a1 + 32) + 4 * (v4 - 1));
  if (v4)
  {
    *(a1 + 44) = v4 - 1;
  }

  v6 = SALoggingGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NovaHost::NovaButtonStateMachine::_exitStage(a1);
  }

  if (v5 != 2 || **a1 == 1)
  {
    return NovaHost::NovaButtonStateMachine::_createEvent(a1, a2, v5, 2);
  }

  return result;
}

double NovaHost::NovaButtonStateMachine::_enterStage(_BYTE **a1, int a2, float32x2_t *a3)
{
  v7 = a2;
  v5 = SALoggingGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    NovaHost::NovaButtonStateMachine::_enterStage(a1);
  }

  SAList<NovaForceStage>::push_back((a1 + 4), &v7);
  if (v7 != 2 || **a1 == 1)
  {
    return NovaHost::NovaButtonStateMachine::_createEvent(a1, a3, v7, 1);
  }

  return result;
}

uint64_t SAList<NovaForceStage>::push_back(uint64_t a1, _DWORD *a2)
{
  result = *a1;
  if (!result)
  {
    result = operator new(4 * *(a1 + 8), 0);
    *a1 = result;
  }

  *(result + 4 * (*(a1 + 12))++) = *a2;
  return result;
}

double NovaHost::NovaButtonStateMachine::_createEvent(uint64_t a1, float32x2_t *a2, int a3, int a4)
{
  if (*(a1 + 121))
  {
    LOBYTE(v8) = 0;
    v9 = 8;
LABEL_9:
    *(a1 + 132) = v8;
    goto LABEL_10;
  }

  v8 = *(a1 + 44);
  if (*(a1 + 132) == 1)
  {
    if (v8)
    {
      v9 = 2;
      goto LABEL_10;
    }

    v9 = 4;
    goto LABEL_9;
  }

  if (v8)
  {
    LOBYTE(v8) = 1;
    v9 = 1;
    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:
  v10 = *(a1 + 60);
  if (v10)
  {
    v11 = *(a1 + 48) + 32 * (v10 - 1);
    v12 = *v11;
    v13 = *(a1 + 112);
    if (*v11 == v13)
    {
      *(v11 + 12) = 0;
      v13 = v12;
    }
  }

  else
  {
    v13 = *(a1 + 112);
  }

  v27 = v13;
  v14 = a2[2];
  v15 = a2[3].i32[1];
  v16 = a2->f32[1];
  if ((((v15 & 1) == 0) & **(a1 + 24)) != 0)
  {
    v16 = v16 * 0.5;
  }

  v14.f32[1] = v16;
  v28 = vmul_f32(v14, vdup_n_s32(0x3D7AFAFBu));
  v29 = a2[3].i32[0];
  v30 = *&v15;
  LOWORD(v31) = v9;
  HIWORD(v31) = a2->u8[2];
  v32 = 0;
  SAList<TouchSensitiveButtonEventPacket>::push_back(a1 + 48, &v27);
  v17 = a2[2].f32[1];
  if (a3 == 3)
  {
    v19 = **(a1 + 8);
    v20 = **(a1 + 16);
    v18 = NAN;
  }

  else if (a3 == 2)
  {
    v18 = (v17 * 0.001) + 0.001;
    v19 = **(a1 + 8);
    v20 = **(a1 + 16);
  }

  else
  {
    if (a3 == 1)
    {
      v18 = **(a1 + 8);
      *&v19 = 0.05;
    }

    else
    {
      *&v19 = NAN;
      v18 = NAN;
    }

    v20 = *&v19;
  }

  v21 = v17 * 0.001;
  v22 = v17 < 50.0;
  v23 = 0.0;
  if (!v22)
  {
    v23 = v21;
  }

  if (v23 > v18)
  {
    v18 = v23;
  }

  if (v23 >= v20 || a4 == 2)
  {
    v25 = v20;
  }

  else
  {
    v25 = v23;
  }

  v27 = *(a1 + 112);
  v28 = __PAIR64__(LODWORD(v18), LODWORD(v23));
  v29 = v19;
  v30 = v25;
  v31 = a3;
  v32 = a4;
  v33 = v9;
  v34 = 0;
  v35 = 0;
  SAList<ForceStageEventPacket>::push_back(a1 + 64, &v27);
  result = *(&a2[2] + 4);
  *(a1 + 124) = result;
  return result;
}

__n128 SAList<TouchSensitiveButtonEventPacket>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (!v4)
  {
    v4 = operator new(32 * *(a1 + 8), 0);
    *a1 = v4;
  }

  v5 = (v4 + 32 * *(a1 + 12));
  result = *a2;
  v7 = *(a2 + 16);
  *v5 = *a2;
  v5[1] = v7;
  ++*(a1 + 12);
  return result;
}

__n128 SAList<ForceStageEventPacket>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (!v4)
  {
    v4 = operator new(40 * *(a1 + 8), 0);
    *a1 = v4;
  }

  v5 = v4 + 40 * *(a1 + 12);
  result = *a2;
  v7 = *(a2 + 16);
  *(v5 + 32) = *(a2 + 32);
  *v5 = result;
  *(v5 + 16) = v7;
  ++*(a1 + 12);
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

void NovaHost::NovaButtonStateMachine::_changeInSameStage(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 112);
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_2655CA000, a2, OS_LOG_TYPE_DEBUG, "[NovaButtonStateMachine] %llu: change in same stage event", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void NovaHost::NovaButtonStateMachine::_exitStage(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 112);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_2655CA000, v2, v3, "[NovaButtonStateMachine] %llu: exit stage %u", v5, v6);
  v4 = *MEMORY[0x277D85DE8];
}

void NovaHost::NovaButtonStateMachine::_enterStage(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 112);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_2655CA000, v2, v3, "[NovaButtonStateMachine] %llu: enter stage %u", v5, v6);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t NovaHost::LiftoffVelocityCalculator::update(NovaHost::LiftoffVelocityCalculator *this, TouchSensitiveButtonEventPacket *a2, ForceStageEventPacket *a3)
{
  a2->var8 = 0.0;
  p_var8 = &a2->var8;
  v5 = (this + 168);
  v6 = *(this + 21);
  v7 = a2->var4 & 0x38;
  if (!a2->var6)
  {
    v26 = 0.0;
    if (v7)
    {
      v27 = 0;
    }

    else
    {
      v27 = v6 == 0;
    }

    if (v27)
    {
      v28 = *(this + 19);
      if (v28)
      {
        v29 = (this + 16);
        v30 = *(this + 19);
        do
        {
          v31 = *v29;
          if (*v29 <= 0xA)
          {
            v31 = 10;
          }

          v26 = v26 + ((*(v29 - 3) / v31) * 1000000.0);
          v29 += 3;
          --v30;
        }

        while (v30);
      }

      v26 = v26 / v28;
    }

    *p_var8 = v26;
    *(this + 169) = 0u;
    *(this + 9) = 0u;
    *(this + 10) = 0u;
    v32 = SALoggingGeneral();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      NovaHost::LiftoffVelocityCalculator::update(p_var8);
    }

    return 1;
  }

  if ((*(this + 184) & 1) == 0)
  {
    *(this + 184) = 1;
    *(this + 47) = 0;
    var1 = a2->var1;
    *(this + 50) = var1;
    *(this + 49) = 0;
    NovaHost::LiftoffVelocityCalculator::_pushSample(this, var1, 0.0, a2->var0);
  }

  v11 = *(this + 19);
  if (!v11)
  {
    return 0;
  }

  v12 = (v5 - 1);
  v13 = this + 24 * ((*(this + 18) + 5) % 6uLL);
  v14 = a2->var1;
  v15 = *v13;
  v16 = (this + 16);
  v17 = 0.0;
  v18 = *(this + 19);
  do
  {
    v19 = *v16;
    if (*v16 <= 0xA)
    {
      v19 = 10;
    }

    v17 = v17 + ((*(v16 - 3) / v19) * 1000000.0);
    v16 += 3;
    --v18;
  }

  while (v18);
  v20 = v14 - v15;
  var4 = a2->var4;
  v22 = (v14 - v15) * *(this + 49);
  *(this + 49) = v14 - v15;
  v23 = vabds_f32(v14, v15);
  v24 = (a2->var0 - *(v13 + 1));
  if (v23 < ((v24 * 0.05) / 1000000.0) || v22 < -0.00001 || v7)
  {
    *(this + 50) = v14;
    if ((var4 & 4) == 0)
    {
LABEL_13:
      var2 = a2->var2;
      if (var2 != 0.0)
      {
        *(this + 48) = fabsf(var2);
      }

      goto LABEL_39;
    }
  }

  else if ((var4 & 4) == 0)
  {
    goto LABEL_13;
  }

  if (vabds_f32(v14, *(this + 50)) >= 0.05)
  {
    v33 = *(this + 48) * 1.5;
  }

  else
  {
    *(this + 48) = 0;
    v33 = 0.0;
  }

  if (v20 >= 0.0)
  {
    if (v20 >= v33)
    {
      v20 = v33;
    }
  }

  else
  {
    v34 = -v33;
    if (v20 <= v34)
    {
      v20 = v34;
    }
  }

  a2->var2 = v20;
LABEL_39:
  v36 = (var4 & 4) == 0 || v6 == 0;
  if (v7 || !v36)
  {
    v39 = SALoggingGeneral();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      NovaHost::LiftoffVelocityCalculator::update();
    }

    v40 = *(this + 19);
    if (v40)
    {
      v41 = (v40 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v42 = vdupq_n_s64(v40 - 1);
      v43 = xmmword_2655DA430;
      v44 = xmmword_2655DA440;
      v45 = (this + 52);
      v46 = vdupq_n_s64(4uLL);
      do
      {
        v47 = vmovn_s64(vcgeq_u64(v42, v44));
        if (vuzp1_s16(v47, *v42.i8).u8[0])
        {
          *(v45 - 12) = 0;
        }

        if (vuzp1_s16(v47, *&v42).i8[2])
        {
          *(v45 - 6) = 0;
        }

        if (vuzp1_s16(*&v42, vmovn_s64(vcgeq_u64(v42, *&v43))).i32[1])
        {
          *v45 = 0;
          v45[6] = 0;
        }

        v43 = vaddq_s64(v43, v46);
        v44 = vaddq_s64(v44, v46);
        v45 += 24;
        v41 -= 4;
      }

      while (v41);
    }

    v20 = 0.0;
    if (v7)
    {
      a2->var2 = 0.0;
    }
  }

  else if ((var4 & 4) != 0 && !v6)
  {
    v37 = ((v17 / v11) * v24) / 1000000.0;
    if (fabsf(v37) < fabsf(v20))
    {
      v38 = SALoggingGeneral();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        NovaHost::LiftoffVelocityCalculator::update();
      }

      v20 = v37;
    }
  }

  NovaHost::LiftoffVelocityCalculator::_pushSample(this, a2->var1, v20, a2->var0);
  v49 = *(this + 19);
  if (!v49)
  {
    return 0;
  }

  v50 = this + 24 * ((*(this + 18) + 5) % 6uLL);
  v51 = *(v50 + 2);
  if (v51 <= 0xA)
  {
    v51 = 10;
  }

  *v48.i32 = (*(v50 + 1) / v51) * 1000000.0;
  if (fabsf(*v48.i32) < 0.48387 || v22 < -0.00001)
  {
    if (!v6)
    {
      *(this + 47) = v20 + *(this + 47);
    }

    goto LABEL_80;
  }

  var5 = a3->var5;
  if (!v6)
  {
    *(this + 47) = v20 + *(this + 47);
    if (var5 != 4)
    {
      goto LABEL_101;
    }

    goto LABEL_80;
  }

  if (var5 == 4)
  {
LABEL_80:
    *v12 = *v50;
    v5[1] = *(v50 + 2);
    v56 = (v49 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v57 = vdupq_n_s64(v49 - 1);
    v58 = xmmword_2655DA430;
    v59 = xmmword_2655DA440;
    v60 = (this + 52);
    v61 = vdupq_n_s64(4uLL);
    do
    {
      v62 = vmovn_s64(vcgeq_u64(v57, v59));
      if (vuzp1_s16(v62, v48).u8[0])
      {
        *(v60 - 12) = 0;
      }

      if (vuzp1_s16(v62, v48).i8[2])
      {
        *(v60 - 6) = 0;
      }

      if (vuzp1_s16(v48, vmovn_s64(vcgeq_u64(v57, *&v58))).i32[1])
      {
        *v60 = 0;
        v60[6] = 0;
      }

      v58 = vaddq_s64(v58, v61);
      v59 = vaddq_s64(v59, v61);
      v60 += 24;
      v56 -= 4;
    }

    while (v56);
    v63 = *(this + 47);
    v64 = v63 >= -0.1 || *v48.i32 <= 0.00001;
    v53 = 0.0;
    if (v64)
    {
      v65 = 0.0;
    }

    else
    {
      v65 = 0.05;
    }

    v66 = v63 > 0.1 && *v48.i32 < -0.00001;
    v67 = -0.05;
    if (!v66)
    {
      v67 = v65;
    }

    *(this + 40) = *(this + 40) + v67;
    v68 = SALoggingGeneral();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      NovaHost::LiftoffVelocityCalculator::update((v5 - 1));
      if (v6)
      {
        goto LABEL_109;
      }
    }

    else if (v6)
    {
      goto LABEL_109;
    }

LABEL_101:
    v69 = *(this + 19);
    if (v69)
    {
      v70 = (this + 16);
      v71 = 0.0;
      v72 = *(this + 19);
      do
      {
        v73 = *v70;
        if (*v70 <= 0xA)
        {
          v73 = 10;
        }

        v71 = v71 + ((*(v70 - 3) / v73) * 1000000.0);
        v70 += 3;
        --v72;
      }

      while (v72);
    }

    else
    {
      v71 = 0.0;
    }

    v53 = v71 / v69;
    goto LABEL_109;
  }

  v53 = 0.0;
  if (vabds_f32(*v50, *v12) > 0.096774)
  {
    *(this + 47) = 0;
    *v5 = 0;
    v5[1] = 0;
    *v12 = 0;
    v54 = SALoggingGeneral();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      NovaHost::LiftoffVelocityCalculator::update();
    }

    goto LABEL_101;
  }

LABEL_109:
  *p_var8 = v53;
  v74 = SALoggingGeneral();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
  {
    NovaHost::LiftoffVelocityCalculator::update(p_var8);
  }

  return 1;
}

uint64_t NovaHost::LiftoffVelocityCalculator::_pushSample(uint64_t this, float a2, float a3, uint64_t a4)
{
  v5 = *(this + 144);
  v4 = *(this + 152);
  if (v4)
  {
    v6 = a4 - *(this + 24 * ((v5 + 5) % 6uLL) + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = this + 24 * v5;
  *v7 = a2;
  *(v7 + 4) = a3;
  *(v7 + 8) = a4;
  *(v7 + 16) = v6;
  *(this + 144) = (v5 + 1) % 6uLL;
  if (v4 <= 5)
  {
    *(this + 152) = v4 + 1;
  }

  return this;
}

void NovaHost::LiftoffVelocityCalculator::update(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  v7 = 2048;
  v8 = v3;
  _os_log_debug_impl(&dword_2655CA000, v4, OS_LOG_TYPE_DEBUG, "[LiftoffVelocity] Set new deadzone at pos:%f, TS:%llu", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void NovaHost::LiftoffVelocityCalculator::update()
{
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t NovaHost::Interpolator<float>::reset_state(uint64_t result, unint64_t a2, float a3)
{
  *(result + 48) = a2;
  *(result + 56) = a2;
  *(result + 64) = a3;
  *(result + 68) = a3;
  *(result + 72) = 0;
  return result;
}

BOOL NovaHost::Interpolator<float>::run(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 28))
  {
    *(a1 + 28) = 0;
  }

  if (*(a1 + 44))
  {
    *(a1 + 44) = 0;
  }

  v6 = a2;
  v7 = (a1 + 56);
  v8 = *(a1 + 56);
  if (v8 <= a2)
  {
    v11 = a3;
    if ((*(a1 + 8) & 1) == 0)
    {
      v11 = a3 - *(a1 + 64);
    }

    v12 = 1000000.0 / **a1;
    v13 = *(a1 + 48);
    v14 = v11 + *(a1 + 72);
    v15 = v12 + v13;
    if (v12 + v13 > v6)
    {
LABEL_21:
      *(a1 + 72) = v14;
      *(a1 + 64) = a3;
      result = 1;
      *(a1 + 56) = v6;
      return result;
    }

    v16 = v6 - v8;
    v17 = v11;
    while (*(a1 + 28) < *(a1 + 24) && *(a1 + 44) < *(a1 + 40))
    {
      v18 = *(a1 + 56);
      if (v13 >= v18)
      {
        v19 = v12;
      }

      else
      {
        v19 = v15 - v18;
      }

      v20 = *(a1 + 72) + v17 * (v19 / v16);
      v23 = v20;
      *(a1 + 72) = 0;
      if (*(a1 + 8) == 1)
      {
        SAList<NovaForceStage>::push_back(a1 + 16, &v23);
      }

      else
      {
        *&v22 = *(a1 + 68) + v20;
        SAList<NovaForceStage>::push_back(a1 + 16, &v22);
        *(a1 + 68) = v22;
      }

      v14 = v14 - v20;
      v22 = v15;
      SAList<std::reference_wrapper<AlgDataNode>>::push_back(a1 + 32, &v22);
      *(a1 + 48) = v15;
      v13 = v15;
      v15 = v12 + v15;
      if (v15 > v6)
      {
        goto LABEL_21;
      }
    }

    v21 = SALoggingGeneral();
    result = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (result)
    {
      NovaHost::Interpolator<float>::run(v21);
      return 0;
    }
  }

  else
  {
    v9 = SALoggingGeneral();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (result)
    {
      NovaHost::Interpolator<float>::run(v7, a2, v9);
      return 0;
    }
  }

  return result;
}

void NovaHost::Interpolator<float>::run(double *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 134218240;
  v6 = v3;
  v7 = 2048;
  v8 = a2;
  _os_log_error_impl(&dword_2655CA000, log, OS_LOG_TYPE_ERROR, "Timestamps going backwards! %llu -> %llu", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t SALoggingGeneral()
{
  if (qword_280017D08 != -1)
  {
    dispatch_once(&qword_280017D08, &__block_literal_global_0);
  }

  return _MergedGlobals_0;
}

os_log_t __SALoggingGeneral_block_invoke()
{
  result = os_log_create("com.apple.SensingAlgs", "General");
  _MergedGlobals_0 = result;
  return result;
}

uint64_t SALoggingHIDEventSignpost()
{
  if (qword_280017D18 != -1)
  {
    dispatch_once(&qword_280017D18, &__block_literal_global_17);
  }

  return qword_280017D10;
}

os_log_t __SALoggingHIDEventSignpost_block_invoke()
{
  result = os_log_create("com.apple.SensingAlgs", "HIDEventSignpost");
  qword_280017D10 = result;
  return result;
}

BOOL AlgsDevice::injExtWith(AlgsDevice *this, AlgDataInjector *a2, AlgDataExtractor *a3, void *a4, unint64_t *a5)
{
  v7 = OUTLINED_FUNCTION_25(this);
  if (v9)
  {
    v10 = *a5;
  }

  AlgsDevice::StreamingClient::setBuffer(v7, v8);
  v11 = AlgsDevice::injExtWith();
  v12 = AlgsDevice::StreamingClient::resetBuffer(*(v5 + 64));
  if (a5)
  {
    *a5 = v12;
  }

  return v11;
}

BOOL AlgsDevice::injExtWith()
{
  OUTLINED_FUNCTION_23();
  v4 = v3 + 32;
  for (i = 32; i != 48; i += 8)
  {
    v6 = *(v2 + i);
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_11_0(v6);
      (*(v8 + 24))(v7, 0, v1, v0);
    }
  }

  OUTLINED_FUNCTION_17_0();
  v10 = (*(v9 + 48))(v2);
  v11 = OUTLINED_FUNCTION_11_0(v10);
  v13 = (*(v12 + 40))(v11, v1, v0, 0, 0, 1);
  for (j = 0; j != 16; j += 8)
  {
    v15 = *(v4 + j);
    if (v15)
    {
      v16 = OUTLINED_FUNCTION_11_0(v15);
      (*(v17 + 32))(v16);
    }
  }

  return v13 == 0;
}

BOOL AlgsDevice::runPlan(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = OUTLINED_FUNCTION_25(a1);
  if (v9)
  {
    v10 = *a5;
  }

  AlgsDevice::StreamingClient::setBuffer(v7, v8);
  v11 = AlgsDevice::run();
  v12 = AlgsDevice::StreamingClient::resetBuffer(*(v5 + 64));
  if (a5)
  {
    *a5 = v12;
  }

  return v11;
}

BOOL AlgsDevice::run()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  v2 = v0 + 32;
  for (i = 32; i != 48; i += 8)
  {
    v4 = *(v1 + i);
    if (v4)
    {
      OUTLINED_FUNCTION_11_0(v4);
      v6 = *(v5 + 24);
      OUTLINED_FUNCTION_19();
      v7();
    }
  }

  v8 = *(v1 + 56);
  SAList<unsigned int>::clear(v8 + 40);
  for (j = 0; *(v8 + 20) > j; ++j)
  {
    SAList<unsigned int>::push_back(v8 + 40);
  }

  OUTLINED_FUNCTION_12_0();
  v11 = (*(v10 + 48))(v1);
  v12 = *(v1 + 56);
  OUTLINED_FUNCTION_11_0(v11);
  v14 = *(v13 + 56);
  OUTLINED_FUNCTION_19();
  v16 = v15();
  OUTLINED_FUNCTION_12_0();
  v18 = (*(v17 + 48))(v1);
  AlgWorkNode::resetInjectionState(v18);
  for (k = 0; k != 16; k += 8)
  {
    v20 = *(v2 + k);
    if (v20)
    {
      v21 = OUTLINED_FUNCTION_11_0(v20);
      (*(v22 + 32))(v21);
    }
  }

  return v16 == 0;
}

BOOL AlgsDevice::runPlan(AlgsDevice *this, AlgDataInjector *a2, AlgDataExtractor *a3)
{
  OUTLINED_FUNCTION_23();
  v7 = OUTLINED_FUNCTION_11_0(v6);
  v9 = (*(v8 + 48))(v7);
  v10 = OUTLINED_FUNCTION_11_0(v9);
  v12 = (*(v11 + 48))(v10, v4, v3) == 0;
  OUTLINED_FUNCTION_17_0();
  v14 = (*(v13 + 48))(v5);
  AlgWorkNode::resetInjectionState(v14);
  return v12;
}

uint64_t AlgsDevice::AlgsDevice(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, const char *a6, char a7)
{
  OUTLINED_FUNCTION_8_0();
  *v13 = v14;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = v15;
  v13[5] = 0;
  v13[6] = 0;
  v13[4] = 0;
  v16 = operator new(72, 1);
  *(v7 + 56) = AlgDataExtractor::AlgDataExtractor(v16, 0);
  v17 = operator new(152, a2);
  *v17 = &unk_2876F8510;
  *(v17 + 8) = 0;
  *(v17 + 16) = 256;
  *(v17 + 24) = 0;
  *(v17 + 32) = v7;
  OUTLINED_FUNCTION_21();
  StreamingWriter::StreamingWriter(v18, v19, v20, 0);
  *(v17 + 88) = 0;
  *(v17 + 97) = 0;
  *(v17 + 104) = 0;
  *(v17 + 112) = 0;
  *(v17 + 120) = a2;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 144) = a2;
  AlgDataExtractor::AlgDataExtractor(v23, 0);
  AlgsDevice::StreamingClient::configure(v17, 0, v23);
  PacketCollection::~PacketCollection(v23);
  *(v7 + 64) = v17;
  *(v7 + 80) = 0;
  *(v7 + 88) = 16;
  *(v7 + 96) = 0;
  *(v7 + 104) = a7;
  *(v7 + 76) = a5;
  *(v7 + 72) = a4;
  *(v7 + 77) = 0;
  if (a6)
  {
    v21 = a6;
  }

  else
  {
    v21 = "";
  }

  AlgsDevice::addVersion(v7, v21);
  return v7;
}

uint64_t AlgsDevice::addVersion(AlgsDevice *this, const char *a2)
{
  if (!a2 || !*a2)
  {
    return 0;
  }

  SAList<char const*>::push_back(this + 80);
  return 1;
}

uint64_t SAList<char const*>::~SAList(uint64_t a1)
{
  if (OUTLINED_FUNCTION_7_0(a1))
  {
    OUTLINED_FUNCTION_0_3();
    MEMORY[0x266758DD0]();
  }

  return v1;
}

void SAList<char const*>::push_back(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_5_0(a1);
  if (!v3)
  {
    v3 = operator new(8 * *(v1 + 8), 0);
    *v1 = v3;
  }

  *(v3 + 8 * *(v1 + 12)) = *v2;
  OUTLINED_FUNCTION_4_0();
}

void AlgsDevice::~AlgsDevice(AlgsDevice *this)
{
  OUTLINED_FUNCTION_8_0();
  *v2 = v3;
  v4 = v2[7];
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_11_0(v4);
    (*(v6 + 8))(v5);
  }

  v7 = *(v1 + 64);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_11_0(v7);
    (*(v9 + 8))(v8);
  }

  SAList<char const*>::~SAList(v1 + 80);
}

uint64_t AlgsDevice::handleInputStream(AlgsDevice *this, const void *a2, unint64_t a3, void *a4, unint64_t *a5, unsigned __int8 *a6, unsigned __int16 *a7, const void **a8)
{
  v15 = OUTLINED_FUNCTION_25(this);
  if (v17)
  {
    v18 = *a5;
  }

  AlgsDevice::StreamingClient::setBuffer(v15, v16);
  v23 = *(v8 + 64);
  if (a6)
  {
    *a6 = 0;
  }

  v25 = (v23 + 128);
  v24 = *(v23 + 128);
  v26 = *(v23 + 136);
  v138 = v23 + 128;
  v139 = v9;
  v141 = 0;
  v142 = 0;
  v140 = a3;
  LOBYTE(v143) = v24;
  v144 = v26;
  if (a3 < 2 || *v9 != 1)
  {
LABEL_105:
    result = 0;
LABEL_106:
    v114 = 0;
    if (!a5)
    {
      return result;
    }

LABEL_107:
    *a5 = v114;
    return result;
  }

  switch(*(v9 + 1))
  {
    case 1:
      v159 = &v156;
      v160 = 0u;
      v161 = 0u;
      v162 = 0u;
      v141 = 2;
      v142 = &v159;
      if (a3 == 2)
      {
        goto LABEL_105;
      }

      v27 = *(v9 + 2);
      LOBYTE(v156) = v27;
      if (a3 == 3)
      {
        goto LABEL_12;
      }

      SABinaryParser::parseInfoData(&v139, StreamingParser::parseReset(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_0::__invoke, 0, 0, 0);
      if (!v28)
      {
        goto LABEL_105;
      }

      v27 = v156;
LABEL_12:
      v29 = *(v23 + 32);
      OUTLINED_FUNCTION_17_0();
      (*(v30 + 40))(v29, v27);
      v31 = 0;
      *(v29 + 77) = v27;
      v32 = v29 + 32;
      while (v31 != 16)
      {
        v33 = *(v32 + v31);
        if (v33)
        {
          v34 = OUTLINED_FUNCTION_11_0(v33);
          (*(v35 + 16))(v34, v27);
        }

        v31 += 8;
      }

      goto LABEL_122;
    case 2:
      v150 = 0;
      *v151 = 0;
      StreamingParser::numberOfPackets(&v138, v151, &v150, 0, v19, v20, v21, v22);
      if ((v68 & 1) == 0)
      {
        goto LABEL_105;
      }

      v69 = *(v23 + 104);
      v70 = *v151;
      if (v69)
      {
        v70 = *v151 + *(v69 + 20);
        *v151 += *(v69 + 20);
      }

      v71 = AlgDataInjector::AlgDataInjector(&v156, v70);
      OUTLINED_FUNCTION_39(v71, v150);
      StreamingParser::parseRun(&v138, &v145, &v156, &v159);
      if (v72)
      {
        AlgsDevice::StreamingClient::translate(v23, &v156, &v159);
        *(v23 + 97) = 1;
        v73 = *(v23 + 32);
        AlgsDevice::run();
        PacketCollection::~PacketCollection(&v159);
        v74 = &v156;
        goto LABEL_121;
      }

      PacketCollection::~PacketCollection(&v159);
      v95 = &v156;
      goto LABEL_104;
    case 3:
      v149 = 0;
      v150 = 0;
      v148 = 0;
      StreamingParser::numberOfPackets(&v138, &v150, &v149, &v148, v19, v20, v21, v22);
      if ((v48 & 1) == 0)
      {
        goto LABEL_105;
      }

      v49 = *(v23 + 104);
      v50 = v150;
      if (v49)
      {
        v50 = v150 + *(v49 + 20);
        v150 += *(v49 + 20);
      }

      v51 = AlgDataInjector::AlgDataInjector(&v145, v50);
      OUTLINED_FUNCTION_39(v51, v149);
      AlgDataExtractor::AlgDataExtractor(&v156, v148);
      *v151 = v23 + 88;
      v152 = &v145;
      v153 = &v159;
      v154 = &v156;
      v142 = v151;
      SABinaryParser::parseInjExtFrame(&v139, StreamingParser::parseInjExt(unsigned long long *,AlgDataInjector *,AlgDataExtractor *,AlgDataExtractor *)::$_0::__invoke, StreamingParser::parseInjExt(unsigned long long *,AlgDataInjector *,AlgDataExtractor *,AlgDataExtractor *)::$_1::__invoke, StreamingParser::parseInjExt(unsigned long long *,AlgDataInjector *,AlgDataExtractor *,AlgDataExtractor *)::$_2::__invoke, StreamingParser::parseInjExt(unsigned long long *,AlgDataInjector *,AlgDataExtractor *,AlgDataExtractor *)::$_3::__invoke);
      v53 = v52;
      if ((v52 & 1) == 0)
      {
        PacketCollection::~PacketCollection(&v156);
        PacketCollection::~PacketCollection(&v159);
        v95 = &v145;
        goto LABEL_104;
      }

      v54 = HIDWORD(v158);
      v55 = (v157 + 72);
      if (HIDWORD(v158))
      {
        do
        {
          *(v55 - 1) = AlgsDevice::StreamingClient::extraction;
          *v55 = v23;
          --v54;
          v55 += 10;
        }

        while (v54);
      }

      AlgsDevice::StreamingClient::translate(v23, &v145, &v159);
      *(v23 + 97) = 1;
      v56 = *(v23 + 32);
      AlgsDevice::injExtWith();
      *(v23 + 88) = 0;
      PacketCollection::~PacketCollection(&v156);
      PacketCollection::~PacketCollection(&v159);
      PacketCollection::~PacketCollection(&v145);
      if (v53)
      {
        goto LABEL_122;
      }

      goto LABEL_105;
    case 4:
      if (a3 - 5 >= 0xFFFFFFFFFFFFFFFDLL)
      {
        v57 = 1;
        if (a6)
        {
          *a6 = 1;
          v57 = 0;
        }

        if (a7)
        {
          *a7 = 0;
        }
      }

      else
      {
        v57 = *(v9 + 2);
        if (a6)
        {
          *a6 = v57;
          v57 = 0;
        }

        if (a7)
        {
          *a7 = *(v9 + 3);
        }

        if (a8)
        {
          *a8 = (v9 + 5);
        }
      }

      if (a6)
      {
        v57 = *a6;
      }

      if (a7 && v57 == 1 && *a7 && **a8 == 255)
      {
        **a8 = *(*(v23 + 32) + 77);
      }

      goto LABEL_122;
    case 5:
      v151[0] = 0;
      LOBYTE(v150) = 0;
      v145 = 0;
      OUTLINED_FUNCTION_21();
      StreamingParser::numberOfPackets(v36, v37, v38, v39, v40, v41, v42, v43);
      if ((v44 & 1) == 0)
      {
        goto LABEL_105;
      }

      OUTLINED_FUNCTION_39(v44, v145);
      v156 = &v150;
      v157 = v151;
      v158 = &v159;
      v142 = &v156;
      SABinaryParser::parseConfigure(&v139, StreamingParser::parseConfigure(unsigned char *,BOOL *,AlgDataExtractor *)::$_0::__invoke, StreamingParser::parseConfigure(unsigned char *,BOOL *,AlgDataExtractor *)::$_1::__invoke, StreamingParser::parseConfigure(unsigned char *,BOOL *,AlgDataExtractor *)::$_2::__invoke);
      if ((v46 & 1) == 0)
      {
        goto LABEL_103;
      }

      v47 = v150;
      if (v150 <= 2u)
      {
        AlgsDevice::StreamingClient::configure(v23, v151[0], &v159);
        v47 = v150;
      }

      if (v47 == 3 && HIDWORD(v160))
      {
        StreamingWriter::writeConfigure((v23 + 40), v151[0], &v159, v45);
      }

      else
      {
        AlgsDevice::StreamingClient::configureStatus(v23);
      }

      goto LABEL_120;
    case 6:
      LODWORD(v150) = 0;
      LOBYTE(v149) = 0;
      LOBYTE(v148) = 0;
      v155 = 0;
      v145 = 0;
      v146 = 16;
      *v151 = 0;
      OUTLINED_FUNCTION_21();
      StreamingParser::numberOfPackets(v75, v76, v77, v78, v79, v80, v81, v82);
      if ((v83 & 1) == 0)
      {
        SAList<char const*>::~SAList(&v145);
        goto LABEL_105;
      }

      AlgDataExtractor::AlgDataExtractor(&v156, *v151);
      v159 = &v149;
      *&v160 = &v150;
      *(&v160 + 1) = &v148;
      *&v161 = &v155 + 1;
      *(&v161 + 1) = &v145;
      *&v162 = &v155;
      *(&v162 + 1) = &v156;
      v142 = &v159;
      SABinaryParser::parseInfo(&v139, StreamingParser::parseInfo(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_0::__invoke, StreamingParser::parseInfo(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_1::__invoke, StreamingParser::parseInfo(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_2::__invoke, StreamingParser::parseInfo(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_3::__invoke);
      if (v84)
      {
        v85 = *(v23 + 32);
        if (v150 && v150 != *(v85 + 72))
        {
          StreamingWriter::writeInfo(v23 + 40, v149, v150, v148, HIBYTE(v155), &v145, v155, &v156);
          v88 = 1;
        }

        else
        {
          Info = AlgsDevice::getInfo(*(v23 + 32));
          OUTLINED_FUNCTION_39(Info, *(v85 + 48));
          v87 = *(v23 + 32);
          AlgsDevice::getClientExtractor();
          v88 = StreamingWriter::writeInfo(v23 + 40, BYTE5(Info), Info, BYTE4(Info), BYTE6(Info), *(v23 + 32) + 80, *(v23 + 96), &v159);
          PacketCollection::~PacketCollection(&v159);
        }
      }

      else
      {
        v88 = 0;
      }

      PacketCollection::~PacketCollection(&v156);
      SAList<char const*>::~SAList(&v145);
      if (v88)
      {
        goto LABEL_122;
      }

      goto LABEL_105;
    case 7:
      *v151 = 0;
      AlgDataExtractor::AlgDataExtractor(&v159);
      AlgDataExtractor::AlgDataExtractor(&v156);
      v145 = v151;
      v146 = &v159;
      v147 = &v156;
      v142 = &v145;
      if (a3 - 6 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_102;
      }

      v141 = 6;
      if (!StreamingParser::parseConfigureTranslation(unsigned int *,AlgDataExtractor *,AlgDataExtractor *)::$_0::__invoke(&v145, *(v9 + 2)))
      {
        goto LABEL_102;
      }

      v89 = v141;
      v90 = v140 - v141;
      break;
    case 8:
      v58 = OUTLINED_FUNCTION_11_0(*(v23 + 32));
      v60 = (*(v59 + 48))(v58);
      TreeSize = AlgWorkNode::getTreeSize(v60);
      v62 = AlgsDevice::getInfo(*(v23 + 32));
      *(&v159 + 1) = 0;
      LOBYTE(v159) = BYTE5(v62);
      if (!SABinaryWriter::writeHeader(v23 + 48, 8))
      {
        *(v23 + 64) += 4 * TreeSize;
        goto LABEL_105;
      }

      v63 = SABinaryWriter::write((v23 + 48), &v159, 5uLL);
      *(v23 + 64) += 4 * TreeSize;
      if ((v63 & 1) == 0)
      {
        goto LABEL_105;
      }

      v64 = OUTLINED_FUNCTION_11_0(*(v23 + 32));
      v66 = (*(v65 + 48))(v64);
      result = AlgWorkNode::getTreeInfo(v66, v23, 1);
      if (result)
      {
        goto LABEL_122;
      }

      goto LABEL_106;
    case 9:
      LOBYTE(v156) = 0;
      v159 = &v156;
      *&v160 = v23 + 128;
      if (a3 - 2 <= 2)
      {
        goto LABEL_105;
      }

      if (!StreamingParser::parsePacketCache(unsigned char &,StreamingPacketCache &)::$_0::__invoke(&v159, *(v9 + 2), *(v9 + 3), (v9 + 4)))
      {
        goto LABEL_105;
      }

      v93 = *v25;
      if (!*v25)
      {
        goto LABEL_105;
      }

      v94 = *(v23 + 136);
      LOBYTE(v159) = 1;
      BYTE1(v159) = v93;
      SABinaryWriter::updateCacheSizes(v93, v94);
      if (!SABinaryWriter::writeHeader(v23 + 48, 9) || (SABinaryWriter::write((v23 + 48), &v159, 2uLL) & 1) == 0 || (SABinaryWriter::write((v23 + 48), v94, 24 * v93) & 1) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_122;
    default:
      goto LABEL_105;
  }

  while (1)
  {
    v91 = v89;
    if (v140 <= v89)
    {
      break;
    }

    if (v90 < 0x12 || *(v139 + v89) != 3 || v90 - 18 < 0x12)
    {
      goto LABEL_101;
    }

    v92 = v139 + v89;
    v89 += 36;
    if (*(v139 + v91 + 18) != 3)
    {
      v91 += 36;
      goto LABEL_101;
    }

    v90 -= 36;
    if ((StreamingParser::parseConfigureTranslation(unsigned int *,AlgDataExtractor *,AlgDataExtractor *)::$_1::__invoke(v142, v139 + v91, v92 + 18) & 1) == 0)
    {
      v91 += 36;
LABEL_101:
      v141 = v91;
LABEL_102:
      PacketCollection::~PacketCollection(&v156);
LABEL_103:
      v95 = &v159;
LABEL_104:
      PacketCollection::~PacketCollection(v95);
      goto LABEL_105;
    }
  }

  v141 = v89;
  v96 = *v151;
  if (*v151 == *(*(v23 + 32) + 72))
  {
    v98 = (v23 + 104);
    v97 = *(v23 + 104);
    if (v97)
    {
      v99 = OUTLINED_FUNCTION_11_0(v97);
      (*(v100 + 8))(v99);
    }

    v101 = *(v23 + 112);
    if (v101)
    {
      v102 = OUTLINED_FUNCTION_11_0(v101);
      (*(v103 + 8))(v102);
    }

    if (HIDWORD(v160) && HIDWORD(v160) == HIDWORD(v158))
    {
      v104 = operator new(56, *(v23 + 120));
      *(v23 + 104) = PacketCollection::PacketCollection(v104, SHIDWORD(v160));
      v105 = operator new(56, *(v23 + 120));
      v106 = 0;
      v107 = 0;
      *(v23 + 112) = PacketCollection::PacketCollection(v105, SHIDWORD(v158));
      while (v107 < HIDWORD(v160))
      {
        v108 = OUTLINED_FUNCTION_11_0(*v98);
        (*(v109 + 16))(v108, v110 + v106);
        v111 = OUTLINED_FUNCTION_11_0(*(v23 + 112));
        (*(v112 + 16))(v111, v113 + v106);
        ++v107;
        v106 += 80;
      }
    }

    else
    {
      *v98 = 0;
      *(v23 + 112) = 0;
    }

    v96 = *v151;
  }

  LODWORD(v145) = v96;
  if (SABinaryWriter::writeHeader(v23 + 48, 7))
  {
    v115 = SABinaryWriter::write((v23 + 48), &v145, 4uLL);
    if (v115)
    {
      if (HIDWORD(v160) == HIDWORD(v158))
      {
        v123 = 0;
        v124 = -1;
        do
        {
          if (++v124 >= HIDWORD(v160))
          {
            break;
          }

          if (*(v23 + 72) != 7)
          {
            break;
          }

          v125 = v157[v123 + 33];
          v126 = *(v160 + v123 + 33);
          v127 = OUTLINED_FUNCTION_32(v115, v116, v117, v118, v119, v120, v121, v122, *&v157[v123], *&v157[v123 + 8], v136, v138, v139, v140, v141, v142, v143, v144, 3, *(v160 + v123) >> 56, HIBYTE(*(v160 + v123)), SBYTE1(v147));
          if ((v127 & 1) == 0)
          {
            break;
          }

          v123 += 80;
          v115 = OUTLINED_FUNCTION_32(v127, v128, v129, v130, v131, v132, v133, v134, v135, *(&v135 + 1), v137, v138, v139, v140, v141, v142, v143, v144, v145, v135 >> 56, SHIBYTE(v135), SBYTE1(v147));
        }

        while ((v115 & 1) != 0);
      }
    }
  }

  PacketCollection::~PacketCollection(&v156);
LABEL_120:
  v74 = &v159;
LABEL_121:
  PacketCollection::~PacketCollection(v74);
LABEL_122:
  v114 = AlgsDevice::StreamingClient::resetBuffer(*(v8 + 64));
  result = 1;
  if (a5)
  {
    goto LABEL_107;
  }

  return result;
}

void sub_2655D4F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  PacketCollection::~PacketCollection(&a34);
  PacketCollection::~PacketCollection((v34 - 160));
  _Unwind_Resume(a1);
}

void AlgsDevice::addClient(uint64_t a1, unsigned int a2, uint64_t a3, const PacketCollection *a4)
{
  *(a1 + 8 * a2 + 32) = a3;
  v4 = a1 + 48;
  if (*(a1 + 48 + 4 * a2) | *(a4 + 5))
  {
    v8 = a2;
    v9 = *(a1 + 56);
    v10 = operator new(72, 1);
    v11 = AlgDataExtractor::AlgDataExtractor(v10, *(a4 + 5) - *(v4 + 4 * v8) + *(v9 + 5));
    v12 = 0;
    v13 = 0;
    *(a1 + 56) = v11;
    v14 = a2 ? v9 : a4;
    *(v11 + 7) = *(v14 + 56);
    while (v12 != 8)
    {
      if (4 * v8 == v12)
      {
        v15 = a4;
        v16 = -1;
        v17 = 0;
      }

      else
      {
        v16 = *(v4 + v12);
        v15 = v9;
        v17 = v13;
      }

      PacketCollection::append(*(a1 + 56), v15, v16, v17);
      v13 += *(v4 + v12);
      v12 += 4;
    }

    *(v4 + 4 * v8) = *(a4 + 5);
    if (v9)
    {
      OUTLINED_FUNCTION_17_0();
      v19 = *(v18 + 8);
      OUTLINED_FUNCTION_40();

      __asm { BRAA            X1, X16 }
    }
  }

  OUTLINED_FUNCTION_40();
}

void AlgsDevice::configureStreaming(AlgsDevice::StreamingClient **this, char a2, AlgDataExtractor *a3, void *a4, unint64_t *a5)
{
  AlgsDevice::StreamingClient::configure(this[8], a2, a3);
  if (a4)
  {
    if (a5)
    {
      v8 = *a5;
    }

    AlgsDevice::StreamingClient::setBuffer(this[8], a4);
    if (AlgsDevice::StreamingClient::configureStatus(this[8]))
    {
      v9 = AlgsDevice::StreamingClient::resetBuffer(this[8]);
      if (!a5)
      {
        return;
      }
    }

    else
    {
      v9 = 0;
      if (!a5)
      {
        return;
      }
    }

    *a5 = v9;
  }
}

void AlgsDevice::getClientExtractor()
{
  OUTLINED_FUNCTION_34();
  v1 = v0;
  v3 = v2;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = (v2 + 48);
LABEL_4:
  v8 = v4 + 80 * v6;
  for (i = v5; i < *v7; ++i)
  {
    v10 = *(*(v3 + 56) + 8);
    OUTLINED_FUNCTION_12_0();
    (*(v11 + 16))(v1, v12 + v8);
    v8 += 80;
  }

  do
  {
    v6 += v7[v5++];
    v4 += 80;
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  while (v5 != 2);
  OUTLINED_FUNCTION_33();
}

unint64_t AlgDataNode::sendCallback(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  result = *(a3 + 48) + *(a3 + 32);
  if (result)
  {
    if (result < 0x81)
    {
      v10 = *(a3 + 48);
      MEMORY[0x28223BE20]();
      v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      OUTLINED_FUNCTION_17_0();
      (*(v13 + 16))(a1, v12);
      v14 = OUTLINED_FUNCTION_28();
      result = a2(v14);
    }

    else
    {
      v6 = operator new(result, 1);
      OUTLINED_FUNCTION_17_0();
      (*(v7 + 16))(a1, v6);
      v8 = OUTLINED_FUNCTION_28();
      result = a2(v8);
      if (v6)
      {
        v9 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_0_3();

        JUMPOUT(0x266758DD0);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *AlgDataNode::extractBuffer(uint64_t *this, unsigned __int8 *a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    v4[0] = a2;
    v4[1] = 0;
    v3 = *this;
    v4[2] = this[1];
    v5 = *(this + 4);
    v6 = 0;
    v7 = *(this + 11);
    v8 = 0;
    v9 = ((v2 + 3) & 0xFFFFFFFC) - v7;
    v10 = 0;
    return (*(v3 + 24))(this, AlgDataNode::extractBuffer(unsigned char *)const::$_0::__invoke, v4);
  }

  return this;
}

void *AlgDataNode::extractBuffer(unsigned char *)const::$_0::__invoke(void **a1)
{
  v2 = *a1;
  memcpy(*a1, a1[5], a1[4]);
  v4 = a1[6];
  v3 = a1[7];
  v5 = a1[4] + v2;

  return memcpy(v5, v3, v4);
}

void AlgDataNode::~AlgDataNode(AlgDataNode *this)
{
  OUTLINED_FUNCTION_30(this);
  JUMPOUT(0x266758DE0);
}

{
  OUTLINED_FUNCTION_30(this);
}

void AlgDataNode::AlgDataNode(AlgDataNode *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2876F83C8;
  *(this + 6) = 0;
}

void AlgDataNode::AlgDataNode(AlgDataNode *this, uint64_t a2, char a3)
{
  *this = &unk_2876F83C8;
  *(this + 1) = a2;
  *(this + 20) = a3;
  *(this + 21) = 0;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 11) = 0;
}

uint64_t AlgTaskNode::runPlan(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (a2 && *a2 == 0x2000)
  {
    v4 = *(a2 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *(v3 + 40) = v5;
  *(v3 + 48) = v6;
  v7 = OUTLINED_FUNCTION_11_0(a1);
  return (*(v8 + 48))(v7, v9, v10);
}

uint64_t AlgTaskNode::runPlan(AlgTaskNode *this, AlgDataInjector *a2, AlgDataExtractor *a3)
{
  v5 = *(a2 + 1);
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  AlgWorkNode::runPrologue(this, a3);
  v8 = *(v5 + 40);
  v9 = *(v5 + 48);
  AlgWorkNode::runEpilogue(this, a3);
  return 1;
}

void AlgTaskNode::runTask(AlgTaskNode *this, AlgDataInjector *a2, AlgDataExtractor *a3, unint64_t a4, unsigned int a5, char a6)
{
  OUTLINED_FUNCTION_26();
  v9 = v8;
  AlgWorkNode::runPrologue(v8, v10, v11);
  if ((a6 & 1) == 0)
  {
    (*(*v9 + 64))(v9);
  }

  for (i = 0; i < *(v9 + 23); ++i)
  {
    v13 = *(*(v9 + 10) + 8 * i);
    v14 = *(v6 + 56);
    if (v14)
    {
      v14(*(v6 + 64), v13[9]);
    }

    v15 = *(*v13 + 16);
    OUTLINED_FUNCTION_15_0();
    v16();
  }

  if ((a6 & 1) == 0)
  {
    (*(*v9 + 72))(v9);
  }

  OUTLINED_FUNCTION_15_0();
  AlgWorkNode::runEpilogue(v17, v18, v19);
  OUTLINED_FUNCTION_40();
}

void AlgTaskNode::AlgTaskNode(AlgTaskNode *this, uint64_t a2)
{
  *(this + 2) = 16;
  *(this + 3) = 0;
  *(this + 4) = 16;
  *(this + 5) = 0;
  *(this + 6) = 16;
  *(this + 7) = 0;
  *(this + 8) = 16;
  *(this + 9) = a2;
  *(this + 10) = 0;
  *this = &unk_2876F8410;
  *(this + 1) = 0;
  *(this + 11) = 32;
}

uint64_t *AlgWorkNode::children(AlgWorkNode *this)
{
  if ((atomic_load_explicit(&qword_280017D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280017D20))
  {
    qword_280017D30 = 0;
    qword_280017D28 = 0;
    __cxa_atexit(SAList<std::reference_wrapper<AlgWorkNode>>::~SAList, &qword_280017D28, &dword_2655CA000);
    __cxa_guard_release(&qword_280017D20);
  }

  return &qword_280017D28;
}

uint64_t AlgWorkNode::runStep(AlgWorkNode *this, AlgDataInjector *a2, AlgDataExtractor *a3, unint64_t a4, unsigned int a5, char a6)
{
  OUTLINED_FUNCTION_26();
  v8 = v7;
  AlgWorkNode::runPrologue(v7, v9, v10);
  if (a6)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(*v8 + 32))(v8);
  }

  OUTLINED_FUNCTION_15_0();
  AlgWorkNode::runEpilogue(v12, v13, v14);
  return v11;
}

void AlgWorkNode::runPrologue(AlgWorkNode *this, AlgDataInjector *a2, AlgDataExtractor *a3)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a2 + 13);
  while (v7 != v5)
  {
    v8 = *(a2 + 1) + 80 * *(*(a2 + 5) - 4 * v6 + 4 * v5);
    v9 = *v8 == *(this + 9) && *(v8 + 33) == 1;
    if (v9 && (AlgWorkNode::injectDataIfOnList(*(this + 7), *(this + 17), (*(a2 + 1) + 80 * *(*(a2 + 5) - 4 * v6 + 4 * v5))) || AlgWorkNode::injectDataIfOnList(*(this + 1), *(this + 5), v8) || AlgWorkNode::injectDataIfOnList(*(this + 3), *(this + 9), v8)))
    {
      *(*(a2 + 3) + 2 * *(*(a2 + 5) - 4 * v6 + 4 * v5)) = 1;
      PacketCollection::popIterableAt(a2, v5 - v6++);
    }

    ++v5;
  }

  OUTLINED_FUNCTION_19();

  AlgWorkNode::runPrologue(v10, v11);
}

void AlgWorkNode::runEpilogue(AlgWorkNode *this, AlgDataInjector *a2, AlgDataExtractor *a3)
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_26();
  v10 = v9;
  OUTLINED_FUNCTION_1_2(v11, v9);
  while (v6 != v4)
  {
    v12 = *(v10 + 8) + *(*(v10 + 40) - 4 * v5 + 4 * v4) * v7;
    if (*v12 == *(v3 + 72) && *(v12 + 33) == 2 && AlgWorkNode::injectDataIfOnList(*(v3 + 40), *(v3 + 52), v12))
    {
      *(*(v10 + 24) + 2 * *(*(v10 + 40) - 4 * v5 + 4 * v4)) = v8;
      PacketCollection::popIterableAt(v10, v4 - v5++);
    }

    ++v4;
  }

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_33();

  AlgWorkNode::runEpilogue(v14, v15);
}

void AlgWorkNode::runEpilogue(AlgWorkNode *this, AlgDataExtractor *a2)
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_1_2(v8, v9);
  while (v6 != v4)
  {
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_22(v10);
    v12 = v12 && v11 == 2;
    if (v12)
    {
      v13 = *(v3 + 40);
      v14 = *(v3 + 52);
      OUTLINED_FUNCTION_18_0();
      if (AlgWorkNode::extractDataIfOnList(v15, v16, v17, v18, v19) || (v20 = *(v3 + 24), v21 = *(v3 + 36), OUTLINED_FUNCTION_18_0(), AlgWorkNode::extractDataIfOnList(v22, v23, v24, v25, v26)))
      {
        OUTLINED_FUNCTION_16_0();
        *(*(v2 + 24) + 2 * v27) = v7;
        PacketCollection::popIterableAt(v2, v28);
        ++v5;
      }
    }

    ++v4;
  }

  OUTLINED_FUNCTION_33();
}

BOOL AlgWorkNode::extractDataIfOnList(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4, int a5)
{
  v5 = 0;
  v6 = a2;
  do
  {
    if (a2 == v5)
    {
      v7 = a2;
      return v7 < v6;
    }

    v7 = v5;
    v8 = *(a1 + 8 * v5++);
  }

  while (*(v8 + 8) != a3[1]);
  *(a3 + 4) = *(v8 + 16);
  v9 = (*(v8 + 24) + 3) & 0xFFFFFFFC;
  a3[3] = v9;
  a3[5] = a4;
  *(a3 + 12) = a5;
  if (a3[8])
  {
    v13 = a3[9];
    v14 = *a3;
    v15 = *(a3 + 33);
    v16 = v9 - *(v8 + 22);
    OUTLINED_FUNCTION_12_0();
    (*(v10 + 24))(v8);
  }

  else
  {
    if (!a3[7])
    {
      a3[7] = operator new(v9, 1);
    }

    OUTLINED_FUNCTION_12_0();
    (*(v11 + 16))(v8);
  }

  return v7 < v6;
}

BOOL AlgWorkNode::injectDataIfOnList(uint64_t a1, unsigned int a2, void *a3)
{
  v4 = 0;
  v5 = a2;
  do
  {
    if (a2 == v4)
    {
      v6 = a2;
      return v6 < v5;
    }

    v6 = v4;
    v7 = *(a1 + 8 * v4++);
  }

  while (*(v7 + 8) != a3[1]);
  v8 = a3[7];
  v9 = v8 & 3;
  if ((v8 & 3) != 0)
  {
    v8 = operator new(a3[3], 1);
    memcpy(v8, a3[7], a3[3]);
  }

  v10 = a3[3];
  OUTLINED_FUNCTION_20();
  (*(v11 + 32))(v7, v8);
  *(v7 + 21) = 1;
  if (v9 && v8)
  {
    OUTLINED_FUNCTION_0_3();
    MEMORY[0x266758DD0](v8);
  }

  return v6 < v5;
}

void AlgWorkNode::runPrologue(AlgWorkNode *this, AlgDataExtractor *a2)
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_1_2(v8, v9);
  while (v6 != v4)
  {
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_22(v10);
    v12 = v12 && v11 == 1;
    if (v12)
    {
      v13 = *(v3 + 56);
      v14 = *(v3 + 68);
      OUTLINED_FUNCTION_18_0();
      if (AlgWorkNode::extractDataIfOnList(v15, v16, v17, v18, v19) || (v20 = *(v3 + 8), v21 = *(v3 + 20), OUTLINED_FUNCTION_18_0(), AlgWorkNode::extractDataIfOnList(v22, v23, v24, v25, v26)))
      {
        OUTLINED_FUNCTION_16_0();
        *(*(v2 + 24) + 2 * v27) = v7;
        PacketCollection::popIterableAt(v2, v28);
        ++v5;
      }
    }

    ++v4;
  }

  OUTLINED_FUNCTION_33();
}

void AlgWorkNode::AlgWorkNode(AlgWorkNode *this, uint64_t a2)
{
  *this = &unk_2876F8488;
  *(this + 1) = 0;
  *(this + 2) = 16;
  *(this + 3) = 0;
  *(this + 4) = 16;
  *(this + 5) = 0;
  *(this + 6) = 16;
  *(this + 7) = 0;
  *(this + 8) = 16;
  *(this + 9) = a2;
}

uint64_t AlgWorkNode::getDataNodeInfo(uint64_t a1, char a2, uint64_t a3)
{
  v8 = 0;
  v5 = *(a1 + 8);
  v3 = (*(a1 + 24) + 3) & 0xFFFFFFFC;
  v6 = *(a1 + 16);
  v7 = v3;
  LOBYTE(v8) = a2;
  return AlgsDevice::StreamingClient::writeTreeInfo(void)::$_0::__invoke(a3, &v5);
}

uint64_t AlgWorkNode::getTreeInfo(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 36) + *(a1 + 20) + *(a1 + 52) + *(a1 + 68);
  OUTLINED_FUNCTION_20();
  v7 = v5 + *((*(v6 + 24))(a1) + 12);
  v8 = *(a1 + 72);
  v30 = 0;
  v29 = v8;
  v31 = 0;
  BYTE1(v31) = v7;
  result = AlgsDevice::StreamingClient::writeTreeInfo(void)::$_0::__invoke(a2, &v29);
  if (result)
  {
LABEL_3:
    v10 = 0;
    while (v10 < *(a1 + 20))
    {
      DataNodeInfo = AlgWorkNode::getDataNodeInfo(*(*(a1 + 8) + 8 * v10++), 2, a2);
      if ((DataNodeInfo & 1) == 0)
      {
        return 0;
      }
    }

    v12 = 0;
    while (v12 < *(a1 + 36))
    {
      v13 = AlgWorkNode::getDataNodeInfo(*(*(a1 + 24) + 8 * v12++), 4, a2);
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    v14 = 0;
    while (v14 < *(a1 + 52))
    {
      v15 = AlgWorkNode::getDataNodeInfo(*(*(a1 + 40) + 8 * v14++), 3, a2);
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    v16 = 0;
    while (v16 < *(a1 + 68))
    {
      v17 = AlgWorkNode::getDataNodeInfo(*(*(a1 + 56) + 8 * v16++), 5, a2);
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    v18 = 0;
    do
    {
      OUTLINED_FUNCTION_20();
      v20 = *((*(v19 + 24))(a1) + 12);
      result = v18 >= v20;
      if (v18 >= v20)
      {
        break;
      }

      OUTLINED_FUNCTION_20();
      v22 = *(*(*(v21 + 24))(a1) + 8 * v18);
      v23 = v22[36] + v22[20] + v22[52] + v22[68];
      OUTLINED_FUNCTION_17_0();
      v25 = v23 + *((*(v24 + 24))(v22) + 12);
      OUTLINED_FUNCTION_20();
      v27 = *(*(*(v26 + 24))(a1) + 8 * v18);
      v30 = 0;
      v31 = 1;
      v29 = *(v27 + 72);
      BYTE1(v31) = v25;
      result = AlgsDevice::StreamingClient::writeTreeInfo(void)::$_0::__invoke(a2, &v29);
      if (!result)
      {
        break;
      }

      TreeInfo = AlgWorkNode::getTreeInfo(v22, a2, 0);
      result = 0;
      ++v18;
    }

    while ((TreeInfo & 1) != 0);
  }

  return result;
}

uint64_t AlgWorkNode::getTreeSize(AlgWorkNode *this)
{
  v2 = 0;
  for (i = *(this + 10) + *(this + 18) + *(this + 26) + *(this + 34) + 1; ; i += AlgWorkNode::getTreeSize(*(*v6 + 8 * v2++)))
  {
    OUTLINED_FUNCTION_12_0();
    if (v2 >= *((*(v4 + 24))(this) + 12))
    {
      break;
    }

    OUTLINED_FUNCTION_12_0();
    v6 = (*(v5 + 24))(this);
  }

  return i;
}

uint64_t *AlgWorkNode::resetInjectionStateOnList(uint64_t *result, unsigned int a2)
{
  v2 = a2;
  if (a2)
  {
    do
    {
      v3 = *result++;
      *(v3 + 21) = 0;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t AlgWorkNode::resetInjectionState(AlgWorkNode *this)
{
  AlgWorkNode::resetInjectionStateOnList(*(this + 7), *(this + 17));
  AlgWorkNode::resetInjectionStateOnList(*(this + 1), *(this + 5));
  AlgWorkNode::resetInjectionStateOnList(*(this + 3), *(this + 9));
  AlgWorkNode::resetInjectionStateOnList(*(this + 5), *(this + 13));
  for (i = 0; ; ++i)
  {
    OUTLINED_FUNCTION_12_0();
    result = (*(v3 + 24))(this);
    if (i >= *(result + 12))
    {
      break;
    }

    OUTLINED_FUNCTION_12_0();
    v6 = (*(v5 + 24))(this);
    AlgWorkNode::resetInjectionState(*(*v6 + 8 * i));
  }

  return result;
}

void StreamingPacketCache::~StreamingPacketCache(StreamingPacketCache *this)
{
  if (*(this + 1))
  {
    OUTLINED_FUNCTION_38();
  }
}

uint64_t StreamingParser::StreamingParser(uint64_t result, uint64_t a2, uint64_t a3, char *a4)
{
  *result = a4;
  if (a4)
  {
    v4 = *a4;
    v5 = *(a4 + 1);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = v4;
  *(result + 48) = v5;
  return result;
}

void SABinaryParser::parseInfoData(uint64_t *a1, unsigned int (*a2)(uint64_t, void, void, void, void), uint64_t (*a3)(uint64_t, const char *), unsigned int (*a4)(uint64_t, BOOL), uint64_t (*a5)(void))
{
  v5 = a1[2];
  if ((a1[1] - v5) >= 7)
  {
    v10 = *a1;
    a1[2] = v5 + 7;
    if (!a2 || a2(a1[3], *(v10 + v5), *(v10 + v5 + 1), *(v10 + v5 + 5), *(v10 + v5 + 6)))
    {
      while (1)
      {
        v11 = a1[1];
        v12 = a1[2];
        if (v11 == v12)
        {
          break;
        }

        v13 = *a1;
        v14 = (*a1 + v12);
        v15 = *v14;
        v16 = v12 + 1;
        a1[2] = v12 + 1;
        if (!v15)
        {
          if (v11 == v16)
          {
            return;
          }

          v20 = v12 + 2;
          a1[2] = v20;
          if (a4)
          {
            if (!a4(a1[3], *(v13 + v16) != 0))
            {
              return;
            }

            v11 = a1[1];
            v20 = a1[2];
          }

          if (v11 != v20)
          {
            OUTLINED_FUNCTION_21();

            SABinaryParser::parseInjExtData(v21, v22, v23, a5);
          }

          return;
        }

        v17 = *v14;
        if (v11 - v16 >= v17)
        {
          a1[2] = v16 + v17;
          v19 = *v14;
          v18 = (v14 + 1);
          if (strnlen(v18, v19) != v19 && (!a3 || (a3(a1[3], v18) & 1) != 0))
          {
            continue;
          }
        }

        return;
      }
    }
  }
}

void SABinaryParser::parseInjExtData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_37();
  v8 = v7;
  while (1)
  {
    v9 = *(v8 + 8);
    v10 = *(v8 + 16);
    v11 = v9 - v10;
    if (v9 <= v10)
    {
      break;
    }

    v12 = (*v8 + v10);
    v13 = *v12;
    if (v13 < 0)
    {
      v17 = *(v8 + 40);
      if (!v17)
      {
        break;
      }

      v18 = v13 & 0x7F;
      if (v18 >= *(v8 + 32))
      {
        break;
      }

      v19 = (v17 + 24 * v18);
      v20 = *v19;
      LODWORD(v21) = *(v19 + 5);
      v21 = (v20 & 0x40) != 0 ? v21 : *(v19 + 5);
      if (v11 <= v21)
      {
        break;
      }

      *(v8 + 16) = v10 + v21 + 1;
      if ((v20 & 0xFFFFFFBF) == 1)
      {
        if (v5)
        {
          v22 = *(v8 + 24);
          v23 = (v12 + 1);
          v12 = v19;
LABEL_33:
          if ((v5(v22, v12, v23) & 1) == 0)
          {
            break;
          }
        }
      }

      else if (v4)
      {
        v27 = *(v8 + 24);
        v28 = (v12 + 1);
        v12 = v19;
LABEL_37:
        if ((v4(v27, v12, v28) & 1) == 0)
        {
          break;
        }
      }
    }

    else
    {
      if (v11 < 0x12)
      {
        break;
      }

      v14 = *v12;
      *(v8 + 16) = v10 + 18;
      v15 = v14 & 0x3F;
      if (v14 >= 0x40)
      {
        v16 = 24;
      }

      else
      {
        v16 = 22;
      }

      if (v15 == 3)
      {
        if (a4 && (a4(*(v8 + 24)) & 1) == 0)
        {
          break;
        }
      }

      else
      {
        v24 = v9 - (v10 + 18);
        if (v14 >= 0x40)
        {
          if (v24 < 6)
          {
            break;
          }

          v25 = v10 + 24;
          *(v8 + 16) = v10 + 24;
          v26 = *(v12 + 5);
        }

        else
        {
          if (v24 < 4)
          {
            break;
          }

          v25 = v10 + 22;
          *(v8 + 16) = v10 + 22;
          v26 = *(v12 + 10);
        }

        if (v9 - v25 < v26)
        {
          break;
        }

        *(v8 + 16) = v25 + v26;
        if (v15 == 2)
        {
          if (v4)
          {
            v27 = *(v8 + 24);
            v28 = &v12[v16];
            goto LABEL_37;
          }
        }

        else
        {
          if (v15 != 1)
          {
            break;
          }

          if (v5)
          {
            v22 = *(v8 + 24);
            v23 = &v12[v16];
            goto LABEL_33;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_40();
}

uint64_t StreamingParser::parseReset(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_0::__invoke(uint64_t a1, char a2, int a3, char a4, char a5)
{
  if (*a1)
  {
    **a1 = a2;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *v5 = a3;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    *v6 = a4;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *v7 = a5;
  }

  return 1;
}

uint64_t StreamingParser::addPoint(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 17);
  if (!v2)
  {
    return 0;
  }

  v7 = *(a2 + 1);
  v8 = 0;
  v9 = 0;
  v10 = 2;
  v11 = v2;
  OUTLINED_FUNCTION_24();
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v4 = OUTLINED_FUNCTION_11_0(v3);
  return (*(v5 + 16))(v4, &v7);
}

void StreamingParser::parseRun(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  *(a1 + 32) = v7;
  if (a2)
  {
    v4 = StreamingParser::parseRun(InjectionInfo *,AlgDataInjector *,AlgDataExtractor *)::$_0::__invoke;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = StreamingParser::parseRun(InjectionInfo *,AlgDataInjector *,AlgDataExtractor *)::$_1::__invoke;
  }

  else
  {
    v5 = 0;
  }

  if (a4)
  {
    v6 = StreamingParser::parseRun(InjectionInfo *,AlgDataInjector *,AlgDataExtractor *)::$_2::__invoke;
  }

  else
  {
    v6 = 0;
  }

  SABinaryParser::parseRunFrame((a1 + 8), v4, v5, v6);
}

void SABinaryParser::parseRunFrame(void *a1, unsigned int (*a2)(void), uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = a1[2];
  if ((v4 - v5) >= 2)
  {
    a1[2] = v5 + 2;
    if ((v4 - (v5 + 2)) >= 4)
    {
      v8 = *a1 + v5 + 2;
      v9 = v5 + 6;
      a1[2] = v9;
      v10 = *(v8 + 2);
      if (v4 - v9 >= v10)
      {
        a1[2] = v9 + v10;
        if (!a2 || a2(a1[3]))
        {

          SABinaryParser::parseInjExtData(a1, a3, a4, 0);
        }
      }
    }
  }
}

uint64_t StreamingParser::addPacket(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 18);
  v6 = *(a2 + 17);
  if ((*a2 & 0x40) != 0)
  {
    v7 = *(a2 + 20);
  }

  else
  {
    v7 = *(a2 + 20);
  }

  v13 = *(a2 + 1);
  v14 = v5;
  v15 = v7;
  v16 = a3;
  v17 = v6;
  OUTLINED_FUNCTION_24();
  v19 = 0;
  v20 = 0;
  v18 = v8;
  v10 = OUTLINED_FUNCTION_11_0(v9);
  result = (*(v11 + 16))(v10, &v13);
  if (a3 == 2)
  {
    if (result)
    {
      *(*(a1 + 24) + 2 * *(a1 + 20) - 2) = 1;
    }
  }

  return result;
}

uint64_t StreamingParser::parseRun(InjectionInfo *,AlgDataInjector *,AlgDataExtractor *)::$_0::__invoke(uint64_t *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  *v2 = *a2;
  *(v2 + 8) = a2[1];
  *(v2 + 16) = a2 + 2;
  return 1;
}

void SABinaryParser::parseInjExtFrame(uint64_t *a1, unsigned int (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a1[1];
  v5 = a1[2];
  if ((v6 - v5) >= 2)
  {
    a1[2] = v5 + 2;
    if ((v6 - (v5 + 2)) >= 8)
    {
      v8 = *a1;
      a1[2] = v5 + 10;
      if (!a2 || a2(a1[3], *(v8 + v5 + 2)))
      {
        OUTLINED_FUNCTION_19();

        SABinaryParser::parseInjExtData(v9, v10, v11, a5);
      }
    }
  }
}

void StreamingParser::numberOfPackets(StreamingParser *this, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 24);
  v31 = *(this + 8);
  v32 = v8;
  v33 = *(this + 40);
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v28 = a2;
  v29 = a3;
  v30 = a4;
  *(&v32 + 1) = &v28;
  if (*(&v31 + 1) >= 2uLL && *v31 == 1)
  {
    switch(*(v31 + 1))
    {
      case 2:
        OUTLINED_FUNCTION_3_0();
        SABinaryParser::parseRunFrame(&v31, 0, v9, v10);
        break;
      case 3:
        OUTLINED_FUNCTION_3_0();
        v19 = OUTLINED_FUNCTION_6_0(v11, v12, v13, v14, v15, v16, v17, v18, v27, v28, v29, v30, v31);
        SABinaryParser::parseInjExtFrame(v19, v20, v21, v22, v23);
        break;
      case 5:
        SABinaryParser::parseConfigure(&v31, 0, StreamingParser::numberOfPackets(unsigned long *,unsigned long *,unsigned long *)const::$_2::__invoke, 0);
        break;
      case 6:
        v24 = OUTLINED_FUNCTION_6_0(0, a2, a3, a4, a5, a6, a7, a8, v27, v28, v29, v30, v31);
        SABinaryParser::parseInfo(v24, v25, 0, 0, v26);
        break;
      default:
        return;
    }
  }
}

void SABinaryParser::parseConfigure(uint64_t *a1, unsigned int (*a2)(uint64_t, BOOL), uint64_t (*a3)(void), unsigned int (*a4)(uint64_t, uint64_t))
{
  v5 = a1[1];
  v4 = a1[2];
  if ((v5 - v4) < 2)
  {
    return;
  }

  a1[2] = v4 + 2;
  if (v5 == v4 + 2)
  {
    return;
  }

  v9 = *a1;
  v10 = (*a1 + v4 + 2);
  v11 = v4 + 3;
  a1[2] = v4 + 3;
  v12 = *v10;
  v13 = v10;
  if (v12 < 2)
  {
    goto LABEL_9;
  }

  if (v5 != v11)
  {
    v13 = (v9 + v11);
    a1[2] = v4 + 4;
LABEL_9:
    if (a2 && v13 && !a2(a1[3], *v13 != 0))
    {
      return;
    }

    goto LABEL_12;
  }

  if (v12 != 3)
  {
    return;
  }

LABEL_12:
  if (!a4 || (*v10 <= 2u ? (v14 = 2) : (v14 = *v10), a4(a1[3], v14)))
  {
    OUTLINED_FUNCTION_21();

    SABinaryParser::parseInjExtData(v15, v16, v17, a3);
  }
}

void SABinaryParser::parseInfo(uint64_t *a1, unsigned int (*a2)(uint64_t, void, void, void, void), uint64_t (*a3)(uint64_t, const char *), unsigned int (*a4)(uint64_t, BOOL), uint64_t (*a5)(void))
{
  v5 = a1[1];
  v6 = a1[2];
  if ((v5 - v6) >= 2)
  {
    v7 = v6 + 2;
    a1[2] = v7;
    if (v5 != v7)
    {
      SABinaryParser::parseInfoData(a1, a2, a3, a4, a5);
    }
  }
}

uint64_t StreamingParser::numberOfPackets(unsigned long *,unsigned long *,unsigned long *)const::$_2::__invoke(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    ++*v1;
  }

  return 1;
}

uint64_t StreamingParser::numberOfPackets(unsigned long *,unsigned long *,unsigned long *)const::$_1::__invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    ++*v1;
  }

  return 1;
}

uint64_t StreamingParser::numberOfPackets(unsigned long *,unsigned long *,unsigned long *)const::$_0::__invoke(void **a1)
{
  if (*a1)
  {
    ++**a1;
  }

  return 1;
}

uint64_t StreamingParser::parseInfo(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_0::__invoke(uint64_t a1, char a2, int a3, char a4, char a5)
{
  if (*a1)
  {
    **a1 = a2;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *v5 = a3;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    *v6 = a4;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *v7 = a5;
  }

  return 1;
}

uint64_t StreamingParser::parseConfigureTranslation(unsigned int *,AlgDataExtractor *,AlgDataExtractor *)::$_1::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = StreamingParser::addPoint(v5, a2);
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    return v6 & StreamingParser::addPoint(v7, a3);
  }

  return v6;
}

uint64_t StreamingParser::parsePacketCache(unsigned char &,StreamingPacketCache &)::$_0::__invoke(uint64_t a1, char a2, unsigned int a3, const void *a4)
{
  **a1 = a2;
  v6 = *(a1 + 8);
  if (*(v6 + 1))
  {
    OUTLINED_FUNCTION_38();
  }

  *v6 = a3;
  v7 = operator new(24 * a3, v6[16]);
  *(v6 + 1) = v7;
  memcpy(v7, a4, 24 * *v6);
  return 1;
}

uint64_t SABinaryWriter::updateCacheSizes(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = (a2 + 20);
  if (result)
  {
    do
    {
      *v3 = (*v3 + 3) & 0xFFFC;
      v3 += 12;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t StreamingWriter::StreamingWriter(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  *a1 = a4;
  if (a4)
  {
    v5 = *a4;
    v6 = *(a4 + 1);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 34) = v5;
  *(a1 + 40) = v6;
  SABinaryWriter::updateCacheSizes(v5, v6);
  return a1;
}

uint64_t SABinaryWriter::writeHeader(uint64_t a1, char a2)
{
  if (*(a1 + 24))
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  v5[0] = 1;
  v5[1] = a2;
  return SABinaryWriter::write(a1, v5, 2uLL);
}

uint64_t SABinaryWriter::write(SABinaryWriter *this, const void *a2, size_t __n)
{
  if (*this)
  {
    v5 = *(this + 2);
    if (*(this + 1) - v5 < __n)
    {
      result = 0;
      *(this + 24) = 0;
      return result;
    }

    memcpy((*this + v5), a2, __n);
  }

  *(this + 2) += __n;
  return 1;
}

uint64_t StreamingWriter::writeResetOrInfo(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  *(a1 + 33) = 0;
  if (a2)
  {
    v12 = OUTLINED_FUNCTION_27();
    if ((SABinaryWriter::writeHeader(v12, 1) & 1) == 0)
    {
      return 0;
    }

    v13 = OUTLINED_FUNCTION_29();
    if ((SABinaryWriter::write(v13, v14, 7uLL) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_27();
    if ((SABinaryWriter::writeHeader(v15, 6) & 1) == 0)
    {
      return 0;
    }

    v16 = OUTLINED_FUNCTION_29();
    if (!SABinaryWriter::write(v16, v17, 7uLL))
    {
      return 0;
    }
  }

  v18 = 0;
  while (v18 < *(a7 + 12))
  {
    v19 = *(*a7 + 8 * v18);
    v20 = *(a1 + 32);
    if (v20 == 1)
    {
      if (!v19)
      {
        return 0;
      }
    }

    else
    {
      if (v19)
      {
        v21 = v20 == 6;
      }

      else
      {
        v21 = 0;
      }

      if (!v21)
      {
        return 0;
      }
    }

    if (*v19)
    {
      v22 = *(a1 + 16) + ~*(a1 + 24);
      v23 = strnlen(*(*a7 + 8 * v18), v22);
      if (v23 != v22)
      {
        v24 = v23 + 1;
        if (v23 + 1 <= 0xFF)
        {
          v25 = OUTLINED_FUNCTION_29();
          if (SABinaryWriter::write(v25, v26, 1uLL))
          {
            ++v18;
            if (SABinaryWriter::write((a1 + 8), v19, v24))
            {
              continue;
            }
          }
        }
      }
    }

    return 0;
  }

  v27 = *(a1 + 32);
  if (v27 != 6 && v27 != 1)
  {
    return 0;
  }

  if (*(a1 + 33))
  {
    return 0;
  }

  *(a1 + 33) = 1;
  v32 = a8;
  v29 = OUTLINED_FUNCTION_29();
  if ((SABinaryWriter::write(v29, v30, 1uLL) & 1) == 0 || !SABinaryWriter::write((a1 + 8), &v32, 1uLL))
  {
    return 0;
  }

  return StreamingWriter::writeExtPoints(a1, a9);
}

uint64_t StreamingWriter::writeExtPoints(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 1;
  if (a2)
  {
    v5 = 0;
    v6 = -1;
    while (++v6 < *(a2 + 20))
    {
      v7 = (*(a2 + 8) + v5);
      v8 = *v7;
      v9 = *(v7 + 33);
      v10 = a1[32];
      v11 = v10 == 3 || v10 == 5;
      if (v11 || a1[33] == 1)
      {
        v5 += 80;
        v14 = 3;
        v15 = v8;
        v12 = v9 == 1 ? 1 : 2;
        v16 = v12;
        if (SABinaryWriter::write((a1 + 8), &v14, 0x12uLL))
        {
          continue;
        }
      }

      return 0;
    }

    return 1;
  }

  return v2;
}

uint64_t StreamingWriter::writeInjExtData(StreamingWriter *this, int a2, PacketCollection *a3, int a4)
{
  if (!a3)
  {
    return 1;
  }

  for (i = 0; ; ++i)
  {
    v9 = *(a3 + 5);
    result = i >= v9;
    if (i >= v9)
    {
      break;
    }

    v11 = *(a3 + 1) + 80 * i;
    if (a4)
    {
      v12 = *this;
      if (*this)
      {
        v13 = *(v12 + 1);
        if (v13)
        {
          v14 = 0;
          v15 = *v12;
          v16 = *(v11 + 24);
          v17 = v16 + 3;
          v18 = v13 + 17;
          while (v15 != v14)
          {
            v19 = *(v18 - 17);
            v20 = *(v18 + 3);
            if ((v19 & 0x40) == 0)
            {
              v20 = *(v18 + 3);
            }

            if (*(v18 - 16) == *v11 && *(v18 - 8) == *(v11 + 8))
            {
              v21 = ((v19 & 0xFFFFFFBF) != 1) ^ a2;
              if ((*v18 == 1) != (*(v11 + 33) != 1) && v21 != 0)
              {
                v23 = v17 ^ (v20 + 3);
                if (*(v11 + 16) == *(v18 + 1) && v23 < 4)
                {
                  if ((*(this + 32) & 0xFE) == 2)
                  {
                    v25 = *(this + 5);
                    if (v25)
                    {
                      v26 = v14;
                      if (*(this + 34) > v14)
                      {
                        v27 = v25 + 24 * v14;
                        v28 = (*v27 & 0x40) != 0 ? *(v27 + 20) : *(v27 + 20);
                        if ((v17 & 0xFFFFFFFC) == v28)
                        {
                          v29 = *(v11 + 56);
                          v33 = v26 | 0x80;
                          result = SABinaryWriter::write((this + 8), &v33, 1uLL);
                          if (result)
                          {
                            if (v29)
                            {
                              result = SABinaryWriter::write((this + 8), v29, v16);
                              if (result)
                              {
                                v30 = OUTLINED_FUNCTION_29();
                                return SABinaryWriter::write(v30, v31, v32);
                              }
                            }

                            else
                            {
                              return 1;
                            }
                          }

                          return result;
                        }
                      }
                    }
                  }

                  return 0;
                }
              }
            }

            ++v14;
            v18 += 24;
          }
        }
      }
    }

    if ((SABinaryWriter::addInjExtData((this + 8), a2, *v11, *(v11 + 8), *(v11 + 33) == 1, *(v11 + 16), *(v11 + 24), *(v11 + 56)) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SABinaryWriter::addInjExtData(SABinaryWriter *this, int a2, uint64_t a3, uint64_t a4, int a5, __int16 a6, unsigned int a7, const void *a8)
{
  if ((*(this + 24) & 0xFE) != 2)
  {
    return 0;
  }

  v21 = v8;
  v22 = v9;
  if (a2)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v17 = v14;
  v18 = a3;
  v19 = a4;
  if (a5)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v20 = v15;
  if (a7 >= 0x10000)
  {
    v17 = v14 | 0x40;
  }

  result = SABinaryWriter::write(this, &v17, 0x12uLL);
  if (result)
  {
    return SABinaryWriter::writeData(this, a6, a7, a8);
  }

  return result;
}

uint64_t SABinaryWriter::writeData(SABinaryWriter *this, __int16 a2, unsigned int a3, const void *a4)
{
  v12 = 0;
  if (a3 < 0x10000)
  {
    v9[0] = a2;
    v7 = (a3 + 3) & 0xFFFC;
    v9[1] = (a3 + 3) & 0xFFFC;
    result = SABinaryWriter::write(this, v9, 4uLL);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = a2;
    v7 = (a3 + 3) & 0xFFFFFFFC;
    v11 = v7;
    if ((SABinaryWriter::write(this, &v10, 6uLL) & 1) == 0)
    {
      return 0;
    }
  }

  if (!a4)
  {
    return 1;
  }

  result = SABinaryWriter::write(this, a4, a3);
  if (result)
  {
    return SABinaryWriter::write(this, &v12, v7 - a3);
  }

  return result;
}

uint64_t StreamingWriter::writeInjext(StreamingWriter *this, uint64_t a2, AlgDataInjector *a3, AlgDataExtractor *a4, AlgDataExtractor *a5, int a6)
{
  v12 = a2;
  if ((SABinaryWriter::writeHeader(this + 8, 3) & 1) == 0 || !SABinaryWriter::write((this + 8), &v12, 8uLL) || !StreamingWriter::writeInjExtData(this, 1, a3, a6) || !StreamingWriter::writeInjExtData(this, 0, a4, a6))
  {
    return 0;
  }

  return StreamingWriter::writeExtPoints(this, a5);
}

uint64_t StreamingWriter::writeConfigure(StreamingWriter *this, char a2, uint64_t a3, AlgDataExtractor *a4)
{
  v9 = 3;
  if ((SABinaryWriter::writeHeader(this + 8, 5) & 1) == 0)
  {
    return 0;
  }

  if (!SABinaryWriter::write((this + 8), &v9, 1uLL))
  {
    return 0;
  }

  v8 = a2;
  if (!SABinaryWriter::write((this + 8), &v8, 1uLL))
  {
    return 0;
  }

  return StreamingWriter::writeExtPoints(this, a3);
}

uint64_t PacketCollection::reset(PacketCollection *this)
{
  v1 = 0;
  for (i = 0; ; ++i)
  {
    v3 = *(this + 5);
    if (i >= v3)
    {
      break;
    }

    v4 = *(this + 1) + v1;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 48) = 0;
    *(v4 + 56) = 0;
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    v1 += 80;
  }

    ;
  }

  for (k = v3 - 1; k != -1; --k)
  {
    *(this + 5) = k;
  }

  return SAList<unsigned int>::clear(this + 40);
}

uint64_t SAList<unsigned int>::clear(uint64_t result)
{
    ;
  }

  return result;
}

uint64_t PacketCollection::add(PacketCollection *this, const AlgDataPacket *a2)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    while (80 * *(this + 5) != v3)
    {
      v5 = *(this + 1);
      if (*a2 == *(v5 + v3))
      {
        v6 = v5 + v3;
        if (*(a2 + 1) == *(v6 + 8) && *(a2 + 33) == *(v6 + 33))
        {
          return 0;
        }
      }

      v3 += 80;
    }
  }

  SAList<AlgDataPacket>::push_back(this + 8);
  SAList<PacketBookkeeper>::push_back(this + 24);
  v8 = *(this + 5) - 1;
  SAList<unsigned int>::push_back(this + 40);
  return 1;
}

void SAList<AlgDataPacket>::push_back(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_5_0(a1);
  if (!v3)
  {
    v3 = operator new(80 * *(v1 + 8), 0);
    *v1 = v3;
  }

  memcpy((v3 + 80 * *(v1 + 12)), v2, 0x50uLL);
  OUTLINED_FUNCTION_4_0();
}

void SAList<PacketBookkeeper>::push_back(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_5_0(a1);
  if (!v3)
  {
    v3 = operator new(2 * *(v1 + 8), 0);
    *v1 = v3;
  }

  *(v3 + 2 * *(v1 + 12)) = *v2;
  OUTLINED_FUNCTION_4_0();
}

void SAList<unsigned int>::push_back(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_5_0(a1);
  if (!v3)
  {
    v3 = operator new(4 * *(v1 + 8), 0);
    *v1 = v3;
  }

  *(v3 + 4 * *(v1 + 12)) = *v2;
  OUTLINED_FUNCTION_4_0();
}

void AlgDataInjector::~AlgDataInjector(AlgDataInjector *this)
{
  PacketCollection::~PacketCollection(this);
  OUTLINED_FUNCTION_36();

  JUMPOUT(0x266758DE0);
}

uint64_t AlgDataExtractor::reset(AlgDataExtractor *this)
{
  v2 = 0;
  v3 = 1;
  v4 = 56;
  while (v2 < *(this + 9))
  {
    if ((*(*(this + 3) + v3) & 1) == 0)
    {
      v5 = *(*(this + 1) + v4);
      if (v5)
      {
        MEMORY[0x266758DD0](v5, 0x1000C8077774924);
      }
    }

    ++v2;
    v3 += 2;
    v4 += 80;
  }

  return PacketCollection::reset(this);
}

void AlgDataExtractor::~AlgDataExtractor(AlgDataExtractor *this)
{
  PacketCollection::~PacketCollection(this);
  OUTLINED_FUNCTION_36();

  JUMPOUT(0x266758DE0);
}

uint64_t AlgDataPacket::AlgDataPacket(uint64_t result, uint64_t a2, uint64_t a3, int a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a8;
  *(result + 32) = a5;
  *(result + 33) = a6;
  *(result + 34) = 0;
  *(result + 40) = a9;
  *(result + 48) = a10;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = a7;
  return result;
}

uint64_t PacketCollection::PacketCollection(uint64_t result, int a2)
{
  *result = &unk_2876F85A0;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 36) = 0;
  *(result + 40) = 0;
  *(result + 48) = a2;
  *(result + 52) = 0;
  return result;
}

{
  return PacketCollection::PacketCollection(result, a2);
}

void PacketCollection::append(PacketCollection *this, const PacketCollection *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = *(a2 + 5);
  if (a3 != -1)
  {
    v7 = a3;
  }

  v8 = v7 + a4;
  v9 = 80 * a4;
  while (v4 < v8)
  {
    v10 = *(a2 + 1);
    SAList<AlgDataPacket>::push_back(this + 8);
    SAList<PacketBookkeeper>::push_back(this + 24);
    v11 = *(this + 5) - 1;
    SAList<unsigned int>::push_back(this + 40);
    ++v4;
    v9 += 80;
  }
}

_DWORD *PacketCollection::popIterableAt(_DWORD *this, uint64_t a2)
{
  v2 = this[13];
  v3 = (v2 - 1);
  if (v3 == a2)
  {
    if (v2)
    {
      this[13] = v3;
    }
  }

  else
  {
    this[13] = v3;
    return memmove((*(this + 5) + 4 * a2), (*(this + 5) + 4 * a2 + 4), 4 * (v3 - a2));
  }

  return this;
}

uint64_t PacketCollection::getFor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = 0;
  v5 = 0;
  v6 = *(a1 + 20);
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v7 = *(a1 + 8);
    v8 = *(v7 + v4) == a2 && *(v7 + v4 + 8) == a3;
    if (v8 && *(v7 + v4 + 33) == a4)
    {
      break;
    }

    ++v5;
    v4 += 80;
  }

  if (v6 <= v5)
  {
    return 0;
  }

  v10 = v5;
  v11 = v7 + 80 * v5;
  v12 = *(v11 + 32);
  v13 = v12 == 2 ? *(*(a1 + 24) + 2 * v10) : 0;
  if (v12 != 1 && (v13 & 1) == 0)
  {
    return 0;
  }

  *(*(a1 + 24) + 2 * v10 + 1) = 1;
  return v11;
}

uint64_t AlgDataExtractor::callbackFor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v10[0] = a2;
  v10[1] = a3;
  v11 = 0;
  v12 = 0;
  v13 = 2;
  v14 = a4;
  OUTLINED_FUNCTION_24();
  v15 = 0;
  v16 = v4;
  v17 = v5;
  v7 = OUTLINED_FUNCTION_11_0(v6);
  return (*(v8 + 16))(v7, v10);
}

void AlgsDevice::StreamingClient::finish(AlgsDevice::StreamingClient *this)
{
  if (*(this + 10) && *(*(this + 4) + 96))
  {
    AlgsDevice::StreamingClient::saveTimestamp(this, 0x652B2D24D46);
    *(*(this + 1) + 5) = *(this + 20);
    v2 = SABinaryWriter::addExtractionData((this + 48), 0x3779B8717A8905ELL, 0xC0246BF06F597652, 0, 39424, *(this + 8), *(this + 1));
    if (v2)
    {
      *(this + 97) = 1;
    }

    else
    {
      SABinaryWriter::updateCacheSizes(v2, 0);
      OUTLINED_FUNCTION_2_1();
    }
  }

  if ((*(this + 97) & 1) == 0 && !*(this + 11))
  {
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_2_1();
  }

  *(this + 97) = 0;
}

uint64_t AlgsDevice::StreamingClient::saveTimestamp(uint64_t this, uint64_t a2)
{
  v2 = *(this + 24);
  if (v2)
  {
    v3 = this;
    v4 = *(*(this + 32) + 96);
    if (v4)
    {
      v6 = *(this + 20);
      if (v6 == *(this + 18))
      {
        this = AlgsDevice::StreamingClient::profileAlloc(this, 2 * (*(this + 16) & 0x7FFFu));
        v6 = *(v3 + 20);
        v2 = *(v3 + 24);
        v4 = *(*(v3 + 32) + 96);
      }

      *(v2 + 16 * v6) = a2;
      this = v4(this);
      v7 = *(v3 + 20);
      *(*(v3 + 24) + 16 * v7 + 8) = this;
      *(v3 + 20) = v7 + 1;
    }
  }

  return this;
}

uint64_t AlgsDevice::StreamingClient::profileAlloc(AlgsDevice::StreamingClient *this, unsigned int a2)
{
  v3 = *(this + 8);
  *(this + 8) = a2;
  *(this + 9) = (a2 + 1048568) >> 4;
  v4 = *(this + 1);
  result = operator new(a2, *(this + 120));
  *(this + 1) = result;
  if (v4)
  {
    OUTLINED_FUNCTION_19();
    memcpy(v6, v7, v8);
    OUTLINED_FUNCTION_13_0();
    result = MEMORY[0x266758DE0](v4);
  }

  else
  {
    *result = 20488;
    *(result + 4) = 2;
    *(result + 6) = 2;
  }

  *(this + 3) = *(this + 1) + 8;
  return result;
}

void AlgsDevice::StreamingClient::start(uint64_t a1, int *a2, PacketCollection *a3, AlgDataExtractor *a4)
{
  v4 = a1 + 48;
  if (*(a1 + 48))
  {
    v9 = (a1 + 40);
    *(a1 + 20) = 0;
    AlgsDevice::StreamingClient::saveTimestamp(a1, 0x310E1E39B3);
    v10 = *(a1 + 96);
    *(a1 + 97) |= v10;
    if (!v10)
    {
      a3 = 0;
    }

    if (a2)
    {
      v11 = *a2;
      v13 = *(a2 + 1);
      v12 = *(a2 + 2);
      if (SABinaryWriter::writeHeader(v4, 2) && SABinaryWriter::writeData(v4, v11, v13, v12) && (StreamingWriter::writeInjExtData((v4 - 8), 1, a3, 0) & 1) != 0)
      {
        goto LABEL_11;
      }
    }

    else if (StreamingWriter::writeInjext((v4 - 8), *(a1 + 88), a3, 0, a4, 0))
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_35();
    *(v4 + 24) = 0;
    *v9 = 0u;
    *(v4 + 8) = 0u;
    *(a1 + 74) = 0;
    *(a1 + 80) = 0;
  }

LABEL_11:
  OUTLINED_FUNCTION_40();
}

void AlgsDevice::StreamingClient::reset(AlgsDevice::StreamingClient *this)
{
  if (*(this + 6))
  {
    v2 = *(this + 4);
    Info = AlgsDevice::getInfo(v2);
    AlgDataExtractor::AlgDataExtractor(v5, v2[12]);
    v4 = *(this + 4);
    AlgsDevice::getClientExtractor();
    StreamingWriter::writeResetOrInfo(this + 40, 1, BYTE5(Info), Info, BYTE4(Info), BYTE6(Info), *(this + 4) + 80, *(this + 96), v5);
    PacketCollection::~PacketCollection(v5);
  }
}

void sub_2655D80D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PacketCollection::~PacketCollection(va);
  _Unwind_Resume(a1);
}

void AlgsDevice::StreamingClient::~StreamingClient(AlgsDevice::StreamingClient *this)
{
  AlgsDevice::StreamingClient::~StreamingClient(this);
  OUTLINED_FUNCTION_36();

  JUMPOUT(0x266758DE0);
}

{
  *this = &unk_2876F8510;
  v2 = *(this + 13);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_11_0(v2);
    (*(v4 + 8))(v3);
  }

  v5 = *(this + 14);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_11_0(v5);
    (*(v7 + 8))(v6);
  }

  v8 = *(this + 1);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x266758DE0]();
  StreamingPacketCache::~StreamingPacketCache((this + 128));
}

void AlgsDevice::StreamingClient::configure(AlgsDevice::StreamingClient *this, char a2, AlgDataExtractor *a3)
{
  *(this + 96) = a2;
  v5 = *(this + 1);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x266758DE0]();
  v6 = 0;
  v7 = 0;
  *(this + 1) = 0;
  *(this + 3) = 0;
  while (v7 < *(a3 + 5))
  {
    v8 = (*(a3 + 1) + v6);
    if (*v8 == 0x3779B8717A8905ELL && v8[1] == 0xC0246BF06F597652)
    {
      *(a3 + 7) = AlgsDevice::StreamingClient::configure(BOOL,AlgDataExtractor &)::$_0::__invoke;
      *(a3 + 8) = this;
      AlgsDevice::StreamingClient::profileAlloc(this, *(this + 8));
    }

    v8[8] = AlgsDevice::StreamingClient::extraction;
    v8[9] = this;
    ++v7;
    v6 += 80;
  }

  v10 = *(this + 4);
  OUTLINED_FUNCTION_40();

  AlgsDevice::addClient(v11, v12, v13, v14);
}

double AlgsDevice::StreamingClient::extraction(__int16 *a1)
{
  v1 = *a1;
  v2 = (*a1 + 48);
  if (*v2)
  {
    if (SABinaryWriter::addExtractionData((*a1 + 48), *(a1 + 1), *(a1 + 2), *(a1 + 28) == 1, a1[12], *(a1 + 12) + *(a1 + 8), 0) && SABinaryWriter::write(v2, *(a1 + 5), a1[16]) && SABinaryWriter::write(v2, *(a1 + 7), a1[24]))
    {
      *(v1 + 97) = 1;
    }

    else
    {
      OUTLINED_FUNCTION_35();
      *(v1 + 72) = 0;
      result = 0.0;
      *(v1 + 56) = 0u;
      *(v1 + 40) = 0u;
      *(v1 + 74) = 0;
      *(v1 + 80) = 0;
    }
  }

  return result;
}

uint64_t AlgsDevice::StreamingClient::writeTreeInfo(void)::$_0::__invoke(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 72) != 8)
  {
    return 0;
  }

  v16[4] = v2;
  v16[5] = v3;
  v4 = 0;
  v5 = *(a2 + 16);
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 17);
  v9 = *(a1 + 48);
  v10 = *(v9 + 5);
  for (i = (v9 + *(a1 + 64) - 16 * v10); ; i += 2)
  {
    if (v10 == v4)
    {
      v13 = *(v9 + 5);
      goto LABEL_9;
    }

    if (*i == v6)
    {
      break;
    }

    ++v4;
  }

  v13 = v4;
LABEL_9:
  v14 = *(v9 + 3);
  v15 = v9 + 7 + 4 * v14;
  if (v15 >= v9 + *(a1 + 64) - 16 * v10)
  {
    return 0;
  }

  *v15 = v13;
  *(v15 + 2) = v8;
  *(v15 + 3) = v5;
  *(v9 + 3) = v14 + 1;
  if (v10 == v4)
  {
    v16[0] = v6;
    v16[1] = v7;
    result = SABinaryWriter::write((a1 + 48), v16, 0x10uLL);
    if (!result)
    {
      return result;
    }

    ++*(v9 + 5);
  }

  return 1;
}

void AlgDataExtractor::AlgDataExtractor(AlgDataExtractor *this)
{
  *(this + 2) = 16;
  *(this + 3) = 0;
  *(this + 4) = 16;
  *(this + 5) = 0;
  *(this + 6) = 16;
  *this = &unk_2876F8570;
  *(this + 1) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
}

uint64_t AlgsDevice::StreamingClient::configureStatus(AlgsDevice::StreamingClient *this)
{
  AlgDataExtractor::AlgDataExtractor(v6, *(*(this + 4) + 48));
  v2 = *(this + 4);
  AlgsDevice::getClientExtractor();
  v4 = StreamingWriter::writeConfigure((this + 40), *(this + 96), v6, v3);
  PacketCollection::~PacketCollection(v6);
  return v4;
}

void sub_2655D8510(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PacketCollection::~PacketCollection(va);
  _Unwind_Resume(a1);
}

void AlgsDevice::StreamingClient::translate(AlgsDevice::StreamingClient *this, PacketCollection *a2, PacketCollection *a3)
{
  if (*(this + 13))
  {
    OUTLINED_FUNCTION_34();
    v7 = v6;
    if (*(v6 + 112))
    {
      v8 = v4;
      v9 = v3;
      v10 = 0;
      for (i = 0; i < *(v5 + 20); ++i)
      {
        v12 = *(v7 + 112);
        if (i >= *(v12 + 20))
        {
          break;
        }

        v13 = *(v5 + 8);
        v14 = *(v12 + 8);
        v15 = PacketCollection::getFor(v8, *(v13 + v10), *(v13 + v10 + 8), *(v13 + v10 + 33));
        if (v15 || (v15 = PacketCollection::getFor(v9, *(v13 + v10), *(v13 + v10 + 8), *(v13 + v10 + 33))) != 0)
        {
          *v15 = *(v14 + v10);
          *(v15 + 33) = *(v14 + v10 + 33);
          if (*(v15 + 32) == 2)
          {
            *(v15 + 32) = 1;
            OUTLINED_FUNCTION_20();
            (*(v16 + 16))(v9);
          }
        }

        v5 = *(v7 + 104);
        v10 += 80;
      }
    }

    OUTLINED_FUNCTION_33();
  }
}

uint64_t AlgsDevice::StreamingClient::setBuffer(AlgsDevice::StreamingClient *this, void *a2)
{
  OUTLINED_FUNCTION_23();
  result = OUTLINED_FUNCTION_35();
  *(v4 + 40) = 0;
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 74) = 0;
  *(v4 + 80) = 0;
  return result;
}

uint64_t AlgsDevice::StreamingClient::resetBuffer(AlgsDevice::StreamingClient *this)
{
  v1 = *(this + 8);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_2_1();
  return v1;
}

double OUTLINED_FUNCTION_2_1()
{
  *(v0 + 72) = 0;
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 74) = 0;
  *(v0 + 80) = 0;
  return result;
}

void OUTLINED_FUNCTION_22(unsigned int a1@<W8>)
{
  v4 = *(v1 + 8) + a1 * v3;
  v5 = *v4;
  v6 = *(v2 + 72);
  v7 = *(v4 + 33);
}

void *OUTLINED_FUNCTION_28()
{
  v0[5] = v1;
  v0[7] = v1 + v0[4];
  return v0;
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, char a22)
{
  if (v22)
  {
    v26 = v24;
  }

  else
  {
    v26 = v24 + 1;
  }

  a22 = v26;

  return SABinaryWriter::write((v23 + 48), &a19, 0x12uLL);
}

uint64_t OUTLINED_FUNCTION_35()
{

  return SABinaryWriter::updateCacheSizes(0, 0);
}

void OUTLINED_FUNCTION_38()
{

  JUMPOUT(0x266758DD0);
}

void *OUTLINED_FUNCTION_39(uint64_t a1, int a2)
{

  return AlgDataExtractor::AlgDataExtractor(v2 - 160, a2);
}

void operator delete[]()
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}