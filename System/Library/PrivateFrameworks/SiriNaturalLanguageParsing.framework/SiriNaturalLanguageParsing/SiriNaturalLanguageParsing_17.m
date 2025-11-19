void sub_222973070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t uaap::UPDDSpan::extractIntValueFromDDResult(uaap::UPDDSpan *this, __DDResult *a2)
{
  Value = DDResultGetValue();

  return uaap::UPDDSpan::extractIntValueFromCFStringRef(Value, v3);
}

uaap::UPDDTimeSpan *uaap::UPDDTimeSpan::UPDDTimeSpan(uaap::UPDDTimeSpan *this, __DDResult *a2)
{
  v4 = uaap::UPDDDateTimeBaseSpan::UPDDDateTimeBaseSpan(this, a2);
  *v4 = &unk_2835E58D0;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 15) = 0;
  SubresultWithType = DDResultGetSubresultWithType();
  v6 = DDResultGetSubresultWithType();
  v7 = DDResultGetSubresultWithType();
  v8 = DDResultGetSubresultWithType();
  v9 = DDResultGetSubresultWithType();
  v11 = uaap::searchDDTreeWithType(a2, @"SpecialTimePeriod", v10);
  v12 = DDResultGetSubresultWithType();
  v13 = DDResultGetSubresultWithType();
  v16 = DDResultGetSubresultWithType();
  if (SubresultWithType)
  {
    operator new();
  }

  if (v6)
  {
    operator new();
  }

  if (v7)
  {
    operator new();
  }

  if (v8)
  {
    operator new();
  }

  if (v9)
  {
    operator new();
  }

  if (v11)
  {
    operator new();
  }

  v15 = *(this + 12);
  *(this + 12) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  if (v12)
  {
    operator new();
  }

  if (v13)
  {
    operator new();
  }

  if (v16)
  {
    operator new();
  }

  return this;
}

void sub_2229735D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  MEMORY[0x223DC4D00](v10, 0x10E1C406A116140);
  v12 = *(v9 + 15);
  *(v9 + 15) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(v9 + 14);
  *(v9 + 14) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(v9 + 13);
  *(v9 + 13) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(v9 + 12);
  *(v9 + 12) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(v9 + 11);
  *(v9 + 11) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(v9 + 10);
  *(v9 + 10) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(v9 + 9);
  *(v9 + 9) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(v9 + 8);
  *(v9 + 8) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *a9;
  *a9 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  uaap::UPDDDateTimeBaseSpan::~UPDDDateTimeBaseSpan(v9);
  _Unwind_Resume(a1);
}

void uaap::UPDDTimeSpan::~UPDDTimeSpan(uaap::UPDDTimeSpan *this)
{
  uaap::UPDDTimeSpan::~UPDDTimeSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E58D0;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 7);
  *(this + 7) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *this = &unk_2835E58B0;
  v11 = *(this + 6);
  *(this + 6) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

uaap::UPDDTimeDurationSpan *uaap::UPDDTimeDurationSpan::UPDDTimeDurationSpan(uaap::UPDDTimeDurationSpan *this, __DDResult *a2)
{
  Value = DDResultGetValue();
  uaap::UPDDSpan::UPDDSpan(this, a2, Value);
  *this = &unk_2835E58F0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  DDResultGetSubresultWithType();
  SubresultWithType = DDResultGetSubresultWithType();
  DDResultGetSubresultWithType();
  v6 = DDResultGetSubresultWithType();
  if (SubresultWithType)
  {
    operator new();
  }

  if (v6)
  {
    operator new();
  }

  return this;
}

void sub_222973CB8(_Unwind_Exception *a1)
{
  MEMORY[0x223DC4D00](v2, 0x10E1C406A116140);
  v5 = *(v1 + 7);
  *(v1 + 7) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  uaap::UPDDSpan::~UPDDSpan(v1);
  _Unwind_Resume(a1);
}

void uaap::UPDDTimeDurationSpan::~UPDDTimeDurationSpan(uaap::UPDDTimeDurationSpan *this)
{
  *this = &unk_2835E58F0;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  uaap::UPDDSpan::~UPDDSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E58F0;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

uaap::UPDDTimeSpanWithReference *uaap::UPDDTimeSpanWithReference::UPDDTimeSpanWithReference(uaap::UPDDTimeSpanWithReference *this, __DDResult *a2)
{
  v3 = uaap::UPDDDateTimeBaseSpan::UPDDDateTimeBaseSpan(this, a2);
  *v3 = &unk_2835E5910;
  *(v3 + 7) = 0;
  *(v3 + 8) = 0;
  SubresultWithType = DDResultGetSubresultWithType();
  DDResultGetSubresultWithType();
  v5 = DDResultGetSubresultWithType();
  if (SubresultWithType)
  {
    operator new();
  }

  if (v5)
  {
    operator new();
  }

  return this;
}

void sub_22297403C(_Unwind_Exception *a1)
{
  MEMORY[0x223DC4D00](v2, 0x10E1C406A116140);
  v5 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  uaap::UPDDDateTimeBaseSpan::~UPDDDateTimeBaseSpan(v1);
  _Unwind_Resume(a1);
}

void uaap::UPDDTimeSpanWithReference::~UPDDTimeSpanWithReference(uaap::UPDDTimeSpanWithReference *this)
{
  *this = &unk_2835E5910;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_2835E58B0;
  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  uaap::UPDDSpan::~UPDDSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5910;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_2835E58B0;
  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

uaap::UPDDSpecialDatePeriodSpan *uaap::UPDDSpecialDatePeriodSpan::UPDDSpecialDatePeriodSpan(uaap::UPDDSpecialDatePeriodSpan *this, __DDResult *a2)
{
  Value = DDResultGetValue();
  uaap::UPDDSpan::UPDDSpan(this, a2, Value);
  *this = &unk_2835E5930;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  SubresultWithType = DDResultGetSubresultWithType();
  v6 = DDResultGetSubresultWithType();
  v7 = DDResultGetSubresultWithType();
  v9 = uaap::searchDDTreeWithType(a2, @"OccurrenceCount", v8);
  v10 = DDResultGetSubresultWithType();
  if (SubresultWithType)
  {
    operator new();
  }

  if (v6)
  {
    operator new();
  }

  if (v7)
  {
    v11 = DDResultGetValue();
  }

  else
  {
    v11 = 0;
  }

  *(this + 12) = v11;
  if (v9)
  {
    operator new();
  }

  if (v10)
  {
    operator new();
  }

  return this;
}

void sub_2229746A4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 11);
  *(v1 + 11) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(v1 + 10);
  *(v1 + 10) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(v1 + 9);
  *(v1 + 9) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(v1 + 7);
  *(v1 + 7) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *v2;
  *v2 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  uaap::UPDDSpan::~UPDDSpan(v1);
  _Unwind_Resume(a1);
}

void uaap::UPDDSpecialDatePeriodSpan::~UPDDSpecialDatePeriodSpan(uaap::UPDDSpecialDatePeriodSpan *this)
{
  uaap::UPDDSpecialDatePeriodSpan::~UPDDSpecialDatePeriodSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5930;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 6);
  *(this + 6) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

uaap::UPDDSpan *uaap::UPDDSpecialDatePeriodSpan::UPDDSpecialDatePeriodSpan(uaap::UPDDSpan *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v13 = uaap::UPDDSpan::UPDDSpan(a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 20));
  *v13 = &unk_2835E5930;
  *(v13 + 3) = 0u;
  v14 = (v13 + 48);
  *(v13 + 4) = 0u;
  *(v13 + 5) = 0u;
  v15 = *a3;
  if (*a3)
  {
    *a3 = 0;
    v16 = *v14;
    *v14 = v15;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  v17 = *a4;
  if (*a4)
  {
    *a4 = 0;
    v18 = *(a1 + 7);
    *(a1 + 7) = v17;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  v19 = *a5;
  if (*a5)
  {
    *a5 = 0;
    v20 = *(a1 + 8);
    *(a1 + 8) = v19;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }
  }

  v21 = *a6;
  if (*a6)
  {
    *a6 = 0;
    v22 = *(a1 + 11);
    *(a1 + 11) = v21;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }
  }

  *(a1 + 12) = a7;
  return a1;
}

uaap::UPDDAbsoluteDateSpan *uaap::UPDDAbsoluteDateSpan::UPDDAbsoluteDateSpan(uaap::UPDDAbsoluteDateSpan *this, __DDResult *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = uaap::UPDDDateTimeBaseSpan::UPDDDateTimeBaseSpan(this, a2);
  *v4 = &unk_2835E5950;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 11) = 0;
  v6 = uaap::searchDDTreeWithType(a2, @"SpecialDay", v5);
  v8 = uaap::searchDDTreeWithType(v6, @"Identifier", v7);
  SubresultWithType = DDResultGetSubresultWithType();
  v10 = DDResultGetSubresultWithType();
  v11 = DDResultGetSubresultWithType();
  v12 = DDResultGetSubresultWithType();
  v13 = DDResultGetSubresultWithType();
  v15 = uaap::searchDDTreeWithType(a2, @"DayOfWeek", v14);
  if (v8)
  {
    operator new();
  }

  if (SubresultWithType)
  {
    operator new();
  }

  if (v10)
  {
    operator new();
  }

  if (v11)
  {
    operator new();
  }

  if (v13)
  {
    operator new();
  }

  if (v12)
  {
    v18 = MEMORY[0x223DC2D70](a2);
    if ((v18 & 0x80000000) == 0)
    {
      std::to_string(&v23, v18);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v23;
      }

      else
      {
        v19 = v23.__r_.__value_.__r.__words[0];
      }

      CFStringCreateWithCString(0, v19, 0x8000100u);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      operator new();
    }

    v20 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      Value = DDResultGetValue();
      applesauce::CF::convert_to<std::string,0>(&v23, Value);
      v22 = (v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v23 : v23.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v25 = v22;
      _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_ERROR, "Warning: failed to extract JapaneseYear: %s", buf, 0xCu);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v15)
  {
    operator new();
  }

  v16 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_22297509C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *(v15 + 11);
  *(v15 + 11) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(v15 + 10);
  *(v15 + 10) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(v15 + 9);
  *(v15 + 9) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(v15 + 8);
  *(v15 + 8) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *a9;
  *a9 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  uaap::UPDDDateTimeBaseSpan::~UPDDDateTimeBaseSpan(v15);
  _Unwind_Resume(a1);
}

