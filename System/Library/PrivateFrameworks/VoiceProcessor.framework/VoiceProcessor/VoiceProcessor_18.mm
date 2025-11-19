void sub_2725FEBB0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x2743CBE30](v1);
  _Unwind_Resume(a1);
}

void vp::utility::CPU_Profiler::measure(int64x2_t *a1, void (*a2)(void), uint64_t a3)
{
  v10 = a2;
  v11 = a3;
  v9.__ptr_ = 0;
  thread_selfcounts();
  a2(&v11);
  thread_selfcounts();
  *a1 = vaddq_s64(vsubq_s64(v7, v8), *a1);
  if (v9.__ptr_)
  {
    std::exception_ptr::exception_ptr(&v6, &v9);
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    std::exception_ptr::~exception_ptr(&v9);
  }
}

void sub_2725FEC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, std::exception_ptr a11)
{
  std::exception_ptr::~exception_ptr(&a10);
  std::exception_ptr::~exception_ptr((v11 - 40));
  _Unwind_Resume(a1);
}

void vp::vx::components::CPU_Profiler::configure(std::__shared_weak_count **this)
{
  v43 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&__t, this, "vp::vx::components::CPU_Profiler]", 32);
    v4 = HIBYTE(v41);
    v5 = SHIBYTE(v41);
    v6 = v41;
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

      rep = __t.__d_.__rep_;
      if (v5 >= 0)
      {
        rep = &__t;
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
      v37 = rep;
      v38 = 2080;
      v39 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = HIBYTE(v41);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__t.__d_.__rep_);
    }
  }

  v11 = this[29];
  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = std::__shared_weak_count::lock(v11);
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = this[28];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!v13)
  {
    goto LABEL_29;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  v14 = this[31];
  if (v14)
  {
    v15 = std::__shared_weak_count::lock(v14);
    v16 = v15;
    if (v15)
    {
      v17 = this[30];
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        v18 = this[33];
        if (v18)
        {
          v19 = std::__shared_weak_count::lock(v18);
          if (v19)
          {
            v20 = this[32];
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            if (v20)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              (v20->__get_deleter)(&__t, v20, 5);
              v33 = __t.__d_.__rep_;
              v34 = v41;
              v41 = 0uLL;
              vp::vx::data_flow::State<void>::~State(&__t);
              v21 = this[1];
              v31[0] = 0;
              v31[1] = v21;
              v32 = xmmword_2727565F0;
              v22 = (v21->__on_zero_shared)(v21, 96, 8);
              v23 = v22;
              *&v24 = v17;
              *(&v24 + 1) = v16;
              atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v25 = *(this + 13);
              v26 = this[27];
              if (v26)
              {
                atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              *v22 = &unk_2881B6040;
              *(v22 + 8) = v24;
              *(v22 + 24) = v25;
              *(v22 + 48) = 0;
              *(v22 + 56) = 0;
              *(v22 + 40) = 0;
              __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
              *(v23 + 64) = std::chrono::system_clock::to_time_t(&__t);
              *(v23 + 72) = 0;
              *(v23 + 80) = 0;
              *(v23 + 88) = 0;
              std::unique_ptr<vp::vx::components::CPU_Profiler::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::CPU_Profiler::Node_Decorator_Factory>>::reset[abi:ne200100](v31, v23);
              v27 = v31[0];
              vp::vx::data_flow::State<void>::State(&v30, &v33);
              v29 = v27[1];
              v28 = v27[2];
              if (v28)
              {
                atomic_fetch_add_explicit(v28 + 2, 1uLL, memory_order_relaxed);
              }

              v35[0] = &unk_2881B6270;
              v35[1] = v29;
              v35[2] = v28;
              v35[3] = v35;
              std::__function::__value_func<void ()(unsigned int,BOOL const&)>::__value_func[abi:ne200100](buf, v35);
              v42 = 0;
              operator new();
            }
          }
        }

        _os_crash();
        __break(1u);
      }
    }
  }

  while (1)
  {
    _os_crash();
    __break(1u);
LABEL_29:
    _os_crash();
    __break(1u);
  }
}

