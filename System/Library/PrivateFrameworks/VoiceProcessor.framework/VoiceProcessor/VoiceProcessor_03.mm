float VoiceProcessorV2::CalculateDownlinkMixGainDB(VoiceProcessorV2 *this)
{
  v1 = *(this + 1123);
  v2 = *(this + 1122);
  v3 = 1.0;
  if ((*(this + 2260) & 1) == 0)
  {
    v3 = *(this + 3155);
  }

  result = v2 + ((v1 - v2) * v3);
  v5 = *(this + 4141);
  if (v5)
  {
    if (v5 == 30)
    {
      v6 = 1.3333;
    }

    else if (v5 == 20)
    {
      v6 = 0.66667;
    }

    else
    {
      v6 = 0.33333;
    }

    v7 = v2 * v6;
    if (v2 < 0.0 && *(this + 3155) >= 0.5)
    {
      v2 = v2 * v6;
    }

    if (v1 < 0.0)
    {
      if (*(this + 3155) < 0.5)
      {
        v8 = v7 + -(v7 - (v1 * v6)) * 0.5;
        goto LABEL_17;
      }

      v1 = v1 * v6;
    }

    v8 = v1;
LABEL_17:
    v9 = v2;
    v10 = v8 - v9;
    v11 = 1.0;
    if ((*(this + 2260) & 1) == 0)
    {
      v11 = *(this + 3155);
      if (v11 < 0.5)
      {
        v11 = v11 + v11;
      }
    }

    v12 = v9 + v10 * v11;
    v13 = *(this + 2264) | (result > -7.0);
    v14 = -7.0;
    if (v12 <= -7.0)
    {
      v14 = v12;
    }

    if (v13)
    {
      return v12;
    }

    return v14;
  }

  return result;
}

void VoiceProcessorV2::GetFarEndVoiceMixType(VoiceProcessorV2 *this, VoiceProcessorV2 *a2)
{
  FarEndVoiceMixChannelCount = VoiceProcessorV2::GetFarEndVoiceMixChannelCount(a2);
  if (FarEndVoiceMixChannelCount == 1)
  {
    v4 = "mono";
    goto LABEL_5;
  }

  if (FarEndVoiceMixChannelCount == 2)
  {
    v4 = "stereo";
LABEL_5:
    std::string::basic_string[abi:ne200100]<0>(this, v4);
    return;
  }

  std::to_string(&v7, FarEndVoiceMixChannelCount);
  v5 = std::string::append(&v7, "ch", 2uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  *(this + 2) = *(&v5->__r_.__value_.__l + 2);
  *this = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(VoiceProcessorV2 *this, uint64_t a2, char a3)
{
  if (*(a2 + 60) != 1 || (a3 & 1) != 0)
  {
    VoiceProcessorV2::GetDeviceCodeNameForTuning(&v6, a2, a3);
    v4 = std::string::append(&v6, "_far_end_voice_mix_", 0x13uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    *(this + 2) = *(&v4->__r_.__value_.__l + 2);
    *this = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(this, "far_end_voice_mix_");
  }
}

std::string *std::__fs::filesystem::path::append[abi:ne200100]<std::string>(std::string *this, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 8))
    {
      goto LABEL_9;
    }

    v4 = *a2;
  }

  else
  {
    v4 = a2;
    if (!*(a2 + 23))
    {
      goto LABEL_9;
    }
  }

  if (*v4 == 47)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }

    goto LABEL_12;
  }

LABEL_9:
  if (std::__fs::filesystem::path::__filename(this).__size_)
  {
    std::string::push_back(this, 47);
  }

LABEL_12:
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 < 0)
  {
    v5 = *(a2 + 8);
  }

  return std::string::append[abi:ne200100]<char const*,0>(this, v6, (v6 + v5));
}

std::__fs::filesystem::path *std::__fs::filesystem::path::operator/=[abi:ne200100](std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
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
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      a4 += 24;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v6 = (v6 + 24);
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 24);
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [8],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_2724EB344(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::__fs::filesystem::path *std::__fs::filesystem::operator/[abi:ne200100](std::__fs::filesystem::path *a1, uint64_t a2, std::__fs::filesystem::path *this)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a1->__pn_, *a2, *(a2 + 8));
  }

  else
  {
    *&a1->__pn_.__r_.__value_.__l.__data_ = *a2;
    a1->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  return std::__fs::filesystem::path::operator/=[abi:ne200100](a1, this);
}

void sub_2724EB3BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(std::string *this, std::string *__src)
{
  if (__src->__r_.__value_.__s.__data_[0] == 47)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }
  }

  else if (std::__fs::filesystem::path::__filename(this).__size_)
  {
    std::string::push_back(this, 47);
  }

  v4 = (__src - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);

  return std::string::append[abi:ne200100]<char const*,0>(this, __src, v4);
}

std::string *VoiceProcessorV2::GetDNNVADAUStripFilePath(std::string *this, uint64_t a2)
{
  v4 = (a2 + 8);
  if (*(a2 + 31) < 0)
  {
    v4 = *v4;
  }

  __p.__r_.__value_.__r.__words[0] = v4;
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(this, &__p);
  std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(this, "Generic");
  VoiceProcessorV2::GetVersionNameForTuning(&__p, a2);
  std::__fs::filesystem::path::append[abi:ne200100]<std::string>(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (std::__fs::filesystem::path::__filename(this).__size_)
  {
    std::string::push_back(this, 47);
  }

  return std::string::append[abi:ne200100]<char const*,0>(this, "nnvad.austrip", "");
}

double std::__fs::filesystem::path::filename[abi:ne200100](uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__filename(this);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

double VoiceProcessorV2::GetGMCoexMitigationAUStripFilePath(VoiceProcessorV2 *this, uint64_t a2)
{
  v4 = (a2 + 8);
  if (*(a2 + 31) < 0)
  {
    v4 = *v4;
  }

  v9.__pn_.__r_.__value_.__r.__words[0] = v4;
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v8, &v9);
  VoiceProcessorV2::GetHardwareModelNameForTuning(&v6, a2, 0);
  __p = v6;
  memset(&v6, 0, sizeof(v6));
  std::__fs::filesystem::operator/[abi:ne200100](&v9, &v8, &__p);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  VoiceProcessorV2::GetVersionNameForTuning(&v8, a2);
  std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v9.__pn_, &v8);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (std::__fs::filesystem::path::__filename(&v9).__size_)
  {
    std::string::push_back(&v9.__pn_, 47);
  }

  std::string::append[abi:ne200100]<char const*,0>(&v9.__pn_, "vp-gm-coexkill.austrip", "");
  result = *&v9.__pn_.__r_.__value_.__l.__data_;
  *this = v9;
  *(this + 24) = 1;
  return result;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [16],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_2724EB798(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_2724EB800(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *VoiceProcessorV2::GetAirPodsOffloadAUStripFilePath(std::string *this, uint64_t a2)
{
  v4 = (a2 + 8);
  if (*(a2 + 31) < 0)
  {
    v4 = *v4;
  }

  __p.__r_.__value_.__r.__words[0] = v4;
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(this, &__p);
  std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(this, "Generic");
  VoiceProcessorV2::GetVersionNameForTuning(&__p, a2);
  std::__fs::filesystem::path::append[abi:ne200100]<std::string>(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (std::__fs::filesystem::path::__filename(this).__size_)
  {
    std::string::push_back(this, 47);
  }

  std::string::append[abi:ne200100]<char const*,0>(this, "uplink_echo_airpods_offload", "");
  if (*(a2 + 16608) == 2)
  {
    std::string::append(this, "_studio", 7uLL);
  }

  if ((*(a2 + 16568) & 1) == 0)
  {
    if ((*(a2 + 2262) & 1) != 0 || (*(a2 + 2288) != 1 ? (AutomaticChatFlavor = *(a2 + 16536)) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(a2)), AutomaticChatFlavor == 2))
    {
      if ((*(a2 + 16544) & 4) != 0)
      {
        std::string::append(this, "_voice_isolation", 0x10uLL);
      }
    }
  }

  return std::string::append(this, ".austrip", 8uLL);
}

void VoiceProcessorV3::ApplyCustomTelephonyDSPOverrides(int8x16_t *this, CFDictionaryRef theDict, int a3)
{
  if (theDict && CFDictionaryGetCount(theDict))
  {
    if (a3)
    {
      if (CFDictionaryContainsKey(theDict, @"noise suppression"))
      {
        Value = CFDictionaryGetValue(theDict, @"noise suppression");
        if (Value)
        {
          v7 = Value;
          CFRetain(Value);
          valuePtr = 0.0;
          CFNumberGetValue(v7, kCFNumberFloat32Type, &valuePtr);
          CFRelease(v7);
          this[293] = vorrq_s8(this[293], xmmword_2727563E0);
          AUPropAndParamHelper::AddItemToAUParamList(&this[374].i64[1], 0, valuePtr);
        }
      }

      if (CFDictionaryContainsKey(theDict, @"agc"))
      {
        v8 = CFDictionaryGetValue(theDict, @"agc");
        if (v8)
        {
          v9 = v8;
          CFRetain(v8);
          valuePtr = 0.0;
          CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
          CFRelease(v9);
          v10 = this[293].i64[1];
          v11 = v10 & 0xFFFFFFFFFFFFFFFDLL;
          v12 = v10 | 0x12;
          if (LODWORD(valuePtr) == 1)
          {
            v13 = v12;
          }

          else
          {
            v13 = v11;
          }

          this[293].i64[1] = v13;
        }
      }
    }

    if (CFDictionaryContainsKey(theDict, @"gain"))
    {
      v14 = CFDictionaryGetValue(theDict, @"gain");
      if (v14)
      {
        v15 = v14;
        CFRetain(v14);
        valuePtr = 0.0;
        CFNumberGetValue(v15, kCFNumberFloat32Type, &valuePtr);
        CFRelease(v15);
        if (a3)
        {
          this[293] = vorrq_s8(this[293], xmmword_272756330);
          v16 = valuePtr;
          v17 = &this[438].i64[1];
          v18 = 1;
        }

        else
        {
          this[554].i64[0] |= 0x6000000000000000uLL;
          AUPropAndParamHelper::AddItemToAUParamList(&this[684].i64[1], 0, valuePtr);
          v16 = valuePtr;
          v17 = &this[684].i64[1];
          v18 = 8;
        }

        AUPropAndParamHelper::AddItemToAUParamList(v17, v18, v16);
      }
    }

    if (CFDictionaryContainsKey(theDict, @"eq"))
    {
      v19 = CFDictionaryGetValue(theDict, @"eq");
      if (v19)
      {
        v20 = v19;
        CFRetain(v19);
        Count = CFArrayGetCount(v20);
        if (a3)
        {
          v22 = 779;
        }

        else
        {
          v22 = 1209;
        }

        if (a3)
        {
          this[293].i64[0] |= 0x8000000000000000;
          v23 = 16;
          v24 = 587;
        }

        else
        {
          v23 = 0x4000000200000000;
          v24 = 1108;
        }

        this->i64[v24] |= v23;
        v25 = Count - 1;
        if (Count >= 1)
        {
          v26 = 0;
          if (v25 >= 9)
          {
            v25 = 9;
          }

          v27 = v25 + 1;
          v28 = 5000;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v20, v26);
            if (ValueAtIndex)
            {
              v30 = ValueAtIndex;
              CFRetain(ValueAtIndex);
              if (CFDictionaryContainsKey(v30, @"AUNBandEQ_FilterType") && CFDictionaryContainsKey(v30, @"AUNBandEQ_FilterFrequency"))
              {
                AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v22], v26 + 1000, 0.0);
                v31 = CFDictionaryGetValue(v30, @"AUNBandEQ_FilterType");
                if (v31)
                {
                  v32 = v31;
                  CFRetain(v31);
                  valuePtr = 0.0;
                  CFNumberGetValue(v32, kCFNumberIntType, &valuePtr);
                  CFRelease(v32);
                  AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v22], v26 | 0x7D0, LODWORD(valuePtr));
                }

                v33 = CFDictionaryGetValue(v30, @"AUNBandEQ_FilterFrequency");
                if (v33)
                {
                  v34 = v33;
                  CFRetain(v33);
                  valuePtr = 0.0;
                  CFNumberGetValue(v34, kCFNumberFloat32Type, &valuePtr);
                  CFRelease(v34);
                  AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v22], v26 + 3000, valuePtr);
                }
              }

              if (CFDictionaryContainsKey(v30, @"AUNBandEQ_FilterGain"))
              {
                v35 = CFDictionaryGetValue(v30, @"AUNBandEQ_FilterGain");
                if (v35)
                {
                  v36 = v35;
                  CFRetain(v35);
                  valuePtr = 0.0;
                  CFNumberGetValue(v36, kCFNumberFloat32Type, &valuePtr);
                  CFRelease(v36);
                  AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v22], v26 | 0xFA0, valuePtr);
                }
              }

              if (CFDictionaryContainsKey(v30, @"AUNBandEQ_FilterBandwidth"))
              {
                v37 = CFDictionaryGetValue(v30, @"AUNBandEQ_FilterBandwidth");
                CFRetain(v37);
                valuePtr = 0.0;
                CFNumberGetValue(v37, kCFNumberFloat32Type, &valuePtr);
                CFRelease(v37);
                AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v22], v28, valuePtr);
              }

              CFRelease(v30);
            }

            ++v26;
            ++v28;
            --v27;
          }

          while (v27);
        }

        CFRelease(v20);
      }
    }
  }
}

uint64_t VoiceProcessorV3::SetupDownlinkLiteAUChain(VoiceProcessorV3 *this)
{
  result = (*(*this + 408))(this);
  *(this + 1108) &= 0xFFFFFFFF3FFFFFBFLL;
  return result;
}

uint64_t *VoiceProcessorV3::SetupDownlinkBasicAUChain(uint64_t *this)
{
  v1 = this;
  v2 = this[1108];
  if (*(this + 2092) == 1)
  {
    v3 = 671088640;
  }

  else
  {
    this[1108] = v2 | 0x100;
    var11[0] = 0;
    CFRetain(@"com.apple.coreaudio");
    AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"vp_use_vareq", var11, v4);
    if (AppBooleanValue || (var11[0] & 1) == 0)
    {
      v6 = v1[1108];
    }

    else
    {
      v6 = v1[1108] & 0xFFFFFFFFFFDF7EBBLL;
    }

    v1[1108] = v6 | 0x208044;
    this = AUPropAndParamHelper::AddItemToAUParamList(v1 + 1173, 0, *(v1 + 3155));
    v2 = v1[1108];
    v3 = 0x3E8000000;
  }

  v1[1108] = v2 | v3 & 0xFFFFFFFFFFFFLL | 0x6000000000000000;
  return this;
}

uint64_t VoiceProcessorV3::SetupUplink_MS(uint64_t this, unsigned int a2)
{
  if (a2 != 1)
  {
    v2 = *(this + 4688);
    *(this + 4688) = v2 | 0x40004100;
    if (a2)
    {
      *(this + 4688) = v2 | 0x40004106;
      if (a2 >= 3)
      {
        *(this + 4688) = v2 | 0x4000410E;
      }
    }
  }

  return this;
}

uint64_t VoiceProcessorV3::SetupUplink_BF_MS(uint64_t this, unsigned int a2, char a3)
{
  if (a2 < 2)
  {
    if (a2 && (a3 & 1) == 0)
    {
      v4 = *(this + 4688) | 2;
      goto LABEL_8;
    }
  }

  else
  {
    v3 = *(this + 4688);
    *(this + 4688) = v3 | 0xC0004100;
    if ((a3 & 1) == 0)
    {
      *(this + 4688) = v3 | 0xC0004106;
      if (a2 != 2)
      {
        v4 = v3 | 0xC000410ELL;
LABEL_8:
        *(this + 4688) = v4;
      }
    }
  }

  return this;
}

uint64_t VoiceProcessorV3::SetupUplink_MMNS(uint64_t this, unsigned int a2)
{
  if (a2 != 1)
  {
    v2 = *(this + 4688) & 0xFFDFFEFFFFFFBEFFLL;
    *(this + 4688) = v2 | 0x10000004100;
    if (a2)
    {
      *(this + 4688) = v2 | 0x10000004106;
      if (a2 >= 3)
      {
        *(this + 4688) = v2 | 0x1000000410ELL;
      }
    }
  }

  return this;
}

void VoiceProcessorV3::SetupUplinkLiteAUChain(int8x16_t *this)
{
  v2 = &this[293];
  v6 = this + 293;
  v7 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(&v6);
  v3 = this[293];
  this[293] = vorrq_s8(v3, xmmword_2727563F0);
  if (this[105].i8[4] == 1)
  {
    *v2 = v3.i64[0] | 0xD000008000002080;
  }

  v4 = this[144].i32[0];
  if (v4 == 1 || v4 == -1)
  {
    this[293].i64[1] = v3.i64[1] | 0x12;
  }
}

void VoiceProcessorV3::SetupUplinkBasicAUChain(int8x16_t *this)
{
  v2 = &this[293];
  v8 = this + 293;
  v9 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(&v8);
  v3 = this[293];
  v4 = vorrq_s8(v3, xmmword_272756400);
  this[293] = v4;
  v5 = v4.i64[0];
  if (this[105].i8[4] == 1)
  {
    v5 = v3.i64[0] | 0xD020008000002080;
    *v2 = v3.i64[0] | 0xD020008000002080;
  }

  v6 = this[144].i32[0];
  if (v6 == 1 || v6 == -1)
  {
    this[293].i64[1] = v3.i64[1] | 0x13;
  }

  if (this[285].i8[0] == 1)
  {
    v5 |= 0x10000000000000uLL;
    *v2 = v5;
  }

  if (this[285].i8[1] == 1)
  {
    *v2 = v5 | 0x20;
  }
}

uint64_t std::function<void ()(std::optional<unsigned long long>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, v4);
}

void VoiceProcessorV3::~VoiceProcessorV3(VoiceProcessorV3 *this)
{
  VoiceProcessorV3::~VoiceProcessorV3(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B0410;
  caulk::details::lifetime_guard_base<VoiceProcessorV2>::invalidate(this + 16616);
  if ((*(this + 16161) & 1) == 0)
  {
    v2 = *(this + 2099);
    std::mutex::lock((v2 + 88));
    *(v2 + 80) = 0;
    std::mutex::unlock((v2 + 88));
    v3 = *(this + 2101);
    std::mutex::lock((v3 + 88));
    *(v3 + 80) = 0;
    std::mutex::unlock((v3 + 88));
    v4 = *(this + 2103);
    std::mutex::lock((v4 + 88));
    *(v4 + 80) = 0;
    std::mutex::unlock((v4 + 88));
    v5 = *(this + 2105);
    std::mutex::lock((v5 + 88));
    *(v5 + 80) = 0;
    std::mutex::unlock((v5 + 88));
  }

  v6 = *(this + 2106);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 2104);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 2102);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 2100);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__function::__value_func<void ()(std::optional<unsigned long long>)>::~__value_func[abi:ne200100](this + 16760);

  VoiceProcessorV2::~VoiceProcessorV2(this);
}

uint64_t std::__function::__value_func<void ()(std::optional<unsigned long long>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void VoiceProcessorV3::VoiceProcessorV3(VoiceProcessorV3 *this, const vp::Context *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  *this = &unk_2881AFFE8;
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v4 = *(a2 + 24);
    *(this + 3) = *(a2 + 5);
    *(this + 8) = v4;
  }

  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v5 = *(a2 + 104);
    *(this + 6) = *(a2 + 15);
    *(this + 2) = v5;
  }

  *(this + 7) = *(a2 + 148);
  *(this + 16) = *(a2 + 36);
  *(this + 68) = *(a2 + 16);
  buf = @"Carrier";
  *(this + 69) = applesauce::CF::compare<applesauce::CF::StringRef,0,__CFString const*,0>(*(a2 + 1), &buf) == kCFCompareEqualTo;
  if (*(a2 + 140))
  {
    v6 = *(a2 + 34);
  }

  else
  {
    v6 = 0;
  }

  *(this + 18) = v6;
  VPProductFamilyType = GetVPProductFamilyType(v6);
  *(this + 104) = 0u;
  *(this + 19) = VPProductFamilyType;
  *(this + 5) = xmmword_272756410;
  *(this + 24) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 94) = 0;
  *(this + 50) = 0;
  *(this + 24) = 0u;
  *&v8 = 0x100000001;
  *(&v8 + 1) = 0x100000001;
  *(this + 408) = v8;
  *(this + 53) = 1;
  *(this + 108) = 1;
  *(this + 55) = 0;
  *(this + 112) = 0;
  *(this + 55) = strdup("primary mic only");
  *(this + 114) = 1;
  *(this + 58) = 0;
  *(this + 118) = 0;
  *(this + 58) = strdup("primary mic only");
  *(this + 60) = 0;
  *(this + 244) = 0;
  *(this + 492) = 0u;
  *(this + 508) = 0u;
  *(this + 524) = 0u;
  *(this + 536) = 0u;
  *(this + 1032) = 0u;
  *(this + 1048) = 0u;
  *(this + 1064) = 0u;
  *(this + 1080) = 0u;
  *(this + 1096) = 0u;
  *(this + 1112) = 0u;
  *(this + 1128) = 0u;
  *(this + 1144) = 0u;
  *(this + 290) = 0;
  *(this + 1164) = 0x3F8000003F800000;
  *(this + 78) = 0u;
  *(this + 1172) = 0u;
  *(this + 1188) = 0u;
  *(this + 306) = 0;
  *(this + 1208) = 0u;
  *(this + 1228) = xmmword_272756420;
  *(this + 79) = 0u;
  *(this + 1280) = 1;
  *(this + 1284) = 0xC00000000;
  *(this + 1320) = 0u;
  *(this + 328) = 0;
  *(this + 81) = xmmword_272756430;
  *(this + 85) = 0u;
  *(this + 338) = 0;
  *(this + 1336) = xmmword_272756430;
  *(this + 1376) = 0;
  *(this + 1400) = 0;
  *(this + 352) = 0;
  *(this + 1412) = 0;
  *(this + 92) = 0u;
  *(this + 362) = 0;
  *(this + 1432) = 0u;
  *(this + 1416) = 0u;
  *(this + 1452) = xmmword_272756420;
  *(this + 98) = 0u;
  *(this + 93) = 0u;
  *(this + 94) = 0u;
  *(this + 95) = 0u;
  *(this + 384) = 0;
  *(this + 390) = 0;
  *(this + 1544) = xmmword_272756430;
  *(this + 102) = 0u;
  *(this + 101) = 0u;
  *(this + 100) = 0u;
  *(this + 99) = 0u;
  *(this + 206) = 0xC00000000;
  *(this + 1656) = 1;
  *(this + 415) = -1041235968;
  *(this + 104) = 0u;
  *(this + 420) = 9;
  *(this + 1684) = 0;
  *(this + 1800) = 0;
  *(this + 1864) = 0;
  *(this + 1872) = 0;
  *(this + 1912) = 0;
  *(this + 1960) = 0;
  *(this + 1968) = 0;
  *(this + 1992) = 0;
  *(this + 250) = 0;
  *(this + 2008) = 0;
  *(this + 2072) = 0;
  *(this + 2080) = 0;
  *(this + 2084) = 0;
  *(this + 848) = 0;
  *(this + 211) = 0;
  *(this + 1704) = 0u;
  *(this + 1720) = 0u;
  *(this + 1936) = 0;
  *(this + 120) = 0u;
  *(this + 1046) = 0;
  *(this + 522) = 0;
  *(this + 544) = 0;
  *(this + 135) = 0u;
  *(this + 134) = 0u;
  *(this + 133) = 0u;
  *(this + 132) = 0u;
  *(this + 131) = 0u;
  *(this + 554) = 0;
  *(this + 2184) = 0u;
  *(this + 2200) = 0u;
  *(this + 139) = 0u;
  *(this + 140) = 0u;
  *(this + 2255) = 0;
  *(this + 2263) = 1;
  __asm { FMOV            V0.4S, #1.0 }

  *(this + 2268) = _Q0;
  *(this + 571) = 0;
  *(this + 2288) = 0;
  *(this + 573) = 0;
  *(this + 287) = 0xC2040000C1200000;
  *(this + 288) = 0xC2C60000FFFFFFFFLL;
  v14 = CAAudioChannelLayout::RefCountedLayout::operator new(0xC);
  *v14 = &unk_2881B2480;
  v14[1] = 0xC00000001;
  v14[2] = 0;
  *(v14 + 6) = 0;
  *(this + 289) = v14;
  *(this + 290) = 0;
  *(this + 292) = 0;
  *(this + 291) = 0;
  *(this + 586) = 0;
  *(this + 147) = 0u;
  *(this + 148) = 0u;
  *(this + 149) = 0u;
  *(this + 300) = 0;
  CADeprecated::CAMutex::CAMutex((this + 2408), "VoiceProcessor.mInitLock");
  *(this + 312) = 0;
  CADeprecated::CAMutex::CAMutex((this + 2504), "VoiceProcessor.mVolumeLock");
  CADeprecated::CAMutex::CAMutex((this + 2592), "VoiceProcessor.mProcessCountLock");
  *(this + 335) = 850045863;
  *(this + 168) = 0u;
  *(this + 169) = 0u;
  *(this + 170) = 0u;
  *(this + 171) = 0u;
  *(this + 688) = 0;
  *(this + 210) = 0u;
  *(this + 211) = 0u;
  *(this + 212) = 0u;
  *(this + 213) = 0u;
  *(this + 214) = 0u;
  *(this + 215) = 0u;
  *(this + 216) = 0u;
  *(this + 217) = 0u;
  *(this + 218) = 0u;
  *(this + 438) = 0;
  *(this + 4024) = 0u;
  *(this + 4040) = 0u;
  *(this + 4056) = 0u;
  *(this + 4072) = 0u;
  *(this + 4088) = 0u;
  *(this + 4104) = 0u;
  *(this + 4120) = 0u;
  *(this + 4136) = 0u;
  *(this + 4152) = 0u;
  *(this + 4168) = 0u;
  *(this + 4180) = 0u;
  *(this + 2760) = 0u;
  *(this + 2776) = 0u;
  *(this + 4196) = xmmword_272756440;
  *(this + 1053) = 1;
  *(this + 4216) = 0u;
  *(this + 4232) = 0u;
  *(this + 4248) = 0u;
  *(this + 4264) = 0u;
  *(this + 4280) = 0u;
  *(this + 4296) = 0u;
  *(this + 4312) = 0u;
  *(this + 4328) = 0u;
  *(this + 4344) = 0u;
  *(this + 545) = 0;
  *(this + 1092) = 1065353216;
  *(this + 547) = 0;
  *(this + 1139) = 0;
  *(this + 571) = 0;
  *(this + 4576) = 1;
  *(this + 573) = 0;
  *(this + 4592) = 1;
  *(this + 288) = 0u;
  *(this + 289) = 0u;
  *(this + 1160) = 1065353216;
  *(this + 1170) = 1065353216;
  *(this + 4648) = 0u;
  *(this + 4664) = 0u;
  bzero(this + 4688, 0x6C8uLL);
  *(this + 440) = 0u;
  *(this + 439) = 0u;
  *(this + 438) = 0u;
  *(this + 437) = 0u;
  *(this + 7056) = 1;
  bzero(this + 7064, 0x6A8uLL);
  v15 = (this + 8784);
  v16 = 96;
  do
  {
    *(v15 - 2) = 0;
    *(v15 - 8) = 1;
    *v15 = 0;
    v15 += 6;
    v16 -= 24;
  }

  while (v16);
  bzero(this + 8864, 0x610uLL);
  *(this + 686) = 0u;
  *(this + 685) = 0u;
  *(this + 684) = 0u;
  *(this + 683) = 0u;
  *(this + 10992) = 1;
  bzero(this + 11000, 0x600uLL);
  *(this + 4600) = 0;
  *(this + 549) = 0;
  bzero(this + 6424, 0x238uLL);
  bzero(this + 10416, 0x200uLL);
  VoiceProcessorV2::VPEchoProcessingParams::Reset((this + 4384));
  *(this + 1567) = 0x1500000001;
  *(this + 784) = 0u;
  *(this + 1574) = 0;
  *(this + 12597) = 0;
  *(this + 788) = xmmword_272756450;
  *(this + 1578) = 0;
  *(this + 12632) = 0;
  *(this + 1580) = 0;
  *(this + 12648) = 0;
  *(this + 791) = 0u;
  *(this + 792) = 0u;
  *(this + 793) = 0u;
  *(this + 794) = 0u;
  *(this + 13000) = 0u;
  *(this + 13015) = 0;
  v17 = -1088;
  *(this + 1590) = 0;
  do
  {
    *(this + v17 + 14112) = 0uLL;
    v17 += 16;
  }

  while (v17);
  *(this + 1766) = 0;
  *(this + 882) = 0u;
  operator new[]();
}

