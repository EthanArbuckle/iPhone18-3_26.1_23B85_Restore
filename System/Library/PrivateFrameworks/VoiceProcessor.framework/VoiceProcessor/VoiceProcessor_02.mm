uint64_t _ZNSt3__18optionalIN5caulk9semaphoreEE7emplaceB8ne200100IJEvEERS2_DpOT_(caulk::semaphore *a1)
{
  if (*(a1 + 16) == 1)
  {
    a1 = MEMORY[0x2743CB750]();
    *(a1 + 16) = 0;
  }

  result = caulk::semaphore::semaphore(a1);
  *(result + 16) = 1;
  return result;
}

uint64_t VoiceProcessorV2::IsGenericRoute(uint64_t this)
{
  v1 = this;
  v2 = 0;
  LOBYTE(this) = 0;
  v3 = **(v1 + 2352);
  v4 = **(v1 + 2376);
  do
  {
    v5 = *&aWphpbphposupot[v2] == v3 && *&aWphpbphposupot[v2 + 24] == v4;
    this = v5 | (this & 1);
    v2 += 4;
  }

  while (v2 != 24);
  return this;
}

void VoiceProcessorV2::GetHardwareModelNameForTuning(VoiceProcessorV2 *this, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *MEMORY[0x277D85DE8];
    v5 = "Generic";
LABEL_3:

    std::string::basic_string[abi:ne200100]<0>(this, v5);
    return;
  }

  if (*(a2 + 60) == 1)
  {
    v6 = *(a2 + 56);
    if ((v6 & 0x100000000) != 0)
    {
      v6 = v6;
    }

    else
    {
      v6 = 0;
    }

    if (v6 <= 0)
    {
      v10 = *MEMORY[0x277D85DE8];
      v5 = "";
      goto LABEL_3;
    }

    caulk::make_string("AID%d", &v14, v6);
    *&v17[7] = *&v15[7];
    *v17 = *v15;
    v7 = v16;
    v8 = *v15;
    *this = v14;
    *(this + 1) = v8;
    *(this + 15) = *&v17[7];
    *(this + 23) = v7;
LABEL_14:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if ((*(a2 + 55) & 0x80000000) == 0)
  {
    *this = *(a2 + 32);
    *(this + 2) = *(a2 + 48);
    goto LABEL_14;
  }

  v11 = *(a2 + 40);
  v12 = *MEMORY[0x277D85DE8];
  v13 = *(a2 + 32);

  std::string::__init_copy_ctor_external(this, v13, v11);
}

void caulk::make_string(caulk *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  v5 = vsnprintf(0, 0, this, va);
  if (v5 <= 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    std::string::resize(a2, (v5 + 1), 0);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v9 = vsnprintf(v7, v8, this, va);
    std::string::resize(a2, v9, 0);
  }
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_2724DD394(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size - v7 + v6, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v13 = this;
    if ((v8 & 0x80) != 0)
    {
      v13 = this->__r_.__value_.__r.__words[0];
    }

    v14 = v13 + size;
    memmove(v13 + size, __src, v6);
    v14[v6] = 0;
    v15 = v6 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v6);
    if ((v18 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v12 = v18;
    }

    else
    {
      v12 = __p[1];
    }

    std::string::append(this, v11, v12);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_2724DD4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void VoiceProcessorV2::GetVersionNameForTuning(std::string *this, uint64_t a2)
{
  v3 = (*(*a2 + 112))(a2);
  std::to_string(&v5, v3);
  v4 = std::string::insert(&v5, 0, "VPV", 3uLL);
  *this = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_2724DD660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VoiceProcessorV2::GetDeviceCodeNameForTuning(UInt8 *this, uint64_t a2, int a3)
{
  if (a3)
  {

    std::string::basic_string[abi:ne200100]<0>(this, "gen");
  }

  else
  {
    v4 = *(a2 + 72) - 1;
    if (v4 > 0x43)
    {
      v5 = 0;
    }

    else
    {
      v5 = dword_272759684[v4];
    }

    v6 = PlatformUtilities_iOS::CopyProductTypeFilePrefix(v5);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFStringGetTypeID())
      {
        applesauce::CF::convert_to<std::string,0>(this, v7);
        CFRelease(v7);
        return;
      }

      CFRelease(v7);
    }

    std::string::basic_string[abi:ne200100]<0>(this, "");
  }
}

void sub_2724DD774(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

std::string *VoiceProcessorV2::GetRouteSpecificGenericTuningSubDir(std::string *this, uint64_t a2)
{
  v2 = this;
  if (**(a2 + 2352) == 1885892727 && **(a2 + 2376) == 1886222185 && *(a2 + 2400) == 1781740087)
  {
    *&this->__r_.__value_.__l.__data_ = 0uLL;
    this->__r_.__value_.__r.__words[2] = 0;
    this = std::string::append[abi:ne200100]<char const*,0>(this, "Accessory/AID6001", "");
    v3 = 1;
  }

  else
  {
    v3 = 0;
    this->__r_.__value_.__s.__data_[0] = 0;
  }

  v2[1].__r_.__value_.__s.__data_[0] = v3;
  return this;
}

void sub_2724DD81C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<VoiceProcessorV2::NotifyPropertyChanged(unsigned int)::$_0,std::default_delete<VoiceProcessorV2::NotifyPropertyChanged(unsigned int)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      _Block_release(v3);
      *(v2 + 8) = 0;
    }

    MEMORY[0x2743CBFA0](v2, 0x1080C409070E284);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<VoiceProcessorV2::NotifyPropertyChanged(unsigned int)::$_0>(dispatch_queue_s *,VoiceProcessorV2::NotifyPropertyChanged(unsigned int)::$_0 &&)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = a1;
  (*(*(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  return std::unique_ptr<VoiceProcessorV2::NotifyPropertyChanged::$_0,std::default_delete<VoiceProcessorV2::NotifyPropertyChanged::$_0>>::~unique_ptr[abi:ne200100](&v2);
}

void sub_2724DD8DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<VoiceProcessorV2::NotifyPropertyChanged::$_0,std::default_delete<VoiceProcessorV2::NotifyPropertyChanged::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t VoiceProcessorV2::ShouldGenerateReferenceSignalInternally(VoiceProcessorV2 *this)
{
  if (*(this + 16161))
  {
    return 0;
  }

  if (!*(this + 288))
  {
    return 1;
  }

  v3 = _os_feature_enabled_simple_impl();
  v4 = *(this + 19);
  if (v3 && v4 == 48)
  {
    v5 = *(this + 600);
    if (v5 != 1886613611 && (*(this + 2260) & 1) == 0)
    {
      goto LABEL_16;
    }

    return 0;
  }

  v6 = *(this + 2260);
  v5 = *(this + 600);
  if (v4 > 0x22 || ((1 << v4) & 0x406000000) == 0)
  {
    if ((*(this + 2260) & 1) == 0)
    {
LABEL_16:
      v8 = 1;
      goto LABEL_17;
    }

    return 0;
  }

  v7 = _os_feature_enabled_impl();
  if (v6)
  {
    return 0;
  }

  v8 = v7 ^ 1;
LABEL_17:
  if (v5 == 1781805623)
  {
    v8 = 0;
  }

  if (v5 == 1781740087)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

void VoiceProcessorV2::SrcAndAppendToRingBuffer(VoiceProcessorV2 *this, int a2, const AudioTimeStamp *a3, AudioBufferList *a4, _DWORD *a5, AudioBufferList *a6, AudioTimeStamp *a7, const AudioTimeStamp *a8)
{
  v9 = a6;
  v11 = a3;
  v13 = this + 12288;
  v14 = 1968;
  if (a2)
  {
    v14 = 1936;
  }

  v15 = this + v14;
  v16 = 1336;
  if (a2)
  {
    v16 = 1296;
  }

  v17 = this + v16;
  v18 = *(this + 180);
  v19 = 1072;
  if (a2)
  {
    v19 = 1064;
  }

  v111 = *(this + v19);
  v20 = *(this + 15881);
  v21 = a2 ^ 1;
  if ((a2 ^ 1))
  {
    if (*(this + 15881) && (VoiceProcessorV2::InjectionFilesReadSignal(this, 6, a3, a4), (v13[3593] & 1) != 0) || v13[3594] == 1)
    {
      v22 = 3;
      goto LABEL_16;
    }
  }

  else if (*(this + 15881) && (VoiceProcessorV2::InjectionFilesReadSignal(this, 5, a3, a4), (v13[3593] & 1) != 0) || (v13[3594] & 1) != 0)
  {
    v22 = 2;
LABEL_16:
    VoiceProcessorV2::SaveFilesWriteSignal(this, v22, v11, a4, a7);
  }

  v23 = v21 & v9;
  if (v15[24] == 1)
  {
    v107 = v21 & v9;
    v109 = v18;
    v25 = *v15;
    v24 = *(v15 + 1);
    mNumberBuffers = a4->mNumberBuffers;
    v105 = a4;
    v27 = *v111;
    NumberOfOutputFrames = VoiceProcessor::SampleRateConverter::GetNumberOfOutputFrames(***v15);
    v114 = v11;
    v115 = NumberOfOutputFrames;
    v106 = v11;
    if (v27)
    {
      v29 = 0;
      v30 = (v111 + 2);
      mBuffers = a4->mBuffers;
      do
      {
        v113.mNumberBuffers = 1;
        v113.mBuffers[0] = *v30;
        v112.mNumberBuffers = 1;
        if (v29 >= mNumberBuffers)
        {
          v32 = &v105->mBuffers[(mNumberBuffers - 1)];
        }

        else
        {
          v32 = mBuffers;
        }

        v112.mBuffers[0] = *v32;
        if ((v24 - v25) >> 3 <= v29)
        {
          goto LABEL_27;
        }

        if (v29 >= (*(v15 + 1) - *v15) >> 3)
        {
LABEL_133:
          std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__throw_out_of_range[abi:ne200100]();
        }

        v33 = *(*v15 + 8 * v29);
        if (v33)
        {
          VoiceProcessor::SampleRateConverter::Convert(v33, &v114, &v115, &v112, &v113);
        }

        else
        {
LABEL_27:
          bzero(v113.mBuffers[0].mData, v113.mBuffers[0].mDataByteSize);
        }

        ++v29;
        ++mBuffers;
        ++v30;
      }

      while (v27 != v29);
      v34 = v115;
    }

    else
    {
      v34 = NumberOfOutputFrames;
    }

    v63 = v109;
    v35 = 0;
    if (*v111 == *(v17 + 1) && v34)
    {
      v64 = *v17 - *(v17 + 2);
      v65 = v106;
      if (v64)
      {
        if (v64 >= v34)
        {
          v35 = v34;
        }

        else
        {
          v35 = *v17 - *(v17 + 2);
        }

        v66 = *v17 - *(v17 + 4);
        if (v66 >= v35)
        {
          v67 = v35;
        }

        else
        {
          v67 = v66;
        }

        if (*v111)
        {
          v68 = 0;
          v69 = (v111 + 4);
          do
          {
            v70 = *v69;
            v69 += 2;
            memcpy((*(v17 + 3) + 4 * (*(v17 + 4) + *v17 * v68++)), v70, 4 * v67);
            v71 = *(v17 + 1);
          }

          while (v68 < v71);
          v63 = v109;
          if (v66 < v35)
          {
            if (v71)
            {
              v72 = 0;
              v73 = (v111 + 4);
              do
              {
                v74 = *v73;
                v73 += 2;
                memcpy((*(v17 + 3) + 4 * (*v17 * v72++)), (v74 + 4 * v67), 4 * (v35 - v67));
              }

              while (v72 < *(v17 + 1));
            }
          }
        }

        *(v17 + 2) += v35;
        v75 = *(v17 + 4) + v35;
        *(v17 + 4) = v75;
        v47 = v75 >= *v17;
        v76 = v75 - *v17;
        if (v47)
        {
          *(v17 + 4) = v76;
        }
      }
    }

    else
    {
      v65 = v106;
    }

    if (v107)
    {
      v77 = *(this + 173);
      v78 = *(this + 172);
      v79 = *a5;
      v80 = *v63;
      v81 = VoiceProcessor::SampleRateConverter::GetNumberOfOutputFrames(**v78);
      v114 = v65;
      v115 = v81;
      if (v80)
      {
        v82 = 0;
        v83 = (v77 - v78) >> 3;
        v84 = (v63 + 2);
        v85 = (a5 + 2);
        do
        {
          v113.mNumberBuffers = 1;
          v113.mBuffers[0] = *v84;
          v112.mNumberBuffers = 1;
          if (v82 >= v79)
          {
            v86 = &a5[4 * (v79 - 1) + 2];
          }

          else
          {
            v86 = v85;
          }

          v112.mBuffers[0] = *v86;
          if (v83 <= v82)
          {
            goto LABEL_102;
          }

          v87 = *(this + 172);
          if (v82 >= (*(this + 173) - v87) >> 3)
          {
            goto LABEL_133;
          }

          v88 = *(v87 + 8 * v82);
          if (v88)
          {
            VoiceProcessor::SampleRateConverter::Convert(v88, &v114, &v115, &v112, &v113);
          }

          else
          {
LABEL_102:
            bzero(v113.mBuffers[0].mData, v113.mBuffers[0].mDataByteSize);
          }

          ++v82;
          ++v85;
          ++v84;
        }

        while (v80 != v82);
        v34 = v115;
        v63 = v109;
      }

      else
      {
        v34 = v81;
      }

      if (*v63 == *(this + 363))
      {
        v35 = 0;
        if (v34)
        {
          v89 = *(this + 362);
          v90 = v89 - *(this + 364);
          if (v90)
          {
            if (v90 >= v34)
            {
              v35 = v34;
            }

            else
            {
              v35 = v89 - *(this + 364);
            }

            v91 = v89 - *(this + 366);
            if (v91 >= v35)
            {
              v92 = v35;
            }

            else
            {
              v92 = v91;
            }

            if (*v63)
            {
              v93 = 0;
              v94 = (v63 + 4);
              do
              {
                v95 = *v94;
                v94 += 2;
                memcpy((*(this + 184) + 4 * (*(this + 366) + *(this + 362) * v93++)), v95, 4 * v92);
                v96 = *(this + 363);
              }

              while (v93 < v96);
              if (v91 < v35 && v96)
              {
                v97 = 0;
                v98 = (v109 + 16);
                do
                {
                  v99 = *v98;
                  v98 += 2;
                  memcpy((*(this + 184) + 4 * (*(this + 362) * v97++)), (v99 + 4 * v92), 4 * (v35 - v92));
                }

                while (v97 < *(this + 363));
              }
            }

            *(this + 364) += v35;
            v100 = *(this + 366) + v35;
            *(this + 366) = v100;
            v101 = *(this + 362);
            v47 = v100 >= v101;
            v102 = v100 - v101;
            if (v47)
            {
              *(this + 366) = v102;
            }
          }
        }
      }

      else
      {
        v35 = 0;
      }
    }

    LODWORD(v11) = v34;
  }

  else
  {
    if (a4->mNumberBuffers == *(v17 + 1))
    {
      v35 = 0;
      if (v11)
      {
        v36 = *v17 - *(v17 + 2);
        if (v36)
        {
          v108 = v21 & v9;
          if (v36 >= v11)
          {
            v35 = v11;
          }

          else
          {
            v35 = *v17 - *(v17 + 2);
          }

          v37 = *v17 - *(v17 + 4);
          if (v37 >= v35)
          {
            v38 = v35;
          }

          else
          {
            v38 = v37;
          }

          if (a4->mNumberBuffers)
          {
            v39 = 0;
            p_mData = &a4->mBuffers[0].mData;
            do
            {
              v41 = *p_mData;
              p_mData += 2;
              memcpy((*(v17 + 3) + 4 * (*(v17 + 4) + *v17 * v39++)), v41, 4 * v38);
              v42 = *(v17 + 1);
            }

            while (v39 < v42);
            if (v37 < v35 && v42)
            {
              v43 = 0;
              v44 = &a4->mBuffers[0].mData;
              do
              {
                v45 = *v44;
                v44 += 2;
                memcpy((*(v17 + 3) + 4 * (*v17 * v43++)), &v45[4 * v38], 4 * (v35 - v38));
              }

              while (v43 < *(v17 + 1));
            }
          }

          *(v17 + 2) += v35;
          v46 = *(v17 + 4) + v35;
          *(v17 + 4) = v46;
          v47 = v46 >= *v17;
          v48 = v46 - *v17;
          if (v47)
          {
            *(v17 + 4) = v48;
          }

          v23 = v108;
        }
      }
    }

    else
    {
      v35 = 0;
    }

    if (v23)
    {
      if (*a5 == *(this + 363))
      {
        v35 = 0;
        if (v11)
        {
          v49 = *(this + 362);
          v50 = v49 - *(this + 364);
          if (v50)
          {
            if (v50 >= v11)
            {
              v35 = v11;
            }

            else
            {
              v35 = v49 - *(this + 364);
            }

            v51 = v49 - *(this + 366);
            if (v51 >= v35)
            {
              v52 = v35;
            }

            else
            {
              v52 = v51;
            }

            if (*a5)
            {
              v53 = 0;
              v54 = (a5 + 4);
              do
              {
                v55 = *v54;
                v54 += 2;
                memcpy((*(this + 184) + 4 * (*(this + 366) + *(this + 362) * v53++)), v55, 4 * v52);
                v56 = *(this + 363);
              }

              while (v53 < v56);
              if (v51 < v35 && v56)
              {
                v57 = 0;
                v58 = (a5 + 4);
                do
                {
                  v59 = *v58;
                  v58 += 2;
                  memcpy((*(this + 184) + 4 * (*(this + 362) * v57++)), (v59 + 4 * v52), 4 * (v35 - v52));
                }

                while (v57 < *(this + 363));
              }
            }

            *(this + 364) += v35;
            v60 = *(this + 366) + v35;
            *(this + 366) = v60;
            v61 = *(this + 362);
            v47 = v60 >= v61;
            v62 = v60 - v61;
            if (v47)
            {
              *(this + 366) = v62;
            }
          }
        }
      }

      else
      {
        v35 = 0;
      }
    }
  }

  if (v35 < v11)
  {
    v103 = *(this + 3148);
    v104 = *(this + 3149);

    VoiceProcessorV2::LogIOError(this, 25.001, v103, v104, 0.0, "srcandappendtoringbuff: overflow?!", a3, a4, a5, a6, a7, a8);
  }
}

uint64_t VoiceProcessorV2::InstantiateAU(VoiceProcessorV2 *this, OSType a2, OSType a3, OpaqueAudioComponentInstance **a4, int a5)
{
  *&v59[5] = *MEMORY[0x277D85DE8];
  if (*a4)
  {
    VoiceProcessorV2::DisposeAU(this, a2, a3, a4, a5);
  }

  v10 = this + 12288;
  inDesc.componentType = a2;
  inDesc.componentSubType = a3;
  *&inDesc.componentManufacturer = 1634758764;
  inDesc.componentFlagsMask = 0;
  Next = AudioComponentFindNext(0, &inDesc);
  if (!Next)
  {
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
        CAX4CCString::CAX4CCString(v51, a3);
        *buf = 136315650;
        v55 = "VoiceProcessor_v2.cpp";
        v56 = 1024;
        v57 = 2481;
        v58 = 2080;
        *v59 = v51;
        _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> InstantiateAU: couldn't find component 'aufx'|%s AU", buf, 0x1Cu);
      }
    }

    v18 = *(this + 1588);
    if (v18 && ((v10[3593] & 1) != 0 || v10[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v19 = VPLogScope(void)::scope;
      CAX4CCString::CAX4CCString(buf, a3);
      CALegacyLog::log(v18, 1, v19, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 2481, "InstantiateAU", "InstantiateAU: couldn't find component 'aufx'|%s AU");
    }

    goto LABEL_35;
  }

  if (!AudioComponentInstanceNew(Next, a4))
  {
    if (*(this + 15881) != 1 || a5 == 0)
    {
LABEL_41:
      result = 0;
      goto LABEL_42;
    }

    v51[0] = a2;
    v51[1] = a3;
    v23 = *a4;
    v52 = 1634758764;
    v53 = v23;
    v24 = VoiceProcessorV2::AUIsInDownLinkProcessingChain(this, v51);
    v25 = 12656;
    if (v24)
    {
      v25 = 12664;
    }

    v26 = *(this + v25);
    if (a3 == 1635284580)
    {
      if (v23 == *(this + 1569))
      {
        v36 = 0;
        v37 = 0uLL;
        do
        {
          v37 = vsubq_s32(v37, vmvnq_s8(vuzp1q_s32(vceqzq_s64(*(this + v36 + 3512)), vceqzq_s64(*(this + v36 + 3528)))));
          v36 += 32;
        }

        while (v36 != 512);
        v28 = vaddvq_s32(v37);
LABEL_92:
        Index = VoiceProcessorV2::VPAUProcessingBlock::FindIndex(v26[3], v26[4], v51);
        if ((v28 & 0x80000000) == 0)
        {
          v45 = Index;
          if (Index != v28)
          {
            if ((Index & 0x80000000) != 0)
            {
              AUProcessingBlockBase::InsertAUAtIndex();
              v48 = v26[2];
              AUPBRegisterAU();
              *buf = 1635087726;
              v49 = v26[2];
              AUPBPropertiesChanged();
            }

            else if (Index > v28)
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v46 = VPLogScope(void)::scope;
              if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
              {
                v47 = (*v46 ? *v46 : MEMORY[0x277D86220]);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315906;
                  v55 = "vpDebug_TuningSupport.cpp";
                  v56 = 1024;
                  v57 = 133;
                  v58 = 1024;
                  v59[0] = v28;
                  LOWORD(v59[1]) = 1024;
                  *(&v59[1] + 2) = v45;
                  _os_log_impl(&dword_2724B4000, v47, OS_LOG_TYPE_DEBUG, "%25s:%-5d VoiceProcessorV2::VPAUProcessingBlock::InsertAUIntoProcessingBlock index proposed=%d, current=%d !?", buf, 0x1Eu);
                }
              }
            }
          }
        }

        goto LABEL_41;
      }
    }

    else if (a3 == 1635284597 && v23 == *(this + 1568))
    {
      v27 = 0;
      v28 = 0;
      do
      {
        if (*(this + v27 + 2792))
        {
          ++v28;
        }

        v27 += 8;
      }

      while (v27 != 568);
      goto LABEL_92;
    }

    v29 = 0;
    v30 = 0;
    v31 = this + 2792;
    while (1)
    {
      v32 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
      v33 = 71;
      while (*v32 != v29)
      {
        v32 += 18;
        if (!--v33)
        {
          v34 = 0;
          goto LABEL_60;
        }
      }

      v34 = v32[1];
LABEL_60:
      if (v34 == a3 && v23 == *&v31[8 * v29])
      {
        break;
      }

      v30 = v29++ > 0x45;
      if (v29 == 71)
      {
        goto LABEL_75;
      }
    }

    if (v29)
    {
      v35 = 0;
      v28 = 0;
      do
      {
        if (*&v31[8 * v35])
        {
          ++v28;
        }

        ++v35;
      }

      while (v29 != v35);
    }

    else
    {
      v28 = 0;
    }

    if (!v30)
    {
      goto LABEL_92;
    }

LABEL_75:
    v38 = 0;
    v39 = this + 3512;
    while (1)
    {
      v40 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
      v41 = 64;
      while (*v40 != v38)
      {
        v40 += 18;
        if (!--v41)
        {
          v42 = 0;
          goto LABEL_81;
        }
      }

      v42 = v40[1];
LABEL_81:
      if (v42 == a3 && v23 == *&v39[8 * v38])
      {
        break;
      }

      if (++v38 == 64)
      {
        v28 = -1;
        goto LABEL_92;
      }
    }

    if (v38)
    {
      v43 = 0;
      v28 = 0;
      do
      {
        if (*&v39[8 * v43])
        {
          ++v28;
        }

        ++v43;
      }

      while (v38 != v43);
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_92;
  }

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
      CAX4CCString::CAX4CCString(v51, a3);
      *buf = 136315650;
      v55 = "VoiceProcessor_v2.cpp";
      v56 = 1024;
      v57 = 2467;
      v58 = 2080;
      *v59 = v51;
      _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> InstantiateAU: couldn't instantiate 'aufx'|%s AU", buf, 0x1Cu);
    }
  }

  v14 = *(this + 1588);
  if (v14 && ((v10[3593] & 1) != 0 || v10[3594] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v15 = VPLogScope(void)::scope;
    CAX4CCString::CAX4CCString(buf, a3);
    CALegacyLog::log(v14, 1, v15, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 2467, "InstantiateAU", "InstantiateAU: couldn't instantiate 'aufx'|%s AU");
  }

LABEL_35:
  result = 4294957891;
LABEL_42:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VoiceProcessorV2::SignalParamSwitchMix(uint64_t this, int a2, int a3, _BYTE *a4, BOOL *a5)
{
  v7 = this;
  v39[1] = *MEMORY[0x277D85DE8];
  outValue = 2.0;
  if (a3)
  {
    this = AudioUnitGetParameter(*(this + 3032), 0x1Cu, 0, 0, &outValue);
    v8 = outValue;
    if (outValue == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = outValue;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if (!a2)
  {
    v8 = v9;
  }

  v10 = *(v7 + 4688);
  if ((v10 & 0x40000000) != 0 && (*(v7 + 4707) & 0x40) != 0 && *(v7 + 3032) || (v10 & 0x80000000) != 0 && (*(v7 + 4707) & 0x80) != 0 && *(v7 + 3040))
  {
    if (v8 == 2)
    {
      memcpy(*(*(v7 + 3440) + 16), *(*(v7 + 3448) + 16), *(v7 + 4316));
      v12 = *(v7 + 516);
      memcpy(*(*(v7 + 3488) + 16 * *(v7 + 4192) + 16), *(*(v7 + 4064) + 16), 4 * (2 * v12));
      memcpy(*(*(v7 + 3488) + 16 * *(v7 + 4196) + 16), *(*(v7 + 4064) + 32), 4 * (2 * *(v7 + 516)));
      v13 = *(v7 + 3488);
      v14 = *(v13 + 16);
      v15 = *(v13 + 32);
      v16 = *(v7 + 4328);
      v17 = *(v16 + 16);
      v18 = *(v16 + 32);
      v19 = *(*(v7 + 4064) + 16);
      v20 = v19 + 4 * v12;
      v21 = *(*(v7 + 3496) + 16);
      MEMORY[0x2743CCDD0](v14, 1, v17, 1, v19, 1, (2 * v12));
      MEMORY[0x2743CCDD0](v15, 1, v18, 1, v21, 1, (2 * v12));
      MEMORY[0x2743CCD80](v21, 1, v19, 1, v19, 1, (2 * v12));
      MEMORY[0x2743CCE30](v20, 1, v19, 1, v19, 1, v12);
      MEMORY[0x2743CCDD0](v14, 1);
      MEMORY[0x2743CCDD0](v14 + 4 * v12, 1, v17, 1, v21 + 4 * v12, 1, v12);
      MEMORY[0x2743CCD80](v21, 1, v21 + 4 * v12, 1, v20, 1, v12);
      MEMORY[0x2743CCDD0](v15, 1, v18 + 4 * v12, 1, v21, 1, v12);
      MEMORY[0x2743CCDD0](v15 + 4 * v12, 1, v18, 1, v21 + 4 * v12, 1, v12);
      MEMORY[0x2743CCD80](v21, 1, v21 + 4 * v12, 1, v21, 1, v12);
      this = MEMORY[0x2743CCD80](v21, 1, v20, 1, v20, 1, v12);
      v38 = 0;
      v39[0] = 0;
      v22 = *(v7 + 4200);
      *(v39 + v22) = *(v7 + 4216);
      *(&v39[-1] + v22) = *(v7 + 4232);
      v23 = *(v7 + 4204);
      *(v39 + v23) = *(v7 + 4220);
      *(&v39[-1] + v23) = *(v7 + 4236);
      v24 = *(v7 + 4320);
      v25 = v24 + v12;
      v26 = (*(v17 + 4 * v24) * *(v17 + 4 * v24)) + (*(v17 + 4 * v25) * *(v17 + 4 * v25));
      v27 = (*(v18 + 4 * v24) * *(v18 + 4 * v24)) + (*(v18 + 4 * v25) * *(v18 + 4 * v25));
      if ((v26 + v27) <= 0.0)
      {
        v29 = 0.0;
        v30 = 1.0;
      }

      else
      {
        v28 = 1.0 / (v26 + v27);
        v29 = v27 * v28;
        v30 = v26 * v28;
      }

      *(v7 + 4216) = (v29 * *(v39 + 1)) + (v30 * *v39);
      *(v7 + 4232) = (v29 * *(&v38 + 1)) + (v30 * *&v38);
      *(v7 + 4248) = *(v7 + 4248) * *(v7 + 4252);
      *(v7 + 4264) = (v29 * *(v7 + 4268)) + (v30 * *(v7 + 4264));
      *(v7 + 4280) = (v29 * *(v7 + 4284)) + (v30 * *(v7 + 4280));
      if ((*(v7 + 4691) & 8) != 0 && (*(v7 + 4707) & 8) != 0 && *(v7 + 3008))
      {
        memcpy(*(*(v7 + 3488) + 16 * *(v7 + 4192) + 16), *(*(v7 + 4088) + 16), 4 * (2 * *(v7 + 516)));
        memcpy(*(*(v7 + 3488) + 16 * *(v7 + 4196) + 16), *(*(v7 + 4096) + 16), 4 * (2 * *(v7 + 516)));
        v31 = *(v7 + 3488);
        v32 = *(v31 + 16);
        v33 = *(v31 + 32);
        v34 = *(*(v7 + 4088) + 16);
        v35 = *(*(v7 + 3496) + 16);
        MEMORY[0x2743CCDD0](v32, 1, v17, 1, v34, 1, (2 * v12));
        MEMORY[0x2743CCDD0](v33, 1, v18, 1, v35, 1, (2 * v12));
        MEMORY[0x2743CCD80](v35, 1, v34, 1, v34, 1, (2 * v12));
        MEMORY[0x2743CCE30](v34 + 4 * v12, 1, v34, 1, v34, 1, v12);
        MEMORY[0x2743CCDD0](v32, 1, v17 + 4 * v12, 1, v35, 1, v12);
        MEMORY[0x2743CCDD0](v32 + 4 * v12, 1, v17, 1, v35 + 4 * v12, 1, v12);
        MEMORY[0x2743CCD80](v35, 1, v35 + 4 * v12, 1, v34 + 4 * v12, 1, v12);
        MEMORY[0x2743CCDD0](v33, 1, v18 + 4 * v12, 1, v35, 1, v12);
        MEMORY[0x2743CCDD0](v33 + 4 * v12, 1, v18, 1, v35 + 4 * v12, 1, v12);
        MEMORY[0x2743CCD80](v35, 1, v35 + 4 * v12, 1, v35, 1, v12);
        this = MEMORY[0x2743CCD80](v35, 1, v34 + 4 * v12, 1, v34 + 4 * v12, 1, v12);
      }
    }

    else
    {
      if (v8 == 1)
      {
        v11 = *(v7 + 4212);
      }

      else
      {
        if (v8)
        {
          goto LABEL_32;
        }

        v11 = *(v7 + 4208);
      }

      if (v11 == 1)
      {
        memcpy(*(*(v7 + 3440) + 16), *(*(v7 + 4072) + 16), *(v7 + 4316));
        this = memcpy(*(*(v7 + 4064) + 16), *(*(v7 + 4064) + 32), *(v7 + 4316));
        if ((*(v7 + 4691) & 8) != 0 && (*(v7 + 4707) & 8) != 0 && *(v7 + 3008))
        {
          this = memcpy(*(*(v7 + 4088) + 16), *(*(v7 + 4096) + 16), *(v7 + 4316));
        }

        *(v7 + 4216) = *(v7 + 4220);
        *(v7 + 4232) = *(v7 + 4236);
        *(v7 + 4248) = *(v7 + 4252);
        *(v7 + 4264) = *(v7 + 4268);
        *(v7 + 4280) = *(v7 + 4284);
        *a4 = 1;
      }
    }
  }

LABEL_32:
  v36 = *MEMORY[0x277D85DE8];
  return this;
}

BOOL VoiceProcessorV2::VPUseAUInProcess(VoiceProcessorV2 *this, unsigned int a2, int a3)
{
  if (a3)
  {
    if (a2 < 0x47)
    {
      v3 = 0;
      if (a2 != 62)
      {
        v4 = this + 8 * (a2 >> 6);
        if ((*(v4 + 586) & (1 << a2)) != 0)
        {
          if ((*(v4 + 588) & (1 << a2)) != 0)
          {
            v5 = this + 8 * a2 + 2792;
            return *v5 != 0;
          }

          return 0;
        }
      }

      return v3;
    }

LABEL_20:
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  if (a2 >= 0x40)
  {
    goto LABEL_20;
  }

  if (*(this + 1108) & (1 << a2)) == 0 || a2 - 27 < 0x25 && ((0x1400000007uLL >> (a2 - 27)))
  {
    return 0;
  }

  if ((*(this + 1109) & (1 << a2)) != 0)
  {
    goto LABEL_12;
  }

  if (*(this + 480) != 1)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 0x3D && ((1 << a2) & 0x2000000028000000) != 0)
  {
LABEL_12:
    v5 = this + 8 * a2 + 3512;
    return *v5 != 0;
  }

  return v3;
}

float VoiceProcessorV2::TimeAlignedReferenceAndOtherHandling(VoiceProcessorV2 *this, int a2, int a3, int a4, char a5)
{
  v6 = a2;
  result = *(this + 1062);
  if (result == 0.0)
  {
    if (a3 && a4 && a2)
    {
      if ((a5 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!a3)
    {
LABEL_9:
      v9 = (*(*(this + 515) + 16) + 4 * *(this + 129));
      v10.realp = *(*(this + 515) + 16);
      v10.imagp = v9;
      VPTimeFreqConverter_Analyze(*(this + 523), *(*(this + 425) + 16), &v10);
      goto LABEL_10;
    }

    memcpy(*(*(this + 425) + 16), *(*(this + 426) + 16), 4 * *(this + 129));
    goto LABEL_9;
  }

LABEL_10:
  if (a3)
  {
    if ((v6 & 1) == 0)
    {
      result = *(this + 1063);
      *(this + 1062) = result;
    }
  }

  return result;
}

uint64_t VoiceProcessorV2::ApplyBeamDirection(VoiceProcessorV2 *this)
{
  AUPropAndParamHelper::AddItemToAUParamList(this + 683, 0, *(this + 688));
  if ((*(this + 4691) & 0x80) == 0)
  {
    return 0;
  }

  v2 = *(this + 380);
  if (!v2)
  {
    return 0;
  }

  result = AudioUnitSetParameter(v2, 0, 0, 0, *(this + 688), 0);
  if (!result)
  {
    return 0;
  }

  return result;
}

void VoiceProcessorV2::ApplyCustomTelephonyDSPOverrides(int8x16_t *this, CFDictionaryRef theDict, int a3)
{
  if (CFDictionaryGetCount(theDict))
  {
    if (a3)
    {
      if (CFDictionaryContainsKey(theDict, @"noise suppression") && CFDictionaryGetValue(theDict, @"noise suppression"))
      {
        this[293].i64[1] |= 0x10uLL;
      }

      if (CFDictionaryContainsKey(theDict, @"agc"))
      {
        Value = CFDictionaryGetValue(theDict, @"agc");
        if (Value)
        {
          v7 = Value;
          CFRetain(Value);
          valuePtr = 0.0;
          CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
          CFRelease(v7);
          v8 = this[293].i64[1];
          v9 = v8 & 0xFFFFFFFFFFFFFFFDLL;
          v10 = v8 | 0x12;
          if (LODWORD(valuePtr) == 1)
          {
            v11 = v10;
          }

          else
          {
            v11 = v9;
          }

          this[293].i64[1] = v11;
        }
      }
    }

    if (CFDictionaryContainsKey(theDict, @"gain"))
    {
      v12 = CFDictionaryGetValue(theDict, @"gain");
      if (v12)
      {
        v13 = v12;
        CFRetain(v12);
        valuePtr = 0.0;
        CFNumberGetValue(v13, kCFNumberFloat32Type, &valuePtr);
        CFRelease(v13);
        if (a3)
        {
          this[293] = vorrq_s8(this[293], xmmword_272756330);
          v14 = valuePtr;
          v15 = &this[438].i64[1];
          v16 = 1;
        }

        else
        {
          this[554].i64[0] |= 0x6000000000000000uLL;
          AUPropAndParamHelper::AddItemToAUParamList(&this[684].i64[1], 0, valuePtr);
          v14 = valuePtr;
          v15 = &this[684].i64[1];
          v16 = 8;
        }

        AUPropAndParamHelper::AddItemToAUParamList(v15, v16, v14);
      }
    }

    if (CFDictionaryContainsKey(theDict, @"eq"))
    {
      v17 = CFDictionaryGetValue(theDict, @"eq");
      if (v17)
      {
        v18 = v17;
        CFRetain(v17);
        Count = CFArrayGetCount(v18);
        if (a3)
        {
          v20 = 779;
        }

        else
        {
          v20 = 1209;
        }

        if (a3)
        {
          this[293].i64[0] |= 0x8000000000000000;
          v21 = 16;
          v22 = 587;
        }

        else
        {
          v21 = 0x4000000200000000;
          v22 = 1108;
        }

        this->i64[v22] |= v21;
        v23 = Count - 1;
        if (Count >= 1)
        {
          v24 = 0;
          if (v23 >= 9)
          {
            v23 = 9;
          }

          v25 = v23 + 1;
          v26 = 5000;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v18, v24);
            if (ValueAtIndex)
            {
              v28 = ValueAtIndex;
              CFRetain(ValueAtIndex);
              if (CFDictionaryContainsKey(v28, @"AUNBandEQ_FilterType") && CFDictionaryContainsKey(v28, @"AUNBandEQ_FilterFrequency"))
              {
                AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v20], v24 + 1000, 0.0);
                v29 = CFDictionaryGetValue(v28, @"AUNBandEQ_FilterType");
                if (v29)
                {
                  v30 = v29;
                  CFRetain(v29);
                  valuePtr = 0.0;
                  CFNumberGetValue(v30, kCFNumberIntType, &valuePtr);
                  CFRelease(v30);
                  AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v20], v24 | 0x7D0, LODWORD(valuePtr));
                }

                v31 = CFDictionaryGetValue(v28, @"AUNBandEQ_FilterFrequency");
                if (v31)
                {
                  v32 = v31;
                  CFRetain(v31);
                  valuePtr = 0.0;
                  CFNumberGetValue(v32, kCFNumberFloat32Type, &valuePtr);
                  CFRelease(v32);
                  AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v20], v24 + 3000, valuePtr);
                }
              }

              if (CFDictionaryContainsKey(v28, @"AUNBandEQ_FilterGain"))
              {
                v33 = CFDictionaryGetValue(v28, @"AUNBandEQ_FilterGain");
                if (v33)
                {
                  v34 = v33;
                  CFRetain(v33);
                  valuePtr = 0.0;
                  CFNumberGetValue(v34, kCFNumberFloat32Type, &valuePtr);
                  CFRelease(v34);
                  AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v20], v24 | 0xFA0, valuePtr);
                }
              }

              if (CFDictionaryContainsKey(v28, @"AUNBandEQ_FilterBandwidth"))
              {
                v35 = CFDictionaryGetValue(v28, @"AUNBandEQ_FilterBandwidth");
                CFRetain(v35);
                valuePtr = 0.0;
                CFNumberGetValue(v35, kCFNumberFloat32Type, &valuePtr);
                CFRelease(v35);
                AUPropAndParamHelper::AddItemToAUParamList(&this->i64[v20], v26, valuePtr);
              }

              CFRelease(v28);
            }

            ++v24;
            ++v26;
            --v25;
          }

          while (v25);
        }

        CFRelease(v18);
      }
    }

    if (CFDictionaryContainsKey(theDict, @"speaker calibration") && this[284].i32[0] == 1)
    {
      v36 = CFDictionaryGetValue(theDict, @"speaker calibration");
      if (v36)
      {
        v37 = v36;
        CFRetain(v36);
        Length = CFDataGetLength(v37);
        BytePtr = CFDataGetBytePtr(v37);
        AUPropAndParamHelper::AddItemToAUPropsList(&this[771].i64[1], 0xFA01u, 0, 0, Length, BytePtr, 1);
        CFRelease(v37);
      }
    }
  }
}

