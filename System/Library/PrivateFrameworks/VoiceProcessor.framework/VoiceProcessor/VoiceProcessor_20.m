void sub_27261F844(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *std::unique_ptr<vp::vx::dsp::Graph,vp::Allocator_Delete<vp::vx::dsp::Graph>>::reset[abi:ne200100](void *result, uint64_t a2)
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

uint64_t vp::vx::detail::convert_to_c_str(unint64_t a1)
{
  v3 = a1;
  if (HIDWORD(a1) == 0xFFFFFFFF)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v2;
  return (off_2881B67E0[HIDWORD(a1)])(&v4, &v3);
}

{
  v3 = a1;
  if (HIDWORD(a1) == 0xFFFFFFFF)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v2;
  return (off_2881B8E28[HIDWORD(a1)])(&v4, &v3);
}

uint64_t vp::vx::detail::get_value<BOOL>(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_2881B6C08[v1])(&v4, a1);
}

uint64_t vp::vx::DSP_Node_Factory::get_block_size(vp::vx::DSP_Node_Factory *this)
{
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = std::pmr::get_default_resource(this);
  vp::vx::data_flow::State<void>::get_value(this + 18, v4);
  v2 = *vp::vx::data_flow::Value::view_storage(v4);
  vp::vx::data_flow::Value::~Value(v4);
  return v2;
}