void sub_2725FF150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v8 = va_arg(va1, void (***)(void));
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::unique_ptr<vp::vx::components::CPU_Profiler::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::CPU_Profiler::Node_Decorator_Factory>>::reset[abi:ne200100](va, 0);
  vp::vx::data_flow::State<void>::~State(va1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

void (****std::unique_ptr<vp::vx::io::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::io::Node_Decorator_Factory>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (**v2)(v2);
    return ((*v3[1])[3])(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void (****std::unique_ptr<vp::vx::components::CPU_Profiler::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::CPU_Profiler::Node_Decorator_Factory>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (**v2)(v2);
    return ((*v3[1])[3])(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t vp::vx::components::CPU_Profiler::set_time(uint64_t this, uint64_t a2)
{
  *(this + 272) = a2;
  v2 = *(this + 280);
  if (v2)
  {
    *(v2 + 64) = a2;
  }

  return this;
}

void vp::vx::components::CPU_Profiler::set_state_owner(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 264);
  *(a1 + 256) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::CPU_Profiler::set_state_observer(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 248);
  *(a1 + 240) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::CPU_Profiler::set_state_manager(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 232);
  *(a1 + 224) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::CPU_Profiler::set_messenger(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 216);
  *(a1 + 208) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void vp::vx::components::CPU_Profiler::~CPU_Profiler(std::__shared_weak_count **this)
{
  vp::vx::components::CPU_Profiler::~CPU_Profiler(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v22 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::CPU_Profiler]", 32);
    v4 = v17;
    v5 = v17;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
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
      v19 = v9;
      v20 = 2080;
      v21 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v17;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  std::unique_ptr<vp::vx::io::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::io::Node_Decorator_Factory>>::reset[abi:ne200100](this + 35, 0);
  v11 = this[33];
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = this[31];
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = this[29];
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = this[27];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  vp::Context::~Context((this + 2));
  v15 = *MEMORY[0x277D85DE8];
}

void virtual thunk tovp::vx::components::CPU_Profiler::Node_Decorator::~Node_Decorator(vp::vx::components::CPU_Profiler::Node_Decorator *this)
{
  vp::vx::components::CPU_Profiler::Node_Decorator::~Node_Decorator((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::components::CPU_Profiler::Node_Decorator::~Node_Decorator((this + *(*this - 24)));
}

void vp::vx::components::CPU_Profiler::Node_Decorator::~Node_Decorator(vp::vx::components::CPU_Profiler::Node_Decorator *this)
{
  v20 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B5F58;
  *(this + 7) = &unk_2881B5FF0;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    vp::vx::io::get_log_context_info(__p, this + *(*this - 24), "vp::vx::components::CPU_Profiler::Node_Decorator]", 48);
    v3 = v15;
    v4 = v15;
    v5 = __p[1];
    v7 = vp::get_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v4 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = v5;
      }

      v9 = __p[0];
      if (v4 >= 0)
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
      v17 = v9;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v4) = v15;
    }

    if ((v4 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *(this + 6);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  *this = off_2881B6070;
  *(this + 7) = off_2881B6108;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](this + 1, 0);
  *(this + 7) = &unk_2881C6630;
  v12 = *(this + 9);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::components::CPU_Profiler::Node_Decorator::~Node_Decorator(this);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::components::CPU_Profiler::Node_Decorator::process(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X8>)
{
  v17[0] = a2;
  v17[1] = a3;
  v16[0] = a4;
  v16[1] = a5;
  v15 = a6;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v14);
  v9 = v14;
  *a7 = 0;
  *(a7 + 4) = 3407919;
  *(a7 + 8) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/components/CPU_Profiler+Node_Decorator.cpp";
  *(a7 + 24) = 0uLL;
  *(a7 + 40) = v9;
  *(a7 + 48) = 0;
  rep = std::chrono::system_clock::now().__d_.__rep_;
  v11 = 0uLL;
  v13[0] = a7;
  v13[1] = a1;
  v13[2] = v17;
  v13[3] = v16;
  v13[4] = &v15;
  vp::utility::CPU_Profiler::measure(&v11, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::components::CPU_Profiler::Node_Decorator::process(std::span<vp::vx::io::Node_Process_Data const,18446744073709551615ul>,std::span<vp::vx::io::Node_Process_Data,18446744073709551615ul>,unsigned int)::$_0>, v13);
  if (*(a7 + 48) == 1)
  {
    v13[0] = v15;
    v10 = v11;
    vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::write(*(a1 + 40), &rep, v13, &v10.i64[1], v10.i64);
  }
}

int *caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::components::CPU_Profiler::Node_Decorator::process(std::span<vp::vx::io::Node_Process_Data const,18446744073709551615ul>,std::span<vp::vx::io::Node_Process_Data,18446744073709551615ul>,unsigned int)::$_0>(int ***a1)
{
  v1 = *a1;
  v2 = (*a1)[2];
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = (*a1)[3];
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *(*a1)[4];
  (*(**((*a1)[1] + 1) + 80))(v10);
  result = caulk::expected<void,vp::vx::io::Error>::operator=(*v1, v10);
  if ((v13 & 1) == 0 && SHIBYTE(v11) < 0)
  {
    return (*(*v12 + 24))(v12, v10[2], v11 & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  return result;
}

void vp::vx::components::CPU_Profiler::Node_Decorator_Factory::new_node_decorator(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    *&__src[8] = 0;
    *&v31 = 0;
    *__src = std::pmr::get_default_resource(a1);
    vp::vx::data_flow::State<void>::get_value((a1 + 40), __src);
    v8 = *vp::vx::data_flow::Value::view_storage(__src);
    vp::vx::data_flow::Value::~Value(__src);
    if (v8 == 1)
    {
      v9 = *a2 + *(**a2 - 24);
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v10)
      {
        v32 = 0u;
        v33 = 0u;
        *__src = 0u;
        v31 = 0u;
        v24 = *(a1 + 64);
        v12 = localtime(&v24);
        strftime(__src, 0x40uLL, "%Y%m%d.%H%M%S", v12);
        if (*(a1 + 95) < 0)
        {
          std::string::__init_copy_ctor_external(&v23, *(a1 + 72), *(a1 + 80));
        }

        else
        {
          v23 = *(a1 + 72);
        }

        std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(&v23, "vp.");
        v13 = (&v29 + 7);
        do
        {
          v14 = v13->__r_.__value_.__s.__data_[1];
          v13 = (v13 + 1);
        }

        while (v14);
        std::string::append[abi:ne200100]<char const*,0>(&v23, __src, v13);
        std::string::append(&v23, ".", 1uLL);
        vp::vx::io::Object::Log_Context::get_description(&__p, v10);
        if (v28 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v28 >= 0)
        {
          v16 = HIBYTE(v28);
        }

        else
        {
          v16 = v28;
        }

        std::string::append(&v23, p_p, v16);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p);
        }

        std::string::append(&v23, ".CPU_Profile.csv", 0x10uLL);
        v17 = (*(*a3 + 16))(a3, 80, 8);
        v18 = *a2;
        *a2 = 0;
        v28 = *(a2 + 1);
        v29 = a2[3];
        v19 = *(a1 + 24);
        v20 = *(a1 + 32);
        v25 = v19;
        v26 = v20;
        __p = v18;
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
          vp::vx::components::CPU_Profiler::Node_Decorator::Node_Decorator(v17);
        }

        vp::vx::components::CPU_Profiler::Node_Decorator::Node_Decorator(v17);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }

  v21 = *a2;
  *a2 = 0;
  *a4 = v21;
  *(a4 + 8) = *(a2 + 1);
  *(a4 + 24) = a2[3];
  v22 = *MEMORY[0x277D85DE8];
}

void sub_2725FFCC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    std::unique_ptr<vp::vx::components::CPU_Profiler::Node_Decorator,vp::Allocator_Delete<vp::vx::components::CPU_Profiler::Node_Decorator>>::reset[abi:ne200100](&a9, 0);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<vp::vx::components::CPU_Profiler::Node_Decorator,vp::Allocator_Delete<vp::vx::components::CPU_Profiler::Node_Decorator>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 112))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void vp::vx::components::CPU_Profiler::Node_Decorator::Node_Decorator(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *(a1 + 56) = &unk_2881C6630;
  operator new();
}

void sub_2726000FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::vx::components::CPU_Profiler::Node_Decorator_Factory::~Node_Decorator_Factory(vp::vx::components::CPU_Profiler::Node_Decorator_Factory *this)
{
  *this = &unk_2881B6040;
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  vp::vx::data_flow::State<void>::~State(this + 10);
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B6040;
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  vp::vx::data_flow::State<void>::~State(this + 10);
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__function::__func<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      if (*(a1 + 8))
      {
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void std::__function::__func<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B6270;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6270;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6270;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::darwin::Notification_Listener::~Notification_Listener(vp::darwin::Notification_Listener *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v4 = *this;
    v3 = *(this + 1);
    os_unfair_recursive_lock_lock_with_options();
    v5 = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::equal_to<int>,std::hash<int>,true>,vp::Allocator<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>>>::find<int>((v2 + 88), v3);
    if (v5)
    {
      v6 = v5[3];
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v7)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8 == 0;
      }

      if (!v9)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (v8)
      {
        v10 = *(v6 + 16);
        v11 = *(v6 + 24);
        do
        {
          if (v11 != 1 && !v10)
          {
            __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
          }

          if (!v10)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          v12 = v11 >> 1;
          v13 = &v10[10 * (v11 >> 1)];
          v15 = *v13;
          v14 = v13 + 10;
          v11 += ~(v11 >> 1);
          if (v15 >= v4)
          {
            v11 = v12;
          }

          else
          {
            v10 = v14;
          }
        }

        while (v11);
      }

      else
      {
        v10 = *(v6 + 16);
      }

      v16 = (v7 + 40 * v8);
      if (v10 != v16)
      {
        if (!v10)
        {
          __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
        }

        if (v4 >= *v10)
        {
          v17 = v10;
        }

        else
        {
          v17 = v7 + 40 * v8;
        }

        if (v17 != v16)
        {
          if (v7 > v17 || v17 >= v16)
          {
            __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
          }

          v19 = v17 + 40;
          while (v19 != v16)
          {
            v20 = v17 + 40;
            v19 = boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>::operator=(v17, v17 + 40) + 80;
            v17 = v20;
          }

          std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::~__value_func[abi:ne200100]((v16 - 8));
          --*(v6 + 24);
        }
      }
    }

    os_unfair_recursive_lock_unlock();
    v21 = *(this + 2);
    *(this + 1) = 0;
    *(this + 2) = 0;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  v22 = *(this + 2);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_2726006D8(void *a1)
{
  os_unfair_recursive_lock_unlock();
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726005F0);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::equal_to<int>,std::hash<int>,true>,vp::Allocator<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>>>::find<int>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 8;
  *a1 = *a2;
  v5 = a1 + 8;
  v7 = (a1 + 32);
  v6 = *(a1 + 32);
  *v7 = 0;
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v10 = *(a2 + 32);
  v9 = (a2 + 32);
  v8 = v10;
  if (v10)
  {
    if (v8 == v4)
    {
      *v7 = v5;
      (*(**v9 + 24))(*v9, v5);
      return a1;
    }

    *v7 = v8;
  }

  else
  {
    v9 = v7;
  }

  *v9 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<vp::darwin::Notification_Center,vp::Allocator<std::byte>>::__on_zero_shared(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = v3[4];
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,void *>>>::deallocate[abi:ne200100](a1[19], v3);
      v3 = v4;
    }

    while (v4);
  }

  v6 = a1[15];
  a1[15] = 0;
  if (v6)
  {
    std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,void *> *> *>>::deallocate[abi:ne200100](a1[17], v6, a1[16]);
  }

  v7 = a1[11];
  if (v7)
  {
    do
    {
      v8 = *v7;
      std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>((v7 + 2));
      std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<vp::darwin::Notification>>,void *>>>::deallocate[abi:ne200100](a1[12], v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = a1[8];
  a1[8] = 0;
  if (v9)
  {
    std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<vp::darwin::Notification>>,void *> *> *>>::deallocate[abi:ne200100](a1[10], v9, a1[9]);
  }

  v10 = a1[5];
  if (v10)
  {

    std::__shared_weak_count::__release_weak(v10);
  }
}

void std::__shared_ptr_emplace<vp::darwin::Notification_Center,vp::Allocator<std::byte>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881B6320;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t boost::container::vector<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>,vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>,boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>*,boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>>(void *a1, const char *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x666666666666666)
  {
    goto LABEL_28;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0x666666666666666)
  {
    v6 = 0x666666666666666;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0x666666666666666)
  {
LABEL_28:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v12 = *(a2 + 1);
  v13 = (*(**a2 + 16))(*a2, 40 * v8, 8);
  v14 = v13;
  v31[1] = a2;
  v31[2] = v8;
  v15 = *(a2 + 1);
  v16 = &v15[10 * *(a2 + 2)];
  v17 = v13;
  if (v15 != a3)
  {
    v18 = *(a2 + 1);
    v19 = v13;
    v20 = v18;
    v17 = v13;
    do
    {
      v21 = *v20;
      v20 += 10;
      *v17 = v21;
      v17 += 10;
      std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::__value_func[abi:ne200100]((v19 + 2), (v18 + 2));
      v18 = v20;
      v19 = v17;
    }

    while (v20 != a3);
  }

  *v17 = *a4;
  std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::__value_func[abi:ne200100]((v17 + 2), (a4 + 2));
  if (v16 != a3)
  {
    v22 = (v17 + 12);
    v23 = a3;
    v24 = a3;
    do
    {
      v25 = *v24;
      v24 += 10;
      *(v22 - 8) = v25;
      v22 = std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::__value_func[abi:ne200100](v22, (v23 + 2)) + 40;
      v23 = v24;
    }

    while (v24 != v16);
  }

  v31[0] = 0;
  if (v15)
  {
    v26 = *(a2 + 2);
    if (v26)
    {
      v27 = (v15 + 2);
      do
      {
        --v26;
        v27 = std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::~__value_func[abi:ne200100](v27) + 40;
      }

      while (v26);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 40 * *(a2 + 3), 8);
  }

  v28 = *(a2 + 2) + 1;
  *(a2 + 1) = v14;
  *(a2 + 2) = v28;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>>::~scoped_array_deallocator(v31);
  *a1 = a3 + *(a2 + 1) - v12;
  return result;
}

void sub_272600EA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 40 * *(a1 + 16), 8);
  }

  return a1;
}

void ___ZN2vp6darwin19Notification_Center19create_notificationEPKc_block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      if (v7)
      {
        os_unfair_recursive_lock_lock_with_options();
        v8 = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::equal_to<int>,std::hash<int>,true>,vp::Allocator<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>>>::find<int>((v7 + 88), a2);
        if (v8)
        {
          v9 = v8[3];
          v15 = *v9;
          v11 = *(v9 + 16);
          v10 = *(v9 + 24);
          if (v11)
          {
            v12 = 1;
          }

          else
          {
            v12 = v10 == 0;
          }

          if (!v12)
          {
            __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
          }

          if (v10)
          {
            v13 = v11 + 40 * v10;
            do
            {
              if (!v11)
              {
                __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
              }

              v14 = *(v11 + 32);
              if (!v14)
              {
                std::__throw_bad_function_call[abi:ne200100]();
              }

              (*(*v14 + 48))(v14, &v15);
              v11 += 40;
            }

            while (v11 != v13);
          }
        }

        os_unfair_recursive_lock_unlock();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void *std::unique_ptr<vp::darwin::Notification,vp::Allocator_Delete<vp::darwin::Notification>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    boost::container::vector<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>,vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>,void>::~vector((v2 + 8));
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__hash_node_destructor<vp::Allocator<std::__hash_node<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v5 = **a1;

  return std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,void *>>>::deallocate[abi:ne200100](v5, a2);
}

void *boost::container::vector<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>,vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1] + 8;
    do
    {
      --v2;
      v3 = std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::~__value_func[abi:ne200100](v3) + 40;
    }

    while (v2);
  }

  v4 = a1[3];
  if (v4)
  {
    (*(**a1 + 24))(*a1, a1[1], 40 * v4, 8);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<vp::darwin::Notification *,vp::Allocator_Delete<vp::darwin::Notification>,std::allocator<vp::darwin::Notification>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  boost::container::vector<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>,vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>,void>::~vector((v2 + 8));
  return (*(**(a1 + 32) + 24))(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void std::__shared_ptr_pointer<vp::darwin::Notification *,vp::Allocator_Delete<vp::darwin::Notification>,std::allocator<vp::darwin::Notification>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void __destroy_helper_block_e8_32c56_ZTSNSt3__18weak_ptrIN2vp6darwin19Notification_CenterEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_e8_32c56_ZTSNSt3__18weak_ptrIN2vp6darwin19Notification_CenterEEE(uint64_t result, uint64_t a2)
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

void vp::vx::database::v1::runtime::Data_Manager::serialize(const vp::vx::Configuration_Context *a1@<X1>, CFDictionaryRef *a2@<X8>)
{
  v293[2] = *MEMORY[0x277D85DE8];
  CFRetain(@"operation_mode");
  v5 = CFGetTypeID(@"operation_mode");
  if (v5 == CFStringGetTypeID())
  {
    v248 = @"operation_mode";
  }

  else
  {
    v248 = 0;
    CFRelease(@"operation_mode");
  }

  v6 = vp::detail::reflect_value_name<(vp::vx::Operation_Mode)0,128ul>(*a1);
  if (v7)
  {
    v8 = &v6[v7];
    v9 = v7;
    while (v9)
    {
      v10 = *--v8;
      --v9;
      if (v10 == 58)
      {
        v11 = v8 - v6 + 1;
        if (v7 < v11)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        goto LABEL_11;
      }
    }
  }

  v11 = 0;
LABEL_11:
  v12 = v7 - v11;
  if (v7 - v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  v252 = v7 - v11;
  if (v7 != v11)
  {
    memmove(&__dst, &v6[v11], v12);
  }

  v251[v12 - 8] = 0;
  if ((v252 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (p_dst)
  {
    if ((v252 & 0x80u) == 0)
    {
      v14 = v252;
    }

    else
    {
      v14 = *v251;
    }

    v247 = CFStringCreateWithBytes(0, p_dst, v14, 0x8000100u, 0);
    if (!v247)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if ((v252 & 0x80) != 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v247 = 0;
    if ((v252 & 0x80) != 0)
    {
LABEL_26:
      operator delete(__dst);
    }
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(v253, v248, &v247);
  CFRetain(@"chat_flavor");
  v15 = CFGetTypeID(@"chat_flavor");
  if (v15 == CFStringGetTypeID())
  {
    v246 = @"chat_flavor";
  }

  else
  {
    v246 = 0;
    CFRelease(@"chat_flavor");
  }

  v16 = vp::reflect_value_name_tag<vp::vx::Chat_Flavor,128ul>(*(a1 + 1));
  if (v17 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v18 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  v252 = v17;
  if (v17)
  {
    memmove(&__dst, v16, v17);
  }

  v251[v18 - 8] = 0;
  if ((v252 & 0x80u) == 0)
  {
    v19 = &__dst;
  }

  else
  {
    v19 = __dst;
  }

  if (v19)
  {
    if ((v252 & 0x80u) == 0)
    {
      v20 = v252;
    }

    else
    {
      v20 = *v251;
    }

    v245 = CFStringCreateWithBytes(0, v19, v20, 0x8000100u, 0);
    if (!v245)
    {
      v161 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v161, "Could not construct");
    }

    if ((v252 & 0x80) != 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v245 = 0;
    if ((v252 & 0x80) != 0)
    {
LABEL_45:
      operator delete(__dst);
    }
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v254, v246, &v245);
  CFRetain(@"input_port_type");
  v21 = CFGetTypeID(@"input_port_type");
  if (v21 == CFStringGetTypeID())
  {
    v244 = @"input_port_type";
  }

  else
  {
    v244 = 0;
    CFRelease(@"input_port_type");
  }

  v22 = vp::reflect_value_name_tag<vp::vx::Input_Port_Type,128ul>(*(a1 + 2));
  if (v23 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = v23;
  if (v23 >= 0x17)
  {
    operator new();
  }

  v252 = v23;
  if (v23)
  {
    memmove(&__dst, v22, v23);
  }

  v251[v24 - 8] = 0;
  if ((v252 & 0x80u) == 0)
  {
    v25 = &__dst;
  }

  else
  {
    v25 = __dst;
  }

  if (v25)
  {
    if ((v252 & 0x80u) == 0)
    {
      v26 = v252;
    }

    else
    {
      v26 = *v251;
    }

    v243 = CFStringCreateWithBytes(0, v25, v26, 0x8000100u, 0);
    if (!v243)
    {
      v162 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v162, "Could not construct");
    }

    if ((v252 & 0x80) != 0)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v243 = 0;
    if ((v252 & 0x80) != 0)
    {
LABEL_64:
      operator delete(__dst);
    }
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v255, v244, &v243);
  CFRetain(@"input_port_type_legacy");
  v27 = @"input_port_type_legacy";
  v28 = CFGetTypeID(@"input_port_type_legacy");
  if (v28 == CFStringGetTypeID())
  {
    v242 = @"input_port_type_legacy";
  }

  else
  {
    v242 = 0;
    CFRelease(@"input_port_type_legacy");
    v27 = 0;
  }

  LODWORD(__dst) = vp::vx::Legacy<vp::vx::Input_Port_Type>::cast(*(a1 + 2));
  v241 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v241)
  {
    v140 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v140, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v256, v27, &v241);
  CFRetain(@"input_port_sub_type_legacy");
  v29 = @"input_port_sub_type_legacy";
  v30 = CFGetTypeID(@"input_port_sub_type_legacy");
  if (v30 == CFStringGetTypeID())
  {
    v240 = @"input_port_sub_type_legacy";
  }

  else
  {
    v240 = 0;
    CFRelease(@"input_port_sub_type_legacy");
    v29 = 0;
  }

  LODWORD(__dst) = vp::vx::legacy_cast<vp::vx::Port_Sub_Type>(*(a1 + 3));
  v239 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v239)
  {
    v141 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v141, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v257, v29, &v239);
  CFRetain(@"input_hw_transport_type");
  v31 = @"input_hw_transport_type";
  v32 = CFGetTypeID(@"input_hw_transport_type");
  if (v32 == CFStringGetTypeID())
  {
    v238 = @"input_hw_transport_type";
  }

  else
  {
    v238 = 0;
    CFRelease(@"input_hw_transport_type");
    v31 = 0;
  }

  LODWORD(__dst) = *(a1 + 4);
  v237 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v237)
  {
    v142 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v142, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v258, v31, &v237);
  CFRetain(@"input_hw_bluetooth_device_category");
  v33 = @"input_hw_bluetooth_device_category";
  v34 = CFGetTypeID(@"input_hw_bluetooth_device_category");
  if (v34 == CFStringGetTypeID())
  {
    v236 = @"input_hw_bluetooth_device_category";
  }

  else
  {
    v236 = 0;
    CFRelease(@"input_hw_bluetooth_device_category");
    v33 = 0;
  }

  LODWORD(__dst) = *(a1 + 5);
  v235 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v235)
  {
    v143 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v143, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v259, v33, &v235);
  CFRetain(@"input_hw_data_source");
  v35 = @"input_hw_data_source";
  v36 = CFGetTypeID(@"input_hw_data_source");
  if (v36 == CFStringGetTypeID())
  {
    v234 = @"input_hw_data_source";
  }

  else
  {
    v234 = 0;
    CFRelease(@"input_hw_data_source");
    v35 = 0;
  }

  LODWORD(__dst) = *(a1 + 6);
  v233 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v233)
  {
    v144 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v144, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v260, v35, &v233);
  CFRetain(@"input_hw_model_uid");
  v37 = @"input_hw_model_uid";
  v38 = CFGetTypeID(@"input_hw_model_uid");
  if (v38 == CFStringGetTypeID())
  {
    v232 = @"input_hw_model_uid";
  }

  else
  {
    v232 = 0;
    CFRelease(@"input_hw_model_uid");
    v37 = 0;
  }

  v39 = *(a1 + 4);
  if (v39)
  {
    CFRetain(*(a1 + 4));
    v231 = v39;
    v230 = 0;
  }

  else
  {
    v230 = 0;
    CFRetain(@"(null)");
    v40 = CFGetTypeID(@"(null)");
    if (v40 == CFStringGetTypeID())
    {
      v231 = @"(null)";
    }

    else
    {
      v231 = 0;
      CFRelease(@"(null)");
    }
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v261, v37, &v231);
  CFRetain(@"output_port_type");
  v41 = CFGetTypeID(@"output_port_type");
  if (v41 == CFStringGetTypeID())
  {
    v229 = @"output_port_type";
  }

  else
  {
    v229 = 0;
    CFRelease(@"output_port_type");
  }

  v42 = vp::reflect_value_name_tag<vp::vx::Output_Port_Type,128ul>(*(a1 + 10));
  if (v43 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v44 = v43;
  if (v43 >= 0x17)
  {
    operator new();
  }

  v252 = v43;
  if (v43)
  {
    memmove(&__dst, v42, v43);
  }

  v251[v44 - 8] = 0;
  if ((v252 & 0x80u) == 0)
  {
    v45 = &__dst;
  }

  else
  {
    v45 = __dst;
  }

  if (v45)
  {
    if ((v252 & 0x80u) == 0)
    {
      v46 = v252;
    }

    else
    {
      v46 = *v251;
    }

    v228 = CFStringCreateWithBytes(0, v45, v46, 0x8000100u, 0);
    if (!v228)
    {
      v163 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v163, "Could not construct");
    }

    if ((v252 & 0x80) != 0)
    {
      goto LABEL_117;
    }
  }

  else
  {
    v228 = 0;
    if ((v252 & 0x80) != 0)
    {
LABEL_117:
      operator delete(__dst);
    }
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v262, v229, &v228);
  CFRetain(@"output_port_type_legacy");
  v47 = @"output_port_type_legacy";
  v48 = CFGetTypeID(@"output_port_type_legacy");
  if (v48 == CFStringGetTypeID())
  {
    v227 = @"output_port_type_legacy";
  }

  else
  {
    v227 = 0;
    CFRelease(@"output_port_type_legacy");
    v47 = 0;
  }

  LODWORD(__dst) = vp::vx::Legacy<vp::vx::Output_Port_Type>::cast(*(a1 + 10));
  v226 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v226)
  {
    v145 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v145, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v263, v47, &v226);
  CFRetain(@"output_port_sub_type_legacy");
  v49 = @"output_port_sub_type_legacy";
  v50 = CFGetTypeID(@"output_port_sub_type_legacy");
  if (v50 == CFStringGetTypeID())
  {
    v225 = @"output_port_sub_type_legacy";
  }

  else
  {
    v225 = 0;
    CFRelease(@"output_port_sub_type_legacy");
    v49 = 0;
  }

  LODWORD(__dst) = vp::vx::legacy_cast<vp::vx::Port_Sub_Type>(*(a1 + 11));
  v224 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v224)
  {
    v146 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v146, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v264, v49, &v224);
  CFRetain(@"output_port_endpoint_type_legacy");
  v51 = @"output_port_endpoint_type_legacy";
  v52 = CFGetTypeID(@"output_port_endpoint_type_legacy");
  if (v52 == CFStringGetTypeID())
  {
    v223 = @"output_port_endpoint_type_legacy";
  }

  else
  {
    v223 = 0;
    CFRelease(@"output_port_endpoint_type_legacy");
    v51 = 0;
  }

  LODWORD(__dst) = vp::vx::Legacy<vp::vx::Port_Endpoint_Type>::cast(*(a1 + 12));
  v222 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v222)
  {
    v147 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v147, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v265, v51, &v222);
  CFRetain(@"output_port_is_apple_bluetooth_product");
  v53 = @"output_port_is_apple_bluetooth_product";
  v54 = CFGetTypeID(@"output_port_is_apple_bluetooth_product");
  if (v54 == CFStringGetTypeID())
  {
    v221 = @"output_port_is_apple_bluetooth_product";
  }

  else
  {
    v221 = 0;
    CFRelease(@"output_port_is_apple_bluetooth_product");
    v53 = 0;
  }

  v55 = *MEMORY[0x277CBED28];
  v56 = *MEMORY[0x277CBED10];
  if (*(a1 + 52))
  {
    v57 = *MEMORY[0x277CBED28];
  }

  else
  {
    v57 = *MEMORY[0x277CBED10];
  }

  v220 = v57;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v266, v53, &v220);
  CFRetain(@"output_hw_transport_type");
  v58 = @"output_hw_transport_type";
  v59 = CFGetTypeID(@"output_hw_transport_type");
  if (v59 == CFStringGetTypeID())
  {
    v219 = @"output_hw_transport_type";
  }

  else
  {
    v219 = 0;
    CFRelease(@"output_hw_transport_type");
    v58 = 0;
  }

  LODWORD(__dst) = *(a1 + 14);
  v218 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v218)
  {
    v148 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v148, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v267, v58, &v218);
  CFRetain(@"output_hw_bluetooth_device_category");
  v60 = @"output_hw_bluetooth_device_category";
  v61 = CFGetTypeID(@"output_hw_bluetooth_device_category");
  if (v61 == CFStringGetTypeID())
  {
    v217 = @"output_hw_bluetooth_device_category";
  }

  else
  {
    v217 = 0;
    CFRelease(@"output_hw_bluetooth_device_category");
    v60 = 0;
  }

  LODWORD(__dst) = *(a1 + 15);
  v216 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v216)
  {
    v149 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v149, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v268, v60, &v216);
  CFRetain(@"output_hw_data_source");
  v62 = @"output_hw_data_source";
  v63 = CFGetTypeID(@"output_hw_data_source");
  if (v63 == CFStringGetTypeID())
  {
    v215 = @"output_hw_data_source";
  }

  else
  {
    v215 = 0;
    CFRelease(@"output_hw_data_source");
    v62 = 0;
  }

  LODWORD(__dst) = *(a1 + 16);
  v214 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v214)
  {
    v150 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v150, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v269, v62, &v214);
  CFRetain(@"output_hw_model_uid");
  v64 = @"output_hw_model_uid";
  v65 = CFGetTypeID(@"output_hw_model_uid");
  if (v65 == CFStringGetTypeID())
  {
    v213 = @"output_hw_model_uid";
  }

  else
  {
    v213 = 0;
    CFRelease(@"output_hw_model_uid");
    v64 = 0;
  }

  v66 = *(a1 + 9);
  if (v66)
  {
    CFRetain(*(a1 + 9));
    v211 = 0;
    v212 = v66;
  }

  else
  {
    v211 = 0;
    CFRetain(@"(null)");
    v67 = CFGetTypeID(@"(null)");
    if (v67 == CFStringGetTypeID())
    {
      v212 = @"(null)";
    }

    else
    {
      v212 = 0;
      CFRelease(@"(null)");
    }
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v270, v64, &v212);
  CFRetain(@"spatial_chat_is_enabled");
  v68 = @"spatial_chat_is_enabled";
  v69 = CFGetTypeID(@"spatial_chat_is_enabled");
  if (v69 == CFStringGetTypeID())
  {
    v210 = @"spatial_chat_is_enabled";
  }

  else
  {
    v210 = 0;
    CFRelease(@"spatial_chat_is_enabled");
    v68 = 0;
  }

  if (*(a1 + 80))
  {
    v70 = v55;
  }

  else
  {
    v70 = v56;
  }

  v209 = v70;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v271, v68, &v209);
  CFRetain(@"spatial_headtracking_is_enabled");
  v71 = @"spatial_headtracking_is_enabled";
  v72 = CFGetTypeID(@"spatial_headtracking_is_enabled");
  if (v72 == CFStringGetTypeID())
  {
    v208 = @"spatial_headtracking_is_enabled";
  }

  else
  {
    v208 = 0;
    CFRelease(@"spatial_headtracking_is_enabled");
    v71 = 0;
  }

  if (*(a1 + 81))
  {
    v73 = v55;
  }

  else
  {
    v73 = v56;
  }

  v207 = v73;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v272, v71, &v207);
  CFRetain(@"media_chat_is_enabled");
  v74 = @"media_chat_is_enabled";
  v75 = CFGetTypeID(@"media_chat_is_enabled");
  if (v75 == CFStringGetTypeID())
  {
    v206 = @"media_chat_is_enabled";
  }

  else
  {
    v206 = 0;
    CFRelease(@"media_chat_is_enabled");
    v74 = 0;
  }

  if (*(a1 + 82))
  {
    v76 = v55;
  }

  else
  {
    v76 = v56;
  }

  v205 = v76;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v273, v74, &v205);
  CFRetain(@"stereo_to_mono_mix_is_enabled");
  v77 = @"stereo_to_mono_mix_is_enabled";
  v78 = CFGetTypeID(@"stereo_to_mono_mix_is_enabled");
  if (v78 == CFStringGetTypeID())
  {
    v204 = @"stereo_to_mono_mix_is_enabled";
  }

  else
  {
    v204 = 0;
    CFRelease(@"stereo_to_mono_mix_is_enabled");
    v77 = 0;
  }

  if (*(a1 + 83))
  {
    v79 = v55;
  }

  else
  {
    v79 = v56;
  }

  v203 = v79;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v274, v77, &v203);
  CFRetain(@"voice_processing_is_bypassed");
  v80 = @"voice_processing_is_bypassed";
  v81 = CFGetTypeID(@"voice_processing_is_bypassed");
  if (v81 == CFStringGetTypeID())
  {
    v202 = @"voice_processing_is_bypassed";
  }

  else
  {
    v202 = 0;
    CFRelease(@"voice_processing_is_bypassed");
    v80 = 0;
  }

  if (*(a1 + 84))
  {
    v82 = v55;
  }

  else
  {
    v82 = v56;
  }

  v201 = v82;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v275, v80, &v201);
  CFRetain(@"voice_processing_is_disabled");
  v83 = @"voice_processing_is_disabled";
  v84 = CFGetTypeID(@"voice_processing_is_disabled");
  if (v84 == CFStringGetTypeID())
  {
    v200 = @"voice_processing_is_disabled";
  }

  else
  {
    v200 = 0;
    CFRelease(@"voice_processing_is_disabled");
    v83 = 0;
  }

  if (*(a1 + 85))
  {
    v85 = v55;
  }

  else
  {
    v85 = v56;
  }

  v199 = v85;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v276, v83, &v199);
  CFRetain(@"voice_processing_is_done_in_hardware");
  v86 = @"voice_processing_is_done_in_hardware";
  v87 = CFGetTypeID(@"voice_processing_is_done_in_hardware");
  if (v87 == CFStringGetTypeID())
  {
    v198 = @"voice_processing_is_done_in_hardware";
  }

  else
  {
    v198 = 0;
    CFRelease(@"voice_processing_is_done_in_hardware");
    v86 = 0;
  }

  if (*(a1 + 86))
  {
    v88 = v55;
  }

  else
  {
    v88 = v56;
  }

  v197 = v88;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v277, v86, &v197);
  CFRetain(@"spatial_mode");
  v89 = @"spatial_mode";
  v90 = CFGetTypeID(@"spatial_mode");
  if (v90 == CFStringGetTypeID())
  {
    v196 = @"spatial_mode";
  }

  else
  {
    v196 = 0;
    CFRelease(@"spatial_mode");
    v89 = 0;
  }

  LODWORD(__dst) = *(a1 + 22);
  v195 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v195)
  {
    v151 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v151, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v278, v89, &v195);
  CFRetain(@"hardware_mic_input_channel_count");
  v91 = @"hardware_mic_input_channel_count";
  v92 = CFGetTypeID(@"hardware_mic_input_channel_count");
  if (v92 == CFStringGetTypeID())
  {
    v194 = @"hardware_mic_input_channel_count";
  }

  else
  {
    v194 = 0;
    CFRelease(@"hardware_mic_input_channel_count");
    v91 = 0;
  }

  LODWORD(__dst) = *(a1 + 23);
  v193 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v193)
  {
    v152 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v152, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v279, v91, &v193);
  CFRetain(@"hardware_ref_input_channel_count");
  v93 = @"hardware_ref_input_channel_count";
  v94 = CFGetTypeID(@"hardware_ref_input_channel_count");
  if (v94 == CFStringGetTypeID())
  {
    v192 = @"hardware_ref_input_channel_count";
  }

  else
  {
    v192 = 0;
    CFRelease(@"hardware_ref_input_channel_count");
    v93 = 0;
  }

  LODWORD(__dst) = *(a1 + 24);
  v191 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v191)
  {
    v153 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v153, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v280, v93, &v191);
  CFRetain(@"client_nev_output_channel_count");
  v95 = @"client_nev_output_channel_count";
  v96 = CFGetTypeID(@"client_nev_output_channel_count");
  if (v96 == CFStringGetTypeID())
  {
    v190 = @"client_nev_output_channel_count";
  }

  else
  {
    v190 = 0;
    CFRelease(@"client_nev_output_channel_count");
    v95 = 0;
  }

  LODWORD(__dst) = *(a1 + 25);
  v189 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v189)
  {
    v154 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v154, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v281, v95, &v189);
  CFRetain(@"client_fev_input_channel_count");
  v97 = @"client_fev_input_channel_count";
  v98 = CFGetTypeID(@"client_fev_input_channel_count");
  if (v98 == CFStringGetTypeID())
  {
    v188 = @"client_fev_input_channel_count";
  }

  else
  {
    v188 = 0;
    CFRelease(@"client_fev_input_channel_count");
    v97 = 0;
  }

  LODWORD(__dst) = *(a1 + 26);
  v187 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v187)
  {
    v155 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v155, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v282, v97, &v187);
  CFRetain(@"hardware_mix_output_channel_count");
  v99 = @"hardware_mix_output_channel_count";
  v100 = CFGetTypeID(@"hardware_mix_output_channel_count");
  if (v100 == CFStringGetTypeID())
  {
    v186 = @"hardware_mix_output_channel_count";
  }

  else
  {
    v186 = 0;
    CFRelease(@"hardware_mix_output_channel_count");
    v99 = 0;
  }

  LODWORD(__dst) = *(a1 + 27);
  v185 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v185)
  {
    v156 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v156, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v283, v99, &v185);
  CFRetain(@"vocoder_type");
  v101 = @"vocoder_type";
  v102 = CFGetTypeID(@"vocoder_type");
  if (v102 == CFStringGetTypeID())
  {
    v184 = @"vocoder_type";
  }

  else
  {
    v184 = 0;
    CFRelease(@"vocoder_type");
    v101 = 0;
  }

  LODWORD(__dst) = *(a1 + 28);
  v183 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v183)
  {
    v157 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v157, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v284, v101, &v183);
  CFRetain(@"vocoder_sample_rate");
  v103 = @"vocoder_sample_rate";
  v104 = CFGetTypeID(@"vocoder_sample_rate");
  if (v104 == CFStringGetTypeID())
  {
    v182 = @"vocoder_sample_rate";
  }

  else
  {
    v182 = 0;
    CFRelease(@"vocoder_sample_rate");
    v103 = 0;
  }

  __dst = *(a1 + 15);
  v181 = CFNumberCreate(0, kCFNumberDoubleType, &__dst);
  if (!v181)
  {
    v158 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v158, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v285, v103, &v181);
  CFRetain(@"tap_stream_is_enabled");
  v105 = @"tap_stream_is_enabled";
  v106 = CFGetTypeID(@"tap_stream_is_enabled");
  if (v106 == CFStringGetTypeID())
  {
    v180 = @"tap_stream_is_enabled";
  }

  else
  {
    v180 = 0;
    CFRelease(@"tap_stream_is_enabled");
    v105 = 0;
  }

  if (*(a1 + 128))
  {
    v107 = v55;
  }

  else
  {
    v107 = v56;
  }

  v179 = v107;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v286, v105, &v179);
  CFRetain(@"media_playback_on_external_device_is_enabled");
  v108 = @"media_playback_on_external_device_is_enabled";
  v109 = CFGetTypeID(@"media_playback_on_external_device_is_enabled");
  if (v109 == CFStringGetTypeID())
  {
    v178 = @"media_playback_on_external_device_is_enabled";
  }

  else
  {
    v178 = 0;
    CFRelease(@"media_playback_on_external_device_is_enabled");
    v108 = 0;
  }

  if (*(a1 + 129))
  {
    v110 = v55;
  }

  else
  {
    v110 = v56;
  }

  v177 = v110;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v287, v108, &v177);
  CFRetain(@"other_audio_advanced_ducking_is_enabled");
  v111 = @"other_audio_advanced_ducking_is_enabled";
  v112 = CFGetTypeID(@"other_audio_advanced_ducking_is_enabled");
  if (v112 == CFStringGetTypeID())
  {
    v176 = @"other_audio_advanced_ducking_is_enabled";
  }

  else
  {
    v176 = 0;
    CFRelease(@"other_audio_advanced_ducking_is_enabled");
    v111 = 0;
  }

  if (*(a1 + 130))
  {
    v113 = v55;
  }

  else
  {
    v113 = v56;
  }

  v175 = v113;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v288, v111, &v175);
  CFRetain(@"is_in_emergency_call");
  v114 = @"is_in_emergency_call";
  v115 = CFGetTypeID(@"is_in_emergency_call");
  if (v115 == CFStringGetTypeID())
  {
    v174 = @"is_in_emergency_call";
  }

  else
  {
    v174 = 0;
    CFRelease(@"is_in_emergency_call");
    v114 = 0;
  }

  if (*(a1 + 131))
  {
    v116 = v55;
  }

  else
  {
    v116 = v56;
  }

  v173 = v116;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v289, v114, &v173);
  CFRetain(@"virtual_audio_plugin_mode");
  v117 = @"virtual_audio_plugin_mode";
  v118 = CFGetTypeID(@"virtual_audio_plugin_mode");
  if (v118 == CFStringGetTypeID())
  {
    v172 = @"virtual_audio_plugin_mode";
  }

  else
  {
    v172 = 0;
    CFRelease(@"virtual_audio_plugin_mode");
    v117 = 0;
  }

  LODWORD(__dst) = *(a1 + 33);
  v171 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v171)
  {
    v159 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v159, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v290, v117, &v171);
  CFRetain(@"offload_airpods_noise_suppression_is_enabled");
  v119 = @"offload_airpods_noise_suppression_is_enabled";
  v120 = CFGetTypeID(@"offload_airpods_noise_suppression_is_enabled");
  if (v120 == CFStringGetTypeID())
  {
    v170 = @"offload_airpods_noise_suppression_is_enabled";
  }

  else
  {
    v170 = 0;
    CFRelease(@"offload_airpods_noise_suppression_is_enabled");
    v119 = 0;
  }

  if (*(a1 + 136))
  {
    v121 = v55;
  }

  else
  {
    v121 = v56;
  }

  v169 = v121;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v291, v119, &v169);
  CFRetain(@"automatic_mic_mode_is_enabled");
  v122 = @"automatic_mic_mode_is_enabled";
  v123 = CFGetTypeID(@"automatic_mic_mode_is_enabled");
  if (v123 == CFStringGetTypeID())
  {
    v168 = @"automatic_mic_mode_is_enabled";
  }

  else
  {
    v168 = 0;
    CFRelease(@"automatic_mic_mode_is_enabled");
    v122 = 0;
  }

  if (*(a1 + 137))
  {
    v124 = v55;
  }

  else
  {
    v124 = v56;
  }

  v167 = v124;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v292, v122, &v167);
  CFRetain(@"airpods_offload_mode");
  v125 = CFGetTypeID(@"airpods_offload_mode");
  if (v125 == CFStringGetTypeID())
  {
    v166 = @"airpods_offload_mode";
  }

  else
  {
    v166 = 0;
    CFRelease(@"airpods_offload_mode");
  }

  v126 = vp::detail::reflect_value_name<(vp::vx::AirPods_Offload_Mode)0,128ul>(*(a1 + 35));
  if (v127)
  {
    v128 = &v126[v127];
    v129 = v127;
    while (v129)
    {
      v130 = *--v128;
      --v129;
      if (v130 == 58)
      {
        v131 = v128 - v126 + 1;
        if (v127 < v131)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        goto LABEL_282;
      }
    }
  }

  v131 = 0;