void AUPropAndParamHelper::AddItemToAUPropsList(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, size_t size, void *a6, int a7)
{
  if (a7 && (v8 = *a1, (v9 = a1[1] - *a1) != 0))
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
    if (v10 <= 1)
    {
      v10 = 1;
    }

    while (*v8 != a2 || *(v8 + 1) != a3 || *(v8 + 2) != a4)
    {
      v8 = (v8 + 24);
      if (!--v10)
      {
        goto LABEL_9;
      }
    }

    AUPropertyItem::SetData(v8, size, a6);
  }

  else
  {
LABEL_9:
    v40 = 0;
    v37 = __PAIR64__(a3, a2);
    v38 = a4;
    v39 = 0;
    AUPropertyItem::SetData(&v37, size, a6);
    v12 = a1[1];
    v11 = a1[2];
    if (v12 >= v11)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a1) >> 3);
      if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v18 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a1) >> 3);
      v19 = 2 * v18;
      if (2 * v18 <= v17 + 1)
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x555555555555555)
      {
        v20 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v20 = v19;
      }

      v44 = a1;
      if (v20)
      {
        std::allocator<AUPropertyItem>::allocate_at_least[abi:ne200100](v20);
      }

      v21 = 24 * v17;
      v41 = 0;
      v42 = v21;
      v43 = 24 * v17;
      *(v21 + 16) = 0;
      v23 = v38;
      v22 = v39;
      v24 = v40;
      *v21 = v37;
      *(v21 + 8) = v23;
      AUPropertyItem::SetData((24 * v17), v22, v24);
      *&v43 = v43 + 24;
      v26 = *a1;
      v25 = a1[1];
      v45[0] = a1;
      v45[1] = &v47;
      v45[2] = &v48;
      v46 = 0;
      v27 = (v42 + v26 - v25);
      v47 = v27;
      v48 = v27;
      if (v26 == v25)
      {
        v46 = 1;
      }

      else
      {
        v28 = (v42 + v26 - v25);
        v29 = v26;
        do
        {
          *(v28 + 3) = 0;
          *(v28 + 2) = 0;
          if (v29 != v28)
          {
            v31 = *(v29 + 2);
            v30 = *(v29 + 3);
            v32 = *(v29 + 2);
            *v28 = *v29;
            *(v28 + 2) = v31;
            AUPropertyItem::SetData(v28, v30, v32);
            v28 = v48;
          }

          v29 += 24;
          v28 += 24;
          v48 = v28;
        }

        while (v29 != v25);
        v46 = 1;
        do
        {
          v33 = *(v26 + 2);
          if (v33)
          {
            free(v33);
            *(v26 + 2) = 0;
          }

          *v26 = 0;
          *(v26 + 1) = 0;
          v26 += 24;
        }

        while (v26 != v25);
      }

      std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AUPropertyItem>,AUPropertyItem*>>::~__exception_guard_exceptions[abi:ne200100](v45);
      v34 = *a1;
      *a1 = v27;
      v35 = a1[2];
      v36 = v43;
      *(a1 + 1) = v43;
      *&v43 = v34;
      *(&v43 + 1) = v35;
      v41 = v34;
      v42 = v34;
      std::__split_buffer<AUPropertyItem>::~__split_buffer(&v41);
      v16 = v36;
      v15 = v40;
    }

    else
    {
      v12[2] = 0;
      v14 = v38;
      v13 = v39;
      v15 = v40;
      *v12 = v37;
      v12[1] = v14;
      AUPropertyItem::SetData(v12, v13, v15);
      v16 = v12 + 3;
      a1[1] = v12 + 3;
    }

    a1[1] = v16;
    if (v15)
    {
      free(v15);
    }
  }
}

void sub_2724DF88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  std::__split_buffer<AUPropertyItem>::~__split_buffer(&a14);
  if (a13)
  {
    free(a13);
  }

  _Unwind_Resume(a1);
}

void AUPropertyItem::SetData(AUPropertyItem *this, size_t size, const void *a3)
{
  v4 = size;
  v6 = *(this + 2);
  if (v6)
  {
    free(v6);
  }

  *(this + 3) = 0;
  *(this + 2) = 0;
  if (a3)
  {
    v7 = malloc_type_malloc(v4, 0x2365AC71uLL);
    v8 = v7;
    if (v4 && !v7)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = std::bad_alloc::bad_alloc(exception);
    }

    bzero(v7, v4);
    *(this + 2) = v8;
    if (v8)
    {
      memcpy(v8, a3, v4);
      *(this + 3) = v4;
    }
  }
}

void std::allocator<AUPropertyItem>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<AUPropertyItem>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    v4 = *(i - 8);
    if (v4)
    {
      free(v4);
      *(i - 8) = 0;
    }

    *(i - 24) = 0;
    *(i - 16) = 0;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AUPropertyItem>,AUPropertyItem*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 8);
      if (v5)
      {
        free(v5);
        *(v3 - 8) = 0;
      }

      *(v3 - 24) = 0;
      *(v3 - 16) = 0;
      v3 -= 24;
    }
  }

  return a1;
}

void CA::StreamDescription::AsString(CA::StreamDescription *this, void *a2, double a3, int8x8_t a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 2);
  if (v6 == 1718773105)
  {
    caulk::make_string("%2u ch, %6.0f Hz, 'freq'", this, *(a2 + 7), *a2);
    goto LABEL_69;
  }

  if (v6 != 1819304813)
  {
    goto LABEL_19;
  }

  if (*(a2 + 5) != 1)
  {
    goto LABEL_19;
  }

  v7 = *(a2 + 6);
  if (v7 != *(a2 + 4))
  {
    goto LABEL_19;
  }

  v8 = *(a2 + 8);
  if (v7 < v8 >> 3)
  {
    goto LABEL_19;
  }

  v9 = *(a2 + 7);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = *(a2 + 3);
  if ((v10 & 0x20) == 0)
  {
    v15 = v7 == v7 / v9 * v9;
    v7 /= v9;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  if ((v10 & 2) != 0 || 8 * v7 != v8)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    if ((v10 & 0x1F84) == 0)
    {
      if (v7 == 4)
      {
        v12 = 1;
        goto LABEL_163;
      }

      v15 = v7 == 8;
      v55 = v7 == 8;
      if (v15)
      {
        v12 = 4 * v55;
        goto LABEL_163;
      }
    }

LABEL_19:
    v13 = *(a2 + 7);
    v14 = *a2;
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v6 == 0;
    }

    if (v15 && v14 == 0.0)
    {
      caulk::make_string("%2u ch, %6.0f Hz", this, 0, *a2);
      goto LABEL_69;
    }

    a4.i32[0] = bswap32(v6);
    v16 = vzip1_s8(a4, *&v14);
    v17.i64[0] = 0x1F0000001FLL;
    v17.i64[1] = 0x1F0000001FLL;
    v18.i64[0] = 0x5F0000005FLL;
    v18.i64[1] = 0x5F0000005FLL;
    *(&v60.__r_.__value_.__s + 23) = 4;
    LODWORD(v60.__r_.__value_.__l.__data_) = vuzp1_s8(vbsl_s8(vmovn_s32(vcgtq_u32(v18, vsraq_n_s32(v17, vshlq_n_s32(vmovl_u16(v16), 0x18uLL), 0x18uLL))), v16, 0x2E002E002E002ELL), *&v14).u32[0];
    v60.__r_.__value_.__s.__data_[4] = 0;
    caulk::make_string("%2u ch, %6.0f Hz, %s (0x%08X) ", &v58, v13, *&v14, &v60, *(a2 + 3));
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    v19 = *(a2 + 2);
    if (v19 <= 1819304812)
    {
      if (v19 != 1634492771 && v19 != 1634497332 && v19 != 1718378851)
      {
LABEL_70:
        caulk::make_string("%u bits/channel, %u bytes/packet, %u frames/packet, %u bytes/frame", &v60, *(a2 + 8), *(a2 + 4), *(a2 + 5), *(a2 + 6));
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v58;
        }

        else
        {
          v31 = v58.__r_.__value_.__r.__words[0];
        }

        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v58.__r_.__value_.__l.__size_;
        }

LABEL_62:
        v33 = std::string::insert(&v60, 0, v31, size);
        v34 = *&v33->__r_.__value_.__l.__data_;
        *(this + 2) = *(&v33->__r_.__value_.__l + 2);
        *this = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_65;
        }

        v35 = v60.__r_.__value_.__r.__words[0];
LABEL_64:
        operator delete(v35);
LABEL_65:
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        goto LABEL_69;
      }

LABEL_45:
      v28 = *(a2 + 3);
      if ((v28 - 1) < 4 || !v28 && (v19 == 1634497332 || v19 == 1936487278 || v19 == 1936487267))
      {
        caulk::make_string("from %u-bit source, ", &v60, CA::StreamDescription::AsString(void)const::kSourceBits[v28]);
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v60;
        }

        else
        {
          v29 = v60.__r_.__value_.__r.__words[0];
        }

        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v30 = v60.__r_.__value_.__l.__size_;
        }

        std::string::append(&v58, v29, v30);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::append(&v58, "from UNKNOWN source bit depth, ", 0x1FuLL);
      }

      caulk::make_string("%u frames/packet", &v60, *(a2 + 5));
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v58;
      }

      else
      {
        v31 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v58.__r_.__value_.__l.__size_;
      }

      goto LABEL_62;
    }

    if (v19 == 1936487278 || v19 == 1936487267)
    {
      goto LABEL_45;
    }

    if (v19 != 1819304813)
    {
      goto LABEL_70;
    }

    v20 = *(a2 + 3);
    v21 = *(a2 + 6);
    v22 = v20 & 0x20;
    v23 = "";
    if (!v21)
    {
      goto LABEL_37;
    }

    if ((v20 & 0x20) != 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = *(a2 + 7);
      if (!v24)
      {
        v22 = 0;
LABEL_37:
        v25 = " signed";
        if ((v20 & 4) == 0)
        {
          v25 = " unsigned";
        }

        if (v20)
        {
          v26 = "float";
        }

        else
        {
          v26 = "integer";
        }

        if (v20)
        {
          v27 = "";
        }

        else
        {
          v27 = v25;
        }

LABEL_102:
        v60.__r_.__value_.__s.__data_[0] = 0;
        if (v22)
        {
          v41 = ", deinterleaved";
        }

        else
        {
          v41 = "";
        }

        v42 = *(a2 + 8);
        v38 = "";
        v43 = "";
        goto LABEL_106;
      }
    }

    v37 = v21 / v24;
    if (v21 / v24 < 2)
    {
      v40 = " signed";
      if ((v20 & 4) == 0)
      {
        v40 = " unsigned";
      }

      if (v20)
      {
        v26 = "float";
      }

      else
      {
        v26 = "integer";
      }

      if (v20)
      {
        v27 = "";
      }

      else
      {
        v27 = v40;
      }

      if (v24 > v21)
      {
        goto LABEL_102;
      }

      v37 = 1;
      v38 = "";
    }

    else
    {
      if ((v20 & 2) != 0)
      {
        v38 = " big-endian";
      }

      else
      {
        v38 = " little-endian";
      }

      v39 = " unsigned";
      if ((v20 & 4) != 0)
      {
        v39 = " signed";
      }

      if (v20)
      {
        v26 = "float";
      }

      else
      {
        v26 = "integer";
      }

      if (v20)
      {
        v27 = "";
      }

      else
      {
        v27 = v39;
      }
    }

    v44 = *(a2 + 7);
    if ((v20 & 0x20) != 0)
    {
      v45 = 1;
    }

    else
    {
      v45 = *(a2 + 7);
    }

    if (v45)
    {
      v45 = 8 * (v21 / v45);
    }

    if (v45 == *(a2 + 8))
    {
      v60.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      if ((v20 & 8) != 0)
      {
        v46 = "";
      }

      else
      {
        v46 = "un";
      }

      snprintf(&v60, 0x20uLL, "%spacked in %u bytes", v46, v37);
      v21 = *(a2 + 6);
      v20 = *(a2 + 3);
      if (!v21)
      {
        v47 = 0;
        v22 = *(a2 + 3) & 0x20;
        goto LABEL_128;
      }

      v44 = *(a2 + 7);
      v22 = *(a2 + 3) & 0x20;
    }

    if (v22)
    {
      v47 = 1;
    }

    else
    {
      v47 = v44;
    }

    if (v47)
    {
      v47 = 8 * (v21 / v47);
    }

LABEL_128:
    v48 = *(a2 + 8);
    v49 = " high-aligned";
    if ((v20 & 0x10) == 0)
    {
      v49 = " low-aligned";
    }

    if ((v48 & 7) == 0 && v47 == v48)
    {
      v43 = "";
    }

    else
    {
      v43 = v49;
    }

    if (v22)
    {
      v41 = ", deinterleaved";
    }

    else
    {
      v41 = "";
    }

    if (v60.__r_.__value_.__s.__data_[0])
    {
      v23 = ", ";
LABEL_141:
      if (((v20 >> 7) & 0x3F) != 0)
      {
        snprintf(__str, 0x14uLL, "%u.%u");
      }

      else
      {
        snprintf(__str, 0x14uLL, "%u");
      }

      caulk::make_string("%s-bit%s%s %s%s%s%s%s", &v57, __str, v38, v27, v26, v23, &v60, v43, v41);
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &v58;
      }

      else
      {
        v51 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v52 = v58.__r_.__value_.__l.__size_;
      }

      v53 = std::string::insert(&v57, 0, v51, v52);
      v54 = *&v53->__r_.__value_.__l.__data_;
      *(this + 2) = *(&v53->__r_.__value_.__l + 2);
      *this = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      v35 = v57.__r_.__value_.__r.__words[0];
      goto LABEL_64;
    }

LABEL_106:
    if (*v43)
    {
      v23 = ", ";
    }

    goto LABEL_141;
  }

  if ((v10 & 4) == 0)
  {
    goto LABEL_19;
  }

  v11 = (v10 >> 7) & 0x3F;
  if (v11 != 24 || v7 != 4)
  {
    if (!v11 && v7 == 4)
    {
      v12 = 5;
      goto LABEL_163;
    }

    if (!v11 && v7 == 2)
    {
      v12 = 2;
      goto LABEL_163;
    }

    goto LABEL_19;
  }

  v12 = 3;
LABEL_163:
  if ((v10 & 0x20) != 0)
  {
    v56 = ", deinterleaved";
  }

  else
  {
    v56 = ", interleaved";
  }

  if (v9 == 1)
  {
    v56 = "";
  }

  caulk::make_string("%2u ch, %6.0f Hz, %s%s", this, v9, *a2, *(&off_279E48C78 + v12), v56);
LABEL_69:
  v36 = *MEMORY[0x277D85DE8];
}

