_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void vg::ObjContents::~ObjContents(vg::ObjContents *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = (this + 144);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 120);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 96);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 72);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 48);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 24);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279E28D08, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void vg::frame_selection::VGEarCaptureOptions::~VGEarCaptureOptions(id *this)
{
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void vg::hrtf::setError(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __VGLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v13 = [v3 UTF8String];
    _os_log_impl(&dword_270F06000, v4, OS_LOG_TYPE_ERROR, " %s ", buf, 0xCu);
  }

  if (a1)
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = [MEMORY[0x277CCA8D8] vg_bundle];
    v7 = [v6 bundleIdentifier];
    v10 = *MEMORY[0x277CCA450];
    v11 = v3;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    *a1 = [v5 errorWithDomain:v7 code:100 userInfo:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_270F08B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_270F0AB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (**a12)(void), void (**a13)(void), void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  vg::ear_detection::EarPose::~EarPose(&a59);

  a13[2]();
  a12[2]();

  if (LOBYTE(STACK[0x2C0]) == 1)
  {
  }

  _Unwind_Resume(a1);
}

id detail::getEarPoseList(detail *this, unsigned int a2)
{
  v3 = this;
  if (this >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = this;
  }

  v5 = objc_opt_new();
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v8 = [MEMORY[0x277CCABB0] numberWithDouble:i];
      [v5 setObject:v7 forKeyedSubscript:v8];
    }
  }

  if (v3 < a2)
  {
    do
    {
      v9 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v10 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
      [v5 setObject:v9 forKeyedSubscript:v10];

      ++v4;
    }

    while (a2 != v4);
  }

  return v5;
}

id detail::getEarFrameData(uint64_t *a1)
{
  v2 = objc_opt_new();
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = [[VGHRTFEarFrameData alloc] initEmpty];
      [v5 setRgbImage:{CVPixelBufferGetIOSurface(objc_msgSend(*v3, "rgbRectified"))}];
      [v5 setDepthImage:{CVPixelBufferGetIOSurface(objc_msgSend(*v3, "depth"))}];
      [v5 setEarBox:*(v3 + 128)];
      [v2 addObject:v5];

      v3 += 192;
    }

    while (v3 != v4);
  }

  return v2;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void vg::ear_detection::EarPose::~EarPose(vg::ear_detection::EarPose *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }
}

void std::vector<EarFrame>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<EarFrame>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<EarFrame>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 192)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }

    v6 = *(i - 192);
  }

  a1[1] = v2;
}

vg::hrtf::Rectify *std::unique_ptr<vg::hrtf::Rectify>::reset[abi:ne200100](vg::hrtf::Rectify **a1, vg::hrtf::Rectify *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    vg::hrtf::Rectify::~Rectify(result);

    JUMPOUT(0x2743B9370);
  }

  return result;
}

void sub_270F0D040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (**a11)(void), uint64_t a12, void (**a13)(void), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  a13[2]();

  a11[2]();
  if (a55 == 1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_270F0D9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void (**a10)(void), void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _Unwind_Exception *exception_object)
{
  a10[2]();

  _Unwind_Resume(a1);
}

void sub_270F0DBC8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

id detail::getFacePoseList(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    [v3 pitchAngleCapturedPoses];
  }

  else
  {
    [v3 yawAngleCapturedPoses];
  }
  v19 = ;

  v5 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v19;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        [v10 doubleValue];
        v12 = v11;
        v13 = [v6 objectForKey:v10];
        v14 = [v13 valid];

        v15 = [MEMORY[0x277CCABB0] numberWithBool:v14];
        v16 = [MEMORY[0x277CCABB0] numberWithDouble:round(v12 * 100.0) / 100.0];
        [v5 setObject:v15 forKeyedSubscript:v16];
      }

      v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

void sub_270F0EDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (**a11)(void), void *a12, void (**a13)(void), uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  vg::frame_selection::VGEarSelectionState::~VGEarSelectionState(&a35);
  a13[2]();

  a11[2]();
  if (LOBYTE(STACK[0x230]) == 1)
  {
  }

  _Unwind_Resume(a1);
}

id detail::getEarPoseList(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a1;
  v1 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = v15;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = *v17;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v16 + 1) + 8 * i);
        v7 = [v2 objectForKey:v6];
        v8 = [v7 BOOLValue];
        [v6 doubleValue];
        v10 = v9;
        v11 = [MEMORY[0x277CCABB0] numberWithBool:v8];
        v12 = [MEMORY[0x277CCABB0] numberWithDouble:ceil(v10 * 100.0) / 100.0];
        [v1 setObject:v11 forKeyedSubscript:v12];
      }

      v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v1;
}

NSObject *detail::getEarFrameData(void *a1, void *a2)
{
  v3 = a1;
  v22 = a2;
  v4 = [v22 allValues];
  v5 = [v4 count];
  if (v5 == [v3 count])
  {
    v6 = objc_opt_new();
    v7 = 0;
    v8 = MEMORY[0x277CBF3A0];
    while (1)
    {
      if (v7 >= [v4 count])
      {
        v6 = v6;
        v19 = v6;
        goto LABEL_13;
      }

      v9 = [v4 objectAtIndexedSubscript:v7];
      v10 = [v3 objectAtIndexedSubscript:v7];
      v11 = *(v8 + 16);
      rect.origin = *v8;
      rect.size = v11;
      if (!CGRectMakeWithDictionaryRepresentation(v9, &rect))
      {
        break;
      }

      x = rect.origin.x;
      y = rect.origin.y;
      v14 = [[VGHRTFEarFrameData alloc] initEmpty];
      v15 = [v10 captureData];
      [v14 setRgbImage:{CVPixelBufferGetIOSurface(objc_msgSend(v15, "rgbRectified"))}];

      v16 = [v10 captureData];
      [v14 setDepthImage:{CVPixelBufferGetIOSurface(objc_msgSend(v16, "depth"))}];
      *&v17 = x;
      v18 = y;
      *(&v17 + 1) = v18;
      v23 = v17;

      [v14 setEarBox:v23];
      [v6 addObject:v14];

      ++v7;
    }

    v20 = __VGLogSharedInstance();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v20, OS_LOG_TYPE_ERROR, " CGRectMakeWithDictionaryRepresentation failed. ", buf, 2u);
    }
  }

  else
  {
    v6 = __VGLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(rect.origin.x) = 0;
      _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_ERROR, " Captured size and Rect dictionary size doesn't match ", &rect, 2u);
    }
  }

  v19 = 0;
LABEL_13:

  return v19;
}

void sub_270F0F624(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  _Unwind_Resume(exception_object);
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

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void vg::frame_selection::VGEarSelectionState::~VGEarSelectionState(id *this)
{
  v2 = this[21];
  if (v2)
  {
    this[22] = v2;
    operator delete(v2);
  }

  v3 = this[18];
  if (v3)
  {
    this[19] = v3;
    operator delete(v3);
  }
}

vg::frame_selection::VGEarFrameSelector *std::unique_ptr<vg::frame_selection::VGEarFrameSelector>::reset[abi:ne200100](vg::frame_selection::VGEarFrameSelector **a1, vg::frame_selection::VGEarFrameSelector *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    vg::frame_selection::VGEarFrameSelector::~VGEarFrameSelector(result);

    JUMPOUT(0x2743B9370);
  }

  return result;
}

void sub_270F10424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v33 - 168) == 1 && *(v33 - 169) < 0)
  {
    operator delete(*(v33 - 192));
  }

  vg::hrtf::HRTFModelInputs::~HRTFModelInputs(&__p);
  std::unique_ptr<vg::hrtf::HRTFModel>::~unique_ptr[abi:ne200100]((v33 - 216));

  _Unwind_Resume(a1);
}

uint64_t std::vector<vg::hrtf::EarFrameData>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<vg::hrtf::EarFrameData>::__emplace_back_slow_path<vg::hrtf::EarFrameData>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *v3 = v4;
    v3[1] = *(a2 + 16);
    result = (v3 + 2);
  }

  *(a1 + 8) = result;
  return result;
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(std::string *a1, std::string::value_type **a2)
{
  v3 = *a2;
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::__assign_external(a1, v3);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, v3);
    a1[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

vg::hrtf::HRTFModel **std::unique_ptr<vg::hrtf::HRTFModel>::~unique_ptr[abi:ne200100](vg::hrtf::HRTFModel **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vg::hrtf::HRTFModel::~HRTFModel(v2);
    MEMORY[0x2743B9370]();
  }

  return a1;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::vector<vg::hrtf::FaceFrameData>::__emplace_back_slow_path<vg::hrtf::FaceFrameData>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vg::hrtf::FaceFrameData>>(a1, v6);
  }

  v7 = 96 * v2;
  v18 = 0;
  v19 = 96 * v2;
  *(&v20 + 1) = 0;
  v8 = *a2;
  *a2 = 0u;
  *v7 = v8;
  v9 = a2[2];
  v10 = a2[3];
  *(v7 + 16) = a2[1];
  *(v7 + 32) = v9;
  *(v7 + 48) = v10;
  *(v7 + 64) = 0u;
  v11 = *(a2 + 9);
  *(v7 + 64) = *(a2 + 8);
  *(v7 + 72) = v11;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(v7 + 80) = *(a2 + 20);
  *(a2 + 20) = 0;
  *&v20 = 96 * v2 + 96;
  v12 = *(a1 + 8);
  v13 = 96 * v2 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vg::hrtf::FaceFrameData>,vg::hrtf::FaceFrameData*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<vg::hrtf::FaceFrameData>::~__split_buffer(&v18);
  return v17;
}

void sub_270F109B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<vg::hrtf::FaceFrameData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<vg::hrtf::FaceFrameData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vg::hrtf::FaceFrameData>,vg::hrtf::FaceFrameData*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *v7 = 0uLL;
      *a4 = v8;
      v9 = *(v7 + 2);
      v10 = *(v7 + 3);
      *(a4 + 16) = *(v7 + 1);
      *(a4 + 32) = v9;
      *(a4 + 48) = v10;
      *(a4 + 64) = 0uLL;
      v11 = v7[9];
      *(a4 + 64) = v7[8];
      *(a4 + 72) = v11;
      v7[8] = 0;
      v7[9] = 0;
      *(a4 + 80) = *(v7 + 20);
      *(v7 + 20) = 0;
      v7 += 12;
      a4 += 96;
    }

    while (v7 != a3);
    v16 = a4;
    v14 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<vg::hrtf::FaceFrameData>>::destroy[abi:ne200100]<vg::hrtf::FaceFrameData,void,0>(a1, v5);
      v5 += 12;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vg::hrtf::FaceFrameData>,vg::hrtf::FaceFrameData*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

void std::allocator_traits<std::allocator<vg::hrtf::FaceFrameData>>::destroy[abi:ne200100]<vg::hrtf::FaceFrameData,void,0>(uint64_t a1, void **a2)
{
  free(a2[8]);

  v3 = *a2;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vg::hrtf::FaceFrameData>,vg::hrtf::FaceFrameData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<vg::hrtf::FaceFrameData>,vg::hrtf::FaceFrameData*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<vg::hrtf::FaceFrameData>,vg::hrtf::FaceFrameData*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 12;
      std::allocator_traits<std::allocator<vg::hrtf::FaceFrameData>>::destroy[abi:ne200100]<vg::hrtf::FaceFrameData,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<vg::hrtf::FaceFrameData>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<vg::hrtf::FaceFrameData>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<vg::hrtf::FaceFrameData>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    std::allocator_traits<std::allocator<vg::hrtf::FaceFrameData>>::destroy[abi:ne200100]<vg::hrtf::FaceFrameData,void,0>(v5, (v4 - 96));
  }
}

void vg::hrtf::FaceFrameData::~FaceFrameData(void **this)
{
  free(this[8]);
}

uint64_t std::vector<vg::hrtf::EarFrameData>::__emplace_back_slow_path<vg::hrtf::EarFrameData>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
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

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vg::hrtf::EarFrameData>>(a1, v7);
  }

  v8 = (32 * v2);
  v16 = 0;
  v17 = 32 * v2;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *v8 = v9;
  v8[1] = a2[1];
  *&v18 = 32 * v2 + 32;
  v10 = *(a1 + 8);
  v11 = (32 * v2 + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vg::hrtf::EarFrameData>,vg::hrtf::EarFrameData*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<vg::hrtf::EarFrameData>::~__split_buffer(&v16);
  return v15;
}

void sub_270F10DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<vg::hrtf::EarFrameData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<vg::hrtf::EarFrameData>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vg::hrtf::EarFrameData>,vg::hrtf::EarFrameData*>(uint64_t a1, void **a2, void **a3, _OWORD *a4)
{
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      v4[1] = 0;
      *a4 = v5;
      a4[1] = *(v4 + 1);
      v4 += 4;
      a4 += 2;
    }

    while (v4 != a3);
    v10 = a4;
  }

  v8 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<vg::hrtf::EarFrameData>,vg::hrtf::EarFrameData*,vg::hrtf::EarFrameData*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vg::hrtf::EarFrameData>,vg::hrtf::EarFrameData*>>::~__exception_guard_exceptions[abi:ne200100](v7);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<vg::hrtf::EarFrameData>,vg::hrtf::EarFrameData*,vg::hrtf::EarFrameData*>(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 4;
    }

    while (v4 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vg::hrtf::EarFrameData>,vg::hrtf::EarFrameData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<vg::hrtf::EarFrameData>,std::reverse_iterator<vg::hrtf::EarFrameData*>,std::reverse_iterator<vg::hrtf::EarFrameData*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<vg::hrtf::EarFrameData>,std::reverse_iterator<vg::hrtf::EarFrameData*>,std::reverse_iterator<vg::hrtf::EarFrameData*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 32);
      v6 -= 32;
    }

    while (v6 != a5);
  }
}

uint64_t std::__split_buffer<vg::hrtf::EarFrameData>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<vg::hrtf::EarFrameData>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<vg::hrtf::EarFrameData>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
  }
}

void vg::hrtf::HRTFModelInputs::~HRTFModelInputs(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  v2 = this + 6;
  std::vector<vg::hrtf::EarFrameData>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<vg::hrtf::EarFrameData>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<vg::hrtf::FaceFrameData>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<vg::hrtf::EarFrameData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<vg::hrtf::EarFrameData>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<vg::hrtf::EarFrameData>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 32)
  {

    v5 = *(i - 32);
  }

  *(a1 + 8) = a2;
}

void std::vector<vg::hrtf::FaceFrameData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<vg::hrtf::FaceFrameData>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<vg::hrtf::FaceFrameData>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<vg::hrtf::FaceFrameData>>::destroy[abi:ne200100]<vg::hrtf::FaceFrameData,void,0>(a1, i))
  {
    i -= 12;
  }

  *(a1 + 8) = a2;
}

void vg::ear_detection::BoxModelPreProcessor::create(uint32x2_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  __p = 0;
  v25 = 0;
  v26 = 0;
  v9 = *a2;
  v8 = a2[1];
  v10 = (v8 - *a2) >> 2;
  _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE7reserveEm(&__p, v10);
  if (v8 != v9)
  {
    v11 = 0;
    if (v10 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10;
    }

    while (1)
    {
      vg::ear_detection::makeSquareCropBox(a1, buf, *(*a2 + 4 * v11));
      if ((v28 & 1) == 0)
      {
        goto LABEL_28;
      }

      v13 = v25;
      if (v25 >= v26)
      {
        v15 = (v25 - __p) >> 4;
        if ((v15 + 1) >> 60)
        {
          std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
        }

        v16 = (v26 - __p) >> 3;
        if (v16 <= v15 + 1)
        {
          v16 = v15 + 1;
        }

        if (v26 - __p >= 0x7FFFFFFFFFFFFFF0)
        {
          v17 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv4_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__p, v17);
        }

        *(16 * v15) = *buf;
        v14 = 16 * v15 + 16;
        v18 = (16 * v15 - (v25 - __p));
        memcpy(v18, __p, v25 - __p);
        v19 = __p;
        __p = v18;
        v25 = v14;
        v26 = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v25 = *buf;
        v14 = (v13 + 16);
      }

      v25 = v14;
      if (v12 == ++v11)
      {
        goto LABEL_21;
      }
    }
  }

  v14 = v25;
LABEL_21:
  if ((a2[1] - *a2) >> 2 != (v14 - __p) >> 4)
  {
    v22 = __VGLogSharedInstance();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v22, OS_LOG_TYPE_ERROR, " Number of crop alignments and crop boxes must be same. ", buf, 2u);
    }

LABEL_28:
    *a4 = 0;
    goto LABEL_29;
  }

  v20 = operator new(0x80uLL, MEMORY[0x277D826F0]);
  v21 = v20;
  if (v20)
  {
    vg::ear_detection::BoxModelPreProcessor::BoxModelPreProcessor(v20, a1, a3, a2, &__p);
  }

  *a4 = v21;
LABEL_29:
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_270F11410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x2743B9360](v11, MEMORY[0x277D826F0]);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *_ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv4_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(result, a2);
    }

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t vg::ear_detection::BoxModelPreProcessor::BoxModelPreProcessor(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v41[4] = *MEMORY[0x277D85DE8];
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v33 = a1 + 8;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 8, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a1 + 32, *a5, a5[1], (a5[1] - *a5) >> 4);
  *(a1 + 56) = 0u;
  *(a1 + 104) = 0u;
  v34 = (a1 + 104);
  *(a1 + 120) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  if (a4[1] != *a4)
  {
    v9 = 0;
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      v15 = objc_alloc(MEMORY[0x277CD2930]);
      v40[0] = *MEMORY[0x277CD2928];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{a3, v33}];
      v41[0] = v16;
      v40[1] = *MEMORY[0x277CD28D0];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
      v18 = *MEMORY[0x277CD28D8];
      v41[1] = v17;
      v41[2] = &unk_2880F5E60;
      v19 = *MEMORY[0x277CD28B0];
      v40[2] = v18;
      v40[3] = v19;
      v41[3] = &unk_2880F5E78;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4];
      v21 = [v15 initWithProperties:v20];
      v23 = *(a1 + 112);
      v22 = *(a1 + 120);
      if (v23 >= v22)
      {
        v25 = (v23 - *v34) >> 3;
        if ((v25 + 1) >> 61)
        {
          std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
        }

        v26 = v22 - *v34;
        v27 = v26 >> 2;
        if (v26 >> 2 <= (v25 + 1))
        {
          v27 = v25 + 1;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v27;
        }

        v39 = a1 + 104;
        if (v28)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<IOSurface * {__strong}>>(v34, v28);
        }

        v35 = 0;
        v36 = (8 * v25);
        v38 = 0;
        *v36 = v21;
        v37 = 8 * v25 + 8;
        std::vector<IOSurface * {__strong}>::__swap_out_circular_buffer(v34, &v35);
        v24 = *(a1 + 112);
        std::__split_buffer<IOSurface * {__strong}>::~__split_buffer(&v35);
      }

      else
      {
        *v23 = v21;
        v24 = v23 + 1;
        *(a1 + 112) = v24;
      }

      *(a1 + 112) = v24;

      v29 = vcvt_s32_f32(*(*(a1 + 32) + 16 * v9));
      WORD1(v35) = v29.i16[2];
      LOWORD(v35) = v29.i16[0];
      _ZNSt3__16vectorIDv2_tNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(a1 + 56, &v35);
      v30 = vcvt_s32_f32(vadd_f32(vsub_f32(*&vextq_s8(*(*(a1 + 32) + 16 * v9), *(*(a1 + 32) + 16 * v9), 8uLL), *(*(a1 + 32) + 16 * v9)), _D8));
      WORD1(v35) = v30.i16[2];
      LOWORD(v35) = v30.i16[0];
      _ZNSt3__16vectorIDv2_tNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(a1 + 80, &v35);
      ++v9;
    }

    while (v9 < (a4[1] - *a4) >> 2);
  }

  v31 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_270F117F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = *a9;
  if (*a9)
  {
    *(v14 + 16) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv2_tNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 2;
    if ((v7 + 1) >> 62)
    {
      std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v10);
    }

    v11 = (4 * v7);
    *v11 = *a2;
    v6 = 4 * v7 + 4;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void vg::ear_detection::BoxModelPreProcessor::preProcessImage(vg::ear_detection::BoxModelPreProcessor *this@<X0>, IOSurface *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  if ([(IOSurface *)v5 width]== *this && [(IOSurface *)v5 height]== *(this + 1))
  {
    if (*(this + 5) != *(this + 4))
    {
      v6 = 0;
      do
      {
        [(IOSurface *)v5 vg_cropAndResizeYIntoSurface:*(*(this + 13) + 8 * v6) origin:*(*(this + 7) + 4 * v6) size:*(*(this + 10) + 4 * v6)];
        ++v6;
      }

      while (v6 < (*(this + 5) - *(this + 4)) >> 4);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    std::vector<IOSurface * {__strong}>::__init_with_size[abi:ne200100]<IOSurface * {__strong}*,IOSurface * {__strong}*>(a3, *(this + 13), *(this + 14), (*(this + 14) - *(this + 13)) >> 3);
    v7 = 1;
  }

  else
  {
    v8 = __VGLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_270F06000, v8, OS_LOG_TYPE_ERROR, " Invalid input image size. ", v9, 2u);
    }

    v7 = 0;
    *a3 = 0;
  }

  *(a3 + 24) = v7;
}

double vg::ear_detection::BoxModelPreProcessor::makeScaledBox(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vmlaq_n_f32(vdupq_lane_s64(*(*(a1 + 32) + 16 * a3), 0), vbicq_s8(vbslq_s8(vcgtq_f32(*a2, _Q4), _Q4, *a2), vcltzq_f32(*a2)), (COERCE_FLOAT(*(*(a1 + 32) + 16 * a3 + 8)) - COERCE_FLOAT(*(*(a1 + 32) + 16 * a3))) + -1.0).u64[0];
  return result;
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv4_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_270F11BD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_270F11CD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv4_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
}

void std::vector<IOSurface * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<IOSurface * {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<IOSurface * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<IOSurface * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<IOSurface * {__strong}>::__init_with_size[abi:ne200100]<IOSurface * {__strong}*,IOSurface * {__strong}*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<IOSurface * {__strong}>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<IOSurface * {__strong}>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<IOSurface * {__strong}>>(a1, a2);
  }

  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
}

BOOL vg::ear_detection::isTooClose(vg::ear_detection *this, const IOSurface *a2)
{
  v2 = this;
  vg::IOSurfaceData::IOSurfaceData(v16, v2, 1);
  v3 = [(vg::ear_detection *)v2 width];
  v4 = [(vg::ear_detection *)v2 height];
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = v16[4];
    LODWORD(v5) = 1050253722;
    do
    {
      v9 = v8;
      for (i = v3; i; --i)
      {
        v11 = *v9++;
        v6 += v11 < 0.3;
      }

      ++v7;
      v8 = (v8 + v16[5]);
    }

    while (v7 != v4);
    v12 = v6;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = [(vg::ear_detection *)v2 width];
  v14 = (v12 / ([(vg::ear_detection *)v2 height]* v13)) > 0.8;
  vg::IOSurfaceData::~IOSurfaceData(v16);

  return v14;
}

void sub_270F120AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vg::IOSurfaceData::~IOSurfaceData(va);

  _Unwind_Resume(a1);
}