void uaap::UPDDAbsoluteDateSpan::~UPDDAbsoluteDateSpan(uaap::UPDDAbsoluteDateSpan *this)
{
  uaap::UPDDAbsoluteDateSpan::~UPDDAbsoluteDateSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5950;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *this = &unk_2835E58B0;
  v7 = *(this + 6);
  *(this + 6) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

uaap::UPDDSpan *uaap::UPDDAbsoluteDateSpan::UPDDAbsoluteDateSpan(uaap::UPDDSpan *a1, const __CFString *a2, const __CFString *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v13 = *a6;
  *a6 = 0;
  v19 = v13;
  uaap::UPDDDateTimeBaseSpan::UPDDDateTimeBaseSpan(a1, a2, a3, a4, a5, &v19);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  *a1 = &unk_2835E5950;
  v14 = *a7;
  *a7 = 0;
  *(a1 + 7) = v14;
  v15 = *a8;
  *a8 = 0;
  *(a1 + 8) = v15;
  v16 = *a9;
  *a9 = 0;
  *(a1 + 9) = v16;
  v17 = *a10;
  *a10 = 0;
  *(a1 + 10) = v17;
  *(a1 + 11) = 0;
  return a1;
}

{
  return uaap::UPDDAbsoluteDateSpan::UPDDAbsoluteDateSpan(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_222975560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uaap::UPDDDateOffsetSpan *uaap::UPDDDateOffsetSpan::UPDDDateOffsetSpan(uaap::UPDDDateOffsetSpan *this, __DDResult *a2)
{
  v4 = uaap::UPDDDateTimeBaseSpan::UPDDDateTimeBaseSpan(this, a2);
  *v4 = &unk_2835E5970;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  v6 = uaap::searchDDTreeWithType(a2, @"OccurrenceCount", v5);
  v8 = uaap::searchDDTreeWithType(a2, @"SpecialDatePeriodUnit", v7);
  if (v6)
  {
    operator new();
  }

  if (v8)
  {
    operator new();
  }

  return this;
}

void sub_2229757FC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 10);
  *(v1 + 10) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(v1 + 9);
  *(v1 + 9) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  uaap::UPDDDateTimeBaseSpan::~UPDDDateTimeBaseSpan(v1);
  _Unwind_Resume(a1);
}

void uaap::UPDDDateOffsetSpan::~UPDDDateOffsetSpan(uaap::UPDDDateOffsetSpan *this)
{
  *this = &unk_2835E5970;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *this = &unk_2835E58B0;
  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  uaap::UPDDSpan::~UPDDSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5970;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *this = &unk_2835E58B0;
  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

uaap::UPDDDateSpan *uaap::UPDDDateSpan::UPDDDateSpan(uaap::UPDDDateSpan *this, __DDResult *a2)
{
  v4 = uaap::UPDDAbsoluteDateSpan::UPDDAbsoluteDateSpan(this, a2);
  *v4 = &unk_2835E5990;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 16) = 0;
  SubresultWithType = DDResultGetSubresultWithType();
  v6 = DDResultGetSubresultWithType();
  v7 = DDResultGetSubresultWithType();
  v8 = DDResultGetSubresultWithType();
  v9 = DDResultGetSubresultWithType();
  v11 = DDResultGetSubresultWithType();
  if (SubresultWithType)
  {
    operator new();
  }

  if (v9 | v11)
  {
    v12 = uaap::searchDDTreeWithType(a2, @"DayOfWeek", v10);
    v14 = uaap::searchDDTreeWithType(a2, @"DayOfNextWeek", v13);
    v16 = uaap::searchDDTreeWithType(a2, @"DayOfThisWeek", v15);
    if (v12)
    {
      operator new();
    }

    if (v14)
    {
      operator new();
    }

    if (v16)
    {
      operator new();
    }
  }

  if (v6)
  {
    operator new();
  }

  if (v7)
  {
    operator new();
  }

  if (v8)
  {
    operator new();
  }

  if (v11)
  {
    operator new();
  }

  return this;
}

void sub_222976108(_Unwind_Exception *a1)
{
  MEMORY[0x223DC4D00](v2, 0x10E1C40AC054123);
  v5 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(v1 + 14);
  *(v1 + 14) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(v1 + 13);
  *(v1 + 13) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *v3;
  *v3 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  uaap::UPDDAbsoluteDateSpan::~UPDDAbsoluteDateSpan(v1);
  _Unwind_Resume(a1);
}

void uaap::UPDDDateSpan::~UPDDDateSpan(uaap::UPDDDateSpan *this)
{
  *this = &unk_2835E5990;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  uaap::UPDDAbsoluteDateSpan::~UPDDAbsoluteDateSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5990;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  uaap::UPDDAbsoluteDateSpan::~UPDDAbsoluteDateSpan(this);
}

double uaap::UPDDDateSpan::UPDDDateSpan(uaap::UPDDSpan *a1, const __CFString *a2, const __CFString *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  v11 = uaap::UPDDAbsoluteDateSpan::UPDDAbsoluteDateSpan(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  *v11 = &unk_2835E5990;
  result = 0.0;
  *(v11 + 6) = 0u;
  *(v11 + 7) = 0u;
  v13 = *a11;
  *a11 = 0;
  *(v11 + 16) = v13;
  return result;
}

{
  v11 = uaap::UPDDAbsoluteDateSpan::UPDDAbsoluteDateSpan(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  *v11 = &unk_2835E5990;
  result = 0.0;
  *(v11 + 6) = 0u;
  *(v11 + 7) = 0u;
  v13 = *a11;
  *a11 = 0;
  *(v11 + 16) = v13;
  return result;
}

uaap::UPDDDateSpanWithReference *uaap::UPDDDateSpanWithReference::UPDDDateSpanWithReference(uaap::UPDDDateSpanWithReference *this, __DDResult *a2)
{
  v3 = uaap::UPDDDateTimeBaseSpan::UPDDDateTimeBaseSpan(this, a2);
  *v3 = &unk_2835E59B0;
  *(v3 + 7) = 0;
  *(v3 + 8) = 0;
  SubresultWithType = DDResultGetSubresultWithType();
  DDResultGetSubresultWithType();
  v5 = DDResultGetSubresultWithType();
  if (SubresultWithType)
  {
    operator new();
  }

  if (v5)
  {
    operator new();
  }

  return this;
}

void sub_2229767D4(_Unwind_Exception *a1)
{
  MEMORY[0x223DC4D00](v2, 0x10E1C402100513ELL);
  v5 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  uaap::UPDDDateTimeBaseSpan::~UPDDDateTimeBaseSpan(v1);
  _Unwind_Resume(a1);
}

void uaap::UPDDDateSpanWithReference::~UPDDDateSpanWithReference(uaap::UPDDDateSpanWithReference *this)
{
  *this = &unk_2835E59B0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_2835E58B0;
  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  uaap::UPDDSpan::~UPDDSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E59B0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_2835E58B0;
  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

uaap::UPDDDateTimeSpan *uaap::UPDDDateTimeSpan::UPDDDateTimeSpan(uaap::UPDDDateTimeSpan *this, __DDResult *a2)
{
  v3 = uaap::UPDDDateTimeBaseSpan::UPDDDateTimeBaseSpan(this, a2);
  *v3 = &unk_2835E59D0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  SubresultWithType = DDResultGetSubresultWithType();
  v5 = DDResultGetSubresultWithType();
  v6 = DDResultGetSubresultWithType();
  v7 = DDResultGetSubresultWithType();
  if (SubresultWithType)
  {
    operator new();
  }

  if (v6)
  {
    operator new();
  }

  if (v5)
  {
    operator new();
  }

  if (v7)
  {
    operator new();
  }

  return this;
}

void sub_222976CC4(_Unwind_Exception *a1)
{
  MEMORY[0x223DC4D00](v2, 0x10E1C402100513ELL);
  v5 = *(v1 + 10);
  *(v1 + 10) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(v1 + 9);
  *(v1 + 9) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *v3;
  *v3 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  uaap::UPDDDateTimeBaseSpan::~UPDDDateTimeBaseSpan(v1);
  _Unwind_Resume(a1);
}

void uaap::UPDDDateTimeSpan::~UPDDDateTimeSpan(uaap::UPDDDateTimeSpan *this)
{
  *this = &unk_2835E59D0;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *this = &unk_2835E58B0;
  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  uaap::UPDDSpan::~UPDDSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E59D0;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *this = &unk_2835E58B0;
  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

uint64_t snlp::common::asset_logger::SNLPAssetLogger::SNLPAssetLogger(uint64_t a1, int a2, std::string *a3, void *a4, uint64_t a5)
{
  v7 = a2;
  bundleInfoForAssetsDirectory(&v7, a3, a4, a5, a1);
  return a1;
}

{
  v7 = a2;
  bundleInfoForAssetsDirectory(&v7, a3, a4, a5, a1);
  return a1;
}

void snlp::common::espresso_inference::e5ml::MILSELFLogger::logSELFFailure(uint64_t a1, uint64_t a2, int *a3)
{
  if (!snlp::common::espresso_inference::e5ml::MILSELFLogger::checkContextId(a1))
  {
    return;
  }

  v6 = *(a1 + 112);
  if (*(a1 + 80) != 1)
  {
    if (*(a1 + 112))
    {
      v11 = 0;
      v8 = (*(*a2 + 16))(a2);
      std::string::basic_string[abi:ne200100]<0>(__p, v8);
      snlp::common::espresso_inference::e5ml::selflogging::logMilCompilationFailed((a1 + 88), a3, &v11, __p);
      goto LABEL_7;
    }

LABEL_14:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    goto LABEL_14;
  }

  v11 = 0;
  v7 = (*(*a2 + 16))(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, v7);
  snlp::common::espresso_inference::e5ml::selflogging::logMilCompilationFailed(a1, (a1 + 88), a3, &v11, __p);
LABEL_7:
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    *(a1 + 112) = 0;
  }
}

void sub_2229772B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void snlp::common::espresso_inference::e5ml::MILSELFLogger::logSELFE5RTError(uint64_t a1, E5RT::E5RTError *a2, int *a3)
{
  if (!snlp::common::espresso_inference::e5ml::MILSELFLogger::checkContextId(a1))
  {
    return;
  }

  Status = E5RT::E5RTError::GetStatus(a2);
  ErrorCode = E5RT::Status::GetErrorCode(Status);
  if (ErrorCode > 10)
  {
    if (ErrorCode != 11)
    {
      if (ErrorCode == 13)
      {
        v8 = 1;
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v8 = 2;
  }

  else
  {
    if (ErrorCode != 1)
    {
      if (ErrorCode == 2)
      {
        v8 = 4;
        goto LABEL_12;
      }

LABEL_9:
      v8 = 5;
      goto LABEL_12;
    }

    v8 = 3;
  }

LABEL_12:
  v9 = v8;
  snlp::common::espresso_inference::e5ml::MILSELFLogger::selfLogE5RTError(a1, a2, &v9, a3);
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    *(a1 + 112) = 0;
  }
}

void snlp::common::espresso_inference::e5ml::MILSELFLogger::selfLogE5RTError(uint64_t a1, uint64_t a2, unsigned int *a3, int *a4)
{
  if (!snlp::common::espresso_inference::e5ml::MILSELFLogger::checkContextId(a1))
  {
    return;
  }

  v8 = *(a1 + 112);
  if ((*(a1 + 80) & 1) == 0)
  {
    if (*(a1 + 112))
    {
      v10 = (*(*a2 + 16))(a2);
      std::string::basic_string[abi:ne200100]<0>(__p, v10);
      snlp::common::espresso_inference::e5ml::selflogging::logMilCompilationFailed((a1 + 88), a4, a3, __p);
      goto LABEL_7;
    }

LABEL_14:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    goto LABEL_14;
  }

  v9 = (*(*a2 + 16))(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, v9);
  snlp::common::espresso_inference::e5ml::selflogging::logMilCompilationFailed(a1, (a1 + 88), a4, a3, __p);
LABEL_7:
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    *(a1 + 112) = 0;
  }
}

void sub_2229774C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::DefaultValueMediaPlaybackSpeed::getDescription(nlv4_inference_orchestrator::post_processing::tree_manipulations::DefaultValueMediaPlaybackSpeed *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::DefaultValueMediaPlaybackSpeed::findMediaPlaybackSubTreeFromSpans(nlv4_inference_orchestrator::post_processing::tree_manipulations::DefaultValueMediaPlaybackSpeed *this@<X0>, const nlv4_inference_orchestrator::trees::TreeNode *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(this + 3);
  v5 = *(this + 4);
  if (v4 == v5)
  {
LABEL_4:
    a3->__r_.__value_.__s.__data_[0] = 0;
    a3[6].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    while (1)
    {
      nlv4_inference_orchestrator::post_processing::tree_manipulations::DefaultValueMediaPlaybackSpeed::findMediaPlaybackSpeedSubTreeFromSpan(this, v4, a2, v8);
      if (v14[56] == 1)
      {
        break;
      }

      v4 = (v4 + 88);
      if (v4 == v5)
      {
        goto LABEL_4;
      }
    }

    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(a3, v8);
    a3[6].__r_.__value_.__s.__data_[0] = 1;
    v15 = v14;
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v15);
    if (v13 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10);
    }

    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::DefaultValueMediaPlaybackSpeed::findMediaPlaybackSpeedSubTreeFromSpan(nlv4_inference_orchestrator::post_processing::tree_manipulations::DefaultValueMediaPlaybackSpeed *this@<X0>, const sirinluinternal::MatchingSpan *a2@<X1>, const nlv4_inference_orchestrator::trees::TreeNode *a3@<X2>, uint64_t a4@<X8>)
{
  v39.__r_.__value_.__r.__words[0] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  if (v8 != v9)
  {
    while (*v8 != *(this + 12))
    {
      if (++v8 == v9)
      {
        goto LABEL_19;
      }
    }
  }

  if (v8 == v9)
  {
    goto LABEL_19;
  }

  v10 = *(a2 + 6);
  v11 = *(v10 + 23);
  if (v11 >= 0)
  {
    v12 = *(v10 + 23);
  }

  else
  {
    v12 = *(v10 + 8);
  }

  v13 = *(this + 79);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(this + 8);
  }

  if (v12 != v13)
  {
    goto LABEL_19;
  }

  v15 = v11 >= 0 ? *(a2 + 6) : *v10;
  v16 = v14 >= 0 ? (this + 56) : *(this + 7);
  if (memcmp(v15, v16, v12))
  {
    goto LABEL_19;
  }

  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this + 61, *(a2 + 7)))
  {
    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v28, a3);
    MEMORY[0x223DC46D0](&v28, "");
    std::string::operator=(&v30, (this + 272));
    std::string::operator=(&v29, *(a2 + 7));
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*>(v31, 0, 0, 0);
    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v19, a3);
    std::string::operator=(&v19, (this + 128));
    std::string::operator=(&__p, (this + 296));
    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v33, &v28);
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*>(&v24, &v33, &v39, 1uLL);
  }

  else
  {
    if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this + 66, *(a2 + 7)))
    {
LABEL_19:
      *a4 = 0;
      *(a4 + 144) = 0;
      goto LABEL_20;
    }

    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v28, a3);
    MEMORY[0x223DC46D0](&v28, "");
    std::string::operator=(&v30, (this + 224));
    std::string::operator=(&v29, *(a2 + 7));
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*>(v31, 0, 0, 0);
    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v19, a3);
    std::string::operator=(&v19, (this + 80));
    std::string::operator=(&__p, (this + 296));
    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v33, &v28);
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*>(&v24, &v33, &v39, 1uLL);
  }

  v32 = &v38;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v32);
  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  *a4 = v19;
  *&v19.__r_.__value_.__l.__data_ = 0uLL;
  *(a4 + 24) = *v20;
  *(a4 + 40) = v21;
  v19.__r_.__value_.__r.__words[2] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  *(a4 + 48) = __p;
  memset(&__p, 0, sizeof(__p));
  *(a4 + 72) = v23;
  *(a4 + 88) = v24;
  *(a4 + 104) = v25;
  v24 = 0uLL;
  v25 = 0;
  v18 = v27;
  *(a4 + 112) = v26;
  *(a4 + 128) = v18;
  *(a4 + 144) = 1;
  v33.__r_.__value_.__r.__words[0] = &v24;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  v19.__r_.__value_.__r.__words[0] = v31;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v19);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
}

void sub_2229780A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode((v27 - 200));
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a9);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a27);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<nlv4_inference_orchestrator::trees::TreeNode **>::emplace_back<nlv4_inference_orchestrator::trees::TreeNode **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode **>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode **>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

BOOL nlv4_inference_orchestrator::post_processing::tree_manipulations::DefaultValueMediaPlaybackSpeed::isVOCSpan(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    while (*v2 != *(a1 + 48))
    {
      if (++v2 == v3)
      {
        v2 = *(a2 + 16);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void snlp::common::asset_logger::SNLPAssetLogger::~SNLPAssetLogger(snlp::common::asset_logger::SNLPAssetLogger *this)
{
  std::__tree<std::__value_type<std::__fs::filesystem::path,std::string>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::string>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::string>>>::destroy(*(this + 10));
  if (*(this + 64) == 1 && *(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  MEMORY[0x223DC3400](this + 8);
}

void nlv4_inference_orchestrator::vocabulary::Vocabulary::~Vocabulary(void **this)
{
  v2 = this + 23;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table((this + 18));
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void nlv4_inference_orchestrator::context::Embedder::~Embedder(void **this)
{
  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  v2 = this + 23;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table((this + 18));
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(std::regex_traits<char> *a1, uint64_t *a2)
{
  v3 = std::regex_traits<char>::regex_traits(a1);
  v3[2].__ct_ = 0;
  *&v3[1].__col_ = 0u;
  *&v3[1].__loc_.__locale_ = 0u;
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
    v5 = a2[1];
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>();
}

void sub_222978464(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

void std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(std::string *a1, char *a2, char *a3, const std::regex_iterator<std::__wrap_iter<const char *>, char>::regex_type *a4, const char *a5)
{
  v6 = a2;
  v51.__begin_.__i_ = a2;
  v51.__end_.__i_ = a3;
  v51.__pregex_ = a4;
  v51.__flags_ = match_default;
  memset(&v51.__match_.__prefix_, 0, 17);
  memset(&v51.__match_.__suffix_, 0, 17);
  v51.__match_.__ready_ = 0;
  v51.__match_.__position_start_.__i_ = 0;
  memset(&v51.__match_, 0, 41);
  memset(&__p.__match_.__matches_.__end_cap_, 0, 17);
  memset(&__p.__match_.__unmatched_.matched, 0, 17);
  __p.__match_.__prefix_.matched = 0;
  __p.__match_.__suffix_.first.__i_ = 0;
  memset(&__p, 0, 41);
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a4, a2, a3, &__p, 0);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v51.__match_.__matches_.__begin_, v6, a3, &__p, 0);
  if (__p.__begin_.__i_)
  {
    operator delete(__p.__begin_.__i_);
  }

  memset(&__p.__match_.__prefix_, 0, 17);
  memset(&__p.__match_.__suffix_, 0, 17);
  __p.__match_.__ready_ = 0;
  __p.__match_.__position_start_.__i_ = 0;
  memset(&__p.__match_, 0, 41);
  memset(&__p, 0, 28);
  if (std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v51, &__p))
  {
    while (v6 != a3)
    {
      std::string::push_back(a1, *v6++);
    }

    goto LABEL_69;
  }

  v8 = 0;
  v9 = 0;
  v48 = strlen(a5);
  v10 = &a5[v48];
  while (!std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v51, &__p))
  {
    i = v51.__match_.__prefix_.first.__i_;
    v12 = v51.__match_.__prefix_.second.__i_;
    while (i != v12)
    {
      std::string::push_back(a1, *i++);
    }

    if (v48)
    {
      v13 = v51.__match_.__suffix_.first.__i_;
      v14 = v51.__match_.__suffix_.second.__i_;
      v15 = v51.__match_.__prefix_.first.__i_;
      v16 = v51.__match_.__prefix_.second.__i_;
      begin = v51.__match_.__matches_.__begin_;
      v49 = 0xAAAAAAAAAAAAAAABLL * ((v51.__match_.__matches_.__end_ - v51.__match_.__matches_.__begin_) >> 3);
      v18 = a5;
      do
      {
        v19 = *v18;
        if (v19 == 36)
        {
          v20 = v18 + 1;
          if (v18 + 1 != v10)
          {
            v19 = *v20;
            if (v19 > 0x26)
            {
              if (v19 == 39)
              {
                if (v13 != v14)
                {
                  v34 = v13;
                  do
                  {
                    std::string::push_back(a1, *v34++);
                  }

                  while (v34 != v14);
                }

                goto LABEL_42;
              }

              if (v19 == 96)
              {
                if (v15 != v16)
                {
                  v23 = v15;
                  do
                  {
                    std::string::push_back(a1, *v23++);
                  }

                  while (v23 != v16);
                }

                goto LABEL_42;
              }
            }

            else
            {
              if (v19 == 36)
              {
                ++v18;
                goto LABEL_41;
              }

              if (v19 == 38)
              {
                v22 = begin->first.__i_;
                v21 = begin->second.__i_;
                while (v22 != v21)
                {
                  std::string::push_back(a1, *v22++);
                }

                goto LABEL_42;
              }
            }

            LODWORD(v24) = v19 - 48;
            if (v24 <= 9)
            {
              v24 = v24;
              if (v18 + 2 != v10)
              {
                v25 = *(v18 + 2);
                v26 = v25 - 48;
                v27 = v25 + 10 * v24 - 48;
                if (v26 > 9)
                {
                  v20 = v18 + 1;
                }

                else
                {
                  v24 = v27;
                  v20 = v18 + 2;
                }
              }

              v28 = &begin[v24];
              v29 = v49 > v24;
              p_unmatched = &v51.__match_.__unmatched_;
              if (v29)
              {
                p_unmatched = v28;
              }

              v31 = p_unmatched->first.__i_;
              p_second = &v28->second;
              if (!v29)
              {
                p_second = &v51.__match_.__unmatched_.second;
              }

              v33 = p_second->__i_;
              while (v31 != v33)
              {
                std::string::push_back(a1, *v31++);
              }

              goto LABEL_42;
            }
          }

          LOBYTE(v19) = 36;
        }

LABEL_41:
        std::string::push_back(a1, v19);
        v20 = v18;
LABEL_42:
        v18 = v20 + 1;
      }

      while (v20 + 1 != v10);
    }

    v9 = v51.__match_.__suffix_.first.__i_;
    v8 = v51.__match_.__suffix_.second.__i_;
    flags = v51.__flags_;
    v36 = v51.__flags_ | 0x800;
    v51.__flags_ |= 0x800u;
    v37 = v51.__match_.__matches_.__begin_;
    v38 = &v51.__match_.__unmatched_;
    if (v51.__match_.__matches_.__end_ != v51.__match_.__matches_.__begin_)
    {
      v38 = v51.__match_.__matches_.__begin_;
    }

    v39 = &v51.__match_.__matches_.__begin_->second;
    if (v51.__match_.__matches_.__end_ == v51.__match_.__matches_.__begin_)
    {
      v39 = &v51.__match_.__unmatched_.second;
    }

    v40 = v39->__i_;
    if (v38->first.__i_ == v39->__i_)
    {
      v44 = v51.__end_.__i_;
      if (v51.__end_.__i_ == v40)
      {
        goto LABEL_64;
      }

      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      memset(v52, 0, 41);
      v45 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v51.__pregex_, v40, v51.__end_.__i_, v52, flags | 0x860);
      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v51.__match_.__matches_.__begin_, v40, v44, v52, 1);
      if (v52[0].__begin_)
      {
        operator delete(v52[0].__begin_);
      }

      if ((v45 & 1) == 0)
      {
        v41 = (v40 + 1);
        v36 = v51.__flags_;
        goto LABEL_54;
      }
    }

    else
    {
      v41 = v39->__i_;
LABEL_54:
      v51.__flags_ = v36 | 0x80;
      v42 = v51.__end_.__i_;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      memset(v52, 0, 41);
      v43 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v51.__pregex_, v41, v51.__end_.__i_, v52, v36 | 0x80);
      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v51.__match_.__matches_.__begin_, v41, v42, v52, (v36 & 0x800) != 0);
      if (v52[0].__begin_)
      {
        operator delete(v52[0].__begin_);
      }

      if (v43)
      {
        v51.__match_.__prefix_.first.__i_ = v40;
        v51.__match_.__prefix_.matched = v51.__match_.__prefix_.second.__i_ != v40;
      }

      else
      {
        v37 = v51.__match_.__matches_.__begin_;
LABEL_64:
        if (v37)
        {
          operator delete(v37);
        }

        v51.__match_.__ready_ = 0;
        memset(&v51.__match_, 0, 41);
        memset(&v51.__match_.__prefix_, 0, 17);
        memset(&v51.__match_.__suffix_, 0, 17);
        v51.__match_.__position_start_.__i_ = 0;
      }
    }
  }

  while (v9 != v8)
  {
    std::string::push_back(a1, *v9++);
  }

LABEL_69:
  v46 = v51.__match_.__matches_.__begin_;
  if (v51.__match_.__matches_.__begin_)
  {

    operator delete(v46);
  }
}

void sub_22297898C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::trees::TagExpander::~TagExpander(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t nlv4_inference_orchestrator::trees::TreeNode::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  *(a1 + 72) = *(a2 + 72);
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__vdeallocate(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 13);
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  v7 = a2[8];
  *(a1 + 112) = a2[7];
  *(a1 + 128) = v7;
  return a1;
}

