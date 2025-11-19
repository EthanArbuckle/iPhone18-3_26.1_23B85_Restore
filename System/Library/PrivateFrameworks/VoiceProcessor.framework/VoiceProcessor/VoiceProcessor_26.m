void sub_272687CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, caulk::concurrent::messenger **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a2)
  {
    std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>::reset[abi:ne200100](&a19);
    std::unique_ptr<vp::vx::components::Power_Log::Node_Delegate,vp::Allocator_Delete<vp::vx::components::Power_Log::Node_Delegate>>::reset[abi:ne200100](&a15, 0);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272687C58);
  }

  _Unwind_Resume(exception_object);
}

caulk::concurrent::messenger ***std::unique_ptr<vp::vx::components::Power_Log::Node_Delegate,vp::Allocator_Delete<vp::vx::components::Power_Log::Node_Delegate>>::reset[abi:ne200100](caulk::concurrent::messenger ***result, caulk::concurrent::messenger **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Power_Log::Node_Delegate::~Node_Delegate(v2);
    return (*(*v3[1] + 3))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void vp::cf::Predicate::create(id *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:a2 length:a3 encoding:1 freeWhenDone:0];
  applesauce::CF::StringRef::from_ns(&cf, v4);
  vp::cf::Predicate::create(a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void applesauce::CF::StringRef::from_ns(applesauce::CF::StringRef *this, NSString *a2)
{
  v3 = a2;
  if (v3)
  {
    cf = v3;
    CFRetain(v3);
    *this = cf;
    v4 = CFGetTypeID(cf);
    v5 = v4 == CFStringGetTypeID();
    v3 = cf;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }
}

void sub_272687EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v10);

  _Unwind_Resume(a1);
}

void vp::cf::Predicate::create(id *a1, uint64_t a2)
{
  *a1 = 0;
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:a2];
  v4 = v3;
  vp::objc::ID::operator=(a1, &v4);
  vp::objc::ID::~ID(&v4);
}

void sub_272687F50(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272687F40);
}

uint64_t vp::cf::Predicate::evaluate(id *this, const applesauce::CF::TypeRef *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*this evaluateWithObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_272687FAC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272687F9CLL);
}

void vp::vx::Property::read(vp::vx::Property *this, const vp::vx::data_flow::State_Transaction *a2, int *a3)
{
  default_resource = std::pmr::get_default_resource(this);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = default_resource;
  if (!*(a3 + 1))
  {
    goto LABEL_6;
  }

  v7 = *(a2 + 1);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *a3;
  v17 = *a2;
  v16 = v8;
  v11 = 0;
  v12 = &v11;
  v13 = v7;
  v14 = &v17;
  v15 = &v16;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v7, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::has_state_value(unsigned int,unsigned int)::$_0>, &v12);
  if (v11 == 1)
  {
    v9 = *(a2 + 1);
    if (v9)
    {
      v10 = *a3;
      v17 = *a2;
      v16 = v10;
      v12 = v9;
      v13 = &v17;
      v14 = &v16;
      v15 = this;
      vp::vx::data_flow::Engine::do_with_shared_state_lock(v9, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,unsigned int,vp::vx::data_flow::Value &)::$_0>, &v12);
    }
  }

  else
  {
LABEL_6:
    vp::vx::data_flow::State<void>::get_value(a2, this);
  }
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::Property::register_listener(std::function<void ()(void)>)::$_0,std::allocator<vp::vx::Property::register_listener(std::function<void ()(void)>)::$_0>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void std::__function::__func<vp::vx::Property::register_listener(std::function<void ()(void)>)::$_0,std::allocator<vp::vx::Property::register_listener(std::function<void ()(void)>)::$_0>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::Property::register_listener(std::function<void ()(void)>)::$_0,std::allocator<vp::vx::Property::register_listener(std::function<void ()(void)>)::$_0>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BA9B0;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::Property::register_listener(std::function<void ()(void)>)::$_0,std::allocator<vp::vx::Property::register_listener(std::function<void ()(void)>)::$_0>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BA9B0;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t vp::vx::io::Property_Controller_Delegate::process(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a3 + 16))(a3);
  if (result)
  {
    v6 = *(*a1 + 48);

    return v6(a1, a2, result);
  }

  return result;
}

void vp::vx::io::Property_Controller_Delegate::get_parameter_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void vp::vx::io::Property_Controller_Command::set_node(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v4 = (*(**a2 + 16))(*a2);
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = v4;
  v7 = v5;
  (*(*a1 + 40))(a1, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void vp::vx::io::Property_Controller_Command::get_parameter_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t std::__hash_node_destructor<vp::Allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::pair<std::vector<unsigned char,vp::Allocator<unsigned char>>,unsigned long>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = a2[3];
    if (v4)
    {
      a2[4] = v4;
      std::allocator_traits<vp::Allocator<unsigned char>>::deallocate[abi:ne200100](a2[6], v4, a2[5] - v4);
    }
  }

  v5 = **a1;

  return std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::pair<std::vector<unsigned char,vp::Allocator<unsigned char>>,unsigned long>>,void *>>>::deallocate[abi:ne200100](v5, a2);
}

uint64_t std::__exception_guard_exceptions<std::vector<unsigned char,vp::Allocator<unsigned char>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v2[1] = v3;
      std::allocator_traits<vp::Allocator<unsigned char>>::deallocate[abi:ne200100](v2[3], v3, v2[2] - v3);
    }
  }

  return a1;
}

double vp::vx::io::Property_Exchange::get_property(vp::vx::io::Property_Exchange *this, void *a2, const vp::vx::io::Property_Controller *a3, uint64_t a4)
{
  v6 = a2[1];
  if (v6)
  {
    v8 = vcnt_s8(v6);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = a3;
      if (v6 <= a3)
      {
        v9 = a3 % v6;
      }
    }

    else
    {
      v9 = (v6 - 1) & a3;
    }

    v10 = *(*a2 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a3)
        {
          if (*(i + 4) == a3)
          {
            vp::Mutable_Blob::Mutable_Blob(v22, i[3], i[4] - i[3]);
            (*(*a4 + 32))(v17, a4, a3, v22);
            if (v21)
            {
              i[7] = v23;
              *this = 0;
              *(this + 48) = 1;
              return result;
            }

            *&result = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v17).n128_u64[0];
            if ((v21 & 1) == 0 && SHIBYTE(v19) < 0)
            {
              v13 = v17[2];
              v15 = v19;
              v14 = v20;
LABEL_19:
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v14, v13, v15 & 0x7FFFFFFFFFFFFFFFLL);
            }

            return result;
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
          {
            if (v12 >= v6)
            {
              v12 %= v6;
            }
          }

          else
          {
            v12 &= v6 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v22[0] = 0x1300380000000ALL;
  v22[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Property_Exchange.cpp";
  v24 = 0;
  v25 = 0;
  v23 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v26);
  vp::vx::io::operator<<<char const(&)[45]>(v17, v22, "property exchange does not support property ");
  MEMORY[0x2743CBB40](&v18, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v17);
  *&result = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v22).n128_u64[0];
  if (SHIBYTE(v25) < 0)
  {
    v13 = v23;
    v15 = v25;
    v14 = v26;
    goto LABEL_19;
  }

  return result;
}

void *vp::Mutable_Blob::Mutable_Blob(void *this, void *a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  *this = a2;
  this[1] = a3;
  this[2] = 0;
  if (!a2)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (!a3)
  {
    goto LABEL_5;
  }

  v3 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_272688AA0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::sim::converters::CSV_Converter<float>::to_property_list(CFStringRef *a1, float **a2)
{
  v2 = a1;
  v39 = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    goto LABEL_30;
  }

  v5 = (MEMORY[0x277D82868] + 16);
  v26 = v35;
  do
  {
    v6 = *v3;
    memset(&v28, 0, sizeof(v28));
    __sb.__vftable = v5;
    memset(v30, 0, 96);
    MEMORY[0x2743CBDC0](v30);
    memset(&v30[1], 0, 80);
    v7 = (MEMORY[0x277D82878] + 16);
    __sb.__vftable = (MEMORY[0x277D82878] + 16);
    LODWORD(v30[11].__locale_) = 24;
    std::stringbuf::__init_buf_ptrs[abi:ne200100](&__sb);
    memset(&v30[1], 0, 24);
    __sb.__vftable = &unk_2881BA9F8;
    v31.__loc_ = 0;
    v30[12].__locale_ = (MEMORY[0x277D82850] + 24);
    v31.__vftable = (MEMORY[0x277D82850] + 64);
    std::ios_base::init(&v31, &__sb);
    v32 = 0;
    v33 = -1;
    v37 = &v34;
    v38 = v36;
    if (fabsf(v6) == INFINITY)
    {
      v8 = &v34;
      if ((LODWORD(v6) & 0x80000000) != 0)
      {
        v34 = 45;
        v8 = v26;
      }

      v8[2] = 102;
      *v8 = 28265;
      v9 = v8 + 3;
      v38 = v8 + 3;
      v10 = &v34;
LABEL_8:
      std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(&v28, v10, v9, v9 - v10);
      v11 = 1;
      goto LABEL_10;
    }

    v9 = &v35[sprintf(&v34, "%.*g", 9, v6) - 1];
    v38 = v9;
    v10 = v37;
    if (v9 > v37)
    {
      goto LABEL_8;
    }

    v11 = 0;
LABEL_10:
    std::ostream::~ostream();
    __sb.__vftable = v7;
    if (SHIBYTE(v30[9].__locale_) < 0)
    {
      operator delete(v30[7].__locale_);
    }

    __sb.__vftable = v5;
    std::locale::~locale(v30);
    if ((v11 & 1) == 0)
    {
      std::bad_cast::bad_cast(&__sb);
      __sb.__vftable = &unk_2881BABA0;
      boost::throw_exception<boost::bad_lexical_cast>();
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v28;
    }

    else
    {
      v12 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v28.__r_.__value_.__l.__size_;
    }

    std::string::append(&v27, v12, size);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    std::string::append(&v27, ", ", 2uLL);
    ++v3;
  }

  while (v3 != v4);
  v2 = a1;
  if (*a2 != a2[1])
  {
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v15 = v27.__r_.__value_.__r.__words[0];
      v14 = --v27.__r_.__value_.__l.__size_;
    }

    else
    {
      v14 = SHIBYTE(v27.__r_.__value_.__r.__words[2]) - 1;
      *(&v27.__r_.__value_.__s + 23) = v14 & 0x7F;
      v15 = &v27;
    }

    v15->__r_.__value_.__s.__data_[v14] = 0;
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v17 = v27.__r_.__value_.__r.__words[0];
      v16 = --v27.__r_.__value_.__l.__size_;
    }

    else
    {
      v16 = SHIBYTE(v27.__r_.__value_.__r.__words[2]) - 1;
      *(&v27.__r_.__value_.__s + 23) = v16 & 0x7F;
      v17 = &v27;
    }

    v17->__r_.__value_.__s.__data_[v16] = 0;
  }

LABEL_30:
  v18 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v27;
  }

  else
  {
    v19 = v27.__r_.__value_.__r.__words[0];
  }

  if (v19)
  {
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v27.__r_.__value_.__l.__size_;
    }

    v21 = CFStringCreateWithBytes(0, v19, v20, 0x8000100u, 0);
    *v2 = v21;
    if (!v21)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if ((*(&v27.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_39:
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v2 = 0;
    if (v18 < 0)
    {
      goto LABEL_39;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_272688EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::exception a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v40);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

uint64_t boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,21ul>::~lexical_istream_limited_src(uint64_t a1)
{
  std::ostream::~ostream();
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void boost::throw_exception<boost::bad_lexical_cast>()
{
  exception = __cxa_allocate_exception(0x38uLL);
  exception[4] = 0;
  exception[5] = 0;
  *(exception + 12) = -1;
  *exception = &unk_2881BAAF8;
  exception[1] = &unk_2881BAB28;
  exception[2] = &unk_2881BAB50;
  exception[3] = 0;
}

uint64_t boost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_2881BABC8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::exception::~exception((a1 + 8));
  return a1;
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

void non-virtual thunk toboost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(void *a1)
{
  *a1 = &unk_2881BABC8;
  v1 = (a1 - 1);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x2743CBFA0);
}

{
  *a1 = &unk_2881BABC8;
  v1 = (a1 - 1);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::exception::~exception(v1);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(uint64_t a1)
{
  *(a1 + 8) = &unk_2881BABC8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 16));
  std::exception::~exception(a1);

  JUMPOUT(0x2743CBFA0);
}

{
  *(a1 + 8) = &unk_2881BABC8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 16));

  std::exception::~exception(a1);
}

void boost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_2881BABC8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

void boost::wrapexcept<boost::bad_lexical_cast>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  boost::wrapexcept<boost::bad_lexical_cast>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::bad_lexical_cast>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881BAB70;
  *(a1 + 8) = &unk_2881BABA0;
  v4 = *(a2 + 24);
  *(a1 + 16) = &unk_2881BABC8;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &unk_2881BAAF8;
  *(a1 + 8) = &unk_2881BAB28;
  *(a1 + 16) = &unk_2881BAB50;
  return a1;
}

void sub_2726897B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

void boost::bad_lexical_cast::~bad_lexical_cast(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x2743CBFA0);
}

double boost::detail::basic_pointerbuf<char,std::stringbuf>::seekpos@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x10) == 0)
  {
    v4 = a1[2];
    v5 = *(a2 + 128);
    if (v5 <= a1[4] - v4)
    {
      v6 = v4 + v5;
      v7 = a1[4];
      a1[3] = v6;
      a1[4] = v7;
    }
  }

  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = -1;
  return result;
}

double boost::detail::basic_pointerbuf<char,std::stringbuf>::seekoff@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 0x10) != 0)
  {
    v7 = -1;
    goto LABEL_19;
  }

  v5 = a1[2];
  v6 = a1[4] - v5;
  if (!a3)
  {
    v7 = -1;
    if (a2 < 0 || v6 < a2)
    {
      goto LABEL_19;
    }

    v9 = v5 + a2;
LABEL_15:
    v8 = a1[4];
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v7 = -1;
    v10 = a1[3] - v5 + a2;
    if (v10 < 0 || v10 > v6)
    {
      goto LABEL_19;
    }

    v9 = a1[3] + a2;
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    v9 = a1[3];
    goto LABEL_18;
  }

  v7 = -1;
  if ((a2 & 0x8000000000000000) == 0 && v6 >= a2)
  {
    v8 = a1[4];
    v9 = v8 - a2;
LABEL_16:
    a1[3] = v9;
    a1[4] = v8;
LABEL_18:
    v7 = v9 - v5;
  }

LABEL_19:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

void *boost::detail::basic_pointerbuf<char,std::stringbuf>::setbuf(void *result, uint64_t a2, uint64_t a3)
{
  result[2] = a2;
  result[3] = a2;
  result[4] = a2 + a3;
  return result;
}

void boost::detail::basic_unlockedbuf<std::stringbuf,char>::~basic_unlockedbuf(uint64_t a1)
{
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t boost::detail::basic_unlockedbuf<std::stringbuf,char>::~basic_unlockedbuf(uint64_t a1)
{
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_272689B64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::vector[abi:ne200100](void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_272689C14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void vp::sim::throw_exception(vp::sim *this, const char *a2, ...)
{
  va_start(va, a2);
  va_copy(v5, va);
  caulk::make_string("failed to write %s to property list", &v4, va);
  exception = __cxa_allocate_exception(0x10uLL);
  v3 = v4;
  memset(&v4, 0, sizeof(v4));
  std::logic_error::logic_error(exception, &v3);
  exception->__vftable = &unk_2881BB398;
}

void sub_272689CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void vp::sim::Exception::~Exception(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x2743CBFA0);
}

CFTypeID vp::sim::converters::Default_Converter<CA::StreamDescription>::to_property_list(CFStringRef *a1, uint64_t a2, const char *a3)
{
  vp::sim::throw_exception_if (*(a2 + 8) != 1819304813, "non-PCM audio formats are not supported", a3);
  vp::sim::throw_exception_if ((*(a2 + 12) & 0x1F81) != 1, "fixed-point audio formats are not supported", v5);
  v6 = "D";
  if ((*(a2 + 12) & 0x20) == 0)
  {
    v6 = "I";
  }

  return applesauce::CF::make_StringRef(@"F%u@%.0f/%X,%u%s", a1, *(a2 + 32), *a2, *(a2 + 12), *(a2 + 28), v6);
}

uint64_t vp::sim::throw_exception_if (uint64_t this, caulk *a2, const char *a3, ...)
{
  va_start(va, a3);
  if (this)
  {
    va_copy(v6, va);
    caulk::make_string(a2, &v5, va);
    exception = __cxa_allocate_exception(0x10uLL);
    v4 = v5;
    memset(&v5, 0, sizeof(v5));
    std::logic_error::logic_error(exception, &v4);
    exception->__vftable = &unk_2881BB398;
  }

  return this;
}

void sub_272689EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

CFIndex vp::sim::Key_Writer::count(vp::sim::Key_Writer **a1, uint64_t a2, uint64_t a3)
{
  applesauce::CF::make_StringRef(@"%02u. %s", &cf, a2, a3);
  v4 = vp::sim::Key_Writer::count(*a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

{
  applesauce::CF::make_StringRef(@"%02u. %s", &cf, a2, a3);
  v4 = vp::sim::Key_Writer::count(*a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

CFIndex vp::sim::Key_Writer::count(vp::sim::Key_Writer *this, const applesauce::CF::StringRef *a2)
{
  Value = CFDictionaryGetValue(this, a2);
  v3 = Value;
  if (!Value)
  {
    return 0;
  }

  CFRetain(Value);
  v4 = CFGetTypeID(v3);
  if (v4 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(v3);
  }

  else
  {
    Count = 0;
  }

  CFRelease(v3);
  return Count;
}

void vp::sim::Key_Writer::set(CFDictionaryRef *a1, uint64_t a2, uint64_t a3, const void **a4)
{
  applesauce::CF::make_StringRef(@"%02u. %s", &cf, a2, a3);
  vp::sim::Key_Writer::set(a1, &cf, a4);
  if (cf)
  {
    CFRelease(cf);
  }
}

{
  applesauce::CF::make_StringRef(@"%02u. %s", &cf, a2, a3);
  vp::sim::Key_Writer::set(a1, &cf, a4);
  if (cf)
  {
    CFRelease(cf);
  }
}

void vp::sim::Key_Writer::set(CFDictionaryRef *this, const void **a2, const void **a3)
{
  Value = CFDictionaryGetValue(*this, *a2);
  v7 = Value;
  if (!Value || (CFRetain(Value), v8 = CFGetTypeID(v7), v8 != CFArrayGetTypeID()))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF128]);
    if (v7)
    {
      CFRelease(v7);
    }

    CFDictionarySetValue(*this, *a2, Mutable);
    v7 = Mutable;
  }

  CFArrayAppendValue(v7, *a3);
  if (v7)
  {
    CFRelease(v7);
  }
}

const __CFArray *vp::sim::Property_List_Writer::size(const __CFArray *this)
{
  if (this)
  {
    return CFArrayGetCount(this);
  }

  return this;
}

const void *vp::sim::Property_List_Writer::find_writable_element(vp::sim::Property_List_Writer *this, CFArrayRef *a2, unint64_t a3)
{
  v6 = *MEMORY[0x277CBECE8];
  if (!*a2)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], a3 + 1, MEMORY[0x277CBF128]);
    v8 = *a2;
    *a2 = Mutable;
    if (v8)
    {
      CFRelease(v8);
    }
  }

  while (1)
  {
    Count = CFArrayGetCount(*a2);
    v10 = *a2;
    if (Count > a3)
    {
      break;
    }

    v11 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFArrayAppendValue(v10, v11);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  result = CFArrayGetValueAtIndex(*a2, a3);
  v13 = result;
  if (result)
  {
    result = CFRetain(result);
  }

  *this = v13;
  return result;
}

uint64_t vp::sim::Property_List_Writer::write_to(CFPropertyListRef *a1)
{
  if (vp::sim::Property_List_Writer::size(*a1))
  {
    Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], *a1, kCFPropertyListXMLFormat_v1_0, 0, 0);
    CFDataGetBytePtr(Data);
    CFDataGetLength(Data);
    std::ostream::write();
    if (Data)
    {
      CFRelease(Data);
    }
  }

  return 1;
}

void sub_27268A38C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27268A374);
}

uint64_t vp::utility::pretty_print_path(_BYTE *a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  (*(*a2 + 24))(a2, &v8);
  if ((v15 & 0x10) != 0)
  {
    v5 = v14;
    if (v14 < v11)
    {
      v14 = v11;
      v5 = v11;
    }

    locale = v10[4].__locale_;
  }

  else
  {
    if ((v15 & 8) == 0)
    {
      v4 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    locale = v10[1].__locale_;
    v5 = v10[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, locale, v4);
  }

LABEL_14:
  a1[v4] = 0;
  v8 = *MEMORY[0x277D82828];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
  v9 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(__p);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x2743CBE30](&v16);
}

void sub_27268A5DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  MEMORY[0x2743CBE30](v2 + 112);
  _Unwind_Resume(a1);
}

void *vp::utility::Property_List_Store::Property_List_Store(void *a1, const void *a2)
{
  *a1 = &unk_2881BABE8;
  if (a2)
  {
    CFRetain(a2);
  }

  a1[1] = a2;
  return a1;
}

uint64_t std::__shared_ptr_pointer<vp::utility::Property_List_Store  *>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void std::__shared_ptr_pointer<vp::utility::Property_List_Store  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

CFTypeRef vp::utility::Property_List_Store::parse@<X0>(CFTypeRef this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 1);
  if (v3)
  {
    this = CFRetain(*(this + 1));
  }

  *a2 = v3;
  return this;
}

void vp::utility::Property_List_Store::~Property_List_Store(vp::utility::Property_List_Store *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

void vp::utility::Property_List_Parser::Property_List_Parser(uint64_t a1, const void *a2)
{
  if (a2)
  {
    CFRetain(a2);
  }

  operator new();
}

void vp::utility::Property_List_Parser::operator[](void *a1, uint64_t *a2, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
    v6 = CFGetTypeID(cf);
    if (v6 != CFStringGetTypeID())
    {
      CFRelease(cf);
    }
  }

  vp::utility::Property_List_Parser::operator[](a1, *a2, a2[1]);
}

void sub_27268A9DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void vp::utility::Property_List_Parser::operator[](void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

uint64_t std::default_delete<vp::utility::Property_List_String_Key_Lookup>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      CFRelease(v4);
    }

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void std::__shared_ptr_pointer<vp::utility::Property_List_String_Key_Lookup  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::utility::Property_List_String_Key_Lookup::pretty_print(uint64_t a1, void *a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    (*(*v4 + 24))(v4, a2);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "[", 1);
  v5 = *(a1 + 8);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  applesauce::CF::convert_to<std::string,0>(__p, v5);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "]", 1);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void vp::utility::Property_List_String_Key_Lookup::parse(vp::utility::Property_List_String_Key_Lookup *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 2);
  if (v3)
  {
    goto LABEL_15;
  }

  (*(**(this + 3) + 16))(&v17);
  if (!v17 || (v5 = CFGetTypeID(v17), v5 != CFDictionaryGetTypeID()))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vp::utility::pretty_print_path(cf, *(this + 3));
    if (v15 >= 0)
    {
      v9 = cf;
    }

    else
    {
      v9 = cf[0];
    }

    caulk::make_string("expected dictionary at '%s'", v16, v9);
    MEMORY[0x2743CB8B0](exception, v16);
  }

  applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(v16, &v17);
  if (!v16[0])
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Could not construct");
  }

  cf[0] = 0;
  applesauce::CF::at_or<applesauce::CF::TypeRef,applesauce::CF::StringRef const&>(&v13, v16[0], *(this + 1), cf);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v16[0])
  {
    CFRelease(v16[0]);
  }

  v6 = v13;
  if (!v13)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    vp::utility::pretty_print_path(cf, this);
    if (v15 >= 0)
    {
      v12 = cf;
    }

    else
    {
      v12 = cf[0];
    }

    caulk::make_string("missing object at '%s'", v16, v12);
    MEMORY[0x2743CB8B0](v11, v16);
  }

  v7 = *(this + 2);
  *(this + 2) = v13;
  CFRetain(v6);
  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v6);
  if (v17)
  {
    CFRelease(v17);
  }

  v3 = *(this + 2);
  if (v3)
  {
LABEL_15:
    CFRetain(v3);
  }

  *a2 = v3;
}

void sub_27268AF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      applesauce::CF::TypeRef::~TypeRef(&a11);
      applesauce::CF::TypeRef::~TypeRef((v25 - 40));
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void applesauce::CF::at_or<applesauce::CF::TypeRef,applesauce::CF::StringRef const&>(void *a1, CFDictionaryRef theDict, void *key, void *a4)
{
  if (key && (Value = CFDictionaryGetValue(theDict, key), (v7 = Value) != 0))
  {
    CFRetain(Value);
    CFRetain(v7);
    *a1 = v7;
    CFRelease(v7);
  }

  else
  {
    *a1 = *a4;
    *a4 = 0;
  }
}

void vp::utility::Property_List_String_Key_Lookup::~Property_List_String_Key_Lookup(vp::utility::Property_List_String_Key_Lookup *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    CFRelease(v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    CFRelease(v4);
  }
}

void vp::utility::Property_List_Parser::path(vp::utility::Property_List_Parser *this, uint64_t a2)
{
  vp::utility::pretty_print_path(__p, a2);
  v3 = v9;
  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v4)
  {
    if ((v9 & 0x80u) == 0)
    {
      v5 = v9;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = CFStringCreateWithBytes(0, v4, v5, 0x8000100u, 0);
    *this = v6;
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if ((v9 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *this = 0;
    if ((v3 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p[0]);
    }
  }
}

void sub_27268B258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::utility::Property_List_Parser::operator BOOL(uint64_t a1)
{
  (*(*a1 + 16))(&cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return 1;
}

void sub_27268B2EC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27268B2DCLL);
}

void vp::utility::Property_List_Parser::for_each(uint64_t a1, std::__shared_weak_count *a2, const __CFArray *a3, const __CFArray *a4)
{
  theArray[1] = a3;
  theArray[2] = a4;
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 16))(cf);
  applesauce::CF::TypeRef::operator applesauce::CF::ArrayRef(theArray, cf);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  v5 = theArray[0];
  if (theArray[0])
  {
    Count = CFArrayGetCount(theArray[0]);
    v7 = Count;
    v8 = theArray[0];
    if (theArray[0])
    {
      v9 = CFArrayGetCount(theArray[0]);
      if (!v7)
      {
LABEL_17:
        if (theArray[0])
        {
          CFRelease(theArray[0]);
        }

        return;
      }
    }

    else
    {
      v9 = 0;
      if (!Count)
      {
        goto LABEL_17;
      }
    }

    if (v5 != v8 || v9)
    {
      applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&v10, v5, 0);
      if (v10)
      {
        CFRetain(v10);
      }

      vp::utility::Property_List_Parser::Property_List_Parser();
    }

    goto LABEL_17;
  }
}

void sub_27268B48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  applesauce::CF::TypeRef::~TypeRef(va);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

void vp::utility::Property_List_Parser::for_each(uint64_t a1, std::__shared_weak_count *a2, const void *a3, const void *a4)
{
  v20[1] = a3;
  v20[2] = a4;
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vp::utility::Property_List_Parser::Object::operator applesauce::CF::DictionaryRef<applesauce::CF::DictionaryRef>(v20, a1);
  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v14, v20[0]);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v8, v20[0]);
  v9 = (v11 - v10) >> 3;
  if (!v14)
  {
    v5 = v8;
    if (!v8)
    {
      goto LABEL_18;
    }

LABEL_10:
    if (v9 == (v11 - v10) >> 3)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  v5 = v8;
  if (v15 == (v17 - v16) >> 3)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

LABEL_11:
  if (v14 != v5 || v15 != v9)
  {
    applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::TypeRef>::dereference(&cf, &v14);
    if (cf)
    {
      CFRetain(cf);
    }

    if (v7)
    {
      CFRetain(v7);
    }

    vp::utility::Property_List_Parser::Property_List_Parser();
  }

LABEL_18:
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v20[0])
  {
    CFRelease(v20[0]);
  }
}

