void sub_25FED33F8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 192);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 176) = v5;
    operator delete(v5);
  }

  PCString::~PCString((v1 + 160));
  OZChannel::~OZChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelEnum::OZChannelEnum(OZChannel *this, unsigned int a2, const PCString *a3, const PCString *a4, OZFactory *a5, OZChannelFolder *a6, unsigned int a7, int a8, OZChannelImpl *a9, OZChannelInfo *a10)
{
  v15 = this;
  v16 = a9;
  Instance = a10;
  this->var0 = &unk_28724E5B8;
  this->var2 = &unk_28724E928;
  if (!a9)
  {
    this = OZChannelEnum::OZChannelEnum_valueImpl::getInstance(this);
    v16 = this;
    if (a10)
    {
      goto LABEL_3;
    }

LABEL_5:
    Instance = OZChannelEnum::OZChannelEnum_valueInfo::getInstance(this);
    goto LABEL_3;
  }

  if (!a10)
  {
    goto LABEL_5;
  }

LABEL_3:
  OZChannel::OZChannel(v15, a5, a4, a6, a7, a8, v16, Instance);
  v15->var0 = &unk_28724E5B8;
  v15->var2 = &unk_28724E928;
  v15[1].var0 = 0;
  PCString::PCString(&v15[1].var1, a3);
  *&v15[1].var2 = 0u;
  LODWORD(v15[1].var8) = 0;
  *&v15[1].var4.var0 = 0u;
  *&v15[1].var6 = 0u;
  PCSharedCount::PCSharedCount(&v15[1].var9);
  v15[1].var10 = 0;
  v15[1].var11 = 0;
  v15[1].var12 = 0;
  OZChannel::setDefaultValue(v15, a2);
  OZChannel::setInitialValue(v15, a2, 0);
  (*(v15->var0 + 106))(v15, a3, 0);
  v15->var7 |= 0x10000uLL;
  (*(v15->var0 + 16))(v15);
}

void sub_25FED3628(_Unwind_Exception *a1)
{
  v4 = *(v1 + 192);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 176) = v5;
    operator delete(v5);
  }

  PCString::~PCString((v1 + 160));
  OZChannel::~OZChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelEnum::OZChannelEnum(OZChannelEnum *this, const OZChannelEnum *a2, OZChannelFolder *a3)
{
  OZChannel::OZChannel(this, a2, a3);
  v5->var0 = &unk_28724E5B8;
  v5[2].var0 = &unk_28724E928;
  v5[19].var0 = 0;
  PCSharedCount::PCSharedCount(v5 + 20);
  *(this + 168) = 0u;
  *(this + 54) = 0;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  PCSharedCount::PCSharedCount(this + 28);
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  PCString::set(this + 20, a2 + 20);
  *(this + 19) = *(a2 + 19);
  ++*(this + 54);
  if (this != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 21, *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 2);
  }

  std::vector<BOOL>::operator=(this + 192, a2 + 192);
  PCString::set(this + 28, a2 + 28);
  if (this != a2)
  {
    std::vector<PCString>::__assign_with_size[abi:ne200100]<PCString*,PCString*>(this + 232, *(a2 + 29), *(a2 + 30), (*(a2 + 30) - *(a2 + 29)) >> 3);
  }
}

void sub_25FED37A0(_Unwind_Exception *a1)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 176) = v5;
    operator delete(v5);
  }

  PCString::~PCString((v1 + 160));
  OZChannel::~OZChannel(v1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<BOOL>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 > *(a1 + 16) << 6)
      {
        v5 = *a1;
        if (*a1)
        {
          operator delete(v5);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v4 = *(a2 + 8);
        }

        std::vector<BOOL>::__vallocate[abi:ne200100](a1, v4);
      }

      memmove(*a1, *a2, (((v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 8) = v6;
  }

  return a1;
}

void OZChannelEnum::~OZChannelEnum(PCString *this)
{
  this->var0 = &unk_28724E5B8;
  this[2].var0 = &unk_28724E928;
  v4 = this + 29;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v4);
  PCString::~PCString(this + 28);
  var0 = this[24].var0;
  if (var0)
  {
    operator delete(var0);
  }

  v3 = this[21].var0;
  if (v3)
  {
    this[22].var0 = v3;
    operator delete(v3);
  }

  PCString::~PCString(this + 20);
  OZChannel::~OZChannel(this);
}

{
  OZChannelEnum::~OZChannelEnum(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelEnum::~OZChannelEnum(PCString *this)
{
  OZChannelEnum::~OZChannelEnum(this - 2);
}

{
  OZChannelEnum::~OZChannelEnum(this - 2);

  JUMPOUT(0x2666E9F00);
}

void OZChannelEnum::copy(PCString *this, const OZChannelBase *a2, char a3)
{
  OZChannel::copy(this, a2, a3);
  if (a2)
  {
    if (v5)
    {
      v6 = v5;
      PCString::set(this + 20, v5 + 20);
      this[19].var0 = v6[19].var0;
      ++LODWORD(this[27].var0);
      if (v6 == this)
      {
        std::vector<BOOL>::operator=(&this[24], &v6[24]);

        PCString::set(this + 28, v6 + 28);
      }

      else
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&this[21].var0, v6[21].var0, v6[22].var0, (v6[22].var0 - v6[21].var0) >> 2);
        std::vector<BOOL>::operator=(&this[24], &v6[24]);
        PCString::set(this + 28, v6 + 28);
        var0 = v6[29].var0;
        v8 = v6[30].var0;

        std::vector<PCString>::__assign_with_size[abi:ne200100]<PCString*,PCString*>(&this[29], var0, v8, v8 - var0);
      }
    }
  }
}

void OZChannelEnum::assign(PCString *this, const OZChannelBase *a2)
{
  OZChannel::assign(this, a2);
  if (a2)
  {
    if (v4)
    {
      v5 = v4;
      this[19].var0 = v4[19].var0;
      PCString::set(this + 20, v4 + 20);
      ++LODWORD(this[27].var0);
      if (v5 == this)
      {
        std::vector<BOOL>::operator=(&this[24], &v5[24]);

        PCString::set(this + 28, v5 + 28);
      }

      else
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&this[21].var0, v5[21].var0, v5[22].var0, (v5[22].var0 - v5[21].var0) >> 2);
        std::vector<BOOL>::operator=(&this[24], &v5[24]);
        PCString::set(this + 28, v5 + 28);
        var0 = v5[29].var0;
        v7 = v5[30].var0;

        std::vector<PCString>::__assign_with_size[abi:ne200100]<PCString*,PCString*>(&this[29], var0, v7, v7 - var0);
      }
    }
  }
}

uint64_t OZChannelEnum::compare(OZChannelEnum *this, const OZChannelBase *a2)
{
  result = OZChannel::compare(this, a2);
  if (result)
  {
    result = 0;
    if (a2)
    {
      if (v5)
      {
        if (!PCString::compare(this + 20, v5 + 20))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t OZChannelEnum::allowsDrag(OZChannelEnum *this, const OZChannelBase *a2)
{
  result = OZChannelBase::allowsDrag(this, a2);
  if (result)
  {
    result = 0;
    if (a2)
    {
      if (v5)
      {
        if (!PCString::compare(this + 20, v5 + 20))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void OZChannelEnum::setStrings(const PCString *this, PCString *a2, int a3)
{
  if ((atomic_load_explicit(&qword_280C5E6D8, memory_order_acquire) & 1) == 0)
  {
    OZChannelEnum::setStrings();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN13OZChannelEnum10setStringsERK8PCStringb_block_invoke;
  block[3] = &__block_descriptor_tmp_10;
  block[4] = this;
  if (OZChannelEnum::setStrings(PCString const&,BOOL)::onceToken == -1)
  {
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  dispatch_once(&OZChannelEnum::setStrings(PCString const&,BOOL)::onceToken, block);
  if (a3)
  {
LABEL_5:
    PCString::set(&this[20], a2);
  }

LABEL_6:
  v6 = PCString::empty(&this[20]);
  if (v6)
  {
    this[19].var0 = _MergedGlobals_27;
    return;
  }

  Instance = OZStringTablesMap::getInstance(v6);
  PCSharedMutex::lock((Instance + 8));
  v9 = OZStringTablesMap::getInstance(v8);
  v10 = std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::find<PCString>(v9 + 14, &this[20]);
  this[19].var0 = v10;
  v11 = OZStringTablesMap::getInstance(v10);
  var0 = this[19].var0;
  PCSharedMutex::unlock((Instance + 8));
  if (var0 == (v11 + 120))
  {
    memset(v37, 0, sizeof(v37));
    ArrayBySeparatingStrings = PCString::size(a2);
    if (ArrayBySeparatingStrings)
    {
      v14 = PCString::cf_str(a2);
      if (CFStringFind(v14, @"|", 0).location == -1)
      {
        v17 = PCString::cf_str(a2);
        if (CFStringFind(v17, @";", 0).location == -1)
        {
          v30 = std::vector<PCString>::push_back[abi:ne200100](v37, a2);
          v25 = OZStringTablesMap::getInstance(v30);
          PCSharedMutex::lock((v25 + 8));
          v32 = OZStringTablesMap::getInstance(v31);
          if (this[19].var0 == (v32 + 120))
          {
            v33 = OZStringTablesMap::getInstance(v32);
            v34 = OZStringTablesMap::getInstance(v33);
            std::pair<PCString,std::vector<PCString>>::pair[abi:ne200100]<PCString,std::vector<PCString>&,0>(&v35, this + 20, v37);
            this[19].var0 = std::__tree<std::__value_type<PCString,std::vector<PCString>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::vector<PCString>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::vector<PCString>>>>::__emplace_hint_unique_key_args<PCString,std::pair<PCString,std::vector<PCString>>>(v33 + 14, v34 + 15, &v35);
            v39 = v36;
            std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v39);
            PCString::~PCString(&v35);
          }

          goto LABEL_21;
        }

        v15 = PCString::cf_str(a2);
        v16 = @";";
      }

      else
      {
        v15 = PCString::cf_str(a2);
        v16 = @"|";
      }

      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v15, v16);
      v18 = ArrayBySeparatingStrings;
      if (ArrayBySeparatingStrings)
      {
        v19 = OZStringTablesMap::getInstance(ArrayBySeparatingStrings);
        PCSharedMutex::lock((v19 + 8));
        Count = CFArrayGetCount(v18);
        std::vector<PCString>::reserve(v37, Count);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v18, i);
            PCURL::PCURL(&v35, ValueAtIndex);
            v24 = PCString::intern(&v35, v23);
            PCString::~PCString(&v35);
            std::vector<PCString>::push_back[abi:ne200100](v37, v24);
          }
        }

        CFRelease(v18);
        PCSharedMutex::unlock((v19 + 8));
      }
    }

    v25 = OZStringTablesMap::getInstance(ArrayBySeparatingStrings);
    PCSharedMutex::lock((v25 + 8));
    ++LODWORD(this[27].var0);
    v27 = OZStringTablesMap::getInstance(v26);
    if (this[19].var0 == (v27 + 120))
    {
      v28 = OZStringTablesMap::getInstance(v27);
      v29 = OZStringTablesMap::getInstance(v28);
      std::pair<PCString,std::vector<PCString>>::pair[abi:ne200100]<PCString,std::vector<PCString>&,0>(&v35, this + 20, v37);
      this[19].var0 = std::__tree<std::__value_type<PCString,std::vector<PCString>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::vector<PCString>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::vector<PCString>>>>::__emplace_hint_unique_key_args<PCString,std::pair<PCString,std::vector<PCString>>>(v28 + 14, v29 + 15, &v35);
      v39 = v36;
      std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v39);
      PCString::~PCString(&v35);
    }

LABEL_21:
    PCSharedMutex::unlock((v25 + 8));
    v35.var0 = v37;
    std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v35);
  }
}

void sub_25FED412C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::pair<PCString,std::vector<PCString>>::~pair(&a10);
  PCSharedMutex::unlock((v14 + 8));
  a10.var0 = &a14;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ___ZN13OZChannelEnum10setStringsERK8PCStringb_block_invoke(OZStringTablesMap *a1)
{
  memset(v6, 0, sizeof(v6));
  Instance = OZStringTablesMap::getInstance(a1);
  v2 = OZStringTablesMap::getInstance(Instance);
  PCString::PCString(&v3, "");
  std::pair<PCString,std::vector<PCString>>::pair[abi:ne200100]<PCString,std::vector<PCString>&,0>(&v4, &v3, v6);
  _MergedGlobals_27 = std::__tree<std::__value_type<PCString,std::vector<PCString>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::vector<PCString>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::vector<PCString>>>>::__emplace_hint_unique_key_args<PCString,std::pair<PCString,std::vector<PCString>>>(Instance + 14, v2 + 15, &v4);
  v7 = &v5;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v7);
  PCString::~PCString(&v4);
  PCString::~PCString(&v3);
  v4.var0 = v6;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void sub_25FED42BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::pair<PCString,std::vector<PCString>>::~pair(&a11);
  PCString::~PCString(&a10);
  a11 = &a15;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::pair<PCString,std::vector<PCString>>::~pair(PCString *a1)
{
  v2 = a1 + 1;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v2);
  PCString::~PCString(a1);
}

void *std::vector<PCString>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<__CTRun const*>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25FED441C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<PCString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void OZChannelEnum::setStringsFromChannel(PCString *this, const OZChannelBase *lpsrc)
{
  if (lpsrc)
  {
    if (v3)
    {
      v4 = v3;
      PCString::set(this + 20, v3 + 20);
      this[19].var0 = v4[19].var0;
      ++LODWORD(this[27].var0);
    }
  }
}

void OZChannelEnum::setImages(OZChannelEnum *this, PCString *a2)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  ArrayBySeparatingStrings = PCString::size(a2);
  if (ArrayBySeparatingStrings)
  {
    v5 = PCString::cf_str(a2);
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v5, @";");
    v6 = ArrayBySeparatingStrings;
    if (ArrayBySeparatingStrings)
    {
      Instance = OZStringTablesMap::getInstance(ArrayBySeparatingStrings);
      PCSharedMutex::lock_shared((Instance + 8));
      Count = CFArrayGetCount(v6);
      std::vector<PCString>::reserve(&v15, Count);
      if (Count >= 1)
      {
        v9 = 0;
        v10 = Count & 0x7FFFFFFF;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
          PCURL::PCURL(&v18, ValueAtIndex);
          v13 = PCString::intern(&v18, v12);
          PCString::~PCString(&v18);
          std::vector<PCString>::push_back[abi:ne200100](&v15, v13);
          ++v9;
        }

        while (v10 != v9);
      }

      CFRelease(v6);
      PCSharedMutex::unlock_shared((Instance + 8));
    }
  }

  v14 = OZStringTablesMap::getInstance(ArrayBySeparatingStrings);
  PCSharedMutex::lock((v14 + 8));
  if ((this + 232) != &v15)
  {
    std::vector<PCString>::__assign_with_size[abi:ne200100]<PCString*,PCString*>(this + 232, v15, v16, v16 - v15);
  }

  PCSharedMutex::unlock((v14 + 8));
  v18.var0 = &v15;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v18);
}

void sub_25FED4614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCString a12)
{
  PCSharedMutex::unlock((v12 + 8));
  a12.var0 = &a9;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void OZChannelEnum::clearStrings(PCString *this)
{
  Instance = OZStringTablesMap::getInstance(this);
  PCSharedMutex::lock((Instance + 8));
  PCString::clear(this + 20);
  v4 = OZStringTablesMap::getInstance(v3);
  v5 = std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::find<PCString>(v4 + 14, this + 20);
  this[19].var0 = v5;
  v6 = OZStringTablesMap::getInstance(v5);
  if (this[19].var0 == (v6 + 120))
  {
    memset(v11, 0, sizeof(v11));
    v7 = OZStringTablesMap::getInstance(v6);
    v8 = OZStringTablesMap::getInstance(v7);
    std::pair<PCString,std::vector<PCString>>::pair[abi:ne200100]<PCString,std::vector<PCString>&,0>(&v9, this + 20, v11);
    this[19].var0 = std::__tree<std::__value_type<PCString,std::vector<PCString>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::vector<PCString>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::vector<PCString>>>>::__emplace_hint_unique_key_args<PCString,std::pair<PCString,std::vector<PCString>>>(v7 + 14, v8 + 15, &v9);
    v12 = &v10;
    std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v12);
    PCString::~PCString(&v9);
    v9.var0 = v11;
    std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v9);
  }

  ++LODWORD(this[27].var0);
  PCSharedMutex::unlock((Instance + 8));
}

void sub_25FED4780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, PCString a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::pair<PCString,std::vector<PCString>>::~pair(&a9);
  a9.var0 = &a13;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&a9);
  PCSharedMutex::unlock((v13 + 8));
  _Unwind_Resume(a1);
}

void OZChannelEnum::addString(PCString *this, const PCString *a2)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  Instance = OZStringTablesMap::getInstance(this);
  PCSharedMutex::lock_shared((Instance + 8));
  v6 = OZStringTablesMap::getInstance(v5);
  var0 = this[19].var0;
  if (var0 != (v6 + 120) && &v19 != &var0[1].info)
  {
    std::vector<PCString>::__assign_with_size[abi:ne200100]<PCString*,PCString*>(&v19, var0[1].info, var0[1].data, &var0[1].data[-var0[1].info] >> 3);
  }

  PCSharedMutex::unlock_shared((Instance + 8));
  if (!PCString::empty(this + 20))
  {
    PCString::append(this + 20, ";");
  }

  PCString::append(this + 20, a2);
  v9 = std::vector<PCString>::push_back[abi:ne200100](&v19, a2);
  v10 = OZStringTablesMap::getInstance(v9);
  PCSharedMutex::lock((v10 + 8));
  v12 = OZStringTablesMap::getInstance(v11);
  v13 = std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::find<PCString>(v12 + 14, this + 20);
  this[19].var0 = v13;
  v14 = OZStringTablesMap::getInstance(v13);
  if (this[19].var0 == (v14 + 120))
  {
    v15 = OZStringTablesMap::getInstance(v14);
    v16 = OZStringTablesMap::getInstance(v15);
    std::pair<PCString,std::vector<PCString>>::pair[abi:ne200100]<PCString,std::vector<PCString>&,0>(&v17, this + 20, &v19);
    this[19].var0 = std::__tree<std::__value_type<PCString,std::vector<PCString>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::vector<PCString>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::vector<PCString>>>>::__emplace_hint_unique_key_args<PCString,std::pair<PCString,std::vector<PCString>>>(v15 + 14, v16 + 15, &v17);
    v22 = &v18;
    std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v22);
    PCString::~PCString(&v17);
  }

  PCSharedMutex::unlock((v10 + 8));
  OZChannel::setSliderMax(this, (((v20 - v19) >> 3) - 1));
  ++LODWORD(this[27].var0);
  v17.var0 = &v19;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v17);
}

void sub_25FED4960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, PCString a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::pair<PCString,std::vector<PCString>>::~pair(&a9);
  PCSharedMutex::unlock((v13 + 8));
  a9.var0 = &a13;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t OZChannelEnum::getNumberOfStrings(OZChannelEnum *this)
{
  Instance = OZStringTablesMap::getInstance(this);
  PCSharedMutex::lock_shared((Instance + 8));
  v4 = OZStringTablesMap::getInstance(v3);
  v5 = *(this + 19);
  if (v5 == v4 + 120)
  {
    v6 = 0;
  }

  else
  {
    v6 = (*(v5 + 48) - *(v5 + 40)) >> 3;
  }

  PCSharedMutex::unlock_shared((Instance + 8));
  return v6;
}

uint64_t OZChannelEnum::getString(OZChannelEnum *this, unsigned int a2)
{
  Instance = OZStringTablesMap::getInstance(this);
  PCSharedMutex::lock((Instance + 8));
  v5 = *(*(this + 19) + 40) + 8 * a2;
  v7 = OZStringTablesMap::getInstance(v6);
  PCSharedMutex::unlock((v7 + 8));
  return v5;
}

void OZChannelEnum::setIsSpline(OZChannel *this, uint64_t a2)
{
  v2 = a2;
  OZChannel::setIsSpline(this, a2);
  if (v2)
  {
    this->var7 &= ~0x10000uLL;
  }
}

uint64_t OZStringTablesMap::getInstance(OZStringTablesMap *this)
{
  if (!OZStringTablesMap::_sStringTablesMap)
  {
    operator new();
  }

  return OZStringTablesMap::_sStringTablesMap;
}