void sub_2724E01E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void VoiceProcessorV2::CreateSRC(VoiceProcessorV2 *this, double a2, double a3, VoiceProcessorV2 *a4, int a5, uint64_t a6, unsigned __int8 *a7)
{
  v25 = *MEMORY[0x277D85DE8];
  LOBYTE(v16[0]) = (*(a4 + 19) - 15) < 4;
  VoiceProcessorV2::ReadAndApplyDefaultsOverride(a4, @"vp_enable_ramstad_src", 0, v16, a7);
  if (LOBYTE(v16[0]))
  {
    v12 = 33;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *(a4 + 1120);
    if (a5)
    {
LABEL_3:
      if (LOBYTE(v16[0]))
      {
        CA::AudioSampleRateConverterBuilder::AudioSampleRateConverterBuilder(v16 + 1, 1);
        CA::AudioSampleRateConverterBuilder::SetAttribute<double>(v17, *MEMORY[0x277CEFDB8], a2);
        CA::AudioSampleRateConverterBuilder::SetAttribute<double>(v17, *MEMORY[0x277CEFDC8], a3);
        CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v17, *MEMORY[0x277CEFDC0], a5);
        CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v17, *MEMORY[0x277CEFDD0], v12);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v13 = *VPLogScope(void)::scope;
        if (os_log_type_enabled(*VPLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109888;
          *&buf[4] = v12;
          v19 = 1024;
          v20 = a5;
          v21 = 2048;
          v22 = a2;
          v23 = 2048;
          v24 = a3;
          _os_log_debug_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEBUG, "creating 'Ramstad' sample rate converter Q%u, %u ch, %.2fHz to %.2fHz", buf, 0x22u);
        }

        CA::AudioSampleRateConverterBuilder::Build(buf);
        caulk::expected<CA::AudioSampleRateConverter,int>::value(buf);
        operator new();
      }

      CA::AudioSampleRateConverterBuilder::AudioSampleRateConverterBuilder(v16 + 1, 0);
      CA::AudioSampleRateConverterBuilder::SetAttribute<double>(v17, *MEMORY[0x277CEFDE0], a2);
      CA::AudioSampleRateConverterBuilder::SetAttribute<double>(v17, *MEMORY[0x277CEFDF0], a3);
      CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v17, *MEMORY[0x277CEFDE8], a5);
      CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v17, *MEMORY[0x277CEFDD8], 1852797549);
      CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v17, *MEMORY[0x277CEFDF8], 2);
      CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v17, *MEMORY[0x277CEFE00], v12);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v14 = *VPLogScope(void)::scope;
      if (os_log_type_enabled(*VPLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109888;
        *&buf[4] = v12;
        v19 = 1024;
        v20 = a5;
        v21 = 2048;
        v22 = a2;
        v23 = 2048;
        v24 = a3;
        _os_log_debug_impl(&dword_2724B4000, v14, OS_LOG_TYPE_DEBUG, "creating 'Resampler2' sample rate converter Q%u, %u ch, %.2fHz to %.2fHz", buf, 0x22u);
      }

      CA::AudioSampleRateConverterBuilder::Build(buf);
      caulk::expected<CA::AudioSampleRateConverter,int>::value(buf);
      operator new();
    }
  }

  *this = 0;
  v15 = *MEMORY[0x277D85DE8];
}

void sub_2724E05AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(double)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<double>(__CFString const*,__CFString const*,double (*)(void const*,BOOL &),std::function<void ()(double)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<double>(__CFString const*,__CFString const*,double (*)(void const*,BOOL &),std::function<void ()(double)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 0;
  (*(a1 + 8))(v3, &v8);
  v5 = 0;
  if (v8 == 1)
  {
    v9 = v4;
    v6 = *(a1 + 40);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(v6, &v9);
    v5 = v8;
  }

  return v5 & 1;
}

void std::__function::__func<void CASmartPreferences::AddHandler<double>(__CFString const*,__CFString const*,double (*)(void const*,BOOL &),std::function<void ()(double)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<double>(__CFString const*,__CFString const*,double (*)(void const*,BOOL &),std::function<void ()(double)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<double>(__CFString const*,__CFString const*,double (*)(void const*,BOOL &),std::function<void ()(double)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<double>(__CFString const*,__CFString const*,double (*)(void const*,BOOL &),std::function<void ()(double)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2881B02C8;
  a2[1] = v2;
  return std::__function::__value_func<void ()(double)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<void CASmartPreferences::AddHandler<double>(__CFString const*,__CFString const*,double (*)(void const*,BOOL &),std::function<void ()(double)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<double>(__CFString const*,__CFString const*,double (*)(void const*,BOOL &),std::function<void ()(double)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_2881B02C8;
  std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void CASmartPreferences::AddHandler<double>(__CFString const*,__CFString const*,double (*)(void const*,BOOL &),std::function<void ()(double)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<double>(__CFString const*,__CFString const*,double (*)(void const*,BOOL &),std::function<void ()(double)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_2881B02C8;
  std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

float std::__function::__func<CASmartPreferences::Read(__CFString const*,__CFString const*,float &)::{lambda(double)#1},std::allocator<CASmartPreferences::Read(__CFString const*,__CFString const*,float &)::{lambda(double)#1}>,void ()(double)>::operator()(uint64_t a1, double *a2)
{
  result = *a2;
  **(a1 + 8) = result;
  return result;
}

uint64_t std::__function::__func<CASmartPreferences::Read(__CFString const*,__CFString const*,float &)::{lambda(double)#1},std::allocator<CASmartPreferences::Read(__CFString const*,__CFString const*,float &)::{lambda(double)#1}>,void ()(double)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B0310;
  a2[1] = v2;
  return result;
}

void VPAUBusFormats::AllocateForFormats(VPAUBusFormats *this, unsigned int a2, unsigned int a3)
{
  v6 = *(this + 1);
  if (v6)
  {
    free(v6);
    *(this + 1) = 0;
  }

  *this = 0;
  if (a2)
  {
    v7 = malloc_type_malloc(40 * a2, 0x2365AC71uLL);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;
    bzero(v7, 40 * a2);
    *(this + 1) = v8;
    *this = a2;
  }

  v9 = *(this + 3);
  if (v9)
  {
    free(v9);
    *(this + 3) = 0;
  }

  *(this + 4) = 0;
  v10 = malloc_type_malloc(40 * a3, 0x2365AC71uLL);
  v11 = v10;
  if (a3 && !v10)
  {
LABEL_14:
    exception = __cxa_allocate_exception(8uLL);
    v13 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v10, 40 * a3);
  *(this + 3) = v11;
  if (a3)
  {
    if (v11)
    {
      *(this + 4) = a3;
    }
  }
}

__n128 VPAUBusFormats::SetFormats(VPAUBusFormats *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  VPAUBusFormats::AllocateForFormats(a1, a3, a5);
  if (a3)
  {
    v11 = *(a1 + 1);
    v12 = 40 * a3;
    do
    {
      result = *a2;
      v13 = *(a2 + 16);
      *(v11 + 32) = *(a2 + 32);
      *v11 = result;
      *(v11 + 16) = v13;
      a2 += 40;
      v11 += 40;
      v12 -= 40;
    }

    while (v12);
  }

  if (a5)
  {
    v14 = *(a1 + 3);
    v15 = 40 * a5;
    do
    {
      result = *a4;
      v16 = *(a4 + 16);
      *(v14 + 32) = *(a4 + 32);
      *v14 = result;
      *(v14 + 16) = v16;
      a4 += 40;
      v14 += 40;
      v15 -= 40;
    }

    while (v15);
  }

  return result;
}

uint64_t VoiceProcessorV2::GetFarEndVoiceMixChannelCount(VoiceProcessorV2 *this)
{
  v32 = *MEMORY[0x277D85DE8];
  if ((*(this + 2261) & 1) == 0 && *(this + 61) < 2u)
  {
    goto LABEL_79;
  }

  v2 = this + 15881;
  v3 = *(this + 20);
  v4 = v3 == 4 || v3 == 2;
  if (!v4 && (v3 || *(this + 61) != 2))
  {
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
        v10 = *(this + 20);
        *buf = 136315650;
        v27 = "VoiceProcessor_v2.cpp";
        v28 = 1024;
        v29 = 6781;
        v30 = 1024;
        v31 = v10;
        _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> force mono downmix due to operation mode: %u or third party call with mono DLFEV", buf, 0x18u);
      }
    }

    v11 = *(this + 1588);
    if (v11 && ((*v2 & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        v24 = *(this + 1588);
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        v11 = v24;
      }

      v12 = *(this + 20);
      CALegacyLog::log(v11, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 6781, "GetFarEndVoiceMixChannelCount", "force mono downmix due to operation mode: %u or third party call with mono DLFEV");
    }

    goto LABEL_79;
  }

  if (*(this + 16288) == 1)
  {
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
        *buf = 136315394;
        v27 = "VoiceProcessor_v2.cpp";
        v28 = 1024;
        v29 = 6786;
        _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> force 32-to-1 mono downmix", buf, 0x12u);
      }
    }

    v7 = *(this + 1588);
    if (v7 && ((*v2 & 1) != 0 || v2[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v7, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 6786, "GetFarEndVoiceMixChannelCount", "force 32-to-1 mono downmix");
    }

    goto LABEL_79;
  }

  v13 = **(this + 294);
  result = 1;
  if (v13 > 1885892726)
  {
    if (v13 == 1886613611)
    {
      v18 = *(this + 19);
      if (((1 << v18) & 0x198000020) != 0)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 <= 0x20)
      {
        result = v19;
      }

      else
      {
        result = 2;
      }
    }

    else if (v13 == 1885892727)
    {
      v17 = *(this + 600);
      result = 2;
      if (v17 != 1781740087 && v17 != 1781805623)
      {
        if (VoiceProcessorV2::isDeviceSpatializationDisabledInHeadsetRoutes(this))
        {
          result = 1;
        }

        else
        {
          result = 2;
        }
      }
    }

    goto LABEL_80;
  }

  if (v13 != 1885892674 && v13 != 1885892706)
  {
    goto LABEL_80;
  }

  if (VoiceProcessorV2::isDeviceSpatializationDisabledInHeadsetRoutes(this) || !VoiceProcessorV2::IsRefPortOwningDeviceBluetoothAppleProduct(this))
  {
LABEL_79:
    result = 1;
    goto LABEL_80;
  }

  if (!*(this + 4096) && (*(this + 20) || *(this + 61) != 2))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v20 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
    if (v20)
    {
      v21 = v20;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v27 = "VoiceProcessor_v2.cpp";
        v28 = 1024;
        v29 = 6819;
        v30 = 1024;
        v31 = 0;
        _os_log_impl(&dword_2724B4000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> force 32-to-1 mono downmix due to spatial mode off (mSpatialMode = %d)", buf, 0x18u);
      }
    }

    v22 = *(this + 1588);
    if (v22 && ((*v2 & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        v25 = *(this + 1588);
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        v22 = v25;
      }

      CALegacyLog::log(v22, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 6819, "GetFarEndVoiceMixChannelCount", "force 32-to-1 mono downmix due to spatial mode off (mSpatialMode = %d)");
    }

    goto LABEL_79;
  }

  v16 = *(this + 91);
  if (v16 >= 2)
  {
    result = 2;
  }

  else
  {
    result = v16;
  }

LABEL_80:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2724E1158(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t VoiceProcessorV2::GetDynamicsDSPChannelCount(VoiceProcessorV2 *this)
{
  if (*(this + 91) == 2 && ((v1 = *(this + 1108), (v1 & 0x400000) != 0) && (*(this + 8874) & 0x40) != 0 && *(this + 461) || (v1 & 0x4000000) != 0 && (*(this + 8875) & 4) != 0 && *(this + 465)))
  {
    return 2;
  }

  else
  {
    return *(this + 71);
  }
}

BOOL VoiceProcessorV2::isDeviceSpatializationDisabledInHeadsetRoutes(VoiceProcessorV2 *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(this + 91);
  if (v1 <= 1)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    if (VPLogScope(void)::scope && *(VPLogScope(void)::scope + 8) >= 6)
    {
      v3 = *VPLogScope(void)::scope ? *VPLogScope(void)::scope : MEMORY[0x277D86220];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v8 = 136315394;
        v9 = "VoiceProcessor_v2.cpp";
        v10 = 1024;
        v11 = 6718;
        _os_log_impl(&dword_2724B4000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> disable spatialization when mix format is less than 2", &v8, 0x12u);
      }
    }

    v4 = *(this + 1588);
    if (v4 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        v7 = *(this + 1588);
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        v4 = v7;
      }

      CALegacyLog::log(v4, 6, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 6718, "isDeviceSpatializationDisabledInHeadsetRoutes", "disable spatialization when mix format is less than 2");
    }
  }

  result = v1 < 2;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2724E1354(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t VoiceProcessorV2::PopulateAUPropsAndParamsLists(VoiceProcessorV2 *this, unsigned int a2, int a3)
{
  v356 = *MEMORY[0x277D85DE8];
  v347 = 0;
  v348 = 0;
  v5 = this + 15881;
  v349 = 0;
  v350 = 0;
  if (a3)
  {
    switch(a2)
    {
      case 0u:
      case 5u:
      case 6u:
        v169 = *(this + 53);
        *buf = *(this + 52);
        *&buf[16] = v169;
        *&buf[32] = *(this + 108);
        VPAUBusFormats::AllocateForFormats(&v347, 1u, 1u);
        goto LABEL_130;
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
        v7 = *(this + 104);
        VPAUBusFormats::AllocateForFormats(&v347, 1u, 1u);
        v8 = v348;
        *v348 = v7;
        v9.n128_u32[1] = 41;
        *(v8 + 8) = xmmword_272756340;
        *(v8 + 24) = xmmword_272756350;
        v10 = v350;
        *v350 = v7;
        *(v10 + 8) = xmmword_272756340;
        *(v10 + 24) = xmmword_272756350;
        break;
      case 0xBu:
      case 0xCu:
        VPAUBusFormats::AllocateForFormats(&v347, 2u, 4u);
        v72 = *(this + 104);
        v73 = v348;
        *v348 = v72;
        v74 = xmmword_272756340;
        *(v73 + 8) = xmmword_272756340;
        *(v73 + 24) = xmmword_272756360;
        v75 = v348;
        v76 = v350;
        *(v348 + 40) = v72;
        *(v75 + 48) = xmmword_272756340;
        *(v75 + 64) = xmmword_272756360;
        v77 = *(this + 104);
        *v76 = v77;
        *(v76 + 8) = xmmword_272756340;
        v78 = xmmword_272756350;
        goto LABEL_109;
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
        v29 = *(this + 104);
        v36 = *(this + 99);
        VPAUBusFormats::AllocateForFormats(&v347, 2u, 3u);
        v37 = v348;
        *v348 = v29;
        v9 = xmmword_272756340;
        *(v37 + 8) = xmmword_272756340;
        v33 = xmmword_272756350;
        *(v37 + 24) = xmmword_272756350;
        v38 = v348;
        v35 = v350;
        *(v348 + 40) = v36;
        *(v38 + 48) = xmmword_272756340;
        *(v38 + 64) = xmmword_272756350;
        goto LABEL_13;
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
        v29 = *(this + 104);
        v30 = *(this + 99);
        v31 = *(this + 205);
        VPAUBusFormats::AllocateForFormats(&v347, 2u, 3u);
        v32 = v348;
        *v348 = v29;
        v9 = xmmword_272756340;
        *(v32 + 8) = xmmword_272756340;
        v33 = xmmword_272756350;
        *(v32 + 24) = xmmword_272756350;
        v34 = v348;
        v35 = v350;
        *(v348 + 40) = v30;
        *(v34 + 48) = xmmword_272756340;
        *(v34 + 64) = 4;
        *(v34 + 68) = v31;
        *(v34 + 72) = 32;
LABEL_13:
        *v35 = v29;
        *(v35 + 8) = v9;
        *(v35 + 24) = v33;
        v39 = v350;
        *(v350 + 40) = v29;
        *(v39 + 48) = v9;
        *(v39 + 64) = v33;
        *(v39 + 80) = v29;
        *(v39 + 88) = v9;
        *(v39 + 104) = v33;
        break;
      case 0x16u:
      case 0x17u:
      case 0x18u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
        v22 = *(this + 104);
        v23 = *(this + 99);
        v24 = *(this + 205);
        VPAUBusFormats::AllocateForFormats(&v347, 2u, 6u);
        v25 = v348;
        *v348 = v22;
        v9.n128_u32[1] = 41;
        *(v25 + 8) = xmmword_272756340;
        *(v25 + 24) = xmmword_272756350;
        v26 = v348;
        v27 = v350;
        *(v348 + 40) = v23;
        *(v26 + 48) = xmmword_272756340;
        *(v26 + 64) = 4;
        *(v26 + 68) = v24;
        *(v26 + 72) = 32;
        *v27 = v22;
        *(v27 + 8) = xmmword_272756340;
        *(v27 + 24) = xmmword_272756350;
        v28 = v350;
        *(v350 + 40) = v22;
        *(v28 + 48) = xmmword_272756340;
        *(v28 + 64) = xmmword_272756350;
        *(v28 + 80) = v22;
        *(v28 + 88) = xmmword_272756340;
        *(v28 + 104) = xmmword_272756350;
        *(v28 + 120) = v22;
        *(v28 + 128) = xmmword_272756340;
        *(v28 + 144) = xmmword_272756350;
        *(v28 + 160) = v22;
        *(v28 + 168) = xmmword_272756340;
        *(v28 + 184) = xmmword_272756350;
        *(v28 + 200) = v22;
        *(v28 + 208) = xmmword_272756340;
        *(v28 + 224) = xmmword_272756350;
        break;
      case 0x1Cu:
        v174 = *(this + 53);
        *buf = *(this + 52);
        *&buf[16] = v174;
        v175 = *(this + 103);
        *&buf[32] = *(this + 108);
        v355 = v175;
        v176 = *(this + 808);
        v353 = *(this + 792);
        v354 = v176;
        v177 = *(this + 58);
        *v351 = *(this + 57);
        *&v351[16] = v177;
        *&v351[32] = *(this + 118);
        v9 = VPAUBusFormats::SetFormats(&v347, buf, 2, v351, 1);
        break;
      case 0x1Du:
      case 0x38u:
      case 0x39u:
        VPAUBusFormats::AllocateForFormats(&v347, 1u, 1u);
        v9.n128_u64[0] = *(this + 114);
        v199 = v348;
        *v348 = v9.n128_u64[0];
        v200 = xmmword_272756380;
        *(v199 + 8) = xmmword_272756380;
        v201 = xmmword_272756390;
        goto LABEL_128;
      case 0x1Eu:
        v178 = *(this + 58);
        *buf = *(this + 57);
        *&buf[16] = v178;
        *&buf[32] = *(this + 118);
        VPAUBusFormats::AllocateForFormats(&v347, 6u, 1u);
        v179 = v348;
        v180 = *buf;
        *v348 = *buf;
        v181 = *&buf[16];
        *(v179 + 16) = *&buf[16];
        v182 = *&buf[32];
        *(v179 + 32) = *&buf[32];
        *(v179 + 40) = v180;
        *(v179 + 56) = v181;
        *(v179 + 72) = v182;
        *(v179 + 80) = v180;
        *(v179 + 96) = v181;
        *(v179 + 112) = v182;
        *(v179 + 152) = v182;
        *(v179 + 120) = v180;
        *(v179 + 136) = v181;
        *(v179 + 160) = v180;
        *(v179 + 176) = v181;
        *(v179 + 192) = v182;
        v183 = *&buf[32];
        *(v179 + 232) = *&buf[32];
        v184 = *buf;
        v9 = *&buf[16];
        *(v179 + 216) = *&buf[16];
        *(v179 + 200) = v184;
        goto LABEL_131;
      case 0x1Fu:
        VPAUBusFormats::AllocateForFormats(&v347, 1u, 1u);
        v160 = v348;
        *v348 = *(this + 104);
        *(v160 + 8) = xmmword_272756380;
        *(v160 + 24) = xmmword_2727563C0;
        v140 = v350;
        *v350 = *(this + 114);
        *(v140 + 8) = xmmword_272756380;
        goto LABEL_107;
      case 0x20u:
        VPAUBusFormats::AllocateForFormats(&v347, 1u, 2u);
        v170 = v348;
        *v348 = *(this + 104);
        v9.n128_u32[1] = 41;
        *(v170 + 8) = xmmword_272756380;
        *(v170 + 24) = xmmword_2727563C0;
        v171 = *(this + 114);
        v172 = v350;
        *v350 = v171;
        *(v172 + 8) = xmmword_272756380;
        *(v172 + 24) = xmmword_272756390;
        v173 = v350;
        *(v350 + 40) = v171;
        *(v173 + 48) = xmmword_272756380;
        *(v173 + 64) = xmmword_272756390;
        break;
      case 0x21u:
        VPAUBusFormats::AllocateForFormats(&v347, 5u, 2u);
        v141 = 0;
        v9.n128_u64[0] = *(this + 104);
        v142 = xmmword_272756380;
        v143 = xmmword_272756390;
        do
        {
          v144 = v348 + v141;
          *v144 = v9.n128_u64[0];
          *(v144 + 8) = xmmword_272756380;
          *(v144 + 24) = xmmword_272756390;
          v141 += 40;
        }

        while (v141 != 200);
        v145 = v350;
        *v350 = v9.n128_u64[0];
        *(v145 + 8) = xmmword_272756380;
        *(v145 + 24) = xmmword_272756390;
        goto LABEL_121;
      case 0x22u:
      case 0x23u:
        VPAUBusFormats::AllocateForFormats(&v347, 2u, 2u);
        v9.n128_u64[0] = *(this + 104);
        v165 = v348;
        *v348 = v9.n128_u64[0];
        *(v165 + 8) = xmmword_272756380;
        *(v165 + 24) = xmmword_2727563B0;
        v166 = v350;
        *v350 = v9.n128_u64[0];
        *(v166 + 8) = xmmword_272756380;
        *(v166 + 24) = xmmword_2727563B0;
        v167 = v348;
        v168 = v350;
        *(v348 + 40) = v9.n128_u64[0];
        *(v167 + 48) = xmmword_272756380;
        *(v167 + 64) = xmmword_2727563B0;
        *(v168 + 40) = v9.n128_u64[0];
        *(v168 + 48) = xmmword_272756380;
        *(v168 + 64) = xmmword_2727563B0;
        break;
      case 0x24u:
        v192 = *(this + 215) + 1;
        *buf = *(this + 104);
        *&buf[8] = xmmword_272756340;
        *&buf[24] = 4;
        *&buf[28] = v192;
        *&buf[32] = 32;
        *v351 = *buf;
        *&v351[8] = xmmword_272756340;
        *&v351[24] = xmmword_272756350;
        v9 = VPAUBusFormats::SetFormats(&v347, buf, 1, v351, 1);
        break;
      case 0x25u:
        VPAUBusFormats::AllocateForFormats(&v347, 2u, 4u);
        v161 = *(this + 104);
        v162 = v348;
        *v348 = v161;
        v74 = xmmword_272756380;
        *(v162 + 8) = xmmword_272756380;
        *(v162 + 24) = xmmword_2727563B0;
        v163 = v348;
        v76 = v350;
        *(v348 + 40) = v161;
        *(v163 + 48) = xmmword_272756380;
        *(v163 + 64) = xmmword_2727563B0;
        v77 = *(this + 104);
        *v76 = v77;
        *(v76 + 8) = xmmword_272756380;
        v78 = xmmword_272756390;
LABEL_109:
        *(v76 + 24) = v78;
        v164 = v350;
        *(v350 + 40) = v77;
        *(v164 + 48) = v74;
        *(v164 + 64) = v78;
        v9.n128_u64[0] = *(this + 104);
        *(v164 + 80) = v9.n128_u64[0];
        *(v164 + 88) = v74;
        *(v164 + 104) = v78;
        *(v164 + 120) = v9.n128_u64[0];
        *(v164 + 128) = v74;
        *(v164 + 144) = v78;
        break;
      case 0x26u:
        VPAUBusFormats::AllocateForFormats(&v347, 3u, 2u);
        v9.n128_u64[0] = *(this + 104);
        v158 = v348;
        *v348 = v9.n128_u64[0];
        v142 = xmmword_272756340;
        *(v158 + 8) = xmmword_272756340;
        *(v158 + 24) = xmmword_272756360;
        v159 = v348;
        v148 = v350;
        *(v348 + 40) = v9.n128_u64[0];
        *(v159 + 48) = xmmword_272756340;
        *(v159 + 64) = xmmword_272756360;
        *(v159 + 80) = v9.n128_u64[0];
        *(v159 + 88) = xmmword_272756340;
        *(v159 + 104) = xmmword_272756360;
        v9.n128_u64[0] = *(this + 104);
        *v148 = v9.n128_u64[0];
        *(v148 + 8) = xmmword_272756340;
        v143 = xmmword_272756350;
        goto LABEL_120;
      case 0x27u:
      case 0x28u:
        VPAUBusFormats::AllocateForFormats(&v347, 4u, 2u);
        v9.n128_u64[0] = *(this + 104);
        v79 = v348;
        *v348 = v9.n128_u64[0];
        *(v79 + 8) = xmmword_272756380;
        *(v79 + 24) = xmmword_272756390;
        v80 = v348;
        v81 = v350;
        *(v348 + 40) = v9.n128_u64[0];
        *(v80 + 48) = xmmword_272756380;
        *(v80 + 64) = xmmword_272756390;
        *(v80 + 80) = v9.n128_u64[0];
        *(v80 + 88) = xmmword_272756380;
        *(v80 + 104) = xmmword_272756390;
        *v81 = *(this + 114);
        *(v81 + 8) = xmmword_272756380;
        *(v81 + 24) = xmmword_272756390;
        v9.n128_u64[0] = *(this + 114);
        v82 = v350;
        v83 = v348;
        *(v350 + 40) = v9.n128_u64[0];
        *(v82 + 48) = xmmword_2727563A0;
        *(v82 + 64) = xmmword_272756350;
        *(v83 + 120) = v9.n128_u64[0];
        *(v83 + 128) = xmmword_2727563A0;
        *(v83 + 144) = xmmword_272756350;
        break;
      case 0x29u:
      case 0x2Au:
        VPAUBusFormats::AllocateForFormats(&v347, 5u, 2u);
        v9.n128_u64[0] = *(this + 104);
        v84 = v348;
        *v348 = v9.n128_u64[0];
        *(v84 + 8) = xmmword_272756380;
        *(v84 + 24) = xmmword_272756390;
        v85 = v348;
        v86 = v350;
        *(v348 + 40) = v9.n128_u64[0];
        *(v85 + 48) = xmmword_272756380;
        *(v85 + 64) = xmmword_272756390;
        *(v85 + 80) = v9.n128_u64[0];
        *(v85 + 88) = xmmword_272756380;
        *(v85 + 104) = xmmword_272756390;
        *v86 = *(this + 114);
        *(v86 + 8) = xmmword_272756380;
        *(v86 + 24) = xmmword_272756390;
        v9.n128_u64[0] = *(this + 114);
        v87 = v350;
        v88 = v348;
        *(v350 + 40) = v9.n128_u64[0];
        *(v87 + 48) = xmmword_2727563A0;
        *(v87 + 64) = xmmword_272756350;
        *(v88 + 120) = v9.n128_u64[0];
        *(v88 + 128) = xmmword_2727563A0;
        *(v88 + 144) = xmmword_272756350;
        *(v88 + 160) = v9.n128_u64[0];
        *(v88 + 168) = xmmword_2727563A0;
        *(v88 + 184) = xmmword_272756350;
        break;
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
        VPAUBusFormats::AllocateForFormats(&v347, 6u, 3u);
        v9.n128_u64[0] = *(this + 104);
        v47 = v348;
        *v348 = v9.n128_u64[0];
        *(v47 + 8) = xmmword_272756380;
        *(v47 + 24) = xmmword_272756390;
        v48 = v348;
        v49 = v350;
        *(v348 + 40) = v9.n128_u64[0];
        *(v48 + 48) = xmmword_272756380;
        *(v48 + 64) = xmmword_272756390;
        *(v48 + 80) = v9.n128_u64[0];
        *(v48 + 88) = xmmword_272756380;
        *(v48 + 104) = xmmword_272756390;
        *(v48 + 200) = v9.n128_u64[0];
        *(v48 + 208) = xmmword_272756380;
        *(v48 + 224) = xmmword_272756390;
        v9.n128_u64[0] = *(this + 114);
        *v49 = v9.n128_u64[0];
        *(v49 + 8) = xmmword_272756380;
        *(v49 + 24) = xmmword_272756390;
        v50 = v350;
        v51 = v348;
        *(v350 + 40) = v9.n128_u64[0];
        v9.n128_u32[1] = 9;
        *(v50 + 48) = xmmword_272756380;
        *(v50 + 64) = xmmword_272756390;
        v52 = *(this + 114);
        *(v50 + 80) = v52;
        *(v50 + 88) = xmmword_2727563A0;
        *(v50 + 104) = xmmword_272756350;
        *(v51 + 120) = v52;
        *(v51 + 128) = xmmword_2727563A0;
        *(v51 + 144) = xmmword_272756350;
        *(v51 + 160) = v52;
        *(v51 + 168) = xmmword_2727563A0;
        *(v51 + 184) = xmmword_272756350;
        break;
      case 0x2Eu:
        VPAUBusFormats::AllocateForFormats(&v347, 2u, 2u);
        v9.n128_u64[0] = *(this + 114);
        v134 = v348;
        *v348 = v9.n128_u64[0];
        *(v134 + 8) = xmmword_272756380;
        *(v134 + 24) = xmmword_2727563C0;
        v135 = v348;
        v136 = v350;
        *(v348 + 40) = v9.n128_u64[0];
        *(v135 + 48) = xmmword_272756380;
        *(v135 + 64) = xmmword_2727563C0;
        *v136 = v9.n128_u64[0];
        *(v136 + 8) = xmmword_272756380;
        *(v136 + 24) = xmmword_2727563C0;
        v137 = v350;
        *(v350 + 40) = v9.n128_u64[0];
        v9.n128_u32[1] = 1;
        *(v137 + 48) = xmmword_272756380;
        *(v137 + 64) = xmmword_272756390;
        break;
      case 0x2Fu:
        VPAUBusFormats::AllocateForFormats(&v347, 2u, 2u);
        v9.n128_u64[0] = *(this + 114);
        v157 = v348;
        *v348 = v9.n128_u64[0];
        v142 = xmmword_272756380;
        *(v157 + 8) = xmmword_272756380;
        v143 = xmmword_2727563C0;
        goto LABEL_119;
      case 0x30u:
        VPAUBusFormats::AllocateForFormats(&v347, 2u, 2u);
        v9.n128_u64[0] = *(this + 114);
        v157 = v348;
        *v348 = v9.n128_u64[0];
        v142 = xmmword_272756380;
        *(v157 + 8) = xmmword_272756380;
        v143 = xmmword_2727563D0;
LABEL_119:
        *(v157 + 24) = v143;
        v190 = v348;
        v148 = v350;
        *(v348 + 40) = v9.n128_u64[0];
        *(v190 + 48) = v142;
        *(v190 + 64) = v143;
        *v148 = v9.n128_u64[0];
        *(v148 + 8) = v142;
        goto LABEL_120;
      case 0x31u:
        VPAUBusFormats::AllocateForFormats(&v347, 2u, 2u);
        v9.n128_u64[0] = *(this + 114);
        v146 = v348;
        *v348 = v9.n128_u64[0];
        v142 = xmmword_272756380;
        *(v146 + 8) = xmmword_272756380;
        *(v146 + 24) = xmmword_2727563B0;
        v147 = v348;
        v148 = v350;
        *(v348 + 40) = v9.n128_u64[0];
        *(v147 + 48) = xmmword_272756380;
        *(v147 + 64) = xmmword_2727563B0;
        v9.n128_u64[0] = *(this + 114);
        *v148 = v9.n128_u64[0];
        *(v148 + 8) = xmmword_272756380;
        v143 = xmmword_272756390;
LABEL_120:
        *(v148 + 24) = v143;
LABEL_121:
        v191 = v350;
        *(v350 + 40) = v9.n128_u64[0];
        *(v191 + 48) = v142;
        *(v191 + 64) = v143;
        break;
      case 0x32u:
        VPAUBusFormats::AllocateForFormats(&v347, 1u, 1u);
        v138 = *(this + 114);
        v139 = v348;
        *v348 = v138;
        *(v139 + 8) = xmmword_272756380;
        *(v139 + 24) = xmmword_2727563C0;
        v140 = v350;
        *v350 = v138;
        *(v140 + 8) = xmmword_272756380;
LABEL_107:
        v9.n128_u32[1] = 1;
        *(v140 + 24) = xmmword_272756390;
        break;
      case 0x33u:
        *buf = *(this + 114);
        *&buf[8] = xmmword_272756380;
        *&buf[24] = xmmword_272756390;
        *v351 = *buf;
        *&v351[8] = xmmword_272756380;
        *&v351[24] = xmmword_272756390;
        v9 = VPAUBusFormats::SetFormats(&v347, buf, 1, v351, 1);
        break;
      case 0x34u:
        goto LABEL_103;
      case 0x35u:
        if ((*(this + 2091) & 1) != 0 || *(this + 2093) == 1)
        {
          v185 = *(this + 58);
          *buf = *(this + 57);
          *&buf[16] = v185;
          *&buf[32] = *(this + 118);
          VPAUBusFormats::AllocateForFormats(&v347, 2u, 2u);
          v186 = v348;
          v9 = *&buf[16];
          *(v348 + 16) = *&buf[16];
          v187 = *buf;
          *v186 = *buf;
          v188 = *&buf[32];
          *(v186 + 32) = *&buf[32];
          v189 = v350;
          *v350 = v187;
          *(v189 + 16) = v9;
          *(v189 + 32) = v188;
          v9.n128_u64[0] = *(this + 114);
          *(v186 + 40) = v9.n128_u64[0];
          *(v186 + 48) = xmmword_2727563A0;
          *(v186 + 64) = xmmword_272756350;
          *(v189 + 40) = v9.n128_u64[0];
          *(v189 + 48) = xmmword_2727563A0;
          *(v189 + 64) = xmmword_272756350;
        }

        else
        {
LABEL_103:
          VPAUBusFormats::AllocateForFormats(&v347, 2u, 2u);
          v9.n128_u64[0] = *(this + 114);
          v153 = v348;
          *v348 = v9.n128_u64[0];
          *(v153 + 8) = xmmword_272756380;
          *(v153 + 24) = xmmword_272756390;
          v154 = v348;
          v155 = v350;
          *(v348 + 40) = v9.n128_u64[0];
          *(v154 + 48) = xmmword_2727563A0;
          *(v154 + 64) = xmmword_272756350;
          *v155 = v9.n128_u64[0];
          *(v155 + 8) = xmmword_272756380;
          *(v155 + 24) = xmmword_272756390;
          v156 = v350;
          *(v350 + 40) = v9.n128_u64[0];
          *(v156 + 48) = xmmword_2727563A0;
          *(v156 + 64) = xmmword_272756350;
        }

        break;
      case 0x36u:
        if ((*(this + 2091) & 1) != 0 || *(this + 2093) == 1)
        {
          v193 = *(this + 58);
          *buf = *(this + 57);
          *&buf[16] = v193;
          *&buf[32] = *(this + 118);
          v194 = *(this + 114);
          VPAUBusFormats::AllocateForFormats(&v347, 3u, 3u);
          v195 = v348;
          v9 = *&buf[16];
          *(v348 + 16) = *&buf[16];
          v196 = *buf;
          *v195 = *buf;
          v197 = *&buf[32];
          *(v195 + 32) = *&buf[32];
          *(v195 + 40) = v194;
          *(v195 + 48) = xmmword_2727563A0;
          *(v195 + 64) = xmmword_272756350;
          *(v195 + 112) = v197;
          *(v195 + 80) = v196;
          *(v195 + 96) = v9;
          v198 = v350;
          *v350 = v196;
          *(v198 + 16) = v9;
          *(v198 + 32) = v197;
          *(v198 + 40) = v194;
          *(v198 + 48) = xmmword_2727563A0;
          *(v198 + 64) = xmmword_272756350;
          *(v198 + 80) = v194;
          *(v198 + 88) = xmmword_2727563A0;
          *(v198 + 104) = xmmword_272756350;
        }

        else
        {
          VPAUBusFormats::AllocateForFormats(&v347, 3u, 3u);
          v9.n128_u64[0] = *(this + 114);
          v334 = v348;
          *v348 = v9.n128_u64[0];
          *(v334 + 8) = xmmword_272756380;
          *(v334 + 24) = xmmword_272756390;
          v335 = v348;
          v336 = v350;
          *(v348 + 40) = v9.n128_u64[0];
          *(v335 + 48) = xmmword_2727563A0;
          *(v335 + 64) = xmmword_272756350;
          *(v335 + 80) = v9.n128_u64[0];
          *(v335 + 88) = xmmword_2727563A0;
          *(v335 + 104) = xmmword_272756350;
          *v336 = v9.n128_u64[0];
          *(v336 + 8) = xmmword_272756380;
          *(v336 + 24) = xmmword_272756390;
          v337 = v350;
          *(v350 + 40) = v9.n128_u64[0];
          *(v337 + 48) = xmmword_2727563A0;
          *(v337 + 64) = xmmword_272756350;
          *(v337 + 80) = v9.n128_u64[0];
          *(v337 + 88) = xmmword_2727563A0;
          *(v337 + 104) = xmmword_272756350;
        }

        break;
      case 0x37u:
        VPAUBusFormats::AllocateForFormats(&v347, 4u, 4u);
        v9.n128_u64[0] = *(this + 114);
        v149 = v348;
        *v348 = v9.n128_u64[0];
        *(v149 + 8) = xmmword_272756380;
        *(v149 + 24) = xmmword_272756390;
        v150 = v348;
        v151 = v350;
        *(v348 + 40) = v9.n128_u64[0];
        *(v150 + 48) = xmmword_272756380;
        *(v150 + 64) = xmmword_272756390;
        *(v150 + 80) = v9.n128_u64[0];
        *(v150 + 88) = xmmword_2727563A0;
        *(v150 + 104) = xmmword_272756350;
        *(v150 + 120) = v9.n128_u64[0];
        *(v150 + 128) = xmmword_2727563A0;
        *(v150 + 144) = xmmword_272756350;
        *v151 = v9.n128_u64[0];
        *(v151 + 8) = xmmword_272756380;
        *(v151 + 24) = xmmword_272756390;
        v152 = v350;
        *(v350 + 40) = v9.n128_u64[0];
        *(v152 + 48) = xmmword_2727563A0;
        *(v152 + 64) = xmmword_272756350;
        *(v152 + 80) = v9.n128_u64[0];
        *(v152 + 88) = xmmword_2727563A0;
        *(v152 + 104) = xmmword_272756350;
        *(v152 + 120) = v9.n128_u64[0];
        *(v152 + 128) = xmmword_2727563A0;
        *(v152 + 144) = xmmword_272756350;
        break;
      case 0x3Au:
        VPAUBusFormats::AllocateForFormats(&v347, 1u, 1u);
        v9.n128_u64[0] = *(this + 104);
        v199 = v348;
        *v348 = v9.n128_u64[0];
        v200 = xmmword_272756380;
        *(v199 + 8) = xmmword_272756380;
        v201 = xmmword_2727563C0;
LABEL_128:
        *(v199 + 24) = v201;
        v202 = v350;
        *v350 = v9.n128_u64[0];
        *(v202 + 8) = v200;
        *(v202 + 24) = v201;
        break;
      case 0x3Bu:
      case 0x46u:
        *buf = *(this + 104);
        *&buf[8] = xmmword_272756340;
        *&buf[24] = xmmword_272756350;
        *v351 = *buf;
        *&v351[8] = xmmword_272756340;
        *&v351[24] = xmmword_272756350;
        v9 = VPAUBusFormats::SetFormats(&v347, buf, 1, v351, 1);
        break;
      case 0x3Cu:
        v223 = (this + 912);
        *buf = *(this + 57);
        *&buf[12] = *(this + 924);
        v224 = *(this + 118);
        v225 = (*(*this + 112))(this);
        if (v225 <= 8)
        {
          v226 = 6;
        }

        else
        {
          v226 = 8;
        }

        VPAUBusFormats::AllocateForFormats(&v347, v226, 1u);
        v227 = v348;
        v9 = *buf;
        *v348 = *buf;
        v228 = *&buf[12];
        *(v227 + 12) = *&buf[12];
        *(v227 + 28) = 1;
        *(v227 + 32) = v224;
        v229 = v350;
        *(v350 + 12) = v228;
        *v229 = v9;
        v229[1].n128_u32[3] = 1;
        v229[2].n128_u64[0] = v224;
        v9.n128_u64[0] = *v223;
        v230 = v348;
        *(v348 + 40) = *v223;
        *(v230 + 48) = xmmword_272756380;
        *(v230 + 64) = xmmword_272756390;
        *(v230 + 80) = v9.n128_u64[0];
        *(v230 + 88) = xmmword_272756380;
        *(v230 + 104) = xmmword_272756390;
        *(v230 + 120) = v9.n128_u64[0];
        *(v230 + 128) = xmmword_272756380;
        *(v230 + 144) = xmmword_272756390;
        v9.n128_u64[0] = *v223;
        *(v230 + 160) = *v223;
        *(v230 + 168) = xmmword_2727563A0;
        *(v230 + 184) = xmmword_272756350;
        *(v230 + 200) = v9.n128_u64[0];
        *(v230 + 208) = xmmword_2727563A0;
        *(v230 + 224) = xmmword_272756350;
        if (v225 >= 9)
        {
          *(v230 + 240) = v9.n128_u64[0];
          *(v230 + 248) = xmmword_2727563A0;
          *(v230 + 264) = xmmword_272756350;
          *(v230 + 280) = v9.n128_u64[0];
          *(v230 + 288) = xmmword_2727563A0;
          *(v230 + 304) = xmmword_272756350;
        }

        break;
      case 0x3Du:
        *buf = *(this + 114);
        *&buf[8] = xmmword_272756340;
        *&buf[24] = xmmword_272756350;
        *v351 = *buf;
        *&v351[8] = xmmword_272756340;
        *&v351[24] = xmmword_272756350;
        v9 = VPAUBusFormats::SetFormats(&v347, buf, 1, v351, 1);
        break;
      case 0x3Fu:
      case 0x40u:
      case 0x41u:
      case 0x43u:
        v40 = *(this + 58);
        *buf = *(this + 57);
        *&buf[16] = v40;
        *&buf[32] = *(this + 118);
        VPAUBusFormats::AllocateForFormats(&v347, 1u, 1u);
        goto LABEL_130;
      case 0x42u:
        v133 = *(this + 235);
        *buf = *(this + 114);
        *&buf[8] = xmmword_272756380;
        *&buf[24] = 8;
        *&buf[28] = v133;
        *&buf[32] = 64;
        *v351 = *buf;
        *&v351[8] = xmmword_272756380;
        *&v351[24] = 8;
        *&v351[28] = v133;
        *&v351[32] = 64;
        v9 = VPAUBusFormats::SetFormats(&v347, buf, 1, v351, 1);
        break;
      case 0x44u:
        *&buf[32] = *(this + 123);
        v203 = *(this + 968);
        *buf = *(this + 952);
        *&buf[16] = v203;
        VPAUBusFormats::AllocateForFormats(&v347, 1u, 1u);
LABEL_130:
        v204 = v348;
        v9 = *&buf[16];
        *(v348 + 16) = *&buf[16];
        v184 = *buf;
        *v204 = *buf;
        v183 = *&buf[32];
        *(v204 + 32) = *&buf[32];
LABEL_131:
        v205 = v350;
        *v350 = v184;
        v205[1] = v9;
        v205[2].n128_u64[0] = v183;
        break;
      case 0x45u:
        v231 = *(this + 104);
        v232 = *(this + 99);
        v233 = *(this + 114);
        VPAUBusFormats::AllocateForFormats(&v347, 2u, 1u);
        v234 = v348;
        *v348 = v231;
        v9.n128_u32[1] = 41;
        *(v234 + 8) = xmmword_272756340;
        *(v234 + 24) = xmmword_272756350;
        v235 = v348;
        v236 = v350;
        *(v348 + 40) = v232;
        *(v235 + 48) = xmmword_272756340;
        *(v235 + 64) = xmmword_272756350;
        *v236 = v233;
        *(v236 + 8) = xmmword_272756340;
        *(v236 + 24) = xmmword_272756350;
        break;
      default:
        VPAUBusFormats::AllocateForFormats(&v347, 0, 0);
        break;
    }

    if (v347)
    {
      v206 = 0;
      v207 = 0;
      do
      {
        v208 = *(v348 + v206 + 32);
        v209 = *(v348 + v206 + 16);
        *buf = *(v348 + v206);
        *&buf[16] = v209;
        *&buf[32] = v208;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 3 * a2 + 883, 8u, 1u, v207++, 0x28uLL, buf, 1);
        v206 += 40;
      }

      while (v207 < v347);
    }

    if (v349)
    {
      v210 = 0;
      v211 = 0;
      do
      {
        v212 = *(v350 + v210 + 32);
        v213 = *(v350 + v210 + 16);
        *buf = *(v350 + v210);
        *&buf[16] = v213;
        *&buf[32] = v212;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 3 * a2 + 883, 8u, 2u, v211++, 0x28uLL, buf, 1);
        v210 += 40;
      }

      while (v211 < v349);
    }

    v70 = 0;
    switch(a2)
    {
      case 0u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0x3Fu:
        *buf = 10;
        v217 = this + 24 * a2;
        AUPropAndParamHelper::AddItemToAUPropsList(v217 + 883, 0x898u, 0, 0, 4uLL, buf, 1);
        *v351 = *(this + 129);
        AUPropAndParamHelper::AddItemToAUPropsList(v217 + 883, 0xEu, 0, 0, 4uLL, v351, 1);
        goto LABEL_417;
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Du:
      case 0x2Eu:
      case 0x31u:
      case 0x32u:
      case 0x33u:
      case 0x37u:
      case 0x38u:
      case 0x41u:
      case 0x43u:
      case 0x45u:
        *buf = *(this + 129);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 3 * a2 + 883, 0xEu, 0, 0, 4uLL, buf, 1);
        goto LABEL_417;
      case 5u:
        *buf = 1;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 898, 0xE74u, 0, 0, 4uLL, buf, 1);
        *v351 = *(this + 129);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 898, 0xEu, 0, 0, 4uLL, v351, 1);
        goto LABEL_417;
      case 6u:
        *v351 = 1;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 901, 0xE74u, 0, 0, 4uLL, v351, 1);
        LODWORD(v343[0]) = *(this + 129);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 901, 0xEu, 0, 0, 4uLL, v343, 1);
        if (*(this + 2089))
        {
          *buf = *(this + 2089);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 901, 0x67727478u, 0, 0, 8uLL, buf, 1);
        }

        if (*(this + 2090))
        {
          *buf = *(this + 2090);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 901, 0x676E616Du, 0, 0, 8uLL, buf, 1);
        }

        if (*(this + 2091))
        {
          *buf = *(this + 2091);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 901, 0x61757370u, 0, 0, 8uLL, buf, 1);
        }

        if (*(this + 2092))
        {
          *buf = *(this + 2092);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 901, 0x70727370u, 0, 0, 8uLL, buf, 1);
        }

        goto LABEL_417;
      case 0xBu:
      case 0xCu:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x25u:
      case 0x26u:
      case 0x39u:
      case 0x3Au:
        v214 = this + 24 * a2 + 7064;
        v215 = this + 516;
        goto LABEL_141;
      case 0x1Cu:
        LODWORD(v343[0]) = 1;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 967, 0xE74u, 0, 0, 4uLL, v343, 1);
        LODWORD(v344) = *(this + 129);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 967, 0xEu, 0, 0, 4uLL, &v344, 1);
        if (*(this + 2060))
        {
          *buf = *(this + 2060);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 967, 0x67727478u, 0, 0, 8uLL, buf, 1);
        }

        if (*(this + 2061))
        {
          *buf = *(this + 2061);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 967, 0x676E616Du, 0, 0, 8uLL, buf, 1);
        }

        if (*(this + 2062))
        {
          *buf = *(this + 2062);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 967, 0x61757370u, 0, 0, 8uLL, buf, 1);
        }

        if (*(this + 2063))
        {
          *buf = *(this + 2063);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 967, 0x70727370u, 0, 0, 8uLL, buf, 1);
        }

        if (*(this + 2065))
        {
          if (v5[871])
          {
            v242 = 1953850480;
          }

          else
          {
            v242 = 0;
          }

          if (v5[871])
          {
            v243 = 1733321574;
          }

          else
          {
            v243 = 1735553138;
          }

          *buf = *(this + 2065);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 967, v243, 0, v242, 8uLL, buf, 1);
          *v351 = *(this + 2064);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 967, 0x70727270u, 0, 0, 8uLL, v351, 1);
        }

        goto LABEL_417;
      case 0x1Eu:
        *buf = *(this + 129);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 973, 0xEu, 0, 0, 4uLL, buf, 1);
        goto LABEL_417;
      case 0x1Fu:
        *buf = 1;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 976, 0xE74u, 0, 0, 4uLL, buf, 1);
        *v351 = 2 * *(this + 129);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 976, 0xE75u, 0, 0, 4uLL, v351, 1);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 976, 0xEu, 0, 0, 4uLL, this + 516, 1);
        LODWORD(v343[0]) = 1;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 976, 0xE78u, 0, 0, 4uLL, v343, 1);
        goto LABEL_417;
      case 0x20u:
        *buf = 1;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 979, 0xE74u, 0, 0, 4uLL, buf, 1);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 979, 0xEu, 0, 0, 4uLL, this + 516, 1);
        *v351 = 2 * *(this + 129);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 979, 0xE75u, 0, 0, 4uLL, v351, 1);
        LODWORD(v343[0]) = 1;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 979, 0xE78u, 0, 0, 4uLL, v343, 1);
        goto LABEL_417;
      case 0x24u:
      case 0x3Bu:
        v221 = this + 24 * a2;
        AUPropAndParamHelper::AddItemToAUPropsList(v221 + 883, 0xEu, 0, 0, 4uLL, this + 516, 1);
        v222 = *(this + 20);
        if (v222 == 6 || v222 == 1)
        {
          *buf = 2;
          AUPropAndParamHelper::AddItemToAUPropsList(v221 + 883, 0xE72u, 0, 0, 4uLL, buf, 1);
        }

        goto LABEL_417;
      case 0x27u:
      case 0x28u:
      case 0x29u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
        *buf = *(this + 129);
        v216 = this + 24 * a2;
        AUPropAndParamHelper::AddItemToAUPropsList(v216 + 883, 0xEu, 0, 0, 4uLL, buf, 1);
        if (a2 - 43 <= 2)
        {
          *v351 = 3;
          AUPropAndParamHelper::AddItemToAUPropsList(v216 + 883, 0xBu, 2u, 0, 4uLL, v351, 1);
        }

        goto LABEL_417;
      case 0x2Fu:
      case 0x30u:
        *v351 = *(this + 129);
        v219 = this + 24 * a2;
        AUPropAndParamHelper::AddItemToAUPropsList(v219 + 883, 0xEu, 0, 0, 4uLL, v351, 1);
        v220 = *(this + 294);
        if (v220 != *(this + 295) && *v220 == 1886545251)
        {
          {
            applesauce::CF::NumberRef::NumberRef<AUBSS2Algorithm,void>(buf);
            v340 = *buf;
            *buf = 0;
            applesauce::CF::NumberRef::~NumberRef(buf);
            VoiceProcessorV2::PopulateAUPropsAndParamsLists(unsigned int,BOOL)::gBSS2Algorithm = v340;
          }

          AUPropAndParamHelper::AddItemToAUPropsList(v219 + 883, 0x1195u, 0, 0, 8uLL, &VoiceProcessorV2::PopulateAUPropsAndParamsLists(unsigned int,BOOL)::gBSS2Algorithm, 1);
        }

        goto LABEL_417;
      case 0x34u:
      case 0x35u:
      case 0x36u:
        *buf = 1;
        v218 = this + 24 * a2;
        AUPropAndParamHelper::AddItemToAUPropsList(v218 + 883, 0xE74u, 0, 0, 4uLL, buf, 1);
        *v351 = *(this + 129);
        AUPropAndParamHelper::AddItemToAUPropsList(v218 + 883, 0xEu, 0, 0, 4uLL, v351, 1);
        goto LABEL_417;
      case 0x3Cu:
        *v351 = *(this + 129);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1063, 0xEu, 0, 0, 4uLL, v351, 1);
        if (*v5 == 1)
        {
          *&buf[16] = VoiceProcessorV2::VPLogGatingFFTCallback_V2;
          *buf = this;
          *&buf[8] = VoiceProcessorV2::EchoGateV3ReadWriteControlDataCallback;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1063, 0x845u, 0, 0, 0x18uLL, buf, 1);
        }

        goto LABEL_417;
      case 0x3Du:
        *v351 = 1;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1066, 0xE74u, 0, 0, 4uLL, v351, 1);
        LODWORD(v343[0]) = *(this + 129);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1066, 0xEu, 0, 0, 4uLL, v343, 1);
        if (*(this + 2056))
        {
          *buf = *(this + 2056);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1066, 0x67727478u, 0, 0, 8uLL, buf, 1);
        }

        if (*(this + 2057))
        {
          *buf = *(this + 2057);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1066, 0x676E616Du, 0, 0, 8uLL, buf, 1);
        }

        if (*(this + 2058))
        {
          *buf = *(this + 2058);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1066, 0x61757370u, 0, 0, 8uLL, buf, 1);
        }

        if (*(this + 2059))
        {
          *buf = *(this + 2059);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1066, 0x70727370u, 0, 0, 8uLL, buf, 1);
        }

        goto LABEL_417;
      case 0x40u:
        *buf = 1;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1075, 0xE74u, 0, 0, 4uLL, buf, 1);
        *v351 = *(this + 129);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1075, 0xEu, 0, 0, 4uLL, v351, 1);
        goto LABEL_417;
      case 0x42u:
        *buf = *(this + 129);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1081, 0xEu, 0, 0, 4uLL, buf, 1);
        goto LABEL_417;
      case 0x44u:
        v244 = *(this + 114);
        v245 = *(this + 124);
        v9.n128_u32[0] = *(this + 129);
        v9.n128_f64[0] = v9.n128_u64[0];
        if (v244 != v245)
        {
          v9.n128_f64[0] = ceil(v245 * v9.n128_f64[0] / v244);
        }

        v215 = this + 548;
        *(this + 137) = v9.n128_f64[0];
        v214 = this + 8696;