uint64_t std::pair<float,nlv4_inference_orchestrator::trees::TreeNode>::~pair(uint64_t a1)
{
  v3 = (a1 + 96);
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::getExecutedHandcraftedRules(uint64_t *a1@<X0>, sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules *a2@<X8>)
{
  sirinluinternalsnlp_intermediate::SNLPHandcraftedRules::SNLPHandcraftedRules(&v9);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = v11;
    do
    {
      if (v6 >= v12)
      {
        v6 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v10, v4);
      }

      else
      {
        if (*(v4 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v6, *v4, *(v4 + 8));
        }

        else
        {
          v7 = *v4;
          v6->__r_.__value_.__r.__words[2] = *(v4 + 16);
          *&v6->__r_.__value_.__l.__data_ = v7;
        }

        ++v6;
      }

      v11 = v6;
      v4 += 24;
    }

    while (v4 != v5);
  }

  v8 = sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::NLv4ExecutedHandcraftedRules(a2);
  sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::makeRules(v8);
  operator new();
}

std::string *std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::emplace_back<nlv4_inference_orchestrator::trees::TreeNode const&,unsigned int>(void *a1, nlv4_inference_orchestrator::trees::TreeNode *a2, _DWORD *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = 26 * ((v7 - v6) >> 3) - 1;
  if (v7 == v6)
  {
    v8 = 0;
  }

  if (v8 == a1[5] + a1[4])
  {
    std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::__add_back_capacity(a1);
    v6 = a1[1];
    v7 = a1[2];
  }

  if (v7 == v6)
  {
    v10 = 0;
  }

  else
  {
    v9 = a1[5] + a1[4];
    v10 = (*(v6 + 8 * (v9 / 0x1A)) - 3952 * (v9 / 0x1A) + 152 * v9);
  }

  result = nlv4_inference_orchestrator::trees::TreeNode::TreeNode(v10, a2);
  LODWORD(result[6].__r_.__value_.__l.__data_) = *a3;
  ++a1[5];
  return result;
}

uint64_t std::pair<std::vector<nlv4_inference_orchestrator::trees::TreeDecompressor::DecompressionEntry>,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = a1;
  std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::pair<std::vector<nlv4_inference_orchestrator::trees::TreeDecompressor::DecompressionEntry>,std::string>>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 87) < 0)
    {
      operator delete(*(a2 + 64));
    }

    v3 = (a2 + 40);
    std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

BOOL std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  end = p_match->__matches_.__end_;
  v9 = &__x->__match_;
  v7 = __x->__match_.__matches_.__begin_;
  v8 = v9->__matches_.__end_;
  v10 = v8 == v7 && end == begin;
  if (end != begin && v8 != v7)
  {
    return this->__begin_.__i_ == __x->__begin_.__i_ && this->__end_.__i_ == __x->__end_.__i_ && this->__pregex_ == __x->__pregex_ && this->__flags_ == __x->__flags_ && std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](begin, v7) == 0;
  }

  return v10;
}

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&v15, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v17);
    v5 = v15;
    v4 = v16;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v6 = HIBYTE(v20);
  if (v20 >= 0)
  {
    v7 = HIBYTE(v20);
  }

  else
  {
    v7 = v19;
  }

  if (v20 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v3 & 0x80u) == 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v5;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(p_p, v10, v11);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_24;
  }

  operator delete(__p);
LABEL_24:
  v13 = v9 < v7;
  if (v7 < v9)
  {
    v13 = -1;
  }

  if (v12)
  {
    return v12;
  }

  else
  {
    return v13;
  }
}

void sub_22297917C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, v7, a3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v8 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = v8 + 1;
      v11 = v8 + 1;
      do
      {
        v8 = v11;
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, v11, a3);
      }

      while (v8 != v11);
      if (v10 == v8)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v8 != a3);
    return v8;
  }

  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  if (*a2 == 94)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    ++v3;
  }

  if (v3 != v4)
  {
    do
    {
      v6 = v3;
      v3 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(this, v3, v4);
    }

    while (v6 != v3);
    if (v6 != v4 && v6 + 1 == v4 && *v6 == 36)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
      ++v6;
    }

    if (v6 != v4)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v4;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a3;
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  if (v7 != v3)
  {
    do
    {
      if (*v8 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, v8 + 1, v3);
      if (v8 + 1 == v10)
      {
        goto LABEL_8;
      }

      v8 = v10;
      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v8 != v3);
    return v8;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v6, a3);
  }

  while (v7 != v6);
  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
LABEL_2:
    v8 = a2;
    goto LABEL_3;
  }

  v8 = a2;
  v9 = *a2;
  v10 = (v9 - 36);
  if (v10 > 0x3A)
  {
    goto LABEL_37;
  }

  if (((1 << (v9 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_9;
  }

  if (v10 == 5)
  {
    v8 = a2;
    if (*(a1 + 36))
    {
      goto LABEL_9;
    }

    v19 = 41;
  }

  else
  {
LABEL_37:
    if ((v9 - 123) < 2)
    {
      goto LABEL_9;
    }

    v19 = *a2;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v19);
  v8 = a2 + 1;
LABEL_9:
  if (v8 != a2)
  {
    goto LABEL_18;
  }

  if (a2 == a3)
  {
    goto LABEL_2;
  }

  v11 = (a2 + 1);
  if (a2 + 1 == a3 || *a2 != 92)
  {
    goto LABEL_2;
  }

  v12 = *v11;
  v13 = *v11;
  if ((v12 - 36) <= 0x3A && ((1 << (v12 - 36)) & 0x5800000080004F1) != 0 || (v12 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v13);
    v8 = a2 + 2;
  }

  else if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
  }

  else if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v13))
  {
    v8 = a2 + 2;
  }

  else
  {
    v8 = a2;
  }

LABEL_3:
  if (v8 == a2)
  {
    if (a2 != a3 && *v8 == 46)
    {
      operator new();
    }

    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

LABEL_18:
  if (v8 == a2 && v8 != a3)
  {
    v14 = *v8;
    switch(v14)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v15 = *(a1 + 28);
        ++*(a1 + 36);
        v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v8 + 1, a3);
        if (v16 == a3 || (v8 = v16, *v16 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v15);
        --*(a1 + 36);
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
        break;
      default:
        goto LABEL_29;
    }

    ++v8;
  }

LABEL_29:
  if (v8 == a2)
  {
    return a2;
  }

  v17 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, v6, (v7 + 1), v17);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = a6;
  v8 = a5;
  v11 = a1;
  v12 = *(a1 + 24) & 0x1F0;
  v13 = *a2;
  if (v13 > 0x3E)
  {
    if (v13 == 63)
    {
      v6 = a2 + 1;
      if (v12)
      {
        v20 = 1;
      }

      else
      {
        v20 = v6 == a3;
      }

      if (!v20 && *v6 == 63)
      {
        v6 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_32;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_44;
    }

    v6 = a2;
    if (v13 != 123)
    {
      return v6;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(a2 + 1, a3, &__max);
    if (v15 != v16)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v6 = v16 + 1;
            if (!v12 && v6 != a3 && *v6 == 63)
            {
              v6 = v16 + 2;
              v14 = __max;
              a5 = v8;
              a6 = v7;
              a1 = v11;
              v18 = __max;
LABEL_32:
              v21 = __s;
              v22 = 0;
LABEL_45:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v6;
            }

            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            v18 = __max;
LABEL_44:
            v21 = __s;
            v22 = 1;
            goto LABEL_45;
          }

          goto LABEL_57;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_57;
        }

        if (*v23 == 125)
        {
          v6 = v16 + 2;
          if (!v12 && v6 != a3 && *v6 == 63)
          {
            v6 = v16 + 3;
            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            goto LABEL_25;
          }

          v14 = __max;
          a5 = v8;
          a6 = v7;
          a1 = v11;
LABEL_35:
          v18 = -1;
          goto LABEL_44;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v16 + 1, a3, &v27);
        if (v23 != v25 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v6 = v25 + 1;
            v22 = 1;
            if (!v12 && v6 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v6 = v25 + 2;
              }
            }

            a5 = v8;
            a6 = v7;
            a1 = v11;
            v21 = __s;
            goto LABEL_45;
          }

          goto LABEL_57;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_57:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v13 == 42)
  {
    v6 = a2 + 1;
    if (v12)
    {
      v19 = 1;
    }

    else
    {
      v19 = v6 == a3;
    }

    if (!v19 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_25;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_35;
  }

  v6 = a2;
  if (v13 == 43)
  {
    v6 = a2 + 1;
    if (!v12 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_25:
      v18 = -1;
      goto LABEL_32;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_35;
  }

  return v6;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result == a2)
      {
        return a2;
      }

      else
      {
        while (1)
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          if (++result == a2)
          {
            return a2;
          }
        }
      }
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_122;
    }

    v5 = (a2[1] == 94 ? a2 + 2 : a2 + 1);
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_122;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
LABEL_13:
      if (v8 != a3)
      {
        if (*v8 == 45)
        {
          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
          ++v8;
        }

        if (v8 != a3 && *v8 == 93)
        {
          return v8 + 1;
        }
      }

LABEL_122:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    while (1)
    {
      v8 = v5;
      v10 = v5;
      if (v5 == a3)
      {
        goto LABEL_107;
      }

      v11 = *v5;
      v10 = v5;
      if (v11 == 93)
      {
        goto LABEL_107;
      }

      v12 = (v5 + 1);
      memset(&v37, 0, sizeof(v37));
      if (v8 + 1 == a3 || v11 != 91)
      {
LABEL_31:
        v5 = *(a1 + 24) & 0x1F0;
        v10 = v8;
        goto LABEL_32;
      }

      v13 = *v12;
      if (v13 == 46)
      {
        break;
      }

      if (v13 == 58)
      {
        LOWORD(__src[0]) = 23866;
        v23 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, __src, __src + 2);
        if (v23 == a3)
        {
LABEL_123:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
        }

        v15 = v23;
        v24 = *(a1 + 24);
        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v8 + 2, v23, v23 - (v8 + 2));
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        (*(**(a1 + 8) + 48))(*(a1 + 8), p_p, p_p + size);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &__p;
        }

        else
        {
          v27 = __p.__r_.__value_.__r.__words[0];
        }

        classname = std::__get_classname(v27, v24 & 1);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (!classname)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
        }

        v29 = 0;
        *(v7 + 160) |= classname;
      }

      else
      {
        if (v13 != 61)
        {
          goto LABEL_31;
        }

        LOWORD(v36.__r_.__value_.__l.__data_) = 23869;
        v14 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, &v36, &v36.__r_.__value_.__s.__data_[2]);
        if (v14 == a3)
        {
          goto LABEL_123;
        }

        v15 = v14;
        std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(&__p, a1, v8 + 2, v14);
        v16 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v16 = __p.__r_.__value_.__l.__size_;
          if (!__p.__r_.__value_.__l.__size_)
          {
LABEL_124:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
          }

          v17 = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (!*(&__p.__r_.__value_.__s + 23))
          {
            goto LABEL_124;
          }

          v17 = &__p;
        }

        std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(__src, a1, v17, v17 + v16);
        v31 = HIBYTE(v39);
        if (v39 < 0)
        {
          v31 = __src[1];
        }

        if (v31)
        {
          std::vector<std::string>::push_back[abi:ne200100](v7 + 136, __src);
        }

        else
        {
          v32 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v32 = __p.__r_.__value_.__l.__size_;
          }

          if (v32 == 2)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v34 = &__p;
            }

            else
            {
              v34 = __p.__r_.__value_.__r.__words[0];
            }

            std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, v34->__r_.__value_.__s.__data_[0], v34->__r_.__value_.__s.__data_[1]);
          }

          else
          {
            if (v32 != 1)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v33 = &__p;
            }

            else
            {
              v33 = __p.__r_.__value_.__r.__words[0];
            }

            std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, v33->__r_.__value_.__s.__data_[0]);
          }
        }

        if (SHIBYTE(v39) < 0)
        {
          operator delete(__src[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v29 = 0;
      }

      v5 = (v15 + 2);
      v10 = v8;
LABEL_105:
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
        if ((v29 & 1) == 0)
        {
          goto LABEL_108;
        }

        goto LABEL_107;
      }

      if (v29)
      {
        goto LABEL_107;
      }

LABEL_108:
      if (v8 == v5)
      {
        goto LABEL_13;
      }
    }

    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v8 + 2, a3, &v37);
    v5 = *(a1 + 24) & 0x1F0;
    v30 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = v37.__r_.__value_.__l.__size_;
    }

    if (!v30)
    {
LABEL_32:
      if ((v5 | 0x40) == 0x40)
      {
        v18 = *v10;
        if (v18 == 92)
        {
          if (v5)
          {
            v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v10 + 1, a3, &v37);
          }

          else
          {
            v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v10 + 1, a3, &v37, v7);
            v5 = 0;
          }

          goto LABEL_38;
        }
      }

      else
      {
        LOBYTE(v18) = *v10;
      }

      std::string::operator=(&v37, v18);
      ++v10;
    }

LABEL_38:
    if (v10 != a3)
    {
      v19 = *v10;
      if (v19 != 93)
      {
        v21 = v10 + 1;
        if (v10 + 1 != a3 && v19 == 45 && *v21 != 93)
        {
          memset(&__p, 0, sizeof(__p));
          v10 += 2;
          if (v21 + 1 != a3 && *v21 == 91 && *v10 == 46)
          {
            v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v21 + 2, a3, &__p);
LABEL_115:
            v10 = v22;
            goto LABEL_116;
          }

          if ((v5 | 0x40) == 0x40)
          {
            LODWORD(v21) = *v21;
            if (v21 == 92)
            {
              if (v5)
              {
                v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v10, a3, &__p);
              }

              else
              {
                v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v10, a3, &__p, v7);
              }

              goto LABEL_115;
            }
          }

          else
          {
            LOBYTE(v21) = *v21;
          }

          std::string::operator=(&__p, v21);
LABEL_116:
          *__src = *&v37.__r_.__value_.__l.__data_;
          v35 = v37.__r_.__value_.__r.__words[2];
          v36 = __p;
          memset(&v37, 0, sizeof(v37));
          v39 = v35;
          memset(&__p, 0, sizeof(__p));
          std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v7, __src, &v36);
          if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v36.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v39) < 0)
          {
            operator delete(__src[0]);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_75;
        }
      }
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v37.__r_.__value_.__l.__size_)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
LABEL_107:
        v5 = v10;
        goto LABEL_108;
      }

      if (v37.__r_.__value_.__l.__size_ != 1)
      {
        v20 = v37.__r_.__value_.__r.__words[0];
LABEL_74:
        std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, v20->__r_.__value_.__s.__data_[0], v20->__r_.__value_.__s.__data_[1]);
        goto LABEL_75;
      }

      v20 = v37.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&v37.__r_.__value_.__s + 23))
      {
        goto LABEL_107;
      }

      v20 = &v37;
      if (HIBYTE(v37.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_74;
      }
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, v20->__r_.__value_.__s.__data_[0]);
LABEL_75:
    v29 = 1;
    goto LABEL_105;
  }

  return a2;
}

void sub_22297A590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v15 = 23854;
  v8 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(a2, a3, &v15, &v16);
  if (v8 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = v8;
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(&v13, a1, a2, v8);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v13;
  v10 = v14;
  *(a4 + 16) = v14;
  v11 = HIBYTE(v10);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a4 + 8);
  }

  if (v11 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v9 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        v9 = this;
        v10 = 8;
LABEL_19:
        std::string::operator=(v9, v10);
        return a2 + 1;
      }

      if (v6 != 100)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_21:
        *(a5 + 164) = v7;
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
    }

    v9 = this;
    v10 = 0;
    goto LABEL_19;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_21;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5);
    return a2 + 1;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_55:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 <= 0x65)
  {
    if (*a2 <= 0x5Bu)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_32;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v7 = 7;
          goto LABEL_31;
        }

        v7 = 7;
        goto LABEL_51;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v7 = 8;
LABEL_31:
          std::string::operator=(v6, v7);
          return a2 + 1;
        }

        v7 = 8;
        goto LABEL_51;
      }

      goto LABEL_32;
    }

    v7 = v5;
    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_51;
  }

  if (*a2 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v7 = 12;
        goto LABEL_31;
      }

      v7 = 12;
      goto LABEL_51;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v7 = 10;
        goto LABEL_31;
      }

      v7 = 10;
      goto LABEL_51;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          v6 = this;
          v7 = 13;
          goto LABEL_31;
        }

        v7 = 13;
        goto LABEL_51;
      case 't':
        if (this)
        {
          v6 = this;
          v7 = 9;
          goto LABEL_31;
        }

        v7 = 9;
        goto LABEL_51;
      case 'v':
        if (this)
        {
          v6 = this;
          v7 = 11;
          goto LABEL_31;
        }

        v7 = 11;
LABEL_51:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
        return a2 + 1;
    }
  }

LABEL_32:
  if ((v5 & 0xF8) != 0x30)
  {
    goto LABEL_55;
  }

  v8 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3)
  {
    if ((*v9 & 0xF8) != 0x30)
    {
      goto LABEL_42;
    }

    v8 = *v9 + 8 * v8 - 48;
    if (a2 + 2 != a3)
    {
      v10 = a2[2];
      v11 = v10 & 0xF8;
      v12 = v10 + 8 * v8 - 48;
      if (v11 == 48)
      {
        v9 = a2 + 3;
      }

      else
      {
        v9 = a2 + 2;
      }

      if (v11 == 48)
      {
        v8 = v12;
      }

      goto LABEL_42;
    }
  }

  v9 = a3;