uint64_t OZChannelEnum::OZChannelEnum_valueImpl::getInstance(OZChannelEnum::OZChannelEnum_valueImpl *this)
{
  if (atomic_load_explicit(&OZChannelEnum::OZChannelEnum_valueImpl::getInstance(void)::OZChannelEnum_valueImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelEnum::OZChannelEnum_valueImpl::getInstance(void)::OZChannelEnum_valueImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelEnum::OZChannelEnum_valueImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelEnum::OZChannelEnum_valueImpl::_OZChannelEnum_value;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelEnum::OZChannelEnum_valueImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelEnum::OZChannelEnum_valueImpl::_OZChannelEnum_value)
  {
    operator new();
  }
}

uint64_t OZChannelEnum::OZChannelEnum_valueInfo::getInstance(OZChannelEnum::OZChannelEnum_valueInfo *this)
{
  if (atomic_load_explicit(&OZChannelEnum::OZChannelEnum_valueInfo::getInstance(void)::OZChannelEnum_valueInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelEnum::OZChannelEnum_valueInfo::getInstance(void)::OZChannelEnum_valueInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelEnum::OZChannelEnum_valueInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelEnum::OZChannelEnum_valueInfo::_OZChannelEnum_valueInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelEnum::OZChannelEnum_valueInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelEnum::OZChannelEnum_valueInfo::_OZChannelEnum_valueInfo)
  {
    operator new();
  }
}

OZChannelInfo *OZChannelEnum::OZChannelEnum_valueInfo::OZChannelEnum_valueInfo(OZChannelInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 1.0, 1.0, 1.0, 1.0, "");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_28724EA10;
  *(this + 10) = &unk_28724EA30;
  return this;
}

PCString *std::pair<PCString,std::vector<PCString>>::pair[abi:ne200100]<PCString,std::vector<PCString>&,0>(PCString *a1, const PCString *a2, uint64_t *a3)
{
  PCString::PCString(a1, a2);
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v5 += 8;
  *(v5 + 16) = 0;
  std::vector<PCString>::__init_with_size[abi:ne200100]<PCString*,PCString*>(v5, *a3, a3[1], (a3[1] - *a3) >> 3);
  return a1;
}

uint64_t std::vector<PCString>::__init_with_size[abi:ne200100]<PCString*,PCString*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PCString>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25FED4F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<PCString>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<__CTRun const*>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

PCString *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PCString>,PCString*,PCString*,PCString*>(int a1, PCString *a2, PCString *a3, PCString *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      PCString::PCString(this++, v6++);
      v7 -= 8;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_25FED5044(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 8);
    do
    {
      PCString::~PCString(v4);
      v4 = (v5 - 8);
      v2 += 8;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void OZStringTablesMap::OZStringTablesMap(OZStringTablesMap *this)
{
  PCSingleton::PCSingleton(this, 50);
  *v2 = &unk_28724EA88;
  PCSharedMutex::PCSharedMutex((v2 + 1));
  *(this + 16) = 0;
  *(this + 15) = 0;
  *(this + 14) = this + 120;
}

void OZStringTablesMap::~OZStringTablesMap(OZStringTablesMap *this)
{
  *this = &unk_28724EA88;
  std::__tree<std::__value_type<PCString,std::vector<PCString>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::vector<PCString>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::vector<PCString>>>>::destroy(this + 112, *(this + 15));
  PCSharedMutex::~PCSharedMutex((this + 8));

  PCSingleton::~PCSingleton(this);
}

{
  *this = &unk_28724EA88;
  std::__tree<std::__value_type<PCString,std::vector<PCString>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::vector<PCString>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::vector<PCString>>>>::destroy(this + 112, *(this + 15));
  PCSharedMutex::~PCSharedMutex((this + 8));
  PCSingleton::~PCSingleton(this);

  JUMPOUT(0x2666E9F00);
}

void std::__tree<std::__value_type<PCString,std::vector<PCString>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::vector<PCString>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::vector<PCString>>>>::destroy(uint64_t a1, PCString *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PCString,std::vector<PCString>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::vector<PCString>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::vector<PCString>>>>::destroy(a1, a2->var0);
    std::__tree<std::__value_type<PCString,std::vector<PCString>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::vector<PCString>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::vector<PCString>>>>::destroy(a1, a2[1].var0);
    v4 = a2 + 5;
    std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v4);
    PCString::~PCString(a2 + 4);
    operator delete(a2);
  }
}

void std::vector<PCString>::__assign_with_size[abi:ne200100]<PCString*,PCString*>(uint64_t a1, PCString *a2, PCString *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 3)
  {
    std::vector<PCString>::__vdeallocate(a1);
    if (!(a4 >> 61))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 2;
      if (v9 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<PCString>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v12 = *(a1 + 8);
  v13 = v12 - v8;
  if (a4 <= v12 - v8)
  {
    if (a2 != a3)
    {
      do
      {
        PCString::set(v8++, v6++);
      }

      while (v6 != a3);
      v12 = *(a1 + 8);
    }

    while (v12 != v8)
    {
      PCString::~PCString(--v12);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = a2;
      do
      {
        PCString::set(v8++, v15++);
        v14 -= 8;
      }

      while (v14);
      v12 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PCString>,PCString*,PCString*,PCString*>(a1, (v6 + v13), a3, v12);
  }
}

void std::vector<PCString>::__vdeallocate(void **a1)
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
        PCString::~PCString(v3 - 1);
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

__CFString *std::__tree<std::__value_type<PCString,std::vector<PCString>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::vector<PCString>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::vector<PCString>>>>::__emplace_hint_unique_key_args<PCString,std::pair<PCString,std::vector<PCString>>>(PCString *a1, PCString *a2, PCString *a3)
{
  result = std::__tree<std::__value_type<PCString,std::vector<PCString>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::vector<PCString>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::vector<PCString>>>>::__find_equal<PCString>(a1, a2, &v5, &v4, a3)->var0;
  if (!result)
  {
    std::__tree<std::__value_type<PCString,std::vector<PCString>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::vector<PCString>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::vector<PCString>>>>::__construct_node<std::pair<PCString,std::vector<PCString>>>();
  }

  return result;
}

PCString *std::__tree<std::__value_type<PCString,std::vector<PCString>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::vector<PCString>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::vector<PCString>>>>::__find_equal<PCString>(PCString *a1, PCString *a2, PCString **a3, __CFString **p_var0, PCString *a5)
{
  v9 = a1 + 1;
  if (&a1[1] == a2 || (PCString::compare(a5, a2 + 4) & 0x80000000) != 0)
  {
    if (a1->var0 == a2)
    {
      v12 = a2;
    }

    else
    {
      var0 = a2->var0;
      if (a2->var0)
      {
        do
        {
          v12 = var0;
          var0 = var0[1].var0;
        }

        while (var0);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2].var0;
          v17 = v12->var0 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((PCString::compare(v12 + 4, a5) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    if (a2->var0)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((PCString::compare(a2 + 4, a5) & 0x80000000) == 0)
  {
    *a3 = a2;
    *p_var0 = a2;
    return p_var0;
  }

  p_var0 = &a2[1].var0;
  v13 = a2[1].var0;
  if (v13)
  {
    v14 = a2[1].var0;
    do
    {
      v15 = v14;
      v14 = v14->isa;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2].var0;
      v17 = v15->var0 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return p_var0;
  }

  if ((PCString::compare(a5, v15 + 4) & 0x80000000) != 0)
  {
    v13 = *p_var0;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::__find_equal<PCString>(a1, a3, a5);
}

void sub_25FED568C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<PCString,std::vector<PCString>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<PCString,std::vector<PCString>>,void *>>>::operator()[abi:ne200100](uint64_t a1, PCString *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 5;
    std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v3);
    PCString::~PCString(__p + 4);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void *std::vector<BOOL>::__assign_with_size[abi:ne200100]<BOOL const*,BOOL const*>(void *result, _BYTE *a2, _BYTE *a3, unint64_t a4)
{
  result[1] = 0;
  if (a4)
  {
    v5 = result;
    if (a4 > result[2] << 6)
    {
      v6 = *result;
      if (*v5)
      {
        operator delete(v6);
        *v5 = 0;
        v5[1] = 0;
        v5[2] = 0;
      }

      std::vector<BOOL>::__vallocate[abi:ne200100](v5, a4);
    }

    return std::vector<BOOL>::__construct_at_end<BOOL const*,BOOL const*>(result, a2, a3, a4);
  }

  return result;
}

void *std::vector<BOOL>::__construct_at_end<BOOL const*,BOOL const*>(void *result, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = result[1];
  v5 = v4 + a4;
  result[1] = v4 + a4;
  if (!v4 || ((v5 - 1) ^ (v4 - 1)) >= 0x40)
  {
    if (v5 >= 0x41)
    {
      v6 = (v5 - 1) >> 6;
    }

    else
    {
      v6 = 0;
    }

    *(*result + 8 * v6) = 0;
  }

  if (a2 != a3)
  {
    v7 = v4 & 0x3F;
    v8 = (*result + 8 * (v4 >> 6));
    do
    {
      v9 = 1 << v7;
      if (*a2 == 1)
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      ++a2;
      v8 += v7 == 63;
      if (v7 == 63)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }
    }

    while (a2 != a3);
  }

  return result;
}

void OZChannelEnum::setStrings()
{
  if (__cxa_guard_acquire(&qword_280C5E6D8))
  {
    _MergedGlobals_27 = 0;

    __cxa_guard_release(&qword_280C5E6D8);
  }
}

void OZChannelFolder::OZChannelFolder(OZChannelFolder *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, int a7)
{
  OZChannelBase::OZChannelBase(this, a2, a3, a4, a5, a6);
  *v9 = &unk_28724EAC0;
  v9[2] = &unk_28724ED98;
  v9[14] = 0;
  if (a7)
  {
    operator new();
  }

  *(this + 30) = 0;
  *(this + 7) |= 0x1000uLL;
  unk_28724EB40(this);
}

void OZChannelFolder::OZChannelFolder(OZChannelFolder *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, int a6)
{
  Instance = OZChannelFolder_Factory::getInstance(this);
  OZChannelBase::OZChannelBase(this, Instance, a2, a3, a4, a5);
  *this = &unk_28724EAC0;
  *(this + 2) = &unk_28724ED98;
  *(this + 14) = 0;
  if (a6)
  {
    operator new();
  }

  *(this + 30) = 0;
  *(this + 7) |= 0x1000uLL;
  unk_28724EB40(this);
}

void OZChannelFolder::OZChannelFolder(OZChannelFolder *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5)
{
  OZChannelBase::OZChannelBase(this, a2, a3, a4);
  *v7 = &unk_28724EAC0;
  v7[2] = &unk_28724ED98;
  v7[14] = 0;
  if (a5)
  {
    operator new();
  }

  *(this + 30) = 0;
  *(this + 7) |= 0x1000uLL;
  unk_28724EB40(this);
}

void OZChannelFolder::OZChannelFolder(OZChannelFolder *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannelBase::OZChannelBase(this, a2, a3);
  *v5 = &unk_28724EAC0;
  v5[2] = &unk_28724ED98;
  v5[14] = 0;
  var0 = a2[1].var0;
  if (var0 && ((*(a2[1].var0 + 1) - *var0) & 0x7FFFFFFF8) != 0)
  {
    operator new();
  }

  *(this + 15) = a2[1].var1;
  *(this + 7) |= 0x1000uLL;
}

void OZChannelFolder::~OZChannelFolder(OZChannelFolder *this)
{
  *this = &unk_28724EAC0;
  *(this + 2) = &unk_28724ED98;
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *v2;
    *(v2 + 8) = *v2;
    if (v3)
    {
      operator delete(v3);
    }

    MEMORY[0x2666E9F00](v2, 0x80C40D6874129);
    *(this + 14) = 0;
  }

  OZChannelBase::~OZChannelBase(this);
}

{
  OZChannelFolder::~OZChannelFolder(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelFolder::~OZChannelFolder(OZChannelFolder *this)
{
  OZChannelFolder::~OZChannelFolder((this - 16));
}

{
  OZChannelFolder::~OZChannelFolder((this - 16));

  JUMPOUT(0x2666E9F00);
}

OZChannelBase *OZChannelFolder::finishInitializing(OZChannelFolder *this)
{
  result = OZChannelBase::finishInitializing(this);
  v3 = *(this + 14);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    while (v4 != v5)
    {
      v6 = *v4++;
      result = (*(*v6 + 80))(v6);
    }
  }

  return result;
}

uint64_t OZChannelFolder::compare(OZChannelFolder *this, const OZChannelBase *a2)
{
  if ((a2->var7 & 0x1000) == 0)
  {
    return 0;
  }

  result = OZChannelBase::compare(this, a2);
  if (result)
  {
    v5 = *(this + 14);
    {
      if (v7 == v8)
      {
        return 1;
      }

      else
      {
        v11 = v7 + 8;
        do
        {
          v10 += 8;
          v12 = OZChannelBase::operator!=(*(v11 - 8));
          if (v12)
          {
            break;
          }

          v13 = v11 == v8;
          v11 += 8;
        }

        while (!v13);
        return v12 ^ 1u;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double OZChannelFolder::copy(OZChannelFolder *this, const OZChannelBase *a2)
{
  OZChannelBase::copy(this, a2);
  if (a2)
  {
    if (v5)
    {
      result = v5[15];
      *(this + 15) = result;
    }
  }

  return result;
}

void *OZChannelFolder::assign(OZChannelFolder *this, const OZChannelBase *a2)
{
  OZChannelBase::assign(this, a2);
  result = (*(*this + 264))(this, a2);
  if (result)
  {
    v5 = *(this + 14);
    if (v5)
    {
      v6 = result[14];
      if (v6)
      {
        v8 = *v5;
        v7 = v5[1];
        v9 = *v6;
        if (v7 - *v5 == *(v6 + 8) - *v6 && v8 != v7)
        {
          do
          {
            v12 = *v8++;
            v11 = v12;
            v13 = *v9++;
            result = (*(*v11 + 256))(v11, v13);
          }

          while (v8 != v7);
        }
      }
    }
  }

  return result;
}

uint64_t OZChannelFolder::allowsAssignment(OZChannelFolder *this, const OZChannelBase *a2)
{
  if ((a2->var7 & 0x1000) == 0)
  {
    return 0;
  }

  result = OZChannelBase::allowsAssignment(this, a2);
  if (result)
  {
    v6 = *(this + 14);
    v7 = v5[14];
    if (v6)
    {
      if (v7)
      {
        v8 = *v6;
        v9 = *(*(this + 14) + 8);
        v10 = *v7;
        v11 = *(v5[14] + 8);
        if (v9 - v8 == v11 - v10)
        {
          if (v8 != v9 && v10 != v11)
          {
            v13 = v8 + 8;
            v14 = v10 + 8;
            do
            {
              result = (*(**(v13 - 8) + 264))(*(v13 - 8), *(v14 - 8));
              if (result)
              {
                v15 = v13 == v9;
              }

              else
              {
                v15 = 1;
              }

              v13 += 8;
              v16 = v15 || v14 == v11;
              v14 += 8;
            }

            while (!v16);
            return result;
          }

          return 1;
        }
      }
    }

    else if (!v7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

OZChannelFolder *OZChannelFolder::copyKeyframesFromChannel(OZChannelFolder *this, const CMTime *a2, OZChannelBase *a3)
{
  v3 = *(this + 14);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 != v5)
    {
      do
      {
        v8 = *v4++;
        this = (*(*v8 + 304))(v8, a2, a3);
      }

      while (v4 != v5);
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::setValue(OZChannelFolder *this, const OZChannelBase *lpsrc)
{
  if ((lpsrc->var7 & 0x1000) != 0)
  {
    v2 = *(this + 14);
    if (v2)
    {
      v3 = *(this + 14);
      if (v3)
      {
        v4 = *v2;
        v5 = v2[1];
        v6 = v5 - *v2;
        v7 = *v3;
        v8 = *(*(this + 14) + 8);
        v9 = v6 != v8 - v7 || v4 == v5;
        if (!v9 && v7 != v8)
        {
          v11 = v4 + 8;
          v12 = v7 + 8;
          do
          {
            this = (*(**(v11 - 8) + 312))(*(v11 - 8), *(v12 - 8));
            if (v11 == v5)
            {
              break;
            }

            v11 += 8;
            v9 = v12 == v8;
            v12 += 8;
          }

          while (!v9);
        }
      }
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::findMatchingDescendant(OZChannelFolder *this, const OZChannelBase *a2, OZChannelBase **a3)
{
  v3 = *(this + 14);
  if (v3)
  {
    v4 = *v3;
    v5 = *(v3 + 8);
    if (*v3 != v5)
    {
      do
      {
        this = (*(**v4 + 264))(*v4, a2);
        v8 = *v4;
        if (this)
        {
          var3 = a2->var3;
          v10 = *(v8 + 24);
          this = PCString::caseInsensitiveCompare(&a2->var4, (v8 + 32));
          if (var3 == v10)
          {
            v11 = 3;
          }

          else
          {
            v11 = 2;
          }

          if (this)
          {
            v11 = var3 == v10;
          }

          v8 = *v4;
          if (!a3[v11])
          {
            a3[v11] = v8;
          }
        }

        if ((*(v8 + 57) & 0x10) != 0)
        {
          this = OZChannelFolder::findMatchingDescendant(v12, a2, a3);
        }

        ++v4;
      }

      while (v4 != v5);
    }
  }

  return this;
}

OZChannelBase *OZChannelFolder::findMatchingCompoundChannel(OZChannelFolder *this, const PCString *a2)
{
  v2 = *(this + 14);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
    return 0;
  }

  while (1)
  {
    v6 = *v3;
    if (v7)
    {
      v8 = v7;
      OZChannelBase::getFullDisplayName(v7, &v13);
      v9 = PCString::caseInsensitiveCompare(&v13, a2);
      PCString::~PCString(&v13);
      if (!v9)
      {
        return v8;
      }

      v6 = *v3;
    }

    if ((v6[57] & 0x10) != 0)
    {
      MatchingCompoundChannel = OZChannelFolder::findMatchingCompoundChannel(v10, a2);
      if (MatchingCompoundChannel)
      {
        break;
      }
    }

    if (++v3 == v4)
    {
      return 0;
    }
  }

  return MatchingCompoundChannel;
}

OZChannelFolder *OZChannelFolder::findMatchingDescendant(OZChannelFolder *this, const OZChannelBase *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((*(*this + 264))(this))
  {
    return this;
  }

  var6 = a2->var6;
  if (var6)
  {
    goto LABEL_4;
  }

  PCString::PCString(&v21, &a2->var4);
  PCURL::PCURL(&v20, @".");
  v12 = PCString::find(&v21, &v20);
  PCString::~PCString(&v20);
  if ((v12 & 0x80000000) == 0)
  {
    PCString::substrTo(&v21, v12 - 1, &v20.var0);
    PCString::substrFrom(&v21, (v12 + 1), &v19.var0);
    PCURL::PCURL(&v18, @".");
    v13 = PCString::find(&v19, &v18);
    PCString::~PCString(&v18);
    if ((v13 & 0x80000000) == 0)
    {
      v2 = PCString::size(&v20);
      PCString::substrTo(&v21, v2 + v13, &v18.var0);
      PCString::set(&v20, &v18);
      PCString::~PCString(&v18);
      PCString::substrFrom(&v21, v13 + v2 + 2, &v18.var0);
      PCString::set(&v19, &v18);
      PCString::~PCString(&v18);
    }

    MatchingCompoundChannel = OZChannelFolder::findMatchingCompoundChannel(this, &v20);
    if (MatchingCompoundChannel)
    {
      v15 = (*(a2->var0 + 31))(a2);
      OZChannelBase::setName(v15, &v19, 0);
      *v22 = 0u;
      v23 = 0u;
      OZChannelFolder::findMatchingDescendant(MatchingCompoundChannel, v15, v22);
      if (v15)
      {
        (*(v15->var0 + 1))(v15);
      }

      v16 = v22[1];
      if (v23)
      {
        v16 = v23;
      }

      if (*(&v23 + 1))
      {
        v2 = *(&v23 + 1);
      }

      else
      {
        v2 = v16;
      }
    }

    PCString::~PCString(&v19);
    PCString::~PCString(&v20);
    if (MatchingCompoundChannel)
    {
      PCString::~PCString(&v21);
      return v2;
    }
  }

  PCString::~PCString(&v21);
  var6 = a2->var6;
  if (var6)
  {
LABEL_4:
  }

  v6 = var6 != 0;
  if (var6)
  {
    v7 = var6;
  }

  else
  {
    v7 = a2;
  }

  *v22 = 0u;
  v23 = 0u;
  OZChannelFolder::findMatchingDescendant(this, v7, v22);
  v8 = v22[1];
  if (v23)
  {
    v8 = v23;
  }

  if (*(&v23 + 1))
  {
    v2 = *(&v23 + 1);
  }

  else
  {
    v2 = v8;
  }

  v9 = !v6;
  if (!v2)
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    if (v10)
    {
      *v22 = 0u;
      v23 = 0u;
      OZChannelFolder::findMatchingDescendant(v10, a2, v22);
      v11 = v22[1];
      if (v23)
      {
        v11 = v23;
      }

      if (*(&v23 + 1))
      {
        return *(&v23 + 1);
      }

      else
      {
        return v11;
      }
    }
  }

  return v2;
}

void sub_25FED6B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  _Unwind_Resume(a1);
}

void OZChannelFolder::push_back(OZChannelFolder *this, OZChannelBase *a2)
{
  v3 = a2;
  if (a2)
  {
    if (!*(this + 14))
    {
      operator new();
    }

    OZChannelBase::registerParent(a2, this);
    std::vector<TXTabStop *>::push_back[abi:ne200100](*(this + 14), &v3);
  }
}

char *OZChannelFolder::push_front(OZChannelFolder *this, OZChannelBase *a2)
{
  v4 = a2;
  if (!*(this + 14))
  {
    operator new();
  }

  OZChannelBase::registerParent(a2, this);
  return std::vector<OZChannelBase *>::insert(*(this + 14), **(this + 14), &v4);
}

char *OZChannelFolder::insertDescendantBefore(OZChannelFolder *this, const OZChannelBase *a2, OZChannelBase *a3)
{
  v9 = a3;
  if (!*(this + 14))
  {
    operator new();
  }

  OZChannelBase::registerParent(a3, this);
  v5 = *(this + 14);
  if (a2)
  {
    v6 = *v5;
    v7 = v5[1];
    if (*v5 != v7)
    {
      while (*v6 != a2)
      {
        v6 += 8;
        if (v6 == v7)
        {
          v6 = v5[1];
          return std::vector<OZChannelBase *>::insert(v5, v6, &v9);
        }
      }
    }
  }

  else
  {
    v6 = v5[1];
  }

  return std::vector<OZChannelBase *>::insert(v5, v6, &v9);
}

char *OZChannelFolder::insertDescendantAfter(OZChannelFolder *this, const OZChannelBase *a2, OZChannelBase *a3)
{
  v10 = a3;
  if (!*(this + 14))
  {
    operator new();
  }

  OZChannelBase::registerParent(a3, this);
  v5 = *(this + 14);
  v6 = *v5;
  if (a2)
  {
    v7 = v5[1];
    v8 = *v5;
    if (v6 != v7)
    {
      while (*v8 != a2)
      {
        if (++v8 == v7)
        {
          return std::vector<OZChannelBase *>::insert(v5, v6, &v10);
        }
      }
    }

    if (v8 != v7)
    {
      v6 = (v8 + 1);
    }
  }

  return std::vector<OZChannelBase *>::insert(v5, v6, &v10);
}

OZChannelFolder *OZChannelFolder::removeDescendant(OZChannelFolder *this, OZChannelBase *a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (v3 != v4)
    {
      v5 = this;
      v6 = (v3 + 1);
      while (*v3 != a2)
      {
        ++v3;
        v6 += 8;
        if (v3 == v4)
        {
          return this;
        }
      }

      this = OZChannelBase::unregisterParent(a2, this);
      v7 = *(v5 + 14);
      v8 = *(v7 + 8);
      v9 = v8 - v6;
      if (v8 != v6)
      {
        this = memmove(v6 - 8, v6, v8 - v6);
      }

      *(v7 + 8) = &v6[v9 - 8];
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::removeAllDescendants(OZChannelFolder *this, int a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    if (a2)
    {
      v3 = *v2;
      v4 = v2[1];
      if (*v2 != v4)
      {
        v5 = this;
        do
        {
          v6 = *v3++;
          this = OZChannelBase::unregisterParent(v6, v5);
        }

        while (v3 != v4);
        v2 = *(v5 + 14);
      }
    }

    v2[1] = *v2;
  }

  return this;
}

uint64_t OZChannelFolder::getDescendant(OZChannelFolder *this, int a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    while (v3 != v4)
    {
      result = *v3;
      if (*(*v3 + 24) == a2)
      {
        return result;
      }

      v3 += 8;
    }
  }

  return 0;
}

void OZChannelFolder::getAllDescendantsFlattened(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    v5 = *v4;
    v6 = v4[1];
    if (*v4 != v6)
    {
      v10 = a3;
      do
      {
        v11 = *v5;
        {
          if (!OZChannelBase::testFlag(v11, v10))
          {
            std::vector<TXTabStop *>::push_back[abi:ne200100](a2, v5);
            goto LABEL_16;
          }

          v11 = *v5;
        }

        if ((v11->var7 & 0x1000) == 0 || OZChannelBase::testFlag(v11, v10))
        {
          goto LABEL_16;
        }

        v12 = *v5;
        if (*v5)
        {
          if (!a4)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v13 = 0;
          if (!a4)
          {
            goto LABEL_15;
          }
        }

        if ((v12->var7 & 0x2000) == 0)
        {
LABEL_15:
          OZChannelFolder::getAllDescendantsFlattened(v13, a2, a3, 0);
        }

LABEL_16:
        ++v5;
      }

      while (v5 != v6);
    }
  }
}

OZChannelFolder *OZChannelFolder::bake(OZChannelFolder *this, const PCTimeRange *a2, const CMTime *a3)
{
  v3 = *(this + 14);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 != v5)
    {
      do
      {
        v8 = *v4++;
        this = (*(*v8 + 368))(v8, a2, a3);
      }

      while (v4 != v5);
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::setExtrapolation(OZChannelFolder *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 14);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 != v5)
    {
      do
      {
        v8 = *v4++;
        this = (*(*v8 + 384))(v8, a2, a3);
      }

      while (v4 != v5);
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::generateKeys(OZChannelFolder *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 14);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 != v5)
  {
    do
    {
      v8 = *v4++;
      this = (*(*v8 + 392))(v8, a2, a3);
    }

    while (v4 != v5);
  }

  return this;
}

OZChannelFolder *OZChannelFolder::simplify(OZChannelFolder *this, const CMTime *a2, const CMTime *a3, const CMTime *a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 14);
  v9 = *v8;
  v10 = v8[1];
  if (*v8 != v10)
  {
    do
    {
      v18 = *v9++;
      this = (*(*v18 + 376))(v18, a2, a3, a4, a6, a7, a8, a5);
    }

    while (v9 != v10);
  }

  return this;
}

OZChannelFolder *OZChannelFolder::setFoldFlags(OZChannelFolder *this, int a2)
{
  v3 = this;
  if ((a2 & 0xFF7DDFF0) != 0)
  {
    this = (*(*this + 464))(this, 1);
  }

  *(v3 + 30) = a2;
  return this;
}

OZChannelFolder *OZChannelFolder::setFoldFlag(OZChannelFolder *this, int a2)
{
  v3 = this;
  if ((a2 & 0xFF7DDFF0) != 0)
  {
    this = (*(*this + 464))(this, 1);
  }

  *(v3 + 30) |= a2;
  return this;
}

OZChannelFolder *OZChannelFolder::resetFoldFlag(OZChannelFolder *this, int a2)
{
  v3 = this;
  if ((a2 & 0xFF7DDFF0) != 0)
  {
    this = (*(*this + 464))(this, 1);
  }

  *(v3 + 30) &= ~a2;
  return this;
}

uint64_t OZChannelFolder::resetTimeIndependentFlagIfNeeded(OZChannelFolder *this, int a2, int a3)
{
  result = OZChannelBase::isLocked(this, 1);
  if (result)
  {
    return result;
  }

  if (!a3)
  {
    goto LABEL_5;
  }

  result = *(this + 6);
  if (result)
  {
    result = (*(*result + 704))(result, 0, 1);
LABEL_5:
    if (!a2)
    {
      return result;
    }
  }

  v7 = *(this + 14);
  if (v7)
  {
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      do
      {
        result = *v8;
        if ((*(*v8 + 57) & 0x10) != 0)
        {
          result = (*(*v10 + 704))(v10, 1, 0);
        }

        v8 += 8;
      }

      while (v8 != v9);
    }
  }

  return result;
}

uint64_t OZChannelFolder::lockFromParent(OZChannelFolder *this, unsigned int a2, uint64_t a3)
{
  result = OZChannelBase::isLocked(this, a3);
  v7 = *(this + 14);
  if (v7)
  {
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      v10 = result;
      do
      {
        result = OZChannelBase::testFlag(*v8, 2);
        if ((result & 1) == 0)
        {
          result = (*((*v8)->var0 + 37))(*v8, v10 | a2, a3);
        }

        ++v8;
      }

      while (v8 != v9);
    }
  }

  return result;
}

uint64_t OZChannelFolder::lock(OZChannelFolder *this, uint64_t a2, uint64_t a3)
{
  result = OZChannelBase::lock(this, a2);
  v7 = *(this + 14);
  if (v7)
  {
    v8 = *v7;
    v9 = v7[1];
    while (v8 != v9)
    {
      result = OZChannelBase::testFlag(*v8, 2);
      if ((result & 1) == 0)
      {
        result = (*((*v8)->var0 + 37))(*v8, a2, a3);
      }

      ++v8;
    }
  }

  return result;
}

OZChannelFolder *OZChannelFolder::undoWillReplace(OZChannelFolder *this)
{
  v1 = *(this + 14);
  if (v1)
  {
    v2 = *v1;
    v3 = v1[1];
    while (v2 != v3)
    {
      v4 = *v2++;
      this = (*(*v4 + 352))(v4);
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::undoDidReplace(OZChannelFolder *this)
{
  v1 = *(this + 14);
  if (v1)
  {
    v2 = *v1;
    v3 = v1[1];
    while (v2 != v3)
    {
      v4 = *v2++;
      this = (*(*v4 + 360))(v4);
    }
  }

  return this;
}

uint64_t OZChannelFolder::resetToDefault(OZChannelFolder *this, uint64_t a2)
{
  result = (*(*this + 464))(this, 1);
  v5 = *(this + 14);
  if (v5)
  {
    v6 = *v5;
    v7 = v5[1];
    while (v6 != v7)
    {
      result = OZChannelBase::testFlag(*v6, 0x20000000000);
      if ((result & 1) == 0)
      {
        result = (*((*v6)->var0 + 36))(*v6, a2);
      }

      ++v6;
    }
  }

  return result;
}

OZChannelBase *OZChannelFolder::saveStateAsDefault(OZChannelFolder *this)
{
  result = OZChannelBase::saveStateAsDefault(this);
  *(this + 31) = *(this + 30) & 0xFF7DDFF0;
  return result;
}

OZChannelFolder *OZChannelFolder::setDefaultToCurrentValue(OZChannelFolder *this)
{
  v1 = *(this + 14);
  if (v1)
  {
    v2 = *v1;
    v3 = v1[1];
    while (v2 != v3)
    {
      v4 = *v2++;
      this = (*(*v4 + 136))(v4);
    }
  }

  return this;
}

uint64_t OZChannelFolder::saveWhenAtDefaultState(OZChannelFolder *this)
{
  if (OZChannelBase::testFlag(this, 0x100000000))
  {
    return 1;
  }

  v3 = *(this + 14);
  if (!v3)
  {
    return 0;
  }

  v4 = v3[1];
  if (*v3 == v4)
  {
    return 0;
  }

  v5 = *v3 + 8;
  do
  {
    result = (*(**(v5 - 8) + 144))(*(v5 - 8));
    if (result)
    {
      break;
    }

    v6 = v5 == v4;
    v5 += 8;
  }

  while (!v6);
  return result;
}

_BYTE *OZChannelFolder::markFactoriesForSerialization(OZChannelFolder *this, PCSerializerWriteStream *a2)
{
  result = OZFactory::setNeedsSaving(*(this + 1), 1);
  v5 = *(this + 14);
  if (v5)
  {
    v6 = *v5;
    v7 = v5[1];
    while (v6 != v7)
    {
      v8 = *v6++;
      result = (*(*v8 + 416))(v8, a2, 0);
    }
  }

  return result;
}

uint64_t OZChannelFolder::writeBody(OZChannelFolder *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  OZChannelBase::writeBody(this, a2, a3);
  v10 = *(this + 30);
  PCSerializerWriteStream::pushScope(a2, &OZChannelFolderScope);
  if (v10)
  {
    if (!(*(*a2 + 232))(a2) || (v10 &= 0x7FF8DFF0u, v10))
    {
      (*(*a2 + 16))(a2, 111);
      (*(*a2 + 56))(a2, v10);
      (*(*a2 + 24))(a2);
    }
  }

  v11 = *(this + 14);
  if (v11)
  {
    v12 = a4 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && (*(this + 123) & 1) == 0)
  {
    v13 = *v11;
    v14 = v11[1];
    while (v13 != v14)
    {
      if ((!OZChannelBase::testFlag(*v13, 8) || (*((*v13)->var0 + 18))() && (*(*a2 + 232))(a2) && !OZChannelBase::testFlag(*v13, 128)) && ((a5 & 1) != 0 || ((*((*v13)->var0 + 62))(*v13, 0) & 1) != 0 || ((*((*v13)->var0 + 19))() & 1) != 0 || (*((*v13)->var0 + 18))()))
      {
        p_var2 = &(*v13)->var2;
        (*(*p_var2 + 16))(p_var2, a2, a3);
        (*(*p_var2 + 24))(p_var2, a2, a3, 1, a5);
        (*(*a2 + 24))(a2);
      }

      ++v13;
    }
  }

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZChannelFolder::calcHashForState(OZChannelFolder *this, PCSerializerWriteStream *a2, const CMTime *a3)
{
  result = OZChannelBase::calcHashForState(this, a2, a3);
  v7 = *(this + 14);
  if (v7)
  {
    v8 = *v7;
    v9 = v7[1];
    v10 = *(this + 7);
    (*(*a2 + 16))(a2, 0);
    (*(*a2 + 72))(a2, v10 & 0x8000);
    result = (*(*a2 + 24))(a2);
    while (v8 != v9)
    {
      v11 = *v8++;
      result = (*(*v11 + 448))(v11, a2, a3);
    }
  }

  return result;
}

uint64_t OZChannelFolder::parseBegin(OZChannelFolder *this, PCSerializerReadStream *a2)
{
  OZChannelBase::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelFolderScope);
  return 1;
}

uint64_t non-virtual thunk toOZChannelFolder::parseBegin(OZChannelFolder *this, PCSerializerReadStream *a2)
{
  OZChannelBase::parseBegin((this - 16), a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelFolderScope);
  return 1;
}

uint64_t OZChannelFolder::parseElement(OZChannelFolder *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  *v28 = 0;
  v27 = 0;
  v25 = 0.0;
  v26 = 0;
  OZChannelBase::parseElement(this, a2, a3);
  v6 = *(a3 + 2);
  if (v6 == 111)
  {
    if ((*(*a3 + 32))(a3, &v27))
    {
      *(this + 30) = v27 & 0xFDDDFFFF | *(this + 30) & 0x2220000;
    }
  }

  else if (v6 == 110)
  {
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v28[1]);
    v7 = *(this + 14);
    if (!v7 || (v8 = *v7, v9 = v7[1], v8 == v9))
    {
LABEL_7:
      v28[0] = 0;
      AttributeAsUInt32 = PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 113, v28);
      Instance = OZFactories::getInstance(AttributeAsUInt32);
      v13 = OZFactories::lookupFactory(Instance, v28[0]);
      {
        (*(*a2 + 40))(a2);
        return 1;
      }
    }

    else
    {
      while (1)
      {
        v10 = *v8;
        if ((*v8)->var3 == v28[1])
        {
          break;
        }

        if (++v8 == v9)
        {
          goto LABEL_7;
        }
      }
    }

    if (PCSerializerReadStream::getAttributeAsUInt64(a2, a3, 112, &v26))
    {
      v26 = v10->var7 & 0x2080A3898 | v26 & 0xFFFFFFFDF7F5C767;
      OZChannelBase::setFlags(v10, v26);
    }

    if (PCSerializerReadStream::getAttributeAsDouble(a2, a3, 115, &v25))
    {
      if (v17)
      {
        OZChannel::setDefaultValue(v17, v25);
      }
    }

    var1 = v10->var1;
    *&v29[0].var0 = xmmword_2608486A0;
    if (OZFactory::isKindOfClass(var1, v29))
    {
      PCSharedCount::PCSharedCount(v29);
      if (v19)
      {
        v20 = v19;
        if ((*(*a3 + 96))(a3, 114, v29))
        {
          (*(*v20 + 608))(v20, MEMORY[0x277CC08F0]);
          PCString::PCString(&v24, v29);
          v21.var0 = &v24;
          OZChannelBlindData::setData(v20, v21);
          PCString::~PCString(&v24);
        }

        else
        {
          PCSerializerReadStream::pushHandler(a2, (v20 + 16));
          (*(*v20 + 440))(v20, a2, a3);
        }
      }

      PCString::~PCString(v29);
    }

    else
    {
      if (PCSerializerReadStream::getAttributeAsDouble(a2, a3, 114, &v25))
      {
        if (v22)
        {
          OZChannel::setInitialValue(v22, v25, 0);
        }
      }

      PCSerializerReadStream::pushHandler(a2, &v10->var2);
    }
  }

  return 1;
}

void sub_25FED83C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, PCString a15)
{
  PCString::~PCString(&a10);
  PCString::~PCString(&a15);
  _Unwind_Resume(a1);
}

OZChannelFolder *OZChannelFolder::setIsSpline(OZChannelFolder *this, uint64_t a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        this = OZChannelBase::testFlag(*v3, 2);
        if ((this & 1) == 0)
        {
          this = (*((*v3)->var0 + 60))(*v3, a2);
        }

        ++v3;
      }

      while (v3 != v4);
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::setKeyframable(OZChannelFolder *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 14);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 != v5)
    {
      do
      {
        this = OZChannelBase::testFlag(*v4, 2);
        if (this)
        {
          v8 = a3 == 0;
        }

        else
        {
          v8 = 0;
        }

        if (!v8)
        {
          this = (*((*v4)->var0 + 63))(*v4, a2, a3);
        }

        ++v4;
      }

      while (v4 != v5);
    }
  }

  return this;
}

uint64_t OZChannelFolder::isKeyframable(OZChannelFolder *this)
{
  v1 = *(this + 14);
  if (!v1)
  {
    return 0;
  }

  v2 = *v1;
  v3 = v1[1];
  while (1)
  {
    if (v2 == v3)
    {
      return 0;
    }

    if (!OZChannelBase::testFlag(*v2, 2) && ((*((*v2)->var0 + 64))(*v2) & 1) != 0)
    {
      break;
    }

    ++v2;
  }

  return 1;
}

uint64_t OZChannelFolder::isModified(OZChannelFolder *this, uint64_t a2)
{
  if (a2 && OZChannelBase::testFlag(this, 2))
  {
    return 0;
  }

  if ((*(this + 122) & 2) != 0)
  {
    return !OZChannelBase::testFlag(this, 0x8000);
  }

  v4 = *(this + 14);
  if (!v4)
  {
    return 0;
  }

  v5 = v4[1];
  if (*v4 == v5)
  {
    return 0;
  }

  v6 = *v4 + 8;
  do
  {
    result = (*(**(v6 - 8) + 496))(*(v6 - 8), a2);
    if (result)
    {
      break;
    }

    v8 = v6 == v5;
    v6 += 8;
  }

  while (!v8);
  return result;
}

uint64_t OZChannelFolder::isSpline(OZChannelFolder *this)
{
  v1 = *(this + 14);
  if (!v1)
  {
    return 0;
  }

  v2 = *v1;
  v3 = v1[1];
  while (1)
  {
    if (v2 == v3)
    {
      return 0;
    }

    if (!OZChannelBase::testFlag(*v2, 2) && ((*((*v2)->var0 + 61))(*v2) & 1) != 0)
    {
      break;
    }

    ++v2;
  }

  return 1;
}

uint64_t OZChannelFolder::hasKeypoints(OZChannelFolder *this, unsigned int a2)
{
  v2 = *(this + 14);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
    return 0;
  }

  v5 = a2;
  while (OZChannelBase::testFlag(*v3, 2) || OZChannelBase::testFlag(*v3, v5) || ((*((*v3)->var0 + 69))(*v3, 0) & 1) == 0)
  {
    if (++v3 == v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t OZChannelFolder::hasMoreThanOneKeypoint(OZChannelFolder *this)
{
  v1 = *(this + 14);
  if (!v1)
  {
    return 0;
  }

  v2 = *v1;
  v3 = v1[1];
  while (1)
  {
    if (v2 == v3)
    {
      return 0;
    }

    if (!OZChannelBase::testFlag(*v2, 2) && ((*((*v2)->var0 + 70))(*v2) & 1) != 0)
    {
      break;
    }

    ++v2;
  }

  return 1;
}

uint64_t OZChannelFolder::hasFadeHandles(OZChannelFolder *this)
{
  v1 = *(this + 14);
  if (!v1)
  {
    return 0;
  }

  v2 = *v1;
  v3 = v1[1];
  while (1)
  {
    if (v2 == v3)
    {
      return 0;
    }

    if (!OZChannelBase::testFlag(*v2, 2) && ((*((*v2)->var0 + 83))(*v2) & 1) != 0)
    {
      break;
    }

    ++v2;
  }

  return 1;
}

OZChannelFolder *OZChannelFolder::scaleFadeHandles(OZChannelFolder *this, double a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        this = OZChannelBase::testFlag(*v3, 2);
        if ((this & 1) == 0)
        {
          this = (*((*v3)->var0 + 84))(*v3, a2);
        }

        ++v3;
      }

      while (v3 != v4);
    }
  }

  return this;
}

uint64_t OZChannelFolder::keyframesWithChannels(uint64_t result, _OWORD *a2, uint64_t a3)
{
  v3 = *(result + 112);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 != v5)
    {
      do
      {
        result = OZChannelBase::testFlag(*v4, 2);
        if ((result & 1) == 0)
        {
          v11 = *v4;
          v12 = a2[1];
          v13[0] = *a2;
          v13[1] = v12;
          v13[2] = a2[2];
          result = (*(v11->var0 + 67))(v11, v13, a3, v8, v9, v10);
        }

        ++v4;
      }

      while (v4 != v5);
    }
  }

  return result;
}

uint64_t OZChannelFolder::hasKeypointAt(OZChannelFolder *this, const CMTime *a2, unsigned int a3)
{
  v3 = *(this + 14);
  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    return 0;
  }

  v7 = a3;
  while (OZChannelBase::testFlag(*v4, 2) || OZChannelBase::testFlag(*v4, v7) || ((*((*v4)->var0 + 71))(*v4, a2, 0) & 1) == 0)
  {
    if (++v4 == v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t OZChannelFolder::allHaveKeypointsAt(OZChannelFolder *this, const CMTime *a2)
{
  v2 = *(this + 14);
  if (!v2 || (v3 = *v2, v4 = v2[1], *v2 == v4))
  {
LABEL_9:
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      if (!OZChannelBase::testFlag(*v3, 2))
      {
        if (!(*((*v3)->var0 + 72))(*v3, a2))
        {
          goto LABEL_9;
        }

        v6 = 1;
      }

      ++v3;
    }

    while (v3 != v4);
  }

  return v6 & 1;
}

uint64_t OZChannelFolder::hasOnlyOneKeypointAt(OZChannelFolder *this, const CMTime *a2)
{
  v2 = *(this + 14);
  if (!v2)
  {
    return 1;
  }

  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
    return 1;
  }

  v6 = 0;
  while (1)
  {
    if (!OZChannelBase::testFlag(*v3, 2))
    {
      v6 += (*((*v3)->var0 + 74))(*v3, a2);
      if (v6 > 1)
      {
        break;
      }
    }

    if (++v3 == v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t OZChannelFolder::numberOfKeypointsAt(OZChannelFolder *this, const CMTime *a2)
{
  v2 = *(this + 14);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    if (!OZChannelBase::testFlag(*v3, 2))
    {
      v6 = (*((*v3)->var0 + 74))(*v3, a2) + v6;
    }

    ++v3;
  }

  while (v3 != v4);
  return v6;
}

OZChannelFolder *OZChannelFolder::addKeypointAt(OZChannelFolder *this, const CMTime *a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        this = OZChannelBase::testFlag(*v3, 2);
        if ((this & 1) == 0)
        {
          this = (*((*v3)->var0 + 75))(*v3, a2);
        }

        ++v3;
      }

      while (v3 != v4);
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::deleteKeypoints(OZChannelFolder *this, const CMTime *a2, const CMTime *a3)
{
  v3 = *(this + 14);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 != v5)
    {
      do
      {
        this = OZChannelBase::testFlag(*v4, 2);
        if ((this & 1) == 0)
        {
          this = (*((*v4)->var0 + 85))(*v4, a2, a3);
        }

        ++v4;
      }

      while (v4 != v5);
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::deleteKeypointAt(OZChannelFolder *this, const CMTime *a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        this = OZChannelBase::testFlag(*v3, 2);
        if ((this & 1) == 0)
        {
          this = (*((*v3)->var0 + 76))(*v3, a2);
        }

        ++v3;
      }

      while (v3 != v4);
    }
  }

  return this;
}

uint64_t OZChannelFolder::moveKeypointTo@<X0>(OZChannelFolder *this@<X0>, const CMTime *a2@<X1>, const CMTime *a3@<X2>, CMTime *a4@<X8>)
{
  v16 = **&MEMORY[0x277CC08F0];
  AncestorRootBase = OZChannelBase::getAncestorRootBase(this);
  if (AncestorRootBase)
  {
    (*(AncestorRootBase->var0 + 110))(&v16);
  }

  v15 = *a2;
  *&a4->value = *&a3->value;
  a4->epoch = a3->epoch;
  time1 = *a2;
  time2 = *a3;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    v14 = v15;
    result = (*(*this + 624))(this, &v14, 0);
    if (!result)
    {
      goto LABEL_10;
    }

    time2 = v14;
    v13 = v16;
    CMTimeAdd(&time1, &time2, &v13);
    v14 = time1;
    time2 = *a4;
    result = CMTimeCompare(&time1, &time2);
    if (result < 1)
    {
      goto LABEL_10;
    }

LABEL_9:
    *a4 = v14;
    goto LABEL_10;
  }

  v14 = v15;
  result = (*(*this + 632))(this, &v14, 0);
  if (result)
  {
    time2 = v14;
    v13 = v16;
    CMTimeSubtract(&time1, &time2, &v13);
    v14 = time1;
    time2 = *a4;
    result = CMTimeCompare(&time1, &time2);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v10 = *(this + 14);
  if (v10)
  {
    v11 = *v10;
    v12 = v10[1];
    while (v11 != v12)
    {
      result = OZChannelBase::testFlag(*v11, 2);
      if ((result & 1) == 0)
      {
        result = (*((*v11)->var0 + 77))(&time1);
      }

      ++v11;
    }
  }

  return result;
}

uint64_t OZChannelFolder::previousKeypoint(OZChannelFolder *this, CMTime *a2, unsigned int a3)
{
  v3 = *(this + 14);
  if (!v3)
  {
    return 0;
  }

  v11 = **&MEMORY[0x277CC08F0];
  *&v10.value = *MEMORY[0x277CC08A0];
  v10.epoch = *(MEMORY[0x277CC08A0] + 16);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = a3;
  do
  {
    if (!OZChannelBase::testFlag(*v4, 2) && !OZChannelBase::testFlag(*v4, v8))
    {
      v11 = *a2;
      if ((*((*v4)->var0 + 78))(*v4, &v11, 0))
      {
        time1 = v10;
        time2 = v11;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          v10 = v11;
        }

        v7 = 1;
      }
    }

    ++v4;
  }

  while (v4 != v5);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  *&a2->value = *&v10.value;
  a2->epoch = v10.epoch;
  return 1;
}

uint64_t OZChannelFolder::nextKeypoint(OZChannelFolder *this, CMTime *a2, unsigned int a3)
{
  v3 = *(this + 14);
  if (!v3)
  {
    return 0;
  }

  v11 = **&MEMORY[0x277CC08F0];
  *&v10.value = *MEMORY[0x277CC08B0];
  v10.epoch = *(MEMORY[0x277CC08B0] + 16);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = a3;
  do
  {
    if (!OZChannelBase::testFlag(*v4, 2) && !OZChannelBase::testFlag(*v4, v8))
    {
      v11 = *a2;
      if ((*((*v4)->var0 + 79))(*v4, &v11, 0))
      {
        time1 = v10;
        time2 = v11;
        if (CMTimeCompare(&time1, &time2) >= 1)
        {
          v10 = v11;
        }

        v7 = 1;
      }
    }

    ++v4;
  }

  while (v4 != v5);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  *&a2->value = *&v10.value;
  a2->epoch = v10.epoch;
  return 1;
}

OZChannelFolder *OZChannelFolder::retimeKeypoints(OZChannelFolder *this, double a2, const CMTime *a3)
{
  v3 = *(this + 14);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 != v5)
    {
      do
      {
        this = OZChannelBase::testFlag(*v4, 0x20000);
        if ((this & 1) == 0)
        {
          this = (*((*v4)->var0 + 80))(*v4, a3, a2);
        }

        ++v4;
      }

      while (v4 != v5);
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::setInterpolation(OZChannelFolder *this, uint64_t a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        this = OZChannelBase::testFlag(*v3, 2);
        if ((this & 1) == 0)
        {
          this = (*((*v3)->var0 + 82))(*v3, a2);
        }

        ++v3;
      }

      while (v3 != v4);
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::adjustToFrameDuration(OZChannelFolder *this, const CMTime *a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        v6 = *v3++;
        this = (*(*v6 + 648))(v6, a2);
      }

      while (v3 != v4);
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::beginPlayback(OZChannelFolder *this, const CMTime *a2, uint64_t a3, uint64_t a4, const CMTime *a5)
{
  v5 = *(this + 14);
  if (v5)
  {
    v6 = *v5;
    v7 = v5[1];
    if (*v5 != v7)
    {
      do
      {
        this = OZChannelBase::testFlag(*v6, 2);
        if ((this & 1) == 0)
        {
          this = (*((*v6)->var0 + 20))(*v6, a2, a3, a4, a5);
        }

        ++v6;
      }

      while (v6 != v7);
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::endPlayback(OZChannelFolder *this, const CMTime *a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        this = OZChannelBase::testFlag(*v3, 2);
        if ((this & 1) == 0)
        {
          this = (*((*v3)->var0 + 21))(*v3, a2);
        }

        ++v3;
      }

      while (v3 != v4);
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::beginRecording(OZChannelFolder *this, const CMTime *a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        this = OZChannelBase::testFlag(*v3, 2);
        if ((this & 1) == 0)
        {
          this = (*((*v3)->var0 + 22))(*v3, a2);
        }

        ++v3;
      }

      while (v3 != v4);
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::endRecording(OZChannelFolder *this, const CMTime *a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        this = OZChannelBase::testFlag(*v3, 2);
        if ((this & 1) == 0)
        {
          this = (*((*v3)->var0 + 23))(*v3, a2);
        }

        ++v3;
      }

      while (v3 != v4);
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::updateCurrentRecordingTime(OZChannelFolder *this, const CMTime *a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        this = OZChannelBase::testFlag(*v3, 2);
        if ((this & 1) == 0)
        {
          this = (*((*v3)->var0 + 24))(*v3, a2);
        }

        ++v3;
      }

      while (v3 != v4);
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::registerRecordingCallback(OZChannelFolder *this, void (*a2)(OZChannelBase *, const CMTime *, void *), void *a3, uint64_t a4)
{
  v4 = *(this + 14);
  if (v4)
  {
    v5 = *v4;
    v6 = v4[1];
    if (*v4 != v6)
    {
      do
      {
        this = OZChannelBase::testFlag(*v5, 2);
        if ((this & 1) == 0)
        {
          this = (*((*v5)->var0 + 25))(*v5, a2, a3, a4);
        }

        ++v5;
      }

      while (v5 != v6);
    }
  }

  return this;
}

OZChannelFolder *OZChannelFolder::unregisterRecordingCallback(OZChannelFolder *this, void (*a2)(OZChannelBase *, const CMTime *, void *), void *a3)
{
  v3 = *(this + 14);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 != v5)
    {
      do
      {
        this = OZChannelBase::testFlag(*v4, 2);
        if ((this & 1) == 0)
        {
          this = (*((*v4)->var0 + 26))(*v4, a2, a3);
        }

        ++v4;
      }

      while (v4 != v5);
    }
  }

  return this;
}

uint64_t OZChannelFolder::hasDescendant(OZChannelFolder *this, const OZChannelBase *a2)
{
  v2 = *(this + 14);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
    return 0;
  }

  while (1)
  {
    v6 = *v3;
    if (*v3 == a2)
    {
      break;
    }

    if ((v6->var7 & 0x1000) != 0)
    {
      if (OZChannelFolder::hasDescendant(v7, a2))
      {
        break;
      }
    }

    if (++v3 == v4)
    {
      return 0;
    }
  }

  return 1;
}

void OZChannelGradient::OZChannelGradient(OZChannelGradient *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, a5, a6, 0);
  *v7 = &unk_28724EE08;
  *(v7 + 2) = &unk_28724F0E0;
  TXParagraphStyleFolder_Factory::createInstance(v7, v8);
  PCURL::PCURL(&v22, @"Channel Gradient Folder RGB");
  OZChannelGradientRGBFolder::OZChannelGradientRGBFolder((this + 128), &v22, this, 1u, 0);
  PCString::~PCString(&v22);
  TXParagraphStyleFolder_Factory::createInstance(v9, v10);
  PCURL::PCURL(&v22, @"Channel Gradient Folder Alpha");
  OZChannelGradientAlphaFolder::OZChannelGradientAlphaFolder((this + 256), &v22, this, 2u, 0);
  PCString::~PCString(&v22);
  TXParagraphStyleFolder_Factory::createInstance(v11, v12);
  PCURL::PCURL(&v22, @"Channel Gamma");
  Instance = OZChannelGradient::OZChannelGradient_gammaImpl::getInstance(v13);
  OZChannelDouble::OZChannelDouble((this + 384), &v22, this, 0x50u, 138, Instance, 0);
  PCString::~PCString(&v22);
  TXParagraphStyleFolder_Factory::createInstance(v15, v16);
  PCURL::PCURL(&v22, @"Channel Color Space Enum");
  TXParagraphStyleFolder_Factory::createInstance(v17, v18);
  PCURL::PCURL(&v21, @"Channel Color Space");
  v20 = OZChannelGradient::OZChannelGradient_colorSpaceIDImpl::getInstance(v19);
  OZChannelEnum::OZChannelEnum((this + 536), &v22, &v21, this, 0xBu, 0x82u, v20, 0);
  PCString::~PCString(&v21);
  PCString::~PCString(&v22);
  *(this + 198) = 0;
  *(this + 796) = 0;
  OZChannelFolder::setFoldFlag(this, 15);
  (*(*this + 128))(this);
  OZChannelGradient::resetToDefaultStandard(this);
}

void sub_25FED9D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelGradientRGBFolder::~OZChannelGradientRGBFolder((v10 + 128));
  OZChannelFolder::~OZChannelFolder(v10);
  _Unwind_Resume(a1);
}

void OZChannelGradient::OZChannelGradient(OZChannelGradient *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, 0);
  *v5 = &unk_28724EE08;
  *(v5 + 2) = &unk_28724F0E0;
  TXParagraphStyleFolder_Factory::createInstance(v5, v6);
  PCURL::PCURL(&v20, @"Channel Gradient Folder RGB");
  OZChannelGradientRGBFolder::OZChannelGradientRGBFolder((this + 128), &v20, this, 1u, 0);
  PCString::~PCString(&v20);
  TXParagraphStyleFolder_Factory::createInstance(v7, v8);
  PCURL::PCURL(&v20, @"Channel Gradient Folder Alpha");
  OZChannelGradientAlphaFolder::OZChannelGradientAlphaFolder((this + 256), &v20, this, 2u, 0);
  PCString::~PCString(&v20);
  TXParagraphStyleFolder_Factory::createInstance(v9, v10);
  PCURL::PCURL(&v20, @"Channel Gamma");
  Instance = OZChannelGradient::OZChannelGradient_gammaImpl::getInstance(v11);
  OZChannelDouble::OZChannelDouble((this + 384), &v20, this, 0x50u, 138, Instance, 0);
  PCString::~PCString(&v20);
  TXParagraphStyleFolder_Factory::createInstance(v13, v14);
  PCURL::PCURL(&v20, @"Channel Color Space Enum");
  TXParagraphStyleFolder_Factory::createInstance(v15, v16);
  PCURL::PCURL(&v19, @"Channel Color Space");
  v18 = OZChannelGradient::OZChannelGradient_colorSpaceIDImpl::getInstance(v17);
  OZChannelEnum::OZChannelEnum((this + 536), &v20, &v19, this, 0xBu, 0x82u, v18, 0);
  PCString::~PCString(&v19);
  PCString::~PCString(&v20);
  *(this + 198) = 0;
  *(this + 796) = 0;
  OZChannelFolder::setFoldFlag(this, 15);
  (*(*this + 128))(this);
  OZChannelGradient::resetToDefaultStandard(this);
}

void sub_25FEDA190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelGradientRGBFolder::~OZChannelGradientRGBFolder((v10 + 128));
  OZChannelFolder::~OZChannelFolder(v10);
  _Unwind_Resume(a1);
}