void sub_2724EDBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, const void **a12, uint64_t a13, const void **a14, uint64_t a15, void **a16, const void **a17, const void **a18, const void **a19, uint64_t a20, uint64_t **a21, _Unwind_Exception *exception_object, uint64_t *a23, uint64_t a24, uint64_t a25, void **a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(v42 + 40));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16744));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16736));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16728));
  applesauce::CF::StringRef::~StringRef((v39 + 16720));
  applesauce::CF::StringRef::~StringRef((v39 + 16712));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16704));
  applesauce::CF::StringRef::~StringRef((v39 + 16696));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16688));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16680));
  applesauce::CF::StringRef::~StringRef((v39 + 16672));
  applesauce::CF::StringRef::~StringRef(a12);
  caulk::details::lifetime_guard_base<VoiceProcessorV2>::~lifetime_guard_base(a13);
  v44 = *(v39 + 16600);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v45 = *a23;
  *a23 = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  applesauce::CF::StringRef::~StringRef((v39 + 16552));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16520));
  applesauce::CF::StringRef::~StringRef((v39 + 16512));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16504));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16496));
  applesauce::CF::StringRef::~StringRef((v39 + 16488));
  applesauce::CF::StringRef::~StringRef((v39 + 16480));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16472));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16464));
  applesauce::CF::StringRef::~StringRef((v39 + 16456));
  applesauce::CF::StringRef::~StringRef((v39 + 16448));
  vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>::~Block((v39 + 16424));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16416));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16408));
  applesauce::CF::StringRef::~StringRef((v39 + 16400));
  applesauce::CF::StringRef::~StringRef(a14);
  caulk::concurrent::lf_read_synchronized_write<std::optional<std::vector<unsigned char>>>::~lf_read_synchronized_write(v39 + 16296);
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16272));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16264));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16256));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16248));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16240));
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 16232));
  applesauce::CF::StringRef::~StringRef((v39 + 16224));
  applesauce::CF::StringRef::~StringRef((v39 + 16216));
  v46 = *(v39 + 16208);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (*(v41 + 899) < 0)
  {
    operator delete(*a11);
  }

  VoiceProcessor::ConfigInfo::~ConfigInfo((v39 + 16056));
  *(v43 - 144) = v39 + 16032;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100]((v43 - 144));
  *(v43 - 144) = v39 + 16008;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100]((v43 - 144));
  *(v43 - 144) = v39 + 15984;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v43 - 144));
  *(v43 - 144) = a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v43 - 144));
  v47 = *(v39 + 15904);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  ABLRingBuffer<float>::~ABLRingBuffer(v39 + 15760);
  std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100]((v39 + 15736), 0);
  v48 = (v39 + 15712);
  v49 = -192;
  do
  {
    myFreeABLDynamic(v48);
    *v48 = 0;
    v48 -= 2;
    v49 += 16;
  }

  while (v49);
  v50 = (v39 + 15512);
  v51 = -192;
  do
  {
    myFreeABLDynamic(v50);
    *v50 = 0;
    v50 -= 2;
    v51 += 16;
  }

  while (v51);
  v52 = *(v39 + 15224);
  *(v39 + 15224) = 0;
  if (v52)
  {
    MEMORY[0x2743CBFA0](v52, 0x1000C4089CA3EB1);
  }

  *(v43 - 144) = v39 + 14112;
  std::vector<std::vector<std::unique_ptr<VPTimeFreqConverter>>>::__destroy_vector::operator()[abi:ne200100]((v43 - 144));
  v53 = 0;
  v54 = v39 + 14104;
  while (1)
  {
    v55 = *(v54 + v53);
    *(v54 + v53) = 0;
    if (v55)
    {
      (*(*v55 + 8))(v55);
    }

    v53 -= 8;
    if (v53 == -1088)
    {
      CADeprecated::CAAutoDelete<CALegacyLog>::set((v39 + 12712), 0);
      CADeprecated::CAAutoDelete<CALegacyLog>::set((v39 + 12704), 0);
      if (*(a27 + 1711) < 0)
      {
        operator delete(*(v39 + 12680));
      }

      VoiceProcessorV2::VPEchoProcessingParams::~VPEchoProcessingParams((v39 + 4384));
      std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::~__hash_table(v39 + 4336);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((v39 + 2784), 0);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((v39 + 2776), 0);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((v39 + 2768), 0);
      std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](a16, 0);
      std::unique_ptr<TuningPListMgr>::reset[abi:ne200100]((v39 + 2744), 0);
      std::mutex::~mutex((v39 + 2680));
      CADeprecated::CAMutex::~CAMutex((v39 + 2592));
      CADeprecated::CAMutex::~CAMutex((v39 + 2504));
      CADeprecated::CAMutex::~CAMutex((v39 + 2408));
      v56 = (v39 + 2352);
      v57 = *(v39 + 2376);
      if (v57)
      {
        *(v39 + 2384) = v57;
        operator delete(v57);
      }

      v58 = *v56;
      if (*v56)
      {
        *(v39 + 2360) = v58;
        operator delete(v58);
      }

      CAAudioChannelLayout::~CAAudioChannelLayout((v40 + 2208));
      applesauce::CF::DictionaryRef::~DictionaryRef((v40 + 2144));
      v59 = *(v39 + 2200);
      if (v59)
      {
        free(v59);
        *(v39 + 2200) = 0;
      }

      applesauce::CF::StringRef::~StringRef((v40 + 2088));
      applesauce::CF::StringRef::~StringRef((v40 + 2080));
      v60 = *(v39 + 2168);
      if (v60)
      {
        free(v60);
        *(v39 + 2168) = 0;
      }

      applesauce::CF::ArrayRef::~ArrayRef(a17);
      v61 = *(v39 + 2136);
      if (v61)
      {
        *(v39 + 2144) = v61;
        operator delete(v61);
      }

      applesauce::CF::ArrayRef::~ArrayRef(a18);
      v62 = *(v39 + 2104);
      if (v62)
      {
        *(v39 + 2112) = v62;
        operator delete(v62);
      }

      applesauce::CF::ArrayRef::~ArrayRef(a19);
      std::optional<vp::utility::Audio_Buffer_Mixer>::~optional(v40 + 1904);
      std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100]((v40 + 1896), 0);
      if (*(v39 + 1992) == 1)
      {
        *(v43 - 144) = v40 + 1864;
        std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100]((v43 - 144));
      }

      if (*(v39 + 1960) == 1)
      {
        *(v43 - 144) = v40 + 1832;
        std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100]((v43 - 144));
      }

      v63 = (v40 + 1104);
      ABLRingBuffer<float>::~ABLRingBuffer(a28 + 1136);
      ABLRingBuffer<float>::~ABLRingBuffer(v40 + 1344);
      if (*(v39 + 1400) == 1)
      {
        *(v43 - 144) = v40 + 1272;
        std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100]((v43 - 144));
      }

      ABLRingBuffer<float>::~ABLRingBuffer(a28 + 928);
      ABLRingBuffer<float>::~ABLRingBuffer(a20);
      ABLRingBuffer<float>::~ABLRingBuffer(v40 + 1120);
      if (*v63)
      {
        (*(**v63 + 8))(*v63);
        *v63 = 0;
      }

      CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set((v40 + 1032), 0);
      CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set((v40 + 1024), 0);
      CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set((v40 + 1016), 0);
      CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set((v40 + 1008), 0);
      v64 = *(v39 + 464);
      if (v64)
      {
        free(v64);
      }

      v65 = *(v39 + 440);
      if (v65)
      {
        free(v65);
      }

      std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100]((v40 + 296), 0);
      std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100]((v40 + 288), 0);
      std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](a21, 0);
      vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>::~Block(v40);
      if (*(v39 + 55) < 0)
      {
        operator delete(*(v39 + 32));
      }

      if (*(v39 + 31) < 0)
      {
        operator delete(*a26);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::__function::__value_func<void ()(std::optional<unsigned long long>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::__function::__func<VoiceProcessorV3::VoiceProcessorV3(vp::Context const&)::$_0,std::allocator<VoiceProcessorV3::VoiceProcessorV3(vp::Context const&)::$_0>,void ()(std::optional<unsigned long long>)>::operator()(uint64_t a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  VoiceProcessorV2::GetRefPortUIDForPME(&cf, v1);
  v2 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v26 = v2;
  isPersonalMediaEnabled = va::PersonalAudioInterface::isPersonalMediaEnabled(&v26);
  v4 = isPersonalMediaEnabled;
  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    isPersonalMediaEnabled = VoiceProcessorV2::GetRefPortHLC2chStateForPME(v1);
    v5 = isPersonalMediaEnabled ^ 1;
  }

  else
  {
    v5 = 1;
  }

  v6 = va::PersonalAudioInterface::isPersonalMediaEnabled(isPersonalMediaEnabled);
  v24[1] = (v1 + 2408);
  v7 = (*(*(v1 + 2408) + 16))(v1 + 2408);
  v25 = v7;
  if ((*(v1 + 8869) & 0x20) != 0 && (*(v1 + 8877) & 0x20) != 0 && *(v1 + 3872))
  {
    if (v4)
    {
      v8 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v23 = v8;
      va::PersonalAudioInterface::getPreset(v24, &v23);
      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      va::PersonalAudioInterface::getPreset(v24);
    }

    if (v24[0])
    {
      inData[0] = v24[0];
      AudioUnitSetProperty(*(v1 + 3872), 0, 0, 0, inData, 8u);
    }

    v9 = (v6 | v4) & v5;
    v22 = (v9 & 1) == 0;
    AudioUnitSetProperty(*(v1 + 3872), 0x15u, 0, 0, &v22, 4u);
    if (*(v1 + 15881) == 1)
    {
      v10 = v24[0];
      if (!v24[0])
      {
        goto LABEL_38;
      }

      CFRetain(v24[0]);
      v20 = v10;
      applesauce::CF::TypeRef::TypeRef(inData, "hlc_paconfig");
      CFRetain(v10);
      inData[1] = v10;
      valuePtr = v9 & 1;
      v19 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (!v19)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      applesauce::CF::TypeRef::TypeRef(&v30, "hlc_enable");
      CFRetain(v19);
      v31[0] = v19;
      v21[0] = inData;
      v21[1] = 2;
      CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v21);
      v12 = *(v1 + 2248);
      *(v1 + 2248) = CFDictionaryRef;
      if (v12)
      {
        CFRelease(v12);
      }

      for (i = 0; i != -4; i -= 2)
      {
        v14 = v31[i];
        if (v14)
        {
          CFRelease(v14);
        }

        v15 = inData[i + 2];
        if (v15)
        {
          CFRelease(v15);
        }
      }

      CFRelease(v19);
      if (v20)
      {
        CFRelease(v20);
      }

      if (*(v1 + 15881) == 1)
      {
        VoiceProcessorV2::PListWriteSetPropertyParameters(v1, 1751933808);
      }

      v16 = *(v1 + 2248);
      *(v1 + 2248) = 0;
      if (v16)
      {
        CFRelease(v16);
      }
    }

    if (v24[0])
    {
      CFRelease(v24[0]);
    }
  }

LABEL_38:
  if (v7)
  {
    (*(*(v1 + 2408) + 24))(v1 + 2408);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2724EE948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va5, a2);
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  v7 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v13 = va_arg(va4, void);
  v15 = va_arg(va4, void);
  v16 = va_arg(va4, void);
  va_copy(va5, va4);
  v17 = va_arg(va5, const void *);
  v19 = va_arg(va5, void);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  applesauce::CF::DictionaryRef::~DictionaryRef(va1);
  applesauce::CF::TypeRefPair::~TypeRefPair(va5);
  applesauce::CF::DictionaryRef::~DictionaryRef(va2);
  CADeprecated::CAMutex::Locker::~Locker(va3);
  applesauce::CF::StringRef::~StringRef(va4);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<VoiceProcessorV3::VoiceProcessorV3(vp::Context const&)::$_0,std::allocator<VoiceProcessorV3::VoiceProcessorV3(vp::Context const&)::$_0>,void ()(std::optional<unsigned long long>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B06D8;
  a2[1] = v2;
  return result;
}

void VoiceProcessorV4::SetupECApplicator(VoiceProcessorV4 *this)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2111);
  v3 = *(this + 2110);
  while (v2 != v3)
  {
    v2 = std::unique_ptr<ECApplicator>::~unique_ptr[abi:ne200100](v2 - 1);
  }

  *(this + 2111) = v3;
  operator new();
}

uint64_t *std::unique_ptr<ECApplicator>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      MEMORY[0x2743CBF70](v3, 0x20C8093837F09);
    }

    v4 = *(v2 + 56);
    if (v4)
    {
      MEMORY[0x2743CBF70](v4, 0x20C8093837F09);
    }

    MEMORY[0x2743CBFA0](v2, 0x10A0C40D887FA1FLL);
  }

  return a1;
}

void std::vector<std::unique_ptr<ECApplicator>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (8 * (v8 >> 3));
    v13 = *a2;
    *a2 = 0;
    *v12 = v13;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  *(a1 + 8) = v6;
}

__n128 VoiceProcessorV4::CorrectDownlinkTimeStamp@<Q0>(const AudioTimeStamp *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *&a1->mRateScalar;
  *a2 = *&a1->mSampleTime;
  *(a2 + 16) = v3;
  result = *&a1->mSMPTETime.mSubframes;
  v5 = *&a1->mSMPTETime.mHours;
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void VoiceProcessorV4::ApplyCustomTelephonyDSPOverrides(int8x16_t *this, CFDictionaryRef theDict, int a3)
{
  if (theDict && CFDictionaryGetCount(theDict))
  {
    if (a3)
    {
      if (CFDictionaryContainsKey(theDict, @"noise suppression"))
      {
        Value = CFDictionaryGetValue(theDict, @"noise suppression");
        if (Value)
        {
          v7 = Value;
          CFRetain(Value);
          valuePtr = 0.0;
          CFNumberGetValue(v7, kCFNumberFloat32Type, &valuePtr);
          CFRelease(v7);
          v8 = this[293].i64[0];
          this[293].i64[1] |= 0x10uLL;
          this[293].i64[0] = v8 & 0xFF3FFFFFFFFFFFFFLL | 0x40000000000000;
          AUPropAndParamHelper::AddItemToAUParamList(this[376].i64, 0, valuePtr);
        }
      }

      if (CFDictionaryContainsKey(theDict, @"agc"))
      {
        v9 = CFDictionaryGetValue(theDict, @"agc");
        if (v9)
        {
          v10 = v9;
          CFRetain(v9);
          valuePtr = 0.0;
          CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
          CFRelease(v10);
          v11 = this[293].i64[1];
          v12 = v11 & 0xFFFFFFFFFFFFFFFDLL;
          v13 = v11 | 0x12;
          if (LODWORD(valuePtr) == 1)
          {
            v14 = v13;
          }

          else
          {
            v14 = v12;
          }

          this[293].i64[1] = v14;
        }
      }
    }

    if (CFDictionaryContainsKey(theDict, @"gain"))
    {
      v15 = CFDictionaryGetValue(theDict, @"gain");
      if (v15)
      {
        v16 = v15;
        CFRetain(v15);
        valuePtr = 0.0;
        CFNumberGetValue(v16, kCFNumberFloat32Type, &valuePtr);
        CFRelease(v16);
        if (a3)
        {
          this[293] = vorrq_s8(this[293], xmmword_272756330);
          v17 = valuePtr;
          v18 = &this[438].i64[1];
          v19 = 1;
        }

        else
        {
          this[554].i64[0] |= 0x6000000000000000uLL;
          AUPropAndParamHelper::AddItemToAUParamList(&this[684].i64[1], 0, valuePtr);
          v17 = valuePtr;
          v18 = &this[684].i64[1];
          v19 = 8;
        }

        AUPropAndParamHelper::AddItemToAUParamList(v18, v19, v17);
      }
    }

    if (CFDictionaryContainsKey(theDict, @"eq"))
    {
      v20 = CFDictionaryGetValue(theDict, @"eq");
      if (v20)
      {
        v21 = v20;
        CFRetain(v20);
        Count = CFArrayGetCount(v21);
        if (a3)
        {
          v23 = 779;
        }

        else
        {
          v23 = 1209;
        }

        if (a3)
        {
          this[293].i64[0] |= 0x8000000000000000;
          v24 = 16;
          v25 = 587;
        }

        else
        {
          v24 = 0x4000000200000000;
          v25 = 1108;
        }

        this->i64[v25] |= v24;
        v26 = Count - 1;
        if (Count >= 1)
        {
          v27 = 0;
          if (v26 >= 9)
          {
            v26 = 9;
          }

          v28 = v26 + 1;
          v29 = 5000;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v21, v27);
            if (ValueAtIndex)
            {
              v31 = ValueAtIndex;
              CFRetain(ValueAtIndex);
              if (CFDictionaryContainsKey(v31, @"AUNBandEQ_FilterType") && CFDictionaryContainsKey(v31, @"AUNBandEQ_FilterFrequency"))
              {
                AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v23], v27 + 1000, 0.0);
                v32 = CFDictionaryGetValue(v31, @"AUNBandEQ_FilterType");
                if (v32)
                {
                  v33 = v32;
                  CFRetain(v32);
                  valuePtr = 0.0;
                  CFNumberGetValue(v33, kCFNumberIntType, &valuePtr);
                  CFRelease(v33);
                  AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v23], v27 | 0x7D0, LODWORD(valuePtr));
                }

                v34 = CFDictionaryGetValue(v31, @"AUNBandEQ_FilterFrequency");
                if (v34)
                {
                  v35 = v34;
                  CFRetain(v34);
                  valuePtr = 0.0;
                  CFNumberGetValue(v35, kCFNumberFloat32Type, &valuePtr);
                  CFRelease(v35);
                  AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v23], v27 + 3000, valuePtr);
                }
              }

              if (CFDictionaryContainsKey(v31, @"AUNBandEQ_FilterGain"))
              {
                v36 = CFDictionaryGetValue(v31, @"AUNBandEQ_FilterGain");
                if (v36)
                {
                  v37 = v36;
                  CFRetain(v36);
                  valuePtr = 0.0;
                  CFNumberGetValue(v37, kCFNumberFloat32Type, &valuePtr);
                  CFRelease(v37);
                  AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v23], v27 | 0xFA0, valuePtr);
                }
              }

              if (CFDictionaryContainsKey(v31, @"AUNBandEQ_FilterBandwidth"))
              {
                v38 = CFDictionaryGetValue(v31, @"AUNBandEQ_FilterBandwidth");
                CFRetain(v38);
                valuePtr = 0.0;
                CFNumberGetValue(v38, kCFNumberFloat32Type, &valuePtr);
                CFRelease(v38);
                AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v23], v29, valuePtr);
              }

              CFRelease(v31);
            }

            ++v27;
            ++v29;
            --v28;
          }

          while (v28);
        }

        CFRelease(v21);
      }
    }
  }
}