LABEL_42:
  if (this)
  {
    std::string::operator=(this, v8);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  return v9;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 <= 0x71u)
  {
    if (*a2 > 0x65u)
    {
      if (v5 == 102)
      {
        if (!this)
        {
          v7 = 12;
          goto LABEL_67;
        }

        v8 = this;
        v7 = 12;
        goto LABEL_66;
      }

      if (v5 == 110)
      {
        if (!this)
        {
          v7 = 10;
          goto LABEL_67;
        }

        v8 = this;
        v7 = 10;
        goto LABEL_66;
      }

      goto LABEL_62;
    }

    if (v5 != 48)
    {
      if (v5 != 99)
      {
        if (v5 == 95)
        {
          goto LABEL_70;
        }

        goto LABEL_62;
      }

      v4 = (a2 + 1);
      if (a2 + 1 != a3 && *v4 >= 65)
      {
        v6 = *v4;
        if (v6 < 0x5B || (v6 - 97) <= 0x19u)
        {
          v7 = v6 & 0x1F;
          if (this)
          {
LABEL_65:
            v8 = this;
            goto LABEL_66;
          }

LABEL_67:
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
          return ++v4;
        }
      }

LABEL_70:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    if (!this)
    {
      v7 = 0;
      goto LABEL_67;
    }

    v8 = this;
    v7 = 0;
LABEL_66:
    std::string::operator=(v8, v7);
    return ++v4;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 != 114)
    {
      if (v5 == 116)
      {
        if (!this)
        {
          v7 = 9;
          goto LABEL_67;
        }

        v8 = this;
        v7 = 9;
        goto LABEL_66;
      }

LABEL_62:
      if ((v5 & 0x80) != 0 || (a1->__traits_.__ct_->__tab_[v5] & 0x500) == 0)
      {
        v7 = *a2;
        if (this)
        {
          goto LABEL_65;
        }

        goto LABEL_67;
      }

      goto LABEL_70;
    }

    if (!this)
    {
      v7 = 13;
      goto LABEL_67;
    }

    v8 = this;
    v7 = 13;
    goto LABEL_66;
  }

  if (v5 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_70;
    }

    v9 = a2[1];
    if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
    {
      goto LABEL_70;
    }

    v4 = (a2 + 2);
    if (a2 + 2 == a3)
    {
      goto LABEL_70;
    }

    v10 = *v4;
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
    {
      goto LABEL_70;
    }

    goto LABEL_39;
  }

  if (v5 == 118)
  {
    if (!this)
    {
      v7 = 11;
      goto LABEL_67;
    }

    v8 = this;
    v7 = 11;
    goto LABEL_66;
  }

  if (v5 != 120)
  {
    goto LABEL_62;
  }

LABEL_39:
  if (v4 + 1 == a3)
  {
    goto LABEL_70;
  }

  v11 = v4[1];
  v12 = -48;
  if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
  {
    v11 |= 0x20u;
    if ((v11 - 97) >= 6u)
    {
      goto LABEL_70;
    }

    v12 = -87;
  }

  if (v4 + 2 == a3)
  {
    goto LABEL_70;
  }

  v13 = v4[2];
  v14 = -48;
  if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
  {
    v13 |= 0x20u;
    if ((v13 - 97) >= 6u)
    {
      goto LABEL_70;
    }

    v14 = -87;
  }

  v15 = v14 + v13 + 16 * (v12 + v11);
  if (this)
  {
    std::string::operator=(this, v15);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v15);
  }

  v4 += 3;
  return v4;
}

unsigned __int8 *std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(unsigned __int8 *result, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4 - a3;
  if (a4 != a3)
  {
    if (a2 - result < v4)
    {
      return a2;
    }

    v5 = a2 - v4 + 1;
    if (v5 == result)
    {
      return a2;
    }

    else
    {
      v8 = *a3;
      v6 = a3 + 1;
      v7 = v8;
      while (*result != v7)
      {
LABEL_11:
        if (++result == v5)
        {
          return a2;
        }
      }

      v9 = result + 1;
      v10 = v6;
      while (v10 != a4)
      {
        v12 = *v9++;
        v11 = v12;
        v13 = *v10++;
        if (v11 != v13)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

void std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_22297AEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a3;
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v9 = a2 + 1;
  v8 = *a2;
  if (a2 + 1 == a3 && v8 == 36 || ((v8 - 46) <= 0x2E ? (v10 = ((1 << (v8 - 46)) & 0x600000000001) == 0) : (v10 = 1), !v10))
  {
    v11 = a2;
    if (v9 != a3)
    {
      v12 = *a2;
      if (v12 != 92)
      {
LABEL_17:
        if (v12 == 46)
        {
          operator new();
        }

        goto LABEL_19;
      }

      v13 = *v9;
      if ((v13 - 36) > 0x3A || ((1 << (v13 - 36)) & 0x580000000000441) == 0)
      {
LABEL_19:
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, v3, v4);
        goto LABEL_20;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v13);
      v11 = v3 + 2;
      if (v3 + 2 != v3)
      {
        goto LABEL_41;
      }
    }

    v12 = *v11;
    goto LABEL_17;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  v11 = v3 + 1;
LABEL_20:
  if (v11 == v3)
  {
    if (v9 == v4 || *v11 != 92)
    {
      return v3;
    }

    v15 = v3[1];
    if (v15 == 40)
    {
      v16 = (v3 + 2);
    }

    else
    {
      v16 = v11;
    }

    if (v16 == v3)
    {
      if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v15))
      {
        v11 = v3 + 2;
      }

      goto LABEL_41;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
    v17 = a1->__marked_count_;
    do
    {
      v18 = v16;
      v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(a1, v16, v4);
    }

    while (v18 != v16);
    v11 = v4;
    if (v18 != v4)
    {
      if (v18 + 1 == v4 || *v18 != 92)
      {
        goto LABEL_76;
      }

      if (v18[1] == 41)
      {
        v11 = v18 + 2;
      }

      else
      {
        v11 = v18;
      }
    }

    if (v11 != v18)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v17);
      goto LABEL_41;
    }

LABEL_76:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_41:
  if (v11 != v3)
  {
    if (v11 == v4)
    {
      return v4;
    }

    v19 = a1->__marked_count_ + 1;
    v20 = *v11;
    if (v20 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
      return v11 + 1;
    }

    if (v11 + 1 == v4 || v20 != 92)
    {
      return v11;
    }

    v21 = v11[1] == 123 ? v11 + 2 : v11;
    v3 = v11;
    if (v11 != v21)
    {
      v30 = 0;
      v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v21, v4, &v30);
      if (v22 == v21)
      {
        goto LABEL_78;
      }

      if (v22 != v4)
      {
        v23 = *v22;
        if (v23 == 44)
        {
          v29 = -1;
          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v22 + 1, v4, &v29);
          if (v24 != v4)
          {
            if (v24 + 1 == v4 || *v24 != 92)
            {
              goto LABEL_77;
            }

            if (v24[1] == 125)
            {
              v4 = v24 + 2;
            }

            else
            {
              v4 = v24;
            }
          }

          if (v4 != v24)
          {
            v26 = v29;
            v25 = v30;
            if (v29 == -1)
            {
              v27 = a1;
              v26 = -1;
              goto LABEL_75;
            }

            if (v29 >= v30)
            {
              v27 = a1;
LABEL_75:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(v27, v25, v26, end, marked_count + 1, v19, 1);
              return v4;
            }

LABEL_78:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }
        }

        else if (v22 + 1 != v4 && v23 == 92)
        {
          v4 = v22[1] == 125 ? v22 + 2 : v22;
          if (v22 != v4)
          {
            v25 = v30;
            v27 = a1;
            v26 = v30;
            goto LABEL_75;
          }
        }
      }

LABEL_77:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
LABEL_3:
    v8 = a2;
    goto LABEL_4;
  }

  v12 = *a2;
  if (v12 > 0x5B)
  {
    if (v12 == 92)
    {
      if (a2 + 1 != a3)
      {
        v16 = a2[1];
        if (v16 == 66)
        {
          v17 = 1;
        }

        else
        {
          if (v16 != 98)
          {
            goto LABEL_28;
          }

          v17 = 0;
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, v17);
        v9 = a2 + 2;
        goto LABEL_29;
      }

LABEL_28:
      v9 = a2;
      goto LABEL_29;
    }

    v9 = a2;
    if (v12 != 94)
    {
      goto LABEL_29;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
LABEL_23:
    v9 = a2 + 1;
    goto LABEL_29;
  }

  if (v12 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
    goto LABEL_23;
  }

  v9 = a2;
  if (v12 != 40)
  {
    goto LABEL_29;
  }

  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_28;
  }

  v13 = a2[2];
  if (v13 == 33)
  {
    std::regex_traits<char>::regex_traits(&v40.__traits_);
    memset(&v40.__flags_, 0, 40);
    v40.__flags_ = a1->__flags_;
    v14 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v40, a2 + 3, a3);
    v27 = v40.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(a1, &v40, 1, a1->__marked_count_);
    a1->__marked_count_ += v27;
    if (v14 == a3 || *v14 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_59;
  }

  if (v13 != 61)
  {
    goto LABEL_28;
  }

  std::regex_traits<char>::regex_traits(&v40.__traits_);
  memset(&v40.__flags_, 0, 40);
  v40.__flags_ = a1->__flags_;
  v14 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v40, a2 + 3, a3);
  v15 = v40.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(a1, &v40, 0, a1->__marked_count_);
  a1->__marked_count_ += v15;
  if (v14 == a3 || *v14 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_59:
  v9 = v14 + 1;
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v40.__traits_.__loc_);
LABEL_29:
  if (v9 != a2)
  {
    return v9;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  if (a2 == a3)
  {
    goto LABEL_3;
  }

  v18 = *a2;
  if (v18 <= 0x3E)
  {
    v8 = a2;
    if (*a2 <= 0x28u)
    {
      if (v18 == 36)
      {
        goto LABEL_4;
      }

      if (v18 == 40)
      {
        if (a2 + 1 != a3)
        {
          if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
          {
            ++a1->__open_count_;
            v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2 + 3, a3);
            if (v23 != a3 && *v23 == 41)
            {
              --a1->__open_count_;
              v8 = v23 + 1;
              goto LABEL_4;
            }
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
            v24 = a1->__marked_count_;
            ++a1->__open_count_;
            v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2 + 1, a3);
            if (v25 != a3)
            {
              v26 = v25;
              if (*v25 == 41)
              {
                std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v24);
                --a1->__open_count_;
                v8 = v26 + 1;
                goto LABEL_4;
              }
            }
          }
        }

        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }
    }

    else
    {
      if (v18 == 41)
      {
        goto LABEL_4;
      }

      if (v18 == 46)
      {
        operator new();
      }

      if (v18 - 42 < 2)
      {
LABEL_101:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }
    }

LABEL_74:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v18);
    v8 = a2 + 1;
    goto LABEL_4;
  }

  v19 = v18 - 92;
  if (v19 > 0x21)
  {
LABEL_71:
    if (v18 == 91)
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
      goto LABEL_4;
    }

    if (v18 == 63)
    {
      goto LABEL_101;
    }

    goto LABEL_74;
  }

  v8 = a2;
  if (((1 << (v18 - 92)) & 0x300000006) != 0)
  {
    goto LABEL_4;
  }

  if (v18 != 92)
  {
    if (v19 == 31)
    {
      goto LABEL_101;
    }

    goto LABEL_71;
  }

  v20 = a2 + 1;
  if (a3 == a2 + 1)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v21 = *v20;
  v22 = v21 - 48;
  if (v21 == 48)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v22);
    v8 = a2 + 2;
    goto LABEL_78;
  }

  v8 = a2 + 1;
  if ((v21 - 49) <= 8)
  {
    v8 = a2 + 2;
    if (a2 + 2 == a3)
    {
      v8 = a3;
    }

    else
    {
      while (1)
      {
        v28 = *v8;
        if ((v28 - 48) > 9)
        {
          break;
        }

        if (v22 >= 0x19999999)
        {
          goto LABEL_103;
        }

        ++v8;
        v22 = v28 + 10 * v22 - 48;
        if (v8 == a3)
        {
          v8 = a3;
          break;
        }
      }

      if (!v22)
      {
LABEL_103:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }
    }

    if (v22 > marked_count)
    {
      goto LABEL_103;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v22);
  }

LABEL_78:
  if (v20 != v8)
  {
    goto LABEL_4;
  }

  v29 = *v20;
  if (v29 <= 0x63)
  {
    if (v29 != 68)
    {
      if (v29 != 83)
      {
        v8 = a2 + 1;
        if (v29 != 87)
        {
          goto LABEL_97;
        }

        v30 = a1;
        v31 = 1;
        goto LABEL_91;
      }

      v37 = a1;
      v38 = 1;
      goto LABEL_94;
    }

    v32 = a1;
    v33 = 1;
    goto LABEL_89;
  }

  if (v29 != 119)
  {
    if (v29 == 115)
    {
      v37 = a1;
      v38 = 0;
LABEL_94:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v37, v38);
      v35 = started->__mask_ | 0x4000;
      goto LABEL_95;
    }

    v8 = a2 + 1;
    if (v29 != 100)
    {
      goto LABEL_97;
    }

    v32 = a1;
    v33 = 0;
LABEL_89:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v32, v33);
    v35 = started->__mask_ | 0x400;
LABEL_95:
    started->__mask_ = v35;
    goto LABEL_96;
  }

  v30 = a1;
  v31 = 0;
LABEL_91:
  v36 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v30, v31);
  v36->__mask_ |= 0x500u;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v36, 95);
LABEL_96:
  v8 = a2 + 2;
LABEL_97:
  if (v20 == v8)
  {
    v39 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
    if (v39 == v20)
    {
      v8 = a2;
    }

    else
    {
      v8 = v39;
    }
  }

LABEL_4:
  v9 = a2;
  if (v8 == a2)
  {
    return v9;
  }

  v10 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, end, marked_count + 1, v10);
}

void nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::getMulticardinalVocabPathGivenSpanVocabPath(uint64_t a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v5, a2);
  std::__fs::filesystem::path::parent_path[abi:ne200100](&v5, __p);
  std::__fs::filesystem::operator/[abi:ne200100](a3, __p, (a1 + 176));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_22297B94C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::getVersionYamlPathGivenSpanVocabPath(uint64_t a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v5, a2);
  std::__fs::filesystem::path::parent_path[abi:ne200100](&v5, __p);
  std::__fs::filesystem::operator/[abi:ne200100](a3, __p, (a1 + 272));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_22297B9F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_22297BBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22297BF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&__p);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a15);

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule::~BertPreE5MLModule(void **this)
{
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::~EspressoModule((this + 54));
  nlv4_inference_orchestrator::inference_engine::BertModule::~BertModule(this);

  JUMPOUT(0x223DC4D00);
}

{
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::~EspressoModule((this + 54));

  nlv4_inference_orchestrator::inference_engine::BertModule::~BertModule(this);
}

void non-virtual thunk tonlv4_inference_orchestrator::inference_engine::BertPreE5MLModule::~BertPreE5MLModule(nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule *this)
{
  v1 = (this - 432);
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::~EspressoModule(this);

  nlv4_inference_orchestrator::inference_engine::BertModule::~BertModule(v1);
}

uint64_t nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule::determineAndValidateModelType(nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule *this)
{
  result = (*(*this + 192))(this);
  *(this + 512) = result;
  if (result)
  {
    if (!*(this + 2))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v4, "Feature mask rank unset for SubOwl model.");
      std::runtime_error::runtime_error(exception, &v4);
      exception->__vftable = &unk_2835E6260;
    }
  }

  return result;
}

void sub_22297C584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void nlv4_inference_orchestrator::inference_engine::BertModuleLoadingError::~BertModuleLoadingError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x223DC4D00);
}

uint64_t nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule::isSubwordEmbeddingsModel(nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule *this)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = (this + 16);
  v3 = (*(*this + 8))(this, this + 112);
  if (nlv4_inference_orchestrator::inference_engine::BertModule::isRequiresSubwordEmbeddingsOutputTensorNameValid(this, v2))
  {
    v11 = 0;
    v12[0] = 0;
    v12[48] = 0;
    v13[0] = 0;
    v13[48] = 0;
    v13[56] = 0;
    v13[104] = 0;
    v13[112] = 0;
    v13[160] = 0;
    v13[168] = 0;
    v13[216] = 0;
    __p = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
    std::optional<snlp::common::tensor::InferenceTensor>::operator=[abi:ne200100](v12);
    std::optional<snlp::common::tensor::InferenceTensor>::operator=[abi:ne200100](v13);
    v14[0] = 1;
    v14[1] = v3;
    memset(v6, 0, sizeof(v6));
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v6, v14, v15, 2uLL);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_22297CA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  nlv4_inference_orchestrator::inference_engine::BertModuleInputType::~BertModuleInputType(&a37);
  _Unwind_Resume(a1);
}

uint64_t std::optional<snlp::common::tensor::InferenceTensor>::operator=[abi:ne200100]<snlp::common::tensor::InferenceTensor,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = *(a1 + 24);
    if (v5)
    {
      *(a1 + 32) = v5;
      operator delete(v5);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
    }

    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 48) = 1;
  }

  return a1;
}

uint64_t nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule::setInputTensors(nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule *this, nlv4_inference_orchestrator::inference_engine::BertModuleInputType *a2)
{
  (*(*this + 200))(this);
  if ((*(a2 + 96) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "Invalid utteranceTokensMask!");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_2835E9238;
  }

  result = (*(*this + 208))(this, a2 + 48);
  if ((*(a2 + 152) & 1) != 0 || *(a2 + 208) == 1)
  {
    v5 = *(this + 2);
    if (v5 == 2)
    {
      if ((*(a2 + 152) & 1) == 0)
      {
        v10 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&v11, "Invalid featurePoolingMask!");
        std::runtime_error::runtime_error(v10, &v11);
        v10->__vftable = &unk_2835E9238;
      }

      v6 = a2 + 104;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      if ((*(a2 + 208) & 1) == 0)
      {
        v9 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&v11, "Invalid featurePoolingMask2D!");
        std::runtime_error::runtime_error(v9, &v11);
        v9->__vftable = &unk_2835E9238;
      }

      v6 = a2 + 160;
    }

    v7 = *(*this + 216);

    return v7(this, v6);
  }

  return result;
}

void sub_22297CDE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule::extractFeaturePoolingRank(nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule *this)
{
  v2 = 0;
  v3 = (this + 208);
  while (1)
  {
    v4 = *(this + 57);
    v5 = *(this + 58);
    input_blob_name = espresso_get_input_blob_name();
    if (!input_blob_name)
    {
      return 0;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, input_blob_name);
    v7 = v17;
    if ((v17 & 0x80u) == 0)
    {
      v8 = v17;
    }

    else
    {
      v8 = __p[1];
    }

    v9 = *(this + 231);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(this + 27);
    }

    if (v8 != v9 || ((v17 & 0x80u) == 0 ? (v11 = __p) : (v11 = __p[0]), v10 >= 0 ? (v12 = v3) : (v12 = *v3), memcmp(v11, v12, v8)))
    {
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_18;
      }

LABEL_17:
      operator delete(__p[0]);
      goto LABEL_18;
    }

    v13 = *(this + 57);
    v14 = *(this + 58);
    espresso_network_query_blob_shape();
    nlv4_inference_orchestrator::inference_engine::assertValidFeaturePoolingRank(0);
    if ((v17 & 0x80) != 0)
    {
      goto LABEL_17;
    }