BOOL vg::ear_detection::isEarTooFar(void *a1, __n128 a2)
{
  v2 = a1;
  vg::IOSurfaceData::IOSurfaceData(v10, v2, 1);
  v3 = [(IOSurface *)v2 width];
  v4 = [(IOSurface *)v2 height];
  LODWORD(v5) = ((a2.n128_f32[1] + a2.n128_f32[3]) * 0.5);
  LODWORD(v6) = ((a2.n128_f32[0] + a2.n128_f32[2]) * 0.5);
  if (v3 - 1 >= v6)
  {
    v6 = v6;
  }

  else
  {
    v6 = (v3 - 1);
  }

  if (v4 - 1 >= v5)
  {
    v5 = v5;
  }

  else
  {
    v5 = (v4 - 1);
  }

  v7 = *(v10[4] + v10[5] * v5 + v10[6] * v6) > 0.6;
  vg::IOSurfaceData::~IOSurfaceData(v10);

  return v7;
}

void sub_270F121A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  vg::IOSurfaceData::~IOSurfaceData(va);

  _Unwind_Resume(a1);
}

vg::IOSurfaceData *vg::IOSurfaceData::IOSurfaceData(vg::IOSurfaceData *this, IOSurface *a2, int a3)
{
  v5 = a2;
  *this = v5;
  *(this + 2) = a3;
  *(this + 2) = [(IOSurface *)v5 width];
  *(this + 3) = [(IOSurface *)v5 height];
  *(this + 4) = [(IOSurface *)v5 baseAddress];
  *(this + 5) = [(IOSurface *)v5 bytesPerRow];
  *(this + 6) = [(IOSurface *)v5 bytesPerElement];
  [*this lockWithOptions:*(this + 2) seed:0];

  return this;
}

int64x2_t vg::ear_detection::EarSideSmoothPredictorImpl::pushSide(int64x2_t *this, int a2)
{
  v7 = a2;
  if (this[2].i64[1] == this[4].i64[0])
  {
    vg::ear_detection::EarSideSmoothPredictorImpl::popSide(this);
  }

  std::deque<vg::ear_detection::EarSide>::push_back(this, &v7);
  v3 = vld1_dup_f32(&v7);
  v4 = vceq_s32(v3, 0x100000000);
  v5.i64[0] = v4.u32[0];
  v5.i64[1] = v4.u32[1];
  result = vaddq_s64(this[3], vandq_s8(v5, vdupq_n_s64(1uLL)));
  this[3] = result;
  return result;
}

BOOL vg::ear_detection::EarSideSmoothPredictorImpl::popSide(int64x2_t *this)
{
  v1 = this[2].i64[1];
  if (v1)
  {
    v3 = (*(this->i64[1] + ((this[2].i64[0] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (this[2].i64[0] & 0x3FF));
    ++this[2].i64[0];
    this[2].i64[1] = v1 - 1;
    v4 = vld1_dup_f32(v3);
    std::deque<vg::ear_detection::EarSide>::__maybe_remove_front_spare[abi:ne200100](this, 1);
    this[3] = vaddw_s32(this[3], vceq_s32(v4, 0x100000000));
  }

  return v1 != 0;
}

uint64_t vg::ear_detection::EarSideSmoothPredictorImpl::estimateSmoothEarSide(int64x2_t *this, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = this[2].u64[1];
  v5 = 0.0;
  if (v4 == this[4].i64[0])
  {
    v6 = 7;
    if (!a2)
    {
      v6 = 6;
    }

    v5 = this->u64[v6] / v4;
  }

  vg::ear_detection::EarSideSmoothPredictorImpl::pushSide(this, a2);
  if (v4 >= this[4].i64[0])
  {
    if (v5 >= *&this[4].i32[2])
    {
      v15 = a2 & 0xFFFFFF00;
      v13 = a2;
      v14 = 0x100000000;
      goto LABEL_17;
    }

    v10 = __VGLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = "right";
      v12 = *&this[4].i32[2];
      if (!a2)
      {
        v11 = "left";
      }

      v18 = 136315650;
      v19 = v11;
      v20 = 2048;
      v21 = v5;
      v22 = 2048;
      v23 = v12;
      _os_log_impl(&dword_270F06000, v10, OS_LOG_TYPE_INFO, " Ear side not consistent with the buffer threshold; ignoring frame for selection purposes; side: %s, ratio: %f, threshold: %f ", &v18, 0x20u);
    }
  }

  else
  {
    v7 = __VGLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = this[2].i64[1];
      v9 = *this[4].i64;
      v18 = 134218240;
      v19 = v8;
      v20 = 2048;
      v21 = v9;
      _os_log_impl(&dword_270F06000, v7, OS_LOG_TYPE_INFO, " Collecting data for the ear side smoothing buffer: %zu / %zu ", &v18, 0x16u);
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
  return v14 | v15 | v13;
}

void vg::ear_detection::EarSideSmoothPredictor::EarSideSmoothPredictor()
{
  operator new();
}

{
  operator new();
}

void vg::ear_detection::EarSideSmoothPredictor::~EarSideSmoothPredictor(vg::ear_detection::EarSideSmoothPredictor *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    v3 = std::deque<vg::ear_detection::EarSide>::~deque[abi:ne200100](v2);
    MEMORY[0x2743B9370](v3, 0x1080C4071CF54B9);
  }
}

void *std::deque<vg::ear_detection::EarSide>::push_back(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<vg::ear_detection::EarSide>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<vg::ear_detection::EarSide>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<IOSurface * {__strong}>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<vg::ear_detection::EarSide *>::emplace_back<vg::ear_detection::EarSide *&>(a1, &v10);
}

void sub_270F12994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<vg::ear_detection::EarSide *>::emplace_back<vg::ear_detection::EarSide *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<IOSurface * {__strong}>>(result, v11);
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

const void **std::__split_buffer<vg::ear_detection::EarSide *>::emplace_front<vg::ear_detection::EarSide *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<IOSurface * {__strong}>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<vg::ear_detection::EarSide *>::emplace_back<vg::ear_detection::EarSide *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<IOSurface * {__strong}>>(result[4], v11);
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

const void **std::__split_buffer<vg::ear_detection::EarSide *>::emplace_front<vg::ear_detection::EarSide *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<IOSurface * {__strong}>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t std::deque<vg::ear_detection::EarSide>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

uint64_t std::deque<vg::ear_detection::EarSide>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<vg::ear_detection::EarSide *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<vg::ear_detection::EarSide *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void vg::ear_detection::EarPoseDetectorImpl::detect(vg::ear_detection::EarPoseDetectorImpl *this@<X0>, IOSurface *a2@<X1>, IOSurface *a3@<X2>, simd::float3x3 a4@<0:Q0, 16:Q1, 32:Q2>, uint64_t a5@<X8>)
{
  v75 = *a4.columns[1].i64;
  v77 = a4.columns[2];
  v73 = a4.columns[0].f32[0];
  v102 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  vg::ear_detection::EarBoundingBoxModel::predictBoundingBox(*this, v8, v100);
  if ((v101 & 1) == 0)
  {
    goto LABEL_29;
  }

  vg::ear_detection::EarLandmarksModel::predictLandmarks(*(this + 1), v8, v100, v97);
  if ((v99 & 1) == 0)
  {
    goto LABEL_29;
  }

  v10 = vg::ear_detection::EarPoseDetectorImpl::checkEarQuality(this, v8, v9, v100, v97);
  if (!v10)
  {
    v11 = vg::ear_detection::EarLandmarksModel::estimateEarSide(v98[0].f64);
    v12 = v11;
    if ((v11 & 0x100000000) != 0)
    {
      if (*(this + 10) != v11)
      {
        *(this + 9) = 0;
      }

      v13 = [(IOSurface *)v9 width];
      v14 = [(IOSurface *)v9 height];
      v15 = [(IOSurface *)v8 width];
      v16 = [(IOSurface *)v8 height];
      v17.f32[0] = v13;
      v18.i64[0] = v15;
      v18.i64[1] = v16;
      v17.f32[1] = v14;
      __asm { FMOV            V1.2S, #-1.0 }

      v24 = vadd_f32(v17, _D1);
      v25 = vdiv_f32(v17, vcvt_f32_f64(vcvtq_f64_s64(v18)));
      v31 = vmul_f32(v25, vcvt_f32_f64(v98[0]));
      v26 = vmul_f32(v25, vcvt_f32_f64(*(&v98[19] + 8)));
      v27 = vmul_f32(vadd_f32(v31, v26), 0x3F0000003F000000);
      v28 = vbic_s8(vbsl_s8(vcgt_f32(v27, v24), v24, v27), vcltz_f32(v27));
      v29 = vsub_f32(v26, v31);
      v30 = v26.f32[1] - v31.f32[1];
      v66 = v29;
      v67 = v26;
      v31.i32[0] = vsub_f32(v31, v26).u32[0];
      if (v12 != 1)
      {
        v30 = v31.f32[1] - v26.f32[1];
      }

      v70 = v30;
      v96.n128_u32[2] = 0;
      v32 = v12 == 1 ? v31.f32[0] : v29.f32[0];
      v68 = v32;
      v96 = vg::ear_detection::pointFromPixelOnDepthImage(v9, *&v28, v73, v75, v77);
      v33 = vmulq_f32(v96, v96);
      if ((v33.f32[2] + vaddv_f32(*v33.f32)) != 0.0)
      {
        v71 = __PAIR64__(LODWORD(v68), LODWORD(v70));
        v34 = vmla_f32(v28, 0x3F0000003F000000, v71);
        v95 = vg::ear_detection::pointFromPixelOnDepthImage(v9, COERCE_DOUBLE(vbic_s8(vbsl_s8(vcgt_f32(v34, v24), v24, v34), vcltz_f32(v34))), v73, v75, v77);
        v35 = vmulq_f32(v95, v95);
        if ((v35.f32[2] + vaddv_f32(*v35.f32)) != 0.0)
        {
          __asm { FMOV            V0.2S, #0.75 }

          v37 = vmla_f32(v28, _D0, v71);
          v94 = vg::ear_detection::pointFromPixelOnDepthImage(v9, COERCE_DOUBLE(vbic_s8(vbsl_s8(vcgt_f32(v37, v24), v24, v37), vcltz_f32(v37))), v73, v75, v77);
          v38 = vmulq_f32(v94, v94);
          if ((v38.f32[2] + vaddv_f32(*v38.f32)) != 0.0)
          {
            v39 = vbic_s8(vbsl_s8(vcgt_f32(v67, v24), v24, v67), vcltz_f32(v67));
            v93 = vg::ear_detection::pointFromPixelOnDepthImage(v9, *&v39, v73, v75, v77);
            v40 = vmulq_f32(v93, v93);
            if ((v40.f32[2] + vaddv_f32(*v40.f32)) != 0.0)
            {
              v41 = vmla_f32(v39, vdup_n_s32(0x3E4CCCCDu), v66);
              v92 = vg::ear_detection::pointFromPixelOnDepthImage(v9, COERCE_DOUBLE(vbic_s8(vbsl_s8(vcgt_f32(v41, v24), v24, v41), vcltz_f32(v41))), v73, v75, v77);
              v42 = vmulq_f32(v92, v92);
              if ((v42.f32[2] + vaddv_f32(*v42.f32)) != 0.0)
              {
                if (vg::shared::arePointsCollinear(&v96, &v95, &v94, 0.9) && vg::shared::arePointsCollinear(&v96, &v93, &v92, 0.9))
                {
                  v85 = 0u;
                  v86 = 0u;
                  v83 = 0u;
                  v84 = 0u;
                  v87 = 0;
                  v88 = 0;
                  memset(v91, 0, sizeof(v91));
                  std::vector<float>::reserve(v91, 0x62uLL);
                  for (i = 16; i != 1192; i += 24)
                  {
                    std::vector<float>::emplace_back<double const&>(v91, &v97[i]);
                    std::vector<float>::emplace_back<double const&>(v91, &v97[i + 8]);
                  }

                  v44 = vg::ear_detection::EarPoseDetectorImpl::computeEarPlaneNormal(v73, v75, v77, this, *&v91[0], v12, v8, v9);
                  v45 = vmulq_f32(v44, v44);
                  *&v46 = v45.f32[2] + vaddv_f32(*v45.f32);
                  *v45.f32 = vrsqrte_f32(v46);
                  *v45.f32 = vmul_f32(*v45.f32, vrsqrts_f32(v46, vmul_f32(*v45.f32, *v45.f32)));
                  v81 = vnegq_f32(vmulq_n_f32(v44, vmul_f32(*v45.f32, vrsqrts_f32(v46, vmul_f32(*v45.f32, *v45.f32))).f32[0]));
                  v80 = 0;
                  *v79 = 0u;
                  if (vg::shared::intersectPlane(&v81, &v96, v79, &v93, &v80))
                  {
                    v48 = v81;
                    v78 = v81;
                    if (fabsf(v81.f32[2]) >= 0.1)
                    {
                      v54 = *(this + 9);
                      if (v54)
                      {
                        v47 = vmlaq_n_f32(vmulq_n_f32(*(this + 3), 1.0 - *(this + 16)), v81, *(this + 16));
                        *(this + 3) = v47;
                        v78 = v47;
                      }

                      else
                      {
                        v48 = v81;
                        *(this + 3) = v81;
                      }

                      v48.i32[0] = 0;
                      v47.i32[0] = v12;
                      v55 = vdupq_lane_s32(*&vceqq_s32(v47, v48), 0);
                      v56.i64[0] = 0;
                      v56.i64[1] = v78.u32[0];
                      v57.i64[0] = 0;
                      v57.i32[3] = 0;
                      *&v57.i32[2] = -v78.f32[0];
                      v58 = vbslq_s8(v55, v57, v56);
                      *(this + 9) = v54 + 1;
                      v59 = v78.f32[2];
                      v76 = v58;
                      if (v78.f32[2] == 0.0)
                      {
                        v59 = 0.001;
                      }

                      v74 = atanf(*&v58.i32[2] / v59);
                      v69 = asinf(v78.f32[1]);
                      CompactBoundingBox = vg::ear_detection::EarLandmarksModel::Landmarks::makeCompactBoundingBox(v97, 0.1);
                      v60 = [(IOSurface *)v8 width];
                      v61 = [(IOSurface *)v8 height];
                      *&v62 = 0;
                      *(&v62 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(0.25, *v78.f32, 1));
                      *&v63 = 0;
                      *(&v63 + 1) = v78.u32[2];
                      v64.i64[0] = v60;
                      v64.i64[1] = v61;
                      v65 = vcvtq_f64_s64(v64);
                      LODWORD(buf) = v12;
                      v83 = v76;
                      v84 = v62;
                      v85 = v63;
                      v86 = xmmword_270FA6700;
                      v89 = vmul_f32(__PAIR64__(LODWORD(v69), LODWORD(v74)), 0xC2652EE042652EE0);
                      v90 = vdivq_f32(CompactBoundingBox, vcvt_hight_f32_f64(vcvt_f32_f64(v65), v65));
                      _ZNSt3__127__optional_move_assign_baseIN2vg13ear_detection7EarPoseELb0EECI2NS_24__optional_destruct_baseIS3_Lb0EEEIJRS3_EEENS_10in_place_tEDpOT_(a5, &buf);
                      v53 = 0;
                      goto LABEL_41;
                    }

                    v49 = __VGLogSharedInstance();
                    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                    {
                      *v79 = 0;
                      v50 = " Frame rejected by pose estimator because of noise in angle estimation. test ";
LABEL_33:
                      _os_log_impl(&dword_270F06000, v49, OS_LOG_TYPE_DEBUG, v50, v79, 2u);
                    }
                  }

                  else
                  {
                    v49 = __VGLogSharedInstance();
                    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                    {
                      *v79 = 0;
                      v50 = " Frame rejected by pose estimator because of failing normal - plane intersection test ";
                      goto LABEL_33;
                    }
                  }

                  *a5 = 0;
                  *(a5 + 176) = 0;
                  v53 = 1;
LABEL_41:
                  *(a5 + 192) = v53;
                  vg::ear_detection::EarPose::~EarPose(&buf);
                  goto LABEL_30;
                }

                v51 = __VGLogSharedInstance();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
                {
                  LOWORD(buf) = 0;
                  _os_log_impl(&dword_270F06000, v51, OS_LOG_TYPE_DEBUG, " Frame rejected by pose estimator because of noisy depth ", &buf, 2u);
                }
              }
            }
          }
        }
      }
    }

LABEL_29:
    *a5 = 0;
    *(a5 + 176) = 0;
    *(a5 + 192) = 1;
    goto LABEL_30;
  }

  *a5 = 0;
  *(a5 + 176) = 0;
  *(a5 + 192) = v10;
LABEL_30:

  v52 = *MEMORY[0x277D85DE8];
}

void sub_270F13650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  vg::ear_detection::EarPose::~EarPose(&a29);

  _Unwind_Resume(a1);
}

uint64_t vg::ear_detection::EarPoseDetectorImpl::checkEarQuality(vg::ear_detection::EarPoseDetectorImpl *this, IOSurface *a2, IOSurface *a3, float32x2_t *a4, const vg::ear_detection::EarLandmarksModel::Landmarks *a5)
{
  v9 = a2;
  v10 = a3;
  if (vg::ear_detection::isTooClose(v10, v11))
  {
    v12 = __VGLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_DEBUG, " Frame rejected by pose estimator because of camera too close. ", buf, 2u);
    }

    v13 = 6;
    goto LABEL_14;
  }

  if (a4[3].f32[0] < *(this + 4))
  {
    v12 = __VGLogSharedInstance();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:
      v13 = 1;
      goto LABEL_14;
    }

    *v28 = 0;
    v14 = " Frame rejected by pose estimator because of ear not present. ";
    v15 = v28;
LABEL_8:
    _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_DEBUG, v14, v15, 2u);
    goto LABEL_9;
  }

  if (a4[3].f32[1] < *(this + 5))
  {
    v12 = __VGLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *v27 = 0;
      _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_DEBUG, " Frame rejected by pose estimator because of ear occlusion. ", v27, 2u);
    }

    v13 = 4;
    goto LABEL_14;
  }

  if (vg::ear_detection::EarBoundingBoxModel::BoundingBox::getMeanVisibility(a4) < *(this + 6))
  {
    v12 = __VGLogSharedInstance();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v26 = 0;
    v14 = " Frame rejected by pose estimator because of low confidence bbox ";
    v15 = &v26;
    goto LABEL_8;
  }

  if (vg::ear_detection::EarLandmarksModel::Landmarks::getVisibleLandmarksFraction(a5, *(this + 7)) < *(this + 8))
  {
    v12 = __VGLogSharedInstance();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v25 = 0;
    v14 = " Frame rejected by pose estimator because of low percentile confidence landmarks ";
    v15 = &v25;
    goto LABEL_8;
  }

  v17 = [(IOSurface *)v10 width];
  v18 = [(IOSurface *)v9 width];
  v19 = [(IOSurface *)v10 height];
  v20 = [(IOSurface *)v9 height];
  v21 = v17 / v18;
  v22 = v19 / v20;
  v23.n128_f32[0] = v21 * COERCE_FLOAT(*a4->f32);
  v23.n128_u32[1] = vmuls_lane_f32(v22, *a4, 1);
  v23.n128_u64[1] = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(v22, *a4->f32, 3)), COERCE_UNSIGNED_INT(vmuls_lane_f32(v21, *a4->f32, 2)));
  if (!vg::ear_detection::isEarTooFar(v10, v23))
  {
    v13 = 0;
    goto LABEL_15;
  }

  v12 = __VGLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *v24 = 0;
    _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_DEBUG, " Frame rejected by pose estimator because of camera too far. ", v24, 2u);
  }

  v13 = 7;
LABEL_14:

LABEL_15:
  return v13;
}

void *std::vector<float>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(result, a2);
    }

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

float *std::vector<float>::emplace_back<double const&>(const void **a1, double *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = *a1;
    v9 = v5 - *a1;
    v10 = (v9 >> 2) + 1;
    if (v10 >> 62)
    {
      std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v13);
    }

    v14 = (4 * (v9 >> 2));
    v15 = *a2;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *a1;
    *a1 = 0;
    a1[1] = v7;
    a1[2] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *v5 = v6;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return v7 - 1;
}

__n128 vg::ear_detection::EarPoseDetectorImpl::computeEarPlaneNormal(float a1, double a2, __n128 a3, uint64_t a4, float *a5, int a6, void *a7, void *a8)
{
  vg::ear_detection::EarPoseDetectorImpl::findROI(a5, a6, a7, a8, __p, a1, a2, a3);
  result.n128_f64[0] = vg::ear_detection::computePlaneNormal(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    v9 = result;
    operator delete(__p[0]);
    return v9;
  }

  return result;
}

void sub_270F13B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vg::ear_detection::EarPoseDetectorImpl::findROI(float *a1@<X1>, int a2@<W2>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>, float a6@<S0>, double a7@<D1>, __n128 a8@<Q2>)
{
  v59 = a3;
  v12 = a4;
  v13 = [(IOSurface *)v12 width];
  v14 = [(IOSurface *)v12 height];
  v15 = [v59 width];
  v16 = [v59 height];
  v17 = v13 / v15;
  v18 = v14 / v16;
  v19.f32[0] = v17 * *a1;
  v19.f32[1] = v18 * a1[1];
  v20.f32[0] = v17 * a1[26];
  v20.f32[1] = v18 * a1[27];
  v70 = v20;
  v71[0] = v19;
  EarTriangleROIVertex = vg::ear_detection::getEarTriangleROIVertex(a2, v19, v20);
  v69 = EarTriangleROIVertex;
  v23 = v70;
  v22 = v71[0];
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  vg::IOSurfaceData::IOSurfaceData(v68, v12, 1);
  v66.i32[0] = 0;
  std::vector<float>::vector[abi:ne200100](__p, -[IOSurface height](v12, "height") * -[IOSurface width](v12, "width"));
  v24 = [(IOSurface *)v12 width];
  v25 = [(IOSurface *)v12 height];
  v26 = vminnm_f32(EarTriangleROIVertex, vminnm_f32(v22, v23));
  v27 = vmaxnm_f32(EarTriangleROIVertex, vmaxnm_f32(v22, v23));
  if (v25)
  {
    v28 = 0;
    v29 = 0;
    v30 = v68[4];
    v31 = v68[5];
    v32 = __p[0];
    do
    {
      v33 = v24;
      v34 = v30;
      v35 = v28;
      if (v24)
      {
        do
        {
          v36 = *v34;
          v34 += 4;
          v32[v35++] = v36;
          --v33;
        }

        while (v33);
      }

      ++v29;
      v28 += v24;
      v30 = &v31[v30];
    }

    while (v29 != v25);
  }

  v37 = v26.f32[0];
  v60 = v27.f32[0];
  if (v26.f32[0] < v27.f32[0])
  {
    v61 = v26.f32[1];
    v38 = v27.f32[1];
    v39 = v13 + -1.0;
    v40 = v14 + -1.0;
    v41 = vdup_n_s32(0x4479FFFFu);
    do
    {
      if (v61 < v38)
      {
        v42 = v37;
        if (v39 < v37)
        {
          v42 = v39;
        }

        v65 = v42;
        v43 = v61;
        do
        {
          v44.f32[0] = v37;
          v44.f32[1] = v43;
          v66 = v44;
          if (vg::shared::isPointInTriangle(&v66, v71, &v70, &v69))
          {
            v45 = [(IOSurface *)v12 width];
            *(__p[0] + v45 * v43 + v37) = 0;
            if (v40 >= v43)
            {
              v46 = v43;
            }

            else
            {
              v46 = v40;
            }

            v47 = vg::ear_detection::pointFromPixelOnDepthImage(v12, COERCE_DOUBLE(__PAIR64__(LODWORD(v46), LODWORD(v65))), a6, a7, a8);
            *&v48 = vmul_f32(v47.n128_u64[0], v41);
            DWORD2(v48) = vmuls_lane_f32(1000.0, v47, 2);
            v50 = *(a5 + 8);
            v49 = *(a5 + 16);
            if (v50 >= v49)
            {
              v52 = (v50 - *a5) >> 4;
              if ((v52 + 1) >> 60)
              {
                std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
              }

              v53 = v49 - *a5;
              v54 = v53 >> 3;
              if (v53 >> 3 <= (v52 + 1))
              {
                v54 = v52 + 1;
              }

              if (v53 >= 0x7FFFFFFFFFFFFFF0)
              {
                v55 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v55 = v54;
              }

              if (v55)
              {
                _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv4_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a5, v55);
              }

              *(16 * v52) = v48;
              v51 = 16 * v52 + 16;
              v56 = *(a5 + 8) - *a5;
              v57 = (16 * v52 - v56);
              memcpy(v57, *a5, v56);
              v58 = *a5;
              *a5 = v57;
              *(a5 + 8) = v51;
              *(a5 + 16) = 0;
              if (v58)
              {
                operator delete(v58);
              }
            }

            else
            {
              *v50 = v48;
              v51 = (v50 + 1);
            }

            *(a5 + 8) = v51;
          }

          ++v43;
        }

        while (v38 != v43);
      }

      ++v37;
    }

    while (v37 != v60);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  vg::IOSurfaceData::~IOSurfaceData(v68);
}