uint64_t *VoiceProcessorV4::SetupDownlinkBasicAUChain(uint64_t *this)
{
  v1 = this;
  *&v20[25] = *MEMORY[0x277D85DE8];
  v2 = this[1108];
  if (*(this + 2092) == 1)
  {
    v3 = 671088640;
  }

  else
  {
    this[1108] = v2 | 0x100;
    v20[0] = 0;
    CFRetain(@"com.apple.coreaudio");
    AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"vp_use_vareq", v20, v4);
    if (v20[0] == 1 && !AppBooleanValue)
    {
      *(v1 + 8864) &= ~0x100uLL;
    }

    if (*(v1 + 832) == *(v1 + 336))
    {
      v6 = 1;
    }

    else
    {
      v6 = (*(*v1 + 232))(v1) && (v7 = *(v1 + 832), v7 > 0.0) && (v8 = *(v1 + 336), v8 > 0.0) && fmod(v8, v7) == 0.0;
    }

    v9 = (*(*v1 + 112))(v1) > 5 || v6;
    if (v9 && *(v1 + 840) == 1819304813 && (*(v1 + 844) & 1) != 0 && *(v1 + 344) == 1819304813 && (*(v1 + 348) & 1) != 0 && (~*(v1 + 456) & 5) == 0 && (v10 = *(v1 + 2352), v10 != *(v1 + 2360)) && *v10 == 1886545251)
    {
      v11 = (*(*v1 + 112))(v1);
      v12 = *(v1 + 8864);
      if (v11 >= 6)
      {
        *(v1 + 8864) = v12 | 0x80000000000;
        *(v1 + 489) = *(v1 + 832) != *(v1 + 336);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v13 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
        if (v13)
        {
          v14 = v13;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(v1 + 489);
            *&v20[1] = 136315650;
            *&v20[5] = "VoiceProcessor_v4.cpp";
            *&v20[13] = 1024;
            *&v20[15] = 328;
            *&v20[19] = 1024;
            *&v20[21] = v15;
            _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Should enable TweakaLeakIR sample rate converter: %d", &v20[1], 0x18u);
          }
        }

        v16 = *(v1 + 12704);
        if (v16 && ((*(v1 + 15881) & 1) != 0 || *(v1 + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            v19 = *(v1 + 12704);
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            v16 = v19;
          }

          CALegacyLog::log(v16, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v4.cpp", 328, "SetupDownlinkBasicAUChain", "Should enable TweakaLeakIR sample rate converter: %d", *(v1 + 489));
        }

        if (*(v1 + 516) <= *(v1 + 492))
        {
          v17 = *(v1 + 492);
        }

        else
        {
          v17 = *(v1 + 516);
        }

        myAllocABLDynamic((v1 + 912), v17, (v1 + 17120));
        v12 = *(v1 + 8864);
      }
    }

    else
    {
      v12 = *(v1 + 8864) & 0xFFFFF7FFFFFFFFFFLL;
    }

    *(v1 + 8864) = v12 | 0x208044;
    this = AUPropAndParamHelper::AddItemToAUParamList((v1 + 9384), 0, *(v1 + 12620));
    v2 = *(v1 + 8864);
    v3 = 0x3E8000000;
  }

  *(v1 + 8864) = v2 | v3 & 0xFFFFFFFFFFFFLL | 0x6000000000000000;
  v18 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t VoiceProcessorV4::SetupUplink_MS(uint64_t this, unsigned int a2)
{
  if (a2 != 1)
  {
    v2 = *(this + 4688);
    *(this + 4688) = v2 | 0x40004101;
    if (a2)
    {
      *(this + 4688) = v2 | 0x40004107;
      if (a2 >= 3)
      {
        *(this + 4688) = v2 | 0x4000410F;
      }
    }
  }

  return this;
}

uint64_t VoiceProcessorV4::SetupUplink_BF_MS(uint64_t this, unsigned int a2, char a3)
{
  if (a2 < 2)
  {
    if (a2 && (a3 & 1) == 0)
    {
      v4 = *(this + 4688) | 2;
      goto LABEL_8;
    }
  }

  else
  {
    v3 = *(this + 4688);
    *(this + 4688) = v3 | 0xC0004101;
    if ((a3 & 1) == 0)
    {
      *(this + 4688) = v3 | 0xC0004107;
      if (a2 != 2)
      {
        v4 = v3 | 0xC000410FLL;
LABEL_8:
        *(this + 4688) = v4;
      }
    }
  }

  return this;
}

uint64_t VoiceProcessorV4::SetupUplink_MMNS(uint64_t this, unsigned int a2)
{
  if (a2 != 1)
  {
    v2 = *(this + 4688) & 0xFF3FFBFFFFFFBEFFLL;
    *(this + 4688) = v2 | 0x80040000004100;
    if (a2)
    {
      *(this + 4688) = v2 | 0x80040000004106;
      if (a2 >= 3)
      {
        *(this + 4688) = v2 | 0x8004000000410ELL;
        if (a2 != 3)
        {
          *(this + 4688) = v2 | 0x8004030001C51ELL;
        }
      }
    }
  }

  return this;
}

void VoiceProcessorV4::SetupUplinkLiteAUChain(int8x16_t *this)
{
  v2 = &this[293];
  v6 = this + 293;
  v7 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(&v6);
  v3 = this[293];
  this[293] = vorrq_s8(v3, xmmword_272756470);
  if (this[105].i8[4] == 1)
  {
    *v2 = v3.i64[0] | 0xD000020000002080;
  }

  v4 = this[144].i32[0];
  if (v4 == 1 || v4 == -1)
  {
    this[293].i64[1] = v3.i64[1] | 0x12;
  }
}

void VoiceProcessorV4::SetupUplinkBasicAUChain(int8x16_t *this)
{
  v2 = &this[293];
  v6 = this + 293;
  v7 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(&v6);
  v3 = this[293];
  this[293] = vorrq_s8(v3, xmmword_272756480);
  if (this[105].i8[4] == 1)
  {
    *v2 = v3.i64[0] | 0xD040020000002080;
  }

  v4 = this[144].i32[0];
  if (v4 == 1 || v4 == -1)
  {
    this[293].i64[1] = v3.i64[1] | 0x13;
  }
}

uint64_t VoiceProcessorV4::Initialize(VoiceProcessorV4 *this)
{
  v2 = VoiceProcessorV2::Initialize(this);
  if (!v2)
  {
    VoiceProcessorV4::InitializeV4Specifics(this);
  }

  return v2;
}

void VoiceProcessorV4::InitializeV4Specifics(VoiceProcessorV4 *this)
{
  v2 = *(this + 2108);
  if (v2)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v2);
    MEMORY[0x2743CBFA0]();
  }

  v3 = *(this + 2109);
  if (v3)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v3);
    MEMORY[0x2743CBFA0]();
  }

  v4 = *(this + 129);
  VPTimeFreqConverter_Create();
}

void VoiceProcessorV4::~VoiceProcessorV4(VoiceProcessorV4 *this)
{
  VoiceProcessorV4::~VoiceProcessorV4(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B0720;
  caulk::details::lifetime_guard_base<VoiceProcessorV2>::invalidate(this + 16616);
  v2 = *(this + 2108);
  if (v2)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v2);
    MEMORY[0x2743CBFA0]();
    *(this + 2108) = 0;
  }

  v3 = *(this + 2109);
  if (v3)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v3);
    MEMORY[0x2743CBFA0]();
    *(this + 2109) = 0;
  }

  myFreeABLDynamic(this + 2140);
  CAUnregisterUIOrientation();
  CAUnregisterDeviceOrientation();
  if (VoiceProcessorV4::mNotifyTokenProx)
  {
    notify_cancel(VoiceProcessorV4::mNotifyTokenProx);
  }

  v4 = (this + 16880);
  std::vector<std::unique_ptr<ECApplicator>>::__destroy_vector::operator()[abi:ne200100](&v4);

  VoiceProcessorV3::~VoiceProcessorV3(this);
}

void std::vector<std::unique_ptr<ECApplicator>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<ECApplicator>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2724F0050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  a23 = v23 + 16880;
  std::vector<std::unique_ptr<ECApplicator>>::__destroy_vector::operator()[abi:ne200100](&a23);
  VoiceProcessorV3::~VoiceProcessorV3(v23);
  _Unwind_Resume(a1);
}

void ___ZN16VoiceProcessorV4C2ERKN2vp7ContextE_block_invoke(uint64_t a1, unsigned int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 32);
    if (v7)
    {
      atomic_store(a2, (v7 + 2324));
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v8 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v9 = (*v8 ? *v8 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v15 = "VoiceProcessor_v2.cpp";
          v16 = 1024;
          v17 = 883;
          v18 = 1024;
          v19 = a2;
          _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> UI orientation is set to %d", buf, 0x18u);
        }
      }

      v10 = *(v7 + 12704);
      if (v10 && ((*(v7 + 15881) & 1) != 0 || *(v7 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          v13 = *(v7 + 12704);
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          v10 = v13;
        }

        CALegacyLog::log(v10, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 883, "SetUIOrientation", "UI orientation is set to %d", a2);
      }
    }

    v11 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v12 = *MEMORY[0x277D85DE8];
  }
}

void ___ZN16VoiceProcessorV4C2ERKN2vp7ContextE_block_invoke_5(uint64_t a1, unsigned int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 32);
    if (v7)
    {
      atomic_store(a2, (v7 + 2336));
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v8 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v9 = (*v8 ? *v8 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v15 = "VoiceProcessor_v2.cpp";
          v16 = 1024;
          v17 = 874;
          v18 = 1024;
          v19 = a2;
          _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> device orientation is set to %d", buf, 0x18u);
        }
      }

      v10 = *(v7 + 12704);
      if (v10 && ((*(v7 + 15881) & 1) != 0 || *(v7 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          v13 = *(v7 + 12704);
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          v10 = v13;
        }

        CALegacyLog::log(v10, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 874, "SetDeviceOrientation", "device orientation is set to %d", a2);
      }
    }

    v11 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v12 = *MEMORY[0x277D85DE8];
  }
}

uint64_t ___ZN16VoiceProcessorV4C2ERKN2vp7ContextE_block_invoke_15()
{
  state64 = 0;
  result = notify_get_state(VoiceProcessorV4::mNotifyTokenProx, &state64);
  atomic_store(state64, VoiceProcessorV4::mIsOnEar);
  return result;
}

uint64_t ___ZN16VoiceProcessorV4C2ERKN2vp7ContextE_block_invoke_10()
{
  state64 = 0;
  result = notify_get_state(VoiceProcessorV4::mNotifyTokenProx, &state64);
  atomic_store(state64, VoiceProcessorV4::mIsOnEar);
  return result;
}

void __destroy_helper_block_e8_32c41_ZTSNSt3__18weak_ptrI16VoiceProcessorV2EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_e8_32c41_ZTSNSt3__18weak_ptrI16VoiceProcessorV2EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void VoiceProcessorV5::SetupECApplicator(VoiceProcessorV5 *this)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2111);
  v3 = *(this + 2110);
  while (v2 != v3)
  {
    v2 = std::unique_ptr<ECApplicator>::~unique_ptr[abi:ne200100](v2 - 1);
  }

  *(this + 2111) = v3;
  operator new();
}

void VoiceProcessorV5::ApplyCustomTelephonyDSPOverrides(int8x16_t *this, CFDictionaryRef theDict, int a3)
{
  if (theDict && CFDictionaryGetCount(theDict))
  {
    if (a3)
    {
      if (CFDictionaryContainsKey(theDict, @"noise suppression"))
      {
        Value = CFDictionaryGetValue(theDict, @"noise suppression");
        if (Value)
        {
          v7 = Value;
          CFRetain(Value);
          valuePtr = 0.0;
          CFNumberGetValue(v7, kCFNumberFloat32Type, &valuePtr);
          CFRelease(v7);
          v8 = this[293].i64[0];
          this[293].i64[1] |= 0x10uLL;
          this[293].i64[0] = v8 & 0xFF3FFFFFFFFFFFFFLL | 0x40000000000000;
          AUPropAndParamHelper::AddItemToAUParamList(this[376].i64, 0, valuePtr);
        }
      }

      if (CFDictionaryContainsKey(theDict, @"agc"))
      {
        v9 = CFDictionaryGetValue(theDict, @"agc");
        if (v9)
        {
          v10 = v9;
          CFRetain(v9);
          valuePtr = 0.0;
          CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
          CFRelease(v10);
          v11 = this[293].i64[1];
          v12 = v11 & 0xFFFFFFFFFFFFFFFDLL;
          v13 = v11 | 0x12;
          if (LODWORD(valuePtr) == 1)
          {
            v14 = v13;
          }

          else
          {
            v14 = v12;
          }

          this[293].i64[1] = v14;
        }
      }
    }

    if (CFDictionaryContainsKey(theDict, @"gain"))
    {
      v15 = CFDictionaryGetValue(theDict, @"gain");
      if (v15)
      {
        v16 = v15;
        CFRetain(v15);
        valuePtr = 0.0;
        CFNumberGetValue(v16, kCFNumberFloat32Type, &valuePtr);
        CFRelease(v16);
        if (a3)
        {
          this[293] = vorrq_s8(this[293], xmmword_272756330);
          v17 = valuePtr;
          v18 = &this[438].i64[1];
          v19 = 1;
        }

        else
        {
          this[554].i64[0] |= 0x2000800000000000uLL;
          AUPropAndParamHelper::AddItemToAUParamList(&this[684].i64[1], 0, valuePtr);
          v17 = valuePtr;
          v18 = &this[684].i64[1];
          v19 = 8;
        }

        AUPropAndParamHelper::AddItemToAUParamList(v18, v19, v17);
      }
    }

    if (CFDictionaryContainsKey(theDict, @"eq"))
    {
      v20 = CFDictionaryGetValue(theDict, @"eq");
      if (v20)
      {
        v21 = v20;
        CFRetain(v20);
        Count = CFArrayGetCount(v21);
        if (a3)
        {
          v23 = 779;
        }

        else
        {
          v23 = 1209;
        }

        if (a3)
        {
          this[293].i64[0] |= 0x8000000000000000;
          v24 = 16;
          v25 = 587;
        }

        else
        {
          v24 = 0x800200000000;
          v25 = 1108;
        }

        this->i64[v25] |= v24;
        v26 = Count - 1;
        if (Count >= 1)
        {
          v27 = 0;
          if (v26 >= 9)
          {
            v26 = 9;
          }

          v28 = v26 + 1;
          v29 = 5000;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v21, v27);
            if (ValueAtIndex)
            {
              v31 = ValueAtIndex;
              CFRetain(ValueAtIndex);
              if (CFDictionaryContainsKey(v31, @"AUNBandEQ_FilterType") && CFDictionaryContainsKey(v31, @"AUNBandEQ_FilterFrequency"))
              {
                AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v23], v27 + 1000, 0.0);
                v32 = CFDictionaryGetValue(v31, @"AUNBandEQ_FilterType");
                if (v32)
                {
                  v33 = v32;
                  CFRetain(v32);
                  valuePtr = 0.0;
                  CFNumberGetValue(v33, kCFNumberIntType, &valuePtr);
                  CFRelease(v33);
                  AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v23], v27 | 0x7D0, LODWORD(valuePtr));
                }

                v34 = CFDictionaryGetValue(v31, @"AUNBandEQ_FilterFrequency");
                if (v34)
                {
                  v35 = v34;
                  CFRetain(v34);
                  valuePtr = 0.0;
                  CFNumberGetValue(v35, kCFNumberFloat32Type, &valuePtr);
                  CFRelease(v35);
                  AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v23], v27 + 3000, valuePtr);
                }
              }

              if (CFDictionaryContainsKey(v31, @"AUNBandEQ_FilterGain"))
              {
                v36 = CFDictionaryGetValue(v31, @"AUNBandEQ_FilterGain");
                if (v36)
                {
                  v37 = v36;
                  CFRetain(v36);
                  valuePtr = 0.0;
                  CFNumberGetValue(v37, kCFNumberFloat32Type, &valuePtr);
                  CFRelease(v37);
                  AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v23], v27 | 0xFA0, valuePtr);
                }
              }

              if (CFDictionaryContainsKey(v31, @"AUNBandEQ_FilterBandwidth"))
              {
                v38 = CFDictionaryGetValue(v31, @"AUNBandEQ_FilterBandwidth");
                CFRetain(v38);
                valuePtr = 0.0;
                CFNumberGetValue(v38, kCFNumberFloat32Type, &valuePtr);
                CFRelease(v38);
                AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v23], v29, valuePtr);
              }

              CFRelease(v31);
            }

            ++v27;
            ++v29;
            --v28;
          }

          while (v28);
        }

        CFRelease(v21);
      }
    }
  }
}

uint64_t *VoiceProcessorV5::SetupDownlinkBasicAUChain(VoiceProcessorV5 *this)
{
  result = VoiceProcessorV4::SetupDownlinkBasicAUChain(this);
  *(this + 1108) = *(this + 1108) & 0xBFFF7FFFFFFFFFFFLL | 0x800000000000;
  return result;
}

uint64_t VoiceProcessorV5::SetupUplink_SCLP_PMWF_BeamIt(uint64_t this, unsigned int a2)
{
  if (a2 >= 4)
  {
    *(this + 4688) = *(this + 4688) & 0xFDFFFFD3FFEBFAFFLL | 0x2C00140500;
    *(this + 12536) = 9;
  }

  return this;
}

uint64_t VoiceProcessorV5::SetupUplink_MS(uint64_t this, unsigned int a2)
{
  if (a2 != 1)
  {
    v2 = *(this + 4688);
    v3 = 1074004255;
    if (a2 == 3)
    {
      v3 = 1074004239;
    }

    v4 = v2 | v3;
    if (a2 < 3)
    {
      v4 = v2 | 0x40040107;
    }

    if (!a2)
    {
      v4 = v2 | 0x40040101;
    }

    *(this + 4688) = v4 & 0xFDFFFFBFBFDFF7FFLL | 0x200004000200800;
  }

  return this;
}

uint64_t VoiceProcessorV5::SetupUplink_BF_MS(uint64_t this, unsigned int a2, char a3)
{
  if (a2 < 2)
  {
    if (a2 && (a3 & 1) == 0)
    {
      v4 = *(this + 4688) | 2;
      goto LABEL_9;
    }
  }

  else
  {
    v3 = *(this + 4688);
    *(this + 4688) = v3 | 0xC0040101;
    if ((a3 & 1) == 0)
    {
      *(this + 4688) = v3 | 0xC0040107;
      if (a2 != 2)
      {
        *(this + 4688) = v3 | 0xC004010FLL;
        if (a2 >= 4)
        {
          v4 = v3 | 0xC004011FLL;
LABEL_9:
          *(this + 4688) = v4;
        }
      }
    }
  }

  return this;
}

uint64_t VoiceProcessorV5::SetupUplink_MMNS(uint64_t this, unsigned int a2)
{
  if (a2 != 1)
  {
    v2 = *(this + 4688) & 0xFD3FAFFFFFFBFEFFLL;
    *(this + 4688) = v2 | 0x80500000040100;
    if (a2)
    {
      *(this + 4688) = v2 | 0x80500000040106;
      if (a2 >= 3)
      {
        *(this + 4688) = v2 | 0x8050000004010ELL;
        if (a2 != 3)
        {
          *(this + 4688) = v2 | 0x805003001C051ELL;
        }
      }
    }
  }

  return this;
}

void VoiceProcessorV5::SetupUplinkLiteAUChain(int8x16_t *this)
{
  v2 = &this[293];
  v6 = this + 293;
  v7 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(&v6);
  v3 = this[293];
  this[293] = vorrq_s8(v3, xmmword_272756490);
  if (this[105].i8[4] == 1)
  {
    *v2 = v3.i64[0] | 0xD000080000020080;
  }

  v4 = this[144].i32[0];
  if (v4 == 1 || v4 == -1)
  {
    this[293].i64[1] = v3.i64[1] | 0x12;
  }
}

void VoiceProcessorV5::SetupUplinkBasicAUChain(int8x16_t *this)
{
  v2 = &this[293];
  v6 = this + 293;
  v7 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(&v6);
  v3 = this[293];
  this[293] = vorrq_s8(v3, xmmword_2727564A0);
  if (this[105].i8[4] == 1)
  {
    *v2 = v3.i64[0] | 0xD240080000020080;
  }

  v4 = this[144].i32[0];
  if (v4 == 1 || v4 == -1)
  {
    this[293].i64[1] = v3.i64[1] | 0x13;
  }
}

uint64_t VoiceProcessorV5::Initialize(VoiceProcessorV5 *this)
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

void VoiceProcessorV5::InitializeV5Specifics(VoiceProcessorV5 *this)
{
  myAllocABLDynamic((this + 832), 2 * *(this + 129), this + 2143);
  v2 = *(this + 2142);
  if (v2)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v2);
    MEMORY[0x2743CBFA0]();
  }

  v3 = *(this + 2144);
  if (v3)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v3);
    MEMORY[0x2743CBFA0]();
  }

  v4 = *(this + 129);
  VPTimeFreqConverter_Create();
}

void VoiceProcessorV5::~VoiceProcessorV5(AudioBufferList **this)
{
  VoiceProcessorV5::~VoiceProcessorV5(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B0AA0;
  caulk::details::lifetime_guard_base<VoiceProcessorV2>::invalidate((this + 2077));
  myFreeABLDynamic(this + 2143);
  v2 = this[2142];
  if (v2)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v2);
    MEMORY[0x2743CBFA0]();
    this[2142] = 0;
  }

  v3 = this[2144];
  if (v3)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v3);
    MEMORY[0x2743CBFA0]();
    this[2144] = 0;
  }

  VoiceProcessorV4::~VoiceProcessorV4(this);
}

BOOL VoiceProcessorV6::IsVoiceIsolationSupportedUnderCurrentUseCase(VoiceProcessorV6 *this)
{
  v2 = *(this + 20);
  result = 1;
  v4 = v2 > 4;
  v5 = (1 << v2) & 0x15;
  if (v4 || v5 == 0)
  {
    result = _os_feature_enabled_impl() && ((v7 = *(this + 20), v7 == 6) || v7 == 1) && (*(*this + 112))(this) >= 7 && *(this + 16) == 1;
  }

  return result;
}

uint64_t VoiceProcessorV6::OverrideMiscUseCase(VoiceProcessorV6 *this, int a2)
{
  if (a2 == 1885433971)
  {
    return 0x1766F3234;
  }

  else
  {
    return 1986998784;
  }
}

void VoiceProcessorV6::SetupECApplicator(VoiceProcessorV6 *this)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2111);
  v3 = *(this + 2110);
  while (v2 != v3)
  {
    v2 = std::unique_ptr<ECApplicator>::~unique_ptr[abi:ne200100](v2 - 1);
  }

  *(this + 2111) = v3;
  operator new();
}

Float64 VoiceProcessorV6::CorrectDownlinkTimeStamp@<D0>(VoiceProcessorV6 *this@<X0>, const AudioTimeStamp *a2@<X1>, Float64 *a3@<X8>)
{
  v3 = *&a2->mRateScalar;
  *a3 = *&a2->mSampleTime;
  *(a3 + 1) = v3;
  v4 = *&a2->mSMPTETime.mHours;
  *(a3 + 2) = *&a2->mSMPTETime.mSubframes;
  *(a3 + 3) = v4;
  result = a2->mSampleTime + *(this + 297);
  *a3 = result;
  return result;
}

void VoiceProcessorV6::ApplyCustomTelephonyDSPOverrides(int8x16_t *this, CFDictionaryRef theDict, int a3)
{
  if (theDict && CFDictionaryGetCount(theDict))
  {
    if (a3)
    {
      if (CFDictionaryContainsKey(theDict, @"noise suppression"))
      {
        Value = CFDictionaryGetValue(theDict, @"noise suppression");
        if (Value)
        {
          v7 = Value;
          CFRetain(Value);
          valuePtr = 0.0;
          CFNumberGetValue(v7, kCFNumberFloat32Type, &valuePtr);
          CFRelease(v7);
          v8 = this[293].i64[0];
          this[293].i64[1] |= 0x10uLL;
          this[293].i64[0] = v8 & 0xFF3FFFFFFFFFFFFFLL | 0x40000000000000;
          AUPropAndParamHelper::AddItemToAUParamList(this[376].i64, 0, valuePtr);
        }
      }

      if (CFDictionaryContainsKey(theDict, @"agc"))
      {
        v9 = CFDictionaryGetValue(theDict, @"agc");
        if (v9)
        {
          v10 = v9;
          CFRetain(v9);
          valuePtr = 0.0;
          CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
          CFRelease(v10);
          v11 = this[293].i64[1];
          v12 = v11 & 0xFFFFFFFFFFFFFFFDLL;
          v13 = v11 | 0x12;
          if (LODWORD(valuePtr) == 1)
          {
            v14 = v13;
          }

          else
          {
            v14 = v12;
          }

          this[293].i64[1] = v14;
        }
      }
    }

    if (CFDictionaryContainsKey(theDict, @"gain"))
    {
      v15 = CFDictionaryGetValue(theDict, @"gain");
      if (v15)
      {
        v16 = v15;
        CFRetain(v15);
        valuePtr = 0.0;
        CFNumberGetValue(v16, kCFNumberFloat32Type, &valuePtr);
        CFRelease(v16);
        if (a3)
        {
          this[293] = vorrq_s8(this[293], xmmword_272756330);
          v17 = valuePtr;
          v18 = &this[438].i64[1];
          v19 = 1;
        }

        else
        {
          this[554].i64[0] |= 0x2000800000000000uLL;
          AUPropAndParamHelper::AddItemToAUParamList(&this[684].i64[1], 0, valuePtr);
          v17 = valuePtr;
          v18 = &this[684].i64[1];
          v19 = 8;
        }

        AUPropAndParamHelper::AddItemToAUParamList(v18, v19, v17);
      }
    }

    if (CFDictionaryContainsKey(theDict, @"eq"))
    {
      v20 = CFDictionaryGetValue(theDict, @"eq");
      if (v20)
      {
        v21 = v20;
        CFRetain(v20);
        Count = CFArrayGetCount(v21);
        if (a3)
        {
          v23 = 779;
        }

        else
        {
          v23 = 1209;
        }

        if (a3)
        {
          this[293].i64[0] |= 0x8000000000000000;
          v24 = 16;
          v25 = 587;
        }

        else
        {
          v24 = 0x800200000000;
          v25 = 1108;
        }

        this->i64[v25] |= v24;
        v26 = Count - 1;
        if (Count >= 1)
        {
          v27 = 0;
          if (v26 >= 9)
          {
            v26 = 9;
          }

          v28 = v26 + 1;
          v29 = 5000;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v21, v27);
            if (ValueAtIndex)
            {
              v31 = ValueAtIndex;
              CFRetain(ValueAtIndex);
              if (CFDictionaryContainsKey(v31, @"AUNBandEQ_FilterType") && CFDictionaryContainsKey(v31, @"AUNBandEQ_FilterFrequency"))
              {
                AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v23], v27 + 1000, 0.0);
                v32 = CFDictionaryGetValue(v31, @"AUNBandEQ_FilterType");
                if (v32)
                {
                  v33 = v32;
                  CFRetain(v32);
                  valuePtr = 0.0;
                  CFNumberGetValue(v33, kCFNumberIntType, &valuePtr);
                  CFRelease(v33);
                  AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v23], v27 | 0x7D0, LODWORD(valuePtr));
                }

                v34 = CFDictionaryGetValue(v31, @"AUNBandEQ_FilterFrequency");
                if (v34)
                {
                  v35 = v34;
                  CFRetain(v34);
                  valuePtr = 0.0;
                  CFNumberGetValue(v35, kCFNumberFloat32Type, &valuePtr);
                  CFRelease(v35);
                  AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v23], v27 + 3000, valuePtr);
                }
              }

              if (CFDictionaryContainsKey(v31, @"AUNBandEQ_FilterGain"))
              {
                v36 = CFDictionaryGetValue(v31, @"AUNBandEQ_FilterGain");
                if (v36)
                {
                  v37 = v36;
                  CFRetain(v36);
                  valuePtr = 0.0;
                  CFNumberGetValue(v37, kCFNumberFloat32Type, &valuePtr);
                  CFRelease(v37);
                  AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v23], v27 | 0xFA0, valuePtr);
                }
              }

              if (CFDictionaryContainsKey(v31, @"AUNBandEQ_FilterBandwidth"))
              {
                v38 = CFDictionaryGetValue(v31, @"AUNBandEQ_FilterBandwidth");
                CFRetain(v38);
                valuePtr = 0.0;
                CFNumberGetValue(v38, kCFNumberFloat32Type, &valuePtr);
                CFRelease(v38);
                AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v23], v29, valuePtr);
              }

              CFRelease(v31);
            }

            ++v27;
            ++v29;
            --v28;
          }

          while (v28);
        }

        CFRelease(v21);
      }
    }
  }
}

