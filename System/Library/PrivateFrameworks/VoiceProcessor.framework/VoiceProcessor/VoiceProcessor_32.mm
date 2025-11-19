unint64_t boost::container::vector_alloc_holder<boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(uint64_t a1, unint64_t a2)
{
  if (a2 != a1)
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v2 = 0xAAAAAAAAAAAAAAALL;
  if (a2 == 0xAAAAAAAAAAAAAAALL)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", 0xAAAAAAAAAAAAAAALL);
  }

  if (a2 >> 61 > 4)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2;
  }

  if (a2 >> 61)
  {
    v4 = v3;
  }

  else
  {
    v4 = 8 * a2 / 5;
  }

  if (v4 < 0xAAAAAAAAAAAAAAALL)
  {
    v2 = v4;
  }

  if (a2 + 1 > v2)
  {
    return a2 + 1;
  }

  else
  {
    return v2;
  }
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,boost::container::dtl::select1st<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,std::less<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,boost::container::small_vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,16ul,vp::Allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>,void>>::priv_insert_unique_prepare(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1;
  if (*a2 != a1)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((*a2 - a1) >> 3);
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

      if ((std::operator<=>[abi:ne200100]<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>(v7 + 24 * (v8 >> 1), a3) & 0x80u) == 0)
      {
        v8 >>= 1;
      }

      else
      {
        v7 += 24 * (v8 >> 1) + 24;
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

  return (std::operator<=>[abi:ne200100]<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>(a3, v7) & 0x80u) != 0;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIRZNS_ssB8ne200100IJN2vp2vx18Uplink_DSP_Node_IDENSA_20Downlink_DSP_Node_IDEEEENS_26common_comparison_categoryIJDpNS_24compare_three_way_resultIT_SF_E4typeEEE4typeERKNS_7variantIJDpSF_EEESP_EUlTyRKT_SS_E_EEJRKNS0_6__baseILNS0_6_TraitE0EJSB_SC_EEES11_EEEDcSQ_DpT0_(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 < *a3)
  {
    v3 = -1;
  }

  else
  {
    v3 = 1;
  }

  if (*a2 == *a3)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIRZNS_ssB8ne200100IJN2vp2vx18Uplink_DSP_Node_IDENSA_20Downlink_DSP_Node_IDEEEENS_26common_comparison_categoryIJDpNS_24compare_three_way_resultIT_SF_E4typeEEE4typeERKNS_7variantIJDpSF_EEESP_EUlTyRKT_SS_E_EEJRKNS0_6__baseILNS0_6_TraitE0EJSB_SC_EEES11_EEEDcSQ_DpT0_(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 < *a3)
  {
    v3 = -1;
  }

  else
  {
    v3 = 1;
  }

  if (*a2 == *a3)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

void vp::vx::Voice_Processor::get_uplink_configuration(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "uplink configuration", 20, 0x8000100u, 0);
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

void sub_2726F073C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::make_weak_state_observer(vp::vx::Voice_Processor *this, uint64_t a2, std::__shared_weak_count *a3)
{
  if (!a3 || (atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add_explicit(&a3->__shared_weak_owners_, 1uLL, memory_order_relaxed), std::__shared_weak_count::__release_shared[abi:ne200100](a3), (v6 = std::__shared_weak_count::lock(a3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = a2 + 248;
  if (!a2)
  {
    v7 = 0;
  }

  *this = v7;
  *(this + 1) = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);

  std::__shared_weak_count::__release_weak(a3);
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(uint64_t a1, unsigned int *a2, _BYTE *a3)
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
        if (*a3)
        {
          v10 = "should";
        }

        else
        {
          v10 = "should not";
        }

        caulk::make_string("%s use internal reference", &v15, v10);
        __p = v15;
        *v12 = *v16;
        *&v12[7] = *&v16[7];
        v13 = v17;
        v14 = 1;
        (*(*v9 + 24))(v9, v6, &__p);
        if (v14 == 1 && v13 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881C0C60;
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

void std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C0C60;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_use_internal_reference(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C0C60;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor33get_should_use_internal_referenceEvENK3__0clEvEUlRKNS3_20Uplink_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v4 = *a3;
  v5 = *vp::vx::data_flow::Value::view_storage(**a2);
  if (v5 == 2)
  {
    v6 = 1;
  }

  else if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 8) != 3;
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v7);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v6;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Uplink_Configuration>::compare_value(uint64_t a1, void *a2, void *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (**a2 != **a3 || ((*(v4 + 2) ^ *(v3 + 2)) & 0x7FF) != 0 || *(v3 + 1) != *(v4 + 1))
  {
    return 0;
  }

  v5 = *(v3 + 24);
  v6 = *(v4 + 24);
  if (v5 != v6 || v5 == 0)
  {
    if (v5 != v6)
    {
      return 0;
    }
  }

  else if (*(v3 + 2) != *(v4 + 2))
  {
    return 0;
  }

  v8 = *(v3 + 40);
  v9 = *(v4 + 40);
  if (v8 != v9 || v8 == 0)
  {
    if (v8 != v9)
    {
      return 0;
    }
  }

  else if (*(v3 + 4) != *(v4 + 4))
  {
    return 0;
  }

  v11 = *(v3 + 56);
  v12 = *(v4 + 56);
  if (v11 != v12 || v11 == 0)
  {
    if (v11 != v12)
    {
      return 0;
    }
  }

  else if (*(v3 + 6) != *(v4 + 6))
  {
    return 0;
  }

  if (*(v3 + 10) == *(v4 + 10))
  {
    result = std::equal[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<double,int>,std::__tree_node<std::__value_type<double,int>,void *> *,long>>,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<double,int>,std::__tree_node<std::__value_type<double,int>,void *> *,long>>>(*(v3 + 8), v3 + 9, *(v4 + 8));
    if (!result)
    {
      return result;
    }

    v15 = *(v3 + 92);
    v16 = *(v4 + 92);
    if (v15 == v16 && *(v3 + 92))
    {
      v15 = v3[22];
      v16 = v4[22];
    }

    if (v15 == v16)
    {
      v17 = *(v3 + 100);
      v18 = *(v4 + 100);
      if (v17 == v18)
      {
        if (*(v3 + 100))
        {
          v17 = v3[24];
          v18 = v4[24];
        }
      }

      if (v17 == v18)
      {
        return *(v3 + 104) == *(v4 + 104);
      }
    }
  }

  return 0;
}

uint64_t std::equal[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<double,int>,std::__tree_node<std::__value_type<double,int>,void *> *,long>>,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<double,int>,std::__tree_node<std::__value_type<double,int>,void *> *,long>>>(double *a1, double *a2, double *a3)
{
  while (a1 != a2)
  {
    v3 = a1[4] == a3[4] && *(a1 + 10) == *(a3 + 10);
    v4 = v3;
    if (!v3)
    {
      return v4;
    }

    v5 = *(a1 + 1);
    v6 = a1;
    if (v5)
    {
      do
      {
        a1 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        a1 = *(v6 + 2);
        v3 = *a1 == v6;
        v6 = a1;
      }

      while (!v3);
    }

    v7 = *(a3 + 1);
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = *(a3 + 2);
        v3 = *v8 == a3;
        a3 = v8;
      }

      while (!v3);
    }

    a3 = v8;
  }

  return 1;
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Uplink_Configuration>::move_value(uint64_t a1, uint64_t *a2, __int128 **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a3;
  v6 = (*a3)[1];
  v7 = (*a3)[2];
  *(v3 + 41) = *(*a3 + 41);
  *(v3 + 16) = v6;
  *(v3 + 32) = v7;
  *v3 = v5;
  *(v3 + 64) = *(v4 + 8);
  v8 = v4 + 9;
  v9 = *(v4 + 9);
  *(v3 + 72) = v9;
  v10 = v3 + 72;
  v11 = *(v4 + 10);
  *(v3 + 80) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *(v4 + 8) = v8;
    *v8 = 0;
    *(v4 + 10) = 0;
  }

  else
  {
    *(v3 + 64) = v10;
  }

  result = *(v4 + 88);
  *(v3 + 104) = *(v4 + 104);
  *(v3 + 88) = result;
  return result;
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Uplink_Configuration>::copy_value(uint64_t a1, uint64_t *a2, __int128 **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a3;
  v6 = (*a3)[1];
  v7 = (*a3)[2];
  *(v3 + 41) = *(*a3 + 41);
  *(v3 + 16) = v6;
  *(v3 + 32) = v7;
  *v3 = v5;
  std::map<double,int>::map[abi:ne200100]((v3 + 64), v4 + 8);
  result = *(v4 + 88);
  *(v3 + 104) = *(v4 + 104);
  *(v3 + 88) = result;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Uplink_Configuration>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Uplink_Configuration>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 112, 8);
  *a2 = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor33get_should_use_internal_referenceEvENK3__0clEvEUlRKNS3_20Uplink_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0BD0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Uplink_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_uplink_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EEclEOS10_OS11_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v50 = *MEMORY[0x277D85DE8];
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

  v7 = *(a1 + 8);
  LODWORD(v38) = 0;
  WORD2(v38) = 983;
  *(&v38 + 1) = 100;
  LOBYTE(v39) = 0;
  BYTE8(v39) = 0;
  v40[0] = 0;
  v40[8] = 0;
  v40[16] = 0;
  v40[24] = 0;
  v42 = 0;
  v43 = 0;
  v41 = &v42;
  LOBYTE(v44) = 0;
  BYTE4(v44) = 0;
  BYTE8(v44) = 0;
  BYTE12(v44) = 0;
  v45 = 1;
  if (*(v7 + 361) == 1)
  {
    WORD2(v38) = 343;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (*(*v8 + 32))(v8, v6, &v38);
    if ((v9 & 1) == 0)
    {
      log = vp::get_log(v9);
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        log_context_info = vp::get_log_context_info(__p, v7, "vp::vx::Voice_Processor]", 23);
        v12 = v37;
        v13 = v37;
        v14 = __p[1];
        v15 = vp::get_log(log_context_info);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          if (v13 >= 0)
          {
            v16 = v12;
          }

          else
          {
            v16 = v14;
          }

          v17 = __p[0];
          if (v13 >= 0)
          {
            v17 = __p;
          }

          if (v16)
          {
            v18 = " ";
          }

          else
          {
            v18 = "";
          }

          *buf = 136315394;
          v47 = v17;
          v48 = 2080;
          v49 = v18;
          _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%s%sfailed to get uplink configuration", buf, 0x16u);
          LOBYTE(v13) = v37;
        }

        if ((v13 & 0x80) != 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v28 = v38;
  v29 = v39;
  *v30 = *v40;
  *&v30[9] = *&v40[9];
  v19 = v42;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  if (v43)
  {
    v42[2] = &v32;
    v19 = 0;
    v41 = &v42;
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v31 = &v32;
  }

  v34 = v44;
  v35 = v45;
  std::__tree<unsigned int>::destroy(v19);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v20);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Uplink_Configuration>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  *(storage + 41) = *&v30[9];
  *(storage + 16) = v29;
  *(storage + 32) = *v30;
  *storage = v28;
  v22 = v33;
  *(storage + 64) = v31;
  v23 = v32;
  *(storage + 72) = v32;
  *(storage + 80) = v22;
  v24 = storage + 72;
  if (v22)
  {
    v25 = 0;
    v23[2] = v24;
    v32 = 0;
    v33 = 0;
  }

  else
  {
    *(storage + 64) = v24;
    v25 = v32;
  }

  v26 = v34;
  *(storage + 104) = v35;
  *(storage + 88) = v26;
  std::__tree<unsigned int>::destroy(v25);
  v27 = *MEMORY[0x277D85DE8];
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Uplink_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_uplink_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Uplink_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_uplink_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Uplink_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_uplink_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7__cloneEPNS0_6__baseIS15_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BFD10;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Uplink_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_uplink_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EED0Ev(void *a1)
{
  *a1 = &unk_2881BFD10;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Uplink_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_uplink_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EED1Ev(void *a1)
{
  *a1 = &unk_2881BFD10;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_global<BOOL,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(uint64_t a1, unsigned int *a2, _BYTE *a3)
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
        if (*a3)
        {
          v10 = "should";
        }

        else
        {
          v10 = "should not";
        }

        caulk::make_string("%s fade audio buffers", &v15, v10);
        __p = v15;
        *v12 = *v16;
        *&v12[7] = *&v16[7];
        v13 = v17;
        v14 = 1;
        (*(*v9 + 16))(v9, v6, &__p);
        if (v14 == 1 && v13 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_global<BOOL,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_global<BOOL,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_global<BOOL,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881C0D80;
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

void std::__function::__func<void vp::vx::observe_global<BOOL,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C0D80;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_global<BOOL,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_fade_audio_buffers(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C0D80;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor29get_should_fade_audio_buffersEvENK3__0clEvEUlRKNS3_20Global_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *(vp::vx::data_flow::Value::view_storage(**a2) + 100) & 1;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor29get_should_fade_audio_buffersEvENK3__0clEvEUlRKNS3_20Global_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0D38;
  *(a2 + 8) = *(result + 8);
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(uint64_t a1, unsigned int *a2, _BYTE *a3)
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
        if (*a3)
        {
          v10 = "should";
        }

        else
        {
          v10 = "should not";
        }

        caulk::make_string("%s wire uplink microphone clip data", &v15, v10);
        __p = v15;
        *v12 = *v16;
        *&v12[7] = *&v16[7];
        v13 = v17;
        v14 = 1;
        (*(*v9 + 24))(v9, v6, &__p);
        if (v14 == 1 && v13 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881C0E10;
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

void std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C0E10;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::Voice_Processor::get_should_wire_uplink_mic_clip_data(void)::$_0::operator() const(void)::{lambda(BOOL)#1})::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C0E10;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor36get_should_wire_uplink_mic_clip_dataEvENK3__0clEvEUlRKNS3_20Uplink_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *(vp::vx::data_flow::Value::view_storage(**a2) + 104);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor36get_should_wire_uplink_mic_clip_dataEvENK3__0clEvEUlRKNS3_20Uplink_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0DC8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void vp::vx::Voice_Processor::log_configuration_changes(vp::Domain)::$_0::operator()(uint64_t *a1)
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a1 + 888;
  v4 = 40;
  if (!*a1[1])
  {
    v4 = 0;
  }

  v5 = *(v3 + v4 + 24);
  log = vp::get_log(a1);
  v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      log_context_info = vp::get_log_context_info(&v59, v2, "vp::vx::Voice_Processor]", 23);
      v9 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
      v10 = SHIBYTE(v59.__r_.__value_.__r.__words[2]);
      size = v59.__r_.__value_.__l.__size_;
      v12 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (v10 >= 0)
        {
          v13 = v9;
        }

        else
        {
          v13 = size;
        }

        v14 = v59.__r_.__value_.__r.__words[0];
        if (v10 >= 0)
        {
          v14 = &v59;
        }

        if (v13)
        {
          v15 = " ";
        }

        else
        {
          v15 = "";
        }

        v16 = *a1[1];
        *buf = 136315650;
        *v62 = v14;
        *&v62[8] = 2080;
        *&v62[10] = v15;
        if (v16)
        {
          v17 = "downlink";
        }

        else
        {
          v17 = "uplink";
        }

        v63 = 2080;
        *v64 = v17;
        _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEFAULT, "%s%sdetected %s configuration state changes", buf, 0x20u);
        LOBYTE(v10) = *(&v59.__r_.__value_.__s + 23);
      }

      if ((v10 & 0x80) != 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }
    }

    v18 = *a1[1] == 0;
    if (*a1[1])
    {
      v19 = 40;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = 117;
    }

    else
    {
      v20 = 100;
    }

    v21 = __toupper(v20);
    v22 = v21;
    v23 = *(v3 + v19 + 24);
    v24 = 32 * v23;
    MEMORY[0x28223BE20](v21);
    v26 = &v57 - 2 * v23;
    if (v23)
    {
      v27 = &v57 - 2 * v23;
      do
      {
        v27->n128_u8[0] = 0;
        v27[1].n128_u8[8] = 0;
        v27 += 2;
      }

      while (v27 != &v57);
    }

    v28 = *(v25 + 16);
    if (v28)
    {
      v29 = &v57 - 2 * v23;
      do
      {
        *buf = *(v28 + 4);
        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v62[4], (v28 + 3));
        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v59, &v62[4]);
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v29, &v59);
        if (v60 == 1 && SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        if (v64[8] == 1 && (v64[7] & 0x80000000) != 0)
        {
          operator delete(*&v62[4]);
        }

        v28 = *v28;
        v29 += 2;
      }

      while (v28);
    }

    v30 = 126 - 2 * __clz(v23);
    if (v23)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,false>((&v57 - 2 * v23), &v57, v31, 1);
    if (v23)
    {
      v57.n128_u64[1] = &v57;
      v34 = v22;
      *&v33 = 136315906;
      v58 = v33;
      do
      {
        if (v26[1].n128_u8[8] == 1)
        {
          v35 = vp::get_log(v32);
          v32 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
          if (v32)
          {
            v36 = vp::get_log_context_info(&v59, v2, "vp::vx::Voice_Processor]", 23);
            v37 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
            v38 = v59.__r_.__value_.__l.__size_;
            v39 = vp::get_log(v36);
            v32 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
            if (v32)
            {
              if ((v37 & 0x80u) == 0)
              {
                v40 = v37;
              }

              else
              {
                v40 = v38;
              }

              v41 = &v59;
              if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v41 = v59.__r_.__value_.__r.__words[0];
              }

              v42 = "";
              if (v40)
              {
                v42 = " ";
              }

              v43 = v26;
              if (v26[1].n128_i8[7] < 0)
              {
                v43 = v26->n128_u64[0];
              }

              *buf = v58;
              *v62 = v41;
              *&v62[8] = 2080;
              *&v62[10] = v42;
              v63 = 1024;
              *v64 = v34;
              *&v64[4] = 2080;
              *&v64[6] = v43;
              _os_log_impl(&dword_2724B4000, v39, OS_LOG_TYPE_DEFAULT, "%s%s(%cL) %s", buf, 0x26u);
            }

            if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v59.__r_.__value_.__l.__data_);
            }
          }
        }

        v26 += 2;
        v24 -= 32;
      }

      while (v24);
      v44 = &v57 - 9;
      v45 = -32 * v23;
      do
      {
        if (v44[1] == 1 && *v44 < 0)
        {
          operator delete(*(v44 - 23));
        }

        v44 -= 32;
        v45 += 32;
      }

      while (v45);
    }
  }

  else if (v7)
  {
    v46 = vp::get_log_context_info(&v59, v2, "vp::vx::Voice_Processor]", 23);
    v47 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    v48 = SHIBYTE(v59.__r_.__value_.__r.__words[2]);
    v49 = v59.__r_.__value_.__l.__size_;
    v50 = vp::get_log(v46);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      if (v48 >= 0)
      {
        v51 = v47;
      }

      else
      {
        v51 = v49;
      }

      v52 = v59.__r_.__value_.__r.__words[0];
      if (v48 >= 0)
      {
        v52 = &v59;
      }

      if (v51)
      {
        v53 = " ";
      }

      else
      {
        v53 = "";
      }

      v54 = *a1[1];
      *buf = 136315650;
      *v62 = v52;
      *&v62[8] = 2080;
      *&v62[10] = v53;
      if (v54)
      {
        v55 = "downlink";
      }

      else
      {
        v55 = "uplink";
      }

      v63 = 2080;
      *v64 = v55;
      _os_log_impl(&dword_2724B4000, v50, OS_LOG_TYPE_DEFAULT, "%s%sdetected no %s configuration state changes", buf, 0x20u);
      LOBYTE(v48) = *(&v59.__r_.__value_.__s + 23);
    }

    if ((v48 & 0x80) != 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  v56 = *MEMORY[0x277D85DE8];
}

void std::__introsort<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = &a2[-2];
  v100 = &a2[-6];
  v101 = &a2[-4];
  v99 = &a2[-3].n128_u8[8];
  n128_u64 = a1;
  v103 = a2;
  while (1)
  {
    a1 = n128_u64;
    v9 = (a2 - n128_u64) >> 5;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,0>(n128_u64, n128_u64 + 32, v7);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,0>(n128_u64, n128_u64 + 32, n128_u64 + 64, v7);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,0>(n128_u64, n128_u64 + 32, n128_u64 + 64, n128_u64 + 96, v7);
          return;
      }

      goto LABEL_9;
    }

    if (v9 < 2)
    {
      return;
    }

    if (v9 == 2)
    {
      break;
    }

LABEL_9:
    if (v9 <= 23)
    {
      if ((a4 & 1) == 0)
      {
        if (n128_u64 == a2)
        {
          return;
        }

        v93 = (n128_u64 + 32);
        if ((n128_u64 + 32) == a2)
        {
          return;
        }

        while (1)
        {
          v94 = a1;
          a1 = v93;
          v95 = v94[1].n128_u8[8];
          if (v94[3].n128_u8[8] == 1 && (v94[1].n128_u8[8] & 1) != 0)
          {
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v93, v94) & 0x80) != 0)
            {
              LOBYTE(__p[0]) = 0;
              v109 = 0;
              v96 = *a1;
              v108 = *(a1 + 16);
              *__p = v96;
              *(a1 + 8) = 0;
              *(a1 + 16) = 0;
              *a1 = 0;
              v109 = 1;
              do
              {
LABEL_264:
                while (1)
                {
                  v97 = v94;
                  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(&v94[2], v94);
                  v94 -= 2;
                  v98 = *(v97 - 8);
                  if (v109 != 1 || (*(v97 - 8) & 1) == 0)
                  {
                    break;
                  }

                  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v94) & 0x80) == 0)
                  {
                    goto LABEL_270;
                  }
                }
              }

              while (!v109 && (*(v97 - 8) & 1) != 0);
LABEL_270:
              std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v97, __p);
              if (v109 == 1 && SHIBYTE(v108) < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          else if (!v94[3].n128_u8[8] && (v94[1].n128_u8[8] & 1) != 0)
          {
            LOBYTE(__p[0]) = 0;
            v109 = 0;
            goto LABEL_264;
          }

          v93 = (a1 + 32);
          if ((a1 + 32) == a2)
          {
            return;
          }
        }
      }

      if (n128_u64 == a2)
      {
        return;
      }

      v55 = (n128_u64 + 32);
      if ((n128_u64 + 32) == a2)
      {
        return;
      }

      v56 = 0;
      v57 = n128_u64;
      while (1)
      {
        v58 = v57;
        v57 = v55;
        v59 = *(v58 + 24);
        if (*(v58 + 56) == 1 && (*(v58 + 24) & 1) != 0)
        {
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v55, v58) & 0x80) == 0)
          {
            goto LABEL_172;
          }

          LOBYTE(__p[0]) = 0;
          v109 = 0;
          v60 = *v57;
          v108 = v57[2];
          *__p = v60;
          v57[1] = 0;
          v57[2] = 0;
          *v57 = 0;
          v109 = 1;
        }

        else
        {
          if (*(v58 + 56) || (*(v58 + 24) & 1) == 0)
          {
            goto LABEL_172;
          }

          LOBYTE(__p[0]) = 0;
          v109 = 0;
        }

        for (i = v56; ; i -= 32)
        {
          v62 = a1 + i;
          std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + i + 32, (a1 + i));
          if (!i)
          {
            break;
          }

          v63 = *(v62 - 8);
          if (v109 == 1 && (*(v62 - 8) & 1) != 0)
          {
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, (v62 - 32)) & 0x80) == 0)
            {
              v58 = a1 + i;
              goto LABEL_169;
            }
          }

          else if (v109 || (*(v62 - 8) & 1) == 0)
          {
            goto LABEL_169;
          }

          v58 -= 32;
        }

        v58 = a1;