void sub_270F13F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, id a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  vg::IOSurfaceData::~IOSurfaceData(&a30);
  v33 = *v31;
  if (*v31)
  {
    *(v31 + 8) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void vg::ear_detection::EarPoseDetector::~EarPoseDetector(vg::ear_detection::EarBoundingBoxModel ***this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v2 = v1[1];
    v1[1] = 0;
    if (v2)
    {
      vg::ear_detection::EarLandmarksModel::~EarLandmarksModel(v2);
      MEMORY[0x2743B9370]();
    }

    v3 = std::unique_ptr<vg::ear_detection::EarBoundingBoxModel>::~unique_ptr[abi:ne200100](v1);
    MEMORY[0x2743B9370](v3, 0x1020C40B1F4174DLL);
  }
}

uint64_t _ZNSt3__127__optional_move_assign_baseIN2vg13ear_detection7EarPoseELb0EECI2NS_24__optional_destruct_baseIS3_Lb0EEEIJRS3_EEENS_10in_place_tEDpOT_(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v9;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 128, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 2);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 152, *(a2 + 19), *(a2 + 20), (*(a2 + 20) - *(a2 + 19)) >> 2);
  *(a1 + 176) = 1;
  return a1;
}

void sub_270F141AC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 136) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_270F142C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vg::ear_detection::EarPoseDetectorImpl::EarPoseDetectorImpl(uint64_t a1, uint64_t a2)
{
  vg::ear_detection::EarBoundingBoxModel::create((a2 + 24), a1);
  vg::ear_detection::EarLandmarksModel::create((a2 + 24), (a1 + 8));
  *(a1 + 16) = *a2;
  *(a1 + 32) = *(a2 + 16);
  *(a1 + 36) = 0x100000000;
  *(a1 + 64) = 1051372203;
  return a1;
}

vg::ear_detection::EarBoundingBoxModel **std::unique_ptr<vg::ear_detection::EarBoundingBoxModel>::~unique_ptr[abi:ne200100](vg::ear_detection::EarBoundingBoxModel **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vg::ear_detection::EarBoundingBoxModel::~EarBoundingBoxModel(v2);
    MEMORY[0x2743B9370]();
  }

  return a1;
}

void vg::ear_detection::makeSquareCropBox(uint32x2_t *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v4 = a3 >= 0.0 && a3 <= 1.0;
  if (v4)
  {
    v9 = vcvt_f32_u32(*a1);
    v10 = v9.f32[0] + -1.0;
    v11 = v9.f32[1] + -1.0;
    if (v9.f32[1] <= v9.f32[0])
    {
      *&v13 = (v9.f32[0] - v9.f32[1]) * a3;
      v12 = 0.0;
      v4 = ((*&v13 + v9.f32[1]) + -1.0) <= v10;
      v10 = (*&v13 + v9.f32[1]) + -1.0;
      if (!v4)
      {
        v5 = __VGLogSharedInstance();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }

        v15 = 0;
        v6 = " Invalid alignment, box bottom-right corner extends beyond image size. ";
        v7 = &v15;
        goto LABEL_7;
      }
    }

    else
    {
      v12 = (v9.f32[1] - v9.f32[0]) * a3;
      LODWORD(v13) = 0;
      v4 = ((v12 + v9.f32[0]) + -1.0) <= v11;
      v11 = (v12 + v9.f32[0]) + -1.0;
      if (!v4)
      {
        v5 = __VGLogSharedInstance();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }

        v16 = 0;
        v6 = " Invalid alignment, box bottom-right corner extends beyond image size. ";
        v7 = &v16;
        goto LABEL_7;
      }
    }

    *(&v13 + 1) = v12;
    *(&v13 + 1) = __PAIR64__(LODWORD(v11), LODWORD(v10));
    *a2 = v13;
    v8 = 1;
    goto LABEL_16;
  }

  v5 = __VGLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v6 = " Invalid input alignment. ";
    v7 = buf;
LABEL_7:
    _os_log_impl(&dword_270F06000, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
  }

LABEL_8:

  v8 = 0;
  *a2 = 0;
LABEL_16:
  *(a2 + 16) = v8;
}

uint64_t vg::ear_detection::EarLandmarksModelImpl::EarLandmarksModelImpl(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  *(a1 + 16) = 0u;
  v4 = (a1 + 16);
  *(a1 + 64) = 0u;
  v5 = (a1 + 64);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  vg::ear_detection::LandmarkModelPreProcessor::create(0x190, (a1 + 80));
  v6 = VGLogEarLandmarksModel();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_INFO, "Using model root path %s", buf, 0xCu);
  }

  vg::shared::VGE5RT::compileModel(a2, 1, buf);
  std::shared_ptr<E5RT::ExecutionStreamOperation>::operator=[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(a1, buf);
  v8 = *buf;
  *buf = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*a1);
  std::string::basic_string[abi:ne200100]<0>(buf, "input_image");
  v10 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(InputPorts, buf);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = v10[5];
  v11 = v10[6];
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 40);
  *(a1 + 32) = v12;
  *(a1 + 40) = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v30 < 0)
  {
    operator delete(*buf);
  }

  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*a1);
  std::string::basic_string[abi:ne200100]<0>(buf, "detection");
  v15 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(OutputPorts, buf);
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v17 = v15[5];
  v16 = v15[6];
  if (v16)
  {
    atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 56);
  *(a1 + 48) = v17;
  *(a1 + 56) = v16;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v30 < 0)
  {
    operator delete(*buf);
  }

  PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(*(a1 + 48));
  E5RT::OperandDescriptor::TryAsTensorDescriptor(PortDescriptorRef);
  E5RT::TensorDescriptor::AllocateMemory();
  std::shared_ptr<E5RT::BufferObject>::operator=[abi:ne200100]<E5RT::BufferObject,std::default_delete<E5RT::BufferObject>,0>(v5, buf);
  v20 = *buf;
  *buf = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(a1 + 48);
  v22 = *(a1 + 72);
  v27 = *(a1 + 64);
  v28 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::IOPort::BindMemoryObject();
  v23 = v28;
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  E5RT::ExecutionStream::CreateExecutionStream(buf, v23);
  std::shared_ptr<E5RT::ExecutionStream>::operator=[abi:ne200100]<E5RT::ExecutionStream,std::default_delete<E5RT::ExecutionStream>,0>(v4, buf);
  v24 = *buf;
  *buf = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_270F147F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (__p)
  {
    vg::ear_detection::EarLandmarksModelImpl::EarLandmarksModelImpl(__p);
  }

  std::unique_ptr<vg::ear_detection::LandmarkModelPreProcessor>::~unique_ptr[abi:ne200100]((v16 + 80));
  vg::ear_detection::EarLandmarksModelImpl::EarLandmarksModelImpl(v16);
  _Unwind_Resume(a1);
}

id VGLogEarLandmarksModel(void)
{
  if (VGLogEarLandmarksModel(void)::onceToken != -1)
  {
    VGLogEarLandmarksModel();
  }

  v1 = VGLogEarLandmarksModel(void)::handle;

  return v1;
}

void *std::shared_ptr<E5RT::ExecutionStreamOperation>::operator=[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<E5RT::ExecutionStreamOperation>::shared_ptr[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void *std::shared_ptr<E5RT::BufferObject>::operator=[abi:ne200100]<E5RT::BufferObject,std::default_delete<E5RT::BufferObject>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<E5RT::BufferObject>::shared_ptr[abi:ne200100]<E5RT::BufferObject,std::default_delete<E5RT::BufferObject>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void *std::shared_ptr<E5RT::ExecutionStream>::operator=[abi:ne200100]<E5RT::ExecutionStream,std::default_delete<E5RT::ExecutionStream>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<E5RT::ExecutionStream>::shared_ptr[abi:ne200100]<E5RT::ExecutionStream,std::default_delete<E5RT::ExecutionStream>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

id **std::unique_ptr<vg::ear_detection::LandmarkModelPreProcessor>::~unique_ptr[abi:ne200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x2743B9370](v2, 0x80C40B8603338);
  }

  return a1;
}

void vg::ear_detection::EarLandmarksModelImpl::predictLandmarks(uint64_t *a1@<X0>, void *a2@<X1>, int8x16_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = a2;
  v8 = [v7 width];
  v46 = __PAIR64__([v7 height], v8);
  *v45[0].f32 = 0uLL;
  LODWORD(v9) = 1036831949;
  *&v10 = vg::ear_detection::makeLargeBox(&v46, *a3, v9);
  *v45[0].f32 = v10;
  v11 = vg::ear_detection::LandmarkModelPreProcessor::preProcessImage(a1[10], v7, v45);
  if (v11)
  {
    PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(a1[4]);
    v13 = E5RT::OperandDescriptor::TryAsTensorDescriptor(PortDescriptorRef);
    TensorStrides = E5RT::TensorDescriptor::GetTensorStrides(v13);
    v15 = *(*(TensorStrides + 8) - 16);
    if (v15 != [v11 bytesPerRow])
    {
      v16 = [v11 vg_convertSurfaceStride:*(*(TensorStrides + 8) - 16)];

      v11 = v16;
    }

    v17 = a1[4];
    E5RT::BufferObject::CreateBufferFromHandle<__IOSurface *>();
    v43 = *&__src[0];
    if (*&__src[0])
    {
      operator new();
    }

    v44 = 0;
    E5RT::IOPort::BindMemoryObject();
    *&__src[0] = 0;
    v20 = a1[1];
    v19 = a1[2];
    v41 = *a1;
    v42 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    E5RT::ExecutionStream::EncodeOperation();
    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    E5RT::ExecutionStream::ExecuteStreamSync(a1[2]);
    E5RT::ExecutionStream::ResetStream(a1[2]);
    v21 = a1[8];
    v22 = E5RT::BufferObject::GetHandle<__IOSurface *>();
    if (v22)
    {
      v23 = E5RT::IOPort::GetPortDescriptorRef(a1[6]);
      v24 = E5RT::OperandDescriptor::TryAsTensorDescriptor(v23);
      vg::shared::VGE5RT::convertSurfaceTo2DMatrix(v22, v24, v25, &v39);
      if (v40 == 49)
      {
        v26 = 0;
        __src[0] = *a3;
        v27 = v39;
        v28 = &__src[2];
        v29 = 49;
        while (1)
        {
          v37 = 0uLL;
          v30 = *&v27[(v26 + v29)];
          v37.f64[0] = *&v27[v26];
          v37.f64[1] = v30;
          v31 = a1[10];
          vg::ear_detection::LandmarkModelPreProcessor::makeScaledPoint(v45, &v37, &v35);
          if ((v36 & 1) == 0)
          {
            break;
          }

          v29 = v40;
          v27 = v39;
          v32 = v39[(v26 + 2 * v40)];
          *(v28 - 1) = v35;
          *v28 = v32;
          v28 += 6;
          if (++v26 == 49)
          {
            memcpy(a4, __src, 0x4B0uLL);
            a4[1200] = 1;
            goto LABEL_27;
          }
        }

        v34 = VGLogEarLandmarksModel();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          vg::ear_detection::EarLandmarksModelImpl::predictLandmarks();
        }
      }

      else
      {
        v34 = VGLogEarLandmarksModel();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          vg::ear_detection::EarLandmarksModelImpl::predictLandmarks();
        }
      }

      *a4 = 0;
      a4[1200] = 0;
LABEL_27:
      free(v39);
    }

    else
    {
      v33 = VGLogEarLandmarksModel();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        vg::ear_detection::EarLandmarksModelImpl::predictLandmarks();
      }

      *a4 = 0;
      a4[1200] = 0;
    }
  }

  else
  {
    v18 = VGLogEarLandmarksModel();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      vg::ear_detection::EarLandmarksModelImpl::predictLandmarks();
    }

    *a4 = 0;
    a4[1200] = 0;
  }
}

void vg::ear_detection::EarLandmarksModel::~EarLandmarksModel(vg::ear_detection::EarLandmarksModel *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::unique_ptr<vg::ear_detection::LandmarkModelPreProcessor>::~unique_ptr[abi:ne200100]((v1 + 80));
    v2 = *(v1 + 72);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = *(v1 + 56);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v1 + 40);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(v1 + 24);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = *(v1 + 8);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    MEMORY[0x2743B9370](v1, 0x20C40D3FB9507);
  }
}

void vg::ear_detection::EarLandmarksModel::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v4 = a1 + 23;
  if (*(a1 + 23) < 0)
  {
    if (!a1[1])
    {
LABEL_10:
      v13 = VGLogEarLandmarksModel();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        vg::ear_detection::EarLandmarksModel::create();
      }

      *a2 = 0;
      goto LABEL_20;
    }

    v5 = *a1;
  }

  else
  {
    v5 = a1;
    if (!*(a1 + 23))
    {
      goto LABEL_10;
    }
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  v18[0] = v7;
  v18[1] = @"ear_landmarks_detector_mlmodel";
  v18[2] = @"ear_landmarks_fp16.espresso.net";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v9 = [v6 pathWithComponents:v8];

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = v10;
  if (v9)
  {
    if ([v10 fileExistsAtPath:v9])
    {
      if (operator new(8uLL, MEMORY[0x277D826F0]))
      {
        v12 = v9;
        std::string::basic_string[abi:ne200100]<0>(&__p, [v9 UTF8String]);
        vg::ear_detection::EarLandmarksModel::EarLandmarksModel();
      }
    }

    else
    {
      v15 = VGLogEarLandmarksModel();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        vg::ear_detection::EarLandmarksModel::create(v9, v15);
      }
    }
  }

  else
  {
    v14 = VGLogEarLandmarksModel();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      vg::ear_detection::EarLandmarksModel::create(v4, a1, v14);
    }
  }

  *a2 = 0;

LABEL_20:
  v16 = *MEMORY[0x277D85DE8];
}

void sub_270F1516C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x2743B9360](v17, MEMORY[0x277D826F0]);

  _Unwind_Resume(a1);
}

float vg::ear_detection::EarLandmarksModel::Landmarks::getMeanLandmarkVisibility(vg::ear_detection::EarLandmarksModel::Landmarks *this)
{
  v1 = 0.0;
  for (i = 32; i != 1208; i += 24)
  {
    v1 = v1 + *(this + i);
  }

  return v1 / 49.0;
}

float vg::ear_detection::EarLandmarksModel::Landmarks::getVisibleLandmarksFraction(vg::ear_detection::EarLandmarksModel::Landmarks *this, float a2)
{
  v2 = 0;
  for (i = 32; i != 1208; i += 24)
  {
    if (*(this + i) > a2)
    {
      ++v2;
    }
  }

  return v2 / 49.0;
}

__n128 vg::ear_detection::EarLandmarksModel::Landmarks::makeCompactBoundingBox(vg::ear_detection::EarLandmarksModel::Landmarks *this, float a2)
{
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 0x1A0uLL, 0xE1AC2527uLL);
  v3 = 0;
  v4 = memptr;
  v5 = (this + 16);
  do
  {
    v6 = *v5;
    v5 = (v5 + 24);
    *&v4[v3] = vcvt_f32_f64(v6);
    v3 += 2;
  }

  while (v3 != 98);
  v7 = *v4;
  v8 = 2;
  v9.f32[0] = *v4;
  do
  {
    if (v4[v8] < v9.f32[0])
    {
      v9.f32[0] = v4[v8];
    }

    v8 += 2;
  }

  while (v8 != 98);
  for (i = 2; i != 98; i += 2)
  {
    if (v7 < v4[i])
    {
      v7 = v4[i];
    }
  }

  v11 = v4[1];
  v12 = 3;
  v13 = v11;
  do
  {
    if (v4[v12] < v13)
    {
      v13 = v4[v12];
    }

    v12 += 2;
  }

  while (v12 != 99);
  for (j = 3; j != 99; j += 2)
  {
    if (v11 < v4[j])
    {
      v11 = v4[j];
    }
  }

  *v15.f32 = vsub_f32(__PAIR64__(LODWORD(v11), LODWORD(v7)), __PAIR64__(LODWORD(v13), v9.u32[0]));
  v15.i64[1] = v15.i64[0];
  v16 = vmulq_n_f32(v15, a2);
  v9.f32[1] = v13;
  v9.i64[1] = __PAIR64__(LODWORD(v11), LODWORD(v7));
  *&v17 = vsubq_f32(v9, v16).u64[0];
  *(&v17 + 1) = vaddq_f32(v9, v16).i64[1];
  v20 = v17;
  free(v4);
  return v20;
}

uint64_t vg::ear_detection::EarLandmarksModel::estimateEarSide(double *a1)
{
  v1 = a1[1];
  v2 = a1[12] - *a1;
  v3 = a1[13] - v1;
  v4 = a1[39] - *a1;
  *&v1 = a1[40] - v1;
  if (((v2 * *&v1) - (v3 * v4)) > 0.0)
  {
    return 0x100000000;
  }

  else
  {
    return 0x100000001;
  }
}

void ___ZL22VGLogEarLandmarksModelv_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "EarLandmarksModel");
  v1 = VGLogEarLandmarksModel(void)::handle;
  VGLogEarLandmarksModel(void)::handle = v0;
}

uint64_t *std::shared_ptr<E5RT::ExecutionStreamOperation>::shared_ptr[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743B9370);
}

uint64_t std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::__get_deleter(uint64_t a1, uint64_t a2)
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

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279E28D10, MEMORY[0x277D825F8]);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t *std::shared_ptr<E5RT::BufferObject>::shared_ptr[abi:ne200100]<E5RT::BufferObject,std::default_delete<E5RT::BufferObject>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

uint64_t std::__shared_ptr_pointer<E5RT::BufferObject  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<E5RT::BufferObject  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::shared_ptr<E5RT::ExecutionStream>::shared_ptr[abi:ne200100]<E5RT::ExecutionStream,std::default_delete<E5RT::ExecutionStream>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

uint64_t std::__shared_ptr_pointer<E5RT::ExecutionStream  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<E5RT::ExecutionStream  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t vg::ear_detection::EarLandmarksModelImpl::EarLandmarksModelImpl(uint64_t a1)
{
  return (*(*a1 + 8))(a1);
}

{
  return (*(*a1 + 8))(a1);
}

{
  return (*(*a1 + 8))(a1);
}

void vg::ear_detection::EarLandmarksModelImpl::EarLandmarksModelImpl(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[3];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = a1[1];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void vg::ear_detection::EarLandmarksModelImpl::predictLandmarks()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270F06000, v0, v1, "Incorrect number of detections for landmarks points.", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270F06000, v0, v1, "Failed to scale CG point.", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270F06000, v0, v1, "Invalid landmark network output.", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270F06000, v0, v1, "Failed to prep image for landmark model.", v2, v3, v4, v5, v6);
}

void vg::ear_detection::EarLandmarksModel::create(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270F06000, a2, OS_LOG_TYPE_ERROR, "No model found at path: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void vg::ear_detection::EarLandmarksModel::create(char *a1, void *a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*a1 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v5 = 136315650;
  v6 = v3;
  v7 = 2112;
  v8 = @"ear_landmarks_detector_mlmodel";
  v9 = 2112;
  v10 = @"ear_landmarks_fp16.espresso.net";
  _os_log_error_impl(&dword_270F06000, log, OS_LOG_TYPE_ERROR, "Failed to create model path from modelRootPath: %s with directory: %@ and model file: %@", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

float32x2_t vg::ear_detection::getEarTriangleROIVertex(int a1, float32x2_t a2, float32x2_t a3)
{
  v3 = vmul_f32(vadd_f32(a2, a3), 0x3F0000003F000000);
  v4 = vsub_f32(a2, a3);
  v5 = sqrtf(vaddv_f32(vmul_f32(v4, v4)));
  v6 = vsub_f32(vext_s8(a2, a3, 4uLL), vext_s8(a3, a2, 4uLL));
  v7 = -(v5 * 0.5);
  if (a1 != 1)
  {
    v7 = v5 * 0.5;
  }

  v8 = vmul_f32(v6, v6);
  v8.i32[0] = vadd_f32(v8, vdup_lane_s32(v8, 1)).u32[0];
  v9 = vrsqrte_f32(v8.u32[0]);
  v10 = vmul_f32(v9, vrsqrts_f32(v8.u32[0], vmul_f32(v9, v9)));
  return vmla_n_f32(v3, vmul_n_f32(v6, vmul_f32(v10, vrsqrts_f32(v8.u32[0], vmul_f32(v10, v10))).f32[0]), v7);
}

__n128 vg::ear_detection::pointFromPixelOnDepthImage(void *a1, double a2, float a3, double a4, __n128 a5)
{
  v15 = HIDWORD(a4);
  v5 = a1;
  v6 = [(IOSurface *)v5 width];
  v7 = [(IOSurface *)v5 height];
  if (*&a2 < 0.0 || (*(&a2 + 1) >= 0.0 ? (v8 = *&a2 < v6) : (v8 = 0), v8 ? (v9 = *(&a2 + 1) < v7) : (v9 = 0), !v9))
  {
    v10 = __VGLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_270F06000, v10, OS_LOG_TYPE_ERROR, " Point outside of depthImage image size bounds. ", buf, 2u);
    }
  }

  vg::IOSurfaceData::IOSurfaceData(buf, v5, 1);
  v11 = *(v20 + v21 * *(&a2 + 1) + v22 * *&a2);
  *&v12 = vdiv_f32(vmul_n_f32(vsub_f32(*&a2, a5.n128_u64[0]), v11), __PAIR64__(v15, LODWORD(a3)));
  *(&v12 + 1) = __PAIR64__(a5.n128_u32[3], LODWORD(v11));
  v18 = v12;
  vg::IOSurfaceData::~IOSurfaceData(buf);

  return v18;
}