void OZChannelGradient::OZChannelGradient(OZChannelGradient *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelGradient_Factory::getInstance(this);
  OZChannelFolder::OZChannelFolder(this, Instance, a2, a3, a4, a5, 0);
  *this = &unk_28724EE08;
  *(this + 2) = &unk_28724F0E0;
  TXParagraphStyleFolder_Factory::createInstance(v11, v12);
  PCURL::PCURL(&v26, @"Channel Gradient Folder RGB");
  OZChannelGradientRGBFolder::OZChannelGradientRGBFolder((this + 128), &v26, this, 1u, 0);
  PCString::~PCString(&v26);
  TXParagraphStyleFolder_Factory::createInstance(v13, v14);
  PCURL::PCURL(&v26, @"Channel Gradient Folder Alpha");
  OZChannelGradientAlphaFolder::OZChannelGradientAlphaFolder((this + 256), &v26, this, 2u, 0);
  PCString::~PCString(&v26);
  TXParagraphStyleFolder_Factory::createInstance(v15, v16);
  PCURL::PCURL(&v26, @"Channel Gamma");
  v18 = OZChannelGradient::OZChannelGradient_gammaImpl::getInstance(v17);
  OZChannelDouble::OZChannelDouble((this + 384), &v26, this, 0x50u, 138, v18, 0);
  PCString::~PCString(&v26);
  TXParagraphStyleFolder_Factory::createInstance(v19, v20);
  PCURL::PCURL(&v26, @"Channel Color Space Enum");
  TXParagraphStyleFolder_Factory::createInstance(v21, v22);
  PCURL::PCURL(&v25, @"Channel Color Space");
  v24 = OZChannelGradient::OZChannelGradient_colorSpaceIDImpl::getInstance(v23);
  OZChannelEnum::OZChannelEnum((this + 536), &v26, &v25, this, 0xBu, 0x82u, v24, 0);
  PCString::~PCString(&v25);
  PCString::~PCString(&v26);
  *(this + 198) = 0;
  *(this + 796) = 0;
  OZChannelFolder::setFoldFlag(this, 15);
  (*(*this + 128))(this);
  OZChannelGradient::resetToDefaultStandard(this);
}

void sub_25FEDA4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelGradientRGBFolder::~OZChannelGradientRGBFolder((v10 + 128));
  OZChannelFolder::~OZChannelFolder(v10);
  _Unwind_Resume(a1);
}

void OZChannelGradient::OZChannelGradient(OZChannelGradient *this, const OZChannelGradient *a2, OZChannelFolder *a3)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3);
  *v5 = &unk_28724EE08;
  v5[2] = &unk_28724F0E0;
  OZChannelGradientRGBFolder::OZChannelGradientRGBFolder((v5 + 16), (a2 + 128), this);
  OZChannelGradientAlphaFolder::OZChannelGradientAlphaFolder((this + 256), (a2 + 256), this);
  OZChannel::OZChannel((this + 384), (a2 + 384), this);
  *(this + 48) = &unk_287245C60;
  *(this + 50) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 536), (a2 + 536), this);
  *(this + 198) = *(a2 + 198);
  *(this + 796) = *(a2 + 796);
}

void sub_25FEDA6AC(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZChannelGradientAlphaFolder::~OZChannelGradientAlphaFolder((v1 + 256));
  OZChannelGradientRGBFolder::~OZChannelGradientRGBFolder((v1 + 128));
  OZChannelFolder::~OZChannelFolder(v1);
  _Unwind_Resume(a1);
}

void OZChannelGradient::~OZChannelGradient(OZChannelGradient *this)
{
  *this = &unk_28724EE08;
  *(this + 2) = &unk_28724F0E0;
  OZChannelEnum::~OZChannelEnum((this + 536));
  OZChannel::~OZChannel((this + 384));
  OZChannelGradientAlphaFolder::~OZChannelGradientAlphaFolder((this + 256));
  OZChannelGradientRGBFolder::~OZChannelGradientRGBFolder((this + 128));

  OZChannelFolder::~OZChannelFolder(this);
}

{
  OZChannelGradient::~OZChannelGradient(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelGradient::~OZChannelGradient(OZChannelGradient *this)
{
  OZChannelGradient::~OZChannelGradient((this - 16));
}

{
  OZChannelGradient::~OZChannelGradient((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelGradient::resetToDefault(OZChannelGradient *this, uint64_t a2)
{
  OZChannelFolder::resetToDefault(this, a2);
  v3 = *(this + 198);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      OZChannelGradientRGBFolder::addSample((this + 128), 0.0, 0.0, 0.0, 1.0, 0.5);
    }

    if (v3 == 3)
    {
      OZChannelGradientRGBFolder::addSample((this + 128), 0.0, 0.0, 0.0, 1.0, 0.5);
    }
  }

  else
  {
    if (!v3)
    {

      OZChannelGradient::resetToDefaultStandard(this);
    }

    if (v3 == 1)
    {
      OZChannelGradientRGBFolder::addSample((this + 128), 1.0, 1.0, 1.0, 1.0, 0.5);
    }
  }

  OZChannelGradientRGBFolder::addSample((this + 128), 1.0, 0.0, 0.0, 0.0, 0.5);
}

void OZChannelGradient::copy(OZChannelGradient *this, const OZChannelBase *a2, char a3)
{
  v4 = a2;
  OZChannelFolder::copy(this, a2);
  if (v4)
  {
  }

  OZChannelVaryingFolder::copy((this + 128), (v4 + 128));
  OZChannelVaryingFolder::copy((this + 256), (v4 + 256));
  OZChannel::copy((this + 384), (v4 + 384), a3);

  OZChannelEnum::copy(this + 67, (v4 + 536), a3);
}

void *OZChannelGradient::assign(OZChannelBase *this, const OZChannelBase *a2)
{
  OZChannelBase::assign(this, a2);
  v5 = result[14];
  v6 = *v5;
  v7 = v5[1];
  while (v6 != v7)
  {
    result = OZChannelFolder::findMatchingDescendant(this, *v6);
    if (result)
    {
      result = (*(*result + 256))(result, *v6);
    }

    ++v6;
  }

  return result;
}

uint64_t OZChannelGradient::allowsAssignment(OZChannelBase *this, const OZChannelBase *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (result)
  {
    v4 = result;
    result = OZChannelBase::allowsAssignment(this, result);
    if (result)
    {
      var0 = this[1].var0;
      if (var0 && (v6 = *(v4 + 112)) != 0)
      {
        v7 = *var0;
        v8 = var0[1];
        v9 = v6[1];
        if (*v6 == v9 || v7 == v8)
        {
          return 1;
        }

        else
        {
          v11 = v7 + 8;
          v12 = *v6 + 8;
          do
          {
            result = (*(**(v11 - 1) + 264))(*(v11 - 1), *(v12 - 8));
            if (result)
            {
              v13 = v12 == v9;
            }

            else
            {
              v13 = 1;
            }

            v14 = v13 || v11 == v8;
            v11 += 8;
            v12 += 8;
          }

          while (!v14);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

OZChannelFolder *OZChannelGradient::setValue(OZChannelGradient *this, const OZChannelBase *lpsrc)
{
  if (v4)
  {
    v5 = v4;
    OZChannelFolder::operator=(this);
    OZChannelFolder::operator=(this + 128);
    OZChannelFolder::operator=(this + 256);
    OZChannelBase::operator=(this + 384, (v5 + 384));
    result = OZChannelBase::operator=(this + 536, (v5 + 536));
    v7 = v5[796];
    *(this + 198) = *(v5 + 198);
    *(this + 796) = v7;
  }

  else
  {

    return OZChannelFolder::setValue(this, lpsrc);
  }

  return result;
}

OZFactories *OZChannelGradient::markFactoriesForSerialization(OZChannelFolder *this, PCSerializerWriteStream *a2, int a3)
{
  result = OZChannelFolder::markFactoriesForSerialization(this, a2);
  if (a3)
  {
    Instance = OZFactories::getInstance(result);
    v7 = xmmword_260848510;
    Factory = OZFactories::findFactory(Instance, &v7);
    return OZFactory::setNeedsSaving(Factory, 1);
  }

  return result;
}

uint64_t OZChannelGradient::getFactoryForSerialization(OZChannelGradient *this, PCSerializerWriteStream *a2, int a3)
{
  if (!a3)
  {
    return *(this + 1);
  }

  Instance = OZFactories::getInstance(this);
  v5 = xmmword_260848510;
  return OZFactories::findFactory(Instance, &v5);
}

uint64_t OZChannelGradient::writeHeader(OZChannelBase *this, OZFactory *a2, int a3)
{
  if (a3)
  {
    Instance = OZFactories::getInstance(this);
    v12 = xmmword_260848510;
    Factory = OZFactories::findFactory(Instance, &v12);
    var1 = this->var1;
    v10 = OZFactory::fileRefID(Factory, v9);
    OZFactory::setFileRefID(var1, v10);
  }

  return OZChannelBase::writeHeader(this, a2, a3);
}

uint64_t OZChannelGradient::writeBody(OZChannelBase *this, PCSerializerWriteStream *a2, int a3, int a4, uint64_t a5)
{
  v7 = a3;
  OZChannelBase::writeBody(this, a2, a3);
  PCSerializerWriteStream::pushScope(a2, &OZChannelFolderScope);
  var1_low = LODWORD(this[1].var1);
  if (!(*(*a2 + 232))(a2) || (var1_low = var1_low & 0xFFF8DFF0, var1_low))
  {
    (*(*a2 + 16))(a2, 111);
    (*(*a2 + 56))(a2, var1_low);
    (*(*a2 + 24))(a2);
  }

  var0 = this[1].var0;
  if (var0 && a4)
  {
    v13 = *var0;
    v12 = var0[1];
    if (v7)
    {
      if (*var0 != v12)
      {
        v14 = v13 + 1;
        v15 = 1;
        do
        {
          if (!OZChannelBase::testFlag(*(v14 - 1), 8))
          {
            v16 = *(v14 - 1);
            v17 = v16[2];
            v16 += 2;
            (*(v17 + 16))(v16, a2, 1);
            (*(*v16 + 24))(v16, a2, 1, 1, a5);
            (*(*a2 + 24))(a2);
          }

          v18 = (v14++ != v12) & v15;
          v15 = 0;
        }

        while ((v18 & 1) != 0);
      }

      goto LABEL_30;
    }

    if (*var0 == v12)
    {
      goto LABEL_30;
    }

    do
    {
      if (!OZChannelBase::testFlag(*v13, 8))
      {
        v19 = *v13;
        if (*v13 == &this[1].var2 || v19 == &this[2].var4)
        {
          if ((*(*a2 + 232))(a2) & 1) != 0 || ((*(this->var0 + 62))(this, 0))
          {
LABEL_27:
            v19 = *v13;
LABEL_28:
            v24 = *(v19 + 2);
            v23 = v19 + 16;
            (*(v24 + 16))(v23, a2, 0);
            (*(*v23 + 24))(v23, a2, 0, 1, a5);
            (*(*a2 + 24))(a2);
            goto LABEL_29;
          }

          v19 = *v13;
        }

        if (a5)
        {
          goto LABEL_28;
        }

        v21 = (*(*v19 + 496))(v19, 0);
        v19 = *v13;
        if (v21)
        {
          goto LABEL_28;
        }

        v22 = (*(*v19 + 152))(*v13);
        v19 = *v13;
        if (v22)
        {
          goto LABEL_28;
        }

        if ((*(*v19 + 144))(*v13))
        {
          goto LABEL_27;
        }
      }

LABEL_29:
      ++v13;
    }

    while (v13 != v12);
  }

LABEL_30:

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZChannelGradient::parseEnd(OZChannelGradient *this, PCSerializerReadStream *a2)
{
  v4 = OZChannelFolder::parseEnd(this, a2);
  OZChannelGradientFolder::sortAndRename((this + 128));
  OZChannelGradientFolder::sortAndRename((this + 256));
  if (*(a2 + 26) <= 3u)
  {
    v6 = OZChannelBase::setRangeName(2, v5);
    OZChannel::setValue((this + 536), MEMORY[0x277CC08F0], v6, 0);
  }

  OZChannel::getValueAsDouble((this + 384), MEMORY[0x277CC08F0], 0.0);
  if (v8 == 0.0 || v8 == 1.0)
  {
    v10 = OZChannelBase::setRangeName(3, v7);
    OZChannel::setValue((this + 536), MEMORY[0x277CC08F0], v10, 0);
  }

  return v4;
}

void OZChannelGradient::getColor(OZChannelGradient *this, const CMTime *a2, double a3, PCColor *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v29[0] = 0;
  v29[1] = 0;
  v27[1] = 0;
  v28 = v29;
  v26 = v27;
  v27[0] = 0;
  OZChannelGradientRGBFolder::getLookup(this + 16, a2, &v28);
  OZChannelGradientAlphaFolder::getLookup(this + 32, a2, &v26);
  OZChannelGradientRGBFolder::getARGBFromLookup(a3, v13, v14, this + 128, v30, &v28, v8, v9, v10, v11, v12);
  OZChannelGradientAlphaFolder::getARGBFromLookup(a3, v20, v21, this + 256, v30, &v26, v15, v16, v17, v18, v19);
  LODWORD(a3) = v30[2];
  v22 = *&v30[3];
  v23 = *v30;
  v24 = *&v30[1];
  ColorSpace = OZChannelGradient::getColorSpace(this);
  PCColor::setRGBA(a4, v24, *&a3, v22, v23, ColorSpace);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v26, v27[0]);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v28, v29[0]);
}

void sub_25FEDB584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, char a13, void *a14)
{
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&a10, a11);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&a13, a14);
  _Unwind_Resume(a1);
}

uint64_t OZChannelGradient::getColorSpace(OZChannelGradient *this)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0);
  v2 = PCColorSpaceCache::intToColorSpaceID(ValueAsInt, 3u);

  return PCColorSpaceCache::getCGColorSpaceByID(v2);
}

void OZChannelGradient::getGradient(uint64_t *a1, const CMTime *a2, CGColorSpace *a3, _BYTE *a4, unsigned int a5, int a6, PVPerfStats::FrameStats *a7)
{
  v14 = 4 * a5;
  std::vector<float>::vector[abi:ne200100](__p, 4 * a5);
  v15 = __p[0];
  OZChannelGradient::getGradient(a1, a2, 0, a3, __p[0], a5, a6, a7);
  for (; v14; --v14)
  {
    v16 = *v15++;
    v17 = v16;
    if (v16 <= 1.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1.0;
    }

    if (v17 >= 0.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0.0;
    }

    *a4++ = vcvtmd_s64_f64(v19 * 255.0 + 0.5 + 0.0000001);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_25FEDB6E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZChannelGradient::getGradient(uint64_t *a1, const CMTime *a2, int a3, CGColorSpace *a4, uint64_t a5, unsigned int a6, int a7, PVPerfStats::FrameStats *a8)
{
  v45[0] = 0;
  v45[1] = 0;
  v44 = v45;
  v43[0] = 0;
  v43[1] = 0;
  v42 = v43;
  OZChannelGradientRGBFolder::getLookup(a1 + 16, a2, &v44);
  OZChannelGradientAlphaFolder::getLookup(a1 + 32, a2, &v42);
  std::vector<float>::vector[abi:ne200100](__p, 4 * a6);
  if (a6)
  {
    v22 = 0;
    v23 = 0;
    v24 = 1.0;
    v25 = 1.0 / (a6 - 1);
    do
    {
      OZChannelGradientRGBFolder::getARGBFromLookup(v25 * v22, v24, v21, (a1 + 16), __p[0] + 4 * (v23 & 0xFFFFFFFC), &v44, v16, v17, v18, v19, v20);
      OZChannelGradientAlphaFolder::getARGBFromLookup(v25 * v22, v31, v32, (a1 + 32), __p[0] + (v23 & 0xFFFFFFFC), &v42, v26, v27, v28, v29, v30);
      v23 += 4;
      ++v22;
    }

    while (4 * a6 != v23);
  }

  ColorSpace = OZChannelGradient::getColorSpace(a1);
  PCGetCachedExtendedRangeColorSpace(ColorSpace, &v40);
  PCGetCachedExtendedRangeColorSpace(a4, &v39);
  v38[0] = a6;
  v38[1] = __p[0];
  v38[2] = 4;
  v38[3] = v40;
  v38[4] = 1;
  if (a3)
  {
    v34 = 2;
  }

  else
  {
    v34 = 1;
  }

  v35[0] = a6;
  v35[1] = a5;
  v35[2] = 4;
  v35[3] = v39;
  v36 = v34;
  v37 = a7;
  PCColorUtil::transformColorWithDynamicRange(v38, v35, a8);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v39);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v40);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v42, v43[0]);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v44, v45[0]);
}

void sub_25FEDB8D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, CGColorSpace *a21, CGColorSpace *a22, void *__p, uint64_t a24, uint64_t a25, char a26, void *a27)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a21);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a22);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&a26, a27);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v27 - 128, *(v27 - 120));
  _Unwind_Resume(a1);
}