LABEL_141:
        AUPropAndParamHelper::AddItemToAUPropsList(v214, 0xEu, 0, 0, 4uLL, v215, 1);
        goto LABEL_417;
      case 0x46u:
        v346 = 1;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1093, 0xE74u, 0, 0, 4uLL, &v346, 1);
        v345 = *(this + 129);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1093, 0xEu, 0, 0, 4uLL, &v345, 1);
        if (*(this + 2083))
        {
          *buf = *(this + 2083);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1093, 0x67727478u, 0, 0, 8uLL, buf, 1);
        }

        if (*(this + 2084))
        {
          *buf = *(this + 2084);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1093, 0x676E616Du, 0, 0, 8uLL, buf, 1);
        }

        if (*(this + 2085))
        {
          *buf = *(this + 2085);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1093, 0x61757370u, 0, 0, 8uLL, buf, 1);
        }

        if (*(this + 2086))
        {
          *buf = *(this + 2086);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1093, 0x70727370u, 0, 0, 8uLL, buf, 1);
        }

        v237 = this + 8;
        if (*(this + 31) < 0)
        {
          v237 = *v237;
        }

        v238 = strlen(v237);
        applesauce::CF::StringRef::StringRef(buf, v237, v238);
        v239 = *(this + 2087);
        *(this + 2087) = *buf;
        *buf = v239;
        applesauce::CF::StringRef::~StringRef(buf);
        v240 = v5[871];
        if (v240 == 1)
        {
          applesauce::CF::TypeRef::TypeRef(buf, "Value");
          applesauce::CF::StringRef::operator applesauce::CF::TypeRef(&buf[8], *(this + 2087));
          *v351 = buf;
          *&v351[8] = 1;
          CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v351);
        }

        else
        {
          applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[3],unsigned int const&>(buf, "ID", &kVPDSPGraphTuningDirectoryPropertyID);
          applesauce::CF::TypeRef::TypeRef(&buf[16], "cfobject");
          applesauce::CF::StringRef::operator applesauce::CF::TypeRef(&buf[24], *(this + 2087));
          v343[0] = buf;
          v343[1] = 2;
          CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v343);
        }

        v328 = *(this + 2088);
        *(this + 2088) = CFDictionaryRef;
        v344 = v328;
        applesauce::CF::DictionaryRef::~DictionaryRef(&v344);
        if (v240)
        {
          if (*&buf[8])
          {
            CFRelease(*&buf[8]);
          }

          if (*buf)
          {
            CFRelease(*buf);
          }
        }

        else
        {
          for (i = 0; i != -32; i -= 16)
          {
            v330 = *&buf[i + 24];
            if (v330)
            {
              CFRelease(v330);
            }

            v331 = *&buf[i + 16];
            if (v331)
            {
              CFRelease(v331);
            }
          }
        }

        if (*(this + 2088))
        {
          if (v5[871])
          {
            v332 = 1953850480;
          }

          else
          {
            v332 = 0;
          }

          if (v5[871])
          {
            v333 = 1733321574;
          }

          else
          {
            v333 = 1735553138;
          }

          *v351 = *(this + 2088);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1093, v333, 0, v332, 8uLL, v351, 1);
          v343[0] = *(this + 2087);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1093, 0x70727270u, 0, 0, 8uLL, v343, 1);
        }

        goto LABEL_417;
      default:
        goto LABEL_418;
    }
  }

  switch(a2)
  {
    case 0u:
      v122 = *(this + 232);
      *buf = *(this + 216);
      *&buf[16] = v122;
      *&buf[32] = *(this + 31);
      v123 = *(this + 17);
      *v351 = *(this + 16);
      *&v351[16] = v123;
      *&v351[32] = *(this + 36);
      VPAUBusFormats::SetFormats(&v347, buf, 1, v351, 1);
      goto LABEL_221;
    case 1u:
      VPAUBusFormats::AllocateForFormats(&v347, 1u, 0);
      v124 = v348;
      *v348 = *(this + 32);
      *(v124 + 8) = xmmword_272756340;
      *(v124 + 24) = xmmword_272756350;
      goto LABEL_221;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 8u:
    case 9u:
      *&buf[32] = *(this + 41);
      v20 = *(this + 312);
      *buf = *(this + 296);
      *&buf[16] = v20;
      v21 = *(this + 312);
      *v351 = *(this + 296);
      *&v351[16] = v21;
      *&v351[32] = *(this + 41);
      VPAUBusFormats::SetFormats(&v347, buf, 1, v351, 1);
      goto LABEL_221;
    case 6u:
    case 7u:
      VPAUBusFormats::AllocateForFormats(&v347, 1u, 1u);
      v54 = v348;
      v55 = *(this + 41);
      v56 = *(this + 312);
      *v348 = *(this + 296);
      *(v54 + 16) = v56;
      *(v54 + 32) = v55;
      v57 = v350;
      v58 = *(this + 296);
      v59 = *(this + 312);
      *(v350 + 32) = *(this + 41);
      *v57 = v58;
      v57[1] = v59;
      if ((*(*this + 112))(this) >= 8 && (~*(this + 2216) & 0xC0) == 0)
      {
        v60 = *(this + 37);
        v61 = *(this + 81);
        v62 = v348;
        *v348 = v60;
        *(v62 + 8) = xmmword_272756380;
        *(v62 + 24) = 8;
        *(v62 + 28) = v61;
        *(v62 + 32) = 64;
        v63 = v350;
        *v350 = v60;
        *(v63 + 8) = xmmword_272756380;
        *(v63 + 24) = 8;
        *(v63 + 28) = v61;
        *(v63 + 32) = 64;
      }

      if ((!*(this + 20) || (*(*this + 112))(this) <= 7) && (*(*this + 112))(this) > 7)
      {
        goto LABEL_221;
      }

      v64 = *(this + 37);
      v65 = *(this + 42);
      v66 = *(this + 131);
      if (v64 != v65)
      {
        LODWORD(v66) = vcvtpd_u64_f64(v64 * v66 / v65);
      }

      NextFFTFriendlyBlkSz = BlockSizeHelper::GetNextFFTFriendlyBlkSz(v66);
      if (NextFFTFriendlyBlkSz == v66)
      {
        goto LABEL_221;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v68 = CALog::LogObjIfEnabled(5, VPLogScope(void)::scope);
      if (v68)
      {
        v69 = v68;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "VoiceProcessor_v2.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4192;
          *&buf[18] = 1024;
          *&buf[20] = v66;
          *&buf[24] = 1024;
          *&buf[26] = NextFFTFriendlyBlkSz;
          _os_log_impl(&dword_2724B4000, v69, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> _vp<WARNING>: The DLNS isn't configured at an fft-friendly blocksize (%d vs %d), disabling it for now", buf, 0x1Eu);
        }
      }

      v70 = 1718772077;
      v71 = *(this + 1588);
      if (v71 && ((*v5 & 1) != 0 || v5[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v71, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 4192, "GetAUStreamFormats", "_vp<WARNING>: The DLNS isn't configured at an fft-friendly blocksize (%d vs %d), disabling it for now", v66, NextFFTFriendlyBlkSz);
      }

      goto LABEL_418;
    case 0xAu:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x28u:
      *buf = *(this + 42);
      *&buf[8] = xmmword_272756340;
      *&buf[24] = 4;
      *&buf[28] = VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this);
      *&buf[32] = 32;
      *v351 = *buf;
      *&v351[8] = xmmword_272756340;
      *&v351[24] = __PAIR64__(*&buf[28], 4);
      *&v351[32] = 32;
      VPAUBusFormats::SetFormats(&v347, buf, 1, v351, 1);
      goto LABEL_221;
    case 0xBu:
    case 0xCu:
    case 0xDu:
      v41 = (this + 336);
      v42 = *(this + 87);
      v43 = *(this + 92);
      v44 = *(this + 93);
      if ((v42 & 0x20) != 0)
      {
        v45 = 1;
      }

      else
      {
        v45 = *(this + 91);
        if (!v45)
        {
          v46 = (v43 + 7) >> 3;
          goto LABEL_51;
        }
      }

      v46 = *(this + 90) / v45;
LABEL_51:
      *buf = *v41;
      *&buf[8] = *(this + 86);
      *&buf[12] = v42 & 0xFFFFFFDF;
      *&buf[16] = v46;
      *&buf[20] = 1;
      *&buf[24] = v46;
      *&buf[28] = 1;
      *&buf[32] = v43;
      *&buf[36] = v44;
      *v351 = *v41;
      *&v351[8] = *(this + 86);
      *&v351[12] = v42 & 0xFFFFFFDF;
      *&v351[16] = v46;
      *&v351[20] = 1;
      *&v351[24] = v46;
      *&v351[28] = 1;
      *&v351[32] = v43;
      *&v351[36] = v44;
      VPAUBusFormats::SetFormats(&v347, buf, 1, v351, 1);
LABEL_221:
      if (v347)
      {
        v260 = 0;
        v261 = 0;
        do
        {
          v262 = *(v348 + v260 + 32);
          v263 = *(v348 + v260 + 16);
          *buf = *(v348 + v260);
          *&buf[16] = v263;
          *&buf[32] = v262;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 3 * a2 + 1375, 8u, 1u, v261++, 0x28uLL, buf, 1);
          v260 += 40;
        }

        while (v261 < v347);
      }

      if (v349)
      {
        v264 = 0;
        v265 = 0;
        do
        {
          v266 = *(v350 + v264 + 32);
          v267 = *(v350 + v264 + 16);
          *buf = *(v350 + v264);
          *&buf[16] = v267;
          *&buf[32] = v266;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 3 * a2 + 1375, 8u, 2u, v265++, 0x28uLL, buf, 1);
          v264 += 40;
        }

        while (v265 < v349);
      }

      v268 = *(this + 37);
      v269 = *(this + 42);
      v270 = *(this + 131);
      v271 = v270;
      if (v268 != v269)
      {
        v271 = ceil(v268 * v271 / v269);
      }

      v70 = 0;
      v272 = v271;
      *(this + 136) = v271;
      switch(a2)
      {
        case 0u:
          if (*(this + 2027))
          {
            *buf = *(this + 2027);
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1375, 0x67727478u, 0, 0, 8uLL, buf, 1);
          }

          if (*(this + 2028))
          {
            *buf = *(this + 2028);
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1375, 0x676E616Du, 0, 0, 8uLL, buf, 1);
          }

          if (*(this + 2029))
          {
            *buf = *(this + 2029);
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1375, 0x61757370u, 0, 0, 8uLL, buf, 1);
          }

          if (*(this + 2030))
          {
            *buf = *(this + 2030);
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1375, 0x70727370u, 0, 0, 8uLL, buf, 1);
          }

          if (*(this + 2031))
          {
            if (v5[871])
            {
              v298 = 1733321574;
            }

            else
            {
              v298 = 1735553138;
            }

            if (v5[871])
            {
              v299 = 1919509619;
            }

            else
            {
              v299 = 0;
            }

            *buf = *(this + 2031);
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1375, v298, 0, v299, 8uLL, buf, 1);
          }

          if (*(this + 2032))
          {
            if (v5[871])
            {
              v300 = 1733321574;
            }

            else
            {
              v300 = 1735553138;
            }

            if (v5[871])
            {
              v301 = 1936746612;
            }

            else
            {
              v301 = 0;
            }

            *buf = *(this + 2032);
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1375, v300, 0, v301, 8uLL, buf, 0);
          }

          if (*(this + 2033))
          {
            if (v5[871])
            {
              v302 = 1733321574;
            }

            else
            {
              v302 = 1735553138;
            }

            if (v5[871])
            {
              v303 = 1936225381;
            }

            else
            {
              v303 = 0;
            }

            *buf = *(this + 2033);
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1375, v302, 0, v303, 8uLL, buf, 0);
          }

          if (*(this + 2034))
          {
            if (v5[871])
            {
              v304 = 1733321574;
            }

            else
            {
              v304 = 1735553138;
            }

            if (v5[871])
            {
              v305 = 1936225392;
            }

            else
            {
              v305 = 0;
            }

            *buf = *(this + 2034);
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1375, v304, 0, v305, 8uLL, buf, 0);
          }

          v306 = *(this + 600);
          if (v306 != 1781740087 && v306 != 1781805623)
          {
            v307 = atomic_load(this + 581);
            AUPropAndParamHelper::AddItemToAUParamList(this + 1110, 1969844082, v307);
          }

          if (VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) >= 2)
          {
            v308 = 0.0;
            if (*(this + 20) != 2)
            {
              v308 = 1.0;
            }

            AUPropAndParamHelper::AddItemToAUParamList(this + 1110, 1966175095, v308);
          }

          goto LABEL_417;
        case 1u:
          if (*(this + 2049))
          {
            *buf = *(this + 2049);
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1378, 0x67727478u, 0, 0, 8uLL, buf, 1);
            *v351 = 0;
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1378, 0xBu, 2u, 0, 4uLL, v351, 1);
          }

          if (*(this + 2050))
          {
            *buf = *(this + 2050);
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1378, 0x676E616Du, 0, 0, 8uLL, buf, 1);
          }

          if (*(this + 2051))
          {
            *buf = *(this + 2051);
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1378, 0x61757370u, 0, 0, 8uLL, buf, 1);
          }

          if (*(this + 2052))
          {
            *buf = *(this + 2052);
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1378, 0x70727370u, 0, 0, 8uLL, buf, 1);
          }

          goto LABEL_417;
        case 2u:
          *buf = 10;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1381, 0x898u, 0, 0, 4uLL, buf, 1);
          *v351 = *(this + 136);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1381, 0xEu, 0, 0, 4uLL, v351, 1);
          goto LABEL_417;
        case 3u:
          *buf = v271;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1384, 0xEu, 0, 0, 4uLL, buf, 1);
          *v351 = 0;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1384, 0x19CAu, 0, 0, 4uLL, v351, 1);
          goto LABEL_417;
        case 4u:
        case 5u:
        case 0xEu:
          *buf = v271;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 3 * a2 + 1375, 0xEu, 0, 0, 4uLL, buf, 1);
          goto LABEL_417;
        case 6u:
          *v351 = 1;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1393, 0xE74u, 0, 0, 4uLL, v351, 1);
          v290 = *(this + 37);
          v291 = *(this + 42);
          v292 = *(this + 131);
          if (v290 != v291)
          {
            LODWORD(v292) = vcvtpd_u64_f64(v290 * v292 / v291);
          }

          LODWORD(v343[0]) = v292;
          v293 = BlockSizeHelper::GetNextFFTFriendlyBlkSz(v292);
          if (BlockSizeHelper::GetNextFFTFriendlyBlkSz(v292) == v292)
          {
            v294 = this + 488;
            *(this + 488) = 0;
          }

          else
          {
            v318 = *(this + 20);
            v294 = this + 488;
            *(this + 488) = v318 == 0;
            if (!v318)
            {
              v319 = *(this + 37);
              if (v292 / v319 >= 0.012)
              {
                v320 = v292;
              }

              else
              {
                v320 = (v319 * 0.012);
              }

              v321 = BlockSizeHelper::GetNextFFTFriendlyBlkSz(v320);
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v322 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v322)
              {
                v323 = v322;
                if (os_log_type_enabled(v322, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  *&buf[4] = "VoiceProcessor_v2.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 5237;
                  *&buf[18] = 1024;
                  *&buf[20] = v292;
                  *&buf[24] = 1024;
                  *&buf[26] = v321;
                  _os_log_impl(&dword_2724B4000, v323, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> _vp<INFO>: The OCNS isn't configured at an fft-friendly blocksize (%d vs %d), reconfiguring it", buf, 0x1Eu);
                }
              }

              v324 = *(this + 1588);
              if (v324 && ((*v5 & 1) != 0 || v5[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v324, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 5237, "PopulateAUPropsAndParamsLists", "_vp<INFO>: The OCNS isn't configured at an fft-friendly blocksize (%d vs %d), reconfiguring it", v292, v321);
              }

              LODWORD(v343[0]) = v321;
            }
          }

          AUPropAndParamHelper::AddItemToAUPropsList(this + 1393, 0xEu, 0, 0, 4uLL, v343, 1);
          if (v293 == LODWORD(v343[0]) || (*v294 & 1) != 0)
          {
            goto LABEL_417;
          }

          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v325 = CALog::LogObjIfEnabled(5, VPLogScope(void)::scope);
          if (v325)
          {
            v326 = v325;
            if (os_log_type_enabled(v325, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315906;
              *&buf[4] = "VoiceProcessor_v2.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5250;
              *&buf[18] = 1024;
              *&buf[20] = v343[0];
              *&buf[24] = 1024;
              *&buf[26] = v293;
              _os_log_impl(&dword_2724B4000, v326, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> _vp<WARNING>: The DLNS isn't configured at an fft-friendly blocksize (%d vs %d), disabling it for now", buf, 0x1Eu);
            }
          }

          v70 = 1718772077;
          v327 = *(this + 1588);
          if (v327 && ((*v5 & 1) != 0 || v5[1] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v327, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 5250, "PopulateAUPropsAndParamsLists", "_vp<WARNING>: The DLNS isn't configured at an fft-friendly blocksize (%d vs %d), disabling it for now", LODWORD(v343[0]), v293);
          }

          break;
        case 7u:
          *v351 = v271;
          if (BlockSizeHelper::GetNextFFTFriendlyBlkSz(v271) == v272)
          {
            *(this + 488) = 0;
          }

          else
          {
            v311 = *(this + 20);
            *(this + 488) = v311 == 0;
            if (!v311)
            {
              v312 = *(this + 37);
              if (v272 / v312 >= 0.012)
              {
                v313 = v272;
              }

              else
              {
                v313 = (v312 * 0.012);
              }

              v314 = BlockSizeHelper::GetNextFFTFriendlyBlkSz(v313);
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v315 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v315)
              {
                v316 = v315;
                if (os_log_type_enabled(v315, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  *&buf[4] = "VoiceProcessor_v2.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 5199;
                  *&buf[18] = 1024;
                  *&buf[20] = v272;
                  *&buf[24] = 1024;
                  *&buf[26] = v314;
                  _os_log_impl(&dword_2724B4000, v316, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> _vp<INFO>: The SpeechEnhance isn't configured at an fft-friendly blocksize (%d vs %d), reconfiguring it", buf, 0x1Eu);
                }
              }

              v317 = *(this + 1588);
              if (v317 && ((*v5 & 1) != 0 || v5[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v317, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 5199, "PopulateAUPropsAndParamsLists", "_vp<INFO>: The SpeechEnhance isn't configured at an fft-friendly blocksize (%d vs %d), reconfiguring it", v272, v314);
              }

              *v351 = v314;
            }
          }

          AUPropAndParamHelper::AddItemToAUPropsList(this + 1396, 0xEu, 0, 0, 4uLL, v351, 1);
          *buf = *(this + 114);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1396, 0x3EBu, 0, 0, 8uLL, buf, 1);
          LODWORD(v343[0]) = *(this + 129);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1396, 0x3ECu, 0, 0, 4uLL, v343, 1);
          goto LABEL_417;
        case 8u:
          *buf = v271;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1399, 0xEu, 0, 0, 4uLL, buf, 1);
          goto LABEL_417;
        case 9u:
          *buf = v271;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1402, 0xEu, 0, 0, 4uLL, buf, 1);
          *v351 = 1;
          v296 = *(this + 37);
          v297 = *(this + 42);
          if (v296 != v297)
          {
            LODWORD(v295) = *(this + 131);
            *v351 = ceil(v296 * v295 / v297) == floor(v296 * v295 / v297);
          }

          AUPropAndParamHelper::AddItemToAUPropsList(this + 1402, 0xE74u, 0, 0, 4uLL, v351, 1);
          goto LABEL_417;
        case 0xFu:
          *buf = v270;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1420, 0xEu, 0, 0, 4uLL, buf, 1);
          if ((*(this + 2260) & 1) != 0 || v5[680] == 1)
          {
            *v351 = 0;
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1420, 0x15u, 0, 0, 4uLL, v351, 1);
            if (v5[680] == 1)
            {
              LODWORD(v343[0]) = 1;
              AUPropAndParamHelper::AddItemToAUPropsList(this + 1420, 0x6E657065u, 0, 0, 4uLL, v343, 1);
            }

            LODWORD(v343[0]) = *(v5 + 683);
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1420, 0x6E65706Cu, 0, 0, 4uLL, v343, 1);
          }

          goto LABEL_417;
        case 0x10u:
        case 0x11u:
        case 0x13u:
        case 0x17u:
        case 0x18u:
        case 0x19u:
        case 0x1Eu:
          *buf = v270;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 3 * a2 + 1375, 0xEu, 0, 0, 4uLL, buf, 1);
          goto LABEL_417;
        case 0x12u:
        case 0x14u:
        case 0x1Fu:
          *buf = 10;
          v273 = this + 24 * a2;
          AUPropAndParamHelper::AddItemToAUPropsList(v273 + 1375, 0x898u, 0, 0, 4uLL, buf, 1);
          *v351 = *(this + 131);
          AUPropAndParamHelper::AddItemToAUPropsList(v273 + 1375, 0xEu, 0, 0, 4uLL, v351, 1);
          goto LABEL_417;
        case 0x15u:
        case 0x16u:
          *buf = 1;
          v274 = this + 24 * a2;
          AUPropAndParamHelper::AddItemToAUPropsList(v274 + 1375, 0xE74u, 0, 0, 4uLL, buf, 1);
          *v351 = *(this + 131);
          AUPropAndParamHelper::AddItemToAUPropsList(v274 + 1375, 0xEu, 0, 0, 4uLL, v351, 1);
          if ((*(this + 4600) & 1) == 0)
          {
            v275 = *(this + 267);
            v276 = *(this + 268);
            if (v275 != v276)
            {
              v277 = v275 + 1;
              if (v275 + 1 != v276)
              {
                v278 = *v275;
                v279 = v275 + 1;
                do
                {
                  v280 = *v279++;
                  v281 = v280;
                  if (v280 < v278)
                  {
                    v278 = v281;
                    v275 = v277;
                  }

                  v277 = v279;
                }

                while (v279 != v276);
              }

              AUPropAndParamHelper::AddItemToAUParamList(this + 3 * a2 + 1110, 1, fmaxf(*v275, 0.0));
            }
          }

          goto LABEL_417;
        case 0x1Au:
          *buf = 1;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1453, 0x19CAu, 0, 0, 4uLL, buf, 1);
          *v351 = *(this + 131);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1453, 0xEu, 0, 0, 4uLL, v351, 1);
          goto LABEL_417;
        case 0x20u:
          *buf = 1;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1471, 0xE74u, 0, 0, 4uLL, buf, 1);
          *v351 = *(this + 131);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1471, 0xEu, 0, 0, 4uLL, v351, 1);
          goto LABEL_417;
        case 0x21u:
          *buf = 10;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1474, 0x898u, 0, 0, 4uLL, buf, 1);
          *v351 = *(this + 123);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1474, 0xEu, 0, 0, 4uLL, v351, 1);
          goto LABEL_417;
        case 0x22u:
        case 0x23u:
        case 0x24u:
        case 0x25u:
        case 0x26u:
        case 0x27u:
        case 0x28u:
        case 0x29u:
        case 0x2Au:
        case 0x2Cu:
        case 0x2Eu:
        case 0x30u:
        case 0x31u:
        case 0x32u:
        case 0x34u:
        case 0x35u:
        case 0x36u:
        case 0x37u:
        case 0x39u:
        case 0x3Au:
        case 0x3Bu:
        case 0x3Cu:
        case 0x3Eu:
          *buf = *(this + 123);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 3 * a2 + 1375, 0xEu, 0, 0, 4uLL, buf, 1);
          goto LABEL_417;
        case 0x2Bu:
          *v351 = *(this + 123);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1504, 0xEu, 0, 0, 4uLL, v351, 1);
          if (*(this + 489) == 1)
          {
            *buf = *(this + 104);
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1504, 0xF3Du, 0, 0, 8uLL, buf, 1);
            LODWORD(v343[0]) = *(this + 129);
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1504, 0xF3Eu, 0, 0, 4uLL, v343, 1);
          }

          goto LABEL_417;
        case 0x2Du:
          LODWORD(v344) = 1;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1510, 0xE74u, 0, 0, 4uLL, &v344, 1);
          if (v5[280])
          {
            goto LABEL_416;
          }

          VoiceProcessorV2::GetRefPortUIDForPME(buf, this);
          applesauce::CF::StringRef::StringRef(&v342, *buf);
          isPersonalMediaEnabled = va::PersonalAudioInterface::isPersonalMediaEnabled(&v342);
          applesauce::CF::StringRef::~StringRef(&v342);
          if (isPersonalMediaEnabled)
          {
            RefPortHLC2chStateForPME = VoiceProcessorV2::GetRefPortHLC2chStateForPME(this);
            applesauce::CF::StringRef::StringRef(&v341, *buf);
            va::PersonalAudioInterface::getPreset(v351, &v341);
            applesauce::CF::StringRef::~StringRef(&v341);
            if (*v351)
            {
              v343[0] = *v351;
              AUPropAndParamHelper::AddItemToAUPropsList(this + 1510, 0, 0, 0, 8uLL, v343, 1);
              v285 = RefPortHLC2chStateForPME ^ 1;
              goto LABEL_415;
            }
          }

          else
          {
            v285 = va::PersonalAudioInterface::isPersonalMediaEnabled(v283);
            va::PersonalAudioInterface::getPreset(v351);
            if (*v351)
            {
              v343[0] = *v351;
              AUPropAndParamHelper::AddItemToAUPropsList(this + 1510, 0, 0, 0, 8uLL, v343, 1);
              goto LABEL_415;
            }
          }

          v285 = 0;