LABEL_282:
  v132 = v127 - v131;
  if (v127 - v131 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v132 >= 0x17)
  {
    operator new();
  }

  v252 = v127 - v131;
  if (v127 != v131)
  {
    memmove(&__dst, &v126[v131], v132);
  }

  v251[v132 - 8] = 0;
  if ((v252 & 0x80u) == 0)
  {
    v133 = &__dst;
  }

  else
  {
    v133 = __dst;
  }

  if (!v133)
  {
    cf = 0;
    if ((v252 & 0x80) == 0)
    {
      goto LABEL_298;
    }

    goto LABEL_297;
  }

  if ((v252 & 0x80u) == 0)
  {
    v134 = v252;
  }

  else
  {
    v134 = *v251;
  }

  cf = CFStringCreateWithBytes(0, v133, v134, 0x8000100u, 0);
  if (!cf)
  {
    v164 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v164, "Could not construct");
  }

  if ((v252 & 0x80) != 0)
  {
LABEL_297:
    operator delete(__dst);
  }

LABEL_298:
  v135 = v166;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(v293, v166, &cf);
  v249[0] = v253;
  v249[1] = 41;
  *a2 = applesauce::CF::details::make_CFDictionaryRef(v249);
  v136 = 656;
  do
  {
    v137 = *&v251[v136 + 8];
    if (v137)
    {
      CFRelease(v137);
    }

    v138 = *&v251[v136];
    if (v138)
    {
      CFRelease(v138);
    }

    v136 -= 16;
  }

  while (v136);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v135)
  {
    CFRelease(v135);
  }

  if (v167)
  {
    CFRelease(v167);
  }

  if (v168)
  {
    CFRelease(v168);
  }

  if (v169)
  {
    CFRelease(v169);
  }

  if (v170)
  {
    CFRelease(v170);
  }

  if (v171)
  {
    CFRelease(v171);
  }

  if (v172)
  {
    CFRelease(v172);
  }

  if (v173)
  {
    CFRelease(v173);
  }

  if (v174)
  {
    CFRelease(v174);
  }

  if (v175)
  {
    CFRelease(v175);
  }

  if (v176)
  {
    CFRelease(v176);
  }

  if (v177)
  {
    CFRelease(v177);
  }

  if (v178)
  {
    CFRelease(v178);
  }

  if (v179)
  {
    CFRelease(v179);
  }

  if (v180)
  {
    CFRelease(v180);
  }

  if (v181)
  {
    CFRelease(v181);
  }

  if (v182)
  {
    CFRelease(v182);
  }

  if (v183)
  {
    CFRelease(v183);
  }

  if (v184)
  {
    CFRelease(v184);
  }

  if (v185)
  {
    CFRelease(v185);
  }

  if (v186)
  {
    CFRelease(v186);
  }

  if (v187)
  {
    CFRelease(v187);
  }

  if (v188)
  {
    CFRelease(v188);
  }

  if (v189)
  {
    CFRelease(v189);
  }

  if (v190)
  {
    CFRelease(v190);
  }

  if (v191)
  {
    CFRelease(v191);
  }

  if (v192)
  {
    CFRelease(v192);
  }

  if (v193)
  {
    CFRelease(v193);
  }

  if (v194)
  {
    CFRelease(v194);
  }

  if (v195)
  {
    CFRelease(v195);
  }

  if (v196)
  {
    CFRelease(v196);
  }

  if (v197)
  {
    CFRelease(v197);
  }

  if (v198)
  {
    CFRelease(v198);
  }

  if (v199)
  {
    CFRelease(v199);
  }

  if (v200)
  {
    CFRelease(v200);
  }

  if (v201)
  {
    CFRelease(v201);
  }

  if (v202)
  {
    CFRelease(v202);
  }

  if (v203)
  {
    CFRelease(v203);
  }

  if (v204)
  {
    CFRelease(v204);
  }

  if (v205)
  {
    CFRelease(v205);
  }

  if (v206)
  {
    CFRelease(v206);
  }

  if (v207)
  {
    CFRelease(v207);
  }

  if (v208)
  {
    CFRelease(v208);
  }

  if (v209)
  {
    CFRelease(v209);
  }

  if (v210)
  {
    CFRelease(v210);
  }

  if (v212)
  {
    CFRelease(v212);
  }

  if (v211)
  {
    CFRelease(v211);
  }

  if (v213)
  {
    CFRelease(v213);
  }

  if (v214)
  {
    CFRelease(v214);
  }

  if (v215)
  {
    CFRelease(v215);
  }

  if (v216)
  {
    CFRelease(v216);
  }

  if (v217)
  {
    CFRelease(v217);
  }

  if (v218)
  {
    CFRelease(v218);
  }

  if (v219)
  {
    CFRelease(v219);
  }

  if (v220)
  {
    CFRelease(v220);
  }

  if (v221)
  {
    CFRelease(v221);
  }

  if (v222)
  {
    CFRelease(v222);
  }

  if (v223)
  {
    CFRelease(v223);
  }

  if (v224)
  {
    CFRelease(v224);
  }

  if (v225)
  {
    CFRelease(v225);
  }

  if (v226)
  {
    CFRelease(v226);
  }

  if (v227)
  {
    CFRelease(v227);
  }

  if (v228)
  {
    CFRelease(v228);
  }

  if (v229)
  {
    CFRelease(v229);
  }

  if (v231)
  {
    CFRelease(v231);
  }

  if (v230)
  {
    CFRelease(v230);
  }

  if (v232)
  {
    CFRelease(v232);
  }

  if (v233)
  {
    CFRelease(v233);
  }

  if (v234)
  {
    CFRelease(v234);
  }

  if (v235)
  {
    CFRelease(v235);
  }

  if (v236)
  {
    CFRelease(v236);
  }

  if (v237)
  {
    CFRelease(v237);
  }

  if (v238)
  {
    CFRelease(v238);
  }

  if (v239)
  {
    CFRelease(v239);
  }

  if (v240)
  {
    CFRelease(v240);
  }

  if (v241)
  {
    CFRelease(v241);
  }

  if (v242)
  {
    CFRelease(v242);
  }

  if (v243)
  {
    CFRelease(v243);
  }

  if (v244)
  {
    CFRelease(v244);
  }

  if (v245)
  {
    CFRelease(v245);
  }

  if (v246)
  {
    CFRelease(v246);
  }

  if (v247)
  {
    CFRelease(v247);
  }

  if (v248)
  {
    CFRelease(v248);
  }

  v139 = *MEMORY[0x277D85DE8];
}

void sub_272603584(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  JUMPOUT(0x27260413CLL);
}

void sub_272603CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  v10 = -656;
  v11 = v9;
  do
  {
    applesauce::CF::TypeRefPair::~TypeRefPair(v11);
    v11 = (v12 - 16);
    v10 += 16;
  }

  while (v10);
  applesauce::CF::StringRef::~StringRef(&a9);
  JUMPOUT(0x272604140);
}