LABEL_169:
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v58, __p);
        if (v109 == 1 && SHIBYTE(v108) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_172:
        v55 = v57 + 4;
        v56 += 32;
        if (v57 + 4 == a2)
        {
          return;
        }
      }
    }

    if (!a3)
    {
      if (n128_u64 == a2)
      {
        return;
      }

      v64 = v10 >> 1;
      v65 = v10 >> 1;
      while (1)
      {
        v66 = v65;
        if (v64 < v65)
        {
          goto LABEL_211;
        }

        v67 = (2 * v65) | 1;
        v68 = (a1 + 32 * v67);
        if (2 * v65 + 2 < v9)
        {
          v69 = v68[3].n128_u8[8];
          if (v68[1].n128_u8[8] == 1 && (v68[3].n128_u8[8] & 1) != 0)
          {
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 32 * v67), v68[2].n128_u64) & 0x80) != 0)
            {
              goto LABEL_184;
            }
          }

          else if (!v68[1].n128_u8[8] && (v68[3].n128_u8[8] & 1) != 0)
          {
LABEL_184:
            v68 += 2;
            v67 = 2 * v66 + 2;
          }
        }

        v70 = a1 + 32 * v66;
        v71 = *(v70 + 24);
        if (v68[1].n128_u8[8] == 1 && (*(v70 + 24) & 1) != 0)
        {
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v68, (a1 + 32 * v66)) & 0x80) != 0)
          {
            goto LABEL_211;
          }

          LOBYTE(__p[0]) = 0;
          v109 = 0;
        }

        else
        {
          if (!v68[1].n128_u8[8] && (*(v70 + 24) & 1) != 0)
          {
            goto LABEL_211;
          }

          LOBYTE(__p[0]) = 0;
          v109 = 0;
          if ((v71 & 1) == 0)
          {
            goto LABEL_193;
          }
        }

        v72 = *v70;
        v108 = *(v70 + 16);
        *__p = v72;
        *(v70 + 8) = 0;
        *(v70 + 16) = 0;
        *v70 = 0;
        v109 = 1;
LABEL_193:
        while (1)
        {
          v73 = v68;
          std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v70, v68);
          if (v64 < v67)
          {
            break;
          }

          v74 = 2 * v67;
          v67 = (2 * v67) | 1;
          v68 = (a1 + 32 * v67);
          v75 = v74 + 2;
          if (v74 + 2 >= v9)
          {
            goto LABEL_202;
          }

          v76 = v68[3].n128_u8[8];
          if (v68[1].n128_u8[8] == 1 && (v68[3].n128_u8[8] & 1) != 0)
          {
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 32 * v67), v68[2].n128_u64) & 0x80) == 0)
            {
              goto LABEL_202;
            }
          }

          else if (v68[1].n128_u8[8] || (v68[3].n128_u8[8] & 1) == 0)
          {
            goto LABEL_202;
          }

          v68 += 2;
          v67 = v75;
LABEL_202:
          if (v68[1].n128_u8[8] == 1 && (v109 & 1) != 0)
          {
            v70 = v73;
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v68, __p) & 0x80) != 0)
            {
              break;
            }
          }

          else
          {
            v70 = v73;
            if (!v68[1].n128_u8[8])
            {
              v70 = v73;
              if (v109)
              {
                break;
              }
            }
          }
        }

        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v73, __p);
        if (v109 == 1 && SHIBYTE(v108) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_211:
        v65 = v66 - 1;
        if (!v66)
        {
LABEL_212:
          if (v9 < 2)
          {
            goto LABEL_235;
          }

          LOBYTE(v104[0]) = 0;
          v106 = 0;
          if (*(a1 + 24) == 1)
          {
            v77 = *a1;
            v105 = *(a1 + 16);
            *v104 = v77;
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            *a1 = 0;
            v106 = 1;
          }

          v78 = 0;
          v79 = a1;
          while (1)
          {
            v80 = v79;
            v81 = &v79[2 * v78];
            v79 = v81 + 2;
            v82 = 2 * v78;
            v78 = (2 * v78) | 1;
            v83 = v82 + 2;
            if (v82 + 2 < v9)
            {
              v84 = v81[5].n128_u8[8];
              if (v81[3].n128_u8[8] != 1 || (v81[5].n128_u8[8] & 1) == 0)
              {
                if (v81[3].n128_u8[8] || (v81[5].n128_u8[8] & 1) == 0)
                {
                  goto LABEL_224;
                }

LABEL_223:
                v79 = v81 + 4;
                v78 = v83;
                goto LABEL_224;
              }

              if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v81[2].n128_u64, v81[4].n128_u64) & 0x80) != 0)
              {
                goto LABEL_223;
              }
            }

LABEL_224:
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v80, v79);
            if (v78 > ((v9 - 2) >> 1))
            {
              if (v79 == &a2[-2])
              {
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v79, v104);
              }

              else
              {
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v79, a2 - 2);
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(&a2[-2], v104);
                v85 = (&v79[2] - a1) >> 5;
                v86 = v85 < 2;
                v87 = v85 - 2;
                if (!v86)
                {
                  v88 = v87 >> 1;
                  v89 = (a1 + 32 * (v87 >> 1));
                  v90 = v79[1].n128_u8[8];
                  if (v89[1].n128_u8[8] == 1 && (v79[1].n128_u8[8] & 1) != 0)
                  {
                    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v89, v79) & 0x80) != 0)
                    {
LABEL_239:
                      LOBYTE(__p[0]) = 0;
                      v109 = 0;
                      v91 = *v79;
                      v108 = v79[1].n128_u64[0];
                      *__p = v91;
                      v79->n128_u64[1] = 0;
                      v79[1].n128_u64[0] = 0;
                      v79->n128_u64[0] = 0;
                      v109 = 1;
                      while (1)
                      {
                        v92 = v89;
                        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v79, v89);
                        if (!v88)
                        {
                          break;
                        }

                        v88 = (v88 - 1) >> 1;
                        v89 = (a1 + 32 * v88);
                        if (v89[1].n128_u8[8] == 1 && (v109 & 1) != 0)
                        {
                          v79 = v92;
                          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 32 * v88), __p) & 0x80) == 0)
                          {
                            break;
                          }
                        }

                        else
                        {
                          if (v89[1].n128_u8[8])
                          {
                            break;
                          }

                          v79 = v92;
                          if ((v109 & 1) == 0)
                          {
                            break;
                          }
                        }
                      }

                      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v92, __p);
                      if (v109 == 1 && SHIBYTE(v108) < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }
                  }

                  else if (!v89[1].n128_u8[8] && (v79[1].n128_u8[8] & 1) != 0)
                  {
                    goto LABEL_239;
                  }
                }
              }

              if (v106 == 1 && SHIBYTE(v105) < 0)
              {
                operator delete(v104[0]);
              }

LABEL_235:
              a2 -= 2;
              v86 = v9-- > 2;
              if (!v86)
              {
                return;
              }

              goto LABEL_212;
            }
          }
        }
      }
    }

    v11 = v9 >> 1;
    v12 = n128_u64 + 32 * (v9 >> 1);
    if (v9 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,0>(n128_u64 + 32 * (v9 >> 1), n128_u64, v7);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,0>(n128_u64, n128_u64 + 32 * (v9 >> 1), v7);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,0>(n128_u64 + 32, v12 - 32, v101);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,0>(n128_u64 + 64, n128_u64 + 32 + 32 * v11, v100);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,0>(v12 - 32, n128_u64 + 32 * (v9 >> 1), n128_u64 + 32 + 32 * v11);
      std::optional<std::string>::swap[abi:ne200100](n128_u64, (n128_u64 + 32 * (v9 >> 1)));
    }

    --a3;
    v13 = v103;
    if (a4)
    {
      goto LABEL_21;
    }

    v14 = *(n128_u64 + 24);
    if (*(n128_u64 - 8) == 1 && (*(n128_u64 + 24) & 1) != 0)
    {
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((n128_u64 - 32), n128_u64) & 0x80) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_21;
    }

    if (!*(n128_u64 - 8) && (*(n128_u64 + 24) & 1) != 0)
    {
LABEL_21:
      LOBYTE(__p[0]) = 0;
      v109 = 0;
      v15 = *(n128_u64 + 24);
      if (v15 == 1)
      {
        v16 = *a1;
        v108 = *(a1 + 16);
        *__p = v16;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v109 = 1;
      }

      for (j = a1 + 32; ; j += 32)
      {
        v18 = *(j + 24);
        if (!v15 || !*(j + 24))
        {
          break;
        }

        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(j, __p) & 0x80) == 0)
        {
          goto LABEL_31;
        }

LABEL_30:
        ;
      }

      if (v15 && !*(j + 24))
      {
        goto LABEL_30;
      }

LABEL_31:
      v19 = (j - 32);
      v20 = v7;
      if (j - 32 == a1)
      {
        v21 = v103;
        if (j < v103)
        {
          v26 = v7;
          do
          {
            while (1)
            {
              v21 = v26;
              v27 = *(v26 + 24);
              v26 -= 32;
              if (v27 != 1 || v15 == 0)
              {
                break;
              }

              v30 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v21, __p);
              if (v30 < 0 || j >= v21)
              {
                goto LABEL_59;
              }
            }

            v29 = (v27 | v15 ^ 1) != 1 || j >= v21;
          }

          while (!v29);
        }
      }

      else
      {
        do
        {
          while (1)
          {
            v21 = v7;
            v22 = *(v7 + 24);
            v7 -= 32;
            if (v22 != 1 || v15 == 0)
            {
              break;
            }

            v25 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v21, __p);
            if (v25 < 0)
            {
              goto LABEL_59;
            }
          }

          if (v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = v15 == 0;
          }
        }

        while (v24);
      }

LABEL_59:
      if (j < v21)
      {
        v31 = j;
        v32 = v21;
        do
        {
          std::optional<std::string>::swap[abi:ne200100](v31, v32);
          v33 = v109;
          do
          {
            while (1)
            {
              v31 += 32;
              if (*(v31 + 24) != 1 || (v33 & 1) == 0)
              {
                break;
              }

              if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v31, __p) & 0x80) == 0)
              {
                goto LABEL_68;
              }
            }
          }

          while (!*(v31 + 24) && (v33 & 1) != 0);
LABEL_68:
          v19 = (v31 - 32);
          v34 = v32 - 2;
          do
          {
            while (1)
            {
              v32 = v34;
              v35 = *(v34 + 24);
              v34 -= 2;
              if (v35 != 1 || (v33 & 1) == 0)
              {
                break;
              }

              if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v32, __p) & 0x80) != 0)
              {
                goto LABEL_75;
              }
            }
          }

          while (v35 || (v33 & 1) == 0);
LABEL_75:
          ;
        }

        while (v31 < v32);
      }

      v7 = v20;
      if (v19 != a1)
      {
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1, v19);
      }

      v36 = std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v19, __p);
      if (v109 == 1 && SHIBYTE(v108) < 0)
      {
        operator delete(__p[0]);
      }

      v29 = j >= v21;
      a2 = v103;
      if (v29)
      {
        v37 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *>(a1, v19);
        n128_u64 = v19[2].n128_u64;
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *>(&v19[2], v103))
        {
          a2 = v19;
          if (v37)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v37)
        {
          goto LABEL_85;
        }
      }

      else
      {
LABEL_85:
        std::__introsort<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,false>(a1, v19, a3, a4 & 1, v36);
        a4 = 0;
        n128_u64 = v19[2].n128_u64;
      }
    }

    else
    {
LABEL_86:
      v38 = v7;
      LOBYTE(__p[0]) = 0;
      v109 = 0;
      v39 = *(n128_u64 + 24);
      if (v39 == 1)
      {
        v40 = *n128_u64;
        v108 = *(n128_u64 + 16);
        *__p = v40;
        *(n128_u64 + 8) = 0;
        *(n128_u64 + 16) = 0;
        *n128_u64 = 0;
        v109 = 1;
        v41 = *(v103 - 8);
        if ((v41 & 1) == 0 || (v41 = 1, (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v38) & 0x80) == 0))
        {
LABEL_89:
          n128_u64 += 32;
          if (a1 + 32 < v103)
          {
            do
            {
              v42 = *(n128_u64 + 24);
              if (v39 && (v42 & 1) != 0)
              {
                if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, n128_u64) & 0x80) != 0)
                {
                  goto LABEL_105;
                }
              }

              else if ((v39 ^ 1) & v42)
              {
                goto LABEL_105;
              }

              n128_u64 += 32;
            }

            while (n128_u64 < v103);
          }

          goto LABEL_105;
        }
      }

      else
      {
        v41 = *(v103 - 8);
        if ((v41 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      v43 = n128_u64 + 32;
      do
      {
        while (1)
        {
          n128_u64 = v43;
          v44 = *(v43 + 24);
          v43 += 32;
          if (!v39 || (v44 & 1) == 0)
          {
            break;
          }

          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, n128_u64) & 0x80) != 0)
          {
            goto LABEL_104;
          }
        }
      }

      while (((v39 ^ 1) & v44 & 1) == 0);
LABEL_104:
      v13 = v103;
LABEL_105:
      v45 = v13;
      if (n128_u64 >= v13)
      {
        goto LABEL_126;
      }

      v46 = v99;
      if (!v39)
      {
        goto LABEL_110;
      }

LABEL_107:
      if (v41)
      {
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v46 + 1) & 0x80) == 0)
        {
          goto LABEL_113;
        }

        goto LABEL_111;
      }

LABEL_110:
      while (((v39 ^ 1) & v41) == 1)
      {
LABEL_111:
        v47 = *v46;
        v46 -= 32;
        v41 = v47;
        if (v39)
        {
          goto LABEL_107;
        }
      }

LABEL_113:
      v45 = (v46 + 8);
LABEL_126:
      while (n128_u64 < v45)
      {
        std::optional<std::string>::swap[abi:ne200100](n128_u64, v45);
        v48 = v109;
        v49 = v109 ^ 1;
        v50 = n128_u64 + 32;
        do
        {
          while (1)
          {
            n128_u64 = v50;
            v51 = *(v50 + 24);
            v50 += 32;
            if (!v48 || (v51 & 1) == 0)
            {
              break;
            }

            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, n128_u64) & 0x80) != 0)
            {
              goto LABEL_120;
            }
          }
        }

        while ((v49 & v51) != 1);
LABEL_120:
        v52 = v45 - 2;
        do
        {
          while (1)
          {
            v45 = v52;
            v53 = *(v52 + 24);
            v52 -= 2;
            if (!v48 || (v53 & 1) == 0)
            {
              break;
            }

            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v45) & 0x80) == 0)
            {
              goto LABEL_126;
            }
          }
        }

        while ((v49 & v53 & 1) != 0);
      }

      if (n128_u64 - 32 != a1)
      {
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1, (n128_u64 - 32));
      }

      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(n128_u64 - 32, __p);
      a2 = v103;
      v7 = v38;
      if (v109 == 1 && SHIBYTE(v108) < 0)
      {
        operator delete(__p[0]);
      }

      a4 = 0;
    }
  }

  v54 = *(n128_u64 + 24);
  if (a2[-1].n128_u8[8] == 1 && (*(n128_u64 + 24) & 1) != 0)
  {
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, n128_u64) & 0x80) != 0)
    {
LABEL_252:

      std::optional<std::string>::swap[abi:ne200100](n128_u64, v7);
    }
  }

  else if (!a2[-1].n128_u8[8] && (*(n128_u64 + 24) & 1) != 0)
  {
    goto LABEL_252;
  }
}

void std::optional<std::string>::swap[abi:ne200100](__int128 *a1, __int128 *a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (*(a1 + 24))
    {
      v4 = *(a1 + 2);
      v5 = *a1;
      v6 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 2) = v6;
      *a2 = v5;
      *(a2 + 2) = v4;
    }
  }

  else if (*(a1 + 24))
  {
    v7 = *a1;
    *(a2 + 2) = *(a1 + 2);
    *a2 = v7;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *a1 = 0;
    *(a2 + 24) = 1;
    if (*(a1 + 24) == 1)
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      *(a1 + 24) = 0;
    }
  }

  else
  {
    v8 = *a2;
    *(a1 + 2) = *(a2 + 2);
    *a1 = v8;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(a1 + 24) = 1;
    if (*(a2 + 24) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *(a2 + 24) = 0;
    }
  }
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  v7 = *(a1 + 24);
  if (v6 == 1 && (*(a1 + 24) & 1) != 0)
  {
    v8 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1);
    v6 = 1;
    if (v8 < 0)
    {
      goto LABEL_7;
    }
  }

  else if (!*(a2 + 24) && (*(a1 + 24) & 1) != 0)
  {
LABEL_7:
    if (v6 && *(a3 + 24))
    {
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2) & 0x80) == 0)
      {
        goto LABEL_10;
      }
    }

    else if ((v6 & (*(a3 + 24) ^ 1)) != 1)
    {
LABEL_10:
      std::optional<std::string>::swap[abi:ne200100](a1, a2);
      v9 = *(a2 + 24);
      if (*(a3 + 24) == 1 && (*(a2 + 24) & 1) != 0)
      {
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2) & 0x80) == 0)
        {
          return;
        }
      }

      else if (*(a3 + 24) || (*(a2 + 24) & 1) == 0)
      {
        return;
      }

      v14 = a2;
      goto LABEL_34;
    }

    v14 = a1;
LABEL_34:
    v15 = a3;
    goto LABEL_35;
  }

  v10 = *(a3 + 24);
  if (v6)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if ((v6 & (v10 ^ 1)) != 1)
    {
      return;
    }
  }

  else
  {
    v12 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2);
    if ((v12 & 0x80) == 0)
    {
      return;
    }
  }

  std::optional<std::string>::swap[abi:ne200100](a2, a3);
  v13 = *(a1 + 24);
  if (*(a2 + 24) == 1 && (*(a1 + 24) & 1) != 0)
  {
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1) & 0x80) == 0)
    {
      return;
    }
  }

  else if (*(a2 + 24) || (*(a1 + 24) & 1) == 0)
  {
    return;
  }

  v14 = a1;
  v15 = a2;
LABEL_35:

  std::optional<std::string>::swap[abi:ne200100](v14, v15);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,0>(a1, a2, a3);
  v8 = *(a3 + 24);
  if (*(a4 + 24) == 1 && (*(a3 + 24) & 1) != 0)
  {
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, a3) & 0x80) == 0)
    {
      return;
    }
  }

  else if (*(a4 + 24) || (*(a3 + 24) & 1) == 0)
  {
    return;
  }

  std::optional<std::string>::swap[abi:ne200100](a3, a4);
  v9 = *(a2 + 24);
  if (*(a3 + 24) == 1 && (*(a2 + 24) & 1) != 0)
  {
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2) & 0x80) == 0)
    {
      return;
    }
  }

  else if (*(a3 + 24) || (*(a2 + 24) & 1) == 0)
  {
    return;
  }

  std::optional<std::string>::swap[abi:ne200100](a2, a3);
  v10 = *(a1 + 24);
  if (*(a2 + 24) == 1 && (*(a1 + 24) & 1) != 0)
  {
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1) & 0x80) == 0)
    {
      return;
    }
  }

  else if (*(a2 + 24) || (*(a1 + 24) & 1) == 0)
  {
    return;
  }

  std::optional<std::string>::swap[abi:ne200100](a1, a2);
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,0>(a1, a2, a3, a4);
  v10 = *(a4 + 24);
  if (*(a5 + 24) == 1 && (*(a4 + 24) & 1) != 0)
  {
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, a4) & 0x80) == 0)
    {
      return;
    }
  }

  else if (*(a5 + 24) || (*(a4 + 24) & 1) == 0)
  {
    return;
  }

  std::optional<std::string>::swap[abi:ne200100](a4, a5);
  v11 = *(a3 + 24);
  if (*(a4 + 24) == 1 && (*(a3 + 24) & 1) != 0)
  {
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, a3) & 0x80) == 0)
    {
      return;
    }
  }

  else if (*(a4 + 24) || (*(a3 + 24) & 1) == 0)
  {
    return;
  }

  std::optional<std::string>::swap[abi:ne200100](a3, a4);
  v12 = *(a2 + 24);
  if (*(a3 + 24) == 1 && (*(a2 + 24) & 1) != 0)
  {
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2) & 0x80) == 0)
    {
      return;
    }
  }

  else if (*(a3 + 24) || (*(a2 + 24) & 1) == 0)
  {
    return;
  }

  std::optional<std::string>::swap[abi:ne200100](a2, a3);
  v13 = *(a1 + 24);
  if (*(a2 + 24) == 1 && (*(a1 + 24) & 1) != 0)
  {
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1) & 0x80) == 0)
    {
      return;
    }
  }

  else if (*(a2 + 24) || (*(a1 + 24) & 1) == 0)
  {
    return;
  }

  std::optional<std::string>::swap[abi:ne200100](a1, a2);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,0>(a1, a1 + 32, a2 - 32);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,0>(a1, a1 + 32, a1 + 64, a2 - 32);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,0>(a1, a1 + 32, a1 + 64, a1 + 96, a2 - 32);
        return 1;
    }

LABEL_13:
    v6 = a1 + 64;
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<void> &,std::optional<std::string> *,0>(a1, a1 + 32, a1 + 64);
    v7 = a1 + 96;
    v8 = 1;
    if (a1 + 96 == a2)
    {
      return v8;
    }

    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *(v6 + 24);
      if (*(v7 + 24) == 1 && (*(v6 + 24) & 1) != 0)
      {
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, v6) & 0x80) == 0)
        {
          goto LABEL_36;
        }

        LOBYTE(__p[0]) = 0;
        v18 = 0;
        *__p = *v7;
        v17 = *(v7 + 16);
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        v18 = 1;
      }

      else
      {
        if (*(v7 + 24) || (*(v6 + 24) & 1) == 0)
        {
          goto LABEL_36;
        }

        LOBYTE(__p[0]) = 0;
        v18 = 0;
      }

      for (i = v9; ; i -= 32)
      {
        v13 = a1 + i;
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + i + 96, (a1 + i + 64));
        if (i == -64)
        {
          break;
        }

        v14 = *(v13 + 56);
        if (v18 == 1 && (*(v13 + 56) & 1) != 0)
        {
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, (v13 + 32)) & 0x80) == 0)
          {
            v6 = a1 + i + 64;
            goto LABEL_32;
          }
        }

        else if (v18 || (*(v13 + 56) & 1) == 0)
        {
          goto LABEL_32;
        }

        v6 -= 32;
      }

      v6 = a1;
