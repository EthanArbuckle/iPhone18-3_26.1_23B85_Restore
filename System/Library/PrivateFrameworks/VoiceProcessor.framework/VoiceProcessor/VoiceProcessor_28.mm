void sub_2726AD538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC538;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC538;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC538;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC508;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC508;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC4C0;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726AD984(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 23, "HW REF Presentation Latency");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 23, "HW REF Presentation Latency", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 23, "HW REF Presentation Latency", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726ADA94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC4C0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC4C0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC4C0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC490;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)23,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC490;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC448;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726ADEE0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 22, "HW REF Input Safety Offset");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 22, "HW REF Input Safety Offset", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 22, "HW REF Input Safety Offset", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726ADFF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC448;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC448;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC448;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC418;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)22,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC418;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC3D0;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726AE43C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 21, "HW REF Input Latency");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 21, "HW REF Input Latency", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 21, "HW REF Input Latency", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726AE54C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC3D0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC3D0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC3D0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC3A0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)21,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC3A0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC358;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726AE998(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 40, "HW MIC Safety Offset");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 40, "HW MIC Safety Offset", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 40, "HW MIC Safety Offset", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726AEAA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC358;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC358;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC358;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC328;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)40,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC328;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC2E0;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726AEEF4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 39, "HW MIC Presentation Latency");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 39, "HW MIC Presentation Latency", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 39, "HW MIC Presentation Latency", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726AF004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC2E0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC2E0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC2E0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC2B0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)39,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC2B0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC268;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(double const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726AF450(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::operator()(uint64_t a1, double *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 38, "HW MIC Device Sample Rate");
  vp::sim::converters::Default_Converter<double>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 38, "HW MIC Device Sample Rate", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 38, "HW MIC Device Sample Rate", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726AF560(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC268;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC268;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC268;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC238;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)38,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC238;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC1F0;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726AF9AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&cf, v3, v5);
  v6 = cf;
  v7 = cf;
  vp::sim::Key_Writer::count(&v7, 37, "Telephony Mic DSP Settings");
  vp::sim::converters::Default_Converter_CF<applesauce::CF::DictionaryRef>::to_property_list(&cf, *a2);
  vp::sim::Key_Writer::set(&v7, 37, "Telephony Mic DSP Settings", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726AFA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC1F0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC1F0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC1F0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC1C0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)37,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC1C0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC178;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(std::vector<float> const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726AFEC4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(std::vector<float> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::vector<float> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<std::vector<float>>::register_listener(std::function<void ()(std::vector<float> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<float>>::register_listener(std::function<void ()(std::vector<float> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id;
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

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<float>>::compare_value(uint64_t a1, uint64_t **a2, float ***a3)
{
  v4 = **a2;
  v3 = (*a2)[1];
  v5 = **a3;
  if (v3 - v4 != (*a3)[1] - v5)
  {
    return 0;
  }

  if (v4 == v3)
  {
    return 1;
  }

  v6 = v4 + 4;
  do
  {
    v7 = *v5++;
    result = *(v6 - 4) == v7;
    v9 = *(v6 - 4) != v7 || v6 == v3;
    v6 += 4;
  }

  while (!v9);
  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<float>>::destroy_value(uint64_t a1, void ***a2)
{
  v2 = **a2;
  if (v2)
  {
    (*a2)[1] = v2;
    operator delete(v2);
  }
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<float>>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  v3 = *a2;
  v4 = *a3;
  v3->n128_u64[0] = 0;
  v3->n128_u64[1] = 0;
  v3[1].n128_u64[0] = 0;
  result = *v4;
  *v3 = *v4;
  v3[1].n128_u64[0] = v4[1].n128_u64[0];
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<float>>::copy_value(uint64_t a1, void **a2, uint64_t **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3, *v4, v4[1], (v4[1] - *v4) >> 2);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<float>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<float>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 24, 8);
  *a2 = result;
  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::vector<float>>::register_listener(std::function<void ()(std::vector<float> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<float>>::register_listener(std::function<void ()(std::vector<float> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::vector<float> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::vector<float>>::register_listener(std::function<void ()(std::vector<float> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<float>>::register_listener(std::function<void ()(std::vector<float> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBA88;
  std::__function::__value_func<void ()(std::vector<float> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::vector<float>>::register_listener(std::function<void ()(std::vector<float> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<float>>::register_listener(std::function<void ()(std::vector<float> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBA88;
  std::__function::__value_func<void ()(std::vector<float> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1}>,void ()(std::vector<float> const&)>::operator()(uint64_t a1, float **a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 36, "HW MIC Trim Gains");
  vp::sim::converters::CSV_Converter<float>::to_property_list(&cf, a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 36, "HW MIC Trim Gains", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 36, "HW MIC Trim Gains", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B0500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1}>,void ()(std::vector<float> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1}>,void ()(std::vector<float> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1}>,void ()(std::vector<float> const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC178;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1}>,void ()(std::vector<float> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC178;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1}>,void ()(std::vector<float> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC178;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC148;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)36,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC148;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

double _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_6vectorIfNS_9allocatorIfEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERSC_RKNS3_27Voice_Processor_State_OwnerEE3__6JS9_N10applesauce2CF8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_SN_EEERNS4_13State_ManagerESP_SW_EUlPPKNS4_5ValueEPS14_E_NS7_IS19_EEFvS17_S18_EEclEOS17_OS18_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = vp::vx::data_flow::Value::view_storage(v3[1]);
  v8 = *v7;
  if (*v7)
  {
    CFRetain(*v7);
  }

  v15 = v8;
  vp::vx::trim_gains_parse_cf(&__p, &v15);
  if (v18)
  {
    if (__p != v17)
    {
      *v14 = __p;
      *&v14[8] = v17;
      goto LABEL_13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  v9 = *v6;
  v10 = v6[1];
  memset(v14, 0, sizeof(v14));
  if (v9 != v10)
  {
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v14, v9, v10, (v10 - v9) >> 2);
  }

LABEL_13:
  if (v8)
  {
    CFRelease(v8);
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v11);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  result = *v14;
  *storage = *v14;
  *(storage + 16) = *&v14[16];
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_6vectorIfNS_9allocatorIfEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERSC_RKNS3_27Voice_Processor_State_OwnerEE3__6JS9_N10applesauce2CF8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_SN_EEERNS4_13State_ManagerESP_SW_EUlPPKNS4_5ValueEPS14_E_NS7_IS19_EEFvS17_S18_EE7__cloneEPNS0_6__baseIS1B_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BB000;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC100;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B0B30(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
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

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB9C8;
  std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB9C8;
  std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&cf, v3, v5);
  v6 = cf;
  v7 = cf;
  vp::sim::Key_Writer::count(&v7, 35, "HW MIC Model UID");
  vp::sim::converters::Default_Converter_CF<applesauce::CF::StringRef>::to_property_list(&cf, *a2);
  vp::sim::Key_Writer::set(&v7, 35, "HW MIC Model UID", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B0E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *vp::sim::converters::Default_Converter_CF<applesauce::CF::StringRef>::to_property_list(applesauce::CF::TypeRef *this, CFTypeRef cf)
{
  if (cf)
  {
    result = CFRetain(cf);
    *this = cf;
  }

  else
  {

    return applesauce::CF::TypeRef::TypeRef(this, "?");
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC100;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC100;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC100;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC0D0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)35,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC0D0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC088;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B12CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 34, "HW MIC Data Source");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 34, "HW MIC Data Source", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 34, "HW MIC Data Source", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B13DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC088;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC088;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC088;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC058;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)34,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC058;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC010;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B1828(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 33, "HW MIC Bluetooth Device Category Type");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 33, "HW MIC Bluetooth Device Category Type", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 33, "HW MIC Bluetooth Device Category Type", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B1938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC010;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC010;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC010;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBFE0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)33,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBFE0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BBF98;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B1D84(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 32, "HW MIC Transport Type");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 32, "HW MIC Transport Type", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 32, "HW MIC Transport Type", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B1E94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BBF98;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBF98;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBF98;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBF68;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)32,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBF68;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BBF20;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B22E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 31, "Mic Port #0 Subtype");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 31, "Mic Port #0 Subtype", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 31, "Mic Port #0 Subtype", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B23F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BBF20;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBF20;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBF20;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBEF0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)31,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBEF0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE3__5JNS3_13Port_Sub_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = vp::vx::legacy_cast<vp::vx::Port_Sub_Type>(*v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE3__5JNS3_13Port_Sub_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BAFB8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BBEA8;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(std::vector<unsigned int> const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B2940(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::operator()(uint64_t a1, int **a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v9, v3, v5);
  v6 = v9;
  v8 = v9;
  vp::sim::Key_Writer::count(&v8, 30, "Mic Port Types");
  CFArray = applesauce::CF::details::make_CFArrayRef<unsigned int>(a2);
  CFRetain(CFArray);
  v9 = CFArray;
  vp::sim::Key_Writer::set(&v8, 30, "Mic Port Types", &v9);
  if (CFArray)
  {
    CFRelease(CFArray);
  }

  CFRelease(CFArray);
  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B2A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<unsigned int>(int **a1)
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
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned int,void,0>((8 * v7), v6);
        v16 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v12, v15);
        v5 = v13;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v15);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned int,void,0>(v5++, *v3);
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

void sub_2726B2B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned int,void,0>(CFNumberRef *a1, int a2)
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

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BBEA8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBEA8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBEA8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBE78;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)30,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBE78;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

double _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_6vectorIjNS_9allocatorIjEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERSC_RKNS3_27Voice_Processor_State_OwnerEE3__4JNS3_15Input_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSL_EEERNS4_13State_ManagerESN_SU_EUlPPKNS4_5ValueEPS12_E_NS7_IS17_EEFvS15_S16_EEclEOS15_OS16_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v10 = vp::vx::Legacy<vp::vx::Input_Port_Type>::cast(*v4);
  v9 = 0;
  v8 = 0uLL;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&v8, &v10, &v11, 1uLL);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<unsigned int>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v3);
  result = *&v8;
  *storage = v8;
  *(storage + 16) = v9;
  return result;
}

void sub_2726B2F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, std::exception_ptr a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_6vectorIjNS_9allocatorIjEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERSC_RKNS3_27Voice_Processor_State_OwnerEE3__4JNS3_15Input_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSL_EEERNS4_13State_ManagerESN_SU_EUlPPKNS4_5ValueEPS12_E_NS7_IS17_EEFvS15_S16_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BAF70;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BBE30;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B3254(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 28, "HW MIC Block Size");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 28, "HW MIC Block Size", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 28, "HW MIC Block Size", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B3364(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BBE30;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBE30;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBE30;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBE00;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)28,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBE00;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BBDB8;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(CA::StreamDescription const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B37B0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v11, v3, v5);
  v6 = v11;
  v9 = v11;
  vp::sim::Key_Writer::count(&v9, 27, "HW MIC Format");
  vp::sim::converters::Default_Converter<CA::StreamDescription>::to_property_list(&cf, a2, v7);
  v8 = cf;
  if (cf)
  {
    CFRetain(cf);
    v11 = v8;
    vp::sim::Key_Writer::set(&v9, 27, "HW MIC Format", &v11);
    CFRelease(v8);
  }

  else
  {
    v11 = 0;
    vp::sim::Key_Writer::set(&v9, 27, "HW MIC Format", &v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B38C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BBDB8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBDB8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBDB8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBD88;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)27,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBD88;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BBD40;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B3D0C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 26, "HW REF Bluetooth HLC 2 channels State");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 26, "HW REF Bluetooth HLC 2 channels State", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 26, "HW REF Bluetooth HLC 2 channels State", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B3E1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BBD40;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBD40;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBD40;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBD10;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)26,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBD10;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BBCC8;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B4268(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&cf, v3, v5);
  v6 = cf;
  v7 = cf;
  vp::sim::Key_Writer::count(&v7, 25, "HW REF Port UID");
  vp::sim::converters::Default_Converter_CF<applesauce::CF::StringRef>::to_property_list(&cf, *a2);
  vp::sim::Key_Writer::set(&v7, 25, "HW REF Port UID", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B4334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BBCC8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBCC8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBCC8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBC98;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)25,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBC98;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BBC50;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(double const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B4780(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::operator()(uint64_t a1, double *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 20, "HW REF Device Sample Rate");
  vp::sim::converters::Default_Converter<double>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 20, "HW REF Device Sample Rate", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 20, "HW REF Device Sample Rate", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B4890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BBC50;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBC50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBC50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBBD8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)20,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBBD8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BBB90;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B4CDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&cf, v3, v5);
  v6 = cf;
  v7 = cf;
  vp::sim::Key_Writer::count(&v7, 19, "Telephony REF DSP Settings");
  vp::sim::converters::Default_Converter_CF<applesauce::CF::DictionaryRef>::to_property_list(&cf, *a2);
  vp::sim::Key_Writer::set(&v7, 19, "Telephony REF DSP Settings", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B4DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BBB90;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBB90;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBB90;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBB18;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)19,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBB18;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BBAD0;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(std::vector<float> const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B51F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1}>,void ()(std::vector<float> const&)>::operator()(uint64_t a1, float **a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 18, "HW REF Trim Gains");
  vp::sim::converters::CSV_Converter<float>::to_property_list(&cf, a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 18, "HW REF Trim Gains", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 18, "HW REF Trim Gains", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B5304(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1}>,void ()(std::vector<float> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1}>,void ()(std::vector<float> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1}>,void ()(std::vector<float> const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BBAD0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1}>,void ()(std::vector<float> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBAD0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<float> const&)#1}>,void ()(std::vector<float> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBAD0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBA58;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)18,std::vector<float>>(vp::vx::data_flow::State<std::vector<float>>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BBA58;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

double _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_6vectorIfNS_9allocatorIfEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERSC_RKNS3_27Voice_Processor_State_OwnerEE3__3JS9_N10applesauce2CF8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_SN_EEERNS4_13State_ManagerESP_SW_EUlPPKNS4_5ValueEPS14_E_NS7_IS19_EEFvS17_S18_EEclEOS17_OS18_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = vp::vx::data_flow::Value::view_storage(v3[1]);
  v8 = *v7;
  if (*v7)
  {
    CFRetain(*v7);
  }

  v15 = v8;
  vp::vx::trim_gains_parse_cf(&__p, &v15);
  if (v18)
  {
    if (__p != v17)
    {
      *v14 = __p;
      *&v14[8] = v17;
      goto LABEL_13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  v9 = *v6;
  v10 = v6[1];
  memset(v14, 0, sizeof(v14));
  if (v9 != v10)
  {
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v14, v9, v10, (v10 - v9) >> 2);
  }

LABEL_13:
  if (v8)
  {
    CFRelease(v8);
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v11);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  result = *v14;
  *storage = *v14;
  *(storage + 16) = *&v14[16];
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_6vectorIfNS_9allocatorIfEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERSC_RKNS3_27Voice_Processor_State_OwnerEE3__3JS9_N10applesauce2CF8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_SN_EEERNS4_13State_ManagerESP_SW_EUlPPKNS4_5ValueEPS14_E_NS7_IS19_EEFvS17_S18_EE7__cloneEPNS0_6__baseIS1B_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BAF28;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BBA10;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B5934(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&cf, v3, v5);
  v6 = cf;
  v7 = cf;
  vp::sim::Key_Writer::count(&v7, 17, "HW REF Model UID");
  vp::sim::converters::Default_Converter_CF<applesauce::CF::StringRef>::to_property_list(&cf, *a2);
  vp::sim::Key_Writer::set(&v7, 17, "HW REF Model UID", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B5A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BBA10;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBA10;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBA10;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB998;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)17,applesauce::CF::StringRef>(vp::vx::data_flow::State<applesauce::CF::StringRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB998;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BB950;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B5E4C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 16, "HW REF Data Source");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 16, "HW REF Data Source", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 16, "HW REF Data Source", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B5F5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BB950;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB950;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB950;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB920;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)16,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB920;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BB8D8;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B63A8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 15, "HW REF Bluetooth Device Category Type");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 15, "HW REF Bluetooth Device Category Type", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 15, "HW REF Bluetooth Device Category Type", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B64B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BB8D8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB8D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB8D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB8A8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)15,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB8A8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BB860;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B6904(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 14, "HW REF Transport Type");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 14, "HW REF Transport Type", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 14, "HW REF Transport Type", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B6A14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BB860;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB860;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB860;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB830;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)14,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB830;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BB7E8;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B6E60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 13, "Ref Port #0 EndpointType");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 13, "Ref Port #0 EndpointType", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 13, "Ref Port #0 EndpointType", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B6F70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BB7E8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB7E8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB7E8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB7B8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)13,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB7B8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE3__2JNS3_18Port_Endpoint_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = vp::vx::Legacy<vp::vx::Port_Endpoint_Type>::cast(*v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_2726B7250(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE3__2JNS3_18Port_Endpoint_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BAEE0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BB770;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B751C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 12, "Ref Port #0 Subtype");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 12, "Ref Port #0 Subtype", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 12, "Ref Port #0 Subtype", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B762C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BB770;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB770;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB770;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB740;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)12,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB740;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE3__1JNS3_13Port_Sub_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = vp::vx::legacy_cast<vp::vx::Port_Sub_Type>(*v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE3__1JNS3_13Port_Sub_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BAE98;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BB6F8;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(std::vector<unsigned int> const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B7B7C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::operator()(uint64_t a1, int **a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v9, v3, v5);
  v6 = v9;
  v8 = v9;
  vp::sim::Key_Writer::count(&v8, 11, "Ref Port Types");
  CFArray = applesauce::CF::details::make_CFArrayRef<unsigned int>(a2);
  CFRetain(CFArray);
  v9 = CFArray;
  vp::sim::Key_Writer::set(&v8, 11, "Ref Port Types", &v9);
  if (CFArray)
  {
    CFRelease(CFArray);
  }

  CFRelease(CFArray);
  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B7C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BB6F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB6F8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB6F8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB680;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)11,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB680;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

double _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_6vectorIjNS_9allocatorIjEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERSC_RKNS3_27Voice_Processor_State_OwnerEE3__0JNS3_16Output_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSL_EEERNS4_13State_ManagerESN_SU_EUlPPKNS4_5ValueEPS12_E_NS7_IS17_EEFvS15_S16_EEclEOS15_OS16_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v10 = vp::vx::Legacy<vp::vx::Output_Port_Type>::cast(*v4);
  v9 = 0;
  v8 = 0uLL;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&v8, &v10, &v11, 1uLL);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<unsigned int>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v3);
  result = *&v8;
  *storage = v8;
  *(storage + 16) = v9;
  return result;
}

void sub_2726B7F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, std::exception_ptr a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_6vectorIjNS_9allocatorIjEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERSC_RKNS3_27Voice_Processor_State_OwnerEE3__0JNS3_16Output_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSL_EEERNS4_13State_ManagerESN_SU_EUlPPKNS4_5ValueEPS12_E_NS7_IS17_EEFvS15_S16_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BAE50;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BB638;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B824C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v10, v3, v5);
  v6 = v10;
  v8 = v10;
  vp::sim::Key_Writer::count(&v8, 9, "HW REF Block Size");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 9, "HW REF Block Size", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 9, "HW REF Block Size", &v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B835C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BB638;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB638;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB638;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB5C0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)9,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB5C0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BB578;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(CA::StreamDescription const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726B87A8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = vp::sim::Property_List_Writer::size(*v3);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  vp::sim::Property_List_Writer::find_writable_element(&v11, v3, v5);
  v6 = v11;
  v9 = v11;
  vp::sim::Key_Writer::count(&v9, 8, "HW REF Format");
  vp::sim::converters::Default_Converter<CA::StreamDescription>::to_property_list(&cf, a2, v7);
  v8 = cf;
  if (cf)
  {
    CFRetain(cf);
    v11 = v8;
    vp::sim::Key_Writer::set(&v9, 8, "HW REF Format", &v11);
    CFRelease(v8);
  }

  else
  {
    v11 = 0;
    vp::sim::Key_Writer::set(&v9, 8, "HW REF Format", &v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726B88B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BB578;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB578;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB578;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB500;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)8,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BB500;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void std::__function::__func<void vp::vx::observe_global<BOOL>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(uint64_t a1, unsigned int *a2)
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
        LOBYTE(__p) = 0;
        v10 = 0;
        (*(*v7 + 16))(v7, v4, &__p);
        if (v10 == 1 && v9 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void std::__function::__func<void vp::vx::observe_global<BOOL>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_global<BOOL>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_global<BOOL>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BB338;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::observe_global<BOOL>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB338;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_global<BOOL>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB338;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer9configureEvE3__0JbbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EEclEOSW_OSX_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 12))
  {
    v10 = 1;
  }

  else
  {
    v10 = (*(a1 + 8) != 0) | *v7 & *v9;
  }

  v11 = v10 & 1;
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v12);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v11;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer9configureEvE3__0JbbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t result, void *a2)
{
  *a2 = &unk_2881BAE08;
  a2[1] = *(result + 8);
  return result;
}

void vp::vx::components::Property_List_Writer::set_state_owner(uint64_t a1, __int128 *a2)
{
  v2 = (a1 + 296);
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 304);
  *v2 = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Property_List_Writer::set_state_observer(uint64_t a1, __int128 *a2)
{
  v2 = (a1 + 280);
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 288);
  *v2 = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Property_List_Writer::set_state_manager(uint64_t a1, __int128 *a2)
{
  v2 = (a1 + 264);
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 272);
  *v2 = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Property_List_Writer::set_messenger(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 256);
  *(a1 + 248) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void vp::vx::components::Property_List_Writer::~Property_List_Writer(vp::vx::components::Property_List_Writer *this)
{
  vp::vx::components::Property_List_Writer::~Property_List_Writer(this);

  JUMPOUT(0x2743CBF90);
}

{
  v28 = *MEMORY[0x277D85DE8];
  vp::vx::components::Property_List_Writer::tear_down_property_list_writers(this);
  log = vp::get_log(v2);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Property_List_Writer]", 40);
    v5 = v23;
    v6 = v23;
    v7 = __p[1];
    v8 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (v6 >= 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      v10 = __p[0];
      if (v6 >= 0)
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
      v25 = v10;
      v26 = 2080;
      v27 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v6) = v23;
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = *(this + 48);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 46);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(this + 41);
  if (v14)
  {
    v15 = *(this + 42);
    v16 = *(this + 41);
    if (v15 != v14)
    {
      do
      {
        v15 -= 4;
        std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>::reset[abi:ne200100](v15);
      }

      while (v15 != v14);
      v16 = *(this + 41);
    }

    *(this + 42) = v14;
    std::allocator_traits<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>>::deallocate[abi:ne200100](*(this + 44), v16, (*(this + 43) - v16) >> 5);
  }

  v17 = *(this + 38);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *(this + 36);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = *(this + 34);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = *(this + 32);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  vp::vx::data_flow::State<void>::~State(this + 54);
  vp::Context::~Context((this + 16));
  v21 = *MEMORY[0x277D85DE8];
}

void sub_2726B9168(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::vx::components::Property_Logger::configure(std::__shared_weak_count **this)
{
  v40 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&__t, this, "vp::vx::components::Property_Logger]", 35);
    v4 = HIBYTE(v38);
    v5 = SHIBYTE(v38);
    v6 = v38;
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
      v34 = rep;
      v35 = 2080;
      v36 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = HIBYTE(v38);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__t.__d_.__rep_);
    }
  }

  v11 = this[29];
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    v13 = v12;
    if (v12)
    {
      v14 = this[28];
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        v15 = this[31];
        if (v15)
        {
          v16 = std::__shared_weak_count::lock(v15);
          if (v16)
          {
            v17 = this[30];
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              (v17->__get_deleter)(&__t, v17, 7);
              v30 = __t.__d_.__rep_;
              v31 = v38;
              v38 = 0uLL;
              vp::vx::data_flow::State<void>::~State(&__t);
              v18 = this[1];
              v28[0] = 0;
              v28[1] = v18;
              v29 = xmmword_2727565F0;
              v19 = (v18->__on_zero_shared)(v18, 96, 8);
              v20 = v19;
              *&v21 = v14;
              *(&v21 + 1) = v13;
              atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v22 = *(this + 13);
              v23 = this[27];
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              *v19 = &unk_2881BDE28;
              *(v19 + 8) = v21;
              *(v19 + 24) = v22;
              *(v19 + 48) = 0;
              *(v19 + 56) = 0;
              *(v19 + 40) = 0;
              __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
              *(v20 + 64) = std::chrono::system_clock::to_time_t(&__t);
              *(v20 + 72) = 0;
              *(v20 + 80) = 0;
              *(v20 + 88) = 0;
              std::unique_ptr<vp::vx::components::Property_Logger::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Property_Logger::Node_Decorator_Factory>>::reset[abi:ne200100](v28, v20);
              v24 = v28[0];
              vp::vx::data_flow::State<void>::State(&v27, &v30);
              v26 = v24[1];
              v25 = v24[2];
              if (v25)
              {
                atomic_fetch_add_explicit(v25 + 2, 1uLL, memory_order_relaxed);
              }

              v32[0] = &unk_2881BE140;
              v32[1] = v26;
              v32[2] = v25;
              v32[3] = v32;
              std::__function::__value_func<void ()(unsigned int,BOOL const&)>::__value_func[abi:ne200100](buf, v32);
              v39 = 0;
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
  }
}

void sub_2726B9598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void (***)(void));
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::unique_ptr<vp::vx::components::Property_Logger::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Property_Logger::Node_Decorator_Factory>>::reset[abi:ne200100](va, 0);
  vp::vx::data_flow::State<void>::~State(va1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

void (****std::unique_ptr<vp::vx::components::Property_Logger::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Property_Logger::Node_Decorator_Factory>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

uint64_t vp::vx::components::Property_Logger::set_time(uint64_t this, uint64_t a2)
{
  *(this + 256) = a2;
  v2 = *(this + 264);
  if (v2)
  {
    *(v2 + 64) = a2;
  }

  return this;
}

void vp::vx::components::Property_Logger::set_state_owner(uint64_t a1, __int128 *a2)
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

void vp::vx::components::Property_Logger::set_state_observer(uint64_t a1, __int128 *a2)
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

void vp::vx::components::Property_Logger::set_messenger(uint64_t a1, __int128 *a2)
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

void vp::vx::components::Property_Logger::~Property_Logger(std::__shared_weak_count **this)
{
  vp::vx::components::Property_Logger::~Property_Logger(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v21 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Property_Logger]", 35);
    v4 = v16;
    v5 = v16;
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
      v18 = v9;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v16;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  std::unique_ptr<vp::vx::io::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::io::Node_Decorator_Factory>>::reset[abi:ne200100](this + 33, 0);
  v11 = this[31];
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = this[29];
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = this[27];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  vp::Context::~Context((this + 2));
  v14 = *MEMORY[0x277D85DE8];
}

void virtual thunk tovp::vx::components::Property_Logger::Node_Decorator::~Node_Decorator(vp::vx::components::Property_Logger::Node_Decorator *this)
{
  vp::vx::components::Property_Logger::Node_Decorator::~Node_Decorator((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::components::Property_Logger::Node_Decorator::~Node_Decorator((this + *(*this - 24)));
}

void vp::vx::components::Property_Logger::Node_Decorator::~Node_Decorator(vp::vx::components::Property_Logger::Node_Decorator *this)
{
  v20 = *MEMORY[0x277D85DE8];
  *this = &unk_2881BDCA0;
  *(this + 8) = &unk_2881BDDC0;
  *(this + 5) = &unk_2881BDD68;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    vp::vx::io::get_log_context_info(__p, this + *(*this - 24), "vp::vx::components::Property_Logger::Node_Decorator]", 51);
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

  v11 = *(this + 7);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  *this = off_2881BDE58;
  *(this + 8) = off_2881BDEF0;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](this + 1, 0);
  *(this + 8) = &unk_2881C6630;
  v12 = *(this + 10);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::components::Property_Logger::Node_Decorator::~Node_Decorator(this);

  JUMPOUT(0x2743CBFA0);
}

void non-virtual thunk tovp::vx::components::Property_Logger::Node_Decorator::~Node_Decorator(vp::vx::components::Property_Logger::Node_Decorator *this)
{
  vp::vx::components::Property_Logger::Node_Decorator::~Node_Decorator((this - 40));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::components::Property_Logger::Node_Decorator::~Node_Decorator((this - 40));
}

void vp::vx::components::Property_Logger::Node_Decorator::set_property(vp::vx::components::Property_Logger::Node_Decorator *this@<X0>, const vp::Blob *a2@<X2>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v8 = (*(**(this + 1) + 16))(*(this + 1));
  if (v8)
  {
    v9 = v8;
    rep = std::chrono::system_clock::now().__d_.__rep_;
    (*(*v9 + 40))(v9, a3, a2);
    if (*(a4 + 48) == 1)
    {
      vp::vx::components::Property_Logger::Node_Decorator::Property::Property(&v15, *a2, *(a2 + 1));
      v12 = "set";
      vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,vp::vx::components::Property_Logger::Node_Decorator::Property>::Buffer::write(*(this + 6), &rep, &v12, &v14, &v15);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<vp::vx::components::Property_Logger::Node_Decorator::Property::Small_Storage,vp::vx::components::Property_Logger::Node_Decorator::Property::Large_Storage>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v16);
    }
  }

  else
  {
    v15 = 0x1000700000000DLL;
    v16 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/components/Property_Logger+Node_Decorator.cpp";
    v18 = 0;
    v19 = 0;
    v17 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v20);
    v10 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a4, &v15);
    if (SHIBYTE(v19) < 0)
    {
      (*(*v20[0] + 24))(v20[0], v17, v19 & 0x7FFFFFFFFFFFFFFFLL, 1, v10);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2726B9D6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

vp::vx::components::Property_Logger::Node_Decorator::Property *vp::vx::components::Property_Logger::Node_Decorator::Property::Property(vp::vx::components::Property_Logger::Node_Decorator::Property *this, const void *__src, size_t __n)
{
  v17 = *MEMORY[0x277D85DE8];
  *this = __n;
  *(this + 8) = 0u;
  v6 = (this + 8);
  *(this + 24) = 0u;
  *(this + 10) = 0;
  if (__n > 0x20)
  {
    MEMORY[0x2743CB700]();
    v8 = *MEMORY[0x277D7F098];
    if (!*MEMORY[0x277D7F098])
    {
      __break(1u);
    }

    v9 = (*(*v8 + 16))(*MEMORY[0x277D7F098], (__n + 47) & 0xFFFFFFFFFFFFFFF8, 8);
    *v9 = &unk_2881BE060;
    v9[1] = 0;
    v9[2] = 0;
    v9[3] = v8;
    v9[4] = __n;
    bzero(v9 + 5, __n);
    *&v10 = v9 + 5;
    *(&v10 + 1) = v9;
    v14 = v10;
    memcpy(v9 + 5, __src, __n);
    if (*(this + 10) == 1)
    {
      v11 = *(this + 2);
      *(this + 8) = v14;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    else
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<vp::vx::components::Property_Logger::Node_Decorator::Property::Small_Storage,vp::vx::components::Property_Logger::Node_Decorator::Property::Large_Storage>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v6);
      *(this + 8) = v14;
      *(this + 10) = 1;
    }
  }

  else
  {
    __dst = 0uLL;
    v16 = 0uLL;
    memcpy(&__dst, __src, __n);
    v7 = v16;
    *v6 = __dst;
    v6[1] = v7;
  }

  v12 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2726B9F08(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,vp::vx::components::Property_Logger::Node_Decorator::Property>::Buffer::write(uint64_t a1, void *a2, void *a3, int *a4, uint64_t *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 744);
  v11 = *(a1 + 672);
  explicit = atomic_load_explicit((a1 + 736), memory_order_acquire);
  v13 = v10 - 1;
  v14 = v11 >= explicit;
  v15 = v11 - explicit;
  if (!v14)
  {
    v13 = -1;
  }

  if (v15 == v13)
  {
    vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,vp::vx::components::Property_Logger::Node_Decorator::Property>::Buffer::flush(a1);
  }

  *&v30 = *a2;
  *(&v30 + 1) = *a3;
  v31 = *a4;
  v32 = *a5;
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<vp::vx::components::Property_Logger::Node_Decorator::Property::Small_Storage,vp::vx::components::Property_Logger::Node_Decorator::Property::Large_Storage>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v33, (a5 + 1));
  v16 = *(a1 + 752);
  v17 = *(a1 + 744);
  v18 = *(a1 + 672);
  v19 = v18 + v17 + 1;
  do
  {
    v19 -= v17;
  }

  while (v19 >= v17);
  if (v19 == atomic_load_explicit((a1 + 736), memory_order_acquire))
  {
    goto LABEL_19;
  }

  v20 = v16 + 72 * v18;
  *v20 = v30;
  *(v20 + 16) = v31;
  *(v20 + 24) = v32;
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<vp::vx::components::Property_Logger::Node_Decorator::Property::Small_Storage,vp::vx::components::Property_Logger::Node_Decorator::Property::Large_Storage>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v20 + 32, v33);
  atomic_store(v19, (a1 + 672));
  std::__variant_detail::__dtor<std::__variant_detail::__traits<vp::vx::components::Property_Logger::Node_Decorator::Property::Small_Storage,vp::vx::components::Property_Logger::Node_Decorator::Property::Large_Storage>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v33);
  v21 = *(a1 + 744);
  v22 = *(a1 + 672);
  v23 = atomic_load_explicit((a1 + 736), memory_order_acquire);
  if (v22 < v23)
  {
    v21 = 0;
  }

  if (v23 + ~v22 + v21 < *(a1 + 648) >> 1)
  {
    v24 = *(a1 + 656);
    if (!v24)
    {
      vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,vp::vx::components::Property_Logger::Node_Decorator::Property>::Buffer::flush(a1);
      goto LABEL_17;
    }

    v25 = *a1;
    v26 = *(a1 + 8);
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 16), 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x277D7F098])
    {
      v29 = v25;
      v27 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v27 + 16) = 0;
      *(v27 + 24) = v29;
      *v27 = &unk_2881BE0F0;
      *(v27 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v24, v27);
      goto LABEL_17;
    }

    __break(1u);