LABEL_18:
    ++v2;
  }
}

void sub_22297CF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule::extractSubwordFeaturesOutputName@<X0>(nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, "");
  for (i = 0; ; ++i)
  {
    v5 = *(this + 57);
    v6 = *(this + 58);
    result = espresso_get_output_blob_name();
    if (!result)
    {
      break;
    }

    std::string::basic_string[abi:ne200100]<0>(&__str, result);
    if (nlv4_inference_orchestrator::inference_engine::BertModule::isSubwordFeatureExtractionOutputTensorNameValid(this, &__str.__r_.__value_.__l.__data_))
    {
      std::string::operator=(a2, &__str);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  return result;
}

void sub_22297CFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

char *nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule::extractSentenceFeaturesOutputName@<X0>(nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, "");
  for (i = 0; ; ++i)
  {
    v5 = *(this + 57);
    v6 = *(this + 58);
    result = espresso_get_output_blob_name();
    if (!result)
    {
      break;
    }

    std::string::basic_string[abi:ne200100]<0>(&__str, result);
    if (nlv4_inference_orchestrator::inference_engine::BertModule::isSentenceFeaturesOutputTensorNameValid(this, &__str.__r_.__value_.__l.__data_))
    {
      std::string::operator=(a2, &__str);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  return result;
}

void sub_22297D0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

char *nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule::extractRequiresSubwordEmbeddingsOutputName@<X0>(nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, "");
  for (i = 0; ; ++i)
  {
    v5 = *(this + 57);
    v6 = *(this + 58);
    result = espresso_get_output_blob_name();
    if (!result)
    {
      break;
    }

    std::string::basic_string[abi:ne200100]<0>(&__str, result);
    if (nlv4_inference_orchestrator::inference_engine::BertModule::isRequiresSubwordEmbeddingsOutputTensorNameValid(this, &__str.__r_.__value_.__l.__data_))
    {
      std::string::operator=(a2, &__str);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  return result;
}

void sub_22297D18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

BOOL nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule::extractTokenFeaturesOutputName@<W0>(nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, "");
  for (i = 0; ; ++i)
  {
    v5 = *(this + 57);
    v6 = *(this + 58);
    output_blob_name = espresso_get_output_blob_name();
    if (!output_blob_name)
    {
      break;
    }

    std::string::basic_string[abi:ne200100]<0>(&__str, output_blob_name);
    if (nlv4_inference_orchestrator::inference_engine::BertModule::isFeatureExtractionOutputTensorNameValid(this, &__str.__r_.__value_.__l.__data_))
    {
      std::string::operator=(a2, &__str);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  return nlv4_inference_orchestrator::inference_engine::BertModule::assertValidFeatureExtractionOutputTensorName(this, &a2->__r_.__value_.__l.__data_);
}

void sub_22297D268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule::forward(nlv4_inference_orchestrator::inference_engine::BertPreE5MLModule *this, const nlv4_inference_orchestrator::inference_engine::BertModuleInputType *a2)
{
  v4 = SNLPOSLoggerForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "Executing OWL espresso v1 inference.", v5, 2u);
  }

  nlv4_inference_orchestrator::inference_engine::BertModuleInputType::BertModuleInputType(v5, a2);
  (*(*this + 168))(this, v5);
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::executePlan((this + 432));
  (*(*this + 176))(this);
  nlv4_inference_orchestrator::inference_engine::BertModuleInputType::~BertModuleInputType(v5);
}

void nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::convertMatcherNamesToLabelComponents(void *a1@<X0>, int **a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v6 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v7 = a3;
    do
    {
      v9 = *v6;
      nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::convertMatcherNameToLabelComponent(a1, *v6, &__p);
      if (v35 == 1)
      {
        v11 = *(a4 + 8);
        v10 = *(a4 + 16);
        if (v11 >= v10)
        {
          v17 = (v11 - *a4) >> 5;
          if ((v17 + 1) >> 59)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v18 = v10 - *a4;
          v19 = v18 >> 4;
          if (v18 >> 4 <= (v17 + 1))
          {
            v19 = v17 + 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFE0)
          {
            v20 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          v38 = a4;
          if (v20)
          {
            if (!(v20 >> 59))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v24 = 32 * v17;
          *buf = 0;
          *&buf[8] = v24;
          v25 = 0;
          *&buf[16] = v24;
          v37 = 0;
          *v24 = v9;
          v26 = (v24 + 8);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v26, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            v27 = *&buf[16];
            v24 = *&buf[8];
            v25 = v37;
          }

          else
          {
            *&v26->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
            *(v24 + 24) = *(&__p.__r_.__value_.__l + 2);
            v27 = v24;
          }

          v23 = v27 + 32;
          v28 = *(a4 + 8) - *a4;
          v29 = v24 - v28;
          memcpy((v24 - v28), *a4, v28);
          v30 = *a4;
          *a4 = v29;
          *(a4 + 8) = v23;
          v31 = *(a4 + 16);
          *(a4 + 16) = v25;
          *&buf[16] = v30;
          v37 = v31;
          *buf = v30;
          *&buf[8] = v30;
          std::__split_buffer<std::pair<sirinluinternal::MatchingSpan_MatcherName,std::string>>::~__split_buffer(buf);
        }

        else
        {
          *v11 = v9;
          v12 = (v11 + 8);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v12, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v13 = *&__p.__r_.__value_.__l.__data_;
            *(v11 + 24) = *(&__p.__r_.__value_.__l + 2);
            *&v12->__r_.__value_.__l.__data_ = v13;
          }

          v23 = v11 + 32;
        }

        *(a4 + 8) = v23;
      }

      else
      {
        v14 = SNLPOSLoggerForCategory(4);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *v7;
          if (v15 >= 8)
          {
            v21 = SNLPOSLoggerForCategory(4);
            v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
            v16 = "<UNDEFINED_COMPONENT>";
            if (v22)
            {
              *buf = 136315394;
              *&buf[4] = "<UNDEFINED_COMPONENT>";
              *&buf[12] = 2048;
              *&buf[14] = v15;
              _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
              v16 = "<UNDEFINED_COMPONENT>";
              v7 = a3;
            }
          }

          else
          {
            v16 = off_2784B6F30[v15];
          }

          *buf = 136315394;
          *&buf[4] = v16;
          *&buf[12] = 1024;
          *&buf[14] = v9;
          _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_DEFAULT, "[%s] Warning: encountered unknown span matcher name: %d", buf, 0x12u);
        }
      }

      if (v35 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v6;
    }

    while (v6 != v5);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_22297D81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  v23[1] = v24;
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  __p = v23;
  std::vector<std::pair<sirinluinternal::MatchingSpan_MatcherName,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::convertMatcherNameToLabelComponent(void *a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::find<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>(a1, a2);
  if (v4)
  {
    if (*(v4 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(a3, v4[3], v4[4]);
    }

    else
    {
      v5 = *(v4 + 3);
      a3->__r_.__value_.__r.__words[2] = v4[5];
      *&a3->__r_.__value_.__l.__data_ = v5;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
    a3->__r_.__value_.__s.__data_[0] = 0;
  }

  a3[1].__r_.__value_.__s.__data_[0] = v6;
}

void std::vector<std::pair<sirinluinternal::MatchingSpan_MatcherName,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 4;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<std::pair<sirinluinternal::MatchingSpan_MatcherName,std::string>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::getNamespaceForEntityNode(const siri::ontology::UsoEntityNode *a1@<X1>, std::string *a2@<X8>)
{
  siri::ontology::UsoEntityNode::getIdentifiers(&v11, a1);
  v4 = v11;
  if (v11 == v12)
  {
    v6 = 1;
    if (v11)
    {
LABEL_11:
      v12 = v4;
      operator delete(v4);
    }
  }

  else
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, (*v11 + 48));
    v5 = v10;
    if (v10 == 1)
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(a2, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        v7 = v10;
        v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        a2[1].__r_.__value_.__s.__data_[0] = 1;
        if ((v7 & 1) != 0 && v8 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        *a2 = __p;
        a2[1].__r_.__value_.__s.__data_[0] = 1;
      }
    }

    v4 = v11;
    v6 = v5 ^ 1;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  if (v6)
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_22297DAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17, uint64_t a18)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::getNamespaceForNode(char **a1@<X1>, std::string *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 2))(a1) - 2 >= 3)
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    v4 = **a1;
    if (!v5)
    {
      __cxa_bad_cast();
    }

    nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::getNamespaceForEntityNode(v5, a2);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_22297DCFC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::addExtraEntityInformation(siri::ontology::UsoGraph *a1@<X1>, uint64_t a2@<X2>, std::string *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v24, "common_Setting");
  std::string::basic_string[abi:ne200100]<0>(__p, "|");
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = v25;
  if ((v25 & 0x80u) != 0)
  {
    v8 = v24[1];
  }

  if (v7 != v8 || (v6 >= 0 ? (v9 = a2) : (v9 = *a2), (v25 & 0x80u) == 0 ? (v10 = v24) : (v10 = v24[0]), memcmp(v9, v10, v7)))
  {
    if ((v6 & 0x80) == 0)
    {
LABEL_15:
      *&a3->__r_.__value_.__l.__data_ = *a2;
      a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  siri::ontology::UsoGraph::getNodes(&v20, a1);
  v11 = v20;
  v12 = v21;
  if (v20 == v21)
  {
LABEL_20:
    if (v11)
    {
      v21 = v11;
      operator delete(v11);
    }

    if ((*(a2 + 23) & 0x80) == 0)
    {
      goto LABEL_15;
    }

LABEL_23:
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
    goto LABEL_24;
  }

  while (1)
  {
    nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::getNamespaceForNode(*v11, &v18);
    if (v19 == 1)
    {
      break;
    }

    if (++v11 == v12)
    {
      v11 = v20;
      goto LABEL_20;
    }
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v17, a2, __p);
  if ((v19 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v18;
  }

  else
  {
    v13 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  v15 = std::string::append(&v17, v13, size);
  v16 = *&v15->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&a3->__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v19 == 1 && SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

LABEL_24:
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }
}

void sub_22297DF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v30 - 49) < 0)
  {
    operator delete(*(v30 - 72));
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::getEntityFromUsoGraph(siri::ontology::UsoGraph *this@<X1>, std::string *a2@<X8>)
{
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  siri::ontology::UsoGraph::getNodes(&__p, this);
  size = __p.__r_.__value_.__l.__size_;
  for (i = __p.__r_.__value_.__r.__words[0]; ; i += 8)
  {
    if (i == size)
    {
      v6 = 0;
      goto LABEL_7;
    }

    if ((*(**i + 16))() == 2)
    {
      break;
    }
  }

  (*(**i + 48))(&v8);
  *v11 = v8;
  v12 = v9;
  v6 = 1;
  v13 = 1;
LABEL_7:
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::addExtraEntityInformation(this, v11, &__p);
    *a2 = __p;
    a2[1].__r_.__value_.__s.__data_[0] = 1;
    if (v12 < 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7 == 1)
    {
      operator delete(v11[0]);
    }
  }

  else
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_22297E0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::getLabel(uint64_t a1@<X1>, uint64_t a2@<X2>, std::string *a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64))
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "contactType");
    std::string::basic_string[abi:ne200100]<0>(v22, "emailType");
    std::string::basic_string[abi:ne200100]<0>(v23, "personRelationship");
    std::string::basic_string[abi:ne200100]<0>(v24, "phoneType");
    std::unordered_set<std::string>::unordered_set(__p, &v20, 4);
    for (i = 0; i != -96; i -= 24)
    {
      if (v24[i + 23] < 0)
      {
        operator delete(*&v24[i]);
      }
    }

    v7 = *(a1 + 48);
    if (!v7 || !std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(__p, v7))
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v19);
      v10 = __p[0];
      __p[0] = 0;
      if (v10)
      {
        operator delete(v10);
      }

      v12 = *a2;
      v11 = *(a2 + 8);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v20 = v12;
        v21 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        v12 = *a2;
      }

      else
      {
        v20 = *a2;
        v21 = 0;
      }

      v15 = v12[16];
      operator new();
    }

    v8 = *(a1 + 48);
    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      a3->__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&a3->__r_.__value_.__l.__data_ = v9;
    }

    a3[1].__r_.__value_.__s.__data_[0] = 1;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v19);
    v16 = __p[0];
    __p[0] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v13 = *(a1 + 48);
    if (v13)
    {
      if (*(v13 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(a3, *v13, *(v13 + 1));
      }

      else
      {
        v14 = *v13;
        a3->__r_.__value_.__r.__words[2] = *(v13 + 2);
        *&a3->__r_.__value_.__l.__data_ = v14;
      }

      a3[1].__r_.__value_.__s.__data_[0] = 1;
    }

    else
    {
      a3->__r_.__value_.__s.__data_[0] = 0;
      a3[1].__r_.__value_.__s.__data_[0] = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::makeVocabLabel(const void **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, std::string *a4@<X8>)
{
  if (*(a3 + 24) == 1)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = *(a1 + 23);
    }

    else
    {
      v8 = a1[1];
    }

    v9 = &v30;
    std::string::basic_string[abi:ne200100](&v30, v8 + 1);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v30.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if (*(a1 + 23) >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      memmove(v9, v10, v8);
    }

    *(&v9->__r_.__value_.__l.__data_ + v8) = 43;
    v11 = *(a2 + 23);
    if (v11 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    if (v11 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    v14 = std::string::append(&v30, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v31, "=");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if ((*(a3 + 24) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v18 = *(a3 + 23);
    if (v18 >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    if (v18 >= 0)
    {
      v20 = *(a3 + 23);
    }

    else
    {
      v20 = *(a3 + 8);
    }

    v21 = std::string::append(&v32, v19, v20);
    *a4 = *v21;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      v22 = v30.__r_.__value_.__r.__words[0];
LABEL_49:
      operator delete(v22);
    }
  }

  else
  {
    if (*(a1 + 23) >= 0)
    {
      v23 = *(a1 + 23);
    }

    else
    {
      v23 = a1[1];
    }

    v24 = &v32;
    std::string::basic_string[abi:ne200100](&v32, v23 + 1);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v32.__r_.__value_.__r.__words[0];
    }

    if (v23)
    {
      if (*(a1 + 23) >= 0)
      {
        v25 = a1;
      }

      else
      {
        v25 = *a1;
      }

      memmove(v24, v25, v23);
    }

    *(&v24->__r_.__value_.__l.__data_ + v23) = 43;
    v26 = *(a2 + 23);
    if (v26 >= 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = *a2;
    }

    if (v26 >= 0)
    {
      v28 = *(a2 + 23);
    }

    else
    {
      v28 = *(a2 + 8);
    }

    v29 = std::string::append(&v32, v27, v28);
    *a4 = *v29;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      v22 = v32.__r_.__value_.__r.__words[0];
      goto LABEL_49;
    }
  }
}

void sub_22297E668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::getProcessedSpanLabel(const void **a1@<X1>, const void **a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, int *a5@<X5>, uint64_t a6@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  __p[0] = 0;
  LOBYTE(v53) = 0;
  nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::makeVocabLabel(a2, a3, __p, a6);
  if (v53 == 1 && SHIBYTE(v52) < 0)
  {
    operator delete(*__p);
  }

  __p[0] = 0;
  LOBYTE(v53) = 0;
  nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::makeVocabLabel(a1, a3, __p, &v50);
  if (v53 == 1 && SHIBYTE(v52) < 0)
  {
    operator delete(*__p);
  }

  v11 = std::__string_hash<char>::operator()[abi:ne200100](a4, &v50);
  v12 = a4[1];
  if (!*&v12)
  {
    goto LABEL_23;
  }

  v13 = v11;
  v14 = vcnt_s8(v12);
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.u32[0];
  if (v14.u32[0] > 1uLL)
  {
    v16 = v11;
    if (v11 >= *&v12)
    {
      v16 = v11 % *&v12;
    }
  }

  else
  {
    v16 = (*&v12 - 1) & v11;
  }

  v17 = *(*a4 + 8 * v16);
  if (!v17)
  {
    goto LABEL_23;
  }

  v18 = *v17;
  if (!*v17)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v19 = v18[1];
    if (v13 == v19)
    {
      break;
    }

    if (v15 > 1)
    {
      if (v19 >= *&v12)
      {
        v19 %= *&v12;
      }
    }

    else
    {
      v19 &= *&v12 - 1;
    }

    if (v19 != v16)
    {
      goto LABEL_23;
    }

LABEL_22:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_23;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a4, v18 + 2, &v50.__r_.__value_.__l.__data_))
  {
    goto LABEL_22;
  }

  v21 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v23 = *a5;
    if (v23 >= 8)
    {
      v25 = SNLPOSLoggerForCategory(4);
      v24 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "<UNDEFINED_COMPONENT>";
        *&__p[12] = 2048;
        *&__p[14] = v23;
        _os_log_impl(&dword_22284A000, v25, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", __p, 0x16u);
      }
    }

    else
    {
      v24 = off_2784B6F30[v23];
    }

    v26 = v50.__r_.__value_.__r.__words[0];
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v50;
    }

    v27 = v18 + 5;
    if (*(v18 + 63) < 0)
    {
      v27 = *v27;
    }

    *__p = 136315650;
    *&__p[4] = v24;
    *&__p[12] = 2080;
    *&__p[14] = v26;
    v52 = 2080;
    v53 = v27;
    _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_DEBUG, "[%s] Mapping span label '%s' to span label '%s'", __p, 0x20u);
  }

  v28 = v18[2];
  v29 = *(v18 + 39);
  if (v29 >= 0)
  {
    v28 = (v18 + 2);
  }

  if (v29 >= 0)
  {
    v30 = *(v18 + 39);
  }

  else
  {
    v30 = v18[3];
  }

  v31 = *(a6 + 23);
  v32 = *(a6 + 8);
  if (v31 >= 0)
  {
    v33 = a6;
  }

  else
  {
    v33 = *a6;
  }

  if (v31 >= 0)
  {
    v32 = *(a6 + 23);
  }

  if (v32 && v30)
  {
    v34 = &v28[v30];
    v35 = &v33[v32];
    v36 = v30 - 1;
    v37 = v32 - 1;
    while (1)
    {
      v38 = v35;
      v39 = v28;
      if (v33 != v35)
      {
        v40 = v37;
        v41 = v36;
        v39 = v28;
        v38 = v33;
        do
        {
          if (*v38 != *v39)
          {
            break;
          }

          ++v38;
          ++v39;
          if (!v40)
          {
            break;
          }

          v42 = v41--;
          --v40;
        }

        while (v42);
      }

      if (v39 == v34)
      {
        break;
      }

      ++v33;
      --v37;
      if (v33 == v35)
      {
        goto LABEL_23;
      }
    }

    if (v33 != v38)
    {
      v43 = v18[6];
      v44 = *(v18 + 63);
      v45 = v44 >= 0 ? v18 + 5 : v18[5];
      v46 = v44 >= 0 ? *(v18 + 63) : v18[6];
      std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(__p, v45, v45 + v46, v46);
      v47 = *(a6 + 23) >= 0 ? a6 : *a6;
      v48 = v52 >= 0 ? __p : *__p;
      v49 = v52 >= 0 ? HIBYTE(v52) : *&__p[8];
      std::string::replace(a6, &v33[-v47], v38 - v33, v48, v49);
      if (SHIBYTE(v52) < 0)
      {
        operator delete(*__p);
      }
    }
  }