LABEL_32:
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v6, __p);
      if (v18 == 1 && SHIBYTE(v17) < 0)
      {
        operator delete(__p[0]);
      }

      if (++v10 == 8)
      {
        return v7 + 32 == a2;
      }

LABEL_36:
      v6 = v7;
      v9 += 32;
      v7 += 32;
      if (v7 == a2)
      {
        return 1;
      }
    }
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_13;
  }

  v5 = *(a1 + 24);
  if (*(a2 - 8) == 1 && (*(a1 + 24) & 1) != 0)
  {
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a2 - 32), a1) & 0x80) != 0)
    {
LABEL_41:
      std::optional<std::string>::swap[abi:ne200100](a1, (a2 - 32));
    }

    return 1;
  }

  v8 = 1;
  if (!*(a2 - 8) && (*(a1 + 24) & 1) != 0)
  {
    goto LABEL_41;
  }

  return v8;
}

__n128 std::__function::__func<vp::vx::Voice_Processor::end_downlink_initialization(void)::$_0,std::allocator<vp::vx::Voice_Processor::end_downlink_initialization(void)::$_0>,void ()(vp::vx::Voice_Processor&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C1BD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<vp::vx::Voice_Processor::end_uplink_initialization(void)::$_0,std::allocator<vp::vx::Voice_Processor::end_uplink_initialization(void)::$_0>,void ()(vp::vx::Voice_Processor&)>::operator()(uint64_t a1, uint64_t a2)
{
  vp::vx::data_flow::State_Transaction::commit(*(a2 + 784), *(a2 + 792));
  *(a2 + 776) = 3;
  v3 = *(a2 + 520);
  v4 = *(a2 + 528);

  vp::vx::Voice_Processor::components_end_initialization<vp::Domain>(v3, v4, 0);
}

void vp::vx::Voice_Processor::begin_initialization(vp *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v60 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    log = vp::get_log(a1);
    v21 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      log_context_info = vp::get_log_context_info(&__p, a1, "vp::vx::Voice_Processor]", 23);
      v23 = v54;
      v24 = v54;
      v25 = v53;
      v26 = vp::get_log(log_context_info);
      v21 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        if (v24 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v25;
        }

        p_p = __p;
        if (v24 >= 0)
        {
          p_p = &__p;
        }

        if (v27)
        {
          v29 = " ";
        }

        else
        {
          v29 = "";
        }

        *buf = 136315394;
        v57 = p_p;
        v58 = 2080;
        v59 = v29;
        _os_log_impl(&dword_2724B4000, v26, OS_LOG_TYPE_DEFAULT, "%s%sbegin downlink initialization", buf, 0x16u);
        LOBYTE(v24) = v54;
      }

      if ((v24 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }

    v30 = *(a1 + 194);
    v16 = v30 > 6;
    v31 = (1 << v30) & 0x68;
    if (!v16 && v31 != 0)
    {
      v19 = &unk_2881C1B90;
      goto LABEL_39;
    }

    v34 = vp::get_log(v21);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      v35 = vp::get_log_context_info(&__p, a1, "vp::vx::Voice_Processor]", 23);
      v36 = v54;
      v37 = v54;
      v38 = v53;
      v39 = vp::get_log(v35);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_63;
      }

      if (v37 >= 0)
      {
        v40 = v36;
      }

      else
      {
        v40 = v38;
      }

      v41 = __p;
      if (v37 >= 0)
      {
        v41 = &__p;
      }

      if (v40)
      {
        v42 = " ";
      }

      else
      {
        v42 = "";
      }

      *buf = 136315394;
      v57 = v41;
      v58 = 2080;
      v59 = v42;
      v43 = "%s%sfailed to begin downlink initialization";
      goto LABEL_62;
    }

LABEL_65:
    v33 = 0;
    *a3 = 8;
    goto LABEL_66;
  }

  if (!a2)
  {
    v5 = vp::get_log(a1);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      v7 = vp::get_log_context_info(&__p, a1, "vp::vx::Voice_Processor]", 23);
      v8 = v54;
      v9 = v54;
      v10 = v53;
      v11 = vp::get_log(v7);
      v6 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v9 >= 0)
        {
          v12 = v8;
        }

        else
        {
          v12 = v10;
        }

        v13 = __p;
        if (v9 >= 0)
        {
          v13 = &__p;
        }

        if (v12)
        {
          v14 = " ";
        }

        else
        {
          v14 = "";
        }

        *buf = 136315394;
        v57 = v13;
        v58 = 2080;
        v59 = v14;
        _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEFAULT, "%s%sbegin uplink initialization", buf, 0x16u);
        LOBYTE(v9) = v54;
      }

      if ((v9 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }

    v15 = *(a1 + 194);
    v16 = v15 > 6;
    v17 = (1 << v15) & 0x6E;
    if (!v16 && v17 != 0)
    {
      v19 = &unk_2881C1B00;
LABEL_39:
      __p = v19;
      v55 = &__p;
      vp::vx::Voice_Processor::call_sync(a1, &__p);
      std::__function::__value_func<void ()(vp::vx::Voice_Processor &)>::~__value_func[abi:ne200100](&__p);
      *a3 = 0;
      v33 = 1;
LABEL_66:
      *(a3 + 4) = v33;
      goto LABEL_67;
    }

    v44 = vp::get_log(v6);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      v45 = vp::get_log_context_info(&__p, a1, "vp::vx::Voice_Processor]", 23);
      v46 = v54;
      v37 = v54;
      v47 = v53;
      v39 = vp::get_log(v45);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_63;
      }

      if (v37 >= 0)
      {
        v48 = v46;
      }

      else
      {
        v48 = v47;
      }

      v49 = __p;
      if (v37 >= 0)
      {
        v49 = &__p;
      }

      if (v48)
      {
        v50 = " ";
      }

      else
      {
        v50 = "";
      }

      *buf = 136315394;
      v57 = v49;
      v58 = 2080;
      v59 = v50;
      v43 = "%s%sfailed to begin uplink initialization";
LABEL_62:
      _os_log_impl(&dword_2724B4000, v39, OS_LOG_TYPE_FAULT, v43, buf, 0x16u);
      LOBYTE(v37) = v54;
LABEL_63:
      if ((v37 & 0x80) != 0)
      {
        operator delete(__p);
      }

      goto LABEL_65;
    }

    goto LABEL_65;
  }

LABEL_67:
  v51 = *MEMORY[0x277D85DE8];
}

void std::__function::__func<vp::vx::Voice_Processor::begin_downlink_initialization(void)::$_0,std::allocator<vp::vx::Voice_Processor::begin_downlink_initialization(void)::$_0>,void ()(vp::vx::Voice_Processor&)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = 1;
  v3[0] = a2;
  v3[1] = &v4;
  vp::vx::Voice_Processor::exception_guard(a2, "update initialization counters", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::update_initialization_counts(vp::Domain)::$_0>, v3);
  *(a2 + 776) = 4;
  vp::vx::Voice_Processor::components_begin_initialization<vp::Domain>(*(a2 + 520), *(a2 + 528), 1);
}

void vp::vx::Voice_Processor::components_begin_initialization<vp::Domain>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v6 + 64))(v6, a3);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v5 += 2;
    }

    while (v5 != a2);
  }
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::update_initialization_counts(vp::Domain)::$_0>(std::pmr *a1)
{
  v1 = **a1;
  v2 = 24;
  if (!**(*a1 + 8))
  {
    v2 = 0;
  }

  v3 = v1 + v2;
  v7 = 0;
  v8 = 0;
  default_resource = std::pmr::get_default_resource(a1);
  vp::vx::data_flow::State<void>::get_value((v3 + 808), &default_resource);
  v4 = *vp::vx::data_flow::Value::view_storage(&default_resource);
  vp::vx::data_flow::Value::~Value(&default_resource);
  default_resource = std::pmr::get_default_resource(v5);
  v7 = 0;
  v8 = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(&default_resource) = v4 + 1;
  vp::vx::data_flow::State<void>::set_value((v3 + 808), &default_resource, *(v1 + 784));
  vp::vx::data_flow::Value::~Value(&default_resource);
}

void sub_2726F3CA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::data_flow::Value::~Value(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<vp::vx::Voice_Processor::begin_uplink_initialization(void)::$_0,std::allocator<vp::vx::Voice_Processor::begin_uplink_initialization(void)::$_0>,void ()(vp::vx::Voice_Processor&)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v3[0] = a2;
  v3[1] = &v4;
  vp::vx::Voice_Processor::exception_guard(a2, "update initialization counters", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::update_initialization_counts(vp::Domain)::$_0>, v3);
  *(a2 + 776) = 2;
  vp::vx::Voice_Processor::components_begin_initialization<vp::Domain>(*(a2 + 520), *(a2 + 528), 0);
}

void vp::vx::Voice_Processor::remove_property_listener(int a1@<W1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v3 = a2;
  *a3 = 0;
  a3[4] = 1;
  operator new();
}

void std::__function::__func<vp::vx::Voice_Processor::remove_property_listener(vp::vx::Property_ID,long long)::$_0,std::allocator<vp::vx::Voice_Processor::remove_property_listener(vp::vx::Property_ID,long long)::$_0>,void ()(vp::vx::Voice_Processor&)>::operator()(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v41 = *(a1 + 32);
  v4 = vp::reflect_value_name_tag<vp::vx::Property_ID,128ul>(**(a1 + 8));
  v39 = v5;
  v40 = v4;
  v7 = **(a1 + 24);
  v44 = **(a1 + 8);
  v6 = v44;
  v8 = boost::container::flat_map<vp::vx::Property_ID,vp::vx::Property,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,vp::vx::Property>>>::at(*(a2 + 976), *(a2 + 984), v44);
  v9 = boost::container::flat_map<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>>::priv_subscript(a2 + 1000, &v44);
  v10 = v9;
  v12 = *v9;
  v11 = v9[1];
  if (*v9 == v11)
  {
LABEL_5:
    v14 = (v11 - v12);
  }

  else
  {
    v13 = *v9;
    while (*v13 != v7)
    {
      v13 += 16;
      if (v13 == v11)
      {
        goto LABEL_5;
      }
    }

    if (v13 == v11 || (v15 = (v13 + 16), (v13 + 16) == v11))
    {
      v17 = *v9;
      v18 = v9[1];
    }

    else
    {
      do
      {
        if (*v15 != v7)
        {
          *v13 = *v15;
          std::__destroy_at[abi:ne200100]<vp::Block<void ()>,0>((v13 + 8));
          v16 = v15[1];
          v15[1] = 0;
          *(v13 + 8) = v16;
          v13 += 16;
        }

        v15 += 2;
      }

      while (v15 != v11);
      v17 = *v10;
      v18 = v10[1];
    }

    v14 = (v11 - v12);
    if (v13 == v18)
    {
      v12 = v17;
      v11 = v18;
    }

    else
    {
      v11 = v13;
      while (v18 != v13)
      {
        v18 -= 16;
        std::pmr::polymorphic_allocator<vp::vx::Property_Manager::Listener>::destroy[abi:ne200100]<vp::vx::Property_Manager::Listener>(v18);
      }

      v10[1] = v13;
      v12 = *v10;
    }
  }

  if (v14 != (v11 - v12))
  {
    v9 = boost::container::flat_map<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>>::priv_subscript(a2 + 1000, &v44);
    if (*v9 == v9[1])
    {
      v19 = boost::container::flat_map<vp::vx::Property_ID,unsigned int,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,unsigned int>>>::priv_subscript(a2 + 1032, &v44);
      vp::vx::data_flow::State<void>::unregister_listener(v8, *v19);
      boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>>::find(__dst, a2 + 1032, &v44);
      v20 = *(a2 + 1040);
      v21 = *(a2 + 1048);
      if (!v20 && v21)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v22 = v20 + 8 * v21;
      if (*__dst != v22)
      {
        if (v20 > *__dst || *__dst >= v22)
        {
          goto LABEL_55;
        }

        if (*__dst && *__dst + 8 != v22)
        {
          memmove(*__dst, (*__dst + 8), v22 - (*__dst + 8));
          v21 = *(a2 + 1048);
        }

        *(a2 + 1048) = v21 - 1;
      }

      v9 = boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>>::find(__p, a2 + 1000, &v44);
      v23 = *(a2 + 1008);
      v24 = *(a2 + 1016);
      if (!v23 && v24)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v25 = &v23[40 * v24];
      if (__p[0] != v25)
      {
        if (v23 <= __p[0] && __p[0] < v25)
        {
          for (i = (__p[0] + 40); i != v25; i += 5)
          {
            *(i - 10) = *i;
            std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__move_assign(i - 4, (i + 1));
          }

          *__dst = v25 - 4;
          v9 = std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__destroy_vector::operator()[abi:ne200100](__dst);
          --*(a2 + 1016);
          goto LABEL_39;
        }

LABEL_55:
        __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
      }
    }
  }

LABEL_39:
  v27 = *(a1 + 16);
  if ((*(v27 + 4) & 1) == 0)
  {
    *(v27 + 4) = 1;
  }

  log = vp::get_log(v9);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, v41, "vp::vx::Voice_Processor]", 23);
    v30 = v43;
    v31 = v43;
    v32 = __p[1];
    v33 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      if (v31 >= 0)
      {
        v34 = v30;
      }

      else
      {
        v34 = v32;
      }

      v35 = __p[0];
      if (v31 >= 0)
      {
        v35 = __p;
      }

      v36 = **(a1 + 24);
      *__dst = 136316418;
      if (v34)
      {
        v37 = " ";
      }

      else
      {
        v37 = "";
      }

      *&__dst[4] = v35;
      v46 = 2080;
      v47 = v37;
      v48 = 2048;
      v49 = v36;
      v50 = 1024;
      v51 = v6;
      v52 = 1040;
      v53 = v39;
      v54 = 2080;
      v55 = v40;
      _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_DEFAULT, "%s%sremoved listener %lld for property %u '%.*s'", __dst, 0x36u);
      LOBYTE(v31) = v43;
    }

    if ((v31 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

__n128 std::__function::__func<vp::vx::Voice_Processor::remove_property_listener(vp::vx::Property_ID,long long)::$_0,std::allocator<vp::vx::Voice_Processor::remove_property_listener(vp::vx::Property_ID,long long)::$_0>,void ()(vp::vx::Voice_Processor&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C1AB8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void vp::vx::Voice_Processor::add_property_listener(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v3 = a3;
  v5 = 0;
  LOBYTE(v6) = 1;
  operator new();
}

void std::__function::__func<vp::vx::Voice_Processor::add_property_listener(vp::vx::Property_ID,void({block_pointer})(unsigned int))::$_0,std::allocator<vp::vx::Voice_Processor::add_property_listener(vp::vx::Property_ID,void({block_pointer})(unsigned int))::$_0>,void ()(vp::vx::Voice_Processor&)>::operator()(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = vp::reflect_value_name_tag<vp::vx::Property_ID,128ul>(**(a1 + 8));
  v7 = v6;
  v9 = **(a1 + 24);
  v53 = **(a1 + 8);
  v8 = v53;
  boost::container::flat_map<vp::vx::Property_ID,vp::vx::Property,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,vp::vx::Property>>>::at(*(a2 + 976), *(a2 + 984), v53);
  v10 = *(a2 + 1120) + 1;
  *(a2 + 1120) = v10;
  v11 = boost::container::flat_map<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>>::priv_subscript(a2 + 1000, &v53);
  *buf = v10;
  v52 = v7;
  if (v9)
  {
    v12 = _Block_copy(v9);
  }

  else
  {
    v12 = 0;
  }

  *&buf[8] = v12;
  v14 = v11[1];
  v13 = v11[2];
  if (v14 >= v13)
  {
    v50 = v4;
    v51 = v5;
    v15 = *v11;
    v16 = (v14 - *v11) >> 4;
    v17 = v16 + 1;
    if ((v16 + 1) >> 60)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v18 = v13 - v15;
    if (v18 >> 3 > v17)
    {
      v17 = v18 >> 3;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFF0)
    {
      v19 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      v20 = std::pmr::polymorphic_allocator<vp::vx::Property_Manager::Listener>::allocate[abi:ne200100]((v11 + 3), v19);
      v15 = *v11;
      v14 = v11[1];
    }

    else
    {
      v20 = 0;
    }

    v21 = (v14 - *v11) >> 4;
    v22 = (v20 + 16 * v16);
    v23 = v20 + 16 * v19;
    *v22 = v10;
    *&buf[8] = 0;
    v22[1] = v12;
    v24 = v22 + 2;
    *&v25 = v22 + 2;
    *(&v25 + 1) = v23;
    v49 = v25;
    v26 = &v22[-2 * v21];
    if (v15 != v14)
    {
      v27 = v15;
      v28 = v26;
      do
      {
        *v28 = *v27;
        v29 = v27[1];
        v27[1] = 0;
        v28[1] = v29;
        v27 += 2;
        v28 += 2;
      }

      while (v27 != v14);
      do
      {
        std::pmr::polymorphic_allocator<vp::vx::Property_Manager::Listener>::destroy[abi:ne200100]<vp::vx::Property_Manager::Listener>(v15);
        v15 += 16;
      }

      while (v15 != v14);
    }

    v30 = *v11;
    *v11 = v26;
    v31 = v11[2];
    *(v11 + 1) = v49;
    if (v30)
    {
      std::allocator_traits<vp::Allocator<vp::vx::Property_Manager::Listener>>::deallocate[abi:ne200100](v11[3], v30, (v31 - v30) >> 4);
    }

    v32 = *&buf[8];
    v11[1] = v24;
    v4 = v50;
    v5 = v51;
    if (v32)
    {
      _Block_release(v32);
    }
  }

  else
  {
    *v14 = v10;
    v14[1] = v12;
    v11[1] = (v14 + 2);
  }

  v33 = boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,unsigned int>>>::find(buf, a2 + 1032, &v53);
  v34 = *(a2 + 1040);
  v35 = *(a2 + 1048);
  if (!v34 && v35)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (*buf == v34 + 8 * v35)
  {
    v63[0] = &unk_2881BE188;
    v63[1] = v8;
    v63[2] = a2 + 968;
    v63[3] = v63;
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v64, v63);
    operator new();
  }

  v36 = *(a1 + 16);
  v37 = *(v36 + 8);
  *v36 = v10;
  if ((v37 & 1) == 0)
  {
    *(v36 + 8) = 1;
  }

  log = vp::get_log(v33);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(v64, v4, "vp::vx::Voice_Processor]", 23);
    v40 = v65;
    v41 = v65;
    v42 = v64[1];
    v43 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      if (v41 >= 0)
      {
        v44 = v40;
      }

      else
      {
        v44 = v42;
      }

      v45 = v64[0];
      if (v41 >= 0)
      {
        v45 = v64;
      }

      v46 = **(a1 + 16);
      *buf = 136316418;
      if (v44)
      {
        v47 = " ";
      }

      else
      {
        v47 = "";
      }

      *&buf[4] = v45;
      *&buf[12] = 2080;
      *&buf[14] = v47;
      v55 = 2048;
      v56 = v46;
      v57 = 1024;
      v58 = v8;
      v59 = 1040;
      v60 = v52;
      v61 = 2080;
      v62 = v5;
      _os_log_impl(&dword_2724B4000, v43, OS_LOG_TYPE_DEFAULT, "%s%sadded listener %lld for property %u '%.*s'", buf, 0x36u);
      LOBYTE(v41) = v65;
    }

    if ((v41 & 0x80) != 0)
    {
      operator delete(v64[0]);
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_2726F4A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, __int16 a19, uint64_t a20, __int16 a21, int a22, __int16 a23, int a24, __int16 a25, uint64_t a26, __int16 a27, uint64_t a28, uint64_t a29, char a30)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

__n128 std::__function::__func<vp::vx::Voice_Processor::add_property_listener(vp::vx::Property_ID,void({block_pointer})(unsigned int))::$_0,std::allocator<vp::vx::Voice_Processor::add_property_listener(vp::vx::Property_ID,void({block_pointer})(unsigned int))::$_0>,void ()(vp::vx::Voice_Processor&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C1A70;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void vp::vx::Voice_Processor::set_property(int a1@<W1>, uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = a1;
  *a2 = 11;
  *(a2 + 4) = 0;
  operator new();
}

void sub_2726F4DA0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<vp::vx::Voice_Processor::set_property(vp::vx::Property_ID,vp::Blob const&)::$_0,std::allocator<vp::vx::Voice_Processor::set_property(vp::vx::Property_ID,vp::Blob const&)::$_0>,void ()(vp::vx::Voice_Processor&)>::operator()(uint64_t a1, uint64_t a2)
{
  v81[19] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v5 = vp::reflect_value_name_tag<vp::vx::Property_ID,128ul>(**(a1 + 8));
  v53 = v6;
  v54 = v5;
  v7 = **(a1 + 8);
  log = vp::get_log(v5);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, v4, "vp::vx::Voice_Processor]", 23);
    v10 = HIBYTE(v60);
    v11 = SHIBYTE(v60);
    v12 = *&__p[8];
    v13 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (v11 >= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      v15 = *__p;
      if (v11 >= 0)
      {
        v15 = __p;
      }

      *buf = 136316162;
      *&buf[4] = v15;
      v69 = 2080;
      if (v14)
      {
        v16 = " ";
      }

      else
      {
        v16 = "";
      }

      *v70 = v16;
      *&v70[8] = 1024;
      *v71 = v7;
      *&v71[4] = 1040;
      *&v71[6] = v53;
      v72 = 2080;
      *v73 = v54;
      _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEFAULT, "%s%sset property %u '%.*s'", buf, 0x2Cu);
      LOBYTE(v11) = HIBYTE(v60);
    }

    if ((v11 & 0x80) != 0)
    {
      operator delete(*__p);
    }
  }

  v17 = *(a1 + 32);
  v18 = boost::container::flat_map<vp::vx::Property_ID,vp::vx::Property,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,vp::vx::Property>>>::at(*(a2 + 976), *(a2 + 984), **(a1 + 8));
  v19 = v18;
  if (v18[6] == 1)
  {
    v18 = (*(**(v18 + 4) + 16))(*(v18 + 4));
    if (v18)
    {
      (*(*v18 + 16))(buf);
      if (*(a2 + 792))
      {
        vp::vx::data_flow::State<void>::set_value(v19, buf, *(a2 + 784));
      }

      else
      {
        vp::vx::data_flow::State<void>::set_value(v19, buf);
      }

      vp::vx::data_flow::Value::~Value(buf);
      v34 = *(a1 + 24);
      if ((*(v34 + 4) & 1) == 0)
      {
        *(v34 + 4) = 1;
      }

      v35 = *(a1 + 8);
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
      *__p = *v35;
      v36 = boost::container::flat_map<vp::vx::Property_ID,vp::vx::Property,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,vp::vx::Property>>>::at(a2 + 968, __p);
      v37 = (*(**(v36 + 4) + 32))(*(v36 + 4));
      if (!v37)
      {
        goto LABEL_72;
      }

      v38 = v37;
      vp::vx::Property::read(__p, v36, (a2 + 784));
      (*(*v38 + 16))(v38, __p, &v70[2]);
      vp::vx::data_flow::Value::~Value(__p);
      v40 = vp::get_log(v39);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_72;
      }

      v41 = v57;
      v42 = vp::get_log_context_info(v57, v4, "vp::vx::Voice_Processor]", 23);
      v43 = v58;
      if ((v58 & 0x80u) == 0)
      {
        v44 = v58;
      }

      else
      {
        v44 = v57[1];
      }

      v45 = vp::get_log(v42);
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
LABEL_70:
        if ((v43 & 0x80) != 0)
        {
          operator delete(v57[0]);
        }

LABEL_72:
        *buf = *MEMORY[0x277D82818];
        v51 = *(MEMORY[0x277D82818] + 72);
        *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
        *&v70[2] = v51;
        *v71 = MEMORY[0x277D82878] + 16;
        if (v78 < 0)
        {
          operator delete(v77);
        }

        *v71 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v71[8]);
        std::iostream::~basic_iostream();
        MEMORY[0x2743CBE30](v81);
        goto LABEL_75;
      }

      if (v43 < 0)
      {
        v41 = v57[0];
      }

      if ((v80 & 0x10) != 0)
      {
        v47 = v79;
        if (v79 < v76)
        {
          v79 = v76;
          v47 = v76;
        }

        v48 = v75;
      }

      else
      {
        if ((v80 & 8) == 0)
        {
          v46 = 0;
          v56 = 0;
LABEL_63:
          *(&__dst + v46) = 0;
          v49 = " ";
          if (!v44)
          {
            v49 = "";
          }

          *__p = 136316418;
          p_dst = &__dst;
          if (v56 < 0)
          {
            p_dst = __dst;
          }

          *&__p[4] = v41;
          *&__p[12] = 2080;
          *&__p[14] = v49;
          v60 = 1024;
          v61 = v7;
          v62 = 1040;
          v63 = v53;
          v64 = 2080;
          v65 = v54;
          v66 = 2080;
          v67 = p_dst;
          _os_log_impl(&dword_2724B4000, v45, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' is %s", __p, 0x36u);
          if (v56 < 0)
          {
            operator delete(__dst);
          }

          LOBYTE(v43) = v58;
          goto LABEL_70;
        }

        v48 = *&v73[4];
        v47 = v74;
      }

      v46 = v47 - v48;
      if (v47 - v48 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v46 >= 0x17)
      {
        operator new();
      }

      v56 = v47 - v48;
      if (v46)
      {
        memmove(&__dst, v48, v46);
      }

      goto LABEL_63;
    }

    v20 = 9;
  }

  else
  {
    v20 = 10;
  }

  v21 = *(a1 + 24);
  v22 = *(v21 + 4);
  *v21 = v20;
  if (v22 == 1)
  {
    *(v21 + 4) = 0;
  }

  v23 = vp::get_log(v18);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = vp::get_log_context_info(__p, v4, "vp::vx::Voice_Processor]", 23);
    v25 = HIBYTE(v60);
    v26 = SHIBYTE(v60);
    v27 = *&__p[8];
    v28 = vp::get_log(v24);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      if (v26 >= 0)
      {
        v29 = v25;
      }

      else
      {
        v29 = v27;
      }

      if (v26 >= 0)
      {
        v30 = __p;
      }

      else
      {
        v30 = *__p;
      }

      if (v29)
      {
        v31 = " ";
      }

      else
      {
        v31 = "";
      }

      v32 = *v21 - 1;
      if (v32 > 0xA)
      {
        v33 = "bad argument";
      }

      else
      {
        v33 = off_279E4A470[v32];
      }

      *buf = 136316418;
      *&buf[4] = v30;
      v69 = 2080;
      *v70 = v31;
      *&v70[8] = 1024;
      *v71 = v7;
      *&v71[4] = 1040;
      *&v71[6] = v53;
      v72 = 2080;
      *v73 = v54;
      *&v73[8] = 2080;
      *&v73[10] = v33;
      _os_log_impl(&dword_2724B4000, v28, OS_LOG_TYPE_ERROR, "%s%sfailed to set property %u '%.*s' - %s", buf, 0x36u);
      LOBYTE(v26) = HIBYTE(v60);
    }

    if ((v26 & 0x80) != 0)
    {
      operator delete(*__p);
    }
  }