LABEL_19:
    std::__variant_detail::__dtor<std::__variant_detail::__traits<vp::vx::components::Property_Logger::Node_Decorator::Property::Small_Storage,vp::vx::components::Property_Logger::Node_Decorator::Property::Large_Storage>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v33);
    memset(v33, 0, sizeof(v33));
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_17:
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<vp::vx::components::Property_Logger::Node_Decorator::Property::Small_Storage,vp::vx::components::Property_Logger::Node_Decorator::Property::Large_Storage>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 != -1)
  {
    result = (off_2881BE040[v2])(&v3, result);
  }

  *(v1 + 32) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN2vp2vx10components15Property_Logger14Node_Decorator8Property13Small_StorageENSD_13Large_StorageEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSE_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,vp::vx::components::Property_Logger::Node_Decorator::Property>::Buffer::flush(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  v12 = a1;
  v2 = *(a1 + 752);
  v3 = *(a1 + 744);
  explicit = atomic_load_explicit((a1 + 672), memory_order_acquire);
  v5 = *(a1 + 736);
  v6 = explicit - v5;
  if (explicit >= v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7 + v6;
  if (v7 + v6)
  {
    v9 = v7 + explicit;
    v10 = v2 + 72 * v5;
    v11 = v7 + explicit - v3;
    if (v7 + explicit <= v3)
    {
      _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EPKcjNS5_2vx10components15Property_Logger14Node_Decorator8PropertyEEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_S9_jSE_EE6Buffer5flushEvEUlRKT_E_EEvPSF_SP_SN_(v10, v10 + 72 * v8, &v12);
      if (v9 == v3)
      {
        v11 = 0;
      }

      else
      {
        v11 = v9;
      }
    }

    else
    {
      _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EPKcjNS5_2vx10components15Property_Logger14Node_Decorator8PropertyEEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_S9_jSE_EE6Buffer5flushEvEUlRKT_E_EEvPSF_SP_SN_(v10, v2 + 72 * v3, &v12);
      _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EPKcjNS5_2vx10components15Property_Logger14Node_Decorator8PropertyEEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_S9_jSE_EE6Buffer5flushEvEUlRKT_E_EEvPSF_SP_SN_(v2, v2 + 72 * (v5 - v3) + 72 * v8, &v12);
    }

    atomic_store(v11, (a1 + 736));
  }

  std::ostream::flush();

  std::mutex::unlock((a1 + 16));
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<vp::vx::components::Property_Logger::Node_Decorator::Property::Small_Storage,vp::vx::components::Property_Logger::Node_Decorator::Property::Large_Storage>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<vp::vx::components::Property_Logger::Node_Decorator::Property::Small_Storage,vp::vx::components::Property_Logger::Node_Decorator::Property::Large_Storage>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v4 = *(a2 + 32);
  if (v4 != -1)
  {
    v6 = a1;
    (off_2881BE0D0[v4])(&v6, a2);
    *(a1 + 32) = v4;
  }

  return a1;
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjNS3_2vx10components15Property_Logger14Node_Decorator8PropertyEEE6Buffer5writeERKS6_RKS8_RKjRKSD_EUlT_E_JNSt3__18weak_ptrISF_EEEE7performEv(caulk::concurrent::message *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *(a1 + 3);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v3)
      {
        vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,vp::vx::components::Property_Logger::Node_Decorator::Property>::Buffer::flush(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::__shared_weak_count::__release_weak(v2);
    v6 = *(a1 + 4);
    *a1 = &unk_2881BE118;
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    *a1 = &unk_2881BE118;
  }

  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x277D7F098];
  if (*MEMORY[0x277D7F098])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _ZN5caulk10concurrent7details12message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjNS3_2vx10components15Property_Logger14Node_Decorator8PropertyEEE6Buffer5writeERKS6_RKS8_RKjRKSD_EUlT_E_JNSt3__18weak_ptrISF_EEEE7performEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 24);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = std::__shared_weak_count::lock(v1);
    if (v3)
    {
      v4 = v3;
      if (v2)
      {
        vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,vp::vx::components::Property_Logger::Node_Decorator::Property>::Buffer::flush(v2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZN5caulk10concurrent7details12message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjNS3_2vx10components15Property_Logger14Node_Decorator8PropertyEEE6Buffer5writeERKS6_RKS8_RKjRKSD_EUlT_E_JNSt3__18weak_ptrISF_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881BE118;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

void _ZN5caulk10concurrent7details12message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjNS3_2vx10components15Property_Logger14Node_Decorator8PropertyEEE6Buffer5writeERKS6_RKS8_RKjRKSD_EUlT_E_JNSt3__18weak_ptrISF_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881BE118;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjNS3_2vx10components15Property_Logger14Node_Decorator8PropertyEEE6Buffer5writeERKS6_RKS8_RKjRKSD_EUlT_E_JNSt3__18weak_ptrISF_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881BE118;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjNS3_2vx10components15Property_Logger14Node_Decorator8PropertyEEE6Buffer5writeERKS6_RKS8_RKjRKSD_EUlT_E_JNSt3__18weak_ptrISF_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881BE118;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN2vp2vx10components15Property_Logger14Node_Decorator8Property13Small_StorageENSD_13Large_StorageEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSE_SF_EEEEEEDcSP_DpT0_(void **result, void *a2)
{
  v2 = *result;
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN2vp2vx10components15Property_Logger14Node_Decorator8Property13Small_StorageENSD_13Large_StorageEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSE_SF_EEEEEEDcSP_DpT0_(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

uint64_t _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EPKcjNS5_2vx10components15Property_Logger14Node_Decorator8PropertyEEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_S9_jSE_EE6Buffer5flushEvEUlRKT_E_EEvPSF_SP_SN_(uint64_t result, uint64_t a2, void *a3)
{
  if (result != a2)
  {
    v5 = result + 32;
    v6 = MEMORY[0x277D82680];
    do
    {
      v7 = v5 - 32;
      v8 = (*a3 + 80);
      vp::utility::operator<<(v8, *(v5 - 32));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", ", 2);
      v9 = strlen(*(v5 - 24));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, *(v5 - 24), v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", ", 2);
      v10 = MEMORY[0x2743CBB40](v8, *(v5 - 16));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", ", 2);
      v14[0] = v5 - 8;
      v14[1] = v8;
      v11 = *(v5 + 32);
      if (v11 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v15 = v14;
      (off_2881BE088[v11])(&v15, v5);
      std::ios_base::getloc((v8 + *(*v8 - 24)));
      v12 = std::locale::use_facet(&v13, v6);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v13);
      std::ostream::put();
      std::ostream::flush();
      result = std::__variant_detail::__dtor<std::__variant_detail::__traits<vp::vx::components::Property_Logger::Node_Decorator::Property::Small_Storage,vp::vx::components::Property_Logger::Node_Decorator::Property::Large_Storage>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v5);
      v5 += 72;
    }

    while (v7 + 72 != a2);
  }

  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<vp::vx::components::Property_Logger::Node_Decorator::Property::log(std::ostream &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,vp::vx::components::Property_Logger::Node_Decorator::Property::Small_Storage,vp::vx::components::Property_Logger::Node_Decorator::Property::Large_Storage> const&>(uint64_t ***a1, const unsigned __int8 **a2)
{
  v2 = (*a1)[1];
  vp::utility::encode_to_base_64(v6, *a2, ***a1);
  v3 = v8;
  if (v8 == 1)
  {
    *__p = *v6;
    v10 = v7;
    v6[1] = 0;
    v7 = 0;
    v6[0] = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "(null)");
  }

  if (v10 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v10 >= 0)
  {
    v5 = HIBYTE(v10);
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (v3)
  {
    if (SHIBYTE(v7) < 0)
    {
      operator delete(v6[0]);
    }
  }
}

void sub_2726BA970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    if (a14 < 0)
    {
      operator delete(a9);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<vp::vx::components::Property_Logger::Node_Decorator::Property::log(std::ostream &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,vp::vx::components::Property_Logger::Node_Decorator::Property::Small_Storage,vp::vx::components::Property_Logger::Node_Decorator::Property::Large_Storage> const&>(uint64_t ***a1, const unsigned __int8 *a2)
{
  v2 = (*a1)[1];
  vp::utility::encode_to_base_64(v6, a2, ***a1);
  v3 = v8;
  if (v8 == 1)
  {
    *__p = *v6;
    v10 = v7;
    v6[1] = 0;
    v7 = 0;
    v6[0] = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "(null)");
  }

  if (v10 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v10 >= 0)
  {
    v5 = HIBYTE(v10);
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (v3)
  {
    if (SHIBYTE(v7) < 0)
    {
      operator delete(v6[0]);
    }
  }
}

void sub_2726BAA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    if (a14 < 0)
    {
      operator delete(a9);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__unbounded_array_control_block<unsigned char [],vp::Allocator<unsigned char []>>::~__unbounded_array_control_block(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::components::Property_Logger::Node_Decorator::get_property(vp::vx::components::Property_Logger::Node_Decorator *this@<X0>, vp::Mutable_Blob *a2@<X2>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v8 = (*(**(this + 1) + 16))(*(this + 1));
  if (v8)
  {
    v9 = v8;
    rep = std::chrono::system_clock::now().__d_.__rep_;
    (*(*v9 + 32))(v9, a3, a2);
    if (*(a4 + 48) == 1)
    {
      vp::vx::components::Property_Logger::Node_Decorator::Property::Property(&v15, *a2, *(a2 + 2));
      v12 = "get";
      vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,vp::vx::components::Property_Logger::Node_Decorator::Property>::Buffer::write(*(this + 6), &rep, &v12, &v14, &v15);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<vp::vx::components::Property_Logger::Node_Decorator::Property::Small_Storage,vp::vx::components::Property_Logger::Node_Decorator::Property::Large_Storage>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v16);
    }
  }

  else
  {
    v15 = 0x10005C0000000DLL;
    v16 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/components/Property_Logger+Node_Decorator.cpp";
    v18 = 0;
    v19 = 0;
    v17 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v20);
    v10 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a4, &v15);
    if (SHIBYTE(v19) < 0)
    {
      (*(*v20[0] + 24))(v20[0], v17, v19 & 0x7FFFFFFFFFFFFFFFLL, 1, v10);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2726BACD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void vp::vx::components::Property_Logger::Node_Decorator::get_property_info(vp::vx::components::Property_Logger::Node_Decorator *this@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(**(this + 1) + 16))(*(this + 1));
  if (v3)
  {
    v4 = *(*v3 + 24);

    v4();
  }

  else
  {
    v6[0] = 0x1000480000000DLL;
    v6[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/components/Property_Logger+Node_Decorator.cpp";
    v8 = 0;
    v9 = 0;
    v7 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v10);
    v5 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a2, v6);
    if (SHIBYTE(v9) < 0)
    {
      (*(*v10 + 24))(v10, v7, v9 & 0x7FFFFFFFFFFFFFFFLL, 1, v5);
    }
  }
}

double vp::vx::components::Property_Logger::Node_Decorator::get_property_ids@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v3)
  {
    (*(*v3 + 16))(&v6);
    v5 = v7;
    result = *&v6;
    *a2 = v6;
    a2[2] = v5;
  }

  return result;
}

uint64_t non-virtual thunk tovp::vx::components::Property_Logger::Node_Decorator::has_property(uint64_t a1)
{
  result = (*(**(a1 - 32) + 16))(*(a1 - 32));
  if (result)
  {
    v2 = *(*result + 8);

    return v2();
  }

  return result;
}

uint64_t (***non-virtual thunk tovp::vx::components::Property_Logger::Node_Decorator::has_property(vp::vx::components::Property_Logger::Node_Decorator *this))(void)
{
  result = (*(**(this - 4) + 16))(*(this - 4));
  if (result)
  {
    v2 = **result;

    return v2();
  }

  return result;
}

uint64_t vp::vx::components::Property_Logger::Node_Decorator::has_property(uint64_t a1)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (result)
  {
    v2 = *(*result + 8);

    return v2();
  }

  return result;
}

uint64_t (***vp::vx::components::Property_Logger::Node_Decorator::has_property(vp::vx::components::Property_Logger::Node_Decorator *this))(void)
{
  result = (*(**(this + 1) + 16))(*(this + 1));
  if (result)
  {
    v2 = **result;

    return v2();
  }

  return result;
}

uint64_t vp::vx::components::Property_Logger::Node_Decorator::as_property_controller(vp::vx::components::Property_Logger::Node_Decorator *this)
{
  return this + 40;
}

{
  return this + 40;
}

void vp::vx::components::Property_Logger::Node_Decorator_Factory::new_node_decorator(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
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

        std::string::append(&v23, ".Property.csv", 0xDuLL);
        v17 = (*(*a3 + 16))(a3, 88, 8);
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
          vp::vx::components::Property_Logger::Node_Decorator::Node_Decorator(v17);
        }

        vp::vx::components::Property_Logger::Node_Decorator::Node_Decorator(v17);
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

void sub_2726BB420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    std::unique_ptr<vp::vx::components::Property_Logger::Node_Decorator,vp::Allocator_Delete<vp::vx::components::Property_Logger::Node_Decorator>>::reset[abi:ne200100](&a9, 0);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<vp::vx::components::Property_Logger::Node_Decorator,vp::Allocator_Delete<vp::vx::components::Property_Logger::Node_Decorator>>::reset[abi:ne200100](void *result, uint64_t a2)
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

void vp::vx::components::Property_Logger::Node_Decorator::Node_Decorator(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *(a1 + 64) = &unk_2881C6630;
  operator new();
}

void sub_2726BBD14(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    std::ostream::~ostream();
    MEMORY[0x2743CBE30](v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,vp::vx::components::Property_Logger::Node_Decorator::Property>::Buffer,std::allocator<vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,vp::vx::components::Property_Logger::Node_Decorator::Property>::Buffer>>::__on_zero_shared(uint64_t a1)
{
  vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,vp::vx::components::Property_Logger::Node_Decorator::Property>::Buffer::flush(a1 + 24);
  v2 = *(a1 + 776);
  v3 = *(a1 + 768);
  explicit = atomic_load_explicit((a1 + 696), memory_order_acquire);
  v5 = *(a1 + 760);
  v6 = explicit - v5;
  if (explicit >= v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7 + v6;
  if (v7 + v6)
  {
    v9 = v7 + explicit;
    v10 = v7 + explicit - v3;
    if (v7 + explicit <= v3)
    {
      v17 = 9 * v5;
      v18 = 72 * v9 - 8 * v17;
      v19 = v2 + 8 * v17 + 32;
      do
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<vp::vx::components::Property_Logger::Node_Decorator::Property::Small_Storage,vp::vx::components::Property_Logger::Node_Decorator::Property::Large_Storage>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v19);
        v19 += 72;
        v18 -= 72;
      }

      while (v18);
      if (v9 == v3)
      {
        v10 = 0;
      }

      else
      {
        v10 = v7 + explicit;
      }
    }

    else
    {
      v11 = v5 - v3;
      if (v5 != v3)
      {
        v12 = 9 * v5;
        v13 = 72 * v3 - 8 * v12;
        v14 = v2 + 8 * v12 + 32;
        do
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<vp::vx::components::Property_Logger::Node_Decorator::Property::Small_Storage,vp::vx::components::Property_Logger::Node_Decorator::Property::Large_Storage>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v14);
          v14 += 72;
          v13 -= 72;
        }

        while (v13);
      }

      if (v2 + 72 * v11 + 72 * v8 != v2)
      {
        v15 = 72 * (v7 + explicit) - 72 * v3;
        v16 = v2 + 32;
        do
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<vp::vx::components::Property_Logger::Node_Decorator::Property::Small_Storage,vp::vx::components::Property_Logger::Node_Decorator::Property::Large_Storage>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v16);
          v16 += 72;
          v15 -= 72;
        }

        while (v15);
      }
    }

    atomic_store(v10, (a1 + 760));
  }

  v20 = *(a1 + 776);
  if (v20)
  {
    free(*(v20 - 8));
  }

  v21 = *(a1 + 688);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v22 = MEMORY[0x277D82810];
  v23 = *MEMORY[0x277D82810];
  *(a1 + 104) = *MEMORY[0x277D82810];
  *(a1 + 104 + *(v23 - 24)) = *(v22 + 24);
  MEMORY[0x2743CBA00](a1 + 112);
  std::ostream::~ostream();
  MEMORY[0x2743CBE30](a1 + 520);
  std::mutex::~mutex((a1 + 40));
  v24 = *(a1 + 32);
  if (v24)
  {

    std::__shared_weak_count::__release_weak(v24);
  }
}