double vg::ear_detection::computePlaneNormal(void *a1)
{
  MEMORY[0x2743B9790]((a1[1] - *a1) >> 4);
  v2 = vmulq_f32(v1, v1);
  *v2.i8 = vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  v2.i32[0] = vadd_f32(*v2.i8, vdup_lane_s32(*v2.i8, 1)).u32[0];
  v3 = vrsqrte_f32(v2.u32[0]);
  v4 = vmul_f32(v3, vrsqrts_f32(v2.u32[0], vmul_f32(v3, v3)));
  *&result = vmulq_n_f32(v1, vmul_f32(v4, vrsqrts_f32(v2.u32[0], vmul_f32(v4, v4))).f32[0]).u64[0];
  return result;
}

void vg::ear_detection::EarPCADetectorImpl::detect(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v89 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  if ((a4 & 0x100000000) != 0)
  {
    v11 = *&a4;
    if (fabsf(*&a4) < *(a1 + 44))
    {
      v12 = __VGLogSharedInstance();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(a1 + 44);
        *buf = 134218240;
        v83 = v11;
        v84 = 2048;
        *v85 = v13;
        _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_DEBUG, " Frame rejected by pose estimator because of front facing view, yaw = %f, limit = %f ", buf, 0x16u);
      }

      *a5 = 0;
      *(a5 + 176) = 0;
      v14 = 3;
      goto LABEL_15;
    }
  }

  vg::ear_detection::EarBoundingBoxModel::predictBoundingBox(*a1, v9, v87);
  if ((v88 & 1) == 0)
  {
    goto LABEL_14;
  }

  vg::ear_detection::EarLandmarksModel::predictLandmarks(*(a1 + 8), v9, v87, buf);
  if ((v86 & 1) == 0)
  {
    goto LABEL_14;
  }

  v15 = vg::ear_detection::EarPCADetectorImpl::checkEarQuality(a1, v9, v10, v87, buf);
  if (v15)
  {
    *a5 = 0;
    *(a5 + 176) = 0;
    *(a5 + 192) = v15;
    goto LABEL_16;
  }

  v16 = vg::ear_detection::EarLandmarksModel::estimateEarSide((v85 + 2));
  if (*(a1 + 48) == 1 && (v16 & 0x100000000) != 0)
  {
    v16 = vg::ear_detection::EarSideSmoothPredictor::estimateSmoothEarSide(*(a1 + 24), v16);
  }

  if ((v16 & 0x100000000) == 0)
  {
LABEL_14:
    *a5 = 0;
    *(a5 + 176) = 0;
    v14 = 1;
LABEL_15:
    *(a5 + 192) = v14;
    goto LABEL_16;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  BYTE12(v76) = 0;
  LOBYTE(v77) = 0;
  *__src = 0u;
  *__p = 0u;
  v81 = 0u;
  LODWORD(v71) = v16;
  std::vector<float>::reserve(__src, 0x31uLL);
  std::vector<float>::reserve(&__p[1], 0x31uLL);
  for (i = 0; i != 1176; i += 24)
  {
    v19 = &buf[i];
    v20 = __src[1];
    v21 = __p[0];
    if (__src[1] >= __p[0])
    {
      v24 = __src[0];
      v25 = __src[1] - __src[0];
      v26 = (__src[1] - __src[0]) >> 2;
      v27 = v26 + 1;
      if ((v26 + 1) >> 62)
      {
        goto LABEL_56;
      }

      if ((__p[0] - __src[0]) >> 1 > v27)
      {
        v27 = (__p[0] - __src[0]) >> 1;
      }

      if ((__p[0] - __src[0]) >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v27 = 0x3FFFFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(__src, v27);
      }

      v28 = (4 * v26);
      v21 = 0;
      v29 = *(v19 + 2);
      v30 = &v28[-((__src[1] - __src[0]) >> 2)];
      *v28 = v29;
      v23 = v28 + 1;
      memcpy(v30, v24, v25);
      v31 = __src[0];
      __src[0] = v30;
      __src[1] = v23;
      __p[0] = 0;
      if (v31)
      {
        operator delete(v31);
        v21 = __p[0];
      }
    }

    else
    {
      v22 = *(v19 + 2);
      *__src[1] = v22;
      v23 = (v20 + 4);
    }

    __src[1] = v23;
    v32 = &buf[i];
    if (v23 >= v21)
    {
      v35 = __src[0];
      v36 = v23 - __src[0];
      v37 = (v23 - __src[0]) >> 2;
      v38 = v37 + 1;
      if ((v37 + 1) >> 62)
      {
        goto LABEL_56;
      }

      if ((v21 - __src[0]) >> 1 > v38)
      {
        v38 = (v21 - __src[0]) >> 1;
      }

      if ((v21 - __src[0]) >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v38 = 0x3FFFFFFFFFFFFFFFLL;
      }

      if (v38)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(__src, v38);
      }

      v39 = v37;
      v40 = (4 * v37);
      v41 = *(v32 + 3);
      v42 = &v40[-v39];
      *v40 = v41;
      v34 = v40 + 1;
      memcpy(v42, v35, v36);
      v43 = __src[0];
      __src[0] = v42;
      __src[1] = v34;
      __p[0] = 0;
      if (v43)
      {
        operator delete(v43);
      }
    }

    else
    {
      v33 = *(v32 + 3);
      *v23 = v33;
      v34 = v23 + 1;
    }

    __src[1] = v34;
    v44 = &buf[i];
    v45 = v81;
    if (v81 >= *(&v81 + 1))
    {
      v47 = __p[1];
      v48 = v81 - __p[1];
      v49 = (v81 - __p[1]) >> 2;
      v50 = v49 + 1;
      if ((v49 + 1) >> 62)
      {
LABEL_56:
        std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
      }

      v51 = *(&v81 + 1) - __p[1];
      if ((*(&v81 + 1) - __p[1]) >> 1 > v50)
      {
        v50 = v51 >> 1;
      }

      v52 = v51 >= 0x7FFFFFFFFFFFFFFCLL;
      v53 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v52)
      {
        v53 = v50;
      }

      if (v53)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__p[1], v53);
      }

      v54 = (4 * v49);
      v55 = *(v44 + 8);
      v56 = &v54[-((v81 - __p[1]) >> 2)];
      *v54 = v55;
      v46 = v54 + 1;
      memcpy(v56, v47, v48);
      v57 = __p[1];
      __p[1] = v56;
      v81 = v46;
      if (v57)
      {
        operator delete(v57);
      }
    }

    else
    {
      *v81 = *(v44 + 8);
      v46 = (v45 + 4);
    }

    *&v81 = v46;
  }

  CompactBoundingBox = vg::ear_detection::EarLandmarksModel::Landmarks::makeCompactBoundingBox(buf, 0.1);
  v58 = [(IOSurface *)v9 width];
  v59 = [(IOSurface *)v9 height];
  v60.i64[0] = v58;
  v60.i64[1] = v59;
  v61 = vcvtq_f64_s64(v60);
  v78 = vdivq_f32(CompactBoundingBox, vcvt_hight_f32_f64(vcvt_f32_f64(v61), v61));
  memset(v70, 0, sizeof(v70));
  vg::ear_detection::EarLandmarksPCA::computePCA(*(a1 + 16), (v85 + 2), v71, v70);
  *&v76 = *&v70[0];
  *(&v76 + 1) = __PAIR64__(a4, DWORD2(v70[0]));
  LOBYTE(v77) = BYTE4(a4);
  v62 = v72;
  *a5 = v71;
  *(a5 + 16) = v62;
  v63 = v74;
  *(a5 + 32) = v73;
  *(a5 + 48) = v63;
  v64 = v76;
  *(a5 + 64) = v75;
  *(a5 + 80) = v64;
  v65 = v78;
  *(a5 + 96) = v77;
  *(a5 + 112) = v65;
  *(a5 + 128) = 0;
  *(a5 + 136) = 0;
  v66 = __src[0];
  v67 = __src[1];
  v68 = (__src[1] - __src[0]) >> 2;
  *(a5 + 144) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a5 + 128, v66, v67, v68);
  *(a5 + 152) = 0;
  *(a5 + 160) = 0;
  *(a5 + 168) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a5 + 152, __p[1], v81, (v81 - __p[1]) >> 2);
  *(a5 + 176) = 1;
  *(a5 + 192) = 0;
  if (__p[1])
  {
    *&v81 = __p[1];
    operator delete(__p[1]);
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }

LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
}

void sub_270F16948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v16 = *v14;
  if (*v14)
  {
    *(v13 + 136) = v16;
    operator delete(v16);
  }

  vg::ear_detection::EarPose::~EarPose(va);

  _Unwind_Resume(a1);
}

uint64_t vg::ear_detection::EarPCADetectorImpl::checkEarQuality(vg::ear_detection::EarPCADetectorImpl *this, IOSurface *a2, IOSurface *a3, float32x2_t *a4, const vg::ear_detection::EarLandmarksModel::Landmarks *a5)
{
  v9 = a2;
  v10 = a3;
  if (vg::ear_detection::isTooClose(v10, v11))
  {
    v12 = __VGLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_DEBUG, " Frame rejected by pose estimator because of camera too close. ", buf, 2u);
    }

    v13 = 6;
  }

  else if (a4[3].f32[0] >= *(this + 8))
  {
    if (a4[3].f32[1] >= *(this + 9))
    {
      MeanLandmarkVisibility = vg::ear_detection::EarLandmarksModel::Landmarks::getMeanLandmarkVisibility(a5);
      v15 = *(this + 10);
      if (MeanLandmarkVisibility >= v15 && vg::ear_detection::EarLandmarksModel::Landmarks::getVisibleLandmarksFraction(a5, v15) >= 0.5)
      {
        for (i = 704; i != 1136; i += 24)
        {
          if (*(a5 + i) < *(this + 10))
          {
            v12 = __VGLogSharedInstance();
            v13 = 2;
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_18;
            }

            v34 = 0;
            v16 = " Frame rejected by pose estimator because of low inner landmarks visibility ";
            v17 = &v34;
            goto LABEL_17;
          }
        }

        v20 = [(IOSurface *)v10 width];
        v21 = [(IOSurface *)v9 width];
        v22 = [(IOSurface *)v10 height];
        v23 = [(IOSurface *)v9 height];
        v24 = v20 / v21;
        v25 = v22 / v23;
        v26.n128_f32[0] = v24 * COERCE_FLOAT(*a4->f32);
        v26.n128_u32[1] = vmuls_lane_f32(v25, *a4, 1);
        v26.n128_u64[1] = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(v25, *a4->f32, 3)), COERCE_UNSIGNED_INT(vmuls_lane_f32(v24, *a4->f32, 2)));
        if (vg::ear_detection::isEarTooFar(v10, v26))
        {
          v12 = __VGLogSharedInstance();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *v33 = 0;
            _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_DEBUG, " Frame rejected by pose estimator because of camera too far. ", v33, 2u);
          }

          v13 = 7;
        }

        else
        {
          CompactBoundingBox = vg::ear_detection::EarLandmarksModel::Landmarks::makeCompactBoundingBox(a5, 0.1);
          v27 = [(IOSurface *)v9 height];
          v28 = [(IOSurface *)v9 width];
          if (CompactBoundingBox.n128_f32[0] >= 0.0)
          {
            v29 = (v28 - 1);
            if (CompactBoundingBox.n128_f32[0] <= v29 && CompactBoundingBox.n128_f32[1] >= 0.0)
            {
              v30 = (v27 - 1);
              if (CompactBoundingBox.n128_f32[1] <= v30 && CompactBoundingBox.n128_f32[2] >= 0.0 && CompactBoundingBox.n128_f32[2] <= v29 && CompactBoundingBox.n128_f32[3] >= 0.0 && CompactBoundingBox.n128_f32[3] <= v30)
              {
                v13 = 0;
                goto LABEL_19;
              }
            }
          }

          v12 = __VGLogSharedInstance();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *v32 = 0;
            _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_DEBUG, " Frame rejected by pose estimator because of box out of image bounds. ", v32, 2u);
          }

          v13 = 8;
        }
      }

      else
      {
        v12 = __VGLogSharedInstance();
        v13 = 2;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *v35 = 0;
          v16 = " Frame rejected by pose estimator because of low mean or percentile confidence landmarks ";
          v17 = v35;
LABEL_17:
          _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_DEBUG, v16, v17, 2u);
        }
      }
    }

    else
    {
      v12 = __VGLogSharedInstance();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *v36 = 0;
        _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_DEBUG, " Frame rejected by pose estimator because of ear occlusion. ", v36, 2u);
      }

      v13 = 4;
    }
  }

  else
  {
    v12 = __VGLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *v37 = 0;
      _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_DEBUG, " Frame rejected by pose estimator because of ear not present. ", v37, 2u);
    }

    v13 = 1;
  }

LABEL_18:

LABEL_19:
  return v13;
}

void sub_270F16ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<vg::ear_detection::EarPCADetector>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

vg::ear_detection::EarBoundingBoxModel ****std::unique_ptr<vg::ear_detection::EarPCADetector>::~unique_ptr[abi:ne200100](vg::ear_detection::EarBoundingBoxModel ****a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vg::ear_detection::EarPCADetector::~EarPCADetector(v2);
    MEMORY[0x2743B9370]();
  }

  return a1;
}

void vg::ear_detection::EarPCADetector::~EarPCADetector(vg::ear_detection::EarBoundingBoxModel ***this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::unique_ptr<vg::ear_detection::EarSideSmoothPredictor>::reset[abi:ne200100](v1 + 3, 0);
    std::unique_ptr<vg::ear_detection::EarLandmarksPCA>::~unique_ptr[abi:ne200100](v1 + 2);
    std::unique_ptr<vg::ear_detection::EarLandmarksModel>::~unique_ptr[abi:ne200100](v1 + 1);
    v2 = std::unique_ptr<vg::ear_detection::EarBoundingBoxModel>::~unique_ptr[abi:ne200100](v1);
    MEMORY[0x2743B9370](v2, 0x1020C40F2144117);
  }
}

uint64_t vg::ear_detection::EarPCADetectorImpl::EarPCADetectorImpl(uint64_t a1, __int128 *a2)
{
  vg::ear_detection::EarBoundingBoxModel::create(a2 + 3, a1);
  vg::ear_detection::EarLandmarksModel::create(a2 + 3, (a1 + 8));
  vg::ear_detection::EarLandmarksPCA::create((a1 + 16));
  *(a1 + 24) = 0;
  v4 = *a2;
  v5 = *(a2 + 12);
  *(&v4 + 1) = *(a2 + 12);
  *(a1 + 32) = v4;
  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  if (v6 == 1)
  {
    v8 = *(a2 + 13);
    v9 = *(a2 + 14);
    vg::ear_detection::EarSideSmoothPredictor::create();
  }

  return a1;
}

void sub_270F170F8(_Unwind_Exception *a1)
{
  std::unique_ptr<vg::ear_detection::EarSideSmoothPredictor>::reset[abi:ne200100](v2, 0);
  std::unique_ptr<vg::ear_detection::EarLandmarksPCA>::~unique_ptr[abi:ne200100](v1 + 2);
  std::unique_ptr<vg::ear_detection::EarLandmarksModel>::~unique_ptr[abi:ne200100](v1 + 1);
  std::unique_ptr<vg::ear_detection::EarBoundingBoxModel>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

vg::ear_detection::EarLandmarksPCA **std::unique_ptr<vg::ear_detection::EarLandmarksPCA>::~unique_ptr[abi:ne200100](vg::ear_detection::EarLandmarksPCA **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vg::ear_detection::EarLandmarksPCA::~EarLandmarksPCA(v2);
    MEMORY[0x2743B9370]();
  }

  return a1;
}

vg::ear_detection::EarLandmarksModel **std::unique_ptr<vg::ear_detection::EarLandmarksModel>::~unique_ptr[abi:ne200100](vg::ear_detection::EarLandmarksModel **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vg::ear_detection::EarLandmarksModel::~EarLandmarksModel(v2);
    MEMORY[0x2743B9370]();
  }

  return a1;
}

vg::ear_detection::EarSideSmoothPredictor *std::unique_ptr<vg::ear_detection::EarSideSmoothPredictor>::reset[abi:ne200100](vg::ear_detection::EarSideSmoothPredictor **a1, vg::ear_detection::EarSideSmoothPredictor *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    vg::ear_detection::EarSideSmoothPredictor::~EarSideSmoothPredictor(result);

    JUMPOUT(0x2743B9370);
  }

  return result;
}

void vg::ear_detection::EarLandmarksPCAImpl::create(void *a1@<X8>)
{
  v3 = [MEMORY[0x277CCA8D8] vg_resourcePath];
  v4 = [v3 stringByAppendingPathComponent:@"ear_landmarks_pca/lm_pca_mean.bin"];

  std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
  vg::load1DVectorData<float>(__p, &__src);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 == 147)
  {
    v5 = [MEMORY[0x277CCA8D8] vg_resourcePath];
    v6 = [v5 stringByAppendingPathComponent:@"ear_landmarks_pca/lm_pca_weights.bin"];

    std::string::basic_string[abi:ne200100]<0>(v11, [v6 UTF8String]);
    vg::load1DVectorData<float>(v11, __p);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (v14 == 2352)
    {
      v7 = operator new(0x270CuLL, MEMORY[0x277D826F0]);
      v8 = v7;
      if (v7)
      {
        if (v17)
        {
          memmove(v7, __src, 4 * v17);
        }

        memmove(v8 + 588, __p[0], 0x24C0uLL);
      }
    }

    else
    {
      v10 = __VGLogSharedInstance();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(&dword_270F06000, v10, OS_LOG_TYPE_ERROR, " Invalid input data size for PCA matrix. ", v11, 2u);
      }

      v8 = 0;
    }

    *a1 = v8;
    free(__p[0]);
  }

  else
  {
    v9 = __VGLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_270F06000, v9, OS_LOG_TYPE_ERROR, " Invalid input data size for PCA mean vector. ", __p, 2u);
    }

    *a1 = 0;
  }

  free(__src);
}

void sub_270F1740C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22)
{
  free(a16);

  free(a22);
  _Unwind_Resume(a1);
}

void vg::load1DVectorData<float>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithCString:v3 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v4];
  v6 = [v5 length];
  v7 = ((v6 & 0x3FFFFFFFCLL) + 31) & 0x7FFFFFFE0;
  *a2 = 0;
  *(a2 + 8) = v7 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v7, 0xE1AC2527uLL);
  v8 = memptr;
  *a2 = memptr;
  *(a2 + 16) = v6 >> 2;
  [v5 getBytes:v8 length:v6 & 0xFFFFFFFFFFFFFFFCLL];
}

void sub_270F17578(_Unwind_Exception *a1)
{
  free(v3);

  _Unwind_Resume(a1);
}

char *vg::ear_detection::EarLandmarksPCAImpl::EarLandmarksPCAImpl(char *__dst, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    memmove(__dst, *a2, 4 * v5);
  }

  v6 = *(a3 + 16);
  if (v6)
  {
    memmove(__dst + 588, *a3, 4 * v6);
  }

  return __dst;
}

{
  v5 = *(a2 + 16);
  if (v5)
  {
    memmove(__dst, *a2, 4 * v5);
  }

  v6 = *(a3 + 16);
  if (v6)
  {
    memmove(__dst + 588, *a3, 4 * v6);
  }

  return __dst;
}

void vg::ear_detection::EarLandmarksPCAImpl::computePCA(uint64_t a1@<X0>, double *a2@<X1>, int a3@<W2>, float *a4@<X8>)
{
  v8 = 0;
  v9 = (a2 + 2);
  memset(__A, 0, 512);
  do
  {
    *(__A + v8) = vcvt_f32_f64(v9[-1]);
    v10 = LODWORD(v9->f64[0]);
    v9 = (v9 + 24);
    *(&__A[24] + v8++ + 2) = v10;
  }

  while (v8 != 49);
  __C = 0.0;
  vDSP_meanv(__A, 2, &__C, 0x31uLL);
  __C = -__C;
  v16 = 0.0;
  vDSP_meanv(__A + 1, 2, &v16, 0x31uLL);
  v16 = -v16;
  MEMORY[0x2743B9D60](__A, 2, &__C, __A, 2, 49);
  MEMORY[0x2743B9D60](__A + 4, 2, &v16, __A + 4, 2, 49);
  v11 = sqrt((a2[7] - a2[34]) * (a2[7] - a2[34]) + (a2[6] - a2[33]) * (a2[6] - a2[33]));
  v15 = 1.0 / (v11 + 0.000001);
  MEMORY[0x2743B9D70](__A, 1, &v15, __A, 1, 98);
  v12 = -1.0;
  if (a3 != 1)
  {
    v12 = 1.0;
  }

  v14 = v12;
  MEMORY[0x2743B9D70](__A, 2, &v14, __A, 2, 49);
  MEMORY[0x2743B9D80](a1, 1, __A, 1, __A, 1, 147);
  vDSP_mmul((a1 + 588), 1, __A, 1, a4, 1, 0x10uLL, 1uLL, 0x93uLL);
}