void VoiceProcessorV6::RegisterEnableAutomaticChatFlavorNotificationListener(VoiceProcessorV6 *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2077);
  v3 = *(this + 2079);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (isAutomaticMicModeFeatureFlagOn() && (v4 = *MEMORY[0x277CE5820]) != 0)
  {
    CFRetain(*MEMORY[0x277CE5820]);
    v5 = CFGetTypeID(v4);
    if (v5 == CFStringGetTypeID())
    {
      v17 = v4;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v6 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v7 = (*v6 ? *v6 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          applesauce::CF::convert_to<std::string,0>(__p, v4);
          v8 = v16 >= 0 ? __p : __p[0];
          *buf = 136315650;
          *&buf[4] = "VoiceProcessor_v6.cpp";
          v20 = 1024;
          v21 = 1314;
          v22 = 2080;
          v23 = v8;
          _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> AutomaticChatFlavorEnabled notification name is %s", buf, 0x1Cu);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v9 = *(this + 1588);
      if (v9 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        if (!v17)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        v10 = VPLogScope(void)::scope;
        applesauce::CF::convert_to<std::string,0>(buf, v17);
        if (SBYTE3(v23) >= 0)
        {
          v11 = buf;
        }

        else
        {
          v11 = *buf;
        }

        CALegacyLog::log(v9, 3, v10, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1314, "RegisterEnableAutomaticChatFlavorNotificationListener", "AutomaticChatFlavorEnabled notification name is %s", v11);
        if (SBYTE3(v23) < 0)
        {
          operator delete(*buf);
        }
      }

      if (v17)
      {
        applesauce::CF::convert_to<std::string,0>(buf, v17);
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v18[0] = &unk_2881B10E8;
        v18[1] = v2;
        v18[2] = v3;
        v18[3] = v18;
        VoiceProcessor::CFNotificationDelegate::createDelegate();
      }

      v13 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v13, "Could not construct");
    }

    v17 = 0;
    CFRelease(v4);
  }

  else
  {
    v17 = 0;
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2724F20F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  applesauce::CF::StringRef::~StringRef(&a14);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(__CFDictionary const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<VoiceProcessorV6::RegisterEnableAutomaticChatFlavorNotificationListener(void)::$_0,std::allocator<VoiceProcessorV6::RegisterEnableAutomaticChatFlavorNotificationListener(void)::$_0>,void ()(__CFDictionary const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        (*(*v7 + 224))(v7, v4);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void std::__function::__func<VoiceProcessorV6::RegisterEnableAutomaticChatFlavorNotificationListener(void)::$_0,std::allocator<VoiceProcessorV6::RegisterEnableAutomaticChatFlavorNotificationListener(void)::$_0>,void ()(__CFDictionary const*)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<VoiceProcessorV6::RegisterEnableAutomaticChatFlavorNotificationListener(void)::$_0,std::allocator<VoiceProcessorV6::RegisterEnableAutomaticChatFlavorNotificationListener(void)::$_0>,void ()(__CFDictionary const*)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<VoiceProcessorV6::RegisterEnableAutomaticChatFlavorNotificationListener(void)::$_0,std::allocator<VoiceProcessorV6::RegisterEnableAutomaticChatFlavorNotificationListener(void)::$_0>,void ()(__CFDictionary const*)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B10E8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<VoiceProcessorV6::RegisterEnableAutomaticChatFlavorNotificationListener(void)::$_0,std::allocator<VoiceProcessorV6::RegisterEnableAutomaticChatFlavorNotificationListener(void)::$_0>,void ()(__CFDictionary const*)>::~__func(void *a1)
{
  *a1 = &unk_2881B10E8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<VoiceProcessorV6::RegisterEnableAutomaticChatFlavorNotificationListener(void)::$_0,std::allocator<VoiceProcessorV6::RegisterEnableAutomaticChatFlavorNotificationListener(void)::$_0>,void ()(__CFDictionary const*)>::~__func(void *a1)
{
  *a1 = &unk_2881B10E8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void VoiceProcessorV6::RegisterChatFlavorNotificationListener(VoiceProcessorV6 *this)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2077);
  v3 = *(this + 2079);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  applesauce::CF::StringRef::from_get(&cf, *MEMORY[0x277CE5830]);
  if (cf)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v4 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v5 = (*v4 ? *v4 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        if (!cf)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        applesauce::CF::convert_to<std::string,0>(__p, cf);
        if (v15 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "VoiceProcessor_v6.cpp";
        v19 = 1024;
        v20 = 1293;
        v21 = 2080;
        v22 = v6;
        _os_log_impl(&dword_2724B4000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> ChatFlavor notification name is %s", buf, 0x1Cu);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v7 = *(this + 1588);
    if (v7 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      if (!cf)
      {
        v12 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v12, "Could not construct");
      }

      v8 = VPLogScope(void)::scope;
      applesauce::CF::convert_to<std::string,0>(buf, cf);
      if (SBYTE3(v22) >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      CALegacyLog::log(v7, 3, v8, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1293, "RegisterChatFlavorNotificationListener", "ChatFlavor notification name is %s", v9);
      if (SBYTE3(v22) < 0)
      {
        operator delete(*buf);
      }
    }

    if (cf)
    {
      applesauce::CF::convert_to<std::string,0>(buf, cf);
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v17[0] = &unk_2881B10A0;
      v17[1] = v2;
      v17[2] = v3;
      v17[3] = v17;
      VoiceProcessor::CFNotificationDelegate::createDelegate();
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2724F27FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __cxa_free_exception(v27);
  applesauce::CF::StringRef::~StringRef(&a14);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<VoiceProcessorV6::RegisterChatFlavorNotificationListener(void)::$_0,std::allocator<VoiceProcessorV6::RegisterChatFlavorNotificationListener(void)::$_0>,void ()(__CFDictionary const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        (*(*v7 + 216))(v7, v4);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void std::__function::__func<VoiceProcessorV6::RegisterChatFlavorNotificationListener(void)::$_0,std::allocator<VoiceProcessorV6::RegisterChatFlavorNotificationListener(void)::$_0>,void ()(__CFDictionary const*)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<VoiceProcessorV6::RegisterChatFlavorNotificationListener(void)::$_0,std::allocator<VoiceProcessorV6::RegisterChatFlavorNotificationListener(void)::$_0>,void ()(__CFDictionary const*)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<VoiceProcessorV6::RegisterChatFlavorNotificationListener(void)::$_0,std::allocator<VoiceProcessorV6::RegisterChatFlavorNotificationListener(void)::$_0>,void ()(__CFDictionary const*)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B10A0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<VoiceProcessorV6::RegisterChatFlavorNotificationListener(void)::$_0,std::allocator<VoiceProcessorV6::RegisterChatFlavorNotificationListener(void)::$_0>,void ()(__CFDictionary const*)>::~__func(void *a1)
{
  *a1 = &unk_2881B10A0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<VoiceProcessorV6::RegisterChatFlavorNotificationListener(void)::$_0,std::allocator<VoiceProcessorV6::RegisterChatFlavorNotificationListener(void)::$_0>,void ()(__CFDictionary const*)>::~__func(void *a1)
{
  *a1 = &unk_2881B10A0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void VoiceProcessorV6::UpdateMicrophoneModeUIModule(VoiceProcessorV6 *this, char a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(this + 20);
  if (v2 > 6)
  {
    goto LABEL_113;
  }

  v30 = this + 15881;
  if (((1 << v2) & 0x57) != 0)
  {
    if (a2)
    {
      if (*(this + 2069))
      {
        v5 = *(this + 480);
        AVAUVoiceIOSetVoiceProcessingBypassedForBundleID();
      }

      else
        v9 = {;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2724B4000, v9, OS_LOG_TYPE_ERROR, "AUVoiceIO can't set vp bypass state for null bundleID", buf, 2u);
        }
      }
    }

    if ((a2 & 2) != 0)
    {
      if ((v30[687] & 1) == 0 && ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (v10 = *(v30 + 655)) : (v10 = VoiceProcessorV2::GetAutomaticChatFlavor(this)), v10 == 2)) && (*(this + 16544) & 4) != 0)
      {
        v12 = 2;
      }

      else if ((v30[687] & 1) != 0 || (*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (AutomaticChatFlavor = *(v30 + 655)) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this)), AutomaticChatFlavor != 1))
      {
        v12 = 0;
      }

      else
      {
        v12 = (*(this + 4136) >> 1) & 1;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v13 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v14 = (*v13 ? *v13 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "VoiceProcessor_v6.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1388;
          *&buf[18] = 1024;
          *&buf[20] = v12;
          _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Setting active chat flavor to value %d", buf, 0x18u);
        }
      }

      v15 = *(this + 1588);
      if (v15 && ((*v30 & 1) != 0 || v30[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v15, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1388, "UpdateMicrophoneModeUIModule", "Setting active chat flavor to value %d", v12);
      }

      vp::SetActiveChatFlavorForBundleID(v12, *(this + 2069));
      if (v12 != *(v30 + 659))
      {
        *(v30 + 659) = v12;
      }
    }

    if ((a2 & 4) != 0)
    {
      __p[0] = 0;
      __p[1] = 0;
      v32 = 0;
      operator new();
    }

    if ((a2 & 8) == 0)
    {
      goto LABEL_98;
    }

    memset(buf, 0, 24);
    CFArray = applesauce::CF::details::make_CFArrayRef<int>(buf);
    v33 = CFArray;
    if (*(this + 2069))
    {
      AVAUVoiceIOSetHiddenChatFlavorsForBundleID();
    }

    else
      v17 = {;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "AUVoiceIO can't set hidden ChatFlavors for null bundleID", buf, 2u);
      }
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v18 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v19 = (*v18 ? *v18 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = CFCopyDescription(CFArray);
        applesauce::CF::details::CFString_get_value<true>(__p, v20);
        if (v20)
        {
          CFRelease(v20);
        }

        v21 = __p;
        if (v32 < 0)
        {
          v21 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "VoiceProcessor_v6.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1417;
        *&buf[18] = 2080;
        *&buf[20] = v21;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Hidden chat flavors contain values : %s", buf, 0x1Cu);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v22 = *(this + 1588);
    if (!v22 || (*v30 & 1) == 0 && v30[1] != 1)
    {
      goto LABEL_96;
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v23 = VPLogScope(void)::scope;
    v24 = CFCopyDescription(CFArray);
    __p[0] = v24;
    applesauce::CF::details::CFString_get_value<true>(buf, v24);
    if (v24)
    {
      CFRelease(v24);
    }

    v25 = buf;
    if ((buf[23] & 0x80u) != 0)
    {
      v25 = *buf;
    }

    CALegacyLog::log(v22, 3, v23, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1417, "UpdateMicrophoneModeUIModule", "Hidden chat flavors contain values : %s", v25);
    if (buf[23] < 0)
    {
      operator delete(*buf);
      if (!CFArray)
      {
        goto LABEL_98;
      }
    }

    else
    {
LABEL_96:
      if (!CFArray)
      {
LABEL_98:
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v26 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
        {
          v27 = (*v26 ? *v26 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "VoiceProcessor_v6.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1420;
            _os_log_impl(&dword_2724B4000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Updated MicrophoneModeUIModule", buf, 0x12u);
          }
        }

        v28 = *(this + 1588);
        if (v28 && ((*v30 & 1) != 0 || v30[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v28, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1420, "UpdateMicrophoneModeUIModule", "Updated MicrophoneModeUIModule");
        }

        goto LABEL_113;
      }
    }

    CFRelease(CFArray);
    goto LABEL_98;
  }

  if (v2 == 5)
  {
    if ((a2 & 2) != 0)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v6 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v7 = (*v6 ? *v6 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "VoiceProcessor_v6.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1427;
          *&buf[18] = 1024;
          *&buf[20] = 0;
          _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Setting active chat flavor to value %d", buf, 0x18u);
        }
      }

      v8 = *(this + 1588);
      if (v8 && ((*v30 & 1) != 0 || v30[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v8, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1427, "UpdateMicrophoneModeUIModule", "Setting active chat flavor to value %d", 0);
      }

      vp::SetActiveChatFlavorForBundleID(0, *(this + 2069));
      if (*(v30 + 659))
      {
        *(v30 + 659) = 0;
      }
    }

    if ((a2 & 4) != 0)
    {
      operator new();
    }
  }

LABEL_113:
  v29 = *MEMORY[0x277D85DE8];
}

void sub_2724F3988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<int>(int **a1)
{
  v2 = a1[1] - *a1;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v12, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v13;
    do
    {
      v6 = *v3;
      if (v5 >= v14)
      {
        v7 = (v5 - v12) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        v8 = (v14 - v12) >> 2;
        if (v8 <= v7 + 1)
        {
          v8 = v7 + 1;
        }

        if (v14 - v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        v18 = &v12;
        if (v9)
        {
          std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v9);
        }

        v15[0] = 0;
        v15[1] = (8 * v7);
        v16 = 8 * v7;
        v17 = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,int,void,0>((8 * v7), v6);
        v16 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v12, v15);
        v5 = v13;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v15);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,int,void,0>(v5++, *v3);
      }

      v13 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  v10 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v12);
  v15[0] = &v12;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](v15);
  return v10;
}

void sub_2724F3C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void *std::vector<applesauce::CF::NumberRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(const void ***a1)
{
  std::vector<void const*>::vector[abi:ne200100](&__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  v4 = __p;
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
    v4 = __p;
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(v4, v9);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return CFArray;
}

void sub_2724F3D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,int,void,0>(CFNumberRef *a1, int a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

void std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void *std::vector<void const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      std::allocator<void const*>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2724F4028(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<void const*>(const void **values, uint64_t a2)
{
  result = CFArrayCreate(0, values, (a2 - values) >> 3, MEMORY[0x277CBF128]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

uint64_t VoiceProcessorV6::IsAutomaticChatFlavorEnabled(VoiceProcessorV6 *this, const applesauce::CF::StringRef *a2)
{
  if (*(this + 2069))
  {
    return vp::IsAutomaticChatFlavorEnabledForBundleID((this + 16552), a2);
  }

  else
  {
    return 0;
  }
}

vp *VoiceProcessorV6::GetRequestedChatFlavor(VoiceProcessorV6 *this, const applesauce::CF::StringRef *a2)
{
  result = *(this + 2069);
  if (result)
  {
    return vp::GetRequestedChatFlavorForBundleID(result, a2);
  }

  return result;
}

uint64_t VoiceProcessorV6::CalculateSupportedChatflavors(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16544) & 0xFFFFFFFFFFFFFFF8;
  if (*(this + 16568) == 1)
  {
    v3 = v2 | 1;
LABEL_5:
    v1[2068] = v3;
    return this;
  }

  if (*(this + 2262) == 1)
  {
    v3 = v2 | 4;
    goto LABEL_5;
  }

  *(this + 16544) = v2 | 1;
  if ((*(*this + 752))(this) && (*(*v1 + 744))(v1))
  {
    v1[2068] |= 4uLL;
  }

  this = (*(*v1 + 768))(v1);
  if (this)
  {
    this = (*(*v1 + 760))(v1);
    if (this)
    {
      v3 = v1[2068] | 2;
      goto LABEL_5;
    }
  }

  return this;
}

uint64_t VoiceProcessorV6::SetChatFlavor(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16536) != a2)
  {
    v24 = a1 + 2408;
    v25 = (*(*(a1 + 2408) + 16))();
    atomic_fetch_add((a1 + 2496), 1u);
    while (*(a1 + 2500))
    {
      usleep(0x1F4u);
    }

    v6 = (a1 + 15881);
    if (*(a1 + 16568))
    {
      AutomaticChatFlavor = 0;
    }

    else if (*(a1 + 2262))
    {
      AutomaticChatFlavor = 2;
    }

    else if (*(a1 + 2288) == 1)
    {
      AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(a1);
    }

    else
    {
      AutomaticChatFlavor = *(a1 + 16536);
    }

    *(a1 + 16536) = a2;
    if (*v6 == 1)
    {
      VoiceProcessorV2::PListWriteSetPropertyParameters(a1, 1718384242);
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v8 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v9 = (*v8 ? *v8 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 16536);
        *buf = 136315650;
        v27 = "VoiceProcessor_v6.cpp";
        v28 = 1024;
        v29 = 1234;
        v30 = 1024;
        v31 = v10;
        _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> VP chat flavor set to %u", buf, 0x18u);
      }
    }

    v11 = *(a1 + 12704);
    if (v11 && ((*v6 & 1) != 0 || *(a1 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v11, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1234, "SetChatFlavor", "VP chat flavor set to %u", *(a1 + 16536));
    }

    if (*(a1 + 16536))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v12 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v13 = (*v12 ? *v12 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v27 = "VoiceProcessor_v6.cpp";
          v28 = 1024;
          v29 = 1237;
          _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Forcing bypass to false due to chat flavor", buf, 0x12u);
        }
      }

      v14 = *(a1 + 12704);
      if (v14 && ((*v6 & 1) != 0 || *(a1 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v14, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1237, "SetChatFlavor", "Forcing bypass to false due to chat flavor");
      }

      *(a1 + 480) = 0;
    }

    if (*(a1 + 16568))
    {
      v15 = 0;
    }

    else if (*(a1 + 2262))
    {
      v15 = 2;
    }

    else if (*(a1 + 2288) == 1)
    {
      v15 = VoiceProcessorV2::GetAutomaticChatFlavor(a1);
    }

    else
    {
      v15 = *(a1 + 16536);
    }

    if (v15 != AutomaticChatFlavor)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v16 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v17 = (*v16 ? *v16 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v27 = "VoiceProcessor_v6.cpp";
          v28 = 1024;
          v29 = 1244;
          _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (SetChatFlavor)", buf, 0x12u);
        }
      }

      v18 = *(a1 + 12704);
      if (v18 && ((*v6 & 1) != 0 || *(a1 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v18, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1244, "SetChatFlavor", "Begin self-reinit (SetChatFlavor)");
      }

      VoiceProcessorV2::ResetTimestampsAndInitializeVP(a1, 1, v4, v5);
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
          *buf = 136315394;
          v27 = "VoiceProcessor_v6.cpp";
          v28 = 1024;
          v29 = 1246;
          _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (SetChatFlavor)", buf, 0x12u);
        }
      }

      v21 = *(a1 + 12704);
      if (v21 && ((*v6 & 1) != 0 || *(a1 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v21, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1246, "SetChatFlavor", "End self-reinit (SetChatFlavor)");
      }
    }

    atomic_fetch_add((a1 + 2496), 0xFFFFFFFF);
    if (v25 == 1)
    {
      (*(*v24 + 24))(v24);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_2724F48A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoiceProcessorV6::ApplyPortSubtypeTuningOverride(VoiceProcessorV6 *this, unsigned int a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = this + 12288;
  if ((*(*this + 536))(this, **(this + 294), *(this + 600), **(this + 297)))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v5 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v6 = (*v5 ? *v5 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(v52, *(this + 600));
        *buf = 136315650;
        *&buf[4] = "VoiceProcessor_v6.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1158;
        *&buf[18] = 2080;
        *&buf[20] = v52;
        _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> known headphones with HW EQ AU preset override detected %s", buf, 0x1Cu);
      }
    }

    v7 = *(this + 1588);
    if (v7 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v8 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(this + 600));
      CALegacyLog::log(v7, 5, v8, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1158, "ApplyPortSubtypeTuningOverride", "known headphones with HW EQ AU preset override detected %s", buf);
    }

    v69 = 0u;
    memset(v70, 0, sizeof(v70));
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    memset(buf, 0, sizeof(buf));
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(v52, a2);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v55, *(this + 24));
    snprintf(buf, 0xFFuLL, "%s_vprx_%s", v52, &v55);
    v9 = *(this + 343);
    v55 = CFStringCreateWithCString(0, "Generic", 0x600u);
    v56 = 1;
    cf = CFStringCreateWithCString(0, "Headphones", 0x600u);
    v51 = 1;
    v48 = CFStringCreateWithCString(0, buf, 0x600u);
    v49 = 1;
    *v52 = &v55;
    *&v52[8] = &cf;
    *&v52[16] = &v48;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v9, v52, 3u, 1u);
    CACFString::~CACFString(&v48);
    CACFString::~CACFString(&cf);
    CACFString::~CACFString(&v55);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v11 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v12 = (*v11 ? *v11 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = (this + 8);
          if (*(this + 31) < 0)
          {
            v13 = *v13;
          }

          *v52 = 136315906;
          *&v52[4] = "VoiceProcessor_v6.cpp";
          *&v52[12] = 1024;
          *&v52[14] = 1166;
          *&v52[18] = 2080;
          *&v52[20] = v13;
          v53 = 2080;
          v54 = buf;
          _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> : failed to find Headphone EQ aupreset: %s/Generic/Headphones/%s", v52, 0x26u);
        }
      }

      v14 = *(this + 1588);
      if (v14 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          v45 = *(this + 1588);
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          v14 = v45;
        }

        v15 = this + 8;
        if (*(this + 31) < 0)
        {
          v15 = *v15;
        }

        CALegacyLog::log(v14, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1166, "ApplyPortSubtypeTuningOverride", ": failed to find Headphone EQ aupreset: %s/Generic/Headphones/%s", v15, buf);
      }

      goto LABEL_142;
    }

    v16 = TuningPListMgr::lookupPlist_(*(this + 343), buf, 1u);
    cf = v16;
    if (v16)
    {
      CFRetain(v16);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 1474, 0, 0, 0, 8uLL, &cf, 1);
      CFRelease(cf);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v17 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v18 = (*v17 ? *v17 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *v52 = 136315906;
          *&v52[4] = "VoiceProcessor_v6.cpp";
          *&v52[12] = 1024;
          *&v52[14] = 1177;
          *&v52[18] = 2080;
          *&v52[20] = buf;
          v53 = 2080;
          v54 = "(DL-)HwEQ";
          _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found Headphone EQ aupreset:%s for %s", v52, 0x26u);
        }
      }

      v19 = *(this + 1588);
      if (v19 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v19, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1177, "ApplyPortSubtypeTuningOverride", "found Headphone EQ aupreset:%s for %s", buf, "(DL-)HwEQ");
      }

      std::string::basic_string[abi:ne200100]<0>(v52, "(DL-)HwEQ");
      v55 = v52;
      v20 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 576, v52);
      std::string::__assign_external((v20 + 5), buf);
      if ((v52[23] & 0x80000000) != 0)
      {
        operator delete(*v52);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v21 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v22 = (*v21 ? *v21 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *v52 = 136315906;
          *&v52[4] = "VoiceProcessor_v6.cpp";
          *&v52[12] = 1024;
          *&v52[14] = 1180;
          *&v52[18] = 2080;
          *&v52[20] = buf;
          v53 = 2080;
          v54 = "(DL-)HwEQ";
          _os_log_impl(&dword_2724B4000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> : failed to load Headphone EQ tuning aupreset:%s for %s", v52, 0x26u);
        }
      }

      v23 = *(this + 1588);
      if (v23 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v23, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1180, "ApplyPortSubtypeTuningOverride", ": failed to load Headphone EQ tuning aupreset:%s for %s", buf, "(DL-)HwEQ");
      }
    }
  }

  if (!(*(*this + 728))(this, **(this + 294), *(this + 600)) || (v24 = *(this + 22), v24 != 1718628662) && v24 != 1718628408)
  {
LABEL_141:
    TuningInSubdirs = 0;
    goto LABEL_142;
  }

  inData = 0;
  AudioUnitSetProperty(*(this + 406), 0x15u, 0, 0, &inData, 4u);
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v25 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v26 = (*v25 ? *v25 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(v52, *(this + 600));
      *buf = 136315650;
      *&buf[4] = "VoiceProcessor_v6.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1188;
      *&buf[18] = 2080;
      *&buf[20] = v52;
      _os_log_impl(&dword_2724B4000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> known headphones with ReverbSuppressor AU preset override detected %s", buf, 0x1Cu);
    }
  }

  v27 = *(this + 1588);
  if (v27 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v28 = VPLogScope(void)::scope;
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(this + 600));
    CALegacyLog::log(v27, 5, v28, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1188, "ApplyPortSubtypeTuningOverride", "known headphones with ReverbSuppressor AU preset override detected %s", buf);
  }

  v68 = xmmword_272759158;
  v69 = unk_272759168;
  memset(v70, 0, sizeof(v70));
  v64 = xmmword_272759118;
  v65 = unk_272759128;
  v66 = xmmword_272759138;
  v67 = unk_272759148;
  v60 = xmmword_2727590D8;
  v61 = unk_2727590E8;
  v62 = xmmword_2727590F8;
  v63 = unk_272759108;
  strcpy(buf, "vptx_reverbsuppressor_telephony");
  v58 = xmmword_2727590B8;
  v59 = unk_2727590C8;
  v29 = *(this + 343);
  v55 = CFStringCreateWithCString(0, "Generic", 0x600u);
  v56 = 1;
  cf = CFStringCreateWithCString(0, "Headphones", 0x600u);
  v51 = 1;
  v48 = CFStringCreateWithCString(0, buf, 0x600u);
  v49 = 1;
  *v52 = &v55;
  *&v52[8] = &cf;
  *&v52[16] = &v48;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v29, v52, 3u, 1u);
  CACFString::~CACFString(&v48);
  CACFString::~CACFString(&cf);
  CACFString::~CACFString(&v55);
  if (!TuningInSubdirs)
  {
    v35 = TuningPListMgr::lookupPlist_(*(this + 343), buf, 1u);
    cf = v35;
    if (v35)
    {
      CFRetain(v35);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 1054, 0, 0, 0, 8uLL, &cf, 1);
      CFRelease(cf);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v36 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v37 = (*v36 ? *v36 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *v52 = 136315906;
          *&v52[4] = "VoiceProcessor_v6.cpp";
          *&v52[12] = 1024;
          *&v52[14] = 1205;
          *&v52[18] = 2080;
          *&v52[20] = buf;
          v53 = 2080;
          v54 = "(UL-)ReverbSuppressor";
          _os_log_impl(&dword_2724B4000, v37, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found Headphone ReverbSuppressor aupreset:%s for %s", v52, 0x26u);
        }
      }

      v38 = *(this + 1588);
      if (v38 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v38, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1205, "ApplyPortSubtypeTuningOverride", "found Headphone ReverbSuppressor aupreset:%s for %s", buf, "(UL-)ReverbSuppressor");
      }

      std::string::basic_string[abi:ne200100]<0>(v52, "(UL-)ReverbSuppressor");
      v55 = v52;
      v39 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 581, v52);
      std::string::__assign_external((v39 + 5), buf);
      if ((v52[23] & 0x80000000) != 0)
      {
        operator delete(*v52);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v40 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v41 = (*v40 ? *v40 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *v52 = 136315906;
          *&v52[4] = "VoiceProcessor_v6.cpp";
          *&v52[12] = 1024;
          *&v52[14] = 1209;
          *&v52[18] = 2080;
          *&v52[20] = buf;
          v53 = 2080;
          v54 = "(UL-)ReverbSuppressor";
          _os_log_impl(&dword_2724B4000, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> : failed to load Headphone EQ tuning aupreset:%s for %s", v52, 0x26u);
        }
      }

      v42 = *(this + 1588);
      if (v42 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v42, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1209, "ApplyPortSubtypeTuningOverride", ": failed to load Headphone EQ tuning aupreset:%s for %s", buf, "(UL-)ReverbSuppressor");
      }
    }

    goto LABEL_141;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v30 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
  {
    v31 = (*v30 ? *v30 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = (this + 8);
      if (*(this + 31) < 0)
      {
        v32 = *v32;
      }

      *v52 = 136315906;
      *&v52[4] = "VoiceProcessor_v6.cpp";
      *&v52[12] = 1024;
      *&v52[14] = 1194;
      *&v52[18] = 2080;
      *&v52[20] = v32;
      v53 = 2080;
      v54 = buf;
      _os_log_impl(&dword_2724B4000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> : failed to find Headphone ReverbSuppressor aupreset: %s/Generic/Headphones/%s", v52, 0x26u);
    }
  }

  v33 = *(this + 1588);
  if (v33 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      v46 = *(this + 1588);
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      v33 = v46;
    }

    v34 = this + 8;
    if (*(this + 31) < 0)
    {
      v34 = *v34;
    }

    CALegacyLog::log(v33, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1194, "ApplyPortSubtypeTuningOverride", ": failed to find Headphone ReverbSuppressor aupreset: %s/Generic/Headphones/%s", v34, buf);
  }