void sub_27261FC20(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::data_flow::Value::~Value(va);
  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(std::string const&,CA::StreamDescription const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<applesauce::CF::NumberRef ()(unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<applesauce::CF::DictionaryRef ()(unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void vp::vx::dsp::Graph_Builder::~Graph_Builder(vp::vx::dsp::Graph_Builder *this)
{
  *this = &unk_2881B7E40;
  std::__function::__value_func<applesauce::CF::DictionaryRef ()>::~__value_func[abi:ne200100](this + 328);
  v4 = (this + 304);
  std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__function::__value_func<applesauce::CF::NumberRef ()>::~__value_func[abi:ne200100](this + 272);
  v2 = *(this + 31);
  if (v2)
  {
    *(this + 32) = v2;
    operator delete(v2);
  }

  v4 = (this + 200);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 176);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 152);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 144) == 1 && *(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 112) == 1 && *(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 80) == 1 && *(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  v3 = *(this + 6);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*(this + 40) == 1 && *(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void vp::vx::DSP_Node_Configuration::~DSP_Node_Configuration(vp::vx::DSP_Node_Configuration *this)
{
  v3 = (this + 160);
  std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = (this + 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 24);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

const void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZN2vp2vx16DSP_Node_Factory8new_nodeENS9_2io5ModelENS8_9AllocatorISt4byteEEENK3__0clEvEUlT_E1_EEJONS0_6__baseILNS0_6_TraitE0EJNS9_18Uplink_DSP_Node_IDENS9_20Downlink_DSP_Node_IDEEEEEEEDcSH_DpT0_@<X0>(int *a1@<X1>, _BYTE *a2@<X8>)
{
  result = vp::reflect_value_name_tag<vp::vx::Downlink_DSP_Node_ID,128ul>(*a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

const void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZN2vp2vx16DSP_Node_Factory8new_nodeENS9_2io5ModelENS8_9AllocatorISt4byteEEENK3__0clEvEUlT_E1_EEJONS0_6__baseILNS0_6_TraitE0EJNS9_18Uplink_DSP_Node_IDENS9_20Downlink_DSP_Node_IDEEEEEEEDcSH_DpT0_@<X0>(int *a1@<X1>, _BYTE *a2@<X8>)
{
  result = vp::reflect_value_name_tag<vp::vx::Uplink_DSP_Node_ID,128ul>(*a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvEUlT_E0_NS_9allocatorISC_EEFN10applesauce2CF13DictionaryRefEjEEclEOj(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v13 = *a2;
  v4 = *(a1 + 8);
  v5 = v4[3];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = v4[2];
  if (!v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
LABEL_7:
    *a3 = 0;
    return;
  }

  v12[0] = v4;
  v12[1] = &v13;
  v9 = v4[1];
  (*(*v8 + 24))(v10);
  if (v11 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v14 = v12;
  (off_2881B69E0[v11])(&v14, v10);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_2726201A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_2881B6810[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN10applesauce2CF13DictionaryRefEN2vp2vx9data_flow5StateISA_EEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSA_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

int *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZZN2vp2vx16DSP_Node_Factory8new_nodeENS9_2io5ModelENS8_9AllocatorISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSH_EUlSH_E_EEJONS0_6__baseILNS0_6_TraitE1EJN10applesauce2CF13DictionaryRefENS9_9data_flow5StateISS_EEEEEEEEDcSH_DpT0_@<X0>(_DWORD ***a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v30 = *a2;
  v31 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *v4;
  v7 = *(*v4 + 4);
  v6 = *(*v4 + 5);
  *&v32 = *v4;
  *(&v32 + 1) = v7;
  v33 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v34 = *v4[1];
  v8 = v5 + 131;
  v9 = v5[131];
  v10 = v5[132];
  if (v9 >= v10)
  {
    v12 = v5[130];
    v13 = (v9 - v12) >> 5;
    if ((v13 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v14 = v10 - v12;
    v15 = v14 >> 4;
    if (v14 >> 4 <= (v13 + 1))
    {
      v15 = v13 + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v16 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v38 = v5 + 133;
    if (v16)
    {
      if (v16 >> 59)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v17 = (*(*v5[133] + 16))(v5[133], 32 * v16, 8);
    }

    else
    {
      v17 = 0;
    }

    v35 = v17;
    v36 = (v17 + 32 * v13);
    *&v37 = v36;
    *(&v37 + 1) = v17 + 32 * v16;
    _ZNSt3__116allocator_traitsIN2vp9AllocatorINS1_2vx16DSP_Node_Factory8ListenerIN10applesauce2CF13DictionaryRefEEEEEE9constructB8ne200100IS9_JRNS3_9data_flow5StateIS8_EEZZZZNS4_8new_nodeENS3_2io5ModelENS2_ISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSM_ENKUlSM_E_clISF_EESP_SM_EUlSM_T0_E_ELi0EEEvRSA_PSM_DpOT0_(v36, &v30, &v32);
    *&v37 = v37 + 32;
    v18 = v5[131];
    v19 = v5[130];
    v20 = v36 + v19 - v18;
    if (v19 != v18)
    {
      v21 = v5[130];
      v22 = v36 + v19 - v18;
      do
      {
        *v22 = *v21;
        *(v22 + 8) = *(v21 + 8);
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v22 + 6) = *(v21 + 24);
        v21 += 32;
        v22 += 32;
      }

      while (v21 != v18);
      do
      {
        v19 = vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener(v19) + 8;
      }

      while (v19 != v18);
    }

    v23 = v5[130];
    v5[130] = v20;
    v24 = v5[132];
    v29 = v37;
    *v8 = v37;
    *&v37 = v23;
    *(&v37 + 1) = v24;
    v35 = v23;
    v36 = v23;
    std::__split_buffer<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>,vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>> &>::~__split_buffer(&v35);
    v11 = v29;
  }

  else
  {
    _ZNSt3__116allocator_traitsIN2vp9AllocatorINS1_2vx16DSP_Node_Factory8ListenerIN10applesauce2CF13DictionaryRefEEEEEE9constructB8ne200100IS9_JRNS3_9data_flow5StateIS8_EEZZZZNS4_8new_nodeENS3_2io5ModelENS2_ISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSM_ENKUlSM_E_clISF_EESP_SM_EUlSM_T0_E_ELi0EEEvRSA_PSM_DpOT0_(v5[131], &v30, &v32);
    v11 = v9 + 32;
    *v8 = v9 + 32;
  }

  *v8 = v11;
  v25 = v33;
  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  default_resource = std::pmr::get_default_resource(v25);
  v33 = 0;
  v32 = default_resource;
  v39 = v30;
  v35 = v31;
  v36 = &v39;
  *&v37 = &v32;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v31, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, &v35);
  v27 = vp::vx::data_flow::Value::view_storage(&v32);
  *a3 = *v27;
  *v27 = 0;
  vp::vx::data_flow::Value::~Value(&v32);
  return vp::vx::data_flow::State<void>::~State(&v30);
}

void sub_2726204B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, char a19)
{
  std::__split_buffer<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>,vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>> &>::~__split_buffer(&a19);
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  vp::vx::data_flow::State<void>::~State(&a12);
  _Unwind_Resume(a1);
}

int *_ZNSt3__116allocator_traitsIN2vp9AllocatorINS1_2vx16DSP_Node_Factory8ListenerIN10applesauce2CF13DictionaryRefEEEEEE9constructB8ne200100IS9_JRNS3_9data_flow5StateIS8_EEZZZZNS4_8new_nodeENS3_2io5ModelENS2_ISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSM_ENKUlSM_E_clISF_EESP_SM_EUlSM_T0_E_ELi0EEEvRSA_PSM_DpOT0_(uint64_t a1, int *a2, __int128 *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  vp::vx::data_flow::State<void>::State(&v11, a2);
  *a1 = v11;
  v5 = v12;
  *(a1 + 8) = v12;
  v12 = 0uLL;
  *(a1 + 24) = 0;
  if (v5)
  {
    v10 = *a3;
    v6 = *(a3 + 2);
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    v7 = *(a3 + 6);
    operator new();
  }

  result = vp::vx::data_flow::State<void>::~State(&v11);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272620668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>,vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener(i - 32);
  }

  if (*a1)
  {
    std::allocator_traits<vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>>>::deallocate[abi:ne200100](**(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 5);
  }

  return a1;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::DictionaryRef>::compare_value(uint64_t a1, const void **a2, const void **a3)
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

void vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::DictionaryRef>::destroy_value(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

CFTypeRef vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::DictionaryRef>::copy_value(uint64_t a1, void *a2, CFTypeRef *a3)
{
  v4 = *a3;
  if (*a3)
  {
    result = CFRetain(*a3);
  }

  *a2 = v4;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::DictionaryRef>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t std::__function::__value_func<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
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

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6A00;
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6A00;
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF13DictionaryRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EEclEOjSS_(uint64_t a1, unsigned int *a2, CFTypeRef *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 8);
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 16);
      if (v10)
      {
        atomic_fetch_add((v7 + 1264), 1u);
        v11 = *(v7 + 8);
        v12 = *(a1 + 32);
        if (v5)
        {
          CFRetain(v5);
        }

        v13 = vp::vx::detail::convert_to_c_str(v11);
        v14 = bswap32(v12);
        *(&__s.__r_.__value_.__l.__data_ + 1) = v14;
        if ((v14 - 32) > 0x5E || ((v14 >> 8) - 32) > 0x5E || ((v14 << 8 >> 24) - 32) > 0x5E || ((v14 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v19, v12);
        }

        else
        {
          strcpy(&__s.__r_.__value_.__s.__data_[5], "'");
          __s.__r_.__value_.__s.__data_[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v19, &__s);
        }

        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v19;
        }

        else
        {
          v15 = v19.__r_.__value_.__r.__words[0];
        }

        if (v5)
        {
          v16 = CFCopyDescription(v5);
          v24 = v16;
          applesauce::CF::details::CFString_get_value<true>(__p, v16);
          if (v16)
          {
            CFRelease(v16);
          }

          vp::vx::detail::strip(&__s, __p);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__s, "null");
        }

        p_s = &__s;
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_s = __s.__r_.__value_.__r.__words[0];
        }

        caulk::make_string("%s property %s override is %s", &v23, v13, v15, p_s);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (v5 && v22 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        v19 = v23;
        memset(&v23, 0, sizeof(v23));
        v20 = 1;
        if (HIDWORD(v11))
        {
          (*(*v10 + 32))(v10, v4, &v19);
        }

        else
        {
          (*(*v10 + 24))(v10, v4, &v19);
        }

        if (v20 == 1 && SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (!v5)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        operator delete(v23.__r_.__value_.__l.__data_);
        if (v5)
        {
LABEL_41:
          CFRelease(v5);
        }
      }

LABEL_42:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_272620EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a14);
  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a13);
  _Unwind_Resume(a1);
}

std::string *vp::vx::detail::strip(std::string *a1, void **a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 < 0)
  {
    v4 = a2[1];
  }

  v31 = 10;
  v6 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(v5, v5 + v4, &v31);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 < 0)
  {
    v7 = a2[1];
  }

  std::string::erase(a2, v6 - v8, &v7[v8] - v6);
  v9 = *(a2 + 23);
  v10 = *a2;
  v11 = a2[1];
  if (v9 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v9 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = a2[1];
  }

  v14 = v13 + v12;
  if (v13)
  {
    v15 = v13 - 2;
    while (1)
    {
      v16 = v12++;
      if (v12 == v14)
      {
        break;
      }

      v17 = v15--;
      if (*v16 == 32 && v16[1] == 32)
      {
        if (v16 != v14)
        {
          if (v16 + 2 != v14)
          {
            v18 = 32;
            v19 = 1;
            do
            {
              v20 = v18;
              v18 = v12[v19];
              if (v20 != 32 || v18 != 32)
              {
                *++v16 = v18;
              }

              ++v19;
              --v17;
            }

            while (v17);
            v9 = *(a2 + 23);
            v10 = *a2;
            v11 = a2[1];
          }

          v14 = v16 + 1;
        }

        break;
      }
    }
  }

  if ((v9 & 0x80u) != 0)
  {
    v9 = v11;
  }

  else
  {
    v10 = a2;
  }

  std::string::erase(a2, v14 - v10, &v10[v9] - v14);
  v21 = *(a2 + 23);
  if (v21 < 0)
  {
    v22 = *a2;
    v23 = a2[1];
    if (!v23)
    {
      goto LABEL_41;
    }

LABEL_38:
    v24 = v22;
    while (*v24 == 32)
    {
      ++v24;
      v23 = v23 - 1;
      if (!v23)
      {
        goto LABEL_41;
      }
    }

    v25 = v24 - v22;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_44:
    v26 = *a2;
    v21 = a2[1];
    goto LABEL_45;
  }

  v22 = a2;
  v23 = *(a2 + 23);
  if (*(a2 + 23))
  {
    goto LABEL_38;
  }

LABEL_41:
  v25 = -1;
  if ((v21 & 0x80000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_42:
  v26 = a2;
LABEL_45:
  v27 = v26 + v21;
  while (v21)
  {
    v28 = *--v27;
    --v21;
    if (v28 != 32)
    {
      v29 = v27 - v26;
      return std::string::basic_string(a1, a2, v25, v29, &v32);
    }
  }

  v29 = -1;
  return std::string::basic_string(a1, a2, v25, v29, &v32);
}

unsigned __int8 *std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = memchr(a1, *a3, a2 - a1);
  if (!result)
  {
    result = a2;
  }

  v6 = result + 1;
  if (result != a2 && v6 != a2)
  {
    do
    {
      v8 = *v6;
      if (v8 != *a3)
      {
        *result++ = v8;
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF13DictionaryRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF13DictionaryRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF13DictionaryRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B6A48;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void _ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF13DictionaryRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EED0Ev(void *a1)
{
  *a1 = &unk_2881B6A48;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF13DictionaryRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EED1Ev(void *a1)
{
  *a1 = &unk_2881B6A48;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZZN2vp2vx16DSP_Node_Factory8new_nodeENS9_2io5ModelENS8_9AllocatorISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSH_EUlSH_E_EEJONS0_6__baseILNS0_6_TraitE1EJN10applesauce2CF13DictionaryRefENS9_9data_flow5StateISS_EEEEEEEEDcSH_DpT0_(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v2 = *a1;
  *a1 = 0;
  *a2 = v2;
}

uint64_t _ZNKSt3__110__function6__funcIZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvEUlT_E0_NS_9allocatorISC_EEFN10applesauce2CF13DictionaryRefEjEE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B69A8;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvEUlT_E_NS_9allocatorISC_EEFN10applesauce2CF9NumberRefEjEEclEOj(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v13 = *a2;
  v4 = *(a1 + 8);
  v5 = v4[3];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = v4[2];
  if (!v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
LABEL_7:
    *a3 = 0;
    return;
  }

  v12[0] = v4;
  v12[1] = &v13;
  v9 = v4[1];
  (*(*v8 + 16))(v10);
  if (v11 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v14 = v12;
  (off_2881B68F8[v11])(&v14, v10);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_2726214E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_2881B6800[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN10applesauce2CF9NumberRefEN2vp2vx9data_flow5StateISA_EEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSA_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

int *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZZN2vp2vx16DSP_Node_Factory8new_nodeENS9_2io5ModelENS8_9AllocatorISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSH_EUlSH_E_EEJONS0_6__baseILNS0_6_TraitE1EJN10applesauce2CF9NumberRefENS9_9data_flow5StateISS_EEEEEEEEDcSH_DpT0_@<X0>(_DWORD ***a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v30 = *a2;
  v31 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *v4;
  v7 = *(*v4 + 4);
  v6 = *(*v4 + 5);
  *&v32 = *v4;
  *(&v32 + 1) = v7;
  v33 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v34 = *v4[1];
  v8 = v5 + 127;
  v9 = v5[127];
  v10 = v5[128];
  if (v9 >= v10)
  {
    v12 = v5[126];
    v13 = (v9 - v12) >> 5;
    if ((v13 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v14 = v10 - v12;
    v15 = v14 >> 4;
    if (v14 >> 4 <= (v13 + 1))
    {
      v15 = v13 + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v16 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v38 = v5 + 129;
    if (v16)
    {
      if (v16 >> 59)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v17 = (*(*v5[129] + 16))(v5[129], 32 * v16, 8);
    }

    else
    {
      v17 = 0;
    }

    v35 = v17;
    v36 = (v17 + 32 * v13);
    *&v37 = v36;
    *(&v37 + 1) = v17 + 32 * v16;
    _ZNSt3__116allocator_traitsIN2vp9AllocatorINS1_2vx16DSP_Node_Factory8ListenerIN10applesauce2CF9NumberRefEEEEEE9constructB8ne200100IS9_JRNS3_9data_flow5StateIS8_EEZZZZNS4_8new_nodeENS3_2io5ModelENS2_ISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSM_ENKUlSM_E_clISF_EESP_SM_EUlSM_T0_E_ELi0EEEvRSA_PSM_DpOT0_(v36, &v30, &v32);
    *&v37 = v37 + 32;
    v18 = v5[127];
    v19 = v5[126];
    v20 = v36 + v19 - v18;
    if (v19 != v18)
    {
      v21 = v5[126];
      v22 = v36 + v19 - v18;
      do
      {
        *v22 = *v21;
        *(v22 + 8) = *(v21 + 8);
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v22 + 6) = *(v21 + 24);
        v21 += 32;
        v22 += 32;
      }

      while (v21 != v18);
      do
      {
        v19 = vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener(v19) + 8;
      }

      while (v19 != v18);
    }

    v23 = v5[126];
    v5[126] = v20;
    v24 = v5[128];
    v29 = v37;
    *v8 = v37;
    *&v37 = v23;
    *(&v37 + 1) = v24;
    v35 = v23;
    v36 = v23;
    std::__split_buffer<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::NumberRef>,vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::NumberRef>> &>::~__split_buffer(&v35);
    v11 = v29;
  }

  else
  {
    _ZNSt3__116allocator_traitsIN2vp9AllocatorINS1_2vx16DSP_Node_Factory8ListenerIN10applesauce2CF9NumberRefEEEEEE9constructB8ne200100IS9_JRNS3_9data_flow5StateIS8_EEZZZZNS4_8new_nodeENS3_2io5ModelENS2_ISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSM_ENKUlSM_E_clISF_EESP_SM_EUlSM_T0_E_ELi0EEEvRSA_PSM_DpOT0_(v5[127], &v30, &v32);
    v11 = v9 + 32;
    *v8 = v9 + 32;
  }

  *v8 = v11;
  v25 = v33;
  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  default_resource = std::pmr::get_default_resource(v25);
  v33 = 0;
  v32 = default_resource;
  v39 = v30;
  v35 = v31;
  v36 = &v39;
  *&v37 = &v32;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v31, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, &v35);
  v27 = vp::vx::data_flow::Value::view_storage(&v32);
  *a3 = *v27;
  *v27 = 0;
  vp::vx::data_flow::Value::~Value(&v32);
  return vp::vx::data_flow::State<void>::~State(&v30);
}

void sub_2726217F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, char a19)
{
  std::__split_buffer<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::NumberRef>,vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::NumberRef>> &>::~__split_buffer(&a19);
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  vp::vx::data_flow::State<void>::~State(&a12);
  _Unwind_Resume(a1);
}

int *_ZNSt3__116allocator_traitsIN2vp9AllocatorINS1_2vx16DSP_Node_Factory8ListenerIN10applesauce2CF9NumberRefEEEEEE9constructB8ne200100IS9_JRNS3_9data_flow5StateIS8_EEZZZZNS4_8new_nodeENS3_2io5ModelENS2_ISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSM_ENKUlSM_E_clISF_EESP_SM_EUlSM_T0_E_ELi0EEEvRSA_PSM_DpOT0_(uint64_t a1, int *a2, __int128 *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  vp::vx::data_flow::State<void>::State(&v11, a2);
  *a1 = v11;
  v5 = v12;
  *(a1 + 8) = v12;
  v12 = 0uLL;
  *(a1 + 24) = 0;
  if (v5)
  {
    v10 = *a3;
    v6 = *(a3 + 2);
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    v7 = *(a3 + 6);
    operator new();
  }

  result = vp::vx::data_flow::State<void>::~State(&v11);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726219A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::NumberRef>,vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::NumberRef>> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener(i - 32);
  }

  if (*a1)
  {
    std::allocator_traits<vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::NumberRef>>>::deallocate[abi:ne200100](**(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 5);
  }

  return a1;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::NumberRef>::compare_value(uint64_t a1, const __CFNumber **a2, const __CFNumber **a3)
{
  v3 = *a2;
  v4 = *a3;
  if (v3)
  {
    if (v4)
    {
      v5 = CFNumberCompare(v3, v4, 0);
    }

    else
    {
      v5 = kCFCompareGreaterThan;
    }
  }

  else if (v4)
  {
    v5 = kCFCompareLessThan;
  }

  else
  {
    v5 = kCFCompareEqualTo;
  }

  return v5 == kCFCompareEqualTo;
}

CFTypeRef vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::NumberRef>::copy_value(uint64_t a1, void *a2, CFTypeRef *a3)
{
  v4 = *a3;
  if (*a3)
  {
    result = CFRetain(*a3);
  }

  *a2 = v4;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::NumberRef>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t std::__function::__value_func<void ()(unsigned int,applesauce::CF::NumberRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(unsigned int,applesauce::CF::NumberRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<applesauce::CF::NumberRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::NumberRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::NumberRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::NumberRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<applesauce::CF::NumberRef>(void)::s_type_id;
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

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::NumberRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::NumberRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::NumberRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::NumberRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::NumberRef const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::NumberRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::NumberRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::NumberRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::NumberRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6918;
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::NumberRef const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<applesauce::CF::NumberRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::NumberRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::NumberRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::NumberRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6918;
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::NumberRef const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF9NumberRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EEclEOjSS_(uint64_t a1, unsigned int *a2, CFTypeRef *a3)
{
  v29[20] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 8);
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 16);
      if (v10)
      {
        atomic_fetch_add((v7 + 1264), 1u);
        v11 = *(v7 + 8);
        v12 = *(a1 + 32);
        if (v5)
        {
          CFRetain(v5);
        }

        v13 = vp::vx::detail::convert_to_c_str(v11);
        v14 = bswap32(v12);
        *&__s[1] = v14;
        if ((v14 - 32) > 0x5E || ((v14 >> 8) - 32) > 0x5E || ((v14 << 8 >> 24) - 32) > 0x5E || ((v14 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v21, v12);
        }

        else
        {
          strcpy(&__s[5], "'");
          __s[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v21, __s);
        }

        if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v21;
        }

        else
        {
          v15 = v21.__r_.__value_.__r.__words[0];
        }

        if (v5)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](__s);
          applesauce::CF::convert_to<float,0>(v5);
          std::ostream::operator<<();
          std::stringbuf::str[abi:ne200100](v18, &__s[8]);
          *__s = *MEMORY[0x277D82828];
          *&__s[*(*__s - 24)] = *(MEMORY[0x277D82828] + 24);
          *&__s[8] = MEMORY[0x277D82878] + 16;
          if (v28 < 0)
          {
            operator delete(__p);
          }

          *&__s[8] = MEMORY[0x277D82868] + 16;
          std::locale::~locale(&v25);
          std::ostream::~ostream();
          MEMORY[0x2743CBE30](v29);
          vp::vx::detail::strip(&v20, v18);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v20, "null");
        }

        v16 = &v20;
        if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v16 = v20.__r_.__value_.__r.__words[0];
        }

        caulk::make_string("%s parameter %s override is %s", v22, v13, v15, v16);
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }

        if (v5 && v19 < 0)
        {
          operator delete(v18[0]);
        }

        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        *__s = *v22;
        v25.__locale_ = v23;
        v22[1] = 0;
        v23 = 0;
        v22[0] = 0;
        v26 = 1;
        if (HIDWORD(v11))
        {
          (*(*v10 + 32))(v10, v4, __s);
        }

        else
        {
          (*(*v10 + 24))(v10, v4, __s);
        }

        if (v26 == 1 && SHIBYTE(v25.__locale_) < 0)
        {
          operator delete(*__s);
        }

        if ((SHIBYTE(v23) & 0x80000000) == 0)
        {
          if (!v5)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        operator delete(v22[0]);
        if (v5)
        {
LABEL_41:
          CFRelease(v5);
        }
      }

LABEL_42:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2726222D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::NumberRef::~NumberRef(&a14);
  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  applesauce::CF::NumberRef::~NumberRef(&a13);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF9NumberRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF9NumberRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF9NumberRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B6960;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void _ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF9NumberRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EED0Ev(void *a1)
{
  *a1 = &unk_2881B6960;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF9NumberRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EED1Ev(void *a1)
{
  *a1 = &unk_2881B6960;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZZN2vp2vx16DSP_Node_Factory8new_nodeENS9_2io5ModelENS8_9AllocatorISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSH_EUlSH_E_EEJONS0_6__baseILNS0_6_TraitE1EJN10applesauce2CF9NumberRefENS9_9data_flow5StateISS_EEEEEEEEDcSH_DpT0_(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v2 = *a1;
  *a1 = 0;
  *a2 = v2;
}

uint64_t _ZNKSt3__110__function6__funcIZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvEUlT_E_NS_9allocatorISC_EEFN10applesauce2CF9NumberRefEjEE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B68C0;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvEUlRKT_RKT0_E0_NS_9allocatorISH_EEFvRKNS_12basic_stringIcNS_11char_traitsIcEENSI_IcEEEERKN2CA17StreamDescriptionEEEclESQ_SU_(uint64_t a1, const void **a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = &v24;
  std::string::basic_string[abi:ne200100](&v24, v6 + 7);
  if ((v26 & 0x80u) != 0)
  {
    v7 = v24;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, "_OUTPUT");
  if ((v26 & 0x80u) == 0)
  {
    v9 = &v24 + v26;
  }

  else
  {
    v9 = v24 + v25;
  }

  if ((v26 & 0x80u) == 0)
  {
    v10 = &v24;
  }

  else
  {
    v10 = v24;
  }

  while (v10 != v9)
  {
    *v10 = __toupper(*v10);
    ++v10;
  }

  std::to_string(&v23, vcvtad_u64_f64(*a3));
  if ((v26 & 0x80u) == 0)
  {
    v11 = v26;
  }

  else
  {
    v11 = v25;
  }

  v12 = __p;
  std::string::basic_string[abi:ne200100](__p, v11 + 12);
  if (v22 < 0)
  {
    v12 = __p[0];
  }

  if (v11)
  {
    if ((v26 & 0x80u) == 0)
    {
      v13 = &v24;
    }

    else
    {
      v13 = v24;
    }

    memmove(v12, v13, v11);
  }

  strcpy(v12 + v11, "_SAMPLE_RATE");
  v27 = __p;
  v14 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v5, __p);
  v15 = v14;
  if (*(v14 + 63) < 0)
  {
    operator delete(v14[5]);
  }

  *(v15 + 5) = v23;
  *(&v23.__r_.__value_.__s + 23) = 0;
  v23.__r_.__value_.__s.__data_[0] = 0;
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  std::to_string(&v23, *(a3 + 28));
  if ((v26 & 0x80u) == 0)
  {
    v16 = v26;
  }

  else
  {
    v16 = v25;
  }

  v17 = __p;
  std::string::basic_string[abi:ne200100](__p, v16 + 14);
  if (v22 < 0)
  {
    v17 = __p[0];
  }

  if (v16)
  {
    if ((v26 & 0x80u) == 0)
    {
      v18 = &v24;
    }

    else
    {
      v18 = v24;
    }

    memmove(v17, v18, v16);
  }

  strcpy(v17 + v16, "_CHANNEL_COUNT");
  v27 = __p;
  v19 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v5, __p);
  v20 = v19;
  if (*(v19 + 63) < 0)
  {
    operator delete(v19[5]);
  }

  *(v20 + 5) = v23;
  *(&v23.__r_.__value_.__s + 23) = 0;
  v23.__r_.__value_.__s.__data_[0] = 0;
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  if (v26 < 0)
  {
    operator delete(v24);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvEUlRKT_RKT0_E0_NS_9allocatorISH_EEFvRKNS_12basic_stringIcNS_11char_traitsIcEENSI_IcEEEERKN2CA17StreamDescriptionEEE7__cloneEPNS0_6__baseISV_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B6878;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvEUlRKT_RKT0_E_NS_9allocatorISH_EEFvRKNS_12basic_stringIcNS_11char_traitsIcEENSI_IcEEEERKN2CA17StreamDescriptionEEEclESQ_SU_(uint64_t a1, const void **a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = &v24;
  std::string::basic_string[abi:ne200100](&v24, v6 + 6);
  if ((v26 & 0x80u) != 0)
  {
    v7 = v24;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, "_INPUT");
  if ((v26 & 0x80u) == 0)
  {
    v9 = &v24 + v26;
  }

  else
  {
    v9 = v24 + v25;
  }

  if ((v26 & 0x80u) == 0)
  {
    v10 = &v24;
  }

  else
  {
    v10 = v24;
  }

  while (v10 != v9)
  {
    *v10 = __toupper(*v10);
    ++v10;
  }

  std::to_string(&v23, vcvtad_u64_f64(*a3));
  if ((v26 & 0x80u) == 0)
  {
    v11 = v26;
  }

  else
  {
    v11 = v25;
  }

  v12 = __p;
  std::string::basic_string[abi:ne200100](__p, v11 + 12);
  if (v22 < 0)
  {
    v12 = __p[0];
  }

  if (v11)
  {
    if ((v26 & 0x80u) == 0)
    {
      v13 = &v24;
    }

    else
    {
      v13 = v24;
    }

    memmove(v12, v13, v11);
  }

  strcpy(v12 + v11, "_SAMPLE_RATE");
  v27 = __p;
  v14 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v5, __p);
  v15 = v14;
  if (*(v14 + 63) < 0)
  {
    operator delete(v14[5]);
  }

  *(v15 + 5) = v23;
  *(&v23.__r_.__value_.__s + 23) = 0;
  v23.__r_.__value_.__s.__data_[0] = 0;
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  std::to_string(&v23, *(a3 + 28));
  if ((v26 & 0x80u) == 0)
  {
    v16 = v26;
  }

  else
  {
    v16 = v25;
  }

  v17 = __p;
  std::string::basic_string[abi:ne200100](__p, v16 + 14);
  if (v22 < 0)
  {
    v17 = __p[0];
  }

  if (v16)
  {
    if ((v26 & 0x80u) == 0)
    {
      v18 = &v24;
    }

    else
    {
      v18 = v24;
    }

    memmove(v17, v18, v16);
  }

  strcpy(v17 + v16, "_CHANNEL_COUNT");
  v27 = __p;
  v19 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v5, __p);
  v20 = v19;
  if (*(v19 + 63) < 0)
  {
    operator delete(v19[5]);
  }

  *(v20 + 5) = v23;
  *(&v23.__r_.__value_.__s + 23) = 0;
  v23.__r_.__value_.__s.__data_[0] = 0;
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  if (v26 < 0)
  {
    operator delete(v24);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvEUlRKT_RKT0_E_NS_9allocatorISH_EEFvRKNS_12basic_stringIcNS_11char_traitsIcEENSI_IcEEEERKN2CA17StreamDescriptionEEE7__cloneEPNS0_6__baseISV_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B6830;
  a2[1] = v2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<BOOL vp::vx::detail::get_value<BOOL>(std::variant<BOOL,vp::vx::data_flow::State<BOOL>> const&)::{lambda(BOOL const&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,BOOL,vp::vx::data_flow::State<BOOL>> const&>(std::pmr *a1, int *a2)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = std::pmr::get_default_resource(a1);
  vp::vx::data_flow::State<void>::get_value(a2, v5);
  v3 = *vp::vx::data_flow::Value::view_storage(v5);
  vp::vx::data_flow::Value::~Value(v5);
  return v3;
}

void sub_272622D34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::data_flow::Value::~Value(va);
  _Unwind_Resume(a1);
}

void vp::vx::DSP_Node_Factory::get_configuration(void)const::$_0::operator()<std::__fs::filesystem::path>(const vp::vx::DSP_Node_Factory *a1, uint64_t a2, const std::string::value_type **a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 1);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a3, a3[1]);
  }

  else
  {
    v22 = *a3;
  }

  v7 = (*(*a2 + 32))(&v23, a2, v6, &v22);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  log = vp::get_log(v7);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::vx::get_log_context_info(__p, a1);
    v10 = v21;
    v11 = v21;
    v12 = __p[1];
    v13 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      if (v11 >= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      v15 = __p[0];
      if (v11 >= 0)
      {
        v15 = __p;
      }

      if (v14)
      {
        v16 = " ";
      }

      else
      {
        v16 = "";
      }

      v17 = *a3;
      if (*(a3 + 23) >= 0)
      {
        v17 = a3;
      }

      *buf = 136315906;
      v18 = &v23;
      if (SHIBYTE(v24) < 0)
      {
        v18 = v23;
      }

      v26 = v15;
      v27 = 2080;
      v28 = v16;
      v29 = 2080;
      v30 = v17;
      v31 = 2080;
      v32 = v18;
      _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_INFO, "%s%sadjust %s to %s", buf, 0x2Au);
      LOBYTE(v11) = v21;
    }

    if ((v11 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v23;
  a3[2] = v24;
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration>::compare_value(uint64_t a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *a2.__data_;
  v3 = *a2.__size_;
  v4 = *a2.__data_;
  a2.__data_ = *a2.__size_;
  result = std::__fs::filesystem::operator==[abi:ne200100](v4, a2);
  if (!result)
  {
    return result;
  }

  if (*(v2 + 48) != *(v3 + 48))
  {
    return 0;
  }

  v7 = (v2 + 40);
  while (1)
  {
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    v8 = std::__string_hash<char>::operator()[abi:ne200100]((v7 + 2));
    v9 = *(v3 + 32);
    if (!*&v9)
    {
      return 0;
    }

    v10 = v8;
    v11 = vcnt_s8(v9);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = v8;
      if (v8 >= *&v9)
      {
        v13 = v8 % *&v9;
      }
    }

    else
    {
      v13 = (*&v9 - 1) & v8;
    }

    v14 = *(*(v3 + 24) + 8 * v13);
    if (!v14)
    {
      return 0;
    }

    v15 = *v14;
    if (!*v14)
    {
      return 0;
    }

    while (1)
    {
      v16 = v15[1];
      if (v10 == v16)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v9)
        {
          v16 %= *&v9;
        }
      }

      else
      {
        v16 &= *&v9 - 1;
      }

      if (v16 != v13)
      {
        return 0;
      }

LABEL_20:
      v15 = *v15;
      if (!v15)
      {
        return 0;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v15 + 2, v7 + 2))
    {
      goto LABEL_20;
    }

    v17 = *(v7 + 39);
    if (v17 >= 0)
    {
      v18 = *(v7 + 39);
    }

    else
    {
      v18 = v7[3];
    }

    v19 = *(v15 + 39);
    v20 = v19;
    if (v19 < 0)
    {
      v19 = v15[3];
    }

    if (v18 != v19)
    {
      return 0;
    }

    v21 = v17 >= 0 ? (v7 + 2) : v7[2];
    v22 = v20 >= 0 ? (v15 + 2) : v15[2];
    if (memcmp(v21, v22, v18))
    {
      return 0;
    }

    v23 = *(v7 + 63);
    if (v23 >= 0)
    {
      v24 = *(v7 + 63);
    }

    else
    {
      v24 = v7[6];
    }

    v25 = *(v15 + 63);
    v26 = v25;
    if (v25 < 0)
    {
      v25 = v15[6];
    }

    if (v24 != v25)
    {
      return 0;
    }

    if (v23 >= 0)
    {
      v27 = (v7 + 5);
    }

    else
    {
      v27 = v7[5];
    }

    v30 = v15[5];
    v29 = v15 + 5;
    v28 = v30;
    if (v26 >= 0)
    {
      v31 = v29;
    }

    else
    {
      v31 = v28;
    }

    v32 = memcmp(v27, v31, v24);
    result = 0;
    if (v32)
    {
      return result;
    }
  }

  v33 = *(v2 + 64);
  v34 = *(v2 + 72);
  v35 = *(v3 + 64);
  if (v34 - v33 != *(v3 + 72) - v35)
  {
    return 0;
  }

  while (v33 != v34)
  {
    v6.__data_ = v35;
    result = std::__fs::filesystem::operator==[abi:ne200100](v33, v6);
    if (!result)
    {
      return result;
    }

    ++v33;
    v35 += 24;
  }

  v36 = *(v2 + 88);
  v37 = *(v2 + 96);
  v38 = *(v3 + 88);
  if (v37 - v36 != *(v3 + 96) - v38)
  {
    return 0;
  }

  while (v36 != v37)
  {
    v6.__data_ = v38;
    result = std::__fs::filesystem::operator==[abi:ne200100](v36, v6);
    if (!result)
    {
      return result;
    }

    ++v36;
    v38 += 24;
  }

  v39 = *(v2 + 112);
  v40 = *(v2 + 120);
  v41 = *(v3 + 112);
  if (v40 - v39 != *(v3 + 120) - v41)
  {
    return 0;
  }

  while (v39 != v40)
  {
    v6.__data_ = v41;
    result = std::__fs::filesystem::operator==[abi:ne200100](v39, v6);
    if (!result)
    {
      return result;
    }

    ++v39;
    v41 += 24;
  }

  v43 = *(v2 + 136);
  v42 = *(v2 + 144);
  v44 = *(v3 + 136);
  if (v42 - v43 != *(v3 + 144) - v44)
  {
    return 0;
  }

  while (v43 != v42)
  {
    if (*v43 != *v44 || *(v43 + 4) != *(v44 + 4))
    {
      return 0;
    }

    v43 += 8;
    v44 += 8;
  }

  result = std::operator==[abi:ne200100]<std::tuple<unsigned int,applesauce::CF::DictionaryRef>,std::allocator<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>>(*(v2 + 160), *(v2 + 168), *(v3 + 160), *(v3 + 168));
  if (result)
  {
    return *(v2 + 184) == *(v3 + 184);
  }

  return result;
}

uint64_t std::operator==[abi:ne200100]<std::tuple<unsigned int,applesauce::CF::DictionaryRef>,std::allocator<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 - a1 == a4 - a3)
  {
    v5 = a1;
    if (a1 == a2)
    {
      return 1;
    }

    for (i = a3; *v5 == *i; i += 16)
    {
      v7 = *(v5 + 8);
      v8 = *(i + 8);
      if (v7)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        if (v7 | v8)
        {
          return 0;
        }
      }

      else
      {
        result = CFEqual(v7, v8);
        if (!result)
        {
          return result;
        }
      }

      v5 += 16;
      if (v5 == a2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration>::destroy_value(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = (*a2 + 160);
  std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(v2 + 136);
  if (v3)
  {
    *(v2 + 144) = v3;
    operator delete(v3);
  }

  v5 = (v2 + 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (v2 + 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (v2 + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2 + 24);
  if (*(v2 + 23) < 0)
  {
    v4 = *v2;

    operator delete(v4);
  }
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration>::move_value(uint64_t a1, uint64_t *a2, __int128 **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a3;
  *(v3 + 16) = *(*a3 + 2);
  *v3 = v5;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table(v3 + 24, v4 + 3);
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 64) = v4[4];
  *(v3 + 80) = *(v4 + 10);
  *(v4 + 8) = 0;
  *(v4 + 9) = 0;
  *(v4 + 10) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 88) = *(v4 + 88);
  *(v3 + 104) = *(v4 + 13);
  *(v4 + 11) = 0;
  *(v4 + 12) = 0;
  *(v4 + 13) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 112) = v4[7];
  *(v3 + 128) = *(v4 + 16);
  *(v4 + 14) = 0;
  *(v4 + 15) = 0;
  *(v4 + 16) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 136) = *(v4 + 136);
  *(v3 + 152) = *(v4 + 19);
  *(v4 + 17) = 0;
  *(v4 + 18) = 0;
  *(v4 + 19) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  result = v4[10];
  *(v3 + 160) = result;
  *(v3 + 176) = *(v4 + 22);
  *(v4 + 20) = 0;
  *(v4 + 21) = 0;
  *(v4 + 22) = 0;
  *(v3 + 184) = *(v4 + 184);
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 192, 8);
  *a2 = result;
  return result;
}

const char *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<vp::vx::detail::convert_to_c_str(std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID> &>(uint64_t a1, _DWORD *a2)
{
  v2 = *a2 - 1;
  if (v2 > 2)
  {
    return "voice mix";
  }

  else
  {
    return off_279E4A458[v2];
  }
}

const char *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<vp::vx::detail::convert_to_c_str(std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID> &>(uint64_t a1, _DWORD *a2)
{
  v2 = "hardware";
  if (*a2 == 1)
  {
    v2 = "echo";
  }

  if (*a2 == 2)
  {
    return "content";
  }

  else
  {
    return v2;
  }
}

void sub_272623968(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void vp::vx::DSP_Node_Factory::set_configuration(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v4 = (v2 + 16);
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v1))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v1))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_272623B80(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::operator()(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      if (*(a1 + 8))
      {
        vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1} const&,vp::vx::DSP_Node_Configuration const&>(&__p, a1 + 24);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1} const&,vp::vx::DSP_Node_Configuration const&>(uint64_t a1, uint64_t a2)
{
  atomic_fetch_add((*(a2 + 8) + 1264), 1u);
  v3[0] = 0;
  v4 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v3);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v3);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::__fs::filesystem::path const&,std::__fs::filesystem::path,0>(v2);
}

void sub_272623F28(void *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json((v2 - 64));
  __cxa_begin_catch(a1);
  *v1 = 0;
  v1[24] = 0;
  __cxa_end_catch();
  JUMPOUT(0x272623F10);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::__fs::filesystem::path const&,std::__fs::filesystem::path,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<std::__fs::filesystem::path const*,std::__fs::filesystem::path const*,std::back_insert_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::__fs::filesystem::path const&,std::__fs::filesystem::path,0>(v2);
  }

  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6B40;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6B40;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6B40;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>::register_listener(std::function<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>::register_listener(std::function<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration>(void)::s_type_id;
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

void std::__function::__func<vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>::register_listener(std::function<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>::register_listener(std::function<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>::register_listener(std::function<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>::register_listener(std::function<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6AB0;
  std::__function::__value_func<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>::register_listener(std::function<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>::register_listener(std::function<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6AB0;
  std::__function::__value_func<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::operator()(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      if (*(a1 + 8))
      {
        vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1} const&,vp::vx::DSP_Node_Configuration const&>(&__p, a1 + 24);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6AF8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6AF8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6AF8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_block_size(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v4 = (v2 + 16);
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v1))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v1))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_27262497C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,unsigned int const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(unsigned int,unsigned int const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
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
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string("%s I/O block size is %u", &v16, v11, v10);
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

void sub_272624B98(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272624B2CLL);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6BD0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6BD0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6BD0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int,unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int,unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
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

void std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int,unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int,unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,unsigned int const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int,unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int,unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9408;
  std::__function::__value_func<void ()(unsigned int,unsigned int const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int,unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int,unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9408;
  std::__function::__value_func<void ()(unsigned int,unsigned int const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
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
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string("%s I/O block size is %u", &v16, v11, v10);
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

void sub_272625120(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726250B4);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6B88;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6B88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6B88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_block_size_is_fixed(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v4 = (v2 + 16);
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v1))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v1))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_2726254D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,vp::vx::data_flow::State<BOOL>>>::__assign_alt[abi:ne200100]<1ul,vp::vx::data_flow::State<BOOL>,vp::vx::data_flow::State<BOOL>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) == 1)
  {
    vp::vx::data_flow::State<void>::~State(a2);
    *a2 = *a3;
    result = *(a3 + 8);
    *(a2 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,vp::vx::data_flow::State<BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = *a3;
    result = *(a3 + 8);
    *(a1 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(void *a1, unsigned int *a2, unsigned __int8 *a3)
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
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        v12 = "variable";
        if (v10)
        {
          v12 = "fixed";
        }

        caulk::make_string("%s I/O block size is %s", &v17, v11, v12);
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

void sub_272625688(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262561CLL);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6C70;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6C70;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6C70;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(void *a1, unsigned int *a2, unsigned __int8 *a3)
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
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        v12 = "variable";
        if (v10)
        {
          v12 = "fixed";
        }

        caulk::make_string("%s I/O block size is %s", &v17, v11, v12);
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

void sub_272625970(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272625904);
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6C28;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6C28;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6C28;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_fft_block_size(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v4 = (v2 + 16);
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v1))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v1))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_272625D34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
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
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string("%s FFT block size is %u", &v16, v11, v10);
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

void sub_272625E50(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272625DE4);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6D00;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6D00;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6D00;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
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
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string("%s FFT block size is %u", &v16, v11, v10);
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

void sub_272626120(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726260B4);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6CB8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6CB8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6CB8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_sample_rate(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v4 = (v2 + 16);
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v1))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v1))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_2726264E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,double const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(unsigned int,double const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::operator()(void *a1, unsigned int *a2, uint64_t *a3)
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
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string("%s I/O sample rate is %f", &v16, v11, v10);
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

void sub_27262670C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262669CLL);
}

void std::__function::__func<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6DD8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6DD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6DD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(unsigned int,double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(unsigned int,double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
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

void std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(unsigned int,double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(unsigned int,double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,double const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(unsigned int,double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(unsigned int,double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6D48;
  std::__function::__value_func<void ()(unsigned int,double const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(unsigned int,double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(unsigned int,double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6D48;
  std::__function::__value_func<void ()(unsigned int,double const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::operator()(void *a1, unsigned int *a2, uint64_t *a3)
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
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string("%s I/O sample rate is %f", &v16, v11, v10);
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

void sub_272626CA0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272626C30);
}

void std::__function::__func<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6D90;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6D90;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6D90;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_input_format(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  v3 = a1[1];
  v7 = v3;
  v5 = a1[4];
  v4 = a1[5];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = v6;
  }

  v9 = v3;
  v10 = a1;
  if (!HIDWORD(v3))
  {
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
    }

    else
    {
      v11 = v8;
    }

    v12 = v3;
    v13 = a1;
    v14 = v5;
    v15 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v11;
    }

    v17 = v3;
    v18 = a1;
    operator new();
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = v8;
  }

  v12 = v3;
  v13 = a1;
  v14 = v5;
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  v17 = v3;
  v18 = a1;
  operator new();
}

void sub_27262723C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    v4 = v2[2];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(unsigned int,CA::StreamDescription const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(unsigned int,CA::StreamDescription const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::small_vector<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,8ul,vp::Allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>,void>>::insert_or_assign<std::string const&,vp::vx::data_flow::State<CA::StreamDescription>>(uint64_t a1, uint64_t a2, void *a3, __int128 *a4, uint64_t a5)
{
  v34 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0;
  v32 = 0;
  v9 = *(a2 + 8);
  if (a3)
  {
    v10 = *(a2 + 16);
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 == 0;
    }

    if (!v11)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v13 = &v9[6 * v10];
    if (v13 != a3 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, a3) & 0x80) == 0)
    {
      v33.__r_.__value_.__r.__words[0] = v13;
      v14 = a3;
      goto LABEL_21;
    }

    v32 = a3;
    if (v9 == a3 || (v15 = (a3 - 6), (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, a4) & 0x80) != 0))
    {
      *(a1 + 8) = 1;
      goto LABEL_25;
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, v15) & 0x80) == 0)
    {
      v32 = v15;
      *(a1 + 8) = 0;
LABEL_22:
      v19 = *(a2 + 8);
      v20 = v32 - v19;
      if (*(a2 + 16) < 0xAAAAAAAAAAAAAAABLL * ((v32 - v19) >> 4))
      {
        __assert_rtn("nth", "vector.hpp", 1688, "this->m_holder.m_size >= n");
      }

      v21 = v32;
      *a1 = v32;
      vp::vx::data_flow::State<void>::~State(&v20[v19 + 24]);
      *(v21 + 6) = *a5;
      v21[2] = *(a5 + 8);
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
LABEL_37:
      v29 = *MEMORY[0x277D85DE8];
      return;
    }

    v33.__r_.__value_.__r.__words[0] = v15;
  }

  else
  {
    v16 = *(a2 + 16);
    if (v9)
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

    v33.__r_.__value_.__r.__words[0] = &v9[6 * v16];
  }

  v14 = v9;
LABEL_21:
  inserted = boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::small_vector<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,8ul,vp::Allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>,void>>::priv_insert_unique_prepare(v14, &v33, a4, &v32);
  *(a1 + 8) = inserted;
  if (!inserted)
  {
    goto LABEL_22;
  }

LABEL_25:
  v22 = v32;
  v23 = *(a2 + 8);
  if (v23 > v32)
  {
    goto LABEL_39;
  }

  v24 = *(a2 + 16);
  if (!v23 && v24)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v25 = v23 + 48 * v24;
  if (v32 > v25)
  {
LABEL_39:
    __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
  }

  v26 = *(a2 + 24);
  if (v26 < v24)
  {
    __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
  }

  if (v26 != v24)
  {
    if (v25 == v32)
    {
      boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>::pair<std::string const&,vp::vx::data_flow::State<CA::StreamDescription>>(v25, a4, a5);
      ++*(a2 + 16);
    }

    else
    {
      v27 = v25 - 48;
      *v25 = *(v25 - 48);
      *(v25 + 16) = *(v25 - 32);
      *(v25 - 40) = 0;
      *(v25 - 32) = 0;
      *(v25 - 48) = 0;
      *(v25 + 24) = *(v25 - 24);
      *(v25 + 32) = *(v25 - 16);
      *(v25 - 16) = 0;
      *(v25 - 8) = 0;
      ++*(a2 + 16);
      if (v25 - 48 != v22)
      {
        do
        {
          v28 = v27 - 48;
          boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>::operator=(v27, (v27 - 48));
          v27 = v28;
        }

        while (v28 != v22);
      }

      boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>::pair<std::string const&,vp::vx::data_flow::State<CA::StreamDescription>>(&v33, a4, a5);
      boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>::operator=(v22, &v33);
      std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>(&v33);
    }

    *a1 = v22;
    goto LABEL_37;
  }

  v30 = *MEMORY[0x277D85DE8];
  v31 = v32;

  boost::container::vector<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>,boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>*,std::string const&,vp::vx::data_flow::State<CA::StreamDescription>>>(a1, a2, v31, a5, a4);
}

void sub_272627748(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::small_vector<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,8ul,vp::Allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>,void>>::priv_insert_unique_prepare(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  if (*a2 != a1)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((*a2 - a1) >> 4);
    do
    {
      if (v8 != 1 && !v7)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v7)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v7[6 * (v8 >> 1)], a3) & 0x80u) == 0)
      {
        v8 >>= 1;
      }

      else
      {
        v7 += 6 * (v8 >> 1) + 6;
        v8 += ~(v8 >> 1);
      }
    }

    while (v8);
  }

  *a4 = v7;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v7) & 0x80u) != 0;
}

std::string *boost::container::vector<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>,boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>*,std::string const&,vp::vx::data_flow::State<CA::StreamDescription>>>(void *a1, char *a2, __int128 *a3, uint64_t a4, __int128 *a5)
{
  v5 = *(a2 + 3);
  if (v5 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v5 == 0x555555555555555)
  {
    goto LABEL_27;
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
LABEL_27:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *(a2 + 1);
  v15 = (*(**a2 + 16))(*a2, 48 * v9, 8);
  v16 = v15;
  v18 = *(a2 + 1);
  v17 = *(a2 + 2);
  v19 = v15;
  if (v18 != a3)
  {
    v20 = *(a2 + 1);
    v19 = v15;
    do
    {
      v21 = *v20;
      *(v19 + 16) = *(v20 + 2);
      *v19 = v21;
      *(v20 + 1) = 0;
      *(v20 + 2) = 0;
      *v20 = 0;
      *(v19 + 24) = *(v20 + 6);
      *(v19 + 32) = v20[2];
      *(v20 + 4) = 0;
      *(v20 + 5) = 0;
      v20 += 3;
      v19 += 48;
    }

    while (v20 != a3);
  }

  result = boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>::pair<std::string const&,vp::vx::data_flow::State<CA::StreamDescription>>(v19, a5, a4);
  v23 = v18 + 48 * v17;
  if (v23 != a3)
  {
    v24 = (v19 + 80);
    v25 = a3;
    do
    {
      v26 = *v25;
      *(v24 - 2) = *(v25 + 2);
      *(v24 - 2) = v26;
      *(v25 + 1) = 0;
      *(v25 + 2) = 0;
      *v25 = 0;
      *(v24 - 2) = *(v25 + 6);
      *v24 = v25[2];
      v24 += 3;
      *(v25 + 4) = 0;
      *(v25 + 5) = 0;
      v25 += 3;
    }

    while (v25 != v23);
  }

  if (v18)
  {
    for (i = *(a2 + 2); i; v18 += 48)
    {
      --i;
      std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>(v18);
    }

    v28 = *(a2 + 3);
    result = boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 1));
  }

  v29 = *(a2 + 2) + 1;
  *(a2 + 1) = v16;
  *(a2 + 2) = v29;
  *(a2 + 3) = v9;
  *a1 = a3 + v16 - v14;
  return result;
}

std::string *boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>::pair<std::string const&,vp::vx::data_flow::State<CA::StreamDescription>>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = *a3;
  *&this[1].__r_.__value_.__r.__words[1] = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return this;
}

uint64_t boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  vp::vx::data_flow::State<void>::~State((a1 + 24));
  *(a1 + 24) = *(a2 + 6);
  *(a1 + 32) = a2[2];
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  return a1;
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(void *a1, unsigned int *a2, void *a3)
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
        vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1} const&,CA::StreamDescription const&>(__p, a1 + 3, a3);
        (*(*v9 + 32))(v9, v6, __p);
        if (v12 == 1 && v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1} const&,CA::StreamDescription const&>(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = a2;
  atomic_fetch_add((a2[4] + 1264), 1u);
  v6 = vp::vx::detail::convert_to_c_str(a2[3]);
  if (*(v4 + 23) < 0)
  {
    v4 = *v4;
  }

  CA::StreamDescription::AsString(__p, a3, v7, v8);
  if (v16 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  caulk::make_string("%s input '%s' format is %s", &v12, v6, v4, v9);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = v14;
  v11 = *v13;
  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 15) = *&v13[7];
  *(a1 + 23) = v10;
  *(a1 + 24) = 1;
}

void sub_272627D80(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  v1[24] = 0;
  __cxa_end_catch();
  JUMPOUT(0x272627D68);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(uint64_t a1, std::string *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  a2->__r_.__value_.__r.__words[0] = &unk_2881B6E68;
  a2->__r_.__value_.__l.__size_ = v5;
  a2->__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2 + 1, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v6 = *(a1 + 24);
    a2[1].__r_.__value_.__r.__words[2] = *(a1 + 40);
    *&a2[1].__r_.__value_.__l.__data_ = v6;
  }

  a2[2].__r_.__value_.__r.__words[0] = *(a1 + 48);
  a2[2].__r_.__value_.__l.__size_ = *(a1 + 56);
}

void sub_272627E6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_272627F28(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2881B6E68;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2881B6E68;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(unsigned int,CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(unsigned int,CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
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

void std::__function::__func<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(unsigned int,CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(unsigned int,CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,CA::StreamDescription const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(unsigned int,CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(unsigned int,CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8F98;
  std::__function::__value_func<void ()(unsigned int,CA::StreamDescription const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(unsigned int,CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(unsigned int,CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8F98;
  std::__function::__value_func<void ()(unsigned int,CA::StreamDescription const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(void *a1, unsigned int *a2, void *a3)
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
        vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1} const&,CA::StreamDescription const&>(__p, a1 + 3, a3);
        (*(*v9 + 24))(v9, v6, __p);
        if (v12 == 1 && v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(uint64_t a1, std::string *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  a2->__r_.__value_.__r.__words[0] = &unk_2881B6E20;
  a2->__r_.__value_.__l.__size_ = v5;
  a2->__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2 + 1, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v6 = *(a1 + 24);
    a2[1].__r_.__value_.__r.__words[2] = *(a1 + 40);
    *&a2[1].__r_.__value_.__l.__data_ = v6;
  }

  a2[2].__r_.__value_.__r.__words[0] = *(a1 + 48);
  a2[2].__r_.__value_.__l.__size_ = *(a1 + 56);
}

void sub_2726284C0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_27262857C(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2881B6E20;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2881B6E20;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_output_format(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  v3 = a1[1];
  v7 = v3;
  v5 = a1[4];
  v4 = a1[5];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = v6;
  }

  v9 = v3;
  v10 = a1;
  if (!HIDWORD(v3))
  {
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
    }

    else
    {
      v11 = v8;
    }

    v12 = v3;
    v13 = a1;
    v14 = v5;
    v15 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v11;
    }

    v17 = v3;
    v18 = a1;
    operator new();
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = v8;
  }

  v12 = v3;
  v13 = a1;
  v14 = v5;
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  v17 = v3;
  v18 = a1;
  operator new();
}

void sub_272628A3C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    v4 = v2[2];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(void *a1, unsigned int *a2, void *a3)
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
        vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1} const&,CA::StreamDescription const&>(__p, a1 + 3, a3);
        (*(*v9 + 32))(v9, v6, __p);
        if (v12 == 1 && v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1} const&,CA::StreamDescription const&>(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = a2;
  atomic_fetch_add((a2[4] + 1264), 1u);
  v6 = vp::vx::detail::convert_to_c_str(a2[3]);
  if (*(v4 + 23) < 0)
  {
    v4 = *v4;
  }

  CA::StreamDescription::AsString(__p, a3, v7, v8);
  if (v16 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  caulk::make_string("%s output '%s' format is %s", &v12, v6, v4, v9);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = v14;
  v11 = *v13;
  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 15) = *&v13[7];
  *(a1 + 23) = v10;
  *(a1 + 24) = 1;
}

void sub_272628C24(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  v1[24] = 0;
  __cxa_end_catch();
  JUMPOUT(0x272628C0CLL);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(uint64_t a1, std::string *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  a2->__r_.__value_.__r.__words[0] = &unk_2881B6EF8;
  a2->__r_.__value_.__l.__size_ = v5;
  a2->__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2 + 1, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v6 = *(a1 + 24);
    a2[1].__r_.__value_.__r.__words[2] = *(a1 + 40);
    *&a2[1].__r_.__value_.__l.__data_ = v6;
  }

  a2[2].__r_.__value_.__r.__words[0] = *(a1 + 48);
  a2[2].__r_.__value_.__l.__size_ = *(a1 + 56);
}

void sub_272628D10(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_272628DCC(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2881B6EF8;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2881B6EF8;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(void *a1, unsigned int *a2, void *a3)
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
        vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1} const&,CA::StreamDescription const&>(__p, a1 + 3, a3);
        (*(*v9 + 24))(v9, v6, __p);
        if (v12 == 1 && v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(uint64_t a1, std::string *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  a2->__r_.__value_.__r.__words[0] = &unk_2881B6EB0;
  a2->__r_.__value_.__l.__size_ = v5;
  a2->__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2 + 1, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v6 = *(a1 + 24);
    a2[1].__r_.__value_.__r.__words[2] = *(a1 + 40);
    *&a2[1].__r_.__value_.__l.__data_ = v6;
  }

  a2[2].__r_.__value_.__r.__words[0] = *(a1 + 48);
  a2[2].__r_.__value_.__l.__size_ = *(a1 + 56);
}

void sub_272629058(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_272629114(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2881B6EB0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2881B6EB0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v4 = (v2 + 16);
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v1))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v1))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_272629400(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(void *a1, unsigned int *a2, unsigned __int8 *a3)
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
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        v12 = "disabled";
        if (v10)
        {
          v12 = "enabled";
        }

        caulk::make_string("%s audio recorders are %s", &v17, v11, v12);
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

void sub_272629534(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726294C8);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6F88;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6F88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6F88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(void *a1, unsigned int *a2, unsigned __int8 *a3)
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
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        v12 = "disabled";
        if (v10)
        {
          v12 = "enabled";
        }

        caulk::make_string("%s audio recorders are %s", &v17, v11, v12);
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

void sub_27262981C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726297B0);
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6F40;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6F40;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6F40;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v4 = (v2 + 16);
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
    v5 = a1[1];
    if (!HIDWORD(v1))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v1))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_272629BE4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,applesauce::CF::StringRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(unsigned int,applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::operator()(void *a1, unsigned int *a2, const __CFString **a3)
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
        vp::utility::exception_filter_all_noexcept<vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0 const&,applesauce::CF::StringRef const&>(__p, a1 + 3, *a3);
        (*(*v9 + 32))(v9, v6, __p);
        if (v12 == 1 && v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void vp::utility::exception_filter_all_noexcept<vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0 const&,applesauce::CF::StringRef const&>(uint64_t a1, unint64_t *a2, const __CFString *cf)
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = vp::vx::detail::convert_to_c_str(*a2);
  v7 = v6;
  if (cf)
  {
    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v16 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    caulk::make_string("%s audio recorders predicate is '%s'", &v13, v7, v8, cf);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    caulk::make_string("%s audio recorders predicate is undefined", &v13, v6);
  }

  v9 = v13;
  v17[0] = v14;
  *(v17 + 7) = *(&v14 + 7);
  v10 = HIBYTE(v14);
  v14 = 0uLL;
  v13 = 0;
  v11 = v17[0];
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 15) = *(v17 + 7);
  *(a1 + 23) = v10;
  v17[0] = 0;
  *(v17 + 7) = 0;
  *(a1 + 24) = 1;
  if (cf)
  {
    CFRelease(cf);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_272629EF0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_272629F0C(void *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a2)
  {
    applesauce::CF::StringRef::~StringRef(va);
    __cxa_begin_catch(a1);
    *v4 = 0;
    v4[24] = 0;
    __cxa_end_catch();
    JUMPOUT(0x272629EC0);
  }

  JUMPOUT(0x272629EFCLL);
}

void std::__function::__func<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881B7060;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7060;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7060;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
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

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6FD0;
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6FD0;
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::operator()(void *a1, unsigned int *a2, const __CFString **a3)
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
        vp::utility::exception_filter_all_noexcept<vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0 const&,applesauce::CF::StringRef const&>(__p, a1 + 3, *a3);
        (*(*v9 + 24))(v9, v6, __p);
        if (v12 == 1 && v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881B7018;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7018;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7018;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v4 = (v2 + 16);
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v1))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v1))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_27262A81C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(void *a1, unsigned int *a2, unsigned __int8 *a3)
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
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        v12 = "disconnected";
        if (v10)
        {
          v12 = "connected";
        }

        caulk::make_string("%s RPB is %s", &v17, v11, v12);
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

void sub_27262A950(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262A8E4);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B70F0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B70F0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B70F0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(void *a1, unsigned int *a2, unsigned __int8 *a3)
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
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        v12 = "disconnected";
        if (v10)
        {
          v12 = "connected";
        }

        caulk::make_string("%s RPB is %s", &v17, v11, v12);
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

void sub_27262AC38(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262ABCCLL);
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B70A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B70A8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B70A8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v4 = (v2 + 16);
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v1))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v1))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_27262AFFC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
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
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string("%s sample rate conversion algorithm is %u", &v16, v11, v10);
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

void sub_27262B118(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262B0ACLL);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B7180;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7180;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7180;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
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
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string("%s sample rate conversion algorithm is %u", &v16, v11, v10);
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

void sub_27262B3E8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262B37CLL);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B7138;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7138;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7138;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v4 = (v2 + 16);
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v1))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v1))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_27262B7B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
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
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string("%s sample rate conversion quality is %u", &v16, v11, v10);
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