void *vg::ear_detection::EarLandmarksPCA::create@<X0>(void *a1@<X8>)
{
  vg::ear_detection::EarLandmarksPCAImpl::create(&v5);
  v3 = v5;
  if (v5)
  {
    result = operator new(8uLL, MEMORY[0x277D826F0]);
    if (!result)
    {
      *a1 = 0;

      JUMPOUT(0x2743B9370);
    }

    *result = v3;
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

void *vg::ear_detection::EarLandmarksPCA::EarLandmarksPCA(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

void vg::ear_detection::EarLandmarksPCA::~EarLandmarksPCA(vg::ear_detection::EarLandmarksPCA *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    MEMORY[0x2743B9370](v2, 0x1000C40DA03932ELL);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    MEMORY[0x2743B9370](v2, 0x1000C40DA03932ELL);
  }
}

double vg::ear_detection::makeLargeBox(uint32x2_t *a1, int8x16_t a2, double a3)
{
  v3 = vextq_s8(a2, a2, 8uLL).u64[0];
  v4 = vsub_f32(v3, *a2.i8);
  *&a3 = *&a3 + 1.0;
  if (v4.f32[0] < v4.f32[1])
  {
    v4.f32[0] = v4.f32[1];
  }

  *&a3 = (*&a3 * v4.f32[0]) * 0.5;
  *v5.f32 = vmul_f32(vadd_f32(*a2.i8, v3), 0x3F0000003F000000);
  v5.i64[1] = v5.i64[0];
  v6 = vdupq_lane_s32(*&a3, 0);
  v7.i64[0] = vsubq_f32(v5, v6).u64[0];
  v7.i64[1] = vaddq_f32(v5, v6).i64[1];
  *v5.f32 = vcvt_f32_u32(*a1);
  v5.i64[1] = v5.i64[0];
  __asm { FMOV            V1.4S, #-1.0 }

  v13 = vaddq_f32(v5, _Q1);
  *&result = vbicq_s8(vbslq_s8(vcgtq_f32(v7, v13), v13, v7), vcltzq_f32(v7)).u64[0];
  return result;
}

vg::ear_detection::LandmarkModelPreProcessor *vg::ear_detection::LandmarkModelPreProcessor::create@<X0>(vg::ear_detection::LandmarkModelPreProcessor *this@<X0>, vg::ear_detection::LandmarkModelPreProcessor **a2@<X8>)
{
  result = operator new(8uLL, MEMORY[0x277D826F0]);
  v5 = result;
  if (result)
  {
    result = vg::ear_detection::LandmarkModelPreProcessor::LandmarkModelPreProcessor(result, this);
  }

  *a2 = v5;
  return result;
}

id vg::ear_detection::LandmarkModelPreProcessor::preProcessImage(void *a1, void *a2, float32x2_t *a3)
{
  v4 = vcvt_u32_f32(*a3);
  HIWORD(v9) = v4.i16[2];
  LOWORD(v9) = v4.i16[0];
  v5 = vadd_s32(vsub_s32(vcvt_u32_f32(*&vextq_s8(*a3->f32, *a3->f32, 8uLL)), v4), 0x100000001);
  HIWORD(v8) = v5.i16[2];
  LOWORD(v8) = v5.i16[0];
  [a2 vg_cropAndResizeYIntoSurface:*a1 origin:v9 size:v8];
  v6 = *a1;

  return v6;
}

float64x2_t vg::ear_detection::LandmarkModelPreProcessor::makeScaledPoint@<Q0>(float32x2_t *a1@<X1>, float64x2_t *a2@<X2>, uint64_t a3@<X8>)
{
  __asm { FMOV            V3.2S, #-1.0 }

  result = vmlaq_f64(vcvtq_f64_f32(*a1), vcvtq_f64_f32(vadd_f32(vsub_f32(*&vextq_s8(*a1->f32, *a1->f32, 8uLL), *a1), _D3)), *a2);
  *a3 = result;
  *(a3 + 16) = 1;
  return result;
}

vg::ear_detection::LandmarkModelPreProcessor *vg::ear_detection::LandmarkModelPreProcessor::LandmarkModelPreProcessor(vg::ear_detection::LandmarkModelPreProcessor *this, uint64_t a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
  *this = 0;
  v4 = objc_alloc(MEMORY[0x277CD2930]);
  v14[0] = *MEMORY[0x277CD2928];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
  v15[0] = v5;
  v14[1] = *MEMORY[0x277CD28D0];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
  v7 = *MEMORY[0x277CD28D8];
  v15[1] = v6;
  v15[2] = &unk_2880F5E90;
  v8 = *MEMORY[0x277CD28B0];
  v14[2] = v7;
  v14[3] = v8;
  v15[3] = &unk_2880F5EA8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v10 = [v4 initWithProperties:v9];
  v11 = *this;
  *this = v10;

  v12 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t vg::ear_detection::EarBoundingBoxModelImpl::EarBoundingBoxModelImpl(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  *(a1 + 16) = 0u;
  v4 = (a1 + 16);
  *(a1 + 64) = 0u;
  v5 = (a1 + 64);
  *(a1 + 80) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  v6 = VGLogEarBoundingBoxModel();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_INFO, "Using model root path %s", buf, 0xCu);
  }

  vg::shared::VGE5RT::compileModel(a2, 1, buf);
  std::shared_ptr<E5RT::ExecutionStreamOperation>::operator=[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(a1, buf);
  v8 = *buf;
  *buf = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*a1);
  std::string::basic_string[abi:ne200100]<0>(buf, "input_image");
  v10 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(InputPorts, buf);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = v10[5];
  v11 = v10[6];
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 40);
  *(a1 + 32) = v12;
  *(a1 + 40) = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v30 < 0)
  {
    operator delete(*buf);
  }

  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*a1);
  std::string::basic_string[abi:ne200100]<0>(buf, "detection");
  v15 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(OutputPorts, buf);
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v17 = v15[5];
  v16 = v15[6];
  if (v16)
  {
    atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 56);
  *(a1 + 48) = v17;
  *(a1 + 56) = v16;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v30 < 0)
  {
    operator delete(*buf);
  }

  PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(*(a1 + 48));
  E5RT::OperandDescriptor::TryAsTensorDescriptor(PortDescriptorRef);
  E5RT::TensorDescriptor::AllocateMemory();
  std::shared_ptr<E5RT::BufferObject>::operator=[abi:ne200100]<E5RT::BufferObject,std::default_delete<E5RT::BufferObject>,0>(v5, buf);
  v20 = *buf;
  *buf = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(a1 + 48);
  v22 = *(a1 + 72);
  v27 = *(a1 + 64);
  v28 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::IOPort::BindMemoryObject();
  v23 = v28;
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  E5RT::ExecutionStream::CreateExecutionStream(buf, v23);
  std::shared_ptr<E5RT::ExecutionStream>::operator=[abi:ne200100]<E5RT::ExecutionStream,std::default_delete<E5RT::ExecutionStream>,0>(v4, buf);
  v24 = *buf;
  *buf = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_270F17FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (__p)
  {
    vg::ear_detection::EarLandmarksModelImpl::EarLandmarksModelImpl(__p);
  }

  std::unique_ptr<vg::ear_detection::BoxModelPreProcessor>::reset[abi:ne200100](v17, 0);
  v19 = v16[9];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = v16[7];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = v16[5];
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v22 = v16[3];
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v23 = v16[1];
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

id VGLogEarBoundingBoxModel(void)
{
  if (VGLogEarBoundingBoxModel(void)::onceToken != -1)
  {
    VGLogEarBoundingBoxModel();
  }

  v1 = VGLogEarBoundingBoxModel(void)::handle;

  return v1;
}

void vg::ear_detection::EarBoundingBoxModelImpl::predictBoundingBox(vg::ear_detection::EarBoundingBoxModelImpl *this@<X0>, IOSurface *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v7 = (this + 80);
  v6 = *(this + 10);
  if (!v6)
  {
    LODWORD(v35[0]) = 1056964608;
    v40 = 0;
    v41 = 0;
    __p = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, v35, v35 + 4, 1uLL);
    v8 = [(IOSurface *)v5 width];
    v34.i64[0] = __PAIR64__([(IOSurface *)v5 height], v8);
    vg::ear_detection::BoxModelPreProcessor::create(&v34, &__p, 400, v35);
    v9 = v35[0];
    v35[0] = 0;
    std::unique_ptr<vg::ear_detection::BoxModelPreProcessor>::reset[abi:ne200100](this + 10, v9);
    v10 = v35[0];
    v35[0] = 0;
    if (v10)
    {
      vg::ear_detection::BoxModelPreProcessor::~BoxModelPreProcessor(v10);
      MEMORY[0x2743B9370]();
    }

    if (__p)
    {
      v40 = __p;
      operator delete(__p);
    }

    v6 = *v7;
  }

  vg::ear_detection::BoxModelPreProcessor::preProcessImage(v6, v5, &__p);
  if ((v42 & 1) == 0)
  {
    v18 = VGLogEarBoundingBoxModel();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      vg::ear_detection::EarBoundingBoxModelImpl::predictBoundingBox();
    }

    goto LABEL_18;
  }

  if (vg::ear_detection::BoxModelPreProcessor::getCropCount(*v7) != 1)
  {
    v18 = VGLogEarBoundingBoxModel();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      vg::ear_detection::EarBoundingBoxModelImpl::predictBoundingBox();
    }

LABEL_18:

    *a3 = 0;
    *(a3 + 32) = 0;
    goto LABEL_39;
  }

  if ((v42 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v11 = *__p;
  PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(*(this + 4));
  v13 = E5RT::OperandDescriptor::TryAsTensorDescriptor(PortDescriptorRef);
  TensorStrides = E5RT::TensorDescriptor::GetTensorStrides(v13);
  v15 = *(*(TensorStrides + 8) - 16);
  if (v15 != [v11 bytesPerRow])
  {
    v16 = [v11 vg_convertSurfaceStride:*(*(TensorStrides + 8) - 16)];

    v11 = v16;
  }

  v17 = *(this + 4);
  E5RT::BufferObject::CreateBufferFromHandle<__IOSurface *>();
  v37 = v35[0];
  if (v35[0])
  {
    operator new();
  }

  v38 = 0;
  v35[0] = 0;
  E5RT::IOPort::BindMemoryObject();
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  v19 = v35[0];
  v35[0] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v21 = *(this + 1);
  v20 = *(this + 2);
  v35[3] = *this;
  v36 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::ExecutionStream::EncodeOperation();
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  E5RT::ExecutionStream::ExecuteStreamSync(*(this + 2));
  E5RT::ExecutionStream::ResetStream(*(this + 2));
  v22 = *(this + 8);
  v23 = E5RT::BufferObject::GetHandle<__IOSurface *>();
  if (v23)
  {
    v24 = E5RT::IOPort::GetPortDescriptorRef(*(this + 6));
    v25 = E5RT::OperandDescriptor::TryAsTensorDescriptor(v24);
    vg::shared::VGE5RT::convertSurfaceTo1DVector(v23, v25, v26, v35);
    v34 = *v35[0];
    *&v27 = vg::ear_detection::BoxModelPreProcessor::makeScaledBox(*v7, &v34, 0);
    v28 = v35[0];
    v29 = *(v35[0] + 4);
    v30 = 0.0;
    v31 = 0.0;
    if (v29 >= 0.0)
    {
      v31 = 1.0;
      if (v29 <= 1.0)
      {
        v31 = *(v35[0] + 4);
      }
    }

    v32 = *(v35[0] + 5);
    if (v32 >= 0.0)
    {
      v30 = 1.0;
      if (v32 <= 1.0)
      {
        v30 = *(v35[0] + 5);
      }
    }

    *a3 = v27;
    *(a3 + 16) = 0x3F8000003F800000;
    *(a3 + 24) = v31;
    *(a3 + 28) = v30;
    *(a3 + 32) = 1;
    free(v28);
  }

  else
  {
    v33 = VGLogEarBoundingBoxModel();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      vg::ear_detection::EarBoundingBoxModelImpl::predictBoundingBox();
    }

    *a3 = 0;
    *(a3 + 32) = 0;
  }

LABEL_39:
  if (v42 == 1)
  {
    v35[0] = &__p;
    std::vector<IOSurface * {__strong}>::__destroy_vector::operator()[abi:ne200100](v35);
  }
}

void sub_270F184C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **p_p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  free(p_p);

  if (a22 == 1)
  {
    p_p = &__p;
    std::vector<IOSurface * {__strong}>::__destroy_vector::operator()[abi:ne200100](&p_p);
  }

  _Unwind_Resume(a1);
}

void vg::ear_detection::EarBoundingBoxModel::~EarBoundingBoxModel(vg::ear_detection::EarBoundingBoxModel *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::unique_ptr<vg::ear_detection::BoxModelPreProcessor>::reset[abi:ne200100]((v1 + 80), 0);
    v2 = *(v1 + 72);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = *(v1 + 56);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v1 + 40);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(v1 + 24);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = *(v1 + 8);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    MEMORY[0x2743B9370](v1, 0x20C40D3FB9507);
  }
}

void vg::ear_detection::EarBoundingBoxModel::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v4 = a1 + 23;
  if (*(a1 + 23) < 0)
  {
    if (!a1[1])
    {
LABEL_10:
      v13 = VGLogEarBoundingBoxModel();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        vg::ear_detection::EarLandmarksModel::create();
      }

      *a2 = 0;
      goto LABEL_20;
    }

    v5 = *a1;
  }

  else
  {
    v5 = a1;
    if (!*(a1 + 23))
    {
      goto LABEL_10;
    }
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  v18[0] = v7;
  v18[1] = @"ear_bbox_detector_mlmodel";
  v18[2] = @"ear_box_fp16.espresso.net";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v9 = [v6 pathWithComponents:v8];

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = v10;
  if (v9)
  {
    if ([v10 fileExistsAtPath:v9])
    {
      if (operator new(8uLL, MEMORY[0x277D826F0]))
      {
        v12 = v9;
        std::string::basic_string[abi:ne200100]<0>(&__p, [v9 UTF8String]);
        vg::ear_detection::EarBoundingBoxModel::EarBoundingBoxModel();
      }
    }

    else
    {
      v15 = VGLogEarBoundingBoxModel();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        vg::ear_detection::EarLandmarksModel::create(v9, v15);
      }
    }
  }

  else
  {
    v14 = VGLogEarBoundingBoxModel();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      vg::ear_detection::EarBoundingBoxModel::create(v4, a1, v14);
    }
  }

  *a2 = 0;

LABEL_20:
  v16 = *MEMORY[0x277D85DE8];
}

void sub_270F188C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x2743B9360](v17, MEMORY[0x277D826F0]);

  _Unwind_Resume(a1);
}

void ___ZL24VGLogEarBoundingBoxModelv_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "EarBoundingBoxModel");
  v1 = VGLogEarBoundingBoxModel(void)::handle;
  VGLogEarBoundingBoxModel(void)::handle = v0;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_270F18A24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

vg::ear_detection::BoxModelPreProcessor *std::unique_ptr<vg::ear_detection::BoxModelPreProcessor>::reset[abi:ne200100](vg::ear_detection::BoxModelPreProcessor **a1, vg::ear_detection::BoxModelPreProcessor *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    vg::ear_detection::BoxModelPreProcessor::~BoxModelPreProcessor(result);

    JUMPOUT(0x2743B9370);
  }

  return result;
}

void vg::ear_detection::BoxModelPreProcessor::~BoxModelPreProcessor(vg::ear_detection::BoxModelPreProcessor *this)
{
  v6 = (this + 104);
  std::vector<IOSurface * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v6);
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

void vg::ear_detection::EarBoundingBoxModelImpl::predictBoundingBox()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270F06000, v0, v1, "Failed to prep image.", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270F06000, v0, v1, "Single crop expected.", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270F06000, v0, v1, "Invalid box network output.", v2, v3, v4, v5, v6);
}

void vg::ear_detection::EarBoundingBoxModel::create(char *a1, void *a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*a1 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v5 = 136315650;
  v6 = v3;
  v7 = 2112;
  v8 = @"ear_bbox_detector_mlmodel";
  v9 = 2112;
  v10 = @"ear_box_fp16.espresso.net";
  _os_log_error_impl(&dword_270F06000, log, OS_LOG_TYPE_ERROR, "Failed to create model path from modelRootPath: %s with directory: %@ and model file: %@", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

double vg::frame_selection::VGExpressionFilter::remap(vg::frame_selection::VGExpressionFilter *this, float a2, float a3, float a4)
{
  if (a4 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a4;
  }

  if (a2 >= a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = a3;
  }

  if (a3 >= a4)
  {
    if (a3 == a4)
    {
      v7 = v5 < a4;
      LODWORD(result) = 1.0;
      if (v7)
      {
        *&result = 0.0;
      }
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    *&result = (v5 - a3) / (a4 - a3);
  }

  return result;
}

void sub_270F18F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VGFaceCapture;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_270F1922C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23)
{
  objc_destroyWeak((v27 + 48));

  objc_destroyWeak((v28 - 88));
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<vg::frame_selection::metrics::Data>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    for (i = 0; i != -48; i -= 24)
    {
      std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v2 + i + 464, *(v2 + i + 472));
    }

    for (j = 0; j != -48; j -= 24)
    {
      std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v2 + j + 376, *(v2 + j + 384));
    }

    JUMPOUT(0x2743B9370);
  }

  return result;
}

void std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_270F19C10(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_270F19D38(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_270F1AA44(_Unwind_Exception *a1)
{
  MEMORY[0x2743B9370](v2, 0x10A1C4037ACD87BLL);

  _Unwind_Resume(a1);
}

void sub_270F1CA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void **a27)
{
  a27 = &a24;
  std::vector<TargetPoseData>::__destroy_vector::operator()[abi:ne200100](&a27);

  _Unwind_Resume(a1);
}

void sub_270F1CF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = &a13;
  std::vector<TargetPoseData>::__destroy_vector::operator()[abi:ne200100](&a19);
  a19 = (v21 - 104);
  std::vector<TargetPoseData>::__destroy_vector::operator()[abi:ne200100](&a19);

  _Unwind_Resume(a1);
}

void sub_270F1D29C(_Unwind_Exception *a1)
{
  __74__VGFrameSelector_applyVisionFilters_bestTargetPoseData_frameTimestampMS___block_invoke();

  _Unwind_Resume(a1);
}

id VGLogVGFrameSelector(void)
{
  if (VGLogVGFrameSelector(void)::onceToken != -1)
  {
    VGLogVGFrameSelector();
  }

  v1 = VGLogVGFrameSelector(void)::handle;

  return v1;
}

void sub_270F1D664(_Unwind_Exception *a1)
{
  __86__VGFrameSelector_applyVisionFaceLandmarksFilter_bestTargetPoseData_frameTimestampMS___block_invoke();

  _Unwind_Resume(a1);
}

void sub_270F1DFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (**a12)(void))
{
  a12[2]();

  _Unwind_Resume(a1);
}

void sub_270F1ED64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (**a15)(void), uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a15[2]();

  __93__VGFrameSelector_processHeadPose_captureData_trackingData_validDataBounds_frameTimestampMS___block_invoke();
  _Unwind_Resume(a1);
}

void sub_270F1FFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  __82__VGFrameSelector_processCaptureData_trackingData_framePose_validDataFrameBounds___block_invoke();

  _Unwind_Resume(a1);
}

void vg::frame_selection::frameRejectionReasonToString(int a1@<W0>, std::string *a2@<X8>)
{
  {
    std::string::basic_string[abi:ne200100]<0>(vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString, "kNone");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[24], "kBadState");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[48], "kNoTrackingData");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[72], "kNoTrackedFace");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[96], "kTrackedFaceIdentifierChanged");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[120], "kLowContrast");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[144], "kMotionBlurDetected");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[168], "kMotionBlurTemporalStateInit");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[192], "kLowTrackingConfidence");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[216], "kFaceLandmarksNotDetected");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[240], "kWarmupFrameFiltering");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[264], "kFaceLeftOfFOV");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[288], "kFaceRightOfFOV");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[312], "kFaceTopOfFOV");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[336], "kFaceBottomOfFOV");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[360], "kOutOfRange");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[384], "kExpressionOtherFilter");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[408], "kExpressionIsEyesNeutralOpenFilter");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[432], "kExpressionIsNeutralFilter");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[456], "kExpressionIsEyesForwardFilter");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[480], "kExpressionIsAlmostNeutralFilter");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[504], "kExpressionIsMouthOpenFilter");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[528], "kExpressionIsSmileClosedMouthFilter");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[552], "kLowerScore");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[576], "kBadAlignment");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[600], "kLowerAlignment");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[624], "kDistanceFilterFaceTooClose");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[648], "kDistanceFilterFaceTooFar");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[672], "kExpressionIsBlink");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[696], "kBodyPoseGuidanceBodyJointsNotVisible");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[720], "kBodyPoseGuidanceHeadNotUpright");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[744], "kBodyPoseGuidanceShouldersNotStraight");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[768], "kBodyPoseGuidanceLeftElbowTooHigh");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[792], "kBodyPoseGuidanceLeftElbowTooLow");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[816], "kBodyPoseGuidanceRightElbowTooHigh");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[840], "kBodyPoseGuidanceRightElbowTooLow");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[864], "kBodyPoseGuidanceShoulderHeightAsymmetric");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[888], "kBodyPoseGuidanceLeftShoulderTooFarBehind");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[912], "kBodyPoseGuidanceLeftShoulderTooFarInFront");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[936], "kBodyPoseGuidanceRightShoulderTooFarBehind");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[960], "kBodyPoseGuidanceRightShoulderTooFarInFront");
    std::string::basic_string[abi:ne200100]<0>(&vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[984], "kBodyPoseGuidanceLowerAggregatedScore");
  }

  v4 = &vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString[24 * a1];
  if (v4[23] < 0)
  {
    v5 = *v4;
    v6 = *(v4 + 1);

    std::string::__init_copy_ctor_external(a2, v5, v6);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v4;
    a2->__r_.__value_.__r.__words[2] = *(v4 + 2);
  }
}

void *std::vector<TargetPoseData>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<TargetPoseData>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<TargetPoseData>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TargetPoseData>>(a1, a2);
  }

  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TargetPoseData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<TargetPoseData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 14;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::vector<TargetPoseData>::__assign_with_size[abi:ne200100]<TargetPoseData*,TargetPoseData*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<TargetPoseData>::__vdeallocate(a1);
    if (a4 <= 0x249249249249249)
    {
      v8 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
      {
        v9 = 0x249249249249249;
      }

      else
      {
        v9 = v8;
      }

      std::vector<TargetPoseData>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(a1 + 8) - v7;
  if (0x6DB6DB6DB6DB6DB7 * (v10 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<TargetPoseData *,TargetPoseData *,TargetPoseData *>(&v22, a2, a3, v7);
    v18 = v17;
    v19 = *(a1 + 8);
    if (v19 != v17)
    {
      do
      {
        v20 = v19 - 112;

        v19 = v20;
      }

      while (v20 != v18);
    }

    *(a1 + 8) = v18;
  }

  else
  {
    v11 = a2 + v10;
    std::__copy_impl::operator()[abi:ne200100]<TargetPoseData *,TargetPoseData *,TargetPoseData *>(&v21, a2, a2 + v10, v7);
    v12 = *(a1 + 8);
    if (v11 != a3)
    {
      v13 = *(a1 + 8);
      do
      {
        *v13 = *v11;
        *(v13 + 16) = *(v11 + 16);
        *(v13 + 32) = *(v11 + 32);
        v15 = *(v11 + 64);
        v14 = *(v11 + 80);
        v16 = *(v11 + 48);
        *(v13 + 96) = *(v11 + 96);
        *(v13 + 64) = v15;
        *(v13 + 80) = v14;
        *(v13 + 48) = v16;
        v11 += 112;
        v13 += 112;
        v12 += 112;
      }

      while (v11 != a3);
    }

    *(a1 + 8) = v12;
  }
}

void std::vector<TargetPoseData>::__vdeallocate(void **a1)
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
        v5 = v3 - 14;

        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<TargetPoseData *,TargetPoseData *,TargetPoseData *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    objc_storeStrong((a4 + 16), *(v5 + 16));
    *(a4 + 32) = *(v5 + 32);
    v7 = *(v5 + 48);
    v8 = *(v5 + 64);
    v9 = *(v5 + 80);
    *(a4 + 96) = *(v5 + 96);
    *(a4 + 64) = v8;
    *(a4 + 80) = v9;
    *(a4 + 48) = v7;
    v5 += 112;
    a4 += 112;
  }

  while (v5 != v6);
  return v6;
}