LABEL_75:
  if ((*(v4 + 776) - 5) <= 1)
  {
    vp::vx::data_flow::State_Transaction::commit(*(a2 + 784), *(a2 + 792));
  }

  v52 = *MEMORY[0x277D85DE8];
}

void sub_2726F54FC(_Unwind_Exception *exception_object, int a2, uint64_t a3, void *__p, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  if (a2)
  {
    if (v38 < 0)
    {
      operator delete(__p);
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a23);
    MEMORY[0x2743CBE30](va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2726F5498);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<vp::vx::Voice_Processor::set_property(vp::vx::Property_ID,vp::Blob const&)::$_0,std::allocator<vp::vx::Voice_Processor::set_property(vp::vx::Property_ID,vp::Blob const&)::$_0>,void ()(vp::vx::Voice_Processor&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C1A28;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void vp::vx::Voice_Processor::get_property_info(int a1@<W1>, uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = a1;
  *a2 = 11;
  *(a2 + 16) = 0;
  operator new();
}

void sub_2726F5778(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_2726F5868(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(vp::vx::Voice_Processor const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t ___ZNK2vp2vx15Voice_Processor9call_syncENSt3__18functionIFvRKS1_EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, *(a1 + 32));
}

void sub_2726F5944(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726F5934);
}

uint64_t std::__function::__value_func<void ()(vp::vx::Voice_Processor const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<vp::vx::Voice_Processor::get_property_info(vp::vx::Property_ID)::$_0,std::allocator<vp::vx::Voice_Processor::get_property_info(vp::vx::Property_ID)::$_0>,void ()(vp::vx::Voice_Processor const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v41 = vp::reflect_value_name_tag<vp::vx::Property_ID,128ul>(**(a1 + 8));
  v6 = v5;
  v7 = **(a1 + 8);
  log = vp::get_log(v41);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(&__p, v4, "vp::vx::Voice_Processor]", 23);
    v10 = v45;
    v11 = v45;
    v12 = v44;
    v13 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (v11 >= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      p_p = __p;
      if (v11 >= 0)
      {
        p_p = &__p;
      }

      *buf = 136316162;
      *&buf[4] = p_p;
      v47 = 2080;
      if (v14)
      {
        v16 = " ";
      }

      else
      {
        v16 = "";
      }

      v48 = v16;
      v49 = 1024;
      v50 = v7;
      v51 = 1040;
      v52 = v6;
      v53 = 2080;
      v54 = v41;
      _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEFAULT, "%s%sget property %u '%.*s' info", buf, 0x2Cu);
      LOBYTE(v11) = v45;
    }

    if ((v11 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  *buf = **(a1 + 8);
  v17 = boost::container::flat_map<vp::vx::Property_ID,vp::vx::Property,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,vp::vx::Property>>>::at(a2 + 968, buf);
  v18 = (*(**(v17 + 4) + 16))(*(v17 + 4));
  if (v18)
  {
    v19 = v18;
    v20 = v17[6] == 1;
    vp::vx::Property::read(buf, v17, (a2 + 784));
    v21 = (*(*v19 + 32))(v19, buf);
    vp::vx::data_flow::Value::~Value(buf);
    v24 = *(a1 + 24);
    v23 = (a1 + 24);
    v22 = v24;
    if (*(v24 + 16) == 1)
    {
      *buf = *v42;
      *&buf[3] = *&v42[3];
      *v22 = v21;
      *(v22 + 8) = v20;
      *(v22 + 9) = *buf;
      *(v22 + 12) = *&buf[3];
    }

    else
    {
      *v22 = v21;
      *(v22 + 8) = v20;
      *(v22 + 9) = *v42;
      *(v22 + 12) = *&v42[3];
      *(v22 + 16) = 1;
    }
  }

  else
  {
    v26 = *(a1 + 24);
    v23 = (a1 + 24);
    v25 = v26;
    v27 = *(v26 + 16);
    *v26 = 9;
    if (v27 == 1)
    {
      *(v25 + 16) = 0;
    }
  }

  v28 = *v23;
  if ((*(v28 + 16) & 1) == 0)
  {
    v29 = vp::get_log(v18);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = vp::get_log_context_info(&__p, v4, "vp::vx::Voice_Processor]", 23);
      v31 = v45;
      v32 = v45;
      v33 = v44;
      v34 = vp::get_log(v30);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        if (v32 >= 0)
        {
          v35 = v31;
        }

        else
        {
          v35 = v33;
        }

        if (v32 >= 0)
        {
          v36 = &__p;
        }

        else
        {
          v36 = __p;
        }

        if (v35)
        {
          v37 = " ";
        }

        else
        {
          v37 = "";
        }

        v38 = *v28 - 1;
        if (v38 > 0xA)
        {
          v39 = "bad argument";
        }

        else
        {
          v39 = off_279E4A470[v38];
        }

        *buf = 136316418;
        *&buf[4] = v36;
        v47 = 2080;
        v48 = v37;
        v49 = 1024;
        v50 = v7;
        v51 = 1040;
        v52 = v6;
        v53 = 2080;
        v54 = v41;
        v55 = 2080;
        v56 = v39;
        _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_DEFAULT, "%s%sfailed to get property %u '%.*s' info - %s", buf, 0x36u);
        LOBYTE(v32) = v45;
      }

      if ((v32 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_2726F5DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    vp::vx::data_flow::Value::~Value(&a15);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2726F5C2CLL);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<vp::vx::Voice_Processor::get_property_info(vp::vx::Property_ID)::$_0,std::allocator<vp::vx::Voice_Processor::get_property_info(vp::vx::Property_ID)::$_0>,void ()(vp::vx::Voice_Processor const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C19E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void vp::vx::Voice_Processor::get_property(int a1@<W1>, uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = a1;
  *a2 = 11;
  *(a2 + 4) = 0;
  operator new();
}

void sub_2726F5FB0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<vp::vx::Voice_Processor::get_property(vp::vx::Property_ID,vp::Mutable_Blob &)::$_0,std::allocator<vp::vx::Voice_Processor::get_property(vp::vx::Property_ID,vp::Mutable_Blob &)::$_0>,void ()(vp::vx::Voice_Processor const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v36 = vp::reflect_value_name_tag<vp::vx::Property_ID,128ul>(**(a1 + 8));
  v6 = v5;
  v7 = **(a1 + 8);
  log = vp::get_log(v36);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(&__p, v4, "vp::vx::Voice_Processor]", 23);
    v10 = v39;
    v11 = v39;
    v12 = v38;
    v13 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (v11 >= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      p_p = __p;
      if (v11 >= 0)
      {
        p_p = &__p;
      }

      *buf = 136316162;
      v41 = p_p;
      v42 = 2080;
      if (v14)
      {
        v16 = " ";
      }

      else
      {
        v16 = "";
      }

      v43 = v16;
      v44 = 1024;
      v45 = v7;
      v46 = 1040;
      v47 = v6;
      v48 = 2080;
      v49 = v36;
      _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEFAULT, "%s%sget property %u '%.*s'", buf, 0x2Cu);
      LOBYTE(v11) = v39;
    }

    if ((v11 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  v17 = *(a1 + 32);
  *buf = **(a1 + 8);
  v18 = boost::container::flat_map<vp::vx::Property_ID,vp::vx::Property,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,vp::vx::Property>>>::at(a2 + 968, buf);
  v19 = (*(**(v18 + 4) + 16))(*(v18 + 4));
  if (v19)
  {
    v20 = v19;
    vp::vx::Property::read(buf, v18, (a2 + 784));
    (*(*v20 + 24))(v20, buf, v17);
    vp::vx::data_flow::Value::~Value(buf);
    v21 = *(a1 + 24);
    if ((*(v21 + 4) & 1) == 0)
    {
      *(v21 + 4) = 1;
    }
  }

  else
  {
    v22 = *(a1 + 24);
    v23 = *(v22 + 4);
    *v22 = 9;
    if (v23 == 1)
    {
      *(v22 + 4) = 0;
    }

    v24 = vp::get_log(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = vp::get_log_context_info(&__p, v4, "vp::vx::Voice_Processor]", 23);
      v26 = v39;
      v27 = v39;
      v28 = v38;
      v29 = vp::get_log(v25);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        if (v27 >= 0)
        {
          v30 = v26;
        }

        else
        {
          v30 = v28;
        }

        if (v27 >= 0)
        {
          v31 = &__p;
        }

        else
        {
          v31 = __p;
        }

        if (v30)
        {
          v32 = " ";
        }

        else
        {
          v32 = "";
        }

        v33 = *v22 - 1;
        if (v33 > 0xA)
        {
          v34 = "bad argument";
        }

        else
        {
          v34 = off_279E4A470[v33];
        }

        *buf = 136316418;
        v41 = v31;
        v42 = 2080;
        v43 = v32;
        v44 = 1024;
        v45 = v7;
        v46 = 1040;
        v47 = v6;
        v48 = 2080;
        v49 = v36;
        v50 = 2080;
        v51 = v34;
        _os_log_impl(&dword_2724B4000, v29, OS_LOG_TYPE_ERROR, "%s%sfailed to get property %u '%.*s' - %s", buf, 0x36u);
        LOBYTE(v27) = v39;
      }

      if ((v27 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_2726F631C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    vp::vx::data_flow::Value::~Value(&a13);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2726F61B0);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<vp::vx::Voice_Processor::get_property(vp::vx::Property_ID,vp::Mutable_Blob &)::$_0,std::allocator<vp::vx::Voice_Processor::get_property(vp::vx::Property_ID,vp::Mutable_Blob &)::$_0>,void ()(vp::vx::Voice_Processor const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C1998;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_1,std::allocator<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (!v2 || (v3 = std::__shared_weak_count::lock(v2)) == 0)
  {
    v34 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    log = vp::get_log(v3);
    v7 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
    if (v7)
    {
      log_context_info = vp::get_log_context_info(&__p, v5, "vp::vx::Voice_Processor]", 23);
      v9 = v76;
      v10 = v76;
      v11 = v75;
      v12 = vp::get_log(log_context_info);
      v7 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
      if (v7)
      {
        if (v10 >= 0)
        {
          v13 = v9;
        }

        else
        {
          v13 = v11;
        }

        p_p = __p;
        if (v10 >= 0)
        {
          p_p = &__p;
        }

        if (v13)
        {
          v15 = " ";
        }

        else
        {
          v15 = "";
        }

        *buf = 136315394;
        v78 = p_p;
        v79 = 2080;
        v80 = v15;
        _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_INFO, "%s%send state change", buf, 0x16u);
        LOBYTE(v10) = v76;
      }

      if ((v10 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }

    if ((*(v5 + 776) - 5) <= 1 && *(v5 + 952) | *(v5 + 912))
    {
      v16 = vp::get_log(v7);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = vp::get_log_context_info(&__p, v5, "vp::vx::Voice_Processor]", 23);
        v18 = v76;
        v19 = v75;
        v20 = vp::get_log(v17);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          if ((v18 & 0x80u) == 0)
          {
            v21 = v18;
          }

          else
          {
            v21 = v19;
          }

          v22 = __p;
          if ((v76 & 0x80u) == 0)
          {
            v22 = &__p;
          }

          if (v21)
          {
            v23 = " ";
          }

          else
          {
            v23 = "";
          }

          *buf = 136315394;
          v78 = v22;
          v79 = 2080;
          v80 = v23;
          _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_INFO, "%s%sinternal re-configuration is required", buf, 0x16u);
        }

        if (v76 < 0)
        {
          operator delete(__p);
        }
      }

      vp::vx::Voice_Processor::handle_configuration_changes(v73, v5);
      if (v73[4] == 1)
      {
        *(v5 + 776) = 5;
        v25 = vp::get_log(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = vp::get_log_context_info(&__p, v5, "vp::vx::Voice_Processor]", 23);
          v27 = v76;
          v28 = v75;
          v29 = vp::get_log(v26);
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            goto LABEL_58;
          }

          if ((v27 & 0x80u) == 0)
          {
            v30 = v27;
          }

          else
          {
            v30 = v28;
          }

          v31 = __p;
          if ((v76 & 0x80u) == 0)
          {
            v31 = &__p;
          }

          if (v30)
          {
            v32 = " ";
          }

          else
          {
            v32 = "";
          }

          *buf = 136315394;
          v78 = v31;
          v79 = 2080;
          v80 = v32;
          v33 = "%s%smanaged to handle configuration changes";
LABEL_56:
          v42 = v29;
          v43 = OS_LOG_TYPE_INFO;
          goto LABEL_57;
        }
      }

      else
      {
        *(v5 + 776) = 6;
        v65 = vp::get_log(v24);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v66 = vp::get_log_context_info(&__p, v5, "vp::vx::Voice_Processor]", 23);
          v67 = v76;
          v68 = v75;
          v69 = vp::get_log(v66);
          if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
LABEL_58:
            if (v76 < 0)
            {
              operator delete(__p);
            }

            goto LABEL_60;
          }

          if ((v67 & 0x80u) == 0)
          {
            v70 = v67;
          }

          else
          {
            v70 = v68;
          }

          v71 = __p;
          if ((v76 & 0x80u) == 0)
          {
            v71 = &__p;
          }

          if (v70)
          {
            v72 = " ";
          }

          else
          {
            v72 = "";
          }

          *buf = 136315394;
          v78 = v71;
          v79 = 2080;
          v80 = v72;
          v33 = "%s%sfailed to handle configuration changes";
          v42 = v69;
          v43 = OS_LOG_TYPE_ERROR;
LABEL_57:
          _os_log_impl(&dword_2724B4000, v42, v43, v33, buf, 0x16u);
          goto LABEL_58;
        }
      }
    }

    else
    {
      v35 = vp::get_log(v7);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = vp::get_log_context_info(&__p, v5, "vp::vx::Voice_Processor]", 23);
        v37 = v76;
        v38 = v75;
        v29 = vp::get_log(v36);
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          goto LABEL_58;
        }

        if ((v37 & 0x80u) == 0)
        {
          v39 = v37;
        }

        else
        {
          v39 = v38;
        }

        v40 = __p;
        if ((v76 & 0x80u) == 0)
        {
          v40 = &__p;
        }

        if (v39)
        {
          v41 = " ";
        }

        else
        {
          v41 = "";
        }

        *buf = 136315394;
        v78 = v40;
        v79 = 2080;
        v80 = v41;
        v33 = "%s%sinternal re-configuration is not required";
        goto LABEL_56;
      }
    }

LABEL_60:
    for (i = *(v5 + 1088); i; i = *i)
    {
      v45 = 0;
      v46 = *(i + 4);
      *buf = v46;
      while (vp::vx::g_property_id_lut[v45] != v46)
      {
        if (++v45 == 72)
        {
          exception = __cxa_allocate_exception(8uLL);
          v48 = std::bad_cast::bad_cast(exception);
        }
      }

      v49 = vp::vx::g_property_id_lut[v45 + 72];
      boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>,boost::container::dtl::select1st<vp::vx::Property_ID>,std::less<vp::vx::Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>>::find(&__p, v5 + 1000, buf);
      v51 = *(v5 + 1008);
      v52 = *(v5 + 1016);
      if (!v51 && v52)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (__p == (v51 + 40 * v52))
      {
        boost::container::throw_length_error("flat_map::at key not found", v50);
      }

      v53 = *(__p + 1);
      if (v53 != *(__p + 2))
      {
        global_queue = dispatch_get_global_queue(0, 0);
        if (global_queue)
        {
          dispatch_retain(global_queue);
        }

        v55 = *(v53 + 8);
        if (v55)
        {
          _Block_copy(v55);
        }

        operator new();
      }
    }

    if (*(v5 + 1104))
    {
      v56 = *(v5 + 1088);
      if (v56)
      {
        do
        {
          v57 = *v56;
          std::allocator_traits<vp::Allocator<std::__hash_node<vp::vx::Property_ID,void *>>>::deallocate[abi:ne200100](*(v5 + 1096), v56);
          v56 = v57;
        }

        while (v57);
      }

      *(v5 + 1088) = 0;
      v58 = *(v5 + 1072);
      if (v58)
      {
        for (j = 0; j != v58; ++j)
        {
          *(*(v5 + 1064) + 8 * j) = 0;
        }
      }

      *(v5 + 1104) = 0;
    }

    v60 = *(v5 + 520);
    for (k = *(v5 + 528); v60 != k; v60 += 2)
    {
      v62 = *v60;
      v63 = v60[1];
      if (v63)
      {
        atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v62 + 96))(v62);
      if (v63)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v63);
      }
    }
  }

  v64 = *MEMORY[0x277D85DE8];

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
}

void sub_2726F6BE8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_1,std::allocator<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_1>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_1,std::allocator<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_1>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_1,std::allocator<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881C1908;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_1,std::allocator<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2881C1908;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_1,std::allocator<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2881C1908;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_0,std::allocator<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(a1 + 8);
    if (v5)
    {
      log = vp::get_log(v3);
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        log_context_info = vp::get_log_context_info(__p, v5, "vp::vx::Voice_Processor]", 23);
        v8 = v22;
        v9 = v22;
        v10 = __p[1];
        v11 = vp::get_log(log_context_info);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          if (v9 >= 0)
          {
            v12 = v8;
          }

          else
          {
            v12 = v10;
          }

          v13 = __p[0];
          if (v9 >= 0)
          {
            v13 = __p;
          }

          if (v12)
          {
            v14 = " ";
          }

          else
          {
            v14 = "";
          }

          *buf = 136315394;
          v24 = v13;
          v25 = 2080;
          v26 = v14;
          _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_INFO, "%s%sbegin state change", buf, 0x16u);
          LOBYTE(v9) = v22;
        }

        if ((v9 & 0x80) != 0)
        {
          operator delete(__p[0]);
        }
      }

      v15 = *(v5 + 520);
      for (i = *(v5 + 528); v15 != i; v15 += 2)
      {
        v17 = *v15;
        v18 = v15[1];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v17 + 88))(v17);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }
      }
    }

    v20 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v19 = *MEMORY[0x277D85DE8];
  }
}