void sub_27262B8CC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262B860);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B7210;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7210;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7210;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
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
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string("%s sample rate conversion quality is %u", &v16, v11, v10);
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

void sub_27262BB9C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262BB30);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B71C8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B71C8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B71C8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::components::DSP_Settings::get_dsp_property_override(void *a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a1[2];
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5)) == 0 || (v8 = v7, v9 = a1[1], atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !v9))
  {
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  v10 = a1[4];
  if (!v10 || (v11 = std::__shared_weak_count::lock(v10), (v12 = v11) == 0) || (v13 = a1[3], atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), !v13))
  {
LABEL_15:
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (a2 == 1936745314)
  {
    (*(*v13 + 16))(&v31, v13, 26);
    v15 = v31;
    v22 = v31;
    v23 = v32;
    v32 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v31);
    (*(*v13 + 16))(&v31, v13, 50);
    v16 = v31;
    v20 = v31;
    v21 = v32;
    v32 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v31);
    v31 = &unk_2881B7510;
    LOBYTE(v32) = 0;
    v33 = &v31;
    v29 = v15;
    v30 = v16;
    vp::vx::data_flow::State_Manager::create_state(&v27, (v9 + 48), &v31);
    v17 = v27;
    v24 = v27;
    v19 = v28;
    v28 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v27);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v31);
    LODWORD(v31) = v17;
    v25 = 0;
    v26 = 0;
    vp::vx::data_flow::State<void>::~State(&v24);
    v27 = v17;
    v32 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v31);
    vp::vx::data_flow::State<void>::~State(&v20);
    vp::vx::data_flow::State<void>::~State(&v22);
    *a3 = v17;
    *(a3 + 8) = v19;
    v28 = 0uLL;
    *(a3 + 24) = 2;
    v14 = &v27;
  }

  else
  {
    if (a2 != 1650815344)
    {
      *a3 = 0;
      *(a3 + 24) = 1;
      goto LABEL_13;
    }

    vp::vx::components::DSP_Settings::create_bluetooth_eq_preset_dsp_property_override(&v31, 1, v9, v13);
    *a3 = v31;
    *(a3 + 8) = v32;
    v32 = 0uLL;
    *(a3 + 24) = 2;
    v14 = &v31;
  }

  vp::vx::data_flow::State<void>::~State(v14);