LABEL_142:
  v43 = *MEMORY[0x277D85DE8];
  return TuningInSubdirs;
}

void sub_2724F5800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_2724F5AD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t VoiceProcessorV6::portSubTypeCanOverrideHWEQ(VoiceProcessorV6 *this, int a2, int a3)
{
  v3 = a3 == 1214329654 || a3 == 1214394677;
  v4 = (a3 - 1647718502) < 2 || v3;
  if (a2 == 1885892727)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

BOOL VoiceProcessorV6::ShouldBypassTuningLoading(VoiceProcessorV6 *this)
{
  if ((*(this + 16568) & 1) == 0 && ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (AutomaticChatFlavor = *(this + 4134)) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this)), AutomaticChatFlavor == 2)))
  {
    v2 = (*(this + 16544) >> 2) & 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 2093) == 1 && v2 == 0)
  {
    return 1;
  }

  v5 = **(this + 294);
  if (v5 == 1886680175)
  {
    v6 = **(this + 297);
    v7 = 1886680169;
  }

  else
  {
    if (v5 != 1885892727 || *(this + 600) != 1752709424)
    {
      return (*(this + 19) - 49) < 3;
    }

    v6 = **(this + 297);
    v7 = 1886222185;
  }

  if (v6 == v7)
  {
    return 1;
  }

  return (*(this + 19) - 49) < 3;
}

uint64_t VoiceProcessorV6::LoadTuningsPlists(VoiceProcessorV6 *this)
{
  v77 = *MEMORY[0x277D85DE8];
  v2 = this + 15881;
  v3 = **(this + 294);
  v4 = *(this + 600);
  v5 = **(this + 297);
  v6 = *(this + 601);
  v7 = (*(*this + 504))(this, v3, v4, v5, v6, 0);
  v8 = (*(*this + 512))(this, v3, v4, v5, v6, 0);
  v9 = *(this + 23);
  switch(v9)
  {
    case 1835627363:
      v13 = (*(*this + 736))(this, v7, v8);
      if ((v13 & 0x100000000) != 0)
      {
        LODWORD(v10) = v13;
      }

      else
      {
        LODWORD(v10) = 1835627363;
      }

      goto LABEL_50;
    case 1986618467:
      if ((v2[687] & 1) == 0)
      {
        if ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (AutomaticChatFlavor = *(v2 + 655)) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this)), AutomaticChatFlavor == 2))
        {
          if ((*(this + 16544) & 4) != 0)
          {
            LODWORD(v10) = 1986622319;
            goto LABEL_50;
          }
        }
      }

      LODWORD(v10) = 1986605620;
LABEL_35:
      if ((v2[687] & 1) == 0 && (*(this + 2262) & 1) == 0)
      {
        v17 = *(this + 2288) == 1 ? VoiceProcessorV2::GetAutomaticChatFlavor(this) : *(v2 + 655);
        if (v17 == 1 && (*(this + 16544) & 2) != 0)
        {
          LODWORD(v10) = 1986884451;
        }
      }

      goto LABEL_50;
    case 1987012963:
      LODWORD(v10) = (*(*this + 488))(this);
      if ((v2[687] & 1) == 0)
      {
        if ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (v11 = *(v2 + 655)) : (v11 = VoiceProcessorV2::GetAutomaticChatFlavor(this)), v11 == 2))
        {
          if ((*(this + 16544) & 4) != 0)
          {
            v18 = (*(*this + 648))(this);
            if ((v18 & 0x100000000) != 0)
            {
              LODWORD(v10) = v18;
            }

            else
            {
              LODWORD(v10) = 1986622319;
            }

            goto LABEL_50;
          }
        }
      }

      goto LABEL_35;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v14 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
  {
    v15 = (*v14 ? *v14 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(&v76, *(this + 23));
      *buf = 136315650;
      *&buf[4] = "VoiceProcessor_v6.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 973;
      *&buf[18] = 2080;
      *&buf[20] = &v76;
      _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Unknown MainChatCategory: %s", buf, 0x1Cu);
    }
  }

  v10 = *(this + 1588);
  if (v10)
  {
    if ((*v2 & 1) != 0 || v2[1] == 1)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v16 = VPLogScope(void)::scope;
      CAX4CCString::CAX4CCString(buf, *(this + 23));
      CALegacyLog::log(v10, 1, v16, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 973, "LoadTuningsPlists", "Unknown MainChatCategory: %s", buf);
    }

    LODWORD(v10) = 0;
  }

LABEL_50:
  IsGenericRoute = VoiceProcessorV2::IsGenericRoute(this);
  VoiceProcessorV2::GetHardwareModelNameForTuning(&v76, this, IsGenericRoute);
  VoiceProcessorV2::GetRouteSpecificGenericTuningSubDir(buf, this);
  if (buf[24] == 1)
  {
    if ((buf[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v74, *buf, *&buf[8]);
    }

    else
    {
      v74 = *buf;
    }

    v20 = std::string::insert(&v74, 0, "/", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v75.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v75.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v75;
    }

    else
    {
      v22 = v75.__r_.__value_.__r.__words[0];
    }

    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v75.__r_.__value_.__l.__size_;
    }

    std::string::append(&v76, v22, size);
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if ((buf[24] & 1) != 0 && (buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v76;
  }

  else
  {
    v24 = v76.__r_.__value_.__r.__words[0];
  }

  VoiceProcessorV2::GetVersionNameForTuning(buf, this);
  v25 = buf[23];
  v26 = *buf;
  v27 = VoiceProcessorV2::IsGenericRoute(this);
  VoiceProcessorV2::GetDeviceCodeNameForTuning(&v75, this, v27);
  if (v25 >= 0)
  {
    v28 = buf;
  }

  else
  {
    v28 = v26;
  }

  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v75;
  }

  else
  {
    v29 = v75.__r_.__value_.__r.__words[0];
  }

  VoiceProcessorV2::TryLoadingTuningPlists(this, v24, v28, v29, v7, v8, v10);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  *(this + 24) = v10;
  if (*(this + 4600))
  {
    v30 = 0;
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v31 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v32 = (*v31 ? *v31 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v75, v7);
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v74, v8);
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v67, v10);
        *buf = 136316162;
        *&buf[4] = "VoiceProcessor_v6.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 988;
        *&buf[18] = 2080;
        *&buf[20] = &v75;
        v70 = 2080;
        v71 = &v74;
        v72 = 2080;
        v73 = &v67;
        _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> NEW TUNING LOGIC <SERIOUS ERROR>: no tuning plists found. Using default paramters!!! Use case %s-%s-%s", buf, 0x30u);
      }
    }

    v33 = *(this + 1588);
    if (v33 && ((*v2 & 1) != 0 || v2[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v34 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, v7);
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v75, v8);
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v74, v10);
      CALegacyLog::log(v33, 1, v34, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 988, "LoadTuningsPlists", "NEW TUNING LOGIC <SERIOUS ERROR>: no tuning plists found. Using default paramters!!! Use case %s-%s-%s", buf, &v75, &v74);
    }

    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(__s, v7);
    std::string::basic_string[abi:ne200100]<0>(&v61, __s);
    v35 = std::string::insert(&v61, 0, "No tuning plists found, using default paramters. Use case ", 0x3AuLL);
    v36 = *&v35->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    v37 = std::string::append(&v62, "-", 1uLL);
    v38 = *&v37->__r_.__value_.__l.__data_;
    v67.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v67.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(v65, v8);
    std::string::basic_string[abi:ne200100]<0>(v59, v65);
    if ((v60 & 0x80u) == 0)
    {
      v39 = v59;
    }

    else
    {
      v39 = v59[0];
    }

    if ((v60 & 0x80u) == 0)
    {
      v40 = v60;
    }

    else
    {
      v40 = v59[1];
    }

    v41 = std::string::append(&v67, v39, v40);
    v42 = *&v41->__r_.__value_.__l.__data_;
    v74.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v74.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    v43 = std::string::append(&v74, "-", 1uLL);
    v44 = *&v43->__r_.__value_.__l.__data_;
    v75.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&v75.__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(v64, v10);
    std::string::basic_string[abi:ne200100]<0>(v57, v64);
    if ((v58 & 0x80u) == 0)
    {
      v45 = v57;
    }

    else
    {
      v45 = v57[0];
    }

    if ((v58 & 0x80u) == 0)
    {
      v46 = v58;
    }

    else
    {
      v46 = v57[1];
    }

    v47 = std::string::append(&v75, v45, v46);
    v48 = v47->__r_.__value_.__r.__words[0];
    v68[0] = v47->__r_.__value_.__l.__size_;
    *(v68 + 7) = *(&v47->__r_.__value_.__r.__words[1] + 7);
    v49 = HIBYTE(v47->__r_.__value_.__r.__words[2]);
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, "vp_tuning_setup_error");
    v63 = __p;
    v50 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, __p);
    v51 = v50;
    if (*(v50 + 79) < 0)
    {
      operator delete(*(v50 + 56));
    }

    v52 = v68[0];
    *(v51 + 56) = v48;
    *(v51 + 64) = v52;
    *(v51 + 71) = *(v68 + 7);
    *(v51 + 79) = v49;
    if (v56 < 0)
    {
      operator delete(__p[0]);
    }

    if (v58 < 0)
    {
      operator delete(v57[0]);
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (v60 < 0)
    {
      operator delete(v59[0]);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    CAAudioStatisticsSendMessage(*(this + 271), *(this + 544), buf, 6);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&buf[8]);
    v30 = 0xFFFFFFFFLL;
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  v53 = *MEMORY[0x277D85DE8];
  return v30;
}

void sub_2724F6B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (*(v55 - 105) < 0)
  {
    operator delete(*(v55 - 128));
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoiceProcessorV6::GetMicPortCodeForTuning(unsigned __int8 *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*(*a1 + 624))(a1))
  {
    return a4;
  }

  result = 1886222185;
  v12 = a1[2260];
  if ((a6 & 0x1FFFFFFFFLL) != 0x16D656463)
  {
    v12 = 0;
  }

  if (a4 != 1886216820 || v12)
  {
    v13 = a2 == 1886152047 && a4 == 1886152041;
    v14 = !v13;
    if ((v14 | v12))
    {
      if (a3 != 1781740087 || (result = 909127729, a4 != 1886222185))
      {
        if (a4 == 1885892727 && a3 == 1781805623)
        {
          return 909127730;
        }

        else
        {
          return a4;
        }
      }
    }
  }

  return result;
}

uint64_t VoiceProcessorV6::GetRefPortCodeForTuning(unsigned __int8 *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v12 = _os_feature_enabled_impl();
  if (a2 == 1885889645 && (v12 & 1) != 0)
  {
    return 1886745455;
  }

  if ((*(*a1 + 624))(a1))
  {
    return a2;
  }

  v13 = 1885433971;
  v14 = a1[2260];
  if ((a6 & 0x1FFFFFFFFLL) != 0x16D656463)
  {
    v14 = 0;
  }

  if (a2 != 1885631344 && a2 != 1885889645)
  {
    if (a2 == 1885892706)
    {
      v13 = 1885892727;
      if (v14)
      {
        v15 = 0;
LABEL_15:
        if (a3 == 1781805623 && v15)
        {
          v13 = 909127730;
        }

        else
        {
          v13 = a2;
        }
      }
    }

    else
    {
      v15 = a2 == 1885892727;
      if (a2 != 1885892727 || a3 != 1781740087)
      {
        goto LABEL_15;
      }

      v13 = 909127729;
    }
  }

  if (a5 == 1886152047)
  {
    v13 = 1886152047;
  }

  if (v14)
  {
    v16 = 1886152047;
  }

  else
  {
    v16 = 1885892727;
  }

  if (v13 == 1886152047 && a4 == 1886152041)
  {
    return v16;
  }

  else
  {
    return v13;
  }
}

uint64_t VoiceProcessorV6::ShouldThirdPartyAppUseFaceTimeDSPAndTuning(VoiceProcessorV6 *this)
{
  if (**(this + 297) != 1886222185 || **(this + 294) != 1885892727)
  {
    return 0;
  }

  v2 = *(this + 600);
  if (v2 != 1781805623 && v2 != 1781740087)
  {
    return 0;
  }

  if ((*(this + 16568) & 1) == 0)
  {
    if ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (AutomaticChatFlavor = *(this + 4134)) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this)), AutomaticChatFlavor == 2))
    {
      if ((*(this + 16544) & 4) != 0)
      {
        return 1;
      }
    }
  }

  if ((*(this + 16568) & 1) == 0 && (*(this + 2262) & 1) == 0 && (*(this + 2288) != 1 ? (v5 = *(this + 4134)) : (v5 = VoiceProcessorV2::GetAutomaticChatFlavor(this)), v5 == 1))
  {
    return (*(this + 16544) >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t VoiceProcessorV6::GetVPVocoderOrUseCaseOverrideTuning4CC(VoiceProcessorV6 *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = 1986998836;
  v3 = *(this + 554);
  if (v3 > 23999)
  {
    if (v3 == 24000)
    {
      goto LABEL_27;
    }

    if (v3 == 32000)
    {
      if ((*(*this + 232))(this))
      {
        v2 = 1986999090;
      }

      else
      {
        v2 = 1986998836;
      }

      goto LABEL_27;
    }
  }

  else
  {
    if (v3 == 8000)
    {
      v2 = 1986998328;
      goto LABEL_27;
    }

    if (v3 == 16000)
    {
      v2 = 1986998582;
      goto LABEL_27;
    }
  }

  if (v3 >= 0x7D01)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v4 = v3;
    v5 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v6 = (*v5 ? *v5 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v11 = "VoiceProcessor_v6.cpp";
        v12 = 1024;
        v13 = 1023;
        v14 = 2048;
        v15 = v4;
        _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Unexpected vocoder sample rate = %f! Use 'vo24' instead.", buf, 0x1Cu);
      }
    }

    v7 = *(this + 1588);
    if (v7 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v7, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1023, "GetVPVocoderOrUseCaseOverrideTuning4CC", "Unexpected vocoder sample rate = %f! Use 'vo24' instead.", v4);
    }
  }

LABEL_27:
  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t VoiceProcessorV6::SetupDownlinkLiteAUChain(VoiceProcessorV6 *this)
{
  result = (*(*this + 408))(this);
  *(this + 1108) &= 0xFFFFFFFF3FFFFFFFLL;
  return result;
}

uint64_t *VoiceProcessorV6::SetupDownlinkBasicAUChain(VoiceProcessorV6 *this)
{
  VoiceProcessorV4::SetupDownlinkBasicAUChain(this);
  *(this + 1108) = *(this + 1108) & 0xBFFF7FFFFD5FFFFFLL | 0x800002800000;
  v2 = VoiceProcessorV2::DetermineRouteBasedPreGain(this);
  AUPropAndParamHelper::AddItemToAUParamList(this + 1179, 7, v2);
  AUPropAndParamHelper::AddItemToAUParamList(this + 1179, 5, *(this + 3155));

  return AUPropAndParamHelper::AddItemToAUParamList(this + 1131, 26, v2);
}

uint64_t VoiceProcessorV6::SetupUplink_SCLP_PMWF_BeamIt(uint64_t this, unsigned int a2)
{
  if (a2 >= 4)
  {
    v2 = this;
    v3 = *(this + 4688) | 0x100002C02800500;
    *(this + 4688) = v3;
    if ((*(this + 16568) & 1) == 0 && (*(this + 2262) & 1) == 0)
    {
      if (*(this + 2288) == 1)
      {
        this = VoiceProcessorV2::GetAutomaticChatFlavor(this);
        v3 = *(v2 + 4688);
      }

      else
      {
        this = *(this + 16536);
      }

      if (this == 1)
      {
        v3 |= (*(v2 + 16544) << 50) & 0x8000000000000;
      }
    }

    *(v2 + 4688) = v3 & 0xFDFFFFFFFFFFFFFFLL;
    *(v2 + 12536) = 9;
  }

  return this;
}

uint64_t VoiceProcessorV6::SetupUplink_MS(uint64_t this, unsigned int a2)
{
  if (a2 != 1)
  {
    v2 = *(this + 4688);
    v3 = v2 | 0x101;
    v4 = v2 | 0x107;
    v5 = 287;
    if (a2 == 3)
    {
      v5 = 271;
    }

    v6 = v2 | v5;
    if (a2 < 3)
    {
      v6 = v4;
    }

    if (!a2)
    {
      v6 = v3;
    }

    *(this + 4688) = v6 & 0xF9FFFFFFBBFFF7FFLL | 0x600000004000800;
  }

  return this;
}

uint64_t VoiceProcessorV6::SetupUplink_BF_MS(uint64_t this, unsigned int a2, char a3)
{
  if (a2 < 2)
  {
    if (a2 && (a3 & 1) == 0)
    {
      v4 = *(this + 4688) | 2;
      goto LABEL_9;
    }
  }

  else
  {
    v3 = *(this + 4688);
    *(this + 4688) = v3 | 0xC0800101;
    if ((a3 & 1) == 0)
    {
      *(this + 4688) = v3 | 0xC0800107;
      if (a2 != 2)
      {
        *(this + 4688) = v3 | 0xC080010FLL;
        if (a2 >= 4)
        {
          v4 = v3 | 0xC080011FLL;
LABEL_9:
          *(this + 4688) = v4;
        }
      }
    }
  }

  return this;
}

uint64_t VoiceProcessorV6::SetupUplink_MMNS(uint64_t this, unsigned int a2)
{
  if (a2 != 1)
  {
    v2 = *(this + 4688) & 0xFD3FAFFFFF7FFEFFLL;
    *(this + 4688) = v2 | 0x80500000800100;
    if (a2)
    {
      *(this + 4688) = v2 | 0x80500000800106;
      if (a2 >= 3)
      {
        *(this + 4688) = v2 | 0x8050000080010ELL;
        if (a2 != 3)
        {
          *(this + 4688) = v2 | 0x48050030380051ELL;
        }
      }
    }
  }

  return this;
}

uint64_t VoiceProcessorV6::SetupUplinkLiteAUChain(int8x16_t *this)
{
  v2 = &this[293];
  v7 = this + 293;
  v8 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(&v7);
  v3 = this[293];
  this[293] = vorrq_s8(v3, xmmword_2727564B0);
  if (this[105].i8[4] == 1)
  {
    *v2 = v3.i64[0] | 0xD000080000400080;
  }

  v4 = this[144].i32[0];
  if (v4 == 1 || v4 == -1)
  {
    this[293].i64[1] = v3.i64[1] | 0x12;
  }

  result = (*(this->i64[0] + 112))(this);
  if (result >= 8)
  {
    *v2 |= 0x20000000uLL;
  }

  return result;
}

void VoiceProcessorV6::SetupUplinkBasicAUChain(int8x16_t *this)
{
  v2 = &this[293];
  v7 = this + 293;
  v8 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(&v7);
  v4 = this[293];
  this[293] = vorrq_s8(v4, xmmword_2727564C0);
  if (this[105].i8[4] == 1)
  {
    *v2 = v4.i64[0] | 0xD240080000400080;
  }

  v5 = this[144].i32[0];
  if (v5 == 1 || v5 == -1)
  {
    this[293].i64[1] = v4.i64[1] | 0x13;
  }

  if ((this[1035].i8[8] & 1) == 0)
  {
    if ((this[141].i8[6] & 1) != 0 || (this[143].i8[0] != 1 ? (AutomaticChatFlavor = this[1033].u32[2]) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this)), AutomaticChatFlavor == 2))
    {
      if ((this[1034].i8[0] & 4) != 0)
      {
        this[293].i64[0] |= 0x800000000000000uLL;
        if (this[141].i8[6] == 1)
        {
          if (VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(AutomaticChatFlavor))
          {
            this[293].i64[1] |= 4uLL;
          }
        }
      }
    }
  }
}

_BYTE *VoiceProcessorV6::CorrectHardwareOutputPresentationLatency(_BYTE *this)
{
  if ((this[16161] & 1) == 0)
  {
    return (*(*this + 288))();
  }

  return this;
}

_BYTE *VoiceProcessorV6::CorrectHardwareOutputSafetyOffsets(_BYTE *this)
{
  if ((this[16161] & 1) == 0)
  {
    return (*(*this + 272))();
  }

  return this;
}

void VoiceProcessorV6::InitializeSubclassUplinkTimeFreqConverters(VoiceProcessorV6 *this)
{
  v2 = *(this + 2177);
  if (v2)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v2);
    MEMORY[0x2743CBFA0]();
    *(this + 2177) = 0;
  }

  if (*(this + 2178))
  {
    myFreeABLDynamic(this + 2178);
  }

  if ((*(this + 4696) & 4) != 0)
  {
    v3 = *(this + 129);
    VPTimeFreqConverter_Create();
  }
}

uint64_t VoiceProcessorV6::Initialize(VoiceProcessorV6 *this)
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