void sub_272603CE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603CE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603CF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603CF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D00(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D08(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D10(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D18(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D20(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D44(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D54(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D64(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D74(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D84(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D94(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603D9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603DA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603DB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603DC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603DC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603DDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603DE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272604460);
  }

  JUMPOUT(0x272604458);
}

void sub_272603F40(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    vp::utility::exception_match<std::bad_cast>();
  }

  JUMPOUT(0x272604464);
}

void sub_272603F54(int a1)
{
  if (a1)
  {
    std::current_exception();
    v1.__ptr_ = &STACK[0x2B0];
    std::rethrow_exception(v1);
    sub_2726040C8();
  }

  _os_crash();
  __break(1u);
}

void sub_272603FC0(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    vp::utility::exception_match<std::bad_cast>();
  }

  JUMPOUT(0x272604464);
}

void sub_272603FD4(int a1)
{
  if (a1)
  {
    std::current_exception();
    v1.__ptr_ = &STACK[0x2B0];
    std::rethrow_exception(v1);
    sub_2726040C8();
  }

  _os_crash();
  __break(1u);
}

void sub_2726040A0(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    vp::utility::exception_match<std::bad_cast>();
  }

  JUMPOUT(0x272604464);
}

void sub_2726040B4(int a1)
{
  if (a1)
  {
    std::current_exception();
    v1.__ptr_ = &STACK[0x2B0];
    std::rethrow_exception(v1);
    sub_2726040C8();
  }

  _os_crash();
  __break(1u);
}

void sub_272604128(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(void *a1, CFTypeRef cf, const void **a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
  }

  a1[1] = v6;
  return a1;
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(void *a1, CFTypeRef cf, const void **a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
  }

  a1[1] = v6;
  return a1;
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(void *a1, CFTypeRef cf, const void **a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
  }

  a1[1] = v6;
  return a1;
}

char *vp::detail::reflect_value_name<(vp::vx::AirPods_Offload_Mode)0,128ul>(int a1)
{
  result = "vp::vx::AirPods_Offload_Mode::None]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::AirPods_Offload_Mode::Noise_Suppression]";
      break;
    case 2:
      result = "vp::vx::AirPods_Offload_Mode::Noise_Suppression_Studio]";
      break;
    case 3:
      result = "(vp::vx::AirPods_Offload_Mode)3]";
      break;
    case 4:
      result = "(vp::vx::AirPods_Offload_Mode)4]";
      break;
    case 5:
      result = "(vp::vx::AirPods_Offload_Mode)5]";
      break;
    case 6:
      result = "(vp::vx::AirPods_Offload_Mode)6]";
      break;
    case 7:
      result = "(vp::vx::AirPods_Offload_Mode)7]";
      break;
    case 8:
      result = "(vp::vx::AirPods_Offload_Mode)8]";
      break;
    case 9:
      result = "(vp::vx::AirPods_Offload_Mode)9]";
      break;
    case 10:
      result = "(vp::vx::AirPods_Offload_Mode)10]";
      break;
    case 11:
      result = "(vp::vx::AirPods_Offload_Mode)11]";
      break;
    case 12:
      result = "(vp::vx::AirPods_Offload_Mode)12]";
      break;
    case 13:
      result = "(vp::vx::AirPods_Offload_Mode)13]";
      break;
    case 14:
      result = "(vp::vx::AirPods_Offload_Mode)14]";
      break;
    case 15:
      result = "(vp::vx::AirPods_Offload_Mode)15]";
      break;
    case 16:
      result = "(vp::vx::AirPods_Offload_Mode)16]";
      break;
    case 17:
      result = "(vp::vx::AirPods_Offload_Mode)17]";
      break;
    case 18:
      result = "(vp::vx::AirPods_Offload_Mode)18]";
      break;
    case 19:
      result = "(vp::vx::AirPods_Offload_Mode)19]";
      break;
    case 20:
      result = "(vp::vx::AirPods_Offload_Mode)20]";
      break;
    case 21:
      result = "(vp::vx::AirPods_Offload_Mode)21]";
      break;
    case 22:
      result = "(vp::vx::AirPods_Offload_Mode)22]";
      break;
    case 23:
      result = "(vp::vx::AirPods_Offload_Mode)23]";
      break;
    case 24:
      result = "(vp::vx::AirPods_Offload_Mode)24]";
      break;
    case 25:
      result = "(vp::vx::AirPods_Offload_Mode)25]";
      break;
    case 26:
      result = "(vp::vx::AirPods_Offload_Mode)26]";
      break;
    case 27:
      result = "(vp::vx::AirPods_Offload_Mode)27]";
      break;
    case 28:
      result = "(vp::vx::AirPods_Offload_Mode)28]";
      break;
    case 29:
      result = "(vp::vx::AirPods_Offload_Mode)29]";
      break;
    case 30:
      result = "(vp::vx::AirPods_Offload_Mode)30]";
      break;
    case 31:
      result = "(vp::vx::AirPods_Offload_Mode)31]";
      break;
    case 32:
      result = "(vp::vx::AirPods_Offload_Mode)32]";
      break;
    case 33:
      result = "(vp::vx::AirPods_Offload_Mode)33]";
      break;
    case 34:
      result = "(vp::vx::AirPods_Offload_Mode)34]";
      break;
    case 35:
      result = "(vp::vx::AirPods_Offload_Mode)35]";
      break;
    case 36:
      result = "(vp::vx::AirPods_Offload_Mode)36]";
      break;
    case 37:
      result = "(vp::vx::AirPods_Offload_Mode)37]";
      break;
    case 38:
      result = "(vp::vx::AirPods_Offload_Mode)38]";
      break;
    case 39:
      result = "(vp::vx::AirPods_Offload_Mode)39]";
      break;
    case 40:
      result = "(vp::vx::AirPods_Offload_Mode)40]";
      break;
    case 41:
      result = "(vp::vx::AirPods_Offload_Mode)41]";
      break;
    case 42:
      result = "(vp::vx::AirPods_Offload_Mode)42]";
      break;
    case 43:
      result = "(vp::vx::AirPods_Offload_Mode)43]";
      break;
    case 44:
      result = "(vp::vx::AirPods_Offload_Mode)44]";
      break;
    case 45:
      result = "(vp::vx::AirPods_Offload_Mode)45]";
      break;
    case 46:
      result = "(vp::vx::AirPods_Offload_Mode)46]";
      break;
    case 47:
      result = "(vp::vx::AirPods_Offload_Mode)47]";
      break;
    case 48:
      result = "(vp::vx::AirPods_Offload_Mode)48]";
      break;
    case 49:
      result = "(vp::vx::AirPods_Offload_Mode)49]";
      break;
    case 50:
      result = "(vp::vx::AirPods_Offload_Mode)50]";
      break;
    case 51:
      result = "(vp::vx::AirPods_Offload_Mode)51]";
      break;
    case 52:
      result = "(vp::vx::AirPods_Offload_Mode)52]";
      break;
    case 53:
      result = "(vp::vx::AirPods_Offload_Mode)53]";
      break;
    case 54:
      result = "(vp::vx::AirPods_Offload_Mode)54]";
      break;
    case 55:
      result = "(vp::vx::AirPods_Offload_Mode)55]";
      break;
    case 56:
      result = "(vp::vx::AirPods_Offload_Mode)56]";
      break;
    case 57:
      result = "(vp::vx::AirPods_Offload_Mode)57]";
      break;
    case 58:
      result = "(vp::vx::AirPods_Offload_Mode)58]";
      break;
    case 59:
      result = "(vp::vx::AirPods_Offload_Mode)59]";
      break;
    case 60:
      result = "(vp::vx::AirPods_Offload_Mode)60]";
      break;
    case 61:
      result = "(vp::vx::AirPods_Offload_Mode)61]";
      break;
    case 62:
      result = "(vp::vx::AirPods_Offload_Mode)62]";
      break;
    case 63:
      result = "(vp::vx::AirPods_Offload_Mode)63]";
      break;
    case 64:
      result = "(vp::vx::AirPods_Offload_Mode)64]";
      break;
    case 65:
      result = "(vp::vx::AirPods_Offload_Mode)65]";
      break;
    case 66:
      result = "(vp::vx::AirPods_Offload_Mode)66]";
      break;
    case 67:
      result = "(vp::vx::AirPods_Offload_Mode)67]";
      break;
    case 68:
      result = "(vp::vx::AirPods_Offload_Mode)68]";
      break;
    case 69:
      result = "(vp::vx::AirPods_Offload_Mode)69]";
      break;
    case 70:
      result = "(vp::vx::AirPods_Offload_Mode)70]";
      break;
    case 71:
      result = "(vp::vx::AirPods_Offload_Mode)71]";
      break;
    case 72:
      result = "(vp::vx::AirPods_Offload_Mode)72]";
      break;
    case 73:
      result = "(vp::vx::AirPods_Offload_Mode)73]";
      break;
    case 74:
      result = "(vp::vx::AirPods_Offload_Mode)74]";
      break;
    case 75:
      result = "(vp::vx::AirPods_Offload_Mode)75]";
      break;
    case 76:
      result = "(vp::vx::AirPods_Offload_Mode)76]";
      break;
    case 77:
      result = "(vp::vx::AirPods_Offload_Mode)77]";
      break;
    case 78:
      result = "(vp::vx::AirPods_Offload_Mode)78]";
      break;
    case 79:
      result = "(vp::vx::AirPods_Offload_Mode)79]";
      break;
    case 80:
      result = "(vp::vx::AirPods_Offload_Mode)80]";
      break;
    case 81:
      result = "(vp::vx::AirPods_Offload_Mode)81]";
      break;
    case 82:
      result = "(vp::vx::AirPods_Offload_Mode)82]";
      break;
    case 83:
      result = "(vp::vx::AirPods_Offload_Mode)83]";
      break;
    case 84:
      result = "(vp::vx::AirPods_Offload_Mode)84]";
      break;
    case 85:
      result = "(vp::vx::AirPods_Offload_Mode)85]";
      break;
    case 86:
      result = "(vp::vx::AirPods_Offload_Mode)86]";
      break;
    case 87:
      result = "(vp::vx::AirPods_Offload_Mode)87]";
      break;
    case 88:
      result = "(vp::vx::AirPods_Offload_Mode)88]";
      break;
    case 89:
      result = "(vp::vx::AirPods_Offload_Mode)89]";
      break;
    case 90:
      result = "(vp::vx::AirPods_Offload_Mode)90]";
      break;
    case 91:
      result = "(vp::vx::AirPods_Offload_Mode)91]";
      break;
    case 92:
      result = "(vp::vx::AirPods_Offload_Mode)92]";
      break;
    case 93:
      result = "(vp::vx::AirPods_Offload_Mode)93]";
      break;
    case 94:
      result = "(vp::vx::AirPods_Offload_Mode)94]";
      break;
    case 95:
      result = "(vp::vx::AirPods_Offload_Mode)95]";
      break;
    case 96:
      result = "(vp::vx::AirPods_Offload_Mode)96]";
      break;
    case 97:
      result = "(vp::vx::AirPods_Offload_Mode)97]";
      break;
    case 98:
      result = "(vp::vx::AirPods_Offload_Mode)98]";
      break;
    case 99:
      result = "(vp::vx::AirPods_Offload_Mode)99]";
      break;
    case 100:
      result = "(vp::vx::AirPods_Offload_Mode)100]";
      break;
    case 101:
      result = "(vp::vx::AirPods_Offload_Mode)101]";
      break;
    case 102:
      result = "(vp::vx::AirPods_Offload_Mode)102]";
      break;
    case 103:
      result = "(vp::vx::AirPods_Offload_Mode)103]";
      break;
    case 104:
      result = "(vp::vx::AirPods_Offload_Mode)104]";
      break;
    case 105:
      result = "(vp::vx::AirPods_Offload_Mode)105]";
      break;
    case 106:
      result = "(vp::vx::AirPods_Offload_Mode)106]";
      break;
    case 107:
      result = "(vp::vx::AirPods_Offload_Mode)107]";
      break;
    case 108:
      result = "(vp::vx::AirPods_Offload_Mode)108]";
      break;
    case 109:
      result = "(vp::vx::AirPods_Offload_Mode)109]";
      break;
    case 110:
      result = "(vp::vx::AirPods_Offload_Mode)110]";
      break;
    case 111:
      result = "(vp::vx::AirPods_Offload_Mode)111]";
      break;
    case 112:
      result = "(vp::vx::AirPods_Offload_Mode)112]";
      break;
    case 113:
      result = "(vp::vx::AirPods_Offload_Mode)113]";
      break;
    case 114:
      result = "(vp::vx::AirPods_Offload_Mode)114]";
      break;
    case 115:
      result = "(vp::vx::AirPods_Offload_Mode)115]";
      break;
    case 116:
      result = "(vp::vx::AirPods_Offload_Mode)116]";
      break;
    case 117:
      result = "(vp::vx::AirPods_Offload_Mode)117]";
      break;
    case 118:
      result = "(vp::vx::AirPods_Offload_Mode)118]";
      break;
    case 119:
      result = "(vp::vx::AirPods_Offload_Mode)119]";
      break;
    case 120:
      result = "(vp::vx::AirPods_Offload_Mode)120]";
      break;
    case 121:
      result = "(vp::vx::AirPods_Offload_Mode)121]";
      break;
    case 122:
      result = "(vp::vx::AirPods_Offload_Mode)122]";
      break;
    case 123:
      result = "(vp::vx::AirPods_Offload_Mode)123]";
      break;
    case 124:
      result = "(vp::vx::AirPods_Offload_Mode)124]";
      break;
    case 125:
      result = "(vp::vx::AirPods_Offload_Mode)125]";
      break;
    case 126:
      result = "(vp::vx::AirPods_Offload_Mode)126]";
      break;
    case 127:
      result = "(vp::vx::AirPods_Offload_Mode)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::AirPods_Offload_Mode)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

char *vp::detail::reflect_value_name<(vp::vx::Operation_Mode)0,128ul>(int a1)
{
  result = "vp::vx::Operation_Mode::Generic]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::Operation_Mode::Baseband_Call]";
      break;
    case 2:
      result = "vp::vx::Operation_Mode::Face_Time_Video]";
      break;
    case 3:
      result = "vp::vx::Operation_Mode::Game_Chat]";
      break;
    case 4:
      result = "vp::vx::Operation_Mode::Face_Time_Audio]";
      break;
    case 5:
      result = "vp::vx::Operation_Mode::Call_Continuity]";
      break;
    case 6:
      result = "vp::vx::Operation_Mode::Wifi_Call]";
      break;
    case 7:
      result = "vp::vx::Operation_Mode::Home_Kit]";
      break;
    case 8:
      result = "vp::vx::Operation_Mode::Half_Duplex]";
      break;
    case 9:
      result = "(vp::vx::Operation_Mode)9]";
      break;
    case 10:
      result = "(vp::vx::Operation_Mode)10]";
      break;
    case 11:
      result = "(vp::vx::Operation_Mode)11]";
      break;
    case 12:
      result = "(vp::vx::Operation_Mode)12]";
      break;
    case 13:
      result = "(vp::vx::Operation_Mode)13]";
      break;
    case 14:
      result = "(vp::vx::Operation_Mode)14]";
      break;
    case 15:
      result = "(vp::vx::Operation_Mode)15]";
      break;
    case 16:
      result = "(vp::vx::Operation_Mode)16]";
      break;
    case 17:
      result = "(vp::vx::Operation_Mode)17]";
      break;
    case 18:
      result = "(vp::vx::Operation_Mode)18]";
      break;
    case 19:
      result = "(vp::vx::Operation_Mode)19]";
      break;
    case 20:
      result = "(vp::vx::Operation_Mode)20]";
      break;
    case 21:
      result = "(vp::vx::Operation_Mode)21]";
      break;
    case 22:
      result = "(vp::vx::Operation_Mode)22]";
      break;
    case 23:
      result = "(vp::vx::Operation_Mode)23]";
      break;
    case 24:
      result = "(vp::vx::Operation_Mode)24]";
      break;
    case 25:
      result = "(vp::vx::Operation_Mode)25]";
      break;
    case 26:
      result = "(vp::vx::Operation_Mode)26]";
      break;
    case 27:
      result = "(vp::vx::Operation_Mode)27]";
      break;
    case 28:
      result = "(vp::vx::Operation_Mode)28]";
      break;
    case 29:
      result = "(vp::vx::Operation_Mode)29]";
      break;
    case 30:
      result = "(vp::vx::Operation_Mode)30]";
      break;
    case 31:
      result = "(vp::vx::Operation_Mode)31]";
      break;
    case 32:
      result = "(vp::vx::Operation_Mode)32]";
      break;
    case 33:
      result = "(vp::vx::Operation_Mode)33]";
      break;
    case 34:
      result = "(vp::vx::Operation_Mode)34]";
      break;
    case 35:
      result = "(vp::vx::Operation_Mode)35]";
      break;
    case 36:
      result = "(vp::vx::Operation_Mode)36]";
      break;
    case 37:
      result = "(vp::vx::Operation_Mode)37]";
      break;
    case 38:
      result = "(vp::vx::Operation_Mode)38]";
      break;
    case 39:
      result = "(vp::vx::Operation_Mode)39]";
      break;
    case 40:
      result = "(vp::vx::Operation_Mode)40]";
      break;
    case 41:
      result = "(vp::vx::Operation_Mode)41]";
      break;
    case 42:
      result = "(vp::vx::Operation_Mode)42]";
      break;
    case 43:
      result = "(vp::vx::Operation_Mode)43]";
      break;
    case 44:
      result = "(vp::vx::Operation_Mode)44]";
      break;
    case 45:
      result = "(vp::vx::Operation_Mode)45]";
      break;
    case 46:
      result = "(vp::vx::Operation_Mode)46]";
      break;
    case 47:
      result = "(vp::vx::Operation_Mode)47]";
      break;
    case 48:
      result = "(vp::vx::Operation_Mode)48]";
      break;
    case 49:
      result = "(vp::vx::Operation_Mode)49]";
      break;
    case 50:
      result = "(vp::vx::Operation_Mode)50]";
      break;
    case 51:
      result = "(vp::vx::Operation_Mode)51]";
      break;
    case 52:
      result = "(vp::vx::Operation_Mode)52]";
      break;
    case 53:
      result = "(vp::vx::Operation_Mode)53]";
      break;
    case 54:
      result = "(vp::vx::Operation_Mode)54]";
      break;
    case 55:
      result = "(vp::vx::Operation_Mode)55]";
      break;
    case 56:
      result = "(vp::vx::Operation_Mode)56]";
      break;
    case 57:
      result = "(vp::vx::Operation_Mode)57]";
      break;
    case 58:
      result = "(vp::vx::Operation_Mode)58]";
      break;
    case 59:
      result = "(vp::vx::Operation_Mode)59]";
      break;
    case 60:
      result = "(vp::vx::Operation_Mode)60]";
      break;
    case 61:
      result = "(vp::vx::Operation_Mode)61]";
      break;
    case 62:
      result = "(vp::vx::Operation_Mode)62]";
      break;
    case 63:
      result = "(vp::vx::Operation_Mode)63]";
      break;
    case 64:
      result = "(vp::vx::Operation_Mode)64]";
      break;
    case 65:
      result = "(vp::vx::Operation_Mode)65]";
      break;
    case 66:
      result = "(vp::vx::Operation_Mode)66]";
      break;
    case 67:
      result = "(vp::vx::Operation_Mode)67]";
      break;
    case 68:
      result = "(vp::vx::Operation_Mode)68]";
      break;
    case 69:
      result = "(vp::vx::Operation_Mode)69]";
      break;
    case 70:
      result = "(vp::vx::Operation_Mode)70]";
      break;
    case 71:
      result = "(vp::vx::Operation_Mode)71]";
      break;
    case 72:
      result = "(vp::vx::Operation_Mode)72]";
      break;
    case 73:
      result = "(vp::vx::Operation_Mode)73]";
      break;
    case 74:
      result = "(vp::vx::Operation_Mode)74]";
      break;
    case 75:
      result = "(vp::vx::Operation_Mode)75]";
      break;
    case 76:
      result = "(vp::vx::Operation_Mode)76]";
      break;
    case 77:
      result = "(vp::vx::Operation_Mode)77]";
      break;
    case 78:
      result = "(vp::vx::Operation_Mode)78]";
      break;
    case 79:
      result = "(vp::vx::Operation_Mode)79]";
      break;
    case 80:
      result = "(vp::vx::Operation_Mode)80]";
      break;
    case 81:
      result = "(vp::vx::Operation_Mode)81]";
      break;
    case 82:
      result = "(vp::vx::Operation_Mode)82]";
      break;
    case 83:
      result = "(vp::vx::Operation_Mode)83]";
      break;
    case 84:
      result = "(vp::vx::Operation_Mode)84]";
      break;
    case 85:
      result = "(vp::vx::Operation_Mode)85]";
      break;
    case 86:
      result = "(vp::vx::Operation_Mode)86]";
      break;
    case 87:
      result = "(vp::vx::Operation_Mode)87]";
      break;
    case 88:
      result = "(vp::vx::Operation_Mode)88]";
      break;
    case 89:
      result = "(vp::vx::Operation_Mode)89]";
      break;
    case 90:
      result = "(vp::vx::Operation_Mode)90]";
      break;
    case 91:
      result = "(vp::vx::Operation_Mode)91]";
      break;
    case 92:
      result = "(vp::vx::Operation_Mode)92]";
      break;
    case 93:
      result = "(vp::vx::Operation_Mode)93]";
      break;
    case 94:
      result = "(vp::vx::Operation_Mode)94]";
      break;
    case 95:
      result = "(vp::vx::Operation_Mode)95]";
      break;
    case 96:
      result = "(vp::vx::Operation_Mode)96]";
      break;
    case 97:
      result = "(vp::vx::Operation_Mode)97]";
      break;
    case 98:
      result = "(vp::vx::Operation_Mode)98]";
      break;
    case 99:
      result = "(vp::vx::Operation_Mode)99]";
      break;
    case 100:
      result = "(vp::vx::Operation_Mode)100]";
      break;
    case 101:
      result = "(vp::vx::Operation_Mode)101]";
      break;
    case 102:
      result = "(vp::vx::Operation_Mode)102]";
      break;
    case 103:
      result = "(vp::vx::Operation_Mode)103]";
      break;
    case 104:
      result = "(vp::vx::Operation_Mode)104]";
      break;
    case 105:
      result = "(vp::vx::Operation_Mode)105]";
      break;
    case 106:
      result = "(vp::vx::Operation_Mode)106]";
      break;
    case 107:
      result = "(vp::vx::Operation_Mode)107]";
      break;
    case 108:
      result = "(vp::vx::Operation_Mode)108]";
      break;
    case 109:
      result = "(vp::vx::Operation_Mode)109]";
      break;
    case 110:
      result = "(vp::vx::Operation_Mode)110]";
      break;
    case 111:
      result = "(vp::vx::Operation_Mode)111]";
      break;
    case 112:
      result = "(vp::vx::Operation_Mode)112]";
      break;
    case 113:
      result = "(vp::vx::Operation_Mode)113]";
      break;
    case 114:
      result = "(vp::vx::Operation_Mode)114]";
      break;
    case 115:
      result = "(vp::vx::Operation_Mode)115]";
      break;
    case 116:
      result = "(vp::vx::Operation_Mode)116]";
      break;
    case 117:
      result = "(vp::vx::Operation_Mode)117]";
      break;
    case 118:
      result = "(vp::vx::Operation_Mode)118]";
      break;
    case 119:
      result = "(vp::vx::Operation_Mode)119]";
      break;
    case 120:
      result = "(vp::vx::Operation_Mode)120]";
      break;
    case 121:
      result = "(vp::vx::Operation_Mode)121]";
      break;
    case 122:
      result = "(vp::vx::Operation_Mode)122]";
      break;
    case 123:
      result = "(vp::vx::Operation_Mode)123]";
      break;
    case 124:
      result = "(vp::vx::Operation_Mode)124]";
      break;
    case 125:
      result = "(vp::vx::Operation_Mode)125]";
      break;
    case 126:
      result = "(vp::vx::Operation_Mode)126]";
      break;
    case 127:
      result = "(vp::vx::Operation_Mode)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Operation_Mode)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

void vp::vx::database::v1::runtime::Data_Manager::deserialize(uint64_t a1, CFTypeRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v3 = v2;
  vp::utility::Property_List_Parser::Property_List_Parser(v4, v2);
}

{
  v2 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v3 = v2;
  vp::utility::Property_List_Parser::Property_List_Parser(v4, v2);
}

{
  v2 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v3 = v2;
  vp::utility::Property_List_Parser::Property_List_Parser(v4, v2);
}

{
  v2 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v3 = v2;
  vp::utility::Property_List_Parser::Property_List_Parser(v4, v2);
}

{
  v2 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
    vp::utility::Property_List_Parser::Property_List_Parser(v3, v2);
  }

  vp::utility::Property_List_Parser::Property_List_Parser(v3, 0);
}

{
  v2 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
    vp::utility::Property_List_Parser::Property_List_Parser(v3, v2);
  }

  vp::utility::Property_List_Parser::Property_List_Parser(v3, 0);
}

{
  v2 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
    vp::utility::Property_List_Parser::Property_List_Parser(v3, v2);
  }

  vp::utility::Property_List_Parser::Property_List_Parser(v3, 0);
}

void sub_272605364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  v17 = *(v15 - 40);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  applesauce::CF::StringRef::~StringRef(&a9);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  _Unwind_Resume(a1);
}

void vp::vx::database::v1::runtime::detail::make_tag(__CFString **a1, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      CFRetain(@"Dynamics");
      v5 = CFGetTypeID(@"Dynamics");
      if (v5 == CFStringGetTypeID())
      {
        v4 = @"Dynamics";
        goto LABEL_12;
      }

      *a1 = 0;
      CFRelease(@"Dynamics");
    }

    else
    {
      CFRetain(@"Hardware");
      v7 = CFGetTypeID(@"Hardware");
      if (v7 == CFStringGetTypeID())
      {
        v4 = @"Hardware";
        goto LABEL_12;
      }

      *a1 = 0;
      CFRelease(@"Hardware");
    }
  }

  else if (a2)
  {
    CFRetain(@"Voice");
    v6 = CFGetTypeID(@"Voice");
    if (v6 == CFStringGetTypeID())
    {
      v4 = @"Voice";
      goto LABEL_12;
    }

    *a1 = 0;
    CFRelease(@"Voice");
  }

  else
  {
    CFRetain(@"Voice_Mix");
    v3 = CFGetTypeID(@"Voice_Mix");
    if (v3 == CFStringGetTypeID())
    {
      v4 = @"Voice_Mix";
LABEL_12:
      *a1 = v4;
      return;
    }

    *a1 = 0;
    CFRelease(@"Voice_Mix");
  }
}

{
  if (a2 == 2)
  {
    CFRetain(@"Content");
    v5 = CFGetTypeID(@"Content");
    if (v5 == CFStringGetTypeID())
    {
      v4 = @"Content";
      goto LABEL_9;
    }

    *a1 = 0;
    CFRelease(@"Content");
  }

  else if (a2 == 1)
  {
    CFRetain(@"Echo");
    v3 = CFGetTypeID(@"Echo");
    if (v3 == CFStringGetTypeID())
    {
      v4 = @"Echo";
LABEL_9:
      *a1 = v4;
      return;
    }

    *a1 = 0;
    CFRelease(@"Echo");
  }

  else
  {
    CFRetain(@"Hardware");
    v6 = CFGetTypeID(@"Hardware");
    if (v6 == CFStringGetTypeID())
    {
      v4 = @"Hardware";
      goto LABEL_9;
    }

    *a1 = 0;
    CFRelease(@"Hardware");
  }
}

void vp::vx::database::v1::runtime::detail::from_plist(uint64_t *a1)
{
  (*(**a1 + 16))(&cf);
  if (cf)
  {
    CFRelease(cf);
  }

  vp::utility::Property_List_Parser::operator[](&v2, a1, @"PreferredSampleRateHz");
}

void sub_272605938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

double vp::utility::Property_List_Parser::Object::operator double<double>(uint64_t a1)
{
  (*(*a1 + 16))(&cf);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v1 = applesauce::CF::convert_to<double,0>(cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

void sub_272605A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::TypeRef::~TypeRef(&a10);
  _Unwind_Resume(a1);
}

void caulk::function_ref<void ()(applesauce::CF::StringRef,vp::utility::Property_List_Parser)>::functor_invoker<vp::vx::database::v1::runtime::detail::from_plist(vp::utility::Property_List_Parser const&,vp::vx::DSP_Node_Configuration_Options &)::$_1>(uint64_t **a1, const __CFString **a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  *a2 = 0;
  v6 = *a3;
  v5 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(__p, v4);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = vp::utility::Property_List_Parser::Object::operator unsigned int<unsigned int>(v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v8 = *v3;
  v12 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v8 + 136), __p) + 10) = v7;
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  CFRelease(v4);
}

void sub_272605B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  __cxa_free_exception(v17);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t vp::utility::Property_List_Parser::Object::operator unsigned int<unsigned int>(uint64_t a1)
{
  (*(*a1 + 16))(&cf);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v1 = applesauce::CF::convert_to<unsigned int,0>(cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

void sub_272605C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::TypeRef::~TypeRef(&a10);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2)
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

void caulk::function_ref<void ()(applesauce::CF::StringRef,vp::utility::Property_List_Parser)>::functor_invoker<vp::vx::database::v1::runtime::detail::from_plist(vp::utility::Property_List_Parser const&,vp::vx::DSP_Node_Configuration_Options &)::$_0>(uint64_t **a1, const __CFString **a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  *a2 = 0;
  v6 = *a3;
  v5 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(__p, v4);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = vp::utility::Property_List_Parser::Object::operator unsigned int<unsigned int>(v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v8 = *v3;
  v12 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v8 + 96), __p) + 10) = v7;
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  CFRelease(v4);
}

void sub_272606034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  __cxa_free_exception(v17);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

double applesauce::CF::convert_to<double,0>(const __CFNumber *a1)
{
  v1 = COERCE_DOUBLE(applesauce::CF::convert_as<double,0>(a1));
  if ((v2 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return v1;
}

unint64_t applesauce::CF::convert_as<double,0>(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        v12 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_18;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v11 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_27;
      case kCFNumberSInt64Type:
        valuePtr = 0;
        v6 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_25;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v7 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_10;
      case kCFNumberFloat64Type:
        valuePtr = 0;
        v10 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_20;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_23:
        v8 = Value == 0;
        v13 = valuePtr;
        goto LABEL_28;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        v12 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_18:
        v8 = v12 == 0;
        v13 = valuePtr;
        goto LABEL_28;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v11 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
LABEL_27:
        v8 = v11 == 0;
        v13 = valuePtr;
LABEL_28:
        v9 = v13;
        goto LABEL_29;
      case kCFNumberLongType:
        valuePtr = 0;
        v6 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_25;
      case kCFNumberLongLongType:
        valuePtr = 0;
        v6 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_25;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v7 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_10:
        v8 = v7 == 0;
        v9 = *&valuePtr;
        goto LABEL_29;
      case kCFNumberDoubleType:
        valuePtr = 0;
        v10 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_20;
      case kCFNumberCFIndexType:
        valuePtr = 0;
        v6 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_25;
      case kCFNumberNSIntegerType:
        valuePtr = 0;
        v6 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_25:
        v8 = v6 == 0;
        v9 = valuePtr;
LABEL_29:
        v14 = v9;
        goto LABEL_30;
      case kCFNumberCGFloatType:
        valuePtr = 0;
        v10 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_20:
        v8 = v10 == 0;
        v14 = *&valuePtr;
LABEL_30:
        if (v8)
        {
          v14 = 0.0;
        }

        v15 = *&v14 & 0xFFFFFFFFFFFFFF00;
        break;
      default:
        v15 = 0;
        LOBYTE(v14) = 0;
        break;
    }

    return LOBYTE(v14) | v15;
  }

  else
  {
    v4 = CFBooleanGetTypeID();
    if (v4 == CFGetTypeID(a1))
    {
      *&result = CFBooleanGetValue(a1);
    }

    else
    {
      *&result = 0.0;
    }
  }

  return result;
}