void std::__shared_ptr_emplace<vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,vp::vx::components::Property_Logger::Node_Decorator::Property>::Buffer,std::allocator<vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,vp::vx::components::Property_Logger::Node_Decorator::Property>::Buffer>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881BE0A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::components::Property_Logger::Node_Decorator_Factory::~Node_Decorator_Factory(vp::vx::components::Property_Logger::Node_Decorator_Factory *this)
{
  *this = &unk_2881BDE28;
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
  *this = &unk_2881BDE28;
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

void std::__function::__func<vp::vx::components::Property_Logger::Node_Decorator_Factory::set_should_enable_property_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Property_Logger::Node_Decorator_Factory::set_should_enable_property_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned __int8 *a3)
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
        if (v6)
        {
          v10 = "I/O node property loggers are enabled";
        }

        else
        {
          v10 = "I/O node property loggers are disabled";
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v10);
        v13 = 1;
        (*(*v9 + 16))(v9, v5, __p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<vp::vx::components::Property_Logger::Node_Decorator_Factory::set_should_enable_property_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Property_Logger::Node_Decorator_Factory::set_should_enable_property_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::components::Property_Logger::Node_Decorator_Factory::set_should_enable_property_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Property_Logger::Node_Decorator_Factory::set_should_enable_property_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::components::Property_Logger::Node_Decorator_Factory::set_should_enable_property_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Property_Logger::Node_Decorator_Factory::set_should_enable_property_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BE140;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::components::Property_Logger::Node_Decorator_Factory::set_should_enable_property_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Property_Logger::Node_Decorator_Factory::set_should_enable_property_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BE140;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::components::Property_Logger::Node_Decorator_Factory::set_should_enable_property_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Property_Logger::Node_Decorator_Factory::set_should_enable_property_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BE140;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t *std::__hash_table<vp::vx::Property_ID,std::hash<vp::vx::Property_ID>,std::equal_to<vp::vx::Property_ID>,vp::Allocator<vp::vx::Property_ID>>::~__hash_table(uint64_t *a1)
{
  v2 = a1[3];
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::allocator_traits<vp::Allocator<std::__hash_node<vp::vx::Property_ID,void *>>>::deallocate[abi:ne200100](a1[4], v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<vp::vx::Property_ID,void *> *> *>>::deallocate[abi:ne200100](a1[2], v4, a1[1]);
  }

  return a1;
}

void *boost::container::flat_map<vp::vx::Property_ID,unsigned int,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,unsigned int>>>::~flat_map(void *a1)
{
  if (a1[3])
  {
    v2 = *a1;
    v3 = a1[1];
    (*(**a1 + 24))();
  }

  return a1;
}

void *boost::container::vector<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = (a1[1] + 8);
    do
    {
      --v2;
      v6 = v3;
      std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v3 += 5;
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

void *boost::container::vector<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = (a1[1] + 8);
    do
    {
      --v2;
      v3 = vp::vx::data_flow::State<void>::~State(v3) + 12;
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

uint64_t **std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__destroy_vector::operator()[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    v5 = *result;
    if (v3 != v2)
    {
      v6 = result;
      do
      {
        v3 -= 16;
        std::pmr::polymorphic_allocator<vp::vx::Property_Manager::Listener>::destroy[abi:ne200100]<vp::vx::Property_Manager::Listener>(v3);
      }

      while (v3 != v2);
      v5 = *v6;
      v4 = **v6;
    }

    v1[1] = v2;
    v7 = v5[3];
    v8 = (v5[2] - v4) >> 4;

    return std::allocator_traits<vp::Allocator<vp::vx::Property_Manager::Listener>>::deallocate[abi:ne200100](v7, v4, v8);
  }

  return result;
}

void std::pmr::polymorphic_allocator<vp::vx::Property_Manager::Listener>::destroy[abi:ne200100]<vp::vx::Property_Manager::Listener>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 8) = 0;
  }
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 48 * *(a1 + 16), 8);
  }

  return a1;
}