void VoiceProcessorV6::InitializeV6Specifics(VoiceProcessorV6 *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = this + 15881;
  if ((*(this + 16568) & 1) == 0)
  {
    if ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (AutomaticChatFlavor = *(this + 4134)) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this)), AutomaticChatFlavor == 2))
    {
      if ((*(this + 4692) & 0x10) != 0)
      {
        outData = 0.0;
        ioDataSize = 8;
        AudioUnitGetProperty(*(this + 385), 0xCu, 0, 0, &outData, &ioDataSize);
        v4 = (v2 + 1399);
        *(v2 + 1399) = vcvtad_u64_f64(outData * *(this + 114));
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v5 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
        {
          v6 = (*v5 ? *v5 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = outData;
            v8 = *v4;
            LODWORD(buf.mSampleRate) = 136315906;
            *(&buf.mSampleRate + 4) = "VoiceProcessor_v6.cpp";
            LOWORD(buf.mFormatFlags) = 1024;
            *(&buf.mFormatFlags + 2) = 165;
            HIWORD(buf.mBytesPerPacket) = 2048;
            *&buf.mFramesPerPacket = v7;
            LOWORD(buf.mChannelsPerFrame) = 1024;
            *(&buf.mChannelsPerFrame + 2) = v8;
            _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> NOTICE: AUNeuralNet latency is %f ms, which is %d samples", &buf, 0x22u);
          }
        }

        v9 = *(this + 1588);
        if (v9 && ((*v2 & 1) != 0 || v2[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            v15 = *(this + 1588);
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            v9 = v15;
          }

          v10 = outData;
          CALegacyLog::log(v9, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 165, "InitializeV6Specifics", "NOTICE: AUNeuralNet latency is %f ms, which is %d samples", v10, *v4);
        }

        myAllocABLDynamic((this + 912), *v4 + *(this + 129), this + 2161);
        myAllocABLDynamic((this + 912), *v4 + *(this + 129), this + 2162);
        myAllocABLDynamic((this + 912), *v4 + *(this + 129), this + 2163);
        myAllocABLDynamic((this + 912), *v4 + *(this + 129), this + 2164);
        myAllocABLDynamic((this + 912), *(this + 129), this + 2165);
        myAllocABLDynamic((this + 912), *(this + 129), this + 2166);
        myAllocABLDynamic((this + 912), 2 * *(this + 129), this + 2167);
        v11 = *(this + 2168);
        if (v11)
        {
          VPTimeFreqConverter::~VPTimeFreqConverter(v11);
          MEMORY[0x2743CBFA0]();
        }

        v12 = *(this + 129);
        VPTimeFreqConverter_Create();
      }
    }
  }

  myAllocABLDynamic((this + 912), *(this + 129), this + 2146);
  myAllocABLDynamic((this + 912), *(this + 129), this + 2147);
  myAllocABLDynamic((this + 912), *(this + 129), this + 2148);
  myAllocABLDynamic((this + 912), *(this + 129), this + 2149);
  myAllocABLDynamic((this + 912), *(this + 129), this + 2150);
  myAllocABLDynamic((this + 912), *(this + 129), this + 2153);
  myAllocABLDynamic((this + 912), *(this + 129), this + 2151);
  myAllocABLDynamic((this + 912), *(this + 129), this + 2152);
  myAllocABLDynamic((this + 912), 2 * *(this + 129), this + 512);
  buf.mSampleRate = *(this + 104);
  *&buf.mFormatID = xmmword_272756340;
  *&buf.mBytesPerFrame = xmmword_272756360;
  myAllocABLDynamic(&buf, 2 * *(this + 129), this + 2154);
  myAllocABLDynamic((this + 912), *(this + 129), this + 2155);
  myAllocABLDynamic((this + 912), *(this + 129), this + 2156);
  LODWORD(outData) = 1065353216;
  vDSP_vfill(&outData, *(*(this + 2155) + 16), 1, *(this + 129));
  vDSP_vfill(&outData, *(*(this + 2156) + 16), 1, *(this + 129));
  v13 = *(this + 2157);
  if (v13)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v13);
    MEMORY[0x2743CBFA0]();
  }

  v14 = *(this + 129);
  VPTimeFreqConverter_Create();
}

_DWORD *std::vector<float>::assign(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v8 = v6 >> 1;
    if (v6 >> 1 <= a2)
    {
      v8 = a2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    std::vector<float>::__vallocate[abi:ne200100](a1, v9);
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    a4.i32[0] = *a3;
    v13 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = vdupq_n_s64(v12 - 1);
    v15 = result + 2;
    v16 = 1;
    do
    {
      v17 = vdupq_n_s64(v16 - 1);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_2727564E0)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v15 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v15 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_2727564D0)))).i32[1])
      {
        *v15 = a4.i32[0];
        v15[1] = a4.i32[0];
      }

      v16 += 4;
      v15 += 4;
      v13 -= 4;
    }

    while (v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    a4.i32[0] = *a3;
    v21 = (4 * a2 - (v10 - result) - 4) >> 2;
    v22 = (v21 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v23 = vdupq_n_s64(v21);
    v24 = (v10 + 8);
    v25 = 1;
    do
    {
      v26 = vdupq_n_s64(v25 - 1);
      v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_2727564E0)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v24 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v24 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_2727564D0)))).i32[1])
      {
        *v24 = a4.i32[0];
        v24[1] = a4.i32[0];
      }

      v25 += 4;
      v24 += 4;
      v22 -= 4;
    }

    while (v22);
    v28 = (v10 + 4 * v20);
  }

  else
  {
    v28 = &result[a2];
  }

  a1[1] = v28;
  return result;
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<float>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<float>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void VoiceProcessorV6::SetAutomaticMicModeIsEnabledFromCFNotification(VoiceProcessorV6 *this, const __CFDictionary *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  vp::ExtractBundleIDFromAVAUVoiceIOChatFlavorNotification(&cf, a2);
  if (cf)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v3 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v4 = (*v3 ? *v3 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        if (!cf)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        applesauce::CF::convert_to<std::string,0>(__p, cf);
        if (v13 >= 0)
        {
          v5 = __p;
        }

        else
        {
          v5 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "VoiceProcessor_v6.cpp";
        v16 = 1024;
        v17 = 1338;
        v18 = 2080;
        v19 = v5;
        _os_log_impl(&dword_2724B4000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Automatic Chat Flavor enablement updated notification received for %s", buf, 0x1Cu);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v6 = *(this + 1588);
    if (v6 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      if (!cf)
      {
        v10 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v10, "Could not construct");
      }

      v7 = VPLogScope(void)::scope;
      applesauce::CF::convert_to<std::string,0>(buf, cf);
      if (SBYTE3(v19) >= 0)
      {
        v8 = buf;
      }

      else
      {
        v8 = *buf;
      }

      CALegacyLog::log(v6, 3, v7, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1338, "SetAutomaticMicModeIsEnabledFromCFNotification", "Automatic Chat Flavor enablement updated notification received for %s", v8);
      if (SBYTE3(v19) < 0)
      {
        operator delete(*buf);
      }
    }

    if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(this + 2069), &cf) == kCFCompareEqualTo)
    {
      *buf = (*(*this + 592))(this);
      (*(*this + 56))(this, 1635085677, buf, 4);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2724F8548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v20);
  applesauce::CF::StringRef::~StringRef(&a14);
  _Unwind_Resume(a1);
}

CFComparisonResult applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(const __CFString *cf, const __CFString **a2)
{
  if (cf)
  {
    CFRetain(cf);
    v4 = *a2;
    if (!v4)
    {
      v5 = kCFCompareGreaterThan;
LABEL_9:
      CFRelease(cf);
      return v5;
    }
  }

  else
  {
    v4 = *a2;
    if (!*a2)
    {
      return 0;
    }
  }

  CFRetain(v4);
  if (cf)
  {
    v5 = CFStringCompare(cf, v4, 0);
  }

  else
  {
    v5 = kCFCompareLessThan;
  }

  CFRelease(v4);
  if (cf)
  {
    goto LABEL_9;
  }

  return v5;
}

void VoiceProcessorV6::SetPreferredChatFlavorFromCFNotification(VoiceProcessorV6 *this, const __CFDictionary *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  vp::ExtractBundleIDFromAVAUVoiceIOChatFlavorNotification(&cf, a2);
  if (cf)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v3 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v4 = (*v3 ? *v3 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        if (!cf)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        applesauce::CF::convert_to<std::string,0>(__p, cf);
        if (v13 >= 0)
        {
          v5 = __p;
        }

        else
        {
          v5 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "VoiceProcessor_v6.cpp";
        v16 = 1024;
        v17 = 1325;
        v18 = 2080;
        v19 = v5;
        _os_log_impl(&dword_2724B4000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> ChatFlavor updated notification received for %s", buf, 0x1Cu);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v6 = *(this + 1588);
    if (v6 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      if (!cf)
      {
        v10 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v10, "Could not construct");
      }

      v7 = VPLogScope(void)::scope;
      applesauce::CF::convert_to<std::string,0>(buf, cf);
      if (SBYTE3(v19) >= 0)
      {
        v8 = buf;
      }

      else
      {
        v8 = *buf;
      }

      CALegacyLog::log(v6, 3, v7, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v6.cpp", 1325, "SetPreferredChatFlavorFromCFNotification", "ChatFlavor updated notification received for %s", v8);
      if (SBYTE3(v19) < 0)
      {
        operator delete(*buf);
      }
    }

    if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(this + 2069), &cf) == kCFCompareEqualTo)
    {
      *buf = (*(*this + 584))(this);
      (*(*this + 56))(this, 1718384242, buf, 4);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2724F8964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v20);
  applesauce::CF::StringRef::~StringRef(&a14);
  _Unwind_Resume(a1);
}

void VoiceProcessorV6::~VoiceProcessorV6(VoiceProcessorV6 *this)
{
  VoiceProcessorV6::~VoiceProcessorV6(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B0D88;
  caulk::details::lifetime_guard_base<VoiceProcessorV2>::invalidate(this + 16616);
  if (_os_feature_enabled_impl())
  {
    v2 = *(this + 2173);
    if (v2)
    {
      VoiceProcessor::CFNotificationDelegate::shutdown(v2);
    }

    v3 = *(this + 2175);
    if (v3)
    {
      VoiceProcessor::CFNotificationDelegate::shutdown(v3);
    }
  }

  if (*(this + 2069))
  {
    AVAUVoiceIORemoveActiveChatFlavorForBundleID();
  }

  v4 = *(this + 2157);
  if (v4)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v4);
    MEMORY[0x2743CBFA0]();
    *(this + 2157) = 0;
  }

  v5 = 0;
  v6 = this + 17264;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = *&v6[8 * v5];
    if (v9)
    {
      VPTimeFreqConverter::~VPTimeFreqConverter(v9);
      MEMORY[0x2743CBFA0]();
      *&v6[8 * v5] = 0;
    }

    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
  myFreeABLDynamic(this + 2146);
  myFreeABLDynamic(this + 2147);
  myFreeABLDynamic(this + 2148);
  myFreeABLDynamic(this + 2149);
  myFreeABLDynamic(this + 2150);
  myFreeABLDynamic(this + 2151);
  myFreeABLDynamic(this + 2152);
  myFreeABLDynamic(this + 2153);
  myFreeABLDynamic(this + 512);
  myFreeABLDynamic(this + 2154);
  myFreeABLDynamic(this + 2155);
  myFreeABLDynamic(this + 2156);
  myFreeABLDynamic(this + 2161);
  myFreeABLDynamic(this + 2162);
  myFreeABLDynamic(this + 2163);
  myFreeABLDynamic(this + 2164);
  myFreeABLDynamic(this + 2165);
  myFreeABLDynamic(this + 2166);
  myFreeABLDynamic(this + 2167);
  v10 = *(this + 2168);
  if (v10)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v10);
    MEMORY[0x2743CBFA0]();
    *(this + 2168) = 0;
  }

  if (*(this + 2178))
  {
    myFreeABLDynamic(this + 2178);
  }

  v11 = *(this + 2177);
  if (v11)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v11);
    MEMORY[0x2743CBFA0]();
    *(this + 2177) = 0;
  }

  v12 = *(this + 2176);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 2174);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(this + 2169);
  if (v14)
  {
    *(this + 2170) = v14;
    operator delete(v14);
  }

  VoiceProcessorV5::~VoiceProcessorV5(this);
}

BOOL VoiceProcessorV7::IsMusicModeSupportedUnderCurrentRoute(VoiceProcessorV7 *this)
{
  if (**(this + 297) != 1886216809)
  {
    return 0;
  }

  v1 = **(this + 294);
  return v1 == 1886613611 || v1 == 1885892727;
}

BOOL VoiceProcessorV7::IsVoiceIsolationSupportedUnderCurrentRoute(VoiceProcessorV7 *this)
{
  v1 = **(this + 297);
  if (v1 > 1886222184)
  {
    switch(v1)
    {
      case 1886222185:
        v5 = **(this + 294);
        v7 = 21;
        v8 = 1885892706;
        break;
      case 1886614633:
        v5 = **(this + 294);
        v7 = 1028;
        v8 = 1886613611;
        break;
      case 1886745449:
        v2 = **(this + 294);
        return v2 == 1886613611 || v2 == 1886745455;
      default:
        return 0;
    }

    v6 = v8 | v7;
    return v5 == v6;
  }

  if (v1 != 1886216809)
  {
    if (v1 != 1886216820)
    {
      return 0;
    }

    v5 = **(this + 294);
    v6 = 1885892706;
    return v5 == v6;
  }

  v9 = **(this + 294);
  result = 1;
  if (v9 > 1886152046)
  {
    if (v9 > 1886613610)
    {
      v10 = v9 == 1886613611;
      v11 = 1886745455;
    }

    else
    {
      v10 = v9 == 1886152047;
      v11 = 1886545251;
    }
  }

  else
  {
    if (v9 <= 1885892673)
    {
      if (v9 == 1885888867)
      {
        return result;
      }

      return v9 == 1885889645 && (_os_feature_enabled_impl() & 1) != 0;
    }

    v10 = v9 == 1885892674;
    v11 = 1885892727;
  }

  if (!v10 && v9 != v11)
  {
    return 0;
  }

  return result;
}

uint64_t VoiceProcessorV7::GetTelephonyVoiceIsolationUseCaseOverrideTuning4CC(VoiceProcessorV7 *this)
{
  v22 = *MEMORY[0x277D85DE8];
  if (**(this + 297) == 1886216820 && **(this + 294) == 1885892706 || ((v2 = *(this + 20), v2 != 6) ? (v3 = v2 == 1) : (v3 = 1), !v3))
  {
    v6 = 0;
    v7 = 0;
    v4 = 0;
    goto LABEL_13;
  }

  v4 = 1987260416;
  v5 = *(this + 554);
  if (v5 <= 23999)
  {
    if (v5 == 8000)
    {
      v6 = 0x100000000;
      v7 = 56;
      goto LABEL_13;
    }

    if (v5 == 16000)
    {
      v4 = 1987260672;
      v6 = 0x100000000;
      v7 = 54;
      goto LABEL_13;
    }

    goto LABEL_22;
  }

  if (v5 == 24000)
  {
    v6 = 0x100000000;
    v7 = 111;
    v4 = 1986622208;
    goto LABEL_13;
  }

  if (v5 != 32000)
  {
LABEL_22:
    v4 = 1986622208;
    if (v5 >= 0x7D01)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v11 = v5;
      v12 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v13 = (*v12 ? *v12 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v17 = "VoiceProcessor_v7.cpp";
          v18 = 1024;
          v19 = 506;
          v20 = 2048;
          v21 = v11;
          _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Unexpected vocoder sample rate = %f! Use 'viso' for telephony voice isolation instead.", buf, 0x1Cu);
        }
      }

      v14 = *(this + 1588);
      if (v14 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          v15 = *(this + 1588);
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          v14 = v15;
        }

        CALegacyLog::log(v14, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 506, "GetTelephonyVoiceIsolationUseCaseOverrideTuning4CC", "Unexpected vocoder sample rate = %f! Use 'viso' for telephony voice isolation instead.", v11);
      }
    }

    v6 = 0x100000000;
    v7 = 111;
    goto LABEL_13;
  }

  v10 = (*(*this + 232))(this);
  if (v10)
  {
    v4 = 1987261184;
  }

  else
  {
    v4 = 1986622208;
  }

  v7 = 50;
  if (!v10)
  {
    v7 = 111;
  }

  v6 = 0x100000000;
LABEL_13:
  v8 = *MEMORY[0x277D85DE8];
  return v7 | v6 | v4;
}

void sub_2724F9158(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL VoiceProcessorV7::ShouldUsePowerEfficientSingleChannelVoiceIsolation(VoiceProcessorV7 *this)
{
  if ((*(this + 16568) & 1) == 0)
  {
    if ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (AutomaticChatFlavor = *(this + 4134)) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this)), AutomaticChatFlavor == 2))
    {
      if ((*(this + 16544) & 4) != 0 && (*(*this + 112))(this) >= 7)
      {
        v3 = *(this + 20);
        if (v3 <= 6 && ((1 << v3) & 0x52) != 0)
        {
          v4 = "cerpibmpcahpvptx_reverbsuppressor_telephony";
          v5 = 16;
          while (**(this + 294) != *v4 || **(this + 297) != *(v4 - 1))
          {
            v4 += 8;
            v5 -= 8;
            if (!v5)
            {
              goto LABEL_15;
            }
          }

          return 1;
        }
      }
    }
  }

LABEL_15:
  v6 = *(this + 20);
  if (v6 == 6 || v6 == 1)
  {
    if ((*(*this + 112))(this) <= 8 && (*(*this + 112))(this) > 6)
    {
      return 1;
    }

    v6 = *(this + 20);
  }

  v8 = v6 == 6 || v6 == 1;
  return v8 && ((*(*this + 624))(this) & 1) != 0;
}

BOOL VoiceProcessorV7::ShouldUseFullIOCycle(VoiceProcessorV7 *this)
{
  if ((*(this + 16568) & 1) == 0 && ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (AutomaticChatFlavor = *(this + 4134)) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this)), AutomaticChatFlavor == 2)) && (*(this + 16544) & 4) != 0)
  {
    return 1;
  }

  else
  {
    return *(this + 20) != 1;
  }
}

uint64_t VoiceProcessorV7::IsInGenericVoiceIsolationMode(VoiceProcessorV7 *this)
{
  if (*(this + 16568))
  {
    return 0;
  }

  if ((*(this + 2262) & 1) == 0)
  {
    v2 = *(this + 2288) == 1 ? VoiceProcessorV2::GetAutomaticChatFlavor(this) : *(this + 4134);
    if (v2 != 2)
    {
      return 0;
    }
  }

  if ((*(this + 16544) & 4) == 0)
  {
    return 0;
  }

  v3 = &dword_272759074;
  v4 = 24;
  while (**(this + 297) != *(v3 - 1) || *v3 != 1634630002 && **(this + 294) != *v3)
  {
    v3 += 2;
    v4 -= 8;
    if (!v4)
    {
      return 0;
    }
  }

  return 1;
}

BOOL VoiceProcessorV7::ShouldApplyThirdPartyAppTuningOverride(VoiceProcessorV7 *this)
{
  result = 0;
  if (**(this + 294) == 1886613611 && !*(this + 20))
  {
    if ((*(this + 16568) & 1) == 0)
    {
      if ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (AutomaticChatFlavor = *(this + 4134)) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this)), AutomaticChatFlavor == 2))
      {
        if ((*(this + 16544) & 4) != 0)
        {
          return 1;
        }
      }
    }

    if ((*(this + 16568) & 1) == 0 && (*(this + 2262) & 1) == 0)
    {
      v4 = *(this + 2288) == 1 ? VoiceProcessorV2::GetAutomaticChatFlavor(this) : *(this + 4134);
      if (v4 == 1 && (*(this + 16544) & 2) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t VoiceProcessorV7::ShouldThirdPartyAppUseFaceTimeDSPAndTuning(VoiceProcessorV7 *this)
{
  v2 = this + 0x4000;
  if ((*(this + 16568) & 1) == 0)
  {
    if ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (AutomaticChatFlavor = *(this + 4134)) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this)), AutomaticChatFlavor == 2))
    {
      if ((*(this + 16544) & 4) != 0)
      {
        return 1;
      }
    }
  }

  if (v2[184] & 1) != 0 || (*(this + 2262))
  {
    return 0;
  }

  v4 = *(this + 2288) == 1 ? VoiceProcessorV2::GetAutomaticChatFlavor(this) : *(v2 + 38);
  if (v4 != 1)
  {
    return 0;
  }

  return (*(this + 16544) >> 1) & 1;
}

uint64_t VoiceProcessorV7::SetupDownlinkCarPlayVolumeExperienceDSP(VoiceProcessorV7 *this)
{
  v12 = *MEMORY[0x277D85DE8];
  result = _os_feature_enabled_impl();
  if (result && **(this + 294) == 1886614639)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v3 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v4 = (*v3 ? *v3 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "VoiceProcessor_v7.cpp";
        v10 = 1024;
        v11 = 259;
        _os_log_impl(&dword_2724B4000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> enabling CarPlay loudness normalization DSP", &v8, 0x12u);
      }
    }

    v5 = *(this + 1588);
    if (v5 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        v7 = *(this + 1588);
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        v5 = v7;
      }

      CALegacyLog::log(v5, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 259, "SetupDownlinkCarPlayVolumeExperienceDSP", "enabling CarPlay loudness normalization DSP");
    }

    *(this + 1108) |= 0x3C00uLL;
    result = (*(*this + 520))(this);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *VoiceProcessorV7::SetupDownlinkBasicAUChain(VoiceProcessorV7 *this)
{
  VoiceProcessorV7::InitializeSWCrossoverChannelCount(this);
  result = VoiceProcessorV6::SetupDownlinkBasicAUChain(this);
  if ((*(this + 19) - 1) <= 3)
  {
    v3 = *(this + 294);
    if (v3 != *(this + 295) && *v3 == 1886545251)
    {
      *(this + 1108) |= 0x100000000000uLL;
    }
  }

  return result;
}

uint64_t VoiceProcessorV7::InitializeSWCrossoverChannelCount(VoiceProcessorV7 *this)
{
  v20 = *MEMORY[0x277D85DE8];
  if ((*(this + 19) - 19) > 7)
  {
LABEL_21:
    v8 = 0;
    goto LABEL_23;
  }

  v2 = *(this + 294);
  if (v2 == *(this + 295) || *v2 != 1886613611 || (v3 = *(this + 91), v3 < 2))
  {
    v8 = 0;
    *(this + 1081) = 1;
    goto LABEL_23;
  }

  v4 = this + 12288;
  if (v3)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v11 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v12 = (*v11 ? *v11 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "VoiceProcessor_v7.cpp";
        v16 = 1024;
        v17 = 210;
        _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> downlink mix channel count is an odd number", buf, 0x12u);
      }
    }

    v8 = 1650879860;
    v13 = *(this + 1588);
    if (v13 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v13, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 210, "InitializeSWCrossoverChannelCount", "downlink mix channel count is an odd number");
    }
  }

  else
  {
    *(this + 1081) = v3 >> 1;
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v5 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v6 = (*v5 ? *v5 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(this + 1081);
        *buf = 136315650;
        v15 = "VoiceProcessor_v7.cpp";
        v16 = 1024;
        v17 = 215;
        v18 = 1024;
        v19 = v7;
        _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> SW crossover channel count = %u", buf, 0x18u);
      }
    }

    v8 = *(this + 1588);
    if (v8)
    {
      if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v8, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 215, "InitializeSWCrossoverChannelCount", "SW crossover channel count = %u", *(this + 1081));
      }

      goto LABEL_21;
    }
  }

LABEL_23:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t VoiceProcessorV7::SetupUplink_MS(uint64_t this, unsigned int a2)
{
  v2 = this;
  if (a2 != 1)
  {
    v3 = *(this + 4688);
    v4 = v3 | 0x101;
    v5 = v3 | 0x107;
    v6 = 287;
    if (a2 == 3)
    {
      v6 = 271;
    }

    v7 = v3 | v6;
    if (a2 < 3)
    {
      v7 = v5;
    }

    if (!a2)
    {
      v7 = v4;
    }

    *(this + 4688) = v7 & 0xF9FFFFFFBBFFF7FFLL | 0x600000004000800;
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

  return this;
}

uint64_t VoiceProcessorV7::SetupUplink_BF_MS(VoiceProcessorV7 *this, unsigned int a2, char a3)
{
  v4 = this + 0x4000;
  result = VoiceProcessorV6::SetupUplink_BF_MS(this, a2, a3);
  if ((v4[184] & 1) == 0)
  {
    if ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (result = *(v4 + 38)) : (result = VoiceProcessorV2::GetAutomaticChatFlavor(this)), result == 2))
    {
      if ((*(this + 16544) & 4) != 0)
      {
        *(this + 586) |= 0x800000000000000uLL;
        if (*(this + 2262) == 1)
        {
          result = VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(result);
          if (result)
          {
            *(this + 587) |= 4uLL;
          }
        }
      }
    }
  }

  if ((v4[184] & 1) == 0 && (*(this + 2262) & 1) == 0)
  {
    if (*(this + 2288) == 1)
    {
      result = VoiceProcessorV2::GetAutomaticChatFlavor(this);
    }

    else
    {
      result = *(v4 + 38);
    }

    if (result == 1 && (*(this + 16544) & 2) != 0)
    {
      result = (*(*this + 112))(this);
      if (result >= 9)
      {
        *(this + 586) |= 0x8000000000000uLL;
      }
    }
  }

  return result;
}

uint64_t VoiceProcessorV7::SetupUplinkBasicAUChain(int8x16_t *this)
{
  v2 = this + 1024;
  VoiceProcessorV6::SetupUplinkBasicAUChain(this);
  result = (*(this->i64[0] + 112))(this);
  if (result >= 8)
  {
    this[293].i64[0] |= 0x20000000uLL;
  }

  if ((v2[11].i8[8] & 1) == 0)
  {
    if ((this[141].i8[6] & 1) != 0 || (this[143].i8[0] != 1 ? (result = v2[9].u32[2]) : (result = VoiceProcessorV2::GetAutomaticChatFlavor(this)), result == 2))
    {
      if ((this[1034].i8[0] & 4) != 0)
      {
        this[293].i64[0] |= 0x800000000000000uLL;
        if (this[141].i8[6] == 1)
        {
          result = VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(result);
          if (result)
          {
            this[293].i64[1] |= 4uLL;
          }
        }
      }
    }
  }

  if ((v2[11].i8[8] & 1) == 0 && (this[141].i8[6] & 1) == 0)
  {
    if (this[143].i8[0] == 1)
    {
      result = VoiceProcessorV2::GetAutomaticChatFlavor(this);
    }

    else
    {
      result = v2[9].u32[2];
    }

    if (result == 1 && (this[1034].i8[0] & 2) != 0)
    {
      result = (*(this->i64[0] + 112))(this);
      if (result >= 9)
      {
        this[293].i64[0] |= 0x8000000000000uLL;
      }
    }
  }

  return result;
}