void sub_2726064AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  v17 = *(v15 - 40);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  applesauce::CF::StringRef::~StringRef(&a9);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  _Unwind_Resume(a1);
}

void vp::vx::database::v1::runtime::detail::from_plist(vp::vx::database::v1::runtime::detail *this, const vp::utility::Property_List_Parser *a2, vp::vx::DSP_Node_Configuration *a3)
{
  (*(**this + 16))(&cf);
  if (cf)
  {
    CFRelease(cf);
  }

  vp::utility::Property_List_Parser::operator[](&v5, this, @"DSPGraphFilePath");
}

void sub_272606C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::database::v1::runtime::detail::from_plist(vp::vx::database::v1::runtime::detail *this, std::__shared_weak_count *a2, std::__fs::filesystem::path *a3)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  _ZNK2vp7utility20Property_List_Parser6ObjectcvT_INSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEv(&v5, this);
  if (SHIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(a3->__pn_.__r_.__value_.__l.__data_);
  }

  *&a3->__pn_.__r_.__value_.__l.__data_ = v5;
  a3->__pn_.__r_.__value_.__r.__words[2] = v6;
  HIBYTE(v6) = 0;
  LOBYTE(v5) = 0;
  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }
}

void sub_272606D70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::utility::Property_List_Parser::Object::operator BOOL<BOOL>(uint64_t a1)
{
  (*(*a1 + 16))(&cf);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v1 = applesauce::CF::convert_to<BOOL,0>(cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

void sub_272606E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::TypeRef::~TypeRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t applesauce::CF::convert_to<BOOL,0>(const __CFBoolean *a1)
{
  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    LOBYTE(v3) = CFBooleanGetValue(a1) != 0;
  }

  else
  {
    v4 = CFNumberGetTypeID();
    if (v4 != CFGetTypeID(a1) || (v3 = applesauce::CF::details::number_convert_as<BOOL>(a1), v3 <= 0xFFu))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::convert_error(exception);
    }
  }

  return v3 & 1;
}

void caulk::function_ref<void ()(vp::utility::Property_List_Parser)>::functor_invoker<vp::vx::database::v1::runtime::detail::from_plist(vp::utility::Property_List_Parser const&,vp::vx::DSP_Node_Configuration &)::$_5>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  *v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *v2;
  vp::utility::Property_List_Parser::operator[](&v5, v4, @"ID");
}

void sub_2726070C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void vp::utility::Property_List_Parser::Object::operator applesauce::CF::DictionaryRef<applesauce::CF::DictionaryRef>(void *a1, uint64_t a2)
{
  (*(*a2 + 16))(&cf, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2726071B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      *v8 = *v7;
      *(v8 + 8) = *(v7 + 8);
      *(v7 + 8) = 0;
      v7 += 16;
      v8 += 16;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<std::tuple<unsigned int,applesauce::CF::DictionaryRef>,0>(*(v4 + 8));
      v4 += 16;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v9 = a1[1];
  a1[1] = a2[2];
  a2[2] = v9;
  v10 = a1[2];
  a1[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    std::__destroy_at[abi:ne200100]<std::tuple<unsigned int,applesauce::CF::DictionaryRef>,0>(*(i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFDictionaryGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFDictionaryGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_2726073C8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void caulk::function_ref<void ()(vp::utility::Property_List_Parser)>::functor_invoker<vp::vx::database::v1::runtime::detail::from_plist(vp::utility::Property_List_Parser const&,vp::vx::DSP_Node_Configuration &)::$_4>(uint64_t **a1, __int128 *a2)
{
  v2 = *a1;
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = *v2;
  vp::utility::Property_List_Parser::operator[](&v5, &v4, @"ID");
}

void sub_2726075CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  operator delete(v21);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
    if (!v19)
    {
LABEL_7:
      if (!v18)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (!v19)
  {
    goto LABEL_7;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  if (!v18)
  {
LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_8:
  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  goto LABEL_9;
}

void sub_272607654()
{
  if (!v0)
  {
    JUMPOUT(0x272607634);
  }

  JUMPOUT(0x27260762CLL);
}

float vp::utility::Property_List_Parser::Object::operator float<float>(uint64_t a1)
{
  (*(*a1 + 16))(&cf);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v1 = applesauce::CF::convert_to<float,0>(cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

void sub_272607710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::TypeRef::~TypeRef(&a10);
  _Unwind_Resume(a1);
}

void caulk::function_ref<void ()(vp::utility::Property_List_Parser)>::functor_invoker<vp::vx::database::v1::runtime::detail::from_plist(vp::utility::Property_List_Parser const&,vp::vx::DSP_Node_Configuration &)::$_3>(uint64_t **a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *v2;
  v6 = *(*v2 + 120);
  v5 = *(*v2 + 128);
  v7 = v3;
  if (v6 >= v5)
  {
    v9 = *(v4 + 112);
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v9) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v11;
    }

    v21.__end_cap_.__value_ = (v4 + 112);
    if (v13)
    {
      std::allocator<std::string>::allocate_at_least[abi:ne200100](v13);
    }

    v14 = 24 * v10;
    v21.__end_cap_.__value_ = 0;
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    v21.__end_ = (24 * v10 + 24);
    v15 = *(v4 + 112);
    v16 = *(v4 + 120);
    v17 = 24 * v10 + v15 - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(v4 + 112, v15, v16, v14 + v15 - v16);
    v18 = *(v4 + 112);
    *(v4 + 112) = v17;
    v19 = *(v4 + 128);
    end = v21.__end_;
    *(v4 + 120) = *&v21.__end_;
    v21.__end_ = v18;
    v21.__end_cap_.__value_ = v19;
    v21.__first_ = v18;
    v21.__begin_ = v18;
    std::__split_buffer<std::string>::~__split_buffer(&v21);
    v8 = end;
  }

  else
  {
    v6->__r_.__value_.__r.__words[0] = 0;
    v6->__r_.__value_.__l.__size_ = 0;
    v8 = v6 + 1;
    v6->__r_.__value_.__r.__words[2] = 0;
  }

  *(v4 + 120) = v8;
  vp::vx::database::v1::runtime::detail::from_plist(v7, *(&v7 + 1), &v8[-1]);
  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
  }
}

void sub_272607898(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void caulk::function_ref<void ()(vp::utility::Property_List_Parser)>::functor_invoker<vp::vx::database::v1::runtime::detail::from_plist(vp::utility::Property_List_Parser const&,vp::vx::DSP_Node_Configuration &)::$_2>(uint64_t **a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *v2;
  v6 = *(*v2 + 96);
  v5 = *(*v2 + 104);
  v7 = v3;
  if (v6 >= v5)
  {
    v9 = *(v4 + 88);
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v9) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v11;
    }

    v21.__end_cap_.__value_ = (v4 + 88);
    if (v13)
    {
      std::allocator<std::string>::allocate_at_least[abi:ne200100](v13);
    }

    v14 = 24 * v10;
    v21.__end_cap_.__value_ = 0;
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    v21.__end_ = (24 * v10 + 24);
    v15 = *(v4 + 88);
    v16 = *(v4 + 96);
    v17 = 24 * v10 + v15 - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(v4 + 88, v15, v16, v14 + v15 - v16);
    v18 = *(v4 + 88);
    *(v4 + 88) = v17;
    v19 = *(v4 + 104);
    end = v21.__end_;
    *(v4 + 96) = *&v21.__end_;
    v21.__end_ = v18;
    v21.__end_cap_.__value_ = v19;
    v21.__first_ = v18;
    v21.__begin_ = v18;
    std::__split_buffer<std::string>::~__split_buffer(&v21);
    v8 = end;
  }

  else
  {
    v6->__r_.__value_.__r.__words[0] = 0;
    v6->__r_.__value_.__l.__size_ = 0;
    v8 = v6 + 1;
    v6->__r_.__value_.__r.__words[2] = 0;
  }

  *(v4 + 96) = v8;
  vp::vx::database::v1::runtime::detail::from_plist(v7, *(&v7 + 1), &v8[-1]);
  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
  }
}

void sub_272607A10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void caulk::function_ref<void ()(vp::utility::Property_List_Parser)>::functor_invoker<vp::vx::database::v1::runtime::detail::from_plist(vp::utility::Property_List_Parser const&,vp::vx::DSP_Node_Configuration &)::$_1>(uint64_t **a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *v2;
  v6 = *(*v2 + 72);
  v5 = *(*v2 + 80);
  v7 = v3;
  if (v6 >= v5)
  {
    v9 = *(v4 + 64);
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v9) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v11;
    }

    v21.__end_cap_.__value_ = (v4 + 64);
    if (v13)
    {
      std::allocator<std::string>::allocate_at_least[abi:ne200100](v13);
    }

    v14 = 24 * v10;
    v21.__end_cap_.__value_ = 0;
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    v21.__end_ = (24 * v10 + 24);
    v15 = *(v4 + 64);
    v16 = *(v4 + 72);
    v17 = 24 * v10 + v15 - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(v4 + 64, v15, v16, v14 + v15 - v16);
    v18 = *(v4 + 64);
    *(v4 + 64) = v17;
    v19 = *(v4 + 80);
    end = v21.__end_;
    *(v4 + 72) = *&v21.__end_;
    v21.__end_ = v18;
    v21.__end_cap_.__value_ = v19;
    v21.__first_ = v18;
    v21.__begin_ = v18;
    std::__split_buffer<std::string>::~__split_buffer(&v21);
    v8 = end;
  }

  else
  {
    v6->__r_.__value_.__r.__words[0] = 0;
    v6->__r_.__value_.__l.__size_ = 0;
    v8 = v6 + 1;
    v6->__r_.__value_.__r.__words[2] = 0;
  }

  *(v4 + 72) = v8;
  vp::vx::database::v1::runtime::detail::from_plist(v7, *(&v7 + 1), &v8[-1]);
  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
  }
}

void sub_272607B88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void caulk::function_ref<void ()(applesauce::CF::StringRef,vp::utility::Property_List_Parser)>::functor_invoker<vp::vx::database::v1::runtime::detail::from_plist(vp::utility::Property_List_Parser const&,vp::vx::DSP_Node_Configuration &)::$_0>(int8x8_t ***a1, const __CFString **a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  *a2 = 0;
  v6 = *a3;
  v5 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v7 = *v3;
  applesauce::CF::convert_to<std::string,0>(__p, v4);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = std::__string_hash<char>::operator()[abi:ne200100](__p);
  v9 = v8;
  v10 = v7[4];
  if (!*&v10)
  {
    goto LABEL_21;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*&v7[3] + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_21;
    }

LABEL_20:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v15 + 2, __p))
  {
    goto LABEL_20;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  CFRelease(v4);
}

void sub_272607EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](&a17);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

void _ZNK2vp7utility20Property_List_Parser6ObjectcvT_INSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEv(UInt8 *a1, uint64_t a2)
{
  (*(*a2 + 16))(&cf, a2);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_272607FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::TypeRef::~TypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_27260810C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  v17 = *(v15 - 40);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  applesauce::CF::StringRef::~StringRef(&a9);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  _Unwind_Resume(a1);
}

void sub_2726083A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  v17 = *(v15 - 40);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  applesauce::CF::StringRef::~StringRef(&a9);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  _Unwind_Resume(a1);
}

void sub_272608730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::database::v1::runtime::detail::check_dictionary(uint64_t a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vp::utility::Property_List_Parser::Object::operator applesauce::CF::DictionaryRef<applesauce::CF::DictionaryRef>(&cf, a1);
  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_272608830(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_272609444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef((v31 - 80));
  applesauce::CF::StringRef::~StringRef((v31 - 72));
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  v33 = *(v31 - 112);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(a1);
}

void vp::utility::Property_List_Parser::Object::operator applesauce::CF::StringRef<applesauce::CF::StringRef>(void *a1, uint64_t a2)
{
  (*(*a2 + 16))(&cf, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_272609640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void caulk::function_ref<void ()(vp::utility::Property_List_Parser)>::functor_invoker<vp::vx::database::v1::runtime::detail::from_plist(vp::utility::Property_List_Parser const&,vp::vx::Uplink_Configuration &)::$_0>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  vp::utility::Property_List_Parser::operator[](&v4, &v3, @"Latency");
}

void sub_272609848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, const void *a12)
{
  __cxa_free_exception(v13);
  applesauce::CF::TypeRef::~TypeRef(&a12);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*(&a9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&a9 + 1));
  }

  _Unwind_Resume(a1);
}

uint64_t applesauce::CF::convert_to<int,0>(const __CFNumber *a1)
{
  result = applesauce::CF::convert_as<int,0>(a1);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return result;
}

void vp::vx::database::v1::runtime::Data_Manager::deserialize(vp::vx::database::v1::runtime::Data_Manager *this, CFTypeRef *a2, vp::vx::Global_Configuration *a3)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
    vp::utility::Property_List_Parser::Property_List_Parser(v4, v3);
  }

  vp::utility::Property_List_Parser::Property_List_Parser(v4, 0);
}

void sub_272609EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef((v35 - 80));
  applesauce::CF::StringRef::~StringRef((v35 - 72));
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v37 = *(v35 - 112);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(a1);
}

uint64_t boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::priv_move_assign<boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2[2];
  if (a1 == a2 && v4)
  {
    __assert_rtn("priv_move_assign", "vector.hpp", 2480, "this != &x || x.size() == 0");
  }

  v6 = a2 + 1;
  v5 = a2[1];
  if (a2 + 4 != v5)
  {
    result = *a2;
    if (*a2 == *a1 || (result = (*(*result + 32))(result), (result & 1) != 0))
    {
      a1[2] = 0;
      v8 = a1[1];
      if (v8)
      {
        v9 = a1[3];
        result = boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(a1, v8);
      }

      a1[1] = a2[1];
      *(a1 + 1) = *(a2 + 1);
      *v6 = 0;
      a2[2] = 0;
      a2[3] = 0;
      return result;
    }

    v5 = a2[1];
    v4 = a2[2];
  }

  if (v5)
  {
    v10 = 1;
  }

  else
  {
    v10 = v4 == 0;
  }

  if (!v10)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  result = boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::move_iterator<vp::vx::Chat_Flavor*>>(a1, v5, &v5[4 * v4]);
  a2[2] = 0;
  return result;
}

void vp::vx::Global_Configuration::~Global_Configuration(vp::vx::Global_Configuration *this)
{
  if (*(this + 10))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(this + 7, *(this + 8));
  }

  if (*(this + 5))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(this + 2, *(this + 3));
  }
}