void OZChannelGradient::getGradient(uint64_t *a1, const CMTime *a2, CGColorSpace *a3, _WORD *a4, unsigned int a5, int a6, PVPerfStats::FrameStats *a7)
{
  v14 = 4 * a5;
  std::vector<float>::vector[abi:ne200100](__p, 4 * a5);
  v15 = __p[0];
  OZChannelGradient::getGradient(a1, a2, 0, a3, __p[0], a5, a6, a7);
  for (; v14; --v14)
  {
    v16 = *v15++;
    v17 = v16;
    if (v16 <= 1.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1.0;
    }

    if (v17 >= 0.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0.0;
    }

    *a4++ = vcvtmd_s64_f64(v19 * 65535.0 + 0.5 + 0.0000001);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_25FEDBA34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZChannelGradient::getGradientHash(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1;
  v16 = v15;
  v20[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v20);
  (*(*v14 + 448))(v14, v20, v13);
  PCHashWriteStream::writeValue(v20, v11);
  PCHashWriteStream::writeValue(v20, v7);
  v18 = PCColorSpaceCache::identifyColorSpace(v9, v17);
  PCHashWriteStream::writeValue(v20, v18);
  PCHashWriteStream::writeValue(v20, v5);
  Size = PVPerfStats::FrameStats::GetSize(v3);
  PCHashWriteStream::writeValue(v20, Size);
  *v16 = *PCHashWriteStream::getHash(v20)->i8;
  PCHashWriteStream::~PCHashWriteStream(v20);
}

uint64_t OZChannelGradient::isModified(OZChannelBase *this, uint64_t a2)
{
  if (a2 && OZChannelBase::testFlag(this, 2))
  {
    return 0;
  }

  var0 = this[1].var0;
  if (!var0 || (v6 = *var0, v7 = var0[1], *var0 == v7))
  {
LABEL_12:
    if (!LODWORD(this[7].var1))
    {
      var2 = this[2].var2;
      if (var2)
      {
        v11 = *var2;
        if (((*(this[2].var2 + 1) - v11) & 0x7FFFFFFF8) == 0x10)
        {
          v12 = this[3].var4.var0;
          if (v12)
          {
            if (((v12->info - v12->isa) & 0x7FFFFFFF8) == 8)
            {
              if (((*(*v13 + 496))(v13, a2) & 1) == 0 && OZChannel::getValueAsInt((v13 + 432), MEMORY[0x277CC08F0], 0.0) == 2)
              {
                OZChannel::getValueAsDouble((v13 + 128), MEMORY[0x277CC08F0], 0.0);
                if (fabs(v14) < 0.0000001)
                {
                  OZChannel::getValueAsDouble((v13 + 280), MEMORY[0x277CC08F0], 0.0);
                  if (fabs(v15 + -0.5) < 0.0000001)
                  {
                    OZChannel::getValueAsDouble((v13 + 824), MEMORY[0x277CC08F0], 0.0);
                    if (fabs(v16 + -0.64) < 0.0000001)
                    {
                      OZChannel::getValueAsDouble((v13 + 976), MEMORY[0x277CC08F0], 0.0);
                      if (fabs(v17 + -0.68) < 0.0000001)
                      {
                        OZChannel::getValueAsDouble((v13 + 1128), MEMORY[0x277CC08F0], 0.0);
                        if (fabs(v18 + -0.77) < 0.0000001 && *(v13 + 6) == 1)
                        {
                          v19 = *(*this[2].var2 + 1);
                          if (((*(*v20 + 496))(v20, a2) & 1) == 0 && OZChannel::getValueAsInt((v20 + 432), MEMORY[0x277CC08F0], 0.0) == 2)
                          {
                            OZChannel::getValueAsDouble((v20 + 128), MEMORY[0x277CC08F0], 0.0);
                            if (fabs(v21 + -1.0) < 0.0000001)
                            {
                              OZChannel::getValueAsDouble((v20 + 280), MEMORY[0x277CC08F0], 0.0);
                              if (fabs(v22 + -0.5) < 0.0000001)
                              {
                                OZChannel::getValueAsDouble((v20 + 824), MEMORY[0x277CC08F0], 0.0);
                                if (fabs(v23 + -0.21) < 0.0000001)
                                {
                                  OZChannel::getValueAsDouble((v20 + 976), MEMORY[0x277CC08F0], 0.0);
                                  if (fabs(v24 + -0.43) < 0.0000001)
                                  {
                                    OZChannel::getValueAsDouble((v20 + 1128), MEMORY[0x277CC08F0], 0.0);
                                    if (fabs(v25 + -0.75) < 0.0000001 && *(v20 + 6) == 2)
                                    {
                                      v26 = *this[3].var4.var0->isa;
                                      if (((*(*v27 + 496))(v27, a2) & 1) == 0 && OZChannel::getValueAsInt((v27 + 432), MEMORY[0x277CC08F0], 0.0) == 2)
                                      {
                                        OZChannel::getValueAsDouble((v27 + 128), MEMORY[0x277CC08F0], 0.0);
                                        if (fabs(v28) < 0.0000001)
                                        {
                                          OZChannel::getValueAsDouble((v27 + 280), MEMORY[0x277CC08F0], 0.0);
                                          if (fabs(v29 + -0.5) < 0.0000001)
                                          {
                                            OZChannel::getValueAsDouble((v27 + 688), MEMORY[0x277CC08F0], 0.0);
                                            if (fabs(v30 + -1.0) < 0.0000001 && *(v27 + 6) == 1)
                                            {
                                              return 0;
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

  else
  {
    while (1)
    {
      v8 = *v6;
      v9 = *v6 == &this[1].var2 || v8 == &this[2].var4;
      if (!v9 && ((*(v8->var0 + 62))(v8, a2) & 1) != 0)
      {
        break;
      }

      if (++v6 == v7)
      {
        goto LABEL_12;
      }
    }
  }

  return 1;
}

uint64_t OZChannelGradient::OZChannelGradient_gammaImpl::getInstance(OZChannelGradient::OZChannelGradient_gammaImpl *this)
{
  if (atomic_load_explicit(&OZChannelGradient::OZChannelGradient_gammaImpl::getInstance(void)::OZChannelGradient_gammaImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelGradient::OZChannelGradient_gammaImpl::getInstance(void)::OZChannelGradient_gammaImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradient::OZChannelGradient_gammaImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelGradient::OZChannelGradient_gammaImpl::_OZChannelGradient_gamma;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradient::OZChannelGradient_gammaImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelGradient::OZChannelGradient_gammaImpl::_OZChannelGradient_gamma)
  {
    operator new();
  }
}

uint64_t OZChannelGradient::OZChannelGradient_colorSpaceIDImpl::getInstance(OZChannelGradient::OZChannelGradient_colorSpaceIDImpl *this)
{
  if (atomic_load_explicit(&OZChannelGradient::OZChannelGradient_colorSpaceIDImpl::getInstance(void)::OZChannelGradient_colorSpaceIDImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelGradient::OZChannelGradient_colorSpaceIDImpl::getInstance(void)::OZChannelGradient_colorSpaceIDImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradient::OZChannelGradient_colorSpaceIDImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelGradient::OZChannelGradient_colorSpaceIDImpl::_OZChannelGradient_colorSpaceID;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradient::OZChannelGradient_colorSpaceIDImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelGradient::OZChannelGradient_colorSpaceIDImpl::_OZChannelGradient_colorSpaceID)
  {
    operator new();
  }
}

void sub_25FEDC594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  OZChannelGradient::~OZChannelGradient(v10);
  _Unwind_Resume(a1);
}

void sub_25FEDC6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  OZChannelGradient::~OZChannelGradient(v10);
  _Unwind_Resume(a1);
}

void sub_25FEDC7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  OZChannelGradient::~OZChannelGradient(v10);
  _Unwind_Resume(a1);
}

void OZChannelGradientExtras::OZChannelGradientExtras(OZChannelGradientExtras *this, const OZChannelGradientExtras *a2, OZChannelFolder *a3)
{
  OZChannelGradient::OZChannelGradient(this, a2, a3);
  *v5 = &unk_28724F240;
  v5[2] = &unk_28724F518;
  OZChannelEnum::OZChannelEnum((v5 + 100), (a2 + 800), this);
}

void OZChannelGradientExtras::~OZChannelGradientExtras(OZChannelGradientExtras *this)
{
  *this = &unk_28724F240;
  *(this + 2) = &unk_28724F518;
  OZChannelEnum::~OZChannelEnum((this + 800));

  OZChannelGradient::~OZChannelGradient(this);
}

{
  *this = &unk_28724F240;
  *(this + 2) = &unk_28724F518;
  OZChannelEnum::~OZChannelEnum((this + 800));

  OZChannelGradient::~OZChannelGradient(this);
}

{
  *this = &unk_28724F240;
  *(this + 2) = &unk_28724F518;
  OZChannelEnum::~OZChannelEnum((this + 800));
  OZChannelGradient::~OZChannelGradient(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelGradientExtras::~OZChannelGradientExtras(OZChannelGradientExtras *this)
{
  v1 = (this - 16);
  *(this - 2) = &unk_28724F240;
  *this = &unk_28724F518;
  OZChannelEnum::~OZChannelEnum((this + 784));

  OZChannelGradient::~OZChannelGradient(v1);
}

{
  OZChannelGradientExtras::~OZChannelGradientExtras((this - 16));
}

void OZChannelGradientExtras::copy(PCString *this, const OZChannelBase *a2, char a3)
{
  OZChannelGradient::copy(this, a2, a3);

  OZChannelEnum::copy(this + 100, (v6 + 800), a3);
}

uint64_t OZChannelGradientExtras::OZChannelGradientExtras_gradientTypeImpl::getInstance(OZChannelGradientExtras::OZChannelGradientExtras_gradientTypeImpl *this)
{
  if (atomic_load_explicit(&OZChannelGradientExtras::OZChannelGradientExtras_gradientTypeImpl::getInstance(void)::OZChannelGradientExtras_gradientTypeImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelGradientExtras::OZChannelGradientExtras_gradientTypeImpl::getInstance(void)::OZChannelGradientExtras_gradientTypeImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradientExtras::OZChannelGradientExtras_gradientTypeImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelGradientExtras::OZChannelGradientExtras_gradientTypeImpl::_OZChannelGradientExtras_gradientType;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradientExtras::OZChannelGradientExtras_gradientTypeImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelGradientExtras::OZChannelGradientExtras_gradientTypeImpl::_OZChannelGradientExtras_gradientType)
  {
    operator new();
  }
}

void OZChannelGradientFolder::OZChannelGradientFolder(OZChannelGradientFolder *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChannelVaryingFolder::OZChannelVaryingFolder(this, a2, a3, a4, a5, a6);
  *v6 = &unk_28724F600;
  *(v6 + 16) = &unk_28724F900;
  *(v6 + 56) &= ~0x10000uLL;
  OZChannelFolder::saveStateAsDefault(v6);
}

void OZChannelGradientFolder::OZChannelGradientFolder(OZChannelGradientFolder *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelVaryingFolder::OZChannelVaryingFolder(this, a2, a3, a4);
  *v4 = &unk_28724F600;
  *(v4 + 16) = &unk_28724F900;
  *(v4 + 56) &= ~0x10000uLL;
  OZChannelFolder::saveStateAsDefault(v4);
}

OZChannelBase *OZChannelGradientFolder::cloneSample(OZChannelFolder *this, int a2)
{
  Descendant = OZChannelFolder::getDescendant(this, a2);
  if (Descendant)
  {
    (*(*this + 464))(this, 1);
    Descendant = (*(Descendant->var0 + 31))(Descendant);
    NextUniqueID = OZChannelBase::getNextUniqueID(Descendant);
    OZChannelBase::setID(Descendant, NextUniqueID);
    OZChannelFolder::push_back(this, Descendant);
  }

  return Descendant;
}

OZChannelBase *OZChannelGradientFolder::deleteSample(OZChannelFolder *this, int a2)
{
  result = OZChannelFolder::getDescendant(this, a2);
  if (result)
  {
    v4 = result;
    OZChannelFolder::removeDescendant(this, result);
    v5 = *(v4->var0 + 1);

    return v5(v4);
  }

  return result;
}

void OZChannelGradientFolder::spread(OZChannelGradientFolder *this, const CMTime *a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v17 = 0;
    v18 = 0;
    v16 = &v17;
    v4 = *v2;
    v5 = v2[1];
    v6 = 1.0;
    if (*v2 != v5)
    {
      do
      {
        OZChannel::getValueAsDouble((v7 + 128), a2, 0.0);
        v15 = v8;
        v19 = &v15;
        std::__tree<std::__value_type<double,OZChannelGradientSample *>,std::__map_value_compare<double,std::__value_type<double,OZChannelGradientSample *>,std::less<double>,true>,std::allocator<std::__value_type<double,OZChannelGradientSample *>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double &&>,std::tuple<>>(&v16, &v15)[5] = v7;
        ++v4;
      }

      while (v4 != v5);
      if (v18 >= 2)
      {
        v6 = 1.0 / (v18 - 1);
      }
    }

    v9 = v16;
    if (v16 != &v17)
    {
      v10 = 0.0;
      do
      {
        v11 = v9[5];
        (*(*(v11 + 128) + 712))(v6 * v10);
        (*(*(v11 + 280) + 712))(v11 + 280, a2, 0, 0.5);
        v12 = v9[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v9[2];
            v14 = *v13 == v9;
            v9 = v13;
          }

          while (!v14);
        }

        v10 = v10 + 1.0;
        v9 = v13;
      }

      while (v13 != &v17);
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v16, v17);
  }
}

void OZChannelGradientFolder::flop(OZChannelGradientFolder *this, const CMTime *a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = v30;
    v30[0] = 0;
    v30[1] = 0;
    v29 = v30;
    v4 = *v2;
    v5 = v2[1];
    if (*v2 != v5)
    {
      do
      {
        OZChannel::getValueAsDouble((v7 + 128), a2, 0.0);
        v28 = v8;
        v30[3] = &v28;
        std::__tree<std::__value_type<double,OZChannelGradientSample *>,std::__map_value_compare<double,std::__value_type<double,OZChannelGradientSample *>,std::less<double>,true>,std::allocator<std::__value_type<double,OZChannelGradientSample *>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double &&>,std::tuple<>>(&v29, &v28)[5] = v7;
        ++v4;
      }

      while (v4 != v5);
      if (v30 != v29)
      {
        do
        {
          v9 = *v3;
          v10 = *v3;
          v11 = v3;
          if (*v3)
          {
            do
            {
              v12 = v10;
              v10 = v10[1];
            }

            while (v10);
          }

          else
          {
            do
            {
              v12 = v11[2];
              v13 = *v12 == v11;
              v11 = v12;
            }

            while (v13);
          }

          v14 = v3;
          if (v9)
          {
            do
            {
              v15 = v9;
              v9 = v9[1];
            }

            while (v9);
          }

          else
          {
            do
            {
              v15 = v14[2];
              v13 = *v15 == v14;
              v14 = v15;
            }

            while (v13);
          }

          v16 = v12[5];
          (*(v16[16] + 712))(v16 + 16, a2, 0, 1.0 - *(v15 + 4));
          v17 = *v3;
          v18 = v3;
          if (*v3)
          {
            do
            {
              v3 = v17;
              v17 = v17[1];
            }

            while (v17);
          }

          else
          {
            do
            {
              v3 = v18[2];
              v13 = *v3 == v18;
              v18 = v3;
            }

            while (v13);
          }

          v19 = v3;
          if (v3 != v29)
          {
            v20 = *v3;
            v21 = v3;
            if (*v3)
            {
              do
              {
                v22 = v20;
                v20 = v20[1];
              }

              while (v20);
            }

            else
            {
              do
              {
                v22 = v21[2];
                v13 = *v22 == v21;
                v21 = v22;
              }

              while (v13);
            }

            OZChannel::getValueAsDouble((v22[5] + 280), a2, 0.0);
            (*(v16[35] + 712))(v16 + 35, a2, 0, 1.0 - v23);
            v24 = *v3;
            v25 = v3;
            if (*v3)
            {
              do
              {
                v26 = v24;
                v24 = v24[1];
              }

              while (v24);
            }

            else
            {
              do
              {
                v26 = v25[2];
                v13 = *v26 == v25;
                v25 = v26;
              }

              while (v13);
            }

            ValueAsInt = OZChannel::getValueAsInt((v26[5] + 432), a2, 0.0);
            (*(v16[54] + 712))(v16 + 54, a2, 0, ValueAsInt);
            v19 = v29;
          }
        }

        while (v3 != v19);
      }
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v29, v30[0]);
  }
}

void OZChannelGradientFolder::sortAndRename(OZChannelGradientFolder *this)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *(this + 14);
  if (v1)
  {
    v28[0] = 0;
    v28[1] = 0;
    v27 = v28;
    v2 = *v1;
    v3 = v1[1];
    if (*v1 == v3)
    {
      v1[1] = v2;
    }

    else
    {
      v5 = MEMORY[0x277CC08F0];
      do
      {
        OZChannel::getValueAsDouble((v6 + 128), v5, 0.0);
        v26.var0 = v7;
        *__str = &v26;
        std::__tree<std::__value_type<double,OZChannelGradientSample *>,std::__map_value_compare<double,std::__value_type<double,OZChannelGradientSample *>,std::less<double>,true>,std::allocator<std::__value_type<double,OZChannelGradientSample *>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double &&>,std::tuple<>>(&v27, &v26)[5] = v6;
        ++v2;
      }

      while (v2 != v3);
      v8 = v27;
      *(*(this + 14) + 8) = **(this + 14);
      if (v8 != v28)
      {
        v9 = 1;
        do
        {
          v10 = (*(*this + 712))(this);
          PCString::PCString(&v26, v10);
          snprintf(__str, 0x20uLL, "%d", v9);
          PCString::append(&v26, __str);
          v11 = v8[5];
          v12 = *(this + 14);
          v14 = *(v12 + 8);
          v13 = *(v12 + 16);
          if (v14 >= v13)
          {
            v16 = (v14 - *v12) >> 3;
            if ((v16 + 1) >> 61)
            {
              std::vector<double>::__throw_length_error[abi:ne200100]();
            }

            v17 = v13 - *v12;
            v18 = v17 >> 2;
            if (v17 >> 2 <= (v16 + 1))
            {
              v18 = v16 + 1;
            }

            if (v17 >= 0x7FFFFFFFFFFFFFF8)
            {
              v19 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v18;
            }

            if (v19)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(*(this + 14), v19);
            }

            *(8 * v16) = v11;
            v15 = 8 * v16 + 8;
            v20 = *(v12 + 8) - *v12;
            v21 = (8 * v16 - v20);
            memcpy(v21, *v12, v20);
            v22 = *v12;
            *v12 = v21;
            *(v12 + 8) = v15;
            *(v12 + 16) = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v14 = v11;
            v15 = (v14 + 1);
          }

          *(v12 + 8) = v15;
          if (PCString::compare(&v11->var4, &v26))
          {
            (*(v11->var0 + 58))(v11, 1);
            OZChannelBase::setName(v11, &v26, 0);
          }

          PCString::~PCString(&v26);
          v23 = v8[1];
          if (v23)
          {
            do
            {
              v24 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              v24 = v8[2];
              v25 = *v24 == v8;
              v8 = v24;
            }

            while (!v25);
          }

          ++v9;
          v8 = v24;
        }

        while (v24 != v28);
      }
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v27, v28[0]);
  }
}

void sub_25FEDD838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, char a12, void *a13)
{
  PCString::~PCString(&a11);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&a12, a13);
  _Unwind_Resume(a1);
}

void OZChannelGradientRGBFolder::OZChannelGradientRGBFolder(OZChannelGradientRGBFolder *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelGradientFolder::OZChannelGradientFolder(this, a2, a3, a4);
  *v4 = &unk_28724F958;
  v4[2] = &unk_28724FC58;
}

void OZChannelGradientRGBFolder::OZChannelGradientRGBFolder(OZChannelGradientRGBFolder *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelGradientRGBFolder_Factory::getInstance(this);
  OZChannelGradientFolder::OZChannelGradientFolder(this, Instance, a2, a3, a4, a5);
  *this = &unk_28724F958;
  *(this + 2) = &unk_28724FC58;
}

void OZChannelGradientRGBFolder::OZChannelGradientRGBFolder(OZChannelGradientRGBFolder *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannelVaryingFolder::OZChannelVaryingFolder(this, a2, a3);
  *v3 = &unk_28724F958;
  v3[2] = &unk_28724FC58;
}

void non-virtual thunk toOZChannelGradientRGBFolder::~OZChannelGradientRGBFolder(OZChannelGradientRGBFolder *this)
{
  OZChannelVaryingFolder::~OZChannelVaryingFolder((this - 16));
}

{
  OZChannelVaryingFolder::~OZChannelVaryingFolder((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelGradientRGBFolder::~OZChannelGradientRGBFolder(OZChannelFolder *this)
{
  OZChannelVaryingFolder::~OZChannelVaryingFolder(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZChannelGradientRGBFolder::getSampleBaseName(OZChannelGradientRGBFolder *this)
{
  if (!OZChannelGradientRGBFolder::_baseName)
  {
    operator new();
  }

  return OZChannelGradientRGBFolder::_baseName;
}

uint64_t OZChannelGradientRGBFolder::insertSample(OZChannelGradientRGBFolder *this, const CMTime *a2, double a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  memset(v12, 0, sizeof(v12));
  (*(*this + 464))(this, 1);
  (*(*this + 728))(this, a2, &v10);
  if (!v11[0])
  {
    goto LABEL_8;
  }

  v6 = v11;
  v7 = v11[0];
  do
  {
    v8 = v7[4];
    if (v8 >= a3)
    {
      v6 = v7;
    }

    v7 = *&v7[v8 < a3];
  }

  while (v7);
  if (v6 == v11 || v6[4] > a3)
  {
LABEL_8:
    if (v11 != (*(*this + 744))(this, v12, &v10, a3))
    {
      operator new();
    }

    operator new();
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v10, v11[0]);
  return 0;
}

void sub_25FEDDF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  MEMORY[0x2666E9F00](v11, 0x10F1C40C9B629ABLL);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t *OZChannelGradientRGBFolder::getLookup(uint64_t *result, const CMTime *a2, uint64_t a3)
{
  v3 = result[14];
  if (v3)
  {
    v4 = *v3;
    v5 = *(v3 + 8);
    if (*v3 != v5)
    {
      do
      {
        if (*v4)
        {
        }

        else
        {
          v8 = 0;
        }

        OZChannel::getValueAsDouble((v8 + 824), a2, 0.0);
        v10 = v9;
        OZChannel::getValueAsDouble((v8 + 976), a2, 0.0);
        v12 = v11;
        OZChannel::getValueAsDouble((v8 + 1128), a2, 0.0);
        v14 = v13;
        OZChannel::getValueAsDouble((v8 + 280), a2, 0.0);
        v16 = v15;
        ValueAsInt = OZChannel::getValueAsInt((v8 + 432), a2, 0.0);
        OZChannel::getValueAsDouble((v8 + 128), a2, 0.0);
        v19[0] = v18;
        *&v19[2] = v19;
        result = std::__tree<std::__value_type<double,OZChannelGradientFolder::Sample>,std::__map_value_compare<double,std::__value_type<double,OZChannelGradientFolder::Sample>,std::less<double>,true>,std::allocator<std::__value_type<double,OZChannelGradientFolder::Sample>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double &&>,std::tuple<>>(a3, v19);
        result[5] = v10;
        result[6] = v12;
        result[7] = v14;
        result[9] = v16;
        ++v4;
        *(result + 20) = ValueAsInt;
      }

      while (v4 != v5);
    }
  }

  return result;
}

void OZChannelGradientRGBFolder::getARGBFromLookup(double a1, double a2, int8x16_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v53[4] = *MEMORY[0x277D85DE8];
  if (!*(a6 + 16))
  {
    *(a5 + 8) = 0;
    *(a5 + 4) = 0;
    return;
  }

  v12 = *(a6 + 8);
  if (v12)
  {
    v13 = a6 + 8;
    do
    {
      v14 = *(v12 + 32);
      if (v14 >= a1)
      {
        v13 = v12;
      }

      v12 = *(v12 + 8 * (v14 < a1));
    }

    while (v12);
  }

  else
  {
    v13 = a6 + 8;
  }

  if (v13 == *a6)
  {
    *(a5 + 4) = vcvt_f32_f64(*(v13 + 40));
    v17 = *(v13 + 56);
  }

  else
  {
    v15 = *v13;
    if (v13 == a6 + 8)
    {
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *(v15 + 8);
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(v13 + 16);
          v18 = *v16 == v13;
          v13 = v16;
        }

        while (v18);
      }
    }

    else
    {
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *(v15 + 8);
        }

        while (v15);
      }

      else
      {
        v19 = v13;
        do
        {
          v16 = *(v19 + 16);
          v18 = *v16 == v19;
          v19 = v16;
        }

        while (v18);
      }

      v20 = *(v16 + 80);
      if (v20 == 2)
      {
        a3.i64[0] = *(v13 + 32);
        v49 = *(v13 + 40);
        v50 = v49;
        v22 = *(v13 + 56);
        v46 = *(v13 + 48);
        v47 = v46;
        v44[2] = v22;
        v44[3] = v22;
        v23 = *(v16 + 32);
        v48[0] = *(v16 + 40);
        v48[1] = v48[0];
        v24 = a1 - v23;
        v25 = *a3.i64 - v23;
        v26 = *(v16 + 56);
        v45[0] = *(v16 + 48);
        v45[1] = v45[0];
        v44[0] = v26;
        v44[1] = v26;
        v52[3] = 1.0;
        v53[0] = 0.0;
        v52[0] = 0.0;
        v51[0] = 0.0;
        a3.i64[0] = *(v16 + 72);
        v53[1] = *a3.i64;
        v53[2] = *a3.i64;
        v52[1] = *a3.i64;
        v52[2] = *a3.i64;
        v51[1] = *a3.i64;
        v51[2] = *a3.i64;
        v53[3] = 1.0;
        v27 = v24 / v25;
        v51[3] = 1.0;
        Parameter = OZBezierFindParameter(v53, v24 / v25, v25, a3, a5, a6, a7);
        v29 = OZBezierEval(v48, Parameter);
        *(a5 + 4) = v29;
        v35 = OZBezierFindParameter(v52, v27, v33, v34, v30, v31, v32);
        v36 = OZBezierEval(v45, v35);
        *(a5 + 8) = v36;
        v42 = OZBezierFindParameter(v51, v27, v40, v41, v37, v38, v39);
        v17 = OZBezierEval(v44, v42);
        goto LABEL_29;
      }

      if (v20 == 1)
      {
        v21 = (a1 - *(v16 + 32)) / (*(v13 + 32) - *(v16 + 32));
        *(a5 + 4) = vcvt_f32_f64(vaddq_f64(*(v16 + 40), vmulq_n_f64(vsubq_f64(*(v13 + 40), *(v16 + 40)), v21)));
        v17 = *(v16 + 56) + v21 * (*(v13 + 56) - *(v16 + 56));
        goto LABEL_29;
      }

      if (v20)
      {
        PCPrint("File %s, line %d should not have been reached:\n\t", a5, a6, a7, a8, a9, a10, a11, "/Library/Caches/com.apple.xbs/Sources/ProChanneliOS/Channels/OZChannelGradientFolder.cpp");

        pcAbortImpl();
      }
    }

    *(a5 + 4) = vcvt_f32_f64(*(v16 + 40));
    v17 = *(v16 + 56);
  }

LABEL_29:
  v43 = v17;
  *(a5 + 12) = v43;
}

double *OZChannelGradientRGBFolder::getRGBAFromLookup(double a1, double a2, int8x16_t a3, uint64_t a4, double *a5, uint64_t a6, double *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51[4] = *MEMORY[0x277D85DE8];
  v11 = (a6 + 8);
  if (!*(a6 + 16))
  {
    return v11;
  }

  v13 = *v11;
  if (*v11)
  {
    result = (a6 + 8);
    do
    {
      v15 = v13[4];
      if (v15 >= a1)
      {
        result = v13;
      }

      v13 = *&v13[v15 < a1];
    }

    while (v13);
  }

  else
  {
    result = (a6 + 8);
  }

  if (result == *a6)
  {
    *a5 = result[5];
    a5[1] = result[6];
    a5[2] = result[7];
    return result;
  }

  v16 = *result;
  if (result == v11)
  {
    if (v16)
    {
      do
      {
        v11 = v16;
        v16 = *(v16 + 1);
      }

      while (v16);
    }

    else
    {
      do
      {
        v11 = *(result + 2);
        v18 = *v11 == result;
        result = v11;
      }

      while (v18);
    }

    *a5 = v11[5];
    a5[1] = v11[6];
    a5[2] = v11[7];
    return v11;
  }

  if (v16)
  {
    do
    {
      v17 = v16;
      v16 = *(v16 + 1);
    }

    while (v16);
  }

  else
  {
    v19 = result;
    do
    {
      v17 = *(v19 + 2);
      v18 = *v17 == v19;
      v19 = v17;
    }

    while (v18);
  }

  v20 = *(v17 + 20);
  if (v20 == 2)
  {
    a3.i64[0] = result[4];
    v47 = *(result + 5);
    v48 = v47;
    v23 = result[7];
    v44 = *(result + 6);
    v45 = v44;
    v42[2] = v23;
    v42[3] = v23;
    v24 = v17[4];
    v46[0] = v17[5];
    v46[1] = v46[0];
    v25 = a1 - v24;
    v26 = *a3.i64 - v24;
    v27 = v17[7];
    v43[0] = v17[6];
    v43[1] = v43[0];
    v42[0] = v27;
    v42[1] = v27;
    v50[3] = 1.0;
    v51[0] = 0.0;
    v50[0] = 0.0;
    v49[0] = 0.0;
    a3.i64[0] = v17[9];
    v51[1] = *a3.i64;
    v51[2] = *a3.i64;
    v50[1] = *a3.i64;
    v50[2] = *a3.i64;
    v49[1] = *a3.i64;
    v49[2] = *a3.i64;
    v51[3] = 1.0;
    v28 = v25 / v26;
    v49[3] = 1.0;
    Parameter = OZBezierFindParameter(v51, v25 / v26, v26, a3, a5, a6, a7);
    *a5 = OZBezierEval(v46, Parameter);
    v35 = OZBezierFindParameter(v50, v28, v33, v34, v30, v31, v32);
    a5[1] = OZBezierEval(v43, v35);
    v41 = OZBezierFindParameter(v49, v28, v39, v40, v36, v37, v38);
    v21 = OZBezierEval(v42, v41);
  }

  else if (v20 == 1)
  {
    v22 = (a1 - v17[4]) / (result[4] - v17[4]);
    *a5 = v17[5] + v22 * (result[5] - v17[5]);
    a5[1] = v17[6] + v22 * (result[6] - v17[6]);
    v21 = v17[7] + v22 * (result[7] - v17[7]);
  }

  else
  {
    if (v20)
    {
      PCPrint("File %s, line %d should not have been reached:\n\t", a5, a6, a7, a8, a9, a10, a11, "/Library/Caches/com.apple.xbs/Sources/ProChanneliOS/Channels/OZChannelGradientFolder.cpp");
      pcAbortImpl();
    }

    *a5 = v17[5];
    a5[1] = v17[6];
    v21 = v17[7];
  }

  a5[2] = v21;
  return v17;
}

void OZChannelGradientAlphaFolder::OZChannelGradientAlphaFolder(OZChannelGradientAlphaFolder *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelGradientFolder::OZChannelGradientFolder(this, a2, a3, a4);
  *v4 = &unk_28724FCB0;
  v4[2] = &unk_28724FFB0;
}

void OZChannelGradientAlphaFolder::OZChannelGradientAlphaFolder(OZChannelGradientAlphaFolder *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelGradientAlphaFolder_Factory::getInstance(this);
  OZChannelGradientFolder::OZChannelGradientFolder(this, Instance, a2, a3, a4, a5);
  *this = &unk_28724FCB0;
  *(this + 2) = &unk_28724FFB0;
}

void OZChannelGradientAlphaFolder::OZChannelGradientAlphaFolder(OZChannelGradientAlphaFolder *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannelVaryingFolder::OZChannelVaryingFolder(this, a2, a3);
  *v3 = &unk_28724FCB0;
  v3[2] = &unk_28724FFB0;
}

void non-virtual thunk toOZChannelGradientAlphaFolder::~OZChannelGradientAlphaFolder(OZChannelGradientAlphaFolder *this)
{
  OZChannelVaryingFolder::~OZChannelVaryingFolder((this - 16));
}

{
  OZChannelVaryingFolder::~OZChannelVaryingFolder((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelGradientAlphaFolder::~OZChannelGradientAlphaFolder(OZChannelFolder *this)
{
  OZChannelVaryingFolder::~OZChannelVaryingFolder(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t *OZChannelGradientAlphaFolder::getLookup(uint64_t *result, const CMTime *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = result[14];
  if (v3)
  {
    v4 = *v3;
    v5 = *(v3 + 8);
    if (*v3 != v5)
    {
      do
      {
        if (*v4)
        {
        }

        else
        {
          v8 = 0;
        }

        OZChannel::getValueAsDouble((v8 + 688), a2, 0.0);
        v10 = v9;
        OZChannel::getValueAsDouble((v8 + 280), a2, 0.0);
        v12 = v11;
        ValueAsInt = OZChannel::getValueAsInt((v8 + 432), a2, 0.0);
        OZChannel::getValueAsDouble((v8 + 128), a2, 0.0);
        v15[0] = v14;
        *&v15[2] = v15;
        result = std::__tree<std::__value_type<double,OZChannelGradientFolder::Sample>,std::__map_value_compare<double,std::__value_type<double,OZChannelGradientFolder::Sample>,std::less<double>,true>,std::allocator<std::__value_type<double,OZChannelGradientFolder::Sample>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double &&>,std::tuple<>>(a3, v15);
        *(result + 5) = v16;
        result[7] = v17;
        result[8] = v10;
        result[9] = v12;
        *(result + 20) = ValueAsInt;
        ++v4;
      }

      while (v4 != v5);
    }
  }

  return result;
}

uint64_t OZChannelGradientAlphaFolder::getSampleBaseName(OZChannelGradientAlphaFolder *this)
{
  if (!OZChannelGradientAlphaFolder::_baseName)
  {
    operator new();
  }

  return OZChannelGradientAlphaFolder::_baseName;
}

uint64_t OZChannelGradientAlphaFolder::insertSample(OZChannelGradientAlphaFolder *this, const CMTime *a2, double a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  memset(v12, 0, sizeof(v12));
  (*(*this + 464))(this, 1);
  (*(*this + 728))(this, a2, &v10);
  if (!v11[0])
  {
    goto LABEL_8;
  }

  v6 = v11;
  v7 = v11[0];
  do
  {
    v8 = v7[4];
    if (v8 >= a3)
    {
      v6 = v7;
    }

    v7 = *&v7[v8 < a3];
  }

  while (v7);
  if (v6 == v11 || v6[4] > a3)
  {
LABEL_8:
    if (v11 != (*(*this + 744))(this, v12, &v10, a3))
    {
      operator new();
    }

    operator new();
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v10, v11[0]);
  return 0;
}

void sub_25FEDEEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  MEMORY[0x2666E9F00](v11, 0x10F1C408C14BFF9);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&a10, a11);
  _Unwind_Resume(a1);
}

float OZChannelGradientAlphaFolder::getARGBFromLookup(double a1, double a2, int8x16_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, double *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25[4] = *MEMORY[0x277D85DE8];
  if (*(a6 + 16))
  {
    v12 = *(a6 + 8);
    if (v12)
    {
      v13 = a6 + 8;
      do
      {
        v14 = *(v12 + 32);
        if (v14 >= a1)
        {
          v13 = v12;
        }

        v12 = *(v12 + 8 * (v14 < a1));
      }

      while (v12);
    }

    else
    {
      v13 = a6 + 8;
    }

    if (v13 == *a6)
    {
      a1 = *(v13 + 64);
    }

    else
    {
      v15 = *v13;
      if (v13 == a6 + 8)
      {
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *(v15 + 8);
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = *(v13 + 16);
            v17 = *v16 == v13;
            v13 = v16;
          }

          while (v17);
        }
      }

      else
      {
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *(v15 + 8);
          }

          while (v15);
        }

        else
        {
          v18 = v13;
          do
          {
            v16 = *(v18 + 16);
            v17 = *v16 == v18;
            v18 = v16;
          }

          while (v17);
        }

        v19 = *(v16 + 80);
        if (v19 == 2)
        {
          v23 = *(v13 + 64);
          v24 = v23;
          a3.i64[0] = *(v16 + 72);
          v22[0] = *(v16 + 64);
          v22[1] = v22[0];
          v25[0] = 0.0;
          v25[1] = *a3.i64;
          v25[2] = *a3.i64;
          v25[3] = 1.0;
          a3.i64[0] = *(v13 + 32);
          Parameter = OZBezierFindParameter(v25, (a1 - *(v16 + 32)) / (*a3.i64 - *(v16 + 32)), *a3.i64 - *(v16 + 32), a3, a5, a6, a7);
          a1 = OZBezierEval(v22, Parameter);
          goto LABEL_29;
        }

        if (v19 == 1)
        {
          a1 = *(v16 + 64) + (a1 - *(v16 + 32)) / (*(v13 + 32) - *(v16 + 32)) * (*(v13 + 64) - *(v16 + 64));
          goto LABEL_29;
        }

        if (v19)
        {
          PCPrint("File %s, line %d should not have been reached:\n\t", a5, a6, a7, a8, a9, a10, a11, "/Library/Caches/com.apple.xbs/Sources/ProChanneliOS/Channels/OZChannelGradientFolder.cpp");

          pcAbortImpl();
        }
      }

      a1 = *(v16 + 64);
    }

LABEL_29:
    *&a1 = a1;
    *a5 = LODWORD(a1);
    return *&a1;
  }

  *a5 = 0;
  return *&a1;
}

double *OZChannelGradientAlphaFolder::getRGBAFromLookup(double a1, double a2, int8x16_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v11 = (a6 + 8);
  if (!*(a6 + 16))
  {
    return v11;
  }

  v13 = *v11;
  if (*v11)
  {
    result = (a6 + 8);
    do
    {
      v15 = v13[4];
      if (v15 >= a1)
      {
        result = v13;
      }

      v13 = *&v13[v15 < a1];
    }

    while (v13);
  }

  else
  {
    result = (a6 + 8);
  }

  if (result == *a6)
  {
    *(a5 + 24) = result[8];
    return result;
  }

  v16 = *result;
  if (result == v11)
  {
    if (v16)
    {
      do
      {
        v11 = v16;
        v16 = *(v16 + 1);
      }

      while (v16);
    }

    else
    {
      do
      {
        v11 = *(result + 2);
        v18 = *v11 == result;
        result = v11;
      }

      while (v18);
    }

    *(a5 + 24) = v11[8];
    return v11;
  }

  if (v16)
  {
    do
    {
      v17 = v16;
      v16 = *(v16 + 1);
    }

    while (v16);
  }

  else
  {
    v19 = result;
    do
    {
      v17 = *(v19 + 2);
      v18 = *v17 == v19;
      v19 = v17;
    }

    while (v18);
  }

  v20 = *(v17 + 20);
  if (v20 == 2)
  {
    v24 = *(result + 8);
    v25 = v24;
    a3.i64[0] = v17[9];
    v23[0] = v17[8];
    v23[1] = v23[0];
    v26[0] = 0.0;
    v26[1] = *a3.i64;
    v26[2] = *a3.i64;
    v26[3] = 1.0;
    a3.i64[0] = result[4];
    Parameter = OZBezierFindParameter(v26, (a1 - v17[4]) / (*a3.i64 - v17[4]), *a3.i64 - v17[4], a3, a5, a6, a7);
    v21 = OZBezierEval(v23, Parameter);
  }

  else if (v20 == 1)
  {
    v21 = v17[8] + (a1 - v17[4]) / (result[4] - v17[4]) * (result[8] - v17[8]);
  }

  else
  {
    if (v20)
    {
      PCPrint("File %s, line %d should not have been reached:\n\t", a5, a6, a7, a8, a9, a10, a11, "/Library/Caches/com.apple.xbs/Sources/ProChanneliOS/Channels/OZChannelGradientFolder.cpp");
      pcAbortImpl();
    }

    v21 = v17[8];
  }

  *(a5 + 24) = v21;
  return v17;
}

uint64_t *std::__tree<std::__value_type<double,OZChannelGradientSample *>,std::__map_value_compare<double,std::__value_type<double,OZChannelGradientSample *>,std::less<double>,true>,std::allocator<std::__value_type<double,OZChannelGradientSample *>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double &&>,std::tuple<>>(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 4);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v2;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<double,OZChannelGradientFolder::Sample>,std::__map_value_compare<double,std::__value_type<double,OZChannelGradientFolder::Sample>,std::less<double>,true>,std::allocator<std::__value_type<double,OZChannelGradientFolder::Sample>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double &&>,std::tuple<>>(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 4);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v2;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_25FEDF614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelPosition::~OZChannelPosition((v10 + 1056));
  OZChannelGradientExtras::~OZChannelGradientExtras(v10);
  _Unwind_Resume(a1);
}

void sub_25FEDF820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelPosition::~OZChannelPosition((v10 + 1056));
  OZChannelGradientExtras::~OZChannelGradientExtras(v10);
  _Unwind_Resume(a1);
}

void OZChannelGradientPositioned::OZChannelGradientPositioned(OZChannelGradientPositioned *this, const OZChannelGradientPositioned *a2, OZChannelFolder *a3)
{
  OZChannelGradientExtras::OZChannelGradientExtras(this, a2, a3);
  *v5 = &unk_287250050;
  v5[2] = &unk_287250328;
  OZChannelPosition::OZChannelPosition((v5 + 132), (a2 + 1056), this);
  OZChannelPosition::OZChannelPosition((this + 1760), (a2 + 1760), this);
  *(this + 2464) = *(a2 + 2464);
}

void sub_25FEDF908(_Unwind_Exception *a1)
{
  OZChannelPosition::~OZChannelPosition((v1 + 1056));
  OZChannelGradientExtras::~OZChannelGradientExtras(v1);
  _Unwind_Resume(a1);
}

void OZChannelGradientPositioned::~OZChannelGradientPositioned(OZChannelGradientPositioned *this)
{
  *this = &unk_287250050;
  *(this + 2) = &unk_287250328;
  OZChannelPosition::~OZChannelPosition((this + 1760));
  OZChannelPosition::~OZChannelPosition((this + 1056));

  OZChannelGradientExtras::~OZChannelGradientExtras(this);
}

{
  OZChannelGradientPositioned::~OZChannelGradientPositioned(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelGradientPositioned::~OZChannelGradientPositioned(OZChannelGradientPositioned *this)
{
  OZChannelGradientPositioned::~OZChannelGradientPositioned((this - 16));
}

{
  OZChannelGradientPositioned::~OZChannelGradientPositioned((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelGradientPositioned::copy(PCString *this, const OZChannelBase *a2, char a3)
{
  v4 = a2;
  OZChannelGradientExtras::copy(this, a2, a3);
  if (v4)
  {
  }

  OZChannelPosition::copy(&this[132], (v4 + 1056), a3);

  OZChannelPosition::copy(&this[220], (v4 + 1760), a3);
}

void OZChannelGradientSample::OZChannelGradientSample(OZChannelGradientSample *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, a5, a6, 0);
  *v7 = &unk_287250398;
  *(v7 + 2) = &unk_287250670;
  TXParagraphStyleFolder_Factory::createInstance(v7, v8);
  PCURL::PCURL(&v18, @"Channel GradientSample Offset");
  OZChannelPercent::OZChannelPercent((this + 128), 0.0, &v18, this, 1u, 0, 0, 0);
  PCString::~PCString(&v18);
  TXParagraphStyleFolder_Factory::createInstance(v9, v10);
  PCURL::PCURL(&v18, @"Channel GradientSample Middle");
  OZChannelPercent::OZChannelPercent((this + 280), 0.0, &v18, this, 2u, 0, 0, 0);
  PCString::~PCString(&v18);
  TXParagraphStyleFolder_Factory::createInstance(v11, v12);
  PCURL::PCURL(&v18, @"Channel GradientSample Interpolation Enum");
  TXParagraphStyleFolder_Factory::createInstance(v13, v14);
  PCURL::PCURL(&v17, @"Channel GradientSample Interpolation");
  Instance = OZChannelGradientSample::OZChannelGradientSample_interpolationImpl::getInstance(v15);
  OZChannelEnum::OZChannelEnum((this + 432), 2u, &v18, &v17, this, 0x64u, 0, Instance, 0);
  PCString::~PCString(&v17);
  PCString::~PCString(&v18);
  (*(*this + 128))(this);
}

void sub_25FEDFD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  OZChannelEnum::~OZChannelEnum((v12 + 432));
  OZChannelPercent::~OZChannelPercent((v12 + 280));
  OZChannelPercent::~OZChannelPercent((v12 + 128));
  OZChannelFolder::~OZChannelFolder(v12);
  _Unwind_Resume(a1);
}

void OZChannelGradientSample::OZChannelGradientSample(OZChannelGradientSample *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, 0);
  *v5 = &unk_287250398;
  *(v5 + 2) = &unk_287250670;
  TXParagraphStyleFolder_Factory::createInstance(v5, v6);
  PCURL::PCURL(&v16, @"Channel GradientSample Offset");
  OZChannelPercent::OZChannelPercent((this + 128), 0.0, &v16, this, 1u, 0, 0, 0);
  PCString::~PCString(&v16);
  TXParagraphStyleFolder_Factory::createInstance(v7, v8);
  PCURL::PCURL(&v16, @"Channel GradientSample Middle");
  OZChannelPercent::OZChannelPercent((this + 280), 0.0, &v16, this, 2u, 0, 0, 0);
  PCString::~PCString(&v16);
  TXParagraphStyleFolder_Factory::createInstance(v9, v10);
  PCURL::PCURL(&v16, @"Channel GradientSample Interpolation Enum");
  TXParagraphStyleFolder_Factory::createInstance(v11, v12);
  PCURL::PCURL(&v15, @"Channel GradientSample Interpolation");
  Instance = OZChannelGradientSample::OZChannelGradientSample_interpolationImpl::getInstance(v13);
  OZChannelEnum::OZChannelEnum((this + 432), 2u, &v16, &v15, this, 0x64u, 0, Instance, 0);
  PCString::~PCString(&v15);
  PCString::~PCString(&v16);
  (*(*this + 128))(this);
}

void sub_25FEDFF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  OZChannelEnum::~OZChannelEnum((v12 + 432));
  OZChannelPercent::~OZChannelPercent((v12 + 280));
  OZChannelPercent::~OZChannelPercent((v12 + 128));
  OZChannelFolder::~OZChannelFolder(v12);
  _Unwind_Resume(a1);
}

void OZChannelGradientSample::OZChannelGradientSample(OZChannelGradientSample *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelGradientSample_Factory::getInstance(this);
  OZChannelFolder::OZChannelFolder(this, Instance, a2, a3, a4, a5, 0);
  *this = &unk_287250398;
  *(this + 2) = &unk_287250670;
  TXParagraphStyleFolder_Factory::createInstance(v11, v12);
  PCURL::PCURL(&v22, @"Channel GradientSample Offset");
  OZChannelPercent::OZChannelPercent((this + 128), 0.0, &v22, this, 1u, 0, 0, 0);
  PCString::~PCString(&v22);
  TXParagraphStyleFolder_Factory::createInstance(v13, v14);
  PCURL::PCURL(&v22, @"Channel GradientSample Middle");
  OZChannelPercent::OZChannelPercent((this + 280), 0.0, &v22, this, 2u, 0, 0, 0);
  PCString::~PCString(&v22);
  TXParagraphStyleFolder_Factory::createInstance(v15, v16);
  PCURL::PCURL(&v22, @"Channel GradientSample Interpolation Enum");
  TXParagraphStyleFolder_Factory::createInstance(v17, v18);
  PCURL::PCURL(&v21, @"Channel GradientSample Interpolation");
  v20 = OZChannelGradientSample::OZChannelGradientSample_interpolationImpl::getInstance(v19);
  OZChannelEnum::OZChannelEnum((this + 432), 2u, &v22, &v21, this, 0x64u, 0, v20, 0);
  PCString::~PCString(&v21);
  PCString::~PCString(&v22);
  (*(*this + 128))(this);
}

void sub_25FEE0194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  OZChannelEnum::~OZChannelEnum((v12 + 432));
  OZChannelPercent::~OZChannelPercent((v12 + 280));
  OZChannelPercent::~OZChannelPercent((v12 + 128));
  OZChannelFolder::~OZChannelFolder(v12);
  _Unwind_Resume(a1);
}

void OZChannelGradientSample::OZChannelGradientSample(OZChannelGradientSample *this, OZFactory *a2, const PCString *a3, double a4, double a5, unsigned int a6, OZChannelFolder *a7, unsigned int a8, int a9)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a7, a8, a9, 0);
  *v13 = &unk_287250398;
  *(v13 + 2) = &unk_287250670;
  TXParagraphStyleFolder_Factory::createInstance(v13, v14);
  PCURL::PCURL(&v24, @"Channel GradientSample Offset");
  OZChannelPercent::OZChannelPercent((this + 128), a4, &v24, this, 1u, 0, 0, 0);
  PCString::~PCString(&v24);
  TXParagraphStyleFolder_Factory::createInstance(v15, v16);
  PCURL::PCURL(&v24, @"Channel GradientSample Middle");
  OZChannelPercent::OZChannelPercent((this + 280), a5, &v24, this, 2u, 0, 0, 0);
  PCString::~PCString(&v24);
  TXParagraphStyleFolder_Factory::createInstance(v17, v18);
  PCURL::PCURL(&v24, @"Channel GradientSample Interpolation Enum");
  TXParagraphStyleFolder_Factory::createInstance(v19, v20);
  PCURL::PCURL(&v23, @"Channel GradientSample Interpolation");
  if (a6 == 2)
  {
    Instance = OZChannelGradientSample::OZChannelGradientSample_interpolationImpl::getInstance(v21);
  }

  else
  {
    Instance = 0;
  }

  OZChannelEnum::OZChannelEnum((this + 432), a6, &v24, &v23, this, 0x64u, 0, Instance, 0);
  PCString::~PCString(&v23);
  PCString::~PCString(&v24);
  (*(*this + 128))(this);
}

void sub_25FEE03E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  OZChannelEnum::~OZChannelEnum((v12 + 432));
  OZChannelPercent::~OZChannelPercent((v12 + 280));
  OZChannelPercent::~OZChannelPercent((v12 + 128));
  OZChannelFolder::~OZChannelFolder(v12);
  _Unwind_Resume(a1);
}

void OZChannelGradientSample::OZChannelGradientSample(OZChannelGradientSample *this, const OZChannelGradientSample *a2, OZChannelFolder *a3)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3);
  *v5 = &unk_287250398;
  *(v5 + 16) = &unk_287250670;
  OZChannelPercent::OZChannelPercent((v5 + 128), (a2 + 128), this);
  OZChannelPercent::OZChannelPercent((this + 280), (a2 + 280), this);
  OZChannelEnum::OZChannelEnum((this + 432), (a2 + 432), this);
}

void sub_25FEE0504(_Unwind_Exception *a1)
{
  OZChannelPercent::~OZChannelPercent((v1 + 280));
  OZChannelPercent::~OZChannelPercent((v1 + 128));
  OZChannelFolder::~OZChannelFolder(v1);
  _Unwind_Resume(a1);
}

void OZChannelGradientSample::~OZChannelGradientSample(OZChannelGradientSample *this)
{
  *this = &unk_287250398;
  *(this + 2) = &unk_287250670;
  OZChannelEnum::~OZChannelEnum((this + 432));
  OZChannelPercent::~OZChannelPercent((this + 280));
  OZChannelPercent::~OZChannelPercent((this + 128));

  OZChannelFolder::~OZChannelFolder(this);
}

{
  OZChannelGradientSample::~OZChannelGradientSample(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelGradientSample::~OZChannelGradientSample(OZChannelGradientSample *this)
{
  OZChannelGradientSample::~OZChannelGradientSample((this - 16));
}

{
  OZChannelGradientSample::~OZChannelGradientSample((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelGradientSample::copy(OZChannelGradientSample *this, const OZChannelBase *a2, char a3)
{
  v4 = a2;
  OZChannelFolder::copy(this, a2);
  if (v4)
  {
  }

  OZChannel::copy((this + 128), (v4 + 128), a3);
  OZChannel::copy((this + 280), (v4 + 280), a3);

  OZChannelEnum::copy(this + 54, (v4 + 432), a3);
}

void OZChannelGradientSampleRGB::OZChannelGradientSampleRGB(OZChannelGradientSampleRGB *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelGradientSample::OZChannelGradientSample(this, a2, a3, a4);
  *v5 = &unk_2872506E0;
  *(v5 + 2) = &unk_2872509B8;
  TXParagraphStyleFolder_Factory::createInstance(v5, v6);
  PCURL::PCURL(&v7, @"Channel GradientSample Color");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 688), &v7, this, 3u, 0, 5u);
  PCString::~PCString(&v7);
}

void sub_25FEE0850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelGradientSample::~OZChannelGradientSample(v10);
  _Unwind_Resume(a1);
}

void OZChannelGradientSampleRGB::OZChannelGradientSampleRGB(OZChannelGradientSampleRGB *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelGradientSampleRGB_Factory::getInstance(this);
  OZChannelGradientSample::OZChannelGradientSample(this, Instance, a2, a3, a4, a5);
  *this = &unk_2872506E0;
  *(this + 2) = &unk_2872509B8;
  TXParagraphStyleFolder_Factory::createInstance(v11, v12);
  PCURL::PCURL(&v13, @"Channel GradientSample Color");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 688), &v13, this, 3u, 0, 5u);
  PCString::~PCString(&v13);
}

void sub_25FEE0960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelGradientSample::~OZChannelGradientSample(v10);
  _Unwind_Resume(a1);
}

void OZChannelGradientSampleRGB::OZChannelGradientSampleRGB(OZChannelGradientSampleRGB *this, const PCString *a2, double a3, double a4, double a5, double a6, double a7, unsigned int a8, OZChannelFolder *a9, unsigned int a10, int a11)
{
  Instance = OZChannelGradientSampleRGB_Factory::getInstance(this);
  OZChannelGradientSample::OZChannelGradientSample(this, Instance, a2, a6, a7, a8, a9, a10, a11);
  *this = &unk_2872506E0;
  *(this + 2) = &unk_2872509B8;
  TXParagraphStyleFolder_Factory::createInstance(v23, v24);
  PCURL::PCURL(&v25, @"Channel GradientSample Color");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 688), a3, a4, a5, &v25, this, 3u, 0, 5u);
  PCString::~PCString(&v25);
}

void sub_25FEE0AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelGradientSample::~OZChannelGradientSample(v10);
  _Unwind_Resume(a1);
}

void OZChannelGradientSampleRGB::OZChannelGradientSampleRGB(OZChannelGradientSampleRGB *this, const OZChannelGradientSampleRGB *a2, OZChannelFolder *a3)
{
  OZChannelGradientSample::OZChannelGradientSample(this, a2, a3);
  *v5 = &unk_2872506E0;
  v5[2] = &unk_2872509B8;
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((v5 + 86), (a2 + 688), this);
}

void OZChannelGradientSampleRGB::~OZChannelGradientSampleRGB(OZChannelGradientSampleRGB *this)
{
  *this = &unk_2872506E0;
  *(this + 2) = &unk_2872509B8;
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 688));

  OZChannelGradientSample::~OZChannelGradientSample(this);
}

{
  *this = &unk_2872506E0;
  *(this + 2) = &unk_2872509B8;
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 688));
  OZChannelGradientSample::~OZChannelGradientSample(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelGradientSampleRGB::~OZChannelGradientSampleRGB(OZChannelGradientSampleRGB *this)
{
  v1 = (this - 16);
  *(this - 2) = &unk_2872506E0;
  *this = &unk_2872509B8;
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 672));

  OZChannelGradientSample::~OZChannelGradientSample(v1);
}

{
  OZChannelGradientSampleRGB::~OZChannelGradientSampleRGB((this - 16));
}

void OZChannelGradientSampleRGB::copy(OZChannelGradientSampleRGB *this, const OZChannelBase *a2, char a3)
{
  OZChannelGradientSample::copy(this, a2, a3);

  OZChannelColorNoAlpha::copy((this + 688), (v6 + 688), a3);
}

void OZChannelGradientSampleAlpha::OZChannelGradientSampleAlpha(OZChannelGradientSampleAlpha *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelGradientSample::OZChannelGradientSample(this, a2, a3, a4);
  *v5 = &unk_287250A28;
  *(v5 + 2) = &unk_287250D00;
  TXParagraphStyleFolder_Factory::createInstance(v5, v6);
  PCURL::PCURL(&v7, @"Channel GradientSample Alpha");
  OZChannelPercent::OZChannelPercent((this + 688), 0.0, &v7, this, 3u, 0, 0, 0);
  PCString::~PCString(&v7);
}

void sub_25FEE0EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelGradientSample::~OZChannelGradientSample(v10);
  _Unwind_Resume(a1);
}

void OZChannelGradientSampleAlpha::OZChannelGradientSampleAlpha(OZChannelGradientSampleAlpha *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelGradientSampleAlpha_Factory::getInstance(this);
  OZChannelGradientSample::OZChannelGradientSample(this, Instance, a2, a3, a4, a5);
  *this = &unk_287250A28;
  *(this + 2) = &unk_287250D00;
  TXParagraphStyleFolder_Factory::createInstance(v11, v12);
  PCURL::PCURL(&v13, @"Channel GradientSample Alpha");
  OZChannelPercent::OZChannelPercent((this + 688), 0.0, &v13, this, 3u, 0, 0, 0);
  PCString::~PCString(&v13);
}

void sub_25FEE0FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelGradientSample::~OZChannelGradientSample(v10);
  _Unwind_Resume(a1);
}

void OZChannelGradientSampleAlpha::OZChannelGradientSampleAlpha(OZChannelGradientSampleAlpha *this, const PCString *a2, double a3, double a4, double a5, unsigned int a6, OZChannelFolder *a7, unsigned int a8, int a9)
{
  Instance = OZChannelGradientSampleAlpha_Factory::getInstance(this);
  OZChannelGradientSample::OZChannelGradientSample(this, Instance, a2, a4, a5, a6, a7, a8, a9);
  *this = &unk_287250A28;
  *(this + 2) = &unk_287250D00;
  TXParagraphStyleFolder_Factory::createInstance(v19, v20);
  PCURL::PCURL(&v21, @"Channel GradientSample Alpha");
  OZChannelPercent::OZChannelPercent((this + 688), a3, &v21, this, 3u, 0, 0, 0);
  PCString::~PCString(&v21);
}

void sub_25FEE1114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelGradientSample::~OZChannelGradientSample(v10);
  _Unwind_Resume(a1);
}

void OZChannelGradientSampleAlpha::OZChannelGradientSampleAlpha(OZChannelGradientSampleAlpha *this, const OZChannelGradientSampleAlpha *a2, OZChannelFolder *a3)
{
  OZChannelGradientSample::OZChannelGradientSample(this, a2, a3);
  *v5 = &unk_287250A28;
  *(v5 + 16) = &unk_287250D00;
  OZChannelPercent::OZChannelPercent((v5 + 688), (a2 + 688), this);
}

void OZChannelGradientSampleAlpha::~OZChannelGradientSampleAlpha(OZChannelGradientSampleAlpha *this)
{
  *this = &unk_287250A28;
  *(this + 2) = &unk_287250D00;
  OZChannelPercent::~OZChannelPercent((this + 688));

  OZChannelGradientSample::~OZChannelGradientSample(this);
}

{
  *this = &unk_287250A28;
  *(this + 2) = &unk_287250D00;
  OZChannelPercent::~OZChannelPercent((this + 688));
  OZChannelGradientSample::~OZChannelGradientSample(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelGradientSampleAlpha::~OZChannelGradientSampleAlpha(OZChannelGradientSampleAlpha *this)
{
  v1 = (this - 16);
  *(this - 2) = &unk_287250A28;
  *this = &unk_287250D00;
  OZChannelPercent::~OZChannelPercent((this + 672));

  OZChannelGradientSample::~OZChannelGradientSample(v1);
}

{
  OZChannelGradientSampleAlpha::~OZChannelGradientSampleAlpha((this - 16));
}

void OZChannelGradientSampleAlpha::copy(OZChannelGradientSampleAlpha *this, const OZChannelBase *a2, char a3)
{
  OZChannelGradientSample::copy(this, a2, a3);

  OZChannel::copy((this + 688), (v6 + 688), a3);
}

uint64_t OZChannelGradientSample::OZChannelGradientSample_interpolationImpl::getInstance(OZChannelGradientSample::OZChannelGradientSample_interpolationImpl *this)
{
  if (atomic_load_explicit(&OZChannelGradientSample::OZChannelGradientSample_interpolationImpl::getInstance(void)::OZChannelGradientSample_interpolationImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelGradientSample::OZChannelGradientSample_interpolationImpl::getInstance(void)::OZChannelGradientSample_interpolationImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradientSample::OZChannelGradientSample_interpolationImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelGradientSample::OZChannelGradientSample_interpolationImpl::_OZChannelGradientSample_interpolation;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradientSample::OZChannelGradientSample_interpolationImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelGradientSample::OZChannelGradientSample_interpolationImpl::_OZChannelGradientSample_interpolation)
  {
    operator new();
  }
}

void sub_25FEE16CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelGradientExtras::~OZChannelGradientExtras(v10);
  _Unwind_Resume(a1);
}

void sub_25FEE17EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelGradientExtras::~OZChannelGradientExtras(v10);
  _Unwind_Resume(a1);
}

void OZChannelGradientWithAngle::OZChannelGradientWithAngle(OZChannelGradientWithAngle *this, const OZChannelGradientWithAngle *a2, OZChannelFolder *a3)
{
  OZChannelGradientExtras::OZChannelGradientExtras(this, a2, a3);
  *v5 = &unk_287250DE8;
  *(v5 + 16) = &unk_2872510C0;
  OZChannel::OZChannel((v5 + 1056), (a2 + 1056), this);
  *(this + 132) = &unk_287246030;
  *(this + 134) = &unk_287246390;
}

void OZChannelGradientWithAngle::~OZChannelGradientWithAngle(OZChannelGradientWithAngle *this)
{
  *this = &unk_287250DE8;
  *(this + 2) = &unk_2872510C0;
  OZChannel::~OZChannel((this + 1056));

  OZChannelGradientExtras::~OZChannelGradientExtras(this);
}

{
  *this = &unk_287250DE8;
  *(this + 2) = &unk_2872510C0;
  OZChannel::~OZChannel((this + 1056));
  OZChannelGradientExtras::~OZChannelGradientExtras(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelGradientWithAngle::~OZChannelGradientWithAngle(OZChannelGradientWithAngle *this)
{
  v1 = (this - 16);
  *(this - 2) = &unk_287250DE8;
  *this = &unk_2872510C0;
  OZChannel::~OZChannel((this + 1040));

  OZChannelGradientExtras::~OZChannelGradientExtras(v1);
}

{
  OZChannelGradientWithAngle::~OZChannelGradientWithAngle((this - 16));
}

void OZChannelGradientWithAngle::copy(OZChannelGradientWithAngle *this, const OZChannelBase *a2, char a3)
{
  OZChannelGradientExtras::copy(this, a2, a3);

  OZChannel::copy((this + 1056), (v6 + 1056), a3);
}

uint64_t OZChannelGradientWithAngle::OZChannelGradientWithAngle_angleImpl::getInstance(OZChannelGradientWithAngle::OZChannelGradientWithAngle_angleImpl *this)
{
  if (atomic_load_explicit(&OZChannelGradientWithAngle::OZChannelGradientWithAngle_angleImpl::getInstance(void)::OZChannelGradientWithAngle_angleImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelGradientWithAngle::OZChannelGradientWithAngle_angleImpl::getInstance(void)::OZChannelGradientWithAngle_angleImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradientWithAngle::OZChannelGradientWithAngle_angleImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelGradientWithAngle::OZChannelGradientWithAngle_angleImpl::_OZChannelGradientWithAngle_angle;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradientWithAngle::OZChannelGradientWithAngle_angleImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelGradientWithAngle::OZChannelGradientWithAngle_angleImpl::_OZChannelGradientWithAngle_angle)
  {
    operator new();
  }
}

void sub_25FEE1E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void OZChannelHistogram::OZChannelHistogram(OZChannelHistogram *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, int a6)
{
  Instance = OZChannelHistogram_Factory::getInstance(this);
  OZCompoundChannel::OZCompoundChannel(this, Instance, a2, a3, a4, a5, 0, a6);
  *this = &unk_2872511A8;
  *(this + 2) = &unk_2872514F0;
  TXParagraphStyleFolder_Factory::createInstance(v13, v14);
  PCURL::PCURL(&v28, @"Channel Histogram Entries");
  TXParagraphStyleFolder_Factory::createInstance(v15, v16);
  PCURL::PCURL(&v27, @"Channel Histogram Label");
  OZChannelEnum::OZChannelEnum((this + 136), &v28, &v27, this, 1u, 0, 0, 0);
  PCString::~PCString(&v27);
  PCString::~PCString(&v28);
  TXParagraphStyleFolder_Factory::createInstance(v17, v18);
  PCURL::PCURL(&v28, @"Channel Histogram RGB Folder");
  OZChannelHistogramSample::OZChannelHistogramSample((this + 392), &v28, this, 2u, 0, 5u);
  PCString::~PCString(&v28);
  TXParagraphStyleFolder_Factory::createInstance(v19, v20);
  PCURL::PCURL(&v28, @"Channel Histogram Red Folder");
  OZChannelHistogramSample::OZChannelHistogramSample((this + 1288), &v28, this, 3u, 0, 5u);
  PCString::~PCString(&v28);
  TXParagraphStyleFolder_Factory::createInstance(v21, v22);
  PCURL::PCURL(&v28, @"Channel Histogram Green Folder");
  OZChannelHistogramSample::OZChannelHistogramSample((this + 2184), &v28, this, 4u, 0, 5u);
  PCString::~PCString(&v28);
  TXParagraphStyleFolder_Factory::createInstance(v23, v24);
  PCURL::PCURL(&v28, @"Channel Histogram Blue Folder");
  OZChannelHistogramSample::OZChannelHistogramSample((this + 3080), &v28, this, 5u, 0, 5u);
  PCString::~PCString(&v28);
  TXParagraphStyleFolder_Factory::createInstance(v25, v26);
  PCURL::PCURL(&v28, @"Channel Histogram Alpha Folder");
  OZChannelHistogramSample::OZChannelHistogramSample((this + 3976), &v28, this, 6u, 0, 5u);
  PCString::~PCString(&v28);
  *(this + 609) = 0;
  OZChannelBase::setFlag((this + 136), 2, 0);
  OZChannelBase::resetFlag(this, 16, 0);
}

void sub_25FEE2144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelHistogramSample::~OZChannelHistogramSample((v10 + 3080));
  OZChannelHistogramSample::~OZChannelHistogramSample((v10 + 2184));
  OZChannelHistogramSample::~OZChannelHistogramSample((v10 + 1288));
  OZChannelHistogramSample::~OZChannelHistogramSample((v10 + 392));
  OZChannelEnum::~OZChannelEnum((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelHistogram::OZChannelHistogram(OZChannelHistogram *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3, a4, a5);
  *v6 = &unk_2872511A8;
  *(v6 + 2) = &unk_2872514F0;
  TXParagraphStyleFolder_Factory::createInstance(v6, v7);
  PCURL::PCURL(&v21, @"Channel Histogram Entries");
  TXParagraphStyleFolder_Factory::createInstance(v8, v9);
  PCURL::PCURL(&v20, @"Channel Histogram Label");
  OZChannelEnum::OZChannelEnum((this + 136), &v21, &v20, this, 1u, 0, 0, 0);
  PCString::~PCString(&v20);
  PCString::~PCString(&v21);
  TXParagraphStyleFolder_Factory::createInstance(v10, v11);
  PCURL::PCURL(&v21, @"Channel Histogram RGB Folder");
  OZChannelHistogramSample::OZChannelHistogramSample((this + 392), &v21, this, 2u, 0, 5u);
  PCString::~PCString(&v21);
  TXParagraphStyleFolder_Factory::createInstance(v12, v13);
  PCURL::PCURL(&v21, @"Channel Histogram Red Folder");
  OZChannelHistogramSample::OZChannelHistogramSample((this + 1288), &v21, this, 3u, 0, 5u);
  PCString::~PCString(&v21);
  TXParagraphStyleFolder_Factory::createInstance(v14, v15);
  PCURL::PCURL(&v21, @"Channel Histogram Green Folder");
  OZChannelHistogramSample::OZChannelHistogramSample((this + 2184), &v21, this, 4u, 0, 5u);
  PCString::~PCString(&v21);
  TXParagraphStyleFolder_Factory::createInstance(v16, v17);
  PCURL::PCURL(&v21, @"Channel Histogram Blue Folder");
  OZChannelHistogramSample::OZChannelHistogramSample((this + 3080), &v21, this, 5u, 0, 5u);
  PCString::~PCString(&v21);
  TXParagraphStyleFolder_Factory::createInstance(v18, v19);
  PCURL::PCURL(&v21, @"Channel Histogram Alpha Folder");
  OZChannelHistogramSample::OZChannelHistogramSample((this + 3976), &v21, this, 6u, 0, 5u);
  PCString::~PCString(&v21);
  *(this + 609) = 0;
  OZChannelBase::setFlag((this + 136), 2, 0);
  OZChannelBase::resetFlag(this, 16, 0);
}

void sub_25FEE2468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelHistogramSample::~OZChannelHistogramSample((v10 + 3080));
  OZChannelHistogramSample::~OZChannelHistogramSample((v10 + 2184));
  OZChannelHistogramSample::~OZChannelHistogramSample((v10 + 1288));
  OZChannelHistogramSample::~OZChannelHistogramSample((v10 + 392));
  OZChannelEnum::~OZChannelEnum((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelHistogram::OZChannelHistogram(OZChannelHistogram *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3);
  *v5 = &unk_2872511A8;
  v5[2] = &unk_2872514F0;
  OZChannelEnum::OZChannelEnum((v5 + 17), &a2[1].var3, this);
  OZChannelHistogramSample::OZChannelHistogramSample((this + 392), &a2[3].var7, this);
  OZChannelHistogramSample::OZChannelHistogramSample((this + 1288), &a2[11].var7, this);
  OZChannelHistogramSample::OZChannelHistogramSample((this + 2184), &a2[19].var7, this);
  OZChannelHistogramSample::OZChannelHistogramSample((this + 3080), &a2[27].var7, this);
  OZChannelHistogramSample::OZChannelHistogramSample((this + 3976), &a2[35].var7, this);
  *(this + 609) = 0;
}

void sub_25FEE261C(_Unwind_Exception *a1)
{
  OZChannelHistogramSample::~OZChannelHistogramSample((v1 + 3080));
  OZChannelHistogramSample::~OZChannelHistogramSample((v1 + 2184));
  OZChannelHistogramSample::~OZChannelHistogramSample((v1 + 1288));
  OZChannelHistogramSample::~OZChannelHistogramSample((v1 + 392));
  OZChannelEnum::~OZChannelEnum((v1 + 136));
  OZCompoundChannel::~OZCompoundChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelHistogram::~OZChannelHistogram(OZChannelHistogram *this)
{
  *this = &unk_2872511A8;
  *(this + 2) = &unk_2872514F0;
  v2 = *(this + 609);
  if (v2)
  {
    OZHistogramDelegate::notifyReferrers(v2);
  }

  OZChannelHistogramSample::~OZChannelHistogramSample((this + 3976));
  OZChannelHistogramSample::~OZChannelHistogramSample((this + 3080));
  OZChannelHistogramSample::~OZChannelHistogramSample((this + 2184));
  OZChannelHistogramSample::~OZChannelHistogramSample((this + 1288));
  OZChannelHistogramSample::~OZChannelHistogramSample((this + 392));
  OZChannelEnum::~OZChannelEnum((this + 136));

  OZCompoundChannel::~OZCompoundChannel(this);
}

{
  OZChannelHistogram::~OZChannelHistogram(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelHistogram::~OZChannelHistogram(OZChannelHistogram *this)
{
  OZChannelHistogram::~OZChannelHistogram((this - 16));
}

{
  OZChannelHistogram::~OZChannelHistogram((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelHistogram::copy(OZChannelHistogram *this, const OZChannelBase *a2, char a3)
{
  v4 = a2;
  OZCompoundChannel::copy(this, a2);
  if (v4)
  {
  }

  OZChannelEnum::copy(this + 17, (v4 + 136), a3);
  OZChannelHistogramSample::copy((this + 392), (v4 + 392), a3);
  OZChannelHistogramSample::copy((this + 1288), (v4 + 1288), a3);
  OZChannelHistogramSample::copy((this + 2184), (v4 + 2184), a3);
  OZChannelHistogramSample::copy((this + 3080), (v4 + 3080), a3);

  OZChannelHistogramSample::copy((this + 3976), (v4 + 3976), a3);
}

char *OZChannelHistogram::getBlackIn(OZChannelHistogram *this, int a2)
{
  v2 = this + 2320;
  v3 = this + 3216;
  v4 = this + 4112;
  if (a2 != 4)
  {
    v4 = 0;
  }

  if (a2 != 3)
  {
    v3 = v4;
  }

  if (a2 != 2)
  {
    v2 = v3;
  }

  v5 = this + 528;
  v6 = this + 1424;
  if (a2 != 1)
  {
    v6 = 0;
  }

  if (a2)
  {
    v5 = v6;
  }

  if (a2 <= 1)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

char *OZChannelHistogram::getBlackOut(OZChannelHistogram *this, int a2)
{
  v2 = this + 2472;
  v3 = this + 3368;
  v4 = this + 4264;
  if (a2 != 4)
  {
    v4 = 0;
  }

  if (a2 != 3)
  {
    v3 = v4;
  }

  if (a2 != 2)
  {
    v2 = v3;
  }

  v5 = this + 680;
  v6 = this + 1576;
  if (a2 != 1)
  {
    v6 = 0;
  }

  if (a2)
  {
    v5 = v6;
  }

  if (a2 <= 1)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

char *OZChannelHistogram::getWhiteIn(OZChannelHistogram *this, int a2)
{
  v2 = this + 2624;
  v3 = this + 3520;
  v4 = this + 4416;
  if (a2 != 4)
  {
    v4 = 0;
  }

  if (a2 != 3)
  {
    v3 = v4;
  }

  if (a2 != 2)
  {
    v2 = v3;
  }

  v5 = this + 832;
  v6 = this + 1728;
  if (a2 != 1)
  {
    v6 = 0;
  }

  if (a2)
  {
    v5 = v6;
  }

  if (a2 <= 1)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

char *OZChannelHistogram::getWhiteOut(OZChannelHistogram *this, int a2)
{
  v2 = this + 2776;
  v3 = this + 3672;
  v4 = this + 4568;
  if (a2 != 4)
  {
    v4 = 0;
  }

  if (a2 != 3)
  {
    v3 = v4;
  }

  if (a2 != 2)
  {
    v2 = v3;
  }

  v5 = this + 984;
  v6 = this + 1880;
  if (a2 != 1)
  {
    v6 = 0;
  }

  if (a2)
  {
    v5 = v6;
  }

  if (a2 <= 1)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

char *OZChannelHistogram::getGamma(OZChannelHistogram *this, int a2)
{
  v2 = this + 2928;
  v3 = this + 3824;
  v4 = this + 4720;
  if (a2 != 4)
  {
    v4 = 0;
  }

  if (a2 != 3)
  {
    v3 = v4;
  }

  if (a2 != 2)
  {
    v2 = v3;
  }

  v5 = this + 1136;
  v6 = this + 2032;
  if (a2 != 1)
  {
    v6 = 0;
  }

  if (a2)
  {
    v5 = v6;
  }

  if (a2 <= 1)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

double OZChannelHistogram::getBlackInValue(OZChannelHistogram *this, unsigned int a2, const CMTime *a3, double a4)
{
  if (a2 > 4)
  {
    return 0.0;
  }

  OZChannel::getValueAsDouble((this + 896 * a2 + 528), a3, a4);
  return result;
}

double OZChannelHistogram::getBlackOutValue(OZChannelHistogram *this, unsigned int a2, const CMTime *a3, double a4)
{
  if (a2 > 4)
  {
    return 0.0;
  }

  OZChannel::getValueAsDouble((this + 896 * a2 + 680), a3, a4);
  return result;
}

double OZChannelHistogram::getWhiteInValue(OZChannelHistogram *this, unsigned int a2, const CMTime *a3, double a4)
{
  if (a2 > 4)
  {
    return 0.0;
  }

  OZChannel::getValueAsDouble((this + 896 * a2 + 832), a3, a4);
  return result;
}

double OZChannelHistogram::getWhiteOutValue(OZChannelHistogram *this, unsigned int a2, const CMTime *a3, double a4)
{
  if (a2 > 4)
  {
    return 0.0;
  }

  OZChannel::getValueAsDouble((this + 896 * a2 + 984), a3, a4);
  return result;
}

double OZChannelHistogram::getGammaValue(OZChannelHistogram *this, unsigned int a2, const CMTime *a3, double a4)
{
  if (a2 > 4)
  {
    return 0.0;
  }

  OZChannel::getValueAsDouble((this + 896 * a2 + 1136), a3, a4);
  return result;
}

void OZChannelHistogramSample::~OZChannelHistogramSample(OZChannelHistogramSample *this)
{
  *this = &unk_287251560;
  *(this + 2) = &unk_2872518A8;
  OZChannel::~OZChannel((this + 744));
  OZChannel::~OZChannel((this + 592));
  OZChannel::~OZChannel((this + 440));
  OZChannel::~OZChannel((this + 288));
  OZChannel::~OZChannel((this + 136));

  OZCompoundChannel::~OZCompoundChannel(this);
}

{
  OZChannelHistogramSample::~OZChannelHistogramSample(this);

  JUMPOUT(0x2666E9F00);
}

void OZChannelHistogramSample::OZChannelHistogramSample(OZChannelHistogramSample *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, int a6)
{
  Instance = OZChannelHistogramSample_Factory::getInstance(this);
  OZCompoundChannel::OZCompoundChannel(this, Instance, a2, a3, a4, a5, 0, a6);
  *this = &unk_287251560;
  *(this + 2) = &unk_2872518A8;
  TXParagraphStyleFolder_Factory::createInstance(v13, v14);
  PCURL::PCURL(&v23, @"Channel Histogram Black In Label");
  OZChannelDouble::OZChannelDouble((this + 136), 0.0, &v23, this, 1u, 0, 0, 0);
  PCString::~PCString(&v23);
  TXParagraphStyleFolder_Factory::createInstance(v15, v16);
  PCURL::PCURL(&v23, @"Channel Histogram Black Out Label");
  OZChannelDouble::OZChannelDouble((this + 288), 0.0, &v23, this, 2u, 0, 0, 0);
  PCString::~PCString(&v23);
  TXParagraphStyleFolder_Factory::createInstance(v17, v18);
  PCURL::PCURL(&v23, @"Channel Histogram White In Label");
  OZChannelDouble::OZChannelDouble((this + 440), 1.0, &v23, this, 3u, 0, 0, 0);
  PCString::~PCString(&v23);
  TXParagraphStyleFolder_Factory::createInstance(v19, v20);
  PCURL::PCURL(&v23, @"Channel Histogram White Out Label");
  OZChannelDouble::OZChannelDouble((this + 592), 1.0, &v23, this, 4u, 0, 0, 0);
  PCString::~PCString(&v23);
  TXParagraphStyleFolder_Factory::createInstance(v21, v22);
  PCURL::PCURL(&v23, @"Channel Histogram Gamma Label");
  OZChannelDouble::OZChannelDouble((this + 744), 1.0, &v23, this, 5u, 0, 0, 0);
  PCString::~PCString(&v23);
  OZChannel::setSliderMax((this + 136), 1.0);
  OZChannel::setSliderMax((this + 288), 1.0);
  OZChannel::setSliderMax((this + 440), 1.0);
  OZChannel::setSliderMax((this + 592), 1.0);
  OZChannel::setSliderMax((this + 744), 5.0);
}

void sub_25FEE2E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 592));
  OZChannel::~OZChannel((v10 + 440));
  OZChannel::~OZChannel((v10 + 288));
  OZChannel::~OZChannel((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelHistogramSample::OZChannelHistogramSample(OZChannelHistogramSample *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3, a4, a5);
  *v6 = &unk_287251560;
  *(v6 + 2) = &unk_2872518A8;
  TXParagraphStyleFolder_Factory::createInstance(v6, v7);
  PCURL::PCURL(&v16, @"Channel Histogram Black In Label");
  OZChannelDouble::OZChannelDouble((this + 136), 0.0, &v16, this, 1u, 0, 0, 0);
  PCString::~PCString(&v16);
  TXParagraphStyleFolder_Factory::createInstance(v8, v9);
  PCURL::PCURL(&v16, @"Channel Histogram Black Out Label");
  OZChannelDouble::OZChannelDouble((this + 288), 0.0, &v16, this, 2u, 0, 0, 0);
  PCString::~PCString(&v16);
  TXParagraphStyleFolder_Factory::createInstance(v10, v11);
  PCURL::PCURL(&v16, @"Channel Histogram White In Label");
  OZChannelDouble::OZChannelDouble((this + 440), 1.0, &v16, this, 3u, 0, 0, 0);
  PCString::~PCString(&v16);
  TXParagraphStyleFolder_Factory::createInstance(v12, v13);
  PCURL::PCURL(&v16, @"Channel Histogram White Out Label");
  OZChannelDouble::OZChannelDouble((this + 592), 1.0, &v16, this, 4u, 0, 0, 0);
  PCString::~PCString(&v16);
  TXParagraphStyleFolder_Factory::createInstance(v14, v15);
  PCURL::PCURL(&v16, @"Channel Histogram Gamma Label");
  OZChannelDouble::OZChannelDouble((this + 744), 1.0, &v16, this, 5u, 0, 0, 0);
  PCString::~PCString(&v16);
  OZChannel::setSliderMax((this + 136), 1.0);
  OZChannel::setSliderMax((this + 288), 1.0);
  OZChannel::setSliderMax((this + 440), 1.0);
  OZChannel::setSliderMax((this + 592), 1.0);
  OZChannel::setSliderMax((this + 744), 5.0);
}

void sub_25FEE3118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 592));
  OZChannel::~OZChannel((v10 + 440));
  OZChannel::~OZChannel((v10 + 288));
  OZChannel::~OZChannel((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelHistogramSample::OZChannelHistogramSample(OZChannelHistogramSample *this, const OZChannelHistogramSample *a2, OZChannelFolder *a3)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3);
  *v5 = &unk_287251560;
  *(v5 + 16) = &unk_2872518A8;
  OZChannel::OZChannel((v5 + 136), (a2 + 136), this);
  *(this + 17) = &unk_287245C60;
  *(this + 19) = &unk_287245FC0;
  OZChannel::OZChannel((this + 288), (a2 + 288), this);
  *(this + 36) = &unk_287245C60;
  *(this + 38) = &unk_287245FC0;
  OZChannel::OZChannel((this + 440), (a2 + 440), this);
  *(this + 55) = &unk_287245C60;
  *(this + 57) = &unk_287245FC0;
  OZChannel::OZChannel((this + 592), (a2 + 592), this);
  *(this + 74) = &unk_287245C60;
  *(this + 76) = &unk_287245FC0;
  OZChannel::OZChannel((this + 744), (a2 + 744), this);
  *(this + 93) = &unk_287245C60;
  *(this + 95) = &unk_287245FC0;
}

void sub_25FEE33D4(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v5);
  OZChannel::~OZChannel(v4);
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZCompoundChannel::~OZCompoundChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelHistogramSample::copy(OZChannelHistogramSample *this, const OZChannelBase *a2, char a3)
{
  v4 = a2;
  OZCompoundChannel::copy(this, a2);
  if (v4)
  {
  }

  OZChannel::copy((this + 136), (v4 + 136), a3);
  OZChannel::copy((this + 288), (v4 + 288), a3);
  OZChannel::copy((this + 440), (v4 + 440), a3);
  OZChannel::copy((this + 592), (v4 + 592), a3);

  OZChannel::copy((this + 744), (v4 + 744), a3);
}

void non-virtual thunk toOZChannelHistogramSample::~OZChannelHistogramSample(OZChannelHistogramSample *this)
{
  OZChannelHistogramSample::~OZChannelHistogramSample((this - 16));
}

{
  OZChannelHistogramSample::~OZChannelHistogramSample((this - 16));

  JUMPOUT(0x2666E9F00);
}

void sub_25FEE370C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void sub_25FEE3D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void sub_25FEE4280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void OZChannelInfo::OZChannelInfo(OZChannelInfo *this)
{
  *this = &unk_287251918;
  PCSharedCount::PCSharedCount(this + 7);
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 8) = @"PISliderTransformer";
  *(this + 72) = 1;
}

void OZChannelInfo::OZChannelInfo(OZChannelInfo *this, double a2, double a3, double a4, double a5, double a6, const char *a7)
{
  *this = &unk_287251918;
  PCSharedCount::PCSharedCount(this + 7);
  *(this + 1) = a3;
  *(this + 2) = a2;
  *(this + 3) = a5;
  *(this + 4) = a4;
  *(this + 5) = a6;
  *(this + 6) = 0;
  PCString::set(this + 7, a7);
  *(this + 8) = @"PISliderTransformer";
  *(this + 72) = 1;
}

void OZChannelInfo::OZChannelInfo(OZChannelInfo *this, double a2, double a3, double a4, double a5, double a6, const PCString *a7)
{
  *this = &unk_287251918;
  PCSharedCount::PCSharedCount(this + 7);
  *(this + 1) = a3;
  *(this + 2) = a2;
  *(this + 3) = a5;
  *(this + 4) = a4;
  *(this + 5) = a6;
  *(this + 6) = 0;
  PCString::set(this + 7, a7);
  *(this + 8) = @"PISliderTransformer";
  *(this + 72) = 1;
}

void OZChannelInfo::OZChannelInfo(OZChannelInfo *this, const OZChannelInfo *a2)
{
  *this = &unk_287251918;
  PCSharedCount::PCSharedCount(this + 7);
  *(this + 8) = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 40) = *(a2 + 40);
  PCString::set(this + 7, a2 + 7);
  v4 = *(a2 + 8);
  *(this + 8) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  *(this + 72) = 0;
}

void OZChannelInfo::~OZChannelInfo(OZChannelInfo *this)
{
  *this = &unk_287251918;
  v2 = *(this + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  PCString::~PCString(this + 7);
}

{
  OZChannelInfo::~OZChannelInfo(this);

  JUMPOUT(0x2666E9F00);
}

void OZChannelInfo::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  PCString::set((a1 + 56), (a2 + 56));
  OZChannelInfo::setSliderTransformerName(a1, *(a2 + 64));
  *(a1 + 72) = 0;
}

void OZChannelInfo::setSliderTransformerName(OZChannelInfo *this, CFTypeRef cf)
{
  v3 = *(this + 8);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 8) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void OZChannelLevels::OZChannelLevels(OZChannelLevels *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, int a6)
{
  Instance = OZChannelLevels_Factory::getInstance(this);
  OZCompoundChannel::OZCompoundChannel(this, Instance, a2, a3, a4, a5, 0, a6);
  *this = &unk_287251948;
  *(this + 2) = &unk_287251C90;
  TXParagraphStyleFolder_Factory::createInstance(v13, v14);
  PCURL::PCURL(&v19, @"Channel Levels Black Label");
  OZChannelDouble::OZChannelDouble((this + 136), 0.0, &v19, this, 1u, 0, 0, 0);
  PCString::~PCString(&v19);
  TXParagraphStyleFolder_Factory::createInstance(v15, v16);
  PCURL::PCURL(&v19, @"Channel Levels White Label");
  OZChannelDouble::OZChannelDouble((this + 288), 1.0, &v19, this, 2u, 0, 0, 0);
  PCString::~PCString(&v19);
  TXParagraphStyleFolder_Factory::createInstance(v17, v18);
  PCURL::PCURL(&v19, @"Channel Levels Gamma Label");
  OZChannelDouble::OZChannelDouble((this + 440), 1.0, &v19, this, 3u, 0, 0, 0);
  PCString::~PCString(&v19);
  OZChannel::setSliderMax((this + 136), 1.0);
  OZChannel::setSliderMax((this + 288), 1.0);
  OZChannel::setSliderMax((this + 440), 5.0);
  OZChannelBase::resetFlag(this, 16, 0);
}

void sub_25FEE50DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 288));
  OZChannel::~OZChannel((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelLevels::OZChannelLevels(OZChannelLevels *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3, a4, a5);
  *v6 = &unk_287251948;
  *(v6 + 2) = &unk_287251C90;
  TXParagraphStyleFolder_Factory::createInstance(v6, v7);
  PCURL::PCURL(&v12, @"Channel Levels Black Label");
  OZChannelDouble::OZChannelDouble((this + 136), 0.0, &v12, this, 1u, 0, 0, 0);
  PCString::~PCString(&v12);
  TXParagraphStyleFolder_Factory::createInstance(v8, v9);
  PCURL::PCURL(&v12, @"Channel Levels White Label");
  OZChannelDouble::OZChannelDouble((this + 288), 1.0, &v12, this, 2u, 0, 0, 0);
  PCString::~PCString(&v12);
  TXParagraphStyleFolder_Factory::createInstance(v10, v11);
  PCURL::PCURL(&v12, @"Channel Levels Gamma Label");
  OZChannelDouble::OZChannelDouble((this + 440), 1.0, &v12, this, 3u, 0, 0, 0);
  PCString::~PCString(&v12);
  OZChannel::setSliderMax((this + 136), 1.0);
  OZChannel::setSliderMax((this + 288), 1.0);
  OZChannel::setSliderMax((this + 440), 5.0);
  OZChannelBase::resetFlag(this, 16, 0);
}

void sub_25FEE52CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 288));
  OZChannel::~OZChannel((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelLevels::OZChannelLevels(OZChannelLevels *this, const OZChannelLevels *a2, OZChannelFolder *a3)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3);
  *v5 = &unk_287251948;
  *(v5 + 16) = &unk_287251C90;
  v6 = (v5 + 136);
  OZChannel::OZChannel((v5 + 136), (a2 + 136), this);
  *(this + 17) = &unk_287245C60;
  *(this + 19) = &unk_287245FC0;
  OZChannel::OZChannel((this + 288), (a2 + 288), this);
  *(this + 36) = &unk_287245C60;
  *(this + 38) = &unk_287245FC0;
  OZChannel::OZChannel((this + 440), (a2 + 440), this);
  *(this + 55) = &unk_287245C60;
  *(this + 57) = &unk_287245FC0;
  OZChannel::setSliderMax(v6, 1.0);
  OZChannel::setSliderMax((this + 288), 1.0);
  OZChannel::setSliderMax((this + 440), 5.0);
}

void sub_25FEE54D0(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZCompoundChannel::~OZCompoundChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelLevels::copy(OZChannelLevels *this, const OZChannelBase *a2, char a3)
{
  v4 = a2;
  OZCompoundChannel::copy(this, a2);
  if (v4)
  {
  }

  OZChannel::copy((this + 136), (v4 + 136), a3);
  OZChannel::copy((this + 288), (v4 + 288), a3);

  OZChannel::copy((this + 440), (v4 + 440), a3);
}

void OZChannelLevels::~OZChannelLevels(OZChannelLevels *this)
{
  OZChannelLevels::~OZChannelLevels(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287251948;
  *(this + 2) = &unk_287251C90;
  OZChannel::~OZChannel((this + 440));
  OZChannel::~OZChannel((this + 288));
  OZChannel::~OZChannel((this + 136));

  OZCompoundChannel::~OZCompoundChannel(this);
}

void non-virtual thunk toOZChannelLevels::~OZChannelLevels(OZChannelLevels *this)
{
  OZChannelLevels::~OZChannelLevels((this - 16));
}

{
  OZChannelLevels::~OZChannelLevels((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelObjectRootBase::OZChannelObjectRootBase(OZChannelObjectRootBase *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, a5, a6, 0);
  *v6 = &unk_287251D00;
  *(v6 + 16) = &unk_287252088;
  v7 = MEMORY[0x277CC08F0];
  v8 = *MEMORY[0x277CC08F0];
  *(v6 + 152) = *MEMORY[0x277CC08F0];
  v9 = *(v7 + 16);
  *(v6 + 168) = v9;
  *(v6 + 176) = v8;
  *(v6 + 192) = v9;
  *(v6 + 128) = v8;
  *(v6 + 144) = v9;
  *(v6 + 56) |= 0x2040uLL;
  *(v6 + 200) = 256;
}

void OZChannelObjectRootBase::OZChannelObjectRootBase(OZChannelObjectRootBase *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelObjectRootBase_Factory::getInstance(this);
  OZChannelFolder::OZChannelFolder(this, Instance, a2, a3, a4, a5, 0);
  *this = &unk_287251D00;
  *(this + 2) = &unk_287252088;
  v11 = MEMORY[0x277CC08F0];
  v12 = *MEMORY[0x277CC08F0];
  *(this + 152) = *MEMORY[0x277CC08F0];
  v13 = *(v11 + 16);
  *(this + 21) = v13;
  *(this + 11) = v12;
  *(this + 24) = v13;
  *(this + 8) = v12;
  *(this + 18) = v13;
  *(this + 7) |= 0x2040uLL;
  *(this + 100) = 256;
}

void OZChannelObjectRootBase::OZChannelObjectRootBase(OZChannelObjectRootBase *this, const OZChannelObjectRootBase *a2, OZChannelFolder *a3)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3);
  *v4 = &unk_287251D00;
  *(v4 + 16) = &unk_287252088;
  v5 = MEMORY[0x277CC08F0];
  v6 = *MEMORY[0x277CC08F0];
  *(v4 + 152) = *MEMORY[0x277CC08F0];
  v7 = *(v5 + 16);
  *(v4 + 168) = v7;
  *(v4 + 176) = v6;
  *(v4 + 192) = v7;
  *(v4 + 56) |= 0x2040uLL;
  v8 = *(a2 + 8);
  *(v4 + 144) = *(a2 + 18);
  *(v4 + 128) = v8;
  if (v4 != a2)
  {
    v9 = *(a2 + 152);
    *(v4 + 168) = *(a2 + 21);
    *(v4 + 152) = v9;
    v10 = *(a2 + 11);
    *(v4 + 192) = *(a2 + 24);
    *(v4 + 176) = v10;
  }

  *(v4 + 201) = *(a2 + 201);
  *(v4 + 200) = 0;
}

void OZChannelObjectRootBase::OZChannelObjectRootBase(OZChannelObjectRootBase *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, 0);
  *v4 = &unk_287251D00;
  *(v4 + 16) = &unk_287252088;
  v5 = MEMORY[0x277CC08F0];
  v6 = *MEMORY[0x277CC08F0];
  *(v4 + 152) = *MEMORY[0x277CC08F0];
  v7 = *(v5 + 16);
  *(v4 + 168) = v7;
  *(v4 + 176) = v6;
  *(v4 + 192) = v7;
  *(v4 + 128) = v6;
  *(v4 + 144) = v7;
  *(v4 + 56) |= 0x2040uLL;
  *(v4 + 200) = 256;
}

void non-virtual thunk toOZChannelObjectRootBase::~OZChannelObjectRootBase(OZChannelObjectRootBase *this)
{
  OZChannelFolder::~OZChannelFolder((this - 16));
}

{
  OZChannelFolder::~OZChannelFolder((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelObjectRootBase::~OZChannelObjectRootBase(OZChannelFolder *this)
{
  OZChannelFolder::~OZChannelFolder(this);

  JUMPOUT(0x2666E9F00);
}

void OZChannelObjectRootBase::assign(OZChannelObjectRootBase *this, const OZChannelBase *a2)
{
  OZChannelFolder::assign(this, a2);
  PCString::set(this + 4, &a2->var4);
  v4 = *(this + 5);
  if (!v4)
  {
    operator new();
  }

  if (a2->var5)
  {
    var5 = a2->var5;
  }

  else
  {
    var5 = &a2->var4;
  }

  PCString::set(v4, var5);
}

const OZChannelBase *OZChannelObjectRootBase::compare(OZChannelObjectRootBase *this, const OZChannelBase *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (result)
  {
    v4 = result;
    result = (OZChannelFolder::compare(this, result) && (time1 = *(this + 128), v5 = *&v4[1].var2, !CMTimeCompare(&time1, &v5)) && (time1 = *(this + 152), v5 = *&v4[1].var5, !CMTimeCompare(&time1, &v5)) && (time1 = *(this + 176), v5 = *&v4[1].var8, !CMTimeCompare(&time1, &v5)));
  }

  return result;
}

void OZChannelObjectRootBase::copy(OZChannelObjectRootBase *this, const OZChannelBase *a2)
{
  OZChannelFolder::copy(this, a2);
  if (a2)
  {
    if (v4)
    {
      v5 = *(v4 + 8);
      *(this + 18) = *(v4 + 18);
      *(this + 8) = v5;
      if (v4 != this)
      {
        v6 = *(v4 + 152);
        *(this + 21) = *(v4 + 21);
        *(this + 152) = v6;
        v7 = *(v4 + 11);
        *(this + 24) = *(v4 + 24);
        *(this + 11) = v7;
      }

      *(this + 201) = *(v4 + 201);
    }
  }
}

__n128 OZChannelObjectRootBase::getTimeOffset@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[8];
  *a2 = result;
  a2[1].n128_u64[0] = this[9].n128_u64[0];
  return result;
}

__n128 OZChannelObjectRootBase::setTimeOffset(__n128 *this, const CMTime *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    (*(this->n128_u64[0] + 464))(this, 1);
  }

  result = *&a2->value;
  this[9].n128_u64[0] = a2->epoch;
  this[8] = result;
  return result;
}

uint64_t OZChannelObjectRootBase::setTimeExtent(OZChannelObjectRootBase *this, const PCTimeRange *a2, int a3)
{
  if (!a3)
  {
    (*(*this + 464))(this, 1);
  }

  result = (*(*this + 664))(this);
  if (result)
  {
    v10 = *(a2 + 1);
    Seconds = CMTimeGetSeconds(&v10);
    v10 = *(this + 176);
    v7 = CMTimeGetSeconds(&v10);
    result = (*(*this + 672))(this, Seconds / v7);
  }

  if ((this + 152) != a2)
  {
    v8 = *a2;
    *(this + 21) = *(a2 + 2);
    *(this + 152) = v8;
    v9 = *(a2 + 24);
    *(this + 24) = *(a2 + 5);
    *(this + 11) = v9;
  }

  return result;
}

double OZChannelObjectRootBase::adjustToFrameDuration(OZChannelObjectRootBase *this, const CMTime *a2)
{
  OZChannelFolder::adjustToFrameDuration(this, a2);
  v5 = *(this + 152);
  v6 = *(this + 21);
  operator*(&a2->value, &v5, &v7);
  *(this + 152) = v7;
  *(this + 21) = v8;
  v5 = *(this + 11);
  v6 = *(this + 24);
  operator*(&a2->value, &v5, &v7);
  result = *&v7;
  *(this + 11) = v7;
  *(this + 24) = v8;
  return result;
}

OZChannelObjectRootBase *OZChannelObjectRootBase::markVaryingFolderFactoriesForSerialization(OZChannelObjectRootBase *this, OZChannelFolder *a2, PCSerializerWriteStream *a3)
{
  v3 = *(this + 14);
  if (v3)
  {
    for (i = *v3; i != v3[1]; ++i)
    {
      v6 = *i;
      if (*i)
      {
        if (!v7 || (this = (*(*v7 + 416))(v7, a2, 0), (v6 = *i) != 0))
        {
          if (this)
          {
            v10 = v8 == 0;
          }

          else
          {
            v10 = 0;
          }

          if (v10)
          {
            this = OZChannelObjectRootBase::markVaryingFolderFactoriesForSerialization(this, a2, v9);
          }
        }
      }
    }
  }

  return this;
}

uint64_t OZChannelObjectRootBase::writeBody(OZChannelObjectRootBase *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZChannelObjectRootBaseScope);
  (*(*a2 + 16))(a2, 150);
  if (*(this + 201) == 1)
  {
    v18 = *(this + 152);
    (*(*a2 + 208))(a2, 1, &v18);
    (*(*this + 880))(&v14, this);
    v18 = *(this + 152);
    v17 = *(this + 176);
    PC_CMTimeSaferAdd(&v18, &v17, &v16);
    v18 = v16;
    v17 = v14;
    v10 = PC_CMTimeSaferSubtract(&v18, &v17, v15);
    (*(*a2 + 208))(a2, 2, v15, v10);
  }

  (*(*a2 + 208))(a2, 3, this + 128);
  (*(*a2 + 24))(a2);
  v11 = *(this + 7);
  if ((*(*a2 + 232))(a2))
  {
    v12 = 0x40000;
  }

  else
  {
    v12 = -45069;
  }

  (*(*a2 + 16))(a2, 152);
  (*(*a2 + 72))(a2, v12 & v11);
  (*(*a2 + 24))(a2);
  if ((OZChannelBase::isEnabled(this, 0, 0) & 1) == 0)
  {
    (*(*a2 + 16))(a2, 153);
    (*(*a2 + 48))(a2, 0);
    (*(*a2 + 24))(a2);
  }

  if (OZChannelBase::isLocked(this, 0))
  {
    (*(*a2 + 16))(a2, 154);
    (*(*a2 + 48))(a2, 1);
    (*(*a2 + 24))(a2);
  }

  PCSerializerWriteStream::popScope(a2);
  return OZChannelFolder::writeBody(this, a2, a3, a4, a5);
}

uint64_t OZChannelObjectRootBase::serializeSelfOnly(OZChannelObjectRootBase *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZChannelObjectRootBaseScope);
  (*(*a2 + 16))(a2, 150);
  if (*(this + 201) == 1)
  {
    v13 = *(this + 152);
    (*(*a2 + 208))(a2, 1, &v13);
    (*(*this + 880))(&v9, this);
    v13 = *(this + 152);
    v12 = *(this + 176);
    PC_CMTimeSaferAdd(&v13, &v12, &v11);
    v13 = v11;
    v12 = v9;
    v4 = PC_CMTimeSaferSubtract(&v13, &v12, v10);
    (*(*a2 + 208))(a2, 2, v10, v4);
  }

  (*(*a2 + 208))(a2, 3, this + 128);
  (*(*a2 + 24))(a2);
  v5 = *(this + 30);
  (*(*a2 + 16))(a2, 151);
  (*(*a2 + 56))(a2, v5);
  (*(*a2 + 24))(a2);
  v6 = *(this + 14);
  if ((*(*a2 + 232))(a2))
  {
    v7 = 0x40000;
  }

  else
  {
    v7 = -45069;
  }

  (*(*a2 + 16))(a2, 152);
  (*(*a2 + 56))(a2, v7 & v6);
  (*(*a2 + 24))(a2);
  if ((OZChannelBase::isEnabled(this, 0, 0) & 1) == 0)
  {
    (*(*a2 + 16))(a2, 153);
    (*(*a2 + 48))(a2, 0);
    (*(*a2 + 24))(a2);
  }

  if (OZChannelBase::isLocked(this, 0))
  {
    (*(*a2 + 16))(a2, 154);
    (*(*a2 + 48))(a2, 1);
    (*(*a2 + 24))(a2);
  }

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZChannelObjectRootBase::calcHashForStateSelfOnly(OZChannelObjectRootBase *this, PCSerializerWriteStream *a2, const CMTime *a3)
{
  v5 = *(this + 7);
  (*(*a2 + 16))(a2, 0, a3);
  (*(*a2 + 72))(a2, v5 & 0x48000);
  (*(*a2 + 24))(a2);
  LODWORD(v5) = *(this + 30);
  (*(*a2 + 16))(a2, 0);
  (*(*a2 + 56))(a2, v5 & 0xFFF8DFF0);
  (*(*a2 + 24))(a2);
  (*(*this + 320))(v7, this);
  (*(*a2 + 16))(a2, 0);
  (*(*a2 + 112))(a2, v7);
  return (*(*a2 + 24))(a2);
}

uint64_t OZChannelObjectRootBase::parseBegin(OZChannelFolder *this, PCSerializerReadStream *a2)
{
  OZChannelFolder::parseBegin(this, a2);
  *(this + 200) = 0;
  PCSerializerReadStream::pushScope(a2, &OZChannelObjectRootBaseScope);
  return 1;
}

uint64_t non-virtual thunk toOZChannelObjectRootBase::parseBegin(OZChannelObjectRootBase *this, PCSerializerReadStream *a2)
{
  OZChannelFolder::parseBegin((this - 16), a2);
  *(this + 184) = 0;
  PCSerializerReadStream::pushScope(a2, &OZChannelObjectRootBaseScope);
  return 1;
}

uint64_t OZChannelObjectRootBase::parseEnd(OZChannelFolder *this, PCSerializerReadStream *a2)
{
  OZChannelFolder::parseEnd(this, a2);
  if (*(this + 200) == 1)
  {
    (*(*this + 96))(this, 1, 1);
  }

  *(this + 200) = 0;
  return 1;
}

uint64_t OZChannelObjectRootBase::parseElement(OZChannelObjectRootBase *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v19 = 0.0;
  v18 = 0;
  v17 = 0;
  OZChannelFolder::parseElement(this, a2, a3);
  v6 = *(a3 + 2);
  if (v6 > 151)
  {
    if (v6 == 152)
    {
      if ((*(*a3 + 32))(a3, &v18))
      {
        if (OZChannelBase::testFlag(this, 0x8000))
        {
          v7 = 0x8000;
        }

        else
        {
          v7 = 0;
        }

        v18 = v18 & 0xFFFF7FFF | v7;
        v8 = OZChannelBase::testFlag(this, 4);
        v9 = v18 & 0xFFFFCFFB;
        if (v8)
        {
          v10 = 12292;
        }

        else
        {
          v10 = 12288;
        }

        v18 = v10 | v9;
        OZChannelBase::setFlags(this, v10 | v9);
      }
    }

    else if (v6 == 153)
    {
      if ((*(*a3 + 72))(a3, &v17 + 1))
      {
        (*(*this + 104))(this, HIBYTE(v17), 0);
      }
    }

    else if (v6 == 154 && (*(*a3 + 72))(a3, &v17))
    {
      *(this + 200) = v17;
    }

    return 1;
  }

  if (v6 != 150)
  {
    if (v6 == 151 && (*(*a3 + 32))(a3, &v18))
    {
      *(this + 30) = v18;
    }

    return 1;
  }

  v11 = *a3;
  if (*(a2 + 26) < 5u)
  {
    if ((*(v11 + 144))(a3, 1, &v19))
    {
      v23 = *(a2 + 112);
      operator*(&v23, &v24, v19);
      *(this + 152) = v24;
    }

    if ((*(*a3 + 144))(a3, 2, &v19))
    {
      v15 = *(a2 + 112);
      operator*(&v15, &v16, v19);
      *&v14.value = *(a2 + 7);
      v14.epoch = *(a2 + 16);
      v24 = v16;
      v23 = *(this + 152);
      PC_CMTimeSaferSubtract(&v24, &v23, &v20);
      v24 = v20;
      v23 = v14;
      PC_CMTimeSaferAdd(&v24, &v23, &v21);
      *(this + 11) = v21;
      *(this + 24) = v22;
    }

    if ((*(*a3 + 144))(a3, 3, &v19))
    {
      v23 = *(a2 + 112);
      operator*(&v23, &v24, v19);
      *(this + 8) = *&v24.value;
      epoch = v24.epoch;
LABEL_37:
      *(this + 18) = epoch;
    }
  }

  else
  {
    if ((*(v11 + 168))(a3, 1, &v16))
    {
      *(this + 152) = v16;
    }

    if ((*(*a3 + 168))(a3, 2, &v16))
    {
      if (*(a2 + 144) == 1)
      {
        v15 = *(a2 + 112);
      }

      else
      {
        (*(*this + 880))(&v15, this);
      }

      v24 = v16;
      v23 = *(this + 152);
      PC_CMTimeSaferSubtract(&v24, &v23, &v20);
      v24 = v20;
      v23 = v15;
      PC_CMTimeSaferAdd(&v24, &v23, &v21);
      *(this + 11) = v21;
      *(this + 24) = v22;
    }

    if ((*(*a3 + 168))(a3, 3, &v16))
    {
      *(this + 8) = *&v16.value;
      epoch = v16.epoch;
      goto LABEL_37;
    }
  }

  return 1;
}

__n128 OZChannelObjectRootBase::getTimeExtent@<Q0>(OZChannelObjectRootBase *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 152);
  *(a2 + 16) = *(this + 21);
  result = *(this + 11);
  *(a2 + 24) = result;
  *(a2 + 40) = *(this + 24);
  return result;
}

__n128 OZChannelObjectRootBase::getCurrentTime@<Q0>(OZChannelObjectRootBase *this@<X0>, __n128 *a2@<X8>)
{
  Instance = OZCoreGlobals::getInstance(this);
  result = *(Instance + 12);
  *a2 = result;
  a2[1].n128_u64[0] = *(Instance + 28);
  return result;
}

void OZChannelDouble::OZChannelDouble(OZChannelDouble *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  OZChannel::OZChannel(this, a2, a3, a4, a5, a6, a7, a8);
  *v11 = &unk_287245C60;
  *(v11 + 2) = &unk_287245FC0;
  OZChannelDoubleInfo = OZChannelDouble::createOZChannelDoubleInfo(v11);
  if (a8)
  {
    v13 = *(this + 17);
  }

  else
  {
    v13 = OZChannelDouble::_OZChannelDoubleInfo;
    *(this + 17) = OZChannelDouble::_OZChannelDoubleInfo;
  }

  *(this + 16) = v13;
  OZChannelDouble::createOZChannelDoubleImpl(OZChannelDoubleInfo);
  if (a7)
  {
    v14 = *(this + 15);
  }

  else
  {
    v14 = OZChannelDouble::_OZChannelDoubleImpl;
    *(this + 15) = OZChannelDouble::_OZChannelDoubleImpl;
  }

  *(this + 14) = v14;
}

void OZChannelDoubleOverRange::OZChannelDoubleOverRange(OZChannelDoubleOverRange *this, double a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  Instance = OZChannelDoubleOverRange_Factory::getInstance(this);
  OZChannelDouble::OZChannelDouble(this, Instance, a3, a4, a5, a6, a7, a8);
  *this = &unk_2872520F8;
  *(this + 2) = &unk_2872524A8;
  TXParagraphStyleFolder_Factory::createInstance(v17, v18);
  PCURL::PCURL((this + 152), @"Channel Over Range Range Name");
  OZChannel::setDiscrete(this, 0, 0);
  OZChannelBase::setFlag(this, 134414336, 0);
  OZChannel::setDefaultValue(this, a2);
  (*(*this + 288))(this, 0);
  (*(*this + 128))(this);
}

void OZChannelDoubleOverRange::OZChannelDoubleOverRange(OZChannelDoubleOverRange *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelDouble::OZChannelDouble(this, a2, a3, a4, 0, 0);
  *v5 = &unk_2872520F8;
  *(v5 + 2) = &unk_2872524A8;
  TXParagraphStyleFolder_Factory::createInstance(v5, v6);
  PCURL::PCURL((this + 152), @"Channel Over Range Range Name");
  OZChannel::setDiscrete(this, 0, 0);
  OZChannelBase::setFlag(this, 134414336, 0);
  (*(*this + 128))(this);
}

void OZChannelDoubleOverRange::OZChannelDoubleOverRange(OZChannelDoubleOverRange *this, const OZChannelDoubleOverRange *a2, OZChannelFolder *a3)
{
  OZChannel::OZChannel(this, a2, a3);
  v4->var0 = &unk_2872520F8;
  v4[2].var0 = &unk_2872524A8;
  PCString::PCString(v4 + 19, a2 + 19);
}

void OZChannelDoubleOverRange::getValueOverRangeAsDouble(OZChannel *this, const CMTime *a2, Float64 a3)
{
  OZFigTimeForChannelSeconds(&v7, a3, 0x40000);
  v6 = *a2;
  Seconds = CMTimeGetSeconds(&v6);
  OZChannel::getValueAsDouble(this, &v7, Seconds);
}

uint64_t OZChannelDoubleOverRange::writeBody(OZChannelDoubleOverRange *this, PCSerializerWriteStream *a2, int a3)
{
  PCSerializerWriteStream::pushScope(a2, &OZChannelOverRangeScope);
  OZChannel::writeBody(this, a2, a3);
  PCString::PCString(&v7, this + 19);
  (*(*a2 + 16))(a2, 160);
  (*(*a2 + 104))(a2, &v7);
  (*(*a2 + 24))(a2);
  PCString::~PCString(&v7);
  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZChannelDoubleOverRange::parseBegin(OZChannel *this, PCSerializerReadStream *a2)
{
  OZChannel::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelOverRangeScope);
  OZChannel::deleteAllKeyframes(this, MEMORY[0x277CC08F0]);
  return 1;
}

uint64_t OZChannelDoubleOverRange::parseEnd(OZChannel *this, PCSerializerReadStream *a2)
{
  if (*(a2 + 26) <= 4u)
  {
    OZChannel::linearTimeWarp(this, 1.0 / *(a2 + 17), MEMORY[0x277CC08F0]);
  }

  OZChannel::parseEnd(this, a2);
  return 1;
}

uint64_t OZChannelDoubleOverRange::parseElement(OZChannel *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  OZChannel::parseElement(this, a2, a3);
  if (*(a3 + 2) == 160)
  {
    PCSerializerReadStream::getAsString(a2, a3, &this[1]);
  }

  return 1;
}

__n128 OZChannelDoubleOverRange::getTimeOffset@<Q0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277CC08F0];
  result = *MEMORY[0x277CC08F0];
  *a1 = *MEMORY[0x277CC08F0];
  *(a1 + 16) = *(v2 + 16);
  return result;
}

__n128 OZChannelDoubleOverRange::globalToLocalTime@<Q0>(const CMTime *a1@<X1>, CMTime *a2@<X8>)
{
  result = *&a1->value;
  *a2 = *a1;
  return result;
}

__n128 OZChannelDoubleOverRange::localToGlobalTime@<Q0>(const CMTime *a1@<X1>, CMTime *a2@<X8>)
{
  result = *&a1->value;
  *a2 = *a1;
  return result;
}

void *OZChannelDoubleOverRange::moveKeypointTo(OZChannelDoubleOverRange *this, Float64 a2, Float64 a3, uint64_t a4)
{
  OZFigTimeForChannelSeconds(&v10, a2, 0x40000);
  OZFigTimeForChannelSeconds(&v9, a3, 0x40000);
  return (*(*this + 616))(v8, this, &v10, &v9, a4, 0);
}

uint64_t OZChannelDoubleOverRange::previousKeypoint(OZChannelDoubleOverRange *this, double *a2)
{
  memset(&v7, 0, sizeof(v7));
  if (a2)
  {
    OZFigTimeForChannelSeconds(&v7, *a2, 0x40000);
  }

  else
  {
    v7 = **&MEMORY[0x277CC08F0];
  }

  v4 = (*(*this + 624))(this, &v7, 0);
  if (a2)
  {
    v6 = v7;
    *a2 = CMTimeGetSeconds(&v6);
  }

  return v4;
}

uint64_t OZChannelDoubleOverRange::nextKeypoint(OZChannelDoubleOverRange *this, double *a2)
{
  memset(&v7, 0, sizeof(v7));
  if (a2)
  {
    OZFigTimeForChannelSeconds(&v7, *a2, 0x40000);
  }

  else
  {
    v7 = **&MEMORY[0x277CC08F0];
  }

  v4 = (*(*this + 632))(this, &v7, 0);
  if (a2)
  {
    v6 = v7;
    *a2 = CMTimeGetSeconds(&v6);
  }

  return v4;
}

uint64_t OZChannelDoubleOverRange::addKeypointAt(OZChannel *this, const CMTime *a2)
{
  (*(this->var0 + 58))(this, 1);
  if (((*(this->var0 + 61))(this) & 1) == 0)
  {
    (*(this->var0 + 60))(this, 1);
  }

  return OZChannel::setKeyframe(this, a2);
}

void *OZChannelDoubleOverRange::moveKeypointTo@<X0>(OZChannel *this@<X0>, const CMTime *a2@<X1>, const CMTime *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, CMTime *a6@<X8>)
{
  (*(this->var0 + 58))(this, 1);
  if (((*(this->var0 + 61))(this) & 1) == 0)
  {
    (*(this->var0 + 60))(this, 1);
  }

  *&a6->value = *&a3->value;
  a6->epoch = a3->epoch;
  result = OZChannel::getKeyframe(this, a2);
  if (result)
  {
    v13 = result;
    (*(this->var0 + 105))(this, result, a6, a5, a4);

    return OZChannel::getKeyframe(this, v13, a6, 0);
  }

  return result;
}

void *OZChannelDoubleOverRange::deleteKeypointAt(OZChannel *this, const CMTime *a2)
{
  (*(this->var0 + 58))(this, 1);
  result = OZChannel::getKeyframe(this, a2);
  if (result)
  {

    return OZChannel::deleteKeyframe(this, result);
  }

  return result;
}

double OZChannelDoubleOverRange::previousKeypoint(OZChannel *this, CMTime *a2)
{
  v5 = **&MEMORY[0x277CC08F0];
  v4 = 0.0;
  if (OZChannel::getPreviousKeyframe(this, a2, &v5, &v4))
  {
    result = *&v5.value;
    *a2 = v5;
  }

  return result;
}

double OZChannelDoubleOverRange::nextKeypoint(OZChannel *this, CMTime *a2)
{
  v5 = **&MEMORY[0x277CC08F0];
  v4 = 0.0;
  if (OZChannel::getNextKeyframe(this, a2, &v5, &v4))
  {
    result = *&v5.value;
    *a2 = v5;
  }

  return result;
}

uint64_t OZChannelDoubleOverRange::resetToDefault(OZChannel *this, char a2)
{
  OZChannel::resetToDefault(this, a2);
  OZChannel::setKeyframe(this, MEMORY[0x277CC08F0]);
  CMTimeMake(&v4, 1, 1);
  return OZChannel::setKeyframe(this, &v4);
}

void OZChannelDoubleOverRange::getBakeParameters(OZChannelDoubleOverRange *this, const PCTimeRange *a2, double *a3, double *a4, double *a5)
{
  v11 = **&MEMORY[0x277CC08F0];
  v10 = v11;
  v9 = v11;
  (*(*this + 816))();
  if (a3)
  {
    v8 = v11;
    *a3 = CMTimeGetSeconds(&v8);
  }

  if (a4)
  {
    v8 = v10;
    *a4 = CMTimeGetSeconds(&v8);
  }

  if (a5)
  {
    v8 = v9;
    *a5 = CMTimeGetSeconds(&v8);
  }
}

double OZChannelDoubleOverRange::getBakeParameters(OZChannelDoubleOverRange *this, const PCTimeRange *a2, CMTime *a3, CMTime *a4, CMTime *a5)
{
  v7 = *MEMORY[0x277CC08F0];
  a3->epoch = *(MEMORY[0x277CC08F0] + 16);
  *&a3->value = v7;
  CMTimeMake(&v9, 1, 1);
  *a4 = v9;
  OZFigTimeForChannelSeconds(&v9, 0.0005, 0x40000);
  result = *&v9.value;
  *a5 = v9;
  return result;
}

void OZChannelAngle::OZChannelAngle(OZChannelAngle *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  OZChannel::OZChannel(this, a2, a3, a4, a5, a6, a7, a8);
  v11->var0 = &unk_287246030;
  v11->var2 = &unk_287246390;
  OZChannelAngleInfo = OZChannelAngle::createOZChannelAngleInfo(v11);
  if (a8)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelAngle::_OZChannelAngleInfo;
    this->var17 = OZChannelAngle::_OZChannelAngleInfo;
  }

  this->var16 = var17;
  OZChannelAngle::createOZChannelAngleImpl(OZChannelAngleInfo);
  if (a7)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelAngle::_OZChannelAngleImpl;
    this->var15 = OZChannelAngle::_OZChannelAngleImpl;
  }

  this->var14 = var15;
}

void OZChannelAngleOverRange::OZChannelAngleOverRange(OZChannelAngleOverRange *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  Instance = OZChannelAngleOverRange_Factory::getInstance(this);
  OZChannelAngle::OZChannelAngle(this, Instance, a2, a3, a4, a5, a6, a7);
  *this = &unk_287252500;
  *(this + 2) = &unk_2872528B0;
  TXParagraphStyleFolder_Factory::createInstance(v15, v16);
  PCURL::PCURL((this + 152), @"Channel Over Range Range Name");
  OZChannel::setDiscrete(this, 0, 0);
  OZChannelBase::setFlag(this, 134414336, 0);
  (*(*this + 128))(this);
}

void OZChannelAngleOverRange::OZChannelAngleOverRange(OZChannelAngleOverRange *this, double a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  Instance = OZChannelAngleOverRange_Factory::getInstance(this);
  OZChannelAngle::OZChannelAngle(this, Instance, a3, a4, a5, a6, a7, a8);
  *this = &unk_287252500;
  *(this + 2) = &unk_2872528B0;
  TXParagraphStyleFolder_Factory::createInstance(v17, v18);
  PCURL::PCURL((this + 152), @"Channel Over Range Range Name");
  OZChannel::setDiscrete(this, 0, 0);
  OZChannelBase::setFlag(this, 134414336, 0);
  OZChannel::setDefaultValue(this, a2);
  (*(*this + 288))(this, 0);
  (*(*this + 128))(this);
}

void OZChannelAngleOverRange::OZChannelAngleOverRange(OZChannelAngleOverRange *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelAngle::OZChannelAngle(this, a2, a3, a4, 0, 0);
  *v5 = &unk_287252500;
  *(v5 + 2) = &unk_2872528B0;
  TXParagraphStyleFolder_Factory::createInstance(v5, v6);
  PCURL::PCURL((this + 152), @"Channel Over Range Range Name");
  OZChannel::setDiscrete(this, 0, 0);
  OZChannelBase::setFlag(this, 134414336, 0);
  (*(*this + 128))(this);
}

void OZChannelAngleOverRange::OZChannelAngleOverRange(OZChannelAngleOverRange *this, const OZChannelAngleOverRange *a2, OZChannelFolder *a3)
{
  OZChannel::OZChannel(this, a2, a3);
  v4->var0 = &unk_287252500;
  v4[2].var0 = &unk_2872528B0;
  PCString::PCString(v4 + 19, a2 + 19);
}

uint64_t OZChannelAngleOverRange::setValueOverRange(OZChannel *this, Float64 a2, Float64 a3, double a4)
{
  OZFigTimeForChannelSeconds(&v8, a2, 0x40000);
  OZFigTimeForChannelSeconds(&v9, a3, 0x40000);
  return OZChannel::setKeyframe(this, &v9, a4, 1);
}

uint64_t OZChannelAngleOverRange::writeBody(OZChannelAngleOverRange *this, PCSerializerWriteStream *a2, int a3)
{
  PCSerializerWriteStream::pushScope(a2, &OZChannelOverRangeScope);
  OZChannel::writeBody(this, a2, a3);
  PCString::PCString(&v7, this + 19);
  (*(*a2 + 16))(a2, 160);
  (*(*a2 + 104))(a2, &v7);
  (*(*a2 + 24))(a2);
  PCString::~PCString(&v7);
  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZChannelAngleOverRange::parseBegin(OZChannel *this, PCSerializerReadStream *a2)
{
  OZChannel::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelOverRangeScope);
  OZChannel::deleteAllKeyframes(this, MEMORY[0x277CC08F0]);
  return 1;
}

uint64_t OZChannelAngleOverRange::parseEnd(OZChannel *this, PCSerializerReadStream *a2)
{
  if (*(a2 + 26) <= 4u)
  {
    OZChannel::linearTimeWarp(this, 1.0 / *(a2 + 17), MEMORY[0x277CC08F0]);
  }

  OZChannel::parseEnd(this, a2);
  return 1;
}

uint64_t OZChannelAngleOverRange::parseElement(OZChannel *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  OZChannel::parseElement(this, a2, a3);
  if (*(a3 + 2) == 160)
  {
    PCSerializerReadStream::getAsString(a2, a3, &this[1]);
  }

  return 1;
}

__n128 OZChannelAngleOverRange::getTimeOffset@<Q0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277CC08F0];
  result = *MEMORY[0x277CC08F0];
  *a1 = *MEMORY[0x277CC08F0];
  *(a1 + 16) = *(v2 + 16);
  return result;
}

__n128 OZChannelAngleOverRange::globalToLocalTime@<Q0>(const CMTime *a1@<X1>, CMTime *a2@<X8>)
{
  result = *&a1->value;
  *a2 = *a1;
  return result;
}

__n128 OZChannelAngleOverRange::localToGlobalTime@<Q0>(const CMTime *a1@<X1>, CMTime *a2@<X8>)
{
  result = *&a1->value;
  *a2 = *a1;
  return result;
}

void *OZChannelAngleOverRange::moveKeypointTo(OZChannelAngleOverRange *this, Float64 a2, Float64 a3, uint64_t a4)
{
  OZFigTimeForChannelSeconds(&v10, a2, 0x40000);
  OZFigTimeForChannelSeconds(&v9, a3, 0x40000);
  return (*(*this + 616))(v8, this, &v10, &v9, a4, 0);
}

uint64_t OZChannelAngleOverRange::previousKeypoint(OZChannelAngleOverRange *this, double *a2)
{
  memset(&v7, 0, sizeof(v7));
  if (a2)
  {
    OZFigTimeForChannelSeconds(&v7, *a2, 0x40000);
  }

  else
  {
    v7 = **&MEMORY[0x277CC08F0];
  }

  v4 = (*(*this + 624))(this, &v7, 0);
  if (a2)
  {
    v6 = v7;
    *a2 = CMTimeGetSeconds(&v6);
  }

  return v4;
}

uint64_t OZChannelAngleOverRange::nextKeypoint(OZChannelAngleOverRange *this, double *a2)
{
  memset(&v7, 0, sizeof(v7));
  if (a2)
  {
    OZFigTimeForChannelSeconds(&v7, *a2, 0x40000);
  }

  else
  {
    v7 = **&MEMORY[0x277CC08F0];
  }

  v4 = (*(*this + 632))(this, &v7, 0);
  if (a2)
  {
    v6 = v7;
    *a2 = CMTimeGetSeconds(&v6);
  }

  return v4;
}

uint64_t OZChannelAngleOverRange::addKeypointAt(OZChannel *this, const CMTime *a2)
{
  (*(this->var0 + 58))(this, 1);
  if (((*(this->var0 + 61))(this) & 1) == 0)
  {
    (*(this->var0 + 60))(this, 1);
  }

  return OZChannel::setKeyframe(this, a2);
}

void *OZChannelAngleOverRange::moveKeypointTo@<X0>(OZChannel *this@<X0>, const CMTime *a2@<X1>, const CMTime *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, CMTime *a6@<X8>)
{
  (*(this->var0 + 58))(this, 1);
  if (((*(this->var0 + 61))(this) & 1) == 0)
  {
    (*(this->var0 + 60))(this, 1);
  }

  *&a6->value = *&a3->value;
  a6->epoch = a3->epoch;
  result = OZChannel::getKeyframe(this, a2);
  if (result)
  {
    v13 = result;
    (*(this->var0 + 105))(this, result, a6, a5, a4);

    return OZChannel::getKeyframe(this, v13, a6, 0);
  }

  return result;
}

void *OZChannelAngleOverRange::deleteKeypointAt(OZChannel *this, const CMTime *a2)
{
  (*(this->var0 + 58))(this, 1);
  result = OZChannel::getKeyframe(this, a2);
  if (result)
  {

    return OZChannel::deleteKeyframe(this, result);
  }

  return result;
}

double OZChannelAngleOverRange::previousKeypoint(OZChannel *this, CMTime *a2)
{
  v5 = **&MEMORY[0x277CC08F0];
  v4 = 0.0;
  if (OZChannel::getPreviousKeyframe(this, a2, &v5, &v4))
  {
    result = *&v5.value;
    *a2 = v5;
  }

  return result;
}

double OZChannelAngleOverRange::nextKeypoint(OZChannel *this, CMTime *a2)
{
  v5 = **&MEMORY[0x277CC08F0];
  v4 = 0.0;
  if (OZChannel::getNextKeyframe(this, a2, &v5, &v4))
  {
    result = *&v5.value;
    *a2 = v5;
  }

  return result;
}

uint64_t OZChannelAngleOverRange::resetToDefault(OZChannel *this, char a2)
{
  OZChannel::resetToDefault(this, a2);
  OZChannel::setKeyframe(this, MEMORY[0x277CC08F0]);
  CMTimeMake(&v4, 1, 1);
  return OZChannel::setKeyframe(this, &v4);
}

void OZChannelAngleOverRange::getBakeParameters(OZChannelAngleOverRange *this, const PCTimeRange *a2, double *a3, double *a4, double *a5)
{
  v11 = **&MEMORY[0x277CC08F0];
  v10 = v11;
  v9 = v11;
  (*(*this + 816))();
  if (a3)
  {
    v8 = v11;
    *a3 = CMTimeGetSeconds(&v8);
  }

  if (a4)
  {
    v8 = v10;
    *a4 = CMTimeGetSeconds(&v8);
  }

  if (a5)
  {
    v8 = v9;
    *a5 = CMTimeGetSeconds(&v8);
  }
}

double OZChannelAngleOverRange::getBakeParameters(OZChannelAngleOverRange *this, const PCTimeRange *a2, CMTime *a3, CMTime *a4, CMTime *a5)
{
  v7 = *MEMORY[0x277CC08F0];
  a3->epoch = *(MEMORY[0x277CC08F0] + 16);
  *&a3->value = v7;
  CMTimeMake(&v9, 1, 1);
  *a4 = v9;
  OZFigTimeForChannelSeconds(&v9, 0.0005, 0x40000);
  result = *&v9.value;
  *a5 = v9;
  return result;
}

void OZChannelPercentOverRange::OZChannelPercentOverRange(OZChannelPercentOverRange *this, double a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  Instance = OZChannelPercentOverRange_Factory::getInstance(this);
  OZChannelPercent::OZChannelPercent(this, Instance, a3, a4, a5, a6, a7, a8);
  *this = &unk_287252908;
  *(this + 2) = &unk_287252CB8;
  TXParagraphStyleFolder_Factory::createInstance(v17, v18);
  PCURL::PCURL((this + 152), @"Channel Over Range Range Name");
  OZChannel::setDiscrete(this, 0, 0);
  OZChannelBase::setFlag(this, 134414336, 0);
  OZChannel::setDefaultValue(this, a2);
  (*(*this + 288))(this, 0);
  (*(*this + 128))(this);
}

void OZChannelPercentOverRange::OZChannelPercentOverRange(OZChannelPercentOverRange *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelPercent::OZChannelPercent(this, a2, a3, a4, 0, 0);
  *v5 = &unk_287252908;
  *(v5 + 2) = &unk_287252CB8;
  TXParagraphStyleFolder_Factory::createInstance(v5, v6);
  PCURL::PCURL((this + 152), @"Channel Over Range Range Name");
  OZChannel::setDiscrete(this, 0, 0);
  OZChannelBase::setFlag(this, 134414336, 0);
  (*(*this + 128))(this);
}

void OZChannelPercentOverRange::OZChannelPercentOverRange(OZChannelPercentOverRange *this, const OZChannelPercentOverRange *a2, OZChannelFolder *a3)
{
  OZChannelPercent::OZChannelPercent(this, a2, a3);
  v4->var0 = &unk_287252908;
  v4[2].var0 = &unk_287252CB8;
  PCString::PCString(v4 + 19, a2 + 19);
}

uint64_t OZChannelPercentOverRange::writeBody(OZChannelPercentOverRange *this, PCSerializerWriteStream *a2, int a3)
{
  PCSerializerWriteStream::pushScope(a2, &OZChannelOverRangeScope);
  OZChannel::writeBody(this, a2, a3);
  PCString::PCString(&v7, this + 19);
  (*(*a2 + 16))(a2, 160);
  (*(*a2 + 104))(a2, &v7);
  (*(*a2 + 24))(a2);
  PCString::~PCString(&v7);
  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZChannelPercentOverRange::parseBegin(OZChannel *this, PCSerializerReadStream *a2)
{
  OZChannel::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelOverRangeScope);
  OZChannel::deleteAllKeyframes(this, MEMORY[0x277CC08F0]);
  return 1;
}

uint64_t OZChannelPercentOverRange::parseEnd(OZChannel *this, PCSerializerReadStream *a2)
{
  if (*(a2 + 26) <= 4u)
  {
    OZChannel::linearTimeWarp(this, 1.0 / *(a2 + 17), MEMORY[0x277CC08F0]);
  }

  OZChannel::parseEnd(this, a2);
  return 1;
}

uint64_t OZChannelPercentOverRange::parseElement(OZChannel *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  OZChannel::parseElement(this, a2, a3);
  if (*(a3 + 2) == 160)
  {
    PCSerializerReadStream::getAsString(a2, a3, &this[1]);
  }

  return 1;
}

__n128 OZChannelPercentOverRange::getTimeOffset@<Q0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277CC08F0];
  result = *MEMORY[0x277CC08F0];
  *a1 = *MEMORY[0x277CC08F0];
  *(a1 + 16) = *(v2 + 16);
  return result;
}

__n128 OZChannelPercentOverRange::globalToLocalTime@<Q0>(const CMTime *a1@<X1>, CMTime *a2@<X8>)
{
  result = *&a1->value;
  *a2 = *a1;
  return result;
}

__n128 OZChannelPercentOverRange::localToGlobalTime@<Q0>(const CMTime *a1@<X1>, CMTime *a2@<X8>)
{
  result = *&a1->value;
  *a2 = *a1;
  return result;
}

void *OZChannelPercentOverRange::moveKeypointTo(OZChannelPercentOverRange *this, Float64 a2, Float64 a3, uint64_t a4)
{
  OZFigTimeForChannelSeconds(&v10, a2, 0x40000);
  OZFigTimeForChannelSeconds(&v9, a3, 0x40000);
  return (*(*this + 616))(v8, this, &v10, &v9, a4, 0);
}

uint64_t OZChannelPercentOverRange::previousKeypoint(OZChannelPercentOverRange *this, double *a2)
{
  memset(&v7, 0, sizeof(v7));
  if (a2)
  {
    OZFigTimeForChannelSeconds(&v7, *a2, 0x40000);
  }

  else
  {
    v7 = **&MEMORY[0x277CC08F0];
  }

  v4 = (*(*this + 624))(this, &v7, 0);
  if (a2)
  {
    v6 = v7;
    *a2 = CMTimeGetSeconds(&v6);
  }

  return v4;
}

uint64_t OZChannelPercentOverRange::nextKeypoint(OZChannelPercentOverRange *this, double *a2)
{
  memset(&v7, 0, sizeof(v7));
  if (a2)
  {
    OZFigTimeForChannelSeconds(&v7, *a2, 0x40000);
  }

  else
  {
    v7 = **&MEMORY[0x277CC08F0];
  }

  v4 = (*(*this + 632))(this, &v7, 0);
  if (a2)
  {
    v6 = v7;
    *a2 = CMTimeGetSeconds(&v6);
  }

  return v4;
}

uint64_t OZChannelPercentOverRange::addKeypointAt(OZChannel *this, const CMTime *a2)
{
  (*(this->var0 + 58))(this, 1);
  if (((*(this->var0 + 61))(this) & 1) == 0)
  {
    (*(this->var0 + 60))(this, 1);
  }

  return OZChannel::setKeyframe(this, a2);
}

void *OZChannelPercentOverRange::moveKeypointTo@<X0>(OZChannel *this@<X0>, const CMTime *a2@<X1>, const CMTime *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, CMTime *a6@<X8>)
{
  (*(this->var0 + 58))(this, 1);
  if (((*(this->var0 + 61))(this) & 1) == 0)
  {
    (*(this->var0 + 60))(this, 1);
  }

  *&a6->value = *&a3->value;
  a6->epoch = a3->epoch;
  result = OZChannel::getKeyframe(this, a2);
  if (result)
  {
    v13 = result;
    (*(this->var0 + 105))(this, result, a6, a5, a4);

    return OZChannel::getKeyframe(this, v13, a6, 0);
  }

  return result;
}

void *OZChannelPercentOverRange::deleteKeypointAt(OZChannel *this, const CMTime *a2)
{
  (*(this->var0 + 58))(this, 1);
  result = OZChannel::getKeyframe(this, a2);
  if (result)
  {

    return OZChannel::deleteKeyframe(this, result);
  }

  return result;
}

double OZChannelPercentOverRange::previousKeypoint(OZChannel *this, CMTime *a2)
{
  v5 = **&MEMORY[0x277CC08F0];
  v4 = 0.0;
  if (OZChannel::getPreviousKeyframe(this, a2, &v5, &v4))
  {
    result = *&v5.value;
    *a2 = v5;
  }

  return result;
}

double OZChannelPercentOverRange::nextKeypoint(OZChannel *this, CMTime *a2)
{
  v5 = **&MEMORY[0x277CC08F0];
  v4 = 0.0;
  if (OZChannel::getNextKeyframe(this, a2, &v5, &v4))
  {
    result = *&v5.value;
    *a2 = v5;
  }

  return result;
}

uint64_t OZChannelPercentOverRange::resetToDefault(OZChannel *this, char a2)
{
  OZChannel::resetToDefault(this, a2);
  OZChannel::setKeyframe(this, MEMORY[0x277CC08F0]);
  CMTimeMake(&v4, 1, 1);
  return OZChannel::setKeyframe(this, &v4);
}

void OZChannelPercentOverRange::getBakeParameters(OZChannelPercentOverRange *this, const PCTimeRange *a2, double *a3, double *a4, double *a5)
{
  v11 = **&MEMORY[0x277CC08F0];
  v10 = v11;
  v9 = v11;
  (*(*this + 816))();
  if (a3)
  {
    v8 = v11;
    *a3 = CMTimeGetSeconds(&v8);
  }

  if (a4)
  {
    v8 = v10;
    *a4 = CMTimeGetSeconds(&v8);
  }

  if (a5)
  {
    v8 = v9;
    *a5 = CMTimeGetSeconds(&v8);
  }
}

double OZChannelPercentOverRange::getBakeParameters(OZChannelPercentOverRange *this, const PCTimeRange *a2, CMTime *a3, CMTime *a4, CMTime *a5)
{
  v7 = *MEMORY[0x277CC08F0];
  a3->epoch = *(MEMORY[0x277CC08F0] + 16);
  *&a3->value = v7;
  CMTimeMake(&v9, 1, 1);
  *a4 = v9;
  OZFigTimeForChannelSeconds(&v9, 0.0005, 0x40000);
  result = *&v9.value;
  *a5 = v9;
  return result;
}

void OZChannel2DOverRange::OZChannel2DOverRange(OZChannel2DOverRange *this, double a2, double a3, const PCString *a4, OZChannelFolder *a5, unsigned int a6, int a7, OZChannelImpl *a8, OZChannelInfo *a9)
{
  Instance = OZChannel2DOverRange_Factory::getInstance(this);
  OZChannel2D::OZChannel2D(this, Instance, a4, a5, a6, a7, 2, a8, a9);
  *this = &unk_287252D10;
  *(this + 2) = &unk_287253088;
  TXParagraphStyleFolder_Factory::createInstance(v19, v20);
  PCURL::PCURL((this + 440), @"Channel Over Range Range Name");
  OZChannel::setDiscrete((this + 136), 0, 0);
  OZChannel::setDiscrete((this + 288), 0, 0);
  OZChannelBase::setFlag((this + 136), 134414336, 0);
  OZChannelBase::setFlag((this + 288), 134414336, 0);
  OZChannel::setDefaultValue((this + 136), a2);
  OZChannelBase::reset((this + 136), 0);
  OZChannel::setDefaultValue((this + 288), a3);
  OZChannelBase::reset((this + 288), 0);
  OZChannelBase::saveStateAsDefault((this + 136));
  OZChannelBase::saveStateAsDefault((this + 288));
}

void OZChannel2DOverRange::OZChannel2DOverRange(OZChannel2DOverRange *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannel2D::OZChannel2D(this, a2, a3, a4, 2, 0, 0);
  *v5 = &unk_287252D10;
  *(v5 + 2) = &unk_287253088;
  TXParagraphStyleFolder_Factory::createInstance(v5, v6);
  PCURL::PCURL((this + 440), @"Channel Over Range Range Name");
  OZChannel::setDiscrete((this + 136), 0, 0);
  OZChannel::setDiscrete((this + 288), 0, 0);
  OZChannelBase::setFlag((this + 136), 134414336, 0);
  OZChannelBase::setFlag((this + 288), 134414336, 0);
  OZChannelBase::saveStateAsDefault((this + 136));
  OZChannelBase::saveStateAsDefault((this + 288));
}

void OZChannel2DOverRange::OZChannel2DOverRange(OZChannel2DOverRange *this, const PCString *a2, OZChannelFolder *a3)
{
  OZChannel2D::OZChannel2D(this, a2, a3);
  v4->var0 = &unk_287252D10;
  v4[2].var0 = &unk_287253088;
  PCString::PCString(v4 + 55, a2 + 55);
}

void OZChannel2DOverRange::getValueOverRange(OZChannel2DOverRange *this, const CMTime *a2, Float64 a3, double *a4, double *a5)
{
  OZFigTimeForChannelSeconds(&v14, a3, 0x40000);
  v13 = *a2;
  Seconds = CMTimeGetSeconds(&v13);
  v10 = Seconds;
  if (a4)
  {
    OZChannel::getValueAsDouble((this + 136), &v14, Seconds);
    *a4 = v11;
  }

  if (a5)
  {
    OZChannel::getValueAsDouble((this + 288), &v14, v10);
    *a5 = v12;
  }
}

uint64_t OZChannel2DOverRange::writeBody(OZChannel2DOverRange *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZChannelOverRangeScope);
  OZChannelFolder::writeBody(this, a2, a3, a4, a5);
  PCString::PCString(&v11, this + 55);
  (*(*a2 + 16))(a2, 160);
  (*(*a2 + 104))(a2, &v11);
  (*(*a2 + 24))(a2);
  PCString::~PCString(&v11);
  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZChannel2DOverRange::parseBegin(OZChannel2DOverRange *this, PCSerializerReadStream *a2)
{
  OZChannelFolder::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelOverRangeScope);
  v4 = MEMORY[0x277CC08F0];
  OZChannel::deleteAllKeyframes((this + 136), MEMORY[0x277CC08F0]);
  OZChannel::deleteAllKeyframes((this + 288), v4);
  return 1;
}

uint64_t OZChannel2DOverRange::parseEnd(OZChannelFolder *this, PCSerializerReadStream *a2)
{
  if (*(a2 + 26) <= 4u)
  {
    v4 = MEMORY[0x277CC08F0];
    OZChannel::linearTimeWarp((this + 136), 1.0 / *(a2 + 17), MEMORY[0x277CC08F0]);
    OZChannel::linearTimeWarp((this + 288), 1.0 / *(a2 + 17), v4);
  }

  OZChannelFolder::parseEnd(this, a2);
  return 1;
}

uint64_t OZChannel2DOverRange::parseElement(OZChannelFolder *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  OZChannelFolder::parseElement(this, a2, a3);
  if (*(a3 + 2) == 160)
  {
    PCSerializerReadStream::getAsString(a2, a3, this + 440);
  }

  return 1;
}

__n128 OZChannel2DOverRange::getTimeOffset@<Q0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277CC08F0];
  result = *MEMORY[0x277CC08F0];
  *a1 = *MEMORY[0x277CC08F0];
  *(a1 + 16) = *(v2 + 16);
  return result;
}