LABEL_23:
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_22297EAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(exception_object);
}

void snlp::common::espresso_inference::e5ml::selflogging::logMilCompilationFailed(snlp::common::espresso_inference::e5ml::selflogging *a1, uint64_t *a2, _DWORD *a3, _DWORD *a4, uint64_t *a5)
{
  if (*(a5 + 23) >= 0)
  {
    v9 = a5;
  }

  else
  {
    v9 = *a5;
  }

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  if (*a3 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (*a3 == 2);
  }

  if ((*a4 - 1) >= 7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a4;
  }

  v12 = snlp::common::espresso_inference::e5ml::selflogging::objcSISUUIDFromCppUUID(a2);
  v14 = snlp::common::espresso_inference::e5ml::selflogging::convertMetadata(a1, v13);
  [E5MLModuleSELFLoggingUtils logMilCompilationFailedWithMetadata:v14 contextId:v12 acquisitionType:v10 errorCode:v11 errorMessage:v15];
}

void snlp::common::espresso_inference::e5ml::selflogging::logMilCompilationStarted(_BYTE *a1@<X8>)
{
  v3 = +[E5MLModuleSELFLoggingUtils logMilCompilationStarted];
  snlp::common::espresso_inference::e5ml::selflogging::cppUUIDFromObjCSISUUID(v3, a1);
}

void snlp::common::espresso_inference::e5ml::selflogging::logMilCompilationEnded(uint64_t *a1, _DWORD *a2)
{
  if (*a2 != 1)
  {
    v2 = 2 * (*a2 == 2);
  }

  v3 = snlp::common::espresso_inference::e5ml::selflogging::objcSISUUIDFromCppUUID(a1);
  [E5MLModuleSELFLoggingUtils logMilCompilationEnded:"logMilCompilationEnded:acquisitionType:" acquisitionType:?];
}

void snlp::common::espresso_inference::e5ml::selflogging::logMilCompilationFailed(uint64_t *a1, int *a2, unsigned int *a3, uint64_t *a4)
{
  if (*(a4 + 23) >= 0)
  {
    v7 = a4;
  }

  else
  {
    v7 = *a4;
  }

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
  v8 = *a2;
  v9 = *a3;
  v10 = snlp::common::espresso_inference::e5ml::selflogging::objcSISUUIDFromCppUUID(a1);
  if (v9 - 1 >= 7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  if (v8 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2 * (v8 == 2);
  }

  [E5MLModuleSELFLoggingUtils logMilCompilationFailed:v10 acquisitionType:v12 errorCode:v11 errorMessage:v13];
}

void nlv4_inference_orchestrator::inference_engine::TransformerModelBuilder::setupEspressoV1Model(nlv4_inference_orchestrator::inference_engine::TransformerModelBuilder *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  std::__fs::filesystem::operator/[abi:ne200100](&v12.__pn_, this, (this + 88));
  std::__fs::filesystem::__status(&v12, 0);
  v3 = 0;
  if (v11.__pn_.__r_.__value_.__s.__data_[0] && v11.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    std::__fs::filesystem::operator/[abi:ne200100](&v11.__pn_, this, (this + 64));
    std::__fs::filesystem::__status(&v11, 0);
    v4 = !v10.__r_.__value_.__s.__data_[0] || v10.__r_.__value_.__s.__data_[0] == 255;
    v3 = !v4;
    if (SHIBYTE(v11.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__pn_.__r_.__value_.__l.__data_);
    if (v3)
    {
LABEL_13:
      std::__fs::filesystem::operator/[abi:ne200100](&v11.__pn_, this, (this + 88));
      if (SHIBYTE(v11.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v12.__pn_, v11.__pn_.__r_.__value_.__l.__data_, v11.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        v12 = v11;
      }

      std::__fs::filesystem::operator/[abi:ne200100](&__p, this, (this + 64));
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v10, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v10 = __p;
      }

      operator new();
    }
  }

  else if (v3)
  {
    goto LABEL_13;
  }

  std::__fs::filesystem::operator/[abi:ne200100](&v12.__pn_, this, (this + 208));
  std::__fs::filesystem::__status(&v12, 0);
  v5 = 0;
  if (v11.__pn_.__r_.__value_.__s.__data_[0] && v11.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    std::__fs::filesystem::operator/[abi:ne200100](&v11.__pn_, this, (this + 232));
    std::__fs::filesystem::__status(&v11, 0);
    v6 = !v10.__r_.__value_.__s.__data_[0] || v10.__r_.__value_.__s.__data_[0] == 255;
    v5 = !v6;
    if (SHIBYTE(v11.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__pn_.__r_.__value_.__l.__data_);
    if (v5)
    {
LABEL_28:
      std::__fs::filesystem::operator/[abi:ne200100](&v11.__pn_, this, (this + 208));
      if (SHIBYTE(v11.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v12.__pn_, v11.__pn_.__r_.__value_.__l.__data_, v11.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        v12 = v11;
      }

      std::__fs::filesystem::operator/[abi:ne200100](&__p, this, (this + 232));
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v10, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v10 = __p;
      }

      operator new();
    }
  }

  else if (v5)
  {
    goto LABEL_28;
  }

  std::__fs::filesystem::operator/[abi:ne200100](&v12.__pn_, this, (this + 136));
  std::__fs::filesystem::__status(&v12, 0);
  v7 = 0;
  if (v11.__pn_.__r_.__value_.__s.__data_[0] && v11.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    std::__fs::filesystem::operator/[abi:ne200100](&v11.__pn_, this, (this + 112));
    std::__fs::filesystem::__status(&v11, 0);
    v8 = !v10.__r_.__value_.__s.__data_[0] || v10.__r_.__value_.__s.__data_[0] == 255;
    v7 = !v8;
    if (SHIBYTE(v11.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__pn_.__r_.__value_.__l.__data_);
    if (!v7)
    {
      return;
    }

LABEL_55:
    std::__fs::filesystem::operator/[abi:ne200100](&v11.__pn_, this, (this + 136));
    if (SHIBYTE(v11.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v12.__pn_, v11.__pn_.__r_.__value_.__l.__data_, v11.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      v12 = v11;
    }

    std::__fs::filesystem::operator/[abi:ne200100](&__p, this, (this + 112));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v10 = __p;
    }

    operator new();
  }

  if (v7)
  {
    goto LABEL_55;
  }
}

void sub_22297F358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  *v27 = 0;
  _Unwind_Resume(exception_object);
}

void sub_22297F668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 16);
  *(v15 + 16) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(v15 + 8);
  *(v15 + 8) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::TransformerDecoderModule::~TransformerDecoderModule(nlv4_inference_orchestrator::inference_engine::TransformerDecoderModule *this)
{
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::~EspressoModule(this);

  JUMPOUT(0x223DC4D00);
}

void nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule::~TransformerEncoderModule(nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule *this)
{
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::~EspressoModule(this);

  JUMPOUT(0x223DC4D00);
}

void nlv4_inference_orchestrator::inference_engine::BertModule::tryEnableSubwordFeatures(const void **this)
{
  isSubwordFeatureExtractionOutputTensorNameValid = nlv4_inference_orchestrator::inference_engine::BertModule::isSubwordFeatureExtractionOutputTensorNameValid(this, this + 11);
  *(this + 425) = isSubwordFeatureExtractionOutputTensorNameValid;
  if (isSubwordFeatureExtractionOutputTensorNameValid)
  {
    v3 = SNLPOSLoggerForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_22284A000, v3, OS_LOG_TYPE_DEBUG, "Enabling subword features", v4, 2u);
    }
  }
}

BOOL nlv4_inference_orchestrator::inference_engine::BertModule::isSubwordFeatureExtractionOutputTensorNameValid(uint64_t a1, const void **a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = *(a1 + 303);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 288);
  }

  if (v5 == v6)
  {
    v8 = v4 >= 0 ? a2 : *a2;
    v9 = v7 >= 0 ? (a1 + 280) : *(a1 + 280);
    if (!memcmp(v8, v9, v5))
    {
      return 1;
    }
  }

  v10 = *(a1 + 327);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 312);
  }

  if (v5 != v10)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = (a1 + 304);
  }

  else
  {
    v13 = *(a1 + 304);
  }

  return memcmp(v12, v13, v5) == 0;
}

void nlv4_inference_orchestrator::inference_engine::BertModule::tryEnableSentenceFeatures(nlv4_inference_orchestrator::inference_engine::BertModule *this)
{
  *(this + 424) = nlv4_inference_orchestrator::inference_engine::BertModule::isSentenceFeaturesOutputTensorNameValid(this, this + 8);
  if (*(this + 425) == 1)
  {
    v2 = SNLPOSLoggerForCategory(5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_DEBUG, "Enabling sentence features", v3, 2u);
    }
  }
}

BOOL nlv4_inference_orchestrator::inference_engine::BertModule::isSentenceFeaturesOutputTensorNameValid(uint64_t a1, const void **a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = *(a1 + 351);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 336);
  }

  if (v5 == v6)
  {
    v8 = v4 >= 0 ? a2 : *a2;
    v9 = v7 >= 0 ? (a1 + 328) : *(a1 + 328);
    if (!memcmp(v8, v9, v5))
    {
      return 1;
    }
  }

  v10 = *(a1 + 375);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 360);
  }

  if (v5 != v10)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = (a1 + 352);
  }

  else
  {
    v13 = *(a1 + 352);
  }

  return memcmp(v12, v13, v5) == 0;
}

BOOL nlv4_inference_orchestrator::inference_engine::BertModule::isRequiresSubwordEmbeddingsOutputTensorNameValid(uint64_t a1, const void **a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = *(a1 + 183);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 168);
  }

  if (v5 == v6)
  {
    v8 = v4 >= 0 ? a2 : *a2;
    v9 = v7 >= 0 ? (a1 + 160) : *(a1 + 160);
    if (!memcmp(v8, v9, v5))
    {
      return 1;
    }
  }

  v10 = *(a1 + 207);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 192);
  }

  if (v5 != v10)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  v15 = *(a1 + 184);
  v14 = (a1 + 184);
  v13 = v15;
  if (v11 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v13;
  }

  return memcmp(v12, v16, v5) == 0;
}