void caulk::function_ref<void ()(vp::utility::Property_List_Parser)>::functor_invoker<vp::vx::database::v1::runtime::detail::from_plist(vp::utility::Property_List_Parser const&,vp::vx::Global_Configuration &)::$_1>(uint64_t **a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(&v3 + 1);
  v5 = v3;
  if (*(&v3 + 1))
  {
    atomic_fetch_add_explicit((*(&v3 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  vp::utility::Property_List_Parser::Object::operator applesauce::CF::StringRef<applesauce::CF::StringRef>(&cf, v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v12[0] = @"Standard";
  if (applesauce::CF::compare<applesauce::CF::StringRef,0,__CFString const*,0>(cf, v12))
  {
    v12[0] = @"Voice_Isolation";
    if (applesauce::CF::compare<applesauce::CF::StringRef,0,__CFString const*,0>(cf, v12))
    {
      v12[0] = @"Wide_Spectrum";
      if (applesauce::CF::compare<applesauce::CF::StringRef,0,__CFString const*,0>(cf, v12))
      {
        vp::utility::Property_List_Parser::path(&theString, v5);
        CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
        caulk::make_string("expected Standard, Voice_Isolation, or Wide_Spectrum at %s", v12, CStringPtr);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2743CB8B0](exception, v12);
      }

      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  LODWORD(cf) = v6;
  v7 = *v2;
  v8 = *(*v2 + 72);
  v9 = (*(*v2 + 64) + 4 * v8);
  if (v8 != *(*v2 + 80))
  {
    *v9 = v6;
    *(v7 + 72) = v8 + 1;
    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,vp::vx::Chat_Flavor*,vp::vx::Chat_Flavor const&>>(v12, v7 + 56, v9, &cf);
  boost::container::vec_iterator<vp::vx::Chat_Flavor *,false>::operator*(v12[0]);
  if (v4)
  {
LABEL_15:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_27260A39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,vp::vx::Chat_Flavor*,vp::vx::Chat_Flavor const&>>(void *a1, uint64_t a2, char *a3, _DWORD *a4)
{
  v4 = *(a2 + 24);
  if (v4 != *(a2 + 16))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x3FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  v9 = *(a2 + 8);
  if (!(v4 >> 61))
  {
    if (v4 + 1 > 8 * v4 / 5)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = 8 * v4 / 5;
    }

    goto LABEL_16;
  }

  if (v4 >> 61 > 4)
  {
    v11 = -1;
  }

  else
  {
    v11 = 8 * v4;
  }

  v12 = v4 + 1;
  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  v10 = v12 > v11 ? v4 + 1 : v11;
  if (v12 >> 62)
  {
LABEL_26:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

LABEL_16:
  result = (*(**a2 + 16))();
  v14 = result;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = result;
  if (v15)
  {
    v17 = result;
    if (v15 != a3)
    {
      result = memmove(result, *(a2 + 8), a3 - v15);
      v17 = (v14 + a3 - v15);
    }
  }

  *v17 = *a4;
  if (a3)
  {
    v18 = &v15[4 * v16];
    if (v18 != a3)
    {
      result = memmove(v17 + 1, a3, v18 - a3);
    }
  }

  if (v15)
  {
    v19 = *(a2 + 24);
    result = boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 8));
  }

  v20 = *(a2 + 16) + 1;
  *(a2 + 8) = v14;
  *(a2 + 16) = v20;
  *(a2 + 24) = v10;
  *a1 = &a3[v14 - v9];
  return result;
}

uint64_t boost::container::vec_iterator<vp::vx::Chat_Flavor *,false>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

void caulk::function_ref<void ()(vp::utility::Property_List_Parser)>::functor_invoker<vp::vx::database::v1::runtime::detail::from_plist(vp::utility::Property_List_Parser const&,vp::vx::Global_Configuration &)::$_0>(uint64_t **a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(&v3 + 1);
  v5 = v3;
  if (*(&v3 + 1))
  {
    atomic_fetch_add_explicit((*(&v3 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  vp::utility::Property_List_Parser::Object::operator applesauce::CF::StringRef<applesauce::CF::StringRef>(&cf, v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v12[0] = @"Standard";
  if (applesauce::CF::compare<applesauce::CF::StringRef,0,__CFString const*,0>(cf, v12))
  {
    v12[0] = @"Voice_Isolation";
    if (applesauce::CF::compare<applesauce::CF::StringRef,0,__CFString const*,0>(cf, v12))
    {
      v12[0] = @"Wide_Spectrum";
      if (applesauce::CF::compare<applesauce::CF::StringRef,0,__CFString const*,0>(cf, v12))
      {
        vp::utility::Property_List_Parser::path(&theString, v5);
        CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
        caulk::make_string("expected Standard, Voice_Isolation, or Wide_Spectrum at %s", v12, CStringPtr);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2743CB8B0](exception, v12);
      }

      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  LODWORD(cf) = v6;
  v7 = *v2;
  v8 = *(*v2 + 32);
  v9 = (*(*v2 + 24) + 4 * v8);
  if (v8 != *(*v2 + 40))
  {
    *v9 = v6;
    *(v7 + 32) = v8 + 1;
    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,vp::vx::Chat_Flavor*,vp::vx::Chat_Flavor const&>>(v12, v7 + 16, v9, &cf);
  boost::container::vec_iterator<vp::vx::Chat_Flavor *,false>::operator*(v12[0]);
  if (v4)
  {
LABEL_15:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_27260A78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_27260A8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::database::v1::runtime::Data_Manager::~Data_Manager(vp::vx::database::v1::runtime::Data_Manager *this)
{
  vp::vx::database::v1::runtime::Data_Manager::~Data_Manager(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v18 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B6358;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::database::v1::runtime::Data_Manager]", 43);
    v4 = v13;
    v5 = v13;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
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
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v13;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t vp::vx::database::v1::Database::get_configuration_options(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = a3;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = a4;
  *&v6 = caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration_options(vp::vx::Configuration_Context const&,vp::vx::Downlink_DSP_Node_ID,vp::vx::DSP_Node_Configuration_Options &)::$_0>;
  *(&v6 + 1) = v5;
  return vp::vx::database::v1::Database::evaluate_configuration_context_noexcept(a1, "find downlink DSP node configuration options", a2, &v6);
}

{
  v7 = a3;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = a4;
  *&v6 = caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration_options(vp::vx::Configuration_Context const&,vp::vx::Uplink_DSP_Node_ID,vp::vx::DSP_Node_Configuration_Options &)::$_0>;
  *(&v6 + 1) = v5;
  return vp::vx::database::v1::Database::evaluate_configuration_context_noexcept(a1, "find uplink DSP node configuration options", a2, &v6);
}

uint64_t vp::vx::database::v1::Database::evaluate_configuration_context_noexcept(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v114[1] = *MEMORY[0x277D85DE8];
  log = vp::get_log(a1);
  v9 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    log_context_info = vp::get_log_context_info(&v111, a1, "vp::vx::database::v1::Database]", 30);
    v11 = v113;
    v12 = v113;
    v13 = v112;
    v14 = vp::get_log(log_context_info);
    v9 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      if (v12 >= 0)
      {
        v15 = v11;
      }

      else
      {
        v15 = v13;
      }

      v16 = v111;
      if (v12 >= 0)
      {
        v16 = &v111;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      if (v15)
      {
        v17 = " ";
      }

      else
      {
        v17 = "";
      }

      *&buf[14] = v17;
      *&buf[22] = 2080;
      *&buf[24] = a2;
      _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_DEBUG, "%s%swill %s", buf, 0x20u);
      LOBYTE(v12) = v113;
    }

    if ((v12 & 0x80) != 0)
    {
      operator delete(v111);
    }
  }

  v82 = *a4;
  v83 = *(a4 + 2);
  if (*(a1 + 488) != 1 || !(v9 = vp::vx::Configuration_Context::operator==(a1 + 344, a3)))
  {
    v28 = vp::get_log(v9);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = vp::get_log_context_info(&v111, a1, "vp::vx::database::v1::Database]", 30);
      v30 = v113;
      v31 = v112;
      v32 = vp::get_log(v29);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        if ((v30 & 0x80u) == 0)
        {
          v33 = v30;
        }

        else
        {
          v33 = v31;
        }

        if ((v113 & 0x80u) == 0)
        {
          v34 = &v111;
        }

        else
        {
          v34 = v111;
        }

        *buf = 136315650;
        *&buf[4] = v34;
        *&buf[12] = 2080;
        if (v33)
        {
          v35 = " ";
        }

        else
        {
          v35 = "";
        }

        *&buf[14] = v35;
        *&buf[22] = 2080;
        *&buf[24] = a2;
        _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_INFO, "%s%strying to %s with new decision state", buf, 0x20u);
      }

      if (v113 < 0)
      {
        operator delete(v111);
      }
    }

    if (*(a1 + 208))
    {
      v36 = *(a1 + 208);
    }

    else
    {
      v36 = a1 + 200;
    }

    v37 = (*(*v36 + 80))(&cf);
    v38 = vp::get_log(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = vp::get_log_context_info(&v89, a1, "vp::vx::database::v1::Database]", 30);
      v40 = vp::get_log(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        if (cf)
        {
          v114[0] = 0;
          applesauce::CF::details::to_description_json_style_object(v84, cf, 0, &v111);
          std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::~__value_func[abi:ne200100](&v111);
          v93 = 0;
          v86[0] = 0;
          v87 = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v86);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v86);
          v41 = v85;
          v42 = v84[0];
          v43 = v84[1];
          std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v95, v92);
          if ((v41 & 0x80u) != 0)
          {
            v41 = v43;
          }

          else
          {
            v42 = v84;
          }

          if (v96)
          {
            if (v96 == v95)
            {
              v114[0] = &v111;
              (*(*v96 + 24))();
LABEL_65:
              std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](buf, &v111);
              LODWORD(v98) = 0;
              *(&v98 + 1) = v42;
              *&v99 = v42 + v41;
              DWORD2(v99) = -1;
              BYTE12(v99) = 0;
              v100 = 0u;
              v101 = 0u;
              v102 = 0u;
              v103 = 0u;
              v104 = 0;
              v105 = "";
              v107 = 0;
              v108 = 0;
              v106 = 0;
              v46 = localeconv();
              if (v46)
              {
                if (v46->decimal_point)
                {
                  v47 = *v46->decimal_point;
                }

                else
                {
                  v47 = 46;
                }

                v109 = v47;
                v110 = 1;
                LODWORD(v98) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(&v98 + 8);
                std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](&v111);
                nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::parse(buf, v86);
                nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::~lexer(&v98 + 8);
                std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](buf);
                std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v95);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(&__p);
              }

              __assert_rtn("get_decimal_point", "lexer.hpp", 136, "loc != nullptr");
            }

            v44 = &v96;
            v114[0] = v96;
          }

          else
          {
            v44 = v114;
          }

          *v44 = 0;
          goto LABEL_65;
        }

LABEL_119:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (v90 < 0)
      {
        operator delete(v89);
      }
    }

    v111 = &unk_2881BE2A8;
    v48 = cf;
    if (cf)
    {
      CFRetain(cf);
      v112 = v48;
      *buf = &v111;
      *&buf[8] = &vp::vx::database::v1::Request::default_environment(void)::s_impl;
      *v95 = 0;
      v50 = *(a1 + 320);
      v49 = *(a1 + 328);
      while (v50 != v49)
      {
        vp::vx::database::v1::syntax::Rule::evaluate(v50, buf, v95);
        v50 = (v50 + 88);
      }

      v51 = *(a1 + 488);
      v52 = *(a3 + 12);
      *(a1 + 344) = *a3;
      *(a1 + 356) = v52;
      if (v51 == 1)
      {
        v53 = *(a1 + 376);
        v54 = *(a3 + 32);
        *(a1 + 376) = v54;
        if (v54)
        {
          CFRetain(v54);
        }

        if (v53)
        {
          CFRelease(v53);
        }

        v55 = *(a3 + 40);
        *(a1 + 396) = *(a3 + 52);
        *(a1 + 384) = v55;
        v56 = *(a1 + 416);
        v57 = *(a3 + 72);
        *(a1 + 416) = v57;
        if (v57)
        {
          CFRetain(v57);
        }

        if (v56)
        {
          CFRelease(v56);
        }

        v58 = *(a3 + 80);
        v59 = *(a3 + 96);
        v60 = *(a3 + 128);
        *(a1 + 456) = *(a3 + 112);
        *(a1 + 472) = v60;
        *(a1 + 424) = v58;
        *(a1 + 440) = v59;
      }

      else
      {
        v61 = *(a3 + 32);
        if (v61)
        {
          CFRetain(*(a3 + 32));
        }

        *(a1 + 376) = v61;
        v62 = *(a3 + 40);
        *(a1 + 396) = *(a3 + 52);
        *(a1 + 384) = v62;
        v63 = *(a3 + 72);
        if (v63)
        {
          CFRetain(*(a3 + 72));
        }

        *(a1 + 416) = v63;
        v64 = *(a3 + 80);
        v65 = *(a3 + 96);
        v66 = *(a3 + 128);
        *(a1 + 456) = *(a3 + 112);
        *(a1 + 472) = v66;
        *(a1 + 424) = v64;
        *(a1 + 440) = v65;
        *(a1 + 488) = 1;
      }

      vp::vx::database::v1::Response::make_plist(v94, *v95);
      v67 = *(a1 + 496);
      v68 = *v94;
      *(a1 + 496) = *v94;
      *v94 = v67;
      if (v67)
      {
        CFRelease(v67);
        v68 = *(a1 + 496);
      }

      if (v68 && (CFRetain(v68), v69 = CFGetTypeID(v68), v69 != CFDictionaryGetTypeID()))
      {
        *v94 = 0;
        CFRelease(v68);
      }

      else
      {
        *v94 = v68;
      }

      (v82)(&v82 + 8, v94);
      if (*v94)
      {
        CFRelease(*v94);
      }

      vp::vx::database::v1::Response::~Response(v95);
      if (v112)
      {
        CFRelease(v112);
      }

      v45 = cf;
      if (cf)
      {
        goto LABEL_102;
      }

      goto LABEL_103;
    }

    v112 = 0;
    *v94 = 0;
    v99 = 0u;
    v100 = 0u;
    v98 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    *v95 = 134217984;
    *&v95[4] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_119;
  }

  v18 = vp::get_log(v9);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = vp::get_log_context_info(&v111, a1, "vp::vx::database::v1::Database]", 30);
    v20 = v113;
    v21 = v112;
    v22 = vp::get_log(v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      if ((v20 & 0x80u) == 0)
      {
        v23 = v20;
      }

      else
      {
        v23 = v21;
      }

      if ((v113 & 0x80u) == 0)
      {
        v24 = &v111;
      }

      else
      {
        v24 = v111;
      }

      *buf = 136315650;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      if (v23)
      {
        v25 = " ";
      }

      else
      {
        v25 = "";
      }

      *&buf[14] = v25;
      *&buf[22] = 2080;
      *&buf[24] = a2;
      _os_log_impl(&dword_2724B4000, v22, OS_LOG_TYPE_INFO, "%s%strying to %s with cached decision state", buf, 0x20u);
    }

    if (v113 < 0)
    {
      operator delete(v111);
    }
  }

  v26 = *(a1 + 496);
  if (v26 && (CFRetain(*(a1 + 496)), v27 = CFGetTypeID(v26), v27 != CFDictionaryGetTypeID()))
  {
    *buf = 0;
    CFRelease(v26);
  }

  else
  {
    *buf = v26;
  }

  (v82)(&v82 + 8, buf);
  v45 = *buf;
  if (*buf)
  {
LABEL_102:
    CFRelease(v45);
  }

LABEL_103:
  v70 = vp::get_log(v45);
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
  {
    v71 = vp::get_log_context_info(&v111, a1, "vp::vx::database::v1::Database]", 30);
    v72 = v113;
    v73 = v113;
    v74 = v112;
    v75 = vp::get_log(v71);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
    {
      if (v73 >= 0)
      {
        v76 = v72;
      }

      else
      {
        v76 = v74;
      }

      v77 = v111;
      if (v73 >= 0)
      {
        v77 = &v111;
      }

      *buf = 136315650;
      *&buf[4] = v77;
      *&buf[12] = 2080;
      if (v76)
      {
        v78 = " ";
      }

      else
      {
        v78 = "";
      }

      *&buf[14] = v78;
      *&buf[22] = 2080;
      *&buf[24] = a2;
      _os_log_impl(&dword_2724B4000, v75, OS_LOG_TYPE_DEBUG, "%s%sdid %s", buf, 0x20u);
      LOBYTE(v73) = v113;
    }

    if ((v73 & 0x80) != 0)
    {
      operator delete(v111);
    }
  }

  result = 1;
  v80 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27260B524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint8_t buf, int a54, int a55, __int16 a56, int a57, __int16 a58, __int16 a59, uint64_t a60, __int16 a61)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void applesauce::CF::details::to_description_json_style_object(uint64_t a1, const __CFDictionary *a2, size_t a3, uint64_t a4)
{
  v80 = *MEMORY[0x277D85DE8];
  v8 = 1;
  *(a1 + 23) = 1;
  *a1 = 123;
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v73, a2);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v67, a2);
  v68 = (v70 - v69) >> 3;
  while (1)
  {
    if (v73 && v74 != (v76 - v75) >> 3)
    {
      v9 = v67;
      goto LABEL_8;
    }

    v9 = v67;
    if (!v67 || v68 == (v70 - v69) >> 3)
    {
      break;
    }

LABEL_8:
    if (v73 == v9 && v74 == v68)
    {
      break;
    }

    if ((v8 & 1) == 0)
    {
      std::string::append(a1, ",", 1uLL);
    }

    std::string::basic_string[abi:ne200100](&__b, a3 + 2, 32);
    v10 = std::string::insert(&__b, 0, "\n", 1uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v61 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v61 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (v61 >= 0)
    {
      v13 = HIBYTE(v61);
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(a1, v12, v13);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__b.__r_.__value_.__l.__data_);
    }

    applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(__p, &v73);
    v14 = __p[0];
    v16 = 0;
    if (__p[0])
    {
      v15 = CFGetTypeID(__p[0]);
      if (v15 == CFStringGetTypeID())
      {
        v16 = 1;
      }
    }

    if (__p[1])
    {
      CFRelease(__p[1]);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (v16)
    {
      applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(&cf, &v73);
      v17 = cf.__r_.__value_.__r.__words[0];
      if (!cf.__r_.__value_.__r.__words[0])
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      applesauce::CF::convert_to<std::string,0>(&v64, cf.__r_.__value_.__l.__data_);
      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v64;
      }

      else
      {
        v18 = v64.__r_.__value_.__r.__words[0];
      }

      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v64.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v64.__r_.__value_.__l.__size_;
      }

      applesauce::CF::details::make_json_string(&v65, v18, size);
      v20 = std::string::insert(&v65, 0, "", 1uLL);
      v21 = *&v20->__r_.__value_.__l.__data_;
      __b.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&__b.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      v22 = std::string::append(&__b, " : ", 4uLL);
      v23 = *&v22->__r_.__value_.__l.__data_;
      v61 = v22->__r_.__value_.__r.__words[2];
      *__p = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      if (v61 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      if (v61 >= 0)
      {
        v25 = HIBYTE(v61);
      }

      else
      {
        v25 = __p[1];
      }

      std::string::append(a1, v24, v25);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__b.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (cf.__r_.__value_.__l.__size_)
      {
        CFRelease(cf.__r_.__value_.__l.__size_);
      }

      CFRelease(v17);
      applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(&__b, &v73);
      std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::__value_func[abi:ne200100](v79, a4);
      applesauce::CF::details::to_description_json_style_helper(__p, &__b.__r_.__value_.__l.__size_, a3 + 2, v79);
      if (v61 >= 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      if (v61 >= 0)
      {
        v27 = HIBYTE(v61);
      }

      else
      {
        v27 = __p[1];
      }

      std::string::append(a1, v26, v27);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p[0]);
      }

      std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::~__value_func[abi:ne200100](v79);
      if (__b.__r_.__value_.__l.__size_)
      {
        CFRelease(__b.__r_.__value_.__l.__size_);
      }

      if (__b.__r_.__value_.__r.__words[0])
      {
        CFRelease(__b.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (!*(a4 + 24))
      {
        v53 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v53, "Error, not a json style CFDictionary");
      }

      applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(&__b, &v73);
      v28 = __b.__r_.__value_.__r.__words[0];
      if (__b.__r_.__value_.__r.__words[0])
      {
        CFRetain(__b.__r_.__value_.__l.__data_);
      }

      v58 = 0;
      v59 = v28;
      v29 = *(a4 + 24);
      if (!v29)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v29 + 48))(__p);
      if (v58)
      {
        CFRelease(v58);
      }

      if (v59)
      {
        CFRelease(v59);
      }

      if (__b.__r_.__value_.__l.__size_)
      {
        CFRelease(__b.__r_.__value_.__l.__size_);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      v30 = SHIBYTE(v61);
      if ((SHIBYTE(v61) & 0x8000000000000000) != 0)
      {
        v30 = __p[1];
        if (!__p[1])
        {
LABEL_138:
          v52 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v52, "Error, not a json style CFDictionary");
        }

        v31 = __p[0];
      }

      else
      {
        if (!HIBYTE(v61))
        {
          goto LABEL_138;
        }

        v31 = __p;
      }

      applesauce::CF::details::make_json_string(&v56, v31, v30);
      v32 = std::string::insert(&v56, 0, "", 1uLL);
      v33 = *&v32->__r_.__value_.__l.__data_;
      cf.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
      *&cf.__r_.__value_.__l.__data_ = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      v34 = std::string::append(&cf, " : ", 5uLL);
      v35 = *&v34->__r_.__value_.__l.__data_;
      v64.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v64.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      if ((v63 & 0x80u) == 0)
      {
        v36 = v62;
      }

      else
      {
        v36 = v62[0];
      }

      if ((v63 & 0x80u) == 0)
      {
        v37 = v63;
      }

      else
      {
        v37 = v62[1];
      }

      applesauce::CF::details::make_json_string(v54, v36, v37);
      if ((v55 & 0x80u) == 0)
      {
        v38 = v54;
      }

      else
      {
        v38 = v54[0];
      }

      if ((v55 & 0x80u) == 0)
      {
        v39 = v55;
      }

      else
      {
        v39 = v54[1];
      }

      v40 = std::string::append(&v64, v38, v39);
      v41 = *&v40->__r_.__value_.__l.__data_;
      v65.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v65.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      v42 = std::string::append(&v65, "", 1uLL);
      v43 = *&v42->__r_.__value_.__l.__data_;
      __b.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
      *&__b.__r_.__value_.__l.__data_ = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__r_.__value_.__r.__words[0];
      }

      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = __b.__r_.__value_.__l.__size_;
      }

      std::string::append(a1, p_b, v45);
      if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__b.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (v55 < 0)
      {
        operator delete(v54[0]);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(cf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = 0;
    ++v74;
  }

  std::string::basic_string[abi:ne200100](&__b, a3, 32);
  v46 = std::string::insert(&__b, 0, "\n", 1uLL);
  v47 = *&v46->__r_.__value_.__l.__data_;
  v61 = v46->__r_.__value_.__r.__words[2];
  *__p = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  if (v61 >= 0)
  {
    v48 = __p;
  }

  else
  {
    v48 = __p[0];
  }

  if (v61 >= 0)
  {
    v49 = HIBYTE(v61);
  }

  else
  {
    v49 = __p[1];
  }

  std::string::append(a1, v48, v49);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__b.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "}", 1uLL);
  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  v50 = *MEMORY[0x277D85DE8];
}

void sub_27260BF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::~DictionaryRef_iterator(&a63);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::~DictionaryRef_iterator((v64 - 192));
  if (*(v63 + 23) < 0)
  {
    operator delete(*v63);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void vp::vx::database::v1::Response::~Response(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void vp::vx::database::v1::Request::Property_List_Data::~Property_List_Data(vp::vx::database::v1::Request::Property_List_Data *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

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

uint64_t std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::parse(uint64_t a1, unsigned __int8 *a2)
{
  v163 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 24))
  {
    v39 = *(a1 + 176);
    v151 = a2;
    v152 = 0u;
    v153 = 0u;
    LOBYTE(v154) = 0;
    BYTE1(v154) = v39;
    memset(&__p, 0, sizeof(__p));
    while (1)
    {
      v40 = *(a1 + 32);
      if (v40 <= 5)
      {
        if (v40 <= 2)
        {
          if (v40 == 1)
          {
            LOBYTE(v146.__vftable) = 1;
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(&v151, &v146);
          }

          else
          {
            if (v40 != 2)
            {
              goto LABEL_263;
            }

            LOBYTE(v146.__vftable) = 0;
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(&v151, &v146);
          }

          goto LABEL_207;
        }

        if (v40 == 3)
        {
          if (v152 == *(&v152 + 1))
          {
            v144.__r_.__value_.__s.__data_[0] = 0;
            v144.__r_.__value_.__l.__size_ = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v144);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v144);
            v69 = v151;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v144);
            v70 = *v69;
            *v69 = 0;
            v144.__r_.__value_.__s.__data_[0] = v70;
            v71 = *(v69 + 1);
            *(v69 + 1) = 0;
            goto LABEL_141;
          }

          v58 = *(*(&v152 + 1) - 8);
          v59 = *v58;
          if (v59 == 2)
          {
            v44 = *(v58 + 1);
            v46 = *(v44 + 8);
            v60 = *(v44 + 16);
            if (v46 < v60)
            {
              *v46 = 0;
              *(v46 + 8) = 0;
LABEL_126:
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v46);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v46);
              v61 = (v46 + 16);
LABEL_206:
              *(v44 + 8) = v61;
              goto LABEL_207;
            }

            v80 = (v46 - *v44) >> 4;
            if ((v80 + 1) >> 60)
            {
              goto LABEL_307;
            }

            v81 = v60 - *v44;
            v82 = v81 >> 3;
            if (v81 >> 3 <= (v80 + 1))
            {
              v82 = v80 + 1;
            }

            if (v81 >= 0x7FFFFFFFFFFFFFF0)
            {
              v83 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v83 = v82;
            }

            v149 = v44;
            if (v83)
            {
              std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](v83);
            }

            v99 = (16 * v80);
            v146.__vftable = 0;
            v147 = v99;
            *(&v148 + 1) = 0;
            *v99 = 0;
            v99[1] = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v99);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v99);
            *&v148 = v99 + 2;
            v100 = *(v44 + 8);
            v98 = v99 + *v44 - v100;
            std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v44, *v44, v100, v98);
LABEL_205:
            v105 = *v44;
            *v44 = v98;
            v106 = *(v44 + 16);
            *v134 = v148;
            v147 = v105;
            *&v148 = v105;
            *(v44 + 8) = *v134;
            *(&v148 + 1) = v106;
            v146.__vftable = v105;
            std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v146);
            v61 = v134[0];
            goto LABEL_206;
          }

          if (v59 != 1)
          {
            goto LABEL_283;
          }

          v73 = *(&v153 + 1);
          if (!*(&v153 + 1))
          {
            goto LABEL_284;
          }

          v143.__r_.__value_.__s.__data_[0] = 0;
          v143.__r_.__value_.__l.__size_ = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v143);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v143);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v143);
          v70 = *v73;
          *v73 = 0;
          v143.__r_.__value_.__s.__data_[0] = v70;
          v75 = *(v73 + 1);
          *(v73 + 1) = 0;