unsigned int *boost::container::flat_map<vp::vx::Property_ID,vp::vx::Property,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,vp::vx::Property>>>::at(unsigned int *a1, unint64_t a2, unsigned int a3)
{
  if (!a1 && a2)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v3 = a1;
  if (a2)
  {
    v3 = a1;
    v4 = a2;
    do
    {
      if (v4 != 1 && !v3)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v3)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = (v4 >> 1);
      v6 = &v3[12 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 12;
      v4 += ~(v4 >> 1);
      if (v8 >= a3)
      {
        v4 = v5;
      }

      else
      {
        v3 = v7;
      }
    }

    while (v4);
  }

  v9 = &a1[12 * a2];
  if (v3 == v9)
  {
    goto LABEL_22;
  }

  if (!v3)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*v3 > a3)
  {
    v3 = &a1[12 * a2];
  }

  if (v3 == v9)
  {
LABEL_22:
    boost::container::throw_length_error("flat_map::at key not found", a2);
  }

  return v3 + 2;
}

uint64_t vp::vx::Property_Manager::add_property(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = a2;
  v27 = 0;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = a2;
  v28 = v4 + 48 * v5;
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>>>::priv_insert_unique_prepare(v4, &v28, &v26, &v27);
  v10 = v27;
  v11 = *(a1 + 8);
  if (result)
  {
    if (v11 > v27)
    {
      goto LABEL_23;
    }

    v12 = *(a1 + 16);
    if (!v11 && v12)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v13 = v11 + 48 * v12;
    if (v27 > v13)
    {
LABEL_23:
      __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
    }

    v14 = *(a1 + 24);
    if (v14 < v12)
    {
      __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
    }

    if (v14 == v12)
    {
      result = boost::container::vector<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>>,boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>*,vp::vx::Property_ID const&,vp::vx::Property>>(&v28, a1, v27, a3, &v26);
    }

    else if (v13 == v27)
    {
      *v13 = v8;
      *(v13 + 8) = *a3;
      *(v13 + 16) = *(a3 + 8);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(v13 + 32) = *(a3 + 24);
      ++*(a1 + 16);
    }

    else
    {
      v15 = v13 - 48;
      *v13 = *(v13 - 48);
      *(v13 + 8) = *(v13 - 40);
      v16 = *(v13 - 32);
      v17 = *(v13 - 16);
      *(v13 - 32) = 0;
      *(v13 - 24) = 0;
      *(v13 + 16) = v16;
      *(v13 + 32) = v17;
      ++*(a1 + 16);
      if ((v13 - 48) != v10)
      {
        v18 = (v13 - 48);
        do
        {
          v19 = *(v18 - 12);
          v18 -= 12;
          *v15 = v19;
          vp::vx::data_flow::State<void>::~State((v15 + 8));
          *(v15 + 8) = *(v15 - 40);
          v20 = *(v15 - 32);
          v21 = *(v15 - 16);
          *(v15 - 32) = 0;
          *(v15 - 24) = 0;
          *(v15 + 16) = v20;
          *(v15 + 32) = v21;
          v15 = v18;
        }

        while (v18 != v10);
        v8 = v26;
      }

      v22 = *a3;
      LODWORD(v28) = v8;
      v29 = v22;
      v25 = *(a3 + 8);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      v23 = *(a3 + 24);
      v30 = v25;
      v31 = v23;
      *v10 = v8;
      vp::vx::data_flow::State<void>::~State(v10 + 2);
      v10[2] = v22;
      *(v10 + 1) = v25;
      v30 = 0uLL;
      *(v10 + 2) = v31;
      result = vp::vx::data_flow::State<void>::~State(&v29);
    }
  }

  else
  {
    if (*(a1 + 16) < 0xAAAAAAAAAAAAAAABLL * ((v27 - v11) >> 4))
    {
      __assert_rtn("nth", "vector.hpp", 1688, "this->m_holder.m_size >= n");
    }

    result = vp::vx::data_flow::State<void>::~State(v27 + 2);
    v10[2] = *a3;
    *(v10 + 1) = *(a3 + 8);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(v10 + 2) = *(a3 + 24);
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726BCBD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int **a4)
{
  v9 = a1;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>*,true>,vp::vx::Property_ID>(&v10, &v9, *a2, *a3);
  v7 = v10;
  *a4 = v10;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a3 < *v7;
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>>,boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>*,vp::vx::Property_ID const&,vp::vx::Property>>(void *a1, const char *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = *(a2 + 3);
  if (v5 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v5 == 0x555555555555555)
  {
    goto LABEL_28;
  }

  if (v5 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v5;
  }

  if (v5 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v5 / 5;
  }

  v8 = v5 + 1;
  if (v7 >= 0x555555555555555)
  {
    v7 = 0x555555555555555;
  }

  v9 = v8 > v7 ? v5 + 1 : v7;
  if (v8 > 0x555555555555555)
  {
LABEL_28:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v15 = *(a2 + 1);
  v16 = (*(**a2 + 16))(*a2, 48 * v9, 8);
  v17 = v16;
  v28[1] = a2;
  v28[2] = v9;
  v18 = *(a2 + 1);
  v19 = v18 + 48 * *(a2 + 2);
  v20 = v16;
  if (v18 != a3)
  {
    v21 = *(a2 + 1);
    v20 = v16;
    do
    {
      *v20 = *v21;
      *(v20 + 8) = *(v21 + 8);
      *(v20 + 16) = *(v21 + 16);
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      *(v20 + 32) = *(v21 + 32);
      v21 += 48;
      v20 += 48;
    }

    while (v21 != a3);
  }

  *v20 = *a5;
  *(v20 + 8) = *a4;
  *(v20 + 16) = *(a4 + 8);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(v20 + 32) = *(a4 + 24);
  if (v19 != a3)
  {
    v22 = (v20 + 80);
    v23 = a3;
    do
    {
      *(v22 - 8) = *v23;
      *(v22 - 6) = *(v23 + 8);
      *(v22 - 1) = *(v23 + 16);
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      *v22 = *(v23 + 32);
      v22 += 3;
      v23 += 48;
    }

    while (v23 != v19);
  }

  v28[0] = 0;
  if (v18)
  {
    v24 = *(a2 + 2);
    if (v24)
    {
      v25 = (v18 + 8);
      do
      {
        --v24;
        v25 = vp::vx::data_flow::State<void>::~State(v25) + 12;
      }

      while (v24);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 48 * *(a2 + 3), 8);
  }

  v26 = *(a2 + 2) + 1;
  *(a2 + 1) = v17;
  *(a2 + 2) = v26;
  *(a2 + 3) = v9;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>>>::~scoped_array_deallocator(v28);
  *a1 = *(a2 + 1) + a3 - v15;
  return result;
}

void sub_2726BCEE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>*,true>,vp::vx::Property_ID>(void *result, void *a2, uint64_t a3, unsigned int a4)
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

unsigned int *boost::container::flat_map<vp::vx::Property_ID,vp::vx::Property,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,vp::vx::Property>>>::at(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v15 = v2;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>*,true>,vp::vx::Property_ID>(&v14, &v15, v2 + 48 * v3, *a2);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v11 = (v8 + 48 * v9);
  v12 = v14;
  if (v14 != v11)
  {
    if (!v14)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a2 < *v14)
    {
      v12 = v11;
    }
  }

  if (v12 == v11)
  {
    boost::container::throw_length_error("flat_map::at key not found", v7);
  }

  return v12 + 2;
}

unsigned int *boost::container::flat_map<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>>::priv_subscript(uint64_t a1, unsigned int *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v41 = v2;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v7 = boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>*,false>,vp::vx::Property_ID>(&v38, &v41, &v2[5 * v3], *a2);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v11 = v38;
  if (v38 == (v8 + 40 * v9))
  {
    goto LABEL_14;
  }

  if (!v38)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*a2 < *v38)
  {
LABEL_14:
    default_resource = std::pmr::get_default_resource(v7);
    v13 = *a2;
    v35 = v13;
    v37[3] = default_resource;
    memset(v37, 0, 24);
    LODWORD(v41) = v13;
    v43 = 0;
    v44 = default_resource;
    v42 = 0uLL;
    v36[3] = default_resource;
    memset(v36, 0, 24);
    v14 = *(a1 + 8);
    if (v14 > v11)
    {
      goto LABEL_46;
    }

    v15 = *(a1 + 16);
    if (!v14 && v15)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v16 = &v14[10 * v15];
    if (v11 > v16)
    {
LABEL_46:
      v30 = "this->priv_in_range_or_end(hint)";
      v31 = 879;
      v32 = "flat_tree.hpp";
      v33 = "insert_unique";
      goto LABEL_52;
    }

    v39 = 0;
    if (v11 == v16)
    {
      goto LABEL_21;
    }

    if (!v11)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (v13 < *v11)
    {
LABEL_21:
      v39 = v11;
      if (v11 != v14)
      {
        if (!v11)
        {
          __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
        }

        v19 = *(v11 - 10);
        v18 = (v11 - 10);
        v17 = v19;
        if (v19 >= v13)
        {
          if (v13 < v17)
          {
            v40 = v18;
            if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>>::priv_insert_unique_prepare(v14, &v40, v13, &v39))
            {
              goto LABEL_41;
            }

            goto LABEL_28;
          }

          v39 = v18;
LABEL_41:
          v11 = v39;
          if (!*(a1 + 8) && v39)
          {
            __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
          }

LABEL_43:
          v40 = &v42;
          std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__destroy_vector::operator()[abi:ne200100](&v40);
          v38 = v11;
          v41 = v36;
          std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__destroy_vector::operator()[abi:ne200100](&v41);
          v41 = v37;
          std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__destroy_vector::operator()[abi:ne200100](&v41);
          if (!v11)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          goto LABEL_44;
        }
      }
    }

    else
    {
      v40 = v16;
      if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>>::priv_insert_unique_prepare(v11, &v40, v13, &v39))
      {
        goto LABEL_41;
      }
    }

LABEL_28:
    v11 = v39;
    v20 = *(a1 + 8);
    if (v20 > v39)
    {
      goto LABEL_49;
    }

    v21 = *(a1 + 16);
    if (!v20 && v21)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v22 = v20 + 40 * v21;
    if (v39 > v22)
    {
LABEL_49:
      v30 = "this->priv_in_range_or_end(position)";
      v31 = 1862;
      v32 = "vector.hpp";
      v33 = "emplace";
    }

    else
    {
      v23 = *(a1 + 24);
      if (v23 >= v21)
      {
        if (v23 == v21)
        {
          boost::container::vector<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>,boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>*,boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>>(&v34, a1, v39, &v41);
          v11 = v34;
        }

        else if (v22 == v39)
        {
          *v22 = v41;
          *(v22 + 16) = 0;
          *(v22 + 24) = 0;
          *(v22 + 8) = 0;
          *(v22 + 32) = v44;
          *(v22 + 8) = v42;
          *(v22 + 24) = v43;
          v42 = 0uLL;
          v43 = 0;
          ++*(a1 + 16);
        }

        else
        {
          v24 = v22 - 40;
          *v22 = *(v22 - 40);
          *(v22 + 8) = *(v22 - 32);
          v25 = *(v22 - 8);
          *(v22 + 24) = *(v22 - 16);
          *(v22 + 32) = v25;
          *(v22 - 32) = 0;
          *(v22 - 24) = 0;
          *(v22 - 16) = 0;
          ++*(a1 + 16);
          if ((v22 - 40) != v11)
          {
            v26 = (v22 - 40);
            do
            {
              v27 = *(v26 - 10);
              v26 -= 10;
              *v24 = v27;
              std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__move_assign((v24 + 8), v24 - 32);
              v24 = v26;
            }

            while (v26 != v11);
          }

          *v11 = v41;
          std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__move_assign(v11 + 1, &v42);
        }

        goto LABEL_43;
      }

      v30 = "this->m_holder.capacity() >= this->m_holder.m_size";
      v31 = 2821;
      v32 = "vector.hpp";
      v33 = "priv_insert_forward_range";
    }

LABEL_52:
    __assert_rtn(v33, v32, v31, v30);
  }