void sub_2726F6FD4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2726F6FD8);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_0,std::allocator<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_0,std::allocator<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_0,std::allocator<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881C18C0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_0,std::allocator<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2881C18C0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_0,std::allocator<vp::vx::Voice_Processor::Voice_Processor(vp::Context const&,std::shared_ptr<vp::Service_Provider>,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2881C18C0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<caulk::details::lifetime_guard_base<vp::vx::Voice_Processor>::control_block,std::allocator<caulk::details::lifetime_guard_base<vp::vx::Voice_Processor>::control_block>>::__on_zero_shared(uint64_t a1)
{
  __dmb(0xBu);
  caulk::semaphore::signal((*(a1 + 40) + 24));
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__shared_ptr_emplace<caulk::details::lifetime_guard_base<vp::vx::Voice_Processor>::control_block,std::allocator<caulk::details::lifetime_guard_base<vp::vx::Voice_Processor>::control_block>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881C1888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__shared_ptr_pointer<vp::vx::Configuration_Database *,vp::Allocator_Delete<vp::vx::Configuration_Database>,std::allocator<vp::vx::Configuration_Database>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  (**v2)(v2);
  return (*(**(a1 + 32) + 24))(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void std::__shared_ptr_pointer<vp::vx::Configuration_Database *,vp::Allocator_Delete<vp::vx::Configuration_Database>,std::allocator<vp::vx::Configuration_Database>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void *std::__shared_ptr_emplace<vp::vx::Voice_Processor_State_Manager::Observer>::__on_zero_shared(uint64_t a1)
{
  boost::container::vector<std::function<void ()(void)>,boost::container::small_vector_allocator<std::function<void ()(void)>,vp::Allocator<void>,void>,void>::~vector((a1 + 96));

  return boost::container::vector<std::function<void ()(void)>,boost::container::small_vector_allocator<std::function<void ()(void)>,vp::Allocator<void>,void>,void>::~vector((a1 + 32));
}

void *boost::container::vector<std::function<void ()(void)>,boost::container::small_vector_allocator<std::function<void ()(void)>,vp::Allocator<void>,void>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1];
    do
    {
      --v2;
      v3 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3) + 32;
    }

    while (v2);
  }

  if (a1[3])
  {
    boost::container::small_vector_allocator<std::function<void ()(void)>,vp::Allocator<void>,void>::deallocate(a1, a1[1]);
  }

  return a1;
}

void *boost::container::small_vector_allocator<std::function<void ()(void)>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void std::__shared_ptr_emplace<vp::vx::Voice_Processor_State_Manager::Observer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881BEFF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void std::__shared_ptr_emplace<vp::cf::Notification_Manager>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<vp::cf::Notification_Manager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881BEFC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::Voice_Processor::add_component(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    _os_crash();
    __break(1u);
    goto LABEL_25;
  }

  vp::vx::Voice_Processor::make_weak_state_observer(v24, *(a1 + 728), *(a1 + 744));
  (*(*v2 + 32))(v2, v24);
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  v5 = *(a1 + 528);
  v6 = *(a1 + 536);
  if (v5 < v6)
  {
    result = std::shared_ptr<vp::vx::Component>::shared_ptr[abi:ne200100]<vp::vx::Component,vp::Allocator_Delete<vp::vx::Component>,0>(*(a1 + 528), a2);
    v8 = v5 + 16;
    *(a1 + 528) = v5 + 16;
    goto LABEL_23;
  }

  v9 = *(a1 + 520);
  v10 = (v5 - v9) >> 4;
  if ((v10 + 1) >> 60)
  {
LABEL_25:
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v11 = v6 - v9;
  v12 = v11 >> 3;
  if (v11 >> 3 <= (v10 + 1))
  {
    v12 = v10 + 1;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF0)
  {
    v13 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v12;
  }

  v29 = a1 + 544;
  if (v13)
  {
    if (v13 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = (*(**(a1 + 544) + 16))(*(a1 + 544), 16 * v13, 8);
  }

  else
  {
    v14 = 0;
  }

  v26 = v14;
  v27 = (v14 + 16 * v10);
  *&v28 = v27;
  *(&v28 + 1) = v14 + 16 * v13;
  std::shared_ptr<vp::vx::Component>::shared_ptr[abi:ne200100]<vp::vx::Component,vp::Allocator_Delete<vp::vx::Component>,0>(v27, a2);
  *&v28 = v28 + 16;
  v15 = *(a1 + 528);
  v16 = *(a1 + 520);
  v17 = v27 + v16 - v15;
  if (v16 != v15)
  {
    v18 = (v27 + v16 - v15);
    v19 = *(a1 + 520);
    do
    {
      *v18++ = *v19;
      *v19 = 0;
      *(v19 + 8) = 0;
      v19 += 16;
    }

    while (v19 != v15);
    do
    {
      v20 = *(v16 + 8);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      v16 += 16;
    }

    while (v16 != v15);
  }

  v21 = *(a1 + 520);
  *(a1 + 520) = v17;
  v22 = *(a1 + 536);
  v23 = v28;
  *(a1 + 528) = v28;
  *&v28 = v21;
  *(&v28 + 1) = v22;
  v26 = v21;
  v27 = v21;
  result = std::__split_buffer<std::shared_ptr<vp::vx::Component>,vp::Allocator<std::shared_ptr<vp::vx::Component>> &>::~__split_buffer(&v26);
  v8 = v23;
LABEL_23:
  *(a1 + 528) = v8;
  return result;
}

uint64_t *std::shared_ptr<vp::vx::Component>::shared_ptr[abi:ne200100]<vp::vx::Component,vp::Allocator_Delete<vp::vx::Component>,0>(uint64_t *result, uint64_t *a2)
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

uint64_t std::__split_buffer<std::shared_ptr<vp::vx::Component>,vp::Allocator<std::shared_ptr<vp::vx::Component>> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::Component>>>::deallocate[abi:ne200100](**(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 4);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<vp::vx::Component *,vp::Allocator_Delete<vp::vx::Component>,std::allocator<vp::vx::Component>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  (**v2)(v2);
  return (*(**(a1 + 32) + 24))(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void std::__shared_ptr_pointer<vp::vx::Component *,vp::Allocator_Delete<vp::vx::Component>,std::allocator<vp::vx::Component>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::set_messenger(std::shared_ptr<caulk::concurrent::messenger>)::$_0>(uint64_t **a1)
{
  v2 = **a1;
  v1 = (*a1)[1];
  v3 = *v1;
  *v1 = 0;
  *(v1 + 1) = 0;
  v4 = *(v2 + 616);
  *(v2 + 608) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t boost::container::vec_iterator<std::__fs::filesystem::path *,false>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

void std::__function::__func<vp::vx::Voice_Processor::configure(void)::$_0,std::allocator<vp::vx::Voice_Processor::configure(void)::$_0>,void ()(vp::vx::Voice_Processor&)>::operator()(uint64_t a1, std::chrono::duration<long long, std::ratio<1, 1000000>>::rep a2)
{
  __t.__d_.__rep_ = a2;
  vp::vx::Voice_Processor::exception_guard(a2, "create initialization counts", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_initialization_counts(void)::$_0>, &__t);
  __t.__d_.__rep_ = a2;
  vp::vx::Voice_Processor::exception_guard(a2, "create control center manager", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_control_center_manager(void)::$_0>, &__t);
  __t.__d_.__rep_ = a2;
  vp::vx::Voice_Processor::exception_guard(a2, "create system status manager", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_system_status_manager(void)::$_0>, &__t);
  __t.__d_.__rep_ = a2;
  vp::vx::Voice_Processor::exception_guard(a2, "create orientation manager", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_orientation_manager(void)::$_0>, &__t);
  __t.__d_.__rep_ = a2;
  vp::vx::Voice_Processor::exception_guard(a2, "create property states", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_property_states(void)::$_0>, &__t);
  __t.__d_.__rep_ = a2;
  vp::vx::Voice_Processor::exception_guard(a2, "create user defaults states", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_user_defaults_states(void)::$_0>, &__t);
  __t.__d_.__rep_ = a2;
  vp::vx::Voice_Processor::exception_guard(a2, "create configuration states", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_configuration_states(void)::$_0>, &__t);
  __t.__d_.__rep_ = a2;
  vp::vx::Voice_Processor::exception_guard(a2, "create tuning resource directory paths", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_tuning_resource_directory_paths(void)::$_0>, &__t);
  __t.__d_.__rep_ = a2;
  vp::vx::Voice_Processor::exception_guard(a2, "create uplink I/O parameter setter commands", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_io_parameter_setter_commands(void)::$_0>, &__t);
  __t.__d_.__rep_ = a2;
  vp::vx::Voice_Processor::exception_guard(a2, "create I/O parameter setter delegates", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_io_parameter_setter_delegates(void)::$_0>, &__t);
  __t.__d_.__rep_ = a2;
  vp::vx::Voice_Processor::exception_guard(a2, "create I/O property setter commands", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_io_property_setter_commands(void)::$_0>, &__t);
  __t.__d_.__rep_ = a2;
  vp::vx::Voice_Processor::exception_guard(a2, "create I/O property setter delegates", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_io_property_setter_delegates(void)::$_0>, &__t);
  __t.__d_.__rep_ = a2;
  vp::vx::Voice_Processor::exception_guard(a2, "create I/O personal audio command", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_io_personal_audio_command(void)::$_0>, &__t);
  __t.__d_.__rep_ = a2;
  vp::vx::Voice_Processor::exception_guard(a2, "configure control center manager", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::configure_control_center_manager(void)::$_0>, &__t);
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v3 = std::chrono::system_clock::to_time_t(&__t);
  v4 = *(a2 + 520);
  v5 = *(a2 + 528);
  if (v4 != v5)
  {
    v6 = v3;
    do
    {
      v8 = *v4;
      v7 = v4[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = *(a2 + 616);
      __t.__d_.__rep_ = *(a2 + 608);
      v31 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v8 + 16))(v8, &__t);
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      v10 = *(a2 + 744);
      if (!v10 || (v11 = *(a2 + 728), atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed), std::__shared_weak_count::__release_shared[abi:ne200100](v10), (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v11 + 16;
      if (!v11)
      {
        v13 = 0;
      }

      v28 = v13;
      v29 = v12;
      atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      std::__shared_weak_count::__release_weak(v10);
      (*(*v8 + 24))(v8, &v28);
      if (v29)
      {
        std::__shared_weak_count::__release_weak(v29);
      }

      vp::vx::Voice_Processor::make_weak_state_observer(v26, *(a2 + 728), *(a2 + 744));
      (*(*v8 + 32))(v8, v26);
      if (v27)
      {
        std::__shared_weak_count::__release_weak(v27);
      }

      v14 = *(a2 + 744);
      if (!v14 || (v15 = *(a2 + 728), atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed), std::__shared_weak_count::__release_shared[abi:ne200100](v14), (v16 = std::__shared_weak_count::lock(v14)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v17 = v15 + 8;
      if (!v15)
      {
        v17 = 0;
      }

      v24 = v17;
      v25 = v16;
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      std::__shared_weak_count::__release_weak(v14);
      (*(*v8 + 40))(v8, &v24);
      if (v25)
      {
        std::__shared_weak_count::__release_weak(v25);
      }

      (*(*v8 + 48))(v8, v6);
      (*(*v8 + 56))(v8);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  *(a2 + 776) = 1;
  vp::rpb::Server::get_shared_instance(&v21);
  if (v21)
  {
    v18 = v21;
    v20 = v18;
    v22 = &v20;
    v23 = a2;
    vp::vx::Voice_Processor::exception_guard(a2, "register RPB server listener", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0>, &v22);
    vp::objc::ID::~ID(&v20);
    v19 = v18;
    v22 = &v19;
    v23 = a2;
    vp::vx::Voice_Processor::exception_guard(a2, "connect RPB server", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::connect(vp::rpb::Server)::$_0>, &v22);
    vp::objc::ID::~ID(&v19);
  }

  vp::objc::ID::~ID(&v21);
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0>(id ***a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = [RPBServer_Listener alloc];
  v4 = *v1;
  v7 = [(RPBServer_Listener *)v3 initWithServer:v4];

  v5 = v2[91];
  v6 = v2[93];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v8 = 0;
  operator new();
}

void sub_2726F80F4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::operator()(vp *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 3);
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, v2, "vp::vx::Voice_Processor]", 23);
    v5 = v18;
    v6 = v18;
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
      v21 = v10;
      v22 = 2080;
      v23 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sRPB server stopped running", buf, 0x16u);
      LOBYTE(v6) = v18;
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = *(a1 + 2);
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 1);
      if (v15)
      {
        __p[0] = &unk_2881C5D00;
        v19 = __p;
        vp::vx::Voice_Processor::call_async(v15, __p);
        std::__function::__value_func<void ()(vp::vx::Voice_Processor &)>::~__value_func[abi:ne200100](__p);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void vp::vx::Voice_Processor::call_async(void *a1, uint64_t a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v4 = a1[91];
  v5 = a1[93];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = a1[3];
  if (v6)
  {
    dispatch_retain(v6);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN2vp2vx15Voice_Processor10call_asyncENSt3__18functionIFvRS1_EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_134;
  block[4] = v4;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(vp::vx::Voice_Processor &)>::__value_func[abi:ne200100](v10, a2);
  dispatch_async(v6, block);
  if (v6)
  {
    dispatch_release(v6);
  }

  std::__function::__value_func<void ()(vp::vx::Voice_Processor &)>::~__value_func[abi:ne200100](v10);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2726F8400(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ___ZN2vp2vx15Voice_Processor10call_asyncENSt3__18functionIFvRS1_EEE_block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (a1[4])
      {
        v5 = a1[9];
        if (!v5)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v5 + 48))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void __destroy_helper_block_e8_32c48_ZTSNSt3__18weak_ptrIN2vp2vx15Voice_ProcessorEEE48c52_ZTSNSt3__18functionIFvRN2vp2vx15Voice_ProcessorEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(vp::vx::Voice_Processor &)>::~__value_func[abi:ne200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t __copy_helper_block_e8_32c48_ZTSNSt3__18weak_ptrIN2vp2vx15Voice_ProcessorEEE48c52_ZTSNSt3__18functionIFvRN2vp2vx15Voice_ProcessorEEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(vp::vx::Voice_Processor &)>::__value_func[abi:ne200100](a1 + 48, a2 + 48);
}

void sub_2726F8548(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#2}::operator() const(void)::{lambda(vp::vx::Voice_Processor&)#1},std::allocator<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#2}::operator() const(void)::{lambda(vp::vx::Voice_Processor&)#1}>,void ()(vp::vx::Voice_Processor&)>::operator()(uint64_t a1, uint64_t a2)
{
  vp::rpb::Server::get_shared_instance(&v3);
  v4 = a2;
  vp::vx::Voice_Processor::exception_guard(a2, "disconnect RPB server", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::disconnect(vp::rpb::Server)::$_0>, &v4);
  vp::objc::ID::~ID(&v3);
}

void std::__function::__func<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881C5CB8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2881C5CB8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2881C5CB8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::operator()(vp *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 3);
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, v2, "vp::vx::Voice_Processor]", 23);
    v5 = v18;
    v6 = v18;
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
      v21 = v10;
      v22 = 2080;
      v23 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sRPB server started running", buf, 0x16u);
      LOBYTE(v6) = v18;
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = *(a1 + 2);
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 1);
      if (v15)
      {
        __p[0] = &unk_2881C5C70;
        v19 = __p;
        vp::vx::Voice_Processor::call_async(v15, __p);
        std::__function::__value_func<void ()(vp::vx::Voice_Processor &)>::~__value_func[abi:ne200100](__p);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void std::__function::__func<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#1}::operator() const(void)::{lambda(vp::vx::Voice_Processor&)#1},std::allocator<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#1}::operator() const(void)::{lambda(vp::vx::Voice_Processor&)#1}>,void ()(vp::vx::Voice_Processor&)>::operator()(uint64_t a1, uint64_t a2)
{
  vp::rpb::Server::get_shared_instance(&v3);
  v4[0] = &v3;
  v4[1] = a2;
  vp::vx::Voice_Processor::exception_guard(a2, "connect RPB server", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::connect(vp::rpb::Server)::$_0>, v4);
  vp::objc::ID::~ID(&v3);
}

void std::__function::__func<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881C5C28;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2881C5C28;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<vp::vx::Voice_Processor::register_listener(vp::rpb::Server)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2881C5C28;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t **caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::configure_control_center_manager(void)::$_0>(uint64_t **result)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v1 = **result;
  v2 = *(v1 + 2784);
  if (v2)
  {
    vp::vx::Voice_Processor::get_app_bundle_id(&v4, v1);
    v6[0] = &unk_2881B5AD8;
    v6[1] = v2;
    v6[3] = v6;
    std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::__value_func[abi:ne200100](v5, v6);
    v5[9] = 0;
    operator new();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726F9F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  vp::vx::data_flow::State_Listener::~State_Listener(&a45);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::get_app_bundle_id(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v17 = CFStringCreateWithBytes(0, "application bundle ID", 21, 0x8000100u, 0);
  if (!v17)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v18 = 0;
  v19 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &v17);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v30, (a2 + 64), *(v4 + 6));
    LODWORD(v32) = v30;
    v33 = v31;
    v31 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v18);
    v18 = v32;
    v19 = v33;
    v33 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v32);
    vp::vx::data_flow::State<void>::~State(&v30);
  }

  if (!v19)
  {
    v6 = *(a2 + 456);
    v5 = *(a2 + 464);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = a2 + 8;
    (*(*(a2 + 8) + 16))(&v32, a2 + 8, 72);
    v24 = v32;
    v25 = v33;
    v33 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v32);
    v32 = &unk_2881BF2C8;
    *&v33 = v6;
    *(&v33 + 1) = v5;
    v34 = &v32;
    v20 = v24;
    vp::vx::data_flow::State_Manager::create_state(&v30, (a2 + 64), &v32);
    v28 = v30;
    v29 = v31;
    v31 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v30);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v32);
    v26 = v28;
    v27 = v29;
    v29 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v28);
    vp::vx::data_flow::State<void>::~State(&v24);
    if (*(a2 + 264) == 3)
    {
      cf = CFStringCreateWithBytes(0, "com.apple.FaceTime", 18, 0x8000100u, 0);
      if (!cf)
      {
        v8 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v8, "Could not construct");
      }
    }

    else
    {
      cf = CFStringCreateWithBytes(0, "com.apple.facetime", 18, 0x8000100u, 0);
      if (!cf)
      {
        v15 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v15, "Could not construct");
      }
    }

    if (_os_feature_enabled_impl() && !*(a2 + 264))
    {
      v13 = CFStringCreateWithBytes(0, "com.apple.mobilephone", 21, 0x8000100u, 0);
      v9 = v13;
      v22 = v13;
      if (!v13)
      {
        v16 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v16, "Could not construct");
      }

      CFRetain(v13);
      v10 = 0;
    }

    else
    {
      v9 = 0;
      v22 = 0;
      v10 = 1;
    }

    v11 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    (*(*v7 + 16))(&v32, a2 + 8, 58);
    v24 = v32;
    v25 = v33;
    v33 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v32);
    (*(*v7 + 16))(&v32, a2 + 8, 97);
    v20 = v32;
    v21 = v33;
    v33 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v32);
    if ((v10 & 1) == 0)
    {
      CFRetain(v9);
    }

    if (v11)
    {
      CFRetain(v11);
    }

    if ((v10 & 1) == 0)
    {
      CFRetain(v9);
    }

    if (v11)
    {
      CFRetain(v11);
    }

    operator new();
  }

  *this = v18;
  *(this + 8) = v19;
  v19 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v18);
  if (v17)
  {
    CFRelease(v17);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2726FA650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, const void *a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a21);
  applesauce::CF::StringRef::~StringRef(&a22);
  vp::vx::data_flow::State<void>::~State(&a26);
  std::recursive_mutex::unlock((v26 + 184));
  vp::vx::data_flow::State<void>::~State(&a15);
  applesauce::CF::StringRef::~StringRef(&a11);
  _Unwind_Resume(a1);
}

int *_ZN2vp2vx29Voice_Processor_State_Manager12create_stateIRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaINS0_20Global_ConfigurationEN5boost9container12small_vectorINS0_11Chat_FlavorELm3ENS_9AllocatorIS9_EEvEEEEDaMT_T0_EUlRKS5_E_JS5_EEESD_OSE_DpRKNS0_9data_flow5StateIT0_EE(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v15[0] = &unk_2881C5A30;
  v15[1] = a3;
  v15[3] = v15;
  v12 = a4;
  vp::vx::data_flow::State_Manager::create_state(&v13, (a2 + 48), v15);
  v5 = v13;
  v9 = v13;
  v8 = v14;
  v14 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v13);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](v15);
  *a1 = v5;
  *(a1 + 8) = v8;
  v10 = 0;
  v11 = 0;
  result = vp::vx::data_flow::State<void>::~State(&v9);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_11Chat_FlavorEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaINS3_20Global_ConfigurationES6_EEDaMT_T0_EUlRKSD_E_JSD_EEESE_OSF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *(vp::vx::data_flow::Value::view_storage(**a2) + *(a1 + 8));
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_11Chat_FlavorEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaINS3_20Global_ConfigurationES6_EEDaMT_T0_EUlRKSD_E_JSD_EEESE_OSF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C5AE0;
  a2[1] = v2;
  return result;
}

char *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorIS9_EEvEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaINS3_20Global_ConfigurationESC_EEDaMT_T0_EUlRKSJ_E_JSJ_EEESK_OSL_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_EEERNS4_13State_ManagerESL_SZ_EUlPPKNS4_5ValueEPS17_E_NS_9allocatorIS1C_EEFvS1A_S1B_EEclEOS1A_OS1B_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = (vp::vx::data_flow::Value::view_storage(**a2) + *(a1 + 8));
  v5 = v4[1];
  v11 = *v4;
  v12 = &v14;
  v13 = xmmword_2727565D0;
  v16 = v5;
  v6 = v4[2];
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v15 = &v5[4 * v6];
  boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>(&v11, &v16, &v15);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v8);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v3);
  *storage = v11;
  *(storage + 8) = storage + 32;
  *(storage + 16) = xmmword_2727565D0;
  result = boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl(storage, &v11);
  if (*(&v13 + 1))
  {
    return boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&v11, v12);
  }

  return result;
}