LABEL_415:
          applesauce::CF::DictionaryRef::~DictionaryRef(v351);
          *v351 = (v285 & 1) == 0;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1510, 0x15u, 0, 0, 4uLL, v351, 1);
          applesauce::CF::StringRef::~StringRef(buf);
LABEL_416:
          *buf = *(this + 123);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1510, 0xEu, 0, 0, 4uLL, buf, 1);
LABEL_417:
          v70 = 0;
          break;
        case 0x2Fu:
          v309 = *(this + 1108);
          if ((v309 & 0x400000) != 0 && (*(this + 8874) & 0x40) != 0 && *(this + 461))
          {
            goto LABEL_410;
          }

          if ((v309 & 0x4000000) != 0 && (*(this + 8875) & 4) != 0)
          {
            v310 = *(this + 465);
            if (v310)
            {
LABEL_410:
              LODWORD(v310) = *(this + 91) > 1u;
            }
          }

          else
          {
            LODWORD(v310) = 0;
          }

          *buf = v310;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1516, 0x19CAu, 0, 0, 4uLL, buf, 1);
          *v351 = *(this + 123);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1516, 0xEu, 0, 0, 4uLL, v351, 1);
          goto LABEL_417;
        case 0x38u:
          *v351 = 0;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1543, 0x15u, 0, 0, 4uLL, v351, 1);
          v286 = *(this + 552);
          if (v286)
          {
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1543, 0xFA05u, 0, 0, (4 * v286), *(this + 275), 1);
          }

          LODWORD(v343[0]) = *(this + 123);
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1543, 0xEu, 0, 0, 4uLL, v343, 1);
          if (*(this + 1136) && *(this + 270))
          {
            *buf = *(this + 270);
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1543, 0xFA09u, 0, 0, 8uLL, buf, 1);
          }

          v287 = *(this + 544);
          if (v287)
          {
            v288 = *(this + 271);
            if (v288)
            {
              AUPropAndParamHelper::AddItemToAUPropsList(this + 1543, 0xFA0Au, 0, 0, (8 * v287), v288, 1);
            }
          }

          v289 = *(this + 19);
          if (v289 <= 0x30 && ((1 << v289) & 0x1FFFE67E7FFDELL) != 0 && *(this + 280))
          {
            AUPropAndParamHelper::AddItemToAUPropsList(this + 1543, 0xFA08u, 0, 0, 8uLL, this + 2240, 1);
          }

          goto LABEL_417;
        default:
          break;
      }

