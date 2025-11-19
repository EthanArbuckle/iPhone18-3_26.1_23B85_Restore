void caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>,vp::Allocator<std::byte>>::vtable<void vp::vx::IO_Property_Setter_Command_Factory::add_property_setter<applesauce::CF::DictionaryRef>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::{lambda(vp::Allocator<std::byte>)#1}>(caulk::inplace_function_detail::wrapper<applesauce::CF::DictionaryRef>)::{lambda(void *,vp::Allocator<std::byte>&&)#1}::__invoke(int *a1, uint64_t *a2)
{
  v3 = *a2;
  v6 = 0;
  v7 = v3;
  v8 = xmmword_272756720;
  v4 = (*(*v3 + 16))(v3, 72, 8);
  v5 = *a1;
  vp::vx::data_flow::State<void>::State(v9, a1 + 2);
  *(v4 + 48) = &unk_2881C6630;
  operator new();
}

void *std::unique_ptr<vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>,vp::Allocator_Delete<vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    v4 = *(v2 + 40);
    if (v4)
    {
      vp::vx::data_flow::State<void>::unregister_listener((v2 + 16), v4);
      *(v2 + 40) = 0;
    }

    vp::vx::data_flow::State<void>::~State((v2 + 16));
    *(v2 + 48) = &unk_2881C6630;
    v5 = *(v2 + 64);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void virtual thunk tovp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>::~IO_Property_Setter_Command(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 10);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener(v1 + 4, v2);
    *(v1 + 10) = 0;
  }

  vp::vx::data_flow::State<void>::~State(v1 + 4);
  *(v1 + 6) = &unk_2881C6630;
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 10);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener(v1 + 4, v2);
    *(v1 + 10) = 0;
  }

  vp::vx::data_flow::State<void>::~State(v1 + 4);
  *(v1 + 6) = &unk_2881C6630;
  v3 = *(v1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>::set_property_controller(_DWORD *a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2[1];
  if (v3 && *(v3 + 8) != -1)
  {
    v4 = a1[2];
    v5 = *a2;
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    operator new();
  }

  v6 = a1[10];
  if (v6)
  {
    vp::vx::data_flow::State<void>::unregister_listener(a1 + 4, v6);
    a1[10] = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_272701DE0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(applesauce::CF::DictionaryRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(applesauce::CF::DictionaryRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
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

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(applesauce::CF::DictionaryRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(applesauce::CF::DictionaryRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(applesauce::CF::DictionaryRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(applesauce::CF::DictionaryRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C5370;
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(applesauce::CF::DictionaryRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(applesauce::CF::DictionaryRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C5370;
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::operator()(uint64_t a1, std::string::size_type *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = *(a1 + 8);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 24);
      if (v8)
      {
        log = vp::get_log(v6);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          if (v5)
          {
            v10 = v5 + 48;
          }

          else
          {
            v10 = 0;
          }

          v11 = &v24;
          vp::vx::io::get_log_context_info(&v24, v10, "vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>]", 65);
          v12 = v26;
          v13 = v26;
          v14 = v25;
          v16 = vp::get_log(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            if (v13 >= 0)
            {
              v17 = v12;
            }

            else
            {
              v17 = v14;
            }

            if (v13 < 0)
            {
              v11 = v24;
            }

            if (v17)
            {
              v18 = " ";
            }

            else
            {
              v18 = "";
            }

            v19 = *(a1 + 16);
            v20 = bswap32(v19);
            *&buf[1] = v20;
            if ((v20 - 32) > 0x5E || ((v20 >> 8) - 32) > 0x5E || ((v20 << 8 >> 24) - 32) > 0x5E || ((v20 >> 24) - 32) > 0x5E)
            {
              std::to_string(&__p, v19);
            }

            else
            {
              strcpy(&buf[5], "'");
              buf[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(&__p, buf);
            }

            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = v11;
            v28 = 2080;
            *v29 = v18;
            *&v29[8] = 2080;
            v30 = p_p;
            _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_DEFAULT, "%s%ssetting property %s", buf, 0x20u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            LOBYTE(v13) = v26;
          }

          if ((v13 & 0x80) != 0)
          {
            operator delete(v24);
          }
        }

        __p.__r_.__value_.__r.__words[0] = *a2;
        v24 = &__p;
        v25 = 8;
        (*(*v8 + 40))(buf, v8, *(a1 + 16), &v24);
        if ((v33 & 1) == 0 && SHIBYTE(v31) < 0)
        {
          (*(*v32 + 24))(v32, *&v29[2], v31 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_2727022A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C53B8;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C53B8;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C53B8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>::~IO_Property_Setter_Command(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener((a1 + 16), v2);
    *(a1 + 40) = 0;
  }

  vp::vx::data_flow::State<void>::~State((a1 + 16));
  *(a1 + 48) = &unk_2881C6630;
  v3 = *(a1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>::~IO_Property_Setter_Command(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener((a1 + 16), v2);
    *(a1 + 40) = 0;
  }

  vp::vx::data_flow::State<void>::~State((a1 + 16));
  *(a1 + 48) = &unk_2881C6630;
  v3 = *(a1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t vp::vx::IO_Property_Setter_Command<applesauce::CF::DictionaryRef>::get_property_ids@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v3 = *(result + 8);
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a3, &v3, &vars0, 1uLL);
  }

  return result;
}

int *caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_io_parameter_setter_delegates(void)::$_0>(void **a1)
{
  v1 = **a1;
  v2 = v1[1];
  (*(v2 + 16))(&v16, ++v1, 75);
  v3 = v16;
  v10 = v16;
  v11 = v17;
  v17 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v16);
  _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIZNS0_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_J13CAOrientationEEES5_OS6_DpRKNS0_9data_flow5StateIT0_EE(&v12, (v1 + 1), v3);
  v14 = v12;
  v15 = v13;
  v13 = 0uLL;
  v4 = boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_subscript((v1 + 157), 0x64766F72u);
  v5 = vp::vx::data_flow::State<void>::~State(v4);
  *v5 = v14;
  *(v5 + 2) = v15;
  v15 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v14);
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::State<void>::~State(&v10);
  (*(*v1 + 16))(&v16, v1, 76);
  v6 = v16;
  v10 = v16;
  v11 = v17;
  v17 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v16);
  _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIZNS0_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_J13CAOrientationEEES5_OS6_DpRKNS0_9data_flow5StateIT0_EE(&v12, (v1 + 1), v6);
  LODWORD(v16) = v12;
  v17 = v13;
  v13 = 0uLL;
  v7 = boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_subscript((v1 + 157), 0x75696F72u);
  v8 = vp::vx::data_flow::State<void>::~State(v7);
  *v8 = v16;
  *(v8 + 2) = v17;
  v17 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v16);
  vp::vx::data_flow::State<void>::~State(&v12);
  return vp::vx::data_flow::State<void>::~State(&v10);
}

void sub_27270276C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, int a12)
{
  vp::vx::data_flow::State<void>::~State((v12 - 56));
  vp::vx::data_flow::State<void>::~State(&a12);
  vp::vx::data_flow::State<void>::~State(&a9);
  _Unwind_Resume(a1);
}

int *_ZN2vp2vx29Voice_Processor_State_Manager12create_stateIZNS0_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_J13CAOrientationEEES5_OS6_DpRKNS0_9data_flow5StateIT0_EE(uint64_t a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = &unk_2881C5290;
  v15 = 0;
  v16 = &v14;
  v11 = a3;
  vp::vx::data_flow::State_Manager::create_state(&v12, (a2 + 48), &v14);
  v4 = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v14);
  *a1 = v4;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  result = vp::vx::data_flow::State<void>::~State(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

float *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_J13CAOrientationEEESC_OSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_EEERNS4_13State_ManagerESD_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_J13CAOrientationEEESC_OSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_EEERNS4_13State_ManagerESD_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C5290;
  *(a2 + 8) = *(result + 8);
  return result;
}

int *caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_io_parameter_setter_commands(void)::$_0>(uint64_t **a1)
{
  v88 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  v2 = v1 + 8;
  (*(*(v1 + 8) + 16))(&v85, v1 + 8, 57);
  v3 = v85;
  LODWORD(v76) = v85;
  v77 = v86;
  v86 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v85);
  v85 = &unk_2881C51B8;
  LOBYTE(v86) = 0;
  v87 = &v85;
  v74 = v3;
  vp::vx::data_flow::State_Manager::create_state(&default_resource, (v1 + 64), &v85);
  v4 = default_resource;
  v82 = default_resource;
  v45 = v73;
  v73 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v85);
  LODWORD(v78) = v4;
  v83 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v82);
  v62 = v4;
  v63 = v45;
  v79 = 0uLL;
  v5 = boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_subscript(v1 + 1200, 0x6265616Du);
  v6 = vp::vx::data_flow::State<void>::~State(v5);
  *v6 = v4;
  *(v6 + 2) = v63;
  v63 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v62);
  vp::vx::data_flow::State<void>::~State(&v78);
  vp::vx::data_flow::State<void>::~State(&v76);
  cf = CFStringCreateWithBytes(0, "uplink mic-ref delay (milliseconds)", 35, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v74 = 0;
  v75 = 0uLL;
  std::recursive_mutex::lock((v1 + 184));
  v7 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((v1 + 128), &cf);
  if (v7)
  {
    vp::vx::data_flow::State_Manager::find_state(&default_resource, (v1 + 64), *(v7 + 6));
    LODWORD(v85) = default_resource;
    v86 = v73;
    v73 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v74);
    v74 = v85;
    v75 = v86;
    v86 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v85);
    vp::vx::data_flow::State<void>::~State(&default_resource);
  }

  if (!v75)
  {
    vp::vx::Voice_Processor::get_uplink_mic_ref_sample_time_delta(&v78, v1);
    vp::vx::Voice_Processor::get_uplink_mic_sample_rate(&v76, v1);
    v85 = &unk_2881C02C0;
    LOBYTE(v86) = 0;
    v87 = &v85;
    v80 = v78;
    v81 = v76;
    vp::vx::data_flow::State_Manager::create_state(&default_resource, (v1 + 64), &v85);
    v82 = default_resource;
    v83 = v73;
    v73 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&default_resource);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v85);
    v69 = v82;
    v70 = v83;
    v83 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v82);
    vp::vx::data_flow::State<void>::~State(&v76);
    vp::vx::data_flow::State<void>::~State(&v78);
    vp::vx::data_flow::State<void>::~State(&v74);
    v74 = v69;
    v75 = v70;
    v70 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v69);
    v8 = v74;
    v9 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v85 = v9;
    LODWORD(v86) = v8;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(v1 + 128, &v85, &v85);
    if (v85)
    {
      CFRelease(v85);
    }
  }

  v65 = v74;
  v66 = v75;
  v75 = 0uLL;
  std::recursive_mutex::unlock((v1 + 184));
  vp::vx::data_flow::State<void>::~State(&v74);
  if (cf)
  {
    CFRelease(cf);
  }

  _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIZNS0_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_JfEEES5_OS6_DpRKNS0_9data_flow5StateIT0_EE(&v67, v1 + 16, v65);
  LODWORD(cf) = v67;
  v61 = v68;
  v68 = 0uLL;
  v10 = boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_subscript(v1 + 1200, 0x6D72646Du);
  v11 = vp::vx::data_flow::State<void>::~State(v10);
  *v11 = cf;
  *(v11 + 2) = v61;
  v61 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&cf);
  vp::vx::data_flow::State<void>::~State(&v67);
  vp::vx::data_flow::State<void>::~State(&v65);
  (*(*v2 + 16))(&v85, v2, 3);
  v82 = v85;
  v83 = v86;
  v86 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v85);
  _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIZNS0_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_JbEEES5_OS6_DpRKNS0_9data_flow5StateIT0_EE(&default_resource, v1 + 16, v82);
  v58 = default_resource;
  v59 = v73;
  v73 = 0uLL;
  v12 = boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_subscript(v1 + 1200, 0x756C766Du);
  v13 = vp::vx::data_flow::State<void>::~State(v12);
  *v13 = v58;
  *(v13 + 2) = v59;
  v59 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v58);
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::data_flow::State<void>::~State(&v82);
  (*(*v2 + 16))(&v85, v2, 4);
  v82 = v85;
  v83 = v86;
  v86 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v85);
  _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIZNS0_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_JbEEES5_OS6_DpRKNS0_9data_flow5StateIT0_EE(&default_resource, v1 + 16, v82);
  v56 = default_resource;
  v57 = v73;
  v73 = 0uLL;
  v14 = boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_subscript(v1 + 1200, 0x646C766Du);
  v15 = vp::vx::data_flow::State<void>::~State(v14);
  *v15 = v56;
  *(v15 + 2) = v57;
  v57 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v56);
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::data_flow::State<void>::~State(&v82);
  (*(*v2 + 16))(&v85, v2, 63);
  v82 = v85;
  v83 = v86;
  v86 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v85);
  _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIZNS0_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_JfEEES5_OS6_DpRKNS0_9data_flow5StateIT0_EE(&default_resource, v1 + 16, v82);
  v54 = default_resource;
  v55 = v73;
  v73 = 0uLL;
  v16 = boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_subscript(v1 + 1200, 0x646C7376u);
  v17 = vp::vx::data_flow::State<void>::~State(v16);
  *v17 = v54;
  *(v17 + 2) = v55;
  v55 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v54);
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::data_flow::State<void>::~State(&v82);
  v52 = CFStringCreateWithBytes(0, "downlink software volume pre-gain (dB)", 38, 0x8000100u, 0);
  if (!v52)
  {
    v44 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v44, "Could not construct");
  }

  v74 = 0;
  v75 = 0uLL;
  std::recursive_mutex::lock((v1 + 184));
  v18 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((v1 + 128), &v52);
  if (v18)
  {
    vp::vx::data_flow::State_Manager::find_state(&default_resource, (v1 + 64), *(v18 + 6));
    LODWORD(v85) = default_resource;
    v86 = v73;
    v73 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v74);
    v74 = v85;
    v75 = v86;
    v86 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v85);
    vp::vx::data_flow::State<void>::~State(&default_resource);
  }

  if (!v75)
  {
    vp::vx::Voice_Processor::get_downlink_configuration(&v78, v1);
    (*(*v2 + 16))(&v85, v2, 63);
    LODWORD(v76) = v85;
    v77 = v86;
    v86 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v85);
    v85 = &unk_2881C08E8;
    LOBYTE(v86) = 0;
    v87 = &v85;
    v80 = v78;
    v81 = v76;
    vp::vx::data_flow::State_Manager::create_state(&default_resource, (v1 + 64), &v85);
    v82 = default_resource;
    v83 = v73;
    v73 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&default_resource);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v85);
    v69 = v82;
    v70 = v83;
    v83 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v82);
    vp::vx::data_flow::State<void>::~State(&v76);
    vp::vx::data_flow::State<void>::~State(&v78);
    vp::vx::data_flow::State<void>::~State(&v74);
    v74 = v69;
    v75 = v70;
    v70 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v69);
    v19 = v74;
    v20 = v52;
    if (v52)
    {
      CFRetain(v52);
    }

    v85 = v20;
    LODWORD(v86) = v19;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(v1 + 128, &v85, &v85);
    if (v85)
    {
      CFRelease(v85);
    }
  }

  v65 = v74;
  v66 = v75;
  v75 = 0uLL;
  std::recursive_mutex::unlock((v1 + 184));
  vp::vx::data_flow::State<void>::~State(&v74);
  if (v52)
  {
    CFRelease(v52);
  }

  _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIZNS0_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_JfEEES5_OS6_DpRKNS0_9data_flow5StateIT0_EE(&v67, v1 + 16, v65);
  LODWORD(v52) = v67;
  v53 = v68;
  v68 = 0uLL;
  v21 = boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_subscript(v1 + 1200, 0x646C7367u);
  v22 = vp::vx::data_flow::State<void>::~State(v21);
  *v22 = v52;
  *(v22 + 2) = v53;
  v53 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v52);
  vp::vx::data_flow::State<void>::~State(&v67);
  vp::vx::data_flow::State<void>::~State(&v65);
  (*(*v2 + 16))(&v85, v2, 64);
  v82 = v85;
  v83 = v86;
  v86 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v85);
  _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIZNS0_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_JfEEES5_OS6_DpRKNS0_9data_flow5StateIT0_EE(&default_resource, v1 + 16, v82);
  v50 = default_resource;
  v51 = v73;
  v73 = 0uLL;
  v23 = boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_subscript(v1 + 1200, 0x646C6876u);
  v24 = vp::vx::data_flow::State<void>::~State(v23);
  *v24 = v50;
  *(v24 + 2) = v51;
  v51 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v50);
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::data_flow::State<void>::~State(&v82);
  if ((*(v1 + 361) & 1) == 0)
  {
    v25 = *(v1 + 456);
    boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::find(&default_resource, v25 + 16, "smrc");
    v26 = *(v25 + 24);
    v27 = *(v25 + 32);
    if (!v26 && v27)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v28 = default_resource;
    if (default_resource != (v26 + 16 * v27))
    {
      std::shared_ptr<vp::Service_Provider const>::shared_ptr[abi:ne200100]<vp::Service_Provider,0>(&v85, *v25, *(v25 + 8));
      v29 = *(v28 + 1);
      v30 = v86;
      if (v29 && (*(*v29 + 16))(v29))
      {
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v29 + 32))(v64, v29);
        v31 = v64[0];
        v64[0] = 0;
        v64[1] = v31;
        v76 = 0;
        mach_absolute_time();
        v78 = 0;
        v76 = 0;
        v32 = mach_absolute_time();
        *&v79 = v32;
        default_resource = std::pmr::get_default_resource(v32);
        *&v73 = 0;
        *(&v73 + 1) = &vp::vx::data_flow::Value::type_id<vp::vx::data_flow::Time_Stamped<applesauce::CF::DictionaryRef>>(void)::s_type_id;
        storage = vp::vx::data_flow::Value::allocate_storage(&default_resource);
        *storage = 0;
        storage[1] = v32;
        v78 = 0;
        vp::vx::data_flow::State_Manager::create_state(&v85, (v1 + 64), &default_resource);
        v82 = v85;
        v83 = v86;
        v86 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v85);
        vp::vx::data_flow::Value::~Value(&default_resource);
        v74 = v82;
        v75 = v83;
        v83 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v82);
        v34 = *(v1 + 96);
        if (v31)
        {
          CFRetain(v31);
        }

        v71 = v31;
        vp::vx::data_flow::State<void>::State(&v69, &v74);
        v84 = 0;
        operator new();
      }

      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }
  }

  LOBYTE(default_resource) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<BOOL>(&v85, (v1 + 16), &default_resource);
  v35 = v85;
  v46 = v85;
  v47 = v86;
  v86 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v85);
  _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIZNS0_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_JbEEES5_OS6_DpRKNS0_9data_flow5StateIT0_EE(&v48, v1 + 16, v35);
  LODWORD(default_resource) = v48;
  v73 = v49;
  v49 = 0uLL;
  v36 = boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_subscript(v1 + 1200, 0x636E6D72u);
  v37 = vp::vx::data_flow::State<void>::~State(v36);
  *v37 = default_resource;
  *(v37 + 2) = v73;
  v73 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::data_flow::State<void>::~State(&v48);
  vp::vx::data_flow::State<void>::~State(&v46);
  (*(*v2 + 16))(&v85, v2, 81);
  v38 = v85;
  LODWORD(v78) = v85;
  v79 = v86;
  v86 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v85);
  _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIZNS0_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_JfEEES5_OS6_DpRKNS0_9data_flow5StateIT0_EE(&v82, v1 + 16, v38);
  LODWORD(v85) = v82;
  v86 = v83;
  v83 = 0uLL;
  v39 = boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_subscript(v1 + 1200, 0x6D637376u);
  v40 = vp::vx::data_flow::State<void>::~State(v39);
  *v40 = v85;
  *(v40 + 2) = v86;
  v86 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v85);
  vp::vx::data_flow::State<void>::~State(&v82);
  result = vp::vx::data_flow::State<void>::~State(&v78);
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2727038E8(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    *(v3 - 136) = v2;
    applesauce::dispatch::v1::async<vp::vx::Voice_Processor_State_Manager::create_state_for_cf_notification(applesauce::CF::StringRef)::{lambda(vp::cf::Notification_Listener *)#1}::operator() const(vp::cf::Notification_Listener *)::{lambda(void)#1}>();
  }

  JUMPOUT(0x272703B58);
}

void sub_272703910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, const void *a40, const void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57)
{
  __cxa_end_catch();
  if (v57)
  {
    dispatch_release(v57);
  }

  vp::cf::Notification_Listener::~Notification_Listener(&a53);
  vp::vx::data_flow::State<void>::~State(&a57);
  applesauce::CF::StringRef::~StringRef(&a41);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
    applesauce::CF::StringRef::~StringRef(&a40);
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  else
  {
    applesauce::CF::StringRef::~StringRef(&a40);
  }

  JUMPOUT(0x272703B58);
}

void sub_272703B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37)
{
  vp::vx::data_flow::State<void>::~State(&a37);
  vp::vx::data_flow::State<void>::~State((v37 - 216));
  JUMPOUT(0x272703B40);
}