void sub_2726FAA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&a12, a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorIS9_EEvEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaINS3_20Global_ConfigurationESC_EEDaMT_T0_EUlRKSJ_E_JSJ_EEESK_OSL_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_EEERNS4_13State_ManagerESL_SZ_EUlPPKNS4_5ValueEPS17_E_NS_9allocatorIS1C_EEFvS1A_S1B_EE7__cloneEPNS0_6__baseIS1F_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C5A30;
  a2[1] = v2;
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_app_bundle_idEvENK3__0clEvEUlT_T0_T1_E_JNS3_14Operation_ModeES8_S8_EEEDaOSF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_S8_S8_EEERNS4_13State_ManagerESF_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EEclEOS12_OS13_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[2];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *v7;
  v13 = *v9;
  if (*v9)
  {
    CFRetain(*v9);
  }

  v14 = *v11;
  if (*v11)
  {
    CFRetain(*v11);
    goto LABEL_14;
  }

  if (v12 > 3)
  {
    if ((v12 - 5) < 2)
    {
      v17 = a1 + 8;
      v18 = 16;
      if (*(*(a1 + 8) + 408) == 1)
      {
        v18 = 8;
      }

      v14 = *(v17 + v18);
      if (v14)
      {
        CFRetain(*(v17 + v18));
      }

      goto LABEL_14;
    }

    if (v12 != 4)
    {
      goto LABEL_14;
    }

LABEL_28:
    v14 = *(a1 + 24);
    if (v14)
    {
      CFRetain(*(a1 + 24));
    }

    goto LABEL_14;
  }

  switch(v12)
  {
    case 0:
      v14 = v13;
      goto LABEL_16;
    case 1:
      v14 = *(a1 + 16);
      if (v14)
      {
        CFRetain(*(a1 + 16));
      }

      break;
    case 2:
      goto LABEL_28;
  }

LABEL_14:
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_16:
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v15);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v14;
  return result;
}

void sub_2726FACBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_app_bundle_idEvENK3__0clEvEUlT_T0_T1_E_JNS3_14Operation_ModeES8_S8_EEEDaOSF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_S8_S8_EEERNS4_13State_ManagerESF_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = __p[2];
  if (v3)
  {
    CFRelease(v3);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_app_bundle_idEvENK3__0clEvEUlT_T0_T1_E_JNS3_14Operation_ModeES8_S8_EEEDaOSF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_S8_S8_EEERNS4_13State_ManagerESF_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
  }
}

void *_ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_app_bundle_idEvENK3__0clEvEUlT_T0_T1_E_JNS3_14Operation_ModeES8_S8_EEEDaOSF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_S8_S8_EEERNS4_13State_ManagerESF_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE7__cloneEPNS0_6__baseIS17_EE(void *result, void *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  *a2 = &unk_2881BF3E0;
  a2[1] = v4;
  if (v5)
  {
    result = CFRetain(v5);
  }

  a2[2] = v5;
  v6 = v3[3];
  if (v6)
  {
    result = CFRetain(v6);
  }

  a2[3] = v6;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_app_bundle_idEvENK3__0clEvEUlT_T0_T1_E_JNS3_14Operation_ModeES8_S8_EEEDaOSF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_S8_S8_EEERNS4_13State_ManagerESF_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EED0Ev(void *a1)
{
  *a1 = &unk_2881BF3E0;
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_app_bundle_idEvENK3__0clEvEUlT_T0_T1_E_JNS3_14Operation_ModeES8_S8_EEEDaOSF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_S8_S8_EEERNS4_13State_ManagerESF_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EED1Ev(void *a1)
{
  *a1 = &unk_2881BF3E0;
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_app_bundle_idEvENK3__0clEvEUlRKT_E_JNS_6vectorIxNS_9allocatorIxEEEEEEEDaOSF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSM_EEERNS4_13State_ManagerESF_SU_EUlPPKNS4_5ValueEPS12_E_NSK_IS17_EEFvS15_S16_EEclEOS15_OS16_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  vp::Service_Provider::get<vp::services::Audio_Statistics,(decltype(nullptr))0>(&v19, *(a1 + 8));
  if (v19)
  {
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      v9 = 0;
      while (1)
      {
        v10 = *v7;
        v11 = v19;
        if (((*(*v19 + 32))(v19, *v7) & 0xFFFFFFFD) != 0)
        {
          v12 = v9;
          goto LABEL_21;
        }

        (*(*v11 + 40))(&v18, v11, v10);
        if (v18)
        {
          cf = 0;
          applesauce::CF::at_or<applesauce::CF::StringRef,char const(&)[25]>(&v17, v18, "HostApplicationDisplayID", &cf);
          v12 = v17;
          v17 = v9;
          if (v9)
          {
            CFRelease(v9);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v12)
          {
            v13 = 0;
            goto LABEL_18;
          }

          v9 = 0;
        }

        v13 = 1;
        v12 = v9;
LABEL_18:
        if (v18)
        {
          CFRelease(v18);
        }

        if (!v13)
        {
          goto LABEL_24;
        }

LABEL_21:
        ++v7;
        v9 = v12;
        if (v7 == v8)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v12 = 0;
LABEL_24:
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v14);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v12;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_app_bundle_idEvENK3__0clEvEUlRKT_E_JNS_6vectorIxNS_9allocatorIxEEEEEEEDaOSF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSM_EEERNS4_13State_ManagerESF_SU_EUlPPKNS4_5ValueEPS12_E_NSK_IS17_EEFvS15_S16_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_app_bundle_idEvENK3__0clEvEUlRKT_E_JNS_6vectorIxNS_9allocatorIxEEEEEEEDaOSF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSM_EEERNS4_13State_ManagerESF_SU_EUlPPKNS4_5ValueEPS12_E_NSK_IS17_EEFvS15_S16_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_app_bundle_idEvENK3__0clEvEUlRKT_E_JNS_6vectorIxNS_9allocatorIxEEEEEEEDaOSF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSM_EEERNS4_13State_ManagerESF_SU_EUlPPKNS4_5ValueEPS12_E_NSK_IS17_EEFvS15_S16_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BF2C8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_app_bundle_idEvENK3__0clEvEUlRKT_E_JNS_6vectorIxNS_9allocatorIxEEEEEEEDaOSF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSM_EEERNS4_13State_ManagerESF_SU_EUlPPKNS4_5ValueEPS12_E_NSK_IS17_EEFvS15_S16_EED0Ev(void *a1)
{
  *a1 = &unk_2881BF2C8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor17get_app_bundle_idEvENK3__0clEvEUlRKT_E_JNS_6vectorIxNS_9allocatorIxEEEEEEEDaOSF_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSM_EEERNS4_13State_ManagerESF_SU_EUlPPKNS4_5ValueEPS12_E_NSK_IS17_EEFvS15_S16_EED1Ev(void *a1)
{
  *a1 = &unk_2881BF2C8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_io_personal_audio_command(void)::$_0>(uint64_t **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  if ((*(v1 + 361) & 1) == 0 && (*(v1 + 2672) & 1) == 0)
  {
    v2 = *(v1 + 456);
    boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::find(buf, v2 + 16, &vp::Service_Interface<1885692277u>::k_service_type_id);
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
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

    v6 = *buf;
    if (*buf == v3 + 16 * v4)
    {
      v7 = 0;
    }

    else
    {
      std::shared_ptr<vp::Service_Provider const>::shared_ptr[abi:ne200100]<vp::Service_Provider,0>(v9, *v2, *(v2 + 8));
      v7 = v9[1];
      if (*(v6 + 8))
      {
        if (*(v1 + 2672) == 1)
        {
          vp::vx::IO_Personal_Audio_Command_Factory::~IO_Personal_Audio_Command_Factory((v1 + 2616));
          *(v1 + 2672) = 0;
        }

        *(v1 + 2648) = &unk_2881C6630;
        operator new();
      }
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2726FB9B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

int *caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_io_property_setter_delegates(void)::$_0>(uint64_t **a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  v2 = v1 + 8;
  (*(*(v1 + 8) + 16))(&v25, v1 + 8, 78);
  v18 = v25;
  v19 = v26;
  v26 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v25);
  v23 = 1936747876;
  vp::vx::data_flow::State<void>::State(v24, &v18);
  LODWORD(v26) = v23;
  DWORD2(v26) = *v24;
  v27 = *&v24[8];
  *&v24[8] = 0;
  *&v24[16] = 0;
  v25 = caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::k_wrapper_vtable<void vp::vx::IO_Property_Setter_Delegate_Factory::add_property_setter<std::vector<unsigned char>>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<std::vector<unsigned char>>)::{lambda(vp::Allocator<std::byte>)#1}>;
  v3 = boost::container::flat_map<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<std::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_subscript(v1 + 1448, 0x73706D64u);
  caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::operator=(v3, &v25);
  (v25[3])(&v26);
  vp::vx::data_flow::State<void>::~State(v24);
  vp::vx::data_flow::State<void>::~State(&v18);
  (*(*v2 + 16))(&v25, v2, 75);
  v16 = v25;
  v17 = v26;
  v26 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v25);
  vp::vx::IO_Property_Setter_Delegate_Factory::add_property_setter<CAOrientation>(v1 + 1440, 0x64766F72u, &v16);
  vp::vx::data_flow::State<void>::~State(&v16);
  (*(*v2 + 16))(&v25, v2, 76);
  v14 = v25;
  v15 = v26;
  v26 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v25);
  vp::vx::IO_Property_Setter_Delegate_Factory::add_property_setter<CAOrientation>(v1 + 1440, 0x75696F72u, &v14);
  vp::vx::data_flow::State<void>::~State(&v14);
  (*(*(v1 + 8) + 16))(&v25, v1 + 8, 2);
  LODWORD(v2) = v25;
  v9 = v25;
  v10 = v26;
  v26 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v25);
  v25 = &unk_2881C59E8;
  LOBYTE(v26) = 0;
  *&v27 = &v25;
  v22 = v2;
  vp::vx::data_flow::State_Manager::create_state(&v23, (v1 + 64), &v25);
  v4 = v23;
  v20 = v23;
  v8 = *v24;
  *v24 = 0;
  *&v24[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v23);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v25);
  v11 = v4;
  v21 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v20);
  v20 = v4;
  v21 = v8;
  v12 = 0;
  v13 = 0;
  v23 = 1634165602;
  vp::vx::data_flow::State<void>::State(v24, &v20);
  LODWORD(v26) = v23;
  DWORD2(v26) = *v24;
  v27 = *&v24[8];
  *&v24[8] = 0;
  *&v24[16] = 0;
  v25 = caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::k_wrapper_vtable<void vp::vx::IO_Property_Setter_Delegate_Factory::add_property_setter<BOOL>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<BOOL>)::{lambda(vp::Allocator<std::byte>)#1}>;
  v5 = boost::container::flat_map<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<std::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_subscript(v1 + 1448, 0x61676362u);
  caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::operator=(v5, &v25);
  (v25[3])(&v26);
  vp::vx::data_flow::State<void>::~State(v24);
  vp::vx::data_flow::State<void>::~State(&v20);
  vp::vx::data_flow::State<void>::~State(&v11);
  result = vp::vx::data_flow::State<void>::~State(&v9);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726FBD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

int *vp::vx::IO_Property_Setter_Delegate_Factory::add_property_setter<CAOrientation>(uint64_t a1, unsigned int a2, int *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  vp::vx::data_flow::State<void>::State(&v9, a3);
  v12[0] = a2;
  v12[2] = v9;
  v13 = v10;
  v10 = 0uLL;
  v11 = caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::k_wrapper_vtable<void vp::vx::IO_Property_Setter_Delegate_Factory::add_property_setter<CAOrientation>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<CAOrientation>)::{lambda(vp::Allocator<std::byte>)#1}>;
  v5 = boost::container::flat_map<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<std::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_subscript(a1 + 8, a2);
  caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::operator=(v5, &v11);
  (v11[3])(v12);
  result = vp::vx::data_flow::State<void>::~State(&v9);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726FBE84(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *boost::container::flat_map<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<std::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_subscript(uint64_t a1, unsigned int a2)
{
  v44[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
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

  if (v3)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    do
    {
      if (v7 != 1 && !v6)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v8 = v7 >> 1;
      v9 = &v6[12 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 12;
      v7 += ~(v7 >> 1);
      if (v11 >= a2)
      {
        v7 = v8;
      }

      else
      {
        v6 = v10;
      }
    }

    while (v7);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  if (v6 == (v2 + 48 * v3))
  {
    goto LABEL_20;
  }

  if (!v6)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*v6 > a2)
  {
LABEL_20:
    v37 = a2;
    v40 = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>,vp::Allocator<std::byte>>::empty;
    v42 = a2;
    v38 = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>,vp::Allocator<std::byte>>::empty;
    v43 = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>,vp::Allocator<std::byte>>::empty;
    v12 = *(a1 + 8);
    if (v12 > v6)
    {
      goto LABEL_56;
    }

    v13 = *(a1 + 16);
    if (!v12 && v13)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v14 = v12 + 48 * v13;
    if (v6 > v14)
    {
LABEL_56:
      v30 = "this->priv_in_range_or_end(hint)";
      v31 = 879;
      v32 = "flat_tree.hpp";
      v33 = "insert_unique";
    }

    else
    {
      v35 = 0;
      if (v6 == v14)
      {
        goto LABEL_27;
      }

      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (v42 < *v6)
      {
LABEL_27:
        v35 = v6;
        if (v6 != v12)
        {
          if (!v6)
          {
            __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
          }

          v17 = *(v6 - 12);
          v16 = v6 - 12;
          v15 = v17;
          if (v17 >= v42)
          {
            if (v42 >= v15)
            {
              v35 = v16;
              goto LABEL_48;
            }

            v36 = v16;
            if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,boost::container::dtl::select1st<vp::vx::Graph_Property_ID>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_insert_unique_prepare(v12, &v36, &v42, &v35))
            {
LABEL_48:
              if (!*(a1 + 8) && v35)
              {
                __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
              }

              v34 = v35;
LABEL_51:
              (v43[3])(v44);
              v6 = v34;
              (v38[3])(&v39);
              (v40[3])(&v41);
              if (!v6)
              {
                __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
              }

              goto LABEL_52;
            }
          }
        }
      }

      else
      {
        v36 = v14;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,boost::container::dtl::select1st<vp::vx::Graph_Property_ID>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_insert_unique_prepare(v6, &v36, &v42, &v35))
        {
          goto LABEL_48;
        }
      }

      v18 = v35;
      v19 = *(a1 + 8);
      if (v19 > v35)
      {
        goto LABEL_59;
      }

      v20 = *(a1 + 16);
      if (!v19 && v20)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v21 = v19 + 48 * v20;
      if (v35 > v21)
      {
LABEL_59:
        v30 = "this->priv_in_range_or_end(position)";
        v31 = 1862;
        v32 = "vector.hpp";
        v33 = "emplace";
      }

      else
      {
        v22 = *(a1 + 24);
        if (v22 >= v20)
        {
          if (v22 == v20)
          {
            boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>*,boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>(&v34, a1, v35, &v42);
          }

          else
          {
            if (v21 == v35)
            {
              *v21 = v42;
              v27 = v43;
              v43 = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>,vp::Allocator<std::byte>>::empty;
              *(v21 + 8) = v27;
              (*(v27 + 16))(v21 + 16, v44);
              ++*(a1 + 16);
            }

            else
            {
              v23 = v21 - 48;
              *v21 = *(v21 - 48);
              v24 = *(v21 - 40);
              *(v21 - 40) = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>,vp::Allocator<std::byte>>::empty;
              *(v21 + 8) = v24;
              (*(v24 + 16))(v21 + 16, v21 - 32);
              ++*(a1 + 16);
              if (v23 != v18)
              {
                v25 = v23;
                do
                {
                  v26 = *(v25 - 12);
                  v25 -= 12;
                  *v23 = v26;
                  caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::operator=((v23 + 8), (v23 - 40));
                  v23 = v25;
                }

                while (v25 != v18);
              }

              *v18 = v42;
              caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::operator=(v18 + 1, &v43);
            }

            v34 = v18;
          }

          goto LABEL_51;
        }

        v30 = "this->m_holder.capacity() >= this->m_holder.m_size";
        v31 = 2821;
        v32 = "vector.hpp";
        v33 = "priv_insert_forward_range";
      }
    }

    __assert_rtn(v33, v32, v31, v30);
  }

LABEL_52:
  v28 = *MEMORY[0x277D85DE8];
  return v6 + 2;
}

void sub_2726FC390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    (*(*a1 + 24))(a1 + 1);
    v4 = *a2;
    *a2 = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>,vp::Allocator<std::byte>>::empty;
    *a1 = v4;
    (*(v4 + 16))(a1 + 1, a2 + 1);
  }

  return a1;
}

void caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>,vp::Allocator<std::byte>>::vtable(void)::{lambda(void *,vp::Allocator<std::byte>&&)#1}::__invoke()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>*,boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x555555555555555)
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
  if (v6 >= 0x555555555555555)
  {
    v6 = 0x555555555555555;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0x555555555555555)
  {
LABEL_29:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v34 = *(a2 + 1);
  v13 = (*(**a2 + 16))(*a2, 48 * v8, 8);
  v14 = v13;
  v36[0] = v13;
  v36[1] = a2;
  v35 = v8;
  v36[2] = v8;
  v16 = *(a2 + 1);
  v15 = *(a2 + 2);
  v17 = v13;
  if (v16 != a3)
  {
    v33 = a1;
    v18 = *(a2 + 1);
    v19 = v13;
    do
    {
      v20 = v19;
      *v19 = *v18;
      v21 = *(v18 + 8);
      *(v18 + 8) = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>,vp::Allocator<std::byte>>::empty;
      *(v20 + 1) = v21;
      v22 = v18 + 16;
      (*(v21 + 16))(v20 + 4, v18 + 16);
      v18 = v22 + 32;
      v19 = v20 + 12;
    }

    while (v22 + 32 != a3);
    v17 = (v20 + 12);
    a1 = v33;
  }

  *v17 = *a4;
  v23 = *(a4 + 8);
  *(a4 + 8) = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>,vp::Allocator<std::byte>>::empty;
  *(v17 + 8) = v23;
  (*(v23 + 16))(v17 + 16, a4 + 16);
  v24 = v16 + 48 * v15;
  if (v24 != a3)
  {
    v25 = v17 + 64;
    v26 = a3;
    do
    {
      *(v25 - 16) = *v26;
      v27 = *(v26 + 8);
      *(v26 + 8) = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>,vp::Allocator<std::byte>>::empty;
      *(v25 - 8) = v27;
      v28 = v26 + 16;
      (*(v27 + 16))(v25, v26 + 16);
      v25 += 48;
      v26 = v28 + 32;
    }

    while (v28 + 32 != v24);
  }

  v36[0] = 0;
  if (v16)
  {
    v29 = *(a2 + 2);
    if (v29)
    {
      v30 = v16 + 16;
      do
      {
        (*(*(v30 - 8) + 24))(v30);
        v30 += 48;
        --v29;
      }

      while (v29);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 48 * *(a2 + 3), 8);
  }

  v31 = *(a2 + 2) + 1;
  *(a2 + 1) = v14;
  *(a2 + 2) = v31;
  *(a2 + 3) = v35;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::~scoped_array_deallocator(v36);
  *a1 = *(a2 + 1) + a3 - v34;
  return result;
}

void sub_2726FC790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 48 * *(a1 + 16), 8);
  }

  return a1;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,boost::container::dtl::select1st<vp::vx::Graph_Property_ID>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int **a4)
{
  v9 = a1;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,boost::container::dtl::select1st<vp::vx::Graph_Property_ID>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>*,true>,vp::vx::Graph_Property_ID>(&v10, &v9, *a2, *a3);
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

int *caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>,vp::Allocator<std::byte>>::vtable<void vp::vx::IO_Property_Setter_Delegate_Factory::add_property_setter<BOOL>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<BOOL>)::{lambda(vp::Allocator<std::byte>)#1}>(caulk::inplace_function_detail::wrapper<BOOL>)::{lambda(void *,void *)#2}::__invoke(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  v2 = a2 + 2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v2 + 2);
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  return vp::vx::data_flow::State<void>::~State(v2);
}

void caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>,vp::Allocator<std::byte>>::vtable<void vp::vx::IO_Property_Setter_Delegate_Factory::add_property_setter<BOOL>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<BOOL>)::{lambda(vp::Allocator<std::byte>)#1}>(caulk::inplace_function_detail::wrapper<BOOL>)::{lambda(void *,vp::Allocator<std::byte>&&)#1}::__invoke(int *a1, uint64_t *a2)
{
  v3 = *a2;
  v6 = 0;
  v7 = v3;
  v8 = xmmword_272756710;
  v4 = (*(*v3 + 16))(v3, 112, 8);
  v5 = *a1;
  vp::vx::data_flow::State<void>::State(v9, a1 + 2);
  *(v4 + 88) = &unk_2881C6630;
  operator new();
}

void *std::unique_ptr<vp::vx::IO_Property_Setter_Delegate<BOOL>,vp::Allocator_Delete<vp::vx::IO_Property_Setter_Delegate<BOOL>>>::reset[abi:ne200100](void *result, uint64_t a2)
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

    v5 = *(v2 + 48);
    if (v5)
    {
      *(v2 + 56) = v5;
      std::allocator_traits<vp::Allocator<std::byte>>::deallocate[abi:ne200100](*(v2 + 72), v5, *(v2 + 64) - v5);
    }

    vp::vx::data_flow::State<void>::~State((v2 + 16));
    *(v2 + 88) = &unk_2881C6630;
    v6 = *(v2 + 104);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void virtual thunk tovp::vx::IO_Property_Setter_Delegate<BOOL>::~IO_Property_Setter_Delegate(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 10);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener(v1 + 4, v2);
    *(v1 + 10) = 0;
  }

  v3 = *(v1 + 6);
  if (v3)
  {
    *(v1 + 7) = v3;
    std::allocator_traits<vp::Allocator<std::byte>>::deallocate[abi:ne200100](*(v1 + 9), v3, *(v1 + 8) - v3);
  }

  vp::vx::data_flow::State<void>::~State(v1 + 4);
  *(v1 + 11) = &unk_2881C6630;
  v4 = *(v1 + 13);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
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

  v3 = *(v1 + 6);
  if (v3)
  {
    *(v1 + 7) = v3;
    std::allocator_traits<vp::Allocator<std::byte>>::deallocate[abi:ne200100](*(v1 + 9), v3, *(v1 + 8) - v3);
  }

  vp::vx::data_flow::State<void>::~State(v1 + 4);
  *(v1 + 11) = &unk_2881C6630;
  v4 = *(v1 + 13);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t vp::vx::IO_Property_Setter_Delegate<BOOL>::process(uint64_t result, int a2, uint64_t a3)
{
  if (!a2)
  {
    v11[4] = v3;
    v11[5] = v4;
    v6 = result;
    result = caulk::pooled_semaphore_mutex::try_lock((result + 80));
    if (result)
    {
      if (*(v6 + 84) == 1)
      {
        vp::Blob::Blob(v11, *(v6 + 48), *(v6 + 56) - *(v6 + 48));
        (*(*a3 + 40))(v7, a3, *(v6 + 8), v11);
        if ((v10 & 1) == 0 && SHIBYTE(v8) < 0)
        {
          std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v9, v7[2], v8 & 0x7FFFFFFFFFFFFFFFLL);
        }

        *(v6 + 84) = 0;
      }

      return caulk::pooled_semaphore_mutex::_unlock((v6 + 80));
    }
  }

  return result;
}