void VoiceProcessorV7::ScaleHardwareOutputPresentationLatency(VoiceProcessorV7 *this, AudioObjectID inObjectID)
{
  v38 = *MEMORY[0x277D85DE8];
  outData = 0.0;
  *&inAddress.mSelector = 0x6F7574706E737274;
  inAddress.mElement = 0;
  ioDataSize = 8;
  PropertyData = AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, &outData);
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v5 = this + 12288;
  v6 = VPLogScope(void)::scope;
  if (PropertyData)
  {
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v7 = (*v6 ? *v6 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        inAddress.mSelector = 136315650;
        *&inAddress.mScope = "VoiceProcessor_v7.cpp";
        v30 = 1024;
        v31 = 172;
        v32 = 1024;
        LODWORD(v33) = PropertyData;
        _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting ref physical device nominal sample rate", &inAddress, 0x18u);
      }
    }

    v8 = *(this + 1588);
    if (v8 && ((v5[3593] & 1) != 0 || v5[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v8, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 172, "ScaleHardwareOutputPresentationLatency", "error %d getting ref physical device nominal sample rate", PropertyData);
    }
  }

  else
  {
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v9 = (*v6 ? *v6 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(this + 89);
        v11 = *(this + 294);
        inAddress.mSelector = 136316162;
        *&inAddress.mScope = "VoiceProcessor_v7.cpp";
        v30 = 1024;
        v31 = 176;
        v32 = 2048;
        v33 = outData;
        v34 = 2048;
        v35 = v10;
        v36 = 1024;
        v37 = v11;
        _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> ref nominal sample rate = %lf; ref sample rate = %lf; output latency before scaling = %u", &inAddress, 0x2Cu);
      }
    }

    v12 = *(this + 1588);
    if (v12 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v12, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 176, "ScaleHardwareOutputPresentationLatency", "ref nominal sample rate = %lf; ref sample rate = %lf; output latency before scaling = %u", outData, *(this + 89), *(this + 294));
    }

    if (outData > 0.0)
    {
      LODWORD(v4) = *(this + 294);
      v13 = *(this + 74) * v4 / outData;
      *(this + 294) = v13;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v14 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v15 = (*v14 ? *v14 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(this + 294);
          inAddress.mSelector = 136315650;
          *&inAddress.mScope = "VoiceProcessor_v7.cpp";
          v30 = 1024;
          v31 = 180;
          v32 = 1024;
          LODWORD(v33) = v16;
          _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> output latency after scaling = %u", &inAddress, 0x18u);
        }
      }

      v17 = *(this + 1588);
      if (v17 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v17, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 180, "ScaleHardwareOutputPresentationLatency", "output latency after scaling = %u", *(this + 294));
      }

      if (!*(this + 1135))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v18 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v19 = (*v18 ? *v18 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = *(this + 289);
            inAddress.mSelector = 136315650;
            *&inAddress.mScope = "VoiceProcessor_v7.cpp";
            v30 = 1024;
            v31 = 183;
            v32 = 1024;
            LODWORD(v33) = v20;
            _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> tap stream input latency before scaling = %u", &inAddress, 0x18u);
          }
        }

        v21 = *(this + 1588);
        if (v21 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v21, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 183, "ScaleHardwareOutputPresentationLatency", "tap stream input latency before scaling = %u", *(this + 289));
        }

        LODWORD(v13) = *(this + 289);
        *(this + 289) = (*(this + 74) * *&v13 / outData);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v22 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v23 = (*v22 ? *v22 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v24 = *(this + 289);
            inAddress.mSelector = 136315650;
            *&inAddress.mScope = "VoiceProcessor_v7.cpp";
            v30 = 1024;
            v31 = 186;
            v32 = 1024;
            LODWORD(v33) = v24;
            _os_log_impl(&dword_2724B4000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> tap stream input latency after scaling = %u", &inAddress, 0x18u);
          }
        }

        v25 = *(this + 1588);
        if (v25 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v25, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 186, "ScaleHardwareOutputPresentationLatency", "tap stream input latency after scaling = %u", *(this + 289));
        }
      }

      VoiceProcessorV2::PListWriteRefPhysicalDevSR(this, &outData);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void VoiceProcessorV7::ScaleHardwareOutputSafetyOffsets(VoiceProcessorV7 *this, AudioObjectID inObjectID)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = this + 12288;
  if ((*(this + 16161) & 1) == 0)
  {
    outData = 0.0;
    *&inAddress.mSelector = 0x6F7574706E737274;
    inAddress.mElement = 0;
    ioDataSize = 8;
    PropertyData = AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, &outData);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v6 = VPLogScope(void)::scope;
    if (PropertyData)
    {
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v7 = (*v6 ? *v6 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          inAddress.mSelector = 136315650;
          *&inAddress.mScope = "VoiceProcessor_v7.cpp";
          v31 = 1024;
          v32 = 143;
          v33 = 1024;
          LODWORD(v34) = PropertyData;
          _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting ref physical device nominal sample rate", &inAddress, 0x18u);
        }
      }

      v8 = *(this + 1588);
      if (v8 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v8, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 143, "ScaleHardwareOutputSafetyOffsets", "error %d getting ref physical device nominal sample rate");
      }
    }

    else
    {
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v9 = (*v6 ? *v6 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = *(this + 89);
          v11 = *(this + 296);
          inAddress.mSelector = 136316162;
          *&inAddress.mScope = "VoiceProcessor_v7.cpp";
          v31 = 1024;
          v32 = 147;
          v33 = 2048;
          v34 = outData;
          v35 = 2048;
          v36 = v10;
          v37 = 1024;
          v38 = v11;
          _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> ref nominal sample rate = %lf; ref sample rate = %lf; output safety offset before scaling = %u", &inAddress, 0x2Cu);
        }
      }

      v12 = *(this + 1588);
      if (v12 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v12, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 147, "ScaleHardwareOutputSafetyOffsets", "ref nominal sample rate = %lf; ref sample rate = %lf; output safety offset before scaling = %u", outData, *(this + 89), *(this + 296));
      }

      if (outData > 0.0)
      {
        LODWORD(v5) = *(this + 296);
        v13 = *(this + 74) * v5 / outData;
        *(this + 296) = v13;
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v14 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v15 = (*v14 ? *v14 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = *(this + 296);
            inAddress.mSelector = 136315650;
            *&inAddress.mScope = "VoiceProcessor_v7.cpp";
            v31 = 1024;
            v32 = 151;
            v33 = 1024;
            LODWORD(v34) = v16;
            _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> output safety offset after scaling = %u", &inAddress, 0x18u);
          }
        }

        v17 = *(this + 1588);
        if (v17 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v17, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 151, "ScaleHardwareOutputSafetyOffsets", "output safety offset after scaling = %u", *(this + 296));
        }

        if (!*(this + 1135))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v19 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
          {
            v20 = (*v19 ? *v19 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v21 = *(this + 290);
              inAddress.mSelector = 136315650;
              *&inAddress.mScope = "VoiceProcessor_v7.cpp";
              v31 = 1024;
              v32 = 154;
              v33 = 1024;
              LODWORD(v34) = v21;
              _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> tap stream input safety offset before scaling = %u", &inAddress, 0x18u);
            }
          }

          v22 = *(this + 1588);
          if (v22 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v22, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 154, "ScaleHardwareOutputSafetyOffsets", "tap stream input safety offset before scaling = %u", *(this + 290));
          }

          LODWORD(v13) = *(this + 290);
          *(this + 290) = (*(this + 74) * *&v13 / outData);
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v23 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
          {
            v24 = (*v23 ? *v23 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v25 = *(this + 290);
              inAddress.mSelector = 136315650;
              *&inAddress.mScope = "VoiceProcessor_v7.cpp";
              v31 = 1024;
              v32 = 157;
              v33 = 1024;
              LODWORD(v34) = v25;
              _os_log_impl(&dword_2724B4000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> tap stream input safety offset after scaling = %u", &inAddress, 0x18u);
            }
          }

          v26 = *(this + 1588);
          if (v26 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v27 = *(this + 290);
            CALegacyLog::log(v26, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 157, "ScaleHardwareOutputSafetyOffsets", "tap stream input safety offset after scaling = %u");
          }
        }
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t VoiceProcessorV7::Initialize(VoiceProcessorV7 *this)
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

uint64_t VoiceProcessorV7::InitializeV7Specifics(VoiceProcessorV7 *this)
{
  v2 = *(this + 19);
  v3 = v2 > 0x1C;
  v4 = (1 << v2) & 0x18180000;
  if (!v3 && v4 != 0)
  {
    VoiceProcessorV7::LoadTrimGains(this);
  }

  return VoiceProcessorV7::InitializeSWCrossoverChannelCount(this);
}

void VoiceProcessorV7::LoadTrimGains(VoiceProcessorV7 *this)
{
  v3 = 0;
  VoiceProcessorV7::LoadTrimGains(void)::$_0::operator()(this, &v3);
  v2 = 1;
  VoiceProcessorV7::LoadTrimGains(void)::$_0::operator()(this, &v2);
}

void VoiceProcessorV7::LoadTrimGains(void)::$_0::operator()(void *a1, _BYTE *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = a1 + 1536;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  if (*a2 == 1)
  {
    v5 = MGCopyAnswer();
    if (SHIBYTE(v62) < 0)
    {
      v61 = 9;
      v7 = v60;
    }

    else
    {
      HIBYTE(v62) = 9;
      v7 = &v60;
    }

    v7[8] = 101;
    *v7 = *"reference";
    v8 = v7 + 9;
  }

  else
  {
    if (*a2)
    {
      goto LABEL_32;
    }

    v5 = MGCopyAnswer();
    if (SHIBYTE(v62) < 0)
    {
      v61 = 10;
      v6 = v60;
    }

    else
    {
      HIBYTE(v62) = 10;
      v6 = &v60;
    }

    *(v6 + 4) = 25966;
    *v6 = *"microphone";
    v8 = v6 + 10;
  }

  *v8 = 0;
  if (v5)
  {
    theData = v5;
    v9 = CFGetTypeID(v5);
    if (v9 != CFDataGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    BytePtr = CFDataGetBytePtr(theData);
    if (!BytePtr)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v21 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v22 = (*v21 ? *v21 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = &v60;
          if (v62 < 0)
          {
            v23 = v60;
          }

          *buf = 136315650;
          *&buf[4] = "VoiceProcessor_v7.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 552;
          v64 = 2080;
          v65 = v23;
          _os_log_impl(&dword_2724B4000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> couldn't parse %s trim gains - raw data is NULL", buf, 0x1Cu);
        }
      }

      v24 = a1[1588];
      if (v24 && ((*(v4 + 3593) & 1) != 0 || *(v4 + 3594) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v25 = &v60;
        if (v62 < 0)
        {
          v25 = v60;
        }

        CALegacyLog::log(v24, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 552, "operator()", "couldn't parse %s trim gains - raw data is NULL", v25);
      }

      goto LABEL_173;
    }

    Length = CFDataGetLength(theData);
    if (Length <= 4)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v12 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v13 = (*v12 ? *v12 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = &v60;
          if (v62 < 0)
          {
            v14 = v60;
          }

          *buf = 136315650;
          *&buf[4] = "VoiceProcessor_v7.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 567;
          v64 = 2080;
          v65 = v14;
          _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> couldn't parse %s trim gains - raw data size is not valid", buf, 0x1Cu);
        }
      }

      v15 = a1[1588];
      if (v15 && ((*(v4 + 3593) & 1) != 0 || *(v4 + 3594) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v15, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 567, "operator()", "couldn't parse %s trim gains - raw data size is not valid");
      }

LABEL_173:
      if (theData)
      {
        CFRelease(theData);
      }

      goto LABEL_175;
    }

    v26 = *BytePtr;
    v27 = HIWORD(*BytePtr);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v28 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v29 = (*v28 ? *v28 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = &v60;
        if (v62 < 0)
        {
          v30 = v60;
        }

        *buf = 136316418;
        *&buf[4] = "VoiceProcessor_v7.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 578;
        v64 = 2080;
        v65 = v30;
        v66 = 1024;
        *v67 = v27;
        *&v67[4] = 1024;
        *&v67[6] = BYTE1(v26);
        v68 = 1024;
        v69 = v26;
        _os_log_impl(&dword_2724B4000, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> loaded %s trim gains header from MobileGestalt: {version=%d, size=%d, count=%d}", buf, 0x2Eu);
      }
    }

    v31 = a1[1588];
    if (v31 && ((*(v4 + 3593) & 1) != 0 || *(v4 + 3594) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v32 = &v60;
      if (v62 < 0)
      {
        v32 = v60;
      }

      CALegacyLog::log(v31, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 578, "operator()", "loaded %s trim gains header from MobileGestalt: {version=%d, size=%d, count=%d}", v32, HIWORD(v26), BYTE1(v26), v26);
    }

    if (v27 != 1)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v37 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v38 = (*v37 ? *v37 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = &v60;
          if (v62 < 0)
          {
            v39 = v60;
          }

          *buf = 136315906;
          *&buf[4] = "VoiceProcessor_v7.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 585;
          v64 = 2080;
          v65 = v39;
          v66 = 1024;
          *v67 = v27;
          _os_log_impl(&dword_2724B4000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> couldn't parse %s trim gains - data structure version %d is not supported", buf, 0x22u);
        }
      }

      v40 = a1[1588];
      if (v40 && ((*(v4 + 3593) & 1) != 0 || *(v4 + 3594) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v41 = &v60;
        if (v62 < 0)
        {
          v41 = v60;
        }

        CALegacyLog::log(v40, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 585, "operator()", "couldn't parse %s trim gains - data structure version %d is not supported", v41, HIWORD(v26));
      }

      goto LABEL_173;
    }

    if (Length < BYTE1(v26) * v26 + 4)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v33 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v34 = (*v33 ? *v33 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = &v60;
          if (v62 < 0)
          {
            v35 = v60;
          }

          *buf = 136315650;
          *&buf[4] = "VoiceProcessor_v7.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 590;
          v64 = 2080;
          v65 = v35;
          _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> couldn't parse %s trim gains - raw data size is not valid", buf, 0x1Cu);
        }
      }

      v36 = a1[1588];
      if (v36 && ((*(v4 + 3593) & 1) != 0 || *(v4 + 3594) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v36, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 590, "operator()", "couldn't parse %s trim gains - raw data size is not valid");
      }

      goto LABEL_173;
    }

    if ((v26 & 0xFF00) != 0x200)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v43 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
      if (v43)
      {
        v44 = v43;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v45 = &v60;
          if (v62 < 0)
          {
            v45 = v60;
          }

          *buf = 136315650;
          *&buf[4] = "VoiceProcessor_v7.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 595;
          v64 = 2080;
          v65 = v45;
          _os_log_impl(&dword_2724B4000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> couldn't parse %s trim gains - data structure size is not valid", buf, 0x1Cu);
        }
      }

      v46 = a1[1588];
      if (v46 && ((*(v4 + 3593) & 1) != 0 || *(v4 + 3594) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v46, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 595, "operator()", "couldn't parse %s trim gains - data structure size is not valid");
      }

      goto LABEL_173;
    }

    memset(&v58, 0, sizeof(v58));
    memset(__p, 0, sizeof(__p));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, BytePtr + 4, &BytePtr[((2 * v26 + 2) & 0x3FC) + 4], (2 * v26 + 2) & 0x3FC);
    VoiceProcessor::Endianness::Swap<(VoiceProcessor::Endianness::Direction)1,short>(buf, __p);
    if (*buf != *&buf[8])
    {
      v42 = **buf * 0.1;
      std::allocator<float>::allocate_at_least[abi:ne200100](1uLL);
    }

    if (*buf)
    {
      operator delete(*buf);
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v47 = CALog::LogObjIfEnabled(5, VPLogScope(void)::scope);
    if (v47)
    {
      v48 = v47;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        v49 = &v60;
        if (v62 < 0)
        {
          v49 = v60;
        }

        v50 = &v58;
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v50 = v58.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "VoiceProcessor_v7.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 623;
        v64 = 2080;
        v65 = v49;
        v66 = 2080;
        *v67 = v50;
        _os_log_impl(&dword_2724B4000, v48, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> loaded %s trim gains from MobileGestalt: {%s}", buf, 0x26u);
      }
    }

    v51 = a1[1588];
    if (v51 && ((*(v4 + 3593) & 1) != 0 || *(v4 + 3594) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v52 = &v60;
      if (v62 < 0)
      {
        v52 = v60;
      }

      v53 = &v58;
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v53 = v58.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v51, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 623, "operator()", "loaded %s trim gains from MobileGestalt: {%s}", v52, v53);
    }

    if (*a2)
    {
      if (*a2 != 1)
      {
LABEL_169:
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        goto LABEL_173;
      }

      v54 = 32781;
    }

    else
    {
      v54 = 32780;
    }

    (*(*a1 + 56))(a1, v54, 0, 0);
    goto LABEL_169;
  }

LABEL_32:
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v16 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
  {
    v17 = (*v16 ? *v16 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = &v60;
      if (v62 < 0)
      {
        v18 = v60;
      }

      *buf = 136315650;
      *&buf[4] = "VoiceProcessor_v7.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 536;
      v64 = 2080;
      v65 = v18;
      _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> couldn't load %s trim gains from MobileGestalt", buf, 0x1Cu);
    }
  }

  v19 = a1[1588];
  if (v19 && ((*(v4 + 3593) & 1) != 0 || *(v4 + 3594) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v20 = &v60;
    if (v62 < 0)
    {
      v20 = v60;
    }

    CALegacyLog::log(v19, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v7.cpp", 536, "operator()", "couldn't load %s trim gains from MobileGestalt", v20);
  }

LABEL_175:
  if (SHIBYTE(v62) < 0)
  {
    operator delete(v60);
  }

  v55 = *MEMORY[0x277D85DE8];
}

void sub_2724FBF08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, const void *a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  applesauce::CF::DataRef::~DataRef(&a29);
  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
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

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
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

      std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14++;
        *v15++ = v16;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

void *VoiceProcessor::Endianness::Swap<(VoiceProcessor::Endianness::Direction)1,short>(void *result, void *a2)
{
  v2 = a2[1] - *a2;
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  if (v2 >= 2)
  {
    operator new();
  }

  return result;
}

void applesauce::CF::DataRef::~DataRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
}

