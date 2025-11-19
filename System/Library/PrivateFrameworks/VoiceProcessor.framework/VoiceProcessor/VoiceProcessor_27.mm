void sub_2726998D0(_Unwind_Exception *a1)
{
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T>>::reset[abi:ne200100]((v1 - 176), 0);
  vp::vx::data_flow::State<void>::~State(&STACK[0x340]);
  _Unwind_Resume(a1);
}

void (****vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(void *a1, int *a2))(void)
{
  v4 = a1[1];
  *&v25 = 0;
  *(&v25 + 1) = v4;
  v26 = xmmword_272756730;
  v5 = (*(*v4 + 16))(v4, 40, 8);
  vp::vx::data_flow::State<void>::State(&v27, a2);
  *v5 = &unk_2881BD750;
  *(v5 + 8) = v27;
  *(v5 + 16) = *v28;
  *v28 = 0uLL;
  *(v5 + 32) = 0;
  vp::vx::data_flow::State<void>::~State(&v27);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](&v25, v5);
  v6 = a1[42];
  v7 = a1[43];
  if (v6 >= v7)
  {
    v11 = a1[41];
    v12 = (v6 - v11) >> 5;
    v13 = v12 + 1;
    if ((v12 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v14 = v7 - v11;
    if (v14 >> 4 > v13)
    {
      v13 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    v29 = a1 + 44;
    if (v15)
    {
      v16 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100]((a1 + 44), v15);
      v11 = a1[41];
      v6 = a1[42];
    }

    else
    {
      v16 = 0;
    }

    *&v28[16] = v16 + 32 * v15;
    v17 = v25;
    v18 = v26;
    v19 = (v16 + 32 * v12);
    *&v25 = 0;
    *v19 = v17;
    v19[1] = v18;
    *&v28[8] = v19 + 2;
    v20 = &v19[-2 * ((v6 - v11) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(v11, v6, v20);
    v21 = a1[41];
    a1[41] = v20;
    v22 = a1[43];
    v24 = *&v28[8];
    *(a1 + 21) = *&v28[8];
    *&v28[8] = v21;
    *&v28[16] = v22;
    v27 = v21;
    *v28 = v21;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(&v27);
    v10 = v24;
  }

  else
  {
    v8 = v25;
    v9 = v26;
    *&v25 = 0;
    *v6 = v8;
    *(v6 + 16) = v9;
    v10 = v6 + 32;
  }

  a1[42] = v10;
  return std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](&v25, 0);
}

void sub_27269A2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void (****std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>,std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>*>(void (****result)(void), void (****a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      *(a3 + 8) = v5[1];
      *(a3 + 16) = *(v5 + 1);
      v5 += 4;
      a3 += 32;
    }

    while (v5 != a2);
    do
    {
      result = std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>::reset[abi:ne200100](v4);
      v4 += 4;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>::reset[abi:ne200100]((i - 32));
  }

  if (*a1)
  {
    std::allocator_traits<vp::Allocator<std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>>>::deallocate[abi:ne200100](**(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 5);
  }

  return a1;
}

void (****std::unique_ptr<vp::vx::components::Property_List_Writer::Sim_Key_State,vp::Allocator_Delete<vp::vx::components::Property_List_Writer::Sim_Key_State>>::reset[abi:ne200100](void (****result)(void)))(void)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (**v1)(v1);
    return ((*v2[1])[3])(v2[1], v1, v2[2], v2[3]);
  }

  return result;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BDAC8;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(applesauce::CF::ArrayRef const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_27269A670(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(applesauce::CF::ArrayRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(applesauce::CF::ArrayRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<applesauce::CF::ArrayRef>::register_listener(std::function<void ()(applesauce::CF::ArrayRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::ArrayRef>::register_listener(std::function<void ()(applesauce::CF::ArrayRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id;
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

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::ArrayRef>::compare_value(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *a2;
  v4 = *a3;
  result = (v3 | *a3) == 0;
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

void vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::ArrayRef>::destroy_value(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

CFTypeRef vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::ArrayRef>::copy_value(uint64_t a1, void *a2, CFTypeRef *a3)
{
  v4 = *a3;
  if (*a3)
  {
    result = CFRetain(*a3);
  }

  *a2 = v4;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::ArrayRef>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::ArrayRef>::register_listener(std::function<void ()(applesauce::CF::ArrayRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::ArrayRef>::register_listener(std::function<void ()(applesauce::CF::ArrayRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(applesauce::CF::ArrayRef const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::ArrayRef>::register_listener(std::function<void ()(applesauce::CF::ArrayRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::ArrayRef>::register_listener(std::function<void ()(applesauce::CF::ArrayRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD3A8;
  std::__function::__value_func<void ()(applesauce::CF::ArrayRef const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<applesauce::CF::ArrayRef>::register_listener(std::function<void ()(applesauce::CF::ArrayRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::ArrayRef>::register_listener(std::function<void ()(applesauce::CF::ArrayRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD3A8;
  std::__function::__value_func<void ()(applesauce::CF::ArrayRef const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1}>,void ()(applesauce::CF::ArrayRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
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
  vp::sim::Key_Writer::count(&v7, 86, "Microphone Filter IDs");
  vp::sim::converters::Default_Converter_CF<applesauce::CF::ArrayRef>::to_property_list(&cf, *a2);
  vp::sim::Key_Writer::set(&v7, 86, "Microphone Filter IDs", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_27269ABE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *vp::sim::converters::Default_Converter_CF<applesauce::CF::ArrayRef>::to_property_list(applesauce::CF::TypeRef *this, CFTypeRef cf)
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

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1}>,void ()(applesauce::CF::ArrayRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1}>,void ()(applesauce::CF::ArrayRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1}>,void ()(applesauce::CF::ArrayRef const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BDAC8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1}>,void ()(applesauce::CF::ArrayRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BDAC8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1}>,void ()(applesauce::CF::ArrayRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BDAC8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BDA98;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)86,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BDA98;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BDA50;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_27269B090(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
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

void std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB5F0;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB5F0;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
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
  vp::sim::Key_Writer::count(&v8, 85, "AirPods Offload Mode");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 85, "AirPods Offload Mode", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 85, "AirPods Offload Mode", &v10);
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

void sub_27269B3C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BDA50;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BDA50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BDA50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BDA20;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)85,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BDA20;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE4__15JNS3_20AirPods_Offload_ModeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::Legacy<vp::vx::Chat_Flavor>::cast(v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

void sub_27269B6A4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
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

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE4__15JNS3_20AirPods_Offload_ModeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BB2F0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD9D8;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_27269B970(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(BOOL const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(BOOL const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
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

void std::__function::__func<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(BOOL const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(BOOL const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(BOOL const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(BOOL const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BEB10;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(BOOL const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(BOOL const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BEB10;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
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
  v9 = v10;
  vp::sim::Key_Writer::count(&v9, 84, "Is Camera Active");
  v7 = MEMORY[0x277CBED28];
  if (!*a2)
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = *v7;
  if (!*v7)
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v9, 84, "Is Camera Active", &v10);
    if (!v6)
    {
      return;
    }

    goto LABEL_10;
  }

  CFRetain(*v7);
  v10 = v8;
  vp::sim::Key_Writer::set(&v9, 84, "Is Camera Active", &v10);
  CFRelease(v8);
  CFRelease(v8);
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD9D8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD9D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD9D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD9A8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)84,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD9A8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD960;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_27269C0CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
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
  v9 = v10;
  vp::sim::Key_Writer::count(&v9, 83, "Enable Automatic Mic Mode");
  v7 = MEMORY[0x277CBED28];
  if (!*a2)
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = *v7;
  if (!*v7)
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v9, 83, "Enable Automatic Mic Mode", &v10);
    if (!v6)
    {
      return;
    }

    goto LABEL_10;
  }

  CFRetain(*v7);
  v10 = v8;
  vp::sim::Key_Writer::set(&v9, 83, "Enable Automatic Mic Mode", &v10);
  CFRelease(v8);
  CFRelease(v8);
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD960;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD960;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD960;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD930;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)83,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD930;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD8E8;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_27269C604(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
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
  v9 = v10;
  vp::sim::Key_Writer::count(&v9, 82, "Offload AirPods Noise Suppression");
  v7 = MEMORY[0x277CBED28];
  if (!*a2)
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = *v7;
  if (!*v7)
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v9, 82, "Offload AirPods Noise Suppression", &v10);
    if (!v6)
    {
      return;
    }

    goto LABEL_10;
  }

  CFRetain(*v7);
  v10 = v8;
  vp::sim::Key_Writer::set(&v9, 82, "Offload AirPods Noise Suppression", &v10);
  CFRelease(v8);
  CFRelease(v8);
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD8E8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD8E8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD8E8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD8B8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)82,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD8B8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD870;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_27269CB3C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
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
  vp::sim::Key_Writer::count(&v8, 81, "VirtualAudio Plug-in Mode");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 81, "VirtualAudio Plug-in Mode", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 81, "VirtualAudio Plug-in Mode", &v10);
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

void sub_27269CC4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD870;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD870;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD870;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD840;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)81,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD840;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD7F8;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_27269D098(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(applesauce::CF::DictionaryRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
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

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBB48;
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBB48;
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
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
  vp::sim::Key_Writer::count(&v7, 80, "Other Audio Ducking Config");
  vp::sim::converters::Default_Converter_CF<applesauce::CF::DictionaryRef>::to_property_list(&cf, *a2);
  vp::sim::Key_Writer::set(&v7, 80, "Other Audio Ducking Config", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_27269D520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *vp::sim::converters::Default_Converter_CF<applesauce::CF::DictionaryRef>::to_property_list(applesauce::CF::TypeRef *this, CFTypeRef cf)
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

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD7F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD7F8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD7F8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD7C8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)80,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD7C8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERSB_RKNS3_27Voice_Processor_State_OwnerEE4__14J39AUVoiceIOOtherAudioDuckingConfigurationEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = **a2;
  if (v4[2] == &vp::vx::data_flow::Value::type_id<AUVoiceIOOtherAudioDuckingConfiguration>(void)::s_type_id)
  {
    v5 = vp::vx::data_flow::Value::view_storage(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 1);
  applesauce::CF::TypeRef::TypeRef(v19, "DuckingLevel");
  valuePtr = v6;
  if (!CFNumberCreate(0, kCFNumberIntType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v7 = *v5;
  applesauce::CF::TypeRef::TypeRef(v21, "EnableAdvancedDucking");
  v8 = MEMORY[0x277CBED28];
  if (!v7)
  {
    v8 = MEMORY[0x277CBED10];
  }

  v22[0] = *v8;
  v17[0] = v19;
  v17[1] = 2;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v17);
  for (i = 0; i != -4; i -= 2)
  {
    v11 = v22[i];
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *&v21[i * 8];
    if (v12)
    {
      CFRelease(v12);
    }
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v13);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = CFDictionaryRef;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27269D998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef((v6 + 8));
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERSB_RKNS3_27Voice_Processor_State_OwnerEE4__14J39AUVoiceIOOtherAudioDuckingConfigurationEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BB2A8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD780;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_27269DCB0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
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
  v9 = v10;
  vp::sim::Key_Writer::count(&v9, 79, "Media Playback on External Device");
  v7 = MEMORY[0x277CBED28];
  if (!*a2)
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = *v7;
  if (!*v7)
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v9, 79, "Media Playback on External Device", &v10);
    if (!v6)
    {
      return;
    }

    goto LABEL_10;
  }

  CFRetain(*v7);
  v10 = v8;
  vp::sim::Key_Writer::set(&v9, 79, "Media Playback on External Device", &v10);
  CFRelease(v8);
  CFRelease(v8);
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD780;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD780;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD780;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD750;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)79,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD750;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD708;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_27269E1E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
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
  vp::sim::Key_Writer::count(&v7, 78, "Spatial Head Tracking Configuration");
  vp::sim::converters::Default_Converter_CF<applesauce::CF::DictionaryRef>::to_property_list(&cf, *a2);
  vp::sim::Key_Writer::set(&v7, 78, "Spatial Head Tracking Configuration", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_27269E2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD708;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD708;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD708;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD6D8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)78,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD6D8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERSB_RKNS3_27Voice_Processor_State_OwnerEE4__13JNS3_35Spatial_Head_Tracking_ConfigurationEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = **a2;
  if (v4[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Spatial_Head_Tracking_Configuration>(void)::s_type_id)
  {
    v5 = vp::vx::data_flow::Value::view_storage(v4);
  }

  else
  {
    v5 = 0;
  }

  LODWORD(valuePtr) = *v5;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::TypeRef::TypeRef(v20, "SpatialMode");
  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v21 = v6;
  if (*(v5 + 4))
  {
    v7 = MEMORY[0x277CBED28];
  }

  else
  {
    v7 = MEMORY[0x277CBED10];
  }

  valuePtr = *v7;
  v8 = valuePtr;
  applesauce::CF::TypeRef::TypeRef(v22, "HeadTracking");
  if (v8)
  {
    CFRetain(v8);
  }

  v23[0] = v8;
  v19[0] = v20;
  v19[1] = 2;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v19);
  for (i = 0; i != -4; i -= 2)
  {
    v11 = v23[i];
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *&v22[i * 8];
    if (v12)
    {
      CFRelease(v12);
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v13);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = CFDictionaryRef;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27269E704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERSB_RKNS3_27Voice_Processor_State_OwnerEE4__13JNS3_35Spatial_Head_Tracking_ConfigurationEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BB260;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD690;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(float const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_27269EA44(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<vp::vx::data_flow::State<float>::register_listener(std::function<void ()(float const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<float>::register_listener(std::function<void ()(float const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
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

void std::__function::__func<vp::vx::data_flow::State<float>::register_listener(std::function<void ()(float const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<float>::register_listener(std::function<void ()(float const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(float const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<float>::register_listener(std::function<void ()(float const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<float>::register_listener(std::function<void ()(float const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC9B8;
  std::__function::__value_func<void ()(float const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<float>::register_listener(std::function<void ()(float const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<float>::register_listener(std::function<void ()(float const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC9B8;
  std::__function::__value_func<void ()(float const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::operator()(uint64_t a1, float *a2)
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
  vp::sim::Key_Writer::count(&v8, 77, "Media Chat Volume");
  vp::sim::converters::Default_Converter<float>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 77, "Media Chat Volume", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 77, "Media Chat Volume", &v10);
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

void sub_27269ED78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

CFNumberRef vp::sim::converters::Default_Converter<float>::to_property_list(CFNumberRef *a1, float a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD690;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD690;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD690;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD660;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)77,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD660;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD618;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(applesauce::CF::DataRef const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_27269F270(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(applesauce::CF::DataRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(applesauce::CF::DataRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DataRef>::register_listener(std::function<void ()(applesauce::CF::DataRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DataRef>::register_listener(std::function<void ()(applesauce::CF::DataRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<applesauce::CF::DataRef>(void)::s_type_id;
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

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::DataRef>::compare_value(uint64_t a1, CFDataRef *a2, CFDataRef *a3)
{
  result = (*a2 | *a3) == 0;
  if (*a2)
  {
    v4 = *a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    BytePtr = CFDataGetBytePtr(*a2);
    if (*a3)
    {
      v8 = CFDataGetBytePtr(*a3);
    }

    else
    {
      v8 = 0;
    }

    if (*a2)
    {
      Length = CFDataGetLength(*a2);
    }

    else
    {
      Length = 0;
    }

    v10 = *a3;
    if (*a3)
    {
      v10 = CFDataGetLength(v10);
    }

    return Length == v10 && memcmp(BytePtr, v8, Length) == 0;
  }

  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::DataRef>::destroy_value(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

CFTypeRef vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::DataRef>::copy_value(uint64_t a1, void *a2, CFTypeRef *a3)
{
  v4 = *a3;
  if (*a3)
  {
    result = CFRetain(*a3);
  }

  *a2 = v4;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::DataRef>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DataRef>::register_listener(std::function<void ()(applesauce::CF::DataRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DataRef>::register_listener(std::function<void ()(applesauce::CF::DataRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(applesauce::CF::DataRef const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DataRef>::register_listener(std::function<void ()(applesauce::CF::DataRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DataRef>::register_listener(std::function<void ()(applesauce::CF::DataRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD5D0;
  std::__function::__value_func<void ()(applesauce::CF::DataRef const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DataRef>::register_listener(std::function<void ()(applesauce::CF::DataRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DataRef>::register_listener(std::function<void ()(applesauce::CF::DataRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD5D0;
  std::__function::__value_func<void ()(applesauce::CF::DataRef const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DataRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DataRef const&)#1}>,void ()(applesauce::CF::DataRef const&)>::operator()(uint64_t a1, const void **a2)
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
  v8 = cf;
  vp::sim::Key_Writer::count(&v8, 76, "Spatial Metadata");
  v7 = *a2;
  if (v7)
  {
    CFRetain(v7);
    cf = v7;
  }

  else
  {
    applesauce::CF::TypeRef::TypeRef(&cf, "?");
  }

  vp::sim::Key_Writer::set(&v8, 76, "Spatial Metadata", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_27269F878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DataRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DataRef const&)#1}>,void ()(applesauce::CF::DataRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DataRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DataRef const&)#1}>,void ()(applesauce::CF::DataRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DataRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DataRef const&)#1}>,void ()(applesauce::CF::DataRef const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD618;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DataRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DataRef const&)#1}>,void ()(applesauce::CF::DataRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD618;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DataRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DataRef const&)#1}>,void ()(applesauce::CF::DataRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD618;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD5A0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)76,applesauce::CF::DataRef>(vp::vx::data_flow::State<applesauce::CF::DataRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD5A0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

CFDataRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF7DataRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERSB_RKNS3_27Voice_Processor_State_OwnerEE4__12JNS_6vectorIhNS_9allocatorIhEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSN_EEERNS4_13State_ManagerESP_SW_EUlPPKNS4_5ValueEPS14_E_NSL_IS19_EEFvS17_S18_EEclEOS17_OS18_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = CFDataCreate(0, *v4, *(v4 + 8) - *v4);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v11 = v5;
  v6 = CFGetTypeID(v5);
  if (v6 != CFDataGetTypeID())
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Could not construct");
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DataRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v11;
  return result;
}

void sub_27269FBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<unsigned char>>::compare_value(uint64_t a1, const void ***a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = **a2;
  v5 = (*a2)[1] - v4;
  return v5 == *(v3 + 8) - *v3 && memcmp(v4, *v3, v5) == 0;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<unsigned char>>::destroy_value(uint64_t a1, void ***a2)
{
  v2 = **a2;
  if (v2)
  {
    (*a2)[1] = v2;
    operator delete(v2);
  }
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<unsigned char>>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
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

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<unsigned char>>::copy_value(uint64_t a1, void **a2, uint64_t **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v3, *v4, v4[1], v4[1] - *v4);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<unsigned char>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<unsigned char>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 24, 8);
  *a2 = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF7DataRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERSB_RKNS3_27Voice_Processor_State_OwnerEE4__12JNS_6vectorIhNS_9allocatorIhEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSN_EEERNS4_13State_ManagerESP_SW_EUlPPKNS4_5ValueEPS14_E_NSL_IS19_EEFvS17_S18_EE7__cloneEPNS0_6__baseIS1B_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BB1B0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD558;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A0010(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
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
  vp::sim::Key_Writer::count(&v8, 75, "Chat Flavor");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 75, "Chat Flavor", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 75, "Chat Flavor", &v10);
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

void sub_2726A0120(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD558;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD558;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD558;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD528;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)75,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD528;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE4__11JNS3_11Chat_FlavorEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = *v4;
  log = vp::get_log(v4);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v5;
    _os_log_impl(&dword_2724B4000, log, OS_LOG_TYPE_DEFAULT, "chat flavor changed to %u", v10, 8u);
  }

  vp::vx::Legacy<vp::vx::Chat_Flavor>::cast(v5);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE4__11JNS3_11Chat_FlavorEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BB168;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD4E0;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A076C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
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
  v9 = v10;
  vp::sim::Key_Writer::count(&v9, 74, "Enable Spatial Chat");
  v7 = MEMORY[0x277CBED28];
  if (!*a2)
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = *v7;
  if (!*v7)
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v9, 74, "Enable Spatial Chat", &v10);
    if (!v6)
    {
      return;
    }

    goto LABEL_10;
  }

  CFRetain(*v7);
  v10 = v8;
  vp::sim::Key_Writer::set(&v9, 74, "Enable Spatial Chat", &v10);
  CFRelease(v8);
  CFRelease(v8);
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD4E0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD4E0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD4E0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD4B0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)74,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD4B0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD468;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A0CA4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
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
  v9 = v10;
  vp::sim::Key_Writer::count(&v9, 73, "Enable Media Chat");
  v7 = MEMORY[0x277CBED28];
  if (!*a2)
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = *v7;
  if (!*v7)
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v9, 73, "Enable Media Chat", &v10);
    if (!v6)
    {
      return;
    }

    goto LABEL_10;
  }

  CFRetain(*v7);
  v10 = v8;
  vp::sim::Key_Writer::set(&v9, 73, "Enable Media Chat", &v10);
  CFRelease(v8);
  CFRelease(v8);
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD468;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD468;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD468;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD438;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)73,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD438;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD3F0;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(applesauce::CF::ArrayRef const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A11DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1}>,void ()(applesauce::CF::ArrayRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
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
  vp::sim::Key_Writer::count(&v7, 71, "Speaker Calibration Data");
  vp::sim::converters::Default_Converter_CF<applesauce::CF::ArrayRef>::to_property_list(&cf, *a2);
  vp::sim::Key_Writer::set(&v7, 71, "Speaker Calibration Data", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726A12A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1}>,void ()(applesauce::CF::ArrayRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1}>,void ()(applesauce::CF::ArrayRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1}>,void ()(applesauce::CF::ArrayRef const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD3F0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1}>,void ()(applesauce::CF::ArrayRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD3F0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::ArrayRef const&)#1}>,void ()(applesauce::CF::ArrayRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD3F0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD378;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)71,applesauce::CF::ArrayRef>(vp::vx::data_flow::State<applesauce::CF::ArrayRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD378;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD330;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A16F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
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
  vp::sim::Key_Writer::count(&v7, 70, "Power Budget settings");
  vp::sim::converters::Default_Converter_CF<applesauce::CF::DictionaryRef>::to_property_list(&cf, *a2);
  vp::sim::Key_Writer::set(&v7, 70, "Power Budget settings", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726A17C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD330;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD330;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(applesauce::CF::DictionaryRef const&)#1}>,void ()(applesauce::CF::DictionaryRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD330;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD300;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)70,applesauce::CF::DictionaryRef>(vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD300;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD2B8;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A1C0C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
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
  v9 = v10;
  vp::sim::Key_Writer::count(&v9, 69, "Mute Downlink Voice");
  v7 = MEMORY[0x277CBED28];
  if (!*a2)
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = *v7;
  if (!*v7)
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v9, 69, "Mute Downlink Voice", &v10);
    if (!v6)
    {
      return;
    }

    goto LABEL_10;
  }

  CFRetain(*v7);
  v10 = v8;
  vp::sim::Key_Writer::set(&v9, 69, "Mute Downlink Voice", &v10);
  CFRelease(v8);
  CFRelease(v8);
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD2B8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD2B8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD2B8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD288;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)69,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD288;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD240;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A2144(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
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
  v9 = v10;
  vp::sim::Key_Writer::count(&v9, 68, "Mute Output");
  v7 = MEMORY[0x277CBED28];
  if (!*a2)
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = *v7;
  if (!*v7)
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v9, 68, "Mute Output", &v10);
    if (!v6)
    {
      return;
    }

    goto LABEL_10;
  }

  CFRetain(*v7);
  v10 = v8;
  vp::sim::Key_Writer::set(&v9, 68, "Mute Output", &v10);
  CFRelease(v8);
  CFRelease(v8);
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD240;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD240;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD240;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD210;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)68,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD210;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD1C8;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A267C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
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
  v9 = v10;
  vp::sim::Key_Writer::count(&v9, 65, "HW REF Tap Stream Enabled");
  v7 = MEMORY[0x277CBED28];
  if (!*a2)
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = *v7;
  if (!*v7)
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v9, 65, "HW REF Tap Stream Enabled", &v10);
    if (!v6)
    {
      return;
    }

    goto LABEL_10;
  }

  CFRetain(*v7);
  v10 = v8;
  vp::sim::Key_Writer::set(&v9, 65, "HW REF Tap Stream Enabled", &v10);
  CFRelease(v8);
  CFRelease(v8);
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD1C8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD1C8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD1C8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD198;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)65,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD198;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD150;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(float const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A2BB4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::operator()(uint64_t a1, float *a2)
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
  vp::sim::Key_Writer::count(&v8, 64, "IO Cycle Usage");
  vp::sim::converters::Default_Converter<float>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 64, "IO Cycle Usage", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 64, "IO Cycle Usage", &v10);
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

void sub_2726A2CC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD150;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD150;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD150;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD120;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)64,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD120;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD0D8;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(CAOrientation const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A3110(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(CAOrientation const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(CAOrientation const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<CAOrientation>::register_listener(std::function<void ()(CAOrientation const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CAOrientation>::register_listener(std::function<void ()(CAOrientation const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<CAOrientation>(void)::s_type_id;
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

void std::__function::__func<vp::vx::data_flow::State<CAOrientation>::register_listener(std::function<void ()(CAOrientation const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CAOrientation>::register_listener(std::function<void ()(CAOrientation const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(CAOrientation const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<CAOrientation>::register_listener(std::function<void ()(CAOrientation const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CAOrientation>::register_listener(std::function<void ()(CAOrientation const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD018;
  std::__function::__value_func<void ()(CAOrientation const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<CAOrientation>::register_listener(std::function<void ()(CAOrientation const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CAOrientation>::register_listener(std::function<void ()(CAOrientation const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD018;
  std::__function::__value_func<void ()(CAOrientation const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1}>,void ()(CAOrientation const&)>::operator()(uint64_t a1, int *a2)
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
  v10[0] = v11;
  vp::sim::Key_Writer::count(v10, 63, "CA Orientation");
  valuePtr = *a2;
  v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v8 = v7;
  v10[1] = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  CFRetain(v7);
  v11 = v8;
  vp::sim::Key_Writer::set(v10, 63, "CA Orientation", &v11);
  CFRelease(v8);
  CFRelease(v8);
  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_2726A362C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1}>,void ()(CAOrientation const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1}>,void ()(CAOrientation const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1}>,void ()(CAOrientation const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD0D8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1}>,void ()(CAOrientation const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD0D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1}>,void ()(CAOrientation const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD0D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD0A8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)63,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BD0A8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BD060;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(CAOrientation const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A3A78(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1}>,void ()(CAOrientation const&)>::operator()(uint64_t a1, int *a2)
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
  vp::sim::Key_Writer::count(&v8, 62, "Device Orientation");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 62, "Device Orientation", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 62, "Device Orientation", &v10);
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

void sub_2726A3B88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1}>,void ()(CAOrientation const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1}>,void ()(CAOrientation const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1}>,void ()(CAOrientation const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BD060;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1}>,void ()(CAOrientation const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD060;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CAOrientation const&)#1}>,void ()(CAOrientation const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BD060;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCFE8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)62,CAOrientation>(vp::vx::data_flow::State<CAOrientation>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCFE8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BCFA0;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A3FD4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
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
  v9 = v10;
  vp::sim::Key_Writer::count(&v9, 61, "HW Has VP");
  v7 = MEMORY[0x277CBED28];
  if (!*a2)
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = *v7;
  if (!*v7)
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v9, 61, "HW Has VP", &v10);
    if (!v6)
    {
      return;
    }

    goto LABEL_10;
  }

  CFRetain(*v7);
  v10 = v8;
  vp::sim::Key_Writer::set(&v9, 61, "HW Has VP", &v10);
  CFRelease(v8);
  CFRelease(v8);
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BCFA0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCFA0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCFA0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCF70;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)61,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCF70;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BCF28;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(std::vector<unsigned int> const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A450C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(std::vector<unsigned int> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::vector<unsigned int> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<std::vector<unsigned int>>::register_listener(std::function<void ()(std::vector<unsigned int> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<unsigned int>>::register_listener(std::function<void ()(std::vector<unsigned int> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::vector<unsigned int>>(void)::s_type_id;
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

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<unsigned int>>::compare_value(uint64_t a1, const void ***a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = **a2;
  v5 = (*a2)[1] - v4;
  return v5 == *(v3 + 8) - *v3 && memcmp(v4, *v3, v5) == 0;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<unsigned int>>::destroy_value(uint64_t a1, void ***a2)
{
  v2 = **a2;
  if (v2)
  {
    (*a2)[1] = v2;
    operator delete(v2);
  }
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<unsigned int>>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
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

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<unsigned int>>::copy_value(uint64_t a1, void **a2, uint64_t **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v3, *v4, v4[1], (v4[1] - *v4) >> 2);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<unsigned int>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<unsigned int>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 24, 8);
  *a2 = result;
  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::vector<unsigned int>>::register_listener(std::function<void ()(std::vector<unsigned int> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<unsigned int>>::register_listener(std::function<void ()(std::vector<unsigned int> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::vector<unsigned int> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::vector<unsigned int>>::register_listener(std::function<void ()(std::vector<unsigned int> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<unsigned int>>::register_listener(std::function<void ()(std::vector<unsigned int> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB6B0;
  std::__function::__value_func<void ()(std::vector<unsigned int> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::vector<unsigned int>>::register_listener(std::function<void ()(std::vector<unsigned int> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<unsigned int>>::register_listener(std::function<void ()(std::vector<unsigned int> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB6B0;
  std::__function::__value_func<void ()(std::vector<unsigned int> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::operator()(uint64_t a1, unsigned int **a2)
{
  v44 = *MEMORY[0x277D85DE8];
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

  vp::sim::Property_List_Writer::find_writable_element(v40, v3, v5);
  cf = v40[0];
  vp::sim::Key_Writer::count(&cf, 60, "Speaker Input Data Source");
  memset(&v34, 0, sizeof(v34));
  v6 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    goto LABEL_50;
  }

  do
  {
    v8 = *v6;
    memset(&v35, 0, sizeof(v35));
    v42 = v40 + 2;
    v43 = v41;
    MEMORY[0x2743CBDC0](&v39);
    v9 = std::locale::classic();
    if (std::locale::operator==(&v39, v9))
    {
      v10 = v41;
      do
      {
        *--v10 = (v8 % 0xA) | 0x30;
        v11 = v8 > 9;
        v8 /= 0xAu;
      }

      while (v11);
      goto LABEL_33;
    }

    v12 = std::locale::use_facet(&v39, MEMORY[0x277D826C0]);
    (v12->__vftable[1].__on_zero_shared)(&__p);
    v13 = v38;
    if ((v38 & 0x8000000000000000) != 0)
    {
      v15 = v37;
      if (!v37)
      {
        goto LABEL_29;
      }

      p_p = __p;
    }

    else
    {
      if (!v38)
      {
        goto LABEL_29;
      }

      p_p = &__p;
      v15 = v38;
    }

    if (*p_p > 0)
    {
      v16 = (v12->__vftable[1].~facet_0)(v12);
      v17 = 0;
      if (v38 >= 0)
      {
        v18 = &__p;
      }

      else
      {
        v18 = __p;
      }

      LOBYTE(v18) = *v18;
      v10 = v41;
      v19 = v18;
      do
      {
        if (!v19)
        {
          if (++v17 < v15)
          {
            v18 = v38 >= 0 ? &__p : __p;
            LODWORD(v18) = *(v18 + v17);
            if (v18 < 1)
            {
              LOBYTE(v18) = 127;
            }
          }

          *--v10 = v16;
          v19 = v18;
        }

        --v19;
        *--v10 = (v8 % 0xA) | 0x30;
        v11 = v8 > 9;
        v8 /= 0xAu;
      }

      while (v11);
      v13 = v38;
      goto LABEL_31;
    }

LABEL_29:
    v10 = v41;
    do
    {
      *--v10 = (v8 % 0xA) | 0x30;
      v11 = v8 > 9;
      v8 /= 0xAu;
    }

    while (v11);
LABEL_31:
    if (v13 < 0)
    {
      operator delete(__p);
    }

LABEL_33:
    std::locale::~locale(&v39);
    v42 = v10;
    v43 = v41;
    std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(&v35, v10, v41, v41 - v10);
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v35;
    }

    else
    {
      v20 = v35.__r_.__value_.__r.__words[0];
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v35.__r_.__value_.__l.__size_;
    }

    std::string::append(&v34, v20, size);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    std::string::append(&v34, ", ", 2uLL);
    ++v6;
  }

  while (v6 != v7);
  if (*a2 != a2[1])
  {
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v23 = v34.__r_.__value_.__r.__words[0];
      v22 = --v34.__r_.__value_.__l.__size_;
    }

    else
    {
      v22 = SHIBYTE(v34.__r_.__value_.__r.__words[2]) - 1;
      *(&v34.__r_.__value_.__s + 23) = v22 & 0x7F;
      v23 = &v34;
    }

    v23->__r_.__value_.__s.__data_[v22] = 0;
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v25 = v34.__r_.__value_.__r.__words[0];
      v24 = --v34.__r_.__value_.__l.__size_;
    }

    else
    {
      v24 = SHIBYTE(v34.__r_.__value_.__r.__words[2]) - 1;
      *(&v34.__r_.__value_.__s + 23) = v24 & 0x7F;
      v25 = &v34;
    }

    v25->__r_.__value_.__s.__data_[v24] = 0;
  }

LABEL_50:
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v34;
  }

  else
  {
    v26 = v34.__r_.__value_.__r.__words[0];
  }

  if (v26)
  {
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v34.__r_.__value_.__l.__size_;
    }

    v28 = CFStringCreateWithBytes(0, v26, v27, 0x8000100u, 0);
    v32 = v28;
    if (!v28)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if ((*(&v34.__r_.__value_.__s + 23) & 0x80) == 0)
    {
LABEL_59:
      if (v28)
      {
        goto LABEL_60;
      }

LABEL_63:
      v33 = 0;
      vp::sim::Key_Writer::set(&cf, 60, "Speaker Input Data Source", &v33);
      goto LABEL_64;
    }
  }

  else
  {
    v28 = 0;
    v32 = 0;
    if ((*(&v34.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_59;
    }
  }

  operator delete(v34.__r_.__value_.__l.__data_);
  if (!v28)
  {
    goto LABEL_63;
  }

LABEL_60:
  CFRetain(v28);
  v33 = v28;
  vp::sim::Key_Writer::set(&cf, 60, "Speaker Input Data Source", &v33);
  CFRelease(v28);
  CFRelease(v28);
LABEL_64:
  if (cf)
  {
    CFRelease(cf);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_2726A4F0C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  JUMPOUT(0x2726A4F80);
}

void sub_2726A4F24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::locale a29)
{
  if (a2)
  {
    if (a28 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&a29);
    JUMPOUT(0x2726A4F88);
  }

  JUMPOUT(0x2726A4F80);
}

void sub_2726A4F78(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BCF28;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCF28;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCF28;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCEF8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)60,std::vector<unsigned int>>(vp::vx::data_flow::State<std::vector<unsigned int>>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCEF8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BCEB0;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A53C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
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
  vp::sim::Key_Writer::count(&v8, 59, "SPKR TEL Block Size");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 59, "SPKR TEL Block Size", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 59, "SPKR TEL Block Size", &v10);
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

void sub_2726A54D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BCEB0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCEB0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCEB0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCE80;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)59,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCE80;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BCE38;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(CA::StreamDescription const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A591C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(CA::StreamDescription const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(CA::StreamDescription const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id;
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

void std::__function::__func<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(CA::StreamDescription const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB530;
  std::__function::__value_func<void ()(CA::StreamDescription const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BB530;
  std::__function::__value_func<void ()(CA::StreamDescription const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::operator()(uint64_t a1, uint64_t a2)
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
  vp::sim::Key_Writer::count(&v9, 58, "SPKR TEL Format");
  vp::sim::converters::Default_Converter<CA::StreamDescription>::to_property_list(&cf, a2, v7);
  v8 = cf;
  if (cf)
  {
    CFRetain(cf);
    v11 = v8;
    vp::sim::Key_Writer::set(&v9, 58, "SPKR TEL Format", &v11);
    CFRelease(v8);
  }

  else
  {
    v11 = 0;
    vp::sim::Key_Writer::set(&v9, 58, "SPKR TEL Format", &v11);
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

void sub_2726A5DE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BCE38;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCE38;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCE38;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCE08;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)58,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCE08;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BCDC0;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A6234(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
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
  vp::sim::Key_Writer::count(&v8, 57, "Beam Direction");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 57, "Beam Direction", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 57, "Beam Direction", &v10);
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

void sub_2726A6344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BCDC0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCDC0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCDC0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCD90;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)57,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCD90;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE4__10JNS3_14Beam_DirectionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  if (v4 >= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = std::bad_cast::bad_cast(exception);
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Beam_Direction>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE4__10JNS3_14Beam_DirectionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BB120;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BCD48;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A6980(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
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
  v9 = v10;
  vp::sim::Key_Writer::count(&v9, 56, "Disable VP");
  v7 = MEMORY[0x277CBED28];
  if (!*a2)
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = *v7;
  if (!*v7)
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v9, 56, "Disable VP", &v10);
    if (!v6)
    {
      return;
    }

    goto LABEL_10;
  }

  CFRetain(*v7);
  v10 = v8;
  vp::sim::Key_Writer::set(&v9, 56, "Disable VP", &v10);
  CFRelease(v8);
  CFRelease(v8);
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BCD48;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCD48;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCD48;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCD18;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)56,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCD18;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BCCD0;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A6EB8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
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
  v9 = v10;
  vp::sim::Key_Writer::count(&v9, 55, "Bypass VP");
  v7 = MEMORY[0x277CBED28];
  if (!*a2)
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = *v7;
  if (!*v7)
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v9, 55, "Bypass VP", &v10);
    if (!v6)
    {
      return;
    }

    goto LABEL_10;
  }

  CFRetain(*v7);
  v10 = v8;
  vp::sim::Key_Writer::set(&v9, 55, "Bypass VP", &v10);
  CFRelease(v8);
  CFRelease(v8);
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BCCD0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCCD0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCCD0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCCA0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)55,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCCA0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BCC58;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(double const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A73F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
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

void std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(double const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBC08;
  std::__function::__value_func<void ()(double const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BBC08;
  std::__function::__value_func<void ()(double const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::operator()(uint64_t a1, double *a2)
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
  vp::sim::Key_Writer::count(&v8, 54, "Telephony Vocoder Sample Rate");
  vp::sim::converters::Default_Converter<double>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 54, "Telephony Vocoder Sample Rate", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 54, "Telephony Vocoder Sample Rate", &v10);
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

void sub_2726A7724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

CFNumberRef vp::sim::converters::Default_Converter<double>::to_property_list(CFNumberRef *a1, double a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BCC58;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCC58;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(double const&)#1}>,void ()(double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCC58;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCC28;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)54,double>(vp::vx::data_flow::State<double>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCC28;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BCBE0;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A7C1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
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
  vp::sim::Key_Writer::count(&v8, 53, "Telephony Vocoder Type");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 53, "Telephony Vocoder Type", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 53, "Telephony Vocoder Type", &v10);
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

void sub_2726A7D2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BCBE0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCBE0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCBE0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCBB0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)53,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCBB0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BCB68;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A8178(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
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
  vp::sim::Key_Writer::count(&v8, 52, "VP Mode");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 52, "VP Mode", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 52, "VP Mode", &v10);
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

void sub_2726A8288(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BCB68;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCB68;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCB68;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCB38;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)52,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCB38;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE3__9JNS3_14Operation_ModeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::Legacy<vp::vx::Operation_Mode>::cast(v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

void sub_2726A8568(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
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

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE3__9JNS3_14Operation_ModeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BB0D8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BCAF0;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(float const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A8834(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::operator()(uint64_t a1, float *a2)
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
  vp::sim::Key_Writer::count(&v8, 51, "Preprocessing input gain");
  vp::sim::converters::Default_Converter<float>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 51, "Preprocessing input gain", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 51, "Preprocessing input gain", &v10);
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

void sub_2726A8944(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BCAF0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCAF0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCAF0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCAC0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)51,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCAC0;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BCA78;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(float const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A8D90(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::operator()(uint64_t a1, float *a2)
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
  vp::sim::Key_Writer::count(&v8, 50, "Hardware Volume");
  vp::sim::converters::Default_Converter<float>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 50, "Hardware Volume", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 50, "Hardware Volume", &v10);
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

void sub_2726A8EA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BCA78;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCA78;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCA78;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCA48;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)50,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BCA48;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BCA00;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(float const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A92EC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::operator()(uint64_t a1, float *a2)
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
  vp::sim::Key_Writer::count(&v8, 49, "DL Volume");
  vp::sim::converters::Default_Converter<float>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 49, "DL Volume", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 49, "DL Volume", &v10);
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

void sub_2726A93FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BCA00;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCA00;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(float const&)#1}>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BCA00;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC988;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)49,float>(vp::vx::data_flow::State<float>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC988;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC940;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(CA::StreamDescription const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A9848(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::operator()(uint64_t a1, uint64_t a2)
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
  vp::sim::Key_Writer::count(&v9, 48, "DL FEV Format");
  vp::sim::converters::Default_Converter<CA::StreamDescription>::to_property_list(&cf, a2, v7);
  v8 = cf;
  if (cf)
  {
    CFRetain(cf);
    v11 = v8;
    vp::sim::Key_Writer::set(&v9, 48, "DL FEV Format", &v11);
    CFRelease(v8);
  }

  else
  {
    v11 = 0;
    vp::sim::Key_Writer::set(&v9, 48, "DL FEV Format", &v11);
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

void sub_2726A9958(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC940;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC940;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC940;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC910;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)48,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC910;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC8C8;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(CA::ChannelLayout const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726A9DA4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(CA::ChannelLayout const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(CA::ChannelLayout const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<CA::ChannelLayout>::register_listener(std::function<void ()(CA::ChannelLayout const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CA::ChannelLayout>::register_listener(std::function<void ()(CA::ChannelLayout const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<CA::ChannelLayout>(void)::s_type_id;
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

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<CA::ChannelLayout>::compare_value(uint64_t a1, int ***a2, void **a3)
{
  v3 = **a2;
  v4 = **a3;
  v5 = *v3;
  if (*v3 != *v4)
  {
    return 0;
  }

  if (v5)
  {
    if (v5 == 0x10000)
    {
      return v3[1] == v4[1];
    }

    return 1;
  }

  v7 = v3[2];
  if (v7 != v4[2])
  {
    return 0;
  }

  if (v7)
  {
    v8 = v3 + 3;
    v9 = v4 + 3;
    result = 1;
    while (*v8 == *v9)
    {
      if (*v8 == 100)
      {
        v10 = *v8 == *v9 && *(v8 + 1) == *(v9 + 1);
        if (!v10 || v8[4] != v9[4])
        {
          break;
        }
      }

      v9 += 5;
      v8 += 5;
      if (!--v7)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<CA::ChannelLayout>::destroy_value(uint64_t a1, void ***a2)
{
  v2 = **a2;
  if (v2)
  {
    (*a2)[1] = v2;
    operator delete(v2);
  }
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<CA::ChannelLayout>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
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

void vp::vx::data_flow::Value::Type_ID_Eraser<CA::ChannelLayout>::copy_value(uint64_t a1, void **a2, uint64_t **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  v6 = *v4;
  v5 = v4[1];
  if (v5 != v6)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](v3, v5 - v6);
  }
}

void sub_2726AA0AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<CA::ChannelLayout>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<CA::ChannelLayout>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 24, 8);
  *a2 = result;
  return result;
}

void std::__function::__func<vp::vx::data_flow::State<CA::ChannelLayout>::register_listener(std::function<void ()(CA::ChannelLayout const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CA::ChannelLayout>::register_listener(std::function<void ()(CA::ChannelLayout const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(CA::ChannelLayout const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<CA::ChannelLayout>::register_listener(std::function<void ()(CA::ChannelLayout const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CA::ChannelLayout>::register_listener(std::function<void ()(CA::ChannelLayout const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC880;
  std::__function::__value_func<void ()(CA::ChannelLayout const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<CA::ChannelLayout>::register_listener(std::function<void ()(CA::ChannelLayout const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CA::ChannelLayout>::register_listener(std::function<void ()(CA::ChannelLayout const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC880;
  std::__function::__value_func<void ()(CA::ChannelLayout const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::ChannelLayout const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::ChannelLayout const&)#1}>,void ()(CA::ChannelLayout const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
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

  vp::sim::Property_List_Writer::find_writable_element(v50, v3, v5);
  v6 = *&v50[0];
  v34[0] = *&v50[0];
  vp::sim::Key_Writer::count(v34, 47, "DL MIX Channel Layout");
  v50[0] = xmmword_279E4A3B0;
  v50[1] = *&off_279E4A3C0;
  LODWORD(valuePtr) = **a2;
  v41 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v41)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  LODWORD(valuePtr) = *(*a2 + 4);
  v40 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v40)
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v30, "Could not construct");
  }

  if (*(*a2 + 8) > (*(a2 + 8) - *a2 - 12) / 0x14uLL)
  {
    __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
  }

  LODWORD(valuePtr) = *(*a2 + 8);
  v39 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v39)
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v31, "Could not construct");
  }

  v33 = v6;
  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v38 = Mutable;
  v9 = *(a2 + 8);
  v10 = (*a2 + 12);
  if (v10 != v9)
  {
    v11 = MEMORY[0x277CBF128];
    v12 = MEMORY[0x277CBF138];
    v13 = MEMORY[0x277CBF150];
    do
    {
      *keys = xmmword_279E4A3D0;
      keys[2] = @"Coordinates";
      LODWORD(valuePtr) = *v10;
      v37 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (!v37)
      {
        v23 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v23, "Could not construct");
      }

      LODWORD(valuePtr) = v10[1];
      v36 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (!v36)
      {
        v24 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v24, "Could not construct");
      }

      LODWORD(valuePtr) = v10[2];
      v44 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      if (!v44)
      {
        v25 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v25, "Could not construct");
      }

      LODWORD(valuePtr) = v10[3];
      v43 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      if (!v43)
      {
        v26 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v26, "Could not construct");
      }

      LODWORD(valuePtr) = v10[4];
      v14 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      cf = v14;
      if (!v14)
      {
        v27 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v27, "Could not construct");
      }

      valuePtr = v44;
      v46 = v43;
      v47 = v14;
      v15 = CFArrayCreate(v7, &valuePtr, 3, v11);
      v35[1] = v15;
      if (cf)
      {
        CFRelease(cf);
      }

      if (v43)
      {
        CFRelease(v43);
      }

      if (v44)
      {
        CFRelease(v44);
      }

      valuePtr = v37;
      v46 = v36;
      v47 = v15;
      v16 = CFDictionaryCreate(v7, keys, &valuePtr, 3, v12, v13);
      v44 = v16;
      if (v16)
      {
        v17 = CFGetTypeID(v16);
        if (v17 != CFDictionaryGetTypeID())
        {
          v28 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v28, "Could not construct");
        }

        v18 = v44;
      }

      else
      {
        v18 = 0;
      }

      CFArrayAppendValue(Mutable, v18);
      if (v44)
      {
        CFRelease(v44);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (v36)
      {
        CFRelease(v36);
      }

      if (v37)
      {
        CFRelease(v37);
      }

      v10 += 5;
    }

    while (v10 != v9);
  }

  valuePtr = v41;
  v46 = v40;
  v47 = v39;
  v48 = Mutable;
  v19 = CFDictionaryCreate(v7, v50, &valuePtr, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v20 = v19;
  v34[1] = v19;
  if (v19)
  {
    v21 = CFGetTypeID(v19);
    if (v21 != CFDictionaryGetTypeID())
    {
      v32 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v32, "Could not construct");
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v20)
  {
    CFRetain(v20);
    v35[0] = v20;
    vp::sim::Key_Writer::set(v34, 47, "DL MIX Channel Layout", v35);
    CFRelease(v20);
    CFRelease(v20);
    if (!v33)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v35[0] = 0;
  vp::sim::Key_Writer::set(v34, 47, "DL MIX Channel Layout", v35);
  if (v33)
  {
LABEL_48:
    CFRelease(v33);
  }

LABEL_49:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_2726AAA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, const void *a27, const void *a28, const void *a29, const void *a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37, int a38, __int16 a39, char a40, char a41)
{
  if (a2)
  {
    __cxa_free_exception(v41);
    applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a15);
    applesauce::CF::ObjectRef<__CFArray *>::~ObjectRef(&a27);
    applesauce::CF::NumberRef::~NumberRef(&a28);
    applesauce::CF::NumberRef::~NumberRef(&a29);
    applesauce::CF::NumberRef::~NumberRef(&a30);
    v43 = __cxa_begin_catch(exception_object);
    vp::sim::throw_exception(v43, v44);
  }

  _Unwind_Resume(exception_object);
}

void sub_2726AAD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  JUMPOUT(0x2726AAD50);
}

void sub_2726AAD44(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::ChannelLayout const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::ChannelLayout const&)#1}>,void ()(CA::ChannelLayout const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::ChannelLayout const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::ChannelLayout const&)#1}>,void ()(CA::ChannelLayout const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::ChannelLayout const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::ChannelLayout const&)#1}>,void ()(CA::ChannelLayout const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC8C8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::ChannelLayout const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::ChannelLayout const&)#1}>,void ()(CA::ChannelLayout const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC8C8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::ChannelLayout const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::ChannelLayout const&)#1}>,void ()(CA::ChannelLayout const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC8C8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC850;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)47,CA::ChannelLayout>(vp::vx::data_flow::State<CA::ChannelLayout>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC850;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC808;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726AB190(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
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
  vp::sim::Key_Writer::count(&v8, 46, "DL MIX Block Size");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 46, "DL MIX Block Size", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 46, "DL MIX Block Size", &v10);
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

void sub_2726AB2A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC808;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC808;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC808;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC7D8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)46,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC7D8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC790;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(CA::StreamDescription const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726AB6EC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::operator()(uint64_t a1, uint64_t a2)
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
  vp::sim::Key_Writer::count(&v9, 45, "DL MIX Format");
  vp::sim::converters::Default_Converter<CA::StreamDescription>::to_property_list(&cf, a2, v7);
  v8 = cf;
  if (cf)
  {
    CFRetain(cf);
    v11 = v8;
    vp::sim::Key_Writer::set(&v9, 45, "DL MIX Format", &v11);
    CFRelease(v8);
  }

  else
  {
    v11 = 0;
    vp::sim::Key_Writer::set(&v9, 45, "DL MIX Format", &v11);
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

void sub_2726AB7FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC790;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC790;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC790;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC760;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)45,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC760;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC718;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726ABC48(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
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
  v9 = v10;
  vp::sim::Key_Writer::count(&v9, 44, "Enable AGC");
  v7 = MEMORY[0x277CBED28];
  if (!*a2)
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = *v7;
  if (!*v7)
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v9, 44, "Enable AGC", &v10);
    if (!v6)
    {
      return;
    }

    goto LABEL_10;
  }

  CFRetain(*v7);
  v10 = v8;
  vp::sim::Key_Writer::set(&v9, 44, "Enable AGC", &v10);
  CFRelease(v8);
  CFRelease(v8);
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC718;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC718;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC718;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC6E8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)44,BOOL>(vp::vx::data_flow::State<BOOL>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC6E8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC6A0;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726AC180(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
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
  vp::sim::Key_Writer::count(&v8, 43, "MaxOutPktByteSize");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 43, "MaxOutPktByteSize", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 43, "MaxOutPktByteSize", &v10);
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

void sub_2726AC290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC6A0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC6A0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC6A0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC670;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)43,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC670;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE3__8JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESK_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EEclEOS12_OS13_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *(vp::vx::data_flow::Value::view_storage(**a2) + 16);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE3__8JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESK_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE7__cloneEPNS0_6__baseIS17_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BB090;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC628;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726AC7D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
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
  vp::sim::Key_Writer::count(&v8, 42, "MaxNumOutPkts");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 42, "MaxNumOutPkts", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 42, "MaxNumOutPkts", &v10);
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

void sub_2726AC8E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC628;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC628;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC628;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC5F8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)42,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC5F8;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE3__7JN2CA17StreamDescriptionEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_jEEERNS4_13State_ManagerESK_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EEclEOS12_OS13_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
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

  v7 = v3[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v8 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 8);
  v10 = vaddvq_s32(vbicq_s8(xmmword_2727567A0, vceqzq_s32(v9))) & 0xF;
  if (*v6 == 0.0 && v10 == 0 && *(v6 + 24) == 0 && *(v6 + 32) == 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*v8 * *(v6 + 24)) / v9.i32[2];
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v15);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v14;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components20Property_List_Writer26set_up_key_state_listenersERS8_RKNS3_27Voice_Processor_State_OwnerEE3__7JN2CA17StreamDescriptionEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_jEEERNS4_13State_ManagerESK_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE7__cloneEPNS0_6__baseIS17_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BB048;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC5B0;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(CA::StreamDescription const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726ACECC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::operator()(uint64_t a1, uint64_t a2)
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
  vp::sim::Key_Writer::count(&v9, 41, "VP Output Format");
  vp::sim::converters::Default_Converter<CA::StreamDescription>::to_property_list(&cf, a2, v7);
  v8 = cf;
  if (cf)
  {
    CFRetain(cf);
    v11 = v8;
    vp::sim::Key_Writer::set(&v9, 41, "VP Output Format", &v11);
    CFRelease(v8);
  }

  else
  {
    v11 = 0;
    vp::sim::Key_Writer::set(&v9, 41, "VP Output Format", &v11);
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

void sub_2726ACFDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  vp::sim::Key_Writer::~Key_Writer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BC5B0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC5B0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BC5B0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC580;
  vp::vx::data_flow::State<void>::~State((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)41,CA::StreamDescription>(vp::vx::data_flow::State<CA::StreamDescription>)::Sim_Key_State_T::~Sim_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881BC580;
  vp::vx::data_flow::State<void>::~State((a1 + 8));
  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881BC538;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_2726AD428(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Property_List_Writer::set_up<(vp::sim::Key)24,unsigned int>(vp::vx::data_flow::State<unsigned int>)::Sim_Key_State_T::register_listener(std::shared_ptr<vp::sim::Property_List_Writer>)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
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
  vp::sim::Key_Writer::count(&v8, 24, "HW REF Safety Offset");
  vp::sim::converters::Default_Converter<unsigned int>::to_property_list(&cf, *a2);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = v7;
    vp::sim::Key_Writer::set(&v8, 24, "HW REF Safety Offset", &v10);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
    vp::sim::Key_Writer::set(&v8, 24, "HW REF Safety Offset", &v10);
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