void vp::vx::IO_Property_Setter_Delegate<BOOL>::~IO_Property_Setter_Delegate(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener((a1 + 16), v2);
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    std::allocator_traits<vp::Allocator<std::byte>>::deallocate[abi:ne200100](*(a1 + 72), v3, *(a1 + 64) - v3);
  }

  vp::vx::data_flow::State<void>::~State((a1 + 16));
  *(a1 + 88) = &unk_2881C6630;
  v4 = *(a1 + 104);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::IO_Property_Setter_Delegate<BOOL>::~IO_Property_Setter_Delegate(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener((a1 + 16), v2);
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    std::allocator_traits<vp::Allocator<std::byte>>::deallocate[abi:ne200100](*(a1 + 72), v3, *(a1 + 64) - v3);
  }

  vp::vx::data_flow::State<void>::~State((a1 + 16));
  *(a1 + 88) = &unk_2881C6630;
  v4 = *(a1 + 104);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void vp::vx::IO_Property_Setter_Delegate<BOOL>::notify(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      vp::vx::data_flow::State<void>::unregister_listener((a1 + 16), v3);
      *(a1 + 40) = 0;
    }
  }

  else if (!a2)
  {
    v5[0] = &unk_2881C59A0;
    v5[1] = a1;
    v5[3] = v5;
    std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](v6, v5);
    v7 = 0;
    operator new();
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2726FD038(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<vp::vx::IO_Property_Setter_Delegate<BOOL>::notify(vp::vx::io::Event,vp::vx::io::Node &)::{lambda(BOOL const&)#1},std::allocator<vp::vx::IO_Property_Setter_Delegate<BOOL>::notify(vp::vx::io::Event,vp::vx::io::Node &)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 8);
  result = caulk::pooled_semaphore_mutex::try_lock((v3 + 80));
  if (result)
  {
    v5 = *(v3 + 48);
    v6 = *(v3 + 56) - v5;
    if (v6 > 3)
    {
      if (v6 != 4)
      {
        *(v3 + 56) = v5 + 4;
      }
    }

    else
    {
      std::vector<std::byte,vp::Allocator<std::byte>>::__append((v3 + 48), 4 - v6);
      v5 = *(v3 + 48);
    }

    vp::Mutable_Blob::Mutable_Blob(v9, v5, 4);
    vp::Blob_Setter<vp::Mutable_Blob>::set<unsigned int>(v9 + 2, *a2);
    v7 = *(v3 + 48);
    v8 = *(v3 + 56) - v7;
    if (v10 <= v8)
    {
      if (v10 < v8)
      {
        *(v3 + 56) = v7 + v10;
      }
    }

    else
    {
      std::vector<std::byte,vp::Allocator<std::byte>>::__append((v3 + 48), v10 - v8);
    }

    *(v3 + 84) = 1;
    return caulk::pooled_semaphore_mutex::_unlock((v3 + 80));
  }

  return result;
}

void std::vector<std::byte,vp::Allocator<std::byte>>::__append(void *a1, size_t a2)
{
  v6 = a1 + 1;
  v4 = a1[1];
  v5 = v6[1];
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v12 = &v4[a2];
      bzero(v4, a2);
      v4 = v12;
    }

    a1[1] = v4;
  }

  else
  {
    v7 = &v4[-*a1];
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *a1;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = (*(*a1[3] + 16))(a1[3], v10, 1);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v7[v11];
    v14 = v11 + v10;
    bzero(v13, a2);
    v15 = *a1;
    v16 = a1[1];
    v17 = &v13[*a1 - v16];
    if (*a1 != v16)
    {
      v18 = &v13[*a1 - v16];
      do
      {
        v19 = *v15++;
        *v18++ = v19;
      }

      while (v15 != v16);
      v15 = *a1;
    }

    *a1 = v17;
    a1[1] = &v13[a2];
    v20 = a1[2];
    a1[2] = v14;
    if (v15)
    {
      v21 = a1[3];

      std::allocator_traits<vp::Allocator<std::byte>>::deallocate[abi:ne200100](v21, v15, v20 - v15);
    }
  }
}

uint64_t vp::Blob_Setter<vp::Mutable_Blob>::set<unsigned int>(uint64_t a1, int a2)
{
  if (*(a1 + 6) <= 3uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
  }

  v4 = *(a1 - 2);
  v3 = a1 - 2;
  *v4 = a2;

  return vp::Mutable_Blob::set_size(v3, 4uLL);
}

uint64_t std::__function::__func<vp::vx::IO_Property_Setter_Delegate<BOOL>::notify(vp::vx::io::Event,vp::vx::io::Node &)::{lambda(BOOL const&)#1},std::allocator<vp::vx::IO_Property_Setter_Delegate<BOOL>::notify(vp::vx::io::Event,vp::vx::io::Node &)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C59A0;
  a2[1] = v2;
  return result;
}

uint64_t vp::vx::IO_Property_Setter_Delegate<BOOL>::get_property_ids@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
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

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor35create_io_property_setter_delegatesEvENK3__0clEvEUlT_E_JbEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESC_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EEclEOSW_OSX_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2) ^ 1;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor35create_io_property_setter_delegatesEvENK3__0clEvEUlT_E_JbEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESC_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C59E8;
  *(a2 + 8) = *(result + 8);
  return result;
}

int *caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>,vp::Allocator<std::byte>>::vtable<void vp::vx::IO_Property_Setter_Delegate_Factory::add_property_setter<CAOrientation>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<CAOrientation>)::{lambda(vp::Allocator<std::byte>)#1}>(caulk::inplace_function_detail::wrapper<CAOrientation>)::{lambda(void *,void *)#2}::__invoke(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  v2 = a2 + 2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v2 + 2);
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  return vp::vx::data_flow::State<void>::~State(v2);
}

void caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>,vp::Allocator<std::byte>>::vtable<void vp::vx::IO_Property_Setter_Delegate_Factory::add_property_setter<CAOrientation>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<CAOrientation>)::{lambda(vp::Allocator<std::byte>)#1}>(caulk::inplace_function_detail::wrapper<CAOrientation>)::{lambda(void *,vp::Allocator<std::byte>&&)#1}::__invoke(int *a1, uint64_t *a2)
{
  v3 = *a2;
  v6 = 0;
  v7 = v3;
  v8 = xmmword_272756710;
  v4 = (*(*v3 + 16))(v3, 112, 8);
  v5 = *a1;
  vp::vx::data_flow::State<void>::State(v9, a1 + 2);
  *(v4 + 88) = &unk_2881C6630;
  operator new();
}

void *std::unique_ptr<vp::vx::IO_Property_Setter_Delegate<CAOrientation>,vp::Allocator_Delete<vp::vx::IO_Property_Setter_Delegate<CAOrientation>>>::reset[abi:ne200100](void *result, uint64_t a2)
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

    v5 = *(v2 + 48);
    if (v5)
    {
      *(v2 + 56) = v5;
      std::allocator_traits<vp::Allocator<std::byte>>::deallocate[abi:ne200100](*(v2 + 72), v5, *(v2 + 64) - v5);
    }

    vp::vx::data_flow::State<void>::~State((v2 + 16));
    *(v2 + 88) = &unk_2881C6630;
    v6 = *(v2 + 104);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void virtual thunk tovp::vx::IO_Property_Setter_Delegate<CAOrientation>::~IO_Property_Setter_Delegate(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 10);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener(v1 + 4, v2);
    *(v1 + 10) = 0;
  }

  v3 = *(v1 + 6);
  if (v3)
  {
    *(v1 + 7) = v3;
    std::allocator_traits<vp::Allocator<std::byte>>::deallocate[abi:ne200100](*(v1 + 9), v3, *(v1 + 8) - v3);
  }

  vp::vx::data_flow::State<void>::~State(v1 + 4);
  *(v1 + 11) = &unk_2881C6630;
  v4 = *(v1 + 13);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
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

  v3 = *(v1 + 6);
  if (v3)
  {
    *(v1 + 7) = v3;
    std::allocator_traits<vp::Allocator<std::byte>>::deallocate[abi:ne200100](*(v1 + 9), v3, *(v1 + 8) - v3);
  }

  vp::vx::data_flow::State<void>::~State(v1 + 4);
  *(v1 + 11) = &unk_2881C6630;
  v4 = *(v1 + 13);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t vp::vx::IO_Property_Setter_Delegate<CAOrientation>::process(uint64_t result, int a2, uint64_t a3)
{
  if (!a2)
  {
    v11[4] = v3;
    v11[5] = v4;
    v6 = result;
    result = caulk::pooled_semaphore_mutex::try_lock((result + 80));
    if (result)
    {
      if (*(v6 + 84) == 1)
      {
        vp::Blob::Blob(v11, *(v6 + 48), *(v6 + 56) - *(v6 + 48));
        (*(*a3 + 40))(v7, a3, *(v6 + 8), v11);
        if ((v10 & 1) == 0 && SHIBYTE(v8) < 0)
        {
          std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v9, v7[2], v8 & 0x7FFFFFFFFFFFFFFFLL);
        }

        *(v6 + 84) = 0;
      }

      return caulk::pooled_semaphore_mutex::_unlock((v6 + 80));
    }
  }

  return result;
}