LABEL_13:
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  v18 = *MEMORY[0x277D85DE8];
}

{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a1[2];
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5)) == 0 || (v8 = v7, v9 = a1[1], atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !v9))
  {
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  v10 = a1[4];
  if (!v10 || (v11 = std::__shared_weak_count::lock(v10), (v12 = v11) == 0) || (v13 = a1[3], atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), !v13))
  {
LABEL_18:
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (a2 == 1634165602)
  {
    (*(*v13 + 16))(&v28, v13, 23);
    v15 = v28;
    v20 = v28;
    v21 = v29;
    v29 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v28);
    v16 = &unk_2881B73A8;
    goto LABEL_13;
  }

  if (a2 == 1970172770)
  {
    (*(*v13 + 16))(&v28, v13, 23);
    v15 = v28;
    v20 = v28;
    v21 = v29;
    v29 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v28);
    v16 = &unk_2881B7438;
LABEL_13:
    v28 = v16;
    LOBYTE(v29) = 0;
    v30 = &v28;
    v25 = v15;
    vp::vx::data_flow::State_Manager::create_state(&v26, (v9 + 48), &v28);
    v17 = v26;
    v22 = v26;
    v19 = v27;
    v27 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v26);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v28);
    LODWORD(v28) = v17;
    v23 = 0;
    v24 = 0;
    vp::vx::data_flow::State<void>::~State(&v22);
    v26 = v17;
    v29 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v28);
    vp::vx::data_flow::State<void>::~State(&v20);
    *a3 = v17;
    *(a3 + 8) = v19;
    v27 = 0uLL;
    *(a3 + 24) = 2;
    v14 = &v26;
    goto LABEL_14;
  }

  if (a2 != 1650815344)
  {
    *a3 = 0;
    *(a3 + 24) = 1;
    goto LABEL_16;
  }

  vp::vx::components::DSP_Settings::create_bluetooth_eq_preset_dsp_property_override(&v28, 0, v9, v13);
  *a3 = v28;
  *(a3 + 8) = v29;
  v29 = 0uLL;
  *(a3 + 24) = 2;
  v14 = &v28;