void sub_272703B50(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

int *_ZN2vp2vx29Voice_Processor_State_Manager12create_stateIZNS0_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_JfEEES5_OS6_DpRKNS0_9data_flow5StateIT0_EE(uint64_t a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = &unk_2881C5200;
  v15 = 0;
  v16 = &v14;
  v11 = a3;
  vp::vx::data_flow::State_Manager::create_state(&v12, (a2 + 48), &v14);
  v4 = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v14);
  *a1 = v4;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  result = vp::vx::data_flow::State<void>::~State(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

int *_ZN2vp2vx29Voice_Processor_State_Manager12create_stateIZNS0_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_JbEEES5_OS6_DpRKNS0_9data_flow5StateIT0_EE(uint64_t a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = &unk_2881C5248;
  v15 = 0;
  v16 = &v14;
  v11 = a3;
  vp::vx::data_flow::State_Manager::create_state(&v12, (a2 + 48), &v14);
  v4 = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v14);
  *a1 = v4;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  result = vp::vx::data_flow::State<void>::~State(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS8_32create_state_for_cf_notificationIZNS3_15Voice_Processor48create_camera_noise_mitigation_is_required_stateEvE3__0EEDaOT_N10applesauce2CF9StringRefEEUlNSH_13DictionaryRefEE_JNS4_12Time_StampedISJ_EEEEESD_SF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSM_EEERNS4_13State_ManagerESE_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v4 = *a3;
  v5 = vp::vx::data_flow::Value::view_storage(**a2);
  v6 = *v5;
  if (*v5)
  {
    CFRetain(*v5);
  }

  v7 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  if (v6)
  {
    CFRelease(v6);
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v7;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::data_flow::Time_Stamped<applesauce::CF::DictionaryRef>>::compare_value(uint64_t a1, const void ***a2, const void ***a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  v6 = **a3;
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (v5 | v6)
    {
      return 0;
    }

    return v3[1] == v4[1];
  }

  result = CFEqual(v5, v6);
  if (result)
  {
    return v3[1] == v4[1];
  }

  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::data_flow::Time_Stamped<applesauce::CF::DictionaryRef>>::destroy_value(uint64_t a1, const void ***a2)
{
  v2 = **a2;
  if (v2)
  {
    CFRelease(v2);
  }
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::data_flow::Time_Stamped<applesauce::CF::DictionaryRef>>::move_value(uint64_t a1, void **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = (*a3)[1];
  *v3 = **a3;
  *v4 = 0;
  v3[1] = v5;
}

void *vp::vx::data_flow::Time_Stamped<applesauce::CF::DictionaryRef>::Time_Stamped(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v5 = *(a2 + 8);
  *a1 = v4;
  a1[1] = v5;
  return a1;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::data_flow::Time_Stamped<applesauce::CF::DictionaryRef>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::data_flow::Time_Stamped<applesauce::CF::DictionaryRef>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 16, 8);
  *a2 = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS8_32create_state_for_cf_notificationIZNS3_15Voice_Processor48create_camera_noise_mitigation_is_required_stateEvE3__0EEDaOT_N10applesauce2CF9StringRefEEUlNSH_13DictionaryRefEE_JNS4_12Time_StampedISJ_EEEEESD_SF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSM_EEERNS4_13State_ManagerESE_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS8_32create_state_for_cf_notificationIZNS3_15Voice_Processor48create_camera_noise_mitigation_is_required_stateEvE3__0EEDaOT_N10applesauce2CF9StringRefEEUlNSH_13DictionaryRefEE_JNS4_12Time_StampedISJ_EEEEESD_SF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSM_EEERNS4_13State_ManagerESE_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS8_32create_state_for_cf_notificationIZNS3_15Voice_Processor48create_camera_noise_mitigation_is_required_stateEvE3__0EEDaOT_N10applesauce2CF9StringRefEEUlNSH_13DictionaryRefEE_JNS4_12Time_StampedISJ_EEEEESD_SF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSM_EEERNS4_13State_ManagerESE_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881C12E0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS8_32create_state_for_cf_notificationIZNS3_15Voice_Processor48create_camera_noise_mitigation_is_required_stateEvE3__0EEDaOT_N10applesauce2CF9StringRefEEUlNSH_13DictionaryRefEE_JNS4_12Time_StampedISJ_EEEEESD_SF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSM_EEERNS4_13State_ManagerESE_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EED0Ev(void *a1)
{
  *a1 = &unk_2881C12E0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS8_32create_state_for_cf_notificationIZNS3_15Voice_Processor48create_camera_noise_mitigation_is_required_stateEvE3__0EEDaOT_N10applesauce2CF9StringRefEEUlNSH_13DictionaryRefEE_JNS4_12Time_StampedISJ_EEEEESD_SF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSM_EEERNS4_13State_ManagerESE_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EED1Ev(void *a1)
{
  *a1 = &unk_2881C12E0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIN10applesauce2CF13DictionaryRefEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSD_32create_state_for_cf_notificationENS8_9StringRefEEUlT_E0_JSA_EEEDaOSG_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSA_EEERNS4_13State_ManagerESG_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EEclEOS10_OS11_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::data_flow::Time_Stamped<applesauce::CF::DictionaryRef>::Time_Stamped(v9, v4);
  v5 = v9[0];
  v6 = v9[1];
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::data_flow::Time_Stamped<applesauce::CF::DictionaryRef>>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  result[1] = v6;
  return result;
}

const void **vp::vx::data_flow::Time_Stamped<applesauce::CF::DictionaryRef>::~Time_Stamped(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIN10applesauce2CF13DictionaryRefEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSD_32create_state_for_cf_notificationENS8_9StringRefEEUlT_E0_JSA_EEEDaOSG_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSA_EEERNS4_13State_ManagerESG_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIN10applesauce2CF13DictionaryRefEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSD_32create_state_for_cf_notificationENS8_9StringRefEEUlT_E0_JSA_EEEDaOSG_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSA_EEERNS4_13State_ManagerESG_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIN10applesauce2CF13DictionaryRefEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSD_32create_state_for_cf_notificationENS8_9StringRefEEUlT_E0_JSA_EEEDaOSG_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSA_EEERNS4_13State_ManagerESG_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7__cloneEPNS0_6__baseIS15_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C1410;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIN10applesauce2CF13DictionaryRefEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSD_32create_state_for_cf_notificationENS8_9StringRefEEUlT_E0_JSA_EEEDaOSG_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSA_EEERNS4_13State_ManagerESG_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EED0Ev(void *a1)
{
  *a1 = &unk_2881C1410;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIN10applesauce2CF13DictionaryRefEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSD_32create_state_for_cf_notificationENS8_9StringRefEEUlT_E0_JSA_EEEDaOSG_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSA_EEERNS4_13State_ManagerESG_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EED1Ev(void *a1)
{
  *a1 = &unk_2881C1410;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void applesauce::dispatch::v1::async<vp::vx::Voice_Processor_State_Manager::create_state_for_cf_notification(applesauce::CF::StringRef)::{lambda(vp::cf::Notification_Listener *)#1}::operator() const(vp::cf::Notification_Listener *)::{lambda(void)#1}>(dispatch_queue_s *,vp::vx::Voice_Processor_State_Manager::create_state_for_cf_notification(applesauce::CF::StringRef)::{lambda(vp::cf::Notification_Listener *)#1}::operator() const(vp::cf::Notification_Listener *)::{lambda(void)#1} &&)::{lambda(void *)#1}::__invoke(vp::cf::Notification_Listener **a1)
{
  v1 = *a1;
  if (v1)
  {
    vp::cf::Notification_Listener::~Notification_Listener(v1);
    MEMORY[0x2743CBFA0]();
  }

  JUMPOUT(0x2743CBFA0);
}

void std::__shared_ptr_pointer<vp::cf::Notification_Listener *,vp::vx::Voice_Processor_State_Manager::create_state_for_cf_notification(applesauce::CF::StringRef)::{lambda(vp::cf::Notification_Listener *)#1},std::allocator<vp::cf::Notification_Listener>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  operator new();
}

void std::__shared_ptr_pointer<vp::cf::Notification_Listener *,vp::vx::Voice_Processor_State_Manager::create_state_for_cf_notification(applesauce::CF::StringRef)::{lambda(vp::cf::Notification_Listener *)#1},std::allocator<vp::cf::Notification_Listener>>::~__shared_ptr_pointer(std::__shared_weak_count *this)
{
  this->__vftable = &unk_2881C13D8;
  shared_owners = this[1].__shared_owners_;
  if (shared_owners)
  {
    dispatch_release(shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);

  JUMPOUT(0x2743CBFA0);
}

{
  this->__vftable = &unk_2881C13D8;
  shared_owners = this[1].__shared_owners_;
  if (shared_owners)
  {
    dispatch_release(shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager32create_state_for_cf_notificationEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEEclEOSC_(uint64_t a1, const void **a2)
{
  v3 = *a2;
  *a2 = 0;
  mach_absolute_time();
  if (v3)
  {
    CFRetain(v3);
  }

  v5 = mach_absolute_time();
  v6[0] = std::pmr::get_default_resource(v5);
  v6[1] = 0;
  v6[2] = &vp::vx::data_flow::Value::type_id<vp::vx::data_flow::Time_Stamped<applesauce::CF::DictionaryRef>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v6);
  *storage = v3;
  storage[1] = v5;
  vp::vx::data_flow::State<void>::set_value((a1 + 8), v6);
  vp::vx::data_flow::Value::~Value(v6);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_27270467C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, char a12)
{
  vp::vx::data_flow::Value::~Value(&a12);
  vp::vx::data_flow::Time_Stamped<applesauce::CF::DictionaryRef>::~Time_Stamped(&a10);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager32create_state_for_cf_notificationEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEE18destroy_deallocateEv(int *a1)
{
  vp::vx::data_flow::State<void>::~State(a1 + 2);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager32create_state_for_cf_notificationEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEED0Ev(uint64_t a1)
{
  *a1 = &unk_2881C1390;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager32create_state_for_cf_notificationEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEED1Ev(uint64_t a1)
{
  *a1 = &unk_2881C1390;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void vp::vx::Voice_Processor::get_downlink_configuration(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "downlink configuration", 22, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v12 = 0;
  v13 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v15, (a2 + 64), *(v4 + 6));
    v5 = v15;
    LODWORD(v17[0]) = v15;
    v10 = v16;
    v16 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v12);
    v12 = v5;
    v13 = v10;
    v17[1] = 0;
    v17[2] = 0;
    vp::vx::data_flow::State<void>::~State(v17);
    vp::vx::data_flow::State<void>::~State(&v15);
  }

  if (!v13)
  {
    v7 = *(a2 + 472);
    v6 = *(a2 + 480);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    vp::vx::Voice_Processor::get_configuration_context(v14, a2);
    operator new();
  }

  *this = v12;
  *(this + 8) = v13;
  v13 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v12);
  if (cf)
  {
    CFRelease(cf);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_272704AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

float *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor40get_downlink_software_volume_pre_gain_dBEvENK3__0clEvEUlRKNS3_22Downlink_ConfigurationEfE_JSC_fEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_fEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Downlink_Configuration>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = fminf(0.0 - ((1.0 - *vp::vx::data_flow::Value::view_storage(v3[1])) * *(v6 + 20)), 0.0);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v7;
  return result;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Downlink_Configuration>::compare_value(uint64_t a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  v3 = *a2;
  v4 = *a3;
  if (**a2 != **a3)
  {
    return 0;
  }

  v5 = *(v3 + 8);
  v6 = *(v4 + 8);
  if (v5 == v6 && v5 != 0)
  {
    v5 = *(v3 + 4);
    v6 = *(v4 + 4);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = *(v3 + 16);
  v9 = *(v4 + 16);
  if (v8 == v9 && v8 != 0)
  {
    v8 = *(v3 + 12);
    v9 = *(v4 + 12);
  }

  return v8 == v9 && *(v3 + 20) == *(v4 + 20);
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Downlink_Configuration>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  v3 = *a2;
  result = **a3;
  v3[1].n128_u64[0] = (*a3)[1].n128_u64[0];
  *v3 = result;
  return result;
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Downlink_Configuration>::copy_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  v3 = *a2;
  result = **a3;
  v3[1].n128_u64[0] = (*a3)[1].n128_u64[0];
  *v3 = result;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Downlink_Configuration>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Downlink_Configuration>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 24, 4);
  *a2 = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor40get_downlink_software_volume_pre_gain_dBEvENK3__0clEvEUlRKNS3_22Downlink_ConfigurationEfE_JSC_fEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_fEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C08E8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22Downlink_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor26get_downlink_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EEclEOS10_OS11_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Configuration_Context>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
LABEL_22:
    v15 = 1108869120;
    goto LABEL_23;
  }

  v8 = *(a1 + 8);
  v36 = 0;
  v39 = 0;
  v42 = 0;
  v45 = 0;
  v48 = 0;
  v51 = 1108869120;
  v9 = (*(*v7 + 40))(v7, v6, &v36);
  if ((v9 & 1) == 0)
  {
    log = vp::get_log(v9);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(__p, v8, "vp::vx::Voice_Processor]", 23);
      v18 = v35;
      v19 = v35;
      v20 = __p[1];
      v21 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        if (v19 >= 0)
        {
          v22 = v18;
        }

        else
        {
          v22 = v20;
        }

        v23 = __p[0];
        if (v19 >= 0)
        {
          v23 = __p;
        }

        if (v22)
        {
          v24 = " ";
        }

        else
        {
          v24 = "";
        }

        *buf = 136315394;
        v53 = v23;
        v54 = 2080;
        v55 = v24;
        _os_log_impl(&dword_2724B4000, v21, OS_LOG_TYPE_ERROR, "%s%sfailed to get downlink configuration", buf, 0x16u);
        LOBYTE(v19) = v35;
      }

      if ((v19 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }

    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_22;
  }

  v10 = v36;
  LOWORD(__p[0]) = v37;
  BYTE2(__p[0]) = v38;
  v11 = v39;
  *buf = v40;
  buf[2] = v41;
  v12 = v42;
  v32 = v43;
  v33 = v44;
  v13 = v45;
  v31 = v47;
  v30 = v46;
  v14 = v48;
  v29 = v50;
  v28 = v49;
  v15 = v51;
LABEL_23:
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v25);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Downlink_Configuration>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v10;
  *(result + 1) = __p[0];
  *(result + 3) = BYTE2(__p[0]);
  *(result + 4) = v11;
  *(result + 5) = *buf;
  *(result + 7) = buf[2];
  *(result + 8) = v12;
  *(result + 9) = v32;
  *(result + 11) = v33;
  *(result + 12) = v13;
  *(result + 15) = v31;
  *(result + 13) = v30;
  *(result + 16) = v14;
  *(result + 19) = v29;
  *(result + 17) = v28;
  *(result + 20) = v15;
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22Downlink_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor26get_downlink_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22Downlink_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor26get_downlink_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22Downlink_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor26get_downlink_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7__cloneEPNS0_6__baseIS15_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0448;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22Downlink_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor26get_downlink_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EED0Ev(void *a1)
{
  *a1 = &unk_2881C0448;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22Downlink_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor26get_downlink_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EED1Ev(void *a1)
{
  *a1 = &unk_2881C0448;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

float *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_JbEEESC_OSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESD_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EEclEOSW_OSX_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  LOBYTE(v4) = *vp::vx::data_flow::Value::view_storage(**a2);
  v5 = v4;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_JbEEESC_OSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESD_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C5248;
  *(a2 + 8) = *(result + 8);
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_JfEEESC_OSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JfEEERNS4_13State_ManagerESD_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EEclEOSW_OSX_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_JfEEESC_OSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JfEEERNS4_13State_ManagerESD_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C5200;
  *(a2 + 8) = *(result + 8);
  return result;
}

void vp::vx::Voice_Processor::get_uplink_mic_ref_sample_time_delta(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v78 = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "uplink mic-ref sample time delta", 32, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v19 = 0;
  v20 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v75, (a2 + 64), *(v4 + 6));
    v5 = v75;
    LODWORD(v60) = v75;
    v13 = v76;
    v76 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v19);
    v19 = v5;
    v20 = v13;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    vp::vx::data_flow::State<void>::~State(&v75);
  }

  if (!v20)
  {
    (*(*(a2 + 8) + 16))(&v60, a2 + 8, 8);
    v6 = v60;
    LODWORD(v75) = v60;
    v76 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptiondEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS7_DpRKNS0_9data_flow5StateIT0_EE(v54, a2 + 16, v6);
    vp::vx::data_flow::State<void>::~State(&v75);
    (*(*(a2 + 8) + 16))(&v60, a2 + 8, 13);
    v52 = v60;
    v53 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    (*(*(a2 + 8) + 16))(&v60, a2 + 8, 14);
    v50 = v60;
    v51 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    (*(*(a2 + 8) + 16))(&v60, a2 + 8, 15);
    v48 = v60;
    v49 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    (*(*(a2 + 8) + 16))(&v60, a2 + 8, 24);
    v7 = v60;
    LODWORD(v75) = v60;
    v76 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptiondEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS7_DpRKNS0_9data_flow5StateIT0_EE(v47, a2 + 16, v7);
    vp::vx::data_flow::State<void>::~State(&v75);
    (*(*(a2 + 8) + 16))(&v60, a2 + 8, 29);
    v45 = v60;
    v46 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    (*(*(a2 + 8) + 16))(&v60, a2 + 8, 30);
    v43 = v60;
    v44 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    (*(*(a2 + 8) + 16))(&v60, a2 + 8, 32);
    v41 = v60;
    v42 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    (*(*(a2 + 8) + 16))(&v60, a2 + 8, 31);
    v39 = v60;
    v40 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    (*(*(a2 + 8) + 16))(&v60, a2 + 8, 33);
    v37 = v60;
    v38 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    (*(*(a2 + 8) + 16))(&v60, a2 + 8, 34);
    v35 = v60;
    v36 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    (*(*(a2 + 8) + 16))(&v60, a2 + 8, 36);
    v33 = v60;
    v34 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    (*(*(a2 + 8) + 16))(&v60, a2 + 8, 35);
    v31 = v60;
    v32 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    (*(*(a2 + 8) + 16))(&v60, a2 + 8, 37);
    v29 = v60;
    v30 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    (*(*(a2 + 8) + 16))(&v60, a2 + 8, 38);
    v27 = v60;
    v28 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    (*(*(a2 + 8) + 24))(&v60, a2 + 8, 9);
    v25 = v60;
    v26 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    (*(*(a2 + 8) + 24))(&v60, a2 + 8, 10);
    v23 = v60;
    v24 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    v8 = *(a2 + 552);
    vp::vx::Voice_Processor::get_uplink_configuration(v22, a2);
    vp::vx::Voice_Processor::get_configuration_context(v21, a2);
    v75 = &unk_2881C0210;
    *&v76 = v8;
    v77 = &v75;
    v60 = __PAIR64__(v21[0], v22[0]);
    *&v61 = __PAIR64__(v52, v54[0]);
    *(&v61 + 1) = __PAIR64__(v48, v50);
    v62 = v47[0];
    v63 = v45;
    v64 = v43;
    v65 = v41;
    v66 = v39;
    v67 = v37;
    v68 = v35;
    v69 = v33;
    v70 = v31;
    v71 = v29;
    v72 = v27;
    v73 = v25;
    v74 = v23;
    vp::vx::data_flow::State_Manager::create_state(&v58, (a2 + 64), &v75);
    LODWORD(v8) = v58;
    v55 = v58;
    v14 = v59;
    v59 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v58);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v75);
    v16 = v8;
    v56 = 0;
    v57 = 0;
    vp::vx::data_flow::State<void>::~State(&v55);
    vp::vx::data_flow::State<void>::~State(v21);
    vp::vx::data_flow::State<void>::~State(v22);
    vp::vx::data_flow::State<void>::~State(&v23);
    vp::vx::data_flow::State<void>::~State(&v25);
    vp::vx::data_flow::State<void>::~State(&v27);
    vp::vx::data_flow::State<void>::~State(&v29);
    vp::vx::data_flow::State<void>::~State(&v31);
    vp::vx::data_flow::State<void>::~State(&v33);
    vp::vx::data_flow::State<void>::~State(&v35);
    vp::vx::data_flow::State<void>::~State(&v37);
    vp::vx::data_flow::State<void>::~State(&v39);
    vp::vx::data_flow::State<void>::~State(&v41);
    vp::vx::data_flow::State<void>::~State(&v43);
    vp::vx::data_flow::State<void>::~State(&v45);
    vp::vx::data_flow::State<void>::~State(v47);
    vp::vx::data_flow::State<void>::~State(&v48);
    vp::vx::data_flow::State<void>::~State(&v50);
    vp::vx::data_flow::State<void>::~State(&v52);
    vp::vx::data_flow::State<void>::~State(v54);
    vp::vx::data_flow::State<void>::~State(&v19);
    v19 = v8;
    v20 = v14;
    v17 = 0;
    v18 = 0;
    vp::vx::data_flow::State<void>::~State(&v16);
    v9 = v19;
    v10 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v60 = v10;
    LODWORD(v61) = v9;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v60, &v60);
    if (v60)
    {
      CFRelease(v60);
    }
  }

  *this = v19;
  *(this + 8) = v20;
  v20 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v19);
  if (cf)
  {
    CFRelease(cf);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_272705D4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

float *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor37get_uplink_mic_ref_delay_millisecondsEvENK3__0clEvEUlT_T0_E_JidEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JidEEERNS4_13State_ManagerESC_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<int>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *v6 / *vp::vx::data_flow::Value::view_storage(v3[1]);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v7;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor37get_uplink_mic_ref_delay_millisecondsEvENK3__0clEvEUlT_T0_E_JidEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JidEEERNS4_13State_ManagerESC_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C02C0;
  *(a2 + 8) = *(result + 8);
  return result;
}

int *_ZN2vp2vx29Voice_Processor_State_Manager12create_stateIRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptiondEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS7_DpRKNS0_9data_flow5StateIT0_EE(uint64_t a1, uint64_t a2, int a3)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v14[0] = &unk_2881C01C8;
  v14[1] = 0;
  v14[3] = v14;
  v11 = a3;
  vp::vx::data_flow::State_Manager::create_state(&v12, (a2 + 48), v14);
  v4 = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](v14);
  *a1 = v4;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  result = vp::vx::data_flow::State<void>::~State(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIiEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor36get_uplink_mic_ref_sample_time_deltaEvENK3__0clEvEUlDpRKT_E_JNS3_20Uplink_ConfigurationENS3_21Configuration_ContextEddjjddjjjjjjjjjbjEEEDaOT_DpRKNS4_5StateIT0_EEEUlSF_E_JSH_SI_ddjjddjjjjjjjjjbjEEERNS4_13State_ManagerESK_SR_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Uplink_Configuration>(void)::s_type_id)
  {
    v49 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v49 = 0;
  }

  v6 = v3[1];
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Configuration_Context>(void)::s_type_id)
  {
    v48 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v48 = 0;
  }

  v7 = v3[2];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v46 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v46 = 0;
  }

  v8 = v3[3];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v45 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v45 = 0;
  }

  v9 = v3[4];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v44 = vp::vx::data_flow::Value::view_storage(v9);
  }

  else
  {
    v44 = 0;
  }

  v10 = v3[5];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v43 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v43 = 0;
  }

  v11 = v3[6];
  if (v11[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v42 = vp::vx::data_flow::Value::view_storage(v11);
  }

  else
  {
    v42 = 0;
  }

  v12 = v3[7];
  if (v12[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v41 = vp::vx::data_flow::Value::view_storage(v12);
  }

  else
  {
    v41 = 0;
  }

  v13 = v3[8];
  if (v13[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v40 = vp::vx::data_flow::Value::view_storage(v13);
  }

  else
  {
    v40 = 0;
  }

  v14 = v3[9];
  if (v14[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v39 = vp::vx::data_flow::Value::view_storage(v14);
  }

  else
  {
    v39 = 0;
  }

  v15 = v3[10];
  if (v15[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v16 = vp::vx::data_flow::Value::view_storage(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = v3[11];
  if (v17[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v18 = vp::vx::data_flow::Value::view_storage(v17);
  }

  else
  {
    v18 = 0;
  }

  v19 = v3[12];
  if (v19[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v20 = vp::vx::data_flow::Value::view_storage(v19);
  }

  else
  {
    v20 = 0;
  }

  v21 = v3[13];
  if (v21[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v22 = vp::vx::data_flow::Value::view_storage(v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = v3[14];
  if (v23[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v24 = vp::vx::data_flow::Value::view_storage(v23);
  }

  else
  {
    v24 = 0;
  }

  v25 = v3[15];
  if (v25[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v26 = vp::vx::data_flow::Value::view_storage(v25);
  }

  else
  {
    v26 = 0;
  }

  v27 = v3[16];
  if (v27[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v28 = vp::vx::data_flow::Value::view_storage(v27);
  }

  else
  {
    v28 = 0;
  }

  v29 = v3[17];
  if (v29[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v30 = vp::vx::data_flow::Value::view_storage(v29);
  }

  else
  {
    v30 = 0;
  }

  v38 = *vp::vx::data_flow::Value::view_storage(v3[18]);
  v37 = *v30;
  LODWORD(v36) = *v26;
  HIDWORD(v36) = *v28;
  LODWORD(v35) = *v22;
  HIDWORD(v35) = *v24;
  LODWORD(v34) = *v18;
  HIDWORD(v34) = *v20;
  v31 = (*(**(a1 + 8) + 16))(*(a1 + 8), v49, v48, *v44, *v43, *v40, *v39, *v16, *v46, *v45, *v42, *v41, v34, v35, v36, v37);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v32);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v31;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIiEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor36get_uplink_mic_ref_sample_time_deltaEvENK3__0clEvEUlDpRKT_E_JNS3_20Uplink_ConfigurationENS3_21Configuration_ContextEddjjddjjjjjjjjjbjEEEDaOT_DpRKNS4_5StateIT0_EEEUlSF_E_JSH_SI_ddjjddjjjjjjjjjbjEEERNS4_13State_ManagerESK_SR_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C0210;
  a2[1] = v2;
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptiondEEDaMT_T0_EUlRKSC_E_JN2CA17StreamDescriptionEEEESD_OSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSN_EEERNS4_13State_ManagerESE_SU_EUlPPKNS4_5ValueEPS12_E_NS_9allocatorIS17_EEFvS15_S16_EEclEOS15_OS16_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *(vp::vx::data_flow::Value::view_storage(**a2) + *(a1 + 8));
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptiondEEDaMT_T0_EUlRKSC_E_JN2CA17StreamDescriptionEEEESD_OSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSN_EEERNS4_13State_ManagerESE_SU_EUlPPKNS4_5ValueEPS12_E_NS_9allocatorIS17_EEFvS15_S16_EE7__cloneEPNS0_6__baseIS1A_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C01C8;
  a2[1] = v2;
  return result;
}

float *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_JNS3_14Beam_DirectionEEEESC_OSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_EEERNS4_13State_ManagerESD_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_123make_static_cast_lambdaIfEEDavEUlT_E_JNS3_14Beam_DirectionEEEESC_OSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_EEERNS4_13State_ManagerESD_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C51B8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_tuning_resource_directory_paths(void)::$_0>(uint64_t **a1)
{
  v1 = **a1;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v7, (v1 + 368));
  vp::vx::Voice_Processor::create_tuning_resource_directory_paths(void)::$_0::operator() const(void)::{lambda(std::__fs::filesystem::path)#1}::operator()(v1, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (*(v1 + 416) == 1)
  {
    v2 = *(v1 + 412);
  }

  else
  {
    v2 = 0;
  }

  caulk::make_string("AID%u", &v5, v2);
  __p = v5;
  memset(&v5, 0, sizeof(v5));
  vp::vx::Voice_Processor::create_tuning_resource_directory_paths(void)::$_0::operator() const(void)::{lambda(std::__fs::filesystem::path)#1}::operator()(v1, &__p);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__pn_.__r_.__value_.__l.__data_);
  }

  if (*(v1 + 396) == 1)
  {
    v3 = *(v1 + 392);
  }

  else
  {
    v3 = 0;
  }

  caulk::make_string("CFG%u", &v4, v3);
  v5.__pn_ = v4;
  memset(&v4, 0, sizeof(v4));
  vp::vx::Voice_Processor::create_tuning_resource_directory_paths(void)::$_0::operator() const(void)::{lambda(std::__fs::filesystem::path)#1}::operator()(v1, &v5);
  if (SHIBYTE(v5.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [8],void>(&v4, "Generic");
  vp::vx::Voice_Processor::create_tuning_resource_directory_paths(void)::$_0::operator() const(void)::{lambda(std::__fs::filesystem::path)#1}::operator()(v1, &v4);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2727067FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__fs::filesystem::file_status vp::vx::Voice_Processor::create_tuning_resource_directory_paths(void)::$_0::operator() const(void)::{lambda(std::__fs::filesystem::path)#1}::operator()(uint64_t a1, std::__fs::filesystem::path *a2)
{
  __ec.__val_ = 0;
  v4 = std::system_category();
  __ec.__cat_ = v4;
  std::__fs::filesystem::operator/[abi:ne200100](&v10, a1 + 288, a2);
  std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(&__p, "VPVX");
  std::__fs::filesystem::operator/[abi:ne200100](&v11, &v10, &__p);
  if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(a2->__pn_.__r_.__value_.__l.__data_);
  }

  *a2 = v11;
  *(&v11.__pn_.__r_.__value_.__s + 23) = 0;
  v11.__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__pn_.__r_.__value_.__l.__data_);
  }

  result = std::__fs::filesystem::__status(a2, &__ec);
  if (v11.__pn_.__r_.__value_.__s.__data_[0])
  {
    __ec.__val_ = 0;
    __ec.__cat_ = v4;
    if (v11.__pn_.__r_.__value_.__s.__data_[0] != 255)
    {
      result = std::__fs::filesystem::__status(a2, &__ec);
      if (v11.__pn_.__r_.__value_.__s.__data_[0] == 2 && !__ec.__val_)
      {
        v6 = *(a1 + 640);
        v7 = *(a1 + 632) + 24 * v6;
        if (v6 == *(a1 + 648))
        {
          boost::container::vector<std::__fs::filesystem::path,boost::container::small_vector_allocator<std::__fs::filesystem::path,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<std::__fs::filesystem::path,vp::Allocator<void>,void>,std::__fs::filesystem::path*,std::__fs::filesystem::path>>(&v11, (a1 + 624), v7, a2);
          return boost::container::vec_iterator<std::__fs::filesystem::path *,false>::operator*(v11.__pn_.__r_.__value_.__l.__data_);
        }

        else
        {
          v8 = *&a2->__pn_.__r_.__value_.__l.__data_;
          *(v7 + 16) = *(&a2->__pn_.__r_.__value_.__l + 2);
          *v7 = v8;
          a2->__pn_.__r_.__value_.__l.__size_ = 0;
          a2->__pn_.__r_.__value_.__r.__words[2] = 0;
          a2->__pn_.__r_.__value_.__r.__words[0] = 0;
          ++*(a1 + 640);
        }
      }
    }
  }

  return result;
}

void sub_2727069D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void *boost::container::vector<std::__fs::filesystem::path,boost::container::small_vector_allocator<std::__fs::filesystem::path,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<std::__fs::filesystem::path,vp::Allocator<void>,void>,std::__fs::filesystem::path*,std::__fs::filesystem::path>>(void *a1, char *a2, __int128 *a3, __int128 *a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_29;
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
  if (v6 >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_29:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v13 = *(a2 + 1);
  result = (*(**a2 + 16))(*a2, 24 * v8, 8);
  v15 = result;
  v16 = *(a2 + 1);
  v17 = (v16 + 24 * *(a2 + 2));
  v18 = result;
  if (v16 != a3)
  {
    v19 = *(a2 + 1);
    v18 = result;
    do
    {
      v20 = *v19;
      v18[2] = *(v19 + 2);
      *v18 = v20;
      v18 += 3;
      *(v19 + 1) = 0;
      *(v19 + 2) = 0;
      *v19 = 0;
      v19 = (v19 + 24);
    }

    while (v19 != a3);
  }

  v21 = *a4;
  v18[2] = *(a4 + 2);
  *v18 = v21;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  if (v17 != a3)
  {
    v22 = v18 + 3;
    v23 = a3;
    do
    {
      v24 = *v23;
      v22[2] = *(v23 + 2);
      *v22 = v24;
      v22 += 3;
      *(v23 + 1) = 0;
      *(v23 + 2) = 0;
      *v23 = 0;
      v23 = (v23 + 24);
    }

    while (v23 != v17);
  }

  if (v16)
  {
    for (i = *(a2 + 2); i; --i)
    {
      if (*(v16 + 23) < 0)
      {
        operator delete(*v16);
      }

      v16 += 24;
    }

    v26 = *(a2 + 3);
    result = boost::container::small_vector_allocator<std::__fs::filesystem::path,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 1));
  }

  v27 = *(a2 + 2) + 1;
  *(a2 + 1) = v15;
  *(a2 + 2) = v27;
  *(a2 + 3) = v8;
  *a1 = a3 + v15 - v13;
  return result;
}

void vp::vx::Voice_Processor::create_configuration_states(void)::$_0::operator()(uint64_t a1)
{
  v45[10] = *MEMORY[0x277D85DE8];
  vp::vx::Voice_Processor::get_global_configuration(v45, a1);
  cf[0] = &unk_2881C4798;
  cf[1] = 0;
  cf[3] = cf;
  v42 = v45[0];
  vp::vx::data_flow::State_Manager::create_state(&v43, (a1 + 64), cf);
  v2 = v43;
  v39 = v43;
  v12 = v44;
  v44 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v43);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](cf);
  v33 = v2;
  v34 = v12;
  v41 = 0;
  *&v40[4] = 0;
  vp::vx::data_flow::State<void>::~State(&v39);
  vp::vx::data_flow::State<void>::~State(v45);
  (*(*(a1 + 8) + 16))(cf, a1 + 8, 70);
  v31 = cf[0];
  v32 = *&cf[1];
  cf[1] = 0;
  cf[2] = 0;
  vp::vx::data_flow::State<void>::~State(cf);
  (*(*(a1 + 8) + 16))(cf, a1 + 8, 51);
  v3 = cf[0];
  v29[6] = cf[0];
  v30 = *&cf[1];
  cf[1] = 0;
  cf[2] = 0;
  vp::vx::data_flow::State<void>::~State(cf);
  _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIdRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptiondEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS8_DpRKNS0_9data_flow5StateIT1_EE(v29, a1 + 16, v3);
  (*(*(a1 + 8) + 16))(cf, a1 + 8, 8);
  v4 = cf[0];
  v27[6] = cf[0];
  v28 = *&cf[1];
  cf[1] = 0;
  cf[2] = 0;
  vp::vx::data_flow::State<void>::~State(cf);
  _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIjRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS8_DpRKNS0_9data_flow5StateIT1_EE(v27, a1 + 16, v4);
  _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIdRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptiondEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS8_DpRKNS0_9data_flow5StateIT1_EE(v26, a1 + 16, v4);
  (*(*(a1 + 8) + 16))(cf, a1 + 8, 9);
  v5 = cf[0];
  v24 = cf[0];
  v25 = *&cf[1];
  cf[1] = 0;
  cf[2] = 0;
  vp::vx::data_flow::State<void>::~State(cf);
  (*(*(a1 + 8) + 16))(cf, a1 + 8, 24);
  v6 = cf[0];
  v22[6] = cf[0];
  v23 = *&cf[1];
  cf[1] = 0;
  cf[2] = 0;
  vp::vx::data_flow::State<void>::~State(cf);
  _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIjRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS8_DpRKNS0_9data_flow5StateIT1_EE(v22, a1 + 16, v6);
  _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIdRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptiondEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS8_DpRKNS0_9data_flow5StateIT1_EE(v21, a1 + 16, v6);
  (*(*(a1 + 8) + 16))(cf, a1 + 8, 25);
  v7 = cf[0];
  v19 = cf[0];
  v20 = *&cf[1];
  cf[1] = 0;
  cf[2] = 0;
  vp::vx::data_flow::State<void>::~State(cf);
  cf[0] = &unk_2881C4870;
  cf[1] = a1;
  cf[3] = cf;
  v45[0] = __PAIR64__(v7, v5);
  vp::vx::data_flow::State_Manager::create_state(&v43, (a1 + 64), cf);
  v8 = v43;
  v39 = v43;
  v13 = v44;
  v44 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v43);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](cf);
  v17 = v8;
  v18 = v13;
  v41 = 0;
  *&v40[4] = 0;
  vp::vx::data_flow::State<void>::~State(&v39);
  cf[0] = &unk_2881C48B8;
  cf[1] = a1;
  cf[3] = cf;
  v45[0] = __PAIR64__(v21[0], v26[0]);
  vp::vx::data_flow::State_Manager::create_state(&v43, (a1 + 64), cf);
  v9 = v43;
  v39 = v43;
  v14 = v44;
  v44 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v43);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](cf);
  v15[6] = v9;
  v16 = v14;
  v41 = 0;
  *&v40[4] = 0;
  vp::vx::data_flow::State<void>::~State(&v39);
  vp::vx::Voice_Processor::create_port_factory(cf, a1, 0);
  v10 = cf[0];
  if (cf[0])
  {
    vp::vx::data_flow::State<void>::State(v15, &v24);
    vp::vx::IO_Port_Factory::set_block_size(v10);
  }

  _os_crash();
  __break(1u);
  _os_crash();
  __break(1u);
  _os_crash();
  __break(1u);
  _os_crash();
  __break(1u);
  _os_crash();
  __break(1u);
  _os_crash();
  __break(1u);
  _os_crash();
  __break(1u);
  _os_crash();
  __break(1u);
  _os_crash();
  __break(1u);
  _os_crash();
  __break(1u);
  _os_crash();
  __break(1u);
  _os_crash();
  __break(1u);
  _os_crash();
  __break(1u);
  _os_crash();
  __break(1u);
  v45[0] = 0;
  v37 = 0u;
  v38 = 0u;
  __p = 0u;
  memset(cf, 0, sizeof(cf));
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  v39 = 136315138;
  *v40 = "dynamics DSP system audio input";
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
}

void sub_27270AEAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

int *_ZN2vp2vx29Voice_Processor_State_Manager12create_stateIdRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptiondEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS8_DpRKNS0_9data_flow5StateIT1_EE(uint64_t a1, uint64_t a2, int a3)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v14[0] = &unk_2881C47E0;
  v14[1] = 0;
  v14[3] = v14;
  v11 = a3;
  vp::vx::data_flow::State_Manager::create_state(&v12, (a2 + 48), v14);
  v4 = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](v14);
  *a1 = v4;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  result = vp::vx::data_flow::State<void>::~State(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

int *_ZN2vp2vx29Voice_Processor_State_Manager12create_stateIjRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS8_DpRKNS0_9data_flow5StateIT1_EE(uint64_t a1, uint64_t a2, int a3)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v14[0] = &unk_2881C4828;
  v14[1] = 28;
  v14[3] = v14;
  v11 = a3;
  vp::vx::data_flow::State_Manager::create_state(&v12, (a2 + 48), v14);
  v4 = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](v14);
  *a1 = v4;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  result = vp::vx::data_flow::State<void>::~State(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void vp::vx::Voice_Processor::create_port_factory(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v6 = *(a2 + 592);
  vp::vx::Voice_Processor::make_weak_state_observer(v27, *(a2 + 728), *(a2 + 744));
  (*(*v6 + 16))(&v30, v6, a3, v27);
  v7 = v30;
  *a1 = v30;
  if (v7)
  {
    operator new();
  }

  v8 = 0;
  a1[1] = 0;
  v30 = 0;
  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  v30 = 0;
  inserted = 0;
  v32 = 0;
  v9 = *(a2 + 1928);
  v10 = *(a2 + 1936);
  if (!v9 && v10)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v33 = v9 + 24 * v10;
  inserted = boost::container::dtl::flat_tree<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,boost::container::dtl::select1st<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,std::less<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,boost::container::small_vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,16ul,vp::Allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>>,void>>::priv_insert_unique_prepare(v9, &v33, &v29, &v32);
  v11 = v32;
  v12 = *(a2 + 1928);
  if (!inserted)
  {
    if (*(a2 + 1936) < 0xAAAAAAAAAAAAAAABLL * ((v32 - v12) >> 3))
    {
      __assert_rtn("nth", "vector.hpp", 1688, "this->m_holder.m_size >= n");
    }

    v23 = *(v32 + 16);
    *(v32 + 8) = 0;
    v11[2] = 0;
    if (!v23)
    {
      return;
    }

LABEL_27:
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    return;
  }

  if (v12 > v32)
  {
    goto LABEL_31;
  }

  v13 = *(a2 + 1936);
  if (!v12 && v13)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v14 = (v12 + 24 * v13);
  if (v32 > v14)
  {
LABEL_31:
    v24 = "this->priv_in_range_or_end(position)";
    v25 = 1862;
    v26 = "emplace";
    goto LABEL_35;
  }

  v15 = *(a2 + 1944);
  if (v15 < v13)
  {
    v24 = "this->m_holder.capacity() >= this->m_holder.m_size";
    v25 = 2821;
    v26 = "priv_insert_forward_range";
LABEL_35:
    __assert_rtn(v26, "vector.hpp", v25, v24);
  }

  if (v15 == v13)
  {
    boost::container::vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,vp::Allocator<void>,void>,boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>*,std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID> const&,std::shared_ptr<vp::vx::IO_Port_Factory>&>>(&v30, (a2 + 1920), v32, a1, &v29);
    return;
  }

  if (v14 == v32)
  {
    *v14 = v29;
    v14[1] = 0;
    v14[2] = 0;
    ++*(a2 + 1936);
    return;
  }

  v16 = v14 - 3;
  v17 = *(v14 - 3);
  *(v14 + 1) = *(v14 - 1);
  *(v14 - 2) = 0;
  *(v14 - 1) = 0;
  *v14 = v17;
  ++*(a2 + 1936);
  if (v14 - 3 != v11)
  {
    v18 = v14 - 3;
    do
    {
      v19 = *(v18 - 3);
      v18 -= 3;
      v20 = *(v16 - 1);
      *(v16 - 2) = 0;
      *(v16 - 1) = 0;
      *v16 = v19;
      v21 = v16[2];
      *(v16 + 1) = v20;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      v16 = v18;
    }

    while (v18 != v11);
    v7 = *a1;
    v8 = a1[1];
  }

  v22 = v29;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *v11 = v22;
  v11[1] = v7;
  v23 = v11[2];
  v11[2] = v8;
  if (v23)
  {
    goto LABEL_27;
  }
}

void sub_27270BCA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    (*(*a13 + 16))(a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::create_dsp_node_factory<vp::vx::Uplink_DSP_Node_ID>(void *a1, uint64_t a2, unsigned int a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 744);
  if (v3)
  {
    v7 = *(a2 + 728);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    v8 = std::__shared_weak_count::lock(v3);
    if (v8)
    {
      v9 = v8;
      if (v7)
      {
        v10 = v7 + 256;
      }

      else
      {
        v10 = 0;
      }

      p_shared_weak_owners = &v8->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      std::__shared_weak_count::__release_weak(v3);
      v12 = *(a2 + 568);
      v17 = v10;
      v18 = v9;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      vp::vx::Voice_Processor::make_weak_state_observer(v15, *(a2 + 728), *(a2 + 744));
      (*(*v12 + 16))(v19, v12, a3, &v17, v15);
      v13 = v19[0];
      *a1 = v19[0];
      if (v13)
      {
        operator new();
      }

      a1[1] = 0;
      v19[0] = 0;
      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }

      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }

      vp::vx::Voice_Processor::get_block_size(v14, a2, a3);
      vp::vx::DSP_Node_Factory::set_block_size(0);
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_27270C2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45, uint64_t a46, std::__shared_weak_count *a47, char a48)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

int *_ZN2vp2vx29Voice_Processor_State_Manager12create_stateIN2CA17StreamDescriptionERDoFS4_djEJdjEEEDaOT0_DpRKNS0_9data_flow5StateIT1_EE(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v16[0] = &unk_2881C4990;
  v16[3] = v16;
  v14 = a3;
  v15 = a4;
  vp::vx::data_flow::State_Manager::create_state(&v12, (a2 + 48), v16);
  v5 = v12;
  v9 = v12;
  v8 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](v16);
  *a1 = v5;
  *(a1 + 8) = v8;
  v10 = 0;
  v11 = 0;
  result = vp::vx::data_flow::State<void>::~State(&v9);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__value_func<double ()(BOOL,double,unsigned int,vp::vx::DSP_Node_Configuration_Options const&,double,double,std::optional<double>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<double ()(BOOL,double,unsigned int,vp::vx::DSP_Node_Configuration_Options const&,double,double,std::optional<double>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,vp::utility::Quantization_Table<unsigned int> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,vp::utility::Quantization_Table<unsigned int> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _ZZN2vp2vx12_GLOBAL__N_121make_bind_back_lambdaIRKNSt3__18functionIFjRKNS0_30DSP_Node_Configuration_OptionsEdRKNS_7utility18Quantization_TableIjEEEEEJSA_EEEDaOT_DpRKT0_ENUlDpOT_E_D1Ev(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  return std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,vp::utility::Quantization_Table<unsigned int> const&)>::~__value_func[abi:ne200100](a1);
}

int *_ZN2vp2vx29Voice_Processor_State_Manager12create_stateIN2CA17StreamDescriptionERDoFS4_dEJdEEEDaOT0_DpRKNS0_9data_flow5StateIT1_EE(uint64_t a1, uint64_t a2, int a3)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v14[0] = &unk_2881C4B40;
  v14[3] = v14;
  v11 = a3;
  vp::vx::data_flow::State_Manager::create_state(&v12, (a2 + 48), v14);
  v4 = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](v14);
  *a1 = v4;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  result = vp::vx::data_flow::State<void>::~State(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__value_func<unsigned int ()(double,unsigned int,double,unsigned int,BOOL,double,unsigned int,BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

void vp::vx::Voice_Processor::create_wire_factory(void *a1, uint64_t a2, uint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 600);
  vp::vx::Voice_Processor::make_weak_state_observer(v33, *(a2 + 728), *(a2 + 744));
  (*(*v6 + 16))(&v48, v6, a3, v33);
  v7 = v48;
  *a1 = v48;
  if (v7)
  {
    operator new();
  }

  a1[1] = 0;
  v48 = 0;
  if (v34)
  {
    std::__shared_weak_count::__release_weak(v34);
  }

  if (a3)
  {
    vp::vx::Voice_Processor::get_downlink_SRC_algorithm(&v31, a2);
  }

  else
  {
    vp::vx::Voice_Processor::get_uplink_SRC_algorithm(&v31, a2);
  }

  v8 = MEMORY[8];
  v9 = MEMORY[0x18];
  if (MEMORY[0x18])
  {
    atomic_fetch_add_explicit((MEMORY[0x18] + 16), 1uLL, memory_order_relaxed);
  }

  vp::vx::data_flow::State<void>::~State(0x20);
  MEMORY[0x20] = v31;
  MEMORY[0x28] = v32;
  v32 = 0uLL;
  if (v8 == 1)
  {
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if (!v8)
  {
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  vp::vx::data_flow::State<void>::~State(&v31);
  if (a3)
  {
    vp::vx::Voice_Processor::get_downlink_SRC_quality(&v29, a2);
  }

  else
  {
    vp::vx::Voice_Processor::get_uplink_SRC_quality(&v29, a2);
  }

  v10 = MEMORY[8];
  v11 = MEMORY[0x18];
  if (MEMORY[0x18])
  {
    atomic_fetch_add_explicit((MEMORY[0x18] + 16), 1uLL, memory_order_relaxed);
  }

  vp::vx::data_flow::State<void>::~State(0x38);
  MEMORY[0x38] = v29;
  MEMORY[0x40] = v30;
  v30 = 0uLL;
  if (v10 == 1)
  {
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if (!v10)
  {
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  vp::vx::data_flow::State<void>::~State(&v29);
  if (a3)
  {
    cf = CFStringCreateWithBytes(0, "downlink wire storage capacity (milliseconds)", 45, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v36 = 0;
    v37 = 0uLL;
    std::recursive_mutex::lock((a2 + 184));
    v12 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
    if (v12)
    {
      vp::vx::data_flow::State_Manager::find_state(&v46, (a2 + 64), *(v12 + 6));
      LODWORD(v48) = v46;
      v49 = v47;
      v47 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v36);
      v36 = v48;
      v37 = v49;
      v49 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v48);
      vp::vx::data_flow::State<void>::~State(&v46);
    }

    if (!v37)
    {
      (*(*(a2 + 8) + 16))(&v48, a2 + 8, 6);
      v40 = v48;
      v41 = v49;
      v49 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v48);
      (*(*(a2 + 8) + 16))(&v48, a2 + 8, 52);
      v38 = v48;
      v39 = v49;
      v49 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v48);
      v48 = &unk_2881C08A0;
      LOBYTE(v49) = 0;
      v50 = &v48;
      v42 = v40;
      v43 = v38;
      vp::vx::data_flow::State_Manager::create_state(&v46, (a2 + 64), &v48);
      v44 = v46;
      v45 = v47;
      v47 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v46);
      std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v48);
      LODWORD(v48) = v44;
      v49 = v45;
      v45 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v44);
      vp::vx::data_flow::State<void>::~State(&v38);
      vp::vx::data_flow::State<void>::~State(&v40);
      vp::vx::data_flow::State<void>::~State(&v36);
      v36 = v48;
      v37 = v49;
      v49 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v48);
      v13 = v36;
      v14 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v48 = v14;
      LODWORD(v49) = v13;
      std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v48, &v48);
      if (v48)
      {
        CFRelease(v48);
      }
    }

    v15 = v36;
    v27 = v36;
    v26 = v37;
    v28 = v37;
    v37 = 0uLL;
    std::recursive_mutex::unlock((a2 + 184));
    vp::vx::data_flow::State<void>::~State(&v36);
    if (cf)
    {
      CFRelease(cf);
    }

    v16 = 16;
  }

  else
  {
    cf = CFStringCreateWithBytes(0, "uplink wire storage capacity (milliseconds)", 43, 0x8000100u, 0);
    if (!cf)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v25, "Could not construct");
    }

    v36 = 0;
    v37 = 0uLL;
    std::recursive_mutex::lock((a2 + 184));
    v17 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
    if (v17)
    {
      vp::vx::data_flow::State_Manager::find_state(&v46, (a2 + 64), *(v17 + 6));
      LODWORD(v48) = v46;
      v49 = v47;
      v47 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v36);
      v36 = v48;
      v37 = v49;
      v49 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v48);
      vp::vx::data_flow::State<void>::~State(&v46);
    }

    if (!v37)
    {
      (*(*(a2 + 8) + 16))(&v48, a2 + 8, 5);
      v40 = v48;
      v41 = v49;
      v49 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v48);
      (*(*(a2 + 8) + 16))(&v48, a2 + 8, 51);
      v38 = v48;
      v39 = v49;
      v49 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v48);
      v48 = &unk_2881C0118;
      LOBYTE(v49) = 0;
      v50 = &v48;
      v42 = v40;
      v43 = v38;
      vp::vx::data_flow::State_Manager::create_state(&v46, (a2 + 64), &v48);
      v44 = v46;
      v45 = v47;
      v47 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v46);
      std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v48);
      LODWORD(v48) = v44;
      v49 = v45;
      v45 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v44);
      vp::vx::data_flow::State<void>::~State(&v38);
      vp::vx::data_flow::State<void>::~State(&v40);
      vp::vx::data_flow::State<void>::~State(&v36);
      v36 = v48;
      v37 = v49;
      v49 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v48);
      v18 = v36;
      v19 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v48 = v19;
      LODWORD(v49) = v18;
      std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v48, &v48);
      if (v48)
      {
        CFRelease(v48);
      }
    }

    v15 = v36;
    v27 = v36;
    v26 = v37;
    v28 = v37;
    v37 = 0uLL;
    std::recursive_mutex::unlock((a2 + 184));
    vp::vx::data_flow::State<void>::~State(&v36);
    if (cf)
    {
      CFRelease(cf);
    }

    v16 = 0;
  }

  v20 = MEMORY[8];
  v21 = MEMORY[0x18];
  if (MEMORY[0x18])
  {
    atomic_fetch_add_explicit((MEMORY[0x18] + 16), 1uLL, memory_order_relaxed);
  }

  vp::vx::data_flow::State<void>::~State(0x50);
  MEMORY[0x50] = v15;
  MEMORY[0x58] = v26;
  v28 = 0uLL;
  if (v20 == 1)
  {
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if (!v20)
  {
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  vp::vx::data_flow::State<void>::~State(&v27);
  v22 = *(a2 + v16 + 2344);
  *(a2 + v16 + 2336) = 0;
  *(a2 + v16 + 2344) = 0;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_27270D514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27270D884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor_State_Manager::create_state<unsigned int,vp::vx::anonymous namespace::make_input_channel_count_override_getter_lambda(std::string,unsigned int)::$_0,vp::vx::DSP_Node_Configuration_Options>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v6[0] = a3[1];
  *(v6 + 7) = *(a3 + 15);
  v4 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v5 = *(a3 + 6);
  operator new();
}

void sub_27270DA28(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::vx::Voice_Processor::create_dsp_node_factory<vp::vx::Downlink_DSP_Node_ID>(void *a1, uint64_t a2, unsigned int a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 744);
  if (v3)
  {
    v7 = *(a2 + 728);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    v8 = std::__shared_weak_count::lock(v3);
    if (v8)
    {
      v9 = v8;
      if (v7)
      {
        v10 = v7 + 256;
      }

      else
      {
        v10 = 0;
      }

      p_shared_weak_owners = &v8->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      std::__shared_weak_count::__release_weak(v3);
      v12 = *(a2 + 568);
      v17 = v10;
      v18 = v9;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      vp::vx::Voice_Processor::make_weak_state_observer(v15, *(a2 + 728), *(a2 + 744));
      (*(*v12 + 16))(v19, v12, a3 | 0x100000000, &v17, v15);
      v13 = v19[0];
      *a1 = v19[0];
      if (v13)
      {
        operator new();
      }

      a1[1] = 0;
      v19[0] = 0;
      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }

      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }

      vp::vx::Voice_Processor::get_block_size(v14, a2, a3);
      vp::vx::DSP_Node_Factory::set_block_size(0);
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_27270E180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, std::__shared_weak_count *a46, uint64_t a47, std::__shared_weak_count *a48, char a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, uint64_t a61, char a62)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor_State_Manager::create_state<unsigned int,vp::vx::anonymous namespace::make_output_channel_count_override_getter_lambda(std::string,unsigned int)::$_0,vp::vx::DSP_Node_Configuration_Options>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v6[0] = a3[1];
  *(v6 + 7) = *(a3 + 15);
  v4 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v5 = *(a3 + 6);
  operator new();
}