__n128 OZChannel2DOverRange::globalToLocalTime@<Q0>(const CMTime *a1@<X1>, CMTime *a2@<X8>)
{
  result = *&a1->value;
  *a2 = *a1;
  return result;
}

__n128 OZChannel2DOverRange::localToGlobalTime@<Q0>(const CMTime *a1@<X1>, CMTime *a2@<X8>)
{
  result = *&a1->value;
  *a2 = *a1;
  return result;
}

uint64_t OZChannel2DOverRange::resetToDefault(OZChannel2DOverRange *this, uint64_t a2)
{
  OZChannelFolder::resetToDefault(this, a2);
  v3 = MEMORY[0x277CC08F0];
  OZChannel::setKeyframe((this + 136), MEMORY[0x277CC08F0]);
  CMTimeMake(&v5, 1, 1);
  OZChannel::setKeyframe((this + 136), &v5);
  OZChannel::setKeyframe((this + 288), v3);
  CMTimeMake(&v5, 1, 1);
  return OZChannel::setKeyframe((this + 288), &v5);
}

void OZChannel2DOverRange::getBakeParameters(OZChannel2DOverRange *this, const PCTimeRange *a2, double *a3, double *a4, double *a5)
{
  v11 = **&MEMORY[0x277CC08F0];
  v10 = v11;
  v9 = v11;
  (*(*this + 864))();
  if (a3)
  {
    v8 = v11;
    *a3 = CMTimeGetSeconds(&v8);
  }

  if (a4)
  {
    v8 = v10;
    *a4 = CMTimeGetSeconds(&v8);
  }

  if (a5)
  {
    v8 = v9;
    *a5 = CMTimeGetSeconds(&v8);
  }
}