void snlp::ssu::candidate::builder::generateAppCandidates(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X2>, snlp::ssu::cache::SSUCacheObjectIntentList *a4@<X3>, uint64_t a5@<X8>)
{
  v107[2] = *MEMORY[0x277D85DE8];
  *a5 = *a1;
  *(a5 + 4) = *(a1 + 4);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a5 + 8), *(a1 + 8), *(a1 + 16));
  }

  else
  {
    *(a5 + 8) = *(a1 + 8);
    *(a5 + 24) = *(a1 + 24);
  }

  v10 = a5;
  *(a5 + 32) = *(a1 + 32);
  v85[0] = 0;
  v88 = 0;
  v12 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    for (i = (v12 + 88); i != v11; i = (i + 88))
    {
      if (*(v12 + 4) < *(i + 4) || *(v12 + 3) < *(i + 3))
      {
        v12 = i;
      }
    }
  }

  if (v11 != v12)
  {
    if (*(v12 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v85, *v12, *(v12 + 1));
    }

    else
    {
      v15 = *v12;
      *&v85[16] = *(v12 + 2);
      *v85 = v15;
    }

    *&v85[24] = *(v12 + 24);
    memset(&v86, 0, sizeof(v86));
    std::vector<siri::ontology::UsoIdentifier>::__init_with_size[abi:ne200100]<siri::ontology::UsoIdentifier*,siri::ontology::UsoIdentifier*>(&v86, *(v12 + 5), *(v12 + 6), 0xEEEEEEEEEEEEEEEFLL * ((*(v12 + 6) - *(v12 + 5)) >> 3));
    if (*(v12 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v12 + 8), *(v12 + 9));
    }

    else
    {
      v16 = v12[4];
      __p.__r_.__value_.__r.__words[2] = *(v12 + 10);
      *&__p.__r_.__value_.__l.__data_ = v16;
    }

    v88 = 1;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a5 + 40), *a2, *(a2 + 8));
  }

  else
  {
    *(a5 + 40) = *a2;
    *(a5 + 56) = *(a2 + 16);
  }

  *(a5 + 64) = 0;
  *(a5 + 128) = 0;
  std::__optional_copy_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__optional_copy_base[abi:ne200100]((a5 + 136), v85);
  if (v88 == 1)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v94[0] = &v86;
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](v94);
    if ((v85[23] & 0x80000000) != 0)
    {
      operator delete(*v85);
    }
  }

  __str = a2;
  *(a5 + 232) = 0;
  *(a5 + 240) = 0;
  v80 = (a5 + 232);
  *(a5 + 248) = 0;
  v17 = *a3;
  v81 = a3[1];
  if (*a3 != v81)
  {
    while (1)
    {
      v18 = 0;
      memset(v101, 0, sizeof(v101));
      v102 = 1065353216;
      v99.__r_.__value_.__s.__data_[0] = 0;
      v19 = (v17 + 4);
      v100 = 0;
      while (v18 < 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 1) - *a4) >> 4))
      {
        snlp::ssu::cache::SSUCacheObjectIntentList::getIntentWithIndex(a4, v18, v85);
        if ((v86.__r_.__value_.__s.__data_[8] & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        *&v103.__r_.__value_.__l.__data_ = *v85;
        v20 = *&v85[16];
        memset(v85, 0, sizeof(v85));
        v104 = *&v85[24];
        v103.__r_.__value_.__r.__words[2] = v20;
        v105 = v86.__r_.__value_.__r.__words[0];
        v86.__r_.__value_.__r.__words[0] = 0;
        v107[0] = &v85[24];
        std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](v107);
        if ((v85[23] & 0x80000000) != 0)
        {
          operator delete(*v85);
        }

        v22 = *(&v104 + 1);
        for (j = v104; j != v22; j += 48)
        {
          v23 = *(j + 23);
          if (v23 >= 0)
          {
            v24 = *(j + 23);
          }

          else
          {
            v24 = *(j + 8);
          }

          v25 = *(v17 + 87);
          v26 = v25;
          if ((v25 & 0x80u) != 0)
          {
            v25 = *(v17 + 9);
          }

          if (v24 == v25)
          {
            v27 = v23 >= 0 ? j : *j;
            v28 = *v19;
            v29 = v26 >= 0 ? v17 + 4 : *v19;
            if (!memcmp(v27, v29, v24))
            {
              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v101, &v103.__r_.__value_.__l.__data_);
              if ((v100 & 1) == 0)
              {
                std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(&v99, (j + 24));
                if ((v100 & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:ne200100]();
                }
              }

              if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v99.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v99.__r_.__value_.__l.__size_;
              }

              v31 = *(j + 47);
              v32 = v31;
              if ((v31 & 0x80u) != 0)
              {
                v31 = *(j + 32);
              }

              if (size != v31 || ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v33 = &v99) : (v33 = v99.__r_.__value_.__r.__words[0]), v32 >= 0 ? (v34 = (j + 24)) : (v34 = *(j + 24)), memcmp(v33, v34, size)))
              {
                v35 = SNLPOSLoggerForCategory(8);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  *v85 = 0;
                  _os_log_impl(&dword_22284A000, v35, OS_LOG_TYPE_DEBUG, "Warning: SSUCacheObjectParameter entries for different intents have different example values", v85, 2u);
                }
              }
            }
          }
        }

        *v85 = &v104;
        std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](v85);
        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103.__r_.__value_.__l.__data_);
        }

        ++v18;
      }

      v36 = *&v101[24];
      if (*&v101[24])
      {
        v37 = *v101;
        *v101 = 0uLL;
        *v85 = v37;
        *&v85[16] = *&v101[16];
        v38 = v102;
        *&v85[32] = v102;
        v39 = *(*&v101[16] + 8);
        v40 = vcnt_s8(*(&v37 + 8));
        v40.i16[0] = vaddlv_u8(v40);
        if (v40.u32[0] > 1uLL)
        {
          if (v39 >= *(&v37 + 1))
          {
            v39 %= *(&v37 + 1);
          }
        }

        else
        {
          v39 &= *(&v37 + 1) - 1;
        }

        *(v37 + 8 * v39) = &v85[16];
        *&v101[16] = 0uLL;
        if ((v100 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v86 = v99;
        memset(&v99, 0, sizeof(v99));
        v41 = *v85;
        *v85 = 0uLL;
        v94[0] = v41;
        v94[1] = *(&v37 + 1);
        v95[0] = *&v85[16];
        v95[1] = v36;
        v96 = v38;
        v42 = *(*&v85[16] + 8);
        if (v40.u32[0] > 1uLL)
        {
          if (v42 >= *(&v37 + 1))
          {
            v42 %= *(&v37 + 1);
          }
        }

        else
        {
          v42 &= *(&v37 + 1) - 1;
        }

        *(v41 + v42) = v95;
        *&v85[16] = 0;
        *&v85[24] = 0;
        __s1 = v86;
        memset(&v86, 0, sizeof(v86));
        v98 = 1;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(0);
        v43 = *v85;
        *v85 = 0;
        if (v43)
        {
          operator delete(v43);
        }
      }

      else
      {
        LOBYTE(v94[0]) = 0;
        v98 = 0;
      }

      if (v100 == 1 && SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*&v101[16]);
      v44 = *v101;
      *v101 = 0;
      if (v44)
      {
        operator delete(v44);
      }

      if (v98 != 1)
      {
        goto LABEL_166;
      }

      if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0 && __s1.__r_.__value_.__l.__size_ == 62)
      {
        v45 = __s1.__r_.__value_.__r.__words[0];
        if (!memcmp(__s1.__r_.__value_.__l.__data_, "__DISPLAY_REPRESENTATION_DEFINED_BY_ASSISTANT_DEFINED_SCHEMA__", 0x3EuLL))
        {
          goto LABEL_163;
        }
      }

      v46 = std::string::basic_string(v101, __str, 0, *(v17 + 3), &v99);
      if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_s1 = &__s1;
      }

      else
      {
        p_s1 = __s1.__r_.__value_.__r.__words[0];
      }

      if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v48 = __s1.__r_.__value_.__l.__size_;
      }

      v49 = std::string::append(v46, p_s1, v48);
      v50 = *&v49->__r_.__value_.__l.__data_;
      v103.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
      *&v103.__r_.__value_.__l.__data_ = v50;
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string(&v99, __str, *(v17 + 4), 0xFFFFFFFFFFFFFFFFLL, &v106);
      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &v99;
      }

      else
      {
        v51 = v99.__r_.__value_.__r.__words[0];
      }

      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v52 = v99.__r_.__value_.__l.__size_;
      }

      v53 = std::string::append(&v103, v51, v52);
      v54 = v53->__r_.__value_.__r.__words[0];
      v107[0] = v53->__r_.__value_.__l.__size_;
      *(v107 + 7) = *(&v53->__r_.__value_.__r.__words[1] + 7);
      v55 = HIBYTE(v53->__r_.__value_.__r.__words[2]);
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103.__r_.__value_.__l.__data_);
      }

      if ((v101[23] & 0x80000000) != 0)
      {
        operator delete(*v101);
      }

      v103.__r_.__value_.__r.__words[0] = v54;
      v103.__r_.__value_.__l.__size_ = v107[0];
      *(&v103.__r_.__value_.__r.__words[1] + 7) = *(v107 + 7);
      *(&v103.__r_.__value_.__s + 23) = v55;
      std::unordered_set<std::string>::unordered_set(&v104, v94);
      if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v85, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
      }

      else
      {
        *v85 = *__str;
      }

      if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v85[24], v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_);
      }

      else
      {
        *&v85[24] = *&v103.__r_.__value_.__l.__data_;
        v86.__r_.__value_.__r.__words[0] = v103.__r_.__value_.__r.__words[2];
      }

      std::unordered_set<std::string>::unordered_set(&v86.__r_.__value_.__l.__size_, &v104);
      v88 = 1;
      if (*(v17 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v89, *v17, *(v17 + 1));
      }

      else
      {
        v56 = *v17;
        v89.__r_.__value_.__r.__words[2] = *(v17 + 2);
        *&v89.__r_.__value_.__l.__data_ = v56;
      }

      v90 = *(v17 + 24);
      memset(v91, 0, sizeof(v91));
      std::vector<siri::ontology::UsoIdentifier>::__init_with_size[abi:ne200100]<siri::ontology::UsoIdentifier*,siri::ontology::UsoIdentifier*>(v91, *(v17 + 5), *(v17 + 6), 0xEEEEEEEEEEEEEEEFLL * ((*(v17 + 6) - *(v17 + 5)) >> 3));
      if (*(v17 + 87) < 0)
      {
        std::string::__init_copy_ctor_external(&v92, *(v17 + 8), *(v17 + 9));
      }

      else
      {
        v57 = *v19;
        v92.__r_.__value_.__r.__words[2] = *(v17 + 10);
        *&v92.__r_.__value_.__l.__data_ = v57;
      }

      v93 = 1;
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v105);
      v58 = v104;
      *&v104 = 0;
      if (v58)
      {
        operator delete(v58);
      }

      if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103.__r_.__value_.__l.__data_);
      }

      v59 = v10[30];
      v60 = v10[31];
      if (v59 >= v60)
      {
        v62 = 0xAAAAAAAAAAAAAAABLL * ((v59 - *v80) >> 6);
        v63 = v62 + 1;
        if (v62 + 1 > 0x155555555555555)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v64 = 0xAAAAAAAAAAAAAAABLL * ((v60 - *v80) >> 6);
        if (2 * v64 > v63)
        {
          v63 = 2 * v64;
        }

        if (v64 >= 0xAAAAAAAAAAAAAALL)
        {
          v65 = 0x155555555555555;
        }

        else
        {
          v65 = v63;
        }

        if (v65)
        {
          if (v65 <= 0x155555555555555)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v66 = 192 * v62;
        std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUCandidate>>::construct[abi:ne200100]<snlp::ssu::candidate::SSUCandidate,snlp::ssu::candidate::SSUCandidate,0>(192 * v62, v85);
        v67 = v10;
        v68 = v10[29];
        v69 = v10[30];
        v83 = v66 + v68 - v69;
        if (v69 != v68)
        {
          v70 = v66 + v68 - v69;
          v71 = v10[29];
          do
          {
            std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUCandidate>>::construct[abi:ne200100]<snlp::ssu::candidate::SSUCandidate,snlp::ssu::candidate::SSUCandidate,0>(v70, v71);
            v71 += 192;
            v70 += 192;
          }

          while (v71 != v69);
          v67 = v10;
          v65 = 0;
          do
          {
            std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUCandidate>>::destroy[abi:ne200100]<snlp::ssu::candidate::SSUCandidate,0>(v68);
            v68 += 192;
          }

          while (v68 != v69);
        }

        v72 = 192 * v65;
        v61 = v66 + 192;
        *&v73 = v66 + 192;
        *(&v73 + 1) = v72;
        v74 = v67;
        v75 = v67[29];
        v74[29] = v83;
        *&v76 = v75;
        *(&v76 + 1) = v74[31];
        *(v74 + 15) = v73;
        while (v76 != v75)
        {
          *&v76 = v76 - 192;
          v84 = v76;
          std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUCandidate>>::destroy[abi:ne200100]<snlp::ssu::candidate::SSUCandidate,0>(v76);
          v76 = v84;
        }

        if (v75)
        {
          operator delete(v75);
        }
      }

      else
      {
        std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUCandidate>>::construct[abi:ne200100]<snlp::ssu::candidate::SSUCandidate,snlp::ssu::candidate::SSUCandidate,0>(v59, v85);
        v61 = v59 + 192;
      }

      v10[30] = v61;
      if (v93 == 1)
      {
        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }

        v103.__r_.__value_.__r.__words[0] = v91;
        std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v103);
        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }
      }

      if (v88 == 1)
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(__p.__r_.__value_.__l.__data_);
        v77 = v86.__r_.__value_.__l.__size_;
        v86.__r_.__value_.__l.__size_ = 0;
        if (v77)
        {
          operator delete(v77);
        }

        if (v86.__r_.__value_.__s.__data_[7] < 0)
        {
          operator delete(*&v85[24]);
        }
      }

      if ((v85[23] & 0x80000000) != 0)
      {
        operator delete(*v85);
      }

      if ((v98 & 1) == 0)
      {
        goto LABEL_166;
      }

      if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

LABEL_164:
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v95[0]);
      v78 = v94[0];
      v94[0] = 0;
      if (v78)
      {
        operator delete(v78);
      }

LABEL_166:
      v17 = (v17 + 88);
      if (v17 == v81)
      {
        goto LABEL_167;
      }
    }

    v45 = __s1.__r_.__value_.__r.__words[0];
LABEL_163:
    operator delete(v45);
    goto LABEL_164;
  }

LABEL_167:
  v79 = *MEMORY[0x277D85DE8];
}

void sub_2229806F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&a49);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::optional<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo>::~optional(&__p);
  if (*(v49 + 31) < 0)
  {
    operator delete(*(v49 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<snlp::ssu::cache::SSUCacheObjectIntent>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = (a1 + 24);
    std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

__n128 std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUCandidate>>::construct[abi:ne200100]<snlp::ssu::candidate::SSUCandidate,snlp::ssu::candidate::SSUCandidate,0>(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(a1 + 48, (a2 + 48));
    *(a1 + 88) = 1;
  }

  *(a1 + 96) = 0;
  *(a1 + 184) = 0;
  if (*(a2 + 184) == 1)
  {
    v6 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v6;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = 0;
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    result = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = result;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 160) = 0;
    *(a1 + 184) = 1;
  }

  return result;
}

uint64_t std::optional<snlp::ssu::candidate::builder::anonymous namespace::AppEntityIntentInfo>::~optional(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1);
  }

  return a1;
}

void std::vector<snlp::ssu::candidate::SSUCandidate>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUCandidate>>::destroy[abi:ne200100]<snlp::ssu::candidate::SSUCandidate,0>(i))
    {
      i -= 192;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUCandidate>>::destroy[abi:ne200100]<snlp::ssu::candidate::SSUCandidate,0>(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    if (*(a1 + 183) < 0)
    {
      operator delete(*(a1 + 160));
    }

    v3 = (a1 + 136);
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }
  }

  if (*(a1 + 88) == 1)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 48);
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

BOOL uaap_orchestration::beam_input::isParentLabelSpecialToken(uaap_orchestration::beam_input *this, const nl_featurization::vocabulary::Vocabulary *a2)
{
  v4 = std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned long>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned long>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned long>>>::find<std::basic_string<char16_t>>(this + 48, this + 12);
  v5 = (this + 56);
  if ((this + 56) != v4 && v4[7] == a2)
  {
    return 1;
  }

  v7 = std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned long>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned long>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned long>>>::find<std::basic_string<char16_t>>(this + 48, this);
  if (v5 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7[7];
  }

  return v5 != v7 && v8 == a2;
}

void uaap_orchestration::beam_input::getRepeatedEntityLabelNames(__int128 **a1@<X0>, unsigned __int16 *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  uaap_orchestration::grammar::UaapGrammar::getRightLabelsForLabel(a1, a2, v6);
  v4 = v6[0];
  v5 = v6[1];
  while (v4 != v5)
  {
    if (*(v4 + 24) == 1)
    {
      std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](a3, v4);
    }

    v4 += 32;
  }

  v7 = v6;
  std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void uaap_orchestration::beam_input::childrenBeginLabelIdsFromPaths(__int128 **a1@<X0>, unsigned __int16 *a2@<X1>, uaap_orchestration::grammar::Path **a3@<X2>, void *a4@<X8>)
{
  a4[1] = 0;
  a4[2] = 0;
  *a4 = a4 + 1;
  uaap_orchestration::labels::buildEntityLabelsFromPaths(a3, a1, &v9);
  nl_featurization::bio::buildBeginBioTagsFromEntityLabels(&v9, v8);
  v6 = v8[0];
  v7 = v8[1];
  while (v6 != v7)
  {
    v10 = nl_featurization::vocabulary::Vocabulary::numericalizeToken(a2, v6);
    std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(a4, v10);
    v6 += 3;
  }

  v10 = v8;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v8[0] = &v9;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](v8);
}

void sub_222980D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__tree<unsigned long>::destroy(*v13);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void uaap_orchestration::beam_input::buildGrammarMask(uaap_orchestration::beam_input *this@<X0>, const nl_featurization::vocabulary::Vocabulary *a2@<X1>, __int128 **a3@<X2>, void *a4@<X8>)
{
  v9 = *(this + 8);
  std::vector<double>::vector[abi:ne200100](&__p, *(a2 + 8));
  v17 = v9;
  std::vector<std::vector<double>>::vector[abi:ne200100](a4, v9);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    v10 = 0;
    do
    {
      if (!uaap_orchestration::beam_input::isParentLabelSpecialToken(this, v10))
      {
        nl_featurization::vocabulary::Vocabulary::denumericalizeToken(this, v10, &__p);
        uaap_orchestration::grammar::UaapGrammar::getChildrenPathsForLabel(a3, &__p, v20);
        uaap_orchestration::labels::buildEntityLabelsFromPaths(v20, a3, &v19);
        v11 = a3;
        nl_featurization::bio::buildAllBioTagsFromEntityLabels(&v19, v18);
        v13 = v18[0];
        v12 = v18[1];
        while (v13 != v12)
        {
          v14 = nl_featurization::vocabulary::Vocabulary::numericalizeToken(a2, v13);
          if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v10)
          {
            std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
          }

          v16 = (*a4 + 24 * v10);
          v15 = *v16;
          if (v14 >= (v16[1] - *v16) >> 3)
          {
            std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
          }

          *(v15 + 8 * v14) = 0x3FF0000000000000;
          v13 += 3;
        }

        v22 = v18;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v22);
        v18[0] = &v19;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](v18);
        v19.__words[0] = v20;
        std::vector<uaap_orchestration::grammar::Path>::__destroy_vector::operator()[abi:ne200100](&v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        a3 = v11;
      }

      ++v10;
    }

    while (v10 != v17);
  }
}

void sub_222981048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<double>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<double>>>(a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_222981224(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void uaap_orchestration::beam_input::buildStartEntityMask(uaap_orchestration::beam_input *this@<X0>, void *a2@<X8>)
{
  v5 = *(this + 8);
  std::vector<double>::vector[abi:ne200100](a2, v5);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      nl_featurization::vocabulary::Vocabulary::denumericalizeToken(this, i, &v14);
      nl_featurization::bio::parseBioTag(&v14, &v7);
      if (v7 == 3)
      {
        if (i >= (a2[1] - *a2) >> 3)
        {
          std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
        }

        *(*a2 + 8 * i) = 0;
      }

      if (v13 == 1)
      {
        if (v12 == 1 && v11 < 0)
        {
          operator delete(__p);
        }

        if (v9 < 0)
        {
          operator delete(v8);
        }
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_22298132C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  nl_featurization::bio::BioTag::~BioTag(&a9);
  if (*(v10 - 33) < 0)
  {
    operator delete(*(v10 - 56));
  }

  v12 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void nl_featurization::bio::BioTag::~BioTag(void **this)
{
  if (*(this + 64) == 1)
  {
    if (*(this + 56) == 1 && *(this + 55) < 0)
    {
      operator delete(this[4]);
    }

    if (*(this + 31) < 0)
    {
      operator delete(this[1]);
    }
  }
}

void uaap_orchestration::beam_input::buildInnerEntityTransitionsMask(uaap_orchestration::beam_input *this@<X0>, void *a2@<X8>)
{
  v5 = *(this + 8);
  v44 = 1;
  LODWORD(v42) = 79;
  v23 = nl_featurization::vocabulary::Vocabulary::numericalizeToken(this, &v42);
  std::vector<double>::vector[abi:ne200100](&v42, v5);
  std::vector<std::vector<double>>::vector[abi:ne200100](a2, v5);
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      nl_featurization::vocabulary::Vocabulary::denumericalizeToken(this, v6, &v50);
      nl_featurization::bio::parseBioTag(&v50, &v42);
      if (v42 == 3)
      {
        break;
      }

LABEL_66:
      if (v49 == 1)
      {
        if (v48 == 1 && v47 < 0)
        {
          operator delete(v46);
        }

        if (v45 < 0)
        {
          operator delete(v43);
        }
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      if (++v6 == v5)
      {
        return;
      }
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v23)
    {
      std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
    }

    v8 = (*a2 + 24 * v23);
    v7 = *v8;
    if (v6 >= (v8[1] - *v8) >> 3)
    {
      std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
    }

    v9 = 0;
    *(v7 + 8 * v6) = 0;
    while (1)
    {
      nl_featurization::vocabulary::Vocabulary::denumericalizeToken(this, v9, &v41);
      nl_featurization::bio::parseBioTag(&v41, &v34);
      if (v34 != 2)
      {
        goto LABEL_54;
      }

      nl_featurization::bio::BioTag::getPayload(&v42, &v29);
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(&v33, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
      }

      else
      {
        v33 = v29;
      }

      nl_featurization::bio::BioTag::getPayload(&v34, &v24);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(&v28, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
      }

      else
      {
        v28 = v24;
      }

      v10 = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v33.__r_.__value_.__l.__size_;
      }

      v12 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v28.__r_.__value_.__l.__size_;
      }

      if (size == v12)
      {
        if (!size)
        {
          v19 = 0;
          if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_37;
          }

LABEL_36:
          operator delete(v28.__r_.__value_.__l.__data_);
          goto LABEL_37;
        }

        v13 = v28.__r_.__value_.__r.__words[0];
        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v28;
        }

        v14 = v33.__r_.__value_.__r.__words[0];
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &v33;
        }

        v15 = size - 1;
        do
        {
          v17 = v14->__r_.__value_.__s.__data_[0];
          v14 = (v14 + 2);
          v16 = v17;
          v18 = v13->__r_.__value_.__s.__data_[0];
          v13 = (v13 + 2);
          v19 = v18 != v16;
        }

        while (v18 == v16 && v15-- != 0);
      }

      else
      {
        v19 = 1;
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_36;
      }

LABEL_37:
      if (v27 == 1 && v26 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
        if (v10 < 0)
        {
LABEL_49:
          operator delete(v33.__r_.__value_.__l.__data_);
        }
      }

      else if (v10 < 0)
      {
        goto LABEL_49;
      }

      if (v32 == 1 && v31 < 0)
      {
        operator delete(v30);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
        if (v19)
        {
LABEL_51:
          if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v9)
          {
            std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
          }

          v22 = (*a2 + 24 * v9);
          v21 = *v22;
          if (v6 >= (v22[1] - *v22) >> 3)
          {
            std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
          }

          *(v21 + 8 * v6) = 0;
        }
      }

      else if (v19)
      {
        goto LABEL_51;
      }