LABEL_14:
  vp::vx::data_flow::State<void>::~State(v14);
LABEL_16:
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  v18 = *MEMORY[0x277D85DE8];
}

void sub_27262C04C(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

int *vp::vx::components::DSP_Settings::create_bluetooth_eq_preset_dsp_property_override(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    (*(*a4 + 16))(&v20, a4, 50);
  }

  else
  {
    (*(*a4 + 16))(&v20, a4, 23);
  }

  v6 = v20;
  v10 = v21;
  v21 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v20);
  v12 = v6;
  v13 = v10;
  v20 = &unk_2881B74C8;
  LOBYTE(v21) = 0;
  v22 = &v20;
  v17 = v6;
  vp::vx::data_flow::State_Manager::create_state(&v18, (a3 + 48), &v20);
  v7 = v18;
  v14 = v18;
  v11 = v19;
  v19 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v18);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v20);
  LODWORD(v20) = v7;
  v15 = 0;
  v16 = 0;
  vp::vx::data_flow::State<void>::~State(&v14);
  *a1 = v7;
  *(a1 + 8) = v11;
  v21 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v20);
  result = vp::vx::data_flow::State<void>::~State(&v12);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings53create_speaker_calibration_data_dsp_property_overrideERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JNS3_16Output_Port_TypeES8_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_S8_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v22 = *MEMORY[0x277D85DE8];
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

  v7 = v3[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id)
  {
    v8 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v8 = 0;
  }

  if (*v6 != 7)
  {
    goto LABEL_22;
  }

  v9 = *v8;
  if (!*v8)
  {
    goto LABEL_22;
  }

  CFRetain(*v8);
  v10 = CFStringCreateWithBytes(0, "speaker calibration", 19, 0x8000100u, 0);
  cf[0] = v10;
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(v9, v10);
  CFRelease(cf[0]);
  if (Value)
  {
    CFRetain(Value);
    v12 = CFGetTypeID(Value);
    if (v12 == CFDataGetTypeID())
    {
      CFRetain(Value);
      v19 = Value;
      CFRelease(Value);
      goto LABEL_15;
    }

    CFRelease(Value);
  }

  Value = 0;
  v19 = 0;