double OZChannel2DOverRange::getBakeParameters(OZChannel2DOverRange *this, const PCTimeRange *a2, CMTime *a3, CMTime *a4, CMTime *a5)
{
  v7 = *MEMORY[0x277CC08F0];
  a3->epoch = *(MEMORY[0x277CC08F0] + 16);
  *&a3->value = v7;
  CMTimeMake(&v9, 1, 1);
  *a4 = v9;
  OZFigTimeForChannelSeconds(&v9, 0.0005, 0x40000);
  result = *&v9.value;
  *a5 = v9;
  return result;
}

uint64_t OZChannel2DOverRange::moveKeypointTo@<X0>(uint64_t this@<X0>, const CMTime *a2@<X1>, const CMTime *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, CMTime *a6@<X8>)
{
  v13 = *a2;
  *a6 = *a3;
  v7 = *(this + 112);
  if (v7)
  {
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      do
      {
        if (*v8)
        {
        }

        else
        {
          v12 = 0;
        }

        (*(v12->var0 + 58))(v12, 1);
        if (((*(v12->var0 + 61))(v12) & 1) == 0)
        {
          (*(v12->var0 + 60))(v12, 1);
        }

        this = OZChannel::getKeyframe(v12, &v13);
        if (this)
        {
          this = (*(v12->var0 + 105))(v12, this, a6, a5, a4);
        }

        ++v8;
      }

      while (v8 != v9);
    }
  }

  return this;
}