uint64_t std::vector<TargetPoseData>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<TargetPoseData*>>,std::move_iterator<std::__wrap_iter<TargetPoseData*>>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a1[1];
  v8 = a1[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 4) < a5)
  {
    v9 = *a1;
    v10 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v7 - *a1) >> 4);
    if (v10 > 0x249249249249249)
    {
      std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
    }

    v11 = a2 - v9;
    v12 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v9) >> 4);
    if (2 * v12 > v10)
    {
      v10 = 2 * v12;
    }

    if (v12 >= 0x124924924924924)
    {
      v13 = 0x249249249249249;
    }

    else
    {
      v13 = v10;
    }

    v32[4] = a1;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TargetPoseData>>(a1, v13);
    }

    v26 = 16 * (v11 >> 4);
    v32[0] = 0;
    v32[1] = v26;
    v32[3] = 0;
    do
    {
      *v26 = *a3;
      v27 = *(a3 + 16);
      *(a3 + 16) = 0;
      *(v26 + 16) = v27;
      *(v26 + 32) = *(a3 + 32);
      v28 = *(a3 + 48);
      v29 = *(a3 + 64);
      v30 = *(a3 + 80);
      *(v26 + 96) = *(a3 + 96);
      *(v26 + 64) = v29;
      *(v26 + 80) = v30;
      *(v26 + 48) = v28;
      v26 += 112;
      a3 += 112;
    }

    while (v26 != 16 * (v11 >> 4) + 112 * a5);
    v32[2] = 16 * (v11 >> 4) + 112 * a5;
    v5 = std::vector<TargetPoseData>::__swap_out_circular_buffer(a1, v32, v5);
    std::__split_buffer<TargetPoseData>::~__split_buffer(v32);
    return v5;
  }

  v14 = v7 - a2;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - a2) >> 4) >= a5)
  {
    v25 = 112 * a5;
    std::vector<TargetPoseData>::__move_range(a1, a2, v7, a2 + 112 * a5);
    v24 = v25 + a3;
    v23 = a3;
    goto LABEL_18;
  }

  v15 = v14 + a3;
  v16 = a1[1];
  if (v14 + a3 != a4)
  {
    v16 = a1[1];
    v17 = v14 + a3;
    v18 = v16;
    do
    {
      *v18 = *v17;
      v19 = *(v17 + 16);
      *(v17 + 16) = 0;
      *(v18 + 16) = v19;
      *(v18 + 32) = *(v17 + 32);
      v20 = *(v17 + 48);
      v21 = *(v17 + 64);
      v22 = *(v17 + 80);
      *(v18 + 96) = *(v17 + 96);
      *(v18 + 64) = v21;
      *(v18 + 80) = v22;
      *(v18 + 48) = v20;
      v17 += 112;
      v18 += 112;
      v16 += 112;
    }

    while (v17 != a4);
  }

  a1[1] = v16;
  if (v14 >= 1)
  {
    std::vector<TargetPoseData>::__move_range(a1, a2, v7, a2 + 112 * a5);
    v23 = a3;
    v24 = v15;
LABEL_18:
    std::__copy_impl::operator()[abi:ne200100]<std::move_iterator<std::__wrap_iter<TargetPoseData *>>,std::move_iterator<std::__wrap_iter<TargetPoseData *>>,TargetPoseData *>(v32, v23, v24, v5);
  }

  return v5;
}

void sub_270F210D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TargetPoseData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TargetPoseData>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      v10 = *(v9 + 16);
      *(v9 + 16) = 0;
      *(v8 + 16) = v10;
      *(v8 + 32) = *(v9 + 32);
      v11 = *(v9 + 48);
      v12 = *(v9 + 64);
      v13 = *(v9 + 80);
      *(v8 + 96) = *(v9 + 96);
      *(v8 + 64) = v12;
      *(v8 + 80) = v13;
      *(v8 + 48) = v11;
      v9 += 112;
      v8 += 112;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TargetPoseData *,TargetPoseData *,TargetPoseData *>(&v15, a2, v7, v6);
}

uint64_t std::vector<TargetPoseData>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TargetPoseData>,TargetPoseData*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TargetPoseData>,TargetPoseData*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TargetPoseData *,TargetPoseData *,TargetPoseData *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      *(v8 - 112) = *(a3 + v7 - 112);
      v9 = *(a3 + v7 - 96);
      *(a3 + v7 - 96) = 0;
      v10 = *(a4 + v7 - 96);
      *(v8 - 96) = v9;

      *(v8 - 80) = *(a3 + v7 - 80);
      v11 = *(a3 + v7 - 64);
      v12 = *(a3 + v7 - 48);
      v13 = *(a3 + v7 - 32);
      *(v8 - 16) = *(a3 + v7 - 16);
      *(v8 - 48) = v12;
      *(v8 - 32) = v13;
      *(v8 - 64) = v11;
      v7 -= 112;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<std::move_iterator<std::__wrap_iter<TargetPoseData *>>,std::move_iterator<std::__wrap_iter<TargetPoseData *>>,TargetPoseData *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      v7 = *(v5 + 16);
      *(v5 + 16) = 0;
      v8 = *(a4 + 16);
      *(a4 + 16) = v7;

      *(a4 + 32) = *(v5 + 32);
      v9 = *(v5 + 48);
      v10 = *(v5 + 64);
      v11 = *(v5 + 80);
      *(a4 + 96) = *(v5 + 96);
      *(a4 + 64) = v10;
      *(a4 + 80) = v11;
      *(a4 + 48) = v9;
      v5 += 112;
      a4 += 112;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TargetPoseData>,TargetPoseData*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      *(v6 + 16) = 0;
      *(a4 + 16) = v7;
      *(a4 + 32) = *(v6 + 32);
      v8 = *(v6 + 48);
      v9 = *(v6 + 64);
      v10 = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(a4 + 64) = v9;
      *(a4 + 80) = v10;
      *(a4 + 48) = v8;
      v6 += 112;
      a4 += 112;
    }

    while (v6 != a3);
    while (v5 != a3)
    {

      v5 += 112;
    }
  }
}

uint64_t std::__split_buffer<TargetPoseData>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ___ZL20VGLogVGFrameSelectorv_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "VGFrameSelector");
  v1 = VGLogVGFrameSelector(void)::handle;
  VGLogVGFrameSelector(void)::handle = v0;
}

void vg::frame_selection::frameRejectionReasonToString(void **a1)
{
  do
  {
    v2 = *(a1 - 1);
    a1 -= 3;
    if (v2 < 0)
    {
      operator delete(*a1);
    }
  }

  while (a1 != vg::frame_selection::frameRejectionReasonToString(vg::frame_selection::FrameRejectionReason)::kFrameRejectionReasonToString);
}

void sub_270F22A00(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_270F22C64(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 136) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

id VGLogVGEarPCASelectionState(void)
{
  if (VGLogVGEarPCASelectionState(void)::onceToken != -1)
  {
    VGLogVGEarPCASelectionState();
  }

  v1 = VGLogVGEarPCASelectionState(void)::handle;

  return v1;
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEm(a1, a2 - v2);
  }
}

void sub_270F232C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<EarFrame>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<EarFrame>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 6) < a2)
  {
    if (a2 < 0x155555555555556)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<EarFrame>>(result, a2);
    }

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_270F233A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<EarFrame>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_270F239D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(result, a2);
    }

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_270F2416C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  vg::ear_detection::EarPose::~EarPose(&a57);
  vg::ear_detection::EarPCADetector::EarDetectionOutput::~EarDetectionOutput(&STACK[0x2F0]);

  _Unwind_Resume(a1);
}

void anonymous namespace::EarFrameGroup::addFrame(_anonymous_namespace_::EarFrameGroup *this, const EarFrame *a2)
{
  v4 = 0;
  while (*(this + v4))
  {
    v4 += 192;
    if (v4 == 576)
    {
      v5 = *(this + 144);
      std::array<EarFrame,3ul>::array(location, this);
      for (i = 0; i != 3; ++i)
      {
        std::array<EarFrame,3ul>::array(v44, this);
        v7 = &v44[48 * i];
        objc_storeStrong(v7, a2->captureData);
        v8 = *&a2[2].captureData;
        *(v7 + 5) = *&a2[1].pose.yawAngle;
        *(v7 + 6) = v8;
        v9 = *&a2[2].pose.yawAngle;
        *(v7 + 7) = *&a2[2].pose.lmPCA.__elems_[1];
        *(v7 + 8) = v9;
        v10 = *&a2->pose.yawAngle;
        *(v7 + 1) = *&a2->pose.lmPCA.__elems_[1];
        *(v7 + 2) = v10;
        v11 = *&a2[1].pose.lmPCA.__elems_[1];
        *(v7 + 3) = *&a2[1].captureData;
        *(v7 + 4) = v11;
        if (v7 != a2)
        {
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v7 + 18, a2[3].captureData, *&a2[3].pose.side, (*&a2[3].pose.side - a2[3].captureData) >> 2);
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v7 + 21, *&a2[3].pose.faceYawAngle, *&a2[3].pose.yawAngle, (*&a2[3].pose.yawAngle - *&a2[3].pose.faceYawAngle) >> 2);
        }

        if (v12 > v5)
        {
          v13 = v12;
          v14 = location;
          v15 = v45;
          v16 = 3;
          do
          {
            objc_storeStrong(v14, *(v15 - 22));
            v17 = *(v15 - 5);
            *(v14 + 5) = *(v15 - 6);
            *(v14 + 6) = v17;
            v18 = *(v15 - 3);
            *(v14 + 7) = *(v15 - 4);
            *(v14 + 8) = v18;
            v19 = *(v15 - 9);
            *(v14 + 1) = *(v15 - 10);
            *(v14 + 2) = v19;
            v20 = *(v15 - 7);
            v21 = *(v15 - 4);
            v22 = *(v15 - 3);
            *(v14 + 3) = *(v15 - 8);
            *(v14 + 4) = v20;
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v14 + 18, v21, v22, (v22 - v21) >> 2);
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v14 + 21, *(v15 - 1), *v15, (*v15 - *(v15 - 1)) >> 2);
            v14 += 24;
            v15 += 24;
            --v16;
          }

          while (v16);
          v5 = v13;
        }

        v23 = 144;
        do
        {
          v24 = &v44[v23];
          v25 = *&v44[v23 - 6];
          if (v25)
          {
            *(v24 - 2) = v25;
            operator delete(v25);
          }

          v26 = *(v24 - 6);
          if (v26)
          {
            *&v44[v23 - 10] = v26;
            operator delete(v26);
          }

          v23 -= 48;
        }

        while (v23 * 4);
      }

      for (j = 0; j != 72; j += 24)
      {
        v28 = this + j * 8;
        objc_storeStrong((this + j * 8), location[j]);
        v29 = *&location[j + 12];
        *(v28 + 5) = *&location[j + 10];
        *(v28 + 6) = v29;
        v30 = *&location[j + 16];
        *(v28 + 7) = *&location[j + 14];
        *(v28 + 8) = v30;
        v31 = *&location[j + 4];
        *(v28 + 1) = *&location[j + 2];
        *(v28 + 2) = v31;
        v32 = *&location[j + 8];
        *(v28 + 3) = *&location[j + 6];
        *(v28 + 4) = v32;
        if (location != this)
        {
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v28 + 18, location[j + 18], location[j + 19], (location[j + 19] - location[j + 18]) >> 2);
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((this + j * 8 + 168), location[j + 21], location[j + 22], (location[j + 22] - location[j + 21]) >> 2);
        }
      }

      *(this + 144) = v5;
      v33 = 576;
      do
      {
        v34 = &location[v33 / 8];
        v35 = *&v45[v33 + 376];
        if (v35)
        {
          *(v34 - 2) = v35;
          operator delete(v35);
        }

        v36 = *(v34 - 6);
        if (v36)
        {
          *&v45[v33 + 360] = v36;
          operator delete(v36);
        }

        v33 -= 192;
      }

      while (v33);
      return;
    }
  }

  v37 = (this + v4);
  objc_storeStrong((this + v4), a2->captureData);
  v38 = *&a2->pose.lmPCA.__elems_[1];
  v39 = *&a2->pose.yawAngle;
  v40 = *&a2[1].pose.lmPCA.__elems_[1];
  *&v37[1].captureData = *&a2[1].captureData;
  *&v37[1].pose.lmPCA.__elems_[1] = v40;
  *&v37->pose.lmPCA.__elems_[1] = v38;
  *&v37->pose.yawAngle = v39;
  v41 = *&a2[1].pose.yawAngle;
  v42 = *&a2[2].captureData;
  v43 = *&a2[2].pose.yawAngle;
  *&v37[2].pose.lmPCA.__elems_[1] = *&a2[2].pose.lmPCA.__elems_[1];
  *&v37[2].pose.yawAngle = v43;
  *&v37[1].pose.yawAngle = v41;
  *&v37[2].captureData = v42;
  if (v37 != a2)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v37[3].captureData, a2[3].captureData, *&a2[3].pose.side, (*&a2[3].pose.side - a2[3].captureData) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v37[3].pose.faceYawAngle, *&a2[3].pose.faceYawAngle, *&a2[3].pose.yawAngle, (*&a2[3].pose.yawAngle - *&a2[3].pose.faceYawAngle) >> 2);
  }

  if (v4 == 384)
  {
  }
}

void EarFrame::~EarFrame(EarFrame *this)
{
  faceYawAngle = this[3].pose.faceYawAngle;
  if (faceYawAngle)
  {
    *&this[3].pose.yawAngle = faceYawAngle;
    operator delete(faceYawAngle);
  }

  captureData = this[3].captureData;
  if (captureData)
  {
    *&this[3].pose.side = captureData;
    operator delete(captureData);
  }
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
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

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void ___ZL27VGLogVGEarPCASelectionStatev_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "VGEarPCASelectionState");
  v1 = VGLogVGEarPCASelectionState(void)::handle;
  VGLogVGEarPCASelectionState(void)::handle = v0;
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
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
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<EarFrame>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<EarFrame>,EarFrame*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  if (a2 == a3)
  {
    v17 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *v7 = 0;
      *a4 = v8;
      v9 = *(v7 + 16);
      v10 = *(v7 + 32);
      v11 = *(v7 + 64);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 64) = v11;
      *(a4 + 16) = v9;
      *(a4 + 32) = v10;
      v12 = *(v7 + 80);
      v13 = *(v7 + 96);
      v14 = *(v7 + 128);
      *(a4 + 112) = *(v7 + 112);
      *(a4 + 128) = v14;
      *(a4 + 80) = v12;
      *(a4 + 96) = v13;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 144) = 0;
      *(a4 + 144) = *(v7 + 144);
      *(a4 + 160) = *(v7 + 160);
      *(v7 + 144) = 0;
      *(v7 + 152) = 0;
      *(v7 + 160) = 0;
      *(a4 + 168) = 0;
      *(a4 + 176) = 0;
      *(a4 + 184) = 0;
      *(a4 + 168) = *(v7 + 168);
      *(a4 + 184) = *(v7 + 184);
      *(v7 + 168) = 0;
      *(v7 + 176) = 0;
      *(v7 + 184) = 0;
      v7 += 192;
      a4 += 192;
    }

    while (v7 != a3);
    v19 = a4;
    v17 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<EarFrame>>::destroy[abi:ne200100]<EarFrame,void,0>(a1, v5);
      v5 += 192;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<EarFrame>,EarFrame*>>::~__exception_guard_exceptions[abi:ne200100](v16);
}

void std::allocator_traits<std::allocator<EarFrame>>::destroy[abi:ne200100]<EarFrame,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 168);
  if (v3)
  {
    *(a2 + 176) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 144);
  if (v4)
  {
    *(a2 + 152) = v4;
    operator delete(v4);
  }

  v5 = *a2;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<EarFrame>,EarFrame*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<EarFrame>,EarFrame*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<EarFrame>,EarFrame*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 192;
      std::allocator_traits<std::allocator<EarFrame>>::destroy[abi:ne200100]<EarFrame,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<EarFrame>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<EarFrame>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<EarFrame>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 192;
    std::allocator_traits<std::allocator<EarFrame>>::destroy[abi:ne200100]<EarFrame,void,0>(v5, v4 - 192);
  }
}

uint64_t std::vector<EarFrame>::__construct_one_at_end[abi:ne200100]<EarFrame const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 64);
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 64) = v7;
  *(v4 + 16) = v5;
  *(v4 + 32) = v6;
  v8 = *(a2 + 80);
  v9 = *(a2 + 96);
  v10 = *(a2 + 128);
  *(v4 + 112) = *(a2 + 112);
  *(v4 + 128) = v10;
  *(v4 + 80) = v8;
  *(v4 + 96) = v9;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4 + 144, *(a2 + 144), *(a2 + 152), (*(a2 + 152) - *(a2 + 144)) >> 2);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4 + 168, *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 2);
  *(a1 + 8) = v4 + 192;
  return result;
}

void sub_270F24DC0(_Unwind_Exception *a1)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 152) = v5;
    operator delete(v5);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t std::vector<EarFrame>::__emplace_back_slow_path<EarFrame const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x155555555555555)
  {
    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v6 = 0x155555555555555;
  }

  else
  {
    v6 = v3;
  }

  v23 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<EarFrame>>(a1, v6);
  }

  v7 = 192 * v2;
  v20 = 0;
  v21 = 192 * v2;
  v22 = 192 * v2;
  *v7 = *a2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 64);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 64) = v10;
  *(v7 + 16) = v8;
  *(v7 + 32) = v9;
  v11 = *(a2 + 80);
  v12 = *(a2 + 96);
  v13 = *(a2 + 128);
  *(v7 + 112) = *(a2 + 112);
  *(v7 + 128) = v13;
  *(v7 + 80) = v11;
  *(v7 + 96) = v12;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(192 * v2 + 144, *(a2 + 144), *(a2 + 152), (*(a2 + 152) - *(a2 + 144)) >> 2);
  *(v7 + 168) = 0;
  *(v7 + 176) = 0;
  *(v7 + 184) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(192 * v2 + 168, *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 2);
  *&v22 = v22 + 192;
  v14 = a1[1];
  v15 = v21 + *a1 - v14;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<EarFrame>,EarFrame*>(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  std::__split_buffer<EarFrame>::~__split_buffer(&v20);
  return v19;
}

void sub_270F24F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<EarFrame>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<EarFrame>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<EarFrame>>::destroy[abi:ne200100]<EarFrame,void,0>(a1, i))
  {
    i -= 192;
  }

  *(a1 + 8) = a2;
}

void *_ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(v6, v10);
    }

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
}

float anonymous namespace::ComputeArea(float *a1)
{
  v1 = a1[72];
  v2 = a1[24];
  v3 = a1[25];
  v4 = a1[73];
  v5 = a1[26];
  v6 = a1[74];
  v7 = sqrtf((((v3 - v4) * (v3 - v4)) + ((v2 - v1) * (v2 - v1))) + ((v5 - v6) * (v5 - v6)));
  v8 = a1[120];
  v9 = a1[121];
  v10 = ((v4 - v9) * (v4 - v9)) + ((v1 - v8) * (v1 - v8));
  v11 = a1[122];
  v12 = sqrtf(v10 + ((v6 - v11) * (v6 - v11)));
  v13 = sqrtf((((v9 - v3) * (v9 - v3)) + ((v8 - v2) * (v8 - v2))) + ((v11 - v5) * (v11 - v5)));
  return sqrtf((((v13 + (v7 + v12)) * 0.5) - v13) * ((((v13 + (v7 + v12)) * 0.5) - v12) * (((v13 + (v7 + v12)) * 0.5) * (((v13 + (v7 + v12)) * 0.5) - v7))));
}

uint64_t std::array<EarFrame,3ul>::array(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 576; i += 192)
  {
    v5 = a1 + i;
    v6 = (a2 + i);
    *v5 = *(a2 + i);
    v7 = *(a2 + i + 80);
    v8 = *(a2 + i + 96);
    v9 = *(a2 + i + 112);
    v10 = *(a2 + i + 128);
    v11 = *(a2 + i + 16);
    v12 = *(a2 + i + 32);
    v13 = *(a2 + i + 48);
    v14 = *(a2 + i + 64);
    *(v5 + 144) = 0;
    *(v5 + 48) = v13;
    *(v5 + 64) = v14;
    *(v5 + 16) = v11;
    *(v5 + 32) = v12;
    *(v5 + 112) = v9;
    *(v5 + 128) = v10;
    *(v5 + 80) = v7;
    *(v5 + 96) = v8;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + i + 144, v6[18], v6[19], (v6[19] - v6[18]) >> 2);
    *(v5 + 168) = 0;
    *(v5 + 176) = 0;
    v15 = a1 + i + 168;
    *(v15 + 16) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v15, v6[21], v6[22], (v6[22] - v6[21]) >> 2);
  }

  return a1;
}

void sub_270F252B8(_Unwind_Exception *a1)
{
  v4 = (v1 + v2);
  v6 = *v4;
  v5 = (v4 - 24);

  if (v2)
  {
    v7 = -v2;
    do
    {
      EarFrame::~EarFrame(v5);
      v5 -= 4;
      v7 += 192;
    }

    while (v7);
  }

  _Unwind_Resume(a1);
}

uint64_t std::array<EarFrame,3ul>::~array(uint64_t a1)
{
  v2 = 576;
  do
  {
    v3 = a1 + v2;
    v4 = *(a1 + v2 - 24);
    if (v4)
    {
      *(v3 - 16) = v4;
      operator delete(v4);
    }

    v5 = *(v3 - 48);
    if (v5)
    {
      *(a1 + v2 - 40) = v5;
      operator delete(v5);
    }

    v2 -= 192;
  }

  while (v2);
  return a1;
}

void vg::ear_detection::EarPCADetector::EarDetectionOutput::~EarDetectionOutput(vg::ear_detection::EarPCADetector::EarDetectionOutput *this)
{
  if (*(this + 176) == 1)
  {
    v2 = *(this + 19);
    if (v2)
    {
      *(this + 20) = v2;
      operator delete(v2);
    }

    v3 = *(this + 16);
    if (v3)
    {
      *(this + 17) = v3;
      operator delete(v3);
    }
  }
}

vg::ear_detection::EarPCADetector *std::unique_ptr<vg::ear_detection::EarPCADetector>::reset[abi:ne200100](vg::ear_detection::EarPCADetector **a1, vg::ear_detection::EarPCADetector *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    vg::ear_detection::EarPCADetector::~EarPCADetector(result);

    JUMPOUT(0x2743B9370);
  }

  return result;
}

void sub_270F25968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VGFaceKitTracker;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_270F25AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  cva::DictionaryHandler::~DictionaryHandler(va);
  _Unwind_Resume(a1);
}

void sub_270F25BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  cva::DictionaryHandler::~DictionaryHandler(va);
  _Unwind_Resume(a1);
}

void sub_270F2691C(_Unwind_Exception *a1)
{
  v10 = v9;

  _Unwind_Resume(a1);
}

void sub_270F26A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

BOOL device_space_joint_pos(float32x4_t *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 jointConfidence];
  v7 = [v6 objectAtIndexedSubscript:a3];
  [v7 floatValue];
  v9 = v8;

  if (v9 >= 0.2)
  {
    [v5 rootTransform];
    v18 = v10;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v14 = [v5 modelPoses];
    v15 = [v14 objectAtIndexedSubscript:a3];
    [v15 modelPose];
    *a1 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v16.f32[0]), v19, *v16.f32, 1), v20, v16, 2), v21, v16, 3);
  }

  return v9 >= 0.2;
}

void missing_joint(NSString *a1@<X0>, uint64_t a2@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not calculate pose values. Joint %@ not visible. Try a different pose.", v3];
  *a2 = 29;
  *(a2 + 8) = [MEMORY[0x277CCACA8] stringWithFormat:@"Body Pose Guidance filter failed with feedback: %@", v4];
  *(a2 + 16) = 0;
  v8 = v4;
  v9 = @"poseGuidance";
  v7 = @"feedback";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v10[0] = v5;
  *(a2 + 24) = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = *MEMORY[0x277D85DE8];
}