void VoiceProcessorV7::~VoiceProcessorV7(VoiceProcessorV7 *this)
{
  VoiceProcessorV7::~VoiceProcessorV7(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B1130;
  caulk::details::lifetime_guard_base<VoiceProcessorV2>::invalidate(this + 16616);

  VoiceProcessorV6::~VoiceProcessorV6(this);
}

uint64_t VoiceProcessorV8::ApplyPortSubtypeTuningOverride(VoiceProcessorV8 *this, unsigned int a2)
{
  v161 = *MEMORY[0x277D85DE8];
  v3 = this + 15881;
  if ((*(*this + 536))(this, **(this + 294), *(this + 600), **(this + 297)))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v4 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v5 = (*v4 ? *v4 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(v143, *(this + 600));
        *buf = 136315650;
        *&buf[4] = "VoiceProcessor_v8.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 434;
        *&buf[18] = 2080;
        *&buf[20] = v143;
        _os_log_impl(&dword_2724B4000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> known headphones with HW EQ AU preset override detected %s", buf, 0x1Cu);
      }
    }

    v6 = *(this + 1588);
    if (v6 && ((*v3 & 1) != 0 || v3[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v7 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(this + 600));
      CALegacyLog::log(v6, 5, v7, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 434, "ApplyPortSubtypeTuningOverride", "known headphones with HW EQ AU preset override detected %s", buf);
    }

    v159 = 0u;
    memset(v160, 0, sizeof(v160));
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    memset(buf, 0, sizeof(buf));
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(v143, a2);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__str, *(this + 24));
    snprintf(buf, 0xFFuLL, "%s_vprx_tmst_%s", v143, &__str);
    v8 = *(this + 343);
    __str.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "Generic", 0x600u);
    __str.__r_.__value_.__s.__data_[8] = 1;
    cf = CFStringCreateWithCString(0, "Headphones", 0x600u);
    v147 = 1;
    v140 = CFStringCreateWithCString(0, buf, 0x600u);
    v141 = 1;
    *v143 = &__str;
    *&v143[8] = &cf;
    *&v143[16] = &v140;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v8, v143, 3u, 1u);
    CACFString::~CACFString(&v140);
    CACFString::~CACFString(&cf);
    CACFString::~CACFString(&__str);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v10 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v11 = (*v10 ? *v10 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = (this + 8);
          if (*(this + 31) < 0)
          {
            v12 = *v12;
          }

          *v143 = 136315906;
          *&v143[4] = "VoiceProcessor_v8.cpp";
          *&v143[12] = 1024;
          *&v143[14] = 443;
          *&v143[18] = 2080;
          *&v143[20] = v12;
          v144 = 2080;
          v145 = buf;
          _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> : failed to find Headphone EQ aupreset: %s/Generic/Headphones/%s", v143, 0x26u);
        }
      }

      v13 = *(this + 1588);
      if (v13 && ((*v3 & 1) != 0 || v3[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          v135 = *(this + 1588);
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          v13 = v135;
        }

        v14 = this + 8;
        if (*(this + 31) < 0)
        {
          v14 = *v14;
        }

        CALegacyLog::log(v13, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 443, "ApplyPortSubtypeTuningOverride", ": failed to find Headphone EQ aupreset: %s/Generic/Headphones/%s", v14, buf);
      }
    }

    v15 = TuningPListMgr::lookupPlist_(*(this + 343), buf, 1u);
    cf = v15;
    if (v15)
    {
      v16 = TuningInSubdirs == 0;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      CFRetain(v15);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 1477, 0, 0, 0, 8uLL, &cf, 1);
      CFRelease(cf);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v17 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v18 = (*v17 ? *v17 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *v143 = 136315906;
          *&v143[4] = "VoiceProcessor_v8.cpp";
          *&v143[12] = 1024;
          *&v143[14] = 453;
          *&v143[18] = 2080;
          *&v143[20] = buf;
          v144 = 2080;
          v145 = "(DL-)TM";
          _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found Headphone EQ aupreset:%s for %s", v143, 0x26u);
        }
      }

      v19 = *(this + 1588);
      if (v19 && ((*v3 & 1) != 0 || v3[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v19, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 453, "ApplyPortSubtypeTuningOverride", "found Headphone EQ aupreset:%s for %s", buf, "(DL-)TM");
      }

      std::string::basic_string[abi:ne200100]<0>(v143, "(DL-)TM");
      __str.__r_.__value_.__r.__words[0] = v143;
      v20 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 576, v143);
      std::string::__assign_external((v20 + 5), buf);
      if ((v143[23] & 0x80000000) != 0)
      {
        operator delete(*v143);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v37 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v38 = (*v37 ? *v37 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *v143 = 136315906;
          *&v143[4] = "VoiceProcessor_v8.cpp";
          *&v143[12] = 1024;
          *&v143[14] = 457;
          *&v143[18] = 2080;
          *&v143[20] = buf;
          v144 = 2080;
          v145 = "(DL-)TM";
          _os_log_impl(&dword_2724B4000, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> : failed to load Headphone EQ tuning aupreset:%s for %s", v143, 0x26u);
        }
      }

      v39 = *(this + 1588);
      if (v39 && ((*v3 & 1) != 0 || v3[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v39, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 457, "ApplyPortSubtypeTuningOverride", ": failed to load Headphone EQ tuning aupreset:%s for %s", buf, "(DL-)TM");
      }
    }
  }

  else
  {
    TuningInSubdirs = 0;
  }

  if ((*(*this + 536))(this, **(this + 294), *(this + 600), **(this + 297)))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v21 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v22 = (*v21 ? *v21 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(v143, *(this + 600));
        *buf = 136315650;
        *&buf[4] = "VoiceProcessor_v8.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 462;
        *&buf[18] = 2080;
        *&buf[20] = v143;
        _os_log_impl(&dword_2724B4000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> known headphones with downlink deesser AU preset override detected %s", buf, 0x1Cu);
      }
    }

    v23 = *(this + 1588);
    if (v23 && ((*v3 & 1) != 0 || v3[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v24 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(this + 600));
      CALegacyLog::log(v23, 5, v24, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 462, "ApplyPortSubtypeTuningOverride", "known headphones with downlink deesser AU preset override detected %s", buf);
    }

    v159 = 0u;
    memset(v160, 0, sizeof(v160));
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    memset(buf, 0, sizeof(buf));
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(v143, a2);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__str, *(this + 24));
    snprintf(buf, 0xFFuLL, "%s_vprx_dees_%s", v143, &__str);
    v25 = *(this + 343);
    __str.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "Generic", 0x600u);
    __str.__r_.__value_.__s.__data_[8] = 1;
    cf = CFStringCreateWithCString(0, "Headphones", 0x600u);
    v147 = 1;
    v140 = CFStringCreateWithCString(0, buf, 0x600u);
    v141 = 1;
    *v143 = &__str;
    *&v143[8] = &cf;
    *&v143[16] = &v140;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v25, v143, 3u, 1u);
    CACFString::~CACFString(&v140);
    CACFString::~CACFString(&cf);
    CACFString::~CACFString(&__str);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v26 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v27 = (*v26 ? *v26 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v28 = (this + 8);
          if (*(this + 31) < 0)
          {
            v28 = *v28;
          }

          *v143 = 136315906;
          *&v143[4] = "VoiceProcessor_v8.cpp";
          *&v143[12] = 1024;
          *&v143[14] = 470;
          *&v143[18] = 2080;
          *&v143[20] = v28;
          v144 = 2080;
          v145 = buf;
          _os_log_impl(&dword_2724B4000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> : failed to find downlink deesser aupreset: %s/Generic/Headphones/%s, using preset from strip", v143, 0x26u);
        }
      }

      v29 = *(this + 1588);
      if (v29 && ((*v3 & 1) != 0 || v3[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          v136 = *(this + 1588);
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          v29 = v136;
        }

        v30 = this + 8;
        if (*(this + 31) < 0)
        {
          v30 = *v30;
        }

        CALegacyLog::log(v29, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 470, "ApplyPortSubtypeTuningOverride", ": failed to find downlink deesser aupreset: %s/Generic/Headphones/%s, using preset from strip", v30, buf);
      }
    }

    v31 = TuningPListMgr::lookupPlist_(*(this + 343), buf, 1u);
    cf = v31;
    if (v31)
    {
      v32 = TuningInSubdirs == 0;
    }

    else
    {
      v32 = 0;
    }

    if (v32)
    {
      CFRetain(v31);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 1402, 0, 0, 0, 8uLL, &cf, 1);
      CFRelease(cf);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v33 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v34 = (*v33 ? *v33 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *v143 = 136315906;
          *&v143[4] = "VoiceProcessor_v8.cpp";
          *&v143[12] = 1024;
          *&v143[14] = 480;
          *&v143[18] = 2080;
          *&v143[20] = buf;
          v144 = 2080;
          v145 = "(DL-)FEVDeesser";
          _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found Headphone deesser aupreset:%s for %s", v143, 0x26u);
        }
      }

      v35 = *(this + 1588);
      if (v35 && ((*v3 & 1) != 0 || v3[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v35, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 480, "ApplyPortSubtypeTuningOverride", "found Headphone deesser aupreset:%s for %s", buf, "(DL-)FEVDeesser");
      }

      std::string::basic_string[abi:ne200100]<0>(v143, "(DL-)FEVDeesser");
      __str.__r_.__value_.__r.__words[0] = v143;
      v36 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 576, v143);
      std::string::__assign_external((v36 + 5), buf);
      if ((v143[23] & 0x80000000) != 0)
      {
        operator delete(*v143);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v40 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v41 = (*v40 ? *v40 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *v143 = 136315906;
          *&v143[4] = "VoiceProcessor_v8.cpp";
          *&v143[12] = 1024;
          *&v143[14] = 483;
          *&v143[18] = 2080;
          *&v143[20] = buf;
          v144 = 2080;
          v145 = "(DL-)FEVDeesser";
          _os_log_impl(&dword_2724B4000, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> : failed to load Headphone deesser tuning aupreset:%s for %s", v143, 0x26u);
        }
      }

      v42 = *(this + 1588);
      if (v42 && ((*v3 & 1) != 0 || v3[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v42, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 483, "ApplyPortSubtypeTuningOverride", ": failed to load Headphone deesser tuning aupreset:%s for %s", buf, "(DL-)FEVDeesser");
      }
    }
  }

  if ((*(*this + 536))(this, **(this + 294), *(this + 600), **(this + 297)))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v43 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v44 = (*v43 ? *v43 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(v143, *(this + 600));
        *buf = 136315650;
        *&buf[4] = "VoiceProcessor_v8.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 488;
        *&buf[18] = 2080;
        *&buf[20] = v143;
        _os_log_impl(&dword_2724B4000, v44, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> known headset with mic EQ AU preset override detected %s", buf, 0x1Cu);
      }
    }

    v45 = *(this + 1588);
    if (v45 && ((*v3 & 1) != 0 || v3[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v46 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(this + 600));
      CALegacyLog::log(v45, 5, v46, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 488, "ApplyPortSubtypeTuningOverride", "known headset with mic EQ AU preset override detected %s", buf);
    }

    v159 = 0u;
    memset(v160, 0, sizeof(v160));
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    memset(buf, 0, sizeof(buf));
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(v143, a2);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__str, *(this + 24));
    snprintf(buf, 0xFFuLL, "%s_vptx_%s", v143, &__str);
    v47 = *(this + 343);
    __str.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "Generic", 0x600u);
    __str.__r_.__value_.__s.__data_[8] = 1;
    cf = CFStringCreateWithCString(0, "Headphones", 0x600u);
    v147 = 1;
    v140 = CFStringCreateWithCString(0, buf, 0x600u);
    v141 = 1;
    *v143 = &__str;
    *&v143[8] = &cf;
    *&v143[16] = &v140;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v47, v143, 3u, 1u);
    CACFString::~CACFString(&v140);
    CACFString::~CACFString(&cf);
    CACFString::~CACFString(&__str);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v48 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v49 = (*v48 ? *v48 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v50 = (this + 8);
          if (*(this + 31) < 0)
          {
            v50 = *v50;
          }

          *v143 = 136315906;
          *&v143[4] = "VoiceProcessor_v8.cpp";
          *&v143[12] = 1024;
          *&v143[14] = 495;
          *&v143[18] = 2080;
          *&v143[20] = v50;
          v144 = 2080;
          v145 = buf;
          _os_log_impl(&dword_2724B4000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> : failed to find headset EQ aupreset: %s/Generic/Headphones/%s, trying without usecase", v143, 0x26u);
        }
      }

      v51 = *(this + 1588);
      if (v51 && ((*v3 & 1) != 0 || v3[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v52 = this + 8;
        if (*(this + 31) < 0)
        {
          v52 = *v52;
        }

        CALegacyLog::log(v51, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 495, "ApplyPortSubtypeTuningOverride", ": failed to find headset EQ aupreset: %s/Generic/Headphones/%s, trying without usecase", v52, buf);
      }

      CAX4CCStringNoQuote::CAX4CCStringNoQuote(v143, a2);
      snprintf(buf, 0xFFuLL, "%s_vptx", v143);
      v53 = *(this + 343);
      __str.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "Generic", 0x600u);
      __str.__r_.__value_.__s.__data_[8] = 1;
      cf = CFStringCreateWithCString(0, "Headphones", 0x600u);
      v147 = 1;
      v140 = CFStringCreateWithCString(0, buf, 0x600u);
      v141 = 1;
      *v143 = &__str;
      *&v143[8] = &cf;
      *&v143[16] = &v140;
      TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v53, v143, 3u, 1u);
      CACFString::~CACFString(&v140);
      CACFString::~CACFString(&cf);
      CACFString::~CACFString(&__str);
    }

    v54 = TuningPListMgr::lookupPlist_(*(this + 343), buf, 1u);
    cf = v54;
    if (TuningInSubdirs || !v54)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v59 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v60 = (*v59 ? *v59 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          *v143 = 136315906;
          *&v143[4] = "VoiceProcessor_v8.cpp";
          *&v143[12] = 1024;
          *&v143[14] = 509;
          *&v143[18] = 2080;
          *&v143[20] = buf;
          v144 = 2080;
          v145 = "(UL-)Mic1EQ";
          _os_log_impl(&dword_2724B4000, v60, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> : failed to load headset EQ tuning aupreset:%s for %s", v143, 0x26u);
        }
      }

      v61 = *(this + 1588);
      if (v61 && ((*v3 & 1) != 0 || v3[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v61, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 509, "ApplyPortSubtypeTuningOverride", ": failed to load headset EQ tuning aupreset:%s for %s", buf, "(UL-)Mic1EQ");
      }
    }

    else
    {
      CFRetain(v54);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 904, 0, 0, 0, 8uLL, &cf, 1);
      CFRelease(cf);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v55 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v56 = (*v55 ? *v55 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          *v143 = 136315906;
          *&v143[4] = "VoiceProcessor_v8.cpp";
          *&v143[12] = 1024;
          *&v143[14] = 506;
          *&v143[18] = 2080;
          *&v143[20] = buf;
          v144 = 2080;
          v145 = "(UL-)Mic1EQ";
          _os_log_impl(&dword_2724B4000, v56, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found headset EQ aupreset:%s for %s", v143, 0x26u);
        }
      }

      v57 = *(this + 1588);
      if (v57 && ((*v3 & 1) != 0 || v3[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v57, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 506, "ApplyPortSubtypeTuningOverride", "found headset EQ aupreset:%s for %s", buf, "(UL-)Mic1EQ");
      }

      std::string::basic_string[abi:ne200100]<0>(v143, "(UL-)Mic1EQ");
      __str.__r_.__value_.__r.__words[0] = v143;
      v58 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 581, v143);
      std::string::__assign_external((v58 + 5), buf);
      if ((v143[23] & 0x80000000) != 0)
      {
        operator delete(*v143);
      }
    }
  }

  v62 = **(this + 294);
  v63 = *(this + 600);
  if (v62 == 1885892727 && (v63 & 0xFFFFFFFE) == 0x62363066)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v64 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v65 = (*v64 ? *v64 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(v143, *(this + 600));
        *buf = 136315650;
        *&buf[4] = "VoiceProcessor_v8.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 514;
        *&buf[18] = 2080;
        *&buf[20] = v143;
        _os_log_impl(&dword_2724B4000, v65, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> known headphones with SpeechEnhancer AU preset override detected %s", buf, 0x1Cu);
      }
    }

    v66 = *(this + 1588);
    if (v66 && ((*v3 & 1) != 0 || v3[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v67 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(this + 600));
      CALegacyLog::log(v66, 5, v67, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 514, "ApplyPortSubtypeTuningOverride", "known headphones with SpeechEnhancer AU preset override detected %s", buf);
    }

    v159 = 0u;
    memset(v160, 0, sizeof(v160));
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    memset(buf, 0, sizeof(buf));
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(v143, a2);
    snprintf(buf, 0xFFuLL, "%s_vprx_spen", v143);
    v68 = *(this + 343);
    __str.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "Generic", 0x600u);
    __str.__r_.__value_.__s.__data_[8] = 1;
    cf = CFStringCreateWithCString(0, "Headphones", 0x600u);
    v147 = 1;
    v140 = CFStringCreateWithCString(0, buf, 0x600u);
    v141 = 1;
    *v143 = &__str;
    *&v143[8] = &cf;
    *&v143[16] = &v140;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v68, v143, 3u, 1u);
    CACFString::~CACFString(&v140);
    CACFString::~CACFString(&cf);
    CACFString::~CACFString(&__str);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v69 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v70 = (*v69 ? *v69 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          v71 = (this + 8);
          if (*(this + 31) < 0)
          {
            v71 = *v71;
          }

          *v143 = 136315906;
          *&v143[4] = "VoiceProcessor_v8.cpp";
          *&v143[12] = 1024;
          *&v143[14] = 520;
          *&v143[18] = 2080;
          *&v143[20] = v71;
          v144 = 2080;
          v145 = buf;
          _os_log_impl(&dword_2724B4000, v70, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> : failed to find Headphone SpeechEnhancer aupreset: %s/Generic/Headphones/%s, using preset from strip", v143, 0x26u);
        }
      }

      v72 = *(this + 1588);
      if (v72 && ((*v3 & 1) != 0 || v3[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v73 = this + 8;
        if (*(this + 31) < 0)
        {
          v73 = *v73;
        }

        CALegacyLog::log(v72, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 520, "ApplyPortSubtypeTuningOverride", ": failed to find Headphone SpeechEnhancer aupreset: %s/Generic/Headphones/%s, using preset from strip", v73, buf);
      }
    }

    v74 = TuningPListMgr::lookupPlist_(*(this + 343), buf, 1u);
    cf = v74;
    if (v74)
    {
      v75 = TuningInSubdirs == 0;
    }

    else
    {
      v75 = 0;
    }

    if (v75)
    {
      CFRetain(v74);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 1396, 0, 0, 0, 8uLL, &cf, 1);
      CFRelease(cf);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v76 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v77 = (*v76 ? *v76 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          *v143 = 136315906;
          *&v143[4] = "VoiceProcessor_v8.cpp";
          *&v143[12] = 1024;
          *&v143[14] = 529;
          *&v143[18] = 2080;
          *&v143[20] = buf;
          v144 = 2080;
          v145 = "(DL-)SpeechEnh";
          _os_log_impl(&dword_2724B4000, v77, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found Headphone SpeechEnhancer aupreset:%s for %s", v143, 0x26u);
        }
      }

      v78 = *(this + 1588);
      if (v78 && ((*v3 & 1) != 0 || v3[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v78, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 529, "ApplyPortSubtypeTuningOverride", "found Headphone SpeechEnhancer aupreset:%s for %s", buf, "(DL-)SpeechEnh");
      }

      std::string::basic_string[abi:ne200100]<0>(v143, "(DL-)SpeechEnh");
      __str.__r_.__value_.__r.__words[0] = v143;
      v79 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 576, v143);
      std::string::__assign_external((v79 + 5), buf);
      if ((v143[23] & 0x80000000) != 0)
      {
        operator delete(*v143);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v80 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v81 = (*v80 ? *v80 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
        {
          *v143 = 136315906;
          *&v143[4] = "VoiceProcessor_v8.cpp";
          *&v143[12] = 1024;
          *&v143[14] = 532;
          *&v143[18] = 2080;
          *&v143[20] = buf;
          v144 = 2080;
          v145 = "(DL-)SpeechEnh";
          _os_log_impl(&dword_2724B4000, v81, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> : failed to load Headphone SpeechEnhancer tuning aupreset:%s for %s", v143, 0x26u);
        }
      }

      v82 = *(this + 1588);
      if (v82 && ((*v3 & 1) != 0 || v3[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v82, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 532, "ApplyPortSubtypeTuningOverride", ": failed to load Headphone SpeechEnhancer tuning aupreset:%s for %s", buf, "(DL-)SpeechEnh");
      }
    }

    v62 = **(this + 294);
    v63 = *(this + 600);
  }

  if (v62 == 1885892727 && (v63 & 0xFFFFFFFE) == 0x62363066)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v83 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v84 = (*v83 ? *v83 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(v143, *(this + 600));
        *buf = 136315650;
        *&buf[4] = "VoiceProcessor_v8.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 537;
        *&buf[18] = 2080;
        *&buf[20] = v143;
        _os_log_impl(&dword_2724B4000, v84, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> known headphones with OCNS AU preset override detected %s", buf, 0x1Cu);
      }
    }

    v85 = *(this + 1588);
    if (v85 && ((*v3 & 1) != 0 || v3[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v86 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(this + 600));
      CALegacyLog::log(v85, 5, v86, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 537, "ApplyPortSubtypeTuningOverride", "known headphones with OCNS AU preset override detected %s", buf);
    }

    std::string::basic_string[abi:ne200100]<0>(v143, "telephony");
    if ((v3[687] & 1) == 0)
    {
      if ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (AutomaticChatFlavor = *(v3 + 655)) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this)), AutomaticChatFlavor == 2))
      {
        if ((*(this + 16544) & 4) != 0)
        {
          CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__str, 0x7669736Fu);
          std::string::basic_string[abi:ne200100]<0>(buf, &__str);
          if ((v143[23] & 0x80000000) != 0)
          {
            operator delete(*v143);
          }

          *v143 = *buf;
          *&v143[16] = *&buf[16];
        }
      }
    }

    std::operator+<char>();
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v88 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v89 = (*v88 ? *v88 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&cf, *(this + 600));
        *buf = 136315650;
        *&buf[4] = "VoiceProcessor_v8.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 546;
        *&buf[18] = 2080;
        *&buf[20] = &cf;
        _os_log_impl(&dword_2724B4000, v89, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Using tuning override preset name for ocns: %s", buf, 0x1Cu);
      }
    }

    v90 = *(this + 1588);
    if (v90 && ((*v3 & 1) != 0 || v3[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v91 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(this + 600));
      CALegacyLog::log(v90, 3, v91, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 546, "ApplyPortSubtypeTuningOverride", "Using tuning override preset name for ocns: %s", buf);
    }

    v92 = *(this + 343);
    cf = CFStringCreateWithCString(0, "Generic", 0x600u);
    v147 = 1;
    v140 = CFStringCreateWithCString(0, "Headphones", 0x600u);
    v141 = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    inData = CFStringCreateWithCString(0, p_str, 0x600u);
    v139 = 1;
    *buf = &cf;
    *&buf[8] = &v140;
    *&buf[16] = &inData;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v92, buf, 3u, 1u);
    CACFString::~CACFString(&inData);
    CACFString::~CACFString(&v140);
    CACFString::~CACFString(&cf);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v94 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v95 = (*v94 ? *v94 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
        {
          v96 = (this + 8);
          if (*(this + 31) < 0)
          {
            v96 = *v96;
          }

          v97 = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v97 = __str.__r_.__value_.__r.__words[0];
          }

          *buf = 136315906;
          *&buf[4] = "VoiceProcessor_v8.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 549;
          *&buf[18] = 2080;
          *&buf[20] = v96;
          *&buf[28] = 2080;
          *&buf[30] = v97;
          _os_log_impl(&dword_2724B4000, v95, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> : failed to find Headphone OCNS aupreset: %s/Generic/Headphones/%s, using preset from strip", buf, 0x26u);
        }
      }

      v98 = *(this + 1588);
      if (v98 && ((*v3 & 1) != 0 || v3[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v99 = this + 8;
        if (*(this + 31) < 0)
        {
          v99 = *v99;
        }

        v100 = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v100 = __str.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v98, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 549, "ApplyPortSubtypeTuningOverride", ": failed to find Headphone OCNS aupreset: %s/Generic/Headphones/%s, using preset from strip", v99, v100);
      }
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v101 = &__str;
    }

    else
    {
      v101 = __str.__r_.__value_.__r.__words[0];
    }

    v102 = TuningPListMgr::lookupPlist_(*(this + 343), v101, 1u);
    v140 = v102;
    if (TuningInSubdirs || !v102)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v109 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v110 = (*v109 ? *v109 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
        {
          v111 = __str.__r_.__value_.__r.__words[0];
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v111 = &__str;
          }

          *buf = 136315906;
          *&buf[4] = "VoiceProcessor_v8.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 561;
          *&buf[18] = 2080;
          *&buf[20] = v111;
          *&buf[28] = 2080;
          *&buf[30] = "(UL-)OCNSV4";
          _os_log_impl(&dword_2724B4000, v110, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> : failed to load Headphone OCNS tuning aupreset:%s for %s", buf, 0x26u);
        }
      }

      v112 = *(this + 1588);
      if (v112 && ((*v3 & 1) != 0 || v3[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v113 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v113 = &__str;
        }

        CALegacyLog::log(v112, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 561, "ApplyPortSubtypeTuningOverride", ": failed to load Headphone OCNS tuning aupreset:%s for %s", v113, "(UL-)OCNSV4");
      }
    }

    else
    {
      CFRetain(v102);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 1045, 0, 0, 0, 8uLL, &v140, 1);
      CFRelease(v140);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v103 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v104 = (*v103 ? *v103 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
        {
          v105 = __str.__r_.__value_.__r.__words[0];
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v105 = &__str;
          }

          *buf = 136315906;
          *&buf[4] = "VoiceProcessor_v8.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 558;
          *&buf[18] = 2080;
          *&buf[20] = v105;
          *&buf[28] = 2080;
          *&buf[30] = "(UL-)OCNSV4";
          _os_log_impl(&dword_2724B4000, v104, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found Headphone OCNS aupreset:%s for %s", buf, 0x26u);
        }
      }

      v106 = *(this + 1588);
      if (v106 && ((*v3 & 1) != 0 || v3[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v107 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v107 = &__str;
        }

        CALegacyLog::log(v106, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 558, "ApplyPortSubtypeTuningOverride", "found Headphone OCNS aupreset:%s for %s", v107, "(UL-)OCNSV4");
      }

      std::string::basic_string[abi:ne200100]<0>(buf, "(UL-)OCNSV4");
      cf = buf;
      v108 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 581, buf);
      std::string::operator=((v108 + 5), &__str);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if ((v143[23] & 0x80000000) != 0)
    {
      operator delete(*v143);
    }

    v62 = **(this + 294);
    v63 = *(this + 600);
  }

  if ((*(*this + 728))(this, v62, v63))
  {
    v114 = *(this + 22);
    if (v114 == 1718628662 || v114 == 1718628408)
    {
      LODWORD(inData) = 0;
      AudioUnitSetProperty(*(this + 406), 0x15u, 0, 0, &inData, 4u);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v115 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v116 = (*v115 ? *v115 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
        {
          CAX4CCStringNoQuote::CAX4CCStringNoQuote(v143, *(this + 600));
          *buf = 136315650;
          *&buf[4] = "VoiceProcessor_v8.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 569;
          *&buf[18] = 2080;
          *&buf[20] = v143;
          _os_log_impl(&dword_2724B4000, v116, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> known headphones with ReverbSuppressor AU preset override detected %s", buf, 0x1Cu);
        }
      }

      v117 = *(this + 1588);
      if (v117 && ((*v3 & 1) != 0 || v3[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v118 = VPLogScope(void)::scope;
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(this + 600));
        CALegacyLog::log(v117, 5, v118, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 569, "ApplyPortSubtypeTuningOverride", "known headphones with ReverbSuppressor AU preset override detected %s", buf);
      }

      v159 = unk_272759168;
      memset(v160, 0, sizeof(v160));
      v155 = unk_272759128;
      v156 = xmmword_272759138;
      v157 = unk_272759148;
      v158 = xmmword_272759158;
      v151 = unk_2727590E8;
      v152 = xmmword_2727590F8;
      v153 = unk_272759108;
      v154 = xmmword_272759118;
      strcpy(buf, "vptx_reverbsuppressor_telephony");
      *&buf[32] = xmmword_2727590B8;
      v149 = unk_2727590C8;
      v150 = xmmword_2727590D8;
      v119 = *(this + 343);
      __str.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "Generic", 0x600u);
      __str.__r_.__value_.__s.__data_[8] = 1;
      cf = CFStringCreateWithCString(0, "Headphones", 0x600u);
      v147 = 1;
      v140 = CFStringCreateWithCString(0, buf, 0x600u);
      v141 = 1;
      *v143 = &__str;
      *&v143[8] = &cf;
      *&v143[16] = &v140;
      TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v119, v143, 3u, 1u);
      CACFString::~CACFString(&v140);
      CACFString::~CACFString(&cf);
      CACFString::~CACFString(&__str);
      if (TuningInSubdirs)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v120 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v121 = (*v120 ? *v120 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
          {
            v122 = (this + 8);
            if (*(this + 31) < 0)
            {
              v122 = *v122;
            }

            *v143 = 136315906;
            *&v143[4] = "VoiceProcessor_v8.cpp";
            *&v143[12] = 1024;
            *&v143[14] = 575;
            *&v143[18] = 2080;
            *&v143[20] = v122;
            v144 = 2080;
            v145 = buf;
            _os_log_impl(&dword_2724B4000, v121, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> : failed to find Headphone ReverbSuppressor aupreset: %s/Generic/Headphones/%s", v143, 0x26u);
          }
        }

        v123 = *(this + 1588);
        if (v123 && ((*v3 & 1) != 0 || v3[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v124 = this + 8;
          if (*(this + 31) < 0)
          {
            v124 = *v124;
          }

          CALegacyLog::log(v123, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 575, "ApplyPortSubtypeTuningOverride", ": failed to find Headphone ReverbSuppressor aupreset: %s/Generic/Headphones/%s", v124, buf);
        }
      }

      else
      {
        v125 = TuningPListMgr::lookupPlist_(*(this + 343), buf, 1u);
        cf = v125;
        if (v125)
        {
          CFRetain(v125);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1054, 0, 0, 0, 8uLL, &cf, 1);
          CFRelease(cf);
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v126 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
          {
            v127 = (*v126 ? *v126 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
            {
              *v143 = 136315906;
              *&v143[4] = "VoiceProcessor_v8.cpp";
              *&v143[12] = 1024;
              *&v143[14] = 586;
              *&v143[18] = 2080;
              *&v143[20] = buf;
              v144 = 2080;
              v145 = "(UL-)ReverbSuppressor";
              _os_log_impl(&dword_2724B4000, v127, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found Headphone ReverbSuppressor aupreset:%s for %s", v143, 0x26u);
            }
          }

          v128 = *(this + 1588);
          if (v128 && ((*v3 & 1) != 0 || v3[1] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v128, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 586, "ApplyPortSubtypeTuningOverride", "found Headphone ReverbSuppressor aupreset:%s for %s", buf, "(UL-)ReverbSuppressor");
          }

          std::string::basic_string[abi:ne200100]<0>(v143, "(UL-)ReverbSuppressor");
          __str.__r_.__value_.__r.__words[0] = v143;
          v129 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 581, v143);
          std::string::__assign_external((v129 + 5), buf);
          if ((v143[23] & 0x80000000) != 0)
          {
            operator delete(*v143);
          }
        }

        else
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v130 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v131 = (*v130 ? *v130 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
            {
              *v143 = 136315906;
              *&v143[4] = "VoiceProcessor_v8.cpp";
              *&v143[12] = 1024;
              *&v143[14] = 590;
              *&v143[18] = 2080;
              *&v143[20] = buf;
              v144 = 2080;
              v145 = "(UL-)ReverbSuppressor";
              _os_log_impl(&dword_2724B4000, v131, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> : failed to load Headphone EQ tuning aupreset:%s for %s", v143, 0x26u);
            }
          }

          v132 = *(this + 1588);
          if (v132 && ((*v3 & 1) != 0 || v3[1] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v132, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v8.cpp", 590, "ApplyPortSubtypeTuningOverride", ": failed to load Headphone EQ tuning aupreset:%s for %s", buf, "(UL-)ReverbSuppressor");
          }
        }
      }
    }
  }

  v133 = *MEMORY[0x277D85DE8];
  return TuningInSubdirs;
}