LABEL_418:
      VPAUBusFormats::~VPAUBusFormats(&v347);
      v338 = *MEMORY[0x277D85DE8];
      return v70;
    case 0xEu:
      VPAUBusFormats::AllocateForFormats(&v347, 1u, 1u);
      v105 = *(this + 37);
      v106 = v348;
      *v348 = v105;
      *(v106 + 8) = xmmword_272756340;
      *(v106 + 24) = xmmword_272756350;
      v107 = v350;
      *v350 = v105;
      *(v107 + 8) = xmmword_272756340;
      *(v107 + 24) = xmmword_272756350;
      goto LABEL_221;
    case 0xFu:
      *buf = *(this + 42);
      *&buf[8] = xmmword_272756340;
      *&buf[24] = 4;
      *&buf[28] = VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this);
      *&buf[32] = 32;
      if (*(this + 2260))
      {
        v108 = 2;
      }

      else
      {
        v108 = 1;
      }

      *v351 = *(this + 42);
      *&v351[8] = xmmword_272756340;
      *&v351[24] = 4;
      *&v351[28] = v108;
      *&v351[32] = 32;
      VPAUBusFormats::AllocateForFormats(&v347, 5u, 2u);
      v109 = v348;
      *v348 = *buf;
      *(v109 + 16) = *&buf[16];
      *(v109 + 32) = *&buf[32];
      v110 = *v351;
      v111 = *&v351[16];
      v112 = *v351;
      v113 = *&v351[16];
      *(v109 + 40) = *v351;
      *(v109 + 56) = v111;
      v114 = *&v351[32];
      v115 = *&v351[32];
      *(v109 + 72) = *&v351[32];
      *(v109 + 120) = v110;
      *(v109 + 80) = v110;
      *(v109 + 96) = v111;
      *(v109 + 112) = v114;
      *(v109 + 152) = v114;
      *(v109 + 136) = v111;
      *(v109 + 160) = v112;
      *(v109 + 176) = v113;
      *(v109 + 192) = v115;
      v116 = buf;
      if (*(this + 2260))
      {
        v116 = v351;
      }

      v117 = v350;
      *v350 = *v116;
      *(v117 + 16) = *(v116 + 1);
      *(v117 + 32) = *(v116 + 4);
      *(v117 + 72) = v115;
      *(v117 + 56) = v113;
      *(v117 + 40) = v112;
      goto LABEL_221;
    case 0x10u:
      *buf = *(this + 42);
      *&buf[8] = xmmword_272756340;
      *&buf[24] = xmmword_272756360;
      *v351 = *buf;
      *&v351[8] = xmmword_272756340;
      *&v351[24] = xmmword_272756360;
      VPAUBusFormats::SetFormats(&v347, buf, 1, v351, 1);
      goto LABEL_221;
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x1Eu:
    case 0x1Fu:
    case 0x24u:
      v17 = *(this + 42);
      VPAUBusFormats::AllocateForFormats(&v347, 1u, 1u);
      v18 = v348;
      *v348 = v17;
      *(v18 + 8) = xmmword_272756340;
      *(v18 + 24) = xmmword_272756350;
      v19 = v350;
      *v350 = v17;
      *(v19 + 8) = xmmword_272756340;
      *(v19 + 24) = xmmword_272756350;
      goto LABEL_221;
    case 0x15u:
    case 0x16u:
    case 0x2Bu:
      v129 = *(this + 42);
      VPAUBusFormats::AllocateForFormats(&v347, 2u, 1u);
      v130 = v348;
      *v348 = v129;
      *(v130 + 8) = xmmword_272756340;
      *(v130 + 24) = xmmword_272756350;
      v131 = v348;
      v132 = v350;
      *(v348 + 40) = v129;
      *(v131 + 48) = xmmword_272756340;
      *(v131 + 64) = xmmword_272756350;
      *v132 = v129;
      *(v132 + 8) = xmmword_272756340;
      *(v132 + 24) = xmmword_272756350;
      goto LABEL_221;
    case 0x1Au:
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x2Fu:
    case 0x32u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
    case 0x37u:
    case 0x3Cu:
    case 0x3Eu:
      v11 = *(this + 22);
      *buf = *(this + 21);
      *&buf[16] = v11;
      *&buf[32] = *(this + 46);
      VPAUBusFormats::AllocateForFormats(&v347, 1u, 1u);
      goto LABEL_6;
    case 0x20u:
    case 0x21u:
    case 0x22u:
      goto LABEL_25;
    case 0x23u:
    case 0x25u:
      v53 = *(this + 1108);
      if ((v53 & 0x400000) != 0 && (*(this + 8874) & 0x40) != 0 && *(this + 461) || (v53 & 0x4000000) != 0 && (*(this + 8875) & 4) != 0 && *(this + 465))
      {
LABEL_25:
        *buf = *(this + 42);
        *&buf[8] = xmmword_272756340;
        *&buf[24] = 4;
        *&buf[28] = VoiceProcessorV2::GetDynamicsDSPChannelCount(this);
        *&buf[32] = 32;
        *v351 = *buf;
        *&v351[8] = xmmword_272756340;
        *&v351[24] = __PAIR64__(*&buf[28], 4);
        *&v351[32] = 32;
        VPAUBusFormats::SetFormats(&v347, buf, 1, v351, 1);
      }

      else
      {
        *buf = *(this + 42);
        *&buf[8] = xmmword_272756340;
        *&buf[24] = xmmword_272756370;
        *v351 = *buf;
        *&v351[8] = xmmword_272756340;
        *&v351[24] = xmmword_272756370;
        VPAUBusFormats::SetFormats(&v347, buf, 1, v351, 1);
      }

      goto LABEL_221;
    case 0x26u:
      *buf = *(this + 42);
      *&buf[8] = xmmword_272756340;
      *&buf[24] = xmmword_272756370;
      v104 = *(this + 22);
      *v351 = *(this + 21);
      *&v351[16] = v104;
      *&v351[32] = *(this + 46);
      VPAUBusFormats::SetFormats(&v347, buf, 1, v351, 1);
      goto LABEL_221;
    case 0x27u:
      *buf = *(this + 42);
      *&buf[8] = xmmword_272756340;
      *&buf[24] = 4;
      *&buf[28] = VoiceProcessorV2::GetDynamicsDSPChannelCount(this);
      *&buf[32] = 32;
      v128 = *(this + 22);
      *v351 = *(this + 21);
      *&v351[16] = v128;
      *&v351[32] = *(this + 46);
      VPAUBusFormats::SetFormats(&v347, buf, 1, v351, 1);
      goto LABEL_221;
    case 0x29u:
      v102 = *(this + 22);
      *buf = *(this + 21);
      *&buf[16] = v102;
      *&buf[32] = *(this + 46);
      v103 = *(this + 22);
      *v351 = *(this + 21);
      *&v351[16] = v103;
      *&v351[32] = *(this + 46);
      VPAUBusFormats::SetFormats(&v347, buf, 1, v351, 1);
      goto LABEL_221;
    case 0x2Au:
      v89 = *(this + 42);
      DynamicsDSPChannelCount = VoiceProcessorV2::GetDynamicsDSPChannelCount(this);
      v91 = *(this + 1081);
      *buf = v89;
      *&buf[8] = xmmword_272756340;
      *&buf[24] = 4;
      *&buf[28] = DynamicsDSPChannelCount;
      *&buf[32] = 32;
      *v351 = v89;
      *&v351[8] = xmmword_272756340;
      *&v351[24] = 4;
      *&v351[28] = v91;
      *&v351[32] = 32;
      VPAUBusFormats::SetFormats(&v347, buf, 1, v351, 1);
      goto LABEL_221;
    case 0x30u:
    case 0x31u:
    case 0x39u:
      v118 = *(this + 42);
      v119 = *(this + 1081);
      VPAUBusFormats::AllocateForFormats(&v347, 1u, 1u);
      v120 = v348;
      *v348 = v118;
      *(v120 + 8) = xmmword_272756340;
      *(v120 + 24) = 4;
      *(v120 + 28) = v119;
      *(v120 + 32) = 32;
      v121 = v350;
      *v350 = v118;
      *(v121 + 8) = xmmword_272756340;
      *(v121 + 24) = 4;
      *(v121 + 28) = v119;
      *(v121 + 32) = 32;
      goto LABEL_221;
    case 0x38u:
      v98 = *(this + 22);
      *buf = *(this + 21);
      *&buf[16] = v98;
      *&buf[32] = *(this + 46);
      v99 = 1;
      if (*(this + 1136) == 1)
      {
        v100 = *(this + 381);
        v101 = v100 != 0;
        if (v100)
        {
          v99 = 2;
        }

        else
        {
          v99 = 1;
        }
      }

      else
      {
        v101 = 0;
      }

      VPAUBusFormats::AllocateForFormats(&v347, v99, 1u);
      v246 = v348;
      v247 = *&buf[16];
      *(v348 + 16) = *&buf[16];
      v248 = *buf;
      *v246 = *buf;
      v249 = *&buf[32];
      *(v246 + 32) = *&buf[32];
      v250 = v350;
      *v350 = v248;
      *(v250 + 16) = v247;
      *(v250 + 32) = v249;
      if (v101)
      {
        v251 = *(this + 1496);
        v252 = *(this + 1512);
        *(v246 + 72) = *(this + 191);
        *(v246 + 56) = v252;
        *(v246 + 40) = v251;
      }

      goto LABEL_221;
    case 0x3Au:
      v125 = 1;
      if (*(this + 1136) == 1)
      {
        v126 = *(this + 381);
        v127 = v126 != 0;
        if (v126)
        {
          v125 = 2;
        }

        else
        {
          v125 = 1;
        }
      }

      else
      {
        v127 = 0;
      }

      v253 = *(this + 42);
      v254 = *(this + 1081);
      VPAUBusFormats::AllocateForFormats(&v347, v125, 1u);
      v255 = v348;
      *v348 = v253;
      *(v255 + 8) = xmmword_272756340;
      *(v255 + 24) = 4;
      *(v255 + 28) = v254;
      *(v255 + 32) = 32;
      v256 = v350;
      *v350 = v253;
      *(v256 + 8) = xmmword_272756340;
      *(v256 + 24) = 4;
      *(v256 + 28) = v254;
      *(v256 + 32) = 32;
      if (v127)
      {
        v257 = v348;
        v258 = *(this + 191);
        v259 = *(this + 1512);
        *(v348 + 40) = *(this + 1496);
        *(v257 + 56) = v259;
        *(v257 + 72) = v258;
      }

      goto LABEL_221;
    case 0x3Bu:
      *&buf[32] = *(this + 191);
      v92 = *(this + 1512);
      *buf = *(this + 1496);
      *&buf[16] = v92;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v93 = CALog::LogObjIfEnabled(4, VPLogScope(void)::scope);
      if (v93)
      {
        v94 = v93;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
        {
          CAFormatter::CAFormatter(v343, (this + 1496));
          v95 = *(this + 379);
          *v351 = 136315906;
          *&v351[4] = "VoiceProcessor_v2.cpp";
          *&v351[12] = 1024;
          *&v351[14] = 4273;
          *&v351[18] = 2080;
          *&v351[20] = v343[0];
          *&v351[28] = 1024;
          *&v351[30] = v95;
          _os_log_impl(&dword_2724B4000, v94, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> initspkrtel: asbd = %s, blksz = %d", v351, 0x22u);
          if (v343[0])
          {
            free(v343[0]);
          }
        }
      }

      v96 = *(this + 1588);
      if (v96 && ((*v5 & 1) != 0 || v5[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v97 = VPLogScope(void)::scope;
        CAFormatter::CAFormatter(v351, (this + 1496));
        CALegacyLog::log(v96, 4, v97, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 4273, "GetAUStreamFormats", "initspkrtel: asbd = %s, blksz = %d", *v351, *(this + 379));
        if (*v351)
        {
          free(*v351);
        }
      }

      VPAUBusFormats::AllocateForFormats(&v347, 1u, 1u);
LABEL_6:
      v12 = v348;
      v13 = *&buf[16];
      *(v348 + 16) = *&buf[16];
      v14 = *buf;
      *v12 = *buf;
      v15 = *&buf[32];
      *(v12 + 32) = *&buf[32];
      v16 = v350;
      *v350 = v14;
      *(v16 + 16) = v13;
      *(v16 + 32) = v15;
      goto LABEL_221;
    default:
      VPAUBusFormats::AllocateForFormats(&v347, 0, 0);
      goto LABEL_221;
  }
}

void sub_2724E5268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  VPAUBusFormats::~VPAUBusFormats(&a20);
  _Unwind_Resume(a1);
}

CFNumberRef *applesauce::CF::NumberRef::NumberRef<AUBSS2Algorithm,void>(CFNumberRef *a1)
{
  valuePtr = 1;
  v2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *a1 = v2;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

applesauce::CF::StringRef *applesauce::CF::StringRef::StringRef(applesauce::CF::StringRef *this, const UInt8 *a2, CFIndex a3)
{
  if (a2)
  {
    v4 = CFStringCreateWithBytes(0, a2, a3, 0x8000100u, 0);
    *this = v4;
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRef::TypeRef(applesauce::CF::TypeRef *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  if ((v9 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = v9;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = CFStringCreateWithBytes(0, v3, v4, 0x8000100u, 0);
  *this = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_2724E5778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *applesauce::CF::StringRef::operator applesauce::CF::TypeRef(void *result, CFTypeRef cf)
{
  v3 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v3 = cf;
  return result;
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t a1)
{
  v2 = *(a1 + 8);
  keys = 0;
  v32 = 0;
  v33 = 0;
  std::vector<void const*>::reserve(&keys, v2);
  values = 0;
  v29 = 0;
  v30 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *(a1 + 8);
  v4 = keys;
  v5 = values;
  if (v3)
  {
    v6 = *a1;
    v26 = v2;
    v27 = *a1 + 16 * v3;
    v7 = v32;
    v8 = v33;
    v10 = v29;
    v9 = v30;
    do
    {
      v11 = *v6;
      if (v7 >= v8)
      {
        v12 = v7 - v4;
        v13 = (v7 - v4) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        if ((v8 - v4) >> 2 > v14)
        {
          v14 = (v8 - v4) >> 2;
        }

        if (v8 - v4 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = (8 * v13);
        v8 = 0;
        *v16 = v11;
        v7 = (v16 + 1);
        memcpy(0, v4, v12);
        if (v4)
        {
          operator delete(v4);
        }

        v4 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = v6[1];
      if (v10 >= v9)
      {
        v18 = v10 - v5;
        v19 = (v10 - v5) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        if ((v9 - v5) >> 2 > v20)
        {
          v20 = (v9 - v5) >> 2;
        }

        if (v9 - v5 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v21);
        }

        v22 = (8 * v19);
        v9 = 0;
        *v22 = v17;
        v10 = (v22 + 1);
        memcpy(0, v5, v18);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v6 += 2;
    }

    while (v6 != v27);
    v32 = v7;
    v33 = v8;
    v30 = v9;
    keys = v4;
    values = v5;
    v29 = v10;
    v2 = v26;
  }

  v23 = CFDictionaryCreate(0, v4, v5, v2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v23)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  return v23;
}

void sub_2724E5A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[3],unsigned int const&>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_2724E5B5C(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::TypeRefPair::~TypeRefPair(applesauce::CF::TypeRefPair *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

applesauce::CF::StringRef *applesauce::CF::StringRef::StringRef(applesauce::CF::StringRef *this, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *this = cf;
  return this;
}

{
  *this = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return this;
}

void VPAUBusFormats::~VPAUBusFormats(VPAUBusFormats *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    free(v2);
    *(this + 1) = 0;
  }

  v3 = *(this + 3);
  if (v3)
  {
    free(v3);
    *(this + 3) = 0;
  }

  *(this + 4) = 0;
  *this = 0;
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
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

void VoiceProcessorV2::InstantiateAndConfigureEffectAU(VoiceProcessorV2 *this, unsigned int a2, int a3)
{
  v3 = a3;
  v5 = this;
  v213 = *MEMORY[0x277D85DE8];
  v193 = this + 15881;
  if (a2 == 56)
  {
    v6 = a3;
  }

  else
  {
    v6 = 1;
  }

  v192 = v6;
  if (a3)
  {
    v7 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
  }

  else
  {
    v7 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
  }

  if (a3)
  {
    v8 = 71;
  }

  else
  {
    v8 = 64;
  }

  v9 = v8;
  v10 = v7;
  while (*v10 != a2)
  {
    v10 += 18;
    if (!--v9)
    {
      v11 = 0;
      goto LABEL_15;
    }
  }

  v11 = v10[1];
LABEL_15:
  if (a3)
  {
    v12 = (this + 2792);
  }

  else
  {
    v12 = (this + 3512);
  }

  if (a3)
  {
    v13 = (this + 8 * a2 + 2792);
  }

  else
  {
    v13 = (this + 8 * a2 + 3512);
  }

  v191 = v13;
  if (!VoiceProcessorV2::InstantiateAU(this, 0x61756678u, v11, v13, v11 != 1685287015) && v12[a2])
  {
    Property = VoiceProcessorV2::PopulateAUPropsAndParamsLists(v5, a2, v3);
    v194 = v5;
    if (Property)
    {
LABEL_24:
      if (a2 == 6 && Property == 1718772077 && (v3 & 1) == 0)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v15 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v16 = (*v15 ? *v15 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = "VoiceProcessor_v2.cpp";
            v209 = 1024;
            v210 = 5863;
            v211 = 2080;
            *v212 = "(DL-)OCNS";
            *&v212[8] = 1024;
            *&v212[10] = 1718772077;
            _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> instantiateandconfigureeffectau (%s): warning %d due to non-FFT friendly blocksize", buf, 0x22u);
          }
        }

        v17 = *(v194 + 1588);
        if (v17 && ((*v193 & 1) != 0 || v193[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v17, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 5863, "InstantiateAndConfigureEffectAU", "instantiateandconfigureeffectau (%s): warning %d due to non-FFT friendly blocksize", "(DL-)OCNS", 1718772077);
        }
      }

      else
      {
        do
        {
          if (*v7 == a2)
          {
            v18 = (v7 + 2);
            goto LABEL_50;
          }

          v7 += 18;
          --v8;
        }

        while (v8);
        v18 = 0;
LABEL_50:
        snprintf(buf, 0x80uLL, "instantiateandconfigureeffectau (%s): error %d", v18, Property);
        std::string::basic_string[abi:ne200100]<0>(&v205, "VoiceProcessor_v2.cpp");
        std::to_string(&v198, 5866);
        v23 = std::string::insert(&v198, 0, ":", 1uLL);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v199.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v199.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = std::string::append(&v199, ":", 1uLL);
        v26 = *&v25->__r_.__value_.__l.__data_;
        v200.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v200.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v207, "InstantiateAndConfigureEffectAU");
        if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &v207;
        }

        else
        {
          v27 = v207.__r_.__value_.__r.__words[0];
        }

        if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v207.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v207.__r_.__value_.__l.__size_;
        }

        v29 = std::string::append(&v200, v27, size);
        v30 = *&v29->__r_.__value_.__l.__data_;
        v201.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
        *&v201.__r_.__value_.__l.__data_ = v30;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        v29->__r_.__value_.__r.__words[0] = 0;
        v31 = std::string::append(&v201, " ", 1uLL);
        v32 = *&v31->__r_.__value_.__l.__data_;
        outData.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
        *&outData.__r_.__value_.__l.__data_ = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        v33 = strlen(buf);
        v34 = std::string::append(&outData, buf, v33);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v204 = v34->__r_.__value_.__r.__words[2];
        *__p = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        if (v204 >= 0)
        {
          v36 = __p;
        }

        else
        {
          v36 = __p[0];
        }

        if (v204 >= 0)
        {
          v37 = HIBYTE(v204);
        }

        else
        {
          v37 = __p[1];
        }

        std::string::append(&v205, v36, v37);
        if (SHIBYTE(v204) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(outData.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(outData.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v201.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v207.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v200.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v199.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v198.__r_.__value_.__l.__data_);
        }

        v38 = 15984;
        if (v3)
        {
          v38 = 15960;
        }

        std::vector<std::string>::push_back[abi:ne200100](v194 + v38, &v205);
        if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v205.__r_.__value_.__l.__data_);
        }
      }

      VoiceProcessorV2::DisposeAU(v194, 1635083896, v11, v191, 1);
      goto LABEL_81;
    }

    memset(&v205, 0, sizeof(v205));
    __p[0] = 0;
    __p[1] = 0;
    v204 = 0;
    if (v3)
    {
      v19 = (v5 + 24 * a2 + 7064);
      if (&v205 != v19)
      {
        v20 = *(v5 + 3 * a2 + 884);
        std::vector<AUPropertyItem>::__assign_with_size[abi:ne200100]<AUPropertyItem*,AUPropertyItem*>(&v205, v19->__r_.__value_.__r.__words[0], v20, 0xAAAAAAAAAAAAAAABLL * ((v20 - v19->__r_.__value_.__r.__words[0]) >> 3));
      }

      v21 = v5 + 24 * a2;
      v22 = 4720;
    }

    else
    {
      v40 = (v5 + 24 * a2 + 11000);
      if (&v205 != v40)
      {
        v41 = *(v5 + 3 * a2 + 1376);
        std::vector<AUPropertyItem>::__assign_with_size[abi:ne200100]<AUPropertyItem*,AUPropertyItem*>(&v205, v40->__r_.__value_.__r.__words[0], v41, 0xAAAAAAAAAAAAAAABLL * ((v41 - v40->__r_.__value_.__r.__words[0]) >> 3));
      }

      v21 = v5 + 24 * a2;
      v22 = 8880;
    }

    std::vector<std::pair<unsigned int,float>>::__assign_with_size[abi:ne200100]<std::pair<unsigned int,float>*,std::pair<unsigned int,float>*>(__p, *&v21[v22], *&v21[v22 + 8], (*&v21[v22 + 8] - *&v21[v22]) >> 3);
    v189 = v11;
    v190 = v3;
    if (a2 == 28)
    {
      *buf = 2;
      Property = AudioUnitSetProperty(v12[28], 0xBu, 1u, 0, buf, 4u);
    }

    else
    {
      Property = 0;
    }

    v42 = v205.__r_.__value_.__r.__words[0];
    if (v205.__r_.__value_.__l.__size_ != v205.__r_.__value_.__r.__words[0])
    {
      v43 = 0;
      v44 = 0;
      do
      {
        v45 = v42 + 24 * v43;
        v47 = *(v45 + 8);
        v46 = *(v45 + 12);
        v48 = *(v45 + 16);
        outData.__r_.__value_.__r.__words[0] = *v45;
        *&outData.__r_.__value_.__r.__words[1] = v47;
        AUPropertyItem::SetData(&outData, v46, v48);
        v49 = v12;
        data = outData.__r_.__value_.__l.__data_;
        v51 = outData.__r_.__value_.__r.__words[2];
        Property = AudioUnitSetProperty(v12[a2], outData.__r_.__value_.__l.__data_, HIDWORD(outData.__r_.__value_.__r.__words[0]), outData.__r_.__value_.__r.__words[1], outData.__r_.__value_.__r.__words[2], HIDWORD(outData.__r_.__value_.__r.__words[1]));
        if (a2 == 43)
        {
          if (data == 3902)
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v56 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
            {
              v57 = (*v56 ? *v56 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                v58 = *v51;
                *buf = 136315906;
                *&buf[4] = "VoiceProcessor_v2.cpp";
                v209 = 1024;
                v210 = 5738;
                v211 = 1024;
                *v212 = 3902;
                *&v212[4] = 1024;
                *&v212[6] = v58;
                _os_log_impl(&dword_2724B4000, v57, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Setting downlink TweakaLeakIR property ID: %d, value: %d", buf, 0x1Eu);
              }
            }

            v59 = *(v5 + 1588);
            if (v59 && ((*v193 & 1) != 0 || v193[1] == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v59, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 5738, "InstantiateAndConfigureEffectAU", "Setting downlink TweakaLeakIR property ID: %d, value: %d", 3902, *v51);
            }
          }

          else if (data == 3901)
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v52 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
            {
              v53 = (*v52 ? *v52 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                v54 = *v51;
                *buf = 136315906;
                *&buf[4] = "VoiceProcessor_v2.cpp";
                v209 = 1024;
                v210 = 5734;
                v211 = 1024;
                *v212 = 3901;
                *&v212[4] = 2048;
                *&v212[6] = v54;
                _os_log_impl(&dword_2724B4000, v53, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Setting downlink TweakaLeakIR property ID: %d, value: %f", buf, 0x22u);
              }
            }

            v55 = *(v5 + 1588);
            if (v55 && ((*v193 & 1) != 0 || v193[1] == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v55, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 5734, "InstantiateAndConfigureEffectAU", "Setting downlink TweakaLeakIR property ID: %d, value: %f", 3901, *v51);
            }
          }
        }

        if (Property)
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v60 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v61 = (*v60 ? *v60 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              v62 = v8;
              v63 = v7;
              while (*v63 != a2)
              {
                v63 += 18;
                if (!--v62)
                {
                  v64 = 0;
                  goto LABEL_138;
                }
              }

              v64 = v63 + 2;
LABEL_138:
              *buf = 136316162;
              *&buf[4] = "VoiceProcessor_v2.cpp";
              v209 = 1024;
              v210 = 5745;
              v211 = 1024;
              *v212 = data;
              *&v212[4] = 2080;
              *&v212[6] = v64;
              *&v212[14] = 1024;
              *&v212[16] = Property;
              _os_log_impl(&dword_2724B4000, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Error in setting proerty ID %u to AU %s error %d", buf, 0x28u);
            }
          }

          v67 = *(v5 + 1588);
          if (v67 && ((*v193 & 1) != 0 || v193[1] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v68 = v8;
            v69 = v7;
            while (*v69 != a2)
            {
              v69 += 18;
              if (!--v68)
              {
                v70 = 0;
                goto LABEL_149;
              }
            }

            v70 = (v69 + 2);
LABEL_149:
            CALegacyLog::log(v67, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 5745, "InstantiateAndConfigureEffectAU", "Error in setting proerty ID %u to AU %s error %d", data, v70, Property);
          }

          if (v192)
          {
            v66 = 0;
            v65 = 21;
          }

          else
          {
            v71 = v8;
            v72 = v7;
            while (*v72 != 56)
            {
              v72 += 18;
              if (!--v71)
              {
                v73 = 0;
                goto LABEL_157;
              }
            }

            v73 = (v72 + 2);
LABEL_157:
            snprintf(buf, 0x80uLL, "_vp<SERIOUS ERROR>: (%d) error setting property %d on %s, attenuating the dl final gain by 20dB", Property, LODWORD(outData.__r_.__value_.__l.__data_), v73);
            std::string::basic_string[abi:ne200100]<0>(&v201, "VoiceProcessor_v2.cpp");
            std::to_string(&v197, 5751);
            v74 = std::string::insert(&v197, 0, ":", 1uLL);
            v75 = *&v74->__r_.__value_.__l.__data_;
            v206.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
            *&v206.__r_.__value_.__l.__data_ = v75;
            v74->__r_.__value_.__l.__size_ = 0;
            v74->__r_.__value_.__r.__words[2] = 0;
            v74->__r_.__value_.__r.__words[0] = 0;
            v76 = std::string::append(&v206, ":", 1uLL);
            v77 = *&v76->__r_.__value_.__l.__data_;
            v207.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
            *&v207.__r_.__value_.__l.__data_ = v77;
            v76->__r_.__value_.__l.__size_ = 0;
            v76->__r_.__value_.__r.__words[2] = 0;
            v76->__r_.__value_.__r.__words[0] = 0;
            std::string::basic_string[abi:ne200100]<0>(inData, "InstantiateAndConfigureEffectAU");
            if ((v196 & 0x80u) == 0)
            {
              v78 = inData;
            }

            else
            {
              v78 = inData[0];
            }

            if ((v196 & 0x80u) == 0)
            {
              v79 = v196;
            }

            else
            {
              v79 = inData[1];
            }

            v80 = std::string::append(&v207, v78, v79);
            v81 = *&v80->__r_.__value_.__l.__data_;
            v198.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
            *&v198.__r_.__value_.__l.__data_ = v81;
            v80->__r_.__value_.__l.__size_ = 0;
            v80->__r_.__value_.__r.__words[2] = 0;
            v80->__r_.__value_.__r.__words[0] = 0;
            v82 = std::string::append(&v198, " ", 1uLL);
            v83 = *&v82->__r_.__value_.__l.__data_;
            v199.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
            *&v199.__r_.__value_.__l.__data_ = v83;
            v82->__r_.__value_.__l.__size_ = 0;
            v82->__r_.__value_.__r.__words[2] = 0;
            v82->__r_.__value_.__r.__words[0] = 0;
            v84 = strlen(buf);
            v85 = std::string::append(&v199, buf, v84);
            v86 = *&v85->__r_.__value_.__l.__data_;
            v200.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
            *&v200.__r_.__value_.__l.__data_ = v86;
            v85->__r_.__value_.__l.__size_ = 0;
            v85->__r_.__value_.__r.__words[2] = 0;
            v85->__r_.__value_.__r.__words[0] = 0;
            if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v87 = &v200;
            }

            else
            {
              v87 = v200.__r_.__value_.__r.__words[0];
            }

            if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v88 = HIBYTE(v200.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v88 = v200.__r_.__value_.__l.__size_;
            }

            std::string::append(&v201, v87, v88);
            if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v200.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v199.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v198.__r_.__value_.__l.__data_);
            }

            if (v196 < 0)
            {
              operator delete(inData[0]);
            }

            if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v207.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v206.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v197.__r_.__value_.__l.__data_);
            }

            std::vector<std::string>::push_back[abi:ne200100](v5 + 15984, &v201);
            if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v201.__r_.__value_.__l.__data_);
            }

            std::to_string(&v198, Property);
            v89 = std::string::append(&v198, " error setting property ", 0x18uLL);
            v90 = *&v89->__r_.__value_.__l.__data_;
            v199.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
            *&v199.__r_.__value_.__l.__data_ = v90;
            v89->__r_.__value_.__l.__size_ = 0;
            v89->__r_.__value_.__r.__words[2] = 0;
            v89->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v207, outData.__r_.__value_.__l.__data_);
            v91 = (v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v207 : v207.__r_.__value_.__r.__words[0];
            v92 = (v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v207.__r_.__value_.__r.__words[2]) : v207.__r_.__value_.__l.__size_;
            v93 = std::string::append(&v199, v91, v92);
            v94 = *&v93->__r_.__value_.__l.__data_;
            v200.__r_.__value_.__r.__words[2] = v93->__r_.__value_.__r.__words[2];
            *&v200.__r_.__value_.__l.__data_ = v94;
            v93->__r_.__value_.__l.__size_ = 0;
            v93->__r_.__value_.__r.__words[2] = 0;
            v93->__r_.__value_.__r.__words[0] = 0;
            v95 = std::string::append(&v200, " on ", 4uLL);
            v96 = *&v95->__r_.__value_.__l.__data_;
            v201.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
            *&v201.__r_.__value_.__l.__data_ = v96;
            v95->__r_.__value_.__l.__size_ = 0;
            v95->__r_.__value_.__r.__words[2] = 0;
            v95->__r_.__value_.__r.__words[0] = 0;
            v97 = v8;
            v98 = v7;
            while (*v98 != 56)
            {
              v98 += 18;
              if (!--v97)
              {
                v99 = 0;
                goto LABEL_196;
              }
            }

            v99 = (v98 + 2);
LABEL_196:
            v100 = strlen(v99);
            v101 = std::string::append(&v201, v99, v100);
            v102 = v101->__r_.__value_.__r.__words[0];
            v206.__r_.__value_.__r.__words[0] = v101->__r_.__value_.__l.__size_;
            *(v206.__r_.__value_.__r.__words + 7) = *(&v101->__r_.__value_.__r.__words[1] + 7);
            v103 = HIBYTE(v101->__r_.__value_.__r.__words[2]);
            v101->__r_.__value_.__l.__size_ = 0;
            v101->__r_.__value_.__r.__words[2] = 0;
            v101->__r_.__value_.__r.__words[0] = 0;
            std::string::basic_string[abi:ne200100]<0>(buf, "vp_spp_error");
            *&v212[4] = v102;
            *&v212[12] = v206.__r_.__value_.__r.__words[0];
            *&v212[19] = *(v206.__r_.__value_.__r.__words + 7);
            v212[27] = v103;
            if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v201.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v200.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v207.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v199.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v198.__r_.__value_.__l.__data_);
            }

            std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v194 + 16032, buf);
            if ((v212[27] & 0x80000000) != 0)
            {
              operator delete(*&v212[4]);
            }

            if ((v212[3] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            v65 = 0;
            v66 = 1;
            *(v194 + 4562) = 1;
          }
        }

        else
        {
          v65 = 0;
          v66 = 1;
        }

        if (outData.__r_.__value_.__r.__words[2])
        {
          free(outData.__r_.__value_.__r.__words[2]);
        }

        if ((v66 & 1) == 0)
        {
          goto LABEL_385;
        }

        v12 = v49;
        v42 = v205.__r_.__value_.__r.__words[0];
        v43 = ++v44;
        v5 = v194;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v205.__r_.__value_.__l.__size_ - v205.__r_.__value_.__r.__words[0]) >> 3) > v44);
    }

    v104 = v12;
    v105 = __p[0];
    v106 = __p[1];
    if (__p[1] != __p[0])
    {
      v107 = 0;
      v108 = 0;
      do
      {
        v109 = &v105[8 * v107];
        Property = AudioUnitSetParameter(v104[a2], *v109, 0, 0, *(v109 + 1), 0);
        if (Property)
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v110 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v111 = (*v110 ? *v110 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
            {
              v112 = *v109;
              v113 = v8;
              v114 = v7;
              while (*v114 != a2)
              {
                v114 += 18;
                if (!--v113)
                {
                  v115 = 0;
                  goto LABEL_231;
                }
              }

              v115 = v114 + 2;
LABEL_231:
              *buf = 136316162;
              *&buf[4] = "VoiceProcessor_v2.cpp";
              v209 = 1024;
              v210 = 5771;
              v211 = 1024;
              *v212 = v112;
              *&v212[4] = 2080;
              *&v212[6] = v115;
              *&v212[14] = 1024;
              *&v212[16] = Property;
              _os_log_impl(&dword_2724B4000, v111, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Error in setting parameter ID %u to AU %s error %d", buf, 0x28u);
            }
          }

          v116 = *(v194 + 1588);
          if (v116 && ((*v193 & 1) != 0 || v193[1] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v117 = v8;
            v118 = v7;
            while (*v118 != a2)
            {
              v118 += 18;
              if (!--v117)
              {
                v119 = 0;
                goto LABEL_242;
              }
            }

            v119 = (v118 + 2);
LABEL_242:
            CALegacyLog::log(v116, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 5771, "InstantiateAndConfigureEffectAU", "Error in setting parameter ID %u to AU %s error %d", *v109, v119, Property);
          }

          if (v192)
          {
            goto LABEL_384;
          }

          v120 = v8;
          v121 = v7;
          while (*v121 != 56)
          {
            v121 += 18;
            if (!--v120)
            {
              v122 = 0;
              goto LABEL_249;
            }
          }

          v122 = (v121 + 2);
LABEL_249:
          snprintf(buf, 0x80uLL, "_vp<SERIOUS ERROR>: (%d) error setting parameter %d on %s, attenuating the dl final gain by 20dB", Property, *(__p[0] + 2 * v107), v122);
          std::string::basic_string[abi:ne200100]<0>(&outData, "VoiceProcessor_v2.cpp");
          std::to_string(&v206, 5777);
          v123 = std::string::insert(&v206, 0, ":", 1uLL);
          v124 = *&v123->__r_.__value_.__l.__data_;
          v207.__r_.__value_.__r.__words[2] = v123->__r_.__value_.__r.__words[2];
          *&v207.__r_.__value_.__l.__data_ = v124;
          v123->__r_.__value_.__l.__size_ = 0;
          v123->__r_.__value_.__r.__words[2] = 0;
          v123->__r_.__value_.__r.__words[0] = 0;
          v125 = std::string::append(&v207, ":", 1uLL);
          v126 = *&v125->__r_.__value_.__l.__data_;
          v198.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
          *&v198.__r_.__value_.__l.__data_ = v126;
          v125->__r_.__value_.__l.__size_ = 0;
          v125->__r_.__value_.__r.__words[2] = 0;
          v125->__r_.__value_.__r.__words[0] = 0;
          std::string::basic_string[abi:ne200100]<0>(&v197, "InstantiateAndConfigureEffectAU");
          if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v127 = &v197;
          }

          else
          {
            v127 = v197.__r_.__value_.__r.__words[0];
          }

          if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v128 = HIBYTE(v197.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v128 = v197.__r_.__value_.__l.__size_;
          }

          v129 = std::string::append(&v198, v127, v128);
          v130 = *&v129->__r_.__value_.__l.__data_;
          v199.__r_.__value_.__r.__words[2] = v129->__r_.__value_.__r.__words[2];
          *&v199.__r_.__value_.__l.__data_ = v130;
          v129->__r_.__value_.__l.__size_ = 0;
          v129->__r_.__value_.__r.__words[2] = 0;
          v129->__r_.__value_.__r.__words[0] = 0;
          v131 = std::string::append(&v199, " ", 1uLL);
          v132 = *&v131->__r_.__value_.__l.__data_;
          v200.__r_.__value_.__r.__words[2] = v131->__r_.__value_.__r.__words[2];
          *&v200.__r_.__value_.__l.__data_ = v132;
          v131->__r_.__value_.__l.__size_ = 0;
          v131->__r_.__value_.__r.__words[2] = 0;
          v131->__r_.__value_.__r.__words[0] = 0;
          v133 = strlen(buf);
          v134 = std::string::append(&v200, buf, v133);
          v135 = *&v134->__r_.__value_.__l.__data_;
          v201.__r_.__value_.__r.__words[2] = v134->__r_.__value_.__r.__words[2];
          *&v201.__r_.__value_.__l.__data_ = v135;
          v134->__r_.__value_.__l.__size_ = 0;
          v134->__r_.__value_.__r.__words[2] = 0;
          v134->__r_.__value_.__r.__words[0] = 0;
          if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v136 = &v201;
          }

          else
          {
            v136 = v201.__r_.__value_.__r.__words[0];
          }

          if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v137 = HIBYTE(v201.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v137 = v201.__r_.__value_.__l.__size_;
          }

          std::string::append(&outData, v136, v137);
          if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v201.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v200.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v199.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v197.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v198.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v207.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v206.__r_.__value_.__l.__data_);
          }

          std::vector<std::string>::push_back[abi:ne200100](v194 + 15984, &outData);
          if (SHIBYTE(outData.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(outData.__r_.__value_.__l.__data_);
          }

          std::to_string(&v199, Property);
          v138 = std::string::append(&v199, " error setting parameter ", 0x19uLL);
          v139 = *&v138->__r_.__value_.__l.__data_;
          v200.__r_.__value_.__r.__words[2] = v138->__r_.__value_.__r.__words[2];
          *&v200.__r_.__value_.__l.__data_ = v139;
          v138->__r_.__value_.__l.__size_ = 0;
          v138->__r_.__value_.__r.__words[2] = 0;
          v138->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v198, *(__p[0] + 2 * v107));
          if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v140 = &v198;
          }

          else
          {
            v140 = v198.__r_.__value_.__r.__words[0];
          }

          if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v141 = HIBYTE(v198.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v141 = v198.__r_.__value_.__l.__size_;
          }

          v142 = std::string::append(&v200, v140, v141);
          v143 = *&v142->__r_.__value_.__l.__data_;
          v201.__r_.__value_.__r.__words[2] = v142->__r_.__value_.__r.__words[2];
          *&v201.__r_.__value_.__l.__data_ = v143;
          v142->__r_.__value_.__l.__size_ = 0;
          v142->__r_.__value_.__r.__words[2] = 0;
          v142->__r_.__value_.__r.__words[0] = 0;
          v144 = std::string::append(&v201, " on ", 4uLL);
          v145 = *&v144->__r_.__value_.__l.__data_;
          outData.__r_.__value_.__r.__words[2] = v144->__r_.__value_.__r.__words[2];
          *&outData.__r_.__value_.__l.__data_ = v145;
          v144->__r_.__value_.__l.__size_ = 0;
          v144->__r_.__value_.__r.__words[2] = 0;
          v144->__r_.__value_.__r.__words[0] = 0;
          v146 = v8;
          v147 = v7;
          while (*v147 != 56)
          {
            v147 += 18;
            if (!--v146)
            {
              v148 = 0;
              goto LABEL_288;
            }
          }

          v148 = (v147 + 2);