void vp::vx::IO_Property_Setter_Delegate<CAOrientation>::~IO_Property_Setter_Delegate(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener((a1 + 16), v2);
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    std::allocator_traits<vp::Allocator<std::byte>>::deallocate[abi:ne200100](*(a1 + 72), v3, *(a1 + 64) - v3);
  }

  vp::vx::data_flow::State<void>::~State((a1 + 16));
  *(a1 + 88) = &unk_2881C6630;
  v4 = *(a1 + 104);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::IO_Property_Setter_Delegate<CAOrientation>::~IO_Property_Setter_Delegate(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener((a1 + 16), v2);
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    std::allocator_traits<vp::Allocator<std::byte>>::deallocate[abi:ne200100](*(a1 + 72), v3, *(a1 + 64) - v3);
  }

  vp::vx::data_flow::State<void>::~State((a1 + 16));
  *(a1 + 88) = &unk_2881C6630;
  v4 = *(a1 + 104);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void vp::vx::IO_Property_Setter_Delegate<CAOrientation>::notify(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      vp::vx::data_flow::State<void>::unregister_listener((a1 + 16), v3);
      *(a1 + 40) = 0;
    }
  }

  else if (!a2)
  {
    v5[0] = &unk_2881C58B8;
    v5[1] = a1;
    v5[3] = v5;
    std::__function::__value_func<void ()(CAOrientation const&)>::__value_func[abi:ne200100](v6, v5);
    v7 = 0;
    operator new();
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2726FDC00(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<vp::vx::data_flow::State<CAOrientation>::register_listener(std::function<void ()(CAOrientation const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CAOrientation>::register_listener(std::function<void ()(CAOrientation const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
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

void std::__function::__func<vp::vx::data_flow::State<CAOrientation>::register_listener(std::function<void ()(CAOrientation const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CAOrientation>::register_listener(std::function<void ()(CAOrientation const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(CAOrientation const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<CAOrientation>::register_listener(std::function<void ()(CAOrientation const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CAOrientation>::register_listener(std::function<void ()(CAOrientation const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C5870;
  std::__function::__value_func<void ()(CAOrientation const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<CAOrientation>::register_listener(std::function<void ()(CAOrientation const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CAOrientation>::register_listener(std::function<void ()(CAOrientation const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C5870;
  std::__function::__value_func<void ()(CAOrientation const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<vp::vx::IO_Property_Setter_Delegate<CAOrientation>::notify(vp::vx::io::Event,vp::vx::io::Node &)::{lambda(CAOrientation const&)#1},std::allocator<vp::vx::IO_Property_Setter_Delegate<CAOrientation>::notify(vp::vx::io::Event,vp::vx::io::Node &)::{lambda(CAOrientation const&)#1}>,void ()(CAOrientation const&)>::operator()(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  result = caulk::pooled_semaphore_mutex::try_lock((v3 + 80));
  if (result)
  {
    v5 = *(v3 + 48);
    v6 = *(v3 + 56) - v5;
    if (v6 > 3)
    {
      if (v6 != 4)
      {
        *(v3 + 56) = v5 + 4;
      }
    }

    else
    {
      std::vector<std::byte,vp::Allocator<std::byte>>::__append((v3 + 48), 4 - v6);
      v5 = *(v3 + 48);
    }

    vp::Mutable_Blob::Mutable_Blob(v9, v5, 4);
    vp::Blob_Setter<vp::Mutable_Blob>::set<unsigned int>(v9 + 2, *a2);
    v7 = *(v3 + 48);
    v8 = *(v3 + 56) - v7;
    if (v10 <= v8)
    {
      if (v10 < v8)
      {
        *(v3 + 56) = v7 + v10;
      }
    }

    else
    {
      std::vector<std::byte,vp::Allocator<std::byte>>::__append((v3 + 48), v10 - v8);
    }

    *(v3 + 84) = 1;
    return caulk::pooled_semaphore_mutex::_unlock((v3 + 80));
  }

  return result;
}

uint64_t std::__function::__func<vp::vx::IO_Property_Setter_Delegate<CAOrientation>::notify(vp::vx::io::Event,vp::vx::io::Node &)::{lambda(CAOrientation const&)#1},std::allocator<vp::vx::IO_Property_Setter_Delegate<CAOrientation>::notify(vp::vx::io::Event,vp::vx::io::Node &)::{lambda(CAOrientation const&)#1}>,void ()(CAOrientation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C58B8;
  a2[1] = v2;
  return result;
}

uint64_t vp::vx::IO_Property_Setter_Delegate<CAOrientation>::get_property_ids@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
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

int *caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>,vp::Allocator<std::byte>>::vtable<void vp::vx::IO_Property_Setter_Delegate_Factory::add_property_setter<std::vector<unsigned char>>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<std::vector<unsigned char>>)::{lambda(vp::Allocator<std::byte>)#1}>(caulk::inplace_function_detail::wrapper<std::vector<unsigned char>>)::{lambda(void *,void *)#2}::__invoke(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  v2 = a2 + 2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v2 + 2);
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  return vp::vx::data_flow::State<void>::~State(v2);
}

void caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>,vp::Allocator<std::byte>>::vtable<void vp::vx::IO_Property_Setter_Delegate_Factory::add_property_setter<std::vector<unsigned char>>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<std::vector<unsigned char>>)::{lambda(vp::Allocator<std::byte>)#1}>(caulk::inplace_function_detail::wrapper<std::vector<unsigned char>>)::{lambda(void *,vp::Allocator<std::byte>&&)#1}::__invoke(int *a1, uint64_t *a2)
{
  v3 = *a2;
  v6 = 0;
  v7 = v3;
  v8 = xmmword_272756710;
  v4 = (*(*v3 + 16))(v3, 112, 8);
  v5 = *a1;
  vp::vx::data_flow::State<void>::State(v9, a1 + 2);
  *(v4 + 88) = &unk_2881C6630;
  operator new();
}

void *std::unique_ptr<vp::vx::IO_Property_Setter_Delegate<std::vector<unsigned char>>,vp::Allocator_Delete<vp::vx::IO_Property_Setter_Delegate<std::vector<unsigned char>>>>::reset[abi:ne200100](void *result, uint64_t a2)
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

    v5 = *(v2 + 48);
    if (v5)
    {
      *(v2 + 56) = v5;
      std::allocator_traits<vp::Allocator<std::byte>>::deallocate[abi:ne200100](*(v2 + 72), v5, *(v2 + 64) - v5);
    }

    vp::vx::data_flow::State<void>::~State((v2 + 16));
    *(v2 + 88) = &unk_2881C6630;
    v6 = *(v2 + 104);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void virtual thunk tovp::vx::IO_Property_Setter_Delegate<std::vector<unsigned char>>::~IO_Property_Setter_Delegate(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 10);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener(v1 + 4, v2);
    *(v1 + 10) = 0;
  }

  v3 = *(v1 + 6);
  if (v3)
  {
    *(v1 + 7) = v3;
    std::allocator_traits<vp::Allocator<std::byte>>::deallocate[abi:ne200100](*(v1 + 9), v3, *(v1 + 8) - v3);
  }

  vp::vx::data_flow::State<void>::~State(v1 + 4);
  *(v1 + 11) = &unk_2881C6630;
  v4 = *(v1 + 13);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
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

  v3 = *(v1 + 6);
  if (v3)
  {
    *(v1 + 7) = v3;
    std::allocator_traits<vp::Allocator<std::byte>>::deallocate[abi:ne200100](*(v1 + 9), v3, *(v1 + 8) - v3);
  }

  vp::vx::data_flow::State<void>::~State(v1 + 4);
  *(v1 + 11) = &unk_2881C6630;
  v4 = *(v1 + 13);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t vp::vx::IO_Property_Setter_Delegate<std::vector<unsigned char>>::process(uint64_t result, int a2, uint64_t a3)
{
  if (!a2)
  {
    v11[4] = v3;
    v11[5] = v4;
    v6 = result;
    result = caulk::pooled_semaphore_mutex::try_lock((result + 80));
    if (result)
    {
      if (*(v6 + 84) == 1)
      {
        vp::Blob::Blob(v11, *(v6 + 48), *(v6 + 56) - *(v6 + 48));
        (*(*a3 + 40))(v7, a3, *(v6 + 8), v11);
        if ((v10 & 1) == 0 && SHIBYTE(v8) < 0)
        {
          std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v9, v7[2], v8 & 0x7FFFFFFFFFFFFFFFLL);
        }

        *(v6 + 84) = 0;
      }

      return caulk::pooled_semaphore_mutex::_unlock((v6 + 80));
    }
  }

  return result;
}

void vp::vx::IO_Property_Setter_Delegate<std::vector<unsigned char>>::~IO_Property_Setter_Delegate(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener((a1 + 16), v2);
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    std::allocator_traits<vp::Allocator<std::byte>>::deallocate[abi:ne200100](*(a1 + 72), v3, *(a1 + 64) - v3);
  }

  vp::vx::data_flow::State<void>::~State((a1 + 16));
  *(a1 + 88) = &unk_2881C6630;
  v4 = *(a1 + 104);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::IO_Property_Setter_Delegate<std::vector<unsigned char>>::~IO_Property_Setter_Delegate(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener((a1 + 16), v2);
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    std::allocator_traits<vp::Allocator<std::byte>>::deallocate[abi:ne200100](*(a1 + 72), v3, *(a1 + 64) - v3);
  }

  vp::vx::data_flow::State<void>::~State((a1 + 16));
  *(a1 + 88) = &unk_2881C6630;
  v4 = *(a1 + 104);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void vp::vx::IO_Property_Setter_Delegate<std::vector<unsigned char>>::notify(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      vp::vx::data_flow::State<void>::unregister_listener((a1 + 16), v3);
      *(a1 + 40) = 0;
    }
  }

  else if (!a2)
  {
    v5[0] = &unk_2881C5760;
    v5[1] = a1;
    v5[3] = v5;
    std::__function::__value_func<void ()(std::vector<unsigned char> const&)>::__value_func[abi:ne200100](v6, v5);
    v7 = 0;
    operator new();
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2726FE744(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(std::vector<unsigned char> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::vector<unsigned char> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<std::vector<unsigned char>>::register_listener(std::function<void ()(std::vector<unsigned char> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<unsigned char>>::register_listener(std::function<void ()(std::vector<unsigned char> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::vector<unsigned char>>(void)::s_type_id;
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

void std::__function::__func<vp::vx::data_flow::State<std::vector<unsigned char>>::register_listener(std::function<void ()(std::vector<unsigned char> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<unsigned char>>::register_listener(std::function<void ()(std::vector<unsigned char> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::vector<unsigned char> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::vector<unsigned char>>::register_listener(std::function<void ()(std::vector<unsigned char> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<unsigned char>>::register_listener(std::function<void ()(std::vector<unsigned char> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C5718;
  std::__function::__value_func<void ()(std::vector<unsigned char> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::vector<unsigned char>>::register_listener(std::function<void ()(std::vector<unsigned char> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<unsigned char>>::register_listener(std::function<void ()(std::vector<unsigned char> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C5718;
  std::__function::__value_func<void ()(std::vector<unsigned char> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<vp::vx::IO_Property_Setter_Delegate<std::vector<unsigned char>>::notify(vp::vx::io::Event,vp::vx::io::Node &)::{lambda(std::vector<unsigned char> const&)#1},std::allocator<vp::vx::IO_Property_Setter_Delegate<std::vector<unsigned char>>::notify(vp::vx::io::Event,vp::vx::io::Node &)::{lambda(std::vector<unsigned char> const&)#1}>,void ()(std::vector<unsigned char> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = caulk::pooled_semaphore_mutex::try_lock((v3 + 80));
  if (result)
  {
    v5 = *(a2 + 8);
    v6 = v5 - *a2;
    if (v5 != *a2)
    {
      v7 = *(v3 + 48);
      v8 = *(v3 + 56) - v7;
      v9 = v6 >= v8;
      v10 = v6 - v8;
      if (v10 != 0 && v9)
      {
        std::vector<std::byte,vp::Allocator<std::byte>>::__append((v3 + 48), v10);
        v7 = *(v3 + 48);
      }

      else if (!v9)
      {
        *(v3 + 56) = &v7[v6];
      }

      vp::Mutable_Blob::Mutable_Blob(v13, v7, v6);
      vp::Blob_Setter<vp::Mutable_Blob>::set<vp::Blob_View<unsigned char const>>(v13 + 2, *a2, *(a2 + 8) - *a2);
      v11 = *(v3 + 48);
      v12 = *(v3 + 56) - v11;
      if (v14 <= v12)
      {
        if (v14 < v12)
        {
          *(v3 + 56) = v11 + v14;
        }
      }

      else
      {
        std::vector<std::byte,vp::Allocator<std::byte>>::__append((v3 + 48), v14 - v12);
      }

      *(v3 + 84) = 1;
    }

    return caulk::pooled_semaphore_mutex::_unlock((v3 + 80));
  }

  return result;
}

uint64_t vp::Blob_Setter<vp::Mutable_Blob>::set<vp::Blob_View<unsigned char const>>(uint64_t a1, const void *a2, size_t a3)
{
  if (*(a1 + 6) < a3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
  }

  v4 = a1 - 2;
  memcpy(*(a1 - 2), a2, a3);

  return vp::Mutable_Blob::set_size(v4, a3);
}

uint64_t std::__function::__func<vp::vx::IO_Property_Setter_Delegate<std::vector<unsigned char>>::notify(vp::vx::io::Event,vp::vx::io::Node &)::{lambda(std::vector<unsigned char> const&)#1},std::allocator<vp::vx::IO_Property_Setter_Delegate<std::vector<unsigned char>>::notify(vp::vx::io::Event,vp::vx::io::Node &)::{lambda(std::vector<unsigned char> const&)#1}>,void ()(std::vector<unsigned char> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C5760;
  a2[1] = v2;
  return result;
}

uint64_t vp::vx::IO_Property_Setter_Delegate<std::vector<unsigned char>>::get_property_ids@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
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

int *caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_io_property_setter_commands(void)::$_0>(uint64_t **a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  (*(*(v1 + 8) + 16))(&v29, v1 + 8, 71);
  v17 = v29;
  v18 = v30;
  v30 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v29);
  v27 = 1668312435;
  vp::vx::data_flow::State<void>::State(v28, &v17);
  LODWORD(v30) = v27;
  DWORD2(v30) = *v28;
  v31 = *&v28[8];
  *&v28[8] = 0;
  *&v28[16] = 0;
  v29 = caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::k_wrapper_vtable<void vp::vx::IO_Property_Setter_Command_Factory::add_property_setter<applesauce::CF::DictionaryRef>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::{lambda(vp::Allocator<std::byte>)#1}>;
  v2 = boost::container::flat_map<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<std::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_subscript(v1 + 1384, 0x63706D73u);
  caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::operator=(v2, &v29);
  (v29[3])(&v30);
  vp::vx::data_flow::State<void>::~State(v28);
  vp::vx::data_flow::State<void>::~State(&v17);
  vp::vx::Voice_Processor::get_other_audio_advanced_ducking_enabled(v16, v1);
  v27 = 1852662885;
  vp::vx::data_flow::State<void>::State(v28, v16);
  LODWORD(v30) = v27;
  DWORD2(v30) = *v28;
  v31 = *&v28[8];
  *&v28[8] = 0;
  *&v28[16] = 0;
  v29 = caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::k_wrapper_vtable<void vp::vx::IO_Property_Setter_Command_Factory::add_property_setter<BOOL>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<BOOL>)::{lambda(vp::Allocator<std::byte>)#1}>;
  v3 = boost::container::flat_map<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<std::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_subscript(v1 + 1384, 0x6E6D6465u);
  caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::operator=(v3, &v29);
  (v29[3])(&v30);
  vp::vx::data_flow::State<void>::~State(v28);
  vp::vx::data_flow::State<void>::~State(v16);
  cf = CFStringCreateWithBytes(0, "other audio advanced ducking level", 34, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v20 = 0;
  v21 = 0uLL;
  std::recursive_mutex::lock((v1 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((v1 + 128), &cf);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v27, (v1 + 64), *(v4 + 6));
    v5 = v27;
    LODWORD(v29) = v27;
    v14 = *v28;
    *v28 = 0;
    *&v28[8] = 0;
    vp::vx::data_flow::State<void>::~State(&v20);
    v20 = v5;
    v21 = v14;
    v30 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v29);
    vp::vx::data_flow::State<void>::~State(&v27);
  }

  if (!v21)
  {
    (*(*(v1 + 8) + 16))(&v29, v1 + 8, 90);
    v6 = v29;
    v22 = v29;
    v23 = v30;
    v30 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v29);
    v29 = &unk_2881C0B20;
    LOBYTE(v30) = 0;
    *&v31 = &v29;
    v26 = v6;
    vp::vx::data_flow::State_Manager::create_state(&v27, (v1 + 64), &v29);
    v7 = v27;
    v24 = v27;
    v15 = *v28;
    *v28 = 0;
    *&v28[8] = 0;
    vp::vx::data_flow::State<void>::~State(&v27);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v29);
    LODWORD(v29) = v7;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v24);
    vp::vx::data_flow::State<void>::~State(&v22);
    vp::vx::data_flow::State<void>::~State(&v20);
    v20 = v7;
    v21 = v15;
    v30 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v29);
    v8 = v20;
    v9 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v29 = v9;
    LODWORD(v30) = v8;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(v1 + 128, &v29, &v29);
    if (v29)
    {
      CFRelease(v29);
    }
  }

  v24 = v20;
  v25 = v21;
  v21 = 0uLL;
  std::recursive_mutex::unlock((v1 + 184));
  vp::vx::data_flow::State<void>::~State(&v20);
  if (cf)
  {
    CFRelease(cf);
  }

  v27 = 1852662892;
  vp::vx::data_flow::State<void>::State(v28, &v24);
  LODWORD(v30) = v27;
  DWORD2(v30) = *v28;
  v31 = *&v28[8];
  *&v28[8] = 0;
  *&v28[16] = 0;
  v29 = caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::k_wrapper_vtable<void vp::vx::IO_Property_Setter_Command_Factory::add_property_setter<AUVoiceIOOtherAudioDuckingLevel>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<AUVoiceIOOtherAudioDuckingLevel>)::{lambda(vp::Allocator<std::byte>)#1}>;
  v10 = boost::container::flat_map<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<std::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_subscript(v1 + 1384, 0x6E6D646Cu);
  caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::operator=(v10, &v29);
  (v29[3])(&v30);
  vp::vx::data_flow::State<void>::~State(v28);
  result = vp::vx::data_flow::State<void>::~State(&v24);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726FF1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *boost::container::flat_map<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<std::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_subscript(uint64_t a1, unsigned int a2)
{
  v44[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
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

  if (v3)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    do
    {
      if (v7 != 1 && !v6)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v8 = v7 >> 1;
      v9 = &v6[12 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 12;
      v7 += ~(v7 >> 1);
      if (v11 >= a2)
      {
        v7 = v8;
      }

      else
      {
        v6 = v10;
      }
    }

    while (v7);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  if (v6 == (v2 + 48 * v3))
  {
    goto LABEL_20;
  }

  if (!v6)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*v6 > a2)
  {
LABEL_20:
    v37 = a2;
    v40 = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>,vp::Allocator<std::byte>>::empty;
    v42 = a2;
    v38 = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>,vp::Allocator<std::byte>>::empty;
    v43 = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>,vp::Allocator<std::byte>>::empty;
    v12 = *(a1 + 8);
    if (v12 > v6)
    {
      goto LABEL_56;
    }

    v13 = *(a1 + 16);
    if (!v12 && v13)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v14 = v12 + 48 * v13;
    if (v6 > v14)
    {
LABEL_56:
      v30 = "this->priv_in_range_or_end(hint)";
      v31 = 879;
      v32 = "flat_tree.hpp";
      v33 = "insert_unique";
    }

    else
    {
      v35 = 0;
      if (v6 == v14)
      {
        goto LABEL_27;
      }

      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (v42 < *v6)
      {
LABEL_27:
        v35 = v6;
        if (v6 != v12)
        {
          if (!v6)
          {
            __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
          }

          v17 = *(v6 - 12);
          v16 = v6 - 12;
          v15 = v17;
          if (v17 >= v42)
          {
            if (v42 >= v15)
            {
              v35 = v16;
              goto LABEL_48;
            }

            v36 = v16;
            if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,boost::container::dtl::select1st<vp::vx::Graph_Property_ID>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_insert_unique_prepare(v12, &v36, &v42, &v35))
            {
LABEL_48:
              if (!*(a1 + 8) && v35)
              {
                __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
              }

              v34 = v35;
LABEL_51:
              (v43[3])(v44);
              v6 = v34;
              (v38[3])(&v39);
              (v40[3])(&v41);
              if (!v6)
              {
                __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
              }

              goto LABEL_52;
            }
          }
        }
      }

      else
      {
        v36 = v14;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,boost::container::dtl::select1st<vp::vx::Graph_Property_ID>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_insert_unique_prepare(v6, &v36, &v42, &v35))
        {
          goto LABEL_48;
        }
      }

      v18 = v35;
      v19 = *(a1 + 8);
      if (v19 > v35)
      {
        goto LABEL_59;
      }

      v20 = *(a1 + 16);
      if (!v19 && v20)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v21 = v19 + 48 * v20;
      if (v35 > v21)
      {
LABEL_59:
        v30 = "this->priv_in_range_or_end(position)";
        v31 = 1862;
        v32 = "vector.hpp";
        v33 = "emplace";
      }

      else
      {
        v22 = *(a1 + 24);
        if (v22 >= v20)
        {
          if (v22 == v20)
          {
            boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>*,boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>(&v34, a1, v35, &v42);
          }

          else
          {
            if (v21 == v35)
            {
              *v21 = v42;
              v27 = v43;
              v43 = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>,vp::Allocator<std::byte>>::empty;
              *(v21 + 8) = v27;
              (*(v27 + 16))(v21 + 16, v44);
              ++*(a1 + 16);
            }

            else
            {
              v23 = v21 - 48;
              *v21 = *(v21 - 48);
              v24 = *(v21 - 40);
              *(v21 - 40) = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>,vp::Allocator<std::byte>>::empty;
              *(v21 + 8) = v24;
              (*(v24 + 16))(v21 + 16, v21 - 32);
              ++*(a1 + 16);
              if (v23 != v18)
              {
                v25 = v23;
                do
                {
                  v26 = *(v25 - 12);
                  v25 -= 12;
                  *v23 = v26;
                  caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::operator=((v23 + 8), (v23 - 40));
                  v23 = v25;
                }

                while (v25 != v18);
              }

              *v18 = v42;
              caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::operator=(v18 + 1, &v43);
            }

            v34 = v18;
          }

          goto LABEL_51;
        }

        v30 = "this->m_holder.capacity() >= this->m_holder.m_size";
        v31 = 2821;
        v32 = "vector.hpp";
        v33 = "priv_insert_forward_range";
      }
    }

    __assert_rtn(v33, v32, v31, v30);
  }

LABEL_52:
  v28 = *MEMORY[0x277D85DE8];
  return v6 + 2;
}

void sub_2726FF7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    (*(*a1 + 24))(a1 + 1);
    v4 = *a2;
    *a2 = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>,vp::Allocator<std::byte>>::empty;
    *a1 = v4;
    (*(v4 + 16))(a1 + 1, a2 + 1);
  }

  return a1;
}

void caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>,vp::Allocator<std::byte>>::vtable(void)::{lambda(void *,vp::Allocator<std::byte>&&)#1}::__invoke()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>*,boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x555555555555555)
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
  if (v6 >= 0x555555555555555)
  {
    v6 = 0x555555555555555;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0x555555555555555)
  {
LABEL_29:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v34 = *(a2 + 1);
  v13 = (*(**a2 + 16))(*a2, 48 * v8, 8);
  v14 = v13;
  v36[0] = v13;
  v36[1] = a2;
  v35 = v8;
  v36[2] = v8;
  v16 = *(a2 + 1);
  v15 = *(a2 + 2);
  v17 = v13;
  if (v16 != a3)
  {
    v33 = a1;
    v18 = *(a2 + 1);
    v19 = v13;
    do
    {
      v20 = v19;
      *v19 = *v18;
      v21 = *(v18 + 8);
      *(v18 + 8) = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>,vp::Allocator<std::byte>>::empty;
      *(v20 + 1) = v21;
      v22 = v18 + 16;
      (*(v21 + 16))(v20 + 4, v18 + 16);
      v18 = v22 + 32;
      v19 = v20 + 12;
    }

    while (v22 + 32 != a3);
    v17 = (v20 + 12);
    a1 = v33;
  }

  *v17 = *a4;
  v23 = *(a4 + 8);
  *(a4 + 8) = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>,vp::Allocator<std::byte>>::empty;
  *(v17 + 8) = v23;
  (*(v23 + 16))(v17 + 16, a4 + 16);
  v24 = v16 + 48 * v15;
  if (v24 != a3)
  {
    v25 = v17 + 64;
    v26 = a3;
    do
    {
      *(v25 - 16) = *v26;
      v27 = *(v26 + 8);
      *(v26 + 8) = &caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>,vp::Allocator<std::byte>>::empty;
      *(v25 - 8) = v27;
      v28 = v26 + 16;
      (*(v27 + 16))(v25, v26 + 16);
      v25 += 48;
      v26 = v28 + 32;
    }

    while (v28 + 32 != v24);
  }

  v36[0] = 0;
  if (v16)
  {
    v29 = *(a2 + 2);
    if (v29)
    {
      v30 = v16 + 16;
      do
      {
        (*(*(v30 - 8) + 24))(v30);
        v30 += 48;
        --v29;
      }

      while (v29);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 48 * *(a2 + 3), 8);
  }

  v31 = *(a2 + 2) + 1;
  *(a2 + 1) = v14;
  *(a2 + 2) = v31;
  *(a2 + 3) = v35;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::~scoped_array_deallocator(v36);
  *a1 = *(a2 + 1) + a3 - v34;
  return result;
}

void sub_2726FFBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 48 * *(a1 + 16), 8);
  }

  return a1;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,boost::container::dtl::select1st<vp::vx::Graph_Property_ID>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int **a4)
{
  v9 = a1;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,boost::container::dtl::select1st<vp::vx::Graph_Property_ID>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>*,true>,vp::vx::Graph_Property_ID>(&v10, &v9, *a2, *a3);
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

int *caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>,vp::Allocator<std::byte>>::vtable<void vp::vx::IO_Property_Setter_Command_Factory::add_property_setter<AUVoiceIOOtherAudioDuckingLevel>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<AUVoiceIOOtherAudioDuckingLevel>)::{lambda(vp::Allocator<std::byte>)#1}>(caulk::inplace_function_detail::wrapper<AUVoiceIOOtherAudioDuckingLevel>)::{lambda(void *,void *)#2}::__invoke(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  v2 = a2 + 2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v2 + 2);
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  return vp::vx::data_flow::State<void>::~State(v2);
}

void caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>,vp::Allocator<std::byte>>::vtable<void vp::vx::IO_Property_Setter_Command_Factory::add_property_setter<AUVoiceIOOtherAudioDuckingLevel>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<AUVoiceIOOtherAudioDuckingLevel>)::{lambda(vp::Allocator<std::byte>)#1}>(caulk::inplace_function_detail::wrapper<AUVoiceIOOtherAudioDuckingLevel>)::{lambda(void *,vp::Allocator<std::byte>&&)#1}::__invoke(int *a1, uint64_t *a2)
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

void *std::unique_ptr<vp::vx::IO_Property_Setter_Command<AUVoiceIOOtherAudioDuckingLevel>,vp::Allocator_Delete<vp::vx::IO_Property_Setter_Command<AUVoiceIOOtherAudioDuckingLevel>>>::reset[abi:ne200100](void *result, uint64_t a2)
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

void virtual thunk tovp::vx::IO_Property_Setter_Command<AUVoiceIOOtherAudioDuckingLevel>::~IO_Property_Setter_Command(void *a1)
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

void vp::vx::IO_Property_Setter_Command<AUVoiceIOOtherAudioDuckingLevel>::set_property_controller(_DWORD *a1, uint64_t *a2)
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

void sub_272700218(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(AUVoiceIOOtherAudioDuckingLevel const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(AUVoiceIOOtherAudioDuckingLevel const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<AUVoiceIOOtherAudioDuckingLevel>::register_listener(std::function<void ()(AUVoiceIOOtherAudioDuckingLevel const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<AUVoiceIOOtherAudioDuckingLevel>::register_listener(std::function<void ()(AUVoiceIOOtherAudioDuckingLevel const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<AUVoiceIOOtherAudioDuckingLevel>(void)::s_type_id;
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

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<AUVoiceIOOtherAudioDuckingLevel>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void std::__function::__func<vp::vx::data_flow::State<AUVoiceIOOtherAudioDuckingLevel>::register_listener(std::function<void ()(AUVoiceIOOtherAudioDuckingLevel const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<AUVoiceIOOtherAudioDuckingLevel>::register_listener(std::function<void ()(AUVoiceIOOtherAudioDuckingLevel const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(AUVoiceIOOtherAudioDuckingLevel const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<AUVoiceIOOtherAudioDuckingLevel>::register_listener(std::function<void ()(AUVoiceIOOtherAudioDuckingLevel const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<AUVoiceIOOtherAudioDuckingLevel>::register_listener(std::function<void ()(AUVoiceIOOtherAudioDuckingLevel const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C55E8;
  std::__function::__value_func<void ()(AUVoiceIOOtherAudioDuckingLevel const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<AUVoiceIOOtherAudioDuckingLevel>::register_listener(std::function<void ()(AUVoiceIOOtherAudioDuckingLevel const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<AUVoiceIOOtherAudioDuckingLevel>::register_listener(std::function<void ()(AUVoiceIOOtherAudioDuckingLevel const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C55E8;
  std::__function::__value_func<void ()(AUVoiceIOOtherAudioDuckingLevel const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void sub_272700934(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<vp::vx::IO_Property_Setter_Command<AUVoiceIOOtherAudioDuckingLevel>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(AUVoiceIOOtherAudioDuckingLevel const&)#1},std::allocator<vp::vx::IO_Property_Setter_Command<AUVoiceIOOtherAudioDuckingLevel>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(AUVoiceIOOtherAudioDuckingLevel const&)#1}>,void ()(AUVoiceIOOtherAudioDuckingLevel const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::IO_Property_Setter_Command<AUVoiceIOOtherAudioDuckingLevel>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(AUVoiceIOOtherAudioDuckingLevel const&)#1},std::allocator<vp::vx::IO_Property_Setter_Command<AUVoiceIOOtherAudioDuckingLevel>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(AUVoiceIOOtherAudioDuckingLevel const&)#1}>,void ()(AUVoiceIOOtherAudioDuckingLevel const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::IO_Property_Setter_Command<AUVoiceIOOtherAudioDuckingLevel>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(AUVoiceIOOtherAudioDuckingLevel const&)#1},std::allocator<vp::vx::IO_Property_Setter_Command<AUVoiceIOOtherAudioDuckingLevel>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(AUVoiceIOOtherAudioDuckingLevel const&)#1}>,void ()(AUVoiceIOOtherAudioDuckingLevel const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C5630;
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

void std::__function::__func<vp::vx::IO_Property_Setter_Command<AUVoiceIOOtherAudioDuckingLevel>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(AUVoiceIOOtherAudioDuckingLevel const&)#1},std::allocator<vp::vx::IO_Property_Setter_Command<AUVoiceIOOtherAudioDuckingLevel>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(AUVoiceIOOtherAudioDuckingLevel const&)#1}>,void ()(AUVoiceIOOtherAudioDuckingLevel const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C5630;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::IO_Property_Setter_Command<AUVoiceIOOtherAudioDuckingLevel>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(AUVoiceIOOtherAudioDuckingLevel const&)#1},std::allocator<vp::vx::IO_Property_Setter_Command<AUVoiceIOOtherAudioDuckingLevel>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(AUVoiceIOOtherAudioDuckingLevel const&)#1}>,void ()(AUVoiceIOOtherAudioDuckingLevel const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C5630;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::IO_Property_Setter_Command<AUVoiceIOOtherAudioDuckingLevel>::~IO_Property_Setter_Command(uint64_t a1)
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

uint64_t vp::vx::IO_Property_Setter_Command<AUVoiceIOOtherAudioDuckingLevel>::~IO_Property_Setter_Command(uint64_t a1)
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

uint64_t vp::vx::IO_Property_Setter_Command<AUVoiceIOOtherAudioDuckingLevel>::get_property_ids@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
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

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionI31AUVoiceIOOtherAudioDuckingLevelEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor38get_other_audio_advanced_ducking_levelEvENK3__0clEvEUlRK39AUVoiceIOOtherAudioDuckingConfigurationE_JSD_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EEclEOS10_OS11_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *(vp::vx::data_flow::Value::view_storage(**a2) + 4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<AUVoiceIOOtherAudioDuckingLevel>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionI31AUVoiceIOOtherAudioDuckingLevelEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor38get_other_audio_advanced_ducking_levelEvENK3__0clEvEUlRK39AUVoiceIOOtherAudioDuckingConfigurationE_JSD_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7__cloneEPNS0_6__baseIS15_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0B20;
  *(a2 + 8) = *(result + 8);
  return result;
}

int *caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>,vp::Allocator<std::byte>>::vtable<void vp::vx::IO_Property_Setter_Command_Factory::add_property_setter<BOOL>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<BOOL>)::{lambda(vp::Allocator<std::byte>)#1}>(caulk::inplace_function_detail::wrapper<BOOL>)::{lambda(void *,void *)#2}::__invoke(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  v2 = a2 + 2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v2 + 2);
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  return vp::vx::data_flow::State<void>::~State(v2);
}

void caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>,vp::Allocator<std::byte>>::vtable<void vp::vx::IO_Property_Setter_Command_Factory::add_property_setter<BOOL>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<BOOL>)::{lambda(vp::Allocator<std::byte>)#1}>(caulk::inplace_function_detail::wrapper<BOOL>)::{lambda(void *,vp::Allocator<std::byte>&&)#1}::__invoke(int *a1, uint64_t *a2)
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

void *std::unique_ptr<vp::vx::IO_Property_Setter_Command<BOOL>,vp::Allocator_Delete<vp::vx::IO_Property_Setter_Command<BOOL>>>::reset[abi:ne200100](void *result, uint64_t a2)
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

void virtual thunk tovp::vx::IO_Property_Setter_Command<BOOL>::~IO_Property_Setter_Command(void *a1)
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

void vp::vx::IO_Property_Setter_Command<BOOL>::set_property_controller(_DWORD *a1, uint64_t *a2)
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

void sub_272701280(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_272701578(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<vp::vx::IO_Property_Setter_Command<BOOL>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(BOOL const&)#1},std::allocator<vp::vx::IO_Property_Setter_Command<BOOL>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::IO_Property_Setter_Command<BOOL>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(BOOL const&)#1},std::allocator<vp::vx::IO_Property_Setter_Command<BOOL>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::IO_Property_Setter_Command<BOOL>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(BOOL const&)#1},std::allocator<vp::vx::IO_Property_Setter_Command<BOOL>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C5508;
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

void std::__function::__func<vp::vx::IO_Property_Setter_Command<BOOL>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(BOOL const&)#1},std::allocator<vp::vx::IO_Property_Setter_Command<BOOL>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C5508;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::IO_Property_Setter_Command<BOOL>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(BOOL const&)#1},std::allocator<vp::vx::IO_Property_Setter_Command<BOOL>::set_property_controller(std::weak_ptr<vp::vx::io::Property_Controller>)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C5508;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::IO_Property_Setter_Command<BOOL>::~IO_Property_Setter_Command(uint64_t a1)
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

uint64_t vp::vx::IO_Property_Setter_Command<BOOL>::~IO_Property_Setter_Command(uint64_t a1)
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

uint64_t vp::vx::IO_Property_Setter_Command<BOOL>::get_property_ids@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
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

int *caulk::inplace_function_detail::vtable<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>,vp::Allocator<std::byte>>::vtable<void vp::vx::IO_Property_Setter_Command_Factory::add_property_setter<applesauce::CF::DictionaryRef>(vp::vx::Graph_Property_ID,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>)::{lambda(vp::Allocator<std::byte>)#1}>(caulk::inplace_function_detail::wrapper<applesauce::CF::DictionaryRef>)::{lambda(void *,void *)#2}::__invoke(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  v2 = a2 + 2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v2 + 2);
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  return vp::vx::data_flow::State<void>::~State(v2);
}