LABEL_15:
  CFRelease(v9);
  if (!Value)
  {
LABEL_22:
    CFDictionaryRef = 0;
    goto LABEL_23;
  }

  applesauce::CF::TypeRef::TypeRef(&v20, "Data");
  CFRetain(Value);
  v21 = Value;
  cf[0] = &v20;
  cf[1] = 1;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(cf);
  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

LABEL_23:
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v14);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = CFDictionaryRef;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27262C42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings53create_speaker_calibration_data_dsp_property_overrideERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JNS3_16Output_Port_TypeES8_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_S8_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B7510;
  *(a2 + 8) = *(result + 8);
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings48create_bluetooth_eq_preset_dsp_property_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JS8_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS8_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, vp::vx::data_flow::Value ***a2, uint64_t *a3)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = *v4;
  if (*v4)
  {
    CFRetain(*v4);
    v6 = v5;
    vp::vx::components::DSP_Settings::parse_bluetooth_eq_preset(v7, &v6);
  }

  v6 = 0;
  vp::vx::components::DSP_Settings::parse_bluetooth_eq_preset(v7, &v6);
}

void sub_27262C6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::components::DSP_Settings::parse_bluetooth_eq_preset(uint64_t a1, const __CFDictionary **a2)
{
  qmemcpy(v42, "xfuaqebnlppa", 12);
  v44[1] = 0;
  v45 = 0;
  v43 = v44;
  v44[0] = 0;
  v3 = CFStringCreateWithBytes(0, "DSP_Settings_EQ_Override", 24, 0x8000100u, 0);
  v4 = v3;
  cf[0] = v3;
  if (v3)
  {
    v5 = v45;
    v45 = v3;
    CFRetain(v3);
    if (v5)
    {
      CFRelease(v5);
    }

    CFRelease(v4);
    v6 = *a2;
    if (v6)
    {
      v7 = CFStringCreateWithBytes(0, "eq", 2, 0x8000100u, 0);
      cf[0] = v7;
      if (!v7)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      Value = CFDictionaryGetValue(v6, v7);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (Value)
      {
        CFRetain(Value);
        theArray = Value;
        v9 = CFGetTypeID(Value);
        if (v9 == CFArrayGetTypeID())
        {
          v10 = theArray;
          v11 = 0;
          v12 = 3000;
          while (CFArrayGetCount(v10) > v11)
          {
            applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(cf, theArray, v11);
            if (!cf[0])
            {
              v33 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v33, "Could not construct");
            }

            v13 = applesauce::CF::details::at_key<__CFString const*>(cf[0], @"AUNBandEQ_FilterType");
            if (v13)
            {
              v14 = applesauce::CF::convert_as<float,0>(v13);
              if (HIDWORD(v14))
              {
                v15 = *&v14;
                if (!cf[0])
                {
                  v36 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v36, "Could not construct");
                }

                v16 = applesauce::CF::details::at_key<__CFString const*>(cf[0], @"AUNBandEQ_FilterFrequency");
                if (v16)
                {
                  v17 = applesauce::CF::convert_as<float,0>(v16);
                  if (HIDWORD(v17))
                  {
                    v18 = *&v17;
                    vp::utility::Audio_Unit_Preset::set_parameter(v42, v12 - 2000, 0.0);
                    vp::utility::Audio_Unit_Preset::set_parameter(v42, v12 - 1000, v15);
                    vp::utility::Audio_Unit_Preset::set_parameter(v42, v12, v18);
                  }
                }
              }
            }

            if (!cf[0])
            {
              v34 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v34, "Could not construct");
            }

            v19 = applesauce::CF::details::at_key<__CFString const*>(cf[0], @"AUNBandEQ_FilterGain");
            if (v19)
            {
              v20 = applesauce::CF::convert_as<float,0>(v19);
              if (HIDWORD(v20))
              {
                vp::utility::Audio_Unit_Preset::set_parameter(v42, v12 + 1000, *&v20);
              }
            }

            if (!cf[0])
            {
              v35 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v35, "Could not construct");
            }

            v21 = applesauce::CF::details::at_key<__CFString const*>(cf[0], @"AUNBandEQ_FilterBandwidth");
            if (v21)
            {
              v22 = applesauce::CF::convert_as<float,0>(v21);
              if (HIDWORD(v22))
              {
                vp::utility::Audio_Unit_Preset::set_parameter(v42, v12 + 2000, *&v22);
              }
            }

            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            v11 = v12 - 2999;
            v10 = theArray;
            ++v12;
          }

          memset(__p, 0, sizeof(__p));
          v23 = v43;
          if (v43 != v44)
          {
            do
            {
              v24 = v23[5];
              if (v24 != v23 + 6)
              {
                do
                {
                  vp::utility::Audio_Unit_Preset_Saver::save<unsigned int>(__p, *(v23 + 8));
                  vp::utility::Audio_Unit_Preset_Saver::save<unsigned int>(__p, *(v24 + 8));
                  vp::utility::Audio_Unit_Preset_Saver::save<unsigned int>(__p, *(v24 + 14));
                  v25 = v24[5];
                  if (v25 != v24 + 6)
                  {
                    do
                    {
                      vp::utility::Audio_Unit_Preset_Saver::save<unsigned int>(__p, *(v25 + 7));
                      LODWORD(cf[0]) = bswap32(*(v25 + 8));
                      std::__copy_impl::operator()[abi:ne200100]<unsigned char const*,unsigned char const*,std::back_insert_iterator<std::vector<unsigned char>>>(cf, cf + 4, __p);
                      v26 = v25[1];
                      if (v26)
                      {
                        do
                        {
                          v27 = v26;
                          v26 = *v26;
                        }

                        while (v26);
                      }

                      else
                      {
                        do
                        {
                          v27 = v25[2];
                          v28 = *v27 == v25;
                          v25 = v27;
                        }

                        while (!v28);
                      }

                      v25 = v27;
                    }

                    while (v27 != v24 + 6);
                  }

                  v29 = v24[1];
                  if (v29)
                  {
                    do
                    {
                      v30 = v29;
                      v29 = *v29;
                    }

                    while (v29);
                  }

                  else
                  {
                    do
                    {
                      v30 = v24[2];
                      v28 = *v30 == v24;
                      v24 = v30;
                    }

                    while (!v28);
                  }

                  v24 = v30;
                }

                while (v30 != v23 + 6);
              }

              v31 = v23[1];
              if (v31)
              {
                do
                {
                  v32 = v31;
                  v31 = *v31;
                }

                while (v31);
              }

              else
              {
                do
                {
                  v32 = v23[2];
                  v28 = *v32 == v23;
                  v23 = v32;
                }

                while (!v28);
              }

              v23 = v32;
            }

            while (v32 != v44);
          }

          v46 = 0;
          v47 = 0uLL;
          cf[4] = &v46;
          std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](1uLL);
        }

        v40 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v40, "Could not construct");
      }

      v38 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v38, "Could not find item");
    }

    else
    {
      v38 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v38, "Could not construct");
    }
  }

  v37 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v37, "Could not construct");
}

void sub_27262D538(void *a1)
{
  vp::utility::Audio_Unit_Preset::~Audio_Unit_Preset(v2);
  __cxa_begin_catch(a1);
  v2[0] = 0;
  v2[8] = 0;
  std::optional<applesauce::CF::DictionaryRef>::~optional(v2);
  __cxa_end_catch();
  JUMPOUT(0x27262D0ACLL);
}

void sub_27262D564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a26);
  applesauce::CF::ArrayRef::~ArrayRef(&a12);
  JUMPOUT(0x27262D5B0);
}

void vp::utility::Audio_Unit_Preset::~Audio_Unit_Preset(vp::utility::Audio_Unit_Preset *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  std::__tree<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,float>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,float>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,float>>>>>::destroy(*(this + 3));
}

uint64_t std::optional<applesauce::CF::DictionaryRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings48create_bluetooth_eq_preset_dsp_property_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JS8_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS8_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B74C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void sub_27262DA04(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings53create_noise_suppression_bypass_dsp_property_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JS8_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS8_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = *v4;
  if (*v4)
  {
    CFRetain(*v4);
  }

  vp::vx::components::parse_as<applesauce::CF::NumberRef,char const(&)[18]>(&v11, v5);
  v6 = v11;
  v12 = v11 == 0;
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int>(&v14, "UInt32", &v12);
  v13[0] = &v14;
  v13[1] = 1;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v13);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v8);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = CFDictionaryRef;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27262DB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::components::parse_as<applesauce::CF::NumberRef,char const(&)[18]>(void *a1, const __CFDictionary *a2)
{
  if (a2)
  {
    v4 = CFStringCreateWithBytes(0, "noise suppression", 17, 0x8000100u, 0);
    cf = v4;
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    Value = CFDictionaryGetValue(a2, v4);
    CFRelease(cf);
    if (Value)
    {
      CFRetain(Value);
      v6 = CFGetTypeID(Value);
      if (v6 == CFNumberGetTypeID())
      {
        CFRetain(Value);
        *a1 = Value;
        CFRelease(Value);
        return;
      }

      CFRelease(Value);
    }
  }

  *a1 = 0;
}

void sub_27262DCC0(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262DC60);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
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