LABEL_288:
          v149 = strlen(v148);
          v150 = std::string::append(&outData, v148, v149);
          v151 = v150->__r_.__value_.__r.__words[0];
          v207.__r_.__value_.__r.__words[0] = v150->__r_.__value_.__l.__size_;
          *(v207.__r_.__value_.__r.__words + 7) = *(&v150->__r_.__value_.__r.__words[1] + 7);
          v152 = HIBYTE(v150->__r_.__value_.__r.__words[2]);
          v150->__r_.__value_.__l.__size_ = 0;
          v150->__r_.__value_.__r.__words[2] = 0;
          v150->__r_.__value_.__r.__words[0] = 0;
          std::string::basic_string[abi:ne200100]<0>(buf, "vp_spp_error");
          *&v212[4] = v151;
          *&v212[12] = v207.__r_.__value_.__r.__words[0];
          *&v212[19] = *(v207.__r_.__value_.__r.__words + 7);
          v212[27] = v152;
          if (SHIBYTE(outData.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(outData.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v201.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v198.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v200.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v199.__r_.__value_.__l.__data_);
          }

          std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v194 + 16032, buf);
          if ((v212[27] & 0x80000000) != 0)
          {
            operator delete(*&v212[4]);
          }

          if ((v212[3] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          *(v194 + 4562) = 1;
          v105 = __p[0];
          v106 = __p[1];
        }

        v107 = ++v108;
      }

      while (v108 < ((v106 - v105) >> 3));
    }

    v153 = v8;
    v154 = v7;
    while (*v154 != a2)
    {
      v154 += 18;
      if (!--v153)
      {
        v155 = 0;
        goto LABEL_310;
      }
    }

    v155 = (v154 + 2);
LABEL_310:
    if (!v155)
    {
      v155 = "?";
    }

    inData[0] = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s", v155);
    if (inData[0])
    {
      AudioUnitSetProperty(v104[a2], 0x36u, 0, 0, inData, 8u);
      CFRelease(inData[0]);
      inData[0] = 0;
    }

    if (v190)
    {
      v156 = 0;
      while (dword_2727568C0[v156] != a2)
      {
        if (++v156 == 4)
        {
          goto LABEL_322;
        }
      }

      v157 = v194 + 24 * v156;
      *buf = CFNumberCreate(0, kCFNumberSInt32Type, v157 + 8784);
      if (*buf)
      {
        Property = AudioUnitSetProperty(v104[a2], 0x1199u, 0, 0, buf, 8u);
        CFRelease(*buf);
      }

      Property |= AudioUnitSetProperty(v104[a2], 0x1198u, 0, 0, v157 + 8768, 8u);
LABEL_322:
      if (Property)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v158 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
        if (v158)
        {
          v159 = v158;
          if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "VoiceProcessor_v2.cpp";
            v209 = 1024;
            v210 = 5826;
            v211 = 1024;
            *v212 = Property;
            _os_log_impl(&dword_2724B4000, v159, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> instantiateandconfigureeffectau: error (%d) loading FIR coefficients!!! Setting FIR to passthrough", buf, 0x18u);
          }
        }

        v160 = *(v194 + 1588);
        if (v160 && ((*v193 & 1) != 0 || v193[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v160, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 5826, "InstantiateAndConfigureEffectAU", "instantiateandconfigureeffectau: error (%d) loading FIR coefficients!!! Setting FIR to passthrough", Property);
        }
      }
    }

    v161 = v104[a2];
    LODWORD(outData.__r_.__value_.__l.__data_) = 0;
    LODWORD(v201.__r_.__value_.__l.__data_) = 4;
    if (AudioUnitGetProperty(v161, 0xBu, 1u, 0, &outData, &v201))
    {
      v162 = 1;
    }

    else
    {
      v162 = LODWORD(outData.__r_.__value_.__l.__data_) == 0;
    }

    if (!v162)
    {
      v163 = 0;
      do
      {
        LODWORD(v200.__r_.__value_.__l.__data_) = 0;
        AudioUnitSetProperty(v161, 0x33u, 1u, 0, &v200, 4u);
        ++v163;
      }

      while (v163 < LODWORD(outData.__r_.__value_.__l.__data_));
    }

    LODWORD(outData.__r_.__value_.__l.__data_) = 0;
    Property = AudioUnitGetProperty(v161, 0xBu, 2u, 0, &outData, &v201);
    if (!Property && LODWORD(outData.__r_.__value_.__l.__data_))
    {
      v164 = 0;
      do
      {
        LODWORD(v200.__r_.__value_.__l.__data_) = 0;
        AudioUnitSetProperty(v161, 0x33u, 2u, 0, &v200, 4u);
        ++v164;
      }

      while (v164 < LODWORD(outData.__r_.__value_.__l.__data_));
    }

    if (Property)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v165 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v166 = (*v165 ? *v165 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "VoiceProcessor_v2.cpp";
          v209 = 1024;
          v210 = 5834;
          v211 = 1024;
          *v212 = Property;
          _os_log_impl(&dword_2724B4000, v166, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Unable to set not to allocate internal AU buffers with error (%d)", buf, 0x18u);
        }
      }

      v167 = *(v194 + 1588);
      if (v167 && ((*v193 & 1) != 0 || v193[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v167, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 5834, "InstantiateAndConfigureEffectAU", "Unable to set not to allocate internal AU buffers with error (%d)", Property);
      }
    }

    else
    {
      Property = AudioUnitInitialize(v104[a2]);
      if (!Property)
      {
        v65 = 0;
LABEL_385:
        v11 = v189;
        v3 = v190;
        goto LABEL_386;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v168 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
      if (v168)
      {
        v169 = v168;
        if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
        {
          v170 = v8;
          v171 = v7;
          while (*v171 != a2)
          {
            v171 += 18;
            if (!--v170)
            {
              v172 = 0;
              goto LABEL_371;
            }
          }

          v172 = v171 + 2;
LABEL_371:
          *buf = 136315906;
          *&buf[4] = "VoiceProcessor_v2.cpp";
          v209 = 1024;
          v210 = 5842;
          v211 = 2080;
          *v212 = v172;
          *&v212[8] = 1024;
          *&v212[10] = Property;
          _os_log_impl(&dword_2724B4000, v169, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Error in initializing AU %s error %d", buf, 0x22u);
        }
      }

      v173 = *(v194 + 1588);
      if (v173 && ((*v193 & 1) != 0 || v193[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v174 = v8;
        v175 = v7;
        while (*v175 != a2)
        {
          v175 += 18;
          if (!--v174)
          {
            v176 = 0;
            goto LABEL_382;
          }
        }

        v176 = (v175 + 2);
LABEL_382:
        CALegacyLog::log(v173, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 5842, "InstantiateAndConfigureEffectAU", "Error in initializing AU %s error %d", v176, Property);
      }

      if ((v192 & 1) == 0)
      {
        v177 = v8;
        v178 = v7;
        v11 = v189;
        v3 = v190;
        while (*v178 != 56)
        {
          v178 += 18;
          if (!--v177)
          {
            v179 = 0;
            goto LABEL_396;
          }
        }

        v179 = (v178 + 2);
LABEL_396:
        snprintf(buf, 0x80uLL, "_vp<SERIOUS ERROR>: (%d) error initializing %s, attenuating the dl final gain by 20dB", Property, v179);
        std::string::basic_string[abi:ne200100]<0>(&outData, "VoiceProcessor_v2.cpp");
        std::to_string(&v206, 5847);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v207, ":", &v206);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v198, &v207, ":");
        std::string::basic_string[abi:ne200100]<0>(&v197, "InstantiateAndConfigureEffectAU");
        if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v180 = &v197;
        }

        else
        {
          v180 = v197.__r_.__value_.__r.__words[0];
        }

        if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v181 = HIBYTE(v197.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v181 = v197.__r_.__value_.__l.__size_;
        }

        v182 = std::string::append(&v198, v180, v181);
        v183 = *&v182->__r_.__value_.__l.__data_;
        v199.__r_.__value_.__r.__words[2] = v182->__r_.__value_.__r.__words[2];
        *&v199.__r_.__value_.__l.__data_ = v183;
        v182->__r_.__value_.__l.__size_ = 0;
        v182->__r_.__value_.__r.__words[2] = 0;
        v182->__r_.__value_.__r.__words[0] = 0;
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v200, &v199, " ");
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v201, &v200, buf);
        if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v184 = &v201;
        }

        else
        {
          v184 = v201.__r_.__value_.__r.__words[0];
        }

        if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v185 = HIBYTE(v201.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v185 = v201.__r_.__value_.__l.__size_;
        }

        std::string::append(&outData, v184, v185);
        if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v201.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v200.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v199.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v197.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v198.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v207.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v206.__r_.__value_.__l.__data_);
        }

        std::vector<std::string>::push_back[abi:ne200100](v194 + 15984, &outData);
        if (SHIBYTE(outData.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(outData.__r_.__value_.__l.__data_);
        }

        std::to_string(&v200, Property);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v201, &v200, " error initializing ");
        v186 = v8;
        v187 = v7;
        while (*v187 != 56)
        {
          v187 += 18;
          if (!--v186)
          {
            v188 = 0;
            goto LABEL_429;
          }
        }

        v188 = (v187 + 2);
LABEL_429:
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&outData, &v201, v188);
        std::string::basic_string[abi:ne200100]<0>(buf, "vp_spp_error");
        *&v212[4] = outData;
        if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v201.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v200.__r_.__value_.__l.__data_);
        }

        std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v194 + 16032, buf);
        std::pair<std::string,std::string>::~pair(buf);
        v65 = 0;
        *(v194 + 4562) = 1;
LABEL_386:
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        *buf = &v205;
        std::vector<AUPropertyItem>::__destroy_vector::operator()[abi:ne200100](buf);
        if (!v65 && !Property)
        {
          goto LABEL_81;
        }

        goto LABEL_24;
      }
    }

LABEL_384:
    v65 = 21;
    goto LABEL_385;
  }

LABEL_81:
  v39 = *MEMORY[0x277D85DE8];
}

void sub_2724E7BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, void *a52)
{
  std::pair<std::string,std::string>::~pair(v52 - 240);
  if (__p)
  {
    operator delete(__p);
  }

  *(v52 - 240) = &a52;
  std::vector<AUPropertyItem>::__destroy_vector::operator()[abi:ne200100]((v52 - 240));
  _Unwind_Resume(a1);
}

void std::vector<AUPropertyItem>::__assign_with_size[abi:ne200100]<AUPropertyItem*,AUPropertyItem*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      std::vector<AUPropertyItem>::__base_destruct_at_end[abi:ne200100](a1, *a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0xAAAAAAAAAAAAAAALL)
      {
        std::allocator<AUPropertyItem>::allocate_at_least[abi:ne200100](v12);
      }
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v13 = a1[1];
  v14 = v13 - v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 3) >= a4)
  {
    while (a2 != a3)
    {
      if (a2 != v9)
      {
        v21 = *(a2 + 8);
        v20 = *(a2 + 12);
        v22 = *(a2 + 16);
        *v9 = *a2;
        *(v9 + 2) = v21;
        AUPropertyItem::SetData(v9, v20, v22);
      }

      a2 += 24;
      v9 = (v9 + 24);
    }

    std::vector<AUPropertyItem>::__base_destruct_at_end[abi:ne200100](a1, v9);
  }

  else
  {
    if (v13 != v9)
    {
      v15 = 0;
      do
      {
        if (a2 != v9)
        {
          v16 = (v9 + v15);
          v18 = *(a2 + v15 + 8);
          v17 = *(a2 + v15 + 12);
          v19 = *(a2 + v15 + 16);
          *v16 = *(a2 + v15);
          v16[2] = v18;
          AUPropertyItem::SetData((v9 + v15), v17, v19);
        }

        v15 += 24;
      }

      while (v14 != v15);
      v13 = a1[1];
      a2 += v14;
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AUPropertyItem>,AUPropertyItem*,AUPropertyItem*,AUPropertyItem*>(a1, a2, a3, v13);
  }
}

char *std::vector<std::pair<unsigned int,float>>::__assign_with_size[abi:ne200100]<std::pair<unsigned int,float>*,std::pair<unsigned int,float>*>(char **a1, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<unsigned int,float>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = v5[1];
      v5 += 2;
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    if (v11 != result)
    {
      v12 = (a2 + v11 - result);
      do
      {
        *result = *v5;
        *(result + 1) = v5[1];
        v5 += 2;
        result += 8;
      }

      while (v5 != v12);
      v5 = v12;
    }

    while (v5 != a3)
    {
      *v11 = *v5;
      *(v11 + 1) = v5[1];
      v5 += 2;
      v11 += 8;
    }

    a1[1] = v11;
  }

  return result;
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v19.__end_cap_.__value_ = a1;
    if (v9)
    {
      std::allocator<std::string>::allocate_at_least[abi:ne200100](v9);
    }

    begin = (24 * v6);
    v19.__first_ = 0;
    v19.__begin_ = begin;
    value = 0;
    v19.__end_ = begin;
    v19.__end_cap_.__value_ = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
      begin = v19.__begin_;
      end = v19.__end_;
      value = v19.__end_cap_.__value_;
    }

    else
    {
      v13 = *a2;
      begin->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&begin->__r_.__value_.__l.__data_ = v13;
      end = begin;
    }

    v10 = end + 1;
    v15 = *(a1 + 8) - *a1;
    v16 = begin - v15;
    memcpy(begin - v15, *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v10;
    v18 = *(a1 + 16);
    *(a1 + 16) = value;
    v19.__end_ = v17;
    v19.__end_cap_.__value_ = v18;
    v19.__first_ = v17;
    v19.__begin_ = v17;
    std::__split_buffer<std::string>::~__split_buffer(&v19);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v5;
    }

    v10 = (v4 + 24);
    *(a1 + 8) = v4 + 24;
  }

  *(a1 + 8) = v10;
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (v6 + 1 > 0x555555555555555)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v8;
    }

    v14.__end_cap_.__value_ = a1;
    if (v9)
    {
      std::allocator<std::pair<std::string,std::string>>::allocate_at_least[abi:ne200100](v9);
    }

    v14.__first_ = 0;
    v14.__begin_ = (48 * v6);
    v14.__end_ = (48 * v6);
    v14.__end_cap_.__value_ = 0;
    std::pair<std::string,std::string>::pair[abi:ne200100]((48 * v6), a2);
    v5 = 48 * v6 + 48;
    v10 = *(a1 + 8) - *a1;
    v11 = v14.__begin_ - v10;
    memcpy(v14.__begin_ - v10, *a1, v10);
    v12 = *a1;
    *a1 = v11;
    *(a1 + 8) = v5;
    v13 = *(a1 + 16);
    *(a1 + 16) = v14.__end_cap_.__value_;
    v14.__end_ = v12;
    v14.__end_cap_.__value_ = v13;
    v14.__first_ = v12;
    v14.__begin_ = v12;
    std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v14);
  }

  else
  {
    std::pair<std::string,std::string>::pair[abi:ne200100](*(a1 + 8), a2);
    v5 = v4 + 48;
    *(a1 + 8) = v5;
  }

  *(a1 + 8) = v5;
}

{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    v19.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::allocator<std::pair<std::string,std::string>>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = 48 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v14 = *(a2 + 24);
    *(v12 + 40) = *(a2 + 5);
    *(v12 + 24) = v14;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = 48 * v8 + 48;
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v7;
    v18 = *(a1 + 16);
    *(a1 + 16) = 0;
    v19.__end_ = v17;
    v19.__end_cap_.__value_ = v18;
    v19.__first_ = v17;
    v19.__begin_ = v17;
    std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v19);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = v3 + 48;
  }

  *(a1 + 8) = v7;
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, std::string *a2, char *__s)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_2724E8768(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<std::pair<std::string,std::string>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  begin = this->__begin_;
  for (i = this->__end_; i != begin; i = this->__end_)
  {
    this->__end_ = i - 1;
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(&i[-1]);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::allocator<std::string>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::vector<std::pair<unsigned int,float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<std::pair<unsigned int,float>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
}

AUPropertyItem *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AUPropertyItem>,AUPropertyItem*,AUPropertyItem*,AUPropertyItem*>(uint64_t a1, uint64_t a2, uint64_t a3, AUPropertyItem *this)
{
  v4 = this;
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *(v4 + 3) = 0;
      *(v4 + 2) = 0;
      if (v6 != v4)
      {
        v8 = *(v6 + 8);
        v7 = *(v6 + 12);
        v9 = *(v6 + 16);
        *v4 = *v6;
        *(v4 + 2) = v8;
        AUPropertyItem::SetData(v4, v7, v9);
        v4 = v14;
      }

      v6 += 24;
      v4 = (v4 + 24);
      v14 = v4;
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AUPropertyItem>,AUPropertyItem*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void VoiceProcessorV2::InstantiateAndConfigureAuxAU(VoiceProcessorV2 *this, int a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v50 = 0;
  v51 = 0;
  __p = 0;
  v47 = 0;
  v48 = 0;
  if (a2)
  {
    v4 = (this + 12544);
    v5 = VoiceProcessorV2::InstantiateAU(this, 0x61756178u, 0x61787675u, this + 1568, 1);
    if (&v49 != (this + 6992))
    {
      std::vector<AUPropertyItem>::__assign_with_size[abi:ne200100]<AUPropertyItem*,AUPropertyItem*>(&v49, *(this + 874), *(this + 875), 0xAAAAAAAAAAAAAAABLL * ((*(this + 875) - *(this + 874)) >> 3));
    }

    std::vector<std::pair<unsigned int,float>>::__assign_with_size[abi:ne200100]<std::pair<unsigned int,float>*,std::pair<unsigned int,float>*>(&__p, *(this + 877), *(this + 878), (*(this + 878) - *(this + 877)) >> 3);
    if (v5)
    {
      goto LABEL_57;
    }

    v6 = (this + 12560);
    ioDataSize[0] = 16;
    if (AudioUnitGetProperty(*v4, 0xF9Eu, 0, 0, this + 12560, ioDataSize))
    {
      *v6 = 0;
      *(this + 1571) = 0;
    }

    v7 = 0;
    do
    {
      inData[0] = 104;
      if (!AudioUnitGetProperty(*v4, 4u, 0, v7, outData, inData))
      {
        v8.n128_f32[0] = v57;
        VoiceProcessorV2::VPAuxSetParameterAction(this, *(this + 1568), v7, v8);
      }

      v7 = (v7 + 1);
    }

    while (v7 != 19);
    (*(this + 1571))(*(this + 1570), 13, 0, 0, 0, *(this + 125));
    (*(this + 1571))(*(this + 1570), 14, 0, 0, 0, *(this + 126));
    (*(this + 1571))(*(this + 1570), 15, 0, 0, 0, *(this + 129));
    (*(this + 1571))(*(this + 1570), 16, 0, 0, 0, *(this + 133));
    AudioUnitSetProperty(*(this + 1568), 0x36u, 0, 0, this + 7048, 8u);
  }

  else
  {
    v4 = (this + 12552);
    v9 = VoiceProcessorV2::InstantiateAU(this, 0x61756178u, 0x61787664u, this + 1569, 1);
    if (&v49 != (this + 10928))
    {
      std::vector<AUPropertyItem>::__assign_with_size[abi:ne200100]<AUPropertyItem*,AUPropertyItem*>(&v49, *(this + 1366), *(this + 1367), 0xAAAAAAAAAAAAAAABLL * ((*(this + 1367) - *(this + 1366)) >> 3));
    }

    std::vector<std::pair<unsigned int,float>>::__assign_with_size[abi:ne200100]<std::pair<unsigned int,float>*,std::pair<unsigned int,float>*>(&__p, *(this + 1369), *(this + 1370), (*(this + 1370) - *(this + 1369)) >> 3);
    if (v9)
    {
      goto LABEL_57;
    }

    v6 = (this + 12576);
    ioDataSize[0] = 16;
    if (AudioUnitGetProperty(*v4, 0xF9Eu, 0, 0, this + 12576, ioDataSize))
    {
      *v6 = 0;
      *(this + 1573) = 0;
    }

    v10 = 0;
    do
    {
      inData[0] = 104;
      if (!AudioUnitGetProperty(*v4, 4u, 0, v10, outData, inData))
      {
        v11.n128_f32[0] = v57;
        VoiceProcessorV2::VPAuxSetParameterAction(this, *(this + 1569), v10, v11);
      }

      v10 = (v10 + 1);
    }

    while (v10 != 16);
    (*(this + 1573))(*(this + 1572), 1, 0, 0, 0, *(this + 123));
    AudioUnitSetProperty(*(this + 1569), 0x36u, 0, 0, this + 10984, 8u);
  }

  v12 = *v4;
  if (!*v4)
  {
    goto LABEL_52;
  }

  *inData = this;
  v45 = VoiceProcessorV2::VPAuxSetParameterAction;
  AudioUnitSetProperty(v12, 0xF9Fu, 0, 0, inData, 0x10u);
  v13 = v49;
  if (v50 == v49)
  {
LABEL_47:
    v27 = __p;
    if (v47 != __p)
    {
      v28 = 0;
      v29 = (v47 - __p) >> 3;
      v30 = 1;
      do
      {
        v31 = v6[1];
        if (v31)
        {
          v32 = &v27[8 * v28];
          v33 = v31(*v6, *v32, 0, 0, 0, v32[1]);
          v33.n128_f32[0] = v32[1];
          VoiceProcessorV2::VPAuxSetParameterAction(this, *v4, *v32, v33);
        }

        v28 = v30;
        v26 = v29 > v30++;
      }

      while (v26);
    }

LABEL_52:
    v34 = 0;
    v35 = vcvtad_u64_f64(*(this + 79));
    v36 = (this + 4404);
    while (1)
    {
      v37 = *v36;
      v36 += 2;
      if (v37 == v35)
      {
        break;
      }

      if (++v34 == 9)
      {
        goto LABEL_57;
      }
    }

    *(this + 1119) = *(this + 2 * v34 + 1102);
    goto LABEL_57;
  }

  v14 = 0;
  v15 = "downlink";
  if (a2)
  {
    v15 = "uplink";
  }

  v39 = v15;
  v16 = 1;
  while (1)
  {
    v42 = 0;
    v43 = 0;
    v17 = v13 + 24 * v14;
    v19 = *(v17 + 8);
    v18 = *(v17 + 12);
    v20 = *(v17 + 16);
    *ioDataSize = *v17;
    v41 = v19;
    AUPropertyItem::SetData(ioDataSize, v18, v20);
    v21 = v43;
    v22 = AudioUnitSetProperty(*v4, ioDataSize[0], ioDataSize[1], v41, v43, v42);
    if (v22)
    {
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
          *outData = 136315650;
          *&outData[4] = "VoiceProcessor_v2.cpp";
          v53 = 1024;
          v54 = 5987;
          v55 = 2080;
          v56 = v39;
          _os_log_impl(&dword_2724B4000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> InstantiateAndConfigureAuxAU: %s aux au failed to set property", outData, 0x1Cu);
        }
      }

      v25 = *(this + 1588);
      if (v25 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v25, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 5987, "InstantiateAndConfigureAuxAU", "InstantiateAndConfigureAuxAU: %s aux au failed to set property", v39);
      }
    }

    if (v21)
    {
      free(v21);
    }

    if (v22)
    {
      break;
    }

    v14 = v16;
    v13 = v49;
    v26 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v49) >> 3) > v16++;
    if (!v26)
    {
      goto LABEL_47;
    }
  }

