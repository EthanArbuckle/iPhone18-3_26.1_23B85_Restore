void virtual thunk tovp::vx::IO_Parameter_Setter_Delegate_Factory::~IO_Parameter_Setter_Delegate_Factory(vp::vx::IO_Parameter_Setter_Delegate_Factory *this)
{
  v1 = (this + *(*this - 24));
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(v1 + 1);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(v1 + 1);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::IO_Parameter_Setter_Delegate_Factory::new_node_delegate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = (*(*a2 + 8))(a2);
  if (v7)
  {
    (*(*v7 + 16))(&v10);
    if (v10 != v11)
    {
      v18 = *v10;
      v8 = boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::at(a1 + 8, &v18);
      v14 = 0;
      v15 = a3;
      v16 = xmmword_272756600;
      v9 = (*(*a3 + 16))(a3, 80, 8);
      vp::vx::data_flow::State<void>::State(v17, v8);
      *(v9 + 56) = &unk_2881C6630;
      operator new();
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }
  }
}

void *caulk::function_ref<void ()(std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>)>::operator()(void (**a1)(void, uint64_t *), uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  v5 = v3;
  v6 = *(a2 + 1);
  v7 = a2[3];
  v2(a1 + 1, &v5);
  return std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>::reset[abi:ne200100](&v5);
}