float angle_deg_in_2d_plane(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  v3 = vmulq_f32(a1, a3);
  v4 = vmulq_f32(a1, a2);
  return (atan2f(v3.f32[2] + vaddv_f32(*v3.f32), v4.f32[2] + vaddv_f32(*v4.f32)) * 180.0) / 3.14159265;
}

float deg_angle_between(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a1);
  v3 = vmulq_f32(a2, a2);
  v2.f32[0] = sqrtf(v2.f32[2] + vaddv_f32(*v2.f32)) + 1.0e-16;
  v3.f32[0] = sqrtf(v3.f32[2] + vaddv_f32(*v3.f32)) + 1.0e-16;
  v4 = vmulq_f32(vdivq_f32(a1, vdupq_lane_s32(*v2.f32, 0)), vdivq_f32(a2, vdupq_lane_s32(*v3.f32, 0)));
  return (acosf(v4.f32[2] + vaddv_f32(*v4.f32)) * 180.0) / 3.14159265;
}

void ___ZL25blendshapesInitializationv_block_invoke()
{
  v9[51] = *MEMORY[0x277D85DE8];
  v9[0] = @"eyeBlink_L";
  v9[1] = @"eyeBlink_R";
  v9[2] = @"eyeSquint_L";
  v9[3] = @"eyeSquint_R";
  v9[4] = @"eyeLookDown_L";
  v9[5] = @"eyeLookDown_R";
  v9[6] = @"eyeLookIn_L";
  v9[7] = @"eyeLookIn_R";
  v9[8] = @"eyeWide_L";
  v9[9] = @"eyeWide_R";
  v9[10] = @"eyeLookOut_L";
  v9[11] = @"eyeLookOut_R";
  v9[12] = @"eyeLookUp_L";
  v9[13] = @"eyeLookUp_R";
  v9[14] = @"browDown_L";
  v9[15] = @"browDown_R";
  v9[16] = @"browInnerUp";
  v9[17] = @"browOuterUp_L";
  v9[18] = @"browOuterUp_R";
  v9[19] = @"jawOpen";
  v9[20] = @"mouthClose";
  v9[21] = @"jawLeft";
  v9[22] = @"jawRight";
  v9[23] = @"jawForward";
  v9[24] = @"mouthUpperUp_L";
  v9[25] = @"mouthUpperUp_R";
  v9[26] = @"mouthLowerDown_L";
  v9[27] = @"mouthLowerDown_R";
  v9[28] = @"mouthRollUpper";
  v9[29] = @"mouthRollLower";
  v9[30] = @"mouthSmile_L";
  v9[31] = @"mouthSmile_R";
  v9[32] = @"mouthDimple_L";
  v9[33] = @"mouthDimple_R";
  v9[34] = @"mouthStretch_L";
  v9[35] = @"mouthStretch_R";
  v9[36] = @"mouthFrown_L";
  v9[37] = @"mouthFrown_R";
  v9[38] = @"mouthPress_L";
  v9[39] = @"mouthPress_R";
  v9[40] = @"mouthPucker";
  v9[41] = @"mouthFunnel";
  v9[42] = @"mouthLeft";
  v9[43] = @"mouthRight";
  v9[44] = @"mouthShrugLower";
  v9[45] = @"mouthShrugUpper";
  v9[46] = @"noseSneer_L";
  v9[47] = @"noseSneer_R";
  v9[48] = @"cheekPuff";
  v9[49] = @"cheekSquint_L";
  v9[50] = @"cheekSquint_R";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:51];
  v1 = objc_opt_new();
  for (i = 0; i < [v0 count]; ++i)
  {
    v3 = [v0 objectAtIndex:i];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:i];
    [v1 setObject:v4 forKeyedSubscript:v3];
  }

  v5 = _blendshapeNames;
  _blendshapeNames = v0;
  v6 = v0;

  v7 = _blendshapeNameToIdx;
  _blendshapeNameToIdx = v1;

  v8 = *MEMORY[0x277D85DE8];
}

id vg::frame_selection::VGEarCaptureOptions::toDictionary(vg::frame_selection::VGEarCaptureOptions *this, double a2)
{
  v37[17] = *MEMORY[0x277D85DE8];
  v36[0] = @"earPresenceThreshold";
  LODWORD(a2) = *this;
  v35 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  v37[0] = v35;
  v36[1] = @"earOcclusionThreshold";
  LODWORD(v3) = *(this + 1);
  v34 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  v37[1] = v34;
  v36[2] = @"bboxVisibilityThreshold";
  LODWORD(v4) = *(this + 2);
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v37[2] = v33;
  v36[3] = @"landmarkVisibilityThreshold";
  LODWORD(v5) = *(this + 3);
  v32 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v37[3] = v32;
  v36[4] = @"percentileDetectionConfidence";
  LODWORD(v6) = *(this + 4);
  v31 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v37[4] = v31;
  v36[5] = @"yawCount";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + 3)];
  v37[5] = v30;
  v36[6] = @"pitchCount";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + 4)];
  v37[6] = v29;
  v36[7] = @"yawLimit";
  LODWORD(v7) = *(this + 10);
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v37[7] = v8;
  v36[8] = @"yawSensitivity";
  LODWORD(v9) = *(this + 11);
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v37[8] = v10;
  v36[9] = @"pitchLimit";
  LODWORD(v11) = *(this + 12);
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v37[9] = v12;
  v36[10] = @"pitchSensitivity";
  LODWORD(v13) = *(this + 13);
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v37[10] = v14;
  v36[11] = @"writeDebugData";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:*(this + 56)];
  v37[11] = v15;
  v36[12] = @"debugDataPath";
  v16 = objc_alloc(MEMORY[0x277CCACA8]);
  v17 = (this + 64);
  if (*(this + 87) < 0)
  {
    v17 = *v17;
  }

  v18 = [v16 initWithUTF8String:v17];
  v37[12] = v18;
  v36[13] = @"modelsRootPath";
  v19 = objc_alloc(MEMORY[0x277CCACA8]);
  v20 = (this + 88);
  if (*(this + 111) < 0)
  {
    v20 = *v20;
  }

  v21 = [v19 initWithUTF8String:v20];
  v37[13] = v21;
  v36[14] = @"useMotionBlurFilter";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:*(this + 112)];
  v37[14] = v22;
  v36[15] = @"motionBlurFilterThreshold";
  LODWORD(v23) = *(this + 29);
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v36[16] = @"yawAngles";
  v25 = *(this + 15);
  v37[15] = v24;
  v37[16] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:17];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

id vg::frame_selection::face_tracker::createARKitDictFromFaceKitDict(vg::frame_selection::face_tracker *this, float64x2_t *a2, const CGSize *a3)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v41 = this;
  v4 = objc_opt_new();
  v5 = [(vg::frame_selection::face_tracker *)v41 objectForKeyedSubscript:@"timestamp"];
  [v4 setObject:v5 forKeyedSubscript:@"timestamp"];

  v40 = [(vg::frame_selection::face_tracker *)v41 objectForKeyedSubscript:@"tracked_faces"];
  if ([v40 count])
  {
    v39 = [v40 firstObject];
    v6 = objc_opt_new();
    [v6 setObject:&unk_2880F5CD8 forKeyedSubscript:@"confidence"];
    v7 = [v39 objectForKeyedSubscript:@"smooth_data"];
    v8 = objc_opt_new();
    v9 = [v7 objectForKeyedSubscript:@"pose"];
    [v8 setObject:v9 forKeyedSubscript:@"pose"];

    v10 = [v7 objectForKeyedSubscript:@"geometry"];
    v11 = objc_opt_new();
    v12 = [v10 objectForKeyedSubscript:@"vertices"];
    [v11 setObject:v12 forKeyedSubscript:@"vertices"];

    v13 = [v10 objectForKeyedSubscript:@"landmarks"];
    [v11 setObject:v13 forKeyedSubscript:@"landmarks"];

    [v8 setObject:v11 forKeyedSubscript:@"geometry"];
    v14 = [v7 objectForKeyedSubscript:@"animation"];
    v15 = objc_opt_new();
    v16 = [v14 objectForKeyedSubscript:@"left_eye_pitch"];
    [v15 setObject:v16 forKeyedSubscript:@"left_eye_pitch"];

    v17 = [v14 objectForKeyedSubscript:@"left_eye_yaw"];
    [v15 setObject:v17 forKeyedSubscript:@"left_eye_yaw"];

    v18 = [v14 objectForKeyedSubscript:@"right_eye_pitch"];
    [v15 setObject:v18 forKeyedSubscript:@"right_eye_pitch"];

    v19 = [v14 objectForKeyedSubscript:@"right_eye_yaw"];
    [v15 setObject:v19 forKeyedSubscript:@"right_eye_yaw"];

    v20 = [v14 objectForKeyedSubscript:@"gaze"];
    [v15 setObject:v20 forKeyedSubscript:@"gaze"];

    v21 = [v14 objectForKeyedSubscript:@"blendshapes"];
    [v15 setObject:v21 forKeyedSubscript:@"blendshapes"];

    [v8 setObject:v15 forKeyedSubscript:@"animation"];
    v22 = [v7 objectForKeyedSubscript:@"rgb_camera"];
    v23 = objc_opt_new();
    v24 = [v22 objectForKeyedSubscript:@"intrinsics"];
    [v23 setObject:v24 forKeyedSubscript:@"intrinsics"];

    [v8 setObject:v23 forKeyedSubscript:@"rgb_camera"];
    [v6 setObject:v8 forKeyedSubscript:@"smooth_data"];
    v25 = [v8 objectForKeyedSubscript:@"geometry"];
    v26 = [v25 objectForKeyedSubscript:@"landmarks"];
    v27 = v26;
    if (v26)
    {
      v28 = [v26 length];
      v29 = [v27 bytes];
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(&__p, v28 >> 3);
      if (v28 >= 8)
      {
        v30 = 0;
        do
        {
          *(__p + v30) = *(v29 + 8 * v30);
          ++v30;
        }

        while (v28 >> 3 != v30);
      }
    }

    else
    {
      __p = 0;
      v43 = 0;
      v44 = 0;
    }

    v32 = v40;
    v33.i32[0] = 1036831949;
    v47.origin.x = vg::shared::computeBBox(&__p, a2, 0.1, v33);
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v47);
    [v6 setObject:DictionaryRepresentation forKeyedSubscript:@"Rect"];

    v45[0] = v6;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
    [v4 setObject:v35 forKeyedSubscript:@"tracked_faces"];

    v36 = v4;
    if (__p)
    {
      v43 = __p;
      operator delete(__p);
    }
  }

  else
  {
    [v4 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:@"tracked_faces"];
    v31 = v4;
    v32 = v40;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v4;
}

void *_ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void sub_270F298EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_270F29AE4(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_270F2A060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VGFaceCaptureData;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_270F3016C(_Unwind_Exception *a1)
{
  v2[2](v2);

  v1[2](v1);
  __39__VGCaptureData__createColorFromYCbCr___block_invoke();
  _Unwind_Resume(a1);
}

id VGLogVGCaptureData(void)
{
  if (VGLogVGCaptureData(void)::onceToken != -1)
  {
    VGLogVGCaptureData();
  }

  v1 = VGLogVGCaptureData(void)::handle;

  return v1;
}

void sub_270F30754(_Unwind_Exception *a1)
{
  v6 = v4;

  __88__VGCaptureData_computeYuvHighResChromaticAdaptationReverted_chromaticAdaptationMatrix___block_invoke();
  _Unwind_Resume(a1);
}

void sub_270F30FE0(_Unwind_Exception *a1)
{
  v5[2](v5);

  v4[2](v4);
  v3[2](v3);

  v2[2](v2);
  _Unwind_Resume(a1);
}

void sub_270F31D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VGCaptureData;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_270F33C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, void *a12)
{
  if (a10)
  {
    if (!v17)
    {
      goto LABEL_6;
    }
  }

  else
  {

    if ((v17 & 1) == 0)
    {
LABEL_6:
      if (v15)
      {
        if (!v19)
        {
          goto LABEL_11;
        }
      }

      else
      {

        if ((v19 & 1) == 0)
        {
LABEL_11:
          if (!v18)
          {
          }

          _Unwind_Resume(a1);
        }
      }

      goto LABEL_11;
    }
  }

  goto LABEL_6;
}

void ___ZL18VGLogVGCaptureDatav_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "VGCaptureData");
  v1 = VGLogVGCaptureData(void)::handle;
  VGLogVGCaptureData(void)::handle = v0;
}

void vg::frame_selection::VGBlendshapeExpressionFilter::processBlendshapeConfigFile(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v54[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  v33 = [MEMORY[0x277CCACA8] stringWithCString:v2 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding", a2)}];
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] vg_resourcePath];
  v48[0] = v4;
  v48[1] = @"VGExpressionFilterConfigs";
  v48[2] = v33;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
  v34 = [v3 pathWithComponents:v5];

  v6 = VGReadJSON(v34);
  v32 = v6;
  if (v6)
  {
    v35 = +[VGFaceTrackerHelper blendshapeNamesToIdx];
    v41 = 0uLL;
    v42 = 0;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v7)
    {
      v8 = *v38;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v38 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v37 + 1) + 8 * i);
          v54[0] = @"name";
          v54[1] = @"clip_threshold_low";
          v54[2] = @"clip_threshold_high";
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v43 objects:v51 count:16];
          if (v13)
          {
            v14 = *v44;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v44 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v43 + 1) + 8 * j);
                v17 = [v10 objectForKey:v16];
                v18 = v17 == 0;

                if (v18)
                {
                  v28 = __VGLogSharedInstance();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v50 = v16;
                    _os_log_impl(&dword_270F06000, v28, OS_LOG_TYPE_ERROR, " Blendshape config is invalid. Missing key: %@ ", buf, 0xCu);
                  }

                  goto LABEL_25;
                }
              }

              v13 = [v12 countByEnumeratingWithState:&v43 objects:v51 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          v19 = [v10 objectForKeyedSubscript:@"name"];
          v20 = v19;
          std::string::basic_string[abi:ne200100]<0>(v51, [v19 UTF8String]);
          v21 = [v35 objectForKeyedSubscript:v19];
          *&v53 = [v21 unsignedIntValue];
          v22 = [v10 objectForKeyedSubscript:@"clip_threshold_low"];
          [v22 floatValue];
          DWORD2(v53) = v23;
          v24 = [v10 objectForKeyedSubscript:@"clip_threshold_high"];
          [v24 floatValue];
          HIDWORD(v53) = v25;
          v26 = *(&v41 + 1);
          if (*(&v41 + 1) >= v42)
          {
            *(&v41 + 1) = std::vector<vg::frame_selection::BlendshapeConfig>::__emplace_back_slow_path<vg::frame_selection::BlendshapeConfig>(&v41, v51);
            if (SHIBYTE(v52) < 0)
            {
              operator delete(*v51);
            }
          }

          else
          {
            v27 = *v51;
            *(*(&v41 + 1) + 16) = v52;
            *v26 = v27;
            v52 = 0;
            memset(v51, 0, sizeof(v51));
            *(v26 + 24) = v53;
            *(&v41 + 1) = v26 + 40;
          }

LABEL_25:
          ;
        }

        v7 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v7);
    }

    *v31 = v41;
    *(v31 + 16) = v42;
    v42 = 0;
    v41 = 0uLL;
    *(v31 + 24) = 1;
    *v51 = &v41;
    std::vector<vg::frame_selection::BlendshapeConfig>::__destroy_vector::operator()[abi:ne200100](v51);
  }

  else
  {
    v29 = __VGLogSharedInstance();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v51 = 138412290;
      *&v51[4] = v34;
      _os_log_impl(&dword_270F06000, v29, OS_LOG_TYPE_ERROR, " Unable to parse blendshape config from file: %@ ", v51, 0xCu);
    }

    *v31 = 0;
    *(v31 + 24) = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
}

void vg::frame_selection::VGBlendshapeExpressionFilter::getBlendshapesFromTrackingData(vg::frame_selection::VGBlendshapeExpressionFilter *this@<X0>, uint64_t a2@<X8>)
{
  __p[3] = *MEMORY[0x277D85DE8];
  v4 = [(vg::frame_selection::VGBlendshapeExpressionFilter *)this objectForKeyedSubscript:@"tracked_faces"];
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectForKeyedSubscript:@"smooth_data"];
      v9 = [v8 objectForKeyedSubscript:@"animation"];

      v10 = [v9 objectForKeyedSubscript:@"blendshapes"];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 length];
        v13 = +[VGFaceTrackerHelper blendshapeNames];
        if (v12 >> 2 == [v13 count])
        {
          v14 = [v11 bytes];
          v15 = [v11 length];
          memset(__p, 0, 24);
          std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(__p, v14, v14 + (v15 & 0xFFFFFFFFFFFFFFFCLL), v15 >> 2);
          *a2 = 0;
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a2, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
          *(a2 + 24) = 1;
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        else
        {
          v17 = __VGLogSharedInstance();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            LODWORD(__p[0]) = 134217984;
            *(__p + 4) = [v13 count];
            _os_log_impl(&dword_270F06000, v17, OS_LOG_TYPE_ERROR, " Blendshape values should consist of %lu floats ", __p, 0xCu);
          }

          *a2 = 0;
          *(a2 + 24) = 0;
        }
      }

      else
      {
        v16 = __VGLogSharedInstance();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&dword_270F06000, v16, OS_LOG_TYPE_ERROR, " Blendshape values not found in the tracking dictionary ", __p, 2u);
        }

        *a2 = 0;
        *(a2 + 24) = 0;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
}

vg::frame_selection::VGExpressionIsNeutralFilter *vg::frame_selection::VGExpressionIsNeutralFilter::VGExpressionIsNeutralFilter(vg::frame_selection::VGExpressionIsNeutralFilter *this)
{
  v15 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  v2 = (this + 16);
  *(this + 2) = 16;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = &unk_2880E6E90;
  std::string::basic_string[abi:ne200100]<0>(&v11, "VGExpressionIsNeutralFilter.ExpressionFilterConfig.json");
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  vg::frame_selection::VGBlendshapeExpressionFilter::processBlendshapeConfigFile(&__p, &v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = 0;
  buf = 0uLL;
  if (v10 == 1)
  {
    std::vector<vg::frame_selection::BlendshapeConfig>::__init_with_size[abi:ne200100]<vg::frame_selection::BlendshapeConfig*,vg::frame_selection::BlendshapeConfig*>(&buf, v8, v9, 0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3));
  }

  if (v2 != &buf)
  {
    std::vector<vg::frame_selection::BlendshapeConfig>::__assign_with_size[abi:ne200100]<vg::frame_selection::BlendshapeConfig*,vg::frame_selection::BlendshapeConfig*>(v2, buf, *(&buf + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&buf + 1) - buf) >> 3));
  }

  p_buf = &buf;
  std::vector<vg::frame_selection::BlendshapeConfig>::__destroy_vector::operator()[abi:ne200100](&p_buf);
  v3 = __VGLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 3) - *(this + 2)) >> 3);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_270F06000, v3, OS_LOG_TYPE_INFO, " Loaded %zu blendshape configurations for VGExpressionIsNeutralFilter_New filter ", &buf, 0xCu);
  }

  if (v10 == 1)
  {
    *&buf = &v8;
    std::vector<vg::frame_selection::BlendshapeConfig>::__destroy_vector::operator()[abi:ne200100](&buf);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v5 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_270F34964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  *v25 = &unk_2880E6EF8;
  std::vector<vg::frame_selection::BlendshapeConfig>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

float vg::frame_selection::VGExpressionIsNeutralFilter::filter(vg::frame_selection::VGExpressionIsNeutralFilter *this, NSDictionary *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  vg::frame_selection::VGBlendshapeExpressionFilter::getBlendshapesFromTrackingData(v3, &v26);
  if (v28)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v4 = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v23, v26, v27, (v27 - v26) >> 2);
    memset(&__p, 0, sizeof(__p));
    v21 = 0x80000000000000;
    v5 = *(this + 2);
    v6 = *(this + 3);
    v7 = 0.0;
    while (v5 != v6)
    {
      v8 = vg::frame_selection::VGExpressionFilter::remap(v4, *(v23 + *(v5 + 24)), *(v5 + 32), *(v5 + 36));
      v9 = *&v8;
      v10 = *(&v21 + 1);
      if (v9 > *(&v21 + 1))
      {
        if (*(&v21 + 1) <= v9)
        {
          v10 = v9;
        }

        *(&v21 + 1) = v10;
        v4 = std::string::operator=(&__p, v5);
        LODWORD(v21) = *(v23 + *(v5 + 24));
      }

      v7 = v7 + v9;
      v5 += 40;
    }

    v13 = __VGLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 134218498;
      v30 = *(&v21 + 1);
      v31 = 2048;
      v32 = *&v21;
      v33 = 2080;
      v34 = p_p;
      _os_log_impl(&dword_270F06000, v13, OS_LOG_TYPE_DEBUG, " VGExpressionIsNeutralFilter: Max blendshape found: clippedValue: %f, rawValue: %f, name: %s ", buf, 0x20u);
    }

    v16 = *(this + 2);
    v15 = *(this + 3);
    v17 = __VGLogSharedInstance();
    v18 = v7 / (0xCCCCCCCCCCCCCCCDLL * ((v15 - v16) >> 3));
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v30 = v18;
      _os_log_impl(&dword_270F06000, v17, OS_LOG_TYPE_DEBUG, " VGExpressionIsNeutralFilter: L1Distance = %f ", buf, 0xCu);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    v12 = 1.0 - v18;
  }

  else
  {
    v11 = __VGLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_270F06000, v11, OS_LOG_TYPE_ERROR, " No blendshapes found in tracking data ", &v21, 2u);
    }

    v12 = 0.0;
  }

  if (v28 == 1 && v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_270F34CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a23 == 1)
  {
    if (a20)
    {
      operator delete(a20);
    }
  }

  _Unwind_Resume(a1);
}

void vg::frame_selection::VGExpressionIsNeutralFilter::~VGExpressionIsNeutralFilter(vg::frame_selection::VGExpressionIsNeutralFilter *this)
{
  *this = &unk_2880E6EF8;
  v1 = (this + 16);
  std::vector<vg::frame_selection::BlendshapeConfig>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2880E6EF8;
  v2 = (this + 16);
  std::vector<vg::frame_selection::BlendshapeConfig>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x2743B9370](this, 0x10A1C4037ACD87BLL);
}

uint64_t std::vector<vg::frame_selection::BlendshapeConfig>::__emplace_back_slow_path<vg::frame_selection::BlendshapeConfig>(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
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

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vg::frame_selection::BlendshapeConfig>>(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v7 + 24) = *(a2 + 24);
  *&v17 = 40 * v2 + 40;
  v9 = *(a1 + 8);
  v10 = 40 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vg::frame_selection::BlendshapeConfig>,vg::frame_selection::BlendshapeConfig*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<vg::frame_selection::BlendshapeConfig>::~__split_buffer(&v15);
  return v14;
}