LABEL_57:
  if (__p)
  {
    operator delete(__p);
  }

  *outData = &v49;
  std::vector<AUPropertyItem>::__destroy_vector::operator()[abi:ne200100](outData);
  v38 = *MEMORY[0x277D85DE8];
}

void sub_2724E9068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char *a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  a25 = &a22;
  std::vector<AUPropertyItem>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

uint64_t VoiceProcessorV2::VPAuxSetParameterAction(VoiceProcessorV2 *this, void *a2, OpaqueAudioComponentInstance *a3, __n128 a4)
{
  if (*(this + 1568) == a2)
  {
    switch(a3)
    {
      case 0:
        *(this + 1098) = a4.n128_u32[0];
        break;
      case 1:
        *(this + 1099) = a4.n128_u32[0];
        if ((*(this + 4696) & 2) != 0 && (*(this + 4712) & 2) != 0)
        {
          v6 = *(this + 414);
          if (v6)
          {
            AudioUnitSetParameter(v6, 0x1Bu, 0, 0, a4.n128_f32[0], 0);
            if ((*(this + 4696) & 2) != 0 && (*(this + 4712) & 2) != 0)
            {
              v7 = *(this + 414);
              if (v7)
              {
                outValue = 0.0;
                AudioUnitGetParameter(v7, 0x1Bu, 0, 0, &outValue);
                v8 = *(this + 586);
                if ((v8 & 0x8000000000) != 0 && (*(this + 4708) & 0x80) != 0)
                {
                  v9 = *(this + 388);
                  if (v9)
                  {
                    AudioUnitSetParameter(v9, 5u, 0, 0, outValue, 0);
                    v8 = *(this + 586);
                  }
                }

                if (v8 & 0x10000000000) != 0 && (*(this + 4709))
                {
                  v10 = *(this + 389);
                  if (v10)
                  {
                    AudioUnitSetParameter(v10, 5u, 0, 0, outValue, 0);
                    v8 = *(this + 586);
                  }
                }

                if ((v8 & 0x20000000000) != 0 && (*(this + 4709) & 2) != 0)
                {
                  v11 = *(this + 390);
                  if (v11)
                  {
                    AudioUnitSetParameter(v11, 5u, 0, 0, outValue, 0);
                    v8 = *(this + 586);
                  }
                }

                if ((v8 & 0x40000000000) != 0 && (*(this + 4709) & 4) != 0)
                {
                  v12 = *(this + 391);
                  if (v12)
                  {
                    AudioUnitSetParameter(v12, 5u, 0, 0, outValue, 0);
                    v8 = *(this + 586);
                  }
                }

                if ((v8 & 0x80000000000) != 0 && (*(this + 4709) & 8) != 0)
                {
                  v13 = *(this + 392);
                  if (v13)
                  {
                    AudioUnitSetParameter(v13, 5u, 0, 0, outValue, 0);
                    v8 = *(this + 586);
                  }
                }

                if ((v8 & 0x100000000000) != 0 && (*(this + 4709) & 0x10) != 0)
                {
                  v14 = *(this + 393);
                  if (v14)
                  {
                    AudioUnitSetParameter(v14, 5u, 0, 0, outValue, 0);
                    v8 = *(this + 586);
                  }
                }

                if ((v8 & 0x200000000000) != 0 && (*(this + 4709) & 0x20) != 0)
                {
                  v15 = *(this + 394);
                  if (v15)
                  {
                    AudioUnitSetParameter(v15, 5u, 0, 0, outValue, 0);
                    v8 = *(this + 586);
                  }
                }

                if ((v8 & 0x20000000000000) != 0 && (*(this + 4710) & 0x20) != 0)
                {
                  v16 = *(this + 402);
                  if (v16)
                  {
                    AudioUnitSetParameter(v16, 4u, 0, 0, outValue, 0);
                    v8 = *(this + 586);
                  }
                }

                if ((v8 & 0x40000000000000) != 0 && (*(this + 4710) & 0x40) != 0)
                {
                  v17 = *(this + 403);
                  if (v17)
                  {
                    AudioUnitSetParameter(v17, 4u, 0, 0, outValue, 0);
                    v8 = *(this + 586);
                  }
                }

                if ((v8 & 0x80000000000000) != 0 && (*(this + 4710) & 0x80) != 0)
                {
                  v18 = *(this + 404);
                  if (v18)
                  {
                    AudioUnitSetParameter(v18, 0xFu, 0, 0, outValue, 0);
                    v8 = *(this + 586);
                  }
                }

                if ((v8 & 0x1000000000000000) != 0 && (*(this + 4711) & 0x10) != 0)
                {
                  v19 = *(this + 409);
                  if (v19)
                  {
                    AudioUnitSetParameter(v19, 0x12u, 0, 0, outValue, 0);
                  }
                }
              }
            }
          }
        }

        break;
      case 2:
        *(this + 1100) = a4.n128_u32[0];
        break;
      case 3:
        *(this + 1102) = a4.n128_u32[0];
        break;
      case 4:
        *(this + 1104) = a4.n128_u32[0];
        break;
      case 5:
        *(this + 1106) = a4.n128_u32[0];
        break;
      case 6:
        *(this + 1108) = a4.n128_u32[0];
        break;
      case 7:
        *(this + 1110) = a4.n128_u32[0];
        break;
      case 8:
        *(this + 1112) = a4.n128_u32[0];
        break;
      case 9:
        *(this + 1114) = a4.n128_u32[0];
        break;
      case 10:
        *(this + 1116) = a4.n128_u32[0];
        break;
      case 11:
        *(this + 1118) = a4.n128_u32[0];
        break;
      case 17:
        *(this + 352) = a4.n128_u32[0];
        break;
      default:
        return 0;
    }
  }

  else if (*(this + 1569) <= a2)
  {
    switch(a3)
    {
      case 0:
        if (*(this + 4562))
        {
          a4.n128_f32[0] = a4.n128_f32[0] + -20.0;
        }

        *(this + 1137) = a4.n128_u32[0];
        AudioIssueDetectorClientSetRouteSpecificDownlinkGainAdjustment(a4);
        break;
      case 1:
        return 0;
      case 2:
        *(this + 1122) = a4.n128_u32[0];
        break;
      case 3:
        *(this + 1123) = a4.n128_u32[0];
        break;
      case 4:
        *(this + 1131) = a4.n128_u32[0];
        break;
      case 5:
        *(this + 1132) = a4.n128_u32[0];
        break;
      case 6:
        *(this + 1133) = a4.n128_u32[0];
        break;
      case 7:
        *(this + 1134) = a4.n128_u32[0];
        break;
      case 8:
        if (*(this + 4562))
        {
          a4.n128_f32[0] = a4.n128_f32[0] + -20.0;
        }

        *(this + 1138) = a4.n128_u32[0];
        break;
      case 9:
        *(this + 1124) = a4.n128_u32[0];
        break;
      case 10:
        *(this + 1125) = a4.n128_u32[0];
        break;
      case 11:
        *(this + 1126) = a4.n128_u32[0];
        break;
      case 12:
        *(this + 1127) = a4.n128_u32[0];
        break;
      case 13:
        *(this + 1128) = a4.n128_u32[0];
        break;
      case 14:
        *(this + 1129) = a4.n128_u32[0];
        break;
      case 15:
        *(this + 1130) = a4.n128_u32[0];
        *(this + 568) = 0;
        break;
      default:
        JUMPOUT(0);
    }
  }

  return 0;
}

void AudioIssueDetectorClientSetRouteSpecificDownlinkGainAdjustment(__n128 a1)
{
  v1 = a1.n128_u32[0];
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_97);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    v2 = AudioIssueDetectorLibraryLoader(void)::libSym;
    a1.n128_u32[0] = v1;

    v2(a1);
  }
}

float VoiceProcessorV2::DetermineNoiseBasedVolume(VoiceProcessorV2 *this)
{
  outValue = 0.0;
  v2 = *(this + 586);
  if ((v2 & 0x20000000000000) != 0 && (*(this + 4710) & 0x20) != 0 && (v3 = *(this + 402)) != 0 || (v2 & 0x40000000000000) != 0 && (*(this + 4710) & 0x40) != 0 && (v3 = *(this + 403)) != 0)
  {
    v4 = 2;
LABEL_22:
    AudioUnitGetParameter(v3, v4, 0, 0, &outValue);
    goto LABEL_23;
  }

  if ((v2 & 0x80000000000000) != 0 && (*(this + 4710) & 0x80) != 0)
  {
    v3 = *(this + 404);
    if (v3)
    {
      v4 = 9;
      goto LABEL_22;
    }
  }

  if ((v2 & 0x8000000000) != 0 && (*(this + 4708) & 0x80) != 0 && (v3 = *(this + 388)) != 0 || (v2 & 0x20000000000) != 0 && (*(this + 4709) & 2) != 0 && (v3 = *(this + 390)) != 0 || (v2 & 0x80000000000) != 0 && (*(this + 4709) & 8) != 0 && (v3 = *(this + 392)) != 0)
  {
    v4 = 35;
    goto LABEL_22;
  }

LABEL_23:
  v5 = vcvts_n_f32_s32(vcvts_n_s32_f32(outValue, 2uLL), 2uLL);
  v6 = *(this + 294);
  if (v6 == *(this + 295))
  {
    v7 = 70.0;
  }

  else
  {
    v7 = 64.0;
    if (*v6 != 1885892727)
    {
      v7 = 70.0;
    }
  }

  result = *(this + 3152);
  if (v5 >= v7)
  {
    v5 = v7;
  }

  v9 = *(this + 1131);
  if (v5 <= v9)
  {
    result = result * *(this + 1134);
  }

  else
  {
    v10 = (v5 - v9) / (v7 - v9);
    if (v10 > 1.0)
    {
      v10 = 1.0;
    }

    if (v10 < 0.0)
    {
      v10 = 0.0;
    }

    v11 = *(this + 1132);
    if (result >= v11)
    {
      result = (v10 * *(this + 1133)) + (result * *(this + 1134));
    }

    else if (v11 > 0.0)
    {
      result = ((1.0 - ((v11 - result) / v11)) * (v10 * *(this + 1133))) + (result * *(this + 1134));
    }
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t VoiceProcessorV2::ShouldUseOptimizedBlockSizeForFacePlant(VoiceProcessorV2 *this)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(this + 60) == 1)
  {
    v2 = *(this + 14);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 <= 0;
  v4 = v2 - 6001;
  v6 = !v3 && v4 < 0xFFFFF830;
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v7 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
  {
    v8 = (*v7 ? *v7 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = "false";
      v15 = "VoiceProcessor_v2.cpp";
      *buf = 136315650;
      if (v6)
      {
        v9 = "true";
      }

      v16 = 1024;
      v17 = 6338;
      v18 = 2080;
      v19 = v9;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> use optimized block size for face plant =  %s", buf, 0x1Cu);
    }
  }

  v10 = *(this + 1588);
  if (v10 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v11 = "false";
    if (v6)
    {
      v11 = "true";
    }

    CALegacyLog::log(v10, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 6338, "ShouldUseOptimizedBlockSizeForFacePlant", "use optimized block size for face plant =  %s", v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

void VoiceProcessorV2::ReportMetrics(VoiceProcessorV2 *this)
{
  v47 = *MEMORY[0x277D85DE8];
  v43[0] = 0;
  v43[1] = 0;
  v42 = v43;
  std::to_string(&v41, *(this + 20));
  std::string::basic_string[abi:ne200100]<0>(__p, "vp_config_operation_mode");
  v44 = __p;
  v2 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, __p);
  v3 = v2;
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  *(v3 + 56) = v41;
  *(&v41.__r_.__value_.__s + 23) = 0;
  v41.__r_.__value_.__s.__data_[0] = 0;
  if (v46 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  v4 = *(this + 297);
  if (v4 != *(this + 298))
  {
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(__p, *v4);
    std::string::basic_string[abi:ne200100]<0>(&v41, "vp_config_input_port");
    v44 = &v41;
    v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, &v41);
    std::string::__assign_external((v5 + 56), __p);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  v6 = *(this + 294);
  if (v6 != *(this + 295))
  {
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(__p, *v6);
    std::string::basic_string[abi:ne200100]<0>(&v41, "vp_config_output_port");
    v44 = &v41;
    v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, &v41);
    std::string::__assign_external((v7 + 56), __p);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  v8 = *(this + 600);
  if (v8)
  {
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(__p, v8);
    std::string::basic_string[abi:ne200100]<0>(&v41, "vp_config_ref_subport");
    v44 = &v41;
    v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, &v41);
    std::string::__assign_external((v9 + 56), __p);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__p, *(this + 553));
  std::string::basic_string[abi:ne200100]<0>(&v41, "vp_config_primary_vocoder");
  v44 = &v41;
  v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, &v41);
  std::string::__assign_external((v10 + 56), __p);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  std::to_string(&v41, *(this + 554));
  std::string::basic_string[abi:ne200100]<0>(__p, "vp_config_primary_vocoderFs");
  v44 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, __p);
  v12 = v11;
  if (*(v11 + 79) < 0)
  {
    operator delete(*(v11 + 56));
  }

  *(v12 + 56) = v41;
  *(&v41.__r_.__value_.__s + 23) = 0;
  v41.__r_.__value_.__s.__data_[0] = 0;
  if (v46 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  std::to_string(&v41, *(this + 2261));
  std::string::basic_string[abi:ne200100]<0>(__p, "vp_spatial_chat_enabled");
  v44 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, __p);
  v14 = v13;
  if (*(v13 + 79) < 0)
  {
    operator delete(*(v13 + 56));
  }

  *(v14 + 56) = v41;
  *(&v41.__r_.__value_.__s + 23) = 0;
  v41.__r_.__value_.__s.__data_[0] = 0;
  if (v46 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  std::to_string(&v41, *(this + 2260));
  std::string::basic_string[abi:ne200100]<0>(__p, "vp_media_chat_enabled");
  v44 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, __p);
  v16 = v15;
  if (*(v15 + 79) < 0)
  {
    operator delete(*(v15 + 56));
  }

  *(v16 + 56) = v41;
  *(&v41.__r_.__value_.__s + 23) = 0;
  v41.__r_.__value_.__s.__data_[0] = 0;
  if (v46 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 16568))
  {
    v17 = "default";
  }

  else if (*(this + 2262))
  {
    v17 = "voice isolation";
  }

  else
  {
    if (*(this + 2288) == 1)
    {
      AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this);
    }

    else
    {
      AutomaticChatFlavor = *(this + 4134);
    }

    if (AutomaticChatFlavor > 2)
    {
      v17 = "unknown chat flavor";
    }

    else
    {
      v17 = off_279E48CA8[AutomaticChatFlavor];
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v41, "vp_chat_flavor");
  __p[0] = &v41;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, &v41);
  std::string::__assign_external((v19 + 56), v17);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  std::to_string(&v41, *(this + 2288));
  std::string::basic_string[abi:ne200100]<0>(__p, "vp_automatic_mic_mode_enabled");
  v44 = __p;
  v20 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, __p);
  v21 = v20;
  if (*(v20 + 79) < 0)
  {
    operator delete(*(v20 + 56));
  }

  *(v21 + 56) = v41;
  *(&v41.__r_.__value_.__s + 23) = 0;
  v41.__r_.__value_.__s.__data_[0] = 0;
  if (v46 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  std::to_string(&v41, *(this + 480));
  std::string::basic_string[abi:ne200100]<0>(__p, "vp_bypass");
  v44 = __p;
  v22 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, __p);
  v23 = v22;
  if (*(v22 + 79) < 0)
  {
    operator delete(*(v22 + 56));
  }

  *(v23 + 56) = v41;
  *(&v41.__r_.__value_.__s + 23) = 0;
  v41.__r_.__value_.__s.__data_[0] = 0;
  if (v46 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  std::to_string(&v41, *(this + 16388));
  std::string::basic_string[abi:ne200100]<0>(__p, "vp_spatial_head_tracking_enabled");
  v44 = __p;
  v24 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, __p);
  v25 = v24;
  if (*(v24 + 79) < 0)
  {
    operator delete(*(v24 + 56));
  }

  *(v25 + 56) = v41;
  *(&v41.__r_.__value_.__s + 23) = 0;
  v41.__r_.__value_.__s.__data_[0] = 0;
  if (v46 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  std::to_string(&v41, *(this + 4096));
  std::string::basic_string[abi:ne200100]<0>(__p, "vp_spatial_head_tracking_mode");
  v44 = __p;
  v26 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, __p);
  v27 = v26;
  if (*(v26 + 79) < 0)
  {
    operator delete(*(v26 + 56));
  }

  *(v27 + 56) = v41;
  *(&v41.__r_.__value_.__s + 23) = 0;
  v41.__r_.__value_.__s.__data_[0] = 0;
  if (v46 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  std::to_string(&v41, *(this + 16288));
  std::string::basic_string[abi:ne200100]<0>(__p, "vp_mix_stereo_to_mono");
  v44 = __p;
  v28 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, __p);
  v29 = v28;
  if (*(v28 + 79) < 0)
  {
    operator delete(*(v28 + 56));
  }

  *(v29 + 56) = v41;
  *(&v41.__r_.__value_.__s + 23) = 0;
  v41.__r_.__value_.__s.__data_[0] = 0;
  if (v46 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  v30 = (*(*this + 112))(this);
  std::to_string(&v41, v30);
  std::string::basic_string[abi:ne200100]<0>(__p, "vp_version");
  v44 = __p;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, __p);
  v32 = v31;
  if (*(v31 + 79) < 0)
  {
    operator delete(*(v31 + 56));
  }

  *(v32 + 56) = v41;
  *(&v41.__r_.__value_.__s + 23) = 0;
  v41.__r_.__value_.__s.__data_[0] = 0;
  if (v46 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  std::to_string(&v41, *(this + 16561));
  std::string::basic_string[abi:ne200100]<0>(__p, "vp_other_audio_ducking_configuration_enable_advanced_ducking");
  v44 = __p;
  v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, __p);
  v34 = v33;
  if (*(v33 + 79) < 0)
  {
    operator delete(*(v33 + 56));
  }

  *(v34 + 56) = v41;
  *(&v41.__r_.__value_.__s + 23) = 0;
  v41.__r_.__value_.__s.__data_[0] = 0;
  if (v46 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  v35 = *(this + 4141);
  if (v35 > 19)
  {
    if (v35 != 20)
    {
      if (v35 == 30)
      {
        v36 = "Max";
        goto LABEL_89;
      }

      goto LABEL_86;
    }

    v36 = "Mid";
  }

  else
  {
    if (v35)
    {
      if (v35 == 10)
      {
        v36 = "Min";
        goto LABEL_89;
      }

LABEL_86:
      v36 = "unknown ducking level";
      goto LABEL_89;
    }

    v36 = "Default";
  }

LABEL_89:
  std::string::basic_string[abi:ne200100]<0>(&v41, "vp_other_audio_ducking_configuration_ducking_level");
  __p[0] = &v41;
  v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, &v41);
  std::string::__assign_external((v37 + 56), v36);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  std::to_string(&v41, *(this + 4152));
  std::string::basic_string[abi:ne200100]<0>(__p, "vp_airpods_offload_mode");
  v44 = __p;
  v38 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v42, __p);
  v39 = v38;
  if (*(v38 + 79) < 0)
  {
    operator delete(*(v38 + 56));
  }

  *(v39 + 56) = v41;
  *(&v41.__r_.__value_.__s + 23) = 0;
  v41.__r_.__value_.__s.__data_[0] = 0;
  if (v46 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  CAAudioStatisticsSendMessage(*(this + 271), *(this + 544), &v42, 5);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v43[0]);
  v40 = *MEMORY[0x277D85DE8];
}

void CAX4CCStringNoQuote::CAX4CCStringNoQuote(CAX4CCStringNoQuote *this, unsigned int a2)
{
  v4 = bswap32(a2);
  *this = v4;
  v5 = MEMORY[0x277D85DE0];
  if ((v4 & 0x80) != 0)
  {
    if (!__maskrune(v4, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v6 = *(this + 1);
  if ((v6 & 0x80000000) != 0)
  {
    if (!__maskrune(v6, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v5 + 4 * v6 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v7 = *(this + 2);
  if ((v7 & 0x80000000) != 0)
  {
    if (!__maskrune(v7, 0x40000uLL))
    {
      goto LABEL_17;
    }

LABEL_13:
    v8 = *(this + 3);
    if ((v8 & 0x80000000) != 0)
    {
      if (!__maskrune(v8, 0x40000uLL))
      {
        goto LABEL_17;
      }
    }

    else if ((*(v5 + 4 * v8 + 60) & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    *(this + 4) = 0;
    return;
  }

  if ((*(v5 + 4 * v7 + 60) & 0x40000) != 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (a2 + 199999 > 0x61A7E)
  {
    snprintf(this, 0x10uLL, "0x%x");
  }

  else
  {
    snprintf(this, 0x10uLL, "%d");
  }
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

void VoiceProcessorV2::CreateMessenger(VoiceProcessorV2 *this)
{
  v2 = VoiceProcessorV2::CreateMessenger(void)::sMessenger;
  if (!VoiceProcessorV2::CreateMessenger(void)::sMessenger || (v2 = std::__shared_weak_count::lock(VoiceProcessorV2::CreateMessenger(void)::sMessenger), (v3 = v2) == 0) || (v4 = VoiceProcessorV2::CreateMessenger(void)::sMessenger) == 0)
  {
    v6 = caulk::concurrent::messenger::shared_high_priority(v2);
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, v6);
    v7 = v6[2];
    *&v10[13] = *(v6 + 45);
    *v10 = v7;
    if (v9 == 1)
    {
      std::string::__assign_external(&__p, "com.apple.coreaudio.VoiceProcessor");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "com.apple.coreaudio.VoiceProcessor");
      v9 = 1;
    }

    operator new();
  }

  atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  *(this + 2025) = v4;
  v5 = *(this + 2026);
  *(this + 2026) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void sub_2724EA79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v18);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_2724EA85C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<caulk::concurrent::messenger>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881B03D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void VoiceProcessorV2::SetEmergencyCallStatus(VoiceProcessorV2 *this, int a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = this + 15881;
  if (*(this + 16568) != a2)
  {
    v3 = a2;
    v19 = this + 2408;
    v20 = (*(*(this + 301) + 16))();
    atomic_fetch_add(this + 624, 1u);
    while (*(this + 625))
    {
      usleep(0x1F4u);
    }

    v7 = v2[687];
    v2[687] = v3;
    if (*v2 == 1)
    {
      VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1768514915);
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
        v10 = v2[687];
        *buf = 136315650;
        v22 = "VoiceProcessor_v2.cpp";
        v23 = 1024;
        v24 = 6848;
        v25 = 1024;
        v26 = v10;
        _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> VP mIsInEmergencyCall set to %u", buf, 0x18u);
      }
    }

    v11 = *(this + 1588);
    if (v11 && ((*v2 & 1) != 0 || v2[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v11, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 6848, "SetEmergencyCallStatus", "VP mIsInEmergencyCall set to %u", v2[687]);
    }

    if (v2[687] != v7)
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
          v22 = "VoiceProcessor_v2.cpp";
          v23 = 1024;
          v24 = 6853;
          _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (SetEmergencyCallStatus)", buf, 0x12u);
        }
      }

      v14 = *(this + 1588);
      if (v14 && ((*v2 & 1) != 0 || v2[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v14, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 6853, "SetEmergencyCallStatus", "Begin self-reinit (SetEmergencyCallStatus)");
      }

      VoiceProcessorV2::ResetTimestampsAndInitializeVP(this, 1, v5, v6);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v15 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v16 = (*v15 ? *v15 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v22 = "VoiceProcessor_v2.cpp";
          v23 = 1024;
          v24 = 6855;
          _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (SetEmergencyCallStatus)", buf, 0x12u);
        }
      }

      v17 = *(this + 1588);
      if (v17 && ((*v2 & 1) != 0 || v2[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v17, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 6855, "SetEmergencyCallStatus", "End self-reinit (SetEmergencyCallStatus)");
      }
    }

    atomic_fetch_add(this + 624, 0xFFFFFFFF);
    if (v20 == 1)
    {
      (*(*v19 + 24))(v19);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2724EADBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

OpaqueAudioComponentInstance *VoiceProcessorV2::LocalVoiceDuckingForMediaChatEnabled(VoiceProcessorV2 *this)
{
  if ((*(this + 2260) & 1) == 0 && *(this + 16561) != 1 || (*(this + 8865) & 0x80) == 0 || (*(this + 8873) & 0x80) == 0)
  {
    return 0;
  }

  result = *(this + 454);
  if (result)
  {
    v5 = v1;
    v6 = v2;
    v4 = 0.0;
    AudioUnitGetParameter(result, 0x11u, 0, 0, &v4);
    return (v4 == 1.0);
  }

  return result;
}