void sub_27268B6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::database::v1::utility::replace(CFTypeRef *a1, const void **a2, const void **a3)
{
  v6 = CFGetTypeID(*a1);
  if (v6 == CFDictionaryGetTypeID())
  {
    v7 = *a1;
    if (v7)
    {
      CFRetain(v7);
    }

    v24 = v7;
    v8 = *a2;
    if (v8)
    {
      CFRetain(v8);
    }

    v23 = v8;
    v9 = *a3;
    if (v9)
    {
      CFRetain(v9);
    }

    v22 = v9;
    vp::vx::database::v1::utility::replace(&v24, &v23, &v22);
    if (v9)
    {
      CFRelease(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else if (v6 == CFArrayGetTypeID())
  {
    v10 = *a1;
    if (v10)
    {
      CFRetain(v10);
    }

    v21[3] = v10;
    v11 = *a2;
    if (v11)
    {
      CFRetain(v11);
    }

    v21[2] = v11;
    v12 = *a3;
    if (v12)
    {
      CFRetain(v12);
    }

    v13 = 0;
    v21[1] = v12;
    while (v13 < CFArrayGetCount(v10))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
      v15 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }

      v27 = v15;
      if (v11)
      {
        CFRetain(v11);
      }

      v26 = v11;
      if (v12)
      {
        CFRetain(v12);
      }

      v25 = v12;
      vp::vx::database::v1::utility::replace(&v27, &v26, &v25);
      if (v12)
      {
        CFRelease(v12);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      ++v13;
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else if (v6 == CFStringGetTypeID())
  {
    v16 = *a1;
    if (v16)
    {
      CFRetain(v16);
    }

    v21[0] = v16;
    v17 = *a2;
    if (v17)
    {
      CFRetain(v17);
    }

    v20 = v17;
    v18 = *a3;
    if (v18)
    {
      CFRetain(v18);
    }

    v19 = v18;
    vp::vx::database::v1::utility::replace(v21, &v20, &v19);
    if (v18)
    {
      CFRelease(v18);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }
}

void sub_27268B9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, int a35, __int16 a36, char a37, char a38)
{
  applesauce::CF::StringRef::~StringRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  applesauce::CF::ObjectRef<__CFString *>::~ObjectRef(&a11);
  _Unwind_Resume(a1);
}

CFIndex vp::vx::database::v1::utility::replace(CFDictionaryRef *a1, CFTypeRef *a2, CFTypeRef *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  Count = CFDictionaryGetCount(*a1);
  MEMORY[0x28223BE20](Count);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v7 >= 0x200)
  {
    v9 = 512;
  }

  else
  {
    v9 = v7;
  }

  bzero(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  CFDictionaryGetKeysAndValues(*a1, 0, v8);
  for (i = 0; ; ++i)
  {
    result = CFDictionaryGetCount(*a1);
    if (i >= result)
    {
      break;
    }

    v12 = v8[i];
    if (v12)
    {
      CFRetain(v8[i]);
    }

    v18[0] = v12;
    v13 = *a2;
    if (*a2)
    {
      CFRetain(*a2);
    }

    v17 = v13;
    v14 = *a3;
    if (*a3)
    {
      CFRetain(*a3);
    }

    v16 = v14;
    vp::vx::database::v1::utility::replace(v18, &v17, &v16);
    if (v14)
    {
      CFRelease(v14);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27268BC04(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::database::v1::utility::replace(__CFString **a1, CFStringRef *a2, const __CFString **a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(*a2);
  MEMORY[0x28223BE20](Length);
  v8 = v13 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0);
  CFStringGetCString(*a2, v8, v7 + 1, 0x8000100u);
  applesauce::CF::make_StringRef(@"{%s}", v13, v8);
  v9 = *a1;
  v10 = v13[0];
  v11 = *a3;
  v14.length = CFStringGetLength(v9);
  v14.location = 0;
  CFStringFindAndReplace(v9, v10, v11, v14, 0);
  if (v13[0])
  {
    CFRelease(v13[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_27268BD58(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **applesauce::CF::ObjectRef<__CFString *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::begin_read_signal(uint64_t a1, int a2, uint64_t a3)
{
  if (!a2 && (*(a1 + 240) & 1) != 0)
  {
    vp::sim::utility::Audio_Time_Stamp_Tracker::track(&v9, (a1 + 424), a3);
    if (v11 == 1)
    {
      v5 = *(a1 + 376);
      v4 = *(a1 + 384);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!v5)
        {
LABEL_18:
          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
          return;
        }

        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = v4;
      }

      else
      {
        if (!v5)
        {
          return;
        }

        v6 = 0;
      }

      v7 = *(a1 + 248);
      if (v7)
      {
        if (!*MEMORY[0x277D7F098])
        {
          __break(1u);
          return;
        }

        v8 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
        *(v8 + 16) = 0;
        *v8 = &unk_2881BB4D8;
        *(v8 + 8) = 0;
        *(v8 + 24) = v5;
        *(v8 + 32) = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v8 + 40) = v9;
        *(v8 + 56) = v10;
        *v8 = &unk_2881BB4B0;
        caulk::concurrent::messenger::enqueue(v7, v8);
      }

      else
      {
        vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)2>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1}::operator()(v5, &v9);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      if (v4)
      {
        goto LABEL_18;
      }
    }
  }
}

void sub_27268BEF8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::sim::utility::Audio_Time_Stamp_Tracker::track(uint64_t this, const AudioTimeStamp *a2, uint64_t a3)
{
  *this = 0;
  *(this + 24) = 0;
  mSampleTime_low = LODWORD(a2->mSampleTime);
  if (*(a3 + 56))
  {
    v5 = *&a2->mHostTime;
    v6 = *a3;
    if ((mSampleTime_low & 0x80000000) == 0 || v5 != v6)
    {
      *(this + 24) = 1;
      *this = v5;
      *(this + 8) = v6;
      *(this + 16) = *(a3 + 8);
    }

    LODWORD(a2->mSampleTime) = mSampleTime_low | 0x80000000;
    v4 = *a3 + (mSampleTime_low & 0x7FFFFFFF);
  }

  else
  {
    LODWORD(a2->mSampleTime) = mSampleTime_low & 0x7FFFFFFF;
    v4 = 0.0;
  }

  *&a2->mHostTime = v4;
  return this;
}

void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)2>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1}::operator()(const __CFArray **a1, void *a2)
{
  v4 = vp::sim::Property_List_Writer::size(*a1);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(__p, a1, v5);
  v6 = __p[0];
  v10 = __p[0];
  caulk::make_string("%f, %f, %llu", __p, *a2, a2[1], a2[2]);
  vp::sim::Key_Writer::count(&v10, 2, "DLP Overload");
  vp::sim::converters::Default_Converter<std::string>::to_property_list(&v11, __p);
  isa = v11.isa;
  if (v11.isa)
  {
    CFRetain(v11.isa);
    v11.info = isa;
    vp::sim::Key_Writer::set(&v10, 2, "DLP Overload", &v11.info);
    CFRelease(isa);
  }

  else
  {
    v11.info = 0;
    vp::sim::Key_Writer::set(&v10, 2, "DLP Overload", &v11.info);
  }

  if (v11.isa)
  {
    CFRelease(v11.isa);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v6)
  {
LABEL_13:
    CFRelease(v6);
  }
}

void sub_27268C0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_end_catch();
  if (a18 < 0)
  {
    operator delete(__p);
  }

  vp::sim::Key_Writer::~Key_Writer((v18 - 40));
  _Unwind_Resume(a1);
}

void vp::sim::Key_Writer::~Key_Writer(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

CFStringRef vp::sim::converters::Default_Converter<std::string>::to_property_list(CFStringRef result, const UInt8 *a2)
{
  v2 = a2;
  p_isa = &result->isa;
  v4 = a2[23];
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v5 = *(v2 + 1);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    result = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    *p_isa = result;
    if (!result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    result->isa = 0;
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)2>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::perform(uint64_t a1)
{
  v2 = a1;
  vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)2>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1}::operator()(*(a1 + 24), (a1 + 40));
  return caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)2>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::rt_cleanup::~rt_cleanup(&v2);
}

void sub_27268C238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)2>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::rt_cleanup::~rt_cleanup(va);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)2>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = &unk_2881BB4D8;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  caulk::concurrent::message::~message(v2);
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

void caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)2>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::~rt_message_call(caulk::concurrent::message *this)
{
  *this = &unk_2881BB4D8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BB4D8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

void caulk::concurrent::details::message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)2>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::~message_call(caulk::concurrent::message *this)
{
  *this = &unk_2881BB4D8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BB4D8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

void vp::vx::components::Property_List_Writer::begin_write_data(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 3 && (*(a1 + 240) & 1) != 0)
  {
    vp::sim::utility::Audio_Time_Stamp_Tracker::track(&v9, (a1 + 440), a3);
    if (v11 == 1)
    {
      v5 = *(a1 + 376);
      v4 = *(a1 + 384);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!v5)
        {
LABEL_18:
          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
          goto LABEL_19;
        }

        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = v4;
LABEL_9:
        v7 = *(a1 + 248);
        if (v7)
        {
          if (!*MEMORY[0x277D7F098])
          {
            __break(1u);
            return;
          }

          v8 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
          *(v8 + 16) = 0;
          *v8 = &unk_2881BB488;
          *(v8 + 8) = 0;
          *(v8 + 24) = v5;
          *(v8 + 32) = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *(v8 + 40) = v9;
          *(v8 + 56) = v10;
          *v8 = &unk_2881BB460;
          caulk::concurrent::messenger::enqueue(v7, v8);
        }

        else
        {
          vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)3>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1}::operator()(v5, &v9);
        }

        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        if (!v4)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      if (v5)
      {
        v6 = 0;
        goto LABEL_9;
      }
    }

LABEL_19:
    atomic_fetch_add((a1 + 716), 1u);
  }
}

{
  if (*(a1 + 240) != 1)
  {
    return;
  }

  if (a2 == 1)
  {
    vp::sim::utility::Audio_Time_Stamp_Tracker::track(&v15, (a1 + 408), a3);
    if (v17 == 1)
    {
      v8 = *(a1 + 376);
      v7 = *(a1 + 384);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!v8)
        {
LABEL_35:
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          goto LABEL_36;
        }

        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = v7;
      }

      else
      {
        if (!v8)
        {
          goto LABEL_36;
        }

        v9 = 0;
      }

      v12 = *(a1 + 248);
      if (v12)
      {
        if (!*MEMORY[0x277D7F098])
        {
          goto LABEL_38;
        }

        v13 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
        *(v13 + 16) = 0;
        *v13 = &unk_2881BB438;
        *(v13 + 8) = 0;
        *(v13 + 24) = v8;
        *(v13 + 32) = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v13 + 40) = v15;
        *(v13 + 56) = v16;
        *v13 = &unk_2881BB410;
        caulk::concurrent::messenger::enqueue(v12, v13);
      }

      else
      {
        vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)0>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1}::operator()(v8, &v15);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      if (v7)
      {
        goto LABEL_35;
      }
    }

LABEL_36:
    *&v15 = caulk::concurrent::atomic_value<vp::sim::utility::Call_Counts_Recorder::Snapshot,2,6>::load((a1 + 512)) + 0x100000000;
    DWORD2(v15) = v14;
    caulk::concurrent::atomic_value<vp::sim::utility::Call_Counts_Recorder::Snapshot,2,6>::store(a1 + 512, &v15);
    atomic_fetch_add((a1 + 716), 1u);
    return;
  }

  if (a2)
  {
    return;
  }

  vp::sim::utility::Audio_Time_Stamp_Tracker::track(&v15, (a1 + 392), a3);
  if (v17 != 1)
  {
    return;
  }

  v5 = *(a1 + 376);
  v4 = *(a1 + 384);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v5)
    {
LABEL_30:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      return;
    }

    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = v4;
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v6 = 0;
  }

  v10 = *(a1 + 248);
  if (!v10)
  {
    vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)1>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1}::operator()(v5, &v15);
    goto LABEL_27;
  }

  if (!*MEMORY[0x277D7F098])
  {
LABEL_38:
    __break(1u);
    return;
  }

  v11 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
  *(v11 + 16) = 0;
  *v11 = &unk_2881BB3E8;
  *(v11 + 8) = 0;
  *(v11 + 24) = v5;
  *(v11 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v11 + 40) = v15;
  *(v11 + 56) = v16;
  *v11 = &unk_2881BB3C0;
  caulk::concurrent::messenger::enqueue(v10, v11);
LABEL_27:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v4)
  {
    goto LABEL_30;
  }
}

void sub_27268C5C8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)3>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1}::operator()(const __CFArray **a1, void *a2)
{
  v4 = vp::sim::Property_List_Writer::size(*a1);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(__p, a1, v5);
  v6 = __p[0];
  v10 = __p[0];
  caulk::make_string("%f, %f, %llu", __p, *a2, a2[1], a2[2]);
  vp::sim::Key_Writer::count(&v10, 3, "SPKR TEL Overload");
  vp::sim::converters::Default_Converter<std::string>::to_property_list(&v11, __p);
  isa = v11.isa;
  if (v11.isa)
  {
    CFRetain(v11.isa);
    v11.info = isa;
    vp::sim::Key_Writer::set(&v10, 3, "SPKR TEL Overload", &v11.info);
    CFRelease(isa);
  }

  else
  {
    v11.info = 0;
    vp::sim::Key_Writer::set(&v10, 3, "SPKR TEL Overload", &v11.info);
  }

  if (v11.isa)
  {
    CFRelease(v11.isa);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v6)
  {
LABEL_13:
    CFRelease(v6);
  }
}

void sub_27268C728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_end_catch();
  if (a18 < 0)
  {
    operator delete(__p);
  }

  vp::sim::Key_Writer::~Key_Writer((v18 - 40));
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)3>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::perform(uint64_t a1)
{
  v2 = a1;
  vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)3>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1}::operator()(*(a1 + 24), (a1 + 40));
  return caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)3>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::rt_cleanup::~rt_cleanup(&v2);
}

void sub_27268C794(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)3>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::rt_cleanup::~rt_cleanup(va);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)3>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = &unk_2881BB488;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  caulk::concurrent::message::~message(v2);
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

void caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)3>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::~rt_message_call(caulk::concurrent::message *this)
{
  *this = &unk_2881BB488;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BB488;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

void caulk::concurrent::details::message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)3>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::~message_call(caulk::concurrent::message *this)
{
  *this = &unk_2881BB488;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BB488;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

uint64_t vp::vx::components::Property_List_Writer::begin_process(uint64_t result, int a2)
{
  if (!a2)
  {
    v2 = result;
    if (*(result + 240))
    {
      v4 = caulk::concurrent::atomic_value<vp::sim::utility::Call_Counts_Recorder::Snapshot,2,6>::load((result + 512));
      v5 = v3 + 1;
      result = caulk::concurrent::atomic_value<vp::sim::utility::Call_Counts_Recorder::Snapshot,2,6>::store(v2 + 512, &v4);
      atomic_fetch_add((v2 + 716), 1u);
    }
  }

  return result;
}

{
  if (!a2)
  {
    v2 = result;
    if (*(result + 240))
    {
      v3 = caulk::concurrent::atomic_value<vp::sim::utility::Call_Counts_Recorder::Snapshot,2,6>::load((result + 512));
      HIDWORD(v5) = HIDWORD(v3);
      v6 = v4;
      LODWORD(v5) = v3 + 1;
      result = caulk::concurrent::atomic_value<vp::sim::utility::Call_Counts_Recorder::Snapshot,2,6>::store(v2 + 512, &v5);
      atomic_fetch_add((v2 + 716), 1u);
    }
  }

  return result;
}

void sub_27268CCB8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)0>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1}::operator()(const __CFArray **a1, void *a2)
{
  v4 = vp::sim::Property_List_Writer::size(*a1);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(__p, a1, v5);
  v6 = __p[0];
  v10 = __p[0];
  caulk::make_string("%f, %f, %llu", __p, *a2, a2[1], a2[2]);
  vp::sim::Key_Writer::count(&v10, 0, "REF Overload");
  vp::sim::converters::Default_Converter<std::string>::to_property_list(&v11, __p);
  isa = v11.isa;
  if (v11.isa)
  {
    CFRetain(v11.isa);
    v11.info = isa;
    vp::sim::Key_Writer::set(&v10, 0, "REF Overload", &v11.info);
    CFRelease(isa);
  }

  else
  {
    v11.info = 0;
    vp::sim::Key_Writer::set(&v10, 0, "REF Overload", &v11.info);
  }

  if (v11.isa)
  {
    CFRelease(v11.isa);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v6)
  {
LABEL_13:
    CFRelease(v6);
  }
}

void sub_27268CE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_end_catch();
  if (a18 < 0)
  {
    operator delete(__p);
  }

  vp::sim::Key_Writer::~Key_Writer((v18 - 40));
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)0>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::perform(uint64_t a1)
{
  v2 = a1;
  vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)0>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1}::operator()(*(a1 + 24), (a1 + 40));
  return caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)0>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::rt_cleanup::~rt_cleanup(&v2);
}

void sub_27268CE88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)0>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::rt_cleanup::~rt_cleanup(va);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)0>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = &unk_2881BB438;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  caulk::concurrent::message::~message(v2);
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

void caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)0>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::~rt_message_call(caulk::concurrent::message *this)
{
  *this = &unk_2881BB438;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BB438;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

void caulk::concurrent::details::message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)0>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::~message_call(caulk::concurrent::message *this)
{
  *this = &unk_2881BB438;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BB438;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)1>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1}::operator()(const __CFArray **a1, void *a2)
{
  v4 = vp::sim::Property_List_Writer::size(*a1);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(__p, a1, v5);
  v6 = __p[0];
  v10 = __p[0];
  caulk::make_string("%f, %f, %llu", __p, *a2, a2[1], a2[2]);
  vp::sim::Key_Writer::count(&v10, 1, "MIC Overload");
  vp::sim::converters::Default_Converter<std::string>::to_property_list(&v11, __p);
  isa = v11.isa;
  if (v11.isa)
  {
    CFRetain(v11.isa);
    v11.info = isa;
    vp::sim::Key_Writer::set(&v10, 1, "MIC Overload", &v11.info);
    CFRelease(isa);
  }

  else
  {
    v11.info = 0;
    vp::sim::Key_Writer::set(&v10, 1, "MIC Overload", &v11.info);
  }

  if (v11.isa)
  {
    CFRelease(v11.isa);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v6)
  {
LABEL_13:
    CFRelease(v6);
  }
}

void sub_27268D1FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_end_catch();
  if (a18 < 0)
  {
    operator delete(__p);
  }

  vp::sim::Key_Writer::~Key_Writer((v18 - 40));
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)1>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::perform(uint64_t a1)
{
  v2 = a1;
  vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)1>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1}::operator()(*(a1 + 24), (a1 + 40));
  return caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)1>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::rt_cleanup::~rt_cleanup(&v2);
}

void sub_27268D268(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)1>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::rt_cleanup::~rt_cleanup(va);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)1>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = &unk_2881BB3E8;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  caulk::concurrent::message::~message(v2);
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

void caulk::concurrent::details::rt_message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)1>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::~rt_message_call(caulk::concurrent::message *this)
{
  *this = &unk_2881BB3E8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BB3E8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

void caulk::concurrent::details::message_call<void vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)1>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1} &,vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&>::~message_call(caulk::concurrent::message *this)
{
  *this = &unk_2881BB3E8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BB3E8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

void vp::vx::components::Property_List_Writer::end_configuration_changes(vp::vx::components::Property_List_Writer *this)
{
  v22 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  v3 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v3)
  {
    log_context_info = vp::get_log_context_info(&__p, this, "vp::vx::components::Property_List_Writer]", 40);
    v5 = HIBYTE(v17);
    v6 = SHIBYTE(v17);
    v7 = v16;
    v8 = vp::get_log(log_context_info);
    v3 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v6 >= 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      p_p = __p;
      if (v6 >= 0)
      {
        p_p = &__p;
      }

      if (v9)
      {
        v11 = " ";
      }

      else
      {
        v11 = "";
      }

      *buf = 136315394;
      v19 = p_p;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_INFO, "%s%send configuration changes", buf, 0x16u);
      LOBYTE(v6) = HIBYTE(v17);
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  default_resource = std::pmr::get_default_resource(v3);
  v16 = 0;
  v17 = 0;
  __p = default_resource;
  vp::vx::data_flow::State<void>::get_value(this + 54, &__p);
  v13 = *vp::vx::data_flow::Value::view_storage(&__p);
  vp::vx::data_flow::Value::~Value(&__p);
  *(this + 240) = v13 & 1;
  v14 = *MEMORY[0x277D85DE8];
}

void sub_27268D664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    vp::vx::data_flow::Value::~Value(&a10);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x27268D628);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::components::Property_List_Writer::begin_configuration_changes(vp::vx::components::Property_List_Writer *this)
{
  v61 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&__p, this, "vp::vx::components::Property_List_Writer]", 40);
    v4 = HIBYTE(v58);
    v5 = SHIBYTE(v58);
    v6 = v58;
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      p_p = __p;
      if (v5 >= 0)
      {
        p_p = &__p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      *&buf[4] = p_p;
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sbegin configuration changes", buf, 0x16u);
      LOBYTE(v5) = HIBYTE(v58);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  v11 = *(this + 34);
  if (!v11 || (v12 = std::__shared_weak_count::lock(v11)) == 0 || (v13 = v12, v14 = *(this + 33), atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed), !v14))
  {
    _os_crash();
    __break(1u);
LABEL_31:
    _os_crash();
    __break(1u);
    goto LABEL_32;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  v15 = *(this + 36);
  if (!v15)
  {
    goto LABEL_31;
  }

  v16 = std::__shared_weak_count::lock(v15);
  if (!v16)
  {
    goto LABEL_31;
  }

  v17 = v16;
  v18 = *(this + 35);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!v18)
  {
    goto LABEL_31;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  v19 = *(this + 38);
  if (!v19 || (v20 = std::__shared_weak_count::lock(v19), (v21 = v20) == 0) || (v22 = *(this + 37), atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed), !v22))
  {
LABEL_32:
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  vp::vx::components::Property_List_Writer::set_up_or_tear_down_property_list_writers(this);
  default_resource = std::pmr::get_default_resource(v23);
  v58 = 0uLL;
  __p = default_resource;
  vp::vx::data_flow::State<void>::get_value(this + 54, &__p);
  v25 = *vp::vx::data_flow::Value::view_storage(&__p);
  vp::vx::data_flow::Value::~Value(&__p);
  if (v25 == 1)
  {
    if (*(this + 240))
    {
      v26 = atomic_load(this + 179);
      if (v26 > *(this + 180))
      {
        ++*(this + 181);
        v27 = atomic_load(this + 179);
        *(this + 180) = v27;
      }
    }

    else
    {
      *(this + 90) = 0;
      atomic_store(0, this + 179);
    }

    (*(*v22 + 16))(&__p, v22, 9);
    v28 = __p;
    v55 = __p;
    v45 = v58;
    v56 = v58;
    v58 = 0uLL;
    v29 = vp::vx::data_flow::State<void>::~State(&__p);
    v30 = std::pmr::get_default_resource(v29);
    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = v30;
    v53 = v28;
    __p = v45;
    *&v58 = &v53;
    *(&v58 + 1) = buf;
    vp::vx::data_flow::Engine::do_with_shared_state_lock(v45, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, &__p);
    v31 = *vp::vx::data_flow::Value::view_storage(buf);
    vp::vx::data_flow::Value::~Value(buf);
    *(this + 98) = v31 & 0x7FFFFFFF;
    *(this + 50) = 0;
    (*(*v22 + 16))(&__p, v22, 25);
    v32 = __p;
    v53 = __p;
    v46 = v58;
    v54 = v58;
    v58 = 0uLL;
    v33 = vp::vx::data_flow::State<void>::~State(&__p);
    v34 = std::pmr::get_default_resource(v33);
    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = v34;
    v51 = v32;
    __p = v46;
    *&v58 = &v51;
    *(&v58 + 1) = buf;
    vp::vx::data_flow::Engine::do_with_shared_state_lock(v46, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, &__p);
    v35 = *vp::vx::data_flow::Value::view_storage(buf);
    vp::vx::data_flow::Value::~Value(buf);
    *(this + 102) = v35 & 0x7FFFFFFF;
    *(this + 52) = 0;
    (*(*v22 + 16))(&__p, v22, 55);
    v36 = __p;
    v51 = __p;
    v47 = v58;
    v52 = v58;
    v58 = 0uLL;
    v37 = vp::vx::data_flow::State<void>::~State(&__p);
    v38 = std::pmr::get_default_resource(v37);
    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = v38;
    v49 = v36;
    __p = v47;
    *&v58 = &v49;
    *(&v58 + 1) = buf;
    vp::vx::data_flow::Engine::do_with_shared_state_lock(v47, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, &__p);
    v39 = *vp::vx::data_flow::Value::view_storage(buf);
    vp::vx::data_flow::Value::~Value(buf);
    *(this + 106) = v39 & 0x7FFFFFFF;
    *(this + 54) = 0;
    (*(*v22 + 16))(&__p, v22, 66);
    v40 = __p;
    v49 = __p;
    v48 = v58;
    v50 = v58;
    v58 = 0uLL;
    v41 = vp::vx::data_flow::State<void>::~State(&__p);
    v42 = std::pmr::get_default_resource(v41);
    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = v42;
    v59 = v40;
    __p = v48;
    *&v58 = &v59;
    *(&v58 + 1) = buf;
    vp::vx::data_flow::Engine::do_with_shared_state_lock(v48, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, &__p);
    v43 = *vp::vx::data_flow::Value::view_storage(buf);
    vp::vx::data_flow::Value::~Value(buf);
    *(this + 110) = v43 & 0x7FFFFFFF;
    *(this + 56) = 0;
    vp::vx::data_flow::State<void>::~State(&v49);
    vp::vx::data_flow::State<void>::~State(&v51);
    vp::vx::data_flow::State<void>::~State(&v53);
    vp::vx::data_flow::State<void>::~State(&v55);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  v44 = *MEMORY[0x277D85DE8];
}

void sub_27268DC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(va3, va2);
  v16 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  v19 = va_arg(va3, void);
  vp::vx::data_flow::Value::~Value((v6 - 96));
  vp::vx::data_flow::State<void>::~State(va);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void sub_27268DD08()
{
  if (v0)
  {
    JUMPOUT(0x27268DD00);
  }

  JUMPOUT(0x27268DCF0);
}

void vp::vx::components::Property_List_Writer::set_up_or_tear_down_property_list_writers(vp::vx::components::Property_List_Writer *this)
{
  v28 = 0;
  v29 = 0;
  default_resource = std::pmr::get_default_resource(this);
  vp::vx::data_flow::State<void>::get_value(this + 54, &default_resource);
  v2 = *vp::vx::data_flow::Value::view_storage(&default_resource);
  vp::vx::data_flow::Value::~Value(&default_resource);
  if (v2 == 1)
  {
    if (!*(this + 45) && !*(this + 47))
    {
      vp::allocate_unique<vp::sim::Property_List_Writer>(&default_resource, *(this + 1));
      std::shared_ptr<vp::sim::Property_List_Writer>::operator=[abi:ne200100]<vp::sim::Property_List_Writer,vp::Allocator_Delete<vp::sim::Property_List_Writer>,0>(this + 360, &default_resource);
      std::unique_ptr<vp::sim::Property_List_Writer,vp::Allocator_Delete<vp::sim::Property_List_Writer>>::reset[abi:ne200100](&default_resource, 0);
      vp::allocate_unique<vp::sim::Property_List_Writer>(&default_resource, *(this + 1));
      std::shared_ptr<vp::sim::Property_List_Writer>::operator=[abi:ne200100]<vp::sim::Property_List_Writer,vp::Allocator_Delete<vp::sim::Property_List_Writer>,0>(this + 376, &default_resource);
      std::unique_ptr<vp::sim::Property_List_Writer,vp::Allocator_Delete<vp::sim::Property_List_Writer>>::reset[abi:ne200100](&default_resource, 0);
      v3 = *(this + 143);
      if (v3 < 0)
      {
        v3 = *(this + 16);
      }

      if (v3)
      {
        v4 = *(this + 45);
        v5 = vp::sim::Property_List_Writer::size(*v4);
        if (v5)
        {
          v6 = v5 - 1;
        }

        else
        {
          v6 = 0;
        }

        vp::sim::Property_List_Writer::find_writable_element(&default_resource, v4, v6);
        v7 = default_resource;
        v26 = default_resource;
        vp::sim::Key_Writer::count(&v26, 0, "Product");
        vp::sim::converters::Default_Converter<std::string>::to_property_list(&v31, this + 120);
        isa = v31.isa;
        if (v31.isa)
        {
          CFRetain(v31.isa);
          default_resource = isa;
          vp::sim::Key_Writer::set(&v26, 0, "Product", &default_resource);
          CFRelease(isa);
        }

        else
        {
          default_resource = 0;
          vp::sim::Key_Writer::set(&v26, 0, "Product", &default_resource);
        }

        if (v31.isa)
        {
          CFRelease(v31.isa);
        }

        if (v7)
        {
          CFRelease(v7);
        }
      }

      if (*(this + 168) == 1)
      {
        v9 = *(this + 45);
        v10 = vp::sim::Property_List_Writer::size(*v9);
        if (v10)
        {
          v11 = v10 - 1;
        }

        else
        {
          v11 = 0;
        }

        vp::sim::Property_List_Writer::find_writable_element(&default_resource, v9, v11);
        v12 = default_resource;
        v26 = default_resource;
        vp::sim::Key_Writer::count(&v26, 1, "Acoustic ID");
        valuePtr = *(this + 41);
        v13 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        v14 = v13;
        v31.isa = v13;
        if (!v13)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        CFRetain(v13);
        default_resource = v14;
        vp::sim::Key_Writer::set(&v26, 1, "Acoustic ID", &default_resource);
        CFRelease(v14);
        CFRelease(v14);
        if (v12)
        {
          CFRelease(v12);
        }
      }

      if (*(this + 148) == 1)
      {
        v15 = *(this + 45);
        v16 = vp::sim::Property_List_Writer::size(*v15);
        if (v16)
        {
          v17 = v16 - 1;
        }

        else
        {
          v17 = 0;
        }

        vp::sim::Property_List_Writer::find_writable_element(&default_resource, v15, v17);
        v18 = default_resource;
        v26 = default_resource;
        vp::sim::Key_Writer::count(&v26, 3, "HW Layout ID");
        vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&v31, *(this + 36));
        v19 = v31.isa;
        if (v31.isa)
        {
          CFRetain(v31.isa);
          default_resource = v19;
          vp::sim::Key_Writer::set(&v26, 3, "HW Layout ID", &default_resource);
          CFRelease(v19);
        }

        else
        {
          default_resource = 0;
          vp::sim::Key_Writer::set(&v26, 3, "HW Layout ID", &default_resource);
        }

        if (v31.isa)
        {
          CFRelease(v31.isa);
        }

        if (v18)
        {
          CFRelease(v18);
        }
      }

      *(this + 88) = caulk::concurrent::atomic_value<vp::sim::utility::Call_Counts_Recorder::Snapshot,2,6>::load(this + 128);
      *(this + 178) = v20;
      *(this + 40) = *(this + 39);
      v21 = *(this + 41);
      for (i = *(this + 42); v21 != i; v21 += 4)
      {
        v23 = *v21;
        v24 = *(this + 46);
        default_resource = *(this + 45);
        v28 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v23 + 16))(v23, &default_resource);
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }
      }
    }
  }

  else
  {
    vp::vx::components::Property_List_Writer::tear_down_property_list_writers(this);
  }
}