vp::vx::IO_Parameter_Setter_Delegate **std::unique_ptr<vp::vx::IO_Parameter_Setter_Delegate,vp::Allocator_Delete<vp::vx::IO_Parameter_Setter_Delegate>>::reset[abi:ne200100](vp::vx::IO_Parameter_Setter_Delegate **result, vp::vx::IO_Parameter_Setter_Delegate *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::IO_Parameter_Setter_Delegate::~IO_Parameter_Setter_Delegate(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void virtual thunk tovp::vx::IO_Personal_Audio_Command::~IO_Personal_Audio_Command(vp::vx::IO_Personal_Audio_Command *this)
{
  vp::vx::IO_Personal_Audio_Command::~IO_Personal_Audio_Command((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Personal_Audio_Command::~IO_Personal_Audio_Command((this + *(*this - 24)));
}

void vp::vx::IO_Personal_Audio_Command::~IO_Personal_Audio_Command(vp::vx::IO_Personal_Audio_Command *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(this + 8);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener(this + 2, v2);
    *(this + 8) = 0;
  }

  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    vp::vx::io::get_log_context_info(__p, this + 40, "vp::vx::IO_Personal_Audio_Command]", 33);
    v4 = v15;
    v5 = v15;
    v6 = __p[1];
    v8 = vp::get_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = v6;
      }

      v10 = __p[0];
      if (v5 >= 0)
      {
        v10 = __p;
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
      v17 = v10;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v15;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 2);
  *(this + 5) = &unk_2881C6630;
  v12 = *(this + 7);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::IO_Personal_Audio_Command::~IO_Personal_Audio_Command(this);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::IO_Personal_Audio_Command::set_node(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v3 = a2[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    vp::vx::data_flow::State<void>::unregister_listener((a1 + 8), v4);
    *(a1 + 32) = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_272664E6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(vp::vx::IO_Personal_Audio_Settings const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(vp::vx::IO_Personal_Audio_Settings const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<vp::vx::IO_Personal_Audio_Settings>::register_listener(std::function<void ()(vp::vx::IO_Personal_Audio_Settings const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::IO_Personal_Audio_Settings>::register_listener(std::function<void ()(vp::vx::IO_Personal_Audio_Settings const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<vp::vx::IO_Personal_Audio_Settings>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::IO_Personal_Audio_Settings>::compare_value(uint64_t a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  if (**a2 != **a3)
  {
    return 0;
  }

  v3 = *(*a2 + 1);
  v4 = *(*a3 + 1);
  result = (v3 | v4) == 0;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return CFEqual(v3, v4) != 0;
  }

  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::IO_Personal_Audio_Settings>::destroy_value(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 8);
  if (v2)
  {
    CFRelease(v2);
  }
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::IO_Personal_Audio_Settings>::move_value(uint64_t a1, uint64_t *a2, _BYTE **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = **a3;
  *(v3 + 8) = *(v4 + 1);
  *(v4 + 1) = 0;
}

CFTypeRef vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::IO_Personal_Audio_Settings>::copy_value(uint64_t a1, void *a2, _BYTE **a3)
{
  v3 = *a2;
  v4 = *a3;
  **a2 = **a3;
  v5 = *(v4 + 1);
  if (v5)
  {
    result = CFRetain(*(v4 + 1));
  }

  *(v3 + 1) = v5;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::IO_Personal_Audio_Settings>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::IO_Personal_Audio_Settings>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 16, 8);
  *a2 = result;
  return result;
}

void std::__function::__func<vp::vx::data_flow::State<vp::vx::IO_Personal_Audio_Settings>::register_listener(std::function<void ()(vp::vx::IO_Personal_Audio_Settings const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::IO_Personal_Audio_Settings>::register_listener(std::function<void ()(vp::vx::IO_Personal_Audio_Settings const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(vp::vx::IO_Personal_Audio_Settings const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<vp::vx::IO_Personal_Audio_Settings>::register_listener(std::function<void ()(vp::vx::IO_Personal_Audio_Settings const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::IO_Personal_Audio_Settings>::register_listener(std::function<void ()(vp::vx::IO_Personal_Audio_Settings const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8D50;
  std::__function::__value_func<void ()(vp::vx::IO_Personal_Audio_Settings const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<vp::vx::IO_Personal_Audio_Settings>::register_listener(std::function<void ()(vp::vx::IO_Personal_Audio_Settings const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::IO_Personal_Audio_Settings>::register_listener(std::function<void ()(vp::vx::IO_Personal_Audio_Settings const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8D50;
  std::__function::__value_func<void ()(vp::vx::IO_Personal_Audio_Settings const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0>,void ()(vp::vx::IO_Personal_Audio_Settings const&)>::operator()(void *a1, unsigned __int8 *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = a1[2];
      if (v8)
      {
        log = vp::get_log(v6);
        v10 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          if (v5)
          {
            v11 = v5 + 40;
          }

          else
          {
            v11 = 0;
          }

          vp::vx::io::get_log_context_info(&__p, v11, "vp::vx::IO_Personal_Audio_Command]", 33);
          v12 = v58;
          v13 = v58;
          v14 = v57;
          v16 = vp::get_log(v15);
          v10 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
          if (v10)
          {
            if (v13 >= 0)
            {
              v17 = v12;
            }

            else
            {
              v17 = v14;
            }

            p_p = __p;
            if (v13 >= 0)
            {
              p_p = &__p;
            }

            if (v17)
            {
              v19 = " ";
            }

            else
            {
              v19 = "";
            }

            v20 = *a2;
            *buf = 136315650;
            *&buf[4] = p_p;
            v60 = 2080;
            *v61 = v19;
            if (v20)
            {
              v21 = "enabled";
            }

            else
            {
              v21 = "disabled";
            }

            *&v61[8] = 2080;
            v62 = v21;
            _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_DEFAULT, "%s%spersonal audio is %s", buf, 0x20u);
            LOBYTE(v13) = v58;
          }

          if ((v13 & 0x80) != 0)
          {
            operator delete(__p);
          }
        }

        v22 = *a2;
        if (v22 == 1 && *(a2 + 1))
        {
          v55 = *(a2 + 1);
          v53 = &v55;
          v54 = 8;
          v23 = vp::get_log(v10);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            if (v5)
            {
              v24 = v5 + 40;
            }

            else
            {
              v24 = 0;
            }

            vp::vx::io::get_log_context_info(&__p, v24, "vp::vx::IO_Personal_Audio_Command]", 33);
            v25 = v58;
            v26 = v58;
            v27 = v57;
            v29 = vp::get_log(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = __p;
              strcpy(buf, "'pahp'");
              std::string::basic_string[abi:ne200100]<0>(v51, buf);
              if (v26 >= 0)
              {
                v31 = v25;
              }

              else
              {
                v31 = v27;
              }

              v32 = " ";
              v33 = &__p;
              if (v26 < 0)
              {
                v33 = v30;
              }

              v34 = v31 == 0;
              v35 = v51[0];
              if (v34)
              {
                v32 = "";
              }

              *buf = 136315650;
              *&buf[4] = v33;
              v60 = 2080;
              *v61 = v32;
              if (v52 >= 0)
              {
                v35 = v51;
              }

              *&v61[8] = 2080;
              v62 = v35;
              _os_log_impl(&dword_2724B4000, v29, OS_LOG_TYPE_DEFAULT, "%s%ssetting property %s", buf, 0x20u);
              if (v52 < 0)
              {
                operator delete(v51[0]);
              }

              LOBYTE(v26) = v58;
            }

            if ((v26 & 0x80) != 0)
            {
              operator delete(__p);
            }
          }

          v36 = (*(*v8 + 16))(v8);
          v10 = (*(*v36 + 40))(buf);
          if ((v65 & 1) == 0 && SHIBYTE(v63) < 0)
          {
            v10 = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v64, *&v61[2], v63 & 0x7FFFFFFFFFFFFFFFLL);
          }

          v22 = *a2;
        }

        LODWORD(v55) = v22 ^ 1;
        v53 = &v55;
        v54 = 4;
        v37 = vp::get_log(v10);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          if (v5)
          {
            v38 = v5 + 40;
          }

          else
          {
            v38 = 0;
          }

          vp::vx::io::get_log_context_info(&__p, v38, "vp::vx::IO_Personal_Audio_Command]", 33);
          v39 = v58;
          v40 = v58;
          v41 = v57;
          v43 = vp::get_log(v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = __p;
            strcpy(buf, "'pahb'");
            std::string::basic_string[abi:ne200100]<0>(v51, buf);
            if (v40 >= 0)
            {
              v45 = v39;
            }

            else
            {
              v45 = v41;
            }

            v46 = " ";
            v47 = &__p;
            if (v40 < 0)
            {
              v47 = v44;
            }

            v34 = v45 == 0;
            v48 = v51[0];
            if (v34)
            {
              v46 = "";
            }

            *buf = 136315650;
            *&buf[4] = v47;
            v60 = 2080;
            *v61 = v46;
            if (v52 >= 0)
            {
              v48 = v51;
            }

            *&v61[8] = 2080;
            v62 = v48;
            _os_log_impl(&dword_2724B4000, v43, OS_LOG_TYPE_DEFAULT, "%s%ssetting property %s", buf, 0x20u);
            if (v52 < 0)
            {
              operator delete(v51[0]);
            }

            LOBYTE(v40) = v58;
          }

          if ((v40 & 0x80) != 0)
          {
            operator delete(__p);
          }
        }

        v49 = (*(*v8 + 16))(v8);
        (*(*v49 + 40))(buf);
        if ((v65 & 1) == 0 && SHIBYTE(v63) < 0)
        {
          (*(*v64 + 24))(v64, *&v61[2], v63 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v50 = *MEMORY[0x277D85DE8];
}

void sub_272665900(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0>,void ()(vp::vx::IO_Personal_Audio_Settings const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0>,void ()(vp::vx::IO_Personal_Audio_Settings const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0>,void ()(vp::vx::IO_Personal_Audio_Settings const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B8D98;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0>,void ()(vp::vx::IO_Personal_Audio_Settings const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8D98;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0>,void ()(vp::vx::IO_Personal_Audio_Settings const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8D98;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t vp::vx::IO_Personal_Audio_Command::get_property_ids@<X0>(int a1@<W1>, void *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v4 = 0x7061687070616862;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v4, &v5, 2uLL);
    v3 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_272665B5C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::vx::IO_Personal_Audio_Command::get_parameter_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void virtual thunk tovp::vx::IO_Personal_Audio_Command_Factory::~IO_Personal_Audio_Command_Factory(vp::vx::IO_Personal_Audio_Command_Factory *this)
{
  vp::vx::IO_Personal_Audio_Command_Factory::~IO_Personal_Audio_Command_Factory((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Personal_Audio_Command_Factory::~IO_Personal_Audio_Command_Factory((this + *(*this - 24)));
}

void vp::vx::IO_Personal_Audio_Command_Factory::~IO_Personal_Audio_Command_Factory(vp::vx::IO_Personal_Audio_Command_Factory *this)
{
  v20 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    if (this)
    {
      v3 = this + 32;
    }

    else
    {
      v3 = 0;
    }

    vp::vx::io::get_log_context_info(__p, v3, "vp::vx::IO_Personal_Audio_Command_Factory]", 41);
    v4 = v15;
    v5 = v15;
    v6 = __p[1];
    v8 = vp::get_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = v6;
      }

      v10 = __p[0];
      if (v5 >= 0)
      {
        v10 = __p;
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
      v17 = v10;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v15;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 2);
  *(this + 4) = &unk_2881C6630;
  v12 = *(this + 6);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::IO_Personal_Audio_Command_Factory::~IO_Personal_Audio_Command_Factory(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::IO_Personal_Audio_Command_Factory::new_node_command(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  result = (*(*a2 + 24))(a2);
  if (result)
  {
    v7 = result;
    result = (*(*result + 8))(result, 1885431906, 0);
    if (result)
    {
      result = (*(*v7 + 8))(v7, 1885431920, 0);
      if (result)
      {
        v9 = 0;
        v10 = a3;
        v11 = xmmword_2727566C0;
        *((*(*a3 + 16))(a3, 64, 8) + 40) = &unk_2881C6630;
        operator new();
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726660B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

vp::vx::IO_Personal_Audio_Command **std::unique_ptr<vp::vx::IO_Personal_Audio_Command,vp::Allocator_Delete<vp::vx::IO_Personal_Audio_Command>>::reset[abi:ne200100](vp::vx::IO_Personal_Audio_Command **result, vp::vx::IO_Personal_Audio_Command *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::IO_Personal_Audio_Command::~IO_Personal_Audio_Command(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void vp::vx::Voice_Processor_State_Manager::create_state_for_darwin_notification(vp::vx::Voice_Processor_State_Manager *this, __n128 *a2, char *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  mach_absolute_time();
  v5 = mach_absolute_time();
  v14[0] = std::pmr::get_default_resource(v5);
  v14[1] = 0;
  v14[2] = &vp::vx::data_flow::Value::type_id<vp::vx::data_flow::Time_Stamped<unsigned long long>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v14);
  *storage = 0;
  storage[1] = v5;
  vp::vx::data_flow::State_Manager::create_state(&handler, a2 + 3, v14);
  LODWORD(v11) = handler;
  v12 = v16;
  v16 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&handler);
  vp::vx::data_flow::Value::~Value(v14);
  v9 = v11;
  v10 = v12;
  v12 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v11);
  std::string::basic_string[abi:ne200100]<0>(&__p, a3);
  vp::vx::data_flow::State<void>::State(&v8, &v9);
  v13 = 0;
  operator new();
}

void sub_27266740C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    std::unique_ptr<vp::darwin::Notification,vp::Allocator_Delete<vp::darwin::Notification>>::reset[abi:ne200100](&a32, 0);
    v38 = *(v36 - 144);
    if (v38)
    {
      std::__shared_weak_count::__release_weak(v38);
    }

    if (a12)
    {
      std::__shared_weak_count::__release_weak(a12);
    }

    os_unfair_recursive_lock_unlock();
    __cxa_begin_catch(exception_object);
    LOBYTE(a32) = 0;
    a36 = 0;
    __cxa_end_catch();
    JUMPOUT(0x2726670B4);
  }

  _Unwind_Resume(exception_object);
}

void sub_2726674BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    _ZZZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENKUlT_E_clINS_6darwin21Notification_ListenerEEEDaS4_ENKUlPS8_E_clESA_(v3, v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_2726674E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  __cxa_end_catch();
  if (v51)
  {
    dispatch_release(v51);
  }

  vp::darwin::Notification_Listener::~Notification_Listener((v52 - 224));
  if (a26)
  {
    vp::darwin::Notification_Listener::~Notification_Listener(&a23);
  }

  std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::~__value_func[abi:ne200100](&a51);
  _ZZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENUlRT_E_D2Ev(&a16);
  vp::vx::data_flow::State<void>::~State(&a29);
  _Unwind_Resume(a1);
}

void sub_272667558(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (a2)
  {
    vp::darwin::Notification_Listener::~Notification_Listener(&a47);
    if (a14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a14);
    }

    if (a42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a42);
    }

    os_unfair_recursive_lock_unlock();
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2726670B4);
  }

  _Unwind_Resume(a1);
}

void sub_2726675DC(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2726675E4);
  }

  __clang_call_terminate(a1);
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_26IO_Personal_Audio_SettingsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_33IO_Personal_Audio_Command_FactoryC1ERS9_RNS3_27Voice_Processor_State_OwnerENS_10shared_ptrINS2_8services14Personal_AudioEEEE3__1JNS4_12Time_StampedIyEESL_SL_SL_N10applesauce2CF9StringRefEbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSL_SL_SL_SL_SO_bEEERNS4_13State_ManagerESQ_SX_EUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EEclEOS18_OS19_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v87 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::data_flow::Time_Stamped<unsigned long long>>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v6);
  }

  v7 = v4[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<vp::vx::data_flow::Time_Stamped<unsigned long long>>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v7);
  }

  v8 = v4[2];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<vp::vx::data_flow::Time_Stamped<unsigned long long>>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[3];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<vp::vx::data_flow::Time_Stamped<unsigned long long>>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = v4[4];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v4[5];
  if (v12[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v12 = vp::vx::data_flow::Value::view_storage(v12);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *v11;
  if (v14)
  {
    v12 = CFRetain(v14);
  }

  v15 = *v13;
  v16 = *(a1 + 8);
  log = vp::get_log(v12);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    if (v16)
    {
      v18 = v16 + 32;
    }

    else
    {
      v18 = 0;
    }

    vp::vx::io::get_log_context_info(__p, v18, "vp::vx::IO_Personal_Audio_Command_Factory]", 41);
    v19 = HIBYTE(v83);
    v20 = SHIBYTE(v83);
    v21 = *&__p[8];
    v23 = vp::get_log(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      if (v20 >= 0)
      {
        v24 = v19;
      }

      else
      {
        v24 = v21;
      }

      v25 = *__p;
      if (v20 >= 0)
      {
        v25 = __p;
      }

      if (v24)
      {
        v26 = " ";
      }

      else
      {
        v26 = "";
      }

      *buf = 136315394;
      *&buf[4] = v25;
      *&buf[12] = 2080;
      *&buf[14] = v26;
      _os_log_impl(&dword_2724B4000, v23, OS_LOG_TYPE_INFO, "%s%spersonal audio notification(s) fired", buf, 0x16u);
      LOBYTE(v20) = HIBYTE(v83);
    }

    if ((v20 & 0x80) != 0)
    {
      operator delete(*__p);
    }
  }

  v27 = *(a1 + 16);
  if (v14)
  {
    CFRetain(v14);
  }

  cf = v14;
  v28 = (*(*v27 + 24))(v27, &cf);
  v29 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    v30 = vp::get_log(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      if (v16)
      {
        v31 = v16 + 32;
      }

      else
      {
        v31 = 0;
      }

      vp::vx::io::get_log_context_info(buf, v31, "vp::vx::IO_Personal_Audio_Command_Factory]", 41);
      v32 = v86;
      v33 = v86;
      v34 = *&buf[8];
      v36 = vp::get_log(v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        if (v33 >= 0)
        {
          v37 = v32;
        }

        else
        {
          v37 = v34;
        }

        v38 = *buf;
        if (v33 >= 0)
        {
          v38 = buf;
        }

        if (v37)
        {
          v39 = " ";
        }

        else
        {
          v39 = "";
        }

        *__p = 136315650;
        *&__p[4] = v38;
        *&__p[12] = 2080;
        *&__p[14] = v39;
        if (v15)
        {
          v40 = "enabled";
        }

        else
        {
          v40 = "disabled";
        }

        v83 = 2080;
        v84 = v40;
        _os_log_impl(&dword_2724B4000, v36, OS_LOG_TYPE_INFO, "%s%spersonal audio is %s", __p, 0x20u);
        LOBYTE(v33) = v86;
      }

      if ((v33 & 0x80) != 0)
      {
        operator delete(*buf);
      }
    }

    v41 = *(a1 + 16);
    if (v14)
    {
      CFRetain(v14);
    }

    v80 = v14;
    (*(*v41 + 56))(__p, v41, &v80);
    v42 = *__p;
    *__p = 0;
    v43 = v80;
    if (v80)
    {
      CFRelease(v80);
    }

    v44 = vp::get_log(v43);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      if (v16)
      {
        v45 = v16 + 32;
      }

      else
      {
        v45 = 0;
      }

      vp::vx::io::get_log_context_info(buf, v45, "vp::vx::IO_Personal_Audio_Command_Factory]", 41);
      v46 = v86;
      v47 = v86;
      v48 = *&buf[8];
      v50 = vp::get_log(v49);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        if (v47 >= 0)
        {
          v51 = v46;
        }

        else
        {
          v51 = v48;
        }

        v52 = *buf;
        if (v47 >= 0)
        {
          v52 = buf;
        }

        if (v51)
        {
          v53 = " ";
        }

        else
        {
          v53 = "";
        }

        *__p = 136315650;
        *&__p[4] = v52;
        *&__p[12] = 2080;
        *&__p[14] = v53;
        if (v42)
        {
          v54 = "valid";
        }

        else
        {
          v54 = "invalid";
        }

        v83 = 2080;
        v84 = v54;
LABEL_114:
        _os_log_impl(&dword_2724B4000, v50, OS_LOG_TYPE_INFO, "%s%spersonal audio preset is %s", __p, 0x20u);
        LOBYTE(v47) = v86;
        goto LABEL_115;
      }

      goto LABEL_115;
    }
  }

  else
  {
    v55 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v15 &= v55;
    v56 = vp::get_log(v55);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      if (v16)
      {
        v57 = v16 + 32;
      }

      else
      {
        v57 = 0;
      }

      vp::vx::io::get_log_context_info(buf, v57, "vp::vx::IO_Personal_Audio_Command_Factory]", 41);
      v58 = v86;
      v59 = v86;
      v60 = *&buf[8];
      v62 = vp::get_log(v61);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        if (v59 >= 0)
        {
          v63 = v58;
        }

        else
        {
          v63 = v60;
        }

        v64 = *buf;
        if (v59 >= 0)
        {
          v64 = buf;
        }

        if (v63)
        {
          v65 = " ";
        }

        else
        {
          v65 = "";
        }

        *__p = 136315650;
        *&__p[4] = v64;
        *&__p[12] = 2080;
        *&__p[14] = v65;
        if (v15)
        {
          v66 = "enabled";
        }

        else
        {
          v66 = "disabled";
        }

        v83 = 2080;
        v84 = v66;
        _os_log_impl(&dword_2724B4000, v62, OS_LOG_TYPE_INFO, "%s%spersonal audio is %s", __p, 0x20u);
        LOBYTE(v59) = v86;
      }

      if ((v59 & 0x80) != 0)
      {
        operator delete(*buf);
      }
    }

    v67 = (*(**(a1 + 16) + 48))(__p);
    v42 = *__p;
    v68 = vp::get_log(v67);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      if (v16)
      {
        v69 = v16 + 32;
      }

      else
      {
        v69 = 0;
      }

      vp::vx::io::get_log_context_info(buf, v69, "vp::vx::IO_Personal_Audio_Command_Factory]", 41);
      v70 = v86;
      v47 = v86;
      v71 = *&buf[8];
      v50 = vp::get_log(v72);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        if (v47 >= 0)
        {
          v73 = v70;
        }

        else
        {
          v73 = v71;
        }

        v74 = *buf;
        if (v47 >= 0)
        {
          v74 = buf;
        }

        if (v73)
        {
          v75 = " ";
        }

        else
        {
          v75 = "";
        }

        *__p = 136315650;
        *&__p[4] = v74;
        *&__p[12] = 2080;
        *&__p[14] = v75;
        if (v42)
        {
          v76 = "valid";
        }

        else
        {
          v76 = "invalid";
        }

        v83 = 2080;
        v84 = v76;
        goto LABEL_114;
      }

LABEL_115:
      if ((v47 & 0x80) != 0)
      {
        operator delete(*buf);
      }
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v77);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::IO_Personal_Audio_Settings>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v15;
  *(result + 8) = v42;
  v79 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272667CD4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::IO_Personal_Audio_Settings::~IO_Personal_Audio_Settings(vp::vx::IO_Personal_Audio_Settings *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::data_flow::Time_Stamped<unsigned long long>>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  result = **a3;
  **a2 = result;
  return result;
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::data_flow::Time_Stamped<unsigned long long>>::copy_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  result = **a3;
  **a2 = result;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::data_flow::Time_Stamped<unsigned long long>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::data_flow::Time_Stamped<unsigned long long>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 16, 8);
  *a2 = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_26IO_Personal_Audio_SettingsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_33IO_Personal_Audio_Command_FactoryC1ERS9_RNS3_27Voice_Processor_State_OwnerENS_10shared_ptrINS2_8services14Personal_AudioEEEE3__1JNS4_12Time_StampedIyEESL_SL_SL_N10applesauce2CF9StringRefEbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSL_SL_SL_SL_SO_bEEERNS4_13State_ManagerESQ_SX_EUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_26IO_Personal_Audio_SettingsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_33IO_Personal_Audio_Command_FactoryC1ERS9_RNS3_27Voice_Processor_State_OwnerENS_10shared_ptrINS2_8services14Personal_AudioEEEE3__1JNS4_12Time_StampedIyEESL_SL_SL_N10applesauce2CF9StringRefEbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSL_SL_SL_SL_SO_bEEERNS4_13State_ManagerESQ_SX_EUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_26IO_Personal_Audio_SettingsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_33IO_Personal_Audio_Command_FactoryC1ERS9_RNS3_27Voice_Processor_State_OwnerENS_10shared_ptrINS2_8services14Personal_AudioEEEE3__1JNS4_12Time_StampedIyEESL_SL_SL_N10applesauce2CF9StringRefEbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSL_SL_SL_SL_SO_bEEERNS4_13State_ManagerESQ_SX_EUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EE7__cloneEPNS0_6__baseIS1D_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B8CA0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_26IO_Personal_Audio_SettingsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_33IO_Personal_Audio_Command_FactoryC1ERS9_RNS3_27Voice_Processor_State_OwnerENS_10shared_ptrINS2_8services14Personal_AudioEEEE3__1JNS4_12Time_StampedIyEESL_SL_SL_N10applesauce2CF9StringRefEbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSL_SL_SL_SL_SO_bEEERNS4_13State_ManagerESQ_SX_EUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EED0Ev(void *a1)
{
  *a1 = &unk_2881B8CA0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_26IO_Personal_Audio_SettingsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_33IO_Personal_Audio_Command_FactoryC1ERS9_RNS3_27Voice_Processor_State_OwnerENS_10shared_ptrINS2_8services14Personal_AudioEEEE3__1JNS4_12Time_StampedIyEESL_SL_SL_N10applesauce2CF9StringRefEbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSL_SL_SL_SL_SO_bEEERNS4_13State_ManagerESQ_SX_EUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EED1Ev(void *a1)
{
  *a1 = &unk_2881B8CA0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENUlRT_E_D2Ev(uint64_t a1)
{
  vp::vx::data_flow::State<void>::~State((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIyEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSA_36create_state_for_darwin_notificationEPKcEUlT_E0_JS7_EEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_EEERNS4_13State_ManagerESE_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = *v4;
  v6 = v4[1];
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::data_flow::Time_Stamped<unsigned long long>>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  result[1] = v6;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIyEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSA_36create_state_for_darwin_notificationEPKcEUlT_E0_JS7_EEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_EEERNS4_13State_ManagerESE_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE18destroy_deallocateEv(void *__p)
{
  if (*(__p + 32) == 1)
  {
    v2 = __p[3];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIyEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSA_36create_state_for_darwin_notificationEPKcEUlT_E0_JS7_EEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_EEERNS4_13State_ManagerESE_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7destroyEv(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIyEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSA_36create_state_for_darwin_notificationEPKcEUlT_E0_JS7_EEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_EEERNS4_13State_ManagerESE_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881BA5A8;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  LODWORD(v2) = *(result + 32);
  *(a2 + 32) = v2;
  if (v2 == 1)
  {
    v3 = *(result + 24);
    *(a2 + 16) = *(result + 16);
    *(a2 + 24) = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *(a2 + 16) = *(result + 16);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIyEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSA_36create_state_for_darwin_notificationEPKcEUlT_E0_JS7_EEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_EEERNS4_13State_ManagerESE_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EED0Ev(uint64_t a1)
{
  *a1 = &unk_2881BA5A8;
  if (*(a1 + 32) == 1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    }
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIyEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSA_36create_state_for_darwin_notificationEPKcEUlT_E0_JS7_EEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_EEERNS4_13State_ManagerESE_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EED1Ev(uint64_t a1)
{
  *a1 = &unk_2881BA5A8;
  if (*(a1 + 32) == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  return a1;
}

void _ZZZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENKUlT_E_clINS_6darwin21Notification_ListenerEEEDaS4_ENKUlPS8_E_clESA_(NSObject *a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZZZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENKUlT_E_clINS_6darwin21Notification_ListenerEEEDaS4_ENKUlPS8_E_clESA__block_invoke;
  block[3] = &__block_descriptor_tmp_8352;
  block[4] = a2;
  dispatch_async(a1, block);
}

vp::darwin::Notification_Listener *___ZZZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENKUlT_E_clINS_6darwin21Notification_ListenerEEEDaS4_ENKUlPS8_E_clESA__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    vp::darwin::Notification_Listener::~Notification_Listener(result);

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void _ZNSt3__120__shared_ptr_pointerIPN2vp6darwin21Notification_ListenerEZZNS1_2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENKUlT_E_clIS3_EEDaS9_EUlS4_E_NS_9allocatorIS3_EEE16__on_zero_sharedEv(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZZZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENKUlT_E_clINS_6darwin21Notification_ListenerEEEDaS4_ENKUlPS8_E_clESA__block_invoke;
  block[3] = &__block_descriptor_tmp_8352;
  block[4] = v3;
  dispatch_async(v2, block);
  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_release(v4);
  }
}

void _ZNSt3__120__shared_ptr_pointerIPN2vp6darwin21Notification_ListenerEZZNS1_2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENKUlT_E_clIS3_EEDaS9_EUlS4_E_NS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *this)
{
  this->__vftable = &unk_2881BA570;
  shared_owners = this[1].__shared_owners_;
  if (shared_owners)
  {
    dispatch_release(shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);

  JUMPOUT(0x2743CBFA0);
}

void _ZNSt3__120__shared_ptr_pointerIPN2vp6darwin21Notification_ListenerEZZNS1_2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENKUlT_E_clIS3_EEDaS9_EUlS4_E_NS_9allocatorIS3_EEED1Ev(std::__shared_weak_count *this)
{
  this->__vftable = &unk_2881BA570;
  shared_owners = this[1].__shared_owners_;
  if (shared_owners)
  {
    dispatch_release(shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcEUlRT_E_NS_9allocatorIS9_EEFvRNS2_6darwin18Notification_ProxyEEEclESE_(uint64_t a1, int *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(__p, v4, "vp::vx::Voice_Processor_State_Manager]", 37);
    v7 = v23;
    v8 = v23;
    v9 = __p[1];
    v10 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (v8 >= 0)
      {
        v11 = v7;
      }

      else
      {
        v11 = v9;
      }

      v12 = __p[0];
      if (v8 >= 0)
      {
        v12 = __p;
      }

      v13 = " ";
      if (!v11)
      {
        v13 = "";
      }

      v14 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v14 = *v14;
      }

      *buf = 136315650;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = v13;
      *&buf[22] = 2080;
      v25 = v14;
      _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_INFO, "%s%snew Darwin notification %s", buf, 0x20u);
      LOBYTE(v8) = v23;
    }

    if ((v8 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  *buf = 0;
  state = notify_get_state(*a2, buf);
  if (state >= 0xB)
  {
    v16 = 0;
  }

  else
  {
    v16 = state;
  }

  if (state)
  {
    v17 = 0;
  }

  else
  {
    v17 = *buf & 0xFFFFFFFF00000000;
  }

  if (state)
  {
    v18 = v16;
  }

  else
  {
    v18 = *buf;
  }

  mach_absolute_time();
  v19 = mach_absolute_time();
  *buf = std::pmr::get_default_resource(v19);
  *&buf[8] = 0;
  *&buf[16] = &vp::vx::data_flow::Value::type_id<vp::vx::data_flow::Time_Stamped<unsigned long long>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(buf);
  *storage = v17 | v18;
  storage[1] = v19;
  vp::vx::data_flow::State<void>::set_value((a1 + 40), buf);
  vp::vx::data_flow::Value::~Value(buf);
  v21 = *MEMORY[0x277D85DE8];
}

void sub_272668690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  vp::vx::data_flow::Value::~Value(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcEUlRT_E_NS_9allocatorIS9_EEFvRNS2_6darwin18Notification_ProxyEEE18destroy_deallocateEv(void *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcEUlRT_E_NS_9allocatorIS9_EEFvRNS2_6darwin18Notification_ProxyEEE7destroyB8ne200100Ev(a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function12__alloc_funcIZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcEUlRT_E_NS_9allocatorIS9_EEFvRNS2_6darwin18Notification_ProxyEEE7destroyB8ne200100Ev(uint64_t a1)
{
  vp::vx::data_flow::State<void>::~State((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

int *_ZNKSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcEUlRT_E_NS_9allocatorIS9_EEFvRNS2_6darwin18Notification_ProxyEEE7__cloneEPNS0_6__baseISF_EE(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_2881BA528;
  *(a2 + 8) = v4;
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v5 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v5;
  }

  return vp::vx::data_flow::State<void>::State((a2 + 40), (a1 + 40));
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcEUlRT_E_NS_9allocatorIS9_EEFvRNS2_6darwin18Notification_ProxyEEED0Ev(uint64_t a1)
{
  *a1 = &unk_2881BA528;
  vp::vx::data_flow::State<void>::~State((a1 + 40));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcEUlRT_E_NS_9allocatorIS9_EEFvRNS2_6darwin18Notification_ProxyEEED1Ev(uint64_t a1)
{
  *a1 = &unk_2881BA528;
  vp::vx::data_flow::State<void>::~State((a1 + 40));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_33IO_Personal_Audio_Command_FactoryC1ERS8_RNS3_27Voice_Processor_State_OwnerENS_10shared_ptrINS2_8services14Personal_AudioEEEE3__0JbNS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbSJ_jEEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id)
  {
    v8 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = (*vp::vx::data_flow::Value::view_storage(v3[2]) & 1) == 0 && (*v6 & 1) != 0 || (*v8 & 0xFFFFFFFE) == 6;
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v10);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v9;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_33IO_Personal_Audio_Command_FactoryC1ERS8_RNS3_27Voice_Processor_State_OwnerENS_10shared_ptrINS2_8services14Personal_AudioEEEE3__0JbNS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbSJ_jEEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B8C58;
  *(a2 + 8) = *(result + 8);
  return result;
}

void virtual thunk tovp::vx::IO_Port_Factory::~IO_Port_Factory(vp::vx::IO_Port_Factory *this)
{
  vp::vx::IO_Port_Factory::~IO_Port_Factory((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Port_Factory::~IO_Port_Factory((this + *(*this - 24)));
}

void vp::vx::IO_Port_Factory::~IO_Port_Factory(vp::vx::IO_Port_Factory *this)
{
  v20 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B8DE8;
  *(this + 18) = &unk_2881B8E18;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::vx::get_log_context_info(__p, this);
    v4 = v15;
    v5 = v15;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
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
      v17 = v9;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v15;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 30);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,vp::vx::data_flow::State<BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 88);
  vp::vx::data_flow::State<void>::~State(this + 16);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,vp::vx::data_flow::State<BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 32);
  v11 = *(this + 3);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  *(this + 18) = &unk_2881C6630;
  v12 = *(this + 20);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::IO_Port_Factory::~IO_Port_Factory(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::get_log_context_info(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "[", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "vp::vx::IO_Port_Factory]", 23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ":", 1);
  v14 = *(a2 + 8);
  if (HIDWORD(v14) == 0xFFFFFFFF)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  *&v12 = &v15;
  v4 = (off_2881B8E48[HIDWORD(v14)])(&v12, &v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ":", 1);
  v6 = MEMORY[0x2743CBAF0](&v17, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "]", 1);
  if ((v24 & 0x10) != 0)
  {
    v8 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v8 = v20;
    }

    locale = v19[4].__locale_;
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v7 = 0;
      HIBYTE(v13) = 0;
      goto LABEL_15;
    }

    locale = v19[1].__locale_;
    v8 = v19[3].__locale_;
  }

  v7 = v8 - locale;
  if ((v8 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v13) = v8 - locale;
  if (v7)
  {
    memmove(&v12, locale, v7);
  }

LABEL_15:
  *(&v12 + v7) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v12;
  *(a1 + 16) = v13;
  v16[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v17 = v10;
  v18 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743CBE30](&v25);
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "[", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "vp::vx::IO_Wire_Factory]", 23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, ":", 1);
  v4 = vp::detail::reflect_value_name<(vp::Domain)0,128ul>(*(a2 + 8));
  if (v5)
  {
    v6 = &v4[v5];
    v7 = v5;
    while (v7)
    {
      v8 = *--v6;
      --v7;
      if (v8 == 58)
      {
        v9 = v6 - v4 + 1;
        if (v5 < v9)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        goto LABEL_8;
      }
    }
  }

  v9 = 0;
LABEL_8:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, &v4[v9], v5 - v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, ":", 1);
  v10 = MEMORY[0x2743CBAF0](&v19, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "]", 1);
  if ((v26 & 0x10) != 0)
  {
    v12 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v12 = v22;
    }

    locale = v21[4].__locale_;
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v11 = 0;
      HIBYTE(v17) = 0;
      goto LABEL_21;
    }

    locale = v21[1].__locale_;
    v12 = v21[3].__locale_;
  }

  v11 = v12 - locale;
  if ((v12 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v17) = v12 - locale;
  if (v11)
  {
    memmove(&v16, locale, v11);
  }

LABEL_21:
  *(&v16 + v11) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v16;
  *(a1 + 16) = v17;
  v18[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v19 = v14;
  v20 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  v20 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743CBE30](&v27);
}

void sub_272669000(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272668FD4);
}

char *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZN2vp2vx20get_log_context_infoEPKNS9_15IO_Port_FactoryEENK3__0clEvEUlT_E_EEJONS0_6__baseILNS0_6_TraitE0EJNS9_20Uplink_Input_Port_IDENS9_22Downlink_Input_Port_IDENS9_21Uplink_Output_Port_IDENS9_23Downlink_Output_Port_IDEEEEEEEDcSE_DpT0_(uint64_t a1, int *a2)
{
  v2 = vp::detail::reflect_value_name<(vp::vx::Downlink_Output_Port_ID)0,128ul>(*a2);
  if (v3)
  {
    v4 = &v2[v3];
    for (i = v3; i; --i)
    {
      v6 = *--v4;
      if (v6 == 58)
      {
        v7 = v4 - v2 + 1;
        if (v3 < v7)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v2[v7];
      }
    }
  }

  v7 = 0;
  return &v2[v7];
}

char *vp::detail::reflect_value_name<(vp::vx::Downlink_Output_Port_ID)0,128ul>(int a1)
{
  result = "vp::vx::Downlink_Output_Port_ID::Hardware_DSP_Output]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "(vp::vx::Downlink_Output_Port_ID)1]";
      break;
    case 2:
      result = "(vp::vx::Downlink_Output_Port_ID)2]";
      break;
    case 3:
      result = "(vp::vx::Downlink_Output_Port_ID)3]";
      break;
    case 4:
      result = "(vp::vx::Downlink_Output_Port_ID)4]";
      break;
    case 5:
      result = "(vp::vx::Downlink_Output_Port_ID)5]";
      break;
    case 6:
      result = "(vp::vx::Downlink_Output_Port_ID)6]";
      break;
    case 7:
      result = "(vp::vx::Downlink_Output_Port_ID)7]";
      break;
    case 8:
      result = "(vp::vx::Downlink_Output_Port_ID)8]";
      break;
    case 9:
      result = "(vp::vx::Downlink_Output_Port_ID)9]";
      break;
    case 10:
      result = "(vp::vx::Downlink_Output_Port_ID)10]";
      break;
    case 11:
      result = "(vp::vx::Downlink_Output_Port_ID)11]";
      break;
    case 12:
      result = "(vp::vx::Downlink_Output_Port_ID)12]";
      break;
    case 13:
      result = "(vp::vx::Downlink_Output_Port_ID)13]";
      break;
    case 14:
      result = "(vp::vx::Downlink_Output_Port_ID)14]";
      break;
    case 15:
      result = "(vp::vx::Downlink_Output_Port_ID)15]";
      break;
    case 16:
      result = "(vp::vx::Downlink_Output_Port_ID)16]";
      break;
    case 17:
      result = "(vp::vx::Downlink_Output_Port_ID)17]";
      break;
    case 18:
      result = "(vp::vx::Downlink_Output_Port_ID)18]";
      break;
    case 19:
      result = "(vp::vx::Downlink_Output_Port_ID)19]";
      break;
    case 20:
      result = "(vp::vx::Downlink_Output_Port_ID)20]";
      break;
    case 21:
      result = "(vp::vx::Downlink_Output_Port_ID)21]";
      break;
    case 22:
      result = "(vp::vx::Downlink_Output_Port_ID)22]";
      break;
    case 23:
      result = "(vp::vx::Downlink_Output_Port_ID)23]";
      break;
    case 24:
      result = "(vp::vx::Downlink_Output_Port_ID)24]";
      break;
    case 25:
      result = "(vp::vx::Downlink_Output_Port_ID)25]";
      break;
    case 26:
      result = "(vp::vx::Downlink_Output_Port_ID)26]";
      break;
    case 27:
      result = "(vp::vx::Downlink_Output_Port_ID)27]";
      break;
    case 28:
      result = "(vp::vx::Downlink_Output_Port_ID)28]";
      break;
    case 29:
      result = "(vp::vx::Downlink_Output_Port_ID)29]";
      break;
    case 30:
      result = "(vp::vx::Downlink_Output_Port_ID)30]";
      break;
    case 31:
      result = "(vp::vx::Downlink_Output_Port_ID)31]";
      break;
    case 32:
      result = "(vp::vx::Downlink_Output_Port_ID)32]";
      break;
    case 33:
      result = "(vp::vx::Downlink_Output_Port_ID)33]";
      break;
    case 34:
      result = "(vp::vx::Downlink_Output_Port_ID)34]";
      break;
    case 35:
      result = "(vp::vx::Downlink_Output_Port_ID)35]";
      break;
    case 36:
      result = "(vp::vx::Downlink_Output_Port_ID)36]";
      break;
    case 37:
      result = "(vp::vx::Downlink_Output_Port_ID)37]";
      break;
    case 38:
      result = "(vp::vx::Downlink_Output_Port_ID)38]";
      break;
    case 39:
      result = "(vp::vx::Downlink_Output_Port_ID)39]";
      break;
    case 40:
      result = "(vp::vx::Downlink_Output_Port_ID)40]";
      break;
    case 41:
      result = "(vp::vx::Downlink_Output_Port_ID)41]";
      break;
    case 42:
      result = "(vp::vx::Downlink_Output_Port_ID)42]";
      break;
    case 43:
      result = "(vp::vx::Downlink_Output_Port_ID)43]";
      break;
    case 44:
      result = "(vp::vx::Downlink_Output_Port_ID)44]";
      break;
    case 45:
      result = "(vp::vx::Downlink_Output_Port_ID)45]";
      break;
    case 46:
      result = "(vp::vx::Downlink_Output_Port_ID)46]";
      break;
    case 47:
      result = "(vp::vx::Downlink_Output_Port_ID)47]";
      break;
    case 48:
      result = "(vp::vx::Downlink_Output_Port_ID)48]";
      break;
    case 49:
      result = "(vp::vx::Downlink_Output_Port_ID)49]";
      break;
    case 50:
      result = "(vp::vx::Downlink_Output_Port_ID)50]";
      break;
    case 51:
      result = "(vp::vx::Downlink_Output_Port_ID)51]";
      break;
    case 52:
      result = "(vp::vx::Downlink_Output_Port_ID)52]";
      break;
    case 53:
      result = "(vp::vx::Downlink_Output_Port_ID)53]";
      break;
    case 54:
      result = "(vp::vx::Downlink_Output_Port_ID)54]";
      break;
    case 55:
      result = "(vp::vx::Downlink_Output_Port_ID)55]";
      break;
    case 56:
      result = "(vp::vx::Downlink_Output_Port_ID)56]";
      break;
    case 57:
      result = "(vp::vx::Downlink_Output_Port_ID)57]";
      break;
    case 58:
      result = "(vp::vx::Downlink_Output_Port_ID)58]";
      break;
    case 59:
      result = "(vp::vx::Downlink_Output_Port_ID)59]";
      break;
    case 60:
      result = "(vp::vx::Downlink_Output_Port_ID)60]";
      break;
    case 61:
      result = "(vp::vx::Downlink_Output_Port_ID)61]";
      break;
    case 62:
      result = "(vp::vx::Downlink_Output_Port_ID)62]";
      break;
    case 63:
      result = "(vp::vx::Downlink_Output_Port_ID)63]";
      break;
    case 64:
      result = "(vp::vx::Downlink_Output_Port_ID)64]";
      break;
    case 65:
      result = "(vp::vx::Downlink_Output_Port_ID)65]";
      break;
    case 66:
      result = "(vp::vx::Downlink_Output_Port_ID)66]";
      break;
    case 67:
      result = "(vp::vx::Downlink_Output_Port_ID)67]";
      break;
    case 68:
      result = "(vp::vx::Downlink_Output_Port_ID)68]";
      break;
    case 69:
      result = "(vp::vx::Downlink_Output_Port_ID)69]";
      break;
    case 70:
      result = "(vp::vx::Downlink_Output_Port_ID)70]";
      break;
    case 71:
      result = "(vp::vx::Downlink_Output_Port_ID)71]";
      break;
    case 72:
      result = "(vp::vx::Downlink_Output_Port_ID)72]";
      break;
    case 73:
      result = "(vp::vx::Downlink_Output_Port_ID)73]";
      break;
    case 74:
      result = "(vp::vx::Downlink_Output_Port_ID)74]";
      break;
    case 75:
      result = "(vp::vx::Downlink_Output_Port_ID)75]";
      break;
    case 76:
      result = "(vp::vx::Downlink_Output_Port_ID)76]";
      break;
    case 77:
      result = "(vp::vx::Downlink_Output_Port_ID)77]";
      break;
    case 78:
      result = "(vp::vx::Downlink_Output_Port_ID)78]";
      break;
    case 79:
      result = "(vp::vx::Downlink_Output_Port_ID)79]";
      break;
    case 80:
      result = "(vp::vx::Downlink_Output_Port_ID)80]";
      break;
    case 81:
      result = "(vp::vx::Downlink_Output_Port_ID)81]";
      break;
    case 82:
      result = "(vp::vx::Downlink_Output_Port_ID)82]";
      break;
    case 83:
      result = "(vp::vx::Downlink_Output_Port_ID)83]";
      break;
    case 84:
      result = "(vp::vx::Downlink_Output_Port_ID)84]";
      break;
    case 85:
      result = "(vp::vx::Downlink_Output_Port_ID)85]";
      break;
    case 86:
      result = "(vp::vx::Downlink_Output_Port_ID)86]";
      break;
    case 87:
      result = "(vp::vx::Downlink_Output_Port_ID)87]";
      break;
    case 88:
      result = "(vp::vx::Downlink_Output_Port_ID)88]";
      break;
    case 89:
      result = "(vp::vx::Downlink_Output_Port_ID)89]";
      break;
    case 90:
      result = "(vp::vx::Downlink_Output_Port_ID)90]";
      break;
    case 91:
      result = "(vp::vx::Downlink_Output_Port_ID)91]";
      break;
    case 92:
      result = "(vp::vx::Downlink_Output_Port_ID)92]";
      break;
    case 93:
      result = "(vp::vx::Downlink_Output_Port_ID)93]";
      break;
    case 94:
      result = "(vp::vx::Downlink_Output_Port_ID)94]";
      break;
    case 95:
      result = "(vp::vx::Downlink_Output_Port_ID)95]";
      break;
    case 96:
      result = "(vp::vx::Downlink_Output_Port_ID)96]";
      break;
    case 97:
      result = "(vp::vx::Downlink_Output_Port_ID)97]";
      break;
    case 98:
      result = "(vp::vx::Downlink_Output_Port_ID)98]";
      break;
    case 99:
      result = "(vp::vx::Downlink_Output_Port_ID)99]";
      break;
    case 100:
      result = "(vp::vx::Downlink_Output_Port_ID)100]";
      break;
    case 101:
      result = "(vp::vx::Downlink_Output_Port_ID)101]";
      break;
    case 102:
      result = "(vp::vx::Downlink_Output_Port_ID)102]";
      break;
    case 103:
      result = "(vp::vx::Downlink_Output_Port_ID)103]";
      break;
    case 104:
      result = "(vp::vx::Downlink_Output_Port_ID)104]";
      break;
    case 105:
      result = "(vp::vx::Downlink_Output_Port_ID)105]";
      break;
    case 106:
      result = "(vp::vx::Downlink_Output_Port_ID)106]";
      break;
    case 107:
      result = "(vp::vx::Downlink_Output_Port_ID)107]";
      break;
    case 108:
      result = "(vp::vx::Downlink_Output_Port_ID)108]";
      break;
    case 109:
      result = "(vp::vx::Downlink_Output_Port_ID)109]";
      break;
    case 110:
      result = "(vp::vx::Downlink_Output_Port_ID)110]";
      break;
    case 111:
      result = "(vp::vx::Downlink_Output_Port_ID)111]";
      break;
    case 112:
      result = "(vp::vx::Downlink_Output_Port_ID)112]";
      break;
    case 113:
      result = "(vp::vx::Downlink_Output_Port_ID)113]";
      break;
    case 114:
      result = "(vp::vx::Downlink_Output_Port_ID)114]";
      break;
    case 115:
      result = "(vp::vx::Downlink_Output_Port_ID)115]";
      break;
    case 116:
      result = "(vp::vx::Downlink_Output_Port_ID)116]";
      break;
    case 117:
      result = "(vp::vx::Downlink_Output_Port_ID)117]";
      break;
    case 118:
      result = "(vp::vx::Downlink_Output_Port_ID)118]";
      break;
    case 119:
      result = "(vp::vx::Downlink_Output_Port_ID)119]";
      break;
    case 120:
      result = "(vp::vx::Downlink_Output_Port_ID)120]";
      break;
    case 121:
      result = "(vp::vx::Downlink_Output_Port_ID)121]";
      break;
    case 122:
      result = "(vp::vx::Downlink_Output_Port_ID)122]";
      break;
    case 123:
      result = "(vp::vx::Downlink_Output_Port_ID)123]";
      break;
    case 124:
      result = "(vp::vx::Downlink_Output_Port_ID)124]";
      break;
    case 125:
      result = "(vp::vx::Downlink_Output_Port_ID)125]";
      break;
    case 126:
      result = "(vp::vx::Downlink_Output_Port_ID)126]";
      break;
    case 127:
      result = "(vp::vx::Downlink_Output_Port_ID)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Downlink_Output_Port_ID)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

char *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZN2vp2vx20get_log_context_infoEPKNS9_15IO_Port_FactoryEENK3__0clEvEUlT_E_EEJONS0_6__baseILNS0_6_TraitE0EJNS9_20Uplink_Input_Port_IDENS9_22Downlink_Input_Port_IDENS9_21Uplink_Output_Port_IDENS9_23Downlink_Output_Port_IDEEEEEEEDcSE_DpT0_(uint64_t a1, int *a2)
{
  v2 = vp::detail::reflect_value_name<(vp::vx::Uplink_Output_Port_ID)0,128ul>(*a2);
  if (v3)
  {
    v4 = &v2[v3];
    for (i = v3; i; --i)
    {
      v6 = *--v4;
      if (v6 == 58)
      {
        v7 = v4 - v2 + 1;
        if (v3 < v7)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v2[v7];
      }
    }
  }

  v7 = 0;
  return &v2[v7];
}

char *vp::detail::reflect_value_name<(vp::vx::Uplink_Output_Port_ID)0,128ul>(int a1)
{
  result = "vp::vx::Uplink_Output_Port_ID::Hardware_DSP_Mic_Output]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::Uplink_Output_Port_ID::Hardware_DSP_Ref_Output]";
      break;
    case 2:
      result = "vp::vx::Uplink_Output_Port_ID::Hardware_DSP_Mic_Clip_Data_Output]";
      break;
    case 3:
      result = "vp::vx::Uplink_Output_Port_ID::Echo_DSP_Mic_Output]";
      break;
    case 4:
      result = "vp::vx::Uplink_Output_Port_ID::Content_DSP_Client_Output]";
      break;
    case 5:
      result = "(vp::vx::Uplink_Output_Port_ID)5]";
      break;
    case 6:
      result = "(vp::vx::Uplink_Output_Port_ID)6]";
      break;
    case 7:
      result = "(vp::vx::Uplink_Output_Port_ID)7]";
      break;
    case 8:
      result = "(vp::vx::Uplink_Output_Port_ID)8]";
      break;
    case 9:
      result = "(vp::vx::Uplink_Output_Port_ID)9]";
      break;
    case 10:
      result = "(vp::vx::Uplink_Output_Port_ID)10]";
      break;
    case 11:
      result = "(vp::vx::Uplink_Output_Port_ID)11]";
      break;
    case 12:
      result = "(vp::vx::Uplink_Output_Port_ID)12]";
      break;
    case 13:
      result = "(vp::vx::Uplink_Output_Port_ID)13]";
      break;
    case 14:
      result = "(vp::vx::Uplink_Output_Port_ID)14]";
      break;
    case 15:
      result = "(vp::vx::Uplink_Output_Port_ID)15]";
      break;
    case 16:
      result = "(vp::vx::Uplink_Output_Port_ID)16]";
      break;
    case 17:
      result = "(vp::vx::Uplink_Output_Port_ID)17]";
      break;
    case 18:
      result = "(vp::vx::Uplink_Output_Port_ID)18]";
      break;
    case 19:
      result = "(vp::vx::Uplink_Output_Port_ID)19]";
      break;
    case 20:
      result = "(vp::vx::Uplink_Output_Port_ID)20]";
      break;
    case 21:
      result = "(vp::vx::Uplink_Output_Port_ID)21]";
      break;
    case 22:
      result = "(vp::vx::Uplink_Output_Port_ID)22]";
      break;
    case 23:
      result = "(vp::vx::Uplink_Output_Port_ID)23]";
      break;
    case 24:
      result = "(vp::vx::Uplink_Output_Port_ID)24]";
      break;
    case 25:
      result = "(vp::vx::Uplink_Output_Port_ID)25]";
      break;
    case 26:
      result = "(vp::vx::Uplink_Output_Port_ID)26]";
      break;
    case 27:
      result = "(vp::vx::Uplink_Output_Port_ID)27]";
      break;
    case 28:
      result = "(vp::vx::Uplink_Output_Port_ID)28]";
      break;
    case 29:
      result = "(vp::vx::Uplink_Output_Port_ID)29]";
      break;
    case 30:
      result = "(vp::vx::Uplink_Output_Port_ID)30]";
      break;
    case 31:
      result = "(vp::vx::Uplink_Output_Port_ID)31]";
      break;
    case 32:
      result = "(vp::vx::Uplink_Output_Port_ID)32]";
      break;
    case 33:
      result = "(vp::vx::Uplink_Output_Port_ID)33]";
      break;
    case 34:
      result = "(vp::vx::Uplink_Output_Port_ID)34]";
      break;
    case 35:
      result = "(vp::vx::Uplink_Output_Port_ID)35]";
      break;
    case 36:
      result = "(vp::vx::Uplink_Output_Port_ID)36]";
      break;
    case 37:
      result = "(vp::vx::Uplink_Output_Port_ID)37]";
      break;
    case 38:
      result = "(vp::vx::Uplink_Output_Port_ID)38]";
      break;
    case 39:
      result = "(vp::vx::Uplink_Output_Port_ID)39]";
      break;
    case 40:
      result = "(vp::vx::Uplink_Output_Port_ID)40]";
      break;
    case 41:
      result = "(vp::vx::Uplink_Output_Port_ID)41]";
      break;
    case 42:
      result = "(vp::vx::Uplink_Output_Port_ID)42]";
      break;
    case 43:
      result = "(vp::vx::Uplink_Output_Port_ID)43]";
      break;
    case 44:
      result = "(vp::vx::Uplink_Output_Port_ID)44]";
      break;
    case 45:
      result = "(vp::vx::Uplink_Output_Port_ID)45]";
      break;
    case 46:
      result = "(vp::vx::Uplink_Output_Port_ID)46]";
      break;
    case 47:
      result = "(vp::vx::Uplink_Output_Port_ID)47]";
      break;
    case 48:
      result = "(vp::vx::Uplink_Output_Port_ID)48]";
      break;
    case 49:
      result = "(vp::vx::Uplink_Output_Port_ID)49]";
      break;
    case 50:
      result = "(vp::vx::Uplink_Output_Port_ID)50]";
      break;
    case 51:
      result = "(vp::vx::Uplink_Output_Port_ID)51]";
      break;
    case 52:
      result = "(vp::vx::Uplink_Output_Port_ID)52]";
      break;
    case 53:
      result = "(vp::vx::Uplink_Output_Port_ID)53]";
      break;
    case 54:
      result = "(vp::vx::Uplink_Output_Port_ID)54]";
      break;
    case 55:
      result = "(vp::vx::Uplink_Output_Port_ID)55]";
      break;
    case 56:
      result = "(vp::vx::Uplink_Output_Port_ID)56]";
      break;
    case 57:
      result = "(vp::vx::Uplink_Output_Port_ID)57]";
      break;
    case 58:
      result = "(vp::vx::Uplink_Output_Port_ID)58]";
      break;
    case 59:
      result = "(vp::vx::Uplink_Output_Port_ID)59]";
      break;
    case 60:
      result = "(vp::vx::Uplink_Output_Port_ID)60]";
      break;
    case 61:
      result = "(vp::vx::Uplink_Output_Port_ID)61]";
      break;
    case 62:
      result = "(vp::vx::Uplink_Output_Port_ID)62]";
      break;
    case 63:
      result = "(vp::vx::Uplink_Output_Port_ID)63]";
      break;
    case 64:
      result = "(vp::vx::Uplink_Output_Port_ID)64]";
      break;
    case 65:
      result = "(vp::vx::Uplink_Output_Port_ID)65]";
      break;
    case 66:
      result = "(vp::vx::Uplink_Output_Port_ID)66]";
      break;
    case 67:
      result = "(vp::vx::Uplink_Output_Port_ID)67]";
      break;
    case 68:
      result = "(vp::vx::Uplink_Output_Port_ID)68]";
      break;
    case 69:
      result = "(vp::vx::Uplink_Output_Port_ID)69]";
      break;
    case 70:
      result = "(vp::vx::Uplink_Output_Port_ID)70]";
      break;
    case 71:
      result = "(vp::vx::Uplink_Output_Port_ID)71]";
      break;
    case 72:
      result = "(vp::vx::Uplink_Output_Port_ID)72]";
      break;
    case 73:
      result = "(vp::vx::Uplink_Output_Port_ID)73]";
      break;
    case 74:
      result = "(vp::vx::Uplink_Output_Port_ID)74]";
      break;
    case 75:
      result = "(vp::vx::Uplink_Output_Port_ID)75]";
      break;
    case 76:
      result = "(vp::vx::Uplink_Output_Port_ID)76]";
      break;
    case 77:
      result = "(vp::vx::Uplink_Output_Port_ID)77]";
      break;
    case 78:
      result = "(vp::vx::Uplink_Output_Port_ID)78]";
      break;
    case 79:
      result = "(vp::vx::Uplink_Output_Port_ID)79]";
      break;
    case 80:
      result = "(vp::vx::Uplink_Output_Port_ID)80]";
      break;
    case 81:
      result = "(vp::vx::Uplink_Output_Port_ID)81]";
      break;
    case 82:
      result = "(vp::vx::Uplink_Output_Port_ID)82]";
      break;
    case 83:
      result = "(vp::vx::Uplink_Output_Port_ID)83]";
      break;
    case 84:
      result = "(vp::vx::Uplink_Output_Port_ID)84]";
      break;
    case 85:
      result = "(vp::vx::Uplink_Output_Port_ID)85]";
      break;
    case 86:
      result = "(vp::vx::Uplink_Output_Port_ID)86]";
      break;
    case 87:
      result = "(vp::vx::Uplink_Output_Port_ID)87]";
      break;
    case 88:
      result = "(vp::vx::Uplink_Output_Port_ID)88]";
      break;
    case 89:
      result = "(vp::vx::Uplink_Output_Port_ID)89]";
      break;
    case 90:
      result = "(vp::vx::Uplink_Output_Port_ID)90]";
      break;
    case 91:
      result = "(vp::vx::Uplink_Output_Port_ID)91]";
      break;
    case 92:
      result = "(vp::vx::Uplink_Output_Port_ID)92]";
      break;
    case 93:
      result = "(vp::vx::Uplink_Output_Port_ID)93]";
      break;
    case 94:
      result = "(vp::vx::Uplink_Output_Port_ID)94]";
      break;
    case 95:
      result = "(vp::vx::Uplink_Output_Port_ID)95]";
      break;
    case 96:
      result = "(vp::vx::Uplink_Output_Port_ID)96]";
      break;
    case 97:
      result = "(vp::vx::Uplink_Output_Port_ID)97]";
      break;
    case 98:
      result = "(vp::vx::Uplink_Output_Port_ID)98]";
      break;
    case 99:
      result = "(vp::vx::Uplink_Output_Port_ID)99]";
      break;
    case 100:
      result = "(vp::vx::Uplink_Output_Port_ID)100]";
      break;
    case 101:
      result = "(vp::vx::Uplink_Output_Port_ID)101]";
      break;
    case 102:
      result = "(vp::vx::Uplink_Output_Port_ID)102]";
      break;
    case 103:
      result = "(vp::vx::Uplink_Output_Port_ID)103]";
      break;
    case 104:
      result = "(vp::vx::Uplink_Output_Port_ID)104]";
      break;
    case 105:
      result = "(vp::vx::Uplink_Output_Port_ID)105]";
      break;
    case 106:
      result = "(vp::vx::Uplink_Output_Port_ID)106]";
      break;
    case 107:
      result = "(vp::vx::Uplink_Output_Port_ID)107]";
      break;
    case 108:
      result = "(vp::vx::Uplink_Output_Port_ID)108]";
      break;
    case 109:
      result = "(vp::vx::Uplink_Output_Port_ID)109]";
      break;
    case 110:
      result = "(vp::vx::Uplink_Output_Port_ID)110]";
      break;
    case 111:
      result = "(vp::vx::Uplink_Output_Port_ID)111]";
      break;
    case 112:
      result = "(vp::vx::Uplink_Output_Port_ID)112]";
      break;
    case 113:
      result = "(vp::vx::Uplink_Output_Port_ID)113]";
      break;
    case 114:
      result = "(vp::vx::Uplink_Output_Port_ID)114]";
      break;
    case 115:
      result = "(vp::vx::Uplink_Output_Port_ID)115]";
      break;
    case 116:
      result = "(vp::vx::Uplink_Output_Port_ID)116]";
      break;
    case 117:
      result = "(vp::vx::Uplink_Output_Port_ID)117]";
      break;
    case 118:
      result = "(vp::vx::Uplink_Output_Port_ID)118]";
      break;
    case 119:
      result = "(vp::vx::Uplink_Output_Port_ID)119]";
      break;
    case 120:
      result = "(vp::vx::Uplink_Output_Port_ID)120]";
      break;
    case 121:
      result = "(vp::vx::Uplink_Output_Port_ID)121]";
      break;
    case 122:
      result = "(vp::vx::Uplink_Output_Port_ID)122]";
      break;
    case 123:
      result = "(vp::vx::Uplink_Output_Port_ID)123]";
      break;
    case 124:
      result = "(vp::vx::Uplink_Output_Port_ID)124]";
      break;
    case 125:
      result = "(vp::vx::Uplink_Output_Port_ID)125]";
      break;
    case 126:
      result = "(vp::vx::Uplink_Output_Port_ID)126]";
      break;
    case 127:
      result = "(vp::vx::Uplink_Output_Port_ID)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Uplink_Output_Port_ID)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

char *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZN2vp2vx20get_log_context_infoEPKNS9_15IO_Port_FactoryEENK3__0clEvEUlT_E_EEJONS0_6__baseILNS0_6_TraitE0EJNS9_20Uplink_Input_Port_IDENS9_22Downlink_Input_Port_IDENS9_21Uplink_Output_Port_IDENS9_23Downlink_Output_Port_IDEEEEEEEDcSE_DpT0_(uint64_t a1, int *a2)
{
  v2 = vp::detail::reflect_value_name<(vp::vx::Downlink_Input_Port_ID)0,128ul>(*a2);
  if (v3)
  {
    v4 = &v2[v3];
    for (i = v3; i; --i)
    {
      v6 = *--v4;
      if (v6 == 58)
      {
        v7 = v4 - v2 + 1;
        if (v3 < v7)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v2[v7];
      }
    }
  }

  v7 = 0;
  return &v2[v7];
}

char *vp::detail::reflect_value_name<(vp::vx::Downlink_Input_Port_ID)0,128ul>(int a1)
{
  result = "vp::vx::Downlink_Input_Port_ID::Dynamics_DSP_Default_Audio_Input]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::Downlink_Input_Port_ID::Dynamics_DSP_System_Audio_Input]";
      break;
    case 2:
      result = "vp::vx::Downlink_Input_Port_ID::Dynamics_DSP_Other_Audio_Input]";
      break;
    case 3:
      result = "vp::vx::Downlink_Input_Port_ID::Hardware_DSP_Speaker_Telemetry_Input]";
      break;
    case 4:
      result = "(vp::vx::Downlink_Input_Port_ID)4]";
      break;
    case 5:
      result = "(vp::vx::Downlink_Input_Port_ID)5]";
      break;
    case 6:
      result = "(vp::vx::Downlink_Input_Port_ID)6]";
      break;
    case 7:
      result = "(vp::vx::Downlink_Input_Port_ID)7]";
      break;
    case 8:
      result = "(vp::vx::Downlink_Input_Port_ID)8]";
      break;
    case 9:
      result = "(vp::vx::Downlink_Input_Port_ID)9]";
      break;
    case 10:
      result = "(vp::vx::Downlink_Input_Port_ID)10]";
      break;
    case 11:
      result = "(vp::vx::Downlink_Input_Port_ID)11]";
      break;
    case 12:
      result = "(vp::vx::Downlink_Input_Port_ID)12]";
      break;
    case 13:
      result = "(vp::vx::Downlink_Input_Port_ID)13]";
      break;
    case 14:
      result = "(vp::vx::Downlink_Input_Port_ID)14]";
      break;
    case 15:
      result = "(vp::vx::Downlink_Input_Port_ID)15]";
      break;
    case 16:
      result = "(vp::vx::Downlink_Input_Port_ID)16]";
      break;
    case 17:
      result = "(vp::vx::Downlink_Input_Port_ID)17]";
      break;
    case 18:
      result = "(vp::vx::Downlink_Input_Port_ID)18]";
      break;
    case 19:
      result = "(vp::vx::Downlink_Input_Port_ID)19]";
      break;
    case 20:
      result = "(vp::vx::Downlink_Input_Port_ID)20]";
      break;
    case 21:
      result = "(vp::vx::Downlink_Input_Port_ID)21]";
      break;
    case 22:
      result = "(vp::vx::Downlink_Input_Port_ID)22]";
      break;
    case 23:
      result = "(vp::vx::Downlink_Input_Port_ID)23]";
      break;
    case 24:
      result = "(vp::vx::Downlink_Input_Port_ID)24]";
      break;
    case 25:
      result = "(vp::vx::Downlink_Input_Port_ID)25]";
      break;
    case 26:
      result = "(vp::vx::Downlink_Input_Port_ID)26]";
      break;
    case 27:
      result = "(vp::vx::Downlink_Input_Port_ID)27]";
      break;
    case 28:
      result = "(vp::vx::Downlink_Input_Port_ID)28]";
      break;
    case 29:
      result = "(vp::vx::Downlink_Input_Port_ID)29]";
      break;
    case 30:
      result = "(vp::vx::Downlink_Input_Port_ID)30]";
      break;
    case 31:
      result = "(vp::vx::Downlink_Input_Port_ID)31]";
      break;
    case 32:
      result = "(vp::vx::Downlink_Input_Port_ID)32]";
      break;
    case 33:
      result = "(vp::vx::Downlink_Input_Port_ID)33]";
      break;
    case 34:
      result = "(vp::vx::Downlink_Input_Port_ID)34]";
      break;
    case 35:
      result = "(vp::vx::Downlink_Input_Port_ID)35]";
      break;
    case 36:
      result = "(vp::vx::Downlink_Input_Port_ID)36]";
      break;
    case 37:
      result = "(vp::vx::Downlink_Input_Port_ID)37]";
      break;
    case 38:
      result = "(vp::vx::Downlink_Input_Port_ID)38]";
      break;
    case 39:
      result = "(vp::vx::Downlink_Input_Port_ID)39]";
      break;
    case 40:
      result = "(vp::vx::Downlink_Input_Port_ID)40]";
      break;
    case 41:
      result = "(vp::vx::Downlink_Input_Port_ID)41]";
      break;
    case 42:
      result = "(vp::vx::Downlink_Input_Port_ID)42]";
      break;
    case 43:
      result = "(vp::vx::Downlink_Input_Port_ID)43]";
      break;
    case 44:
      result = "(vp::vx::Downlink_Input_Port_ID)44]";
      break;
    case 45:
      result = "(vp::vx::Downlink_Input_Port_ID)45]";
      break;
    case 46:
      result = "(vp::vx::Downlink_Input_Port_ID)46]";
      break;
    case 47:
      result = "(vp::vx::Downlink_Input_Port_ID)47]";
      break;
    case 48:
      result = "(vp::vx::Downlink_Input_Port_ID)48]";
      break;
    case 49:
      result = "(vp::vx::Downlink_Input_Port_ID)49]";
      break;
    case 50:
      result = "(vp::vx::Downlink_Input_Port_ID)50]";
      break;
    case 51:
      result = "(vp::vx::Downlink_Input_Port_ID)51]";
      break;
    case 52:
      result = "(vp::vx::Downlink_Input_Port_ID)52]";
      break;
    case 53:
      result = "(vp::vx::Downlink_Input_Port_ID)53]";
      break;
    case 54:
      result = "(vp::vx::Downlink_Input_Port_ID)54]";
      break;
    case 55:
      result = "(vp::vx::Downlink_Input_Port_ID)55]";
      break;
    case 56:
      result = "(vp::vx::Downlink_Input_Port_ID)56]";
      break;
    case 57:
      result = "(vp::vx::Downlink_Input_Port_ID)57]";
      break;
    case 58:
      result = "(vp::vx::Downlink_Input_Port_ID)58]";
      break;
    case 59:
      result = "(vp::vx::Downlink_Input_Port_ID)59]";
      break;
    case 60:
      result = "(vp::vx::Downlink_Input_Port_ID)60]";
      break;
    case 61:
      result = "(vp::vx::Downlink_Input_Port_ID)61]";
      break;
    case 62:
      result = "(vp::vx::Downlink_Input_Port_ID)62]";
      break;
    case 63:
      result = "(vp::vx::Downlink_Input_Port_ID)63]";
      break;
    case 64:
      result = "(vp::vx::Downlink_Input_Port_ID)64]";
      break;
    case 65:
      result = "(vp::vx::Downlink_Input_Port_ID)65]";
      break;
    case 66:
      result = "(vp::vx::Downlink_Input_Port_ID)66]";
      break;
    case 67:
      result = "(vp::vx::Downlink_Input_Port_ID)67]";
      break;
    case 68:
      result = "(vp::vx::Downlink_Input_Port_ID)68]";
      break;
    case 69:
      result = "(vp::vx::Downlink_Input_Port_ID)69]";
      break;
    case 70:
      result = "(vp::vx::Downlink_Input_Port_ID)70]";
      break;
    case 71:
      result = "(vp::vx::Downlink_Input_Port_ID)71]";
      break;
    case 72:
      result = "(vp::vx::Downlink_Input_Port_ID)72]";
      break;
    case 73:
      result = "(vp::vx::Downlink_Input_Port_ID)73]";
      break;
    case 74:
      result = "(vp::vx::Downlink_Input_Port_ID)74]";
      break;
    case 75:
      result = "(vp::vx::Downlink_Input_Port_ID)75]";
      break;
    case 76:
      result = "(vp::vx::Downlink_Input_Port_ID)76]";
      break;
    case 77:
      result = "(vp::vx::Downlink_Input_Port_ID)77]";
      break;
    case 78:
      result = "(vp::vx::Downlink_Input_Port_ID)78]";
      break;
    case 79:
      result = "(vp::vx::Downlink_Input_Port_ID)79]";
      break;
    case 80:
      result = "(vp::vx::Downlink_Input_Port_ID)80]";
      break;
    case 81:
      result = "(vp::vx::Downlink_Input_Port_ID)81]";
      break;
    case 82:
      result = "(vp::vx::Downlink_Input_Port_ID)82]";
      break;
    case 83:
      result = "(vp::vx::Downlink_Input_Port_ID)83]";
      break;
    case 84:
      result = "(vp::vx::Downlink_Input_Port_ID)84]";
      break;
    case 85:
      result = "(vp::vx::Downlink_Input_Port_ID)85]";
      break;
    case 86:
      result = "(vp::vx::Downlink_Input_Port_ID)86]";
      break;
    case 87:
      result = "(vp::vx::Downlink_Input_Port_ID)87]";
      break;
    case 88:
      result = "(vp::vx::Downlink_Input_Port_ID)88]";
      break;
    case 89:
      result = "(vp::vx::Downlink_Input_Port_ID)89]";
      break;
    case 90:
      result = "(vp::vx::Downlink_Input_Port_ID)90]";
      break;
    case 91:
      result = "(vp::vx::Downlink_Input_Port_ID)91]";
      break;
    case 92:
      result = "(vp::vx::Downlink_Input_Port_ID)92]";
      break;
    case 93:
      result = "(vp::vx::Downlink_Input_Port_ID)93]";
      break;
    case 94:
      result = "(vp::vx::Downlink_Input_Port_ID)94]";
      break;
    case 95:
      result = "(vp::vx::Downlink_Input_Port_ID)95]";
      break;
    case 96:
      result = "(vp::vx::Downlink_Input_Port_ID)96]";
      break;
    case 97:
      result = "(vp::vx::Downlink_Input_Port_ID)97]";
      break;
    case 98:
      result = "(vp::vx::Downlink_Input_Port_ID)98]";
      break;
    case 99:
      result = "(vp::vx::Downlink_Input_Port_ID)99]";
      break;
    case 100:
      result = "(vp::vx::Downlink_Input_Port_ID)100]";
      break;
    case 101:
      result = "(vp::vx::Downlink_Input_Port_ID)101]";
      break;
    case 102:
      result = "(vp::vx::Downlink_Input_Port_ID)102]";
      break;
    case 103:
      result = "(vp::vx::Downlink_Input_Port_ID)103]";
      break;
    case 104:
      result = "(vp::vx::Downlink_Input_Port_ID)104]";
      break;
    case 105:
      result = "(vp::vx::Downlink_Input_Port_ID)105]";
      break;
    case 106:
      result = "(vp::vx::Downlink_Input_Port_ID)106]";
      break;
    case 107:
      result = "(vp::vx::Downlink_Input_Port_ID)107]";
      break;
    case 108:
      result = "(vp::vx::Downlink_Input_Port_ID)108]";
      break;
    case 109:
      result = "(vp::vx::Downlink_Input_Port_ID)109]";
      break;
    case 110:
      result = "(vp::vx::Downlink_Input_Port_ID)110]";
      break;
    case 111:
      result = "(vp::vx::Downlink_Input_Port_ID)111]";
      break;
    case 112:
      result = "(vp::vx::Downlink_Input_Port_ID)112]";
      break;
    case 113:
      result = "(vp::vx::Downlink_Input_Port_ID)113]";
      break;
    case 114:
      result = "(vp::vx::Downlink_Input_Port_ID)114]";
      break;
    case 115:
      result = "(vp::vx::Downlink_Input_Port_ID)115]";
      break;
    case 116:
      result = "(vp::vx::Downlink_Input_Port_ID)116]";
      break;
    case 117:
      result = "(vp::vx::Downlink_Input_Port_ID)117]";
      break;
    case 118:
      result = "(vp::vx::Downlink_Input_Port_ID)118]";
      break;
    case 119:
      result = "(vp::vx::Downlink_Input_Port_ID)119]";
      break;
    case 120:
      result = "(vp::vx::Downlink_Input_Port_ID)120]";
      break;
    case 121:
      result = "(vp::vx::Downlink_Input_Port_ID)121]";
      break;
    case 122:
      result = "(vp::vx::Downlink_Input_Port_ID)122]";
      break;
    case 123:
      result = "(vp::vx::Downlink_Input_Port_ID)123]";
      break;
    case 124:
      result = "(vp::vx::Downlink_Input_Port_ID)124]";
      break;
    case 125:
      result = "(vp::vx::Downlink_Input_Port_ID)125]";
      break;
    case 126:
      result = "(vp::vx::Downlink_Input_Port_ID)126]";
      break;
    case 127:
      result = "(vp::vx::Downlink_Input_Port_ID)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Downlink_Input_Port_ID)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

char *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZN2vp2vx20get_log_context_infoEPKNS9_15IO_Port_FactoryEENK3__0clEvEUlT_E_EEJONS0_6__baseILNS0_6_TraitE0EJNS9_20Uplink_Input_Port_IDENS9_22Downlink_Input_Port_IDENS9_21Uplink_Output_Port_IDENS9_23Downlink_Output_Port_IDEEEEEEEDcSE_DpT0_(uint64_t a1, int *a2)
{
  v2 = vp::detail::reflect_value_name<(vp::vx::Uplink_Input_Port_ID)0,128ul>(*a2);
  if (v3)
  {
    v4 = &v2[v3];
    for (i = v3; i; --i)
    {
      v6 = *--v4;
      if (v6 == 58)
      {
        v7 = v4 - v2 + 1;
        if (v3 < v7)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v2[v7];
      }
    }
  }

  v7 = 0;
  return &v2[v7];
}

char *vp::detail::reflect_value_name<(vp::vx::Uplink_Input_Port_ID)0,128ul>(int a1)
{
  result = "vp::vx::Uplink_Input_Port_ID::Hardware_DSP_Mic_Input]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::Uplink_Input_Port_ID::Hardware_DSP_Ref_Input]";
      break;
    case 2:
      result = "vp::vx::Uplink_Input_Port_ID::Echo_DSP_Mic_Input]";
      break;
    case 3:
      result = "vp::vx::Uplink_Input_Port_ID::Echo_DSP_Ref_Input]";
      break;
    case 4:
      result = "vp::vx::Uplink_Input_Port_ID::Echo_DSP_Mic_Clip_Data_Input]";
      break;
    case 5:
      result = "vp::vx::Uplink_Input_Port_ID::Content_DSP_Mic_Input]";
      break;
    case 6:
      result = "(vp::vx::Uplink_Input_Port_ID)6]";
      break;
    case 7:
      result = "(vp::vx::Uplink_Input_Port_ID)7]";
      break;
    case 8:
      result = "(vp::vx::Uplink_Input_Port_ID)8]";
      break;
    case 9:
      result = "(vp::vx::Uplink_Input_Port_ID)9]";
      break;
    case 10:
      result = "(vp::vx::Uplink_Input_Port_ID)10]";
      break;
    case 11:
      result = "(vp::vx::Uplink_Input_Port_ID)11]";
      break;
    case 12:
      result = "(vp::vx::Uplink_Input_Port_ID)12]";
      break;
    case 13:
      result = "(vp::vx::Uplink_Input_Port_ID)13]";
      break;
    case 14:
      result = "(vp::vx::Uplink_Input_Port_ID)14]";
      break;
    case 15:
      result = "(vp::vx::Uplink_Input_Port_ID)15]";
      break;
    case 16:
      result = "(vp::vx::Uplink_Input_Port_ID)16]";
      break;
    case 17:
      result = "(vp::vx::Uplink_Input_Port_ID)17]";
      break;
    case 18:
      result = "(vp::vx::Uplink_Input_Port_ID)18]";
      break;
    case 19:
      result = "(vp::vx::Uplink_Input_Port_ID)19]";
      break;
    case 20:
      result = "(vp::vx::Uplink_Input_Port_ID)20]";
      break;
    case 21:
      result = "(vp::vx::Uplink_Input_Port_ID)21]";
      break;
    case 22:
      result = "(vp::vx::Uplink_Input_Port_ID)22]";
      break;
    case 23:
      result = "(vp::vx::Uplink_Input_Port_ID)23]";
      break;
    case 24:
      result = "(vp::vx::Uplink_Input_Port_ID)24]";
      break;
    case 25:
      result = "(vp::vx::Uplink_Input_Port_ID)25]";
      break;
    case 26:
      result = "(vp::vx::Uplink_Input_Port_ID)26]";
      break;
    case 27:
      result = "(vp::vx::Uplink_Input_Port_ID)27]";
      break;
    case 28:
      result = "(vp::vx::Uplink_Input_Port_ID)28]";
      break;
    case 29:
      result = "(vp::vx::Uplink_Input_Port_ID)29]";
      break;
    case 30:
      result = "(vp::vx::Uplink_Input_Port_ID)30]";
      break;
    case 31:
      result = "(vp::vx::Uplink_Input_Port_ID)31]";
      break;
    case 32:
      result = "(vp::vx::Uplink_Input_Port_ID)32]";
      break;
    case 33:
      result = "(vp::vx::Uplink_Input_Port_ID)33]";
      break;
    case 34:
      result = "(vp::vx::Uplink_Input_Port_ID)34]";
      break;
    case 35:
      result = "(vp::vx::Uplink_Input_Port_ID)35]";
      break;
    case 36:
      result = "(vp::vx::Uplink_Input_Port_ID)36]";
      break;
    case 37:
      result = "(vp::vx::Uplink_Input_Port_ID)37]";
      break;
    case 38:
      result = "(vp::vx::Uplink_Input_Port_ID)38]";
      break;
    case 39:
      result = "(vp::vx::Uplink_Input_Port_ID)39]";
      break;
    case 40:
      result = "(vp::vx::Uplink_Input_Port_ID)40]";
      break;
    case 41:
      result = "(vp::vx::Uplink_Input_Port_ID)41]";
      break;
    case 42:
      result = "(vp::vx::Uplink_Input_Port_ID)42]";
      break;
    case 43:
      result = "(vp::vx::Uplink_Input_Port_ID)43]";
      break;
    case 44:
      result = "(vp::vx::Uplink_Input_Port_ID)44]";
      break;
    case 45:
      result = "(vp::vx::Uplink_Input_Port_ID)45]";
      break;
    case 46:
      result = "(vp::vx::Uplink_Input_Port_ID)46]";
      break;
    case 47:
      result = "(vp::vx::Uplink_Input_Port_ID)47]";
      break;
    case 48:
      result = "(vp::vx::Uplink_Input_Port_ID)48]";
      break;
    case 49:
      result = "(vp::vx::Uplink_Input_Port_ID)49]";
      break;
    case 50:
      result = "(vp::vx::Uplink_Input_Port_ID)50]";
      break;
    case 51:
      result = "(vp::vx::Uplink_Input_Port_ID)51]";
      break;
    case 52:
      result = "(vp::vx::Uplink_Input_Port_ID)52]";
      break;
    case 53:
      result = "(vp::vx::Uplink_Input_Port_ID)53]";
      break;
    case 54:
      result = "(vp::vx::Uplink_Input_Port_ID)54]";
      break;
    case 55:
      result = "(vp::vx::Uplink_Input_Port_ID)55]";
      break;
    case 56:
      result = "(vp::vx::Uplink_Input_Port_ID)56]";
      break;
    case 57:
      result = "(vp::vx::Uplink_Input_Port_ID)57]";
      break;
    case 58:
      result = "(vp::vx::Uplink_Input_Port_ID)58]";
      break;
    case 59:
      result = "(vp::vx::Uplink_Input_Port_ID)59]";
      break;
    case 60:
      result = "(vp::vx::Uplink_Input_Port_ID)60]";
      break;
    case 61:
      result = "(vp::vx::Uplink_Input_Port_ID)61]";
      break;
    case 62:
      result = "(vp::vx::Uplink_Input_Port_ID)62]";
      break;
    case 63:
      result = "(vp::vx::Uplink_Input_Port_ID)63]";
      break;
    case 64:
      result = "(vp::vx::Uplink_Input_Port_ID)64]";
      break;
    case 65:
      result = "(vp::vx::Uplink_Input_Port_ID)65]";
      break;
    case 66:
      result = "(vp::vx::Uplink_Input_Port_ID)66]";
      break;
    case 67:
      result = "(vp::vx::Uplink_Input_Port_ID)67]";
      break;
    case 68:
      result = "(vp::vx::Uplink_Input_Port_ID)68]";
      break;
    case 69:
      result = "(vp::vx::Uplink_Input_Port_ID)69]";
      break;
    case 70:
      result = "(vp::vx::Uplink_Input_Port_ID)70]";
      break;
    case 71:
      result = "(vp::vx::Uplink_Input_Port_ID)71]";
      break;
    case 72:
      result = "(vp::vx::Uplink_Input_Port_ID)72]";
      break;
    case 73:
      result = "(vp::vx::Uplink_Input_Port_ID)73]";
      break;
    case 74:
      result = "(vp::vx::Uplink_Input_Port_ID)74]";
      break;
    case 75:
      result = "(vp::vx::Uplink_Input_Port_ID)75]";
      break;
    case 76:
      result = "(vp::vx::Uplink_Input_Port_ID)76]";
      break;
    case 77:
      result = "(vp::vx::Uplink_Input_Port_ID)77]";
      break;
    case 78:
      result = "(vp::vx::Uplink_Input_Port_ID)78]";
      break;
    case 79:
      result = "(vp::vx::Uplink_Input_Port_ID)79]";
      break;
    case 80:
      result = "(vp::vx::Uplink_Input_Port_ID)80]";
      break;
    case 81:
      result = "(vp::vx::Uplink_Input_Port_ID)81]";
      break;
    case 82:
      result = "(vp::vx::Uplink_Input_Port_ID)82]";
      break;
    case 83:
      result = "(vp::vx::Uplink_Input_Port_ID)83]";
      break;
    case 84:
      result = "(vp::vx::Uplink_Input_Port_ID)84]";
      break;
    case 85:
      result = "(vp::vx::Uplink_Input_Port_ID)85]";
      break;
    case 86:
      result = "(vp::vx::Uplink_Input_Port_ID)86]";
      break;
    case 87:
      result = "(vp::vx::Uplink_Input_Port_ID)87]";
      break;
    case 88:
      result = "(vp::vx::Uplink_Input_Port_ID)88]";
      break;
    case 89:
      result = "(vp::vx::Uplink_Input_Port_ID)89]";
      break;
    case 90:
      result = "(vp::vx::Uplink_Input_Port_ID)90]";
      break;
    case 91:
      result = "(vp::vx::Uplink_Input_Port_ID)91]";
      break;
    case 92:
      result = "(vp::vx::Uplink_Input_Port_ID)92]";
      break;
    case 93:
      result = "(vp::vx::Uplink_Input_Port_ID)93]";
      break;
    case 94:
      result = "(vp::vx::Uplink_Input_Port_ID)94]";
      break;
    case 95:
      result = "(vp::vx::Uplink_Input_Port_ID)95]";
      break;
    case 96:
      result = "(vp::vx::Uplink_Input_Port_ID)96]";
      break;
    case 97:
      result = "(vp::vx::Uplink_Input_Port_ID)97]";
      break;
    case 98:
      result = "(vp::vx::Uplink_Input_Port_ID)98]";
      break;
    case 99:
      result = "(vp::vx::Uplink_Input_Port_ID)99]";
      break;
    case 100:
      result = "(vp::vx::Uplink_Input_Port_ID)100]";
      break;
    case 101:
      result = "(vp::vx::Uplink_Input_Port_ID)101]";
      break;
    case 102:
      result = "(vp::vx::Uplink_Input_Port_ID)102]";
      break;
    case 103:
      result = "(vp::vx::Uplink_Input_Port_ID)103]";
      break;
    case 104:
      result = "(vp::vx::Uplink_Input_Port_ID)104]";
      break;
    case 105:
      result = "(vp::vx::Uplink_Input_Port_ID)105]";
      break;
    case 106:
      result = "(vp::vx::Uplink_Input_Port_ID)106]";
      break;
    case 107:
      result = "(vp::vx::Uplink_Input_Port_ID)107]";
      break;
    case 108:
      result = "(vp::vx::Uplink_Input_Port_ID)108]";
      break;
    case 109:
      result = "(vp::vx::Uplink_Input_Port_ID)109]";
      break;
    case 110:
      result = "(vp::vx::Uplink_Input_Port_ID)110]";
      break;
    case 111:
      result = "(vp::vx::Uplink_Input_Port_ID)111]";
      break;
    case 112:
      result = "(vp::vx::Uplink_Input_Port_ID)112]";
      break;
    case 113:
      result = "(vp::vx::Uplink_Input_Port_ID)113]";
      break;
    case 114:
      result = "(vp::vx::Uplink_Input_Port_ID)114]";
      break;
    case 115:
      result = "(vp::vx::Uplink_Input_Port_ID)115]";
      break;
    case 116:
      result = "(vp::vx::Uplink_Input_Port_ID)116]";
      break;
    case 117:
      result = "(vp::vx::Uplink_Input_Port_ID)117]";
      break;
    case 118:
      result = "(vp::vx::Uplink_Input_Port_ID)118]";
      break;
    case 119:
      result = "(vp::vx::Uplink_Input_Port_ID)119]";
      break;
    case 120:
      result = "(vp::vx::Uplink_Input_Port_ID)120]";
      break;
    case 121:
      result = "(vp::vx::Uplink_Input_Port_ID)121]";
      break;
    case 122:
      result = "(vp::vx::Uplink_Input_Port_ID)122]";
      break;
    case 123:
      result = "(vp::vx::Uplink_Input_Port_ID)123]";
      break;
    case 124:
      result = "(vp::vx::Uplink_Input_Port_ID)124]";
      break;
    case 125:
      result = "(vp::vx::Uplink_Input_Port_ID)125]";
      break;
    case 126:
      result = "(vp::vx::Uplink_Input_Port_ID)126]";
      break;
    case 127:
      result = "(vp::vx::Uplink_Input_Port_ID)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Uplink_Input_Port_ID)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

vp *vp::vx::IO_Port_Factory::new_port@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v65 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  default_resource = std::pmr::get_default_resource(a1);
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = default_resource;
  result = vp::vx::detail::get_value<BOOL>(a1 + 32);
  if (result)
  {
    log = vp::get_log(result);
    v9 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      log_context_info = vp::vx::get_log_context_info(__p, a1);
      v11 = __p[23];
      v12 = __p[23];
      v13 = *&__p[8];
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

        v16 = *__p;
        if (v12 >= 0)
        {
          v16 = __p;
        }

        if (v15)
        {
          v17 = " ";
        }

        else
        {
          v17 = "";
        }

        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = v16;
        WORD6(buf[0]) = 2080;
        *(buf + 14) = v17;
        _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_DEBUG, "%s%swill create port", buf, 0x16u);
        LOBYTE(v12) = __p[23];
      }

      if ((v12 & 0x80) != 0)
      {
        operator delete(*__p);
      }
    }

    v18 = HIDWORD(*(a1 + 8));
    if (v18)
    {
      v19 = v18 == 1;
    }

    else
    {
      v19 = 1;
    }

    v20 = v19;
    v21 = std::pmr::get_default_resource(v9);
    *&__p[8] = 0;
    *&__p[16] = 0;
    *__p = v21;
    vp::vx::data_flow::State<void>::get_value((a1 + 120), __p);
    v22 = vp::vx::data_flow::Value::view_storage(__p);
    buf[0] = *v22;
    buf[1] = *(v22 + 16);
    v60 = *(v22 + 32);
    vp::vx::data_flow::Value::~Value(__p);
    v23 = vp::vx::detail::get_value<BOOL>(a1 + 88);
    v24 = v23;
    v25 = std::pmr::get_default_resource(v23);
    *&__p[8] = 0;
    *&__p[16] = 0;
    *__p = v25;
    vp::vx::data_flow::State<void>::get_value((a1 + 64), __p);
    v26 = *vp::vx::data_flow::Value::view_storage(__p);
    vp::vx::data_flow::Value::~Value(__p);
    v28 = vp::get_log(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v45 = v26;
      v29 = vp::vx::get_log_context_info(v61, a1);
      v30 = v64;
      v31 = v64;
      v32 = v62;
      v33 = vp::get_log(v29);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        if (v31 >= 0)
        {
          v34 = v30;
        }

        else
        {
          v34 = v32;
        }

        v35 = *v61;
        if (v31 >= 0)
        {
          v35 = v61;
        }

        v44 = v35;
        if (v34)
        {
          v36 = " ";
        }

        else
        {
          v36 = "";
        }

        v37 = vp::vx::detail::convert_to_c_str(*(a1 + 8));
        if (v20)
        {
          v40 = "input";
        }

        else
        {
          v40 = "output";
        }

        if (v24)
        {
          v41 = "fixed";
        }

        else
        {
          v41 = "variable";
        }

        CA::StreamDescription::AsString(v46, buf, v38, v39);
        v42 = v46;
        if (v47 < 0)
        {
          v42 = v46[0];
        }

        *__p = 136316674;
        *&__p[4] = v44;
        *&__p[12] = 2080;
        *&__p[14] = v36;
        *&__p[22] = 2080;
        *&__p[24] = v37;
        v51 = 2080;
        v52 = v40;
        v53 = 2080;
        v54 = v41;
        v55 = 1024;
        v56 = v45;
        v57 = 2080;
        v58 = v42;
        _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_DEBUG, "%s%screating %s %s port with %s block size %u and stream format %s", __p, 0x44u);
        if (v47 < 0)
        {
          operator delete(v46[0]);
        }

        LOBYTE(v31) = v64;
      }

      if ((v31 & 0x80) != 0)
      {
        operator delete(*v61);
      }
    }

    if (v24)
    {
      if (v20)
      {
        v49 = a2;
        *__p = 0;
        *&__p[8] = a2;
        *&__p[16] = xmmword_272756740;
        v46[0] = (*(*a2 + 16))(a2, 120, 8);
        *v61 = v46;
        v62 = &v49;
        v63 = 0;
        *(v46[0] + 12) = &unk_2881C6630;
        operator new();
      }

      v48 = a2;
      *__p = 0;
      *&__p[8] = a2;
      *&__p[16] = xmmword_272756710;
      v49 = (*(*a2 + 16))(a2, 112, 8);
      *v61 = &v49;
      v62 = &v48;
      v63 = 0;
      *(v49 + 88) = &unk_2881C6630;
      operator new();
    }

    if (v20)
    {
      v48 = a2;
      *__p = 0;
      *&__p[8] = a2;
      *&__p[16] = xmmword_272756710;
      v49 = (*(*a2 + 16))(a2, 112, 8);
      *v61 = &v49;
      v62 = &v48;
      v63 = 0;
      *(v49 + 88) = &unk_2881C6630;
      operator new();
    }

    v48 = a2;
    *__p = 0;
    *&__p[8] = a2;
    *&__p[16] = xmmword_272756590;
    v49 = (*(*a2 + 16))(a2, 168, 8);
    *v61 = &v49;
    v62 = &v48;
    v63 = 0;
    *(v49 + 144) = &unk_2881C6630;
    operator new();
  }

  v43 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27266B698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  std::__exception_guard_exceptions<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port * std::pmr::polymorphic_allocator<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port>::new_object[abi:ne200100]<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port,CA::StreamDescription const&,unsigned int &>(CA::StreamDescription const&,unsigned int &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](v19 - 128);
  std::unique_ptr<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port,vp::Allocator_Delete<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port>>::reset[abi:ne200100](&a19, 0);
  __cxa_begin_catch(exception_object);
  __cxa_end_catch();
  JUMPOUT(0x27266B63CLL);
}

const char *std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<vp::vx::detail::convert_to_c_str(std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID> &>(uint64_t a1, _DWORD *a2)
{
  v2 = *a2 - 1;
  if (v2 > 3)
  {
    return "hardware DSP mic output";
  }

  else
  {
    return off_279E4A350[v2];
  }
}

const char *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<vp::vx::detail::convert_to_c_str(std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID> &>(uint64_t a1, _DWORD *a2)
{
  v2 = *a2 - 1;
  if (v2 > 2)
  {
    return "dynamics DSP default audio input";
  }

  else
  {
    return off_279E4A4C8[v2];
  }
}

const char *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<vp::vx::detail::convert_to_c_str(std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID> &>(uint64_t a1, _DWORD *a2)
{
  v2 = *a2 - 1;
  if (v2 > 4)
  {
    return "hardware DSP mic input";
  }

  else
  {
    return off_279E4A328[v2];
  }
}

void sub_27266BAF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(void *a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        v12 = "disabled";
        if (v10)
        {
          v12 = "enabled";
        }

        caulk::make_string("%s port is %s", &v17, v11, v12);
        __p = v17;
        *v14 = *v18;
        *&v14[7] = *&v18[7];
        v15 = v19;
        v16 = 1;
        (*(*v9 + 32))(v9, v6, &__p);
        if (v16 == 1 && v15 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881B8EC0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8EC0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8EC0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(void *a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        v12 = "disabled";
        if (v10)
        {
          v12 = "enabled";
        }

        caulk::make_string("%s port is %s", &v17, v11, v12);
        __p = v17;
        *v14 = *v18;
        *&v14[7] = *&v18[7];
        v15 = v19;
        v16 = 1;
        (*(*v9 + 24))(v9, v6, &__p);
        if (v16 == 1 && v15 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881B8E78;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8E78;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8E78;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::IO_Port_Factory::set_block_size(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1[2];
  v2 = HIDWORD(a1[1]);
  if (v2)
  {
    v3 = v2 == 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  v5 = a1[3];
  if (v5)
  {
    v6 = (v5 + 16);
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    v7 = a1[1];
    if (v4)
    {
      atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
      goto LABEL_11;
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  else if (v4)
  {
LABEL_11:
    operator new();
  }

  operator new();
}

void sub_27266C298(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string("%s port I/O block size is %u", &v16, v11, v10);
        __p = v16;
        *v13 = *v17;
        *&v13[7] = *&v17[7];
        v14 = v18;
        v15 = 1;
        (*(*v9 + 32))(v9, v6, &__p);
        if (v15 == 1 && v14 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881B8F50;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8F50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8F50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string("%s port I/O block size is %u", &v16, v11, v10);
        __p = v16;
        *v13 = *v17;
        *&v13[7] = *&v17[7];
        v14 = v18;
        v15 = 1;
        (*(*v9 + 24))(v9, v6, &__p);
        if (v15 == 1 && v14 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881B8F08;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8F08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8F08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::IO_Port_Factory::set_format(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1[2];
  v2 = HIDWORD(a1[1]);
  if (v2)
  {
    v3 = v2 == 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  v5 = a1[3];
  if (v5)
  {
    v6 = (v5 + 16);
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    v7 = a1[1];
    if (v4)
    {
      atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
      goto LABEL_11;
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  else if (v4)
  {
LABEL_11:
    operator new();
  }

  operator new();
}

void sub_27266CA04(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(void *a1, unsigned int *a2, void *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        v10 = vp::vx::detail::convert_to_c_str(a1[3]);
        CA::StreamDescription::AsString(&__p, a3, v11, v12);
        if (v16 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        caulk::make_string("%s port I/O format is %s", &v18, v10, p_p);
        if (v16 < 0)
        {
          operator delete(__p);
        }

        __p = v18;
        *v15 = *v19;
        *&v15[7] = *&v19[7];
        v16 = v20;
        v17 = 1;
        (*(*v9 + 32))(v9, v6, &__p);
        if (v17 == 1 && v16 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881B9028;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9028;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9028;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(void *a1, unsigned int *a2, void *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        v10 = vp::vx::detail::convert_to_c_str(a1[3]);
        CA::StreamDescription::AsString(&__p, a3, v11, v12);
        if (v16 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        caulk::make_string("%s port I/O format is %s", &v18, v10, p_p);
        if (v16 < 0)
        {
          operator delete(__p);
        }

        __p = v18;
        *v15 = *v19;
        *&v15[7] = *&v19[7];
        v16 = v20;
        v17 = 1;
        (*(*v9 + 24))(v9, v6, &__p);
        if (v17 == 1 && v16 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881B8FE0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8FE0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8FE0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void virtual thunk tovp::vx::IO_Property_Setter_Command_Factory::~IO_Property_Setter_Command_Factory(vp::vx::IO_Property_Setter_Command_Factory *this)
{
  v1 = (this + *(*this - 24));
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(v1 + 1);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(v1 + 1);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void *boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1] + 16;
    do
    {
      (*(*(v3 - 8) + 24))(v3);
      v3 += 48;
      --v2;
    }

    while (v2);
  }

  v4 = a1[3];
  if (v4)
  {
    (*(**a1 + 24))(*a1, a1[1], 48 * v4, 8);
  }

  return a1;
}

void vp::vx::IO_Property_Setter_Command_Factory::~IO_Property_Setter_Command_Factory(vp::vx::IO_Property_Setter_Command_Factory *this)
{
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(this + 1);
  *(this + 5) = &unk_2881C6630;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(this + 1);
  *(this + 5) = &unk_2881C6630;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::IO_Property_Setter_Command_Factory::new_node_command(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t *), void (*a5)(void, uint64_t *))
{
  v21[0] = a4;
  v21[1] = a5;
  v7 = (*(*a2 + 24))(a2);
  if (v7)
  {
    (*(*v7 + 16))(&v19);
    v8 = v19;
    v9 = v20;
    if (v19 != v20)
    {
      do
      {
        v10 = *v8;
        v11 = *(a1 + 16);
        v12 = *(a1 + 24);
        v25 = v11;
        if (v11)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12 == 0;
        }

        if (!v13)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,boost::container::dtl::select1st<vp::vx::Graph_Property_ID>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>*,true>,vp::vx::Graph_Property_ID>(&v24, &v25, v11 + 48 * v12, v10);
        v15 = *(a1 + 16);
        v16 = *(a1 + 24);
        if (v15)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16 == 0;
        }

        if (!v17)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v18 = v15 + 48 * v16;
        if (v24 != v18)
        {
          if (!v24)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          if (v10 < *v24)
          {
            v24 = v18;
LABEL_20:
            boost::container::throw_length_error("flat_map::at key not found", v14);
          }
        }

        if (v24 == v18)
        {
          goto LABEL_20;
        }

        v23 = a3;
        (**(v24 + 8))(v22, v24 + 16, &v23);
        caulk::function_ref<void ()(std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>)>::operator()(v21, v22);
        std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>::reset[abi:ne200100](v22);
        ++v8;
      }

      while (v8 != v9);
      v8 = v19;
    }

    if (v8)
    {
      v20 = v8;
      operator delete(v8);
    }
  }
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,boost::container::dtl::select1st<vp::vx::Graph_Property_ID>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>*,true>,vp::vx::Graph_Property_ID>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v4) >> 4);
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v6 = v5 >> 1;
      v7 = &v4[12 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 12;
        *a2 = v7 + 12;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

void virtual thunk tovp::vx::IO_Property_Setter_Delegate_Factory::~IO_Property_Setter_Delegate_Factory(vp::vx::IO_Property_Setter_Delegate_Factory *this)
{
  v1 = (this + *(*this - 24));
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(v1 + 1);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(v1 + 1);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void *boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1] + 16;
    do
    {
      (*(*(v3 - 8) + 24))(v3);
      v3 += 48;
      --v2;
    }

    while (v2);
  }

  v4 = a1[3];
  if (v4)
  {
    (*(**a1 + 24))(*a1, a1[1], 48 * v4, 8);
  }

  return a1;
}

void vp::vx::IO_Property_Setter_Delegate_Factory::~IO_Property_Setter_Delegate_Factory(vp::vx::IO_Property_Setter_Delegate_Factory *this)
{
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(this + 1);
  *(this + 5) = &unk_2881C6630;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(this + 1);
  *(this + 5) = &unk_2881C6630;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::IO_Property_Setter_Delegate_Factory::new_node_delegate(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t *), void (*a5)(void, uint64_t *))
{
  v21[0] = a4;
  v21[1] = a5;
  v7 = (*(*a2 + 24))(a2);
  if (v7)
  {
    (*(*v7 + 16))(&v19);
    v8 = v19;
    v9 = v20;
    if (v19 != v20)
    {
      do
      {
        v10 = *v8;
        v11 = *(a1 + 16);
        v12 = *(a1 + 24);
        v25 = v11;
        if (v11)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12 == 0;
        }

        if (!v13)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,boost::container::dtl::select1st<vp::vx::Graph_Property_ID>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>*,true>,vp::vx::Graph_Property_ID>(&v24, &v25, v11 + 48 * v12, v10);
        v15 = *(a1 + 16);
        v16 = *(a1 + 24);
        if (v15)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16 == 0;
        }

        if (!v17)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v18 = v15 + 48 * v16;
        if (v24 != v18)
        {
          if (!v24)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          if (v10 < *v24)
          {
            v24 = v18;
LABEL_20:
            boost::container::throw_length_error("flat_map::at key not found", v14);
          }
        }

        if (v24 == v18)
        {
          goto LABEL_20;
        }

        v23 = a3;
        (**(v24 + 8))(v22, v24 + 16, &v23);
        caulk::function_ref<void ()(std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>)>::operator()(v21, v22);
        std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>::reset[abi:ne200100](v22);
        ++v8;
      }

      while (v8 != v9);
      v8 = v19;
    }

    if (v8)
    {
      v20 = v8;
      operator delete(v8);
    }
  }
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,boost::container::dtl::select1st<vp::vx::Graph_Property_ID>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>*,true>,vp::vx::Graph_Property_ID>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v4) >> 4);
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v6 = v5 >> 1;
      v7 = &v4[12 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 12;
        *a2 = v7 + 12;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

void virtual thunk tovp::vx::IO_Smart_Cover_Detector_Delegate::~IO_Smart_Cover_Detector_Delegate(vp::vx::IO_Smart_Cover_Detector_Delegate *this)
{
  vp::vx::IO_Smart_Cover_Detector_Delegate::~IO_Smart_Cover_Detector_Delegate((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Smart_Cover_Detector_Delegate::~IO_Smart_Cover_Detector_Delegate((this + *(*this - 24)));
}

void vp::vx::IO_Smart_Cover_Detector_Delegate::~IO_Smart_Cover_Detector_Delegate(vp::vx::IO_Smart_Cover_Detector_Delegate *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 5) = &unk_2881C6630;
  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  vp::vx::IO_Smart_Cover_Detector_Delegate::~IO_Smart_Cover_Detector_Delegate(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::IO_Smart_Cover_Detector_Delegate::process(uint64_t a1, int a2, uint64_t (***a3)(void))
{
  result = (**a3)(a3);
  if (result)
  {
    if (!a2)
    {
      v6 = result;
      result = (*(**(a1 + 24) + 16))(*(a1 + 24));
      v7 = result;
      if ((*(a1 + 8) & 1) != 0 || !result)
      {
        if (*(a1 + 8) && (result & 1) == 0 && *(a1 + 16) == 1)
        {
          result = (*(*v6 + 32))(v11, v6, 1853058404, *(a1 + 12));
          if ((v16 & 1) == 0 && SHIBYTE(v14) < 0)
          {
            result = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v15, v12, v14 & 0x7FFFFFFFFFFFFFFFLL);
          }

          if (*(a1 + 16) == 1)
          {
            *(a1 + 16) = 0;
          }
        }
      }

      else
      {
        (*(*v6 + 24))(v11, v6, 1853058404);
        v8 = v16;
        if (v16 != 1 || (result = caulk::expected<float,vp::vx::io::Error>::value(v11), *(a1 + 12) = v11[0], *(a1 + 16) = 1, v8 = v16, (v16 & 1) == 0))
        {
          v9 = v12;
          v10 = v14;
          result = v15;
          v13 = 0;
          v14 = 0;
          v12 = 0;
          if (v10 < 0)
          {
            result = (*(*v15 + 24))(v15, v9, v10 & 0x7FFFFFFFFFFFFFFFLL, 1);
            v8 = v16;
          }

          if ((v8 & 1) == 0 && SHIBYTE(v14) < 0)
          {
            result = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v15, v12, v14 & 0x7FFFFFFFFFFFFFFFLL);
          }
        }

        if (*(a1 + 16) == 1)
        {
          result = (*(*v6 + 32))(v11, v6, 1853058404, 1.0);
          if ((v16 & 1) == 0 && SHIBYTE(v14) < 0)
          {
            result = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v15, v12, v14 & 0x7FFFFFFFFFFFFFFFLL);
          }
        }
      }

      *(a1 + 8) = v7;
    }
  }

  else
  {
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void vp::vx::IO_Smart_Cover_Detector_Delegate::get_property_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t vp::vx::IO_Smart_Cover_Detector_Delegate::get_parameter_ids@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if (a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v3 = 1853058404;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v3, &vars0, 1uLL);
  }

  return result;
}

void virtual thunk tovp::vx::IO_Smart_Cover_Detector_Delegate_Factory::~IO_Smart_Cover_Detector_Delegate_Factory(vp::vx::IO_Smart_Cover_Detector_Delegate_Factory *this)
{
  v1 = (this + *(*this - 24));
  v2 = v1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v1[3] = &unk_2881C6630;
  v3 = v1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  v2 = v1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v1[3] = &unk_2881C6630;
  v3 = v1[5];
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void vp::vx::IO_Smart_Cover_Detector_Delegate_Factory::~IO_Smart_Cover_Detector_Delegate_Factory(vp::vx::IO_Smart_Cover_Detector_Delegate_Factory *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 3) = &unk_2881C6630;
  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 3) = &unk_2881C6630;
  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t vp::vx::IO_Smart_Cover_Detector_Delegate_Factory::new_node_delegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a2 + 8))(a2);
  if (result)
  {
    result = (*(*result + 8))(result, 1853058404, 0);
    if (result)
    {
      v6 = (*(*a3 + 16))(a3, 64, 8);
      v7 = *(a1 + 8);
      if (*(&v7 + 1))
      {
        atomic_fetch_add_explicit((*(&v7 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      *(v6 + 40) = &unk_2881C6630;
      operator new();
    }
  }

  return result;
}

vp::vx::IO_Smart_Cover_Detector_Delegate **std::unique_ptr<vp::vx::IO_Smart_Cover_Detector_Delegate,vp::Allocator_Delete<vp::vx::IO_Smart_Cover_Detector_Delegate>>::reset[abi:ne200100](vp::vx::IO_Smart_Cover_Detector_Delegate **result, vp::vx::IO_Smart_Cover_Detector_Delegate *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::IO_Smart_Cover_Detector_Delegate::~IO_Smart_Cover_Detector_Delegate(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void virtual thunk tovp::vx::IO_Speech_Activity_Event_Listener::~IO_Speech_Activity_Event_Listener(vp::vx::IO_Speech_Activity_Event_Listener *this)
{
  vp::vx::IO_Speech_Activity_Event_Listener::~IO_Speech_Activity_Event_Listener((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Speech_Activity_Event_Listener::~IO_Speech_Activity_Event_Listener((this + *(*this - 24)));
}

void vp::vx::IO_Speech_Activity_Event_Listener::~IO_Speech_Activity_Event_Listener(vp::vx::IO_Speech_Activity_Event_Listener *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = caulk::concurrent::messenger::drain(*(this + 2));
  log = vp::get_log(v2);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    vp::vx::io::get_log_context_info(__p, this + 72, "vp::vx::IO_Speech_Activity_Event_Listener]", 41);
    v4 = v17;
    v5 = v17;
    v6 = __p[1];
    v8 = vp::get_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = v6;
      }

      v10 = __p[0];
      if (v5 >= 0)
      {
        v10 = __p;
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
      v19 = v10;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v17;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 10);
  v12 = *(this + 4);
  if (v12)
  {
    _Block_release(v12);
    *(this + 4) = 0;
  }

  v13 = *(this + 3);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  caulk::concurrent::shared_spin_lock::~shared_spin_lock((this + 8));
  *(this + 9) = &unk_2881C6630;
  v14 = *(this + 11);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::IO_Speech_Activity_Event_Listener::~IO_Speech_Activity_Event_Listener(this);

  JUMPOUT(0x2743CBFA0);
}

void sub_27266E4D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

unsigned int *vp::vx::IO_Speech_Activity_Event_Listener::process(unsigned int *result, int a2, uint64_t a3)
{
  v3 = (result + 2);
  v4 = atomic_load(result + 2);
  if (v4 <= 0x7FFFFFFE)
  {
    v7 = result;
    v8 = v4;
    while (1)
    {
      atomic_compare_exchange_strong(v3, &v8, v4 + 1);
      if (v8 == v4)
      {
        break;
      }

      v4 = v8;
      if (v8 >= 0x7FFFFFFF)
      {
        return result;
      }
    }

    v9 = (**a3)(a3);
    if (v9)
    {
      v10 = v9;
      v11 = (*(*a3 + 16))(a3);
      if (v11)
      {
        if (a2 != 1)
        {
          if (!a2 && *(v7 + 71) == 1)
          {
            v12 = v11;
            (*(*v10 + 24))(v27, v10, 1970042477);
            if (v31 == 1)
            {
              caulk::expected<float,vp::vx::io::Error>::value(v27);
              v13.n128_u32[0] = v27[0];
              v14 = *v27 == 1.0;
              if (v31)
              {
LABEL_31:
                v20 = *(v7 + 69);
                if (v20 == v14)
                {
                  v26 = 0;
                  v24 = &v26;
                  v25 = 4;
                  (*(*v12 + 40))(v27, v12, 1970499698, &v24, v13);
                  if ((v31 & 1) == 0 && SHIBYTE(v29) < 0)
                  {
                    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v30, v28, v29 & 0x7FFFFFFFFFFFFFFFLL);
                  }
                }

                else
                {
                  v26 = v20 ^ 1;
                  v24 = &v26;
                  v25 = 4;
                  (*(*v12 + 40))(v27, v12, 1970499698, &v24, v13);
                  if ((v31 & 1) == 0 && SHIBYTE(v29) < 0)
                  {
                    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v30, v28, v29 & 0x7FFFFFFFFFFFFFFFLL);
                  }

                  *(v7 + 69) = v14;
                }

                if (*(v7 + 4))
                {
                  v21 = *(v7 + 69) ^ 1;
                }

                else
                {
                  v21 = 1;
                }

                v22 = *(v7 + 68);
                v23 = v21 & 1;
                if (v22 != (v21 & 1))
                {
                  v26 = v22 ^ 1;
                  v24 = &v26;
                  v25 = 4;
                  (*(*v12 + 40))(v27, v12, 1970499684, &v24);
                  if ((v31 & 1) == 0 && SHIBYTE(v29) < 0)
                  {
                    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v30, v28, v29 & 0x7FFFFFFFFFFFFFFFLL);
                  }

                  *(v7 + 68) = v23;
                }

                return caulk::concurrent::shared_spin_lock::unlock_shared(v3);
              }
            }

            else
            {
              v14 = 0;
            }

            if (SHIBYTE(v29) < 0)
            {
              (*(*v30 + 24))(v30, v28, v29 & 0x7FFFFFFFFFFFFFFFLL, 1, v13);
            }

            goto LABEL_31;
          }

          return caulk::concurrent::shared_spin_lock::unlock_shared(v3);
        }

        (*(*v10 + 24))(v27, v10, 1970499682);
        if (v31 == 1)
        {
          caulk::expected<float,vp::vx::io::Error>::value(v27);
          v15.n128_u32[0] = v27[0];
          v16 = *v27 == 1.0;
          if (v31)
          {
LABEL_20:
            if (*(v7 + 70) == v16)
            {
              return caulk::concurrent::shared_spin_lock::unlock_shared(v3);
            }

            (*(*v10 + 24))(v27, v10, 1970042477, v15);
            if ((v31 & 1) == 0)
            {
              if (SHIBYTE(v29) < 0)
              {
                (*(*v30 + 24))(v30, v28, v29 & 0x7FFFFFFFFFFFFFFFLL, 1);
              }

              goto LABEL_43;
            }

            caulk::expected<float,vp::vx::io::Error>::value(v27);
            v17 = *v27;
            if ((v31 & 1) == 0 && SHIBYTE(v29) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v30, v28, v29 & 0x7FFFFFFFFFFFFFFFLL);
            }

            if (v17 != 1.0)
            {
LABEL_43:
              *(v7 + 70) = v16;
              return caulk::concurrent::shared_spin_lock::unlock_shared(v3);
            }

            result = *MEMORY[0x277D7F098];
            if (*MEMORY[0x277D7F098])
            {
              v18 = *(v7 + 2);
              v19 = caulk::rt_safe_memory_resource::rt_allocate(result);
              *(v19 + 16) = 0;
              *(v19 + 24) = v7;
              *(v19 + 32) = v16 ^ 1;
              *v19 = &unk_2881B92B0;
              *(v19 + 8) = 0;
              caulk::concurrent::messenger::enqueue(v18, v19);
              goto LABEL_43;
            }

LABEL_54:
            __break(1u);
            return result;
          }
        }

        else
        {
          v16 = 0;
        }

        if (SHIBYTE(v29) < 0)
        {
          (*(*v30 + 24))(v30, v28, v29 & 0x7FFFFFFFFFFFFFFFLL, 1, v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      _os_crash();
      __break(1u);
    }

    result = _os_crash();
    goto LABEL_54;
  }

  return result;
}

void sub_27266EB08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (SHIBYTE(a13) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a14, a11, a13 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<vp::vx::IO_Speech_Activity_Event_Listener::process(vp::vx::io::Moment,vp::vx::io::Node &)::$_0,AUVoiceIOSpeechActivityEvent>::perform(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v22 = a1;
  v1 = *(a1 + 24);
  if (*(v1 + 32))
  {
    v2 = *(a1 + 32);
    if (v2 == 1)
    {
      log = vp::get_log(a1);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        vp::vx::io::get_log_context_info(&__p, v1 + 72, "vp::vx::IO_Speech_Activity_Event_Listener]", 41);
        v14 = v25;
        v5 = v25;
        v15 = v24;
        v8 = vp::get_log(v16);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        if (v5 >= 0)
        {
          v17 = v14;
        }

        else
        {
          v17 = v15;
        }

        p_p = __p;
        if (v5 >= 0)
        {
          p_p = &__p;
        }

        if (v17)
        {
          v19 = " ";
        }

        else
        {
          v19 = "";
        }

        *buf = 136315394;
        v27 = p_p;
        v28 = 2080;
        v29 = v19;
        v12 = "%s%sspeech activity event ended";
LABEL_26:
        _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEFAULT, v12, buf, 0x16u);
        LOBYTE(v5) = v25;
LABEL_27:
        if ((v5 & 0x80) != 0)
        {
          operator delete(__p);
        }
      }
    }

    else if (!v2)
    {
      v3 = vp::get_log(a1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        vp::vx::io::get_log_context_info(&__p, v1 + 72, "vp::vx::IO_Speech_Activity_Event_Listener]", 41);
        v4 = v25;
        v5 = v25;
        v6 = v24;
        v8 = vp::get_log(v7);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        if (v5 >= 0)
        {
          v9 = v4;
        }

        else
        {
          v9 = v6;
        }

        v10 = __p;
        if (v5 >= 0)
        {
          v10 = &__p;
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
        v27 = v10;
        v28 = 2080;
        v29 = v11;
        v12 = "%s%sspeech activity event started";
        goto LABEL_26;
      }
    }

    (*(*(v1 + 32) + 16))(*(v1 + 32));
  }

  result = caulk::concurrent::details::rt_message_call<vp::vx::IO_Speech_Activity_Event_Listener::process(vp::vx::io::Moment,vp::vx::io::Node &)::$_0,AUVoiceIOSpeechActivityEvent>::rt_cleanup::~rt_cleanup(&v22);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<vp::vx::IO_Speech_Activity_Event_Listener::process(vp::vx::io::Moment,vp::vx::io::Node &)::$_0,AUVoiceIOSpeechActivityEvent>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
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

void caulk::concurrent::details::rt_message_call<vp::vx::IO_Speech_Activity_Event_Listener::process(vp::vx::io::Moment,vp::vx::io::Node &)::$_0,AUVoiceIOSpeechActivityEvent>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::IO_Speech_Activity_Event_Listener::notify(uint64_t a1, int a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      vp::vx::data_flow::State<void>::unregister_listener((a1 + 40), v3);
      v7[0] = 0;
      vp::vx::IO_Speech_Activity_Event_Listener::update_block(a1, v7);
      if (v7[0])
      {
        _Block_release(v7[0]);
      }

      *(a1 + 64) = 0;
    }
  }

  else if (!a2 && !*(a1 + 64))
  {
    v5[0] = &unk_2881B9320;
    v5[1] = a1;
    v5[3] = v5;
    std::__function::__value_func<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>::__value_func[abi:ne200100](v6, v5);
    v7[3] = 0;
    operator new();
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_27266EF9C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

atomic_uint *vp::vx::IO_Speech_Activity_Event_Listener::update_block(uint64_t a1, const void **a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 8);
  v23 = a1 + 8;
  v24 = 1;
  v5 = caulk::concurrent::shared_spin_lock::lock((a1 + 8));
  v6 = (a1 + 32);
  if (*(a1 + 32))
  {
    v5 = caulk::concurrent::messenger::drain(*(a1 + 16));
  }

  log = vp::get_log(v5);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    vp::vx::io::get_log_context_info(__p, a1 + 72, "vp::vx::IO_Speech_Activity_Event_Listener]", 41);
    v8 = v22;
    v9 = v22;
    v10 = __p[1];
    v12 = vp::get_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v9 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v10;
      }

      v14 = __p[0];
      if (v9 >= 0)
      {
        v14 = __p;
      }

      if (v13)
      {
        v15 = " ";
      }

      else
      {
        v15 = "";
      }

      v16 = *a2;
      *buf = 136315650;
      v26 = v14;
      v27 = 2080;
      v28 = v15;
      if (v16)
      {
        v17 = "added";
      }

      else
      {
        v17 = "removed";
      }

      v29 = 2080;
      v30 = v17;
      _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEFAULT, "%s%s%s speech activity event listener block", buf, 0x20u);
      LOBYTE(v9) = v22;
    }

    if ((v9 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  std::__destroy_at[abi:ne200100]<vp::Block<void ()(AUVoiceIOSpeechActivityEvent)>,0>(v6);
  v18 = *a2;
  *a2 = 0;
  *v6 = v18;
  result = caulk::concurrent::shared_spin_lock::unlock(v4);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27266F14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    std::unique_lock<caulk::concurrent::shared_spin_lock>::~unique_lock[abi:ne200100](&a13);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x27266F114);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_lock<caulk::concurrent::shared_spin_lock>::~unique_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    caulk::concurrent::shared_spin_lock::unlock(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::destroy_value(uint64_t a1, const void **a2)
{
  if (*a2)
  {
    _Block_release(*a2);
    *a2 = 0;
  }
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::move_value(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = 0;
  *a2 = v3;
}

void *vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::copy_value(uint64_t a1, void *a2, void **a3)
{
  result = *a3;
  if (*a3)
  {
    result = _Block_copy(result);
  }

  *a2 = result;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void std::__function::__func<vp::vx::data_flow::State<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B92D8;
  std::__function::__value_func<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B92D8;
  std::__function::__value_func<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<vp::vx::IO_Speech_Activity_Event_Listener::register_event_listener_block_listener(void)::$_0,std::allocator<vp::vx::IO_Speech_Activity_Event_Listener::register_event_listener_block_listener(void)::$_0>,void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  v4 = *(a1 + 8);
  aBlock = v3;
  vp::vx::IO_Speech_Activity_Event_Listener::update_block(v4, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

uint64_t std::__function::__func<vp::vx::IO_Speech_Activity_Event_Listener::register_event_listener_block_listener(void)::$_0,std::allocator<vp::vx::IO_Speech_Activity_Event_Listener::register_event_listener_block_listener(void)::$_0>,void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B9320;
  a2[1] = v2;
  return result;
}

uint64_t vp::vx::IO_Speech_Activity_Event_Listener::get_property_ids@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2 || *(result + 71) != 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v4 = 0x7573707275737064;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a3, &v4, &v5, 2uLL);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27266F7C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::vx::IO_Speech_Activity_Event_Listener::get_parameter_ids@<X0>(int a1@<W1>, void *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = 0x75737062756C766DLL;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v4, &v5, 2uLL);
    v3 = *MEMORY[0x277D85DE8];
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void sub_27266F85C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void virtual thunk tovp::vx::IO_Speech_Activity_Event_Listener_Factory::~IO_Speech_Activity_Event_Listener_Factory(vp::vx::IO_Speech_Activity_Event_Listener_Factory *this)
{
  v1 = this + *(*this - 24);
  vp::vx::data_flow::State<void>::~State(v1 + 16);
  vp::vx::data_flow::State<void>::~State(v1 + 10);
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(v1 + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *(v1 + 11) = &unk_2881C6630;
  v4 = *(v1 + 13);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  vp::vx::data_flow::State<void>::~State(v1 + 16);
  vp::vx::data_flow::State<void>::~State(v1 + 10);
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(v1 + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *(v1 + 11) = &unk_2881C6630;
  v4 = *(v1 + 13);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void vp::vx::IO_Speech_Activity_Event_Listener_Factory::~IO_Speech_Activity_Event_Listener_Factory(vp::vx::IO_Speech_Activity_Event_Listener_Factory *this)
{
  vp::vx::data_flow::State<void>::~State(this + 16);
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

  *(this + 11) = &unk_2881C6630;
  v4 = *(this + 13);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::data_flow::State<void>::~State(this + 16);
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

  *(this + 11) = &unk_2881C6630;
  v4 = *(this + 13);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

std::pmr *vp::vx::IO_Speech_Activity_Event_Listener_Factory::new_node_delegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  result = (*(*a2 + 8))(a2);
  if (result)
  {
    v7 = result;
    result = (**result)(result, 1970042477);
    if (result)
    {
      result = (*(*v7 + 8))(v7, 1970499682, 1);
      if (result)
      {
        if (*(a1 + 72))
        {
          *&v12 = 0;
          default_resource = std::pmr::get_default_resource(result);
          vp::vx::data_flow::State<void>::get_value((a1 + 64), &default_resource);
          v8 = *vp::vx::data_flow::Value::view_storage(&default_resource);
          vp::vx::data_flow::Value::~Value(&default_resource);
        }

        result = (*(*a2 + 24))(a2);
        if (result)
        {
          v9 = result;
          (*(*result + 8))(result, 1970499684, 0);
          (*(*v9 + 8))(v9, 1970499698, 0);
          *&default_resource = 0;
          *(&default_resource + 1) = a3;
          v12 = xmmword_2727565F0;
          *((*(*a3 + 16))(a3, 96, 8) + 72) = &unk_2881C6630;
          operator new();
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27266FF18(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_27266FF48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x27266FF50);
  }

  _Unwind_Resume(a1);
}

vp::vx::IO_Speech_Activity_Event_Listener **std::unique_ptr<vp::vx::IO_Speech_Activity_Event_Listener,vp::Allocator_Delete<vp::vx::IO_Speech_Activity_Event_Listener>>::reset[abi:ne200100](vp::vx::IO_Speech_Activity_Event_Listener **result, vp::vx::IO_Speech_Activity_Event_Listener *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::IO_Speech_Activity_Event_Listener::~IO_Speech_Activity_Event_Listener(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void std::__function::__func<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = "should not be";
        if (v6)
        {
          v10 = "should be";
        }

        caulk::make_string("speech activity detection %s disabled and reset on unmute", v11, v10);
        *__p = *v11;
        v14 = v12;
        v11[1] = 0;
        v12 = 0;
        v11[0] = 0;
        v15 = 1;
        (*(*v9 + 24))(v9, v5, __p);
        if (v15 == 1 && SHIBYTE(v14) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v12) < 0)
        {
          operator delete(v11[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B9368;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9368;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9368;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void virtual thunk tovp::vx::IO_Wire_Factory::~IO_Wire_Factory(vp::vx::IO_Wire_Factory *this)
{
  vp::vx::IO_Wire_Factory::~IO_Wire_Factory((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Wire_Factory::~IO_Wire_Factory((this + *(*this - 24)));
}

void vp::vx::IO_Wire_Factory::~IO_Wire_Factory(vp::vx::IO_Wire_Factory *this)
{
  v20 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B93B8;
  *(this + 13) = &unk_2881B93E8;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::vx::get_log_context_info(__p, this);
    v4 = v15;
    v5 = v15;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
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
      v17 = v9;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v15;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 20);
  vp::vx::data_flow::State<void>::~State(this + 14);
  vp::vx::data_flow::State<void>::~State(this + 8);
  v11 = *(this + 3);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  *(this + 13) = &unk_2881C6630;
  v12 = *(this + 15);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::IO_Wire_Factory::~IO_Wire_Factory(this);

  JUMPOUT(0x2743CBFA0);
}

void sub_2726707CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726707A4);
}

char *vp::detail::reflect_value_name<(vp::Domain)0,128ul>(int a1)
{
  result = "vp::Domain::Uplink]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::Domain::Downlink]";
      break;
    case 2:
      result = "(vp::Domain)2]";
      break;
    case 3:
      result = "(vp::Domain)3]";
      break;
    case 4:
      result = "(vp::Domain)4]";
      break;
    case 5:
      result = "(vp::Domain)5]";
      break;
    case 6:
      result = "(vp::Domain)6]";
      break;
    case 7:
      result = "(vp::Domain)7]";
      break;
    case 8:
      result = "(vp::Domain)8]";
      break;
    case 9:
      result = "(vp::Domain)9]";
      break;
    case 10:
      result = "(vp::Domain)10]";
      break;
    case 11:
      result = "(vp::Domain)11]";
      break;
    case 12:
      result = "(vp::Domain)12]";
      break;
    case 13:
      result = "(vp::Domain)13]";
      break;
    case 14:
      result = "(vp::Domain)14]";
      break;
    case 15:
      result = "(vp::Domain)15]";
      break;
    case 16:
      result = "(vp::Domain)16]";
      break;
    case 17:
      result = "(vp::Domain)17]";
      break;
    case 18:
      result = "(vp::Domain)18]";
      break;
    case 19:
      result = "(vp::Domain)19]";
      break;
    case 20:
      result = "(vp::Domain)20]";
      break;
    case 21:
      result = "(vp::Domain)21]";
      break;
    case 22:
      result = "(vp::Domain)22]";
      break;
    case 23:
      result = "(vp::Domain)23]";
      break;
    case 24:
      result = "(vp::Domain)24]";
      break;
    case 25:
      result = "(vp::Domain)25]";
      break;
    case 26:
      result = "(vp::Domain)26]";
      break;
    case 27:
      result = "(vp::Domain)27]";
      break;
    case 28:
      result = "(vp::Domain)28]";
      break;
    case 29:
      result = "(vp::Domain)29]";
      break;
    case 30:
      result = "(vp::Domain)30]";
      break;
    case 31:
      result = "(vp::Domain)31]";
      break;
    case 32:
      result = "(vp::Domain)32]";
      break;
    case 33:
      result = "(vp::Domain)33]";
      break;
    case 34:
      result = "(vp::Domain)34]";
      break;
    case 35:
      result = "(vp::Domain)35]";
      break;
    case 36:
      result = "(vp::Domain)36]";
      break;
    case 37:
      result = "(vp::Domain)37]";
      break;
    case 38:
      result = "(vp::Domain)38]";
      break;
    case 39:
      result = "(vp::Domain)39]";
      break;
    case 40:
      result = "(vp::Domain)40]";
      break;
    case 41:
      result = "(vp::Domain)41]";
      break;
    case 42:
      result = "(vp::Domain)42]";
      break;
    case 43:
      result = "(vp::Domain)43]";
      break;
    case 44:
      result = "(vp::Domain)44]";
      break;
    case 45:
      result = "(vp::Domain)45]";
      break;
    case 46:
      result = "(vp::Domain)46]";
      break;
    case 47:
      result = "(vp::Domain)47]";
      break;
    case 48:
      result = "(vp::Domain)48]";
      break;
    case 49:
      result = "(vp::Domain)49]";
      break;
    case 50:
      result = "(vp::Domain)50]";
      break;
    case 51:
      result = "(vp::Domain)51]";
      break;
    case 52:
      result = "(vp::Domain)52]";
      break;
    case 53:
      result = "(vp::Domain)53]";
      break;
    case 54:
      result = "(vp::Domain)54]";
      break;
    case 55:
      result = "(vp::Domain)55]";
      break;
    case 56:
      result = "(vp::Domain)56]";
      break;
    case 57:
      result = "(vp::Domain)57]";
      break;
    case 58:
      result = "(vp::Domain)58]";
      break;
    case 59:
      result = "(vp::Domain)59]";
      break;
    case 60:
      result = "(vp::Domain)60]";
      break;
    case 61:
      result = "(vp::Domain)61]";
      break;
    case 62:
      result = "(vp::Domain)62]";
      break;
    case 63:
      result = "(vp::Domain)63]";
      break;
    case 64:
      result = "(vp::Domain)64]";
      break;
    case 65:
      result = "(vp::Domain)65]";
      break;
    case 66:
      result = "(vp::Domain)66]";
      break;
    case 67:
      result = "(vp::Domain)67]";
      break;
    case 68:
      result = "(vp::Domain)68]";
      break;
    case 69:
      result = "(vp::Domain)69]";
      break;
    case 70:
      result = "(vp::Domain)70]";
      break;
    case 71:
      result = "(vp::Domain)71]";
      break;
    case 72:
      result = "(vp::Domain)72]";
      break;
    case 73:
      result = "(vp::Domain)73]";
      break;
    case 74:
      result = "(vp::Domain)74]";
      break;
    case 75:
      result = "(vp::Domain)75]";
      break;
    case 76:
      result = "(vp::Domain)76]";
      break;
    case 77:
      result = "(vp::Domain)77]";
      break;
    case 78:
      result = "(vp::Domain)78]";
      break;
    case 79:
      result = "(vp::Domain)79]";
      break;
    case 80:
      result = "(vp::Domain)80]";
      break;
    case 81:
      result = "(vp::Domain)81]";
      break;
    case 82:
      result = "(vp::Domain)82]";
      break;
    case 83:
      result = "(vp::Domain)83]";
      break;
    case 84:
      result = "(vp::Domain)84]";
      break;
    case 85:
      result = "(vp::Domain)85]";
      break;
    case 86:
      result = "(vp::Domain)86]";
      break;
    case 87:
      result = "(vp::Domain)87]";
      break;
    case 88:
      result = "(vp::Domain)88]";
      break;
    case 89:
      result = "(vp::Domain)89]";
      break;
    case 90:
      result = "(vp::Domain)90]";
      break;
    case 91:
      result = "(vp::Domain)91]";
      break;
    case 92:
      result = "(vp::Domain)92]";
      break;
    case 93:
      result = "(vp::Domain)93]";
      break;
    case 94:
      result = "(vp::Domain)94]";
      break;
    case 95:
      result = "(vp::Domain)95]";
      break;
    case 96:
      result = "(vp::Domain)96]";
      break;
    case 97:
      result = "(vp::Domain)97]";
      break;
    case 98:
      result = "(vp::Domain)98]";
      break;
    case 99:
      result = "(vp::Domain)99]";
      break;
    case 100:
      result = "(vp::Domain)100]";
      break;
    case 101:
      result = "(vp::Domain)101]";
      break;
    case 102:
      result = "(vp::Domain)102]";
      break;
    case 103:
      result = "(vp::Domain)103]";
      break;
    case 104:
      result = "(vp::Domain)104]";
      break;
    case 105:
      result = "(vp::Domain)105]";
      break;
    case 106:
      result = "(vp::Domain)106]";
      break;
    case 107:
      result = "(vp::Domain)107]";
      break;
    case 108:
      result = "(vp::Domain)108]";
      break;
    case 109:
      result = "(vp::Domain)109]";
      break;
    case 110:
      result = "(vp::Domain)110]";
      break;
    case 111:
      result = "(vp::Domain)111]";
      break;
    case 112:
      result = "(vp::Domain)112]";
      break;
    case 113:
      result = "(vp::Domain)113]";
      break;
    case 114:
      result = "(vp::Domain)114]";
      break;
    case 115:
      result = "(vp::Domain)115]";
      break;
    case 116:
      result = "(vp::Domain)116]";
      break;
    case 117:
      result = "(vp::Domain)117]";
      break;
    case 118:
      result = "(vp::Domain)118]";
      break;
    case 119:
      result = "(vp::Domain)119]";
      break;
    case 120:
      result = "(vp::Domain)120]";
      break;
    case 121:
      result = "(vp::Domain)121]";
      break;
    case 122:
      result = "(vp::Domain)122]";
      break;
    case 123:
      result = "(vp::Domain)123]";
      break;
    case 124:
      result = "(vp::Domain)124]";
      break;
    case 125:
      result = "(vp::Domain)125]";
      break;
    case 126:
      result = "(vp::Domain)126]";
      break;
    case 127:
      result = "(vp::Domain)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::Domain)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

void vp::vx::IO_Wire_Factory::new_wire(vp *a1@<X0>, uint64_t a2@<X2>, const AudioStreamBasicDescription *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8 = a1;
  v35 = *MEMORY[0x277D85DE8];
  log = vp::get_log(a1);
  v11 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  v23 = v8;
  if (v11)
  {
    log_context_info = vp::vx::get_log_context_info(__p, v8);
    v13 = v34;
    v14 = v34;
    v15 = __p[1];
    v16 = vp::get_log(log_context_info);
    v11 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v14 >= 0)
      {
        v17 = v13;
      }

      else
      {
        v17 = v15;
      }

      v18 = __p[0];
      if (v14 >= 0)
      {
        v18 = __p;
      }

      if (v17)
      {
        v19 = " ";
      }

      else
      {
        v19 = "";
      }

      *buf = 136315394;
      *&buf[4] = v18;
      v31 = 2080;
      v32 = v19;
      _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_DEBUG, "%s%swill create wire", buf, 0x16u);
      LOBYTE(v14) = v34;
    }

    if ((v14 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }

    v8 = v23;
  }

  *a5 = 0;
  default_resource = std::pmr::get_default_resource(v11);
  a5[2] = 0;
  a5[3] = 0;
  a5[1] = default_resource;
  if (*a2 == a3->mSampleRate && *(a2 + 8) == a3->mFormatID && *(a2 + 16) == a3->mBytesPerPacket && *(a2 + 20) == a3->mFramesPerPacket && *(a2 + 28) == a3->mChannelsPerFrame && *(a2 + 32) == a3->mBitsPerChannel && CA::Implementation::EquivalentFormatFlags(a2, a3, v21))
  {
    *buf = vp::vx::IO_Wire_Factory::get_storage_capacity(v8);
    vp::allocate_unique<vp::vx::io::wires::Audio_Pass_Through_Wire,CA::StreamDescription const&,std::chrono::duration<long long,std::ratio<1l,1000l>>>(__p, a4, a2, buf);
  }

  vp::vx::IO_Wire_Factory::get_storage_capacity(v8);
  v27 = a4;
  v24 = 0;
  v25 = a4;
  v26 = xmmword_272756750;
  v28[0] = (*(*a4 + 16))(a4, 464, 8);
  v28[8] = v28;
  v28[9] = &v27;
  v29 = 0;
  mSampleRate = a3->mSampleRate;
  *(v28[0] + 440) = &unk_2881C6630;
  operator new();
}

void sub_272671D88(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::vx::IO_Wire_Factory::get_storage_capacity(vp::vx::IO_Wire_Factory *this)
{
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = std::pmr::get_default_resource(this);
  vp::vx::data_flow::State<void>::get_value(this + 20, v4);
  v2 = *vp::vx::data_flow::Value::view_storage(v4);
  vp::vx::data_flow::Value::~Value(v4);
  return v2;
}

void sub_272671F44(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::data_flow::Value::~Value(va);
  __clang_call_terminate(a1);
}

void vp::allocate_unique<vp::vx::io::wires::Audio_Pass_Through_Wire,CA::StreamDescription const&,std::chrono::duration<long long,std::ratio<1l,1000l>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8[0] = a2;
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = xmmword_272756760;
  v10 = (*(*a2 + 16))(a2, 344, 8);
  v8[1] = &v10;
  v8[2] = v8;
  v9 = 0;
  v6 = *a4;
  v7 = *a3;
  *(v10 + 320) = &unk_2881C6630;
  operator new();
}

void sub_2726723C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__exception_guard_exceptions<vp::vx::io::wires::Audio_Pass_Through_Wire * std::pmr::polymorphic_allocator<vp::vx::io::wires::Audio_Pass_Through_Wire>::new_object[abi:ne200100]<vp::vx::io::wires::Audio_Pass_Through_Wire,CA::StreamDescription const&,std::chrono::duration<long long,std::ratio<1l,1000l>>>(CA::StreamDescription const&,std::chrono::duration<long long,std::ratio<1l,1000l>> &&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](va);
  std::unique_ptr<vp::vx::io::wires::Audio_Pass_Through_Wire,vp::Allocator_Delete<vp::vx::io::wires::Audio_Pass_Through_Wire>>::reset[abi:ne200100](v2, 0);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<vp::vx::io::wires::Audio_Pass_Through_Wire,vp::Allocator_Delete<vp::vx::io::wires::Audio_Pass_Through_Wire>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 48))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void vp::Expected<void,vp::vx::io::Error>::on_error<vp::vx::IO_Wire_Factory::new_wire(vp::vx::io::Model,CA::StreamDescription const&,CA::StreamDescription const&,vp::Allocator<std::byte>)::$_0 &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 48) & 1) == 0)
  {
    log = vp::get_log(a1);
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      v7 = __p;
      log_context_info = vp::vx::get_log_context_info(__p, a3);
      v9 = v24;
      LODWORD(v10) = v24;
      v11 = __p[1];
      v12 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        if (v10 >= 0)
        {
          v14 = v9;
        }

        else
        {
          v14 = v11;
        }

        if (v10 < 0)
        {
          v7 = __p[0];
        }

        if (v14)
        {
          v10 = " ";
        }

        else
        {
          v10 = "";
        }

        v15 = *(a2 + 4);
        v16 = *(a2 + 6);
        log_source_file_path = vp::get_log_source_file_path(*(a2 + 8), v13);
        v18 = a2 + 16;
        if (*(a2 + 39) < 0)
        {
          v18 = *(a2 + 16);
        }

        *buf = 136316418;
        v26 = v7;
        v27 = 2080;
        v28 = v10;
        v29 = 1024;
        v30 = v15;
        v31 = 1024;
        v32 = v16;
        v33 = 2080;
        v34 = log_source_file_path;
        v35 = 2080;
        v36 = v18;
        _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_FAULT, "%s%sunexpected error at line %u column %u in %s - %s", buf, 0x36u);
        LOBYTE(v10) = v24;
      }

      if ((v10 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  *a1 = 0;
  v19 = *(a2 + 48);
  *(a1 + 48) = v19;
  if ((v19 & 1) == 0)
  {
    v20 = *(a2 + 4);
    *a1 = *a2;
    *(a1 + 4) = v20;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    v21 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v21;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void *std::unique_ptr<vp::vx::io::wires::Audio_Converter_Wire,vp::Allocator_Delete<vp::vx::io::wires::Audio_Converter_Wire>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 48))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<vp::vx::io::wires::Audio_Converter_Wire * std::pmr::polymorphic_allocator<vp::vx::io::wires::Audio_Converter_Wire>::new_object[abi:ne200100]<vp::vx::io::wires::Audio_Converter_Wire,CA::StreamDescription const&,CA::StreamDescription const&,std::chrono::duration<long long,std::ratio<1l,1000l>>>(CA::StreamDescription const&,CA::StreamDescription const&,std::chrono::duration<long long,std::ratio<1l,1000l>> &&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 464, 8);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<vp::vx::io::wires::Audio_Pass_Through_Wire * std::pmr::polymorphic_allocator<vp::vx::io::wires::Audio_Pass_Through_Wire>::new_object[abi:ne200100]<vp::vx::io::wires::Audio_Pass_Through_Wire,CA::StreamDescription const&,std::chrono::duration<long long,std::ratio<1l,1000l>>>(CA::StreamDescription const&,std::chrono::duration<long long,std::ratio<1l,1000l>> &&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 344, 8);
  }

  return a1;
}

void sub_2726729F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        caulk::make_string("I/O wire sample rate conversion algorithm is %u", &v14, *a3);
        __p = v14;
        *v11 = *v15;
        *&v11[7] = *&v15[7];
        v12 = v16;
        v13 = 1;
        (*(*v9 + 32))(v9, v6, &__p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B9498;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9498;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9498;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        caulk::make_string("I/O wire sample rate conversion algorithm is %u", &v14, *a3);
        __p = v14;
        *v11 = *v15;
        *&v11[7] = *&v15[7];
        v12 = v16;
        v13 = 1;
        (*(*v9 + 24))(v9, v6, &__p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B9450;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9450;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9450;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        caulk::make_string("I/O wire sample rate conversion quality is %u", &v14, *a3);
        __p = v14;
        *v11 = *v15;
        *&v11[7] = *&v15[7];
        v12 = v16;
        v13 = 1;
        (*(*v9 + 32))(v9, v6, &__p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B9528;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9528;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9528;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        caulk::make_string("I/O wire sample rate conversion quality is %u", &v14, *a3);
        __p = v14;
        *v11 = *v15;
        *&v11[7] = *&v15[7];
        v12 = v16;
        v13 = 1;
        (*(*v9 + 24))(v9, v6, &__p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B94E0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B94E0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B94E0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::operator()(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        caulk::make_string("I/O wire storage capacity is %lld milliseconds", &v14, *a3);
        __p = v14;
        *v11 = *v15;
        *&v11[7] = *&v15[7];
        v12 = v16;
        v13 = 1;
        (*(*v9 + 32))(v9, v6, &__p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B9600;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9600;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9600;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::operator()(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        caulk::make_string("I/O wire storage capacity is %lld milliseconds", &v14, *a3);
        __p = v14;
        *v11 = *v15;
        *&v11[7] = *&v15[7];
        v12 = v16;
        v13 = 1;
        (*(*v9 + 24))(v9, v6, &__p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B95B8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B95B8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B95B8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void virtual thunk tovp::vx::IO_Wireless_Charging_Detector_Delegate::~IO_Wireless_Charging_Detector_Delegate(vp::vx::IO_Wireless_Charging_Detector_Delegate *this)
{
  vp::vx::IO_Wireless_Charging_Detector_Delegate::~IO_Wireless_Charging_Detector_Delegate((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Wireless_Charging_Detector_Delegate::~IO_Wireless_Charging_Detector_Delegate((this + *(*this - 24)));
}

void vp::vx::IO_Wireless_Charging_Detector_Delegate::~IO_Wireless_Charging_Detector_Delegate(vp::vx::IO_Wireless_Charging_Detector_Delegate *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 4) = &unk_2881C6630;
  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  vp::vx::IO_Wireless_Charging_Detector_Delegate::~IO_Wireless_Charging_Detector_Delegate(this);

  JUMPOUT(0x2743CBFA0);
}

void *vp::vx::IO_Wireless_Charging_Detector_Delegate::process(uint64_t a1, int a2, uint64_t (***a3)(void))
{
  result = (**a3)(a3);
  if (result)
  {
    if (!a2)
    {
      v6 = result;
      result = (*(**(a1 + 16) + 16))(*(a1 + 16));
      if (*(a1 + 8) != result)
      {
        v7 = result;
        result = (*(*v6 + 32))(v8, v6, 2003004769, result);
        if ((v11 & 1) == 0 && SHIBYTE(v9) < 0)
        {
          result = (*(*v10 + 24))(v10, v8[2], v9 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        *(a1 + 8) = v7;
      }
    }
  }

  else
  {
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *vp::vx::IO_Wireless_Charging_Detector_Delegate::notify(uint64_t a1, int a2, uint64_t (***a3)(void))
{
  result = (**a3)(a3);
  if (!result)
  {
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (!a2)
  {
    result = (*(*result + 24))(v8);
    if (v11 == 1)
    {
      result = caulk::expected<float,vp::vx::io::Error>::value(v8);
      v6.n128_u32[0] = v8[0];
      v7 = v11;
      *(a1 + 8) = *v8 == 1.0;
      if (v7)
      {
        return result;
      }
    }

    else
    {
      *(a1 + 8) = 0;
    }

    if (SHIBYTE(v9) < 0)
    {
      return (*(*v10 + 24))(v10, v8[2], v9 & 0x7FFFFFFFFFFFFFFFLL, 1, v6);
    }
  }

  return result;
}

void vp::vx::IO_Wireless_Charging_Detector_Delegate::get_property_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t vp::vx::IO_Wireless_Charging_Detector_Delegate::get_parameter_ids@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if (a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v3 = 2003004769;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v3, &vars0, 1uLL);
  }

  return result;
}

void virtual thunk tovp::vx::IO_Wireless_Charging_Detector_Delegate_Factory::~IO_Wireless_Charging_Detector_Delegate_Factory(vp::vx::IO_Wireless_Charging_Detector_Delegate_Factory *this)
{
  v1 = (this + *(*this - 24));
  v2 = v1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v1[3] = &unk_2881C6630;
  v3 = v1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  v2 = v1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v1[3] = &unk_2881C6630;
  v3 = v1[5];
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void vp::vx::IO_Wireless_Charging_Detector_Delegate_Factory::~IO_Wireless_Charging_Detector_Delegate_Factory(vp::vx::IO_Wireless_Charging_Detector_Delegate_Factory *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 3) = &unk_2881C6630;
  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 3) = &unk_2881C6630;
  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t vp::vx::IO_Wireless_Charging_Detector_Delegate_Factory::new_node_delegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a2 + 8))(a2);
  if (result)
  {
    result = (*(*result + 8))(result, 2003004769, 0);
    if (result)
    {
      v6 = (*(*a3 + 16))(a3, 56, 8);
      v7 = *(a1 + 8);
      if (*(&v7 + 1))
      {
        atomic_fetch_add_explicit((*(&v7 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      *(v6 + 32) = &unk_2881C6630;
      operator new();
    }
  }

  return result;
}

vp::vx::IO_Wireless_Charging_Detector_Delegate **std::unique_ptr<vp::vx::IO_Wireless_Charging_Detector_Delegate,vp::Allocator_Delete<vp::vx::IO_Wireless_Charging_Detector_Delegate>>::reset[abi:ne200100](vp::vx::IO_Wireless_Charging_Detector_Delegate **result, vp::vx::IO_Wireless_Charging_Detector_Delegate *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::IO_Wireless_Charging_Detector_Delegate::~IO_Wireless_Charging_Detector_Delegate(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void *vp::utility::operator<<(void *a1, std::chrono::duration<long long, std::ratio<1, 1000000>>::rep a2)
{
  v19 = *MEMORY[0x277D85DE8];
  __t.__d_.__rep_ = a2;
  v9 = std::chrono::system_clock::to_time_t(&__t);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = __t.__d_.__rep_ / 1000 % 1000;
  v13 = 0u;
  v14 = 0u;
  *__s = 0u;
  v12 = 0u;
  v4 = localtime(&v9);
  v5 = strftime(__s, 0x80uLL, "%Y-%m-%dT%H:%M:%S.", v4);
  snprintf(&__s[v5], 128 - v5, "%03llu", v3);
  v6 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v6);
  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2726744C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, const void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  applesauce::CF::TypeRef::~TypeRef(va);
  applesauce::CF::TypeRef::~TypeRef(va1);

  _Unwind_Resume(a1);
}

void sub_2726746BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error>::~Expected(&a9);

  _Unwind_Resume(a1);
}

void sub_2726748A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::__expected_detail::base<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::~base(va);

  _Unwind_Resume(a1);
}

void sub_272674B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if ((a10 & 1) == 0)
  {
    vp::objc::ID::~ID(&a9);
  }

  _Unwind_Resume(a1);
}

void sub_272674D8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::~base(va);

  _Unwind_Resume(a1);
}

void *vp::rpb::Item::Item(void *a1, id *a2, id *a3, uint64_t a4, id *a5, uint64_t a6)
{
  v12 = objc_alloc(MEMORY[0x277D46118]);
  v13 = *a2;
  vp::rpb::Array<vp::rpb::Terminal>::Array(&v19, a3, a4);
  v14 = v19;
  vp::rpb::Array<vp::rpb::Terminal>::Array(&v18, a5, a6);
  v15 = v18;
  v16 = [v12 initWithName:v13 inputs:v14 outputs:v15];
  *a1 = v16;

  vp::objc::ID::~ID(&v18);
  vp::objc::ID::~ID(&v19);

  return a1;
}

void sub_272674F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, id a10)
{
  vp::objc::ID::~ID(&a9);

  vp::objc::ID::~ID(&a10);
  _Unwind_Resume(a1);
}

void vp::rpb::Item::get_parameter_info(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [v5 delegate];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = v7[4];
  if (!v8)
  {

LABEL_7:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 24) = std::pmr::get_default_resource(v9);
    *(a1 + 32) = 1;
    return;
  }

  v10 = v7;
  std::function<vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator()(a1, v8, a3);
}

void vp::rpb::Item::get_property_info(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [v5 delegate];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = v7[16];
  if (!v8)
  {

LABEL_7:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 24) = std::pmr::get_default_resource(v9);
    *(a1 + 32) = 1;
    return;
  }

  v10 = v7;
  std::function<vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator()(a1, v8, a3);
}

void vp::rpb::Item::get_inputs(vp::rpb::Item *this, void *a2)
{
  v4 = a2;
  v3 = [v4 inputs];
  *this = v3;
}

void vp::rpb::Item::get_sub_host(vp::rpb::Item *this, void *a2)
{
  v4 = a2;
  v3 = [v4 subHost];
  *this = v3;
}

void **vp::vx::database::v1::syntax::decisions::Load_Configuration::Parser::parse_decision@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v11 = 0;
  vp::xml::Node::children(v15, a2);
  v17[0] = v15;
  v17[1] = 0;
  v18 = 0;
  v19 = 0;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v13, v17, v5);
  if (v13)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    v8 = vp::xml::Node::content(v13, v14);
    vp::vx::database::v1::runtime::String_Pool::intern(&cf, v6, v8, v9);
    operator new();
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v19 == 1 && v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v11 = 0;
  *a3 = 0;
  return std::unique_ptr<vp::vx::database::v1::syntax::decisions::Load_Configuration>::reset[abi:ne200100](&v11, 0);
}

void sub_272675490(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  applesauce::CF::StringRef::~StringRef(&a10);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a20 == 1 && a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272675444);
}

void **std::unique_ptr<vp::vx::database::v1::syntax::decisions::Load_Configuration>::reset[abi:ne200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    *v2 = &unk_2881B97A8;
    v3 = v2[5];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = v2[4];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = v2[3];
    if (v5)
    {
      CFRelease(v5);
    }

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void vp::vx::database::v1::syntax::decisions::Load_Configuration::~Load_Configuration(vp::vx::database::v1::syntax::decisions::Load_Configuration *this)
{
  *this = &unk_2881B97A8;
  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B97A8;
  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
  }
}

void vp::vx::database::v1::syntax::decisions::Load_Configuration::Parser::~Parser(vp::vx::database::v1::syntax::decisions::Load_Configuration::Parser *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = *(this + 3);
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL vp::vx::database::v1::syntax::decisions::Load_Property_List::evaluate(vp::vx::database::v1::syntax::decisions::Load_Property_List *this, const vp::vx::database::v1::Request *a2, void **a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = *(this + 4);
  if (v5)
  {
    Length = CFStringGetLength(v5);
    v7 = Length;
    if (Length)
    {
      MEMORY[0x28223BE20](Length);
      bzero(&v17 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0), (v7 + 1));
      if (CFStringGetCString(*(this + 4), &v17 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0), (v7 + 1), 0x8000100u))
      {
        v7 = &v17 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0);
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 3);
  if (v8)
  {
    v9 = CFStringGetLength(v8);
    v10 = v9;
    if (v9)
    {
      MEMORY[0x28223BE20](v9);
      bzero(&v17 - ((v10 + 16) & 0xFFFFFFFFFFFFFFF0), (v10 + 1));
      if (CFStringGetCString(*(this + 3), &v17 - ((v10 + 16) & 0xFFFFFFFFFFFFFFF0), (v10 + 1), 0x8000100u))
      {
        v10 = &v17 - ((v10 + 16) & 0xFFFFFFFFFFFFFFF0);
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 5);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v12 = *(this + 2);
  applesauce::CF::convert_to<std::string,0>(&v18, v11);
  v20 = v18;
  v21 = v19;
  v19 = 0;
  v18 = 0uLL;
  (*(*v12 + 16))(v22, v12, &v20);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }

  v13 = v22[0];
  if (v22[0])
  {
    CFRetain(v22[0]);
    vp::vx::database::v1::Response::set(a3, v7, v13, v10);
    CFRelease(v13);
    result = v22[0] != 0;
    if (v22[0])
    {
      CFRelease(v22[0]);
      result = 1;
    }
  }

  else
  {
    result = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272675954(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t vp::vx::database::v1::syntax::decisions::Load_Property_List::build(CFStringRef *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2, const applesauce::CF::StringRef *a3)
{
  v4 = this;
  v5 = vp::vx::database::v1::fbs::BuildString(a2, this + 3, a3);
  v7 = vp::vx::database::v1::fbs::BuildString(a2, v4 + 4, v6);
  v9 = vp::vx::database::v1::fbs::BuildString(a2, v4 + 5, v8);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v10 = v9;
  *(a2 + 70) = 1;
  v11 = *(a2 + 8);
  v12 = *(a2 + 12);
  v13 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 6, v7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 4, v5);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v11 - v12 + v13);
  LODWORD(v4) = *(v4 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v15 = v14;
  *(a2 + 70) = 1;
  v16 = *(a2 + 8);
  v17 = *(a2 + 12);
  v18 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v15);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 2);
  v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v16 - v17 + v18);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v19);
  return v19;
}

void vp::vx::database::v1::syntax::decisions::Load_Property_List::~Load_Property_List(vp::vx::database::v1::syntax::decisions::Load_Property_List *this)
{
  *this = &unk_2881B97A8;
  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B97A8;
  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
  }
}

void vp::vx::database::v1::syntax::decisions::Load_Property_List::Parser::parse_decision(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  vp::xml::Node::children(v43, a2);
  v45[0] = v43;
  v45[1] = 0;
  v46 = 0;
  v47 = 0;
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v41, v45, v4);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  while (v41)
  {
    v8 = vp::xml::Node::name(v41, v42);
    v11 = vp::vx::database::v1::syntax::constexpr_hash(v8, v9, v10);
    if (v11 == 0x539572566EA6738FLL)
    {
      if (v6)
      {
        goto LABEL_40;
      }

      vp::xml::Node::children(v30, &v41);
      v37 = v30;
      v39 = 0;
      v40 = 0;
      v38 = 0;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v33, &v37, v22);
      while (v33)
      {
        v23 = *(a1 + 8);
        v24 = vp::xml::Node::content(v33, v34);
        vp::vx::database::v1::runtime::String_Pool::intern(&v32, v23, v24, v25);
        v6 = v32;
        if (v32)
        {
          goto LABEL_35;
        }

        std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v33, v12);
      }

      v6 = 0;
    }

    else if (v11 == 0x56F98C19446556ACLL)
    {
      if (v5)
      {
        goto LABEL_40;
      }

      vp::xml::Node::children(v28, &v41);
      v37 = v28;
      v39 = 0;
      v40 = 0;
      v38 = 0;
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v33, &v37, v18);
      while (v33)
      {
        v19 = *(a1 + 8);
        v20 = vp::xml::Node::content(v33, v34);
        vp::vx::database::v1::runtime::String_Pool::intern(&v32, v19, v20, v21);
        v5 = v32;
        if (v32)
        {
          goto LABEL_35;
        }

        std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v33, v12);
      }

      v5 = 0;
    }

    else
    {
      if (v11 != 0x69F7D38018125979 || v7 != 0)
      {
        goto LABEL_40;
      }

      vp::xml::Node::children(v35, &v41);
      v37 = v35;
      v39 = 0;
      v40 = 0;
      v38 = 0;
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v33, &v37, v14);
      while (v33)
      {
        v15 = *(a1 + 8);
        v16 = vp::xml::Node::content(v33, v34);
        vp::vx::database::v1::runtime::String_Pool::intern(&v32, v15, v16, v17);
        v7 = v32;
        if (v32)
        {
          goto LABEL_35;
        }

        std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v33, v12);
      }

      v7 = 0;
    }

LABEL_35:
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    if (v40 == 1)
    {
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }
    }

LABEL_40:
    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v41, v12);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v47 == 1 && v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (v7)
  {
    v26 = *(a1 + 16);
    operator new();
  }

  *a3 = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](uint64_t **a1, uint64_t **a2, __n128 a3)
{
  if (*(a2 + 24) == 1)
  {
    v5 = a2[1];
    v6 = a2[2];
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v7 = (*a2)[1];
  v11 = **a2;
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10[0] = 0;
  v10[1] = 0;
  std::ranges::__find_if_impl[abi:ne200100]<vp::xml::Node_Iterator,vp::xml::Node_Iterator,std::reference_wrapper<vp::xml::element_filter[abi:llvm18_nua](vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>,std::identity>(v9, &v11, v10, a3);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*(a2 + 24) == 1)
  {
    v8 = a2[2];
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v5 = v9[0];
  v6 = v9[1];
  a2[1] = v9[0];
  a2[2] = v6;
  *(a2 + 24) = 1;
  if (v6)
  {
LABEL_12:
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

LABEL_13:
  *a1 = v5;
  a1[1] = v6;
  a1[2] = a2;
}

vp::xml::Node_Iterator *std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](vp::xml::Node_Iterator *a1, __n128 a2)
{
  vp::xml::Node_Iterator::increment(a1, a2);
  v3 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v8 = v3;
  v7[0] = 0;
  v7[1] = 0;
  std::ranges::__find_if_impl[abi:ne200100]<vp::xml::Node_Iterator,vp::xml::Node_Iterator,std::reference_wrapper<vp::xml::element_filter[abi:llvm18_nua](vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>,std::identity>(&v6, &v8, v7, v3);
  if (v8.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8.n128_u64[1]);
  }

  v4 = *(a1 + 1);
  *a1 = v6;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void std::ranges::__find_if_impl[abi:ne200100]<vp::xml::Node_Iterator,vp::xml::Node_Iterator,std::reference_wrapper<vp::xml::element_filter[abi:llvm18_nua](vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>,std::identity>(void *a1, vp::xml::Node_Iterator *a2, void *a3, __n128 a4)
{
  v6 = *a2;
  if (*a2 != *a3)
  {
    while (1)
    {
      v8 = *(a2 + 1);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(v6 + 8);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      else
      {
        v9 = *(v6 + 8);
      }

      if (v9 == 1)
      {
        break;
      }

      a4.n128_f64[0] = vp::xml::Node_Iterator::increment(a2, a4);
      v6 = *a2;
      if (*a2 == *a3)
      {
        goto LABEL_9;
      }
    }

    v6 = *a2;
  }

LABEL_9:
  v10 = *(a2 + 1);
  *a1 = v6;
  a1[1] = v10;
  *a2 = 0;
  *(a2 + 1) = 0;
}

uint64_t vp::get_log(vp *this)
{
  v1 = &unk_28133C000;
  {
    v1 = &unk_28133C000;
    if (v3)
    {
      vp::get_log(void)::g_os_log = os_log_create("com.apple.coreaudio", "VoiceProcessor");
      v1 = &unk_28133C000;
    }
  }

  return v1[22];
}

uint64_t vp::get_log_context_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "[", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, a3, a4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ":", 1);
  v8 = MEMORY[0x2743CBAF0](&v17, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "]", 1);
  if ((v24 & 0x10) != 0)
  {
    v10 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v10 = v20;
    }

    locale = v19[4].__locale_;
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v9 = 0;
      HIBYTE(v15) = 0;
      goto LABEL_14;
    }

    locale = v19[1].__locale_;
    v10 = v19[3].__locale_;
  }

  v9 = v10 - locale;
  if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v10 - locale;
  if (v9)
  {
    memmove(&v14, locale, v9);
  }

LABEL_14:
  *(&v14 + v9) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v14;
  *(a1 + 16) = v15;
  v16[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v17 = v12;
  v18 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743CBE30](&v25);
}

void sub_27267644C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272676428);
}

void vp::get_log_exception_info(vp *this)
{
  *this = 0;
  *(this + 1) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(this);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(this);
  std::current_exception();
  v2.__ptr_ = &v3;
  std::rethrow_exception(v2);
  __break(1u);
}

void sub_2726764D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, std::exception_ptr a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::exception_ptr::~exception_ptr(&v40);
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    operator new();
  }

  v38 = 0;
  v39 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v38);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v38);
  v31 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v28, "type");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v38);
  v32 = *v31;
  *v31 = 0;
  v38 = v32;
  v33 = *(v31 + 1);
  *(v31 + 1) = 0;
  v39 = v33;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v38);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v39, v32);
  v36 = 0;
  v37 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v36);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v36);
  v34 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v28, "message");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v36);
  LODWORD(v31) = *v34;
  *v34 = 0;
  v36 = v31;
  v35 = *(v34 + 1);
  *(v34 + 1) = 0;
  v37 = v35;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v34);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v36);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v37, v31);
  __cxa_end_catch();
}

uint64_t vp::get_log_source_file_path(vp *this, const char *a2)
{
  v3 = strlen(this);
  if (v3 >= 3)
  {
    v4 = this + v3;
    v5 = this;
    do
    {
      v6 = memchr(v5, 118, v3 - 2);
      if (!v6)
      {
        break;
      }

      if (*v6 == 28790 && v6[2] == 47)
      {
        if (v6 != v4)
        {
          v8 = v6 - this;
          if (v6 - this != -1)
          {
            return this + v8;
          }
        }

        break;
      }

      v5 = (v6 + 1);
      v3 = v4 - (v6 + 1);
    }

    while (v3 >= 3);
  }

  v8 = 0;
  return this + v8;
}

uint64_t vp::vx::database::v1::syntax::conditions::Match::build(CFStringRef *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2, const applesauce::CF::StringRef *a3)
{
  v5 = vp::vx::database::v1::syntax::Constraint::build(this + 2, a2, a3);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  *(a2 + 70) = 1;
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  v8 = *(a2 + 4);
  if (v5)
  {
    v9 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a2, v5);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a2, 4, v9);
  }

  v10 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v8 - v7 + v6);
  v11 = *(this + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v12 = v10;
  *(a2 + 70) = 1;
  v13 = *(a2 + 8);
  v14 = *(a2 + 12);
  v15 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v11);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 6);
  v16 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v13 - v14 + v15);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v16);
  return v16;
}

void vp::vx::database::v1::syntax::conditions::Match::~Match(vp::vx::database::v1::syntax::conditions::Match *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t vp::vx::database::v1::syntax::Constraint::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 8) = *(a2 + 8);
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  *(a1 + 16) = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return a1;
}

uint64_t vp::vx::database::v1::syntax::conditions::Match_All::visit(uint64_t result, uint64_t a2)
{
  v3 = *(result + 24);
  v2 = *(result + 32);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v2)
  {
    v6 = v3 + 32 * v2;
    do
    {
      if (!v3)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      result = (*(*a2 + 16))(a2, v3 + 8);
      v3 += 32;
    }

    while (v3 != v6);
  }

  return result;
}

uint64_t vp::vx::database::v1::syntax::conditions::Match_All::evaluate(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (!v2)
  {
    return 1;
  }

  v6 = v3 + 32 * v2;
  do
  {
    if (!v3)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    result = (*(**a2 + 24))(*a2, v3 + 8);
    v3 += 32;
    if (result)
    {
      v8 = v3 == v6;
    }

    else
    {
      v8 = 1;
    }
  }

  while (!v8);
  return result;
}

uint64_t vp::vx::database::v1::syntax::conditions::Match_All::build(vp::vx::database::v1::syntax::conditions::Match_All *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2)
{
  v4 = v27;
  default_resource = std::pmr::get_default_resource(this);
  v25 = v27;
  v26 = xmmword_2727566A0;
  v6 = *(this + 3);
  v7 = *(this + 4);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v7)
  {
    v9 = v6 + 32 * v7;
    do
    {
      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v10 = v6 + 8;
      v11 = vp::vx::database::v1::syntax::Constraint::build((v6 + 8), a2, v5);
      v23 = v11;
      v12 = v26;
      v5 = (v25 + 4 * v26);
      if (v26 == *(&v26 + 1))
      {
        boost::container::vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>*,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>>>(&v28, &default_resource, v5, &v23);
        boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint> *,false>::operator*(v28);
      }

      else
      {
        *v5 = v11;
        *&v26 = v12 + 1;
      }

      v6 = v10 + 24;
    }

    while (v10 + 24 != v9);
    v4 = v25;
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<vp::vx::database::v1::fbs::plist::Object>(a2, v4, v13);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v15 = v14;
  *(a2 + 70) = 1;
  v16 = *(a2 + 5);
  v17 = *(a2 + 6);
  v18 = *(a2 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>>>(a2, v15);
  LODWORD(v16) = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v18 - v17 + v16);
  v19 = *(this + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v20 = v16;
  *(a2 + 70) = 1;
  LODWORD(v17) = *(a2 + 8);
  LODWORD(v18) = *(a2 + 12);
  LODWORD(v16) = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v20);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v19);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 3);
  v21 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v17 - v18 + v16);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v21);
  if (*(&v26 + 1))
  {
    boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>::deallocate(&default_resource, v25);
  }

  return v21;
}

_DWORD *boost::container::vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>*,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>>>(void *a1, uint64_t a2, char *a3, _DWORD *a4)
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
    result = boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 8));
  }

  v20 = *(a2 + 16) + 1;
  *(a2 + 8) = v14;
  *(a2 + 16) = v20;
  *(a2 + 24) = v10;
  *a1 = &a3[v14 - v9];
  return result;
}

uint64_t boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint> *,false>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

apple::aiml::flatbuffers2::FlatBufferBuilder *apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>>>(apple::aiml::flatbuffers2::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(result, a2);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(v2, 4, v3);
  }

  return result;
}

void *boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void vp::vx::database::v1::syntax::conditions::Match_All::~Match_All(vp::vx::database::v1::syntax::conditions::Match_All *this)
{
  boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,void>::~vector(this + 2);

  JUMPOUT(0x2743CBFA0);
}

{
  boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,void>::~vector(this + 2);
}

void *boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1];
    do
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(v3 + 8);
      if (v5)
      {
        CFRelease(v5);
      }

      if (*v3)
      {
        CFRelease(*v3);
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  v6 = a1[3];
  if (v6)
  {
    (*(**a1 + 24))(*a1, a1[1], 32 * v6, 8);
  }

  return a1;
}