LABEL_158:
          v143.__r_.__value_.__l.__size_ = v75;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v73);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v143);
          v72 = &v143;
          goto LABEL_159;
        }

        if (v40 == 4)
        {
          if (v152 == *(&v152 + 1))
          {
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(&v144);
          }

          v63 = *(*(&v152 + 1) - 8);
          v64 = *v63;
          if (v64 == 2)
          {
            v65 = *(v63 + 1);
            v67 = v65[1];
            v66 = v65[2];
            if (v67 < v66)
            {
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(v65[1]);
            }

            v88 = (v67 - *v65) >> 4;
            if (!((v88 + 1) >> 60))
            {
              v89 = v66 - *v65;
              v90 = v89 >> 3;
              if (v89 >> 3 <= (v88 + 1))
              {
                v90 = v88 + 1;
              }

              if (v89 >= 0x7FFFFFFFFFFFFFF0)
              {
                v91 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v91 = v90;
              }

              v149 = v65;
              if (v91)
              {
                std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](v91);
              }

              v146.__vftable = 0;
              v147 = (16 * v88);
              v148 = (16 * v88);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(16 * v88);
            }

LABEL_307:
            std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
          }

          if (v64 == 1)
          {
            if (*(&v153 + 1))
            {
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(&v143);
            }

LABEL_284:
            v125 = 321;
            v126 = "object_element";
          }

          else
          {
LABEL_283:
            v125 = 312;
            v126 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          }

          __assert_rtn("handle_value", "json_sax.hpp", v125, v126);
        }

        v41 = *(a1 + 152);
        if (v152 != *(&v152 + 1))
        {
          v42 = *(*(&v152 + 1) - 8);
          v43 = *v42;
          if (v43 == 2)
          {
            v44 = *(v42 + 1);
            v46 = *(v44 + 8);
            v45 = *(v44 + 16);
            if (v46 >= v45)
            {
              v84 = (v46 - *v44) >> 4;
              if ((v84 + 1) >> 60)
              {
                goto LABEL_307;
              }

              v85 = v45 - *v44;
              v86 = v85 >> 3;
              if (v85 >> 3 <= (v84 + 1))
              {
                v86 = v84 + 1;
              }

              if (v85 >= 0x7FFFFFFFFFFFFFF0)
              {
                v87 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v87 = v86;
              }

              v149 = v44;
              if (v87)
              {
                std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](v87);
              }

              v101 = (16 * v84);
              v146.__vftable = 0;
              v147 = v101;
              *(&v148 + 1) = 0;
              *v101 = 6;
              v101[1] = v41;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v101);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v101);
              *&v148 = v101 + 2;
              v102 = *(v44 + 8);
              v98 = v101 + *v44 - v102;
              std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v44, *v44, v102, v98);
              goto LABEL_205;
            }

            *v46 = 6;
            goto LABEL_121;
          }

          if (v43 != 1)
          {
            goto LABEL_283;
          }

          v73 = *(&v153 + 1);
          if (!*(&v153 + 1))
          {
            goto LABEL_284;
          }

          v74 = 6;
          v143.__r_.__value_.__s.__data_[0] = 6;
          v143.__r_.__value_.__l.__size_ = v41;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v143);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v143);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v143);
          v70 = *v73;
LABEL_151:
          *v73 = v74;
          v143.__r_.__value_.__s.__data_[0] = v70;
          v75 = *(v73 + 1);
          *(v73 + 1) = v41;
          goto LABEL_158;
        }

        v68 = 6;
        v144.__r_.__value_.__s.__data_[0] = 6;
        v144.__r_.__value_.__l.__size_ = v41;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v144);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v144);
        v69 = v151;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v144);
        v70 = *v69;
        goto LABEL_138;
      }

      if (v40 <= 7)
      {
        if (v40 != 6)
        {
          v51 = *(a1 + 160);
          if ((v51 & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&v144, *(a1 + 88), *(a1 + 96));
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&v141, *(a1 + 88), *(a1 + 96));
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v142, "number overflow parsing '", &v141);
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v143, &v142, "'");
            nlohmann::detail::out_of_range::create(&v146, &v143);
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v151, &v146);
            nlohmann::detail::out_of_range::~out_of_range(&v146);
            if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v143.__r_.__value_.__l.__data_);
            }

            goto LABEL_265;
          }

          if (v152 != *(&v152 + 1))
          {
            v52 = *(*(&v152 + 1) - 8);
            v53 = *v52;
            if (v53 == 2)
            {
              v44 = *(v52 + 1);
              v46 = *(v44 + 8);
              v54 = *(v44 + 16);
              if (v46 < v54)
              {
                *v46 = 7;
                *(v46 + 8) = v51;
                goto LABEL_126;
              }

              v92 = (v46 - *v44) >> 4;
              if ((v92 + 1) >> 60)
              {
                std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
              }

              v93 = v54 - *v44;
              v94 = v93 >> 3;
              if (v93 >> 3 <= (v92 + 1))
              {
                v94 = v92 + 1;
              }

              if (v93 >= 0x7FFFFFFFFFFFFFF0)
              {
                v95 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v95 = v94;
              }

              v149 = v44;
              if (v95)
              {
                std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](v95);
              }

              v103 = (16 * v92);
              v146.__vftable = 0;
              v147 = v103;
              *(&v148 + 1) = 0;
              *v103 = 7;
              v103[1] = v51;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v103);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v103);
              *&v148 = v103 + 2;
              v104 = *(v44 + 8);
              v98 = v103 + *v44 - v104;
              std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v44, *v44, v104, v98);
              goto LABEL_205;
            }

            if (v53 != 1)
            {
              v127 = 312;
              v128 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
              goto LABEL_293;
            }

            v73 = *(&v153 + 1);
            if (!*(&v153 + 1))
            {
              v127 = 321;
              v128 = "object_element";
LABEL_293:
              __assert_rtn("handle_value", "json_sax.hpp", v127, v128);
            }

            v143.__r_.__value_.__s.__data_[0] = 7;
            v143.__r_.__value_.__l.__size_ = v51;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v143);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v143);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v143);
            v70 = *v73;
            *v73 = 7;
            v143.__r_.__value_.__s.__data_[0] = v70;
            v75 = *(v73 + 1);
            *(v73 + 1) = v51;
            goto LABEL_158;
          }

          v144.__r_.__value_.__s.__data_[0] = 7;
          v144.__r_.__value_.__l.__size_ = v51;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v144);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v144);
          v69 = v151;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v144);
          v70 = *v69;
          *v69 = 7;
          v144.__r_.__value_.__s.__data_[0] = v70;
          v71 = *(v69 + 1);
          *(v69 + 1) = v51;
LABEL_141:
          v144.__r_.__value_.__l.__size_ = v71;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v69);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v144);
          v72 = &v144;
LABEL_159:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v72->__r_.__value_.__l.__size_, v70);
          goto LABEL_207;
        }

        v41 = *(a1 + 144);
        if (v152 != *(&v152 + 1))
        {
          v55 = *(*(&v152 + 1) - 8);
          v56 = *v55;
          if (v56 == 2)
          {
            v44 = *(v55 + 1);
            v46 = *(v44 + 8);
            v57 = *(v44 + 16);
            if (v46 >= v57)
            {
              v76 = (v46 - *v44) >> 4;
              if ((v76 + 1) >> 60)
              {
                goto LABEL_307;
              }

              v77 = v57 - *v44;
              v78 = v77 >> 3;
              if (v77 >> 3 <= (v76 + 1))
              {
                v78 = v76 + 1;
              }

              if (v77 >= 0x7FFFFFFFFFFFFFF0)
              {
                v79 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v79 = v78;
              }

              v149 = v44;
              if (v79)
              {
                std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](v79);
              }

              v96 = (16 * v76);
              v146.__vftable = 0;
              v147 = v96;
              *(&v148 + 1) = 0;
              *v96 = 5;
              v96[1] = v41;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v96);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v96);
              *&v148 = v96 + 2;
              v97 = *(v44 + 8);
              v98 = v96 + *v44 - v97;
              std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v44, *v44, v97, v98);
              goto LABEL_205;
            }

            *v46 = 5;
LABEL_121:
            *(v46 + 8) = v41;
            goto LABEL_126;
          }

          if (v56 != 1)
          {
            goto LABEL_283;
          }

          v73 = *(&v153 + 1);
          if (!*(&v153 + 1))
          {
            goto LABEL_284;
          }

          v74 = 5;
          v143.__r_.__value_.__s.__data_[0] = 5;
          v143.__r_.__value_.__l.__size_ = v41;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v143);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v143);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v143);
          v70 = *v73;
          goto LABEL_151;
        }

        v68 = 5;
        v144.__r_.__value_.__s.__data_[0] = 5;
        v144.__r_.__value_.__l.__size_ = v41;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v144);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v144);
        v69 = v151;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v144);
        v70 = *v69;
LABEL_138:
        *v69 = v68;
        v144.__r_.__value_.__s.__data_[0] = v70;
        v71 = *(v69 + 1);
        *(v69 + 1) = v41;
        goto LABEL_141;
      }

      if (v40 != 8)
      {
        break;
      }

      v144.__r_.__value_.__s.__data_[0] = 2;
      v146.__vftable = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(&v151, &v144);
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100](&v152, &v146);
      v62 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
      *(a1 + 32) = v62;
      if (v62 == 10)
      {
LABEL_128:
        *(&v152 + 1) -= 8;
LABEL_207:
        size = __p.__r_.__value_.__l.__size_;
        if (!__p.__r_.__value_.__l.__size_)
        {
LABEL_222:
          if (__p.__r_.__value_.__r.__words[0])
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
          v116 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
          *(a1 + 32) = v116;
          if (v116 != 15)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&__p, *(a1 + 88), *(a1 + 96));
            v144 = *(a1 + 64);
            std::string::basic_string[abi:ne200100]<0>(&v142, "value");
            nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(&v143, a1, 0xFu, &v142);
            nlohmann::detail::parse_error::create(&v146, &v144, &v143);
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v151, &v146);
            v146.__vftable = &unk_2881C1828;
            MEMORY[0x2743CB8E0](&v148);
            std::exception::~exception(&v146);
            if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v143.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v142.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (v154 == 1)
          {
            v135[0] = 9;
            v136 = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v135);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v135);
            v117 = *a2;
            *a2 = 9;
            v135[0] = v117;
            v118 = *(a2 + 1);
            *(a2 + 1) = 0;
            v136 = v118;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v135);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v136, v117);
          }

          if (v152)
          {
            operator delete(v152);
          }

          goto LABEL_260;
        }

        v108 = __p.__r_.__value_.__r.__words[0];
        v109 = *(&v152 + 1);
        while (1)
        {
          v110 = size - 1;
          if (((*(v108 + (((size - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (size - 1)) & 1) == 0)
          {
            break;
          }

          v111 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
          *(a1 + 32) = v111;
          if (v111 == 13)
          {
            *(&v152 + 1) = v109;
            __p.__r_.__value_.__l.__size_ = size;
            v50 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
            goto LABEL_221;
          }

          if (v111 != 10)
          {
            *(&v152 + 1) = v109;
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&v144, *(a1 + 88), *(a1 + 96));
            v143 = *(a1 + 64);
            std::string::basic_string[abi:ne200100]<0>(&v141, "array");
            nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(&v142, a1, 0xAu, &v141);
            nlohmann::detail::parse_error::create(&v146, &v143, &v142);
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v151, &v146);
            goto LABEL_279;
          }

LABEL_215:
          v109 -= 8;
          --size;
          if (!v110)
          {
            *(&v152 + 1) = v109;
            goto LABEL_222;
          }
        }

        v112 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
        *(a1 + 32) = v112;
        if (v112 != 13)
        {
          if (v112 != 11)
          {
            *(&v152 + 1) = v109;
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&v144, *(a1 + 88), *(a1 + 96));
            v143 = *(a1 + 64);
            std::string::basic_string[abi:ne200100]<0>(&v141, "object");
            nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(&v142, a1, 0xBu, &v141);
            nlohmann::detail::parse_error::create(&v146, &v143, &v142);
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v151, &v146);
            goto LABEL_279;
          }

          goto LABEL_215;
        }

        *(&v152 + 1) = v109;
        __p.__r_.__value_.__l.__size_ = size;
        v113 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
        *(a1 + 32) = v113;
        if (v113 != 4)
        {
          goto LABEL_277;
        }

        v114 = *(*(v109 - 8) + 8);
        v146.__vftable = (a1 + 112);
        *(&v153 + 1) = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v114, (a1 + 112)) + 56;
        v115 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
        *(a1 + 32) = v115;
        if (v115 != 12)
        {
          goto LABEL_278;
        }

        v50 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
LABEL_221:
        *(a1 + 32) = v50;
      }

      else
      {
        LOBYTE(v146.__vftable) = 1;
        std::vector<BOOL>::push_back(&__p, &v146);
      }
    }

    if (v40 != 9)
    {
      if (v40 == 14)
      {
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&v144, *(a1 + 88), *(a1 + 96));
        v143 = *(a1 + 64);
        std::string::basic_string[abi:ne200100]<0>(&v141, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(&v142, a1, 0, &v141);
        nlohmann::detail::parse_error::create(&v146, &v143, &v142);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v151, &v146);
      }

      else
      {
LABEL_263:
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&v144, *(a1 + 88), *(a1 + 96));
        v143 = *(a1 + 64);
        std::string::basic_string[abi:ne200100]<0>(&v141, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(&v142, a1, 0x10u, &v141);
        nlohmann::detail::parse_error::create(&v146, &v143, &v142);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v151, &v146);
      }

      v146.__vftable = &unk_2881C1828;
      MEMORY[0x2743CB8E0](&v148);
      std::exception::~exception(&v146);
      goto LABEL_265;
    }

    v144.__r_.__value_.__s.__data_[0] = 1;
    v146.__vftable = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(&v151, &v144);
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100](&v152, &v146);
    v47 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
    *(a1 + 32) = v47;
    if (v47 != 11)
    {
      if (v47 == 4)
      {
        v48 = *(*(*(&v152 + 1) - 8) + 8);
        v146.__vftable = (a1 + 112);
        *(&v153 + 1) = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v48, (a1 + 112)) + 56;
        v49 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
        *(a1 + 32) = v49;
        if (v49 == 12)
        {
          LOBYTE(v146.__vftable) = 0;
          std::vector<BOOL>::push_back(&__p, &v146);
          v50 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
          goto LABEL_221;
        }

LABEL_278:
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&v144, *(a1 + 88), *(a1 + 96));
        v143 = *(a1 + 64);
        std::string::basic_string[abi:ne200100]<0>(&v141, "object separator");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(&v142, a1, 0xCu, &v141);
        nlohmann::detail::parse_error::create(&v146, &v143, &v142);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v151, &v146);
      }

      else
      {
LABEL_277:
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&v144, *(a1 + 88), *(a1 + 96));
        v143 = *(a1 + 64);
        std::string::basic_string[abi:ne200100]<0>(&v141, "object key");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(&v142, a1, 4u, &v141);
        nlohmann::detail::parse_error::create(&v146, &v143, &v142);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v151, &v146);
      }

LABEL_279:
      nlohmann::detail::parse_error::~parse_error(&v146);
LABEL_265:
      if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v142.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v141.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v144.__r_.__value_.__l.__data_);
      }

      goto LABEL_222;
    }

    goto LABEL_128;
  }

  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v150, a1);
  v4 = *(a1 + 176);
  v151 = a2;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0;
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](&v158, v150);
  v160 = v4;
  v161[0] = 9;
  v162 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v161);
  LOBYTE(v146.__vftable) = 1;
  std::vector<BOOL>::push_back(&v153 + 1, &v146);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v150);
  memset(&__p, 0, sizeof(__p));
  v133 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
  while (1)
  {
    while (1)
    {
      v5 = *(a1 + 32);
      if (v5 <= 5)
      {
        break;
      }

      if (v5 <= 7)
      {
        if (v5 != 6)
        {
          v11 = *(a1 + 160);
          if ((v11 & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&v144, *(a1 + 88), *(a1 + 96));
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&v141, *(a1 + 88), *(a1 + 96));
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v142, "number overflow parsing '", &v141);
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v143, &v142, "'");
            nlohmann::detail::out_of_range::create(&v146, &v143);
            nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v151, &v146);
            nlohmann::detail::out_of_range::~out_of_range(&v146);
            if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v143.__r_.__value_.__l.__data_);
            }

            goto LABEL_239;
          }

          if (!v154)
          {
            __assert_rtn("handle_value", "json_sax.hpp", 568, "not keep_stack.empty()");
          }

          if (((*(*(&v153 + 1) + (((v154 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v154 - 1)) & 1) == 0)
          {
            goto LABEL_78;
          }

          LOBYTE(v146.__vftable) = 7;
          v147 = v11;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v146);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v146);
          if ((std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(v159, (*(&v152 + 1) - v152) >> 3, 5) & 1) == 0)
          {
            goto LABEL_77;
          }

          if (v152 == *(&v152 + 1))
          {
            goto LABEL_52;
          }

          v7 = *(*(&v152 + 1) - 8);
          if (!v7)
          {
            goto LABEL_77;
          }

          v12 = *v7;
          if (v12 == 2)
          {
            goto LABEL_44;
          }

          if (v12 == 1)
          {
            if (*(&v155 + 1))
            {
              v28 = *(v155 + ((--*(&v155 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8));
              if (((v28 >> SBYTE8(v155)) & 1) == 0)
              {
                goto LABEL_77;
              }

              if (!*(&v156 + 1))
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

LABEL_75:
              v29 = v146.__vftable;
              v143.__r_.__value_.__s.__data_[0] = v146.__vftable;
              v30 = v147;
              v143.__r_.__value_.__l.__size_ = v147;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v146);
              LOBYTE(v146.__vftable) = 0;
              v147 = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v143);
              v31 = *(&v156 + 1);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v143);
              v22 = *v31;
              *v31 = v29;
              v143.__r_.__value_.__s.__data_[0] = v22;
              v32 = *(v31 + 1);
              *(v31 + 1) = v30;
              v143.__r_.__value_.__l.__size_ = v32;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v143);
              v24 = &v143;
              goto LABEL_76;
            }

            v132 = 615;
            v133 = "not key_keep_stack.empty()";
          }

          else
          {
            v132 = 603;
          }

          __assert_rtn("handle_value", "json_sax.hpp", v132, v133);
        }

        if (!v154)
        {
          goto LABEL_272;
        }

        if (((*(*(&v153 + 1) + (((v154 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v154 - 1)) & 1) == 0)
        {
          goto LABEL_78;
        }

        v14 = *(a1 + 144);
        LOBYTE(v146.__vftable) = 5;
        v147 = v14;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v146);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v146);
        if ((std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(v159, (*(&v152 + 1) - v152) >> 3, 5) & 1) == 0)
        {
          goto LABEL_77;
        }

        if (v152 == *(&v152 + 1))
        {
          goto LABEL_52;
        }

        v7 = *(*(&v152 + 1) - 8);
        if (!v7)
        {
          goto LABEL_77;
        }

        v15 = *v7;
        if (v15 == 2)
        {
          goto LABEL_44;
        }

        if (v15 == 1)
        {
          if (*(&v155 + 1))
          {
            v25 = *(v155 + ((--*(&v155 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8));
            if (((v25 >> SBYTE8(v155)) & 1) == 0)
            {
              goto LABEL_77;
            }

            if (!*(&v156 + 1))
            {
              __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
            }

            goto LABEL_75;
          }

          v130 = 615;
          v133 = "not key_keep_stack.empty()";
        }

        else
        {
          v130 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v130, v133);
      }

      if (v5 != 8)
      {
        if (v5 != 9)
        {
          if (v5 == 14)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&v144, *(a1 + 88), *(a1 + 96));
            v143 = *(a1 + 64);
            std::string::basic_string[abi:ne200100]<0>(&v141, "value");
            nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(&v142, a1, 0, &v141);
            nlohmann::detail::parse_error::create(&v146, &v143, &v142);
            nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v151, &v146);
          }

          else
          {
LABEL_237:
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&v144, *(a1 + 88), *(a1 + 96));
            v143 = *(a1 + 64);
            std::string::basic_string[abi:ne200100]<0>(&v141, "value");
            nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(&v142, a1, 0x10u, &v141);
            nlohmann::detail::parse_error::create(&v146, &v143, &v142);
            nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v151, &v146);
          }

          v146.__vftable = &unk_2881C1828;
          MEMORY[0x2743CB8E0](&v148);
          std::exception::~exception(&v146);
          goto LABEL_239;
        }

        v144.__r_.__value_.__s.__data_[0] = std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(v159, (*(&v152 + 1) - v152) >> 3, 0);
        std::vector<BOOL>::push_back(&v153 + 1, &v144);
        v146.__vftable = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(&v151, 1u);
        v147 = v9;
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100](&v152, &v147);
        v10 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
        *(a1 + 32) = v10;
        if (v10 != 11)
        {
          if (v10 == 4)
          {
            nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::key();
          }

          goto LABEL_274;
        }

        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(&v151);
        goto LABEL_78;
      }

      v144.__r_.__value_.__s.__data_[0] = std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(v159, (*(&v152 + 1) - v152) >> 3, 2);
      std::vector<BOOL>::push_back(&v153 + 1, &v144);
      v146.__vftable = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(&v151, 2u);
      v147 = v17;
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100](&v152, &v147);
      v18 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
      *(a1 + 32) = v18;
      if (v18 == 10)
      {
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(&v151);
        goto LABEL_78;
      }

      LOBYTE(v146.__vftable) = 1;
      std::vector<BOOL>::push_back(&__p, &v146);
    }

    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v13 = 1;
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_237;
        }

        v13 = 0;
      }

      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(&v151, v13);
      goto LABEL_78;
    }

    if (v5 == 3)
    {
      if (!v154)
      {
        goto LABEL_272;
      }

      if (((*(*(&v153 + 1) + (((v154 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v154 - 1)) & 1) == 0)
      {
        goto LABEL_78;
      }

      LOBYTE(v146.__vftable) = 0;
      v147 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v146);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v146);
      if ((std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(v159, (*(&v152 + 1) - v152) >> 3, 5) & 1) == 0)
      {
        goto LABEL_77;
      }

      if (v152 != *(&v152 + 1))
      {
        v7 = *(*(&v152 + 1) - 8);
        if (!v7)
        {
          goto LABEL_77;
        }

        v16 = *v7;
        if (v16 == 2)
        {
          goto LABEL_44;
        }

        if (v16 == 1)
        {
          if (*(&v155 + 1))
          {
            v26 = *(v155 + ((--*(&v155 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8));
            if ((v26 >> SBYTE8(v155)))
            {
              if (!*(&v156 + 1))
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              goto LABEL_75;
            }

LABEL_77:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v146);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v147, LOBYTE(v146.__vftable));
            goto LABEL_78;
          }

          v131 = 615;
          v133 = "not key_keep_stack.empty()";
        }

        else
        {
          v131 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v131, v133);
      }

LABEL_52:
      v19 = v146.__vftable;
      v144.__r_.__value_.__s.__data_[0] = v146.__vftable;
      v20 = v147;
      v144.__r_.__value_.__l.__size_ = v147;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v146);
      LOBYTE(v146.__vftable) = 0;
      v147 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v144);
      v21 = v151;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v144);
      v22 = *v21;
      *v21 = v19;
      v144.__r_.__value_.__s.__data_[0] = v22;
      v23 = *(v21 + 1);
      *(v21 + 1) = v20;
      v144.__r_.__value_.__l.__size_ = v23;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v144);
      v24 = &v144;