void vp::vx::components::Property_List_Writer::tear_down_property_list_writers(vp::vx::components::Property_List_Writer *this)
{
  v131 = *MEMORY[0x277D85DE8];
  if (*(this + 45) && *(this + 47))
  {
    log = vp::get_log(this);
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Property_List_Writer]", 40);
      v4 = __p[23];
      v5 = __p[23];
      v6 = *&__p[8];
      v7 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        if (v5 >= 0)
        {
          v8 = v4;
        }

        else
        {
          v8 = v6;
        }

        v9 = *__p;
        if (v5 >= 0)
        {
          v9 = __p;
        }

        if (v8)
        {
          v10 = " ";
        }

        else
        {
          v10 = "";
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = v9;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
        _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%stear down property list writers", &buf, 0x16u);
        LOBYTE(v5) = __p[23];
      }

      if ((v5 & 0x80) != 0)
      {
        operator delete(*__p);
      }
    }

    v11 = *(this + 45);
    v12 = vp::sim::Property_List_Writer::size(*v11);
    if (v12)
    {
      v13 = v12 - 1;
    }

    else
    {
      v13 = 0;
    }

    vp::sim::Property_List_Writer::find_writable_element(__p, v11, v13);
    v14 = *__p;
    v76 = *__p;
    v15 = *(this + 41);
    v16 = *(this + 42);
    while (v15 != v16)
    {
      v17 = *v15;
      v15 += 4;
      (*(*v17 + 24))(v17);
    }

    v18 = *(this + 31);
    if (v18)
    {
      caulk::concurrent::messenger::drain(v18);
    }

    v19 = caulk::concurrent::atomic_value<vp::sim::utility::Call_Counts_Recorder::Snapshot,2,6>::load(this + 128);
    v21 = v20;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v100 = 0u;
    v101 = 0u;
    memset(__p, 0, sizeof(__p));
    v22 = localtime(this + 40);
    v23 = strftime(__p, 0x100uLL, "vp.%Y%m%d.%H%M%S", v22);
    snprintf(&__p[v23], 0x100uLL, ".%03u", *(this + 181));
    vp::sim::Key_Writer::count(&v76, 4, "File Name Prefix");
    vp::sim::Key_Writer::write<(vp::sim::Key)4,char (&)[256]>(&v76, __p);
    vp::sim::Key_Writer::count(&v76, 6, "Process Call Count");
    vp::sim::Key_Writer::write<(vp::sim::Key)6,unsigned int const&>(&v76, v19);
    vp::sim::Key_Writer::count(&v76, 5, "AppendRefSignal Call Count");
    vp::sim::Key_Writer::write<(vp::sim::Key)5,unsigned int const&>(&v76, SHIDWORD(v19));
    vp::sim::Key_Writer::count(&v76, 7, "ProcessDL Call Count");
    vp::sim::Key_Writer::write<(vp::sim::Key)7,unsigned int const&>(&v76, v21);
    v75.__val_ = 0;
    v75.__cat_ = std::system_category();
    std::__fs::filesystem::__create_directories((this + 64), &v75);
    v130 = 0u;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    *v115 = 0u;
    v24 = localtime(this + 40);
    strftime(v115, 0x100uLL, "vp.%Y%m%d.%H%M%S.xxx.props.bin", v24);
    std::__fs::filesystem::path::path[abi:ne200100]<char [256],void>(__p, v115);
    v25 = std::__fs::filesystem::operator/[abi:ne200100](&v74, this + 64, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v26 = vp::get_log(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = vp::get_log_context_info(&buf, this, "vp::vx::components::Property_List_Writer]", 40);
      v28 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      size = buf.__r_.__value_.__l.__size_;
      v30 = vp::get_log(v27);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        if ((v28 & 0x80u) == 0)
        {
          v31 = v28;
        }

        else
        {
          v31 = size;
        }

        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        v33 = " ";
        if (!v31)
        {
          v33 = "";
        }

        *__p = 136315650;
        *&__p[4] = p_buf;
        v34 = &v74;
        *&__p[12] = 2080;
        if ((v74.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v74.__pn_.__r_.__value_.__r.__words[0];
        }

        *&__p[14] = v33;
        *&__p[22] = 2080;
        *&__p[24] = v34;
        _os_log_impl(&dword_2724B4000, v30, OS_LOG_TYPE_DEFAULT, "%s%ssaving props.bin file to %s", __p, 0x20u);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    std::ofstream::basic_ofstream(__p);
    v35 = vp::sim::Property_List_Writer::write_to(*(this + 45));
    if ((v35 & 1) == 0)
    {
      v53 = vp::get_log(v35);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v54 = vp::get_log_context_info(&buf, this, "vp::vx::components::Property_List_Writer]", 40);
        v55 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        v56 = buf.__r_.__value_.__l.__size_;
        v57 = vp::get_log(v54);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          if ((v55 & 0x80u) == 0)
          {
            v58 = v55;
          }

          else
          {
            v58 = v56;
          }

          v59 = buf.__r_.__value_.__r.__words[0];
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v59 = &buf;
          }

          if (v58)
          {
            v60 = " ";
          }

          else
          {
            v60 = "";
          }

          *v84 = 136315394;
          *&v84[4] = v59;
          *&v84[12] = 2080;
          *&v84[14] = v60;
          _os_log_impl(&dword_2724B4000, v57, OS_LOG_TYPE_ERROR, "%s%sfailed to save props.bin file", v84, 0x16u);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    memset(v84, 0, sizeof(v84));
    v36 = localtime(this + 40);
    strftime(v84, 0x100uLL, "vp.%Y%m%d.%H%M%S.xxx.times.bin", v36);
    std::__fs::filesystem::path::path[abi:ne200100]<char [256],void>(&buf, v84);
    v37 = std::__fs::filesystem::operator/[abi:ne200100](&v73, this + 64, &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v38 = vp::get_log(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = vp::get_log_context_info(&v70, this, "vp::vx::components::Property_List_Writer]", 40);
      v40 = v72;
      v41 = v71;
      v42 = vp::get_log(v39);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        if ((v40 & 0x80u) == 0)
        {
          v43 = v40;
        }

        else
        {
          v43 = v41;
        }

        if ((v72 & 0x80u) == 0)
        {
          v44 = &v70;
        }

        else
        {
          v44 = v70;
        }

        if (v43)
        {
          v45 = " ";
        }

        else
        {
          v45 = "";
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
        *(buf.__r_.__value_.__r.__words + 4) = v44;
        v46 = &v73;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        if ((v73.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v46 = v73.__pn_.__r_.__value_.__r.__words[0];
        }

        *(&buf.__r_.__value_.__r.__words[1] + 6) = v45;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v82 = v46;
        _os_log_impl(&dword_2724B4000, v42, OS_LOG_TYPE_DEFAULT, "%s%ssaving times.bin file to %s", &buf, 0x20u);
      }

      if (v72 < 0)
      {
        operator delete(v70);
      }
    }

    std::ofstream::basic_ofstream(&buf);
    v47 = vp::sim::Property_List_Writer::write_to(*(this + 47));
    if ((v47 & 1) == 0)
    {
      v61 = vp::get_log(v47);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = vp::get_log_context_info(&v70, this, "vp::vx::components::Property_List_Writer]", 40);
        v63 = v72;
        v64 = v72;
        v65 = v71;
        v66 = vp::get_log(v62);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          if (v64 >= 0)
          {
            v67 = v63;
          }

          else
          {
            v67 = v65;
          }

          v68 = v70;
          if (v64 >= 0)
          {
            v68 = &v70;
          }

          if (v67)
          {
            v69 = " ";
          }

          else
          {
            v69 = "";
          }

          *v77 = 136315394;
          v78 = v68;
          v79 = 2080;
          v80 = v69;
          _os_log_impl(&dword_2724B4000, v66, OS_LOG_TYPE_ERROR, "%s%sfailed to save times.bin file", v77, 0x16u);
          LOBYTE(v64) = v72;
        }

        if ((v64 & 0x80) != 0)
        {
          operator delete(v70);
        }
      }
    }

    *(this + 40) = 0;
    *(this + 88) = 0;
    *(this + 178) = 0;
    v48 = *(this + 46);
    *(this + 45) = 0;
    *(this + 46) = 0;
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    v49 = *(this + 48);
    *(this + 47) = 0;
    *(this + 48) = 0;
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    buf.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82810];
    v50 = buf.__r_.__value_.__r.__words[0];
    v51 = *(MEMORY[0x277D82810] + 24);
    *(buf.__r_.__value_.__r.__words + *(buf.__r_.__value_.__r.__words[0] - 24)) = v51;
    MEMORY[0x2743CBA00](&buf.__r_.__value_.__r.__words[1]);
    std::ostream::~ostream();
    MEMORY[0x2743CBE30](&v83);
    if (SHIBYTE(v73.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__pn_.__r_.__value_.__l.__data_);
    }

    *__p = v50;
    *&__p[*(v50 - 24)] = v51;
    MEMORY[0x2743CBA00](&__p[8]);
    std::ostream::~ostream();
    MEMORY[0x2743CBE30](&v114);
    if ((SHIBYTE(v74.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (!v14)
      {
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    operator delete(v74.__pn_.__r_.__value_.__l.__data_);
    if (v14)
    {
LABEL_71:
      CFRelease(v14);
    }
  }

LABEL_72:
  v52 = *MEMORY[0x277D85DE8];
}

void sub_27268EAF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void vp::sim::Key_Writer::write<(vp::sim::Key)4,char (&)[256]>(CFDictionaryRef *a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  vp::sim::converters::Default_Converter<std::string>::to_property_list(&cf, __p);
  isa = cf.isa;
  if (cf.isa)
  {
    CFRetain(cf.isa);
    cf.info = isa;
    vp::sim::Key_Writer::set(a1, 4, "File Name Prefix", &cf.info);
    CFRelease(isa);
  }

  else
  {
    cf.info = 0;
    vp::sim::Key_Writer::set(a1, 4, "File Name Prefix", &cf.info);
  }

  if (cf.isa)
  {
    CFRelease(cf.isa);
  }

  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_27268EC5C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v16 = __cxa_begin_catch(a1);
  vp::sim::throw_exception(v16, v17);
}

void vp::sim::Key_Writer::write<(vp::sim::Key)6,unsigned int const&>(CFDictionaryRef *a1, int a2)
{
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, a2);
  v3 = cf;
  if (cf)
  {
    CFRetain(cf);
    v5 = v3;
    vp::sim::Key_Writer::set(a1, 6, "Process Call Count", &v5);
    CFRelease(v3);
  }

  else
  {
    v5 = 0;
    vp::sim::Key_Writer::set(a1, 6, "Process Call Count", &v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void vp::sim::Key_Writer::write<(vp::sim::Key)5,unsigned int const&>(CFDictionaryRef *a1, int a2)
{
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, a2);
  v3 = cf;
  if (cf)
  {
    CFRetain(cf);
    v5 = v3;
    vp::sim::Key_Writer::set(a1, 5, "AppendRefSignal Call Count", &v5);
    CFRelease(v3);
  }

  else
  {
    v5 = 0;
    vp::sim::Key_Writer::set(a1, 5, "AppendRefSignal Call Count", &v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void vp::sim::Key_Writer::write<(vp::sim::Key)7,unsigned int const&>(CFDictionaryRef *a1, int a2)
{
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, a2);
  v3 = cf;
  if (cf)
  {
    CFRetain(cf);
    v5 = v3;
    vp::sim::Key_Writer::set(a1, 7, "ProcessDL Call Count", &v5);
    CFRelease(v3);
  }

  else
  {
    v5 = 0;
    vp::sim::Key_Writer::set(a1, 7, "ProcessDL Call Count", &v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t std::ofstream::~ofstream(void *a1)
{
  v1 = MEMORY[0x277D82810];
  v2 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x2743CBA00](a1 + 1);

  return std::ostream::~ostream();
}

CFNumberRef vp::sim::converters::Default_Converter<unsigned int>::to_property_list(CFNumberRef *a1, int a2)
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

const void ***vp::allocate_unique<vp::sim::Property_List_Writer>(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = vdupq_n_s64(8uLL);
  v3 = (*(*a2 + 16))(a2, 8, 8);
  *v3 = 0;

  return std::unique_ptr<vp::sim::Property_List_Writer,vp::Allocator_Delete<vp::sim::Property_List_Writer>>::reset[abi:ne200100](a1, v3);
}

uint64_t std::shared_ptr<vp::sim::Property_List_Writer>::operator=[abi:ne200100]<vp::sim::Property_List_Writer,vp::Allocator_Delete<vp::sim::Property_List_Writer>,0>(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    v3 = *a2;
    operator new();
  }

  *a2 = 0;
  v4 = *(a1 + 8);
  *a1 = 0u;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

const void ***std::unique_ptr<vp::sim::Property_List_Writer,vp::Allocator_Delete<vp::sim::Property_List_Writer>>::reset[abi:ne200100](const void ***result, const void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    std::__destroy_at[abi:ne200100]<vp::sim::Property_List_Writer,0>(*v2);
    return (*(*v3[1] + 3))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void std::__destroy_at[abi:ne200100]<vp::sim::Property_List_Writer,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t std::__shared_ptr_pointer<vp::sim::Property_List_Writer *,vp::Allocator_Delete<vp::sim::Property_List_Writer>,std::allocator<vp::sim::Property_List_Writer>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  std::__destroy_at[abi:ne200100]<vp::sim::Property_List_Writer,0>(*v2);
  return (*(**(a1 + 32) + 24))(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void std::__shared_ptr_pointer<vp::sim::Property_List_Writer *,vp::Allocator_Delete<vp::sim::Property_List_Writer>,std::allocator<vp::sim::Property_List_Writer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::components::Property_List_Writer::end_state_change(vp::vx::components::Property_List_Writer *this)
{
  v18 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Property_List_Writer]", 40);
    v4 = v13;
    v5 = v13;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v15 = v9;
      v16 = 2080;
      v17 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%send state change", buf, 0x16u);
      LOBYTE(v5) = v13;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void vp::vx::components::Property_List_Writer::begin_state_change(vp::vx::components::Property_List_Writer *this)
{
  v43 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Property_List_Writer]", 40);
    v4 = BYTE7(v25);
    v5 = SBYTE7(v25);
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      *&buf[4] = v9;
      v41 = 2080;
      v42 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sbegin state change", buf, 0x16u);
      LOBYTE(v5) = BYTE7(v25);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *(this + 45);
  if (v11)
  {
    v12 = vp::sim::Property_List_Writer::size(*v11);
    v13 = v12 ? v12 - 1 : 0;
    vp::sim::Property_List_Writer::find_writable_element(__p, v11, v13);
    v14 = __p[0];
    v23 = __p[0];
    if (__p[0])
    {
      if (CFDictionaryGetCount(__p[0]))
      {
        v15 = caulk::concurrent::atomic_value<vp::sim::utility::Call_Counts_Recorder::Snapshot,2,6>::load(this + 128);
        v17 = v16;
        if (v15 - *(this + 176) + HIDWORD(v15) - *(this + 177) != *(this + 178) - v16)
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          *__p = 0u;
          v25 = 0u;
          v18 = localtime(this + 40);
          v19 = strftime(__p, 0x100uLL, "vp.%Y%m%d.%H%M%S", v18);
          snprintf(__p + v19, 0x100uLL, ".%03u", *(this + 181));
          vp::sim::Key_Writer::count(&v23, 4, "File Name Prefix");
          vp::sim::Key_Writer::write<(vp::sim::Key)4,char (&)[256]>(&v23, __p);
          vp::sim::Key_Writer::count(&v23, 6, "Process Call Count");
          vp::sim::Key_Writer::write<(vp::sim::Key)6,unsigned int const&>(&v23, v15);
          vp::sim::Key_Writer::count(&v23, 5, "AppendRefSignal Call Count");
          vp::sim::Key_Writer::write<(vp::sim::Key)5,unsigned int const&>(&v23, SHIDWORD(v15));
          vp::sim::Key_Writer::count(&v23, 7, "ProcessDL Call Count");
          vp::sim::Key_Writer::write<(vp::sim::Key)7,unsigned int const&>(&v23, v17);
          v20 = *(this + 45);
          v21 = vp::sim::Property_List_Writer::size(*v20);
          vp::sim::Property_List_Writer::find_writable_element(buf, v20, v21);
          if (*buf)
          {
            CFRelease(*buf);
          }

          *(this + 88) = v15;
          *(this + 178) = v17;
        }
      }

      CFRelease(v14);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_27268F6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::components::Property_List_Writer::configure(vp::vx::components::Property_List_Writer *this)
{
  v41 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&v38, this, "vp::vx::components::Property_List_Writer]", 40);
    v4 = HIBYTE(v39);
    v5 = SHIBYTE(v39);
    v6 = v39;
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = v38;
      if (v5 >= 0)
      {
        v9 = &v38;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v37[0] = v9;
      LOWORD(v37[1]) = 2080;
      *(&v37[1] + 2) = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = HIBYTE(v39);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(v38);
    }
  }

  v11 = *(this + 34);
  if (v11 && (v12 = std::__shared_weak_count::lock(v11)) != 0 && (v13 = *(this + 33), atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed), v13))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    v14 = *(this + 36);
    if (v14)
    {
      v15 = std::__shared_weak_count::lock(v14);
      if (v15)
      {
        v16 = v15;
        v17 = *(this + 35);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          v18 = *(this + 38);
          if (v18)
          {
            v19 = std::__shared_weak_count::lock(v18);
            if (v19)
            {
              v20 = *(this + 37);
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
              if (v20)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v19);
                v21 = *(this + 52) | (*(this + 112) << 32);
                (*(*v20 + 24))(&v38, v20, 3);
                v22 = v38;
                v28 = v38;
                v29 = v39;
                v39 = 0uLL;
                vp::vx::data_flow::State<void>::~State(&v38);
                (*(*v20 + 24))(&v38, v20, 4);
                v23 = v38;
                v26 = v38;
                v27 = v39;
                v39 = 0uLL;
                vp::vx::data_flow::State<void>::~State(&v38);
                v38 = &unk_2881BAE08;
                *&v39 = v21;
                v40 = &v38;
                v30 = v22;
                v31 = v23;
                vp::vx::data_flow::State_Manager::create_state(buf, (v13 + 48), &v38);
                v24 = *buf;
                LODWORD(v32) = *buf;
                v25 = *(v37 + 4);
                *(v37 + 4) = 0uLL;
                vp::vx::data_flow::State<void>::~State(buf);
                std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v38);
                LODWORD(v38) = v24;
                v33 = 0;
                v34 = 0;
                vp::vx::data_flow::State<void>::~State(&v32);
                vp::vx::data_flow::State<void>::~State(this + 54);
                *(this + 54) = v24;
                *(this + 14) = v25;
                v39 = 0uLL;
                vp::vx::data_flow::State<void>::~State(&v38);
                vp::vx::data_flow::State<void>::~State(&v26);
                vp::vx::data_flow::State<void>::~State(&v28);
                atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v32 = &unk_2881BB338;
                v33 = v17;
                v34 = v16;
                v35 = &v32;
                std::__function::__value_func<void ()(unsigned int,BOOL const&)>::__value_func[abi:ne200100](buf, &v32);
                v40 = 0;
                operator new();
              }
            }
          }

LABEL_26:
          _os_crash();
          __break(1u);
        }
      }
    }
  }

  else
  {
    _os_crash();
    __break(1u);
  }

  _os_crash();
  __break(1u);
  goto LABEL_26;
}

void sub_27268FB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

int *vp::vx::components::Property_List_Writer::set_up_key_state_listeners(vp::vx::components::Property_List_Writer *this, vp::vx::Voice_Processor_State_Manager *a2, const vp::vx::Voice_Processor_State_Owner *a3)
{
  v1562 = *MEMORY[0x277D85DE8];
  (*(*a3 + 16))(&v1559, a3, 24);
  v1552 = v1559;
  v1553 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v6 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v6;
  *&v1556[16] = xmmword_272756730;
  v7 = (*(*v6 + 16))(v6, 40, 8);
  v8 = vp::vx::data_flow::State<void>::State(&v1559, &v1552);
  *v7 = &unk_2881BB500;
  *(v7 + 8) = v1559;
  *(v7 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v7 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v8);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v7);
  v9 = *(this + 42);
  v10 = *(this + 43);
  if (v9 >= v10)
  {
    v13 = *(this + 41);
    v14 = (v9 - v13) >> 5;
    v15 = v14 + 1;
    if ((v14 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v16 = v10 - v13;
    if (v16 >> 4 > v15)
    {
      v15 = v16 >> 4;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFE0)
    {
      v17 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    v1561 = this + 352;
    if (v17)
    {
      v18 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v17);
      v13 = *(this + 41);
      v9 = *(this + 42);
    }

    else
    {
      v18 = 0;
    }

    v19 = (v18 + 32 * v14);
    v1559 = v18;
    *v1560 = v19;
    *&v1560[16] = v18 + 32 * v17;
    v20 = *v1556;
    *v1556 = 0;
    *v19 = v20;
    v19[1] = *&v1556[16];
    *&v1560[8] = v19 + 2;
    v21 = &v19[-2 * ((v9 - v13) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v13, v9, v21);
    v22 = *(this + 41);
    *(this + 41) = v21;
    v23 = *(this + 43);
    v1324 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v22;
    *&v1560[16] = v23;
    v1559 = v22;
    *v1560 = v22;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v12 = v1324;
  }

  else
  {
    v11 = *v1556;
    *v1556 = 0;
    *v9 = v11;
    *(v9 + 16) = *&v1556[16];
    v12 = v9 + 32;
  }

  *(this + 42) = v12;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1552);
  (*(*a3 + 16))(&v1559, a3, 25);
  v1550 = v1559;
  v1551 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v24 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v24;
  *&v1556[16] = xmmword_272756730;
  v25 = (*(*v24 + 16))(v24, 40, 8);
  v26 = vp::vx::data_flow::State<void>::State(&v1559, &v1550);
  *v25 = &unk_2881BB5C0;
  *(v25 + 8) = v1559;
  *(v25 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v25 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v26);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v25);
  v27 = *(this + 42);
  v28 = *(this + 43);
  if (v27 >= v28)
  {
    v31 = *(this + 41);
    v32 = (v27 - v31) >> 5;
    v33 = v32 + 1;
    if ((v32 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v34 = v28 - v31;
    if (v34 >> 4 > v33)
    {
      v33 = v34 >> 4;
    }

    if (v34 >= 0x7FFFFFFFFFFFFFE0)
    {
      v35 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = v33;
    }

    v1561 = this + 352;
    if (v35)
    {
      v36 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v35);
      v31 = *(this + 41);
      v27 = *(this + 42);
    }

    else
    {
      v36 = 0;
    }

    v37 = (v36 + 32 * v32);
    v1559 = v36;
    *v1560 = v37;
    *&v1560[16] = v36 + 32 * v35;
    v38 = *v1556;
    *v1556 = 0;
    *v37 = v38;
    v37[1] = *&v1556[16];
    *&v1560[8] = v37 + 2;
    v39 = &v37[-2 * ((v27 - v31) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v31, v27, v39);
    v40 = *(this + 41);
    *(this + 41) = v39;
    v41 = *(this + 43);
    v1325 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v40;
    *&v1560[16] = v41;
    v1559 = v40;
    *v1560 = v40;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v30 = v1325;
  }

  else
  {
    v29 = *v1556;
    *v1556 = 0;
    *v27 = v29;
    *(v27 + 16) = *&v1556[16];
    v30 = v27 + 32;
  }

  *(this + 42) = v30;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1550);
  (*(*a3 + 16))(&v1559, a3, 26);
  v1544 = v1559;
  v1545 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1559 = &unk_2881BAE50;
  v1560[0] = 0;
  *&v1560[16] = &v1559;
  v1528 = v1544;
  vp::vx::data_flow::State_Manager::create_state(v1556, a2 + 3, &v1559);
  v1554 = *v1556;
  v1555 = *&v1556[8];
  *&v1556[8] = 0;
  *&v1556[16] = 0;
  vp::vx::data_flow::State<void>::~State(v1556);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v1559);
  v1546 = v1554;
  v1547 = v1555;
  v1555 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v1554);
  v1548 = v1546;
  v1549 = v1547;
  v1547 = 0uLL;
  v42 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v42;
  *&v1556[16] = xmmword_272756730;
  v43 = (*(*v42 + 16))(v42, 40, 8);
  v44 = vp::vx::data_flow::State<void>::State(&v1559, &v1548);
  *v43 = &unk_2881BB680;
  *(v43 + 8) = v1559;
  *(v43 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v43 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v44);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v43);
  v45 = *(this + 42);
  v46 = *(this + 43);
  if (v45 >= v46)
  {
    v49 = *(this + 41);
    v50 = (v45 - v49) >> 5;
    v51 = v50 + 1;
    if ((v50 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v52 = v46 - v49;
    if (v52 >> 4 > v51)
    {
      v51 = v52 >> 4;
    }

    if (v52 >= 0x7FFFFFFFFFFFFFE0)
    {
      v53 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v53 = v51;
    }

    v1561 = this + 352;
    if (v53)
    {
      v54 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v53);
      v49 = *(this + 41);
      v45 = *(this + 42);
    }

    else
    {
      v54 = 0;
    }

    v55 = (v54 + 32 * v50);
    v1559 = v54;
    *v1560 = v55;
    *&v1560[16] = v54 + 32 * v53;
    v56 = *v1556;
    *v1556 = 0;
    *v55 = v56;
    v55[1] = *&v1556[16];
    *&v1560[8] = v55 + 2;
    v57 = &v55[-2 * ((v45 - v49) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v49, v45, v57);
    v58 = *(this + 41);
    *(this + 41) = v57;
    v59 = *(this + 43);
    v1326 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v58;
    *&v1560[16] = v59;
    v1559 = v58;
    *v1560 = v58;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v48 = v1326;
  }

  else
  {
    v47 = *v1556;
    *v1556 = 0;
    *v45 = v47;
    *(v45 + 16) = *&v1556[16];
    v48 = v45 + 32;
  }

  *(this + 42) = v48;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1548);
  vp::vx::data_flow::State<void>::~State(&v1546);
  vp::vx::data_flow::State<void>::~State(&v1544);
  (*(*a3 + 16))(&v1559, a3, 39);
  v1544 = v1559;
  v1545 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1559 = &unk_2881BAE98;
  v1560[0] = 0;
  *&v1560[16] = &v1559;
  v1528 = v1544;
  vp::vx::data_flow::State_Manager::create_state(v1556, a2 + 3, &v1559);
  v1554 = *v1556;
  v1555 = *&v1556[8];
  *&v1556[8] = 0;
  *&v1556[16] = 0;
  vp::vx::data_flow::State<void>::~State(v1556);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v1559);
  v1546 = v1554;
  v1547 = v1555;
  v1555 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v1554);
  v1542 = v1546;
  v1543 = v1547;
  v1547 = 0uLL;
  v60 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v60;
  *&v1556[16] = xmmword_272756730;
  v61 = (*(*v60 + 16))(v60, 40, 8);
  v62 = vp::vx::data_flow::State<void>::State(&v1559, &v1542);
  *v61 = &unk_2881BB740;
  *(v61 + 8) = v1559;
  *(v61 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v61 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v62);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v61);
  v63 = *(this + 42);
  v64 = *(this + 43);
  if (v63 >= v64)
  {
    v67 = *(this + 41);
    v68 = (v63 - v67) >> 5;
    v69 = v68 + 1;
    if ((v68 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v70 = v64 - v67;
    if (v70 >> 4 > v69)
    {
      v69 = v70 >> 4;
    }

    if (v70 >= 0x7FFFFFFFFFFFFFE0)
    {
      v71 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v71 = v69;
    }

    v1561 = this + 352;
    if (v71)
    {
      v72 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v71);
      v67 = *(this + 41);
      v63 = *(this + 42);
    }

    else
    {
      v72 = 0;
    }

    v73 = (v72 + 32 * v68);
    v1559 = v72;
    *v1560 = v73;
    *&v1560[16] = v72 + 32 * v71;
    v74 = *v1556;
    *v1556 = 0;
    *v73 = v74;
    v73[1] = *&v1556[16];
    *&v1560[8] = v73 + 2;
    v75 = &v73[-2 * ((v63 - v67) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v67, v63, v75);
    v76 = *(this + 41);
    *(this + 41) = v75;
    v77 = *(this + 43);
    v1327 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v76;
    *&v1560[16] = v77;
    v1559 = v76;
    *v1560 = v76;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v66 = v1327;
  }

  else
  {
    v65 = *v1556;
    *v1556 = 0;
    *v63 = v65;
    *(v63 + 16) = *&v1556[16];
    v66 = v63 + 32;
  }

  *(this + 42) = v66;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1542);
  vp::vx::data_flow::State<void>::~State(&v1546);
  vp::vx::data_flow::State<void>::~State(&v1544);
  (*(*a3 + 16))(&v1559, a3, 40);
  v1544 = v1559;
  v1545 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1559 = &unk_2881BAEE0;
  v1560[0] = 0;
  *&v1560[16] = &v1559;
  v1528 = v1544;
  vp::vx::data_flow::State_Manager::create_state(v1556, a2 + 3, &v1559);
  v1554 = *v1556;
  v1555 = *&v1556[8];
  *&v1556[8] = 0;
  *&v1556[16] = 0;
  vp::vx::data_flow::State<void>::~State(v1556);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v1559);
  v1546 = v1554;
  v1547 = v1555;
  v1555 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v1554);
  v1540 = v1546;
  v1541 = v1547;
  v1547 = 0uLL;
  v78 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v78;
  *&v1556[16] = xmmword_272756730;
  v79 = (*(*v78 + 16))(v78, 40, 8);
  v80 = vp::vx::data_flow::State<void>::State(&v1559, &v1540);
  *v79 = &unk_2881BB7B8;
  *(v79 + 8) = v1559;
  *(v79 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v79 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v80);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v79);
  v81 = *(this + 42);
  v82 = *(this + 43);
  if (v81 >= v82)
  {
    v85 = *(this + 41);
    v86 = (v81 - v85) >> 5;
    v87 = v86 + 1;
    if ((v86 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v88 = v82 - v85;
    if (v88 >> 4 > v87)
    {
      v87 = v88 >> 4;
    }

    if (v88 >= 0x7FFFFFFFFFFFFFE0)
    {
      v89 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v89 = v87;
    }

    v1561 = this + 352;
    if (v89)
    {
      v90 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v89);
      v85 = *(this + 41);
      v81 = *(this + 42);
    }

    else
    {
      v90 = 0;
    }

    v91 = (v90 + 32 * v86);
    v1559 = v90;
    *v1560 = v91;
    *&v1560[16] = v90 + 32 * v89;
    v92 = *v1556;
    *v1556 = 0;
    *v91 = v92;
    v91[1] = *&v1556[16];
    *&v1560[8] = v91 + 2;
    v93 = &v91[-2 * ((v81 - v85) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v85, v81, v93);
    v94 = *(this + 41);
    *(this + 41) = v93;
    v95 = *(this + 43);
    v1328 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v94;
    *&v1560[16] = v95;
    v1559 = v94;
    *v1560 = v94;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v84 = v1328;
  }

  else
  {
    v83 = *v1556;
    *v1556 = 0;
    *v81 = v83;
    *(v81 + 16) = *&v1556[16];
    v84 = v81 + 32;
  }

  *(this + 42) = v84;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1540);
  vp::vx::data_flow::State<void>::~State(&v1546);
  vp::vx::data_flow::State<void>::~State(&v1544);
  (*(*a3 + 16))(&v1559, a3, 44);
  v1538 = v1559;
  v1539 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v96 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v96;
  *&v1556[16] = xmmword_272756730;
  v97 = (*(*v96 + 16))(v96, 40, 8);
  v98 = vp::vx::data_flow::State<void>::State(&v1559, &v1538);
  *v97 = &unk_2881BB830;
  *(v97 + 8) = v1559;
  *(v97 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v97 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v98);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v97);
  v99 = *(this + 42);
  v100 = *(this + 43);
  if (v99 >= v100)
  {
    v103 = *(this + 41);
    v104 = (v99 - v103) >> 5;
    v105 = v104 + 1;
    if ((v104 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v106 = v100 - v103;
    if (v106 >> 4 > v105)
    {
      v105 = v106 >> 4;
    }

    if (v106 >= 0x7FFFFFFFFFFFFFE0)
    {
      v107 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v107 = v105;
    }

    v1561 = this + 352;
    if (v107)
    {
      v108 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v107);
      v103 = *(this + 41);
      v99 = *(this + 42);
    }

    else
    {
      v108 = 0;
    }

    v109 = (v108 + 32 * v104);
    v1559 = v108;
    *v1560 = v109;
    *&v1560[16] = v108 + 32 * v107;
    v110 = *v1556;
    *v1556 = 0;
    *v109 = v110;
    v109[1] = *&v1556[16];
    *&v1560[8] = v109 + 2;
    v111 = &v109[-2 * ((v99 - v103) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v103, v99, v111);
    v112 = *(this + 41);
    *(this + 41) = v111;
    v113 = *(this + 43);
    v1329 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v112;
    *&v1560[16] = v113;
    v1559 = v112;
    *v1560 = v112;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v102 = v1329;
  }

  else
  {
    v101 = *v1556;
    *v1556 = 0;
    *v99 = v101;
    *(v99 + 16) = *&v1556[16];
    v102 = v99 + 32;
  }

  *(this + 42) = v102;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1538);
  (*(*a3 + 16))(&v1559, a3, 45);
  v1536 = v1559;
  v1537 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v114 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v114;
  *&v1556[16] = xmmword_272756730;
  v115 = (*(*v114 + 16))(v114, 40, 8);
  v116 = vp::vx::data_flow::State<void>::State(&v1559, &v1536);
  *v115 = &unk_2881BB8A8;
  *(v115 + 8) = v1559;
  *(v115 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v115 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v116);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v115);
  v117 = *(this + 42);
  v118 = *(this + 43);
  if (v117 >= v118)
  {
    v121 = *(this + 41);
    v122 = (v117 - v121) >> 5;
    v123 = v122 + 1;
    if ((v122 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v124 = v118 - v121;
    if (v124 >> 4 > v123)
    {
      v123 = v124 >> 4;
    }

    if (v124 >= 0x7FFFFFFFFFFFFFE0)
    {
      v125 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v125 = v123;
    }

    v1561 = this + 352;
    if (v125)
    {
      v126 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v125);
      v121 = *(this + 41);
      v117 = *(this + 42);
    }

    else
    {
      v126 = 0;
    }

    v127 = (v126 + 32 * v122);
    v1559 = v126;
    *v1560 = v127;
    *&v1560[16] = v126 + 32 * v125;
    v128 = *v1556;
    *v1556 = 0;
    *v127 = v128;
    v127[1] = *&v1556[16];
    *&v1560[8] = v127 + 2;
    v129 = &v127[-2 * ((v117 - v121) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v121, v117, v129);
    v130 = *(this + 41);
    *(this + 41) = v129;
    v131 = *(this + 43);
    v1330 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v130;
    *&v1560[16] = v131;
    v1559 = v130;
    *v1560 = v130;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v120 = v1330;
  }

  else
  {
    v119 = *v1556;
    *v1556 = 0;
    *v117 = v119;
    *(v117 + 16) = *&v1556[16];
    v120 = v117 + 32;
  }

  *(this + 42) = v120;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1536);
  (*(*a3 + 16))(&v1559, a3, 46);
  v1534 = v1559;
  v1535 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v132 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v132;
  *&v1556[16] = xmmword_272756730;
  v133 = (*(*v132 + 16))(v132, 40, 8);
  v134 = vp::vx::data_flow::State<void>::State(&v1559, &v1534);
  *v133 = &unk_2881BB920;
  *(v133 + 8) = v1559;
  *(v133 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v133 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v134);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v133);
  v135 = *(this + 42);
  v136 = *(this + 43);
  if (v135 >= v136)
  {
    v139 = *(this + 41);
    v140 = (v135 - v139) >> 5;
    v141 = v140 + 1;
    if ((v140 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v142 = v136 - v139;
    if (v142 >> 4 > v141)
    {
      v141 = v142 >> 4;
    }

    if (v142 >= 0x7FFFFFFFFFFFFFE0)
    {
      v143 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v143 = v141;
    }

    v1561 = this + 352;
    if (v143)
    {
      v144 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v143);
      v139 = *(this + 41);
      v135 = *(this + 42);
    }

    else
    {
      v144 = 0;
    }

    v145 = (v144 + 32 * v140);
    v1559 = v144;
    *v1560 = v145;
    *&v1560[16] = v144 + 32 * v143;
    v146 = *v1556;
    *v1556 = 0;
    *v145 = v146;
    v145[1] = *&v1556[16];
    *&v1560[8] = v145 + 2;
    v147 = &v145[-2 * ((v135 - v139) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v139, v135, v147);
    v148 = *(this + 41);
    *(this + 41) = v147;
    v149 = *(this + 43);
    v1331 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v148;
    *&v1560[16] = v149;
    v1559 = v148;
    *v1560 = v148;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v138 = v1331;
  }

  else
  {
    v137 = *v1556;
    *v1556 = 0;
    *v135 = v137;
    *(v135 + 16) = *&v1556[16];
    v138 = v135 + 32;
  }

  *(this + 42) = v138;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1534);
  (*(*a3 + 16))(&v1559, a3, 47);
  v1532 = v1559;
  v1533 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v150 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v150;
  *&v1556[16] = xmmword_272756730;
  v151 = (*(*v150 + 16))(v150, 40, 8);
  v152 = vp::vx::data_flow::State<void>::State(&v1559, &v1532);
  *v151 = &unk_2881BB998;
  *(v151 + 8) = v1559;
  *(v151 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v151 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v152);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v151);
  v153 = *(this + 42);
  v154 = *(this + 43);
  if (v153 >= v154)
  {
    v157 = *(this + 41);
    v158 = (v153 - v157) >> 5;
    v159 = v158 + 1;
    if ((v158 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v160 = v154 - v157;
    if (v160 >> 4 > v159)
    {
      v159 = v160 >> 4;
    }

    if (v160 >= 0x7FFFFFFFFFFFFFE0)
    {
      v161 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v161 = v159;
    }

    v1561 = this + 352;
    if (v161)
    {
      v162 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v161);
      v157 = *(this + 41);
      v153 = *(this + 42);
    }

    else
    {
      v162 = 0;
    }

    v163 = (v162 + 32 * v158);
    v1559 = v162;
    *v1560 = v163;
    *&v1560[16] = v162 + 32 * v161;
    v164 = *v1556;
    *v1556 = 0;
    *v163 = v164;
    v163[1] = *&v1556[16];
    *&v1560[8] = v163 + 2;
    v165 = &v163[-2 * ((v153 - v157) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v157, v153, v165);
    v166 = *(this + 41);
    *(this + 41) = v165;
    v167 = *(this + 43);
    v1332 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v166;
    *&v1560[16] = v167;
    v1559 = v166;
    *v1560 = v166;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v156 = v1332;
  }

  else
  {
    v155 = *v1556;
    *v1556 = 0;
    *v153 = v155;
    *(v153 + 16) = *&v1556[16];
    v156 = v153 + 32;
  }

  *(this + 42) = v156;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1532);
  (*(*a3 + 16))(&v1559, a3, 48);
  v1544 = v1559;
  v1545 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  (*(*a3 + 16))(&v1559, a3, 49);
  v1528 = v1559;
  v1529 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1559 = &unk_2881BAF28;
  v1560[0] = 0;
  *&v1560[16] = &v1559;
  v1557 = v1544;
  v1558 = v1528;
  vp::vx::data_flow::State_Manager::create_state(v1556, a2 + 3, &v1559);
  v1554 = *v1556;
  v1555 = *&v1556[8];
  *&v1556[8] = 0;
  *&v1556[16] = 0;
  vp::vx::data_flow::State<void>::~State(v1556);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v1559);
  v1546 = v1554;
  v1547 = v1555;
  v1555 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v1554);
  v1530 = v1546;
  v1531 = v1547;
  v1547 = 0uLL;
  v168 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v168;
  *&v1556[16] = xmmword_272756730;
  v169 = (*(*v168 + 16))(v168, 40, 8);
  v170 = vp::vx::data_flow::State<void>::State(&v1559, &v1530);
  *v169 = &unk_2881BBA58;
  *(v169 + 8) = v1559;
  *(v169 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v169 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v170);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v169);
  v171 = *(this + 42);
  v172 = *(this + 43);
  if (v171 >= v172)
  {
    v175 = *(this + 41);
    v176 = (v171 - v175) >> 5;
    v177 = v176 + 1;
    if ((v176 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v178 = v172 - v175;
    if (v178 >> 4 > v177)
    {
      v177 = v178 >> 4;
    }

    if (v178 >= 0x7FFFFFFFFFFFFFE0)
    {
      v179 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v179 = v177;
    }

    v1561 = this + 352;
    if (v179)
    {
      v180 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v179);
      v175 = *(this + 41);
      v171 = *(this + 42);
    }

    else
    {
      v180 = 0;
    }

    v181 = (v180 + 32 * v176);
    v1559 = v180;
    *v1560 = v181;
    *&v1560[16] = v180 + 32 * v179;
    v182 = *v1556;
    *v1556 = 0;
    *v181 = v182;
    v181[1] = *&v1556[16];
    *&v1560[8] = v181 + 2;
    v183 = &v181[-2 * ((v171 - v175) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v175, v171, v183);
    v184 = *(this + 41);
    *(this + 41) = v183;
    v185 = *(this + 43);
    v1333 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v184;
    *&v1560[16] = v185;
    v1559 = v184;
    *v1560 = v184;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v174 = v1333;
  }

  else
  {
    v173 = *v1556;
    *v1556 = 0;
    *v171 = v173;
    *(v171 + 16) = *&v1556[16];
    v174 = v171 + 32;
  }

  *(this + 42) = v174;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1530);
  vp::vx::data_flow::State<void>::~State(&v1546);
  vp::vx::data_flow::State<void>::~State(&v1528);
  vp::vx::data_flow::State<void>::~State(&v1544);
  (*(*a3 + 16))(&v1559, a3, 50);
  v1526 = v1559;
  v1527 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v186 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v186;
  *&v1556[16] = xmmword_272756730;
  v187 = (*(*v186 + 16))(v186, 40, 8);
  v188 = vp::vx::data_flow::State<void>::State(&v1559, &v1526);
  *v187 = &unk_2881BBB18;
  *(v187 + 8) = v1559;
  *(v187 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v187 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v188);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v187);
  v189 = *(this + 42);
  v190 = *(this + 43);
  if (v189 >= v190)
  {
    v193 = *(this + 41);
    v194 = (v189 - v193) >> 5;
    v195 = v194 + 1;
    if ((v194 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v196 = v190 - v193;
    if (v196 >> 4 > v195)
    {
      v195 = v196 >> 4;
    }

    if (v196 >= 0x7FFFFFFFFFFFFFE0)
    {
      v197 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v197 = v195;
    }

    v1561 = this + 352;
    if (v197)
    {
      v198 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v197);
      v193 = *(this + 41);
      v189 = *(this + 42);
    }

    else
    {
      v198 = 0;
    }

    v199 = (v198 + 32 * v194);
    v1559 = v198;
    *v1560 = v199;
    *&v1560[16] = v198 + 32 * v197;
    v200 = *v1556;
    *v1556 = 0;
    *v199 = v200;
    v199[1] = *&v1556[16];
    *&v1560[8] = v199 + 2;
    v201 = &v199[-2 * ((v189 - v193) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v193, v189, v201);
    v202 = *(this + 41);
    *(this + 41) = v201;
    v203 = *(this + 43);
    v1334 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v202;
    *&v1560[16] = v203;
    v1559 = v202;
    *v1560 = v202;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v192 = v1334;
  }

  else
  {
    v191 = *v1556;
    *v1556 = 0;
    *v189 = v191;
    *(v189 + 16) = *&v1556[16];
    v192 = v189 + 32;
  }

  *(this + 42) = v192;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1526);
  (*(*a3 + 16))(&v1559, a3, 29);
  v1524 = v1559;
  v1525 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v204 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v204;
  *&v1556[16] = xmmword_272756730;
  v205 = (*(*v204 + 16))(v204, 40, 8);
  v206 = vp::vx::data_flow::State<void>::State(&v1559, &v1524);
  *v205 = &unk_2881BBBD8;
  *(v205 + 8) = v1559;
  *(v205 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v205 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v206);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v205);
  v207 = *(this + 42);
  v208 = *(this + 43);
  if (v207 >= v208)
  {
    v211 = *(this + 41);
    v212 = (v207 - v211) >> 5;
    v213 = v212 + 1;
    if ((v212 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v214 = v208 - v211;
    if (v214 >> 4 > v213)
    {
      v213 = v214 >> 4;
    }

    if (v214 >= 0x7FFFFFFFFFFFFFE0)
    {
      v215 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v215 = v213;
    }

    v1561 = this + 352;
    if (v215)
    {
      v216 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v215);
      v211 = *(this + 41);
      v207 = *(this + 42);
    }

    else
    {
      v216 = 0;
    }

    v217 = (v216 + 32 * v212);
    v1559 = v216;
    *v1560 = v217;
    *&v1560[16] = v216 + 32 * v215;
    v218 = *v1556;
    *v1556 = 0;
    *v217 = v218;
    v217[1] = *&v1556[16];
    *&v1560[8] = v217 + 2;
    v219 = &v217[-2 * ((v207 - v211) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v211, v207, v219);
    v220 = *(this + 41);
    *(this + 41) = v219;
    v221 = *(this + 43);
    v1335 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v220;
    *&v1560[16] = v221;
    v1559 = v220;
    *v1560 = v220;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v210 = v1335;
  }

  else
  {
    v209 = *v1556;
    *v1556 = 0;
    *v207 = v209;
    *(v207 + 16) = *&v1556[16];
    v210 = v207 + 32;
  }

  *(this + 42) = v210;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1524);
  (*(*a3 + 16))(&v1559, a3, 42);
  v1522 = v1559;
  v1523 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v222 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v222;
  *&v1556[16] = xmmword_272756730;
  v223 = (*(*v222 + 16))(v222, 40, 8);
  v224 = vp::vx::data_flow::State<void>::State(&v1559, &v1522);
  *v223 = &unk_2881BBC98;
  *(v223 + 8) = v1559;
  *(v223 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v223 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v224);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v223);
  v225 = *(this + 42);
  v226 = *(this + 43);
  if (v225 >= v226)
  {
    v229 = *(this + 41);
    v230 = (v225 - v229) >> 5;
    v231 = v230 + 1;
    if ((v230 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v232 = v226 - v229;
    if (v232 >> 4 > v231)
    {
      v231 = v232 >> 4;
    }

    if (v232 >= 0x7FFFFFFFFFFFFFE0)
    {
      v233 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v233 = v231;
    }

    v1561 = this + 352;
    if (v233)
    {
      v234 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v233);
      v229 = *(this + 41);
      v225 = *(this + 42);
    }

    else
    {
      v234 = 0;
    }

    v235 = (v234 + 32 * v230);
    v1559 = v234;
    *v1560 = v235;
    *&v1560[16] = v234 + 32 * v233;
    v236 = *v1556;
    *v1556 = 0;
    *v235 = v236;
    v235[1] = *&v1556[16];
    *&v1560[8] = v235 + 2;
    v237 = &v235[-2 * ((v225 - v229) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v229, v225, v237);
    v238 = *(this + 41);
    *(this + 41) = v237;
    v239 = *(this + 43);
    v1336 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v238;
    *&v1560[16] = v239;
    v1559 = v238;
    *v1560 = v238;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v228 = v1336;
  }

  else
  {
    v227 = *v1556;
    *v1556 = 0;
    *v225 = v227;
    *(v225 + 16) = *&v1556[16];
    v228 = v225 + 32;
  }

  *(this + 42) = v228;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1522);
  (*(*a3 + 16))(&v1559, a3, 43);
  v1520 = v1559;
  v1521 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v240 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v240;
  *&v1556[16] = xmmword_272756730;
  v241 = (*(*v240 + 16))(v240, 40, 8);
  v242 = vp::vx::data_flow::State<void>::State(&v1559, &v1520);
  *v241 = &unk_2881BBD10;
  *(v241 + 8) = v1559;
  *(v241 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v241 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v242);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v241);
  v243 = *(this + 42);
  v244 = *(this + 43);
  if (v243 >= v244)
  {
    v247 = *(this + 41);
    v248 = (v243 - v247) >> 5;
    v249 = v248 + 1;
    if ((v248 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v250 = v244 - v247;
    if (v250 >> 4 > v249)
    {
      v249 = v250 >> 4;
    }

    if (v250 >= 0x7FFFFFFFFFFFFFE0)
    {
      v251 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v251 = v249;
    }

    v1561 = this + 352;
    if (v251)
    {
      v252 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v251);
      v247 = *(this + 41);
      v243 = *(this + 42);
    }

    else
    {
      v252 = 0;
    }

    v253 = (v252 + 32 * v248);
    v1559 = v252;
    *v1560 = v253;
    *&v1560[16] = v252 + 32 * v251;
    v254 = *v1556;
    *v1556 = 0;
    *v253 = v254;
    v253[1] = *&v1556[16];
    *&v1560[8] = v253 + 2;
    v255 = &v253[-2 * ((v243 - v247) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v247, v243, v255);
    v256 = *(this + 41);
    *(this + 41) = v255;
    v257 = *(this + 43);
    v1337 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v256;
    *&v1560[16] = v257;
    v1559 = v256;
    *v1560 = v256;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v246 = v1337;
  }

  else
  {
    v245 = *v1556;
    *v1556 = 0;
    *v243 = v245;
    *(v243 + 16) = *&v1556[16];
    v246 = v243 + 32;
  }

  *(this + 42) = v246;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1520);
  (*(*a3 + 16))(&v1559, a3, 8);
  v1518 = v1559;
  v1519 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v258 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v258;
  *&v1556[16] = xmmword_272756730;
  v259 = (*(*v258 + 16))(v258, 40, 8);
  v260 = vp::vx::data_flow::State<void>::State(&v1559, &v1518);
  *v259 = &unk_2881BBD88;
  *(v259 + 8) = v1559;
  *(v259 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v259 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v260);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v259);
  v261 = *(this + 42);
  v262 = *(this + 43);
  if (v261 >= v262)
  {
    v265 = *(this + 41);
    v266 = (v261 - v265) >> 5;
    v267 = v266 + 1;
    if ((v266 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v268 = v262 - v265;
    if (v268 >> 4 > v267)
    {
      v267 = v268 >> 4;
    }

    if (v268 >= 0x7FFFFFFFFFFFFFE0)
    {
      v269 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v269 = v267;
    }

    v1561 = this + 352;
    if (v269)
    {
      v270 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v269);
      v265 = *(this + 41);
      v261 = *(this + 42);
    }

    else
    {
      v270 = 0;
    }

    v271 = (v270 + 32 * v266);
    v1559 = v270;
    *v1560 = v271;
    *&v1560[16] = v270 + 32 * v269;
    v272 = *v1556;
    *v1556 = 0;
    *v271 = v272;
    v271[1] = *&v1556[16];
    *&v1560[8] = v271 + 2;
    v273 = &v271[-2 * ((v261 - v265) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v265, v261, v273);
    v274 = *(this + 41);
    *(this + 41) = v273;
    v275 = *(this + 43);
    v1338 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v274;
    *&v1560[16] = v275;
    v1559 = v274;
    *v1560 = v274;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v264 = v1338;
  }

  else
  {
    v263 = *v1556;
    *v1556 = 0;
    *v261 = v263;
    *(v261 + 16) = *&v1556[16];
    v264 = v261 + 32;
  }

  *(this + 42) = v264;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1518);
  (*(*a3 + 16))(&v1559, a3, 9);
  v1516 = v1559;
  v1517 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v276 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v276;
  *&v1556[16] = xmmword_272756730;
  v277 = (*(*v276 + 16))(v276, 40, 8);
  v278 = vp::vx::data_flow::State<void>::State(&v1559, &v1516);
  *v277 = &unk_2881BBE00;
  *(v277 + 8) = v1559;
  *(v277 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v277 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v278);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v277);
  v279 = *(this + 42);
  v280 = *(this + 43);
  if (v279 >= v280)
  {
    v283 = *(this + 41);
    v284 = (v279 - v283) >> 5;
    v285 = v284 + 1;
    if ((v284 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v286 = v280 - v283;
    if (v286 >> 4 > v285)
    {
      v285 = v286 >> 4;
    }

    if (v286 >= 0x7FFFFFFFFFFFFFE0)
    {
      v287 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v287 = v285;
    }

    v1561 = this + 352;
    if (v287)
    {
      v288 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v287);
      v283 = *(this + 41);
      v279 = *(this + 42);
    }

    else
    {
      v288 = 0;
    }

    v289 = (v288 + 32 * v284);
    v1559 = v288;
    *v1560 = v289;
    *&v1560[16] = v288 + 32 * v287;
    v290 = *v1556;
    *v1556 = 0;
    *v289 = v290;
    v289[1] = *&v1556[16];
    *&v1560[8] = v289 + 2;
    v291 = &v289[-2 * ((v279 - v283) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v283, v279, v291);
    v292 = *(this + 41);
    *(this + 41) = v291;
    v293 = *(this + 43);
    v1339 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v292;
    *&v1560[16] = v293;
    v1559 = v292;
    *v1560 = v292;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v282 = v1339;
  }

  else
  {
    v281 = *v1556;
    *v1556 = 0;
    *v279 = v281;
    *(v279 + 16) = *&v1556[16];
    v282 = v279 + 32;
  }

  *(this + 42) = v282;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1516);
  (*(*a3 + 16))(&v1559, a3, 10);
  v1544 = v1559;
  v1545 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1559 = &unk_2881BAF70;
  v1560[0] = 0;
  *&v1560[16] = &v1559;
  v1528 = v1544;
  vp::vx::data_flow::State_Manager::create_state(v1556, a2 + 3, &v1559);
  v1554 = *v1556;
  v1555 = *&v1556[8];
  *&v1556[8] = 0;
  *&v1556[16] = 0;
  vp::vx::data_flow::State<void>::~State(v1556);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v1559);
  v1546 = v1554;
  v1547 = v1555;
  v1555 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v1554);
  v1514 = v1546;
  v1515 = v1547;
  v1547 = 0uLL;
  v294 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v294;
  *&v1556[16] = xmmword_272756730;
  v295 = (*(*v294 + 16))(v294, 40, 8);
  v296 = vp::vx::data_flow::State<void>::State(&v1559, &v1514);
  *v295 = &unk_2881BBE78;
  *(v295 + 8) = v1559;
  *(v295 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v295 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v296);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v295);
  v297 = *(this + 42);
  v298 = *(this + 43);
  if (v297 >= v298)
  {
    v301 = *(this + 41);
    v302 = (v297 - v301) >> 5;
    v303 = v302 + 1;
    if ((v302 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v304 = v298 - v301;
    if (v304 >> 4 > v303)
    {
      v303 = v304 >> 4;
    }

    if (v304 >= 0x7FFFFFFFFFFFFFE0)
    {
      v305 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v305 = v303;
    }

    v1561 = this + 352;
    if (v305)
    {
      v306 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v305);
      v301 = *(this + 41);
      v297 = *(this + 42);
    }

    else
    {
      v306 = 0;
    }

    v307 = (v306 + 32 * v302);
    v1559 = v306;
    *v1560 = v307;
    *&v1560[16] = v306 + 32 * v305;
    v308 = *v1556;
    *v1556 = 0;
    *v307 = v308;
    v307[1] = *&v1556[16];
    *&v1560[8] = v307 + 2;
    v309 = &v307[-2 * ((v297 - v301) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v301, v297, v309);
    v310 = *(this + 41);
    *(this + 41) = v309;
    v311 = *(this + 43);
    v1340 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v310;
    *&v1560[16] = v311;
    v1559 = v310;
    *v1560 = v310;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v300 = v1340;
  }

  else
  {
    v299 = *v1556;
    *v1556 = 0;
    *v297 = v299;
    *(v297 + 16) = *&v1556[16];
    v300 = v297 + 32;
  }

  *(this + 42) = v300;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1514);
  vp::vx::data_flow::State<void>::~State(&v1546);
  vp::vx::data_flow::State<void>::~State(&v1544);
  (*(*a3 + 16))(&v1559, a3, 16);
  v1544 = v1559;
  v1545 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1559 = &unk_2881BAFB8;
  v1560[0] = 0;
  *&v1560[16] = &v1559;
  v1528 = v1544;
  vp::vx::data_flow::State_Manager::create_state(v1556, a2 + 3, &v1559);
  v1554 = *v1556;
  v1555 = *&v1556[8];
  *&v1556[8] = 0;
  *&v1556[16] = 0;
  vp::vx::data_flow::State<void>::~State(v1556);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v1559);
  v1546 = v1554;
  v1547 = v1555;
  v1555 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v1554);
  v1512 = v1546;
  v1513 = v1547;
  v1547 = 0uLL;
  v312 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v312;
  *&v1556[16] = xmmword_272756730;
  v313 = (*(*v312 + 16))(v312, 40, 8);
  v314 = vp::vx::data_flow::State<void>::State(&v1559, &v1512);
  *v313 = &unk_2881BBEF0;
  *(v313 + 8) = v1559;
  *(v313 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v313 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v314);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v313);
  v315 = *(this + 42);
  v316 = *(this + 43);
  if (v315 >= v316)
  {
    v319 = *(this + 41);
    v320 = (v315 - v319) >> 5;
    v321 = v320 + 1;
    if ((v320 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v322 = v316 - v319;
    if (v322 >> 4 > v321)
    {
      v321 = v322 >> 4;
    }

    if (v322 >= 0x7FFFFFFFFFFFFFE0)
    {
      v323 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v323 = v321;
    }

    v1561 = this + 352;
    if (v323)
    {
      v324 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v323);
      v319 = *(this + 41);
      v315 = *(this + 42);
    }

    else
    {
      v324 = 0;
    }

    v325 = (v324 + 32 * v320);
    v1559 = v324;
    *v1560 = v325;
    *&v1560[16] = v324 + 32 * v323;
    v326 = *v1556;
    *v1556 = 0;
    *v325 = v326;
    v325[1] = *&v1556[16];
    *&v1560[8] = v325 + 2;
    v327 = &v325[-2 * ((v315 - v319) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v319, v315, v327);
    v328 = *(this + 41);
    *(this + 41) = v327;
    v329 = *(this + 43);
    v1341 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v328;
    *&v1560[16] = v329;
    v1559 = v328;
    *v1560 = v328;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v318 = v1341;
  }

  else
  {
    v317 = *v1556;
    *v1556 = 0;
    *v315 = v317;
    *(v315 + 16) = *&v1556[16];
    v318 = v315 + 32;
  }

  *(this + 42) = v318;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1512);
  vp::vx::data_flow::State<void>::~State(&v1546);
  vp::vx::data_flow::State<void>::~State(&v1544);
  (*(*a3 + 16))(&v1559, a3, 17);
  v1510 = v1559;
  v1511 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v330 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v330;
  *&v1556[16] = xmmword_272756730;
  v331 = (*(*v330 + 16))(v330, 40, 8);
  v332 = vp::vx::data_flow::State<void>::State(&v1559, &v1510);
  *v331 = &unk_2881BBF68;
  *(v331 + 8) = v1559;
  *(v331 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v331 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v332);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v331);
  v333 = *(this + 42);
  v334 = *(this + 43);
  if (v333 >= v334)
  {
    v337 = *(this + 41);
    v338 = (v333 - v337) >> 5;
    v339 = v338 + 1;
    if ((v338 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v340 = v334 - v337;
    if (v340 >> 4 > v339)
    {
      v339 = v340 >> 4;
    }

    if (v340 >= 0x7FFFFFFFFFFFFFE0)
    {
      v341 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v341 = v339;
    }

    v1561 = this + 352;
    if (v341)
    {
      v342 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v341);
      v337 = *(this + 41);
      v333 = *(this + 42);
    }

    else
    {
      v342 = 0;
    }

    v343 = (v342 + 32 * v338);
    v1559 = v342;
    *v1560 = v343;
    *&v1560[16] = v342 + 32 * v341;
    v344 = *v1556;
    *v1556 = 0;
    *v343 = v344;
    v343[1] = *&v1556[16];
    *&v1560[8] = v343 + 2;
    v345 = &v343[-2 * ((v333 - v337) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v337, v333, v345);
    v346 = *(this + 41);
    *(this + 41) = v345;
    v347 = *(this + 43);
    v1342 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v346;
    *&v1560[16] = v347;
    v1559 = v346;
    *v1560 = v346;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v336 = v1342;
  }

  else
  {
    v335 = *v1556;
    *v1556 = 0;
    *v333 = v335;
    *(v333 + 16) = *&v1556[16];
    v336 = v333 + 32;
  }

  *(this + 42) = v336;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1510);
  (*(*a3 + 16))(&v1559, a3, 18);
  v1508 = v1559;
  v1509 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v348 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v348;
  *&v1556[16] = xmmword_272756730;
  v349 = (*(*v348 + 16))(v348, 40, 8);
  v350 = vp::vx::data_flow::State<void>::State(&v1559, &v1508);
  *v349 = &unk_2881BBFE0;
  *(v349 + 8) = v1559;
  *(v349 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v349 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v350);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v349);
  v351 = *(this + 42);
  v352 = *(this + 43);
  if (v351 >= v352)
  {
    v355 = *(this + 41);
    v356 = (v351 - v355) >> 5;
    v357 = v356 + 1;
    if ((v356 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v358 = v352 - v355;
    if (v358 >> 4 > v357)
    {
      v357 = v358 >> 4;
    }

    if (v358 >= 0x7FFFFFFFFFFFFFE0)
    {
      v359 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v359 = v357;
    }

    v1561 = this + 352;
    if (v359)
    {
      v360 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v359);
      v355 = *(this + 41);
      v351 = *(this + 42);
    }

    else
    {
      v360 = 0;
    }

    v361 = (v360 + 32 * v356);
    v1559 = v360;
    *v1560 = v361;
    *&v1560[16] = v360 + 32 * v359;
    v362 = *v1556;
    *v1556 = 0;
    *v361 = v362;
    v361[1] = *&v1556[16];
    *&v1560[8] = v361 + 2;
    v363 = &v361[-2 * ((v351 - v355) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v355, v351, v363);
    v364 = *(this + 41);
    *(this + 41) = v363;
    v365 = *(this + 43);
    v1343 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v364;
    *&v1560[16] = v365;
    v1559 = v364;
    *v1560 = v364;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v354 = v1343;
  }

  else
  {
    v353 = *v1556;
    *v1556 = 0;
    *v351 = v353;
    *(v351 + 16) = *&v1556[16];
    v354 = v351 + 32;
  }

  *(this + 42) = v354;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1508);
  (*(*a3 + 16))(&v1559, a3, 19);
  v1506 = v1559;
  v1507 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v366 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v366;
  *&v1556[16] = xmmword_272756730;
  v367 = (*(*v366 + 16))(v366, 40, 8);
  v368 = vp::vx::data_flow::State<void>::State(&v1559, &v1506);
  *v367 = &unk_2881BC058;
  *(v367 + 8) = v1559;
  *(v367 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v367 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v368);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v367);
  v369 = *(this + 42);
  v370 = *(this + 43);
  if (v369 >= v370)
  {
    v373 = *(this + 41);
    v374 = (v369 - v373) >> 5;
    v375 = v374 + 1;
    if ((v374 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v376 = v370 - v373;
    if (v376 >> 4 > v375)
    {
      v375 = v376 >> 4;
    }

    if (v376 >= 0x7FFFFFFFFFFFFFE0)
    {
      v377 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v377 = v375;
    }

    v1561 = this + 352;
    if (v377)
    {
      v378 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v377);
      v373 = *(this + 41);
      v369 = *(this + 42);
    }

    else
    {
      v378 = 0;
    }

    v379 = (v378 + 32 * v374);
    v1559 = v378;
    *v1560 = v379;
    *&v1560[16] = v378 + 32 * v377;
    v380 = *v1556;
    *v1556 = 0;
    *v379 = v380;
    v379[1] = *&v1556[16];
    *&v1560[8] = v379 + 2;
    v381 = &v379[-2 * ((v369 - v373) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v373, v369, v381);
    v382 = *(this + 41);
    *(this + 41) = v381;
    v383 = *(this + 43);
    v1344 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v382;
    *&v1560[16] = v383;
    v1559 = v382;
    *v1560 = v382;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v372 = v1344;
  }

  else
  {
    v371 = *v1556;
    *v1556 = 0;
    *v369 = v371;
    *(v369 + 16) = *&v1556[16];
    v372 = v369 + 32;
  }

  *(this + 42) = v372;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1506);
  (*(*a3 + 16))(&v1559, a3, 20);
  v1504 = v1559;
  v1505 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v384 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v384;
  *&v1556[16] = xmmword_272756730;
  v385 = (*(*v384 + 16))(v384, 40, 8);
  v386 = vp::vx::data_flow::State<void>::State(&v1559, &v1504);
  *v385 = &unk_2881BC0D0;
  *(v385 + 8) = v1559;
  *(v385 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v385 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v386);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v385);
  v387 = *(this + 42);
  v388 = *(this + 43);
  if (v387 >= v388)
  {
    v391 = *(this + 41);
    v392 = (v387 - v391) >> 5;
    v393 = v392 + 1;
    if ((v392 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v394 = v388 - v391;
    if (v394 >> 4 > v393)
    {
      v393 = v394 >> 4;
    }

    if (v394 >= 0x7FFFFFFFFFFFFFE0)
    {
      v395 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v395 = v393;
    }

    v1561 = this + 352;
    if (v395)
    {
      v396 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v395);
      v391 = *(this + 41);
      v387 = *(this + 42);
    }

    else
    {
      v396 = 0;
    }

    v397 = (v396 + 32 * v392);
    v1559 = v396;
    *v1560 = v397;
    *&v1560[16] = v396 + 32 * v395;
    v398 = *v1556;
    *v1556 = 0;
    *v397 = v398;
    v397[1] = *&v1556[16];
    *&v1560[8] = v397 + 2;
    v399 = &v397[-2 * ((v387 - v391) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v391, v387, v399);
    v400 = *(this + 41);
    *(this + 41) = v399;
    v401 = *(this + 43);
    v1345 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v400;
    *&v1560[16] = v401;
    v1559 = v400;
    *v1560 = v400;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v390 = v1345;
  }

  else
  {
    v389 = *v1556;
    *v1556 = 0;
    *v387 = v389;
    *(v387 + 16) = *&v1556[16];
    v390 = v387 + 32;
  }

  *(this + 42) = v390;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1504);
  (*(*a3 + 16))(&v1559, a3, 21);
  v1544 = v1559;
  v1545 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  (*(*a3 + 16))(&v1559, a3, 22);
  v1528 = v1559;
  v1529 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1559 = &unk_2881BB000;
  v1560[0] = 0;
  *&v1560[16] = &v1559;
  v1557 = v1544;
  v1558 = v1528;
  vp::vx::data_flow::State_Manager::create_state(v1556, a2 + 3, &v1559);
  v1554 = *v1556;
  v1555 = *&v1556[8];
  *&v1556[8] = 0;
  *&v1556[16] = 0;
  vp::vx::data_flow::State<void>::~State(v1556);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v1559);
  v1546 = v1554;
  v1547 = v1555;
  v1555 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v1554);
  v1502 = v1546;
  v1503 = v1547;
  v1547 = 0uLL;
  v402 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v402;
  *&v1556[16] = xmmword_272756730;
  v403 = (*(*v402 + 16))(v402, 40, 8);
  v404 = vp::vx::data_flow::State<void>::State(&v1559, &v1502);
  *v403 = &unk_2881BC148;
  *(v403 + 8) = v1559;
  *(v403 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v403 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v404);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v403);
  v405 = *(this + 42);
  v406 = *(this + 43);
  if (v405 >= v406)
  {
    v409 = *(this + 41);
    v410 = (v405 - v409) >> 5;
    v411 = v410 + 1;
    if ((v410 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v412 = v406 - v409;
    if (v412 >> 4 > v411)
    {
      v411 = v412 >> 4;
    }

    if (v412 >= 0x7FFFFFFFFFFFFFE0)
    {
      v413 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v413 = v411;
    }

    v1561 = this + 352;
    if (v413)
    {
      v414 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v413);
      v409 = *(this + 41);
      v405 = *(this + 42);
    }

    else
    {
      v414 = 0;
    }

    v415 = (v414 + 32 * v410);
    v1559 = v414;
    *v1560 = v415;
    *&v1560[16] = v414 + 32 * v413;
    v416 = *v1556;
    *v1556 = 0;
    *v415 = v416;
    v415[1] = *&v1556[16];
    *&v1560[8] = v415 + 2;
    v417 = &v415[-2 * ((v405 - v409) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v409, v405, v417);
    v418 = *(this + 41);
    *(this + 41) = v417;
    v419 = *(this + 43);
    v1346 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v418;
    *&v1560[16] = v419;
    v1559 = v418;
    *v1560 = v418;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v408 = v1346;
  }

  else
  {
    v407 = *v1556;
    *v1556 = 0;
    *v405 = v407;
    *(v405 + 16) = *&v1556[16];
    v408 = v405 + 32;
  }

  *(this + 42) = v408;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1502);
  vp::vx::data_flow::State<void>::~State(&v1546);
  vp::vx::data_flow::State<void>::~State(&v1528);
  vp::vx::data_flow::State<void>::~State(&v1544);
  (*(*a3 + 16))(&v1559, a3, 23);
  v1500 = v1559;
  v1501 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v420 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v420;
  *&v1556[16] = xmmword_272756730;
  v421 = (*(*v420 + 16))(v420, 40, 8);
  v422 = vp::vx::data_flow::State<void>::State(&v1559, &v1500);
  *v421 = &unk_2881BC1C0;
  *(v421 + 8) = v1559;
  *(v421 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v421 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v422);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v421);
  v423 = *(this + 42);
  v424 = *(this + 43);
  if (v423 >= v424)
  {
    v427 = *(this + 41);
    v428 = (v423 - v427) >> 5;
    v429 = v428 + 1;
    if ((v428 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v430 = v424 - v427;
    if (v430 >> 4 > v429)
    {
      v429 = v430 >> 4;
    }

    if (v430 >= 0x7FFFFFFFFFFFFFE0)
    {
      v431 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v431 = v429;
    }

    v1561 = this + 352;
    if (v431)
    {
      v432 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v431);
      v427 = *(this + 41);
      v423 = *(this + 42);
    }

    else
    {
      v432 = 0;
    }

    v433 = (v432 + 32 * v428);
    v1559 = v432;
    *v1560 = v433;
    *&v1560[16] = v432 + 32 * v431;
    v434 = *v1556;
    *v1556 = 0;
    *v433 = v434;
    v433[1] = *&v1556[16];
    *&v1560[8] = v433 + 2;
    v435 = &v433[-2 * ((v423 - v427) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v427, v423, v435);
    v436 = *(this + 41);
    *(this + 41) = v435;
    v437 = *(this + 43);
    v1347 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v436;
    *&v1560[16] = v437;
    v1559 = v436;
    *v1560 = v436;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v426 = v1347;
  }

  else
  {
    v425 = *v1556;
    *v1556 = 0;
    *v423 = v425;
    *(v423 + 16) = *&v1556[16];
    v426 = v423 + 32;
  }

  *(this + 42) = v426;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1500);
  (*(*a3 + 16))(&v1559, a3, 13);
  v1498 = v1559;
  v1499 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v438 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v438;
  *&v1556[16] = xmmword_272756730;
  v439 = (*(*v438 + 16))(v438, 40, 8);
  v440 = vp::vx::data_flow::State<void>::State(&v1559, &v1498);
  *v439 = &unk_2881BC238;
  *(v439 + 8) = v1559;
  *(v439 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v439 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v440);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v439);
  v441 = *(this + 42);
  v442 = *(this + 43);
  if (v441 >= v442)
  {
    v445 = *(this + 41);
    v446 = (v441 - v445) >> 5;
    v447 = v446 + 1;
    if ((v446 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v448 = v442 - v445;
    if (v448 >> 4 > v447)
    {
      v447 = v448 >> 4;
    }

    if (v448 >= 0x7FFFFFFFFFFFFFE0)
    {
      v449 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v449 = v447;
    }

    v1561 = this + 352;
    if (v449)
    {
      v450 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v449);
      v445 = *(this + 41);
      v441 = *(this + 42);
    }

    else
    {
      v450 = 0;
    }

    v451 = (v450 + 32 * v446);
    v1559 = v450;
    *v1560 = v451;
    *&v1560[16] = v450 + 32 * v449;
    v452 = *v1556;
    *v1556 = 0;
    *v451 = v452;
    v451[1] = *&v1556[16];
    *&v1560[8] = v451 + 2;
    v453 = &v451[-2 * ((v441 - v445) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v445, v441, v453);
    v454 = *(this + 41);
    *(this + 41) = v453;
    v455 = *(this + 43);
    v1348 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v454;
    *&v1560[16] = v455;
    v1559 = v454;
    *v1560 = v454;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v444 = v1348;
  }

  else
  {
    v443 = *v1556;
    *v1556 = 0;
    *v441 = v443;
    *(v441 + 16) = *&v1556[16];
    v444 = v441 + 32;
  }

  *(this + 42) = v444;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1498);
  (*(*a3 + 16))(&v1559, a3, 14);
  v1496 = v1559;
  v1497 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v456 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v456;
  *&v1556[16] = xmmword_272756730;
  v457 = (*(*v456 + 16))(v456, 40, 8);
  v458 = vp::vx::data_flow::State<void>::State(&v1559, &v1496);
  *v457 = &unk_2881BC2B0;
  *(v457 + 8) = v1559;
  *(v457 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v457 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v458);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v457);
  v459 = *(this + 42);
  v460 = *(this + 43);
  if (v459 >= v460)
  {
    v463 = *(this + 41);
    v464 = (v459 - v463) >> 5;
    v465 = v464 + 1;
    if ((v464 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v466 = v460 - v463;
    if (v466 >> 4 > v465)
    {
      v465 = v466 >> 4;
    }

    if (v466 >= 0x7FFFFFFFFFFFFFE0)
    {
      v467 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v467 = v465;
    }

    v1561 = this + 352;
    if (v467)
    {
      v468 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v467);
      v463 = *(this + 41);
      v459 = *(this + 42);
    }

    else
    {
      v468 = 0;
    }

    v469 = (v468 + 32 * v464);
    v1559 = v468;
    *v1560 = v469;
    *&v1560[16] = v468 + 32 * v467;
    v470 = *v1556;
    *v1556 = 0;
    *v469 = v470;
    v469[1] = *&v1556[16];
    *&v1560[8] = v469 + 2;
    v471 = &v469[-2 * ((v459 - v463) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v463, v459, v471);
    v472 = *(this + 41);
    *(this + 41) = v471;
    v473 = *(this + 43);
    v1349 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v472;
    *&v1560[16] = v473;
    v1559 = v472;
    *v1560 = v472;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v462 = v1349;
  }

  else
  {
    v461 = *v1556;
    *v1556 = 0;
    *v459 = v461;
    *(v459 + 16) = *&v1556[16];
    v462 = v459 + 32;
  }

  *(this + 42) = v462;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1496);
  (*(*a3 + 16))(&v1559, a3, 15);
  v1494 = v1559;
  v1495 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v474 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v474;
  *&v1556[16] = xmmword_272756730;
  v475 = (*(*v474 + 16))(v474, 40, 8);
  v476 = vp::vx::data_flow::State<void>::State(&v1559, &v1494);
  *v475 = &unk_2881BC328;
  *(v475 + 8) = v1559;
  *(v475 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v475 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v476);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v475);
  v477 = *(this + 42);
  v478 = *(this + 43);
  if (v477 >= v478)
  {
    v481 = *(this + 41);
    v482 = (v477 - v481) >> 5;
    v483 = v482 + 1;
    if ((v482 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v484 = v478 - v481;
    if (v484 >> 4 > v483)
    {
      v483 = v484 >> 4;
    }

    if (v484 >= 0x7FFFFFFFFFFFFFE0)
    {
      v485 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v485 = v483;
    }

    v1561 = this + 352;
    if (v485)
    {
      v486 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v485);
      v481 = *(this + 41);
      v477 = *(this + 42);
    }

    else
    {
      v486 = 0;
    }

    v487 = (v486 + 32 * v482);
    v1559 = v486;
    *v1560 = v487;
    *&v1560[16] = v486 + 32 * v485;
    v488 = *v1556;
    *v1556 = 0;
    *v487 = v488;
    v487[1] = *&v1556[16];
    *&v1560[8] = v487 + 2;
    v489 = &v487[-2 * ((v477 - v481) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v481, v477, v489);
    v490 = *(this + 41);
    *(this + 41) = v489;
    v491 = *(this + 43);
    v1350 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v490;
    *&v1560[16] = v491;
    v1559 = v490;
    *v1560 = v490;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v480 = v1350;
  }

  else
  {
    v479 = *v1556;
    *v1556 = 0;
    *v477 = v479;
    *(v477 + 16) = *&v1556[16];
    v480 = v477 + 32;
  }

  *(this + 42) = v480;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1494);
  (*(*a3 + 16))(&v1559, a3, 30);
  v1492 = v1559;
  v1493 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v492 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v492;
  *&v1556[16] = xmmword_272756730;
  v493 = (*(*v492 + 16))(v492, 40, 8);
  v494 = vp::vx::data_flow::State<void>::State(&v1559, &v1492);
  *v493 = &unk_2881BC3A0;
  *(v493 + 8) = v1559;
  *(v493 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v493 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v494);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v493);
  v495 = *(this + 42);
  v496 = *(this + 43);
  if (v495 >= v496)
  {
    v499 = *(this + 41);
    v500 = (v495 - v499) >> 5;
    v501 = v500 + 1;
    if ((v500 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v502 = v496 - v499;
    if (v502 >> 4 > v501)
    {
      v501 = v502 >> 4;
    }

    if (v502 >= 0x7FFFFFFFFFFFFFE0)
    {
      v503 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v503 = v501;
    }

    v1561 = this + 352;
    if (v503)
    {
      v504 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v503);
      v499 = *(this + 41);
      v495 = *(this + 42);
    }

    else
    {
      v504 = 0;
    }

    v505 = (v504 + 32 * v500);
    v1559 = v504;
    *v1560 = v505;
    *&v1560[16] = v504 + 32 * v503;
    v506 = *v1556;
    *v1556 = 0;
    *v505 = v506;
    v505[1] = *&v1556[16];
    *&v1560[8] = v505 + 2;
    v507 = &v505[-2 * ((v495 - v499) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v499, v495, v507);
    v508 = *(this + 41);
    *(this + 41) = v507;
    v509 = *(this + 43);
    v1351 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v508;
    *&v1560[16] = v509;
    v1559 = v508;
    *v1560 = v508;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v498 = v1351;
  }

  else
  {
    v497 = *v1556;
    *v1556 = 0;
    *v495 = v497;
    *(v495 + 16) = *&v1556[16];
    v498 = v495 + 32;
  }

  *(this + 42) = v498;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1492);
  (*(*a3 + 16))(&v1559, a3, 32);
  v1490 = v1559;
  v1491 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v510 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v510;
  *&v1556[16] = xmmword_272756730;
  v511 = (*(*v510 + 16))(v510, 40, 8);
  v512 = vp::vx::data_flow::State<void>::State(&v1559, &v1490);
  *v511 = &unk_2881BC418;
  *(v511 + 8) = v1559;
  *(v511 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v511 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v512);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v511);
  v513 = *(this + 42);
  v514 = *(this + 43);
  if (v513 >= v514)
  {
    v517 = *(this + 41);
    v518 = (v513 - v517) >> 5;
    v519 = v518 + 1;
    if ((v518 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v520 = v514 - v517;
    if (v520 >> 4 > v519)
    {
      v519 = v520 >> 4;
    }

    if (v520 >= 0x7FFFFFFFFFFFFFE0)
    {
      v521 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v521 = v519;
    }

    v1561 = this + 352;
    if (v521)
    {
      v522 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v521);
      v517 = *(this + 41);
      v513 = *(this + 42);
    }

    else
    {
      v522 = 0;
    }

    v523 = (v522 + 32 * v518);
    v1559 = v522;
    *v1560 = v523;
    *&v1560[16] = v522 + 32 * v521;
    v524 = *v1556;
    *v1556 = 0;
    *v523 = v524;
    v523[1] = *&v1556[16];
    *&v1560[8] = v523 + 2;
    v525 = &v523[-2 * ((v513 - v517) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v517, v513, v525);
    v526 = *(this + 41);
    *(this + 41) = v525;
    v527 = *(this + 43);
    v1352 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v526;
    *&v1560[16] = v527;
    v1559 = v526;
    *v1560 = v526;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v516 = v1352;
  }

  else
  {
    v515 = *v1556;
    *v1556 = 0;
    *v513 = v515;
    *(v513 + 16) = *&v1556[16];
    v516 = v513 + 32;
  }

  *(this + 42) = v516;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1490);
  (*(*a3 + 16))(&v1559, a3, 34);
  v1488 = v1559;
  v1489 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v528 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v528;
  *&v1556[16] = xmmword_272756730;
  v529 = (*(*v528 + 16))(v528, 40, 8);
  v530 = vp::vx::data_flow::State<void>::State(&v1559, &v1488);
  *v529 = &unk_2881BC490;
  *(v529 + 8) = v1559;
  *(v529 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v529 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v530);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v529);
  v531 = *(this + 42);
  v532 = *(this + 43);
  if (v531 >= v532)
  {
    v535 = *(this + 41);
    v536 = (v531 - v535) >> 5;
    v537 = v536 + 1;
    if ((v536 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v538 = v532 - v535;
    if (v538 >> 4 > v537)
    {
      v537 = v538 >> 4;
    }

    if (v538 >= 0x7FFFFFFFFFFFFFE0)
    {
      v539 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v539 = v537;
    }

    v1561 = this + 352;
    if (v539)
    {
      v540 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v539);
      v535 = *(this + 41);
      v531 = *(this + 42);
    }

    else
    {
      v540 = 0;
    }

    v541 = (v540 + 32 * v536);
    v1559 = v540;
    *v1560 = v541;
    *&v1560[16] = v540 + 32 * v539;
    v542 = *v1556;
    *v1556 = 0;
    *v541 = v542;
    v541[1] = *&v1556[16];
    *&v1560[8] = v541 + 2;
    v543 = &v541[-2 * ((v531 - v535) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v535, v531, v543);
    v544 = *(this + 41);
    *(this + 41) = v543;
    v545 = *(this + 43);
    v1353 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v544;
    *&v1560[16] = v545;
    v1559 = v544;
    *v1560 = v544;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v534 = v1353;
  }

  else
  {
    v533 = *v1556;
    *v1556 = 0;
    *v531 = v533;
    *(v531 + 16) = *&v1556[16];
    v534 = v531 + 32;
  }

  *(this + 42) = v534;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1488);
  (*(*a3 + 16))(&v1559, a3, 36);
  v1486 = v1559;
  v1487 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v546 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v546;
  *&v1556[16] = xmmword_272756730;
  v547 = (*(*v546 + 16))(v546, 40, 8);
  v548 = vp::vx::data_flow::State<void>::State(&v1559, &v1486);
  *v547 = &unk_2881BC508;
  *(v547 + 8) = v1559;
  *(v547 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v547 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v548);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v547);
  v549 = *(this + 42);
  v550 = *(this + 43);
  if (v549 >= v550)
  {
    v553 = *(this + 41);
    v554 = (v549 - v553) >> 5;
    v555 = v554 + 1;
    if ((v554 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v556 = v550 - v553;
    if (v556 >> 4 > v555)
    {
      v555 = v556 >> 4;
    }

    if (v556 >= 0x7FFFFFFFFFFFFFE0)
    {
      v557 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v557 = v555;
    }

    v1561 = this + 352;
    if (v557)
    {
      v558 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v557);
      v553 = *(this + 41);
      v549 = *(this + 42);
    }

    else
    {
      v558 = 0;
    }

    v559 = (v558 + 32 * v554);
    v1559 = v558;
    *v1560 = v559;
    *&v1560[16] = v558 + 32 * v557;
    v560 = *v1556;
    *v1556 = 0;
    *v559 = v560;
    v559[1] = *&v1556[16];
    *&v1560[8] = v559 + 2;
    v561 = &v559[-2 * ((v549 - v553) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v553, v549, v561);
    v562 = *(this + 41);
    *(this + 41) = v561;
    v563 = *(this + 43);
    v1354 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v562;
    *&v1560[16] = v563;
    v1559 = v562;
    *v1560 = v562;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v552 = v1354;
  }

  else
  {
    v551 = *v1556;
    *v1556 = 0;
    *v549 = v551;
    *(v549 + 16) = *&v1556[16];
    v552 = v549 + 32;
  }

  *(this + 42) = v552;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1486);
  (*(*a3 + 16))(&v1559, a3, 51);
  v1484 = v1559;
  v1485 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v564 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v564;
  *&v1556[16] = xmmword_272756730;
  v565 = (*(*v564 + 16))(v564, 40, 8);
  v566 = vp::vx::data_flow::State<void>::State(&v1559, &v1484);
  *v565 = &unk_2881BC580;
  *(v565 + 8) = v1559;
  *(v565 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v565 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v566);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v565);
  v567 = *(this + 42);
  v568 = *(this + 43);
  if (v567 >= v568)
  {
    v571 = *(this + 41);
    v572 = (v567 - v571) >> 5;
    v573 = v572 + 1;
    if ((v572 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v574 = v568 - v571;
    if (v574 >> 4 > v573)
    {
      v573 = v574 >> 4;
    }

    if (v574 >= 0x7FFFFFFFFFFFFFE0)
    {
      v575 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v575 = v573;
    }

    v1561 = this + 352;
    if (v575)
    {
      v576 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v575);
      v571 = *(this + 41);
      v567 = *(this + 42);
    }

    else
    {
      v576 = 0;
    }

    v577 = (v576 + 32 * v572);
    v1559 = v576;
    *v1560 = v577;
    *&v1560[16] = v576 + 32 * v575;
    v578 = *v1556;
    *v1556 = 0;
    *v577 = v578;
    v577[1] = *&v1556[16];
    *&v1560[8] = v577 + 2;
    v579 = &v577[-2 * ((v567 - v571) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v571, v567, v579);
    v580 = *(this + 41);
    *(this + 41) = v579;
    v581 = *(this + 43);
    v1355 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v580;
    *&v1560[16] = v581;
    v1559 = v580;
    *v1560 = v580;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v570 = v1355;
  }

  else
  {
    v569 = *v1556;
    *v1556 = 0;
    *v567 = v569;
    *(v567 + 16) = *&v1556[16];
    v570 = v567 + 32;
  }

  *(this + 42) = v570;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1484);
  (*(*a3 + 16))(&v1559, a3, 51);
  v1544 = v1559;
  v1545 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  (*(*a3 + 16))(&v1559, a3, 5);
  v1528 = v1559;
  v1529 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1559 = &unk_2881BB048;
  v1560[0] = 0;
  *&v1560[16] = &v1559;
  v1557 = v1544;
  v1558 = v1528;
  vp::vx::data_flow::State_Manager::create_state(v1556, a2 + 3, &v1559);
  v1554 = *v1556;
  v1555 = *&v1556[8];
  *&v1556[8] = 0;
  *&v1556[16] = 0;
  vp::vx::data_flow::State<void>::~State(v1556);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v1559);
  v1546 = v1554;
  v1547 = v1555;
  v1555 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v1554);
  v1482 = v1546;
  v1483 = v1547;
  v1547 = 0uLL;
  v582 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v582;
  *&v1556[16] = xmmword_272756730;
  v583 = (*(*v582 + 16))(v582, 40, 8);
  v584 = vp::vx::data_flow::State<void>::State(&v1559, &v1482);
  *v583 = &unk_2881BC5F8;
  *(v583 + 8) = v1559;
  *(v583 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v583 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v584);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v583);
  v585 = *(this + 42);
  v586 = *(this + 43);
  if (v585 >= v586)
  {
    v589 = *(this + 41);
    v590 = (v585 - v589) >> 5;
    v591 = v590 + 1;
    if ((v590 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v592 = v586 - v589;
    if (v592 >> 4 > v591)
    {
      v591 = v592 >> 4;
    }

    if (v592 >= 0x7FFFFFFFFFFFFFE0)
    {
      v593 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v593 = v591;
    }

    v1561 = this + 352;
    if (v593)
    {
      v594 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v593);
      v589 = *(this + 41);
      v585 = *(this + 42);
    }

    else
    {
      v594 = 0;
    }

    v595 = (v594 + 32 * v590);
    v1559 = v594;
    *v1560 = v595;
    *&v1560[16] = v594 + 32 * v593;
    v596 = *v1556;
    *v1556 = 0;
    *v595 = v596;
    v595[1] = *&v1556[16];
    *&v1560[8] = v595 + 2;
    v597 = &v595[-2 * ((v585 - v589) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v589, v585, v597);
    v598 = *(this + 41);
    *(this + 41) = v597;
    v599 = *(this + 43);
    v1356 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v598;
    *&v1560[16] = v599;
    v1559 = v598;
    *v1560 = v598;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v588 = v1356;
  }

  else
  {
    v587 = *v1556;
    *v1556 = 0;
    *v585 = v587;
    *(v585 + 16) = *&v1556[16];
    v588 = v585 + 32;
  }

  *(this + 42) = v588;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1482);
  vp::vx::data_flow::State<void>::~State(&v1546);
  vp::vx::data_flow::State<void>::~State(&v1528);
  vp::vx::data_flow::State<void>::~State(&v1544);
  (*(*a3 + 16))(&v1559, a3, 51);
  v1544 = v1559;
  v1545 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1559 = &unk_2881BB090;
  v1560[0] = 0;
  *&v1560[16] = &v1559;
  v1528 = v1544;
  vp::vx::data_flow::State_Manager::create_state(v1556, a2 + 3, &v1559);
  v1554 = *v1556;
  v1555 = *&v1556[8];
  *&v1556[8] = 0;
  *&v1556[16] = 0;
  vp::vx::data_flow::State<void>::~State(v1556);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v1559);
  v1546 = v1554;
  v1547 = v1555;
  v1555 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v1554);
  v1480 = v1546;
  v1481 = v1547;
  v1547 = 0uLL;
  v600 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v600;
  *&v1556[16] = xmmword_272756730;
  v601 = (*(*v600 + 16))(v600, 40, 8);
  v602 = vp::vx::data_flow::State<void>::State(&v1559, &v1480);
  *v601 = &unk_2881BC670;
  *(v601 + 8) = v1559;
  *(v601 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v601 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v602);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v601);
  v603 = *(this + 42);
  v604 = *(this + 43);
  if (v603 >= v604)
  {
    v607 = *(this + 41);
    v608 = (v603 - v607) >> 5;
    v609 = v608 + 1;
    if ((v608 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v610 = v604 - v607;
    if (v610 >> 4 > v609)
    {
      v609 = v610 >> 4;
    }

    if (v610 >= 0x7FFFFFFFFFFFFFE0)
    {
      v611 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v611 = v609;
    }

    v1561 = this + 352;
    if (v611)
    {
      v612 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v611);
      v607 = *(this + 41);
      v603 = *(this + 42);
    }

    else
    {
      v612 = 0;
    }

    v613 = (v612 + 32 * v608);
    v1559 = v612;
    *v1560 = v613;
    *&v1560[16] = v612 + 32 * v611;
    v614 = *v1556;
    *v1556 = 0;
    *v613 = v614;
    v613[1] = *&v1556[16];
    *&v1560[8] = v613 + 2;
    v615 = &v613[-2 * ((v603 - v607) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v607, v603, v615);
    v616 = *(this + 41);
    *(this + 41) = v615;
    v617 = *(this + 43);
    v1357 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v616;
    *&v1560[16] = v617;
    v1559 = v616;
    *v1560 = v616;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v606 = v1357;
  }

  else
  {
    v605 = *v1556;
    *v1556 = 0;
    *v603 = v605;
    *(v603 + 16) = *&v1556[16];
    v606 = v603 + 32;
  }

  *(this + 42) = v606;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1480);
  vp::vx::data_flow::State<void>::~State(&v1546);
  vp::vx::data_flow::State<void>::~State(&v1544);
  (*(*a3 + 16))(&v1559, a3, 2);
  v1478 = v1559;
  v1479 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v618 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v618;
  *&v1556[16] = xmmword_272756730;
  v619 = (*(*v618 + 16))(v618, 40, 8);
  v620 = vp::vx::data_flow::State<void>::State(&v1559, &v1478);
  *v619 = &unk_2881BC6E8;
  *(v619 + 8) = v1559;
  *(v619 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v619 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v620);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v619);
  v621 = *(this + 42);
  v622 = *(this + 43);
  if (v621 >= v622)
  {
    v625 = *(this + 41);
    v626 = (v621 - v625) >> 5;
    v627 = v626 + 1;
    if ((v626 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v628 = v622 - v625;
    if (v628 >> 4 > v627)
    {
      v627 = v628 >> 4;
    }

    if (v628 >= 0x7FFFFFFFFFFFFFE0)
    {
      v629 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v629 = v627;
    }

    v1561 = this + 352;
    if (v629)
    {
      v630 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v629);
      v625 = *(this + 41);
      v621 = *(this + 42);
    }

    else
    {
      v630 = 0;
    }

    v631 = (v630 + 32 * v626);
    v1559 = v630;
    *v1560 = v631;
    *&v1560[16] = v630 + 32 * v629;
    v632 = *v1556;
    *v1556 = 0;
    *v631 = v632;
    v631[1] = *&v1556[16];
    *&v1560[8] = v631 + 2;
    v633 = &v631[-2 * ((v621 - v625) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v625, v621, v633);
    v634 = *(this + 41);
    *(this + 41) = v633;
    v635 = *(this + 43);
    v1358 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v634;
    *&v1560[16] = v635;
    v1559 = v634;
    *v1560 = v634;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v624 = v1358;
  }

  else
  {
    v623 = *v1556;
    *v1556 = 0;
    *v621 = v623;
    *(v621 + 16) = *&v1556[16];
    v624 = v621 + 32;
  }

  *(this + 42) = v624;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1478);
  (*(*a3 + 16))(&v1559, a3, 54);
  v1476 = v1559;
  v1477 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v636 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v636;
  *&v1556[16] = xmmword_272756730;
  v637 = (*(*v636 + 16))(v636, 40, 8);
  v638 = vp::vx::data_flow::State<void>::State(&v1559, &v1476);
  *v637 = &unk_2881BC760;
  *(v637 + 8) = v1559;
  *(v637 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v637 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v638);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v637);
  v639 = *(this + 42);
  v640 = *(this + 43);
  if (v639 >= v640)
  {
    v643 = *(this + 41);
    v644 = (v639 - v643) >> 5;
    v645 = v644 + 1;
    if ((v644 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v646 = v640 - v643;
    if (v646 >> 4 > v645)
    {
      v645 = v646 >> 4;
    }

    if (v646 >= 0x7FFFFFFFFFFFFFE0)
    {
      v647 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v647 = v645;
    }

    v1561 = this + 352;
    if (v647)
    {
      v648 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v647);
      v643 = *(this + 41);
      v639 = *(this + 42);
    }

    else
    {
      v648 = 0;
    }

    v649 = (v648 + 32 * v644);
    v1559 = v648;
    *v1560 = v649;
    *&v1560[16] = v648 + 32 * v647;
    v650 = *v1556;
    *v1556 = 0;
    *v649 = v650;
    v649[1] = *&v1556[16];
    *&v1560[8] = v649 + 2;
    v651 = &v649[-2 * ((v639 - v643) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v643, v639, v651);
    v652 = *(this + 41);
    *(this + 41) = v651;
    v653 = *(this + 43);
    v1359 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v652;
    *&v1560[16] = v653;
    v1559 = v652;
    *v1560 = v652;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v642 = v1359;
  }

  else
  {
    v641 = *v1556;
    *v1556 = 0;
    *v639 = v641;
    *(v639 + 16) = *&v1556[16];
    v642 = v639 + 32;
  }

  *(this + 42) = v642;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1476);
  (*(*a3 + 16))(&v1559, a3, 55);
  v1474 = v1559;
  v1475 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v654 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v654;
  *&v1556[16] = xmmword_272756730;
  v655 = (*(*v654 + 16))(v654, 40, 8);
  v656 = vp::vx::data_flow::State<void>::State(&v1559, &v1474);
  *v655 = &unk_2881BC7D8;
  *(v655 + 8) = v1559;
  *(v655 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v655 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v656);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v655);
  v657 = *(this + 42);
  v658 = *(this + 43);
  if (v657 >= v658)
  {
    v661 = *(this + 41);
    v662 = (v657 - v661) >> 5;
    v663 = v662 + 1;
    if ((v662 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v664 = v658 - v661;
    if (v664 >> 4 > v663)
    {
      v663 = v664 >> 4;
    }

    if (v664 >= 0x7FFFFFFFFFFFFFE0)
    {
      v665 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v665 = v663;
    }

    v1561 = this + 352;
    if (v665)
    {
      v666 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v665);
      v661 = *(this + 41);
      v657 = *(this + 42);
    }

    else
    {
      v666 = 0;
    }

    v667 = (v666 + 32 * v662);
    v1559 = v666;
    *v1560 = v667;
    *&v1560[16] = v666 + 32 * v665;
    v668 = *v1556;
    *v1556 = 0;
    *v667 = v668;
    v667[1] = *&v1556[16];
    *&v1560[8] = v667 + 2;
    v669 = &v667[-2 * ((v657 - v661) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v661, v657, v669);
    v670 = *(this + 41);
    *(this + 41) = v669;
    v671 = *(this + 43);
    v1360 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v670;
    *&v1560[16] = v671;
    v1559 = v670;
    *v1560 = v670;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v660 = v1360;
  }

  else
  {
    v659 = *v1556;
    *v1556 = 0;
    *v657 = v659;
    *(v657 + 16) = *&v1556[16];
    v660 = v657 + 32;
  }

  *(this + 42) = v660;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1474);
  (*(*a3 + 16))(&v1559, a3, 56);
  v1472 = v1559;
  v1473 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v672 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v672;
  *&v1556[16] = xmmword_272756730;
  v673 = (*(*v672 + 16))(v672, 40, 8);
  v674 = vp::vx::data_flow::State<void>::State(&v1559, &v1472);
  *v673 = &unk_2881BC850;
  *(v673 + 8) = v1559;
  *(v673 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v673 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v674);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v673);
  v675 = *(this + 42);
  v676 = *(this + 43);
  if (v675 >= v676)
  {
    v679 = *(this + 41);
    v680 = (v675 - v679) >> 5;
    v681 = v680 + 1;
    if ((v680 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v682 = v676 - v679;
    if (v682 >> 4 > v681)
    {
      v681 = v682 >> 4;
    }

    if (v682 >= 0x7FFFFFFFFFFFFFE0)
    {
      v683 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v683 = v681;
    }

    v1561 = this + 352;
    if (v683)
    {
      v684 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v683);
      v679 = *(this + 41);
      v675 = *(this + 42);
    }

    else
    {
      v684 = 0;
    }

    v685 = (v684 + 32 * v680);
    v1559 = v684;
    *v1560 = v685;
    *&v1560[16] = v684 + 32 * v683;
    v686 = *v1556;
    *v1556 = 0;
    *v685 = v686;
    v685[1] = *&v1556[16];
    *&v1560[8] = v685 + 2;
    v687 = &v685[-2 * ((v675 - v679) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v679, v675, v687);
    v688 = *(this + 41);
    *(this + 41) = v687;
    v689 = *(this + 43);
    v1361 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v688;
    *&v1560[16] = v689;
    v1559 = v688;
    *v1560 = v688;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v678 = v1361;
  }

  else
  {
    v677 = *v1556;
    *v1556 = 0;
    *v675 = v677;
    *(v675 + 16) = *&v1556[16];
    v678 = v675 + 32;
  }

  *(this + 42) = v678;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1472);
  (*(*a3 + 16))(&v1559, a3, 52);
  v1470 = v1559;
  v1471 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v690 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v690;
  *&v1556[16] = xmmword_272756730;
  v691 = (*(*v690 + 16))(v690, 40, 8);
  v692 = vp::vx::data_flow::State<void>::State(&v1559, &v1470);
  *v691 = &unk_2881BC910;
  *(v691 + 8) = v1559;
  *(v691 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v691 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v692);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v691);
  v693 = *(this + 42);
  v694 = *(this + 43);
  if (v693 >= v694)
  {
    v697 = *(this + 41);
    v698 = (v693 - v697) >> 5;
    v699 = v698 + 1;
    if ((v698 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v700 = v694 - v697;
    if (v700 >> 4 > v699)
    {
      v699 = v700 >> 4;
    }

    if (v700 >= 0x7FFFFFFFFFFFFFE0)
    {
      v701 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v701 = v699;
    }

    v1561 = this + 352;
    if (v701)
    {
      v702 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v701);
      v697 = *(this + 41);
      v693 = *(this + 42);
    }

    else
    {
      v702 = 0;
    }

    v703 = (v702 + 32 * v698);
    v1559 = v702;
    *v1560 = v703;
    *&v1560[16] = v702 + 32 * v701;
    v704 = *v1556;
    *v1556 = 0;
    *v703 = v704;
    v703[1] = *&v1556[16];
    *&v1560[8] = v703 + 2;
    v705 = &v703[-2 * ((v693 - v697) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v697, v693, v705);
    v706 = *(this + 41);
    *(this + 41) = v705;
    v707 = *(this + 43);
    v1362 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v706;
    *&v1560[16] = v707;
    v1559 = v706;
    *v1560 = v706;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v696 = v1362;
  }

  else
  {
    v695 = *v1556;
    *v1556 = 0;
    *v693 = v695;
    *(v693 + 16) = *&v1556[16];
    v696 = v693 + 32;
  }

  *(this + 42) = v696;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1470);
  (*(*a3 + 16))(&v1559, a3, 63);
  v1468 = v1559;
  v1469 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v708 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v708;
  *&v1556[16] = xmmword_272756730;
  v709 = (*(*v708 + 16))(v708, 40, 8);
  v710 = vp::vx::data_flow::State<void>::State(&v1559, &v1468);
  *v709 = &unk_2881BC988;
  *(v709 + 8) = v1559;
  *(v709 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v709 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v710);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v709);
  v711 = *(this + 42);
  v712 = *(this + 43);
  if (v711 >= v712)
  {
    v715 = *(this + 41);
    v716 = (v711 - v715) >> 5;
    v717 = v716 + 1;
    if ((v716 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v718 = v712 - v715;
    if (v718 >> 4 > v717)
    {
      v717 = v718 >> 4;
    }

    if (v718 >= 0x7FFFFFFFFFFFFFE0)
    {
      v719 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v719 = v717;
    }

    v1561 = this + 352;
    if (v719)
    {
      v720 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v719);
      v715 = *(this + 41);
      v711 = *(this + 42);
    }

    else
    {
      v720 = 0;
    }

    v721 = (v720 + 32 * v716);
    v1559 = v720;
    *v1560 = v721;
    *&v1560[16] = v720 + 32 * v719;
    v722 = *v1556;
    *v1556 = 0;
    *v721 = v722;
    v721[1] = *&v1556[16];
    *&v1560[8] = v721 + 2;
    v723 = &v721[-2 * ((v711 - v715) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v715, v711, v723);
    v724 = *(this + 41);
    *(this + 41) = v723;
    v725 = *(this + 43);
    v1363 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v724;
    *&v1560[16] = v725;
    v1559 = v724;
    *v1560 = v724;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v714 = v1363;
  }

  else
  {
    v713 = *v1556;
    *v1556 = 0;
    *v711 = v713;
    *(v711 + 16) = *&v1556[16];
    v714 = v711 + 32;
  }

  *(this + 42) = v714;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1468);
  (*(*a3 + 16))(&v1559, a3, 64);
  v1466 = v1559;
  v1467 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v726 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v726;
  *&v1556[16] = xmmword_272756730;
  v727 = (*(*v726 + 16))(v726, 40, 8);
  v728 = vp::vx::data_flow::State<void>::State(&v1559, &v1466);
  *v727 = &unk_2881BCA48;
  *(v727 + 8) = v1559;
  *(v727 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v727 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v728);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v727);
  v729 = *(this + 42);
  v730 = *(this + 43);
  if (v729 >= v730)
  {
    v733 = *(this + 41);
    v734 = (v729 - v733) >> 5;
    v735 = v734 + 1;
    if ((v734 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v736 = v730 - v733;
    if (v736 >> 4 > v735)
    {
      v735 = v736 >> 4;
    }

    if (v736 >= 0x7FFFFFFFFFFFFFE0)
    {
      v737 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v737 = v735;
    }

    v1561 = this + 352;
    if (v737)
    {
      v738 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v737);
      v733 = *(this + 41);
      v729 = *(this + 42);
    }

    else
    {
      v738 = 0;
    }

    v739 = (v738 + 32 * v734);
    v1559 = v738;
    *v1560 = v739;
    *&v1560[16] = v738 + 32 * v737;
    v740 = *v1556;
    *v1556 = 0;
    *v739 = v740;
    v739[1] = *&v1556[16];
    *&v1560[8] = v739 + 2;
    v741 = &v739[-2 * ((v729 - v733) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v733, v729, v741);
    v742 = *(this + 41);
    *(this + 41) = v741;
    v743 = *(this + 43);
    v1364 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v742;
    *&v1560[16] = v743;
    v1559 = v742;
    *v1560 = v742;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v732 = v1364;
  }

  else
  {
    v731 = *v1556;
    *v1556 = 0;
    *v729 = v731;
    *(v729 + 16) = *&v1556[16];
    v732 = v729 + 32;
  }

  *(this + 42) = v732;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1466);
  if (*(this + 4) == 3)
  {
    (*(*a3 + 16))(&v1559, a3, 7);
    v1464 = v1559;
    v1465 = *v1560;
    *v1560 = 0;
    *&v1560[8] = 0;
    vp::vx::data_flow::State<void>::~State(&v1559);
    v744 = *(this + 1);
    *v1556 = 0;
    *&v1556[8] = v744;
    *&v1556[16] = xmmword_272756730;
    v745 = (*(*v744 + 16))(v744, 40, 8);
    v746 = vp::vx::data_flow::State<void>::State(&v1559, &v1464);
    *v745 = &unk_2881BCAC0;
    *(v745 + 8) = v1559;
    *(v745 + 16) = *v1560;
    *v1560 = 0;
    *&v1560[8] = 0;
    *(v745 + 32) = 0;
    vp::vx::data_flow::State<void>::~State(v746);
    std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v745);
    v747 = *(this + 42);
    v748 = *(this + 43);
    if (v747 >= v748)
    {
      v751 = *(this + 41);
      v752 = (v747 - v751) >> 5;
      v753 = v752 + 1;
      if ((v752 + 1) >> 59)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v754 = v748 - v751;
      if (v754 >> 4 > v753)
      {
        v753 = v754 >> 4;
      }

      if (v754 >= 0x7FFFFFFFFFFFFFE0)
      {
        v755 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v755 = v753;
      }

      v1561 = this + 352;
      if (v755)
      {
        v756 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v755);
        v751 = *(this + 41);
        v747 = *(this + 42);
      }

      else
      {
        v756 = 0;
      }

      v757 = (v756 + 32 * v752);
      v1559 = v756;
      *v1560 = v757;
      *&v1560[16] = v756 + 32 * v755;
      v758 = *v1556;
      *v1556 = 0;
      *v757 = v758;
      v757[1] = *&v1556[16];
      *&v1560[8] = v757 + 2;
      v759 = &v757[-2 * ((v747 - v751) >> 5)];
      std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v751, v747, v759);
      v760 = *(this + 41);
      *(this + 41) = v759;
      v761 = *(this + 43);
      v1365 = *&v1560[8];
      *(this + 21) = *&v1560[8];
      *&v1560[8] = v760;
      *&v1560[16] = v761;
      v1559 = v760;
      *v1560 = v760;
      std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
      v750 = v1365;
    }

    else
    {
      v749 = *v1556;
      *v1556 = 0;
      *v747 = v749;
      *(v747 + 16) = *&v1556[16];
      v750 = v747 + 32;
    }

    *(this + 42) = v750;
    std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
    vp::vx::data_flow::State<void>::~State(&v1464);
  }

  (*(*a3 + 16))(&v1559, a3, 58);
  v1544 = v1559;
  v1545 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1559 = &unk_2881BB0D8;
  v1560[0] = 0;
  *&v1560[16] = &v1559;
  v1528 = v1544;
  vp::vx::data_flow::State_Manager::create_state(v1556, a2 + 3, &v1559);
  v1554 = *v1556;
  v1555 = *&v1556[8];
  *&v1556[8] = 0;
  *&v1556[16] = 0;
  vp::vx::data_flow::State<void>::~State(v1556);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v1559);
  v1546 = v1554;
  v1547 = v1555;
  v1555 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v1554);
  v1462 = v1546;
  v1463 = v1547;
  v1547 = 0uLL;
  v762 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v762;
  *&v1556[16] = xmmword_272756730;
  v763 = (*(*v762 + 16))(v762, 40, 8);
  v764 = vp::vx::data_flow::State<void>::State(&v1559, &v1462);
  *v763 = &unk_2881BCB38;
  *(v763 + 8) = v1559;
  *(v763 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v763 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v764);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v763);
  v765 = *(this + 42);
  v766 = *(this + 43);
  if (v765 >= v766)
  {
    v769 = *(this + 41);
    v770 = (v765 - v769) >> 5;
    v771 = v770 + 1;
    if ((v770 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v772 = v766 - v769;
    if (v772 >> 4 > v771)
    {
      v771 = v772 >> 4;
    }

    if (v772 >= 0x7FFFFFFFFFFFFFE0)
    {
      v773 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v773 = v771;
    }

    v1561 = this + 352;
    if (v773)
    {
      v774 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v773);
      v769 = *(this + 41);
      v765 = *(this + 42);
    }

    else
    {
      v774 = 0;
    }

    v775 = (v774 + 32 * v770);
    v1559 = v774;
    *v1560 = v775;
    *&v1560[16] = v774 + 32 * v773;
    v776 = *v1556;
    *v1556 = 0;
    *v775 = v776;
    v775[1] = *&v1556[16];
    *&v1560[8] = v775 + 2;
    v777 = &v775[-2 * ((v765 - v769) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v769, v765, v777);
    v778 = *(this + 41);
    *(this + 41) = v777;
    v779 = *(this + 43);
    v1366 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v778;
    *&v1560[16] = v779;
    v1559 = v778;
    *v1560 = v778;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v768 = v1366;
  }

  else
  {
    v767 = *v1556;
    *v1556 = 0;
    *v765 = v767;
    *(v765 + 16) = *&v1556[16];
    v768 = v765 + 32;
  }

  *(this + 42) = v768;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1462);
  vp::vx::data_flow::State<void>::~State(&v1546);
  vp::vx::data_flow::State<void>::~State(&v1544);
  (*(*a3 + 16))(&v1559, a3, 69);
  v1460 = v1559;
  v1461 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v780 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v780;
  *&v1556[16] = xmmword_272756730;
  v781 = (*(*v780 + 16))(v780, 40, 8);
  v782 = vp::vx::data_flow::State<void>::State(&v1559, &v1460);
  *v781 = &unk_2881BCBB0;
  *(v781 + 8) = v1559;
  *(v781 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v781 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v782);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v781);
  v783 = *(this + 42);
  v784 = *(this + 43);
  if (v783 >= v784)
  {
    v787 = *(this + 41);
    v788 = (v783 - v787) >> 5;
    v789 = v788 + 1;
    if ((v788 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v790 = v784 - v787;
    if (v790 >> 4 > v789)
    {
      v789 = v790 >> 4;
    }

    if (v790 >= 0x7FFFFFFFFFFFFFE0)
    {
      v791 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v791 = v789;
    }

    v1561 = this + 352;
    if (v791)
    {
      v792 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v791);
      v787 = *(this + 41);
      v783 = *(this + 42);
    }

    else
    {
      v792 = 0;
    }

    v793 = (v792 + 32 * v788);
    v1559 = v792;
    *v1560 = v793;
    *&v1560[16] = v792 + 32 * v791;
    v794 = *v1556;
    *v1556 = 0;
    *v793 = v794;
    v793[1] = *&v1556[16];
    *&v1560[8] = v793 + 2;
    v795 = &v793[-2 * ((v783 - v787) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v787, v783, v795);
    v796 = *(this + 41);
    *(this + 41) = v795;
    v797 = *(this + 43);
    v1367 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v796;
    *&v1560[16] = v797;
    v1559 = v796;
    *v1560 = v796;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v786 = v1367;
  }

  else
  {
    v785 = *v1556;
    *v1556 = 0;
    *v783 = v785;
    *(v783 + 16) = *&v1556[16];
    v786 = v783 + 32;
  }

  *(this + 42) = v786;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1460);
  (*(*a3 + 16))(&v1559, a3, 70);
  v1458 = v1559;
  v1459 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v798 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v798;
  *&v1556[16] = xmmword_272756730;
  v799 = (*(*v798 + 16))(v798, 40, 8);
  v800 = vp::vx::data_flow::State<void>::State(&v1559, &v1458);
  *v799 = &unk_2881BCC28;
  *(v799 + 8) = v1559;
  *(v799 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v799 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v800);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v799);
  v801 = *(this + 42);
  v802 = *(this + 43);
  if (v801 >= v802)
  {
    v805 = *(this + 41);
    v806 = (v801 - v805) >> 5;
    v807 = v806 + 1;
    if ((v806 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v808 = v802 - v805;
    if (v808 >> 4 > v807)
    {
      v807 = v808 >> 4;
    }

    if (v808 >= 0x7FFFFFFFFFFFFFE0)
    {
      v809 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v809 = v807;
    }

    v1561 = this + 352;
    if (v809)
    {
      v810 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v809);
      v805 = *(this + 41);
      v801 = *(this + 42);
    }

    else
    {
      v810 = 0;
    }

    v811 = (v810 + 32 * v806);
    v1559 = v810;
    *v1560 = v811;
    *&v1560[16] = v810 + 32 * v809;
    v812 = *v1556;
    *v1556 = 0;
    *v811 = v812;
    v811[1] = *&v1556[16];
    *&v1560[8] = v811 + 2;
    v813 = &v811[-2 * ((v801 - v805) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v805, v801, v813);
    v814 = *(this + 41);
    *(this + 41) = v813;
    v815 = *(this + 43);
    v1368 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v814;
    *&v1560[16] = v815;
    v1559 = v814;
    *v1560 = v814;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v804 = v1368;
  }

  else
  {
    v803 = *v1556;
    *v1556 = 0;
    *v801 = v803;
    *(v801 + 16) = *&v1556[16];
    v804 = v801 + 32;
  }

  *(this + 42) = v804;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1458);
  (*(*a3 + 16))(&v1559, a3, 0);
  v1456 = v1559;
  v1457 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v816 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v816;
  *&v1556[16] = xmmword_272756730;
  v817 = (*(*v816 + 16))(v816, 40, 8);
  v818 = vp::vx::data_flow::State<void>::State(&v1559, &v1456);
  *v817 = &unk_2881BCCA0;
  *(v817 + 8) = v1559;
  *(v817 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v817 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v818);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v817);
  v819 = *(this + 42);
  v820 = *(this + 43);
  if (v819 >= v820)
  {
    v823 = *(this + 41);
    v824 = (v819 - v823) >> 5;
    v825 = v824 + 1;
    if ((v824 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v826 = v820 - v823;
    if (v826 >> 4 > v825)
    {
      v825 = v826 >> 4;
    }

    if (v826 >= 0x7FFFFFFFFFFFFFE0)
    {
      v827 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v827 = v825;
    }

    v1561 = this + 352;
    if (v827)
    {
      v828 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v827);
      v823 = *(this + 41);
      v819 = *(this + 42);
    }

    else
    {
      v828 = 0;
    }

    v829 = (v828 + 32 * v824);
    v1559 = v828;
    *v1560 = v829;
    *&v1560[16] = v828 + 32 * v827;
    v830 = *v1556;
    *v1556 = 0;
    *v829 = v830;
    v829[1] = *&v1556[16];
    *&v1560[8] = v829 + 2;
    v831 = &v829[-2 * ((v819 - v823) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v823, v819, v831);
    v832 = *(this + 41);
    *(this + 41) = v831;
    v833 = *(this + 43);
    v1369 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v832;
    *&v1560[16] = v833;
    v1559 = v832;
    *v1560 = v832;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v822 = v1369;
  }

  else
  {
    v821 = *v1556;
    *v1556 = 0;
    *v819 = v821;
    *(v819 + 16) = *&v1556[16];
    v822 = v819 + 32;
  }

  *(this + 42) = v822;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1456);
  (*(*a3 + 16))(&v1559, a3, 1);
  v1454 = v1559;
  v1455 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v834 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v834;
  *&v1556[16] = xmmword_272756730;
  v835 = (*(*v834 + 16))(v834, 40, 8);
  v836 = vp::vx::data_flow::State<void>::State(&v1559, &v1454);
  *v835 = &unk_2881BCD18;
  *(v835 + 8) = v1559;
  *(v835 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v835 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v836);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v835);
  v837 = *(this + 42);
  v838 = *(this + 43);
  if (v837 >= v838)
  {
    v841 = *(this + 41);
    v842 = (v837 - v841) >> 5;
    v843 = v842 + 1;
    if ((v842 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v844 = v838 - v841;
    if (v844 >> 4 > v843)
    {
      v843 = v844 >> 4;
    }

    if (v844 >= 0x7FFFFFFFFFFFFFE0)
    {
      v845 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v845 = v843;
    }

    v1561 = this + 352;
    if (v845)
    {
      v846 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v845);
      v841 = *(this + 41);
      v837 = *(this + 42);
    }

    else
    {
      v846 = 0;
    }

    v847 = (v846 + 32 * v842);
    v1559 = v846;
    *v1560 = v847;
    *&v1560[16] = v846 + 32 * v845;
    v848 = *v1556;
    *v1556 = 0;
    *v847 = v848;
    v847[1] = *&v1556[16];
    *&v1560[8] = v847 + 2;
    v849 = &v847[-2 * ((v837 - v841) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v841, v837, v849);
    v850 = *(this + 41);
    *(this + 41) = v849;
    v851 = *(this + 43);
    v1370 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v850;
    *&v1560[16] = v851;
    v1559 = v850;
    *v1560 = v850;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v840 = v1370;
  }

  else
  {
    v839 = *v1556;
    *v1556 = 0;
    *v837 = v839;
    *(v837 + 16) = *&v1556[16];
    v840 = v837 + 32;
  }

  *(this + 42) = v840;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1454);
  (*(*a3 + 16))(&v1559, a3, 57);
  v1544 = v1559;
  v1545 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1559 = &unk_2881BB120;
  v1560[0] = 0;
  *&v1560[16] = &v1559;
  v1528 = v1544;
  vp::vx::data_flow::State_Manager::create_state(v1556, a2 + 3, &v1559);
  v1554 = *v1556;
  v1555 = *&v1556[8];
  *&v1556[8] = 0;
  *&v1556[16] = 0;
  vp::vx::data_flow::State<void>::~State(v1556);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v1559);
  v1546 = v1554;
  v1547 = v1555;
  v1555 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v1554);
  v1452 = v1546;
  v1453 = v1547;
  v1547 = 0uLL;
  v852 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v852;
  *&v1556[16] = xmmword_272756730;
  v853 = (*(*v852 + 16))(v852, 40, 8);
  v854 = vp::vx::data_flow::State<void>::State(&v1559, &v1452);
  *v853 = &unk_2881BCD90;
  *(v853 + 8) = v1559;
  *(v853 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v853 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v854);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v853);
  v855 = *(this + 42);
  v856 = *(this + 43);
  if (v855 >= v856)
  {
    v859 = *(this + 41);
    v860 = (v855 - v859) >> 5;
    v861 = v860 + 1;
    if ((v860 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v862 = v856 - v859;
    if (v862 >> 4 > v861)
    {
      v861 = v862 >> 4;
    }

    if (v862 >= 0x7FFFFFFFFFFFFFE0)
    {
      v863 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v863 = v861;
    }

    v1561 = this + 352;
    if (v863)
    {
      v864 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v863);
      v859 = *(this + 41);
      v855 = *(this + 42);
    }

    else
    {
      v864 = 0;
    }

    v865 = (v864 + 32 * v860);
    v1559 = v864;
    *v1560 = v865;
    *&v1560[16] = v864 + 32 * v863;
    v866 = *v1556;
    *v1556 = 0;
    *v865 = v866;
    v865[1] = *&v1556[16];
    *&v1560[8] = v865 + 2;
    v867 = &v865[-2 * ((v855 - v859) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v859, v855, v867);
    v868 = *(this + 41);
    *(this + 41) = v867;
    v869 = *(this + 43);
    v1371 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v868;
    *&v1560[16] = v869;
    v1559 = v868;
    *v1560 = v868;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v858 = v1371;
  }

  else
  {
    v857 = *v1556;
    *v1556 = 0;
    *v855 = v857;
    *(v855 + 16) = *&v1556[16];
    v858 = v855 + 32;
  }

  *(this + 42) = v858;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1452);
  vp::vx::data_flow::State<void>::~State(&v1546);
  vp::vx::data_flow::State<void>::~State(&v1544);
  (*(*a3 + 16))(&v1559, a3, 65);
  v1450 = v1559;
  v1451 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v870 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v870;
  *&v1556[16] = xmmword_272756730;
  v871 = (*(*v870 + 16))(v870, 40, 8);
  v872 = vp::vx::data_flow::State<void>::State(&v1559, &v1450);
  *v871 = &unk_2881BCE08;
  *(v871 + 8) = v1559;
  *(v871 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v871 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v872);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v871);
  v873 = *(this + 42);
  v874 = *(this + 43);
  if (v873 >= v874)
  {
    v877 = *(this + 41);
    v878 = (v873 - v877) >> 5;
    v879 = v878 + 1;
    if ((v878 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v880 = v874 - v877;
    if (v880 >> 4 > v879)
    {
      v879 = v880 >> 4;
    }

    if (v880 >= 0x7FFFFFFFFFFFFFE0)
    {
      v881 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v881 = v879;
    }

    v1561 = this + 352;
    if (v881)
    {
      v882 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v881);
      v877 = *(this + 41);
      v873 = *(this + 42);
    }

    else
    {
      v882 = 0;
    }

    v883 = (v882 + 32 * v878);
    v1559 = v882;
    *v1560 = v883;
    *&v1560[16] = v882 + 32 * v881;
    v884 = *v1556;
    *v1556 = 0;
    *v883 = v884;
    v883[1] = *&v1556[16];
    *&v1560[8] = v883 + 2;
    v885 = &v883[-2 * ((v873 - v877) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v877, v873, v885);
    v886 = *(this + 41);
    *(this + 41) = v885;
    v887 = *(this + 43);
    v1372 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v886;
    *&v1560[16] = v887;
    v1559 = v886;
    *v1560 = v886;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v876 = v1372;
  }

  else
  {
    v875 = *v1556;
    *v1556 = 0;
    *v873 = v875;
    *(v873 + 16) = *&v1556[16];
    v876 = v873 + 32;
  }

  *(this + 42) = v876;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1450);
  (*(*a3 + 16))(&v1559, a3, 66);
  v1448 = v1559;
  v1449 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v888 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v888;
  *&v1556[16] = xmmword_272756730;
  v889 = (*(*v888 + 16))(v888, 40, 8);
  v890 = vp::vx::data_flow::State<void>::State(&v1559, &v1448);
  *v889 = &unk_2881BCE80;
  *(v889 + 8) = v1559;
  *(v889 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v889 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v890);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v889);
  v891 = *(this + 42);
  v892 = *(this + 43);
  if (v891 >= v892)
  {
    v895 = *(this + 41);
    v896 = (v891 - v895) >> 5;
    v897 = v896 + 1;
    if ((v896 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v898 = v892 - v895;
    if (v898 >> 4 > v897)
    {
      v897 = v898 >> 4;
    }

    if (v898 >= 0x7FFFFFFFFFFFFFE0)
    {
      v899 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v899 = v897;
    }

    v1561 = this + 352;
    if (v899)
    {
      v900 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v899);
      v895 = *(this + 41);
      v891 = *(this + 42);
    }

    else
    {
      v900 = 0;
    }

    v901 = (v900 + 32 * v896);
    v1559 = v900;
    *v1560 = v901;
    *&v1560[16] = v900 + 32 * v899;
    v902 = *v1556;
    *v1556 = 0;
    *v901 = v902;
    v901[1] = *&v1556[16];
    *&v1560[8] = v901 + 2;
    v903 = &v901[-2 * ((v891 - v895) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v895, v891, v903);
    v904 = *(this + 41);
    *(this + 41) = v903;
    v905 = *(this + 43);
    v1373 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v904;
    *&v1560[16] = v905;
    v1559 = v904;
    *v1560 = v904;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v894 = v1373;
  }

  else
  {
    v893 = *v1556;
    *v1556 = 0;
    *v891 = v893;
    *(v891 + 16) = *&v1556[16];
    v894 = v891 + 32;
  }

  *(this + 42) = v894;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1448);
  (*(*a3 + 16))(&v1559, a3, 67);
  v1446 = v1559;
  v1447 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v906 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v906;
  *&v1556[16] = xmmword_272756730;
  v907 = (*(*v906 + 16))(v906, 40, 8);
  v908 = vp::vx::data_flow::State<void>::State(&v1559, &v1446);
  *v907 = &unk_2881BCEF8;
  *(v907 + 8) = v1559;
  *(v907 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v907 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v908);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v907);
  v909 = *(this + 42);
  v910 = *(this + 43);
  if (v909 >= v910)
  {
    v913 = *(this + 41);
    v914 = (v909 - v913) >> 5;
    v915 = v914 + 1;
    if ((v914 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v916 = v910 - v913;
    if (v916 >> 4 > v915)
    {
      v915 = v916 >> 4;
    }

    if (v916 >= 0x7FFFFFFFFFFFFFE0)
    {
      v917 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v917 = v915;
    }

    v1561 = this + 352;
    if (v917)
    {
      v918 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v917);
      v913 = *(this + 41);
      v909 = *(this + 42);
    }

    else
    {
      v918 = 0;
    }

    v919 = (v918 + 32 * v914);
    v1559 = v918;
    *v1560 = v919;
    *&v1560[16] = v918 + 32 * v917;
    v920 = *v1556;
    *v1556 = 0;
    *v919 = v920;
    v919[1] = *&v1556[16];
    *&v1560[8] = v919 + 2;
    v921 = &v919[-2 * ((v909 - v913) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v913, v909, v921);
    v922 = *(this + 41);
    *(this + 41) = v921;
    v923 = *(this + 43);
    v1374 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v922;
    *&v1560[16] = v923;
    v1559 = v922;
    *v1560 = v922;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v912 = v1374;
  }

  else
  {
    v911 = *v1556;
    *v1556 = 0;
    *v909 = v911;
    *(v909 + 16) = *&v1556[16];
    v912 = v909 + 32;
  }

  *(this + 42) = v912;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1446);
  (*(*a3 + 16))(&v1559, a3, 61);
  v1444 = v1559;
  v1445 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v924 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v924;
  *&v1556[16] = xmmword_272756730;
  v925 = (*(*v924 + 16))(v924, 40, 8);
  v926 = vp::vx::data_flow::State<void>::State(&v1559, &v1444);
  *v925 = &unk_2881BCF70;
  *(v925 + 8) = v1559;
  *(v925 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v925 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v926);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v925);
  v927 = *(this + 42);
  v928 = *(this + 43);
  if (v927 >= v928)
  {
    v931 = *(this + 41);
    v932 = (v927 - v931) >> 5;
    v933 = v932 + 1;
    if ((v932 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v934 = v928 - v931;
    if (v934 >> 4 > v933)
    {
      v933 = v934 >> 4;
    }

    if (v934 >= 0x7FFFFFFFFFFFFFE0)
    {
      v935 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v935 = v933;
    }

    v1561 = this + 352;
    if (v935)
    {
      v936 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v935);
      v931 = *(this + 41);
      v927 = *(this + 42);
    }

    else
    {
      v936 = 0;
    }

    v937 = (v936 + 32 * v932);
    v1559 = v936;
    *v1560 = v937;
    *&v1560[16] = v936 + 32 * v935;
    v938 = *v1556;
    *v1556 = 0;
    *v937 = v938;
    v937[1] = *&v1556[16];
    *&v1560[8] = v937 + 2;
    v939 = &v937[-2 * ((v927 - v931) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v931, v927, v939);
    v940 = *(this + 41);
    *(this + 41) = v939;
    v941 = *(this + 43);
    v1375 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v940;
    *&v1560[16] = v941;
    v1559 = v940;
    *v1560 = v940;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v930 = v1375;
  }

  else
  {
    v929 = *v1556;
    *v1556 = 0;
    *v927 = v929;
    *(v927 + 16) = *&v1556[16];
    v930 = v927 + 32;
  }

  *(this + 42) = v930;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1444);
  (*(*a3 + 16))(&v1559, a3, 75);
  v1442 = v1559;
  v1443 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v942 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v942;
  *&v1556[16] = xmmword_272756730;
  v943 = (*(*v942 + 16))(v942, 40, 8);
  v944 = vp::vx::data_flow::State<void>::State(&v1559, &v1442);
  *v943 = &unk_2881BCFE8;
  *(v943 + 8) = v1559;
  *(v943 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v943 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v944);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v943);
  v945 = *(this + 42);
  v946 = *(this + 43);
  if (v945 >= v946)
  {
    v949 = *(this + 41);
    v950 = (v945 - v949) >> 5;
    v951 = v950 + 1;
    if ((v950 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v952 = v946 - v949;
    if (v952 >> 4 > v951)
    {
      v951 = v952 >> 4;
    }

    if (v952 >= 0x7FFFFFFFFFFFFFE0)
    {
      v953 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v953 = v951;
    }

    v1561 = this + 352;
    if (v953)
    {
      v954 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v953);
      v949 = *(this + 41);
      v945 = *(this + 42);
    }

    else
    {
      v954 = 0;
    }

    v955 = (v954 + 32 * v950);
    v1559 = v954;
    *v1560 = v955;
    *&v1560[16] = v954 + 32 * v953;
    v956 = *v1556;
    *v1556 = 0;
    *v955 = v956;
    v955[1] = *&v1556[16];
    *&v1560[8] = v955 + 2;
    v957 = &v955[-2 * ((v945 - v949) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v949, v945, v957);
    v958 = *(this + 41);
    *(this + 41) = v957;
    v959 = *(this + 43);
    v1376 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v958;
    *&v1560[16] = v959;
    v1559 = v958;
    *v1560 = v958;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v948 = v1376;
  }

  else
  {
    v947 = *v1556;
    *v1556 = 0;
    *v945 = v947;
    *(v945 + 16) = *&v1556[16];
    v948 = v945 + 32;
  }

  *(this + 42) = v948;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1442);
  (*(*a3 + 16))(&v1559, a3, 76);
  v1440 = v1559;
  v1441 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v960 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v960;
  *&v1556[16] = xmmword_272756730;
  v961 = (*(*v960 + 16))(v960, 40, 8);
  v962 = vp::vx::data_flow::State<void>::State(&v1559, &v1440);
  *v961 = &unk_2881BD0A8;
  *(v961 + 8) = v1559;
  *(v961 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v961 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v962);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v961);
  v963 = *(this + 42);
  v964 = *(this + 43);
  if (v963 >= v964)
  {
    v967 = *(this + 41);
    v968 = (v963 - v967) >> 5;
    v969 = v968 + 1;
    if ((v968 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v970 = v964 - v967;
    if (v970 >> 4 > v969)
    {
      v969 = v970 >> 4;
    }

    if (v970 >= 0x7FFFFFFFFFFFFFE0)
    {
      v971 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v971 = v969;
    }

    v1561 = this + 352;
    if (v971)
    {
      v972 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v971);
      v967 = *(this + 41);
      v963 = *(this + 42);
    }

    else
    {
      v972 = 0;
    }

    v973 = (v972 + 32 * v968);
    v1559 = v972;
    *v1560 = v973;
    *&v1560[16] = v972 + 32 * v971;
    v974 = *v1556;
    *v1556 = 0;
    *v973 = v974;
    v973[1] = *&v1556[16];
    *&v1560[8] = v973 + 2;
    v975 = &v973[-2 * ((v963 - v967) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v967, v963, v975);
    v976 = *(this + 41);
    *(this + 41) = v975;
    v977 = *(this + 43);
    v1377 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v976;
    *&v1560[16] = v977;
    v1559 = v976;
    *v1560 = v976;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v966 = v1377;
  }

  else
  {
    v965 = *v1556;
    *v1556 = 0;
    *v963 = v965;
    *(v963 + 16) = *&v1556[16];
    v966 = v963 + 32;
  }

  *(this + 42) = v966;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1440);
  (*(*a3 + 16))(&v1559, a3, 73);
  v1438 = v1559;
  v1439 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v978 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v978;
  *&v1556[16] = xmmword_272756730;
  v979 = (*(*v978 + 16))(v978, 40, 8);
  v980 = vp::vx::data_flow::State<void>::State(&v1559, &v1438);
  *v979 = &unk_2881BD120;
  *(v979 + 8) = v1559;
  *(v979 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v979 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v980);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v979);
  v981 = *(this + 42);
  v982 = *(this + 43);
  if (v981 >= v982)
  {
    v985 = *(this + 41);
    v986 = (v981 - v985) >> 5;
    v987 = v986 + 1;
    if ((v986 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v988 = v982 - v985;
    if (v988 >> 4 > v987)
    {
      v987 = v988 >> 4;
    }

    if (v988 >= 0x7FFFFFFFFFFFFFE0)
    {
      v989 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v989 = v987;
    }

    v1561 = this + 352;
    if (v989)
    {
      v990 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v989);
      v985 = *(this + 41);
      v981 = *(this + 42);
    }

    else
    {
      v990 = 0;
    }

    v991 = (v990 + 32 * v986);
    v1559 = v990;
    *v1560 = v991;
    *&v1560[16] = v990 + 32 * v989;
    v992 = *v1556;
    *v1556 = 0;
    *v991 = v992;
    v991[1] = *&v1556[16];
    *&v1560[8] = v991 + 2;
    v993 = &v991[-2 * ((v981 - v985) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v985, v981, v993);
    v994 = *(this + 41);
    *(this + 41) = v993;
    v995 = *(this + 43);
    v1378 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v994;
    *&v1560[16] = v995;
    v1559 = v994;
    *v1560 = v994;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v984 = v1378;
  }

  else
  {
    v983 = *v1556;
    *v1556 = 0;
    *v981 = v983;
    *(v981 + 16) = *&v1556[16];
    v984 = v981 + 32;
  }

  *(this + 42) = v984;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1438);
  (*(*a3 + 16))(&v1559, a3, 62);
  v1436 = v1559;
  v1437 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v996 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v996;
  *&v1556[16] = xmmword_272756730;
  v997 = (*(*v996 + 16))(v996, 40, 8);
  v998 = vp::vx::data_flow::State<void>::State(&v1559, &v1436);
  *v997 = &unk_2881BD198;
  *(v997 + 8) = v1559;
  *(v997 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v997 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v998);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v997);
  v999 = *(this + 42);
  v1000 = *(this + 43);
  if (v999 >= v1000)
  {
    v1003 = *(this + 41);
    v1004 = (v999 - v1003) >> 5;
    v1005 = v1004 + 1;
    if ((v1004 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1006 = v1000 - v1003;
    if (v1006 >> 4 > v1005)
    {
      v1005 = v1006 >> 4;
    }

    if (v1006 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1007 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1007 = v1005;
    }

    v1561 = this + 352;
    if (v1007)
    {
      v1008 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1007);
      v1003 = *(this + 41);
      v999 = *(this + 42);
    }

    else
    {
      v1008 = 0;
    }

    v1009 = (v1008 + 32 * v1004);
    v1559 = v1008;
    *v1560 = v1009;
    *&v1560[16] = v1008 + 32 * v1007;
    v1010 = *v1556;
    *v1556 = 0;
    *v1009 = v1010;
    v1009[1] = *&v1556[16];
    *&v1560[8] = v1009 + 2;
    v1011 = &v1009[-2 * ((v999 - v1003) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1003, v999, v1011);
    v1012 = *(this + 41);
    *(this + 41) = v1011;
    v1013 = *(this + 43);
    v1379 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1012;
    *&v1560[16] = v1013;
    v1559 = v1012;
    *v1560 = v1012;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1002 = v1379;
  }

  else
  {
    v1001 = *v1556;
    *v1556 = 0;
    *v999 = v1001;
    *(v999 + 16) = *&v1556[16];
    v1002 = v999 + 32;
  }

  *(this + 42) = v1002;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1436);
  (*(*a3 + 16))(&v1559, a3, 3);
  v1434 = v1559;
  v1435 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1014 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v1014;
  *&v1556[16] = xmmword_272756730;
  v1015 = (*(*v1014 + 16))(v1014, 40, 8);
  v1016 = vp::vx::data_flow::State<void>::State(&v1559, &v1434);
  *v1015 = &unk_2881BD210;
  *(v1015 + 8) = v1559;
  *(v1015 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v1015 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v1016);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v1015);
  v1017 = *(this + 42);
  v1018 = *(this + 43);
  if (v1017 >= v1018)
  {
    v1021 = *(this + 41);
    v1022 = (v1017 - v1021) >> 5;
    v1023 = v1022 + 1;
    if ((v1022 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1024 = v1018 - v1021;
    if (v1024 >> 4 > v1023)
    {
      v1023 = v1024 >> 4;
    }

    if (v1024 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1025 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1025 = v1023;
    }

    v1561 = this + 352;
    if (v1025)
    {
      v1026 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1025);
      v1021 = *(this + 41);
      v1017 = *(this + 42);
    }

    else
    {
      v1026 = 0;
    }

    v1027 = (v1026 + 32 * v1022);
    v1559 = v1026;
    *v1560 = v1027;
    *&v1560[16] = v1026 + 32 * v1025;
    v1028 = *v1556;
    *v1556 = 0;
    *v1027 = v1028;
    v1027[1] = *&v1556[16];
    *&v1560[8] = v1027 + 2;
    v1029 = &v1027[-2 * ((v1017 - v1021) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1021, v1017, v1029);
    v1030 = *(this + 41);
    *(this + 41) = v1029;
    v1031 = *(this + 43);
    v1380 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1030;
    *&v1560[16] = v1031;
    v1559 = v1030;
    *v1560 = v1030;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1020 = v1380;
  }

  else
  {
    v1019 = *v1556;
    *v1556 = 0;
    *v1017 = v1019;
    *(v1017 + 16) = *&v1556[16];
    v1020 = v1017 + 32;
  }

  *(this + 42) = v1020;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1434);
  (*(*a3 + 16))(&v1559, a3, 4);
  v1432 = v1559;
  v1433 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1032 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v1032;
  *&v1556[16] = xmmword_272756730;
  v1033 = (*(*v1032 + 16))(v1032, 40, 8);
  v1034 = vp::vx::data_flow::State<void>::State(&v1559, &v1432);
  *v1033 = &unk_2881BD288;
  *(v1033 + 8) = v1559;
  *(v1033 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v1033 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v1034);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v1033);
  v1035 = *(this + 42);
  v1036 = *(this + 43);
  if (v1035 >= v1036)
  {
    v1039 = *(this + 41);
    v1040 = (v1035 - v1039) >> 5;
    v1041 = v1040 + 1;
    if ((v1040 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1042 = v1036 - v1039;
    if (v1042 >> 4 > v1041)
    {
      v1041 = v1042 >> 4;
    }

    if (v1042 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1043 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1043 = v1041;
    }

    v1561 = this + 352;
    if (v1043)
    {
      v1044 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1043);
      v1039 = *(this + 41);
      v1035 = *(this + 42);
    }

    else
    {
      v1044 = 0;
    }

    v1045 = (v1044 + 32 * v1040);
    v1559 = v1044;
    *v1560 = v1045;
    *&v1560[16] = v1044 + 32 * v1043;
    v1046 = *v1556;
    *v1556 = 0;
    *v1045 = v1046;
    v1045[1] = *&v1556[16];
    *&v1560[8] = v1045 + 2;
    v1047 = &v1045[-2 * ((v1035 - v1039) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1039, v1035, v1047);
    v1048 = *(this + 41);
    *(this + 41) = v1047;
    v1049 = *(this + 43);
    v1381 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1048;
    *&v1560[16] = v1049;
    v1559 = v1048;
    *v1560 = v1048;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1038 = v1381;
  }

  else
  {
    v1037 = *v1556;
    *v1556 = 0;
    *v1035 = v1037;
    *(v1035 + 16) = *&v1556[16];
    v1038 = v1035 + 32;
  }

  *(this + 42) = v1038;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1432);
  (*(*a3 + 16))(&v1559, a3, 71);
  v1430 = v1559;
  v1431 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1050 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v1050;
  *&v1556[16] = xmmword_272756730;
  v1051 = (*(*v1050 + 16))(v1050, 40, 8);
  v1052 = vp::vx::data_flow::State<void>::State(&v1559, &v1430);
  *v1051 = &unk_2881BD300;
  *(v1051 + 8) = v1559;
  *(v1051 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v1051 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v1052);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v1051);
  v1053 = *(this + 42);
  v1054 = *(this + 43);
  if (v1053 >= v1054)
  {
    v1057 = *(this + 41);
    v1058 = (v1053 - v1057) >> 5;
    v1059 = v1058 + 1;
    if ((v1058 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1060 = v1054 - v1057;
    if (v1060 >> 4 > v1059)
    {
      v1059 = v1060 >> 4;
    }

    if (v1060 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1061 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1061 = v1059;
    }

    v1561 = this + 352;
    if (v1061)
    {
      v1062 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1061);
      v1057 = *(this + 41);
      v1053 = *(this + 42);
    }

    else
    {
      v1062 = 0;
    }

    v1063 = (v1062 + 32 * v1058);
    v1559 = v1062;
    *v1560 = v1063;
    *&v1560[16] = v1062 + 32 * v1061;
    v1064 = *v1556;
    *v1556 = 0;
    *v1063 = v1064;
    v1063[1] = *&v1556[16];
    *&v1560[8] = v1063 + 2;
    v1065 = &v1063[-2 * ((v1053 - v1057) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1057, v1053, v1065);
    v1066 = *(this + 41);
    *(this + 41) = v1065;
    v1067 = *(this + 43);
    v1382 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1066;
    *&v1560[16] = v1067;
    v1559 = v1066;
    *v1560 = v1066;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1056 = v1382;
  }

  else
  {
    v1055 = *v1556;
    *v1556 = 0;
    *v1053 = v1055;
    *(v1053 + 16) = *&v1556[16];
    v1056 = v1053 + 32;
  }

  *(this + 42) = v1056;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1430);
  (*(*a3 + 16))(&v1559, a3, 68);
  v1428 = v1559;
  v1429 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1068 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v1068;
  *&v1556[16] = xmmword_272756730;
  v1069 = (*(*v1068 + 16))(v1068, 40, 8);
  v1070 = vp::vx::data_flow::State<void>::State(&v1559, &v1428);
  *v1069 = &unk_2881BD378;
  *(v1069 + 8) = v1559;
  *(v1069 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v1069 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v1070);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v1069);
  v1071 = *(this + 42);
  v1072 = *(this + 43);
  if (v1071 >= v1072)
  {
    v1075 = *(this + 41);
    v1076 = (v1071 - v1075) >> 5;
    v1077 = v1076 + 1;
    if ((v1076 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1078 = v1072 - v1075;
    if (v1078 >> 4 > v1077)
    {
      v1077 = v1078 >> 4;
    }

    if (v1078 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1079 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1079 = v1077;
    }

    v1561 = this + 352;
    if (v1079)
    {
      v1080 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1079);
      v1075 = *(this + 41);
      v1071 = *(this + 42);
    }

    else
    {
      v1080 = 0;
    }

    v1081 = (v1080 + 32 * v1076);
    v1559 = v1080;
    *v1560 = v1081;
    *&v1560[16] = v1080 + 32 * v1079;
    v1082 = *v1556;
    *v1556 = 0;
    *v1081 = v1082;
    v1081[1] = *&v1556[16];
    *&v1560[8] = v1081 + 2;
    v1083 = &v1081[-2 * ((v1071 - v1075) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1075, v1071, v1083);
    v1084 = *(this + 41);
    *(this + 41) = v1083;
    v1085 = *(this + 43);
    v1383 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1084;
    *&v1560[16] = v1085;
    v1559 = v1084;
    *v1560 = v1084;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1074 = v1383;
  }

  else
  {
    v1073 = *v1556;
    *v1556 = 0;
    *v1071 = v1073;
    *(v1071 + 16) = *&v1556[16];
    v1074 = v1071 + 32;
  }

  *(this + 42) = v1074;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1428);
  (*(*a3 + 16))(&v1559, a3, 80);
  v1426 = v1559;
  v1427 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1086 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v1086;
  *&v1556[16] = xmmword_272756730;
  v1087 = (*(*v1086 + 16))(v1086, 40, 8);
  v1088 = vp::vx::data_flow::State<void>::State(&v1559, &v1426);
  *v1087 = &unk_2881BD438;
  *(v1087 + 8) = v1559;
  *(v1087 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v1087 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v1088);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v1087);
  v1089 = *(this + 42);
  v1090 = *(this + 43);
  if (v1089 >= v1090)
  {
    v1093 = *(this + 41);
    v1094 = (v1089 - v1093) >> 5;
    v1095 = v1094 + 1;
    if ((v1094 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1096 = v1090 - v1093;
    if (v1096 >> 4 > v1095)
    {
      v1095 = v1096 >> 4;
    }

    if (v1096 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1097 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1097 = v1095;
    }

    v1561 = this + 352;
    if (v1097)
    {
      v1098 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1097);
      v1093 = *(this + 41);
      v1089 = *(this + 42);
    }

    else
    {
      v1098 = 0;
    }

    v1099 = (v1098 + 32 * v1094);
    v1559 = v1098;
    *v1560 = v1099;
    *&v1560[16] = v1098 + 32 * v1097;
    v1100 = *v1556;
    *v1556 = 0;
    *v1099 = v1100;
    v1099[1] = *&v1556[16];
    *&v1560[8] = v1099 + 2;
    v1101 = &v1099[-2 * ((v1089 - v1093) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1093, v1089, v1101);
    v1102 = *(this + 41);
    *(this + 41) = v1101;
    v1103 = *(this + 43);
    v1384 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1102;
    *&v1560[16] = v1103;
    v1559 = v1102;
    *v1560 = v1102;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1092 = v1384;
  }

  else
  {
    v1091 = *v1556;
    *v1556 = 0;
    *v1089 = v1091;
    *(v1089 + 16) = *&v1556[16];
    v1092 = v1089 + 32;
  }

  *(this + 42) = v1092;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1426);
  (*(*a3 + 16))(&v1559, a3, 77);
  v1424 = v1559;
  v1425 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1104 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v1104;
  *&v1556[16] = xmmword_272756730;
  v1105 = (*(*v1104 + 16))(v1104, 40, 8);
  v1106 = vp::vx::data_flow::State<void>::State(&v1559, &v1424);
  *v1105 = &unk_2881BD4B0;
  *(v1105 + 8) = v1559;
  *(v1105 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v1105 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v1106);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v1105);
  v1107 = *(this + 42);
  v1108 = *(this + 43);
  if (v1107 >= v1108)
  {
    v1111 = *(this + 41);
    v1112 = (v1107 - v1111) >> 5;
    v1113 = v1112 + 1;
    if ((v1112 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1114 = v1108 - v1111;
    if (v1114 >> 4 > v1113)
    {
      v1113 = v1114 >> 4;
    }

    if (v1114 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1115 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1115 = v1113;
    }

    v1561 = this + 352;
    if (v1115)
    {
      v1116 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1115);
      v1111 = *(this + 41);
      v1107 = *(this + 42);
    }

    else
    {
      v1116 = 0;
    }

    v1117 = (v1116 + 32 * v1112);
    v1559 = v1116;
    *v1560 = v1117;
    *&v1560[16] = v1116 + 32 * v1115;
    v1118 = *v1556;
    *v1556 = 0;
    *v1117 = v1118;
    v1117[1] = *&v1556[16];
    *&v1560[8] = v1117 + 2;
    v1119 = &v1117[-2 * ((v1107 - v1111) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1111, v1107, v1119);
    v1120 = *(this + 41);
    *(this + 41) = v1119;
    v1121 = *(this + 43);
    v1385 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1120;
    *&v1560[16] = v1121;
    v1559 = v1120;
    *v1560 = v1120;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1110 = v1385;
  }

  else
  {
    v1109 = *v1556;
    *v1556 = 0;
    *v1107 = v1109;
    *(v1107 + 16) = *&v1556[16];
    v1110 = v1107 + 32;
  }

  *(this + 42) = v1110;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1424);
  (*(*a3 + 16))(&v1559, a3, 59);
  v1544 = v1559;
  v1545 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1559 = &unk_2881BB168;
  v1560[0] = 0;
  *&v1560[16] = &v1559;
  v1528 = v1544;
  vp::vx::data_flow::State_Manager::create_state(v1556, a2 + 3, &v1559);
  v1554 = *v1556;
  v1555 = *&v1556[8];
  *&v1556[8] = 0;
  *&v1556[16] = 0;
  vp::vx::data_flow::State<void>::~State(v1556);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v1559);
  v1546 = v1554;
  v1547 = v1555;
  v1555 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v1554);
  v1422 = v1546;
  v1423 = v1547;
  v1547 = 0uLL;
  v1122 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v1122;
  *&v1556[16] = xmmword_272756730;
  v1123 = (*(*v1122 + 16))(v1122, 40, 8);
  v1124 = vp::vx::data_flow::State<void>::State(&v1559, &v1422);
  *v1123 = &unk_2881BD528;
  *(v1123 + 8) = v1559;
  *(v1123 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v1123 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v1124);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v1123);
  v1125 = *(this + 42);
  v1126 = *(this + 43);
  if (v1125 >= v1126)
  {
    v1129 = *(this + 41);
    v1130 = (v1125 - v1129) >> 5;
    v1131 = v1130 + 1;
    if ((v1130 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1132 = v1126 - v1129;
    if (v1132 >> 4 > v1131)
    {
      v1131 = v1132 >> 4;
    }

    if (v1132 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1133 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1133 = v1131;
    }

    v1561 = this + 352;
    if (v1133)
    {
      v1134 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1133);
      v1129 = *(this + 41);
      v1125 = *(this + 42);
    }

    else
    {
      v1134 = 0;
    }

    v1135 = (v1134 + 32 * v1130);
    v1559 = v1134;
    *v1560 = v1135;
    *&v1560[16] = v1134 + 32 * v1133;
    v1136 = *v1556;
    *v1556 = 0;
    *v1135 = v1136;
    v1135[1] = *&v1556[16];
    *&v1560[8] = v1135 + 2;
    v1137 = &v1135[-2 * ((v1125 - v1129) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1129, v1125, v1137);
    v1138 = *(this + 41);
    *(this + 41) = v1137;
    v1139 = *(this + 43);
    v1386 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1138;
    *&v1560[16] = v1139;
    v1559 = v1138;
    *v1560 = v1138;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1128 = v1386;
  }

  else
  {
    v1127 = *v1556;
    *v1556 = 0;
    *v1125 = v1127;
    *(v1125 + 16) = *&v1556[16];
    v1128 = v1125 + 32;
  }

  *(this + 42) = v1128;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1422);
  vp::vx::data_flow::State<void>::~State(&v1546);
  vp::vx::data_flow::State<void>::~State(&v1544);
  (*(*a3 + 16))(&v1559, a3, 78);
  v1544 = v1559;
  v1545 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1559 = &unk_2881BB1B0;
  v1560[0] = 0;
  *&v1560[16] = &v1559;
  v1528 = v1544;
  vp::vx::data_flow::State_Manager::create_state(v1556, a2 + 3, &v1559);
  v1554 = *v1556;
  v1555 = *&v1556[8];
  *&v1556[8] = 0;
  *&v1556[16] = 0;
  vp::vx::data_flow::State<void>::~State(v1556);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v1559);
  v1546 = v1554;
  v1547 = v1555;
  v1555 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v1554);
  v1420 = v1546;
  v1421 = v1547;
  v1547 = 0uLL;
  v1140 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v1140;
  *&v1556[16] = xmmword_272756730;
  v1141 = (*(*v1140 + 16))(v1140, 40, 8);
  v1142 = vp::vx::data_flow::State<void>::State(&v1559, &v1420);
  *v1141 = &unk_2881BD5A0;
  *(v1141 + 8) = v1559;
  *(v1141 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v1141 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v1142);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v1141);
  v1143 = *(this + 42);
  v1144 = *(this + 43);
  if (v1143 >= v1144)
  {
    v1147 = *(this + 41);
    v1148 = (v1143 - v1147) >> 5;
    v1149 = v1148 + 1;
    if ((v1148 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1150 = v1144 - v1147;
    if (v1150 >> 4 > v1149)
    {
      v1149 = v1150 >> 4;
    }

    if (v1150 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1151 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1151 = v1149;
    }

    v1561 = this + 352;
    if (v1151)
    {
      v1152 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1151);
      v1147 = *(this + 41);
      v1143 = *(this + 42);
    }

    else
    {
      v1152 = 0;
    }

    v1153 = (v1152 + 32 * v1148);
    v1559 = v1152;
    *v1560 = v1153;
    *&v1560[16] = v1152 + 32 * v1151;
    v1154 = *v1556;
    *v1556 = 0;
    *v1153 = v1154;
    v1153[1] = *&v1556[16];
    *&v1560[8] = v1153 + 2;
    v1155 = &v1153[-2 * ((v1143 - v1147) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1147, v1143, v1155);
    v1156 = *(this + 41);
    *(this + 41) = v1155;
    v1157 = *(this + 43);
    v1387 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1156;
    *&v1560[16] = v1157;
    v1559 = v1156;
    *v1560 = v1156;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1146 = v1387;
  }

  else
  {
    v1145 = *v1556;
    *v1556 = 0;
    *v1143 = v1145;
    *(v1143 + 16) = *&v1556[16];
    v1146 = v1143 + 32;
  }

  *(this + 42) = v1146;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1420);
  vp::vx::data_flow::State<void>::~State(&v1546);
  vp::vx::data_flow::State<void>::~State(&v1544);
  (*(*a3 + 16))(&v1559, a3, 81);
  v1418 = v1559;
  v1419 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1158 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v1158;
  *&v1556[16] = xmmword_272756730;
  v1159 = (*(*v1158 + 16))(v1158, 40, 8);
  v1160 = vp::vx::data_flow::State<void>::State(&v1559, &v1418);
  *v1159 = &unk_2881BD660;
  *(v1159 + 8) = v1559;
  *(v1159 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v1159 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v1160);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v1159);
  v1161 = *(this + 42);
  v1162 = *(this + 43);
  if (v1161 >= v1162)
  {
    v1165 = *(this + 41);
    v1166 = (v1161 - v1165) >> 5;
    v1167 = v1166 + 1;
    if ((v1166 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1168 = v1162 - v1165;
    if (v1168 >> 4 > v1167)
    {
      v1167 = v1168 >> 4;
    }

    if (v1168 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1169 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1169 = v1167;
    }

    v1561 = this + 352;
    if (v1169)
    {
      v1170 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1169);
      v1165 = *(this + 41);
      v1161 = *(this + 42);
    }

    else
    {
      v1170 = 0;
    }

    v1171 = (v1170 + 32 * v1166);
    v1559 = v1170;
    *v1560 = v1171;
    *&v1560[16] = v1170 + 32 * v1169;
    v1172 = *v1556;
    *v1556 = 0;
    *v1171 = v1172;
    v1171[1] = *&v1556[16];
    *&v1560[8] = v1171 + 2;
    v1173 = &v1171[-2 * ((v1161 - v1165) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1165, v1161, v1173);
    v1174 = *(this + 41);
    *(this + 41) = v1173;
    v1175 = *(this + 43);
    v1388 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1174;
    *&v1560[16] = v1175;
    v1559 = v1174;
    *v1560 = v1174;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1164 = v1388;
  }

  else
  {
    v1163 = *v1556;
    *v1556 = 0;
    *v1161 = v1163;
    *(v1161 + 16) = *&v1556[16];
    v1164 = v1161 + 32;
  }

  *(this + 42) = v1164;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1418);
  (*(*a3 + 16))(&v1559, a3, 79);
  v1544 = v1559;
  v1545 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1559 = &unk_2881BB260;
  v1560[0] = 0;
  *&v1560[16] = &v1559;
  v1528 = v1544;
  vp::vx::data_flow::State_Manager::create_state(v1556, a2 + 3, &v1559);
  v1554 = *v1556;
  v1555 = *&v1556[8];
  *&v1556[8] = 0;
  *&v1556[16] = 0;
  vp::vx::data_flow::State<void>::~State(v1556);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v1559);
  v1546 = v1554;
  v1547 = v1555;
  v1555 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v1554);
  v1416 = v1546;
  v1417 = v1547;
  v1547 = 0uLL;
  v1176 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v1176;
  *&v1556[16] = xmmword_272756730;
  v1177 = (*(*v1176 + 16))(v1176, 40, 8);
  v1178 = vp::vx::data_flow::State<void>::State(&v1559, &v1416);
  *v1177 = &unk_2881BD6D8;
  *(v1177 + 8) = v1559;
  *(v1177 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v1177 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v1178);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v1177);
  v1179 = *(this + 42);
  v1180 = *(this + 43);
  if (v1179 >= v1180)
  {
    v1183 = *(this + 41);
    v1184 = (v1179 - v1183) >> 5;
    v1185 = v1184 + 1;
    if ((v1184 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1186 = v1180 - v1183;
    if (v1186 >> 4 > v1185)
    {
      v1185 = v1186 >> 4;
    }

    if (v1186 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1187 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1187 = v1185;
    }

    v1561 = this + 352;
    if (v1187)
    {
      v1188 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1187);
      v1183 = *(this + 41);
      v1179 = *(this + 42);
    }

    else
    {
      v1188 = 0;
    }

    v1189 = (v1188 + 32 * v1184);
    v1559 = v1188;
    *v1560 = v1189;
    *&v1560[16] = v1188 + 32 * v1187;
    v1190 = *v1556;
    *v1556 = 0;
    *v1189 = v1190;
    v1189[1] = *&v1556[16];
    *&v1560[8] = v1189 + 2;
    v1191 = &v1189[-2 * ((v1179 - v1183) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1183, v1179, v1191);
    v1192 = *(this + 41);
    *(this + 41) = v1191;
    v1193 = *(this + 43);
    v1389 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1192;
    *&v1560[16] = v1193;
    v1559 = v1192;
    *v1560 = v1192;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1182 = v1389;
  }

  else
  {
    v1181 = *v1556;
    *v1556 = 0;
    *v1179 = v1181;
    *(v1179 + 16) = *&v1556[16];
    v1182 = v1179 + 32;
  }

  *(this + 42) = v1182;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1416);
  vp::vx::data_flow::State<void>::~State(&v1546);
  vp::vx::data_flow::State<void>::~State(&v1544);
  (*(*a3 + 16))(&v1559, a3, 89);
  v1414 = v1559;
  v1415 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(this, &v1414);
  vp::vx::data_flow::State<void>::~State(&v1414);
  (*(*a3 + 16))(&v1559, a3, 90);
  v1544 = v1559;
  v1545 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1559 = &unk_2881BB2A8;
  v1560[0] = 0;
  *&v1560[16] = &v1559;
  v1528 = v1544;
  vp::vx::data_flow::State_Manager::create_state(v1556, a2 + 3, &v1559);
  v1554 = *v1556;
  v1555 = *&v1556[8];
  *&v1556[8] = 0;
  *&v1556[16] = 0;
  vp::vx::data_flow::State<void>::~State(v1556);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v1559);
  v1546 = v1554;
  v1547 = v1555;
  v1555 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v1554);
  v1412 = v1546;
  v1413 = v1547;
  v1547 = 0uLL;
  v1194 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v1194;
  *&v1556[16] = xmmword_272756730;
  v1195 = (*(*v1194 + 16))(v1194, 40, 8);
  v1196 = vp::vx::data_flow::State<void>::State(&v1559, &v1412);
  *v1195 = &unk_2881BD7C8;
  *(v1195 + 8) = v1559;
  *(v1195 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v1195 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v1196);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v1195);
  v1197 = *(this + 42);
  v1198 = *(this + 43);
  if (v1197 >= v1198)
  {
    v1201 = *(this + 41);
    v1202 = (v1197 - v1201) >> 5;
    v1203 = v1202 + 1;
    if ((v1202 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1204 = v1198 - v1201;
    if (v1204 >> 4 > v1203)
    {
      v1203 = v1204 >> 4;
    }

    if (v1204 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1205 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1205 = v1203;
    }

    v1561 = this + 352;
    if (v1205)
    {
      v1206 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1205);
      v1201 = *(this + 41);
      v1197 = *(this + 42);
    }

    else
    {
      v1206 = 0;
    }

    v1207 = (v1206 + 32 * v1202);
    v1559 = v1206;
    *v1560 = v1207;
    *&v1560[16] = v1206 + 32 * v1205;
    v1208 = *v1556;
    *v1556 = 0;
    *v1207 = v1208;
    v1207[1] = *&v1556[16];
    *&v1560[8] = v1207 + 2;
    v1209 = &v1207[-2 * ((v1197 - v1201) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1201, v1197, v1209);
    v1210 = *(this + 41);
    *(this + 41) = v1209;
    v1211 = *(this + 43);
    v1390 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1210;
    *&v1560[16] = v1211;
    v1559 = v1210;
    *v1560 = v1210;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1200 = v1390;
  }

  else
  {
    v1199 = *v1556;
    *v1556 = 0;
    *v1197 = v1199;
    *(v1197 + 16) = *&v1556[16];
    v1200 = v1197 + 32;
  }

  *(this + 42) = v1200;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1412);
  vp::vx::data_flow::State<void>::~State(&v1546);
  vp::vx::data_flow::State<void>::~State(&v1544);
  (*(*a3 + 16))(&v1559, a3, 89);
  v1410 = v1559;
  v1411 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(this, &v1410);
  vp::vx::data_flow::State<void>::~State(&v1410);
  (*(*a3 + 16))(&v1559, a3, 92);
  v1408 = v1559;
  v1409 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1212 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v1212;
  *&v1556[16] = xmmword_272756730;
  v1213 = (*(*v1212 + 16))(v1212, 40, 8);
  v1214 = vp::vx::data_flow::State<void>::State(&v1559, &v1408);
  *v1213 = &unk_2881BD840;
  *(v1213 + 8) = v1559;
  *(v1213 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v1213 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v1214);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v1213);
  v1215 = *(this + 42);
  v1216 = *(this + 43);
  if (v1215 >= v1216)
  {
    v1219 = *(this + 41);
    v1220 = (v1215 - v1219) >> 5;
    v1221 = v1220 + 1;
    if ((v1220 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1222 = v1216 - v1219;
    if (v1222 >> 4 > v1221)
    {
      v1221 = v1222 >> 4;
    }

    if (v1222 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1223 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1223 = v1221;
    }

    v1561 = this + 352;
    if (v1223)
    {
      v1224 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1223);
      v1219 = *(this + 41);
      v1215 = *(this + 42);
    }

    else
    {
      v1224 = 0;
    }

    v1225 = (v1224 + 32 * v1220);
    v1559 = v1224;
    *v1560 = v1225;
    *&v1560[16] = v1224 + 32 * v1223;
    v1226 = *v1556;
    *v1556 = 0;
    *v1225 = v1226;
    v1225[1] = *&v1556[16];
    *&v1560[8] = v1225 + 2;
    v1227 = &v1225[-2 * ((v1215 - v1219) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1219, v1215, v1227);
    v1228 = *(this + 41);
    *(this + 41) = v1227;
    v1229 = *(this + 43);
    v1391 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1228;
    *&v1560[16] = v1229;
    v1559 = v1228;
    *v1560 = v1228;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1218 = v1391;
  }

  else
  {
    v1217 = *v1556;
    *v1556 = 0;
    *v1215 = v1217;
    *(v1215 + 16) = *&v1556[16];
    v1218 = v1215 + 32;
  }

  *(this + 42) = v1218;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1408);
  (*(*a3 + 16))(&v1559, a3, 93);
  v1406 = v1559;
  v1407 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1230 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v1230;
  *&v1556[16] = xmmword_272756730;
  v1231 = (*(*v1230 + 16))(v1230, 40, 8);
  v1232 = vp::vx::data_flow::State<void>::State(&v1559, &v1406);
  *v1231 = &unk_2881BD8B8;
  *(v1231 + 8) = v1559;
  *(v1231 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v1231 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v1232);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v1231);
  v1233 = *(this + 42);
  v1234 = *(this + 43);
  if (v1233 >= v1234)
  {
    v1237 = *(this + 41);
    v1238 = (v1233 - v1237) >> 5;
    v1239 = v1238 + 1;
    if ((v1238 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1240 = v1234 - v1237;
    if (v1240 >> 4 > v1239)
    {
      v1239 = v1240 >> 4;
    }

    if (v1240 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1241 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1241 = v1239;
    }

    v1561 = this + 352;
    if (v1241)
    {
      v1242 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1241);
      v1237 = *(this + 41);
      v1233 = *(this + 42);
    }

    else
    {
      v1242 = 0;
    }

    v1243 = (v1242 + 32 * v1238);
    v1559 = v1242;
    *v1560 = v1243;
    *&v1560[16] = v1242 + 32 * v1241;
    v1244 = *v1556;
    *v1556 = 0;
    *v1243 = v1244;
    v1243[1] = *&v1556[16];
    *&v1560[8] = v1243 + 2;
    v1245 = &v1243[-2 * ((v1233 - v1237) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1237, v1233, v1245);
    v1246 = *(this + 41);
    *(this + 41) = v1245;
    v1247 = *(this + 43);
    v1392 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1246;
    *&v1560[16] = v1247;
    v1559 = v1246;
    *v1560 = v1246;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1236 = v1392;
  }

  else
  {
    v1235 = *v1556;
    *v1556 = 0;
    *v1233 = v1235;
    *(v1233 + 16) = *&v1556[16];
    v1236 = v1233 + 32;
  }

  *(this + 42) = v1236;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1406);
  (*(*a3 + 16))(&v1559, a3, 95);
  v1404 = v1559;
  v1405 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1248 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v1248;
  *&v1556[16] = xmmword_272756730;
  v1249 = (*(*v1248 + 16))(v1248, 40, 8);
  v1250 = vp::vx::data_flow::State<void>::State(&v1559, &v1404);
  *v1249 = &unk_2881BD930;
  *(v1249 + 8) = v1559;
  *(v1249 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v1249 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v1250);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v1249);
  v1251 = *(this + 42);
  v1252 = *(this + 43);
  if (v1251 >= v1252)
  {
    v1255 = *(this + 41);
    v1256 = (v1251 - v1255) >> 5;
    v1257 = v1256 + 1;
    if ((v1256 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1258 = v1252 - v1255;
    if (v1258 >> 4 > v1257)
    {
      v1257 = v1258 >> 4;
    }

    if (v1258 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1259 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1259 = v1257;
    }

    v1561 = this + 352;
    if (v1259)
    {
      v1260 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1259);
      v1255 = *(this + 41);
      v1251 = *(this + 42);
    }

    else
    {
      v1260 = 0;
    }

    v1261 = (v1260 + 32 * v1256);
    v1559 = v1260;
    *v1560 = v1261;
    *&v1560[16] = v1260 + 32 * v1259;
    v1262 = *v1556;
    *v1556 = 0;
    *v1261 = v1262;
    v1261[1] = *&v1556[16];
    *&v1560[8] = v1261 + 2;
    v1263 = &v1261[-2 * ((v1251 - v1255) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1255, v1251, v1263);
    v1264 = *(this + 41);
    *(this + 41) = v1263;
    v1265 = *(this + 43);
    v1393 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1264;
    *&v1560[16] = v1265;
    v1559 = v1264;
    *v1560 = v1264;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1254 = v1393;
  }

  else
  {
    v1253 = *v1556;
    *v1556 = 0;
    *v1251 = v1253;
    *(v1251 + 16) = *&v1556[16];
    v1254 = v1251 + 32;
  }

  *(this + 42) = v1254;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1404);
  (*(*a3 + 16))(&v1559, a3, 96);
  v1402 = v1559;
  v1403 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1266 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v1266;
  *&v1556[16] = xmmword_272756730;
  v1267 = (*(*v1266 + 16))(v1266, 40, 8);
  v1268 = vp::vx::data_flow::State<void>::State(&v1559, &v1402);
  *v1267 = &unk_2881BD9A8;
  *(v1267 + 8) = v1559;
  *(v1267 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v1267 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v1268);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v1267);
  v1269 = *(this + 42);
  v1270 = *(this + 43);
  if (v1269 >= v1270)
  {
    v1273 = *(this + 41);
    v1274 = (v1269 - v1273) >> 5;
    v1275 = v1274 + 1;
    if ((v1274 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1276 = v1270 - v1273;
    if (v1276 >> 4 > v1275)
    {
      v1275 = v1276 >> 4;
    }

    if (v1276 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1277 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1277 = v1275;
    }

    v1561 = this + 352;
    if (v1277)
    {
      v1278 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1277);
      v1273 = *(this + 41);
      v1269 = *(this + 42);
    }

    else
    {
      v1278 = 0;
    }

    v1279 = (v1278 + 32 * v1274);
    *&v1560[16] = v1278 + 32 * v1277;
    v1280 = *v1556;
    *v1556 = 0;
    *v1279 = v1280;
    v1279[1] = *&v1556[16];
    *&v1560[8] = v1279 + 2;
    v1281 = &v1279[-2 * ((v1269 - v1273) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1273, v1269, v1281);
    v1282 = *(this + 41);
    *(this + 41) = v1281;
    v1283 = *(this + 43);
    v1394 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1282;
    *&v1560[16] = v1283;
    v1559 = v1282;
    *v1560 = v1282;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1272 = v1394;
  }

  else
  {
    v1271 = *v1556;
    *v1556 = 0;
    *v1269 = v1271;
    *(v1269 + 16) = *&v1556[16];
    v1272 = v1269 + 32;
  }

  *(this + 42) = v1272;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1402);
  (*(*a3 + 16))(&v1559, a3, 94);
  v1284 = v1559;
  v1544 = v1559;
  v1545 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1559 = &unk_2881BB2F0;
  v1560[0] = 0;
  *&v1560[16] = &v1559;
  v1528 = v1284;
  vp::vx::data_flow::State_Manager::create_state(v1556, a2 + 3, &v1559);
  v1285 = *v1556;
  v1554 = *v1556;
  v1395 = *&v1556[8];
  *&v1556[8] = 0;
  *&v1556[16] = 0;
  vp::vx::data_flow::State<void>::~State(v1556);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v1559);
  v1546 = v1285;
  v1555 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v1554);
  v1400 = v1285;
  v1401 = v1395;
  v1547 = 0uLL;
  v1286 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v1286;
  *&v1556[16] = xmmword_272756730;
  v1287 = (*(*v1286 + 16))(v1286, 40, 8);
  v1288 = vp::vx::data_flow::State<void>::State(&v1559, &v1400);
  *v1287 = &unk_2881BDA20;
  *(v1287 + 8) = v1559;
  *(v1287 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v1287 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v1288);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v1287);
  v1289 = *(this + 42);
  v1290 = *(this + 43);
  if (v1289 >= v1290)
  {
    v1293 = *(this + 41);
    v1294 = (v1289 - v1293) >> 5;
    v1295 = v1294 + 1;
    if ((v1294 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1296 = v1290 - v1293;
    if (v1296 >> 4 > v1295)
    {
      v1295 = v1296 >> 4;
    }

    if (v1296 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1297 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1297 = v1295;
    }

    v1561 = this + 352;
    if (v1297)
    {
      v1298 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1297);
      v1293 = *(this + 41);
      v1289 = *(this + 42);
    }

    else
    {
      v1298 = 0;
    }

    v1299 = (v1298 + 32 * v1294);
    *&v1560[16] = v1298 + 32 * v1297;
    v1300 = *v1556;
    *v1556 = 0;
    *v1299 = v1300;
    v1299[1] = *&v1556[16];
    *&v1560[8] = v1299 + 2;
    v1301 = &v1299[-2 * ((v1289 - v1293) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1293, v1289, v1301);
    v1302 = *(this + 41);
    *(this + 41) = v1301;
    v1303 = *(this + 43);
    v1396 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1302;
    *&v1560[16] = v1303;
    v1559 = v1302;
    *v1560 = v1302;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1292 = v1396;
  }

  else
  {
    v1291 = *v1556;
    *v1556 = 0;
    *v1289 = v1291;
    *(v1289 + 16) = *&v1556[16];
    v1292 = v1289 + 32;
  }

  *(this + 42) = v1292;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  vp::vx::data_flow::State<void>::~State(&v1400);
  vp::vx::data_flow::State<void>::~State(&v1546);
  vp::vx::data_flow::State<void>::~State(&v1544);
  (*(*a3 + 16))(&v1559, a3, 98);
  v1398 = v1559;
  v1399 = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v1559);
  v1304 = *(this + 1);
  *v1556 = 0;
  *&v1556[8] = v1304;
  *&v1556[16] = xmmword_272756730;
  v1305 = (*(*v1304 + 16))(v1304, 40, 8);
  v1306 = vp::vx::data_flow::State<void>::State(&v1559, &v1398);
  *v1305 = &unk_2881BDA98;
  *(v1305 + 8) = v1559;
  *(v1305 + 16) = *v1560;
  *v1560 = 0;
  *&v1560[8] = 0;
  *(v1305 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(v1306);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, v1305);
  v1307 = *(this + 42);
  v1308 = *(this + 43);
  if (v1307 >= v1308)
  {
    v1311 = *(this + 41);
    v1312 = (v1307 - v1311) >> 5;
    v1313 = v1312 + 1;
    if ((v1312 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v1314 = v1308 - v1311;
    if (v1314 >> 4 > v1313)
    {
      v1313 = v1314 >> 4;
    }

    if (v1314 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1315 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v1315 = v1313;
    }

    v1561 = this + 352;
    if (v1315)
    {
      v1316 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 352, v1315);
      v1311 = *(this + 41);
      v1307 = *(this + 42);
    }

    else
    {
      v1316 = 0;
    }

    v1317 = (v1316 + 32 * v1312);
    *&v1560[16] = v1316 + 32 * v1315;
    v1318 = *v1556;
    *v1556 = 0;
    *v1317 = v1318;
    v1317[1] = *&v1556[16];
    *&v1560[8] = v1317 + 2;
    v1319 = &v1317[-2 * ((v1307 - v1311) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v1311, v1307, v1319);
    v1320 = *(this + 41);
    *(this + 41) = v1319;
    v1321 = *(this + 43);
    v1397 = *&v1560[8];
    *(this + 21) = *&v1560[8];
    *&v1560[8] = v1320;
    *&v1560[16] = v1321;
    v1559 = v1320;
    *v1560 = v1320;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v1559);
    v1310 = v1397;
  }

  else
  {
    v1309 = *v1556;
    *v1556 = 0;
    *v1307 = v1309;
    *(v1307 + 16) = *&v1556[16];
    v1310 = v1307 + 32;
  }

  *(this + 42) = v1310;
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T>>::reset[abi:ne200100](v1556, 0);
  result = vp::vx::data_flow::State<void>::~State(&v1398);
  v1323 = *MEMORY[0x277D85DE8];
  return result;
}