LABEL_54:
      if (v40 == 1)
      {
        if (v39 == 1 && v38 < 0)
        {
          operator delete(v37);
        }

        if (v36 < 0)
        {
          operator delete(v35);
        }
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      if (++v9 == v5)
      {
        goto LABEL_66;
      }
    }
  }
}

void sub_222981778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  v35 = *(v33 - 184);
  if (v35)
  {
    *(v33 - 176) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

void nl_featurization::bio::BioTagPayload::~BioTagPayload(void **this)
{
  if (*(this + 48) == 1 && *(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void uaap_orchestration::beam_input::buildUniqueLabels(uaap_orchestration::beam_input *this@<X0>, const nl_featurization::vocabulary::Vocabulary *a2@<X1>, __int128 **a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  v6 = *(this + 8);
  v37 = 0;
  if (v6)
  {
    for (i = 0; i < v6; v37 = i)
    {
      if (!uaap_orchestration::beam_input::isParentLabelSpecialToken(this, i))
      {
        nl_featurization::vocabulary::Vocabulary::denumericalizeToken(this, i, &v36);
        uaap_orchestration::grammar::UaapGrammar::getChildrenPathsForLabel(a3, &v36, &v34);
        uaap_orchestration::beam_input::getRepeatedEntityLabelNames(a3, &v36, &v32);
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v11 = v34;
        v12 = v35;
        if (v34 != v35)
        {
          while (1)
          {
            uaap_orchestration::grammar::Path::getFirstComponent(v11, &__p);
            v13 = v32;
            if (v32 == v33)
            {
LABEL_22:
              if (v13 != v33)
              {
                goto LABEL_24;
              }
            }

            else
            {
              v14 = v27;
              if ((v27 & 0x80u) == 0)
              {
                p_p = &__p;
              }

              else
              {
                v14 = v26;
                p_p = __p;
              }

              do
              {
                v16 = *(v13 + 23);
                v17 = v16;
                if (v16 < 0)
                {
                  v16 = *(v13 + 1);
                }

                if (v16 == v14)
                {
                  if (!v14)
                  {
                    goto LABEL_22;
                  }

                  if (v17 >= 0)
                  {
                    v18 = v13;
                  }

                  else
                  {
                    v18 = *v13;
                  }

                  v19 = v14;
                  v20 = p_p;
                  while (*v20 == *v18)
                  {
                    ++v18;
                    ++v20;
                    if (!--v19)
                    {
                      goto LABEL_22;
                    }
                  }
                }

                v13 += 12;
              }

              while (v13 != v33);
            }

            std::vector<uaap_orchestration::grammar::Path>::push_back[abi:ne200100](&v29, v11);
LABEL_24:
            if (v28 == 1 && v27 < 0)
            {
              operator delete(__p);
            }

            v11 = (v11 + 24);
            if (v11 == v12)
            {
              v21 = v29;
              v22 = v30;
              goto LABEL_30;
            }
          }
        }

        v22 = 0;
        v21 = 0;
LABEL_30:
        memset(v24, 0, sizeof(v24));
        std::vector<uaap_orchestration::grammar::Path>::__init_with_size[abi:ne200100]<uaap_orchestration::grammar::Path*,uaap_orchestration::grammar::Path*>(v24, v21, v22, 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
        uaap_orchestration::beam_input::childrenBeginLabelIdsFromPaths(a3, a2, v24, &__p);
        v38 = v24;
        std::vector<uaap_orchestration::grammar::Path>::__destroy_vector::operator()[abi:ne200100](&v38);
        v38 = &v37;
        v23 = (std::__hash_table<std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::set<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a4, v37) + 3);
        if (v23 != &__p)
        {
          std::__tree<unsigned long>::__assign_multi<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(v23, __p, &v26);
        }

        std::__tree<unsigned long>::destroy(v26);
        __p = &v29;
        std::vector<uaap_orchestration::grammar::Path>::__destroy_vector::operator()[abi:ne200100](&__p);
        __p = &v32;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
        __p = &v34;
        std::vector<uaap_orchestration::grammar::Path>::__destroy_vector::operator()[abi:ne200100](&__p);
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        i = v37;
      }

      i = (i + 1);
    }
  }
}

void sub_222981B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  *(v37 - 96) = &a9;
  std::vector<uaap_orchestration::grammar::Path>::__destroy_vector::operator()[abi:ne200100]((v37 - 96));
  a12 = &a20;
  std::vector<uaap_orchestration::grammar::Path>::__destroy_vector::operator()[abi:ne200100](&a12);
  a12 = &a25;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a12);
  a12 = &a28;
  std::vector<uaap_orchestration::grammar::Path>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::set<unsigned long>>>>::~__hash_table(v36);
  _Unwind_Resume(a1);
}

void std::vector<uaap_orchestration::grammar::Path>::__init_with_size[abi:ne200100]<uaap_orchestration::grammar::Path*,uaap_orchestration::grammar::Path*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<uaap_orchestration::grammar::Path>>(a4);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::set<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_2229820DC(_Unwind_Exception *a1)
{
  std::__tree<unsigned long>::destroy(v1[4]);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__tree<unsigned long>::__assign_multi<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_30:
    std::__tree<unsigned long>::destroy(v12);
    goto LABEL_31;
  }

  v10 = std::__tree<unsigned long>::_DetachedTreeCache::__detach_next(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v14 = v13[4];
      v9[4] = v14;
      v15 = *v8;
      v16 = (a1 + 8);
      v17 = (a1 + 8);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v16 = v15;
            if (v14 >= v15[4])
            {
              break;
            }

            v15 = *v15;
            v17 = v16;
            if (!*v16)
            {
              goto LABEL_16;
            }
          }

          v15 = v15[1];
        }

        while (v15);
        v17 = v16 + 1;
      }

LABEL_16:
      std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__insert_node_at(a1, v16, v17, v9);
      if (v10)
      {
        v10 = std::__tree<unsigned long>::_DetachedTreeCache::__detach_next(v10);
      }

      else
      {
        v10 = 0;
      }

      v18 = v13[1];
      if (v18)
      {
        do
        {
          a2 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v19 = *a2 == v13;
          v13 = a2;
        }

        while (!v19);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<unsigned long>::destroy(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_30;
  }

LABEL_31:
  if (a2 != a3)
  {
    operator new();
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::set<unsigned long>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__tree<unsigned long>::destroy(v2[4]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__tree<unsigned long>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

void uaap_orchestration::beam_input::buildIndexableLabels(uaap_orchestration::beam_input *this@<X0>, const nl_featurization::vocabulary::Vocabulary *a2@<X1>, __int128 **a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  v6 = *(this + 8);
  v37 = 0;
  if (v6)
  {
    for (i = 0; i < v6; v37 = i)
    {
      if (!uaap_orchestration::beam_input::isParentLabelSpecialToken(this, i))
      {
        nl_featurization::vocabulary::Vocabulary::denumericalizeToken(this, i, &v36);
        uaap_orchestration::grammar::UaapGrammar::getChildrenPathsForLabel(a3, &v36, &v34);
        uaap_orchestration::beam_input::getRepeatedEntityLabelNames(a3, &v36, &v32);
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v11 = v34;
        v12 = v35;
        if (v34 == v35)
        {
          v22 = 0;
          v21 = 0;
        }

        else
        {
          do
          {
            uaap_orchestration::grammar::Path::getFirstComponent(v11, &__p);
            v13 = v32;
            if (v32 == v33)
            {
LABEL_22:
              if (v13 != v33 && 0xAAAAAAAAAAAAAAABLL * ((*(v11 + 1) - *v11) >> 3) >= 2)
              {
                std::vector<uaap_orchestration::grammar::Path>::push_back[abi:ne200100](&v29, v11);
              }
            }

            else
            {
              v14 = v27;
              if ((v27 & 0x80u) == 0)
              {
                p_p = &__p;
              }

              else
              {
                v14 = v26;
                p_p = __p;
              }

              do
              {
                v16 = *(v13 + 23);
                v17 = v16;
                if (v16 < 0)
                {
                  v16 = *(v13 + 1);
                }

                if (v16 == v14)
                {
                  if (!v14)
                  {
                    goto LABEL_22;
                  }

                  if (v17 >= 0)
                  {
                    v18 = v13;
                  }

                  else
                  {
                    v18 = *v13;
                  }

                  v19 = v14;
                  v20 = p_p;
                  while (*v20 == *v18)
                  {
                    ++v18;
                    ++v20;
                    if (!--v19)
                    {
                      goto LABEL_22;
                    }
                  }
                }

                v13 += 12;
              }

              while (v13 != v33);
            }

            if (v28 == 1 && v27 < 0)
            {
              operator delete(__p);
            }

            v11 = (v11 + 24);
          }

          while (v11 != v12);
          v21 = v29;
          v22 = v30;
        }

        memset(v24, 0, sizeof(v24));
        std::vector<uaap_orchestration::grammar::Path>::__init_with_size[abi:ne200100]<uaap_orchestration::grammar::Path*,uaap_orchestration::grammar::Path*>(v24, v21, v22, 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
        uaap_orchestration::beam_input::childrenBeginLabelIdsFromPaths(a3, a2, v24, &__p);
        v38 = v24;
        std::vector<uaap_orchestration::grammar::Path>::__destroy_vector::operator()[abi:ne200100](&v38);
        v38 = &v37;
        v23 = (std::__hash_table<std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::set<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a4, v37) + 3);
        if (v23 != &__p)
        {
          std::__tree<unsigned long>::__assign_multi<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(v23, __p, &v26);
        }

        std::__tree<unsigned long>::destroy(v26);
        __p = &v29;
        std::vector<uaap_orchestration::grammar::Path>::__destroy_vector::operator()[abi:ne200100](&__p);
        __p = &v32;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
        __p = &v34;
        std::vector<uaap_orchestration::grammar::Path>::__destroy_vector::operator()[abi:ne200100](&__p);
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        i = v37;
      }

      i = (i + 1);
    }
  }
}

void uaap_orchestration::beam_input::buildBeamMaskInputs(uaap_orchestration::beam_input *this@<X0>, const nl_featurization::vocabulary::Vocabulary *a2@<X1>, __int128 **a3@<X2>, void *a4@<X8>)
{
  uaap_orchestration::beam_input::buildGrammarMask(this, a2, a3, a4);
  uaap_orchestration::beam_input::buildStartEntityMask(a2, a4 + 3);
  uaap_orchestration::beam_input::buildInnerEntityTransitionsMask(a2, a4 + 6);
  uaap_orchestration::beam_input::buildUniqueLabels(this, a2, a3, (a4 + 9));
  uaap_orchestration::beam_input::buildIndexableLabels(this, a2, a3, (a4 + 14));
}

void sub_2229827B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::set<unsigned long>>>>::~__hash_table(v10 + 72);
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v12 = *(v10 + 24);
  if (v12)
  {
    *(v10 + 32) = v12;
    operator delete(v12);
  }

  a10 = v10;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uaap::UPDataDetector *uaap::UPDataDetector::UPDataDetector(uaap::UPDataDetector *this, const uaap::UPDataDetectorCacheFiles *a2)
{
  *this = 67584;
  uaap::UPDataDetector::UPDataDetector(v4, a2, 0);
  uaap::UPDataDetector::~UPDataDetector(v4);
  return this;
}

{
  *this = 67584;
  uaap::UPDataDetector::UPDataDetector(v4, a2, 0);
  uaap::UPDataDetector::~UPDataDetector(v4);
  return this;
}

void std::allocator_traits<std::allocator<uaap::UPDataDetectorResult>>::destroy[abi:ne200100]<uaap::UPDataDetectorResult,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(a1 + 32))();
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void uaap::UPDataDetectorResult::~UPDataDetectorResult(uaap::UPDataDetectorResult *this)
{
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(this + 4))();
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__split_buffer<uaap::UPDataDetectorResult>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 40;
    std::allocator_traits<std::allocator<uaap::UPDataDetectorResult>>::destroy[abi:ne200100]<uaap::UPDataDetectorResult,0>(v3 - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<uaap::UPDataDetectorResult>,uaap::UPDataDetectorResult*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 40;
      std::allocator_traits<std::allocator<uaap::UPDataDetectorResult>>::destroy[abi:ne200100]<uaap::UPDataDetectorResult,0>(v3);
    }
  }

  return a1;
}

uint64_t uaap::UPDataDetector::labelToUaapType@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(__dst, "a");
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v25, L"ADDRESS");
  v26 = *__dst;
  v27 = v22;
  __dst[1] = 0;
  v22 = 0;
  __dst[0] = 0;
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v19, "d");
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v28, L"DATE_TIME");
  v29 = *v19;
  v30 = v20;
  v19[1] = 0;
  v20 = 0;
  v19[0] = 0;
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v17, L"flight-number");
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v31, L"FLIGHT");
  v32 = *v17;
  v33 = v18;
  v17[1] = 0;
  v18 = 0;
  v17[0] = 0;
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v15, L"price");
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v34, "M");
  v35 = *v15;
  v36 = v16;
  v15[1] = 0;
  v16 = 0;
  v15[0] = 0;
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v13, L"number");
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v37, "N");
  v38 = *v13;
  v39 = v14;
  v13[1] = 0;
  v14 = 0;
  v13[0] = 0;
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(__p, "p");
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v40, L"PHONE_NUMBER");
  v4 = 0;
  v41 = *__p;
  v42 = v12;
  v24 = 1065353216;
  __p[1] = 0;
  v12 = 0;
  __p[0] = 0;
  memset(v23, 0, sizeof(v23));
  do
  {
    std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>> const&>(v23, &v25[v4]);
    v4 += 48;
  }

  while (v4 != 288);
  v5 = 288;
  do
  {
    v6 = &v25[v5];
    if (v25[v5 - 1] < 0)
    {
      operator delete(*(v6 - 3));
    }

    if (*(v6 - 25) < 0)
    {
      operator delete(*(v6 - 6));
    }

    v5 -= 48;
  }

  while (v5);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst[0]);
  }

  v7 = std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::find<std::basic_string<char16_t>>(v23, a1);
  if (v7)
  {
    if (*(v7 + 63) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a2, *(v7 + 5), *(v7 + 6));
    }

    else
    {
      *a2 = *(v7 + 20);
      *(a2 + 16) = *(v7 + 7);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v8;
  result = std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(v23);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule::forward(nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule *this@<X0>, const nlv4_inference_orchestrator::inference_engine::TransformerEncoderModuleInputType *a2@<X1>, uint64_t a3@<X8>)
{
  memset(v14, 0, sizeof(v14));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v14, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
  memset(v15, 0, sizeof(v15));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v15, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 2);
  memset(v16, 0, sizeof(v16));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v16, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
  memset(v17, 0, sizeof(v17));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v17, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 2);
  memset(v18, 0, sizeof(v18));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v18, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 3);
  memset(v19, 0, sizeof(v19));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v19, *(a2 + 15), *(a2 + 16), (*(a2 + 16) - *(a2 + 15)) >> 2);
  memset(v20, 0, sizeof(v20));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v20, *(a2 + 18), *(a2 + 19), (*(a2 + 19) - *(a2 + 18)) >> 3);
  memset(v21, 0, sizeof(v21));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v21, *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 2);
  memset(v22, 0, sizeof(v22));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v22, *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 3);
  memset(v23, 0, sizeof(v23));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v23, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule::setUtteranceTokensEmbeddings(this, v14);
  nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule::setSpanTokens(this, v16);
  nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule::setContext(this, v18);
  nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule::setUtterancePaddingMask(this, v20);
  nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule::setPositionIds(this, v22);
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::executePlan(this);
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule::getFinalHidden(this, &v10);
  v6 = v11;
  *(a3 + 48) = v10;
  *(a3 + 64) = v6;
  v7 = v13;
  *(a3 + 72) = v12;
  *(a3 + 88) = v7;
  nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule::getEncodings(this, &v10);
  v8 = v11;
  *a3 = v10;
  *(a3 + 16) = v8;
  v9 = v13;
  *(a3 + 24) = v12;
  *(a3 + 40) = v9;
  nlv4_inference_orchestrator::inference_engine::TransformerEncoderModuleInputType::~TransformerEncoderModuleInputType(v14);
}

void sub_222983780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  snlp::ssu::espresso::SSUNessieModuleInputs::~SSUNessieModuleInputs(v40);
  nlv4_inference_orchestrator::inference_engine::TransformerEncoderModuleInputType::~TransformerEncoderModuleInputType(&a15);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule::setUtteranceTokensEmbeddings(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "utterance_tokens_embeddings");
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::setInput(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2229838BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule::setSpanTokens(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "span_tokens");
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::setInput(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_222983934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule::setContext(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "context");
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::setInput(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2229839AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule::setUtterancePaddingMask(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "padding_mask");
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::setInput(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_222983A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule::setPositionIds(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "position_ids");
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::setInput(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_222983A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule::getFinalHidden(nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "out_init_decoder_hidden");
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::getOutput(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_222983B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule::getEncodings(nlv4_inference_orchestrator::inference_engine::TransformerEncoderModule *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "out_encodings");
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::getOutput(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_222983B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_222983C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = UPDetectedData;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_222983FD8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_222984144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char *a19)
{
  a19 = &a10;
  std::vector<uaap::UPDataDetectorResult>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  objc_sync_exit(v20);

  _Unwind_Resume(a1);
}

void sub_222984324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char *a19)
{
  a19 = &a10;
  std::vector<uaap::UPDataDetectorResult>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  objc_sync_exit(v20);

  _Unwind_Resume(a1);
}

void sub_22298499C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  MEMORY[0x223DC4D00](v61, 0x20C40960023A9);
  std::unique_ptr<uaap::UPDataDetector>::~unique_ptr[abi:ne200100]((v62 - 112));
  uaap::UPDataDetectorCacheFiles::~UPDataDetectorCacheFiles(&a23);
  if (*(v62 - 153) < 0)
  {
    operator delete(*(v62 - 176));
  }

  _Unwind_Resume(a1);
}

void uaap::UPDataDetectorCacheFiles::~UPDataDetectorCacheFiles(void **this)
{
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}