LABEL_44:
  v28 = *MEMORY[0x277D85DE8];
  return v11 + 2;
}

void sub_2726BD578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(v18 - 88) = v16;
  std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__destroy_vector::operator()[abi:ne200100]((v18 - 88));
  *(v18 - 80) = v17;
  std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__destroy_vector::operator()[abi:ne200100]((v18 - 80));
  *(v18 - 80) = &a16;
  std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__destroy_vector::operator()[abi:ne200100]((v18 - 80));
  _Unwind_Resume(a1);
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>>::find(unsigned int **a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15 = v3;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>*,false>,vp::vx::Property_ID>(a1, &v15, v3 + 8 * v4, *a3);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
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

  v13 = (v10 + 8 * v11);
  v14 = *a1;
  if (*a1 != v13)
  {
    if (!v14)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a3 < *v14)
    {
      *a1 = v13;
    }
  }

  return result;
}

unsigned int *boost::container::flat_map<vp::vx::Property_ID,unsigned int,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,unsigned int>>>::priv_subscript(uint64_t a1, unsigned int *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v22 = v2;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>*,false>,vp::vx::Property_ID>(&v20, &v22, &v2[2 * v3], *a2);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
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

  v10 = &v7[2 * v8];
  v11 = v20;
  if (v20 == v10)
  {
    v12 = *a2;
    v23[0] = *a2;
    if (v7 <= v20 && v20 <= v10)
    {
      __src = 0;
      goto LABEL_22;
    }

LABEL_45:
    __assert_rtn("insert_unique", "flat_tree.hpp", 879, "this->priv_in_range_or_end(hint)");
  }

  if (!v20)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v12 = *a2;
  if (*a2 < *v20)
  {
    v23[0] = v12;
    if (v7 <= v20 && v20 <= v10)
    {
      __src = 0;
      if (v12 >= *v20)
      {
        v22 = v10;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>>::priv_insert_unique_prepare(v20, &v22, v12, &__src))
        {
          goto LABEL_40;
        }

        goto LABEL_25;
      }

LABEL_22:
      __src = v20;
      if (v20 != v7)
      {
        if (!v20)
        {
          __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
        }

        if (*(v20 - 2) >= v12)
        {
          if (v12 >= *(v20 - 2))
          {
            __src = v20 - 2;
LABEL_40:
            v11 = __src;
            if (!*(a1 + 8) && __src)
            {
              __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
            }

            goto LABEL_42;
          }

          v22 = v20 - 2;
          if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>>::priv_insert_unique_prepare(v7, &v22, v12, &__src))
          {
            goto LABEL_40;
          }
        }
      }

LABEL_25:
      v11 = __src;
      v13 = *(a1 + 8);
      if (v13 > __src)
      {
        goto LABEL_47;
      }

      v14 = *(a1 + 16);
      if (!v13 && v14)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v15 = (v13 + 8 * v14);
      if (__src > v15)
      {
LABEL_47:
        __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
      }

      v16 = *(a1 + 24);
      if (v16 < v14)
      {
        __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
      }

      if (v16 == v14)
      {
        boost::container::vector<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>,boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>*,boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>>(&v19, a1, __src, v23);
        v11 = v19;
      }

      else
      {
        if (v15 != __src)
        {
          *v15 = *(v15 - 1);
          *(a1 + 16) = v14 + 1;
          if (v15 - 1 != v11)
          {
            memmove(v11 + 2, v11, (v15 - 1) - v11);
          }

          *v11 = v23[0];
          v20 = v11;
          goto LABEL_43;
        }

        *v15 = v23[0];
        *(a1 + 16) = v14 + 1;
      }

LABEL_42:
      v20 = v11;
      if (!v11)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      goto LABEL_43;
    }

    goto LABEL_45;
  }