void sub_27270E3FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<double ()(BOOL,vp::vx::DSP_Node_Configuration_Options const&,double,double,double,std::optional<double>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<double ()(BOOL,vp::vx::DSP_Node_Configuration_Options const&,double,double,double,std::optional<double>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,double,unsigned int,vp::utility::Quantization_Table<unsigned int> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,double,unsigned int,vp::utility::Quantization_Table<unsigned int> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _ZZN2vp2vx12_GLOBAL__N_121make_bind_back_lambdaIRKNSt3__18functionIFjRKNS0_30DSP_Node_Configuration_OptionsEddjRKNS_7utility18Quantization_TableIjEEEEEJSA_EEEDaOT_DpRKT0_ENUlDpOT_E_D1Ev(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  return std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,double,unsigned int,vp::utility::Quantization_Table<unsigned int> const&)>::~__value_func[abi:ne200100](a1);
}

uint64_t std::__function::__value_func<unsigned int ()(double,double,unsigned int,BOOL,double,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(vp::vx::DSP_Node_Configuration_Options const&,double,double,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<unsigned int ()(double,unsigned int,double)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__shared_ptr_pointer<vp::vx::IO_Far_End_Voice_Proc_Node_Factory  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__shared_ptr_pointer<vp::vx::IO_Far_End_Voice_Proc_Node_Factory  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::Property::String_Type_Converter<unsigned int>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);
  v7 = *MEMORY[0x277D85DE8];

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<unsigned int>::convert_to_plist(uint64_t a1, int *a2, const void **a3)
{
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = v4;
  v6 = *a3;
  *a3 = v5;
  if (v6)
  {
    CFRelease(v6);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<unsigned int>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<unsigned int>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  result = (*(*a2 + 40))(a2, v5, a3);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *vp::vx::Property::Property_List_Type_Converter<unsigned int>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<unsigned int>::convert_from_blob(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = vp::Blob_Getter<vp::Blob>::get<unsigned int>(a3 + 1);
  *a2 = result;
  return result;
}

uint64_t vp::Blob_Getter<vp::Blob>::get<unsigned int>(uint64_t a1)
{
  if (*(a1 + 7) != 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
  }

  return **(a1 - 1);
}

uint64_t vp::vx::Property::Blob_Type_Converter<unsigned int>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);
  v5 = *MEMORY[0x277D85DE8];

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<unsigned int>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);
  v7 = *MEMORY[0x277D85DE8];

  return v6(a1, v5, a3);
}

_DWORD *vp::vx::Property::Blob_Type_Converter<unsigned int>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

uint64_t std::__function::__value_func<unsigned int ()(double,double,unsigned int,BOOL,double,unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjNS_8functionIFjddjbdjEEEJddjbdjEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JddjbdjEEERNS4_13State_ManagerET_DpRKNSG_IT0_EEEUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EEclEOS12_OS13_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[2];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v4[3];
  if (v12[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v13 = vp::vx::data_flow::Value::view_storage(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = v4[4];
  if (v14[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v15 = vp::vx::data_flow::Value::view_storage(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = vp::vx::data_flow::Value::view_storage(v4[5]);
  v17 = std::function<unsigned int ()(double,double,unsigned int,BOOL,double,unsigned int)>::operator()(*(a1 + 32), *v11, *v13, *v16, *v7, *v9, *v15);
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v18);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v17;
  return result;
}

uint64_t std::function<unsigned int ()(double,double,unsigned int,BOOL,double,unsigned int)>::operator()(uint64_t a1, int a2, char a3, int a4, double a5, double a6, double a7)
{
  v12 = a6;
  v13 = a5;
  v11 = a2;
  v10 = a3;
  v9 = a7;
  v8 = a4;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v13, &v12, &v11, &v10, &v9, &v8);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjNS_8functionIFjddjbdjEEEJddjbdjEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JddjbdjEEERNS4_13State_ManagerET_DpRKNSG_IT0_EEEUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE18destroy_deallocateEv(void *a1)
{
  std::__function::__value_func<unsigned int ()(double,double,unsigned int,BOOL,double,unsigned int)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjNS_8functionIFjddjbdjEEEJddjbdjEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JddjbdjEEERNS4_13State_ManagerET_DpRKNSG_IT0_EEEUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EED0Ev(void *a1)
{
  *a1 = &unk_2881C5170;
  std::__function::__value_func<unsigned int ()(double,double,unsigned int,BOOL,double,unsigned int)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjNS_8functionIFjddjbdjEEEJddjbdjEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JddjbdjEEERNS4_13State_ManagerET_DpRKNSG_IT0_EEEUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EED1Ev(void *a1)
{
  *a1 = &unk_2881C5170;
  std::__function::__value_func<unsigned int ()(double,double,unsigned int,BOOL,double,unsigned int)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKNS_8functionIFjddjbdjEEEJddjbdjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JddjbdjEEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[2];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v4[3];
  if (v12[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v13 = vp::vx::data_flow::Value::view_storage(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = v4[4];
  if (v14[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v15 = vp::vx::data_flow::Value::view_storage(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = vp::vx::data_flow::Value::view_storage(v4[5]);
  v17 = std::function<unsigned int ()(double,double,unsigned int,BOOL,double,unsigned int)>::operator()(*(a1 + 32), *v11, *v13, *v16, *v7, *v9, *v15);
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v18);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v17;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKNS_8functionIFjddjbdjEEEJddjbdjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JddjbdjEEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE18destroy_deallocateEv(void *a1)
{
  std::__function::__value_func<unsigned int ()(double,double,unsigned int,BOOL,double,unsigned int)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKNS_8functionIFjddjbdjEEEJddjbdjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JddjbdjEEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EED0Ev(void *a1)
{
  *a1 = &unk_2881C5128;
  std::__function::__value_func<unsigned int ()(double,double,unsigned int,BOOL,double,unsigned int)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKNS_8functionIFjddjbdjEEEJddjbdjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JddjbdjEEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EED1Ev(void *a1)
{
  *a1 = &unk_2881C5128;
  std::__function::__value_func<unsigned int ()(double,double,unsigned int,BOOL,double,unsigned int)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIjJddjbdjEEENS_8functionIFT_DpT0_EEEMNS3_31Downlink_Configuration_DelegateEKDoFS7_S9_EEUlddjbdjE_NS_9allocatorISF_EEFjddjbdjEEclEOdSK_OjObSK_SL_(void *a1, unint64_t *a2, unint64_t *a3, unsigned int *a4, unsigned __int8 *a5, unint64_t *a6, unsigned int *a7, __n128 a8, __n128 a9, __n128 a10)
{
  a8.n128_u64[0] = *a2;
  a9.n128_u64[0] = *a3;
  v10 = *a5;
  a10.n128_u64[0] = *a6;
  v11 = a1[2];
  v12 = a1[3];
  v13 = (a1[1] + (v12 >> 1));
  if (v12)
  {
    return (*(*v13 + v11))(a8, a9, a10);
  }

  else
  {
    return v11(v13, *a4, v10, *a7, a8.n128_f64[0], a9.n128_f64[0], a10.n128_f64[0]);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIjJddjbdjEEENS_8functionIFT_DpT0_EEEMNS3_31Downlink_Configuration_DelegateEKDoFS7_S9_EEUlddjbdjE_NS_9allocatorISF_EEFjddjbdjEE7__cloneEPNS0_6__baseISI_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C50E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZNS3_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptiondEEDaMT_T0_EUlRKSC_E_JN2CA17StreamDescriptionEEEESD_OSF_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSL_EEERNS4_13State_ManagerESE_DpRKNSN_IT0_EEEUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EEclEOS18_OS19_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *(vp::vx::data_flow::Value::view_storage(**a2) + *(a1 + 8));
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZNS3_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptiondEEDaMT_T0_EUlRKSC_E_JN2CA17StreamDescriptionEEEESD_OSF_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSL_EEERNS4_13State_ManagerESE_DpRKNSN_IT0_EEEUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EE7__cloneEPNS0_6__baseIS1D_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C5098;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(vp::vx::DSP_Node_Configuration_Options const&,double,double,unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKNS_8functionIFbRKNS3_30DSP_Node_Configuration_OptionsEddjEEEJSB_ddjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSB_ddjEEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[2];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = vp::vx::data_flow::Value::view_storage(v4[3]);
  v13 = *v9;
  v14 = *v12;
  v20 = *v11;
  v21 = v13;
  v19 = v14;
  v15 = *(a1 + 32);
  if (!v15)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v16 = (*(*v15 + 48))(v15, v7, &v21, &v20, &v19);
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v17);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v16;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKNS_8functionIFbRKNS3_30DSP_Node_Configuration_OptionsEddjEEEJSB_ddjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSB_ddjEEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE18destroy_deallocateEv(void *a1)
{
  std::__function::__value_func<BOOL ()(vp::vx::DSP_Node_Configuration_Options const&,double,double,unsigned int)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKNS_8functionIFbRKNS3_30DSP_Node_Configuration_OptionsEddjEEEJSB_ddjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSB_ddjEEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EED0Ev(void *a1)
{
  *a1 = &unk_2881C5050;
  std::__function::__value_func<BOOL ()(vp::vx::DSP_Node_Configuration_Options const&,double,double,unsigned int)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKNS_8functionIFbRKNS3_30DSP_Node_Configuration_OptionsEddjEEEJSB_ddjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSB_ddjEEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EED1Ev(void *a1)
{
  *a1 = &unk_2881C5050;
  std::__function::__value_func<BOOL ()(vp::vx::DSP_Node_Configuration_Options const&,double,double,unsigned int)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIbJRKNS3_30DSP_Node_Configuration_OptionsEddjEEENS_8functionIFT_DpT0_EEEMNS3_31Downlink_Configuration_DelegateEKDoFSA_SC_EEUlS8_ddjE_NS_9allocatorISI_EEFbS8_ddjEEclES8_OdSN_Oj(void *a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unsigned int *a5, __n128 a6, __n128 a7)
{
  a6.n128_u64[0] = *a3;
  a7.n128_u64[0] = *a4;
  v7 = a1[2];
  v8 = a1[3];
  v9 = (a1[1] + (v8 >> 1));
  if (v8)
  {
    return (*(*v9 + v7))(a6, a7);
  }

  else
  {
    return v7(v9, a2, *a5, a6.n128_f64[0], a7.n128_f64[0]);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIbJRKNS3_30DSP_Node_Configuration_OptionsEddjEEENS_8functionIFT_DpT0_EEEMNS3_31Downlink_Configuration_DelegateEKDoFSA_SC_EEUlS8_ddjE_NS_9allocatorISI_EEFbS8_ddjEE7__cloneEPNS0_6__baseISL_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C5008;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_121make_bind_back_lambdaIRKNS_8functionIFjRKNS3_30DSP_Node_Configuration_OptionsEddjRKNS2_7utility18Quantization_TableIjEEEEEJSI_EEEDaOT_DpRKT0_EUlDpOT_E_JSD_ddjEEESP_SR_DpRKNS4_5StateISS_EEEUlDpRKSW_E_JSD_ddjEEERNS4_13State_ManagerESQ_S14_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EEclEOS1E_OS1F_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[2];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = vp::vx::data_flow::Value::view_storage(v4[3]);
  v13 = *v9;
  v14 = *v12;
  v20 = *v11;
  v21 = v13;
  v19 = v14;
  v15 = *(a1 + 32);
  if (!v15)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v16 = (*(*v15 + 48))(v15, v7, &v21, &v20, &v19, a1 + 40);
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v17);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v16;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_121make_bind_back_lambdaIRKNS_8functionIFjRKNS3_30DSP_Node_Configuration_OptionsEddjRKNS2_7utility18Quantization_TableIjEEEEEJSI_EEEDaOT_DpRKT0_EUlDpOT_E_JSD_ddjEEESP_SR_DpRKNS4_5StateISS_EEEUlDpRKSW_E_JSD_ddjEEERNS4_13State_ManagerESQ_S14_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EE18destroy_deallocateEv(void *a1)
{
  _ZZN2vp2vx12_GLOBAL__N_121make_bind_back_lambdaIRKNSt3__18functionIFjRKNS0_30DSP_Node_Configuration_OptionsEddjRKNS_7utility18Quantization_TableIjEEEEEJSA_EEEDaOT_DpRKT0_ENUlDpOT_E_D1Ev(a1 + 8);

  operator delete(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_121make_bind_back_lambdaIRKNS_8functionIFjRKNS3_30DSP_Node_Configuration_OptionsEddjRKNS2_7utility18Quantization_TableIjEEEEEJSI_EEEDaOT_DpRKT0_EUlDpOT_E_JSD_ddjEEESP_SR_DpRKNS4_5StateISS_EEEUlDpRKSW_E_JSD_ddjEEERNS4_13State_ManagerESQ_S14_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EE7__cloneEPNS0_6__baseIS1J_EE(uint64_t a1, void *a2)
{
  v2 = a2;
  *a2 = &unk_2881C4FC0;
  std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,double,unsigned int,vp::utility::Quantization_Table<unsigned int> const&)>::__value_func[abi:ne200100]((a2 + 1), a1 + 8);
  v2[5] = 0;
  v2[6] = 0;
  v2 += 5;
  v2[2] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v2, *(a1 + 40), *(a1 + 48), (*(a1 + 48) - *(a1 + 40)) >> 2);
}

void sub_2727103B4(_Unwind_Exception *a1)
{
  std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,double,unsigned int,vp::utility::Quantization_Table<unsigned int> const&)>::~__value_func[abi:ne200100](v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_121make_bind_back_lambdaIRKNS_8functionIFjRKNS3_30DSP_Node_Configuration_OptionsEddjRKNS2_7utility18Quantization_TableIjEEEEEJSI_EEEDaOT_DpRKT0_EUlDpOT_E_JSD_ddjEEESP_SR_DpRKNS4_5StateISS_EEEUlDpRKSW_E_JSD_ddjEEERNS4_13State_ManagerESQ_S14_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EED0Ev(void *a1)
{
  *a1 = &unk_2881C4FC0;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,double,unsigned int,vp::utility::Quantization_Table<unsigned int> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_121make_bind_back_lambdaIRKNS_8functionIFjRKNS3_30DSP_Node_Configuration_OptionsEddjRKNS2_7utility18Quantization_TableIjEEEEEJSI_EEEDaOT_DpRKT0_EUlDpOT_E_JSD_ddjEEESP_SR_DpRKNS4_5StateISS_EEEUlDpRKSW_E_JSD_ddjEEERNS4_13State_ManagerESQ_S14_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EED1Ev(void *a1)
{
  *a1 = &unk_2881C4FC0;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,double,unsigned int,vp::utility::Quantization_Table<unsigned int> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIjJRKNS3_30DSP_Node_Configuration_OptionsEddjRKNS2_7utility18Quantization_TableIjEEEEENS_8functionIFT_DpT0_EEEMNS3_31Downlink_Configuration_DelegateEKDoFSF_SH_EEUlS8_ddjSD_E_NS_9allocatorISN_EEFjS8_ddjSD_EEclES8_OdSS_OjSD_(void *a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unsigned int *a5, uint64_t a6, __n128 a7, __n128 a8)
{
  a7.n128_u64[0] = *a3;
  v8 = *a5;
  v9 = a1[2];
  v10 = a1[3];
  v11 = (a1[1] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  a8.n128_u64[0] = *a4;
  return v9(v11, a2, v8, a6, a7, a8);
}

__n128 _ZNKSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIjJRKNS3_30DSP_Node_Configuration_OptionsEddjRKNS2_7utility18Quantization_TableIjEEEEENS_8functionIFT_DpT0_EEEMNS3_31Downlink_Configuration_DelegateEKDoFSF_SH_EEUlS8_ddjSD_E_NS_9allocatorISN_EEFjS8_ddjSD_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C4F78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_122make_bind_front_lambdaIRKNS_8functionIFdbRKNS3_30DSP_Node_Configuration_OptionsEdddNS_8optionalIdEEEEEJbEEEDaOT_DpRKT0_EUlDpOT_E_JSD_dddSH_EEESM_SO_DpRKNS4_5StateISP_EEEUlDpRKST_E_JSD_dddSH_EEERNS4_13State_ManagerESN_S11_EUlPPKNS4_5ValueEPS18_E_NS_9allocatorIS1D_EEFvS1B_S1C_EEclEOS1B_OS1C_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[2];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v4[3];
  if (v12[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v13 = vp::vx::data_flow::Value::view_storage(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = vp::vx::data_flow::Value::view_storage(v4[4]);
  v15 = *(a1 + 40);
  v16 = *v9;
  v17 = *v11;
  v18 = *v13;
  v27 = *v14;
  v26 = v15;
  v24 = v17;
  v25 = v16;
  v23 = v18;
  v19 = *(a1 + 32);
  if (!v19)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v20 = (*(*v19 + 48))(v19, &v26, v7, &v25, &v24, &v23, &v27);
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v21);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v20;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_122make_bind_front_lambdaIRKNS_8functionIFdbRKNS3_30DSP_Node_Configuration_OptionsEdddNS_8optionalIdEEEEEJbEEEDaOT_DpRKT0_EUlDpOT_E_JSD_dddSH_EEESM_SO_DpRKNS4_5StateISP_EEEUlDpRKST_E_JSD_dddSH_EEERNS4_13State_ManagerESN_S11_EUlPPKNS4_5ValueEPS18_E_NS_9allocatorIS1D_EEFvS1B_S1C_EE18destroy_deallocateEv(void *a1)
{
  std::__function::__value_func<double ()(BOOL,vp::vx::DSP_Node_Configuration_Options const&,double,double,double,std::optional<double>)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_122make_bind_front_lambdaIRKNS_8functionIFdbRKNS3_30DSP_Node_Configuration_OptionsEdddNS_8optionalIdEEEEEJbEEEDaOT_DpRKT0_EUlDpOT_E_JSD_dddSH_EEESM_SO_DpRKNS4_5StateISP_EEEUlDpRKST_E_JSD_dddSH_EEERNS4_13State_ManagerESN_S11_EUlPPKNS4_5ValueEPS18_E_NS_9allocatorIS1D_EEFvS1B_S1C_EE7__cloneEPNS0_6__baseIS1G_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C4F30;
  result = std::__function::__value_func<double ()(BOOL,vp::vx::DSP_Node_Configuration_Options const&,double,double,double,std::optional<double>)>::__value_func[abi:ne200100](a2 + 8, a1 + 8);
  *(a2 + 40) = *(a1 + 40);
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_122make_bind_front_lambdaIRKNS_8functionIFdbRKNS3_30DSP_Node_Configuration_OptionsEdddNS_8optionalIdEEEEEJbEEEDaOT_DpRKT0_EUlDpOT_E_JSD_dddSH_EEESM_SO_DpRKNS4_5StateISP_EEEUlDpRKST_E_JSD_dddSH_EEERNS4_13State_ManagerESN_S11_EUlPPKNS4_5ValueEPS18_E_NS_9allocatorIS1D_EEFvS1B_S1C_EED0Ev(void *a1)
{
  *a1 = &unk_2881C4F30;
  std::__function::__value_func<double ()(BOOL,vp::vx::DSP_Node_Configuration_Options const&,double,double,double,std::optional<double>)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_122make_bind_front_lambdaIRKNS_8functionIFdbRKNS3_30DSP_Node_Configuration_OptionsEdddNS_8optionalIdEEEEEJbEEEDaOT_DpRKT0_EUlDpOT_E_JSD_dddSH_EEESM_SO_DpRKNS4_5StateISP_EEEUlDpRKST_E_JSD_dddSH_EEERNS4_13State_ManagerESN_S11_EUlPPKNS4_5ValueEPS18_E_NS_9allocatorIS1D_EEFvS1B_S1C_EED1Ev(void *a1)
{
  *a1 = &unk_2881C4F30;
  std::__function::__value_func<double ()(BOOL,vp::vx::DSP_Node_Configuration_Options const&,double,double,double,std::optional<double>)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIdJbRKNS3_30DSP_Node_Configuration_OptionsEdddNS_8optionalIdEEEEENS_8functionIFT_DpT0_EEEMNS3_31Downlink_Configuration_DelegateEKDoFSC_SE_EEUlbS8_dddSA_E_NS_9allocatorISK_EEFdbS8_dddSA_EEclEObS8_OdSQ_SQ_OSA_(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6, void *a7, __n128 a8, __n128 a9, __n128 a10)
{
  v10 = *a2;
  a8.n128_u64[0] = *a4;
  a9.n128_u64[0] = *a5;
  a10.n128_u64[0] = *a6;
  v11 = a1[2];
  v12 = a1[3];
  v13 = (a1[1] + (v12 >> 1));
  if (v12)
  {
    return (*(*v13 + v11))(a8, a9, a10);
  }

  else
  {
    return v11(v13, v10, a3, *a7, a7[1], a8.n128_f64[0], a9.n128_f64[0], a10.n128_f64[0]);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIdJbRKNS3_30DSP_Node_Configuration_OptionsEdddNS_8optionalIdEEEEENS_8functionIFT_DpT0_EEEMNS3_31Downlink_Configuration_DelegateEKDoFSC_SE_EEUlbS8_dddSA_E_NS_9allocatorISK_EEFdbS8_dddSA_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C4EE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN2CA17StreamDescriptionEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUlT_E_JS7_EEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_EEERNS4_13State_ManagerESE_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = *v4;
  v9 = *(v4 + 16);
  v10 = *(v4 + 32);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v3);
  result = v8;
  *storage = v8;
  *(storage + 16) = v9;
  *(storage + 32) = v10;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN2CA17StreamDescriptionEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUlT_E_JS7_EEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_EEERNS4_13State_ManagerESE_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4EA0;
  *(a2 + 8) = *(result + 8);
  return result;
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN2CA17StreamDescriptionEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUlT_T0_E0_JS7_dEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_dEEERNS4_13State_ManagerESE_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(__n128 a1, uint64_t a2, uint64_t (******a3)(), vp::vx::data_flow::Value **a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = *a4;
  v6 = **a3;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = *(v7 + 12);
  v10 = *(v7 + 28);
  a1.n128_u64[0] = *(v7 + 32);
  v19 = a1;
  if ((v9 & 0x20) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(v7 + 28);
    if (!v10)
    {
      v12 = (a1.n128_u32[0] + 7) >> 3;
      goto LABEL_11;
    }
  }

  v12 = *(v7 + 24) / v11;
LABEL_11:
  if (v10 >= 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = *(v7 + 28);
  }

  v14 = v9 | 0x20;
  v20 = *v7;
  v21 = *(v7 + 8);
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v15);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v5);
  *storage = v20;
  *(storage + 8) = v21;
  *(storage + 12) = v14;
  *(storage + 16) = v12;
  *(storage + 20) = 1;
  *(storage + 24) = v12;
  *(storage + 28) = v13;
  result = v19;
  *(storage + 32) = v19.n128_u64[0];
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN2CA17StreamDescriptionEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUlT_T0_E0_JS7_dEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_dEEERNS4_13State_ManagerESE_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4E58;
  *(a2 + 8) = *(result + 8);
  return result;
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN2CA17StreamDescriptionEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUlT_T0_E_JS7_dEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_dEEERNS4_13State_ManagerESE_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *vp::vx::data_flow::Value::view_storage(v3[1]);
  v11 = *(v6 + 8);
  v12 = *(v6 + 24);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  *storage = v7;
  result = v11;
  *(storage + 8) = v11;
  *(storage + 24) = v12;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN2CA17StreamDescriptionEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUlT_T0_E_JS7_dEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_dEEERNS4_13State_ManagerESE_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4E10;
  *(a2 + 8) = *(result + 8);
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_12_GLOBAL__N_148make_output_channel_count_override_getter_lambdaENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjE3__0JNS3_30DSP_Node_Configuration_OptionsEEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerET_DpRKNSM_IT0_EEEUlPPKNS4_5ValueEPS15_E_NSE_IS1A_EEFvS18_S19_EEclEOS18_OS19_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v4 = *a3;
  v5 = vp::vx::data_flow::Value::view_storage(**a2);
  v6 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((v5 + 136), (a1 + 8));
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v7 = *(v6 + 10);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v7;
  return result;
}

void sub_272710F0C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 + 32);
  __cxa_end_catch();
  JUMPOUT(0x272710EC8);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_12_GLOBAL__N_148make_output_channel_count_override_getter_lambdaENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjE3__0JNS3_30DSP_Node_Configuration_OptionsEEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerET_DpRKNSM_IT0_EEEUlPPKNS4_5ValueEPS15_E_NSE_IS1A_EEFvS18_S19_EE18destroy_deallocateEv(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_12_GLOBAL__N_148make_output_channel_count_override_getter_lambdaENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjE3__0JNS3_30DSP_Node_Configuration_OptionsEEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerET_DpRKNSM_IT0_EEEUlPPKNS4_5ValueEPS15_E_NSE_IS1A_EEFvS18_S19_EE7destroyEv(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_12_GLOBAL__N_148make_output_channel_count_override_getter_lambdaENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjE3__0JNS3_30DSP_Node_Configuration_OptionsEEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerET_DpRKNSM_IT0_EEEUlPPKNS4_5ValueEPS15_E_NSE_IS1A_EEFvS18_S19_EE7__cloneEPNS0_6__baseIS1C_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C4DC8;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  *(a2 + 32) = *(a1 + 32);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_12_GLOBAL__N_148make_output_channel_count_override_getter_lambdaENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjE3__0JNS3_30DSP_Node_Configuration_OptionsEEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerET_DpRKNSM_IT0_EEEUlPPKNS4_5ValueEPS15_E_NSE_IS1A_EEFvS18_S19_EED0Ev(uint64_t a1)
{
  *a1 = &unk_2881C4DC8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_12_GLOBAL__N_148make_output_channel_count_override_getter_lambdaENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjE3__0JNS3_30DSP_Node_Configuration_OptionsEEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerET_DpRKNSM_IT0_EEEUlPPKNS4_5ValueEPS15_E_NSE_IS1A_EEFvS18_S19_EED1Ev(uint64_t a1)
{
  *a1 = &unk_2881C4DC8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjRKNS_8functionIFjRKNS3_30DSP_Node_Configuration_OptionsEdjEEEJSB_djEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSB_djEEERNS4_13State_ManagerET_DpRKNSL_IT0_EEEUlPPKNS4_5ValueEPS14_E_NS_9allocatorIS19_EEFvS17_S18_EEclEOS17_OS18_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *vp::vx::data_flow::Value::view_storage(v4[2]);
  v16 = *v9;
  v15 = v10;
  v11 = *(a1 + 32);
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v12 = (*(*v11 + 48))(v11, v7, &v16, &v15);
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v13);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v12;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjRKNS_8functionIFjRKNS3_30DSP_Node_Configuration_OptionsEdjEEEJSB_djEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSB_djEEERNS4_13State_ManagerET_DpRKNSL_IT0_EEEUlPPKNS4_5ValueEPS14_E_NS_9allocatorIS19_EEFvS17_S18_EE18destroy_deallocateEv(void *a1)
{
  std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,unsigned int)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjRKNS_8functionIFjRKNS3_30DSP_Node_Configuration_OptionsEdjEEEJSB_djEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSB_djEEERNS4_13State_ManagerET_DpRKNSL_IT0_EEEUlPPKNS4_5ValueEPS14_E_NS_9allocatorIS19_EEFvS17_S18_EED0Ev(void *a1)
{
  *a1 = &unk_2881C4D80;
  std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,unsigned int)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjRKNS_8functionIFjRKNS3_30DSP_Node_Configuration_OptionsEdjEEEJSB_djEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSB_djEEERNS4_13State_ManagerET_DpRKNSL_IT0_EEEUlPPKNS4_5ValueEPS14_E_NS_9allocatorIS19_EEFvS17_S18_EED1Ev(void *a1)
{
  *a1 = &unk_2881C4D80;
  std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,unsigned int)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIjJRKNS3_30DSP_Node_Configuration_OptionsEdjEEENS_8functionIFT_DpT0_EEEMNS3_31Downlink_Configuration_DelegateEKDoFSA_SC_EEUlS8_djE_NS_9allocatorISI_EEFjS8_djEEclES8_OdOj(void *a1, uint64_t a2, unint64_t *a3, unsigned int *a4, __n128 a5)
{
  a5.n128_u64[0] = *a3;
  v5 = *a4;
  v6 = a1[2];
  v7 = a1[3];
  v8 = (a1[1] + (v7 >> 1));
  if (v7)
  {
    return (*(*v8 + v6))(a5);
  }

  else
  {
    return v6(v8, a2, v5, a5.n128_f64[0]);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIjJRKNS3_30DSP_Node_Configuration_OptionsEdjEEENS_8functionIFT_DpT0_EEEMNS3_31Downlink_Configuration_DelegateEKDoFSA_SC_EEUlS8_djE_NS_9allocatorISI_EEFjS8_djEE7__cloneEPNS0_6__baseISL_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C4D38;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_272711C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    operator delete(v37);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::get_block_size_is_fixed(uint64_t a1, uint64_t a2, int a3)
{
  v39 = *MEMORY[0x277D85DE8];
  if ((a3 - 1) > 2)
  {
    v6 = "voice mix";
  }

  else
  {
    v6 = off_279E4A458[a3 - 1];
  }

  applesauce::CF::make_StringRef(@"downlink %s DSP block size is fixed", &cf, v6);
  v18 = 0;
  v19 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v7 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v7)
  {
    vp::vx::data_flow::State_Manager::find_state(&v30, (a2 + 64), *(v7 + 6));
    LODWORD(v36) = v30;
    v37 = v31;
    v31 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v18);
    v18 = v36;
    v19 = v37;
    v37 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v36);
    vp::vx::data_flow::State<void>::~State(&v30);
  }

  if (!v19)
  {
    if (a3 > 1)
    {
      LOBYTE(v30) = a3 != 2;
      vp::vx::Voice_Processor_State_Manager::create_state<BOOL>(&v36, (a2 + 16), &v30);
      v8 = v36;
      v16 = v36;
      v14 = v37;
      v17 = v37;
    }

    else
    {
      if (a3)
      {
        v9 = *(a2 + 560);
        vp::vx::Voice_Processor::get_configuration_options(v23, a2, 1);
        vp::vx::Voice_Processor::get_sample_rate(v22, a2, 1);
        vp::vx::Voice_Processor::get_sample_rate(v21, a2, 2);
        vp::vx::Voice_Processor::get_block_size(v20, a2, 2);
        v36 = &unk_2881C06A8;
        *&v37 = v9;
        v38 = &v36;
        v32 = v23[0];
        v33 = v22[0];
        v34 = v21[0];
        v35 = v20[0];
        vp::vx::data_flow::State_Manager::create_state(&v30, (a2 + 64), &v36);
        v8 = v30;
        v27 = v30;
        v14 = v31;
        v31 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v30);
        std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v36);
        v24 = v8;
        v28 = 0;
        v29 = 0;
        vp::vx::data_flow::State<void>::~State(&v27);
        v16 = v8;
        v25 = 0;
        v26 = 0;
        vp::vx::data_flow::State<void>::~State(&v24);
        vp::vx::data_flow::State<void>::~State(v20);
        vp::vx::data_flow::State<void>::~State(v21);
        vp::vx::data_flow::State<void>::~State(v22);
        v10 = v23;
LABEL_13:
        vp::vx::data_flow::State<void>::~State(v10);
        vp::vx::data_flow::State<void>::~State(&v18);
        v18 = v8;
        v19 = v14;
        v17 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v16);
        v11 = v18;
        v12 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        v36 = v12;
        LODWORD(v37) = v11;
        std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v36, &v36);
        if (v36)
        {
          CFRelease(v36);
        }

        goto LABEL_17;
      }

      LOBYTE(v30) = 0;
      vp::vx::Voice_Processor_State_Manager::create_state<BOOL>(&v36, (a2 + 16), &v30);
      v8 = v36;
      v16 = v36;
      v14 = v37;
    }

    v37 = 0uLL;
    v10 = &v36;
    goto LABEL_13;
  }

LABEL_17:
  *a1 = v18;
  *(a1 + 8) = v19;
  v19 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v18);
  if (cf)
  {
    CFRelease(cf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_272712088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, uint64_t a25, uint64_t a26, int a27, uint64_t a28, uint64_t a29, int a30)
{
  if (a2)
  {
    vp::vx::data_flow::State<void>::~State(&a24);
    vp::vx::data_flow::State<void>::~State(&a27);
    vp::vx::data_flow::State<void>::~State(&a30);
    std::recursive_mutex::unlock((v30 + 184));
    vp::vx::data_flow::State<void>::~State(&a18);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27271264C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, uint64_t a25, uint64_t a26, int a27, uint64_t a28, uint64_t a29, int a30)
{
  vp::vx::data_flow::State<void>::~State(&a24);
  vp::vx::data_flow::State<void>::~State((v31 - 152));
  vp::vx::data_flow::State<void>::~State(&a27);
  vp::vx::data_flow::State<void>::~State(&a30);
  std::recursive_mutex::unlock((v30 + 184));
  vp::vx::data_flow::State<void>::~State(&a18);
  applesauce::CF::StringRef::~StringRef(&a14);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::get_downlink_SRC_algorithm(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "downlink SRC algorithm", 22, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v17 = 0;
  v18 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v24, (a2 + 64), *(v4 + 6));
    v5 = v24;
    LODWORD(v26) = v24;
    v11 = v25;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v17);
    v17 = v5;
    v18 = v11;
    v27 = 0;
    v28 = 0;
    vp::vx::data_flow::State<void>::~State(&v26);
    vp::vx::data_flow::State<void>::~State(&v24);
  }

  if (!v18)
  {
    vp::vx::Voice_Processor::get_downlink_configuration(v19, a2);
    v26 = &unk_2881C0810;
    LOBYTE(v27) = 0;
    v29 = &v26;
    v23 = v19[0];
    vp::vx::data_flow::State_Manager::create_state(&v24, (a2 + 64), &v26);
    v6 = v24;
    v20 = v24;
    v12 = v25;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v24);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v26);
    v14 = v6;
    v21 = 0;
    v22 = 0;
    vp::vx::data_flow::State<void>::~State(&v20);
    vp::vx::data_flow::State<void>::~State(v19);
    vp::vx::data_flow::State<void>::~State(&v17);
    v17 = v6;
    v18 = v12;
    v15 = 0;
    v16 = 0;
    vp::vx::data_flow::State<void>::~State(&v14);
    v7 = v17;
    v8 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v26 = v8;
    LODWORD(v27) = v7;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v26, &v26);
    if (v26)
    {
      CFRelease(v26);
    }
  }

  *this = v17;
  *(this + 8) = v18;
  v18 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v17);
  if (cf)
  {
    CFRelease(cf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_272712938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::get_downlink_SRC_quality(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "downlink SRC quality", 20, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v17 = 0;
  v18 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v24, (a2 + 64), *(v4 + 6));
    v5 = v24;
    LODWORD(v26) = v24;
    v11 = v25;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v17);
    v17 = v5;
    v18 = v11;
    v27 = 0;
    v28 = 0;
    vp::vx::data_flow::State<void>::~State(&v26);
    vp::vx::data_flow::State<void>::~State(&v24);
  }

  if (!v18)
  {
    vp::vx::Voice_Processor::get_downlink_configuration(v19, a2);
    v26 = &unk_2881C0858;
    LOBYTE(v27) = 0;
    v29 = &v26;
    v23 = v19[0];
    vp::vx::data_flow::State_Manager::create_state(&v24, (a2 + 64), &v26);
    v6 = v24;
    v20 = v24;
    v12 = v25;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v24);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v26);
    v14 = v6;
    v21 = 0;
    v22 = 0;
    vp::vx::data_flow::State<void>::~State(&v20);
    vp::vx::data_flow::State<void>::~State(v19);
    vp::vx::data_flow::State<void>::~State(&v17);
    v17 = v6;
    v18 = v12;
    v15 = 0;
    v16 = 0;
    vp::vx::data_flow::State<void>::~State(&v14);
    v7 = v17;
    v8 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v26 = v8;
    LODWORD(v27) = v7;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v26, &v26);
    if (v26)
    {
      CFRelease(v26);
    }
  }

  *this = v17;
  *(this + 8) = v18;
  v18 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v17);
  if (cf)
  {
    CFRelease(cf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_272712C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::get_should_enable_graph_audio_recorders(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v31[6] = *MEMORY[0x277D85DE8];
  v7 = CFStringCreateWithBytes(0, "enable graph audio recorders", 28, 0x8000100u, 0);
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = 0;
  v9 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &v7);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(v27, (a2 + 64), *(v4 + 6));
    LODWORD(v12) = *v27;
    *v13 = *&v27[8];
    *&v27[8] = 0;
    *&v27[16] = 0;
    vp::vx::data_flow::State<void>::~State(&v8);
    v8 = v12;
    v9 = *v13;
    v13[0] = 0;
    v13[1] = 0;
    vp::vx::data_flow::State<void>::~State(&v12);
    vp::vx::data_flow::State<void>::~State(v27);
  }

  if (!v9)
  {
    vp::Context::Context(&v12, (a2 + 264));
    v25 = *(a2 + 488);
    v26 = *(a2 + 492);
    (*(*(a2 + 8) + 24))(v27);
    v10 = *v27;
    v11 = *&v27[8];
    *&v27[8] = 0;
    *&v27[16] = 0;
    vp::vx::data_flow::State<void>::~State(v27);
    v31[0] = v15;
    *(v31 + 7) = *(&v15 + 7);
    v13[0] = 0;
    v14 = 0;
    v15 = 0uLL;
    v30[0] = v17;
    *(v30 + 7) = *(&v17 + 7);
    v16 = 0;
    v17 = 0uLL;
    v29[0] = v19;
    *(v29 + 7) = *(&v19 + 7);
    v18 = 0;
    v19 = 0uLL;
    v28[0] = v21;
    *(v28 + 7) = *(&v21 + 7);
    __p = 0;
    v21 = 0uLL;
    *v27 = v22;
    *&v27[16] = v23[0];
    *&v27[25] = *(v23 + 9);
    cf = 0;
    operator new();
  }

  *this = v8;
  *(this + 8) = v9;
  v9 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v8);
  if (v7)
  {
    CFRelease(v7);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_272713118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::get_should_connect_to_RPB(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "connect to RPB", 14, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v16 = 0;
  v17 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v24, (a2 + 64), *(v4 + 6));
    v5 = v24;
    LODWORD(v26) = v24;
    v13 = v25;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v16);
    v16 = v5;
    v17 = v13;
    v27 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v26);
    vp::vx::data_flow::State<void>::~State(&v24);
  }

  if (!v17)
  {
    v6 = *(a2 + 360);
    (*(*(a2 + 8) + 24))(&v26, a2 + 8, 8);
    v7 = v26;
    v18 = v26;
    v19 = v27;
    v27 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v26);
    v26 = &unk_2881C0CF0;
    LOBYTE(v27) = v6;
    v28 = &v26;
    v23 = v7;
    vp::vx::data_flow::State_Manager::create_state(&v24, (a2 + 64), &v26);
    v8 = v24;
    v20 = v24;
    v14 = v25;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v24);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v26);
    LODWORD(v26) = v8;
    v21 = 0;
    v22 = 0;
    vp::vx::data_flow::State<void>::~State(&v20);
    vp::vx::data_flow::State<void>::~State(&v18);
    vp::vx::data_flow::State<void>::~State(&v16);
    v16 = v8;
    v17 = v14;
    v27 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v26);
    v9 = v16;
    v10 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v26 = v10;
    LODWORD(v27) = v9;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v26, &v26);
    if (v26)
    {
      CFRelease(v26);
    }
  }

  *this = v16;
  *(this + 8) = v17;
  v17 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v16);
  if (cf)
  {
    CFRelease(cf);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_272713438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void boost::container::dtl::flat_tree<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,boost::container::dtl::select1st<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,std::less<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,boost::container::small_vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,16ul,vp::Allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>,void>>::insert_or_assign<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>&>(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v34 = 0;
  if (a3)
  {
    v35 = a3;
    inserted = boost::container::dtl::flat_tree<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,boost::container::dtl::select1st<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,std::less<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,boost::container::small_vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,16ul,vp::Allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>,void>>::priv_insert_unique_prepare(a2, &v35, a4, &v34);
  }

  else
  {
    v10 = a2[1];
    v11 = a2[2];
    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 == 0;
    }

    if (!v12)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v35 = v10 + 24 * v11;
    inserted = boost::container::dtl::flat_tree<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,boost::container::dtl::select1st<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,std::less<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,boost::container::small_vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,16ul,vp::Allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>,void>>::priv_insert_unique_prepare(v10, &v35, a4, &v34);
  }

  *(a1 + 8) = inserted;
  if (inserted)
  {
    v13 = v34;
    v14 = a2[1];
    if (v14 > v34)
    {
      goto LABEL_38;
    }

    v15 = a2[2];
    if (!v14 && v15)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v16 = (v14 + 24 * v15);
    if (v34 > v16)
    {
LABEL_38:
      __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
    }

    v17 = a2[3];
    if (v17 < v15)
    {
      __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
    }

    if (v17 == v15)
    {
      v33 = v34;

      boost::container::vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>,boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>*,std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>&>>(a1, a2, v33, a5, a4);
    }

    else
    {
      if (v16 == v34)
      {
        *v16 = *a4;
        v16[1] = *a5;
        v32 = a5[1];
        v16[2] = v32;
        if (v32)
        {
          atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
        }

        ++a2[2];
      }

      else
      {
        v18 = v16 - 3;
        v19 = *(v16 - 3);
        *(v16 + 1) = *(v16 - 1);
        *(v16 - 2) = 0;
        *(v16 - 1) = 0;
        *v16 = v19;
        ++a2[2];
        if (v16 - 3 != v13)
        {
          v20 = v16 - 3;
          do
          {
            v21 = *(v20 - 3);
            v20 -= 3;
            v22 = *(v18 - 1);
            *(v18 - 2) = 0;
            *(v18 - 1) = 0;
            *v18 = v21;
            v23 = v18[2];
            *(v18 + 1) = v22;
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v23);
            }

            v18 = v20;
          }

          while (v20 != v13);
        }

        v24 = *a4;
        v26 = *a5;
        v25 = a5[1];
        if (v25)
        {
          atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
        }

        *v13 = v24;
        v13[1] = v26;
        v27 = v13[2];
        v13[2] = v25;
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }
      }

      *a1 = v13;
    }
  }

  else
  {
    if (a2[2] < 0xAAAAAAAAAAAAAAABLL * ((v34 - a2[1]) >> 3))
    {
      __assert_rtn("nth", "vector.hpp", 1688, "this->m_holder.m_size >= n");
    }

    v28 = v34;
    *a1 = v34;
    v30 = *a5;
    v29 = a5[1];
    if (v29)
    {
      atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
    }

    v31 = *(v28 + 16);
    *(v28 + 8) = v30;
    *(v28 + 16) = v29;
    if (v31)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }
}

void *boost::container::vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>,boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>*,std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>&>>(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v10 = a2[1];
  v11 = boost::container::vector_alloc_holder<boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a2[2], a2[3]);
  if (v11 >= 0xAAAAAAAAAAAAAABLL)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
  }

  v13 = v11;
  result = (*(**a2 + 16))(*a2, 24 * v11, 8);
  v15 = result;
  v16 = a2[1];
  v17 = a2[2];
  v18 = result;
  if (v16 != a3)
  {
    v19 = a2[1];
    v18 = result;
    do
    {
      *v18 = *v19;
      *(v18 + 1) = *(v19 + 8);
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      v19 += 24;
      v18 += 3;
    }

    while (v19 != a3);
  }

  v20 = v16 + 24 * v17;
  *v18 = *a5;
  v21 = a4[1];
  v18[1] = *a4;
  v18[2] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  if (v20 != a3)
  {
    v22 = v18 + 4;
    v23 = a3;
    do
    {
      *(v22 - 1) = *v23;
      *v22 = *(v23 + 8);
      v22 = (v22 + 24);
      *(v23 + 8) = 0;
      *(v23 + 16) = 0;
      v23 += 24;
    }

    while (v23 != v20);
  }

  if (v16)
  {
    v24 = a2[2];
    if (v24)
    {
      v25 = (v16 + 16);
      do
      {
        if (*v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v25);
        }

        v25 += 3;
        --v24;
      }

      while (v24);
    }

    v26 = a2[3];
    result = boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>::deallocate(a2, a2[1]);
  }

  v27 = a2[2] + 1;
  a2[1] = v15;
  a2[2] = v27;
  a2[3] = v13;
  *a1 = v15 + a3 - v10;
  return result;
}

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_should_connect_to_RPBEvENK3__0clEvEUlbE_JbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EEclEOSW_OSX_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = (*(a1 + 8) | *vp::vx::data_flow::Value::view_storage(**a2)) ^ 1;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_should_connect_to_RPBEvENK3__0clEvEUlbE_JbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0CF0;
  *(a2 + 8) = *(result + 8);
  return result;
}

char *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor39get_should_enable_graph_audio_recordersEvENK3__0clEvEUlbE_JbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EEclEOSW_OSX_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v4 = *a3;
  v5 = *vp::vx::data_flow::Value::view_storage(**a2);
  v6 = *(a1 + 24);
  v7 = CFStringCreateWithBytes(0, "Carrier", 7, 0x8000100u, 0);
  v14 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = v7;
  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(a1 + 16), &v14) == kCFCompareEqualTo)
  {
    v6 = 1;
  }

  CFRelease(v8);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(a1 + 204);
    if (*(a1 + 200) <= 6u)
    {
      v9 = 0;
    }
  }

  if ((v9 & v6) != 0)
  {
    v10 = 1;
  }

  else if (*(a1 + 104) == 1)
  {
    if (*(a1 + 172) > 6u)
    {
      v10 = *(a1 + 176);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v11);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v10;
  return result;
}

void sub_272713BA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor39get_should_enable_graph_audio_recordersEvENK3__0clEvEUlbE_JbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EE18destroy_deallocateEv(uint64_t a1)
{
  vp::Context::~Context((a1 + 8));

  operator delete(a1);
}

vp::Context *_ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor39get_should_enable_graph_audio_recordersEvENK3__0clEvEUlbE_JbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t a1, void *a2)
{
  *a2 = &unk_2881C0CA8;
  result = vp::Context::Context((a2 + 1), (a1 + 8));
  a2[25] = *(a1 + 200);
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor39get_should_enable_graph_audio_recordersEvENK3__0clEvEUlbE_JbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EED0Ev(void *a1)
{
  *a1 = &unk_2881C0CA8;
  vp::Context::~Context((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor39get_should_enable_graph_audio_recordersEvENK3__0clEvEUlbE_JbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EED1Ev(void *a1)
{
  *a1 = &unk_2881C0CA8;
  vp::Context::~Context((a1 + 1));
  return a1;
}

int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_downlink_SRC_qualityEvENK3__0clEvEUlRKNS3_22Downlink_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  if (*(v4 + 16))
  {
    v5 = *(v4 + 12);
  }

  else
  {
    v5 = 127;
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_downlink_SRC_qualityEvENK3__0clEvEUlRKNS3_22Downlink_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0858;
  *(a2 + 8) = *(result + 8);
  return result;
}

int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor26get_downlink_SRC_algorithmEvENK3__0clEvEUlRKNS3_22Downlink_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  if (*(v4 + 8))
  {
    v5 = *(v4 + 4);
  }

  else
  {
    v5 = 1852797549;
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor26get_downlink_SRC_algorithmEvENK3__0clEvEUlRKNS3_22Downlink_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0810;
  *(a2 + 8) = *(result + 8);
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22DSP_Node_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_configurationENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Configuration_Context>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_35;
  }

  v8 = *(a1 + 8);
  v47 = 0;
  *v45 = 0u;
  v46 = 0u;
  *v44 = 0u;
  v48 = 1065353216;
  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  v51 = 0u;
  memset(v52, 0, sizeof(v52));
  memset(v53, 0, 25);
  v9 = (*(*v7 + 64))(v7, v6, *(a1 + 32), v44);
  v10 = v9;
  if (v9)
  {
    *v32 = *v44;
    v44[0] = 0;
    v44[1] = 0;
    v12 = v45[0];
    v11 = v45[1];
    v13 = v46;
    v45[1] = 0;
    *&v46 = 0;
    v45[0] = 0;
    v33[0] = v12;
    v33[1] = v11;
    *&v34 = v13;
    *(&v34 + 1) = *(&v46 + 1);
    v35 = v47;
    v36 = v48;
    if (v47)
    {
      v14 = *(*(&v13 + 1) + 8);
      if ((v13 & (v13 - 1)) != 0)
      {
        if (*(&v13 + 1) >= v13)
        {
          v14 = *(&v13 + 1) % v13;
        }
      }

      else
      {
        v14 = *(&v13 + 1) & (v13 - 1);
      }

      *(v11 + v14) = &v34 + 8;
      *(&v46 + 1) = 0;
      v47 = 0;
    }

    *&v38[0] = *&v50[0];
    v37 = v49;
    memset(v50, 0, sizeof(v50));
    v49 = 0uLL;
    *(v38 + 8) = *(v50 + 8);
    *(&v38[1] + 1) = *(&v50[1] + 1);
    v39 = v51;
    v51 = 0uLL;
    v25 = v52[0];
    memset(v52, 0, sizeof(v52));
    *&v40[1] = *&v52[1];
    v40[0] = v25;
    v40[3] = v52[3];
    v41[0] = v53[0];
    *&v41[1] = *&v53[1];
    memset(v53, 0, 24);
    BYTE8(v41[1]) = BYTE8(v53[1]);
  }

  else
  {
    v15 = vp::get_log(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(__p, v8, "vp::vx::Voice_Processor]", 23);
      v17 = v43;
      v18 = v43;
      v19 = __p[1];
      log = vp::get_log(log_context_info);
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        if (v18 >= 0)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        v21 = __p[0];
        if (v18 >= 0)
        {
          v21 = __p;
        }

        if (v20)
        {
          v22 = " ";
        }

        else
        {
          v22 = "";
        }

        v23 = *(a1 + 32) - 1;
        if (v23 > 2)
        {
          v24 = "voice mix";
        }

        else
        {
          v24 = off_279E4A458[v23];
        }

        *buf = 136315650;
        *&buf[4] = v21;
        v55 = 2080;
        v56 = v22;
        v57 = 2080;
        v58 = v24;
        _os_log_impl(&dword_2724B4000, log, OS_LOG_TYPE_ERROR, "%s%sfailed to get configuration for downlink %s DSP node", buf, 0x20u);
        LOBYTE(v18) = v43;
      }

      if ((v18 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  *buf = v53;
  std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v52[1])
  {
    v52[2] = v52[1];
    operator delete(v52[1]);
  }

  *buf = &v51;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = v50 + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v49;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(*(&v46 + 1));
  v26 = v45[1];
  v45[1] = 0;
  if (v26)
  {
    operator delete(v26);
  }

  if ((SHIBYTE(v45[0]) & 0x80000000) == 0)
  {
    if (v10)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  operator delete(v44[0]);
  if ((v10 & 1) == 0)
  {
LABEL_35:
    v35 = 0;
    *v33 = 0u;
    v34 = 0u;
    *v32 = 0u;
    v36 = 1065353216;
    v37 = 0u;
    memset(v38, 0, sizeof(v38));
    v39 = 0u;
    memset(v40, 0, sizeof(v40));
    memset(v41, 0, 25);
  }

LABEL_36:
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v27);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  *(storage + 16) = v33[0];
  *storage = *v32;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table(storage + 24, &v33[1]);
  *(storage + 80) = 0;
  *(storage + 88) = 0;
  *(storage + 64) = 0;
  *(storage + 72) = 0;
  *(storage + 64) = v37;
  *(storage + 80) = *&v38[0];
  v37 = 0uLL;
  *(storage + 96) = 0;
  *(storage + 104) = 0;
  *(storage + 88) = *(v38 + 8);
  *(storage + 104) = *(&v38[1] + 1);
  *(storage + 112) = 0;
  memset(v38, 0, sizeof(v38));
  *(storage + 120) = 0;
  *(storage + 128) = 0;
  *(storage + 112) = v39;
  v39 = 0uLL;
  *(storage + 128) = v40[0];
  *(storage + 136) = 0;
  *(storage + 144) = 0;
  *(storage + 152) = 0;
  *(storage + 136) = *&v40[1];
  *(storage + 152) = v40[3];
  *(storage + 160) = 0;
  memset(v40, 0, sizeof(v40));
  *(storage + 168) = 0;
  *(storage + 176) = 0;
  *(storage + 160) = v41[0];
  *(storage + 176) = *&v41[1];
  memset(v41, 0, 24);
  *(storage + 184) = BYTE8(v41[1]);
  v44[0] = v41;
  std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](v44);
  if (v40[1])
  {
    v40[2] = v40[1];
    operator delete(v40[1]);
  }

  v44[0] = &v39;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
  v44[0] = v38 + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
  v44[0] = &v37;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(*(&v34 + 1));
  v29 = v33[1];
  v33[1] = 0;
  if (v29)
  {
    operator delete(v29);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void sub_2727144C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::DSP_Node_Configuration::~DSP_Node_Configuration(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22DSP_Node_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_configurationENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22DSP_Node_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_configurationENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22DSP_Node_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_configurationENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C04F8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22DSP_Node_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_configurationENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EED0Ev(void *a1)
{
  *a1 = &unk_2881C04F8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22DSP_Node_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_configurationENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EED1Ev(void *a1)
{
  *a1 = &unk_2881C04F8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor15get_sample_rateENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_E0_JN2CA17StreamDescriptionEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESD_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor15get_sample_rateENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_E0_JN2CA17StreamDescriptionEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESD_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C07C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor15get_sample_rateENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JN2CA17StreamDescriptionEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESD_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor15get_sample_rateENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JN2CA17StreamDescriptionEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESD_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0780;
  *(a2 + 8) = *(result + 8);
  return result;
}

double *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor15get_sample_rateENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JNS3_30DSP_Node_Configuration_OptionsEdddNS_8optionalIdEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_dddSI_EEERNS4_13State_ManagerESK_SR_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[2];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v4[3];
  if (v12[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v13 = vp::vx::data_flow::Value::view_storage(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = v4[4];
  if (v14[2] == &vp::vx::data_flow::Value::type_id<std::optional<double>>(void)::s_type_id)
  {
    v15 = vp::vx::data_flow::Value::view_storage(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = v7[1];
  v25[0] = *v7;
  v25[1] = v16;
  v17 = v7[2];
  v18 = v7[3];
  v19 = v7[4];
  *&v26[9] = *(v7 + 73);
  v25[3] = v18;
  *v26 = v19;
  v25[2] = v17;
  std::unordered_map<std::string,unsigned int>::unordered_map(v27, (v7 + 6));
  std::unordered_map<std::string,unsigned int>::unordered_map(__p, v7 + 136);
  v20 = (*(**(a1 + 8) + 32))(*(a1 + 8), 1, v25, *v15, v15[1], *v9, *v11, *v13);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(__p[2]);
  v21 = __p[0];
  __p[0] = 0;
  if (v21)
  {
    operator delete(v21);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v27[2]);
  v22 = v27[0];
  v27[0] = 0;
  if (v22)
  {
    operator delete(v22);
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v23);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v20;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor15get_sample_rateENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JNS3_30DSP_Node_Configuration_OptionsEdddNS_8optionalIdEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_dddSI_EEERNS4_13State_ManagerESK_SR_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C0738;
  a2[1] = v2;
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor15get_sample_rateENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_RKT0_E_JNS3_30DSP_Node_Configuration_OptionsEdEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_dEEERNS4_13State_ManagerESD_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = vp::vx::data_flow::Value::view_storage(v3[1]);
  if (*(v6 + 8))
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = *v8;
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v10);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v9;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor15get_sample_rateENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_RKT0_E_JNS3_30DSP_Node_Configuration_OptionsEdEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_dEEERNS4_13State_ManagerESD_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C06F0;
  *(a2 + 8) = *(result + 8);
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor18get_fft_block_sizeENS3_20Downlink_DSP_Node_IDEE3__0JNS3_30DSP_Node_Configuration_OptionsEdjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_djEEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[2];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v7[1];
  v21[0] = *v7;
  v21[1] = v12;
  v13 = v7[2];
  v14 = v7[3];
  v15 = v7[4];
  *&v22[9] = *(v7 + 73);
  v21[3] = v14;
  *v22 = v15;
  v21[2] = v13;
  std::unordered_map<std::string,unsigned int>::unordered_map(v23, (v7 + 6));
  std::unordered_map<std::string,unsigned int>::unordered_map(__p, v7 + 136);
  v16 = (*(**(a1 + 8) + 56))(*(a1 + 8), v21, *v11, a1 + 16, *v9);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(__p[2]);
  v17 = __p[0];
  __p[0] = 0;
  if (v17)
  {
    operator delete(v17);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v23[2]);
  v18 = v23[0];
  v23[0] = 0;
  if (v18)
  {
    operator delete(v18);
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v19);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v16;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor18get_fft_block_sizeENS3_20Downlink_DSP_Node_IDEE3__0JNS3_30DSP_Node_Configuration_OptionsEdjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_djEEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    __p[3] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor18get_fft_block_sizeENS3_20Downlink_DSP_Node_IDEE3__0JNS3_30DSP_Node_Configuration_OptionsEdjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_djEEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor18get_fft_block_sizeENS3_20Downlink_DSP_Node_IDEE3__0JNS3_30DSP_Node_Configuration_OptionsEdjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_djEEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(void *a1, void *a2)
{
  v2 = a1[1];
  *a2 = &unk_2881C0660;
  a2[1] = v2;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a2 + 2), a1[2], a1[3], (a1[3] - a1[2]) >> 2);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor18get_fft_block_sizeENS3_20Downlink_DSP_Node_IDEE3__0JNS3_30DSP_Node_Configuration_OptionsEdjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_djEEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EED0Ev(void *a1)
{
  *a1 = &unk_2881C0660;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor18get_fft_block_sizeENS3_20Downlink_DSP_Node_IDEE3__0JNS3_30DSP_Node_Configuration_OptionsEdjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_djEEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EED1Ev(void *a1)
{
  *a1 = &unk_2881C0660;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor23get_block_size_is_fixedENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JNS3_30DSP_Node_Configuration_OptionsEddjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_ddjEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[2];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v4[3];
  if (v12[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v13 = vp::vx::data_flow::Value::view_storage(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = v7[1];
  v23[0] = *v7;
  v23[1] = v14;
  v15 = v7[2];
  v16 = v7[3];
  v17 = v7[4];
  *&v24[9] = *(v7 + 73);
  v23[3] = v16;
  *v24 = v17;
  v23[2] = v15;
  std::unordered_map<std::string,unsigned int>::unordered_map(v25, (v7 + 6));
  std::unordered_map<std::string,unsigned int>::unordered_map(__p, v7 + 136);
  v18 = (*(**(a1 + 8) + 48))(*(a1 + 8), v23, *v13, *v9, *v11);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(__p[2]);
  v19 = __p[0];
  __p[0] = 0;
  if (v19)
  {
    operator delete(v19);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v25[2]);
  v20 = v25[0];
  v25[0] = 0;
  if (v20)
  {
    operator delete(v20);
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v21);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v18;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor23get_block_size_is_fixedENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JNS3_30DSP_Node_Configuration_OptionsEddjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_ddjEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C06A8;
  a2[1] = v2;
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlDpT_E1_JNS3_30DSP_Node_Configuration_OptionsEdjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_djEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[2];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v7[1];
  v21[0] = *v7;
  v21[1] = v12;
  v13 = v7[2];
  v14 = v7[3];
  v15 = v7[4];
  *&v22[9] = *(v7 + 73);
  v21[3] = v14;
  *v22 = v15;
  v21[2] = v13;
  std::unordered_map<std::string,unsigned int>::unordered_map(v23, (v7 + 6));
  std::unordered_map<std::string,unsigned int>::unordered_map(__p, v7 + 136);
  v16 = (*(**(a1 + 8) + 64))(*(a1 + 8), v21, *v11, *v9);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(__p[2]);
  v17 = __p[0];
  __p[0] = 0;
  if (v17)
  {
    operator delete(v17);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v23[2]);
  v18 = v23[0];
  v23[0] = 0;
  if (v18)
  {
    operator delete(v18);
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v19);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v16;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlDpT_E1_JNS3_30DSP_Node_Configuration_OptionsEdjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_djEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C0618;
  a2[1] = v2;
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlDpT_E0_JNS3_30DSP_Node_Configuration_OptionsEddjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_ddjEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[2];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v4[3];
  if (v12[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v13 = vp::vx::data_flow::Value::view_storage(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = v7[1];
  v23[0] = *v7;
  v23[1] = v14;
  v15 = v7[2];
  v16 = v7[3];
  v17 = v7[4];
  *&v24[9] = *(v7 + 73);
  v23[3] = v16;
  *v24 = v17;
  v23[2] = v15;
  std::unordered_map<std::string,unsigned int>::unordered_map(v25, (v7 + 6));
  std::unordered_map<std::string,unsigned int>::unordered_map(__p, v7 + 136);
  v18 = (*(**(a1 + 8) + 40))(*(a1 + 8), v23, *v13, a1 + 16, *v9, *v11);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(__p[2]);
  v19 = __p[0];
  __p[0] = 0;
  if (v19)
  {
    operator delete(v19);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v25[2]);
  v20 = v25[0];
  v25[0] = 0;
  if (v20)
  {
    operator delete(v20);
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v21);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v18;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlDpT_E0_JNS3_30DSP_Node_Configuration_OptionsEddjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_ddjEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    __p[3] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlDpT_E0_JNS3_30DSP_Node_Configuration_OptionsEddjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_ddjEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlDpT_E0_JNS3_30DSP_Node_Configuration_OptionsEddjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_ddjEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(void *a1, void *a2)
{
  v2 = a1[1];
  *a2 = &unk_2881C05D0;
  a2[1] = v2;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a2 + 2), a1[2], a1[3], (a1[3] - a1[2]) >> 2);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlDpT_E0_JNS3_30DSP_Node_Configuration_OptionsEddjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_ddjEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EED0Ev(void *a1)
{
  *a1 = &unk_2881C05D0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlDpT_E0_JNS3_30DSP_Node_Configuration_OptionsEddjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_ddjEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EED1Ev(void *a1)
{
  *a1 = &unk_2881C05D0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JddjbdjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JddjbdjEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[2];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v4[3];
  if (v12[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v13 = vp::vx::data_flow::Value::view_storage(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = v4[4];
  if (v14[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v15 = vp::vx::data_flow::Value::view_storage(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = vp::vx::data_flow::Value::view_storage(v4[5]);
  v17 = (*(**(a1 + 8) + 24))(*(a1 + 8), *v11, *v13, *v16, *v7, *v9, *v15);
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v18);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v17;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JddjbdjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JddjbdjEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C0588;
  a2[1] = v2;
  return result;
}

uint64_t std::__shared_ptr_pointer<vp::vx::DSP_Node_Factory  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__shared_ptr_pointer<vp::vx::DSP_Node_Factory  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUlT_RKT0_E_JNS3_16Output_Port_TypeENS3_22Downlink_ConfigurationEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_SI_EEERNS4_13State_ManagerESC_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = (*v6 == 7) & *vp::vx::data_flow::Value::view_storage(v3[1]);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v7;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUlT_RKT0_E_JNS3_16Output_Port_TypeENS3_22Downlink_ConfigurationEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_SI_EEERNS4_13State_ManagerESC_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4CF0;
  *(a2 + 8) = *(result + 8);
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_12_GLOBAL__N_147make_input_channel_count_override_getter_lambdaENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjE3__0JNS3_30DSP_Node_Configuration_OptionsEEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerET_DpRKNSM_IT0_EEEUlPPKNS4_5ValueEPS15_E_NSE_IS1A_EEFvS18_S19_EEclEOS18_OS19_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v4 = *a3;
  v5 = vp::vx::data_flow::Value::view_storage(**a2);
  v6 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((v5 + 96), (a1 + 8));
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v7 = *(v6 + 10);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v7;
  return result;
}

void sub_272715C70(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 + 32);
  __cxa_end_catch();
  JUMPOUT(0x272715C2CLL);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_12_GLOBAL__N_147make_input_channel_count_override_getter_lambdaENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjE3__0JNS3_30DSP_Node_Configuration_OptionsEEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerET_DpRKNSM_IT0_EEEUlPPKNS4_5ValueEPS15_E_NSE_IS1A_EEFvS18_S19_EE18destroy_deallocateEv(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_12_GLOBAL__N_147make_input_channel_count_override_getter_lambdaENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjE3__0JNS3_30DSP_Node_Configuration_OptionsEEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerET_DpRKNSM_IT0_EEEUlPPKNS4_5ValueEPS15_E_NSE_IS1A_EEFvS18_S19_EE7destroyEv(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_12_GLOBAL__N_147make_input_channel_count_override_getter_lambdaENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjE3__0JNS3_30DSP_Node_Configuration_OptionsEEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerET_DpRKNSM_IT0_EEEUlPPKNS4_5ValueEPS15_E_NSE_IS1A_EEFvS18_S19_EE7__cloneEPNS0_6__baseIS1C_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C4CA8;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  *(a2 + 32) = *(a1 + 32);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_12_GLOBAL__N_147make_input_channel_count_override_getter_lambdaENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjE3__0JNS3_30DSP_Node_Configuration_OptionsEEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerET_DpRKNSM_IT0_EEEUlPPKNS4_5ValueEPS15_E_NSE_IS1A_EEFvS18_S19_EED0Ev(uint64_t a1)
{
  *a1 = &unk_2881C4CA8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_12_GLOBAL__N_147make_input_channel_count_override_getter_lambdaENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjE3__0JNS3_30DSP_Node_Configuration_OptionsEEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerET_DpRKNSM_IT0_EEEUlPPKNS4_5ValueEPS15_E_NSE_IS1A_EEFvS18_S19_EED1Ev(uint64_t a1)
{
  *a1 = &unk_2881C4CA8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Configuration_Context>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_39;
  }

  v8 = *(a1 + 8);
  LOBYTE(v47) = 0;
  BYTE8(v47) = 0;
  LOBYTE(v48) = 0;
  BYTE8(v48) = 0;
  LOBYTE(v49) = 0;
  BYTE8(v49) = 0;
  LOBYTE(v50) = 0;
  BYTE8(v50) = 0;
  v51[0] = 0;
  v51[8] = 0;
  v51[16] = 0;
  v51[24] = 0;
  *v52 = 0u;
  *v53 = 0u;
  v55 = 0u;
  v56 = 0u;
  v54 = 1065353216;
  v57 = 1065353216;
  v9 = (*(*v7 + 72))(v7, v6, *(a1 + 32), &v47);
  v10 = v9;
  if (v9)
  {
    v36 = v49;
    v37 = v50;
    *v38 = *v51;
    *&v38[9] = *&v51[9];
    v34 = v47;
    v35 = v48;
    v11 = v52[0];
    v12 = v52[1];
    v52[0] = 0;
    v52[1] = 0;
    v39[0] = v11;
    v39[1] = v12;
    v40[0] = v53[0];
    v40[1] = v53[1];
    v41 = v54;
    if (v53[1])
    {
      v13 = *(v53[0] + 1);
      if ((v12 & (v12 - 1)) != 0)
      {
        if (v13 >= v12)
        {
          v13 %= v12;
        }
      }

      else
      {
        v13 &= v12 - 1;
      }

      *(v11 + v13) = v40;
      v53[0] = 0;
      v53[1] = 0;
    }

    v25 = v55;
    v55 = 0uLL;
    *v42 = v25;
    *v43 = v56;
    v44 = v57;
    if (*(&v56 + 1))
    {
      v26 = *(v56 + 8);
      if ((*(&v25 + 1) & (*(&v25 + 1) - 1)) != 0)
      {
        if (v26 >= *(&v25 + 1))
        {
          v26 %= *(&v25 + 1);
        }
      }

      else
      {
        v26 &= *(&v25 + 1) - 1;
      }

      *(v25 + 8 * v26) = v43;
      v56 = 0uLL;
    }
  }

  else
  {
    log = vp::get_log(v9);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(__p, v8, "vp::vx::Voice_Processor]", 23);
      v16 = v46;
      v17 = v46;
      v18 = __p[1];
      v19 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        if (v17 >= 0)
        {
          v20 = v16;
        }

        else
        {
          v20 = v18;
        }

        v21 = __p[0];
        if (v17 >= 0)
        {
          v21 = __p;
        }

        if (v20)
        {
          v22 = " ";
        }

        else
        {
          v22 = "";
        }

        v23 = *(a1 + 32) - 1;
        if (v23 > 2)
        {
          v24 = "voice mix";
        }

        else
        {
          v24 = off_279E4A458[v23];
        }

        *buf = 136315650;
        v59 = v21;
        v60 = 2080;
        v61 = v22;
        v62 = 2080;
        v63 = v24;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_ERROR, "%s%sfailed to get configuration options for downlink %s DSP node", buf, 0x20u);
        LOBYTE(v17) = v46;
      }

      if ((v17 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v56);
  v27 = v55;
  *&v55 = 0;
  if (v27)
  {
    operator delete(v27);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v53[0]);
  v28 = v52[0];
  v52[0] = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if ((v10 & 1) == 0)
  {
LABEL_39:
    LOBYTE(v34) = 0;
    BYTE8(v34) = 0;
    LOBYTE(v35) = 0;
    BYTE8(v35) = 0;
    LOBYTE(v36) = 0;
    BYTE8(v36) = 0;
    LOBYTE(v37) = 0;
    BYTE8(v37) = 0;
    v38[0] = 0;
    v38[8] = 0;
    v38[16] = 0;
    v38[24] = 0;
    *v39 = 0u;
    *v40 = 0u;
    *v42 = 0u;
    *v43 = 0u;
    v41 = 1065353216;
    v44 = 1065353216;
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v29);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  *storage = v34;
  storage[1] = v35;
  *(storage + 73) = *&v38[9];
  storage[3] = v37;
  storage[4] = *v38;
  storage[2] = v36;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table((storage + 6), v39);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table(storage + 136, v42);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v43[0]);
  v31 = v42[0];
  v42[0] = 0;
  if (v31)
  {
    operator delete(v31);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v40[0]);
  v32 = v39[0];
  v39[0] = 0;
  if (v32)
  {
    operator delete(v32);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_2727162BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&a26);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&a21);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0540;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EED0Ev(void *a1)
{
  *a1 = &unk_2881C0540;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_20Downlink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EED1Ev(void *a1)
{
  *a1 = &unk_2881C0540;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::Voice_Processor::get_uplink_SRC_algorithm(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "uplink SRC algorithm", 20, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v17 = 0;
  v18 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v24, (a2 + 64), *(v4 + 6));
    v5 = v24;
    LODWORD(v26) = v24;
    v11 = v25;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v17);
    v17 = v5;
    v18 = v11;
    v27 = 0;
    v28 = 0;
    vp::vx::data_flow::State<void>::~State(&v26);
    vp::vx::data_flow::State<void>::~State(&v24);
  }

  if (!v18)
  {
    vp::vx::Voice_Processor::get_uplink_configuration(v19, a2);
    v26 = &unk_2881C0088;
    LOBYTE(v27) = 0;
    v29 = &v26;
    v23 = v19[0];
    vp::vx::data_flow::State_Manager::create_state(&v24, (a2 + 64), &v26);
    v6 = v24;
    v20 = v24;
    v12 = v25;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v24);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v26);
    v14 = v6;
    v21 = 0;
    v22 = 0;
    vp::vx::data_flow::State<void>::~State(&v20);
    vp::vx::data_flow::State<void>::~State(v19);
    vp::vx::data_flow::State<void>::~State(&v17);
    v17 = v6;
    v18 = v12;
    v15 = 0;
    v16 = 0;
    vp::vx::data_flow::State<void>::~State(&v14);
    v7 = v17;
    v8 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v26 = v8;
    LODWORD(v27) = v7;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v26, &v26);
    if (v26)
    {
      CFRelease(v26);
    }
  }

  *this = v17;
  *(this + 8) = v18;
  v18 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v17);
  if (cf)
  {
    CFRelease(cf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2727166FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::get_uplink_SRC_quality(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "uplink SRC quality", 18, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v17 = 0;
  v18 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v24, (a2 + 64), *(v4 + 6));
    v5 = v24;
    LODWORD(v26) = v24;
    v11 = v25;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v17);
    v17 = v5;
    v18 = v11;
    v27 = 0;
    v28 = 0;
    vp::vx::data_flow::State<void>::~State(&v26);
    vp::vx::data_flow::State<void>::~State(&v24);
  }

  if (!v18)
  {
    vp::vx::Voice_Processor::get_uplink_configuration(v19, a2);
    v26 = &unk_2881C00D0;
    LOBYTE(v27) = 0;
    v29 = &v26;
    v23 = v19[0];
    vp::vx::data_flow::State_Manager::create_state(&v24, (a2 + 64), &v26);
    v6 = v24;
    v20 = v24;
    v12 = v25;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v24);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v26);
    v14 = v6;
    v21 = 0;
    v22 = 0;
    vp::vx::data_flow::State<void>::~State(&v20);
    vp::vx::data_flow::State<void>::~State(v19);
    vp::vx::data_flow::State<void>::~State(&v17);
    v17 = v6;
    v18 = v12;
    v15 = 0;
    v16 = 0;
    vp::vx::data_flow::State<void>::~State(&v14);
    v7 = v17;
    v8 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v26 = v8;
    LODWORD(v27) = v7;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v26, &v26);
    if (v26)
    {
      CFRelease(v26);
    }
  }

  *this = v17;
  *(this + 8) = v18;
  v18 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v17);
  if (cf)
  {
    CFRelease(cf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2727169C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor34get_downlink_wire_storage_capacityEvENK3__0clEvEUlT_T0_E_JjN2CA17StreamDescriptionEEEEDaOSH_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JjSL_EEERNS4_13State_ManagerESH_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = vp::vx::data_flow::Value::view_storage(v3[1]);
  LODWORD(v8) = *v6;
  v9 = v8 * 1.25 / *v7;
  v10 = v9 * 1000.0;
  v11 = (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  v12 = 100.0;
  if (v11)
  {
    v12 = v10;
  }

  v13 = v12;
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v14);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::chrono::duration<long long,std::ratio<1l,1000l>>>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v13;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor34get_downlink_wire_storage_capacityEvENK3__0clEvEUlT_T0_E_JjN2CA17StreamDescriptionEEEEDaOSH_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JjSL_EEERNS4_13State_ManagerESH_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C08A0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor32get_uplink_wire_storage_capacityEvENK3__0clEvEUlT_T0_E_JjN2CA17StreamDescriptionEEEEDaOSH_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JjSL_EEERNS4_13State_ManagerESH_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = vp::vx::data_flow::Value::view_storage(v3[1]);
  LODWORD(v8) = *v6;
  v9 = v8 * 1.25 / *v7;
  v10 = v9 * 1000.0;
  v11 = (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  v12 = 100.0;
  if (v11)
  {
    v12 = v10;
  }

  v13 = v12;
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v14);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::chrono::duration<long long,std::ratio<1l,1000l>>>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v13;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor32get_uplink_wire_storage_capacityEvENK3__0clEvEUlT_T0_E_JjN2CA17StreamDescriptionEEEEDaOSH_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JjSL_EEERNS4_13State_ManagerESH_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0118;
  *(a2 + 8) = *(result + 8);
  return result;
}

int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor22get_uplink_SRC_qualityEvENK3__0clEvEUlRKNS3_20Uplink_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  if (*(v4 + 100))
  {
    v5 = *(v4 + 96);
  }

  else
  {
    v5 = 127;
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor22get_uplink_SRC_qualityEvENK3__0clEvEUlRKNS3_20Uplink_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C00D0;
  *(a2 + 8) = *(result + 8);
  return result;
}

int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_uplink_SRC_algorithmEvENK3__0clEvEUlRKNS3_20Uplink_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  if (*(v4 + 92))
  {
    v5 = *(v4 + 88);
  }

  else
  {
    v5 = 1852797549;
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_uplink_SRC_algorithmEvENK3__0clEvEUlRKNS3_20Uplink_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0088;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__shared_ptr_pointer<vp::vx::IO_Wire_Factory  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__shared_ptr_pointer<vp::vx::IO_Wire_Factory  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__function::__value_func<unsigned int ()(double,unsigned int,double,unsigned int,BOOL,double,unsigned int,BOOL)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjNS_8functionIFjdjdjbdjbEEEJdjdjbdjbEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JdjdjbdjbEEERNS4_13State_ManagerET_DpRKNSG_IT0_EEEUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EEclEOS12_OS13_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v8 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v3[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v10 = vp::vx::data_flow::Value::view_storage(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = v3[3];
  if (v11[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v12 = vp::vx::data_flow::Value::view_storage(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = v3[4];
  if (v13[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v14 = vp::vx::data_flow::Value::view_storage(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = v3[5];
  if (v15[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v16 = vp::vx::data_flow::Value::view_storage(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = v3[6];
  if (v17[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v18 = vp::vx::data_flow::Value::view_storage(v17);
  }

  else
  {
    v18 = 0;
  }

  v19 = vp::vx::data_flow::Value::view_storage(v3[7]);
  v20 = *v8;
  v21 = *v10;
  v22 = *v12;
  v23 = *v14;
  v24 = *v16;
  v25 = *v18;
  v26 = *v19;
  v39 = *v6;
  v38 = v20;
  v37 = v21;
  v36 = v22;
  v35 = v23;
  v34 = v24;
  v33 = v25;
  v32 = v26;
  v27 = *(a1 + 32);
  if (!v27)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v28 = (*(*v27 + 48))(v27, &v39, &v38, &v37, &v36, &v35, &v34, &v33, &v32);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v29);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v28;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjNS_8functionIFjdjdjbdjbEEEJdjdjbdjbEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JdjdjbdjbEEERNS4_13State_ManagerET_DpRKNSG_IT0_EEEUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE18destroy_deallocateEv(void *a1)
{
  std::__function::__value_func<unsigned int ()(double,unsigned int,double,unsigned int,BOOL,double,unsigned int,BOOL)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjNS_8functionIFjdjdjbdjbEEEJdjdjbdjbEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JdjdjbdjbEEERNS4_13State_ManagerET_DpRKNSG_IT0_EEEUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EED0Ev(void *a1)
{
  *a1 = &unk_2881C4C18;
  std::__function::__value_func<unsigned int ()(double,unsigned int,double,unsigned int,BOOL,double,unsigned int,BOOL)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjNS_8functionIFjdjdjbdjbEEEJdjdjbdjbEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JdjdjbdjbEEERNS4_13State_ManagerET_DpRKNSG_IT0_EEEUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EED1Ev(void *a1)
{
  *a1 = &unk_2881C4C18;
  std::__function::__value_func<unsigned int ()(double,unsigned int,double,unsigned int,BOOL,double,unsigned int,BOOL)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIjJdjdjbdjbEEENS_8functionIFT_DpT0_EEEMNS3_29Uplink_Configuration_DelegateEKDoFS7_S9_EEUldjdjbdjbE_NS_9allocatorISF_EEFjdjdjbdjbEEclEOdOjSK_SL_ObSK_SL_SM_(void *a1, unint64_t *a2, unsigned int *a3, unint64_t *a4, unsigned int *a5, unsigned __int8 *a6, unint64_t *a7, unsigned int *a8, __n128 a9, __n128 a10, __n128 a11, unsigned __int8 *a12)
{
  a9.n128_u64[0] = *a2;
  a10.n128_u64[0] = *a4;
  a11.n128_u64[0] = *a7;
  v12 = a1[2];
  v13 = a1[3];
  v14 = (a1[1] + (v13 >> 1));
  if (v13)
  {
    return (*(*v14 + v12))(a9, a10, a11);
  }

  else
  {
    return v12(v14, *a3, *a5, *a6, *a8, *a12, a9.n128_f64[0], a10.n128_f64[0], a11.n128_f64[0]);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIjJdjdjbdjbEEENS_8functionIFT_DpT0_EEEMNS3_29Uplink_Configuration_DelegateEKDoFS7_S9_EEUldjdjbdjbE_NS_9allocatorISF_EEFjdjdjbdjbEE7__cloneEPNS0_6__baseISI_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C4C60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<unsigned int ()(double,unsigned int,double)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjRKNS_8functionIFjdjdEEEJdjdEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JdjdEEERNS4_13State_ManagerET_DpRKNSI_IT0_EEEUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = vp::vx::data_flow::Value::view_storage(v4[2]);
  v11 = *v9;
  v12 = *v10;
  v19 = *v7;
  v18 = v11;
  v17 = v12;
  v13 = *(a1 + 32);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v14 = (*(*v13 + 48))(v13, &v19, &v18, &v17);
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v15);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v14;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjRKNS_8functionIFjdjdEEEJdjdEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JdjdEEERNS4_13State_ManagerET_DpRKNSI_IT0_EEEUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE18destroy_deallocateEv(void *a1)
{
  std::__function::__value_func<unsigned int ()(double,unsigned int,double)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjRKNS_8functionIFjdjdEEEJdjdEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JdjdEEERNS4_13State_ManagerET_DpRKNSI_IT0_EEEUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EED0Ev(void *a1)
{
  *a1 = &unk_2881C4BD0;
  std::__function::__value_func<unsigned int ()(double,unsigned int,double)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjRKNS_8functionIFjdjdEEEJdjdEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JdjdEEERNS4_13State_ManagerET_DpRKNSI_IT0_EEEUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EED1Ev(void *a1)
{
  *a1 = &unk_2881C4BD0;
  std::__function::__value_func<unsigned int ()(double,unsigned int,double)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIjJdjdEEENS_8functionIFT_DpT0_EEEMNS3_29Uplink_Configuration_DelegateEKDoFS7_S9_EEUldjdE_NS_9allocatorISF_EEFjdjdEEclEOdOjSK_(void *a1, unint64_t *a2, unsigned int *a3, unint64_t *a4, __n128 a5, __n128 a6)
{
  a5.n128_u64[0] = *a2;
  v6 = *a3;
  a6.n128_u64[0] = *a4;
  v7 = a1[2];
  v8 = a1[3];
  v9 = (a1[1] + (v8 >> 1));
  if (v8)
  {
    return (*(*v9 + v7))(a5, a6);
  }

  else
  {
    return v7(v9, v6, a5.n128_f64[0], a6.n128_f64[0]);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIjJdjdEEENS_8functionIFT_DpT0_EEEMNS3_29Uplink_Configuration_DelegateEKDoFS7_S9_EEUldjdE_NS_9allocatorISF_EEFjdjdEE7__cloneEPNS0_6__baseISI_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C4B88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN2CA17StreamDescriptionEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS7_RDoFS7_dEJdEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JdEEERNS4_13State_ManagerET_DpRKNSH_IT0_EEEUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v4 = *a3;
  v5 = vp::vx::data_flow::Value::view_storage(**a2);
  (*(a1 + 8))(v10, *v5);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v6);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  v8 = v11;
  result = v10[1];
  *storage = v10[0];
  *(storage + 16) = result;
  *(storage + 32) = v8;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN2CA17StreamDescriptionEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS7_RDoFS7_dEJdEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JdEEERNS4_13State_ManagerET_DpRKNSH_IT0_EEEUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C4B40;
  a2[1] = v2;
  return result;
}

double vp::vx::anonymous namespace::make_mono_pcm_float32_format@<D0>(double a1@<D0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = xmmword_272756340;
  *&result = 0x100000004;
  *(a2 + 24) = xmmword_272756350;
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUljRKNS3_30DSP_Node_Configuration_OptionsEE0_JjSC_EEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JjSC_EEERNS4_13State_ManagerET_DpRKNSJ_IT0_EEEUlPPKNS4_5ValueEPS12_E_NS_9allocatorIS17_EEFvS15_S16_EEclEOS15_OS16_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id)
  {
    v8 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *v6;
  std::string::basic_string[abi:ne200100]<0>(__p, "ref");
  v10 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((v8 + 96), __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = *(v10 + 10);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v12);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v11;
  return result;
}

void sub_272717CCC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272717C84);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUljRKNS3_30DSP_Node_Configuration_OptionsEE0_JjSC_EEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JjSC_EEERNS4_13State_ManagerET_DpRKNSJ_IT0_EEEUlPPKNS4_5ValueEPS12_E_NS_9allocatorIS17_EEFvS15_S16_EE7__cloneEPNS0_6__baseIS1A_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4AF8;
  *(a2 + 8) = *(result + 8);
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_121make_bind_back_lambdaIRKNS_8functionIFjRKNS3_30DSP_Node_Configuration_OptionsEdRKNS2_7utility18Quantization_TableIjEEEEEJSI_EEEDaOT_DpRKT0_EUlDpOT_E_JSD_dEEESP_SR_DpRKNS4_5StateISS_EEEUlDpRKSW_E_JSD_dEEERNS4_13State_ManagerESQ_S14_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EEclEOS1E_OS1F_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v12 = *vp::vx::data_flow::Value::view_storage(v4[1]);
  v8 = *(a1 + 32);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v9 = (*(*v8 + 48))(v8, v7, &v12, a1 + 40);
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v10);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v9;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_121make_bind_back_lambdaIRKNS_8functionIFjRKNS3_30DSP_Node_Configuration_OptionsEdRKNS2_7utility18Quantization_TableIjEEEEEJSI_EEEDaOT_DpRKT0_EUlDpOT_E_JSD_dEEESP_SR_DpRKNS4_5StateISS_EEEUlDpRKSW_E_JSD_dEEERNS4_13State_ManagerESQ_S14_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EE18destroy_deallocateEv(void *a1)
{
  _ZZN2vp2vx12_GLOBAL__N_121make_bind_back_lambdaIRKNSt3__18functionIFjRKNS0_30DSP_Node_Configuration_OptionsEdRKNS_7utility18Quantization_TableIjEEEEEJSA_EEEDaOT_DpRKT0_ENUlDpOT_E_D1Ev(a1 + 8);

  operator delete(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_121make_bind_back_lambdaIRKNS_8functionIFjRKNS3_30DSP_Node_Configuration_OptionsEdRKNS2_7utility18Quantization_TableIjEEEEEJSI_EEEDaOT_DpRKT0_EUlDpOT_E_JSD_dEEESP_SR_DpRKNS4_5StateISS_EEEUlDpRKSW_E_JSD_dEEERNS4_13State_ManagerESQ_S14_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EE7__cloneEPNS0_6__baseIS1J_EE(uint64_t a1, void *a2)
{
  v2 = a2;
  *a2 = &unk_2881C4AB0;
  std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,vp::utility::Quantization_Table<unsigned int> const&)>::__value_func[abi:ne200100]((a2 + 1), a1 + 8);
  v2[5] = 0;
  v2[6] = 0;
  v2 += 5;
  v2[2] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v2, *(a1 + 40), *(a1 + 48), (*(a1 + 48) - *(a1 + 40)) >> 2);
}

void sub_272717FD0(_Unwind_Exception *a1)
{
  std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,vp::utility::Quantization_Table<unsigned int> const&)>::~__value_func[abi:ne200100](v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_121make_bind_back_lambdaIRKNS_8functionIFjRKNS3_30DSP_Node_Configuration_OptionsEdRKNS2_7utility18Quantization_TableIjEEEEEJSI_EEEDaOT_DpRKT0_EUlDpOT_E_JSD_dEEESP_SR_DpRKNS4_5StateISS_EEEUlDpRKSW_E_JSD_dEEERNS4_13State_ManagerESQ_S14_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EED0Ev(void *a1)
{
  *a1 = &unk_2881C4AB0;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,vp::utility::Quantization_Table<unsigned int> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_121make_bind_back_lambdaIRKNS_8functionIFjRKNS3_30DSP_Node_Configuration_OptionsEdRKNS2_7utility18Quantization_TableIjEEEEEJSI_EEEDaOT_DpRKT0_EUlDpOT_E_JSD_dEEESP_SR_DpRKNS4_5StateISS_EEEUlDpRKSW_E_JSD_dEEERNS4_13State_ManagerESQ_S14_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EED1Ev(void *a1)
{
  *a1 = &unk_2881C4AB0;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  std::__function::__value_func<unsigned int ()(vp::vx::DSP_Node_Configuration_Options const&,double,vp::utility::Quantization_Table<unsigned int> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIjJRKNS3_30DSP_Node_Configuration_OptionsEdRKNS2_7utility18Quantization_TableIjEEEEENS_8functionIFT_DpT0_EEEMNS3_29Uplink_Configuration_DelegateEKDoFSF_SH_EEUlS8_dSD_E_NS_9allocatorISN_EEFjS8_dSD_EEclES8_OdSD_(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, __n128 a5)
{
  v5 = a1[2];
  v6 = a1[3];
  v7 = (a1[1] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  a5.n128_u64[0] = *a3;
  return v5(v7, a2, a4, a5);
}

__n128 _ZNKSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIjJRKNS3_30DSP_Node_Configuration_OptionsEdRKNS2_7utility18Quantization_TableIjEEEEENS_8functionIFT_DpT0_EEEMNS3_29Uplink_Configuration_DelegateEKDoFSF_SH_EEUlS8_dSD_E_NS_9allocatorISN_EEFjS8_dSD_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C4A68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_122make_bind_front_lambdaIRKNS_8functionIFdbdjRKNS3_30DSP_Node_Configuration_OptionsEddNS_8optionalIdEEEEEJbEEEDaOT_DpRKT0_EUlDpOT_E_JdjSD_ddSH_EEESM_SO_DpRKNS4_5StateISP_EEEUlDpRKST_E_JdjSD_ddSH_EEERNS4_13State_ManagerESN_S11_EUlPPKNS4_5ValueEPS18_E_NS_9allocatorIS1D_EEFvS1B_S1C_EEclEOS1B_OS1C_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[2];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v4[3];
  if (v12[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v13 = vp::vx::data_flow::Value::view_storage(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = v4[4];
  if (v14[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v15 = vp::vx::data_flow::Value::view_storage(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = vp::vx::data_flow::Value::view_storage(v4[5]);
  v17 = *(a1 + 40);
  v18 = *v7;
  v19 = *v9;
  v20 = *v13;
  v21 = *v15;
  v31 = *v16;
  v30 = v17;
  v29 = v18;
  v28 = v19;
  v26 = v21;
  v27 = v20;
  v22 = *(a1 + 32);
  if (!v22)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v23 = (*(*v22 + 48))(v22, &v30, &v29, &v28, v11, &v27, &v26, &v31);
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v24);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v23;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_122make_bind_front_lambdaIRKNS_8functionIFdbdjRKNS3_30DSP_Node_Configuration_OptionsEddNS_8optionalIdEEEEEJbEEEDaOT_DpRKT0_EUlDpOT_E_JdjSD_ddSH_EEESM_SO_DpRKNS4_5StateISP_EEEUlDpRKST_E_JdjSD_ddSH_EEERNS4_13State_ManagerESN_S11_EUlPPKNS4_5ValueEPS18_E_NS_9allocatorIS1D_EEFvS1B_S1C_EE18destroy_deallocateEv(void *a1)
{
  std::__function::__value_func<double ()(BOOL,double,unsigned int,vp::vx::DSP_Node_Configuration_Options const&,double,double,std::optional<double>)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_122make_bind_front_lambdaIRKNS_8functionIFdbdjRKNS3_30DSP_Node_Configuration_OptionsEddNS_8optionalIdEEEEEJbEEEDaOT_DpRKT0_EUlDpOT_E_JdjSD_ddSH_EEESM_SO_DpRKNS4_5StateISP_EEEUlDpRKST_E_JdjSD_ddSH_EEERNS4_13State_ManagerESN_S11_EUlPPKNS4_5ValueEPS18_E_NS_9allocatorIS1D_EEFvS1B_S1C_EE7__cloneEPNS0_6__baseIS1G_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C4A20;
  result = std::__function::__value_func<double ()(BOOL,double,unsigned int,vp::vx::DSP_Node_Configuration_Options const&,double,double,std::optional<double>)>::__value_func[abi:ne200100](a2 + 8, a1 + 8);
  *(a2 + 40) = *(a1 + 40);
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_122make_bind_front_lambdaIRKNS_8functionIFdbdjRKNS3_30DSP_Node_Configuration_OptionsEddNS_8optionalIdEEEEEJbEEEDaOT_DpRKT0_EUlDpOT_E_JdjSD_ddSH_EEESM_SO_DpRKNS4_5StateISP_EEEUlDpRKST_E_JdjSD_ddSH_EEERNS4_13State_ManagerESN_S11_EUlPPKNS4_5ValueEPS18_E_NS_9allocatorIS1D_EEFvS1B_S1C_EED0Ev(void *a1)
{
  *a1 = &unk_2881C4A20;
  std::__function::__value_func<double ()(BOOL,double,unsigned int,vp::vx::DSP_Node_Configuration_Options const&,double,double,std::optional<double>)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_12_GLOBAL__N_122make_bind_front_lambdaIRKNS_8functionIFdbdjRKNS3_30DSP_Node_Configuration_OptionsEddNS_8optionalIdEEEEEJbEEEDaOT_DpRKT0_EUlDpOT_E_JdjSD_ddSH_EEESM_SO_DpRKNS4_5StateISP_EEEUlDpRKST_E_JdjSD_ddSH_EEERNS4_13State_ManagerESN_S11_EUlPPKNS4_5ValueEPS18_E_NS_9allocatorIS1D_EEFvS1B_S1C_EED1Ev(void *a1)
{
  *a1 = &unk_2881C4A20;
  std::__function::__value_func<double ()(BOOL,double,unsigned int,vp::vx::DSP_Node_Configuration_Options const&,double,double,std::optional<double>)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIdJbdjRKNS3_30DSP_Node_Configuration_OptionsEddNS_8optionalIdEEEEENS_8functionIFT_DpT0_EEEMNS3_29Uplink_Configuration_DelegateEKDoFSC_SE_EEUlbdjS8_ddSA_E_NS_9allocatorISK_EEFdbdjS8_ddSA_EEclEObOdOjS8_SQ_SQ_OSA_(void *a1, unsigned __int8 *a2, unint64_t *a3, unsigned int *a4, uint64_t a5, unint64_t *a6, unint64_t *a7, void *a8, __n128 a9, __n128 a10, __n128 a11)
{
  v11 = *a2;
  a11.n128_u64[0] = *a7;
  v12 = a1[2];
  v13 = a1[3];
  v14 = (a1[1] + (v13 >> 1));
  if (v13)
  {
    v12 = *(*v14 + v12);
  }

  a9.n128_u64[0] = *a3;
  a10.n128_u64[0] = *a6;
  return v12(v14, v11, *a4, a5, *a8, a8[1], a9, a10, a11);
}

__n128 _ZNKSt3__110__function6__funcIZN2vp2vx15Voice_Processor15create_callbackIdJbdjRKNS3_30DSP_Node_Configuration_OptionsEddNS_8optionalIdEEEEENS_8functionIFT_DpT0_EEEMNS3_29Uplink_Configuration_DelegateEKDoFSC_SE_EEUlbdjS8_ddSA_E_NS_9allocatorISK_EEFdbdjS8_ddSA_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C49D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN2CA17StreamDescriptionEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS7_RDoFS7_djEJdjEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JdjEEERNS4_13State_ManagerET_DpRKNSH_IT0_EEEUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = vp::vx::data_flow::Value::view_storage(v4[1]);
  (*(a1 + 8))(v13, *v8, *v7);
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v9);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v5);
  v11 = v14;
  result = v13[1];
  *storage = v13[0];
  *(storage + 16) = result;
  *(storage + 32) = v11;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN2CA17StreamDescriptionEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS7_RDoFS7_djEJdjEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JdjEEERNS4_13State_ManagerET_DpRKNSH_IT0_EEEUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C4990;
  a2[1] = v2;
  return result;
}

double vp::vx::anonymous namespace::make_pcm_float32_format@<D0>(vp::vx::_anonymous_namespace_ *this@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  *a3 = a2;
  *(a3 + 8) = xmmword_272756340;
  *(a3 + 24) = 4;
  *(a3 + 28) = this;
  *&result = 32;
  *(a3 + 32) = 32;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22DSP_Node_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_configurationENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Configuration_Context>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_38;
  }

  v8 = *(a1 + 8);
  v48 = 0;
  *v46 = 0u;
  v47 = 0u;
  *v45 = 0u;
  v49 = 1065353216;
  v50 = 0u;
  memset(v51, 0, sizeof(v51));
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  memset(v54, 0, 25);
  v9 = (*(*v7 + 48))(v7, v6, *(a1 + 32), v45);
  v10 = v9;
  if (v9)
  {
    *v33 = *v45;
    v45[0] = 0;
    v45[1] = 0;
    v12 = v46[0];
    v11 = v46[1];
    v13 = v47;
    v46[1] = 0;
    *&v47 = 0;
    v46[0] = 0;
    v34[0] = v12;
    v34[1] = v11;
    *&v35 = v13;
    *(&v35 + 1) = *(&v47 + 1);
    v36 = v48;
    v37 = v49;
    if (v48)
    {
      v14 = *(*(&v13 + 1) + 8);
      if ((v13 & (v13 - 1)) != 0)
      {
        if (*(&v13 + 1) >= v13)
        {
          v14 = *(&v13 + 1) % v13;
        }
      }

      else
      {
        v14 = *(&v13 + 1) & (v13 - 1);
      }

      *(v11 + v14) = &v35 + 8;
      *(&v47 + 1) = 0;
      v48 = 0;
    }

    *&v39[0] = *&v51[0];
    v38 = v50;
    memset(v51, 0, sizeof(v51));
    v50 = 0uLL;
    *(v39 + 8) = *(v51 + 8);
    *(&v39[1] + 1) = *(&v51[1] + 1);
    v40 = v52;
    v52 = 0uLL;
    v26 = v53[0];
    memset(v53, 0, sizeof(v53));
    *&v41[1] = *&v53[1];
    v41[0] = v26;
    v41[3] = v53[3];
    v42[0] = v54[0];
    *&v42[1] = *&v54[1];
    memset(v54, 0, 24);
    BYTE8(v42[1]) = BYTE8(v54[1]);
  }

  else
  {
    v15 = vp::get_log(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(__p, v8, "vp::vx::Voice_Processor]", 23);
      v17 = v44;
      v18 = v44;
      v19 = __p[1];
      log = vp::get_log(log_context_info);
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        if (v18 >= 0)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        v21 = __p[0];
        if (v18 >= 0)
        {
          v21 = __p;
        }

        if (v20)
        {
          v22 = " ";
        }

        else
        {
          v22 = "";
        }

        v23 = "hardware";
        v24 = *(a1 + 32);
        if (v24 == 1)
        {
          v23 = "echo";
        }

        *buf = 136315650;
        *&buf[4] = v21;
        v56 = 2080;
        v57 = v22;
        if (v24 == 2)
        {
          v25 = "content";
        }

        else
        {
          v25 = v23;
        }

        v58 = 2080;
        v59 = v25;
        _os_log_impl(&dword_2724B4000, log, OS_LOG_TYPE_ERROR, "%s%sfailed to get configuration for uplink %s DSP node", buf, 0x20u);
        LOBYTE(v18) = v44;
      }

      if ((v18 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  *buf = v54;
  std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v53[1])
  {
    v53[2] = v53[1];
    operator delete(v53[1]);
  }

  *buf = &v52;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = v51 + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v50;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(*(&v47 + 1));
  v27 = v46[1];
  v46[1] = 0;
  if (v27)
  {
    operator delete(v27);
  }

  if ((SHIBYTE(v46[0]) & 0x80000000) == 0)
  {
    if (v10)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  operator delete(v45[0]);
  if ((v10 & 1) == 0)
  {
LABEL_38:
    v36 = 0;
    *v34 = 0u;
    v35 = 0u;
    *v33 = 0u;
    v37 = 1065353216;
    v38 = 0u;
    memset(v39, 0, sizeof(v39));
    v40 = 0u;
    memset(v41, 0, sizeof(v41));
    memset(v42, 0, 25);
  }

LABEL_39:
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v28);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  *(storage + 16) = v34[0];
  *storage = *v33;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table(storage + 24, &v34[1]);
  *(storage + 80) = 0;
  *(storage + 88) = 0;
  *(storage + 64) = 0;
  *(storage + 72) = 0;
  *(storage + 64) = v38;
  *(storage + 80) = *&v39[0];
  v38 = 0uLL;
  *(storage + 96) = 0;
  *(storage + 104) = 0;
  *(storage + 88) = *(v39 + 8);
  *(storage + 104) = *(&v39[1] + 1);
  *(storage + 112) = 0;
  memset(v39, 0, sizeof(v39));
  *(storage + 120) = 0;
  *(storage + 128) = 0;
  *(storage + 112) = v40;
  v40 = 0uLL;
  *(storage + 128) = v41[0];
  *(storage + 136) = 0;
  *(storage + 144) = 0;
  *(storage + 152) = 0;
  *(storage + 136) = *&v41[1];
  *(storage + 152) = v41[3];
  *(storage + 160) = 0;
  memset(v41, 0, sizeof(v41));
  *(storage + 168) = 0;
  *(storage + 176) = 0;
  *(storage + 160) = v42[0];
  *(storage + 176) = *&v42[1];
  memset(v42, 0, 24);
  *(storage + 184) = BYTE8(v42[1]);
  v45[0] = v42;
  std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](v45);
  if (v41[1])
  {
    v41[2] = v41[1];
    operator delete(v41[1]);
  }

  v45[0] = &v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v45);
  v45[0] = v39 + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v45);
  v45[0] = &v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v45);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(*(&v35 + 1));
  v30 = v34[1];
  v34[1] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_272718D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::DSP_Node_Configuration::~DSP_Node_Configuration(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22DSP_Node_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_configurationENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22DSP_Node_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_configurationENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22DSP_Node_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_configurationENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BFDC0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22DSP_Node_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_configurationENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EED0Ev(void *a1)
{
  *a1 = &unk_2881BFDC0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_22DSP_Node_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_configurationENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EED1Ev(void *a1)
{
  *a1 = &unk_2881BFDC0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUljRKNS3_30DSP_Node_Configuration_OptionsEE_JjSC_EEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JjSC_EEERNS4_13State_ManagerET_DpRKNSJ_IT0_EEEUlPPKNS4_5ValueEPS12_E_NS_9allocatorIS17_EEFvS15_S16_EEclEOS15_OS16_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id)
  {
    v8 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *v6;
  std::string::basic_string[abi:ne200100]<0>(__p, "ref");
  v10 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((v8 + 136), __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = *(v10 + 10);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v12);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v11;
  return result;
}

void sub_272719004(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272718FBCLL);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUljRKNS3_30DSP_Node_Configuration_OptionsEE_JjSC_EEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JjSC_EEERNS4_13State_ManagerET_DpRKNSJ_IT0_EEEUlPPKNS4_5ValueEPS12_E_NS_9allocatorIS17_EEFvS15_S16_EE7__cloneEPNS0_6__baseIS1A_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4900;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor41get_uplink_ref_audio_ring_buffer_capacityEvENK3__0clEvEUlRKT_RKT0_T1_E_JNS3_20Uplink_ConfigurationENS3_21Configuration_ContextENS_8optionalISA_EEEEEDaOSH_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSP_SQ_SS_EEERNS4_13State_ManagerESH_S10_EUlPPKNS4_5ValueEPS18_E_NS_9allocatorIS1D_EEFvS1B_S1C_EEclEOS1B_OS1C_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Uplink_Configuration>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Configuration_Context>(void)::s_type_id)
  {
    v8 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = vp::vx::data_flow::Value::view_storage(v3[2]);
  v10 = *v9;
  if ((*(v9 + 8) & (*(v8 + 8) == 1) & (*(v8 + 40) == 13)) == 0)
  {
    v10 = 0;
  }

  v11 = v10 + *(v6 + 8);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v12);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::chrono::duration<long long,std::ratio<1l,1000l>>>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v11;
  return result;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>>::compare_value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a3 + 8);
  v4 = *(*a2 + 8);
  result = v4 == v3;
  if (v4 == v3 && v4 != 0)
  {
    return **a2 == **a3;
  }

  return result;
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  result = **a3;
  **a2 = result;
  return result;
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>>::copy_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  result = **a3;
  **a2 = result;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 16, 8);
  *a2 = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor41get_uplink_ref_audio_ring_buffer_capacityEvENK3__0clEvEUlRKT_RKT0_T1_E_JNS3_20Uplink_ConfigurationENS3_21Configuration_ContextENS_8optionalISA_EEEEEDaOSH_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSP_SQ_SS_EEERNS4_13State_ManagerESH_S10_EUlPPKNS4_5ValueEPS18_E_NS_9allocatorIS1D_EEFvS1B_S1C_EE7__cloneEPNS0_6__baseIS1G_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0308;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>>::register_listener(std::function<void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>>::register_listener(std::function<void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>>::register_listener(std::function<void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>>::register_listener(std::function<void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>>::register_listener(std::function<void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>>::register_listener(std::function<void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C0EA0;
  std::__function::__value_func<void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>>::register_listener(std::function<void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>>::register_listener(std::function<void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C0EA0;
  std::__function::__value_func<void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_global<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>> &,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1})::{lambda(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>> &,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1})::{lambda(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)#1}>,void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>::operator()(uint64_t a1, unsigned int *a2, uint64_t a3)
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
        if (*(a3 + 8))
        {
          caulk::make_string("stevenote_mic_ref_alignment = %lld ms", &v11, *a3);
          *__p = *&v11.__r_.__value_.__l.__data_;
          *&__p[15] = *(&v11.__r_.__value_.__r.__words[1] + 7);
          v14 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
          v15 = 1;
          v10 = (v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
        }

        else
        {
          v10 = 0;
          __p[0] = 0;
          v15 = 0;
        }

        v16 = 1;
        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v11, __p);
        if (v15 & v10)
        {
          operator delete(*__p);
        }

        (*(*v9 + 16))(v9, v6, &v11);
        if (v12 == 1 && SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v11.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_global<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>> &,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1})::{lambda(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>> &,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1})::{lambda(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)#1}>,void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_global<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>> &,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1})::{lambda(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>> &,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1})::{lambda(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)#1}>,void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_global<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>> &,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1})::{lambda(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>> &,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1})::{lambda(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)#1}>,void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881C0EE8;
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

void std::__function::__func<void vp::vx::observe_global<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>> &,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1})::{lambda(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>> &,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1})::{lambda(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)#1}>,void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C0EE8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_global<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>> &,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1})::{lambda(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>> &,vp::vx::Voice_Processor::get_stevenote_mic_ref_correction(void)::$_0::operator() const(void)::{lambda(std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>)#1})::{lambda(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)#1}>,void ()(unsigned int,std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C0EE8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor32get_stevenote_mic_ref_correctionEvENK3__0clEvEUlT_T0_E_JbjEEEDaOSJ_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbjEEERNS4_13State_ManagerESJ_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
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

  v7 = vp::vx::data_flow::Value::view_storage(v3[1]);
  v8 = *v6;
  v9 = *v7;
  if (v8)
  {
    v10 = *v7;
  }

  else
  {
    v10 = 0;
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v11);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::optional<std::chrono::duration<long long,std::ratio<1l,1000l>>>>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v10;
  *(result + 8) = v8;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor32get_stevenote_mic_ref_correctionEvENK3__0clEvEUlT_T0_E_JbjEEEDaOSJ_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbjEEERNS4_13State_ManagerESJ_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0E58;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__shared_ptr_pointer<vp::vx::IO_Mic_Ref_Sync_Node_Factory  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__shared_ptr_pointer<vp::vx::IO_Mic_Ref_Sync_Node_Factory  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void *boost::container::vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,vp::Allocator<void>,void>,boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>*,std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID> const&,std::shared_ptr<vp::vx::IO_Port_Factory>&>>(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v10 = a2[1];
  v11 = boost::container::vector_alloc_holder<boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a2[2], a2[3]);
  if (v11 >= 0xAAAAAAAAAAAAAABLL)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
  }

  v13 = v11;
  result = (*(**a2 + 16))(*a2, 24 * v11, 8);
  v15 = result;
  v16 = a2[1];
  v17 = a2[2];
  v18 = result;
  if (v16 != a3)
  {
    v19 = a2[1];
    v18 = result;
    do
    {
      *v18 = *v19;
      *(v18 + 1) = *(v19 + 8);
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      v19 += 24;
      v18 += 3;
    }

    while (v19 != a3);
  }

  v20 = v16 + 24 * v17;
  *v18 = *a5;
  v21 = a4[1];
  v18[1] = *a4;
  v18[2] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  if (v20 != a3)
  {
    v22 = v18 + 4;
    v23 = a3;
    do
    {
      *(v22 - 1) = *v23;
      *v22 = *(v23 + 8);
      v22 = (v22 + 24);
      *(v23 + 8) = 0;
      *(v23 + 16) = 0;
      v23 += 24;
    }

    while (v23 != v20);
  }

  if (v16)
  {
    v24 = a2[2];
    if (v24)
    {
      v25 = (v16 + 16);
      do
      {
        if (*v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v25);
        }

        v25 += 3;
        --v24;
      }

      while (v24);
    }

    v26 = a2[3];
    result = boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,vp::Allocator<void>,void>::deallocate(a2, a2[1]);
  }

  v27 = a2[2] + 1;
  a2[1] = v15;
  a2[2] = v27;
  a2[3] = v13;
  *a1 = v15 + a3 - v10;
  return result;
}

uint64_t std::__shared_ptr_pointer<vp::vx::IO_Port_Factory  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__shared_ptr_pointer<vp::vx::IO_Port_Factory  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

double *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUlddE_JddEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JddEEERNS4_13State_ManagerET_DpRKNSG_IT0_EEEUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EEclEOS12_OS13_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = vp::vx::data_flow::Value::view_storage(v4[1]);
  v9 = *v7;
  v10 = *v8;
  if (*v7 != *v8)
  {
    v11 = *(a1 + 8);
    log = vp::get_log(v8);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(__p, v11, "vp::vx::Voice_Processor]", 23);
      v14 = v25;
      v15 = v25;
      v16 = __p[1];
      v17 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        if (v15 >= 0)
        {
          v18 = v14;
        }

        else
        {
          v18 = v16;
        }

        v19 = __p[0];
        if (v15 >= 0)
        {
          v19 = __p;
        }

        if (v18)
        {
          v20 = " ";
        }

        else
        {
          v20 = "";
        }

        *buf = 136315394;
        v27 = v19;
        v28 = 2080;
        v29 = v20;
        _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "%s%smicrophone and reference block sizes must be equal", buf, 0x16u);
        LOBYTE(v15) = v25;
      }

      if ((v15 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (v9 < v10)
  {
    v9 = v10;
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v21);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v9;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUlddE_JddEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JddEEERNS4_13State_ManagerET_DpRKNSG_IT0_EEEUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE7__cloneEPNS0_6__baseIS17_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C48B8;
  a2[1] = v2;
  return result;
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUljjE_JjjEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JjjEEERNS4_13State_ManagerET_DpRKNSG_IT0_EEEUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EEclEOS12_OS13_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = vp::vx::data_flow::Value::view_storage(v4[1]);
  v9 = *v7;
  v10 = *v8;
  if (v9 != *v8)
  {
    v11 = *(a1 + 8);
    log = vp::get_log(v8);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(__p, v11, "vp::vx::Voice_Processor]", 23);
      v14 = v26;
      v15 = v26;
      v16 = __p[1];
      v17 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        if (v15 >= 0)
        {
          v18 = v14;
        }

        else
        {
          v18 = v16;
        }

        v19 = __p[0];
        if (v15 >= 0)
        {
          v19 = __p;
        }

        if (v18)
        {
          v20 = " ";
        }

        else
        {
          v20 = "";
        }

        *buf = 136315394;
        v28 = v19;
        v29 = 2080;
        v30 = v20;
        _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "%s%smicrophone and reference sample rates must be equal", buf, 0x16u);
        LOBYTE(v15) = v26;
      }

      if ((v15 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (v9 <= v10)
  {
    v21 = v10;
  }

  else
  {
    v21 = v9;
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v22);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v21;
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUljjE_JjjEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JjjEEERNS4_13State_ManagerET_DpRKNSG_IT0_EEEUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE7__cloneEPNS0_6__baseIS17_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C4870;
  a2[1] = v2;
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKSC_E_JN2CA17StreamDescriptionEEEESD_OSF_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSN_EEERNS4_13State_ManagerESE_DpRKNSP_IT0_EEEUlPPKNS4_5ValueEPS17_E_NS_9allocatorIS1C_EEFvS1A_S1B_EEclEOS1A_OS1B_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *(vp::vx::data_flow::Value::view_storage(**a2) + *(a1 + 8));
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKSC_E_JN2CA17StreamDescriptionEEEESD_OSF_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSN_EEERNS4_13State_ManagerESE_DpRKNSP_IT0_EEEUlPPKNS4_5ValueEPS17_E_NS_9allocatorIS1C_EEFvS1A_S1B_EE7__cloneEPNS0_6__baseIS1F_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C4828;
  a2[1] = v2;
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptiondEEDaMT_T0_EUlRKSC_E_JN2CA17StreamDescriptionEEEESD_OSF_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSN_EEERNS4_13State_ManagerESE_DpRKNSP_IT0_EEEUlPPKNS4_5ValueEPS17_E_NS_9allocatorIS1C_EEFvS1A_S1B_EEclEOS1A_OS1B_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *(vp::vx::data_flow::Value::view_storage(**a2) + *(a1 + 8));
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptiondEEDaMT_T0_EUlRKSC_E_JN2CA17StreamDescriptionEEEESD_OSF_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSN_EEERNS4_13State_ManagerESE_DpRKNSP_IT0_EEEUlPPKNS4_5ValueEPS17_E_NS_9allocatorIS1C_EEFvS1A_S1B_EE7__cloneEPNS0_6__baseIS1F_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C47E0;
  a2[1] = v2;
  return result;
}