void OZChannelScaleOverRange::OZChannelScaleOverRange(OZChannelScaleOverRange *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  Instance = OZChannelScaleOverRange_Factory::getInstance(this);
  OZChannelScale::OZChannelScale(this, Instance, a2, a3, a4, a5, 2, a6, a7);
  *this = &unk_2872530E0;
  *(this + 2) = &unk_287253458;
  TXParagraphStyleFolder_Factory::createInstance(v15, v16);
  PCURL::PCURL((this + 440), @"Channel Over Range Range Name");
  OZChannel::setDiscrete((this + 136), 0, 0);
  OZChannel::setDiscrete((this + 288), 0, 0);
  OZChannelBase::setFlag((this + 136), 134414336, 0);
  OZChannelBase::setFlag((this + 288), 134414336, 0);
  OZChannelBase::saveStateAsDefault((this + 136));
  OZChannelBase::saveStateAsDefault((this + 288));
}

void OZChannelScaleOverRange::OZChannelScaleOverRange(OZChannelScaleOverRange *this, double a2, double a3, const PCString *a4, OZChannelFolder *a5, unsigned int a6, int a7, OZChannelImpl *a8, OZChannelInfo *a9)
{
  Instance = OZChannelScaleOverRange_Factory::getInstance(this);
  OZChannelScale::OZChannelScale(this, Instance, a4, a5, a6, a7, 2, a8, a9);
  *this = &unk_2872530E0;
  *(this + 2) = &unk_287253458;
  TXParagraphStyleFolder_Factory::createInstance(v19, v20);
  PCURL::PCURL((this + 440), @"Channel Over Range Range Name");
  OZChannel::setDiscrete((this + 136), 0, 0);
  OZChannel::setDiscrete((this + 288), 0, 0);
  OZChannelBase::setFlag((this + 136), 134414336, 0);
  OZChannelBase::setFlag((this + 288), 134414336, 0);
  OZChannel::setDefaultValue((this + 136), a2);
  OZChannelBase::reset((this + 136), 0);
  OZChannel::setDefaultValue((this + 288), a3);
  OZChannelBase::reset((this + 288), 0);
  OZChannelBase::saveStateAsDefault((this + 136));
  OZChannelBase::saveStateAsDefault((this + 288));
}