LABEL_43:
  v17 = *MEMORY[0x277D85DE8];
  return v11 + 1;
}

void sub_2726BDA68(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void vp::vx::Property_Manager::Listener::~Listener(vp::vx::Property_Manager::Listener *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    _Block_release(v2);
    *(this + 1) = 0;
  }
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>*,false>,vp::vx::Property_ID>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = (a3 - v4) >> 3;
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
      v7 = &v4[2 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 2;
        *a2 = v7 + 2;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>,boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>*,boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>>(void *a1, const char *a2, char *a3, void *a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x1FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_28;
  }

  v9 = *(a2 + 1);
  if (!(v4 >> 61))
  {
    v10 = 8 * v4 / 5;
    if (v10 >= 0x1FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v4 + 1 > v10)
    {
      v11 = v4 + 1;
    }

    else
    {
      v11 = v10;
    }

    goto LABEL_18;
  }

  if (v4 >> 61 > 4)
  {
    v12 = -1;
  }

  else
  {
    v12 = 8 * v4;
  }

  v13 = v4 + 1;
  if (v12 >= 0x1FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  v11 = v13 > v12 ? v4 + 1 : v12;
  if (v13 >> 61)
  {
LABEL_28:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

LABEL_18:
  v14 = (*(**a2 + 16))();
  v15 = v14;
  v22[1] = a2;
  v22[2] = v11;
  v16 = *(a2 + 1);
  v17 = *(a2 + 2);
  v18 = v14;
  if (v16)
  {
    v18 = v14;
    if (v16 != a3)
    {
      memmove(v14, *(a2 + 1), a3 - v16);
      v18 = (v15 + a3 - v16);
    }
  }

  *v18 = *a4;
  if (a3)
  {
    v19 = &v16[8 * v17];
    if (v19 != a3)
    {
      memmove(v18 + 1, a3, v19 - a3);
    }
  }

  v22[0] = 0;
  if (v16)
  {
    (*(**a2 + 24))(*a2, *(a2 + 1), 8 * *(a2 + 3), 4);
  }

  v20 = *(a2 + 2) + 1;
  *(a2 + 1) = v15;
  *(a2 + 2) = v20;
  *(a2 + 3) = v11;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>>::~scoped_array_deallocator(v22);
  *a1 = &a3[*(a2 + 1) - v9];
  return result;
}

void sub_2726BDD84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 8 * *(a1 + 16), 4);
  }

  return a1;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>>::priv_insert_unique_prepare(unsigned int *a1, unsigned int **a2, unsigned int a3, unsigned int **a4)
{
  if (*a2 != a1)
  {
    v4 = (*a2 - a1) >> 3;
    do
    {
      if (v4 != 1 && !a1)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!a1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = v4 >> 1;
      v6 = &a1[2 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 2;
      v4 += ~(v4 >> 1);
      if (v8 >= a3)
      {
        v4 = v5;
      }

      else
      {
        a1 = v7;
      }
    }

    while (v4);
  }

  *a4 = a1;
  if (a1 == *a2)
  {
    return 1;
  }

  if (!a1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a1 > a3;
}

unint64_t std::__function::__func<vp::vx::Property_Manager::add_property_listener(vp::vx::Property_ID,void({block_pointer})(unsigned int))::$_0,std::allocator<vp::vx::Property_Manager::add_property_listener(vp::vx::Property_ID,void({block_pointer})(unsigned int))::$_0>,void ()(void)>::operator()(unint64_t result)
{
  v2 = result;
  v3 = *(result + 16);
  v4 = *(result + 8);
  v5 = *(v3 + 104);
  if (v5)
  {
    v6 = vcnt_s8(v5);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v1 = *(result + 8);
      if (v5 <= v4)
      {
        v1 = v4 % v5;
      }
    }

    else
    {
      v1 = (v5 - 1) & v4;
    }

    v7 = *(*(v3 + 96) + 8 * v1);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v9 == v4)
        {
          if (*(i + 4) == v4)
          {
            return result;
          }
        }

        else
        {
          if (v6.u32[0] > 1uLL)
          {
            if (v9 >= v5)
            {
              v9 %= v5;
            }
          }

          else
          {
            v9 &= v5 - 1;
          }

          if (v9 != v1)
          {
            break;
          }
        }
      }
    }
  }

  result = (*(**(v3 + 128) + 16))(*(v3 + 128), 24, 8);
  v10 = result;
  *result = 0;
  *(result + 8) = v4;
  *(result + 16) = *(v2 + 8);
  v11 = (*(v3 + 136) + 1);
  v12 = *(v3 + 144);
  if (!v5 || (v12 * v5) < v11)
  {
    v13 = 1;
    if (v5 >= 3)
    {
      v13 = (v5 & (v5 - 1)) != 0;
    }

    v14 = v13 | (2 * v5);
    v15 = vcvtps_u32_f32(v11 / v12);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    if (v16 == 1)
    {
      v16 = 2;
    }

    else if ((v16 & (v16 - 1)) != 0)
    {
      result = std::__next_prime(v16);
      v16 = result;
    }

    v17 = *(v3 + 104);
    if (v16 > *&v17)
    {
LABEL_30:
      if (v16 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      result = (*(**(v3 + 112) + 16))(*(v3 + 112), 8 * v16, 8);
      v18 = *(v3 + 96);
      *(v3 + 96) = result;
      if (v18)
      {
        result = std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<vp::vx::Property_ID,void *> *> *>>::deallocate[abi:ne200100](*(v3 + 112), v18, *(v3 + 104));
      }

      v19 = 0;
      *(v3 + 104) = v16;
      do
      {
        *(*(v3 + 96) + 8 * v19++) = 0;
      }

      while (v16 != v19);
      v20 = *(v3 + 120);
      if (v20)
      {
        v21 = v20[1];
        v22 = vcnt_s8(v16);
        v22.i16[0] = vaddlv_u8(v22);
        if (v22.u32[0] > 1uLL)
        {
          if (v21 >= v16)
          {
            v21 %= v16;
          }
        }

        else
        {
          v21 &= v16 - 1;
        }

        *(*(v3 + 96) + 8 * v21) = v3 + 120;
        v25 = *v20;
        if (*v20)
        {
          while (1)
          {
            v26 = v25[1];
            if (v22.u32[0] > 1uLL)
            {
              if (v26 >= v16)
              {
                v26 %= v16;
              }
            }

            else
            {
              v26 &= v16 - 1;
            }

            if (v26 != v21)
            {
              v27 = *(v3 + 96);
              if (!*(v27 + 8 * v26))
              {
                *(v27 + 8 * v26) = v20;
                goto LABEL_55;
              }

              *v20 = *v25;
              *v25 = **(v27 + 8 * v26);
              **(v27 + 8 * v26) = v25;
              v25 = v20;
            }

            v26 = v21;
LABEL_55:
            v20 = v25;
            v25 = *v25;
            v21 = v26;
            if (!v25)
            {
              goto LABEL_66;
            }
          }
        }
      }

      goto LABEL_66;
    }

    if (v16 < *&v17)
    {
      result = vcvtps_u32_f32(*(v3 + 136) / *(v3 + 144));
      if (*&v17 < 3uLL || (v23 = vcnt_s8(v17), v23.i16[0] = vaddlv_u8(v23), v23.u32[0] > 1uLL))
      {
        result = std::__next_prime(result);
      }

      else
      {
        v24 = 1 << -__clz(result - 1);
        if (result >= 2)
        {
          result = v24;
        }
      }

      if (v16 <= result)
      {
        v16 = result;
      }

      if (v16 < *&v17)
      {
        if (v16)
        {
          goto LABEL_30;
        }

        v28 = *(v3 + 96);
        *(v3 + 96) = 0;
        if (v28)
        {
          result = std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<vp::vx::Property_ID,void *> *> *>>::deallocate[abi:ne200100](*(v3 + 112), v28, *(v3 + 104));
        }

        *(v3 + 104) = 0;
      }
    }

LABEL_66:
    v5 = *(v3 + 104);
    if ((v5 & (v5 - 1)) != 0)
    {
      if (v5 <= v4)
      {
        v1 = v4 % v5;
      }

      else
      {
        v1 = v4;
      }
    }

    else
    {
      v1 = (v5 - 1) & v4;
    }
  }

  v29 = *(v3 + 96);
  v30 = *(v29 + 8 * v1);
  if (v30)
  {
    *v10 = *v30;
LABEL_79:
    *v30 = v10;
    goto LABEL_80;
  }

  *v10 = *(v3 + 120);
  *(v3 + 120) = v10;
  *(v29 + 8 * v1) = v3 + 120;
  if (*v10)
  {
    v31 = *(*v10 + 8);
    if ((v5 & (v5 - 1)) != 0)
    {
      if (v31 >= v5)
      {
        v31 %= v5;
      }
    }

    else
    {
      v31 &= v5 - 1;
    }

    v30 = (*(v3 + 96) + 8 * v31);
    goto LABEL_79;
  }

LABEL_80:
  ++*(v3 + 136);
  return result;
}