void sub_27262DDB0(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings53create_noise_suppression_bypass_dsp_property_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JS8_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS8_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B7438;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings39create_agc_bypass_dsp_property_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JS8_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS8_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = *v4;
  if (!*v4)
  {
LABEL_17:
    Value = 0;
    goto LABEL_18;
  }

  CFRetain(*v4);
  v6 = CFStringCreateWithBytes(0, "agc", 3, 0x8000100u, 0);
  cf[0] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(v5, v6);
  CFRelease(cf[0]);
  if (!Value)
  {
    goto LABEL_7;
  }

  CFRetain(Value);
  v8 = CFGetTypeID(Value);
  if (v8 != CFNumberGetTypeID())
  {
    CFRelease(Value);
LABEL_7:
    Value = 0;
    v16 = 0;
    goto LABEL_8;
  }

  CFRetain(Value);
  v16 = Value;
  CFRelease(Value);
LABEL_8:
  CFRelease(v5);
  if (!Value)
  {
    goto LABEL_17;
  }

  v9 = applesauce::CF::convert_as<unsigned int,0>(Value);
  if ((v9 & 0x100000000) != 0)
  {
    v15 = v9 == 0;
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int const&>(&v17, "UInt32", &v15);
    cf[0] = &v17;
    cf[1] = 1;
    Value = applesauce::CF::details::make_CFDictionaryRef(cf);
    if (v18)
    {
      CFRelease(v18);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if ((v9 & 0x100000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v10);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = Value;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27262E07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings39create_agc_bypass_dsp_property_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JS8_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS8_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B73A8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void vp::vx::components::DSP_Settings::get_dsp_parameter_override(void *a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_11;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = a1[1];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!v9)
  {
    goto LABEL_11;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  v10 = a1[4];
  if (!v10 || (v11 = std::__shared_weak_count::lock(v10), (v12 = v11) == 0) || (v13 = a1[3], atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), !v13))
  {
    while (1)
    {
      _os_crash();
      __break(1u);
LABEL_11:
      _os_crash();
      __break(1u);
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (a2 == 1684828263)
  {
    vp::vx::components::DSP_Settings::create_post_gain_dsp_parameter_override(&v15, 1, v9, v13);
    *a3 = v15;
    *(a3 + 8) = v16;
    v16 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v15);
    v14 = 2;
  }

  else
  {
    *a3 = 0;
    v14 = 1;
  }

  *(a3 + 24) = v14;
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
}

{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a1[2];
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5)) == 0 || (v8 = v7, v9 = a1[1], atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !v9))
  {
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  v10 = a1[4];
  if (!v10 || (v11 = std::__shared_weak_count::lock(v10), (v12 = v11) == 0) || (v13 = a1[3], atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), !v13))
  {
LABEL_15:
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (a2 == 1970040935)
  {
    vp::vx::components::DSP_Settings::create_post_gain_dsp_parameter_override(&v27, 0, v9, v13);
    *a3 = v27;
    *(a3 + 8) = v28;
    v28 = 0uLL;
    *(a3 + 24) = 2;
    v16 = &v27;
  }

  else
  {
    if (a2 != 1853056098)
    {
      *a3 = 0;
      *(a3 + 24) = 1;
      goto LABEL_13;
    }

    (*(*v13 + 16))(&v27, v13, 23);
    v14 = v27;
    v19 = v27;
    v20 = v28;
    v28 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v27);
    v27 = &unk_2881B73F0;
    LOBYTE(v28) = 0;
    v29 = &v27;
    v24 = v14;
    vp::vx::data_flow::State_Manager::create_state(&v25, (v9 + 48), &v27);
    v15 = v25;
    v21 = v25;
    v18 = v26;
    v26 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v25);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v27);
    LODWORD(v27) = v15;
    v22 = 0;
    v23 = 0;
    vp::vx::data_flow::State<void>::~State(&v21);
    v25 = v15;
    v28 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v27);
    vp::vx::data_flow::State<void>::~State(&v19);
    *a3 = v15;
    *(a3 + 8) = v18;
    v26 = 0uLL;
    *(a3 + 24) = 2;
    v16 = &v25;
  }

  vp::vx::data_flow::State<void>::~State(v16);
LABEL_13:
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  v17 = *MEMORY[0x277D85DE8];
}

void sub_27262E330(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

int *vp::vx::components::DSP_Settings::create_post_gain_dsp_parameter_override(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    (*(*a4 + 16))(&v20, a4, 50);
  }

  else
  {
    (*(*a4 + 16))(&v20, a4, 23);
  }

  v6 = v20;
  v10 = v21;
  v21 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v20);
  v12 = v6;
  v13 = v10;
  v20 = &unk_2881B7480;
  LOBYTE(v21) = 0;
  v22 = &v20;
  v17 = v6;
  vp::vx::data_flow::State_Manager::create_state(&v18, (a3 + 48), &v20);
  v7 = v18;
  v14 = v18;
  v11 = v19;
  v19 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v18);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v20);
  LODWORD(v20) = v7;
  v15 = 0;
  v16 = 0;
  vp::vx::data_flow::State<void>::~State(&v14);
  *a1 = v7;
  *(a1 + 8) = v11;
  v21 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v20);
  result = vp::vx::data_flow::State<void>::~State(&v12);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings39create_post_gain_dsp_parameter_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JNS7_13DictionaryRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = *v4;
  if (*v4)
  {
    CFRetain(*v4);
    v6 = applesauce::CF::details::at_key<char const(&)[5]>(v5, "gain");
    if (v6)
    {
      v7 = v6;
      CFRetain(v6);
      v8 = CFGetTypeID(v7);
      if (v8 == CFNumberGetTypeID())
      {
        CFRetain(v7);
        CFRelease(v7);
LABEL_8:
        CFRelease(v5);
        goto LABEL_9;
      }

      CFRelease(v7);
    }

    v7 = 0;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_9:
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v9);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::NumberRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v7;
  return result;
}

void sub_27262E5E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings39create_post_gain_dsp_parameter_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JNS7_13DictionaryRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B7480;
  *(a2 + 8) = *(result + 8);
  return result;
}

void sub_27262E91C(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings53create_noise_suppression_level_dsp_parameter_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JNS7_13DictionaryRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = *v4;
  if (*v4)
  {
    CFRetain(*v4);
    vp::vx::components::parse_as<applesauce::CF::NumberRef,char const(&)[18]>(&v8, v5);
    CFRelease(v5);
  }

  else
  {
    vp::vx::components::parse_as<applesauce::CF::NumberRef,char const(&)[18]>(&v8, 0);
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::NumberRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v8;
  return result;
}

void sub_27262E9F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings53create_noise_suppression_level_dsp_parameter_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JNS7_13DictionaryRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B73F0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void vp::vx::components::DSP_Settings::configure(std::__shared_weak_count **this)
{
  v26 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::DSP_Settings]", 32);
    v4 = v21;
    v5 = v21;
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
      v23 = v9;
      v24 = 2080;
      v25 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = v21;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = this[2];
  if (!v11 || (v12 = std::__shared_weak_count::lock(v11)) == 0 || (v13 = v12, v14 = this[1], atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed), !v14))
  {
    _os_crash();
    __break(1u);
    goto LABEL_22;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  v15 = this[4];
  if (!v15 || (v16 = std::__shared_weak_count::lock(v15), (v17 = v16) == 0) || (v18 = this[3], atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed), !v18))
  {
LABEL_22:
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  v19 = *MEMORY[0x277D85DE8];
}

void sub_27262EC84(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void vp::vx::components::DSP_Settings::set_state_owner(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::DSP_Settings::set_state_manager(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::DSP_Settings::~DSP_Settings(std::__shared_weak_count **this)
{
  vp::vx::components::DSP_Settings::~DSP_Settings(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v20 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::DSP_Settings]", 32);
    v4 = v15;
    v5 = v15;
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
      v17 = v9;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v15;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = this[4];
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = this[2];
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void *boost::container::vector<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>,vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1] + 8;
    do
    {
      --v2;
      v3 = std::__function::__value_func<void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__value_func[abi:ne200100](v3) + 40;
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

void *boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void *boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = (a1[1] + 8);
    do
    {
      --v2;
      vp::vx::data_flow::Value::~Value(v3);
      v3 = (v4 + 32);
    }

    while (v2);
  }

  v5 = a1[3];
  if (v5)
  {
    (*(**a1 + 24))(*a1, a1[1], 32 * v5, 8);
  }

  return a1;
}

void *boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 8 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void vp::vx::data_flow::Engine::do_with_unique_state_lock_noexcept(std::__shared_mutex_base *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8[0] = a4;
  v8[1] = a1;
  v9 = 1;
  std::__shared_mutex_base::lock(a1);
  a3(v8);
  std::__shared_mutex_base::unlock(a1);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_27262F144(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_27262F15C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int buf)
{
  if (a2)
  {
    std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](&buf);
    v24 = __cxa_begin_catch(a1);
    log = vp::get_log(v24);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(&__p, v22, "vp::vx::data_flow::Engine]", 25);
      v27 = a19;
      v28 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (v27 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x27262F110);
  }

  JUMPOUT(0x27262F14CLL);
}

uint64_t std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock(*a1);
  }

  return a1;
}

double caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::create_state(vp::vx::data_flow::Value &&)::$_0>(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v6 = atomic_fetch_add((v2 + 312), 1u) + 1;
  v7 = &v6;
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2 + 328, v6, &v7);
  vp::vx::data_flow::Value::~Value((v4 + 136));
  vp::vx::data_flow::Value::Value((v4 + 136), v3, *v3);
  *&result = 1;
  *(v4 + 128) = 1;
  **v1 = v6;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2, _DWORD **a3)
{
  v6 = a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = a2;
      if (v7 <= a2)
      {
        v3 = a2 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & a2;
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = *(i + 8);
        if (v11 == a2)
        {
          if (*(i + 64) == a2)
          {
            return i;
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
          {
            if (v11 >= v7)
            {
              v11 %= v7;
            }
          }

          else
          {
            v11 &= v7 - 1;
          }

          if (v11 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = (*(**(a1 + 32) + 16))(*(a1 + 32), 320, 64);
  *i = 0;
  *(i + 8) = v6;
  *(i + 64) = **a3;
  *(i + 128) = 0u;
  *(i + 144) = 0u;
  *(i + 160) = 0u;
  *(i + 176) = 0u;
  *(i + 192) = 0u;
  *(i + 208) = 0u;
  *(i + 240) = 0u;
  *(i + 256) = 0u;
  *(i + 272) = 0u;
  *(i + 288) = 0u;
  *(i + 304) = 0u;
  *(i + 224) = 0u;
  default_resource = std::pmr::get_default_resource(i);
  *(i + 144) = 0;
  *(i + 152) = 0;
  *(i + 136) = default_resource;
  *(i + 184) = 0;
  v13 = std::pmr::get_default_resource(default_resource);
  *(i + 192) = v13;
  *(i + 200) = i + 224;
  *(i + 208) = xmmword_272756680;
  v14 = std::pmr::get_default_resource(v13);
  *(i + 240) = v14;
  *(i + 248) = i + 272;
  *(i + 256) = xmmword_272756680;
  *(i + 288) = std::pmr::get_default_resource(v14);
  *(i + 296) = 0;
  *(i + 304) = 0;
  *(i + 312) = 0;
  v15 = (*(a1 + 40) + 1);
  v16 = *(a1 + 48);
  if (!v7 || (v16 * v7) < v15)
  {
    v17 = v7 < 3 || (v7 & (v7 - 1)) != 0;
    v18 = v17 | (2 * v7);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      prime = v19;
    }

    else
    {
      prime = v18;
    }

    if (*&prime == 1)
    {
      prime = 2;
    }

    else if ((*&prime & (*&prime - 1)) != 0)
    {
      prime = std::__next_prime(*&prime);
    }

    v21 = *(a1 + 8);
    if (*&prime > *&v21)
    {
LABEL_31:
      if (*&prime >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v22 = (*(**(a1 + 16) + 16))(*(a1 + 16), 8 * *&prime, 8);
      v23 = *a1;
      *a1 = v22;
      if (v23)
      {
        std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,void *> *> *>>::deallocate[abi:ne200100](*(a1 + 16), v23, *(a1 + 8));
      }

      v24 = 0;
      *(a1 + 8) = prime;
      do
      {
        *(*a1 + 8 * v24++) = 0;
      }

      while (*&prime != v24);
      v25 = *(a1 + 24);
      if (v25)
      {
        v26 = v25[1];
        v27 = vcnt_s8(prime);
        v27.i16[0] = vaddlv_u8(v27);
        if (v27.u32[0] > 1uLL)
        {
          if (v26 >= *&prime)
          {
            v26 %= *&prime;
          }
        }

        else
        {
          v26 &= *&prime - 1;
        }

        *(*a1 + 8 * v26) = a1 + 24;
        v31 = *v25;
        if (*v25)
        {
          while (1)
          {
            v32 = v31[1];
            if (v27.u32[0] > 1uLL)
            {
              if (v32 >= *&prime)
              {
                v32 %= *&prime;
              }
            }

            else
            {
              v32 &= *&prime - 1;
            }

            if (v32 != v26)
            {
              v33 = *a1;
              if (!*(*a1 + 8 * v32))
              {
                *(v33 + 8 * v32) = v25;
                goto LABEL_56;
              }

              *v25 = *v31;
              *v31 = **(v33 + 8 * v32);
              **(v33 + 8 * v32) = v31;
              v31 = v25;
            }

            v32 = v26;
LABEL_56:
            v25 = v31;
            v31 = *v31;
            v26 = v32;
            if (!v31)
            {
              goto LABEL_67;
            }
          }
        }
      }

      goto LABEL_67;
    }

    if (*&prime < *&v21)
    {
      v28 = vcvtps_u32_f32(*(a1 + 40) / *(a1 + 48));
      if (*&v21 < 3uLL || (v29 = vcnt_s8(v21), v29.i16[0] = vaddlv_u8(v29), v29.u32[0] > 1uLL))
      {
        v28 = std::__next_prime(v28);
      }

      else
      {
        v30 = 1 << -__clz(v28 - 1);
        if (v28 >= 2)
        {
          v28 = v30;
        }
      }

      if (*&prime <= v28)
      {
        prime = v28;
      }

      if (*&prime < *&v21)
      {
        if (prime)
        {
          goto LABEL_31;
        }

        v34 = *a1;
        *a1 = 0;
        if (v34)
        {
          std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,void *> *> *>>::deallocate[abi:ne200100](*(a1 + 16), v34, *(a1 + 8));
        }

        *(a1 + 8) = 0;
      }
    }

LABEL_67:
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v35 = *a1;
  v36 = *(*a1 + 8 * v3);
  if (v36)
  {
    *i = *v36;
LABEL_80:
    *v36 = i;
    goto LABEL_81;
  }

  *i = *(a1 + 24);
  *(a1 + 24) = i;
  *(v35 + 8 * v3) = a1 + 24;
  if (*i)
  {
    v37 = *(*i + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v37 >= v7)
      {
        v37 %= v7;
      }
    }

    else
    {
      v37 &= v7 - 1;
    }

    v36 = (*a1 + 8 * v37);
    goto LABEL_80;
  }

LABEL_81:
  ++*(a1 + 40);
  return i;
}

uint64_t std::__hash_node_destructor<vp::Allocator<std::__hash_node<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    boost::container::vector<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>,vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>>,void>::~vector((a2 + 288));
    if (*(a2 + 264))
    {
      boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>::deallocate((a2 + 240), *(a2 + 248));
    }

    if (*(a2 + 216))
    {
      boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>::deallocate((a2 + 192), *(a2 + 200));
    }

    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](a2 + 160);
    vp::vx::data_flow::Value::~Value((a2 + 136));
  }

  v4 = **a1;

  return std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,void *>>>::deallocate[abi:ne200100](v4, a2);
}

uint64_t caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::create_state(std::function<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)> &&,std::span<unsigned int,18446744073709551615ul> const&)::$_0>(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  v41 = atomic_fetch_add((v2 + 312), 1u) + 1;
  v44 = &v41;
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2 + 328, v41, &v44);
  v7 = v6 + 160;
  v9 = (v6 + 184);
  result = *(v6 + 184);
  *(v6 + 184) = 0;
  if (result == v6 + 160)
  {
    result = (*(*result + 32))(result);
  }

  else if (result)
  {
    result = (*(*result + 40))(result);
  }

  v11 = (v3 + 24);
  v10 = *(v3 + 24);
  if (!v10)
  {
    v11 = (v6 + 184);
    goto LABEL_9;
  }

  if (v10 != v3)
  {
    *v9 = v10;
LABEL_9:
    *v11 = 0;
    goto LABEL_11;
  }

  *v9 = v7;
  result = (*(**v11 + 24))(*v11, v7);