void OZChannelScaleOverRange::OZChannelScaleOverRange(OZChannelScaleOverRange *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelScale::OZChannelScale(this, a2, a3, a4);
  *v5 = &unk_2872530E0;
  *(v5 + 2) = &unk_287253458;
  TXParagraphStyleFolder_Factory::createInstance(v5, v6);
  PCURL::PCURL((this + 440), @"Channel Over Range Range Name");
  OZChannel::setDiscrete((this + 136), 0, 0);
  OZChannel::setDiscrete((this + 288), 0, 0);
  OZChannelBase::setFlag((this + 136), 134414336, 0);
  OZChannelBase::setFlag((this + 288), 134414336, 0);
  OZChannelBase::saveStateAsDefault((this + 136));
  OZChannelBase::saveStateAsDefault((this + 288));
}

void OZChannelScaleOverRange::OZChannelScaleOverRange(OZChannelScaleOverRange *this, const PCString *a2, OZChannelFolder *a3)
{
  OZChannelScale::OZChannelScale(this, a2, a3);
  v4->var0 = &unk_2872530E0;
  v4[2].var0 = &unk_287253458;
  PCString::PCString(v4 + 55, a2 + 55);
}

uint64_t OZChannelScaleOverRange::setValueOverRange(OZChannelScaleOverRange *this, const CMTime *a2, Float64 a3, double a4, double a5)
{
  OZFigTimeForChannelSeconds(&v10, a3, 0x40000);
  OZChannel::setKeyframe((this + 136), &v10, a4, 1);
  OZFigTimeForChannelSeconds(&v10, a3, 0x40000);
  return OZChannel::setKeyframe((this + 288), &v10, a5, 1);
}

uint64_t OZChannelScaleOverRange::writeBody(OZChannelScaleOverRange *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZChannelOverRangeScope);
  OZChannelFolder::writeBody(this, a2, a3, a4, a5);
  PCString::PCString(&v11, this + 55);
  (*(*a2 + 16))(a2, 160);
  (*(*a2 + 104))(a2, &v11);
  (*(*a2 + 24))(a2);
  PCString::~PCString(&v11);
  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZChannelScaleOverRange::parseBegin(OZChannelScaleOverRange *this, PCSerializerReadStream *a2)
{
  OZChannelFolder::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelOverRangeScope);
  v4 = MEMORY[0x277CC08F0];
  OZChannel::deleteAllKeyframes((this + 136), MEMORY[0x277CC08F0]);
  OZChannel::deleteAllKeyframes((this + 288), v4);
  return 1;
}

uint64_t OZChannelScaleOverRange::parseEnd(OZChannelFolder *this, PCSerializerReadStream *a2)
{
  if (*(a2 + 26) <= 4u)
  {
    v4 = MEMORY[0x277CC08F0];
    OZChannel::linearTimeWarp((this + 136), 1.0 / *(a2 + 17), MEMORY[0x277CC08F0]);
    OZChannel::linearTimeWarp((this + 288), 1.0 / *(a2 + 17), v4);
  }

  OZChannelFolder::parseEnd(this, a2);
  return 1;
}

uint64_t OZChannelScaleOverRange::parseElement(OZChannelFolder *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  OZChannelFolder::parseElement(this, a2, a3);
  if (*(a3 + 2) == 160)
  {
    PCSerializerReadStream::getAsString(a2, a3, this + 440);
  }

  return 1;
}

__n128 OZChannelScaleOverRange::getTimeOffset@<Q0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277CC08F0];
  result = *MEMORY[0x277CC08F0];
  *a1 = *MEMORY[0x277CC08F0];
  *(a1 + 16) = *(v2 + 16);
  return result;
}

__n128 OZChannelScaleOverRange::globalToLocalTime@<Q0>(const CMTime *a1@<X1>, CMTime *a2@<X8>)
{
  result = *&a1->value;
  *a2 = *a1;
  return result;
}

__n128 OZChannelScaleOverRange::localToGlobalTime@<Q0>(const CMTime *a1@<X1>, CMTime *a2@<X8>)
{
  result = *&a1->value;
  *a2 = *a1;
  return result;
}

uint64_t OZChannelScaleOverRange::resetToDefault(OZChannelScaleOverRange *this, uint64_t a2)
{
  OZChannelFolder::resetToDefault(this, a2);
  v3 = MEMORY[0x277CC08F0];
  OZChannel::setKeyframe((this + 136), MEMORY[0x277CC08F0]);
  CMTimeMake(&v5, 1, 1);
  OZChannel::setKeyframe((this + 136), &v5);
  OZChannel::setKeyframe((this + 288), v3);
  CMTimeMake(&v5, 1, 1);
  return OZChannel::setKeyframe((this + 288), &v5);
}

void OZChannelScaleOverRange::getBakeParameters(OZChannelScaleOverRange *this, const PCTimeRange *a2, double *a3, double *a4, double *a5)
{
  v11 = **&MEMORY[0x277CC08F0];
  v10 = v11;
  v9 = v11;
  (*(*this + 864))();
  if (a3)
  {
    v8 = v11;
    *a3 = CMTimeGetSeconds(&v8);
  }

  if (a4)
  {
    v8 = v10;
    *a4 = CMTimeGetSeconds(&v8);
  }

  if (a5)
  {
    v8 = v9;
    *a5 = CMTimeGetSeconds(&v8);
  }
}

double OZChannelScaleOverRange::getBakeParameters(OZChannelScaleOverRange *this, const PCTimeRange *a2, CMTime *a3, CMTime *a4, CMTime *a5)
{
  v7 = *MEMORY[0x277CC08F0];
  a3->epoch = *(MEMORY[0x277CC08F0] + 16);
  *&a3->value = v7;
  CMTimeMake(&v9, 1, 1);
  *a4 = v9;
  OZFigTimeForChannelSeconds(&v9, 0.0005, 0x40000);
  result = *&v9.value;
  *a5 = v9;
  return result;
}

uint64_t OZChannelScaleOverRange::moveKeypointTo@<X0>(uint64_t this@<X0>, const CMTime *a2@<X1>, const CMTime *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, CMTime *a6@<X8>)
{
  v13 = *a2;
  *a6 = *a3;
  v7 = *(this + 112);
  if (v7)
  {
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      do
      {
        if (*v8)
        {
        }

        else
        {
          v12 = 0;
        }

        (*(v12->var0 + 58))(v12, 1);
        if (((*(v12->var0 + 61))(v12) & 1) == 0)
        {
          (*(v12->var0 + 60))(v12, 1);
        }

        this = OZChannel::getKeyframe(v12, &v13);
        if (this)
        {
          this = (*(v12->var0 + 105))(v12, this, a6, a5, a4);
        }

        ++v8;
      }

      while (v8 != v9);
    }
  }

  return this;
}

void OZChannelDoubleOverRange::~OZChannelDoubleOverRange(PCString *this)
{
  this->var0 = &unk_2872520F8;
  this[2].var0 = &unk_2872524A8;
  PCString::~PCString(this + 19);

  OZChannel::~OZChannel(this);
}

{
  this->var0 = &unk_2872520F8;
  this[2].var0 = &unk_2872524A8;
  PCString::~PCString(this + 19);
  OZChannel::~OZChannel(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelDoubleOverRange::~OZChannelDoubleOverRange(PCString *this)
{
  v1 = &this[-2];
  this[-2].var0 = &unk_2872520F8;
  this->var0 = &unk_2872524A8;
  PCString::~PCString(this + 17);

  OZChannel::~OZChannel(v1);
}

{
  v1 = &this[-2];
  this[-2].var0 = &unk_2872520F8;
  this->var0 = &unk_2872524A8;
  PCString::~PCString(this + 17);
  OZChannel::~OZChannel(v1);

  JUMPOUT(0x2666E9F00);
}

void OZChannelAngleOverRange::~OZChannelAngleOverRange(PCString *this)
{
  this->var0 = &unk_287252500;
  this[2].var0 = &unk_2872528B0;
  PCString::~PCString(this + 19);

  OZChannel::~OZChannel(this);
}

{
  this->var0 = &unk_287252500;
  this[2].var0 = &unk_2872528B0;
  PCString::~PCString(this + 19);
  OZChannel::~OZChannel(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelAngleOverRange::~OZChannelAngleOverRange(PCString *this)
{
  v1 = &this[-2];
  this[-2].var0 = &unk_287252500;
  this->var0 = &unk_2872528B0;
  PCString::~PCString(this + 17);

  OZChannel::~OZChannel(v1);
}

{
  v1 = &this[-2];
  this[-2].var0 = &unk_287252500;
  this->var0 = &unk_2872528B0;
  PCString::~PCString(this + 17);
  OZChannel::~OZChannel(v1);

  JUMPOUT(0x2666E9F00);
}

void OZChannelPercentOverRange::~OZChannelPercentOverRange(PCString *this)
{
  this->var0 = &unk_287252908;
  this[2].var0 = &unk_287252CB8;
  PCString::~PCString(this + 19);

  OZChanObjectRef::~OZChanObjectRef(this);
}

{
  this->var0 = &unk_287252908;
  this[2].var0 = &unk_287252CB8;
  PCString::~PCString(this + 19);
  OZChanObjectRef::~OZChanObjectRef(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelPercentOverRange::~OZChannelPercentOverRange(PCString *this)
{
  v1 = &this[-2];
  this[-2].var0 = &unk_287252908;
  this->var0 = &unk_287252CB8;
  PCString::~PCString(this + 17);

  OZChanObjectRef::~OZChanObjectRef(v1);
}

{
  v1 = &this[-2];
  this[-2].var0 = &unk_287252908;
  this->var0 = &unk_287252CB8;
  PCString::~PCString(this + 17);
  OZChanObjectRef::~OZChanObjectRef(v1);

  JUMPOUT(0x2666E9F00);
}

void OZChannel2DOverRange::~OZChannel2DOverRange(PCString *this)
{
  this->var0 = &unk_287252D10;
  this[2].var0 = &unk_287253088;
  PCString::~PCString(this + 55);

  OZChannel2D::~OZChannel2D(this);
}

{
  this->var0 = &unk_287252D10;
  this[2].var0 = &unk_287253088;
  PCString::~PCString(this + 55);
  OZChannel2D::~OZChannel2D(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannel2DOverRange::~OZChannel2DOverRange(PCString *this)
{
  v1 = &this[-2];
  this[-2].var0 = &unk_287252D10;
  this->var0 = &unk_287253088;
  PCString::~PCString(this + 53);

  OZChannel2D::~OZChannel2D(v1);
}

{
  v1 = &this[-2];
  this[-2].var0 = &unk_287252D10;
  this->var0 = &unk_287253088;
  PCString::~PCString(this + 53);
  OZChannel2D::~OZChannel2D(v1);

  JUMPOUT(0x2666E9F00);
}

void OZChannelScaleOverRange::~OZChannelScaleOverRange(PCString *this)
{
  this->var0 = &unk_2872530E0;
  this[2].var0 = &unk_287253458;
  PCString::~PCString(this + 55);

  OZChannel2D::~OZChannel2D(this);
}

{
  this->var0 = &unk_2872530E0;
  this[2].var0 = &unk_287253458;
  PCString::~PCString(this + 55);
  OZChannel2D::~OZChannel2D(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelScaleOverRange::~OZChannelScaleOverRange(PCString *this)
{
  v1 = &this[-2];
  this[-2].var0 = &unk_2872530E0;
  this->var0 = &unk_287253458;
  PCString::~PCString(this + 53);

  OZChannel2D::~OZChannel2D(v1);
}

{
  v1 = &this[-2];
  this[-2].var0 = &unk_2872530E0;
  this->var0 = &unk_287253458;
  PCString::~PCString(this + 53);
  OZChannel2D::~OZChannel2D(v1);

  JUMPOUT(0x2666E9F00);
}

void sub_25FEEC8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void OZChannelPosition::OZChannelPosition(OZChannelPosition *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  *this = &unk_287253528;
  *(this + 2) = &unk_287253880;
  Instance = OZChannelPosition_Factory::getInstance(this);
  v16 = Instance;
  if (!a7)
  {
    a7 = OZChannelPosition::OZChannelPosition_valueImpl::getInstance(Instance);
  }

  OZChannel2D::OZChannel2D(this, v16, a2, a3, a4, a5, a6, a7, a8);
  *this = &unk_287253528;
  *(this + 2) = &unk_287253880;
  *(this + 71) = 0x3FF0000000000000;
  *(this + 66) = 0x3FF0000000000000;
  *(this + 61) = 0x3FF0000000000000;
  *(this + 56) = 0x3FF0000000000000;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 175) = 0;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 86) = 0;
  if (!a8)
  {
    v18 = OZChannelPosition::OZChannelPosition_valueInfo::getInstance(v17);
    v19 = OZChannel::replaceInfo((this + 136), v18);
    v20 = OZChannelPosition::OZChannelPosition_valueInfo::getInstance(v19);
    OZChannel::replaceInfo((this + 288), v20);
  }

  *(this + 440) = 1;
  *(this + 174) = 0;
}

void sub_25FEECA90(_Unwind_Exception *a1)
{
  PCSpinLock::~PCSpinLock((v1 + 700));
  v4 = *(v1 + 672);
  if (v4)
  {
    *(v1 + 680) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 648);
  if (v5)
  {
    *(v1 + 656) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 624);
  if (v6)
  {
    *(v1 + 632) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 600);
  if (v7)
  {
    *(v1 + 608) = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    *(v1 + 584) = v8;
    operator delete(v8);
  }

  OZChannel2D::~OZChannel2D(v1);
  _Unwind_Resume(a1);
}