__n128 std::__function::__func<vp::vx::Property_Manager::add_property_listener(vp::vx::Property_ID,void({block_pointer})(unsigned int))::$_0,std::allocator<vp::vx::Property_Manager::add_property_listener(vp::vx::Property_ID,void({block_pointer})(unsigned int))::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881BE188;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::pmr::polymorphic_allocator<vp::vx::Property_Manager::Listener>::allocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *(**a1 + 16);

  return v3();
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>*,false>,vp::vx::Property_ID>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - v4) >> 3);
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
      v7 = &v4[10 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 10;
        *a2 = v7 + 10;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

void std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__move_assign(uint64_t *a1, uint64_t a2)
{
  v5 = (a1 + 3);
  v4 = a1[3];
  if (v4 == *(a2 + 24) || ((*(*v4 + 32))(v4) & 1) != 0)
  {
    std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__vdeallocate(a1);
    *a1 = *a2;
    a1[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    v7 = *a2;
    v6 = *(a2 + 8);
    v8 = v6 - v7;
    v9 = *a1;
    if (a1[2] - *a1 >= (v6 - v7))
    {
      v15 = a1[1];
      if (v15 - v9 >= v8)
      {
        if (v7 != v6)
        {
          do
          {
            *v9 = *v7;
            std::__destroy_at[abi:ne200100]<vp::Block<void ()>,0>((v9 + 8));
            v18 = *(v7 + 1);
            *(v7 + 1) = 0;
            *(v9 + 8) = v18;
            v7 += 16;
            v9 += 16;
          }

          while (v7 != v6);
          v15 = a1[1];
        }

        while (v15 != v9)
        {
          v15 -= 2;
          std::pmr::polymorphic_allocator<vp::vx::Property_Manager::Listener>::destroy[abi:ne200100]<vp::vx::Property_Manager::Listener>(v15);
        }

        a1[1] = v9;
      }

      else
      {
        v16 = &v7[v15 - v9];
        if (v15 != v9)
        {
          do
          {
            *v9 = *v7;
            std::__destroy_at[abi:ne200100]<vp::Block<void ()>,0>((v9 + 8));
            v17 = *(v7 + 1);
            *(v7 + 1) = 0;
            *(v9 + 8) = v17;
            v7 += 16;
            v9 += 16;
          }

          while (v7 != v16);
          v15 = a1[1];
        }

        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<vp::Allocator<vp::vx::Property_Manager::Listener>,std::move_iterator<std::__wrap_iter<vp::vx::Property_Manager::Listener*>>,std::move_iterator<std::__wrap_iter<vp::vx::Property_Manager::Listener*>>,vp::vx::Property_Manager::Listener*>(v5, v16, v6, v15);
      }
    }

    else
    {
      v10 = v8 >> 4;
      std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__vdeallocate(a1);
      if (v10 >> 60)
      {
        goto LABEL_24;
      }

      v11 = a1[2] - *a1;
      v12 = v11 >> 3;
      if (v11 >> 3 <= v10)
      {
        v12 = v10;
      }

      v13 = v11 >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v12;
      if (v13 >> 60)
      {
LABEL_24:
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v14 = std::pmr::polymorphic_allocator<vp::vx::Property_Manager::Listener>::allocate[abi:ne200100](v5, v13);
      *a1 = v14;
      a1[1] = v14;
      a1[2] = &v14[2 * v13];
      a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<vp::Allocator<vp::vx::Property_Manager::Listener>,std::move_iterator<std::__wrap_iter<vp::vx::Property_Manager::Listener*>>,std::move_iterator<std::__wrap_iter<vp::vx::Property_Manager::Listener*>>,vp::vx::Property_Manager::Listener*>(v5, v7, v6, v14);
    }
  }
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>,boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>*,boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
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

  v13 = *(a2 + 1);
  v14 = (*(**a2 + 16))(*a2, 40 * v8, 8);
  v15 = v14;
  v26[1] = a2;
  v26[2] = v8;
  v16 = *(a2 + 1);
  v17 = v16 + 40 * *(a2 + 2);
  v18 = v14;
  if (v16 != a3)
  {
    v19 = *(a2 + 1);
    v18 = v14;
    do
    {
      *v18 = *v19;
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      *(v18 + 8) = 0;
      *(v18 + 32) = *(v19 + 32);
      *(v18 + 8) = *(v19 + 8);
      *(v18 + 24) = *(v19 + 24);
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      v19 += 40;
      v18 += 40;
    }

    while (v19 != a3);
  }

  *v18 = *a4;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 8) = 0;
  *(v18 + 32) = *(a4 + 32);
  *(v18 + 8) = *(a4 + 8);
  *(v18 + 24) = *(a4 + 24);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  if (v17 != a3)
  {
    v20 = (v18 + 72);
    v21 = a3;
    do
    {
      *(v20 - 8) = *v21;
      *(v20 - 2) = 0;
      *(v20 - 1) = 0;
      *(v20 - 3) = 0;
      *v20 = *(v21 + 32);
      *(v20 - 3) = *(v21 + 8);
      *(v20 - 1) = *(v21 + 24);
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      v21 += 40;
      v20 += 5;
    }

    while (v21 != v17);
  }

  v26[0] = 0;
  if (v16)
  {
    v22 = *(a2 + 2);
    if (v22)
    {
      v23 = (v16 + 8);
      do
      {
        --v22;
        v27 = v23;
        std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__destroy_vector::operator()[abi:ne200100](&v27);
        v23 += 5;
      }

      while (v22);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 40 * *(a2 + 3), 8);
  }

  v24 = *(a2 + 2) + 1;
  *(a2 + 1) = v15;
  *(a2 + 2) = v24;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>>::~scoped_array_deallocator(v26);
  *a1 = *(a2 + 1) + a3 - v13;
  return result;
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 40 * *(a1 + 16), 8);
  }

  return a1;
}