void sub_270F34F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<vg::frame_selection::BlendshapeConfig>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<vg::frame_selection::BlendshapeConfig>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vg::frame_selection::BlendshapeConfig>,vg::frame_selection::BlendshapeConfig*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 = (v6 + 40);
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 40);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vg::frame_selection::BlendshapeConfig>,vg::frame_selection::BlendshapeConfig*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vg::frame_selection::BlendshapeConfig>,vg::frame_selection::BlendshapeConfig*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<vg::frame_selection::BlendshapeConfig>,vg::frame_selection::BlendshapeConfig*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<vg::frame_selection::BlendshapeConfig>,vg::frame_selection::BlendshapeConfig*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 17);
    v1 -= 5;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<vg::frame_selection::BlendshapeConfig>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<vg::frame_selection::BlendshapeConfig>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<vg::frame_selection::BlendshapeConfig>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<vg::frame_selection::BlendshapeConfig>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<vg::frame_selection::BlendshapeConfig>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<vg::frame_selection::BlendshapeConfig>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t std::vector<vg::frame_selection::BlendshapeConfig>::__init_with_size[abi:ne200100]<vg::frame_selection::BlendshapeConfig*,vg::frame_selection::BlendshapeConfig*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<vg::frame_selection::BlendshapeConfig>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_270F35270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<vg::frame_selection::BlendshapeConfig>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<vg::frame_selection::BlendshapeConfig>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vg::frame_selection::BlendshapeConfig>>(a1, a2);
  }

  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<vg::frame_selection::BlendshapeConfig>,vg::frame_selection::BlendshapeConfig*,vg::frame_selection::BlendshapeConfig*,vg::frame_selection::BlendshapeConfig*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      *&v4[1].__r_.__value_.__l.__data_ = *(v6 + 24);
      v6 = (v6 + 40);
      v4 = (v8 + 40);
      v13 = (v8 + 40);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vg::frame_selection::BlendshapeConfig>,vg::frame_selection::BlendshapeConfig*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

void std::vector<vg::frame_selection::BlendshapeConfig>::__assign_with_size[abi:ne200100]<vg::frame_selection::BlendshapeConfig*,vg::frame_selection::BlendshapeConfig*>(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<vg::frame_selection::BlendshapeConfig>::__vdeallocate(a1);
    if (a4 <= 0x666666666666666)
    {
      v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
      {
        v10 = 0x666666666666666;
      }

      else
      {
        v10 = v9;
      }

      std::vector<vg::frame_selection::BlendshapeConfig>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8, v6);
        *(v8 + 24) = *&v6[1].__r_.__value_.__l.__data_;
        v6 = (v6 + 40);
        v8 += 40;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v13 = v11[-1].__r_.__value_.__s.__data_[7];
      v11 = (v11 - 40);
      if (v13 < 0)
      {
        operator delete(v11->__r_.__value_.__l.__data_);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v12 = (v11 + __str - v8);
    if (v11 != v8)
    {
      do
      {
        std::string::operator=(v8, v6);
        *(v8 + 24) = *&v6[1].__r_.__value_.__l.__data_;
        v6 = (v6 + 40);
        v8 += 40;
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<vg::frame_selection::BlendshapeConfig>,vg::frame_selection::BlendshapeConfig*,vg::frame_selection::BlendshapeConfig*,vg::frame_selection::BlendshapeConfig*>(a1, v12, a3, v11);
  }
}

void std::vector<vg::frame_selection::BlendshapeConfig>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<vg::frame_selection::BlendshapeConfig>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_270F3618C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_270F36908(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t vg::frame_selection::VGBlurDetectorImpl::init(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *a2;
  *(a1 + 48) = *(a2 + 8);
  return 1;
}

uint64_t vg::frame_selection::VGBlurDetectorImpl::_detectMotionBlur(uint64_t a1, unint64_t *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a2[1];
  v5 = a2[2];
  v6 = (a2 + 1);
  if (v4 == v5)
  {
    v12 = __VGLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *a2;
      *buf = 134217984;
      v41 = v13;
      _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_INFO, " VGBlurDetectorImpl::isMotionBlurPresent: no landmarks data for frame#%zu ", buf, 0xCu);
    }

    if (*(a1 + 24) == 1)
    {
      v14 = *a1;
      if (*a1)
      {
        *(a1 + 8) = v14;
        operator delete(v14);
      }

      *(a1 + 24) = 0;
    }
  }

  else
  {
    v7 = *a2;
    v8 = *(a1 + 32);
    if (*a2 >= v8)
    {
      if (*(a1 + 24))
      {
        v15 = v7 - v8;
        if (v7 != v8)
        {
          __src = 0;
          v38 = 0;
          v39 = 0;
          std::vector<float>::reserve(&__src, (v5 - v4) >> 3);
          v19 = a2[1];
          if (a2[2] != v19)
          {
            v20 = 0;
            v21 = v15;
            v22 = v38;
            do
            {
              v23 = vsub_f32(*(v19 + 8 * v20), *(*a1 + 8 * v20));
              v24 = sqrtf(vaddv_f32(vmul_f32(v23, v23))) / v21;
              if (v22 >= v39)
              {
                v25 = __src;
                v26 = v22 - __src;
                v27 = (v22 - __src) >> 2;
                v28 = v27 + 1;
                if ((v27 + 1) >> 62)
                {
                  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
                }

                v29 = v39 - __src;
                if ((v39 - __src) >> 1 > v28)
                {
                  v28 = v29 >> 1;
                }

                if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v30 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v30 = v28;
                }

                if (v30)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v30);
                }

                v31 = (v22 - __src) >> 2;
                v32 = (4 * v27);
                v33 = (4 * v27 - 4 * v31);
                *v32 = v24;
                v22 = v32 + 1;
                memcpy(v33, v25, v26);
                v34 = __src;
                __src = v33;
                v38 = v22;
                v39 = 0;
                if (v34)
                {
                  operator delete(v34);
                }
              }

              else
              {
                *v22++ = v24;
              }

              v38 = v22;
              ++v20;
              v19 = a2[1];
            }

            while (v20 < (a2[2] - v19) >> 3);
          }

          vg::shared::computeMedian<float>();
        }

        v16 = __VGLogSharedInstance();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v16, OS_LOG_TYPE_ERROR, " VGBlurDetectorImpl::isMotionBlurPresent: delta time must be positive ", buf, 2u);
        }
      }

      else
      {
        v17 = __VGLogSharedInstance();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = *a2;
          *buf = 134217984;
          v41 = v18;
          _os_log_impl(&dword_270F06000, v17, OS_LOG_TYPE_INFO, " VGBlurDetectorImpl::isMotionBlurPresent: no previous landmarks data recorded, updated with data from frame#%zu ", buf, 0xCu);
        }

        _ZNSt3__18optionalINS_6vectorIDv2_fNS_9allocatorIS2_EEEEEaSB8ne200100IRKS5_vEERS6_OT_(a1, v6);
        *(a1 + 32) = *a2;
      }
    }

    else
    {
      v9 = __VGLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *a2;
        v11 = *(a1 + 32);
        *buf = 134218496;
        v41 = v10;
        v42 = 2048;
        v43 = v10;
        v44 = 2048;
        v45 = v11;
        _os_log_impl(&dword_270F06000, v9, OS_LOG_TYPE_ERROR, " Frame#%zu has timestamp value lower than the timestamp of the previously processed frame (%zu < %zu) ", buf, 0x20u);
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_270F36F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__18optionalINS_6vectorIDv2_fNS_9allocatorIS2_EEEEEaSB8ne200100IRKS5_vEERS6_OT_(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t vg::frame_selection::VGBlurDetectorImpl::_detectMotionBlurHRTF(uint64_t a1, char **a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (*a2 >= v4)
  {
    if (*(a1 + 24))
    {
      v8 = &(*a2)[-v4];
      if (v8)
      {
        v14 = v8;
        v15 = v8 / *(a1 + 40);
        if (v15 > 0.0)
        {
          __src = 0;
          v32 = 0;
          v33 = 0;
          std::vector<float>::reserve(&__src, (a2[2] - a2[1]) >> 3);
          v16 = a2[1];
          if (a2[2] != v16)
          {
            v17 = 0;
            v18 = v32;
            do
            {
              v19 = vsub_f32(*&v16[8 * v17], *(*a1 + 8 * v17));
              v20 = (vaddv_f32(vmul_f32(v19, v19)) / v14) / v15;
              if (v18 >= v33)
              {
                v21 = __src;
                v22 = v18 - __src;
                v23 = (v18 - __src) >> 2;
                v24 = v23 + 1;
                if ((v23 + 1) >> 62)
                {
                  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
                }

                v25 = v33 - __src;
                if ((v33 - __src) >> 1 > v24)
                {
                  v24 = v25 >> 1;
                }

                if (v25 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v26 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v26 = v24;
                }

                if (v26)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v26);
                }

                v27 = (v18 - __src) >> 2;
                v28 = (4 * v23);
                v29 = (4 * v23 - 4 * v27);
                *v28 = v20;
                v18 = v28 + 1;
                memcpy(v29, v21, v22);
                v30 = __src;
                __src = v29;
                v32 = v18;
                v33 = 0;
                if (v30)
                {
                  operator delete(v30);
                }
              }

              else
              {
                *v18++ = v20;
              }

              v32 = v18;
              ++v17;
              v16 = a2[1];
            }

            while (v17 < (a2[2] - v16) >> 3);
          }

          vg::shared::computeMedian<float>();
        }

        v9 = __VGLogSharedInstance();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v9, OS_LOG_TYPE_ERROR, " VGBlurDetectorImpl::isMotionBlurPresent: delta frames must be positive ", buf, 2u);
        }
      }

      else
      {
        v9 = __VGLogSharedInstance();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v9, OS_LOG_TYPE_ERROR, " VGBlurDetectorImpl::isMotionBlurPresent: delta time must be positive ", buf, 2u);
        }
      }
    }

    else
    {
      v10 = __VGLogSharedInstance();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *a2;
        *buf = 134217984;
        v35 = v11;
        _os_log_impl(&dword_270F06000, v10, OS_LOG_TYPE_INFO, " VGBlurDetectorImpl::isMotionBlurPresent: no previous landmarks data recorded, updated with data from frame#%zu ", buf, 0xCu);
      }

      _ZNSt3__18optionalINS_6vectorIDv2_fNS_9allocatorIS2_EEEEEaSB8ne200100IRKS5_vEERS6_OT_(a1, a2 + 1);
      *(a1 + 32) = *a2;
    }
  }

  else
  {
    v5 = __VGLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *a2;
      v7 = *(a1 + 32);
      *buf = 134218496;
      v35 = v6;
      v36 = 2048;
      v37 = v6;
      v38 = 2048;
      v39 = v7;
      _os_log_impl(&dword_270F06000, v5, OS_LOG_TYPE_ERROR, " Frame#%zu has timestamp value lower than the timestamp of the previously processed frame (%zu < %zu) ", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_270F374E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vg::frame_selection::VGBlurDetectorImpl::detectMotionBlur(uint64_t a1, char **a2)
{
  v4 = VGLogVGBlurDetector();
  if (os_signpost_enabled(v4))
  {
    v8[0] = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DetectMotionBlur", &unk_270FBF062, v8, 2u);
  }

  if (*(a1 + 48) == 1)
  {
    v5 = vg::frame_selection::VGBlurDetectorImpl::_detectMotionBlurHRTF(a1, a2);
  }

  else
  {
    v5 = vg::frame_selection::VGBlurDetectorImpl::_detectMotionBlur(a1, a2);
  }

  v6 = v5;
  ___ZN2vg15frame_selection18VGBlurDetectorImpl16detectMotionBlurERKNS0_19VGBlurDetectorInputE_block_invoke();
  return v6;
}

id VGLogVGBlurDetector(void)
{
  if (VGLogVGBlurDetector(void)::onceToken != -1)
  {
    VGLogVGBlurDetector();
  }

  v1 = VGLogVGBlurDetector(void)::handle;

  return v1;
}

void ___ZN2vg15frame_selection18VGBlurDetectorImpl16detectMotionBlurERKNS0_19VGBlurDetectorInputE_block_invoke()
{
  v0 = VGLogVGBlurDetector();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DetectMotionBlur", &unk_270FBF062, v1, 2u);
  }
}

void vg::frame_selection::VGBlurDetectorImpl::resetPreviousState(vg::frame_selection::VGBlurDetectorImpl *this)
{
  v2 = __VGLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_270F06000, v2, OS_LOG_TYPE_INFO, " VGBlurDetectorImpl::resetPreviousState: resetting previous state of the detector ", v4, 2u);
  }

  if (*(this + 24) == 1)
  {
    v3 = *this;
    if (*this)
    {
      *(this + 1) = v3;
      operator delete(v3);
    }

    *(this + 24) = 0;
  }

  *(this + 4) = 0;
}

void vg::frame_selection::VGBlurDetector::VGBlurDetector(vg::frame_selection::VGBlurDetector *this)
{
  operator new();
}

{
  operator new();
}

void vg::frame_selection::VGBlurDetector::~VGBlurDetector(vg::frame_selection::VGBlurDetector *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::default_delete<vg::frame_selection::VGBlurDetectorImpl>::operator()[abi:ne200100](this, v1);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::default_delete<vg::frame_selection::VGBlurDetectorImpl>::operator()[abi:ne200100](this, v1);
  }
}

uint64_t _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_270F379B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL19VGLogVGBlurDetectorv_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "VGBlurDetector");
  v1 = VGLogVGBlurDetector(void)::handle;
  VGLogVGBlurDetector(void)::handle = v0;
}

void std::default_delete<vg::frame_selection::VGBlurDetectorImpl>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 24) == 1)
    {
      v2 = *a2;
      if (*a2)
      {
        *(a2 + 8) = v2;
        operator delete(v2);
      }
    }

    JUMPOUT(0x2743B9370);
  }
}

uint64_t vg::frame_selection::metrics::sendStartEvent(vg::frame_selection::metrics *this)
{
  isSupported = vg::shared::metrics::isSupported(this);
  if (!isSupported)
  {
    return 0;
  }

  v2 = vg::shared::metrics::createDictionary(isSupported);
  v4 = vg::shared::metrics::sendEvent("com.apple.visage.frameSelectionStart", v2, v3);

  return v4;
}

uint64_t vg::frame_selection::metrics::sendCompleteEvent(vg::frame_selection::metrics *this, const Data *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  isSupported = vg::shared::metrics::isSupported(this);
  if (!isSupported)
  {
LABEL_91:
    v53 = 0;
    goto LABEL_92;
  }

  if (!*(this + 1))
  {
    v54 = __VGLogSharedInstance();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v54, OS_LOG_TYPE_ERROR, " Invalid metrics data: no processed frame ", buf, 2u);
    }

    goto LABEL_91;
  }

  v4 = vg::shared::metrics::createDictionary(isSupported);
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*this];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"stateFullyComplete"];
  [v4 setObject:v5 forKeyedSubscript:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + 1)];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"counterNumProcessedFrames"];
  [v4 setObject:v7 forKeyedSubscript:v8];

  for (i = 0; i != 42; ++i)
  {
    if (*(this + i + 2))
    {
      v10 = "counterNumRejectedFramesBadState";
      switch(i)
      {
        case 1:
          goto LABEL_46;
        case 2:
          v10 = "counterNumRejectedFramesNoTrackingData";
          goto LABEL_46;
        case 3:
          v10 = "counterNumRejectedFramesNoTrackedFace";
          goto LABEL_46;
        case 4:
          v10 = "counterNumRejectedFramesTrackedFaceIdentifierChanged";
          goto LABEL_46;
        case 5:
          v10 = "counterNumRejectedFramesLowAmbientLight";
          goto LABEL_46;
        case 6:
          v10 = "counterNumRejectedFramesMotionBlurDetected";
          goto LABEL_46;
        case 7:
          v10 = "counterNumRejectedFramesMotionBlurTemporalStateInit";
          goto LABEL_46;
        case 8:
          v10 = "counterNumRejectedFramesLowTrackingConfidence";
          goto LABEL_46;
        case 9:
          v10 = "counterNumRejectedFramesFaceLandmarksNotDetected";
          goto LABEL_46;
        case 10:
          v10 = "counterNumRejectedFramesWarmupFrameFiltering";
          goto LABEL_46;
        case 11:
          v10 = "counterNumRejectedFramesFaceLeftOfFOV";
          goto LABEL_46;
        case 12:
          v10 = "counterNumRejectedFramesFaceRightOfFOV";
          goto LABEL_46;
        case 13:
          v10 = "counterNumRejectedFramesFaceTopOfFOV";
          goto LABEL_46;
        case 14:
          v10 = "counterNumRejectedFramesFaceBottomOfFOV";
          goto LABEL_46;
        case 15:
          v10 = "counterNumRejectedFramesOutOfRange";
          goto LABEL_46;
        case 16:
          v10 = "counterNumRejectedFramesExpressionOtherFilter";
          goto LABEL_46;
        case 17:
          v10 = "counterNumRejectedFramesExpressionIsEyesNeutralOpenFilter";
          goto LABEL_46;
        case 18:
          v10 = "counterNumRejectedFramesExpressionIsNeutralFilter";
          goto LABEL_46;
        case 19:
          v10 = "counterNumRejectedFramesExpressionIsEyesForwardFilter";
          goto LABEL_46;
        case 20:
          v10 = "counterNumRejectedFramesExpressionIsAlmostNeutralFilter";
          goto LABEL_46;
        case 21:
          v10 = "counterNumRejectedFramesExpressionIsMouthOpenFilter";
          goto LABEL_46;
        case 22:
          v10 = "counterNumRejectedFramesExpressionIsSmileClosedMouthFilter";
          goto LABEL_46;
        case 23:
          v10 = "counterNumRejectedFramesLowerScore";
          goto LABEL_46;
        case 24:
          v10 = "counterNumRejectedFramesBadAlignment";
          goto LABEL_46;
        case 25:
          v10 = "counterNumRejectedFramesLowerAlignment";
          goto LABEL_46;
        case 26:
          v10 = "counterNumRejectedFramesDistanceFilterFaceTooClose";
          goto LABEL_46;
        case 27:
          v10 = "counterNumRejectedFramesDistanceFilterFaceTooFar";
          goto LABEL_46;
        case 28:
          v10 = "counterNumRejectedFramesExpressionIsBlink";
          goto LABEL_46;
        case 29:
          v10 = "counterNumRejectedFramesBodyPoseGuidanceBodyJointsNotVisible";
          goto LABEL_46;
        case 30:
          v10 = "counterNumRejectedFramesBodyPoseGuidanceHeadNotUpright";
          goto LABEL_46;
        case 31:
          v10 = "counterNumRejectedFramesBodyPoseGuidanceShouldersNotStraight";
          goto LABEL_46;
        case 32:
          v10 = "counterNumRejectedFramesBodyPoseGuidanceLeftElbowTooHigh";
          goto LABEL_46;
        case 33:
          v10 = "counterNumRejectedFramesBodyPoseGuidanceLeftElbowTooLow";
          goto LABEL_46;
        case 34:
          v10 = "counterNumRejectedFramesBodyPoseGuidanceRightElbowTooHigh";
          goto LABEL_46;
        case 35:
          v10 = "counterNumRejectedFramesBodyPoseGuidanceRightElbowTooLow";
          goto LABEL_46;
        case 36:
          v10 = "counterNumRejectedFramesBodyPoseGuidanceShoulderHeightAsymmetric";
          goto LABEL_46;
        case 37:
          v10 = "counterNumRejectedFramesBodyPoseGuidanceLeftShoulderTooFarBehind";
          goto LABEL_46;
        case 38:
          v10 = "counterNumRejectedFramesBodyPoseGuidanceLeftShoulderTooFarInFront";
          goto LABEL_46;
        case 39:
          v10 = "counterNumRejectedFramesBodyPoseGuidanceRightShoulderTooFarBehind";
          goto LABEL_46;
        case 40:
          v10 = "counterNumRejectedFramesBodyPoseGuidanceRightShoulderTooFarInFront";
          goto LABEL_46;
        case 41:
          v10 = "counterNumRejectedFramesBodyPoseGuidanceLowerAggregatedScore";
LABEL_46:
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:?];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
          [v4 setObject:v11 forKeyedSubscript:v12];

          break;
        default:
          continue;
      }
    }
  }

  v13 = 0;
  *buf = 0x100000000;
  do
  {
    v14 = *&buf[v13];
    v15 = (this + 24 * v14 + 352);
    v18 = *v15;
    v17 = v15 + 1;
    v16 = v18;
    if (v18 != v17)
    {
      do
      {
        v19 = v16[4];
        if (v14 == 1)
        {
          if (!v19)
          {
            v20 = "counterPosePitch0NumCaptures";
            goto LABEL_58;
          }

          if (v19 == 1)
          {
            v20 = "counterPosePitch1NumCaptures";
            goto LABEL_58;
          }
        }

        else if (!v14 && v19 < 3)
        {
          v20 = off_279E28F00[v19];
LABEL_58:
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v16[5]];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:v20];
          [v4 setObject:v21 forKeyedSubscript:v22];
        }

        v23 = v16[1];
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
            v24 = v16[2];
            v25 = *v24 == v16;
            v16 = v24;
          }

          while (!v25);
        }

        v16 = v24;
      }

      while (v24 != v17);
    }

    v13 += 4;
  }

  while (v13 != 8);
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:((*(this + 51) - *(this + 50)) * 0.001)];
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"timingDurationUS"];
  [v4 setObject:v26 forKeyedSubscript:v27];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:((*(this + 52) / *(this + 1)) * 0.001)];
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"timingAverageProcessDurationUS"];
  [v4 setObject:v28 forKeyedSubscript:v29];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:((*(this + 53) / *(this + 1)) * 0.001)];
  v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"timingAverageFaceTrackingDurationUS"];
  [v4 setObject:v30 forKeyedSubscript:v31];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:((*(this + 54) / *(this + 1)) * 0.001)];
  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"timingAverageFaceSelectorDurationUS"];
  [v4 setObject:v32 forKeyedSubscript:v33];

  v35 = 0;
  *buf = 0x100000000;
  do
  {
    v36 = *&buf[v35];
    v37 = (this + 24 * v36 + 440);
    v40 = *v37;
    v39 = v37 + 1;
    v38 = v40;
    if (v40 != v39)
    {
      do
      {
        v41 = v38[4];
        if (v36 == 1)
        {
          if (!v41)
          {
            v42 = "timingPosePitch0FirstCaptureTimeUS";
            goto LABEL_76;
          }

          if (v41 == 1)
          {
            v42 = "timingPosePitch1FirstCaptureTimeUS";
            goto LABEL_76;
          }
        }

        else if (!v36 && v41 < 3)
        {
          v42 = off_279E28F18[v41];
LABEL_76:
          v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:((v38[5] - *(this + 50)) * 0.001)];
          v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:v42];
          [v4 setObject:v43 forKeyedSubscript:v44];
        }

        v45 = v38[1];
        if (v45)
        {
          do
          {
            v46 = v45;
            v45 = *v45;
          }

          while (v45);
        }

        else
        {
          do
          {
            v46 = v38[2];
            v25 = *v46 == v38;
            v38 = v46;
          }

          while (!v25);
        }

        v38 = v46;
      }

      while (v46 != v39);
    }

    v35 += 4;
  }

  while (v35 != 8);
  v47 = *(this + 61);
  v48 = *(this + 62);
  v49 = v48 >= v47;
  v50 = v48 - v47;
  if (v50 != 0 && v49)
  {
    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v50 >> 10];
    v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"memoryUsageKB"];
    [v4 setObject:v51 forKeyedSubscript:v52];
  }

  v53 = vg::shared::metrics::sendEvent("com.apple.visage.frameSelectionComplete", v4, v34);

LABEL_92:
  v55 = *MEMORY[0x277D85DE8];
  return v53;
}