LABEL_76:
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v24->__r_.__value_.__l.__size_, v22);
      goto LABEL_77;
    }

    if (v5 == 4)
    {
      if (!v154)
      {
LABEL_272:
        __assert_rtn("handle_value", "json_sax.hpp", 568, "not keep_stack.empty()");
      }

      if ((*(*(&v153 + 1) + (((v154 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v154 - 1)))
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(&v146);
      }

      goto LABEL_78;
    }

    if (!v154)
    {
      goto LABEL_272;
    }

    if ((*(*(&v153 + 1) + (((v154 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v154 - 1)))
    {
      v6 = *(a1 + 152);
      LOBYTE(v146.__vftable) = 6;
      v147 = v6;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v146);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v146);
      if ((std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(v159, (*(&v152 + 1) - v152) >> 3, 5) & 1) == 0)
      {
        goto LABEL_77;
      }

      if (v152 == *(&v152 + 1))
      {
        goto LABEL_52;
      }

      v7 = *(*(&v152 + 1) - 8);
      if (!v7)
      {
        goto LABEL_77;
      }

      v8 = *v7;
      if (v8 != 2)
      {
        if (v8 == 1)
        {
          if (*(&v155 + 1))
          {
            v27 = *(v155 + ((--*(&v155 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8));
            if ((v27 >> SBYTE8(v155)))
            {
              if (!*(&v156 + 1))
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              goto LABEL_75;
            }

            goto LABEL_77;
          }

          v129 = 615;
          v133 = "not key_keep_stack.empty()";
        }

        else
        {
          v129 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v129, v133);
      }

LABEL_44:
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v7 + 1), &v146);
      goto LABEL_77;
    }

LABEL_78:
    v33 = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_245;
    }

    v34 = __p.__r_.__value_.__r.__words[0];
LABEL_80:
    v35 = v33 - 1;
    if (((*(v34 + (((v33 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v33 - 1)) & 1) == 0)
    {
      break;
    }

    v36 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
    *(a1 + 32) = v36;
    if (v36 != 13)
    {
      if (v36 != 10)
      {
        __p.__r_.__value_.__l.__size_ = v33;
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&v144, *(a1 + 88), *(a1 + 96));
        v143 = *(a1 + 64);
        std::string::basic_string[abi:ne200100]<0>(&v141, "array");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(&v142, a1, 0xAu, &v141);
        nlohmann::detail::parse_error::create(&v146, &v143, &v142);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v151, &v146);
        goto LABEL_275;
      }

      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(&v151);
      goto LABEL_87;
    }

    __p.__r_.__value_.__l.__size_ = v33;
    *(a1 + 32) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
  }

  v37 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
  *(a1 + 32) = v37;
  if (v37 != 13)
  {
    if (v37 != 11)
    {
      __p.__r_.__value_.__l.__size_ = v33;
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&v144, *(a1 + 88), *(a1 + 96));
      v143 = *(a1 + 64);
      std::string::basic_string[abi:ne200100]<0>(&v141, "object");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(&v142, a1, 0xBu, &v141);
      nlohmann::detail::parse_error::create(&v146, &v143, &v142);
      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v151, &v146);
      goto LABEL_275;
    }

    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(&v151);
LABEL_87:
    --v33;
    if (!v35)
    {
      goto LABEL_245;
    }

    goto LABEL_80;
  }

  __p.__r_.__value_.__l.__size_ = v33;
  v38 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
  *(a1 + 32) = v38;
  if (v38 == 4)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::key();
  }

LABEL_274:
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&v144, *(a1 + 88), *(a1 + 96));
  v143 = *(a1 + 64);
  std::string::basic_string[abi:ne200100]<0>(&v141, "object key");
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(&v142, a1, 4u, &v141);
  nlohmann::detail::parse_error::create(&v146, &v143, &v142);
  nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v151, &v146);
LABEL_275:
  nlohmann::detail::parse_error::~parse_error(&v146);
LABEL_239:
  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v141.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v144.__r_.__value_.__l.__data_);
  }

LABEL_245:
  if (__p.__r_.__value_.__r.__words[0])
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v119 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
  *(a1 + 32) = v119;
  if (v119 != 15)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&__p, *(a1 + 88), *(a1 + 96));
    v144 = *(a1 + 64);
    std::string::basic_string[abi:ne200100]<0>(&v142, "value");
    nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(&v143, a1, 0xFu, &v142);
    nlohmann::detail::parse_error::create(&v146, &v144, &v143);
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v151, &v146);
    v146.__vftable = &unk_2881C1828;
    MEMORY[0x2743CB8E0](&v148);
    std::exception::~exception(&v146);
    if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v143.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v142.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v157 == 1)
  {
    v139[0] = 9;
    v140 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v139);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v139);
    v120 = *a2;
    *a2 = 9;
    v139[0] = v120;
    v121 = *(a2 + 1);
    *(a2 + 1) = 0;
    v140 = v121;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v139);
    v122 = &v140;
    goto LABEL_258;
  }

  if (*a2 == 9)
  {
    v137[0] = 0;
    v138 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v137);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v137);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v137);
    v120 = *a2;
    *a2 = 0;
    v137[0] = v120;
    v123 = *(a2 + 1);
    *(a2 + 1) = 0;
    v138 = v123;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v137);
    v122 = &v138;
LABEL_258:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v122, v120);
  }

  nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_sax_dom_callback_parser(&v151);
LABEL_260:
  v124 = *MEMORY[0x277D85DE8];
}

void sub_27260E3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, std::exception a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  nlohmann::detail::parse_error::~parse_error(&a43);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a40)
  {
    operator delete(a40);
  }

  if (a53)
  {
    operator delete(a53);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::~lexer(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 24))
  {
    if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) != 239)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::unget(a1);
      goto LABEL_7;
    }

    if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) != 187 || nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) != 191)
    {
      v2 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
      goto LABEL_150;
    }
  }

  while (1)
  {
    while (1)
    {
LABEL_7:
      while (1)
      {
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
        v3 = *(a1 + 16);
        if (v3 > 12)
        {
          break;
        }

        if ((v3 - 9) >= 2)
        {
          if ((v3 + 1) < 2)
          {
            result = 15;
            goto LABEL_152;
          }

          goto LABEL_147;
        }
      }

      if (v3 > 31)
      {
        break;
      }

      if (v3 != 13)
      {
        goto LABEL_147;
      }
    }

    if (v3 > 43)
    {
      break;
    }

    if (v3 != 32)
    {
      if (v3 == 34)
      {
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::reset(a1);
        if (*(a1 + 16) != 34)
        {
          __assert_rtn("scan_string", "lexer.hpp", 250, "current == '\\'");
        }

        while (1)
        {
          v16 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) + 1;
          result = 4;
          v2 = "invalid string: missing closing quote";
          switch(v16)
          {
            case 0:
              goto LABEL_150;
            case 1:
              v2 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
              goto LABEL_150;
            case 2:
              v2 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
              goto LABEL_150;
            case 3:
              v2 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
              goto LABEL_150;
            case 4:
              v2 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
              goto LABEL_150;
            case 5:
              v2 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
              goto LABEL_150;
            case 6:
              v2 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
              goto LABEL_150;
            case 7:
              v2 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
              goto LABEL_150;
            case 8:
              v2 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
              goto LABEL_150;
            case 9:
              v2 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
              goto LABEL_150;
            case 10:
              v2 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
              goto LABEL_150;
            case 11:
              v2 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
              goto LABEL_150;
            case 12:
              v2 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
              goto LABEL_150;
            case 13:
              v2 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
              goto LABEL_150;
            case 14:
              v2 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
              goto LABEL_150;
            case 15:
              v2 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
              goto LABEL_150;
            case 16:
              v2 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
              goto LABEL_150;
            case 17:
              v2 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
              goto LABEL_150;
            case 18:
              v2 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
              goto LABEL_150;
            case 19:
              v2 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
              goto LABEL_150;
            case 20:
              v2 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
              goto LABEL_150;
            case 21:
              v2 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
              goto LABEL_150;
            case 22:
              v2 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
              goto LABEL_150;
            case 23:
              v2 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
              goto LABEL_150;
            case 24:
              v2 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
              goto LABEL_150;
            case 25:
              v2 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
              goto LABEL_150;
            case 26:
              v2 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
              goto LABEL_150;
            case 27:
              v2 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
              goto LABEL_150;
            case 28:
              v2 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
              goto LABEL_150;
            case 29:
              v2 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
              goto LABEL_150;
            case 30:
              v2 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
              goto LABEL_150;
            case 31:
              v2 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
              goto LABEL_150;
            case 32:
              v2 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
              goto LABEL_150;
            case 33:
            case 34:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 92:
            case 94:
            case 95:
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
            case 102:
            case 103:
            case 104:
            case 105:
            case 106:
            case 107:
            case 108:
            case 109:
            case 110:
            case 111:
            case 112:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case 127:
            case 128:
              v17 = *(a1 + 16);
              goto LABEL_65;
            case 35:
              goto LABEL_152;
            case 93:
              v19 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
              v2 = "invalid string: forbidden character after backslash";
              if (v19 <= 101)
              {
                if (v19 > 91)
                {
                  if (v19 == 92)
                  {
                    LOBYTE(v17) = 92;
                  }

                  else
                  {
                    if (v19 != 98)
                    {
                      goto LABEL_150;
                    }

                    LOBYTE(v17) = 8;
                  }
                }

                else if (v19 == 34)
                {
                  LOBYTE(v17) = 34;
                }

                else
                {
                  if (v19 != 47)
                  {
                    goto LABEL_150;
                  }

                  LOBYTE(v17) = 47;
                }
              }

              else if (v19 <= 113)
              {
                if (v19 == 102)
                {
                  LOBYTE(v17) = 12;
                }

                else
                {
                  if (v19 != 110)
                  {
                    goto LABEL_150;
                  }

                  LOBYTE(v17) = 10;
                }
              }

              else
              {
                switch(v19)
                {
                  case 'r':
                    LOBYTE(v17) = 13;
                    break;
                  case 't':
                    LOBYTE(v17) = 9;
                    break;
                  case 'u':
                    codepoint = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_codepoint(a1);
                    v17 = codepoint;
                    if (codepoint == -1)
                    {
LABEL_193:
                      v2 = "invalid string: '\\u' must be followed by 4 hex digits";
                      goto LABEL_150;
                    }

                    if ((codepoint & 0xFFFFFC00) == 0xD800)
                    {
                      if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) != 92 || nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) != 117)
                      {
                        goto LABEL_194;
                      }

                      v21 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_codepoint(a1);
                      v22 = v21;
                      if (v21 == -1)
                      {
                        goto LABEL_193;
                      }

                      if (v21 >> 10 != 55)
                      {
LABEL_194:
                        v2 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
                        goto LABEL_150;
                      }

                      v23 = v21 + (v17 << 10) - 56613888;
                      std::string::push_back((a1 + 72), (v23 >> 18) | 0xF0);
                      std::string::push_back((a1 + 72), (v23 >> 12) & 0x3F | 0x80);
                      std::string::push_back((a1 + 72), (v23 >> 6) & 0x3F | 0x80);
                      LOBYTE(v17) = v22 & 0x3F | 0x80;
                    }

                    else
                    {
                      if ((codepoint & 0xFFFFFC00) == 0xDC00)
                      {
                        v2 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
                        goto LABEL_150;
                      }

                      if (codepoint > 0x7F)
                      {
                        if (codepoint > 0x7FF)
                        {
                          std::string::push_back((a1 + 72), (codepoint >> 12) | 0xE0);
                          std::string::push_back((a1 + 72), (v17 >> 6) & 0x3F | 0x80);
                        }

                        else
                        {
                          std::string::push_back((a1 + 72), (codepoint >> 6) | 0xC0);
                        }

                        LOBYTE(v17) = v17 & 0x3F | 0x80;
                      }
                    }

                    break;
                  default:
                    goto LABEL_150;
                }
              }

LABEL_65:
              std::string::push_back((a1 + 72), v17);
              break;
            case 195:
            case 196:
            case 197:
            case 198:
            case 199:
            case 200:
            case 201:
            case 202:
            case 203:
            case 204:
            case 205:
            case 206:
            case 207:
            case 208:
            case 209:
            case 210:
            case 211:
            case 212:
            case 213:
            case 214:
            case 215:
            case 216:
            case 217:
            case 218:
            case 219:
            case 220:
            case 221:
            case 222:
            case 223:
            case 224:
              *&v37 = 0xBF00000080;
              v18 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::next_byte_in_range(a1, &v37, 2uLL);
              goto LABEL_68;
            case 225:
              v37 = xmmword_272756630;
              v18 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::next_byte_in_range(a1, &v37, 4uLL);
              goto LABEL_68;
            case 226:
            case 227:
            case 228:
            case 229:
            case 230:
            case 231:
            case 232:
            case 233:
            case 234:
            case 235:
            case 236:
            case 237:
            case 239:
            case 240:
              v37 = xmmword_272756620;
              v18 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::next_byte_in_range(a1, &v37, 4uLL);
              goto LABEL_68;
            case 238:
              v37 = xmmword_272756610;
              v18 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::next_byte_in_range(a1, &v37, 4uLL);
              goto LABEL_68;
            case 241:
              v38 = 0xBF00000080;
              v37 = xmmword_27275A7AC;
              v18 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::next_byte_in_range(a1, &v37, 6uLL);
              goto LABEL_68;
            case 242:
            case 243:
            case 244:
              v38 = 0xBF00000080;
              v37 = xmmword_27275A7C4;
              v18 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::next_byte_in_range(a1, &v37, 6uLL);
              goto LABEL_68;
            case 245:
              v38 = 0xBF00000080;
              v37 = xmmword_27275A7DC;
              v18 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::next_byte_in_range(a1, &v37, 6uLL);
LABEL_68:
              if ((v18 & 1) == 0)
              {
                goto LABEL_151;
              }

              continue;
            default:
              v2 = "invalid string: ill-formed UTF-8 byte";
              goto LABEL_150;
          }
        }
      }

      goto LABEL_147;
    }
  }

  if (v3 <= 57)
  {
    if ((v3 - 48) >= 0xA)
    {
      if (v3 == 44)
      {
        result = 13;
        goto LABEL_152;
      }

      if (v3 != 45)
      {
LABEL_147:
        v2 = "invalid literal";
        goto LABEL_150;
      }
    }

    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::reset(a1);
    v4 = *(a1 + 16);
    if ((v4 - 49) < 9)
    {
      v5 = (a1 + 72);
      v6 = 5;
LABEL_20:
      std::string::push_back(v5, v4);
      v7 = (a1 + 72);
      while (1)
      {
        v8 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
        if ((v8 - 48) >= 0xA)
        {
          break;
        }

        std::string::push_back((a1 + 72), *(a1 + 16));
      }

      if (v8 != 46)
      {
        if (v8 == 69 || v8 == 101)
        {
          goto LABEL_26;
        }

        goto LABEL_130;
      }

      goto LABEL_118;
    }

    if (v4 == 48)
    {
      std::string::push_back((a1 + 72), 48);
      v6 = 5;
    }

    else
    {
      if (v4 != 45)
      {
        __assert_rtn("scan_number", "lexer.hpp", 928, "false");
      }

      v5 = (a1 + 72);
      std::string::push_back((a1 + 72), 45);
      v15 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
      if ((v15 - 49) < 9)
      {
        v4 = *(a1 + 16);
        v6 = 6;
        goto LABEL_20;
      }

      if (v15 != 48)
      {
        v2 = "invalid number; expected digit after '-'";
        goto LABEL_150;
      }

      std::string::push_back((a1 + 72), *(a1 + 16));
      v6 = 6;
    }

    v24 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
    if (v24 == 101 || v24 == 69)
    {
      v7 = (a1 + 72);
LABEL_26:
      std::string::push_back(v7, *(a1 + 16));
      v9 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
      if ((v9 - 48) < 0xA)
      {
        v10 = (a1 + 72);
LABEL_28:
        v11 = *(a1 + 16);
        for (i = v10; ; i = (a1 + 72))
        {
          std::string::push_back(i, v11);
          if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) - 48 > 9)
          {
            break;
          }

          v11 = *(a1 + 16);
        }

LABEL_123:
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::unget(a1);
        *&v37 = 0;
        *__error() = 0;
LABEL_124:
        v26 = (a1 + 72);
        v27 = (a1 + 72);
        if (*(a1 + 95) < 0)
        {
          v27 = *v26;
        }

        *(a1 + 120) = strtod(v27, &v37);
        v28 = *(a1 + 95);
        if (v28 < 0)
        {
          v26 = *(a1 + 72);
          v28 = *(a1 + 80);
        }

        if (v37 != (v26 + v28))
        {
          __assert_rtn("scan_number", "lexer.hpp", 1208, "endptr == token_buffer.data() + token_buffer.size()");
        }

        result = 7;
        goto LABEL_152;
      }

      if (v9 == 45 || v9 == 43)
      {
        v10 = (a1 + 72);
        std::string::push_back((a1 + 72), *(a1 + 16));
        if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) - 48 >= 0xA)
        {
          v2 = "invalid number; expected digit after exponent sign";
          goto LABEL_150;
        }

        goto LABEL_28;
      }

      v2 = "invalid number; expected '+', '-', or digit after exponent";
LABEL_150:
      *(a1 + 96) = v2;
LABEL_151:
      result = 14;
LABEL_152:
      v36 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (v24 != 46)
    {
LABEL_130:
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::unget(a1);
      *&v37 = 0;
      *__error() = 0;
      v29 = (a1 + 72);
      v30 = *(a1 + 95);
      v31 = (a1 + 72);
      if (v6 == 5)
      {
        if (v30 < 0)
        {
          v31 = *v29;
        }

        v32 = strtoull(v31, &v37, 10);
        v33 = *(a1 + 95);
        if (v33 < 0)
        {
          v29 = *(a1 + 72);
          v33 = *(a1 + 80);
        }

        if (v37 != (v29 + v33))
        {
          __assert_rtn("scan_number", "lexer.hpp", 1175, "endptr == token_buffer.data() + token_buffer.size()");
        }

        if (*__error())
        {
          goto LABEL_124;
        }

        result = 5;
        v34 = 112;
      }

      else
      {
        if (v30 < 0)
        {
          v31 = *v29;
        }

        v32 = strtoll(v31, &v37, 10);
        v35 = *(a1 + 95);
        if (v35 < 0)
        {
          v29 = *(a1 + 72);
          v35 = *(a1 + 80);
        }

        if (v37 != (v29 + v35))
        {
          __assert_rtn("scan_number", "lexer.hpp", 1191, "endptr == token_buffer.data() + token_buffer.size()");
        }

        if (*__error())
        {
          goto LABEL_124;
        }

        result = 6;
        v34 = 104;
      }

      *(a1 + v34) = v32;
      goto LABEL_152;
    }

    v7 = (a1 + 72);
LABEL_118:
    std::string::push_back(v7, *(a1 + 128));
    if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) - 48 > 9)
    {
      v2 = "invalid number; expected digit after '.'";
      goto LABEL_150;
    }

    v7 = (a1 + 72);
    do
    {
      std::string::push_back((a1 + 72), *(a1 + 16));
      v25 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
    }

    while ((v25 - 48) < 0xA);
    if (v25 != 101 && v25 != 69)
    {
      goto LABEL_123;
    }

    goto LABEL_26;
  }

  if (v3 > 109)
  {
    if (v3 > 122)
    {
      if (v3 == 123)
      {
        result = 9;
        goto LABEL_152;
      }

      if (v3 == 125)
      {
        result = 11;
        goto LABEL_152;
      }
    }

    else
    {
      if (v3 == 110)
      {
        LODWORD(v37) = 1819047278;
        result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_literal(a1, &v37, 4, 3);
        goto LABEL_152;
      }

      if (v3 == 116)
      {
        LODWORD(v37) = 1702195828;
        result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_literal(a1, &v37, 4, 1);
        goto LABEL_152;
      }
    }

    goto LABEL_147;
  }

  if (v3 <= 92)
  {
    if (v3 == 58)
    {
      result = 12;
      goto LABEL_152;
    }

    if (v3 == 91)
    {
      result = 8;
      goto LABEL_152;
    }

    goto LABEL_147;
  }

  if (v3 == 93)
  {
    result = 10;
    goto LABEL_152;
  }

  if (v3 != 102)
  {
    goto LABEL_147;
  }

  v14 = *MEMORY[0x277D85DE8];

  return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_literal(a1, "false", 5, 2);
}