uint64_t *std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__vdeallocate(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v3 = result[1];
    v4 = *result;
    if (v3 != v1)
    {
      do
      {
        v3 -= 16;
        std::pmr::polymorphic_allocator<vp::vx::Property_Manager::Listener>::destroy[abi:ne200100]<vp::vx::Property_Manager::Listener>(v3);
      }

      while (v3 != v1);
      v4 = *v2;
    }

    v2[1] = v1;
    result = std::allocator_traits<vp::Allocator<vp::vx::Property_Manager::Listener>>::deallocate[abi:ne200100](v2[3], v4, (v2[2] - v4) >> 4);
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
  }

  return result;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<vp::Allocator<vp::vx::Property_Manager::Listener>,std::move_iterator<std::__wrap_iter<vp::vx::Property_Manager::Listener*>>,std::move_iterator<std::__wrap_iter<vp::vx::Property_Manager::Listener*>>,vp::vx::Property_Manager::Listener*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = a4;
  while (a2 != a3)
  {
    *result = *a2;
    v5 = a2[1];
    a2[1] = 0;
    result[1] = v5;
    a2 += 2;
    result += 2;
  }

  return result;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>>::priv_insert_unique_prepare(unsigned int *a1, unsigned int **a2, unsigned int a3, unsigned int **a4)
{
  if (*a2 != a1)
  {
    v4 = 0xCCCCCCCCCCCCCCCDLL * ((*a2 - a1) >> 3);
    do
    {
      if (v4 != 1 && !a1)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!a1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = v4 >> 1;
      v6 = &a1[10 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 10;
      v4 += ~(v4 >> 1);
      if (v8 >= a3)
      {
        v4 = v5;
      }

      else
      {
        a1 = v7;
      }
    }

    while (v4);
  }

  *a4 = a1;
  if (a1 == *a2)
  {
    return 1;
  }

  if (!a1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a1 > a3;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>>::find(unsigned int **a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15 = v3;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>*,false>,vp::vx::Property_ID>(a1, &v15, v3 + 40 * v4, *a3);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
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

  v13 = (v10 + 40 * v11);
  v14 = *a1;
  if (*a1 != v13)
  {
    if (!v14)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a3 < *v14)
    {
      *a1 = v13;
    }
  }

  return result;
}

const void ***std::unique_ptr<vp::vx::Property_Manager::notify_property_listeners(void)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<vp::vx::Property_Manager::notify_property_listeners(void)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](const void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*v2)
    {
      _Block_release(*v2);
      *v2 = 0;
    }

    MEMORY[0x2743CBFA0](v2, 0x1080C4020793F04);
  }

  return a1;
}

const void ***applesauce::dispatch::v1::async<vp::vx::Property_Manager::notify_property_listeners(void)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_queue_s *,vp::vx::Property_Manager::notify_property_listeners(void)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void *)#1}::__invoke(const void **a1)
{
  v2 = a1;
  (*(*a1 + 2))(*a1, *(a1 + 2));
  return std::unique_ptr<vp::vx::Property_Manager::notify_property_listeners(void)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<vp::vx::Property_Manager::notify_property_listeners(void)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v2);
}