LABEL_11:
  *(v6 + 128) = 1;
  v12 = v4[1];
  if (*(v6 + 216) >= v12)
  {
    goto LABEL_20;
  }

  if (v12 >> 62)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v5);
  }

  result = (*(**(v6 + 192) + 16))(*(v6 + 192), 4 * v12, 4);
  v13 = result;
  v14 = *(v6 + 200);
  v15 = *(v6 + 208);
  if (v14)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    memmove(result, v14, 4 * v15);
    v14 = *(v6 + 200);
  }

  v17 = *(v6 + 216);
  result = boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>::deallocate((v6 + 192), v14);
LABEL_19:
  *(v6 + 200) = v13;
  *(v6 + 216) = v12;
  v12 = v4[1];
LABEL_20:
  if (v12)
  {
    v18 = *v4;
    v19 = 4 * v12;
    do
    {
      v20 = *v18;
      v43 = *v18;
      v21 = *(v6 + 208);
      v22 = (*(v6 + 200) + 4 * v21);
      if (v21 == *(v6 + 216))
      {
        boost::container::vector<unsigned int,boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>,unsigned int *,unsigned int const&>>(&v44, v6 + 192, v22, &v43);
        boost::container::vec_iterator<unsigned int *,false>::operator*(v44);
      }

      else
      {
        *v22 = v20;
        *(v6 + 208) = v21 + 1;
      }

      v44 = &v43;
      result = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2 + 328, v43, &v44);
      v23 = *(result + 132);
      if (v23 >= *(v6 + 132))
      {
        *(v6 + 132) = v23 + 1;
      }

      ++v18;
      v19 -= 4;
    }

    while (v19);
    v24 = v4[1];
    if (v24)
    {
      v25 = *v4;
      v26 = &(*v4)[v24];
      do
      {
        v43 = *v25;
        v27 = v43;
        v44 = &v43;
        v28 = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2 + 328, v43, &v44);
        ++*(v28 + 128);
        v42 = v41;
        v43 = v27;
        v44 = &v43;
        result = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2 + 328, v27, &v44);
        v30 = *(result + 248);
        v29 = *(result + 256);
        if (v30)
        {
          v31 = 1;
        }

        else
        {
          v31 = v29 == 0;
        }

        if (!v31)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v32 = *(result + 248);
        if (v29)
        {
          v32 = *(result + 248);
          v33 = *(result + 256);
          do
          {
            if (v33 != 1 && !v32)
            {
              __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
            }

            if (!v32)
            {
              __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
            }

            v34 = v33 >> 1;
            v35 = &v32[4 * (v33 >> 1)];
            v37 = *v35;
            v36 = v35 + 4;
            v33 += ~(v33 >> 1);
            if (v37 >= v42)
            {
              v33 = v34;
            }

            else
            {
              v32 = v36;
            }
          }

          while (v33);
        }

        v38 = (v30 + 4 * v29);
        if (v32 == v38)
        {
          goto LABEL_48;
        }

        if (!v32)
        {
          __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
        }

        if (v42 < *v32)
        {
LABEL_48:
          if (v30 > v32 || v32 > v38)
          {
            __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
          }

          v40 = *(result + 264);
          if (v40 < v29)
          {
            __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
          }

          if (v40 == v29)
          {
            result = boost::container::vector<unsigned int,boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>,unsigned int *,unsigned int const&>>(&v44, result + 240, v32, &v42);
          }

          else if (v32 == v38)
          {
            *v38 = v42;
            *(result + 256) = v29 + 1;
          }

          else
          {
            *v38 = *(v38 - 1);
            *(result + 256) = v29 + 1;
            if (v38 - 4 != v32)
            {
              result = memmove(v32 + 4, v32, v38 - 4 - v32);
            }

            *v32 = v42;
          }
        }

        else if (!v30)
        {
          __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
        }

        ++v25;
      }

      while (v25 != v26);
    }
  }

  **v1 = v41;
  return result;
}

_DWORD *boost::container::vector<unsigned int,boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>,unsigned int *,unsigned int const&>>(void *a1, uint64_t a2, char *a3, _DWORD *a4)
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
    result = boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 8));
  }

  v20 = *(a2 + 16) + 1;
  *(a2 + 8) = v14;
  *(a2 + 16) = v20;
  *(a2 + 24) = v10;
  *a1 = &a3[v14 - v9];
  return result;
}

uint64_t boost::container::vec_iterator<unsigned int *,false>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

uint64_t caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::find_and_retain_state(unsigned int)::$_0>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1)[1];
  result = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::find<unsigned int>((v2 + 328), v3);
  v5 = result;
  if (result)
  {
    v6 = v3;
    v7 = &v6;
    result = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2 + 328, v3, &v7);
    ++*(result + 128);
  }

  *v1[2] = v5 != 0;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::find<unsigned int>(void *a1, unsigned int a2)
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
      if (*(result + 16) == a2)
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

uint64_t caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::retain_state(unsigned int)::$_0>(uint64_t **a1)
{
  v1 = **a1;
  v3 = *(*a1)[1];
  v4 = &v3;
  result = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v1 + 328, v3, &v4);
  ++*(result + 128);
  return result;
}

uint64_t *vp::vx::data_flow::Engine::do_release_state(int8x8_t *this, unsigned int a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::find<unsigned int>(&this[41], a2);
  if (!result)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = *(result + 32);
  v6 = __OFSUB__(v5--, 1);
  *(result + 32) = v5;
  if ((v5 < 0) ^ v6 | (v5 == 0))
  {
    v8 = result[25];
    v7 = result[26];
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 == 0;
    }

    if (!v9)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    if (v7)
    {
      v10 = &v8[v7];
      do
      {
        if (!v8)
        {
          __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
        }

        v42 = *v8;
        v11 = v42;
        v38 = &v42;
        v12 = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&this[41], v42, &v38);
        v14 = *(v12 + 248);
        v13 = *(v12 + 256);
        if (v14)
        {
          v15 = 1;
        }

        else
        {
          v15 = v13 == 0;
        }

        if (!v15)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v16 = v12;
        v17 = *(v12 + 248);
        if (v13)
        {
          v18 = *(v12 + 256);
          do
          {
            if (v18 != 1 && !v17)
            {
              __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
            }

            if (!v17)
            {
              __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
            }

            v19 = v18 >> 1;
            v20 = &v17[v18 >> 1];
            v22 = *v20;
            v21 = v20 + 1;
            v18 += ~(v18 >> 1);
            if (v22 >= a2)
            {
              v18 = v19;
            }

            else
            {
              v17 = v21;
            }
          }

          while (v18);
        }

        v23 = (v14 + 4 * v13);
        if (v17 != v23)
        {
          if (!v17)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          if (*v17 <= a2)
          {
            v24 = v17;
          }

          else
          {
            v24 = (v14 + 4 * v13);
          }

          if (v24 != v23)
          {
            if (v14 > v24 || v24 >= v23)
            {
              __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
            }

            v26 = v24 + 1;
            if (v24)
            {
              v27 = v26 == v23;
            }

            else
            {
              v27 = 1;
            }

            if (!v27)
            {
              memmove(v24, v26, v23 - v26);
              v13 = *(v16 + 256);
            }

            *(v16 + 256) = v13 - 1;
          }
        }

        vp::vx::data_flow::Engine::do_release_state(this, v11);
        ++v8;
      }

      while (v8 != v10);
    }

    result = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::find<unsigned int>(&this[41], a2);
    if (result)
    {
      v28 = this[42];
      v29 = result[1];
      v30 = vcnt_s8(v28);
      v30.i16[0] = vaddlv_u8(v30);
      if (v30.u32[0] > 1uLL)
      {
        if (v29 >= *&v28)
        {
          v29 %= *&v28;
        }
      }

      else
      {
        v29 &= *&v28 - 1;
      }

      v31 = this[41];
      v32 = *(*&v31 + 8 * v29);
      do
      {
        v33 = v32;
        v32 = *v32;
      }

      while (v32 != result);
      if (v33 == &this[44])
      {
        goto LABEL_63;
      }

      v34 = v33[1];
      if (v30.u32[0] > 1uLL)
      {
        if (v34 >= *&v28)
        {
          v34 %= *&v28;
        }
      }

      else
      {
        v34 &= *&v28 - 1;
      }

      if (v34 != v29)
      {
LABEL_63:
        if (!*result)
        {
          goto LABEL_64;
        }

        v35 = *(*result + 8);
        if (v30.u32[0] > 1uLL)
        {
          if (v35 >= *&v28)
          {
            v35 %= *&v28;
          }
        }

        else
        {
          v35 &= *&v28 - 1;
        }

        if (v35 != v29)
        {
LABEL_64:
          *(*&v31 + 8 * v29) = 0;
        }
      }

      v36 = *result;
      if (*result)
      {
        v37 = *(v36 + 8);
        if (v30.u32[0] > 1uLL)
        {
          if (v37 >= *&v28)
          {
            v37 %= *&v28;
          }
        }

        else
        {
          v37 &= *&v28 - 1;
        }

        if (v37 != v29)
        {
          *(*&this[41] + 8 * v37) = v33;
          v36 = *result;
        }
      }

      *v33 = v36;
      *result = 0;
      --*&this[46];
      v40 = 1;
      v41[0] = 0;
      *(v41 + 3) = 0;
      v38 = 0;
      v39 = this + 45;
      return std::__hash_node_destructor<vp::Allocator<std::__hash_node<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,void *>>>::operator()[abi:ne200100](&v39, result);
    }
  }

  return result;
}

void vp::vx::data_flow::Engine::do_with_shared_state_lock(std::__shared_mutex_base *a1, void (*a2)(void), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7[0] = a3;
  v7[1] = a1;
  v8 = 1;
  std::__shared_mutex_base::lock_shared(a1);
  a2(v7);
  std::__shared_mutex_base::unlock_shared(a1);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_272630594(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock_shared(*a1);
  }

  return a1;
}

void vp::vx::data_flow::Engine::do_get_state_value(vp::vx::data_flow::Engine *this, unsigned int a2, vp::vx::data_flow::Value *a3)
{
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::find<unsigned int>(this + 41, a2);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v7 = v6;
  if (v6[19])
  {

    vp::vx::data_flow::Value::operator=(a3, v6 + 17);
  }

  else
  {
    std::mutex::lock((this + 168));
    vp::vx::data_flow::Engine::do_update_value(this, a2, (v7 + 17));
    vp::vx::data_flow::Value::operator=(a3, v7 + 17);

    std::mutex::unlock((this + 168));
  }
}