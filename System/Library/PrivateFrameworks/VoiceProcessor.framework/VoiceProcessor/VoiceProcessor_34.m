uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalIdEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS7_ZNS3_12_GLOBAL__N_125make_member_getter_lambdaINS3_20Global_ConfigurationES7_EEDaMT_T0_EUlRKSE_E_JSE_EEESF_OSH_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSE_EEERNS4_13State_ManagerESG_DpRKNSN_IT0_EEEUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EEclEOS18_OS19_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = (vp::vx::data_flow::Value::view_storage(**a2) + *(a1 + 8));
  v5 = *v4;
  v6 = v4[1];
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::optional<double>>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  *(result + 8) = v6;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalIdEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS7_ZNS3_12_GLOBAL__N_125make_member_getter_lambdaINS3_20Global_ConfigurationES7_EEDaMT_T0_EUlRKSE_E_JSE_EEESF_OSH_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSE_EEERNS4_13State_ManagerESG_DpRKNSN_IT0_EEEUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EE7__cloneEPNS0_6__baseIS1D_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C4798;
  a2[1] = v2;
  return result;
}

int *caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_user_defaults_states(void)::$_0>(uint64_t **a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v58, *(v1 + 864), *(v1 + 872), 0);
  v2 = *(v1 + 864);
  v3 = *(v1 + 872);
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

  v5 = v58[0];
  if (v58[0] == v2 + 32 * v3)
  {
    v59[0] = "vp_enable_debug_features";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v64, v1, v59);
    v71 = &unk_2881C43D0;
    LOBYTE(v72) = 0;
    *(&v73 + 1) = &v71;
    LODWORD(v57[0]) = v64[0];
    vp::vx::data_flow::State_Manager::create_state(&v60, (v1 + 64), &v71);
    LODWORD(v68) = v60;
    v69 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v71);
    v65 = v68;
    v66 = v69;
    v69 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v68);
    vp::vx::data_flow::State<void>::~State(v64);
    LODWORD(v71) = 0;
    v72 = v65;
    v73 = v66;
    v66 = 0uLL;
    v60 = v5;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v68, v1 + 856, &v60, &v71);
    v5 = v68;
    v58[0] = v68;
    vp::vx::data_flow::State<void>::~State(&v72);
    vp::vx::data_flow::State<void>::~State(&v65);
  }

  vp::vx::data_flow::State<void>::State(v59, v5 + 2);
  vp::vx::data_flow::State<void>::~State(v59);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v57, *(v1 + 864), *(v1 + 872), 1);
  v6 = *(v1 + 864);
  v7 = *(v1 + 872);
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

  v9 = v57[0];
  if (v57[0] == v6 + 32 * v7)
  {
    v58[0] = "vp_enable_graph_audio_recorders";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v64, v1, v58);
    v71 = &unk_2881C44C8;
    LOBYTE(v72) = 0;
    *(&v73 + 1) = &v71;
    LODWORD(v56[0]) = v64[0];
    vp::vx::data_flow::State_Manager::create_state(&v60, (v1 + 64), &v71);
    LODWORD(v68) = v60;
    v69 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v71);
    v65 = v68;
    v66 = v69;
    v69 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v68);
    vp::vx::data_flow::State<void>::~State(v64);
    LODWORD(v71) = 1;
    v72 = v65;
    v73 = v66;
    v66 = 0uLL;
    v60 = v9;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v68, v1 + 856, &v60, &v71);
    v9 = v68;
    v57[0] = v68;
    vp::vx::data_flow::State<void>::~State(&v72);
    vp::vx::data_flow::State<void>::~State(&v65);
  }

  vp::vx::data_flow::State<void>::State(v58, v9 + 2);
  vp::vx::data_flow::State<void>::~State(v58);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v56, *(v1 + 864), *(v1 + 872), 2);
  v10 = *(v1 + 864);
  v11 = *(v1 + 872);
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

  v13 = v56[0];
  if (v56[0] == v10 + 32 * v11)
  {
    v57[0] = "vp_enable_graph_audio_recorders_predicate";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v64, v1, v57);
    v71 = &unk_2881C4510;
    LOBYTE(v72) = 0;
    *(&v73 + 1) = &v71;
    LODWORD(v55[0]) = v64[0];
    vp::vx::data_flow::State_Manager::create_state(&v60, (v1 + 64), &v71);
    LODWORD(v68) = v60;
    v69 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v71);
    v65 = v68;
    v66 = v69;
    v69 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v68);
    vp::vx::data_flow::State<void>::~State(v64);
    LODWORD(v60) = 2;
    LODWORD(v61) = v65;
    v14 = v66;
    v66 = 0uLL;
    LODWORD(v71) = 2;
    v72 = v65;
    v73 = v14;
    *(&v61 + 1) = 0;
    v62 = 0;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::insert_unique(&v68, v1 + 856, v13, &v71);
    vp::vx::data_flow::State<void>::~State(&v72);
    v13 = v68;
    v56[0] = v68;
    vp::vx::data_flow::State<void>::~State(&v61);
    vp::vx::data_flow::State<void>::~State(&v65);
  }

  vp::vx::data_flow::State<void>::State(v57, v13 + 2);
  vp::vx::data_flow::State<void>::~State(v57);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v55, *(v1 + 864), *(v1 + 872), 3);
  v15 = *(v1 + 864);
  v16 = *(v1 + 872);
  if (!v15 && v16)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v17 = v55[0];
  if (v55[0] == v15 + 32 * v16)
  {
    v56[0] = "EnableTelephonyMonitor";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v64, v1, v56);
    v71 = &unk_2881C4558;
    LOBYTE(v72) = 0;
    *(&v73 + 1) = &v71;
    LODWORD(v54[0]) = v64[0];
    vp::vx::data_flow::State_Manager::create_state(&v60, (v1 + 64), &v71);
    LODWORD(v68) = v60;
    v69 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v71);
    v65 = v68;
    v66 = v69;
    v69 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v68);
    vp::vx::data_flow::State<void>::~State(v64);
    LODWORD(v71) = 3;
    v72 = v65;
    v73 = v66;
    v66 = 0uLL;
    v60 = v17;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v68, v1 + 856, &v60, &v71);
    v17 = v68;
    v55[0] = v68;
    vp::vx::data_flow::State<void>::~State(&v72);
    vp::vx::data_flow::State<void>::~State(&v65);
  }

  vp::vx::data_flow::State<void>::State(v56, v17 + 2);
  vp::vx::data_flow::State<void>::~State(v56);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v54, *(v1 + 864), *(v1 + 872), 4);
  v18 = *(v1 + 864);
  v19 = *(v1 + 872);
  if (!v18 && v19)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v20 = v54[0];
  if (v54[0] == v18 + 32 * v19)
  {
    v55[0] = "EnableVPTelephonyMonitor";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v64, v1, v55);
    v71 = &unk_2881C45A0;
    LOBYTE(v72) = 0;
    *(&v73 + 1) = &v71;
    LODWORD(v53[0]) = v64[0];
    vp::vx::data_flow::State_Manager::create_state(&v60, (v1 + 64), &v71);
    LODWORD(v68) = v60;
    v69 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v71);
    v65 = v68;
    v66 = v69;
    v69 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v68);
    vp::vx::data_flow::State<void>::~State(v64);
    LODWORD(v71) = 4;
    v72 = v65;
    v73 = v66;
    v66 = 0uLL;
    v60 = v20;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v68, v1 + 856, &v60, &v71);
    v20 = v68;
    v54[0] = v68;
    vp::vx::data_flow::State<void>::~State(&v72);
    vp::vx::data_flow::State<void>::~State(&v65);
  }

  vp::vx::data_flow::State<void>::State(v55, v20 + 2);
  vp::vx::data_flow::State<void>::~State(v55);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v53, *(v1 + 864), *(v1 + 872), 5);
  v21 = *(v1 + 864);
  v22 = *(v1 + 872);
  if (!v21 && v22)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v23 = v53[0];
  if (v53[0] == v21 + 32 * v22)
  {
    v54[0] = "vp_enable_io_node_cpu_profilers";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v64, v1, v54);
    v71 = &unk_2881C45E8;
    LOBYTE(v72) = 0;
    *(&v73 + 1) = &v71;
    LODWORD(v52[0]) = v64[0];
    vp::vx::data_flow::State_Manager::create_state(&v60, (v1 + 64), &v71);
    LODWORD(v68) = v60;
    v69 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v71);
    v65 = v68;
    v66 = v69;
    v69 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v68);
    vp::vx::data_flow::State<void>::~State(v64);
    LODWORD(v71) = 5;
    v72 = v65;
    v73 = v66;
    v66 = 0uLL;
    v60 = v23;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v68, v1 + 856, &v60, &v71);
    v23 = v68;
    v53[0] = v68;
    vp::vx::data_flow::State<void>::~State(&v72);
    vp::vx::data_flow::State<void>::~State(&v65);
  }

  vp::vx::data_flow::State<void>::State(v54, v23 + 2);
  vp::vx::data_flow::State<void>::~State(v54);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v52, *(v1 + 864), *(v1 + 872), 6);
  v24 = *(v1 + 864);
  v25 = *(v1 + 872);
  if (!v24 && v25)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v26 = v52[0];
  if (v52[0] == v24 + 32 * v25)
  {
    v53[0] = "vp_enable_io_node_parameter_loggers";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v64, v1, v53);
    v71 = &unk_2881C4630;
    LOBYTE(v72) = 0;
    *(&v73 + 1) = &v71;
    LODWORD(v51[0]) = v64[0];
    vp::vx::data_flow::State_Manager::create_state(&v60, (v1 + 64), &v71);
    LODWORD(v68) = v60;
    v69 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v71);
    v65 = v68;
    v66 = v69;
    v69 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v68);
    vp::vx::data_flow::State<void>::~State(v64);
    LODWORD(v71) = 6;
    v72 = v65;
    v73 = v66;
    v66 = 0uLL;
    v60 = v26;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v68, v1 + 856, &v60, &v71);
    v26 = v68;
    v52[0] = v68;
    vp::vx::data_flow::State<void>::~State(&v72);
    vp::vx::data_flow::State<void>::~State(&v65);
  }

  vp::vx::data_flow::State<void>::State(v53, v26 + 2);
  vp::vx::data_flow::State<void>::~State(v53);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v51, *(v1 + 864), *(v1 + 872), 7);
  v27 = *(v1 + 864);
  v28 = *(v1 + 872);
  if (!v27 && v28)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v29 = v51[0];
  if (v51[0] == v27 + 32 * v28)
  {
    v52[0] = "vp_enable_io_node_property_loggers";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v64, v1, v52);
    v71 = &unk_2881C4678;
    LOBYTE(v72) = 0;
    *(&v73 + 1) = &v71;
    LODWORD(v50[0]) = v64[0];
    vp::vx::data_flow::State_Manager::create_state(&v60, (v1 + 64), &v71);
    v30 = v60;
    LODWORD(v68) = v60;
    v46 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v71);
    v65 = v30;
    v69 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v68);
    vp::vx::data_flow::State<void>::~State(v64);
    LODWORD(v71) = 7;
    v72 = v30;
    v73 = v46;
    v66 = 0uLL;
    v60 = v29;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v68, v1 + 856, &v60, &v71);
    v29 = v68;
    v51[0] = v68;
    vp::vx::data_flow::State<void>::~State(&v72);
    vp::vx::data_flow::State<void>::~State(&v65);
  }

  vp::vx::data_flow::State<void>::State(v52, v29 + 2);
  vp::vx::data_flow::State<void>::~State(v52);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v50, *(v1 + 864), *(v1 + 872), 8);
  v31 = *(v1 + 864);
  v32 = *(v1 + 872);
  if (!v31 && v32)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v33 = v50[0];
  if (v50[0] == v31 + 32 * v32)
  {
    v51[0] = "vp_disable_RPB";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v64, v1, v51);
    v71 = &unk_2881C46C0;
    LOBYTE(v72) = 0;
    *(&v73 + 1) = &v71;
    LODWORD(v67) = v64[0];
    vp::vx::data_flow::State_Manager::create_state(&v60, (v1 + 64), &v71);
    v34 = v60;
    LODWORD(v68) = v60;
    v47 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v71);
    v65 = v34;
    v69 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v68);
    vp::vx::data_flow::State<void>::~State(v64);
    LODWORD(v71) = 8;
    v72 = v34;
    v73 = v47;
    v66 = 0uLL;
    v60 = v33;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v68, v1 + 856, &v60, &v71);
    v33 = v68;
    v50[0] = v68;
    vp::vx::data_flow::State<void>::~State(&v72);
    vp::vx::data_flow::State<void>::~State(&v65);
  }

  vp::vx::data_flow::State<void>::State(v51, v33 + 2);
  vp::vx::data_flow::State<void>::~State(v51);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(&v67, *(v1 + 864), *(v1 + 872), 9);
  v35 = *(v1 + 864);
  v36 = *(v1 + 872);
  if (!v35 && v36)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v37 = v67;
  if (v67 == (v35 + 32 * v36))
  {
    v50[0] = "vp_enable_stevenote";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v64, v1, v50);
    v71 = &unk_2881C4708;
    LOBYTE(v72) = 0;
    *(&v73 + 1) = &v71;
    LODWORD(v63) = v64[0];
    vp::vx::data_flow::State_Manager::create_state(&v60, (v1 + 64), &v71);
    v38 = v60;
    LODWORD(v68) = v60;
    v48 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v71);
    v65 = v38;
    v69 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v68);
    vp::vx::data_flow::State<void>::~State(v64);
    LODWORD(v71) = 9;
    v72 = v38;
    v73 = v48;
    v66 = 0uLL;
    v60 = v37;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v68, v1 + 856, &v60, &v71);
    v37 = v68;
    v67 = v68;
    vp::vx::data_flow::State<void>::~State(&v72);
    vp::vx::data_flow::State<void>::~State(&v65);
  }

  vp::vx::data_flow::State<void>::State(v50, v37 + 2);
  vp::vx::data_flow::State<void>::~State(v50);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(&v67, *(v1 + 864), *(v1 + 872), 10);
  v39 = *(v1 + 864);
  v40 = *(v1 + 872);
  if (!v39 && v40)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v41 = v67;
  if (v67 == (v39 + 32 * v40))
  {
    v63 = "vp_stevenote_extra_latency";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v64, v1, &v63);
    v71 = &unk_2881C4750;
    LOBYTE(v72) = 0;
    *(&v73 + 1) = &v71;
    v70 = v64[0];
    vp::vx::data_flow::State_Manager::create_state(&v60, (v1 + 64), &v71);
    v42 = v60;
    LODWORD(v68) = v60;
    v49 = v61;
    v61 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v60);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v71);
    v65 = v42;
    v69 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v68);
    vp::vx::data_flow::State<void>::~State(v64);
    LODWORD(v60) = 10;
    LODWORD(v61) = v42;
    v66 = 0uLL;
    LODWORD(v71) = 10;
    v72 = v42;
    v73 = v49;
    *(&v61 + 1) = 0;
    v62 = 0;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::insert_unique(&v68, v1 + 856, v41, &v71);
    vp::vx::data_flow::State<void>::~State(&v72);
    v41 = v68;
    v67 = v68;
    vp::vx::data_flow::State<void>::~State(&v61);
    vp::vx::data_flow::State<void>::~State(&v65);
  }

  v43 = vp::vx::data_flow::State<void>::State(&v71, v41 + 2);
  result = vp::vx::data_flow::State<void>::~State(v43);
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27271B504(_Unwind_Exception *a1)
{
  vp::vx::data_flow::State<void>::~State((v1 + 8));
  vp::vx::data_flow::State<void>::~State((v2 + 8));
  vp::vx::data_flow::State<void>::~State((v3 - 168));
  _Unwind_Resume(a1);
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(void *result, _DWORD *a2, unint64_t a3, int a4)
{
  if (!a2 && a3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v4 = a2;
  if (a3)
  {
    v4 = a2;
    v5 = a3;
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
      v7 = &v4[8 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 8;
      v5 += ~(v5 >> 1);
      if (v9 >= a4)
      {
        v5 = v6;
      }

      else
      {
        v4 = v8;
      }
    }

    while (v5);
  }

  v10 = &a2[8 * a3];
  *result = v4;
  if (v4 != v10)
  {
    if (!v4)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*v4 > a4)
    {
      *result = v10;
    }
  }

  return result;
}

void vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(uint64_t a1, __n128 *a2, uint64_t *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = vp::Service_Provider::get<vp::services::User_Defaults,(decltype(nullptr))0>(&v12, a2[28].n128_i64[1]);
  if (v12)
  {
    v7 = *a3;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    vp::vx::Voice_Processor_State_Manager::create_state_for_SIGHUP_signal(v11, &a2[1]);
    operator new();
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v17[0] = std::pmr::get_default_resource(v6);
  v17[1] = 0;
  v17[2] = &vp::vx::data_flow::Value::type_id<applesauce::CF::TypeRef>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v17) = 0;
  vp::vx::data_flow::State_Manager::create_state(&v18, a2 + 4, v17);
  v8 = v18;
  v14 = v18;
  v10 = v19;
  v19 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v18);
  vp::vx::data_flow::Value::~Value(v17);
  v18 = v8;
  v15 = 0;
  v16 = 0;
  vp::vx::data_flow::State<void>::~State(&v14);
  *a1 = v8;
  *(a1 + 8) = v10;
  v19 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v18);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_27271B8B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

unint64_t boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::insert_unique(int **a1, uint64_t a2, int *a3, uint64_t a4)
{
  result = *(a2 + 8);
  if (result > a3)
  {
    goto LABEL_35;
  }

  v7 = *(a2 + 16);
  if (result)
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

  v9 = result + 32 * v7;
  if (v9 < a3)
  {
LABEL_35:
    __assert_rtn("insert_unique", "flat_tree.hpp", 879, "this->priv_in_range_or_end(hint)");
  }

  v23 = 0;
  if (v9 != a3)
  {
    if (!a3)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a4 >= *a3)
    {
      v24 = v9;
      result = boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::priv_insert_unique_prepare(a3, &v24, a4, &v23);
      if (result)
      {
        goto LABEL_18;
      }

LABEL_32:
      if (!*(a2 + 8))
      {
        if (v23)
        {
          __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
        }
      }

      *a1 = v23;
      return result;
    }
  }

  v23 = a3;
  if (result == a3)
  {
    goto LABEL_18;
  }

  if (!a3)
  {
    __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
  }

  v13 = *(a3 - 8);
  v11 = a3 - 8;
  v12 = v13;
  if (v13 < *a4)
  {
    goto LABEL_18;
  }

  if (*a4 >= v12)
  {
    v23 = v11;
    goto LABEL_32;
  }

  v24 = v11;
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::priv_insert_unique_prepare(result, &v24, a4, &v23);
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_18:
  v14 = v23;
  v15 = *(a2 + 8);
  if (v15 > v23)
  {
    goto LABEL_36;
  }

  v16 = *(a2 + 16);
  if (!v15 && v16)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v17 = v15 + 32 * v16;
  if (v23 > v17)
  {
LABEL_36:
    __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
  }

  v18 = *(a2 + 24);
  if (v18 < v16)
  {
    __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
  }

  if (v18 == v16)
  {
    v22 = v23;

    return boost::container::vector<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>,boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>*,boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>(a1, a2, v22, a4);
  }

  else
  {
    if (v17 == v23)
    {
      *v17 = *a4;
      *(v17 + 8) = *(a4 + 8);
      *(v17 + 16) = *(a4 + 16);
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      ++*(a2 + 16);
    }

    else
    {
      v19 = v17 - 32;
      *v17 = *(v17 - 32);
      *(v17 + 8) = *(v17 - 24);
      *(v17 + 16) = *(v17 - 16);
      *(v17 - 16) = 0;
      *(v17 - 8) = 0;
      ++*(a2 + 16);
      if ((v17 - 32) != v14)
      {
        v20 = (v17 - 32);
        do
        {
          v21 = *(v20 - 8);
          v20 -= 8;
          *v19 = v21;
          vp::vx::data_flow::State<void>::~State((v19 + 8));
          *(v19 + 8) = *(v19 - 24);
          *(v19 + 16) = *(v19 - 16);
          *(v19 - 16) = 0;
          *(v19 - 8) = 0;
          v19 = v20;
        }

        while (v20 != v14);
      }

      *v14 = *a4;
      result = vp::vx::data_flow::State<void>::~State(v14 + 2);
      v14[2] = *(a4 + 8);
      *(v14 + 1) = *(a4 + 16);
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
    }

    *a1 = v14;
  }

  return result;
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>,boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>*,boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0x7FFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFLL)
  {
    goto LABEL_28;
  }

  if (v4 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v4 / 5;
  }

  v8 = v4 + 1;
  if (v7 < 0x7FFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 59)
  {
LABEL_28:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *(a2 + 1);
  v15 = (*(**a2 + 16))(*a2, 32 * v9, 8);
  v16 = v15;
  v27[1] = a2;
  v27[2] = v9;
  v17 = *(a2 + 1);
  v18 = v17 + 32 * *(a2 + 2);
  v19 = v15;
  if (v17 != a3)
  {
    v20 = *(a2 + 1);
    v19 = v15;
    do
    {
      *v19 = *v20;
      *(v19 + 8) = *(v20 + 8);
      *(v19 + 16) = *(v20 + 16);
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      v20 += 32;
      v19 += 32;
    }

    while (v20 != a3);
  }

  *v19 = *a4;
  *(v19 + 8) = *(a4 + 8);
  *(v19 + 16) = *(a4 + 16);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  if (v18 != a3)
  {
    v21 = (v19 + 48);
    v22 = a3;
    do
    {
      *(v21 - 4) = *v22;
      *(v21 - 2) = *(v22 + 8);
      *v21 = *(v22 + 16);
      v21 += 2;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      v22 += 32;
    }

    while (v22 != v18);
  }

  v27[0] = 0;
  if (v17)
  {
    v23 = *(a2 + 2);
    if (v23)
    {
      v24 = (v17 + 8);
      do
      {
        --v23;
        v24 = vp::vx::data_flow::State<void>::~State(v24) + 8;
      }

      while (v23);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 32 * *(a2 + 3), 8);
  }

  v25 = *(a2 + 2) + 1;
  *(a2 + 1) = v16;
  *(a2 + 2) = v25;
  *(a2 + 3) = v9;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::~scoped_array_deallocator(v27);
  *a1 = *(a2 + 1) + a3 - v14;
  return result;
}

void sub_27271BE48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 32 * *(a1 + 16), 8);
  }

  return a1;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, int *a3, int **a4)
{
  v9 = a1;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>*,true>,vp::vx::User_Defaults_Key>(&v10, &v9, *a2, *a3);
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

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE10EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = applesauce::CF::convert_to<unsigned int,0>(v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271C010(void *a1)
{
  __cxa_free_exception(v1);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271BF9CLL);
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::TypeRef>::compare_value(uint64_t a1, const void **a2, const void **a3)
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

void vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::TypeRef>::destroy_value(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

CFTypeRef vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::TypeRef>::copy_value(uint64_t a1, void *a2, CFTypeRef *a3)
{
  v4 = *a3;
  if (*a3)
  {
    result = CFRetain(*a3);
  }

  *a2 = v4;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::TypeRef>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE10EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4750;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF7TypeRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_PKcEENS4_5StateIT_EEOT0_EUlSI_E_JjEEEDaOSI_DpRKNSH_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESI_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v5);
  }

  vp::services::User_Defaults::default_app(&v12, *(a1 + 16));
  v6 = *(a1 + 8);
  v7 = strlen(v6);
  if (v6)
  {
    v16 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
    if (!v16)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    v16 = 0;
  }

  (*(*v12 + 32))(&cf);
  v9 = cf;
  if (cf)
  {
    CFRetain(cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v10);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::TypeRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v9;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF7TypeRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_PKcEENS4_5StateIT_EEOT0_EUlSI_E_JjEEEDaOSI_DpRKNSH_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESI_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF7TypeRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_PKcEENS4_5StateIT_EEOT0_EUlSI_E_JjEEEDaOSI_DpRKNSH_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESI_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF7TypeRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_PKcEENS4_5StateIT_EEOT0_EUlSI_E_JjEEEDaOSI_DpRKNSH_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESI_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4480;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF7TypeRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_PKcEENS4_5StateIT_EEOT0_EUlSI_E_JjEEEDaOSI_DpRKNSH_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESI_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EED0Ev(void *a1)
{
  *a1 = &unk_2881C4480;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF7TypeRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_PKcEENS4_5StateIT_EEOT0_EUlSI_E_JjEEEDaOSI_DpRKNSH_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESI_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EED1Ev(void *a1)
{
  *a1 = &unk_2881C4480;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(int **a1, uint64_t a2, int **a3, int *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a4[2];
  v7 = *a4;
  v8 = v4;
  v9 = *(a4 + 1);
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::insert_unique(a1, a2, *a3, &v7);
  result = vp::vx::data_flow::State<void>::~State(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27271C5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE9EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271C654(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271C618);
}

void vp::vx::deserialize_plist<BOOL>(const __CFString **a1, BOOL *a2)
{
  v3 = *a1;
  if (!v3)
  {
    goto LABEL_13;
  }

  v5 = CFGetTypeID(v3);
  TypeID = CFNumberGetTypeID();
  v7 = *a1;
  if (v5 == TypeID)
  {
    if (v7)
    {
      *a2 = applesauce::CF::convert_to<unsigned int,0>(v7) == 1;
      return;
    }

LABEL_13:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = CFGetTypeID(v7);
  if (v8 == CFStringGetTypeID())
  {
    if (!*a1)
    {
      goto LABEL_13;
    }

    applesauce::CF::convert_to<std::string,0>(&__str, *a1);
    *a2 = std::stoi(&__str, 0, 10) == 1;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (!*a1)
    {
      goto LABEL_13;
    }

    *a2 = applesauce::CF::convert_to<BOOL,0>(*a1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE9EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4708;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE8EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271C8E8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271C8ACLL);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE8EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C46C0;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE7EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271CA08(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271C9CCLL);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE7EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4678;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE6EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271CB28(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271CAECLL);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE6EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4630;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE5EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271CC48(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271CC0CLL);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE5EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C45E8;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE4EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271CD68(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271CD2CLL);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE4EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C45A0;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE3EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271CE88(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271CE4CLL);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE3EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4558;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE2EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKNS7_7TypeRefEE_JSJ_EEEDaOT_DpRKNSG_IT0_EEEUlDpRKT_E_JSJ_EEERNS4_13State_ManagerESO_SU_EUlPPKNS4_5ValueEPS12_E_NS_9allocatorIS17_EEFvS15_S16_EEclEOS15_OS16_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  if (*v4)
  {
    v5 = CFGetTypeID(*v4);
    if (v5 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v6 = *v4;
  }

  else
  {
    v6 = 0;
  }

  applesauce::CF::StringRef::from_get(&v11, v6);
  v7 = v11;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v8);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v7;
  return result;
}

void sub_27271D018(void *a1)
{
  __cxa_free_exception(v1);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271CF9CLL);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE2EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKNS7_7TypeRefEE_JSJ_EEEDaOT_DpRKNSG_IT0_EEEUlDpRKT_E_JSJ_EEERNS4_13State_ManagerESO_SU_EUlPPKNS4_5ValueEPS12_E_NS_9allocatorIS17_EEFvS15_S16_EE7__cloneEPNS0_6__baseIS1A_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4510;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE1EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271D16C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271D130);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE1EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C44C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE0EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271D28C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271D250);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE0EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C43D0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_property_states(void)::$_0>(unint64_t **a1)
{
  v159 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  LOBYTE(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<BOOL>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v2 = v150;
  v150 = 0uLL;
  v156 = v2;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<BOOL>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v142 = v144;
  v143 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v142);
  LOBYTE(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<BOOL>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v3 = v150;
  v150 = 0uLL;
  v156 = v3;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<BOOL>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 1u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v140 = v144;
  v141 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v140);
  LOBYTE(v153) = 1;
  vp::vx::Voice_Processor_State_Manager::create_state<BOOL>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v4 = v150;
  v150 = 0uLL;
  v156 = v4;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<BOOL>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 2u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v138 = v144;
  v139 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v138);
  LOBYTE(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<BOOL>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v5 = v150;
  v150 = 0uLL;
  v156 = v5;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<BOOL>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 3u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v136 = v144;
  v137 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v136);
  LOBYTE(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<BOOL>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v6 = v150;
  v150 = 0uLL;
  v156 = v6;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<BOOL>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 4u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v134 = v144;
  v135 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v134);
  if (*(v1 + 264) == 3)
  {
    LODWORD(v153) = 0;
    vp::vx::Voice_Processor_State_Manager::create_state<float>(&v144, (v1 + 16), &v153);
    vp::vx::data_flow::State<void>::State(&v149, &v144);
    LODWORD(default_resource) = v149;
    v7 = v150;
    v150 = 0uLL;
    v156 = v7;
    *&v147 = 0;
    *(&default_resource + 1) = 0;
    LODWORD(v155) = v149;
    LODWORD(v157) = 1;
    v158 = &vp::vx::Voice_Processor::Type_Converter<float>::get_shared_instance(void)::s_shared_instance;
    vp::vx::data_flow::State<void>::~State(&default_resource);
    vp::vx::Property_Manager::add_property(v1 + 968, 7u, &v155);
    vp::vx::data_flow::State<void>::~State(&v155);
    vp::vx::data_flow::State<void>::~State(&v149);
    v132 = v144;
    v133 = v145;
    v145 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v144);
    vp::vx::data_flow::State<void>::~State(&v132);
  }

  (*(**(v1 + 472) + 16))(*(v1 + 472));
  v148 = 0;
  default_resource = 0u;
  v147 = 0u;
  vp::vx::Voice_Processor_State_Manager::create_state<CA::StreamDescription>(&v153, (v1 + 16), &default_resource);
  vp::vx::data_flow::State<void>::State(&v144, &v153);
  LODWORD(v149) = v144;
  v8 = v145;
  v145 = 0uLL;
  v156 = v8;
  v150 = 0uLL;
  LODWORD(v155) = v144;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<CA::StreamDescription>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v149);
  vp::vx::Property_Manager::add_property(v1 + 968, 8u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v144);
  v130 = v153;
  v131 = v154;
  v154 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::data_flow::State<void>::~State(&v130);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v9 = v150;
  v150 = 0uLL;
  v156 = v9;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 9u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v128 = v144;
  v129 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  v10 = vp::vx::data_flow::State<void>::~State(&v128);
  default_resource = std::pmr::get_default_resource(v10);
  *&v147 = &vp::vx::data_flow::Value::type_id<vp::vx::Input_Port_Type>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(&default_resource) = 0;
  vp::vx::data_flow::State_Manager::create_state(&v155, (v1 + 64), &default_resource);
  LODWORD(v149) = v155;
  v150 = v156;
  v156 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::Value::~Value(&default_resource);
  v144 = v149;
  v145 = v150;
  v150 = 0uLL;
  v11 = vp::vx::data_flow::State<void>::~State(&v149);
  vp::vx::data_flow::State<void>::State(v11, &v144);
  LODWORD(default_resource) = v149;
  v12 = v150;
  v150 = 0uLL;
  v156 = v12;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<vp::vx::Input_Port_Type>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0xAu, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v126 = v144;
  v127 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v13 = v150;
  v150 = 0uLL;
  v156 = v13;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0xBu, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v124[6] = v144;
  v125 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)12>(v124, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)12>(v124, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)13>(v123, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)13>(v123, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(v123);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)14>(v122, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)14>(v122, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(v122);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)15>(v121, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)15>(v121, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(v121);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)16>(v120, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v151, *(v1 + 456));
    if (v151)
    {
      if (v152)
      {
        atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)16>(v120, v1);
    if (v152)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v152);
    }
  }

  vp::vx::data_flow::State<void>::~State(v120);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v14 = v150;
  v150 = 0uLL;
  v156 = v14;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x11u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v118 = v144;
  v119 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v118);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v15 = v150;
  v150 = 0uLL;
  v156 = v15;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x12u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v116 = v144;
  v117 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v116);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v16 = v150;
  v150 = 0uLL;
  v156 = v16;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x13u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v114 = v144;
  v115 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v114);
  cf = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::StringRef>(&v144, (v1 + 16), &cf);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v17 = v150;
  v150 = 0uLL;
  v156 = v17;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<applesauce::CF::StringRef>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x14u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v112 = v144;
  v113 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v112);
  if (cf)
  {
    CFRelease(cf);
  }

  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)73>(v110, v1, 0.0);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)73>(v110, v1, 0.0);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(v110);
  vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)73>(v109, v1, 1.0);
  vp::vx::data_flow::State<void>::~State(v109);
  v105 = 0;
  __p = 0;
  v106 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<std::vector<float>>(&v144, (v1 + 16), &__p);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v18 = v150;
  v150 = 0uLL;
  v156 = v18;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<std::vector<float>>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x15u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v107 = v144;
  v108 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v107);
  if (__p)
  {
    v105 = __p;
    operator delete(__p);
  }

  v101 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::ArrayRef>(&v144, (v1 + 16), &v101);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v19 = v150;
  v150 = 0uLL;
  v156 = v19;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<applesauce::CF::ArrayRef>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x16u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v102 = v144;
  v103 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v102);
  if (v101)
  {
    CFRelease(v101);
  }

  v98 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::DictionaryRef>(&v144, (v1 + 16), &v98);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v20 = v150;
  v150 = 0uLL;
  v156 = v20;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<applesauce::CF::DictionaryRef>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x17u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v99 = v144;
  v100 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v99);
  if (v98)
  {
    CFRelease(v98);
  }

  v148 = 0;
  default_resource = 0u;
  v147 = 0u;
  vp::vx::Voice_Processor_State_Manager::create_state<CA::StreamDescription>(&v153, (v1 + 16), &default_resource);
  vp::vx::data_flow::State<void>::State(&v144, &v153);
  LODWORD(v149) = v144;
  v21 = v145;
  v145 = 0uLL;
  v156 = v21;
  v150 = 0uLL;
  LODWORD(v155) = v144;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<CA::StreamDescription>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v149);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x18u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v144);
  v96 = v153;
  v97 = v154;
  v154 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::data_flow::State<void>::~State(&v96);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v22 = v150;
  v150 = 0uLL;
  v156 = v22;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x19u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v94 = v144;
  v95 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  v23 = vp::vx::data_flow::State<void>::~State(&v94);
  default_resource = std::pmr::get_default_resource(v23);
  *&v147 = &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(&default_resource) = 0;
  vp::vx::data_flow::State_Manager::create_state(&v155, (v1 + 64), &default_resource);
  LODWORD(v149) = v155;
  v150 = v156;
  v156 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::Value::~Value(&default_resource);
  v144 = v149;
  v145 = v150;
  v150 = 0uLL;
  v24 = vp::vx::data_flow::State<void>::~State(&v149);
  vp::vx::data_flow::State<void>::State(v24, &v144);
  LODWORD(default_resource) = v149;
  v25 = v150;
  v150 = 0uLL;
  v156 = v25;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<vp::vx::Output_Port_Type>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x1Au, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v92 = v144;
  v93 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v26 = v150;
  v150 = 0uLL;
  v156 = v26;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x1Bu, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v90[6] = v144;
  v91 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)28>(v90, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)28>(v90, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)39>(v89, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v151, *(v1 + 456));
    if (v151)
    {
      if (v152)
      {
        atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)39>(v89, v1);
    if (v152)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v152);
    }
  }

  vp::vx::data_flow::State<void>::~State(v89);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)40>(v88, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v151, *(v1 + 456));
    if (v151)
    {
      if (v152)
      {
        atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)40>(v88, v1);
    if (v152)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v152);
    }
  }

  vp::vx::data_flow::State<void>::~State(v88);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)41>(v87, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)41>(v87, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(v87);
  v85 = 0;
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    v155 = 0;
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)42>(v86, v1, &v155);
    if (v155)
    {
      CFRelease(v155);
    }
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v83, *(v1 + 456));
    if (v83)
    {
      default_resource = v1;
      *&v147 = vp::vx::get_output_port_uid;
      *(&v147 + 1) = v83;
      if (v84)
      {
        atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(&default_resource + 1) = 0;
      *(&v147 + 1) = 0;
      v148 = 0;
      operator new();
    }

    v155 = 0;
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)42>(v86, v1, &v155);
    if (v155)
    {
      CFRelease(v155);
    }

    if (v84)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v84);
    }
  }

  vp::vx::data_flow::State<void>::~State(v86);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)43>(&v83, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v151, *(v1 + 456));
    if (v151)
    {
      if (v152)
      {
        atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)43>(&v83, v1);
    if (v152)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v152);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v83);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)29>(v82, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)29>(v82, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(v82);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)30>(v81, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)30>(v81, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(v81);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)31>(v80, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)31>(v80, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(v80);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)32>(v79, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)32>(v79, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(v79);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)33>(v78, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)33>(v78, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(v78);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)34>(v77, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)34>(v77, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(v77);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)35>(v76, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)35>(v76, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(v76);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)36>(v75, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)36>(v75, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(v75);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)37>(v74, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)37>(v74, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(v74);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)38>(v73, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v151, *(v1 + 456));
    if (v151)
    {
      if (v152)
      {
        atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)38>(v73, v1);
    if (v152)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v152);
    }
  }

  vp::vx::data_flow::State<void>::~State(v73);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v27 = v150;
  v150 = 0uLL;
  v156 = v27;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x2Cu, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v71 = v144;
  v72 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v71);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v28 = v150;
  v150 = 0uLL;
  v156 = v28;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x2Du, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v69 = v144;
  v70 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v69);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v29 = v150;
  v150 = 0uLL;
  v156 = v29;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x2Eu, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v67 = v144;
  v68 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v67);
  v64 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::StringRef>(&v144, (v1 + 16), &v64);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v30 = v150;
  v150 = 0uLL;
  v156 = v30;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<applesauce::CF::StringRef>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x2Fu, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v65 = v144;
  v66 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v65);
  if (v64)
  {
    CFRelease(v64);
  }

  v60 = 0;
  v59 = 0;
  v61 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<std::vector<float>>(&v144, (v1 + 16), &v59);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v31 = v150;
  v150 = 0uLL;
  v156 = v31;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<std::vector<float>>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x30u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v62 = v144;
  v63 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v62);
  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  v56 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::ArrayRef>(&v144, (v1 + 16), &v56);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v32 = v150;
  v150 = 0uLL;
  v156 = v32;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<applesauce::CF::ArrayRef>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x31u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v57 = v144;
  v58 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v57);
  if (v56)
  {
    CFRelease(v56);
  }

  v53 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::DictionaryRef>(&v144, (v1 + 16), &v53);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v33 = v150;
  v150 = 0uLL;
  v156 = v33;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<applesauce::CF::DictionaryRef>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x32u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v54 = v144;
  v55 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v54);
  if (v53)
  {
    CFRelease(v53);
  }

  v148 = 0;
  default_resource = 0u;
  v147 = 0u;
  vp::vx::Voice_Processor_State_Manager::create_state<CA::StreamDescription>(&v153, (v1 + 16), &default_resource);
  vp::vx::data_flow::State<void>::State(&v144, &v153);
  LODWORD(v149) = v144;
  v34 = v145;
  v145 = 0uLL;
  v156 = v34;
  v150 = 0uLL;
  LODWORD(v155) = v144;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<CA::StreamDescription>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v149);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x33u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v144);
  v51 = v153;
  v52 = v154;
  v154 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::data_flow::State<void>::~State(&v51);
  v148 = 0;
  default_resource = 0u;
  v147 = 0u;
  vp::vx::Voice_Processor_State_Manager::create_state<CA::StreamDescription>(&v153, (v1 + 16), &default_resource);
  vp::vx::data_flow::State<void>::State(&v144, &v153);
  LODWORD(v149) = v144;
  v35 = v145;
  v145 = 0uLL;
  v156 = v35;
  v150 = 0uLL;
  LODWORD(v155) = v144;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<CA::StreamDescription>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v149);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x34u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v144);
  v49 = v153;
  v50 = v154;
  v154 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v153);
  v36 = vp::vx::data_flow::State<void>::~State(&v49);
  default_resource = std::pmr::get_default_resource(v36);
  *&v147 = &vp::vx::data_flow::Value::type_id<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>(void)::s_type_id;
  v46 = 0;
  *vp::vx::data_flow::Value::allocate_storage(&default_resource) = 0;
  vp::vx::data_flow::State_Manager::create_state(&v155, (v1 + 64), &default_resource);
  LODWORD(v149) = v155;
  v150 = v156;
  v156 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::Value::~Value(&default_resource);
  v144 = v149;
  v145 = v150;
  v150 = 0uLL;
  v37 = vp::vx::data_flow::State<void>::~State(&v149);
  vp::vx::data_flow::State<void>::State(v37, &v144);
  LODWORD(default_resource) = v149;
  v38 = v150;
  v150 = 0uLL;
  v156 = v38;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x35u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v47 = v144;
  v48 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v47);
  v148 = 0;
  default_resource = 0u;
  v147 = 0u;
  vp::vx::Voice_Processor_State_Manager::create_state<CA::StreamDescription>(&v153, (v1 + 16), &default_resource);
  vp::vx::data_flow::State<void>::State(&v144, &v153);
  LODWORD(v149) = v144;
  v39 = v145;
  v145 = 0uLL;
  v156 = v39;
  v150 = 0uLL;
  LODWORD(v155) = v144;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<CA::StreamDescription>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v149);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x36u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v144);
  v44 = v153;
  v45 = v154;
  v154 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::data_flow::State<void>::~State(&v44);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v40 = v150;
  v150 = 0uLL;
  v156 = v40;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(v1 + 968, 0x37u, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v42 = v144;
  v43 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v42);
  LOBYTE(v155) = 0;
  std::vector<char>::vector[abi:ne200100](&v41);
}

void sub_272723410(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)73>(uint64_t a1, __n128 *a2, float a3)
{
  v9 = a3;
  vp::vx::Voice_Processor_State_Manager::create_state<float>(&v7, a2 + 1, &v9);
  vp::vx::data_flow::State<void>::State(&v10, &v7);
  v16 = v10;
  v5 = v11;
  v11 = 0uLL;
  v12 = v10;
  v13 = v5;
  v17 = 0;
  v18 = 0;
  v14 = 1;
  v15 = &vp::vx::Voice_Processor::Type_Converter<float>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v16);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x49u, &v12);
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::State<void>::~State(&v10);
  *a1 = v7;
  *(a1 + 8) = v8;
  v8 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v7);
}

void sub_272723CA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

const void **vp::Block<void({block_pointer})(float,float)>::~Block(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t vp::vx::Property::String_Type_Converter<float>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<float>::convert_to_plist(uint64_t a1, int *a2, const void **a3)
{
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<float>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<float>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

float vp::vx::Property::Property_List_Type_Converter<float>::convert_from_plist@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0.0;
  v4 = (*(*a1 + 32))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  result = v7;
  *storage = v7;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<float>::convert_to_blob(int a1, _DWORD *a2, vp::Mutable_Blob *this)
{
  if (*(this + 1) <= 3uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  **this = *a2;

  return vp::Mutable_Blob::set_size(this, 4uLL);
}

float vp::vx::Voice_Processor::Blob_Type_Converter<float>::convert_from_blob(uint64_t a1, float *a2, uint64_t a3)
{
  if (*(a3 + 8) != 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v5 = std::bad_cast::bad_cast(exception);
  }

  result = **a3;
  *a2 = result;
  return result;
}

uint64_t vp::vx::Property::Blob_Type_Converter<float>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<float>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

float vp::vx::Property::Blob_Type_Converter<float>::convert_from_blob@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0.0;
  v4 = (*(*a1 + 40))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  result = v7;
  *storage = v7;
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor28get_preferred_io_cycle_usageEvENK3__0clEvEUlRKT_E_JNS3_20Global_ConfigurationEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_EEERNS4_13State_ManagerESC_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *(vp::vx::data_flow::Value::view_storage(**a2) + 104);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor28get_preferred_io_cycle_usageEvENK3__0clEvEUlRKT_E_JNS3_20Global_ConfigurationEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_EEERNS4_13State_ManagerESC_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BFB20;
  *(a2 + 8) = *(result + 8);
  return result;
}

int *vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::ArrayRef>(uint64_t a1, __n128 *a2, void *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v11) = *a3;
  *a3 = 0;
  vp::vx::data_flow::State_Manager::create_state(&v12, a2 + 3, v11);
  LODWORD(a2) = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::Value::~Value(v11);
  *a1 = a2;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  return vp::vx::data_flow::State<void>::~State(&v8);
}

void vp::vx::Voice_Processor::String_Type_Converter<applesauce::CF::ArrayRef>::convert_to_string(uint64_t a1, CFTypeRef *a2, void *a3)
{
  if (*a2)
  {
    v4 = CFCopyDescription(*a2);
    v28 = v4;
    applesauce::CF::details::CFString_get_value<true>(&v26, v4);
    if (v4)
    {
      CFRelease(v4);
    }

    size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v26;
    }

    else
    {
      v6 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    v7 = (v6 + size);
    if (size)
    {
      v8 = size - 1;
      if (size == 1)
      {
LABEL_34:
        v17 = &v26 + HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v26;
        }

        else
        {
          v17 = (v26.__r_.__value_.__r.__words[0] + v26.__r_.__value_.__l.__size_);
          v18 = v26.__r_.__value_.__r.__words[0];
        }

        std::string::erase(&v26, v7 - v18, v17 - v7);
        v19 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v26;
        }

        else
        {
          v20 = v26.__r_.__value_.__r.__words[0];
        }

        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = v26.__r_.__value_.__l.__size_;
        }

        LOBYTE(v28) = 10;
        v21 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(v20, v20 + v19, &v28);
        v22 = &v26 + HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v26;
        }

        else
        {
          v22 = (v26.__r_.__value_.__r.__words[0] + v26.__r_.__value_.__l.__size_);
          v23 = v26.__r_.__value_.__r.__words[0];
        }

        std::string::erase(&v26, v21 - v23, v22 - v21);
        __p = v26;
        memset(&v26, 0, sizeof(v26));
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v25 = __p.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, p_p, v25);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        return;
      }

      v9 = MEMORY[0x277D85DE0];
      while (1)
      {
        v10 = v6->__r_.__value_.__s.__data_[0];
        if (v10 == v6->__r_.__value_.__s.__data_[1])
        {
          if (v10 < 0 ? __maskrune(v10, 0x4000uLL) : *(v9 + 4 * v10 + 60) & 0x4000)
          {
            break;
          }
        }

        v6 = (v6 + 1);
        if (!--v8)
        {
          goto LABEL_34;
        }
      }
    }

    if (v6 != v7)
    {
      v12 = &v6->__r_.__value_.__s.__data_[2];
      if (&v6->__r_.__value_.__s.__data_[2] != v7)
      {
        v13 = MEMORY[0x277D85DE0];
        do
        {
          v14 = v6->__r_.__value_.__s.__data_[0];
          v15 = *v12;
          if (v14 == v15)
          {
            if (v14 < 0)
            {
              v16 = __maskrune(v14, 0x4000uLL);
            }

            else
            {
              v16 = *(v13 + 4 * v14 + 60) & 0x4000;
            }

            if (v16)
            {
              goto LABEL_32;
            }

            LOBYTE(v15) = *v12;
          }

          v6->__r_.__value_.__s.__data_[1] = v15;
          v6 = (v6 + 1);
LABEL_32:
          ++v12;
        }

        while (v12 != v7);
      }

      v7 = (&v6->__r_.__value_.__l.__data_ + 1);
    }

    goto LABEL_34;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "null", 4);
}

void sub_272724A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<applesauce::CF::ArrayRef>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<applesauce::CF::ArrayRef>::convert_to_plist(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  else
  {
    applesauce::CF::TypeRef::TypeRef(&v6, "(null)");
    v4 = v6;
  }

  v5 = *a3;
  *a3 = v4;
  v6 = v5;
  if (v5)
  {
    CFRelease(v5);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<applesauce::CF::ArrayRef>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<applesauce::CF::ArrayRef>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void *vp::vx::Property::Property_List_Type_Converter<applesauce::CF::ArrayRef>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void sub_272724E6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<applesauce::CF::ArrayRef>::convert_to_blob(uint64_t a1, const __CFArray **a2, uint64_t a3)
{
  v4 = *a2;
  if (!v4)
  {
    goto LABEL_5;
  }

  Copy = CFArrayCreateCopy(*MEMORY[0x277CBECE8], v4);
  v6 = Copy;
  if (Copy)
  {
    v7 = CFGetTypeID(Copy);
    if (v7 != CFArrayGetTypeID())
    {
      CFRelease(v6);
LABEL_5:
      v6 = 0;
    }
  }

  if (*(a3 + 8) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
  }

  **a3 = v6;

  return vp::Mutable_Blob::set_size(a3, 8uLL);
}

void sub_272724F88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<applesauce::CF::ArrayRef>::convert_from_blob(uint64_t a1, const void **a2, CFTypeRef **a3)
{
  if (a3[1] != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
  }

  v4 = **a3;
  if (v4)
  {
    CFRetain(**a3);
    cf = v4;
    v5 = CFGetTypeID(v4);
    if (v5 != CFArrayGetTypeID())
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v11, "Could not construct");
    }

    Copy = CFArrayCreateCopy(*MEMORY[0x277CBECE8], v4);
    v4 = Copy;
    if (Copy)
    {
      v7 = CFGetTypeID(Copy);
      if (v7 != CFArrayGetTypeID())
      {
        CFRelease(v4);
        v4 = 0;
      }
    }
  }

  else
  {
    cf = 0;
  }

  v8 = *a2;
  *a2 = v4;
  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2727250D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::Blob_Type_Converter<applesauce::CF::ArrayRef>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<applesauce::CF::ArrayRef>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void *vp::vx::Property::Blob_Type_Converter<applesauce::CF::ArrayRef>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void sub_272725414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::String_Type_Converter<BOOL>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<BOOL>::convert_to_plist(uint64_t a1, _BYTE *a2, const void **a3)
{
  v3 = MEMORY[0x277CBED28];
  if (!*a2)
  {
    v3 = MEMORY[0x277CBED10];
  }

  v4 = *a3;
  *a3 = *v3;
  if (v4)
  {
    CFRelease(v4);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<BOOL>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<BOOL>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_BYTE *vp::vx::Property::Property_List_Type_Converter<BOOL>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<BOOL>::convert_from_blob(uint64_t a1, BOOL *a2, uint64_t a3)
{
  result = vp::Blob_Getter<vp::Blob>::get<unsigned int>(a3 + 1);
  *a2 = result != 0;
  return result;
}

uint64_t vp::vx::Property::Blob_Type_Converter<BOOL>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<BOOL>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_BYTE *vp::vx::Property::Blob_Type_Converter<BOOL>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void vp::vx::Voice_Processor::String_Type_Converter<applesauce::CF::StringRef>::convert_to_string(uint64_t a1, CFTypeRef *a2, void *a3)
{
  if (*a2)
  {
    v4 = CFCopyDescription(*a2);
    v28 = v4;
    applesauce::CF::details::CFString_get_value<true>(&v26, v4);
    if (v4)
    {
      CFRelease(v4);
    }

    size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v26;
    }

    else
    {
      v6 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    v7 = (v6 + size);
    if (size)
    {
      v8 = size - 1;
      if (size == 1)
      {
LABEL_34:
        v17 = &v26 + HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v26;
        }

        else
        {
          v17 = (v26.__r_.__value_.__r.__words[0] + v26.__r_.__value_.__l.__size_);
          v18 = v26.__r_.__value_.__r.__words[0];
        }

        std::string::erase(&v26, v7 - v18, v17 - v7);
        v19 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v26;
        }

        else
        {
          v20 = v26.__r_.__value_.__r.__words[0];
        }

        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = v26.__r_.__value_.__l.__size_;
        }

        LOBYTE(v28) = 10;
        v21 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(v20, v20 + v19, &v28);
        v22 = &v26 + HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v26;
        }

        else
        {
          v22 = (v26.__r_.__value_.__r.__words[0] + v26.__r_.__value_.__l.__size_);
          v23 = v26.__r_.__value_.__r.__words[0];
        }

        std::string::erase(&v26, v21 - v23, v22 - v21);
        __p = v26;
        memset(&v26, 0, sizeof(v26));
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v25 = __p.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, p_p, v25);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        return;
      }

      v9 = MEMORY[0x277D85DE0];
      while (1)
      {
        v10 = v6->__r_.__value_.__s.__data_[0];
        if (v10 == v6->__r_.__value_.__s.__data_[1])
        {
          if (v10 < 0 ? __maskrune(v10, 0x4000uLL) : *(v9 + 4 * v10 + 60) & 0x4000)
          {
            break;
          }
        }

        v6 = (v6 + 1);
        if (!--v8)
        {
          goto LABEL_34;
        }
      }
    }

    if (v6 != v7)
    {
      v12 = &v6->__r_.__value_.__s.__data_[2];
      if (&v6->__r_.__value_.__s.__data_[2] != v7)
      {
        v13 = MEMORY[0x277D85DE0];
        do
        {
          v14 = v6->__r_.__value_.__s.__data_[0];
          v15 = *v12;
          if (v14 == v15)
          {
            if (v14 < 0)
            {
              v16 = __maskrune(v14, 0x4000uLL);
            }

            else
            {
              v16 = *(v13 + 4 * v14 + 60) & 0x4000;
            }

            if (v16)
            {
              goto LABEL_32;
            }

            LOBYTE(v15) = *v12;
          }

          v6->__r_.__value_.__s.__data_[1] = v15;
          v6 = (v6 + 1);
LABEL_32:
          ++v12;
        }

        while (v12 != v7);
      }

      v7 = (&v6->__r_.__value_.__l.__data_ + 1);
    }

    goto LABEL_34;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "null", 4);
}

void sub_272725EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<applesauce::CF::StringRef>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<applesauce::CF::StringRef>::convert_to_plist(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  else
  {
    applesauce::CF::TypeRef::TypeRef(&v6, "(null)");
    v4 = v6;
  }

  v5 = *a3;
  *a3 = v4;
  v6 = v5;
  if (v5)
  {
    CFRelease(v5);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<applesauce::CF::StringRef>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<applesauce::CF::StringRef>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void *vp::vx::Property::Property_List_Type_Converter<applesauce::CF::StringRef>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void sub_272726318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<applesauce::CF::StringRef>::convert_to_blob(uint64_t a1, const __CFString **a2, uint64_t a3)
{
  v4 = *a2;
  if (!v4)
  {
    goto LABEL_5;
  }

  Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], v4);
  v6 = Copy;
  if (Copy)
  {
    v7 = CFGetTypeID(Copy);
    if (v7 != CFStringGetTypeID())
    {
      CFRelease(v6);
LABEL_5:
      v6 = 0;
    }
  }

  if (*(a3 + 8) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
  }

  **a3 = v6;

  return vp::Mutable_Blob::set_size(a3, 8uLL);
}

void sub_272726434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<applesauce::CF::StringRef>::convert_from_blob(uint64_t a1, const void **a2, uint64_t a3)
{
  if (*(a3 + 8) != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
  }

  applesauce::CF::StringRef::from_get(&theString, **a3);
  if (!theString)
  {
    goto LABEL_6;
  }

  Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], theString);
  v5 = Copy;
  if (Copy)
  {
    v6 = CFGetTypeID(Copy);
    if (v6 != CFStringGetTypeID())
    {
      CFRelease(v5);
LABEL_6:
      v5 = 0;
    }
  }

  v7 = *a2;
  *a2 = v5;
  if (v7)
  {
    CFRelease(v7);
  }

  if (theString)
  {
    CFRelease(theString);
  }
}

void sub_272726530(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::Blob_Type_Converter<applesauce::CF::StringRef>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<applesauce::CF::StringRef>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void *vp::vx::Property::Blob_Type_Converter<applesauce::CF::StringRef>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void sub_272726838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_to_string(uint64_t a1, int *a2, void *a3)
{
  v4 = *a2;
  v5[0] = 5;
  v6 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::operator<<(a3);
}

void nlohmann::operator<<(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 3);
  *(v1 + 3) = 0;
  operator new();
}

void sub_272726B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, char a12)
{
  std::locale::~locale(&a11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<nlohmann::detail::output_stream_adapter<char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881C2210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::AirPods_Offload_Mode>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_to_plist(uint64_t a1, int *a2, const void **a3)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::AirPods_Offload_Mode>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Property_List_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::AirPods_Offload_Mode>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_to_blob(int a1, _DWORD *a2, vp::Mutable_Blob *this)
{
  if (*(this + 1) <= 3uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  **this = *a2;

  return vp::Mutable_Blob::set_size(this, 4uLL);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_from_blob(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*(a3 + 8) != 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
  }

  *a2 = **a3;
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::AirPods_Offload_Mode>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::AirPods_Offload_Mode>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Blob_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::AirPods_Offload_Mode>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void vp::vx::Voice_Processor::String_Type_Converter<AUVoiceIOOtherAudioDuckingConfiguration>::convert_to_string(uint64_t a1, const unsigned __int8 *a2, void *a3)
{
  vp::utility::encode_to_base_64(__p, a2, 8);
  if ((v8 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, v4, v5);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_272727570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<AUVoiceIOOtherAudioDuckingConfiguration>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<AUVoiceIOOtherAudioDuckingConfiguration>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<AUVoiceIOOtherAudioDuckingConfiguration>::convert_to_blob(int a1, void *a2, vp::Mutable_Blob *this)
{
  if (*(this + 1) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  **this = *a2;

  return vp::Mutable_Blob::set_size(this, 8uLL);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<AUVoiceIOOtherAudioDuckingConfiguration>::convert_from_blob(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 8) != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
  }

  *a2 = **a3;
}

uint64_t vp::vx::Property::Blob_Type_Converter<AUVoiceIOOtherAudioDuckingConfiguration>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<AUVoiceIOOtherAudioDuckingConfiguration>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<AUVoiceIOOtherAudioDuckingConfiguration>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<AUVoiceIOOtherAudioDuckingConfiguration>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void *vp::vx::Property::Blob_Type_Converter<AUVoiceIOOtherAudioDuckingConfiguration>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<AUVoiceIOOtherAudioDuckingConfiguration>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::convert_to_string(uint64_t a1, const unsigned __int8 *a2, void *a3)
{
  vp::utility::encode_to_base_64(__p, a2, 8);
  if ((v8 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, v4, v5);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_272727BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::convert_to_blob(int a1, void **a2, vp::Mutable_Blob *this)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  if (*(this + 1) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
  }

  **this = v4;

  return vp::Mutable_Blob::set_size(this, 8uLL);
}

void sub_272727E0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>::~Block(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::convert_from_blob(uint64_t a1, const void **a2, uint64_t a3)
{
  if (*(a3 + 8) != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
  }

  v4 = **a3;
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  std::__destroy_at[abi:ne200100]<vp::Block<void ()(AUVoiceIOSpeechActivityEvent)>,0>(a2);
  *a2 = v5;
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Property::Blob_Type_Converter<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::convert_from_blob(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  aBlock = 0;
  v4 = (*(*a1 + 40))(a1, &aBlock, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  v6 = aBlock;
  aBlock = 0;
  *storage = v6;
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_2727281A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>::~Block(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::Block<void({block_pointer})(float,float)>>::convert_to_string(uint64_t a1, const unsigned __int8 *a2, void *a3)
{
  vp::utility::encode_to_base_64(__p, a2, 8);
  if ((v8 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, v4, v5);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2727282E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::Block<void({block_pointer})(float,float)>>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(float,float)>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::Block<void({block_pointer})(float,float)>>::convert_to_blob(int a1, void **a2, vp::Mutable_Blob *this)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  if (*(this + 1) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
  }

  **this = v4;

  return vp::Mutable_Blob::set_size(this, 8uLL);
}

void sub_272728518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::Block<void({block_pointer})(float,float)>::~Block(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<vp::Block<void({block_pointer})(float,float)>>::convert_from_blob(uint64_t a1, void **a2, uint64_t a3)
{
  if (*(a3 + 8) != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
  }

  v4 = **a3;
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  std::__destroy_at[abi:ne200100]<vp::Block<void ()(float,float)>,0>(a2);
  *a2 = v5;
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::Block<void({block_pointer})(float,float)>>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(float,float)>>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<vp::Block<void({block_pointer})(float,float)>>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(float,float)>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Property::Blob_Type_Converter<vp::Block<void({block_pointer})(float,float)>>::convert_from_blob(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  aBlock = 0;
  v4 = (*(*a1 + 40))(a1, &aBlock, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(float,float)>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  v6 = aBlock;
  aBlock = 0;
  *storage = v6;
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_2727288B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::Block<void({block_pointer})(float,float)>::~Block(va);
  _Unwind_Resume(a1);
}

int *vp::vx::Voice_Processor_State_Manager::create_state<float>(uint64_t a1, __n128 *a2, _DWORD *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v11) = *a3;
  vp::vx::data_flow::State_Manager::create_state(&v12, a2 + 3, v11);
  LODWORD(a2) = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::Value::~Value(v11);
  *a1 = a2;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  return vp::vx::data_flow::State<void>::~State(&v8);
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::vx::Spatial_Head_Tracking_Configuration>::convert_to_string(uint64_t a1, const unsigned __int8 *a2, void *a3)
{
  vp::utility::encode_to_base_64(__p, a2, 8);
  if ((v8 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, v4, v5);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_272728AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::vx::Spatial_Head_Tracking_Configuration>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Spatial_Head_Tracking_Configuration>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Spatial_Head_Tracking_Configuration>::convert_to_blob(int a1, void *a2, vp::Mutable_Blob *this)
{
  if (*(this + 1) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  **this = *a2;

  return vp::Mutable_Blob::set_size(this, 8uLL);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Spatial_Head_Tracking_Configuration>::convert_from_blob(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if (a3[1] != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v5 = std::bad_cast::bad_cast(exception);
  }

  v3 = **a3;
  *a2 = v3;
  *(a2 + 4) = BYTE4(v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Spatial_Head_Tracking_Configuration>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Spatial_Head_Tracking_Configuration>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Spatial_Head_Tracking_Configuration>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Spatial_Head_Tracking_Configuration>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void *vp::vx::Property::Blob_Type_Converter<vp::vx::Spatial_Head_Tracking_Configuration>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  LODWORD(v6) = 0;
  BYTE4(v6) = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Spatial_Head_Tracking_Configuration>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void vp::vx::Voice_Processor::String_Type_Converter<std::vector<unsigned char>>::convert_to_string(uint64_t a1, uint64_t *a2)
{
  v4 = 2;
  v2 = *a2;
  v3 = a2[1];
  operator new();
}

void sub_2727291BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](va);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::String_Type_Converter<std::vector<unsigned char>>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<unsigned char>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<std::vector<unsigned char>>::convert_to_plist(uint64_t a1, uint64_t *a2, const void **a3)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  v5 = __p;
  v4 = v14;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v16, v14 - __p);
  if (v5 != v4)
  {
    v6 = v17;
    do
    {
      v7 = *v5;
      if (v6 >= v18)
      {
        v8 = (v6 - v16) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        v9 = (v18 - v16) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v18 - v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        v22 = &v16;
        if (v10)
        {
          std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v10);
        }

        v19[0] = 0;
        v19[1] = (8 * v8);
        v20 = 8 * v8;
        v21 = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned char,void,0>((8 * v8), v7);
        v20 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v16, v19);
        v6 = v17;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v19);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned char,void,0>(v6++, *v5);
      }

      v17 = v6;
      ++v5;
    }

    while (v5 != v4);
  }

  v11 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v16);
  v19[0] = &v16;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](v19);
  v12 = *a3;
  *a3 = v11;
  if (v12)
  {
    CFRelease(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void sub_2727294D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15, char a16)
{
  a15 = &a12;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a15);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned char,void,0>(CFNumberRef *a1, char a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<std::vector<unsigned char>>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<std::vector<unsigned char>>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<unsigned char>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

double vp::vx::Property::Property_List_Type_Converter<std::vector<unsigned char>>::convert_from_plist@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  v4 = (*(*a1 + 32))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<unsigned char>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  result = *&v7;
  *storage = v7;
  storage[2] = v8;
  return result;
}

void sub_2727297E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<std::vector<unsigned char>>::convert_from_blob(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3[1];
  if (v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = *a3;
      v6 = a3[1];
      operator new();
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v7 = 0uLL;
  v8 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v8;
    operator delete(v8);
    v7 = 0uLL;
  }

  *a2 = v7;
  *(a2 + 16) = 0;
}

uint64_t vp::vx::Property::Blob_Type_Converter<std::vector<unsigned char>>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<unsigned char>>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<std::vector<unsigned char>>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<unsigned char>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

double vp::vx::Property::Blob_Type_Converter<std::vector<unsigned char>>::convert_from_blob@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  v4 = (*(*a1 + 40))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<unsigned char>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  result = *&v7;
  *storage = v7;
  storage[2] = v8;
  return result;
}

void sub_272729BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<CAOrientation>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CAOrientation>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<CAOrientation>::convert_to_plist(uint64_t a1, int *a2, const void **a3)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<CAOrientation>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<CAOrientation>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<CAOrientation>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Property_List_Type_Converter<CAOrientation>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<CAOrientation>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void vp::vx::Voice_Processor::Blob_Type_Converter<CAOrientation>::convert_from_blob(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*(a3 + 8) != 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
  }

  *a2 = **a3;
}

uint64_t vp::vx::Property::Blob_Type_Converter<CAOrientation>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CAOrientation>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<CAOrientation>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CAOrientation>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Blob_Type_Converter<CAOrientation>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<CAOrientation>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void vp::vx::Voice_Processor::String_Type_Converter<std::vector<long long>>::convert_to_string(uint64_t a1, uint64_t *a2)
{
  v4 = 2;
  v2 = *a2;
  v3 = a2[1];
  operator new();
}

void sub_27272A634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](va);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::String_Type_Converter<std::vector<long long>>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<std::vector<long long>>::convert_to_plist(uint64_t a1, uint64_t *a2, const void **a3)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, *a2, a2[1], (a2[1] - *a2) >> 3);
  v5 = __p;
  v4 = v14;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v16, (v14 - __p) >> 3);
  if (v5 != v4)
  {
    v6 = v17;
    do
    {
      v7 = *v5;
      if (v6 >= v18)
      {
        v8 = (v6 - v16) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        v9 = (v18 - v16) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v18 - v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        v22 = &v16;
        if (v10)
        {
          std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v10);
        }

        v19[0] = 0;
        v19[1] = (8 * v8);
        v20 = 8 * v8;
        v21 = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,long long,void,0>((8 * v8), v7);
        v20 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v16, v19);
        v6 = v17;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v19);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,long long,void,0>(v6++, *v5);
      }

      v17 = v6;
      ++v5;
    }

    while (v5 != v4);
  }

  v11 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v16);
  v19[0] = &v16;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](v19);
  v12 = *a3;
  *a3 = v11;
  if (v12)
  {
    CFRelease(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void sub_27272A954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15, char a16)
{
  a15 = &a12;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a15);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,long long,void,0>(CFNumberRef *a1, uint64_t a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<std::vector<long long>>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<std::vector<long long>>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

double vp::vx::Property::Property_List_Type_Converter<std::vector<long long>>::convert_from_plist@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  v4 = (*(*a1 + 32))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  result = *&v7;
  *storage = v7;
  storage[2] = v8;
  return result;
}

void sub_27272AC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<std::vector<long long>>::convert_to_blob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8) - v4;
  if (*(a3 + 8) < v5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
  }

  memcpy(*a3, v4, v5);

  return vp::Mutable_Blob::set_size(a3, v5);
}

double vp::vx::Voice_Processor::Blob_Type_Converter<std::vector<long long>>::convert_from_blob(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  if ((v3 & 7) != 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
  }

  v5 = *a3;
  v10 = 0uLL;
  v11 = 0;
  if (v3)
  {
    std::vector<long long>::__vallocate[abi:ne200100](&v10, v3 >> 3);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v6;
    operator delete(v6);
  }

  result = *&v10;
  *a2 = v10;
  *(a2 + 16) = v11;
  return result;
}

void sub_27272ADF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::Blob_Type_Converter<std::vector<long long>>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<std::vector<long long>>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

double vp::vx::Property::Blob_Type_Converter<std::vector<long long>>::convert_from_blob@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  v4 = (*(*a1 + 40))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  result = *&v7;
  *storage = v7;
  storage[2] = v8;
  return result;
}

void sub_27272B110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::String_Type_Converter<applesauce::CF::DictionaryRef>::convert_to_string(uint64_t a1, CFTypeRef *a2, void *a3)
{
  if (*a2)
  {
    v4 = CFCopyDescription(*a2);
    v28 = v4;
    applesauce::CF::details::CFString_get_value<true>(&v26, v4);
    if (v4)
    {
      CFRelease(v4);
    }

    size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v26;
    }

    else
    {
      v6 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    v7 = (v6 + size);
    if (size)
    {
      v8 = size - 1;
      if (size == 1)
      {
LABEL_34:
        v17 = &v26 + HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v26;
        }

        else
        {
          v17 = (v26.__r_.__value_.__r.__words[0] + v26.__r_.__value_.__l.__size_);
          v18 = v26.__r_.__value_.__r.__words[0];
        }

        std::string::erase(&v26, v7 - v18, v17 - v7);
        v19 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v26;
        }

        else
        {
          v20 = v26.__r_.__value_.__r.__words[0];
        }

        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = v26.__r_.__value_.__l.__size_;
        }

        LOBYTE(v28) = 10;
        v21 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(v20, v20 + v19, &v28);
        v22 = &v26 + HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v26;
        }

        else
        {
          v22 = (v26.__r_.__value_.__r.__words[0] + v26.__r_.__value_.__l.__size_);
          v23 = v26.__r_.__value_.__r.__words[0];
        }

        std::string::erase(&v26, v21 - v23, v22 - v21);
        __p = v26;
        memset(&v26, 0, sizeof(v26));
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v25 = __p.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, p_p, v25);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        return;
      }

      v9 = MEMORY[0x277D85DE0];
      while (1)
      {
        v10 = v6->__r_.__value_.__s.__data_[0];
        if (v10 == v6->__r_.__value_.__s.__data_[1])
        {
          if (v10 < 0 ? __maskrune(v10, 0x4000uLL) : *(v9 + 4 * v10 + 60) & 0x4000)
          {
            break;
          }
        }

        v6 = (v6 + 1);
        if (!--v8)
        {
          goto LABEL_34;
        }
      }
    }

    if (v6 != v7)
    {
      v12 = &v6->__r_.__value_.__s.__data_[2];
      if (&v6->__r_.__value_.__s.__data_[2] != v7)
      {
        v13 = MEMORY[0x277D85DE0];
        do
        {
          v14 = v6->__r_.__value_.__s.__data_[0];
          v15 = *v12;
          if (v14 == v15)
          {
            if (v14 < 0)
            {
              v16 = __maskrune(v14, 0x4000uLL);
            }

            else
            {
              v16 = *(v13 + 4 * v14 + 60) & 0x4000;
            }

            if (v16)
            {
              goto LABEL_32;
            }

            LOBYTE(v15) = *v12;
          }

          v6->__r_.__value_.__s.__data_[1] = v15;
          v6 = (v6 + 1);
LABEL_32:
          ++v12;
        }

        while (v12 != v7);
      }

      v7 = (&v6->__r_.__value_.__l.__data_ + 1);
    }

    goto LABEL_34;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "null", 4);
}

void sub_27272B440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<applesauce::CF::DictionaryRef>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<applesauce::CF::DictionaryRef>::convert_to_plist(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  else
  {
    applesauce::CF::TypeRef::TypeRef(&v6, "(null)");
    v4 = v6;
  }

  v5 = *a3;
  *a3 = v4;
  v6 = v5;
  if (v5)
  {
    CFRelease(v5);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<applesauce::CF::DictionaryRef>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<applesauce::CF::DictionaryRef>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void *vp::vx::Property::Property_List_Type_Converter<applesauce::CF::DictionaryRef>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void sub_27272B85C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<applesauce::CF::DictionaryRef>::convert_to_blob(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v4 = *a2;
  if (!v4)
  {
    goto LABEL_5;
  }

  Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v4);
  v6 = Copy;
  if (Copy)
  {
    v7 = CFGetTypeID(Copy);
    if (v7 != CFDictionaryGetTypeID())
    {
      CFRelease(v6);
LABEL_5:
      v6 = 0;
    }
  }

  if (*(a3 + 8) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
  }

  **a3 = v6;

  return vp::Mutable_Blob::set_size(a3, 8uLL);
}

void sub_27272B978(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<applesauce::CF::DictionaryRef>::convert_from_blob(uint64_t a1, const void **a2, CFTypeRef **a3)
{
  if (a3[1] != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
  }

  v4 = **a3;
  if (v4)
  {
    CFRetain(**a3);
    cf = v4;
    v5 = CFGetTypeID(v4);
    if (v5 != CFDictionaryGetTypeID())
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v11, "Could not construct");
    }

    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v4);
    v4 = Copy;
    if (Copy)
    {
      v7 = CFGetTypeID(Copy);
      if (v7 != CFDictionaryGetTypeID())
      {
        CFRelease(v4);
        v4 = 0;
      }
    }
  }

  else
  {
    cf = 0;
  }

  v8 = *a2;
  *a2 = v4;
  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_27272BAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::Blob_Type_Converter<applesauce::CF::DictionaryRef>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<applesauce::CF::DictionaryRef>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void *vp::vx::Property::Blob_Type_Converter<applesauce::CF::DictionaryRef>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void sub_27272BE04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

int *vp::vx::Voice_Processor_State_Manager::create_state<double>(uint64_t a1, __n128 *a2, void *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v11) = *a3;
  vp::vx::data_flow::State_Manager::create_state(&v12, a2 + 3, v11);
  LODWORD(a2) = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::Value::~Value(v11);
  *a1 = a2;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  return vp::vx::data_flow::State<void>::~State(&v8);
}

uint64_t vp::vx::Property::String_Type_Converter<double>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<double>::convert_to_plist(uint64_t a1, uint64_t *a2, const void **a3)
{
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<double>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<double>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

double vp::vx::Property::Property_List_Type_Converter<double>::convert_from_plist@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0.0;
  v4 = (*(*a1 + 32))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  result = v7;
  *storage = v7;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<double>::convert_to_blob(int a1, void *a2, vp::Mutable_Blob *this)
{
  if (*(this + 1) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  **this = *a2;

  return vp::Mutable_Blob::set_size(this, 8uLL);
}

double vp::vx::Voice_Processor::Blob_Type_Converter<double>::convert_from_blob(uint64_t a1, double *a2, uint64_t a3)
{
  if (*(a3 + 8) != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v5 = std::bad_cast::bad_cast(exception);
  }

  result = **a3;
  *a2 = result;
  return result;
}

uint64_t vp::vx::Property::Blob_Type_Converter<double>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<double>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

double vp::vx::Property::Blob_Type_Converter<double>::convert_from_blob@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0.0;
  v4 = (*(*a1 + 40))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  result = v7;
  *storage = v7;
  return result;
}

void vp::vx::Voice_Processor::String_Type_Converter<std::vector<unsigned int>>::convert_to_string(uint64_t a1, uint64_t *a2)
{
  v4 = 2;
  v2 = *a2;
  v3 = a2[1];
  operator new();
}

void sub_27272C940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](va);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::String_Type_Converter<std::vector<unsigned int>>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<unsigned int>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<std::vector<unsigned int>>::convert_to_plist(uint64_t a1, uint64_t *a2, const void **a3)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(__p, *a2, a2[1], (a2[1] - *a2) >> 2);
  CFArray = applesauce::CF::details::make_CFArrayRef<unsigned int>(__p);
  v5 = *a3;
  *a3 = CFArray;
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = __p[0];
  if (__p[0])
  {

    operator delete(v6);
  }
}

void sub_27272CB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<std::vector<unsigned int>>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<std::vector<unsigned int>>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<unsigned int>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

double vp::vx::Property::Property_List_Type_Converter<std::vector<unsigned int>>::convert_from_plist@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  v4 = (*(*a1 + 32))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<unsigned int>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  result = *&v7;
  *storage = v7;
  storage[2] = v8;
  return result;
}

void sub_27272CD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<std::vector<unsigned int>>::convert_to_blob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8) - v4;
  if (*(a3 + 8) < v5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
  }

  memcpy(*a3, v4, v5);

  return vp::Mutable_Blob::set_size(a3, v5);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<std::vector<unsigned int>>::convert_from_blob(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  if ((v3 & 3) != 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
  }

  if (v3)
  {
    if (!((v3 >> 2) >> 62))
    {
      v5 = *a3;
      std::allocator<float>::allocate_at_least[abi:ne200100](v3 >> 2);
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v6 = 0uLL;
  v7 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v7;
    operator delete(v7);
    v6 = 0uLL;
  }

  *a2 = v6;
  *(a2 + 16) = 0;
}

uint64_t vp::vx::Property::Blob_Type_Converter<std::vector<unsigned int>>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<unsigned int>>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<std::vector<unsigned int>>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<unsigned int>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

double vp::vx::Property::Blob_Type_Converter<std::vector<unsigned int>>::convert_from_blob@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  v4 = (*(*a1 + 40))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<unsigned int>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  result = *&v7;
  *storage = v7;
  storage[2] = v8;
  return result;
}

void sub_27272D238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *vp::vx::Voice_Processor_State_Manager::create_state<CA::StreamDescription>(uint64_t a1, __n128 *a2, __int128 *a3)
{
  v14[0] = std::pmr::get_default_resource(a1);
  v14[1] = 0;
  v14[2] = &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v14);
  v7 = *a3;
  v8 = a3[1];
  *(storage + 32) = *(a3 + 4);
  *storage = v7;
  *(storage + 16) = v8;
  vp::vx::data_flow::State_Manager::create_state(&v15, a2 + 3, v14);
  LODWORD(a2) = v15;
  v11 = v15;
  v10 = v16;
  v16 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::data_flow::Value::~Value(v14);
  *a1 = a2;
  *(a1 + 8) = v10;
  v12 = 0;
  v13 = 0;
  return vp::vx::data_flow::State<void>::~State(&v11);
}

void vp::vx::Voice_Processor::String_Type_Converter<CA::StreamDescription>::convert_to_string(double a1, int8x8_t a2, uint64_t a3, void *a4, void *a5)
{
  CA::StreamDescription::AsString(&v27, a4, a1, a2);
  size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v27;
  }

  else
  {
    v7 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v27.__r_.__value_.__l.__size_;
  }

  v8 = (v7 + size);
  if (size)
  {
    v9 = size - 1;
    if (size == 1)
    {
      goto LABEL_28;
    }

    v10 = MEMORY[0x277D85DE0];
    while (1)
    {
      v11 = v7->__r_.__value_.__s.__data_[0];
      if (v11 == v7->__r_.__value_.__s.__data_[1])
      {
        if (v11 < 0 ? __maskrune(v11, 0x4000uLL) : *(v10 + 4 * v11 + 60) & 0x4000)
        {
          break;
        }
      }

      v7 = (v7 + 1);
      if (!--v9)
      {
        goto LABEL_28;
      }
    }
  }

  if (v7 != v8)
  {
    v13 = &v7->__r_.__value_.__s.__data_[2];
    if (&v7->__r_.__value_.__s.__data_[2] != v8)
    {
      v14 = MEMORY[0x277D85DE0];
      do
      {
        v15 = v7->__r_.__value_.__s.__data_[0];
        v16 = *v13;
        if (v15 == v16)
        {
          if (v15 < 0)
          {
            v17 = __maskrune(v15, 0x4000uLL);
          }

          else
          {
            v17 = *(v14 + 4 * v15 + 60) & 0x4000;
          }

          if (v17)
          {
            goto LABEL_26;
          }

          LOBYTE(v16) = *v13;
        }

        v7->__r_.__value_.__s.__data_[1] = v16;
        v7 = (v7 + 1);
LABEL_26:
        ++v13;
      }

      while (v13 != v8);
    }

    v8 = (&v7->__r_.__value_.__l.__data_ + 1);
  }

LABEL_28:
  v18 = &v27 + HIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v27;
  }

  else
  {
    v18 = (v27.__r_.__value_.__r.__words[0] + v27.__r_.__value_.__l.__size_);
    v19 = v27.__r_.__value_.__r.__words[0];
  }

  std::string::erase(&v27, v8 - v19, v18 - v8);
  v20 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v27;
  }

  else
  {
    v21 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = v27.__r_.__value_.__l.__size_;
  }

  v29 = 10;
  v22 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(v21, v21 + v20, &v29);
  v23 = &v27 + HIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v27;
  }

  else
  {
    v23 = (v27.__r_.__value_.__r.__words[0] + v27.__r_.__value_.__l.__size_);
    v24 = v27.__r_.__value_.__r.__words[0];
  }

  std::string::erase(&v27, v22 - v24, v23 - v22);
  __p = v27;
  memset(&v27, 0, sizeof(v27));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a5, p_p, v26);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_27272D5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<CA::StreamDescription>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<CA::StreamDescription>::convert_to_plist(double a1, int8x8_t a2, uint64_t a3, void *a4, const void **a5)
{
  CA::StreamDescription::AsString(__p, a4, a1, a2);
  if ((v12 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  v13 = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v9 = *a5;
  *a5 = v8;
  v13 = v9;
  if (v9)
  {
    CFRelease(v9);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_27272D828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<CA::StreamDescription>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<CA::StreamDescription>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

__n128 vp::vx::Property::Property_List_Type_Converter<CA::StreamDescription>::convert_from_plist@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v4 = (*(*a1 + 32))(a1, &v8, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  v6 = v10;
  result = v9;
  *storage = v8;
  *(storage + 16) = result;
  *(storage + 32) = v6;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<CA::StreamDescription>::convert_to_blob(int a1, __int128 *a2, vp::Mutable_Blob *this)
{
  if (*(this + 1) <= 0x27uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
  }

  v4 = *this;
  v5 = *a2;
  v6 = a2[1];
  *(v4 + 32) = *(a2 + 4);
  *v4 = v5;
  *(v4 + 16) = v6;

  return vp::Mutable_Blob::set_size(this, 0x28uLL);
}

__n128 vp::vx::Voice_Processor::Blob_Type_Converter<CA::StreamDescription>::convert_from_blob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) != 40)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  result = **a3;
  v4 = *(*a3 + 16);
  *(a2 + 32) = *(*a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t vp::vx::Property::Blob_Type_Converter<CA::StreamDescription>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<CA::StreamDescription>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

__n128 vp::vx::Property::Blob_Type_Converter<CA::StreamDescription>::convert_from_blob@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v4 = (*(*a1 + 40))(a1, &v8, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  v6 = v10;
  result = v9;
  *storage = v8;
  *(storage + 16) = result;
  *(storage + 32) = v6;
  return result;
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::vx::Chat_Flavor>::convert_to_string(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *a2;
  v5[0] = 5;
  v6 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::operator<<(a3);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::vx::Chat_Flavor>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Chat_Flavor>::convert_to_plist(uint64_t a1, unsigned int *a2, const void **a3)
{
  v4 = *a2;
  vp::vx::legacy_cast<vp::vx::Chat_Flavor>(*a2);
  valuePtr = v4;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = v5;
  v7 = *a3;
  *a3 = v6;
  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_27272E1FC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Chat_Flavor>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<vp::vx::Chat_Flavor>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Property_List_Type_Converter<vp::vx::Chat_Flavor>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Chat_Flavor>::convert_to_blob(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = *a2;
  vp::vx::legacy_cast<vp::vx::Chat_Flavor>(*a2);

  return vp::Blob_Setter<vp::Mutable_Blob>::set<unsigned int>(a3 + 2, v4);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Chat_Flavor>::convert_from_blob(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = vp::Blob_Getter<vp::Blob>::get<unsigned int>(a3 + 1);
  if (result >= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  *a2 = result;
  return result;
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Chat_Flavor>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Chat_Flavor>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Blob_Type_Converter<vp::vx::Chat_Flavor>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::vx::Operation_Mode>::convert_to_string(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *a2;
  v5[0] = 5;
  v6 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::operator<<(a3);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::vx::Operation_Mode>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Operation_Mode>::convert_to_plist(uint64_t a1, unsigned int *a2, const void **a3)
{
  v4 = *a2;
  vp::vx::legacy_cast<vp::vx::Operation_Mode>(*a2);
  valuePtr = v4;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = v5;
  v7 = *a3;
  *a3 = v6;
  if (v7)
  {
    CFRelease(v7);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Operation_Mode>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<vp::vx::Operation_Mode>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Property_List_Type_Converter<vp::vx::Operation_Mode>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Operation_Mode>::convert_to_blob(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = *a2;
  vp::vx::legacy_cast<vp::vx::Operation_Mode>(*a2);

  return vp::Blob_Setter<vp::Mutable_Blob>::set<unsigned int>(a3 + 2, v4);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Operation_Mode>::convert_from_blob(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = vp::Blob_Getter<vp::Blob>::get<unsigned int>(a3 + 1);
  if (result >= 9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  *a2 = result;
  return result;
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Operation_Mode>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Operation_Mode>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Blob_Type_Converter<vp::vx::Operation_Mode>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::vx::Beam_Direction>::convert_to_string(uint64_t a1, int *a2, void *a3)
{
  v4 = *a2;
  v5[0] = 5;
  v6 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::operator<<(a3);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::vx::Beam_Direction>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Beam_Direction>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Beam_Direction>::convert_to_plist(uint64_t a1, int *a2, const void **a3)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Beam_Direction>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<vp::vx::Beam_Direction>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Beam_Direction>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Property_List_Type_Converter<vp::vx::Beam_Direction>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Beam_Direction>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Beam_Direction>::convert_to_blob(int a1, _DWORD *a2, vp::Mutable_Blob *this)
{
  if (*(this + 1) <= 3uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  **this = *a2;

  return vp::Mutable_Blob::set_size(this, 4uLL);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Beam_Direction>::convert_from_blob(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*(a3 + 8) != 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
  }

  *a2 = **a3;
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Beam_Direction>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Beam_Direction>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Beam_Direction>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Beam_Direction>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Blob_Type_Converter<vp::vx::Beam_Direction>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Beam_Direction>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void vp::vx::Voice_Processor::String_Type_Converter<CA::ChannelLayout>::convert_to_string(uint64_t a1, uint64_t a2, void *a3)
{
  vp::utility::encode_to_base_64(&v27, *a2, *(a2 + 8) - *a2);
  if ((v28 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v25 = v27;
  size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v25;
  }

  else
  {
    v5 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v27.__r_.__value_.__l.__size_;
  }

  v6 = (v5 + size);
  if (size)
  {
    v7 = size - 1;
    if (size == 1)
    {
      goto LABEL_29;
    }

    v8 = MEMORY[0x277D85DE0];
    while (1)
    {
      v9 = v5->__r_.__value_.__s.__data_[0];
      if (v9 == v5->__r_.__value_.__s.__data_[1])
      {
        if (v9 < 0 ? __maskrune(v9, 0x4000uLL) : *(v8 + 4 * v9 + 60) & 0x4000)
        {
          break;
        }
      }

      v5 = (v5 + 1);
      if (!--v7)
      {
        goto LABEL_29;
      }
    }
  }

  if (v5 != v6)
  {
    v11 = &v5->__r_.__value_.__s.__data_[2];
    if (&v5->__r_.__value_.__s.__data_[2] != v6)
    {
      v12 = MEMORY[0x277D85DE0];
      do
      {
        v13 = v5->__r_.__value_.__s.__data_[0];
        v14 = *v11;
        if (v13 == v14)
        {
          if (v13 < 0)
          {
            v15 = __maskrune(v13, 0x4000uLL);
          }

          else
          {
            v15 = *(v12 + 4 * v13 + 60) & 0x4000;
          }

          if (v15)
          {
            goto LABEL_27;
          }

          LOBYTE(v14) = *v11;
        }

        v5->__r_.__value_.__s.__data_[1] = v14;
        v5 = (v5 + 1);
LABEL_27:
        ++v11;
      }

      while (v11 != v6);
    }

    v6 = (&v5->__r_.__value_.__l.__data_ + 1);
  }

LABEL_29:
  v16 = &v25 + HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v25;
  }

  else
  {
    v16 = (v25.__r_.__value_.__r.__words[0] + v25.__r_.__value_.__l.__size_);
    v17 = v25.__r_.__value_.__r.__words[0];
  }

  std::string::erase(&v25, v6 - v17, v16 - v6);
  v18 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v25;
  }

  else
  {
    v19 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v25.__r_.__value_.__l.__size_;
  }

  v27.__r_.__value_.__s.__data_[0] = 10;
  v20 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(v19, v19 + v18, &v27);
  v21 = &v25 + HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v25;
  }

  else
  {
    v21 = (v25.__r_.__value_.__r.__words[0] + v25.__r_.__value_.__l.__size_);
    v22 = v25.__r_.__value_.__r.__words[0];
  }

  std::string::erase(&v25, v20 - v22, v21 - v20);
  __p = v25;
  memset(&v25, 0, sizeof(v25));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, p_p, v24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_27272FDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<CA::ChannelLayout>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CA::ChannelLayout>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<CA::ChannelLayout>::convert_to_plist(uint64_t a1, uint64_t a2, const void **a3)
{
  applesauce::CF::make_DataRef(&cf, *a2, *(a2 + 8) - *a2);
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v5 = *a3;
  *a3 = v4;
  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<CA::ChannelLayout>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<CA::ChannelLayout>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<CA::ChannelLayout>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void sub_272730230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<CA::ChannelLayout>::convert_from_blob(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1];
  if (v3 > 0x1F)
  {
    v4 = *(*a3 + 8);
    if (v4)
    {
      if (v3 == 20 * (v4 - 1) + 32)
      {
        goto LABEL_4;
      }
    }

    else if (v3 == 32)
    {
LABEL_4:
      operator new();
    }
  }

  exception = __cxa_allocate_exception(8uLL);
  v6 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Blob_Type_Converter<CA::ChannelLayout>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CA::ChannelLayout>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<CA::ChannelLayout>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CA::ChannelLayout>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void sub_2727306C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::convert_to_string(uint64_t a1, const unsigned __int8 *a2, void *a3)
{
  vp::utility::encode_to_base_64(__p, a2, 8);
  if ((v8 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, v4, v5);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_272730810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::convert_to_blob(int a1, void **a2, vp::Mutable_Blob *this)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  if (*(this + 1) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
  }

  **this = v4;

  return vp::Mutable_Blob::set_size(this, 8uLL);
}

void sub_272730A40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>::~Block(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::convert_from_blob(uint64_t a1, const void **a2, uint64_t a3)
{
  if (*(a3 + 8) != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
  }

  v4 = **a3;
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  std::__destroy_at[abi:ne200100]<vp::Block<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,0>(a2);
  *a2 = v5;
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Property::Blob_Type_Converter<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::convert_from_blob(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  aBlock = 0;
  v4 = (*(*a1 + 40))(a1, &aBlock, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  v6 = aBlock;
  aBlock = 0;
  *storage = v6;
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_272730DDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>::~Block(va);
  _Unwind_Resume(a1);
}

int *vp::vx::Voice_Processor_State_Manager::create_state<std::vector<float>>(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v12[0] = std::pmr::get_default_resource(a1);
  v12[1] = 0;
  v12[2] = &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v12);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  *storage = *a3;
  storage[2] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  vp::vx::data_flow::State_Manager::create_state(&v13, a2 + 3, v12);
  LODWORD(a2) = v13;
  v9 = v13;
  v8 = v14;
  v14 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v13);
  vp::vx::data_flow::Value::~Value(v12);
  *a1 = a2;
  *(a1 + 8) = v8;
  v10 = 0;
  v11 = 0;
  return vp::vx::data_flow::State<void>::~State(&v9);
}

void vp::vx::Voice_Processor::String_Type_Converter<std::vector<float>>::convert_to_string(uint64_t a1, uint64_t *a2)
{
  v4 = 2;
  v2 = *a2;
  v3 = a2[1];
  operator new();
}

void sub_272731084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](va);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::String_Type_Converter<std::vector<float>>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<std::vector<float>>::convert_to_plist(uint64_t a1, uint64_t *a2, const void **a3)
{
  memset(__p, 0, sizeof(__p));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, *a2, a2[1], (a2[1] - *a2) >> 2);
  CFArray = applesauce::CF::details::make_CFArrayRef<float>(__p);
  v5 = *a3;
  *a3 = CFArray;
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = __p[0];
  if (__p[0])
  {

    operator delete(v6);
  }
}

void sub_2727312A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<std::vector<float>>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<std::vector<float>>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

double vp::vx::Property::Property_List_Type_Converter<std::vector<float>>::convert_from_plist@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  v4 = (*(*a1 + 32))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  result = *&v7;
  *storage = v7;
  storage[2] = v8;
  return result;
}

void sub_2727314D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<std::vector<float>>::convert_to_blob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8) - v4;
  if (*(a3 + 8) < v5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
  }

  memcpy(*a3, v4, v5);

  return vp::Mutable_Blob::set_size(a3, v5);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<std::vector<float>>::convert_from_blob(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  if ((v3 & 3) != 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
  }

  if (v3)
  {
    if (!((v3 >> 2) >> 62))
    {
      v5 = *a3;
      std::allocator<float>::allocate_at_least[abi:ne200100](v3 >> 2);
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v6 = 0uLL;
  v7 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v7;
    operator delete(v7);
    v6 = 0uLL;
  }

  *a2 = v6;
  *(a2 + 16) = 0;
}

uint64_t vp::vx::Property::Blob_Type_Converter<std::vector<float>>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<std::vector<float>>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

double vp::vx::Property::Blob_Type_Converter<std::vector<float>>::convert_from_blob@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  v4 = (*(*a1 + 40))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  result = *&v7;
  *storage = v7;
  storage[2] = v8;
  return result;
}

void sub_27273197C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)38>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x26u, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_272731AF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE38ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EEclEOS1N_OS1O_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v71 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id)
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
    vp::vx::data_flow::Value::view_storage(v10);
  }

  v11 = v4[3];
  if (v11[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v11);
  }

  v12 = *v7;
  v13 = *v9;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  v18 = vp::vx::legacy_cast<vp::vx::Output_Port_Type>(v13);
  v19 = v17(v16, v12, v18);
  v20 = v19;
  if ((v19 & 0x100000000) != 0)
  {
    v21 = v19;
    if (!v12)
    {
      goto LABEL_42;
    }

    goto LABEL_16;
  }

  if (v12)
  {
    log = vp::get_log(v19);
    v19 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      log_context_info = vp::get_log_context_info(&__p, v14, "vp::vx::Voice_Processor]", 23);
      v42 = v54;
      v43 = v54;
      if ((v54 & 0x80u) != 0)
      {
        v42 = v53;
      }

      v49 = v42;
      v44 = vp::get_log(log_context_info);
      v19 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      if (v19)
      {
        v48 = __p;
        vp::vx::detail::to_string<vp::vx::Output_Port_Type>(&v51, v13);
        p_p = &__p;
        if (v43 < 0)
        {
          p_p = v48;
        }

        v56 = p_p;
        v46 = "";
        *buf = 136316930;
        if (v49)
        {
          v46 = " ";
        }

        v57 = 2080;
        v47 = &v51;
        if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v47 = v51.__r_.__value_.__r.__words[0];
        }

        v58 = v46;
        v59 = 1024;
        v60 = 38;
        v61 = 1040;
        v62 = 48;
        v63 = 2080;
        v64 = "Ref_Virtual_Audio_Stream_Physical_Stream_Latency]";
        v65 = 1024;
        v66 = v12;
        v67 = 2080;
        v68 = v47;
        v69 = 1024;
        LODWORD(v70) = v20;
        _os_log_impl(&dword_2724B4000, v44, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u, port type %s with status %u", buf, 0x42u);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        LOBYTE(v43) = v54;
      }

      if ((v43 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }
  }

  v21 = *(a1 + 16);
  if (v12)
  {
LABEL_16:
    v22 = vp::get_log(v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = vp::get_log_context_info(&__p, v14, "vp::vx::Voice_Processor]", 23);
      v24 = v54;
      v25 = v54;
      v26 = v53;
      v27 = vp::get_log(v23);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        if (v25 >= 0)
        {
          v28 = v24;
        }

        else
        {
          v28 = v26;
        }

        if (v25 >= 0)
        {
          v29 = &__p;
        }

        else
        {
          v29 = __p;
        }

        if (v28)
        {
          v30 = " ";
        }

        else
        {
          v30 = "";
        }

        v31 = vp::vx::Legacy<vp::vx::Output_Port_Type>::cast(v13) | 0x100000000;
        if ((v31 & 0x100000000) != 0)
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        std::to_string(&v51, v32);
        v33 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
        v34 = v51.__r_.__value_.__r.__words[0];
        std::to_string(&v50, v21);
        v35 = &v51;
        if (v33 < 0)
        {
          v35 = v34;
        }

        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = &v50;
        }

        else
        {
          v36 = v50.__r_.__value_.__r.__words[0];
        }

        *buf = 136316930;
        v56 = v29;
        v57 = 2080;
        v58 = v30;
        v59 = 1024;
        v60 = 38;
        v61 = 1040;
        v62 = 48;
        v63 = 2080;
        v64 = "Ref_Virtual_Audio_Stream_Physical_Stream_Latency]";
        v65 = 1024;
        v66 = v12;
        v67 = 2080;
        v68 = v35;
        v69 = 2080;
        v70 = v36;
        _os_log_impl(&dword_2724B4000, v27, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u, port type %s is %s", buf, 0x46u);
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        LOBYTE(v25) = v54;
      }

      if ((v25 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }
  }

LABEL_42:
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v37);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v21;
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272731F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    if (a26 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272731DA4);
  }

  _Unwind_Resume(exception_object);
}

std::string *vp::vx::detail::to_string<vp::vx::Output_Port_Type>(std::string *a1, int a2)
{
  v3 = vp::vx::Legacy<vp::vx::Output_Port_Type>::cast(a2) | 0x100000000;
  if ((v3 & 0x100000000) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return std::to_string(a1, v4);
}

void sub_272732058(int a1)
{
  if (a1)
  {
    __cxa_end_catch();
  }

  else
  {
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x272732028);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE38ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE38ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE38ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EE7__cloneEPNS0_6__baseIS1S_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C31E0;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE38ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EED0Ev(void *a1)
{
  *a1 = &unk_2881C31E0;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE38ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EED1Ev(void *a1)
{
  *a1 = &unk_2881C31E0;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)37>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x25u, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_272732308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE37EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EEclEOS1J_OS1K_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v54 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(*(a1 + 32), v10);
  v14 = v13;
  if ((v13 & 0x100000000) == 0)
  {
    if (v10)
    {
      log = vp::get_log(v13);
      v13 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        log_context_info = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
        v29 = v39;
        v30 = v39;
        v31 = v38;
        v32 = vp::get_log(log_context_info);
        v13 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          v33 = v37;
          if (v30 >= 0)
          {
            v34 = v29;
          }

          else
          {
            v34 = v31;
          }

          if (v30 >= 0)
          {
            v33 = &v37;
          }

          *buf = 136316674;
          v41 = v33;
          v35 = "";
          v42 = 2080;
          if (v34)
          {
            v35 = " ";
          }

          v43 = v35;
          v44 = 1024;
          v45 = 37;
          v46 = 1040;
          v47 = 42;
          v48 = 2080;
          v49 = "Ref_Hardware_Physical_Output_Safety_Offset]";
          v50 = 1024;
          v51 = v10;
          v52 = 1024;
          LODWORD(v53) = v14;
          _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u with status %u", buf, 0x38u);
          LOBYTE(v30) = v39;
        }

        if ((v30 & 0x80) != 0)
        {
          operator delete(v37);
        }
      }
    }

    v14 = *(a1 + 16);
  }

  if (v10)
  {
    v15 = vp::get_log(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
      v17 = v39;
      if ((v39 & 0x80u) == 0)
      {
        v18 = v39;
      }

      else
      {
        v18 = v38;
      }

      v19 = vp::get_log(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v37;
        std::to_string(&__p, v14);
        v21 = &v37;
        if (v17 < 0)
        {
          v21 = v20;
        }

        v41 = v21;
        v22 = " ";
        *buf = 136316674;
        if (!v18)
        {
          v22 = "";
        }

        v42 = 2080;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v43 = v22;
        v44 = 1024;
        v45 = 37;
        v46 = 1040;
        v47 = 42;
        v48 = 2080;
        v49 = "Ref_Hardware_Physical_Output_Safety_Offset]";
        v50 = 1024;
        v51 = v10;
        v52 = 2080;
        v53 = p_p;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u is %s", buf, 0x3Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LOBYTE(v17) = v39;
      }

      if ((v17 & 0x80) != 0)
      {
        operator delete(v37);
      }
    }
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v24);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v14;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27273268C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (v3 < 0)
    {
      operator delete(v2);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272732520);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE37EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE37EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE37EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C3198;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE37EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED0Ev(void *a1)
{
  *a1 = &unk_2881C3198;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE37EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED1Ev(void *a1)
{
  *a1 = &unk_2881C3198;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)36>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x24u, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_272732960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE36EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EEclEOS1J_OS1K_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v54 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(*(a1 + 32), v10);
  v14 = v13;
  if ((v13 & 0x100000000) == 0)
  {
    if (v10)
    {
      log = vp::get_log(v13);
      v13 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        log_context_info = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
        v29 = v39;
        v30 = v39;
        v31 = v38;
        v32 = vp::get_log(log_context_info);
        v13 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          v33 = v37;
          if (v30 >= 0)
          {
            v34 = v29;
          }

          else
          {
            v34 = v31;
          }

          if (v30 >= 0)
          {
            v33 = &v37;
          }

          *buf = 136316674;
          v41 = v33;
          v35 = "";
          v42 = 2080;
          if (v34)
          {
            v35 = " ";
          }

          v43 = v35;
          v44 = 1024;
          v45 = 36;
          v46 = 1040;
          v47 = 33;
          v48 = 2080;
          v49 = "Ref_Hardware_Output_Safety_Offset]";
          v50 = 1024;
          v51 = v10;
          v52 = 1024;
          LODWORD(v53) = v14;
          _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u with status %u", buf, 0x38u);
          LOBYTE(v30) = v39;
        }

        if ((v30 & 0x80) != 0)
        {
          operator delete(v37);
        }
      }
    }

    v14 = *(a1 + 16);
  }

  if (v10)
  {
    v15 = vp::get_log(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
      v17 = v39;
      if ((v39 & 0x80u) == 0)
      {
        v18 = v39;
      }

      else
      {
        v18 = v38;
      }

      v19 = vp::get_log(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v37;
        std::to_string(&__p, v14);
        v21 = &v37;
        if (v17 < 0)
        {
          v21 = v20;
        }

        v41 = v21;
        v22 = " ";
        *buf = 136316674;
        if (!v18)
        {
          v22 = "";
        }

        v42 = 2080;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v43 = v22;
        v44 = 1024;
        v45 = 36;
        v46 = 1040;
        v47 = 33;
        v48 = 2080;
        v49 = "Ref_Hardware_Output_Safety_Offset]";
        v50 = 1024;
        v51 = v10;
        v52 = 2080;
        v53 = p_p;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u is %s", buf, 0x3Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LOBYTE(v17) = v39;
      }

      if ((v17 & 0x80) != 0)
      {
        operator delete(v37);
      }
    }
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v24);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v14;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272732CE4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (v3 < 0)
    {
      operator delete(v2);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272732B78);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE36EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE36EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE36EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C3150;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE36EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED0Ev(void *a1)
{
  *a1 = &unk_2881C3150;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE36EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED1Ev(void *a1)
{
  *a1 = &unk_2881C3150;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)35>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x23u, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_272732FB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE35EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EEclEOS1J_OS1K_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v54 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(*(a1 + 32), v10);
  v14 = v13;
  if ((v13 & 0x100000000) == 0)
  {
    if (v10)
    {
      log = vp::get_log(v13);
      v13 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        log_context_info = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
        v29 = v39;
        v30 = v39;
        v31 = v38;
        v32 = vp::get_log(log_context_info);
        v13 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          v33 = v37;
          if (v30 >= 0)
          {
            v34 = v29;
          }

          else
          {
            v34 = v31;
          }

          if (v30 >= 0)
          {
            v33 = &v37;
          }

          *buf = 136316674;
          v41 = v33;
          v35 = "";
          v42 = 2080;
          if (v34)
          {
            v35 = " ";
          }

          v43 = v35;
          v44 = 1024;
          v45 = 35;
          v46 = 1040;
          v47 = 36;
          v48 = 2080;
          v49 = "Ref_Hardware_Physical_Output_Latency]";
          v50 = 1024;
          v51 = v10;
          v52 = 1024;
          LODWORD(v53) = v14;
          _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u with status %u", buf, 0x38u);
          LOBYTE(v30) = v39;
        }

        if ((v30 & 0x80) != 0)
        {
          operator delete(v37);
        }
      }
    }

    v14 = *(a1 + 16);
  }

  if (v10)
  {
    v15 = vp::get_log(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
      v17 = v39;
      if ((v39 & 0x80u) == 0)
      {
        v18 = v39;
      }

      else
      {
        v18 = v38;
      }

      v19 = vp::get_log(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v37;
        std::to_string(&__p, v14);
        v21 = &v37;
        if (v17 < 0)
        {
          v21 = v20;
        }

        v41 = v21;
        v22 = " ";
        *buf = 136316674;
        if (!v18)
        {
          v22 = "";
        }

        v42 = 2080;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v43 = v22;
        v44 = 1024;
        v45 = 35;
        v46 = 1040;
        v47 = 36;
        v48 = 2080;
        v49 = "Ref_Hardware_Physical_Output_Latency]";
        v50 = 1024;
        v51 = v10;
        v52 = 2080;
        v53 = p_p;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u is %s", buf, 0x3Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LOBYTE(v17) = v39;
      }

      if ((v17 & 0x80) != 0)
      {
        operator delete(v37);
      }
    }
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v24);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v14;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27273333C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (v3 < 0)
    {
      operator delete(v2);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2727331D0);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE35EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE35EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE35EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C3108;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE35EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED0Ev(void *a1)
{
  *a1 = &unk_2881C3108;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE35EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED1Ev(void *a1)
{
  *a1 = &unk_2881C3108;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)34>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x22u, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_272733610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE34EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EEclEOS1J_OS1K_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v54 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(*(a1 + 32), v10);
  v14 = v13;
  if ((v13 & 0x100000000) == 0)
  {
    if (v10)
    {
      log = vp::get_log(v13);
      v13 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        log_context_info = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
        v29 = v39;
        v30 = v39;
        v31 = v38;
        v32 = vp::get_log(log_context_info);
        v13 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          v33 = v37;
          if (v30 >= 0)
          {
            v34 = v29;
          }

          else
          {
            v34 = v31;
          }

          if (v30 >= 0)
          {
            v33 = &v37;
          }

          *buf = 136316674;
          v41 = v33;
          v35 = "";
          v42 = 2080;
          if (v34)
          {
            v35 = " ";
          }

          v43 = v35;
          v44 = 1024;
          v45 = 34;
          v46 = 1040;
          v47 = 27;
          v48 = 2080;
          v49 = "Ref_Hardware_Output_Latency]";
          v50 = 1024;
          v51 = v10;
          v52 = 1024;
          LODWORD(v53) = v14;
          _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u with status %u", buf, 0x38u);
          LOBYTE(v30) = v39;
        }

        if ((v30 & 0x80) != 0)
        {
          operator delete(v37);
        }
      }
    }

    v14 = *(a1 + 16);
  }

  if (v10)
  {
    v15 = vp::get_log(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
      v17 = v39;
      if ((v39 & 0x80u) == 0)
      {
        v18 = v39;
      }

      else
      {
        v18 = v38;
      }

      v19 = vp::get_log(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v37;
        std::to_string(&__p, v14);
        v21 = &v37;
        if (v17 < 0)
        {
          v21 = v20;
        }

        v41 = v21;
        v22 = " ";
        *buf = 136316674;
        if (!v18)
        {
          v22 = "";
        }

        v42 = 2080;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v43 = v22;
        v44 = 1024;
        v45 = 34;
        v46 = 1040;
        v47 = 27;
        v48 = 2080;
        v49 = "Ref_Hardware_Output_Latency]";
        v50 = 1024;
        v51 = v10;
        v52 = 2080;
        v53 = p_p;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u is %s", buf, 0x3Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LOBYTE(v17) = v39;
      }

      if ((v17 & 0x80) != 0)
      {
        operator delete(v37);
      }
    }
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v24);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v14;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272733994(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (v3 < 0)
    {
      operator delete(v2);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272733828);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE34EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE34EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE34EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C30C0;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE34EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED0Ev(void *a1)
{
  *a1 = &unk_2881C30C0;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE34EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED1Ev(void *a1)
{
  *a1 = &unk_2881C30C0;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)33>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x21u, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_272733C68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE33EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EEclEOS1J_OS1K_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v54 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(*(a1 + 32), v10);
  v14 = v13;
  if ((v13 & 0x100000000) == 0)
  {
    if (v10)
    {
      log = vp::get_log(v13);
      v13 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        log_context_info = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
        v29 = v39;
        v30 = v39;
        v31 = v38;
        v32 = vp::get_log(log_context_info);
        v13 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          v33 = v37;
          if (v30 >= 0)
          {
            v34 = v29;
          }

          else
          {
            v34 = v31;
          }

          if (v30 >= 0)
          {
            v33 = &v37;
          }

          *buf = 136316674;
          v41 = v33;
          v35 = "";
          v42 = 2080;
          if (v34)
          {
            v35 = " ";
          }

          v43 = v35;
          v44 = 1024;
          v45 = 33;
          v46 = 1040;
          v47 = 41;
          v48 = 2080;
          v49 = "Ref_Hardware_Physical_Input_Safety_Offset]";
          v50 = 1024;
          v51 = v10;
          v52 = 1024;
          LODWORD(v53) = v14;
          _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u with status %u", buf, 0x38u);
          LOBYTE(v30) = v39;
        }

        if ((v30 & 0x80) != 0)
        {
          operator delete(v37);
        }
      }
    }

    v14 = *(a1 + 16);
  }

  if (v10)
  {
    v15 = vp::get_log(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
      v17 = v39;
      if ((v39 & 0x80u) == 0)
      {
        v18 = v39;
      }

      else
      {
        v18 = v38;
      }

      v19 = vp::get_log(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v37;
        std::to_string(&__p, v14);
        v21 = &v37;
        if (v17 < 0)
        {
          v21 = v20;
        }

        v41 = v21;
        v22 = " ";
        *buf = 136316674;
        if (!v18)
        {
          v22 = "";
        }

        v42 = 2080;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v43 = v22;
        v44 = 1024;
        v45 = 33;
        v46 = 1040;
        v47 = 41;
        v48 = 2080;
        v49 = "Ref_Hardware_Physical_Input_Safety_Offset]";
        v50 = 1024;
        v51 = v10;
        v52 = 2080;
        v53 = p_p;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u is %s", buf, 0x3Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LOBYTE(v17) = v39;
      }

      if ((v17 & 0x80) != 0)
      {
        operator delete(v37);
      }
    }
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v24);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v14;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272733FEC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (v3 < 0)
    {
      operator delete(v2);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272733E80);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE33EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE33EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE33EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C3078;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE33EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED0Ev(void *a1)
{
  *a1 = &unk_2881C3078;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE33EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED1Ev(void *a1)
{
  *a1 = &unk_2881C3078;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)32>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x20u, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_2727342C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE32EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EEclEOS1J_OS1K_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v54 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(*(a1 + 32), v10);
  v14 = v13;
  if ((v13 & 0x100000000) == 0)
  {
    if (v10)
    {
      log = vp::get_log(v13);
      v13 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        log_context_info = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
        v29 = v39;
        v30 = v39;
        v31 = v38;
        v32 = vp::get_log(log_context_info);
        v13 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          v33 = v37;
          if (v30 >= 0)
          {
            v34 = v29;
          }

          else
          {
            v34 = v31;
          }

          *buf = 136316674;
          if (v30 >= 0)
          {
            v33 = &v37;
          }

          v41 = v33;
          v35 = "";
          v42 = 2080;
          if (v34)
          {
            v35 = " ";
          }

          v43 = v35;
          v44 = 1024;
          v45 = 32;
          v46 = 1040;
          v47 = 32;
          v48 = 2080;
          v49 = "Ref_Hardware_Input_Safety_Offset]";
          v50 = 1024;
          v51 = v10;
          v52 = 1024;
          LODWORD(v53) = v14;
          _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u with status %u", buf, 0x38u);
          LOBYTE(v30) = v39;
        }

        if ((v30 & 0x80) != 0)
        {
          operator delete(v37);
        }
      }
    }

    v14 = *(a1 + 16);
  }

  if (v10)
  {
    v15 = vp::get_log(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
      v17 = v39;
      if ((v39 & 0x80u) == 0)
      {
        v18 = v39;
      }

      else
      {
        v18 = v38;
      }

      v19 = vp::get_log(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v37;
        std::to_string(&__p, v14);
        v21 = &v37;
        if (v17 < 0)
        {
          v21 = v20;
        }

        v41 = v21;
        v22 = "";
        *buf = 136316674;
        if (v18)
        {
          v22 = " ";
        }

        v42 = 2080;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v43 = v22;
        v44 = 1024;
        v45 = 32;
        v46 = 1040;
        v47 = 32;
        v48 = 2080;
        v49 = "Ref_Hardware_Input_Safety_Offset]";
        v50 = 1024;
        v51 = v10;
        v52 = 2080;
        v53 = p_p;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u is %s", buf, 0x3Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LOBYTE(v17) = v39;
      }

      if ((v17 & 0x80) != 0)
      {
        operator delete(v37);
      }
    }
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v24);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v14;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27273463C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (v3 < 0)
    {
      operator delete(v2);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2727344D4);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE32EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE32EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE32EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C3030;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE32EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED0Ev(void *a1)
{
  *a1 = &unk_2881C3030;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE32EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED1Ev(void *a1)
{
  *a1 = &unk_2881C3030;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)31>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x1Fu, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_272734910(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE31EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EEclEOS1J_OS1K_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v54 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(*(a1 + 32), v10);
  v14 = v13;
  if ((v13 & 0x100000000) == 0)
  {
    if (v10)
    {
      log = vp::get_log(v13);
      v13 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        log_context_info = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
        v29 = v39;
        v30 = v39;
        v31 = v38;
        v32 = vp::get_log(log_context_info);
        v13 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          v33 = v37;
          if (v30 >= 0)
          {
            v34 = v29;
          }

          else
          {
            v34 = v31;
          }

          if (v30 >= 0)
          {
            v33 = &v37;
          }

          *buf = 136316674;
          v41 = v33;
          v35 = "";
          v42 = 2080;
          if (v34)
          {
            v35 = " ";
          }

          v43 = v35;
          v44 = 1024;
          v45 = 31;
          v46 = 1040;
          v47 = 35;
          v48 = 2080;
          v49 = "Ref_Hardware_Physical_Input_Latency]";
          v50 = 1024;
          v51 = v10;
          v52 = 1024;
          LODWORD(v53) = v14;
          _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u with status %u", buf, 0x38u);
          LOBYTE(v30) = v39;
        }

        if ((v30 & 0x80) != 0)
        {
          operator delete(v37);
        }
      }
    }

    v14 = *(a1 + 16);
  }

  if (v10)
  {
    v15 = vp::get_log(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
      v17 = v39;
      if ((v39 & 0x80u) == 0)
      {
        v18 = v39;
      }

      else
      {
        v18 = v38;
      }

      v19 = vp::get_log(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v37;
        std::to_string(&__p, v14);
        v21 = &v37;
        if (v17 < 0)
        {
          v21 = v20;
        }

        v41 = v21;
        v22 = " ";
        *buf = 136316674;
        if (!v18)
        {
          v22 = "";
        }

        v42 = 2080;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v43 = v22;
        v44 = 1024;
        v45 = 31;
        v46 = 1040;
        v47 = 35;
        v48 = 2080;
        v49 = "Ref_Hardware_Physical_Input_Latency]";
        v50 = 1024;
        v51 = v10;
        v52 = 2080;
        v53 = p_p;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u is %s", buf, 0x3Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LOBYTE(v17) = v39;
      }

      if ((v17 & 0x80) != 0)
      {
        operator delete(v37);
      }
    }
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v24);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v14;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272734C94(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (v3 < 0)
    {
      operator delete(v2);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272734B28);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE31EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE31EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE31EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C2FE8;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE31EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED0Ev(void *a1)
{
  *a1 = &unk_2881C2FE8;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE31EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED1Ev(void *a1)
{
  *a1 = &unk_2881C2FE8;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)30>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x1Eu, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_272734F68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE30EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EEclEOS1J_OS1K_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v54 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(*(a1 + 32), v10);
  v14 = v13;
  if ((v13 & 0x100000000) == 0)
  {
    if (v10)
    {
      log = vp::get_log(v13);
      v13 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        log_context_info = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
        v29 = v39;
        v30 = v39;
        v31 = v38;
        v32 = vp::get_log(log_context_info);
        v13 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          v33 = v37;
          if (v30 >= 0)
          {
            v34 = v29;
          }

          else
          {
            v34 = v31;
          }

          if (v30 >= 0)
          {
            v33 = &v37;
          }

          *buf = 136316674;
          v41 = v33;
          v35 = "";
          v42 = 2080;
          if (v34)
          {
            v35 = " ";
          }

          v43 = v35;
          v44 = 1024;
          v45 = 30;
          v46 = 1040;
          v47 = 26;
          v48 = 2080;
          v49 = "Ref_Hardware_Input_Latency]";
          v50 = 1024;
          v51 = v10;
          v52 = 1024;
          LODWORD(v53) = v14;
          _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u with status %u", buf, 0x38u);
          LOBYTE(v30) = v39;
        }

        if ((v30 & 0x80) != 0)
        {
          operator delete(v37);
        }
      }
    }

    v14 = *(a1 + 16);
  }

  if (v10)
  {
    v15 = vp::get_log(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
      v17 = v39;
      if ((v39 & 0x80u) == 0)
      {
        v18 = v39;
      }

      else
      {
        v18 = v38;
      }

      v19 = vp::get_log(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v37;
        std::to_string(&__p, v14);
        v21 = &v37;
        if (v17 < 0)
        {
          v21 = v20;
        }

        v41 = v21;
        v22 = " ";
        *buf = 136316674;
        if (!v18)
        {
          v22 = "";
        }

        v42 = 2080;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v43 = v22;
        v44 = 1024;
        v45 = 30;
        v46 = 1040;
        v47 = 26;
        v48 = 2080;
        v49 = "Ref_Hardware_Input_Latency]";
        v50 = 1024;
        v51 = v10;
        v52 = 2080;
        v53 = p_p;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u is %s", buf, 0x3Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LOBYTE(v17) = v39;
      }

      if ((v17 & 0x80) != 0)
      {
        operator delete(v37);
      }
    }
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v24);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v14;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2727352EC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (v3 < 0)
    {
      operator delete(v2);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272735180);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE30EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE30EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE30EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C2FA0;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE30EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED0Ev(void *a1)
{
  *a1 = &unk_2881C2FA0;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE30EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED1Ev(void *a1)
{
  *a1 = &unk_2881C2FA0;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)29>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<double>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<double>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x1Du, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_2727355C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

double *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE29EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EEclEOS1J_OS1K_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v57 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = COERCE_DOUBLE((*(a1 + 24))(*(a1 + 32), v10));
  v14 = LODWORD(v13);
  if (v15)
  {
    v16 = v13;
    if (!v10)
    {
      goto LABEL_30;
    }

    goto LABEL_13;
  }

  if (v10)
  {
    log = vp::get_log(*&v13);
    *&v13 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (LODWORD(v13))
    {
      log_context_info = vp::get_log_context_info(&v40, v11, "vp::vx::Voice_Processor]", 23);
      v31 = v42;
      v32 = v42;
      v33 = v41;
      v34 = vp::get_log(log_context_info);
      *&v13 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
      v35 = v32;
      if (LODWORD(v13))
      {
        v36 = v40;
        if (v32 >= 0)
        {
          v37 = v31;
        }

        else
        {
          v37 = v33;
        }

        if (v32 >= 0)
        {
          v36 = &v40;
        }

        *buf = 136316674;
        v44 = v36;
        v38 = "";
        v45 = 2080;
        if (v37)
        {
          v38 = " ";
        }

        v46 = v38;
        v47 = 1024;
        v48 = 29;
        v49 = 1040;
        v50 = 33;
        v51 = 2080;
        v52 = "Ref_Hardware_Physical_Sample_Rate]";
        v53 = 1024;
        v54 = v10;
        v55 = 1024;
        LODWORD(v56) = v14;
        _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u with status %u", buf, 0x38u);
        v35 = v42;
      }

      if (v35 < 0)
      {
        operator delete(v40);
      }
    }
  }

  v16 = *(a1 + 16);
  if (v10)
  {
LABEL_13:
    v17 = vp::get_log(*&v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = vp::get_log_context_info(&v40, v11, "vp::vx::Voice_Processor]", 23);
      v19 = v42;
      if ((v42 & 0x80u) == 0)
      {
        v20 = v42;
      }

      else
      {
        v20 = v41;
      }

      v21 = vp::get_log(v18);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v40;
        std::to_string(&__p, v16);
        v23 = &v40;
        if (v19 < 0)
        {
          v23 = v22;
        }

        v44 = v23;
        v24 = " ";
        *buf = 136316674;
        if (!v20)
        {
          v24 = "";
        }

        v45 = 2080;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v46 = v24;
        v47 = 1024;
        v48 = 29;
        v49 = 1040;
        v50 = 33;
        v51 = 2080;
        v52 = "Ref_Hardware_Physical_Sample_Rate]";
        v53 = 1024;
        v54 = v10;
        v55 = 2080;
        v56 = p_p;
        _os_log_impl(&dword_2724B4000, v21, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u is %s", buf, 0x3Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LOBYTE(v19) = v42;
      }

      if ((v19 & 0x80) != 0)
      {
        operator delete(v40);
      }
    }
  }

LABEL_30:
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v26);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v16;
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27273595C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (v3 < 0)
    {
      operator delete(v2);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2727357E8);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE29EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE29EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE29EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C2F58;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE29EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED0Ev(void *a1)
{
  *a1 = &unk_2881C2F58;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE29EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED1Ev(void *a1)
{
  *a1 = &unk_2881C2F58;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)43>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x2Bu, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_272735C30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE43ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EEclEOS1N_OS1O_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v71 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id)
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
    vp::vx::data_flow::Value::view_storage(v10);
  }

  v11 = v4[3];
  if (v11[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v11);
  }

  v12 = *v7;
  v13 = *v9;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  v18 = vp::vx::legacy_cast<vp::vx::Output_Port_Type>(v13);
  v19 = v17(v16, v12, v18);
  v20 = v19;
  if ((v19 & 0x100000000) != 0)
  {
    v21 = v19;
    if (!v12)
    {
      goto LABEL_42;
    }

    goto LABEL_16;
  }

  if (v12)
  {
    log = vp::get_log(v19);
    v19 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      log_context_info = vp::get_log_context_info(&__p, v14, "vp::vx::Voice_Processor]", 23);
      v42 = v54;
      v43 = v54;
      if ((v54 & 0x80u) != 0)
      {
        v42 = v53;
      }

      v49 = v42;
      v44 = vp::get_log(log_context_info);
      v19 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      if (v19)
      {
        v48 = __p;
        vp::vx::detail::to_string<vp::vx::Output_Port_Type>(&v51, v13);
        p_p = &__p;
        if (v43 < 0)
        {
          p_p = v48;
        }

        v56 = p_p;
        v46 = "";
        *buf = 136316930;
        if (v49)
        {
          v46 = " ";
        }

        v57 = 2080;
        v47 = &v51;
        if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v47 = v51.__r_.__value_.__r.__words[0];
        }

        v58 = v46;
        v59 = 1024;
        v60 = 43;
        v61 = 1040;
        v62 = 32;
        v63 = 2080;
        v64 = "Ref_Port_Bluetooth_HLC_2ch_State]";
        v65 = 1024;
        v66 = v12;
        v67 = 2080;
        v68 = v47;
        v69 = 1024;
        LODWORD(v70) = v20;
        _os_log_impl(&dword_2724B4000, v44, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u, port type %s with status %u", buf, 0x42u);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        LOBYTE(v43) = v54;
      }

      if ((v43 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }
  }

  v21 = *(a1 + 16);
  if (v12)
  {
LABEL_16:
    v22 = vp::get_log(v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = vp::get_log_context_info(&__p, v14, "vp::vx::Voice_Processor]", 23);
      v24 = v54;
      v25 = v54;
      v26 = v53;
      v27 = vp::get_log(v23);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        if (v25 >= 0)
        {
          v28 = v24;
        }

        else
        {
          v28 = v26;
        }

        if (v25 >= 0)
        {
          v29 = &__p;
        }

        else
        {
          v29 = __p;
        }

        if (v28)
        {
          v30 = " ";
        }

        else
        {
          v30 = "";
        }

        v31 = vp::vx::Legacy<vp::vx::Output_Port_Type>::cast(v13) | 0x100000000;
        if ((v31 & 0x100000000) != 0)
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        std::to_string(&v51, v32);
        v33 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
        v34 = v51.__r_.__value_.__r.__words[0];
        std::to_string(&v50, v21);
        v35 = &v51;
        if (v33 < 0)
        {
          v35 = v34;
        }

        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = &v50;
        }

        else
        {
          v36 = v50.__r_.__value_.__r.__words[0];
        }

        *buf = 136316930;
        v56 = v29;
        v57 = 2080;
        v58 = v30;
        v59 = 1024;
        v60 = 43;
        v61 = 1040;
        v62 = 32;
        v63 = 2080;
        v64 = "Ref_Port_Bluetooth_HLC_2ch_State]";
        v65 = 1024;
        v66 = v12;
        v67 = 2080;
        v68 = v35;
        v69 = 2080;
        v70 = v36;
        _os_log_impl(&dword_2724B4000, v27, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u, port type %s is %s", buf, 0x46u);
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        LOBYTE(v25) = v54;
      }

      if ((v25 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }
  }

LABEL_42:
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v37);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v21;
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272736094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    if (a26 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272735EE0);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE43ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE43ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE43ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EE7__cloneEPNS0_6__baseIS1S_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C2F10;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE43ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EED0Ev(void *a1)
{
  *a1 = &unk_2881C2F10;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE43ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EED1Ev(void *a1)
{
  *a1 = &unk_2881C2F10;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)42>(uint64_t a1, __n128 *a2, void *a3)
{
  vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::StringRef>(&v7, a2 + 1, a3);
  vp::vx::data_flow::State<void>::State(&v9, &v7);
  v15 = v9;
  v5 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v5;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<applesauce::CF::StringRef>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x2Au, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v7;
  *(a1 + 8) = v8;
  v8 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v7);
}

void sub_2727363C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, int a15)
{
  vp::vx::data_flow::State<void>::~State(&a15);
  vp::vx::data_flow::State<void>::~State(&a12);
  vp::vx::data_flow::State<void>::~State(&a9);
  _Unwind_Resume(a1);
}

uint64_t _ZZN2vp2vx15Voice_Processor21create_property_stateILNS0_11Property_IDE42ENS0_16Output_Port_TypeEEENS0_9data_flow5StateINS0_18Property_ID_TraitsIXT_EE4TypeEEEPFNS_8ExpectedIS9_iEERKNS_8services14Audio_HardwareEjjERKNS6_IjEERKNS6_IT0_EES9_ENUlT_SM_DpT1_E_D2Ev(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS8_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE42ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISK_iEERKNS2_8services14Audio_HardwareEjjERKNSH_IjEERKNSH_IT0_EESK_EUlT_SX_DpT1_E_JjSG_jjEEEDaOSX_DpRKNSH_IS12_EEEUlDpRKT_E_JjSG_jjEEERNS4_13State_ManagerES11_DpRKNSH_IT0_EEEUlPPKNS4_5ValueEPS1N_E_NS_9allocatorIS1S_EEFvS1Q_S1R_EEclEOS1Q_OS1R_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v74 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id)
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
    vp::vx::data_flow::Value::view_storage(v10);
  }

  v11 = v4[3];
  if (v11[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v11);
  }

  v12 = *v7;
  v13 = *v9;
  v15 = *(a1 + 8);
  v14 = *(a1 + 16);
  if (v14)
  {
    CFRetain(*(a1 + 16));
  }

  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  v18 = vp::vx::legacy_cast<vp::vx::Output_Port_Type>(v13);
  v19 = v17(&__p, v16, v12, v18);
  v20 = v51;
  if (v51)
  {
    goto LABEL_16;
  }

  if (v12)
  {
    v39 = __p;
    log = vp::get_log(v19);
    v19 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      v49 = v39;
      log_context_info = vp::get_log_context_info(&v55, v15, "vp::vx::Voice_Processor]", 23);
      if ((v57 & 0x80u) == 0)
      {
        v42 = v57;
      }

      else
      {
        v42 = v56;
      }

      v43 = vp::get_log(log_context_info);
      v19 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
      if (v19)
      {
        v44 = v57;
        v48 = v55;
        vp::vx::detail::to_string<vp::vx::Output_Port_Type>(&v54, v13);
        v45 = &v55;
        if (v44 < 0)
        {
          v45 = v48;
        }

        v59 = v45;
        v46 = "";
        *buf = 136316930;
        if (v42)
        {
          v46 = " ";
        }

        v60 = 2080;
        v47 = &v54;
        if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v47 = v54.__r_.__value_.__r.__words[0];
        }

        v61 = v46;
        v62 = 1024;
        v63 = 42;
        v64 = 1040;
        v65 = 12;
        v66 = 2080;
        v67 = "Ref_Port_UID]";
        v68 = 1024;
        v69 = v12;
        v70 = 2080;
        v71 = v47;
        v72 = 1024;
        LODWORD(v73) = v49;
        _os_log_impl(&dword_2724B4000, v43, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u, port type %s with status %u", buf, 0x42u);
        if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v54.__r_.__value_.__l.__data_);
        }
      }

      if (v57 < 0)
      {
        operator delete(v55);
      }
    }
  }

  v20 = v51;
  if (v51)
  {
LABEL_16:
    v21 = 0;
    v22 = __p;
    __p = 0;
  }

  else
  {
    v21 = __p;
    v22 = *(a1 + 16);
    if (v22)
    {
      v19 = CFRetain(v22);
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v20)
  {
    caulk::__expected_detail::destroy<applesauce::CF::StringRef,(void *)0>(v21);
  }

  if (v51 == 1)
  {
    caulk::__expected_detail::destroy<applesauce::CF::StringRef,(void *)0>(__p);
  }

  if (v12)
  {
    v23 = vp::get_log(v19);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = vp::get_log_context_info(&v55, v15, "vp::vx::Voice_Processor]", 23);
      v25 = v57;
      v26 = v56;
      v27 = vp::get_log(v24);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        if ((v25 & 0x80u) == 0)
        {
          v28 = v25;
        }

        else
        {
          v28 = v26;
        }

        if ((v57 & 0x80u) == 0)
        {
          v29 = &v55;
        }

        else
        {
          v29 = v55;
        }

        if (v28)
        {
          v30 = " ";
        }

        else
        {
          v30 = "";
        }

        v31 = vp::vx::Legacy<vp::vx::Output_Port_Type>::cast(v13) | 0x100000000;
        if ((v31 & 0x100000000) != 0)
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        std::to_string(&v54, v32);
        if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v54;
        }

        else
        {
          v33 = v54.__r_.__value_.__r.__words[0];
        }

        if (v22)
        {
          v34 = CFCopyDescription(v22);
          v53 = v34;
          applesauce::CF::details::CFString_get_value<true>(&__p, v34);
          if (v34)
          {
            CFRelease(v34);
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "null");
        }

        p_p = &__p;
        if (v52 < 0)
        {
          p_p = __p;
        }

        *buf = 136316930;
        v59 = v29;
        v60 = 2080;
        v61 = v30;
        v62 = 1024;
        v63 = 42;
        v64 = 1040;
        v65 = 12;
        v66 = 2080;
        v67 = "Ref_Port_UID]";
        v68 = 1024;
        v69 = v12;
        v70 = 2080;
        v71 = v33;
        v72 = 2080;
        v73 = p_p;
        _os_log_impl(&dword_2724B4000, v27, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u, port type %s is %s", buf, 0x46u);
        if (v52 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v54.__r_.__value_.__l.__data_);
        }
      }

      if (v57 < 0)
      {
        operator delete(v55);
      }
    }
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v36);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v22;
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272736904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, const void *a13, char a14, uint64_t a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a2)
  {
    if (a28 < 0)
    {
      operator delete(__p);
    }

    if (a14)
    {
      caulk::__expected_detail::destroy<applesauce::CF::StringRef,(void *)0>(a13);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272736740);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS8_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE42ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISK_iEERKNS2_8services14Audio_HardwareEjjERKNSH_IjEERKNSH_IT0_EESK_EUlT_SX_DpT1_E_JjSG_jjEEEDaOSX_DpRKNSH_IS12_EEEUlDpRKT_E_JjSG_jjEEERNS4_13State_ManagerES11_DpRKNSH_IT0_EEEUlPPKNS4_5ValueEPS1N_E_NS_9allocatorIS1S_EEFvS1Q_S1R_EE18destroy_deallocateEv(void *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS8_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE42ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISK_iEERKNS2_8services14Audio_HardwareEjjERKNSH_IjEERKNSH_IT0_EESK_EUlT_SX_DpT1_E_JjSG_jjEEEDaOSX_DpRKNSH_IS12_EEEUlDpRKT_E_JjSG_jjEEERNS4_13State_ManagerES11_DpRKNSH_IT0_EEEUlPPKNS4_5ValueEPS1N_E_NS_9allocatorIS1S_EEFvS1Q_S1R_EE7destroyB8ne200100Ev(a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function12__alloc_funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS8_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE42ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISK_iEERKNS2_8services14Audio_HardwareEjjERKNSH_IjEERKNSH_IT0_EESK_EUlT_SX_DpT1_E_JjSG_jjEEEDaOSX_DpRKNSH_IS12_EEEUlDpRKT_E_JjSG_jjEEERNS4_13State_ManagerES11_DpRKNSH_IT0_EEEUlPPKNS4_5ValueEPS1N_E_NS_9allocatorIS1S_EEFvS1Q_S1R_EE7destroyB8ne200100Ev(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }
}

void *_ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS8_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE42ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISK_iEERKNS2_8services14Audio_HardwareEjjERKNSH_IjEERKNSH_IT0_EESK_EUlT_SX_DpT1_E_JjSG_jjEEEDaOSX_DpRKNSH_IS12_EEEUlDpRKT_E_JjSG_jjEEERNS4_13State_ManagerES11_DpRKNSH_IT0_EEEUlPPKNS4_5ValueEPS1N_E_NS_9allocatorIS1S_EEFvS1Q_S1R_EE7__cloneEPNS0_6__baseIS1V_EE(void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  *a2 = &unk_2881C2EC8;
  *(a2 + 8) = v4;
  if (v5)
  {
    result = CFRetain(v5);
  }

  *(a2 + 16) = v5;
  *(a2 + 24) = *(v3 + 3);
  v6 = v3[5];
  *(a2 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS8_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE42ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISK_iEERKNS2_8services14Audio_HardwareEjjERKNSH_IjEERKNSH_IT0_EESK_EUlT_SX_DpT1_E_JjSG_jjEEEDaOSX_DpRKNSH_IS12_EEEUlDpRKT_E_JjSG_jjEEERNS4_13State_ManagerES11_DpRKNSH_IT0_EEEUlPPKNS4_5ValueEPS1N_E_NS_9allocatorIS1S_EEFvS1Q_S1R_EED0Ev(void *a1)
{
  *a1 = &unk_2881C2EC8;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS8_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE42ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISK_iEERKNS2_8services14Audio_HardwareEjjERKNSH_IjEERKNSH_IT0_EESK_EUlT_SX_DpT1_E_JjSG_jjEEEDaOSX_DpRKNSH_IS12_EEEUlDpRKT_E_JjSG_jjEEERNS4_13State_ManagerES11_DpRKNSH_IT0_EEEUlPPKNS4_5ValueEPS1N_E_NS_9allocatorIS1S_EEFvS1Q_S1R_EED1Ev(void *a1)
{
  *a1 = &unk_2881C2EC8;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)41>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<BOOL>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<BOOL>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x29u, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_272736D3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIbZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE41EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EEclEOS1J_OS1K_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v56 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(*(a1 + 32), v10);
  v14 = v13;
  if ((v13 & 0x100000000) == 0)
  {
    if (v10)
    {
      log = vp::get_log(v13);
      v13 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        log_context_info = vp::get_log_context_info(&v39, v11, "vp::vx::Voice_Processor]", 23);
        v30 = v41;
        v31 = v41;
        v32 = v40;
        v33 = vp::get_log(log_context_info);
        v13 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
        v34 = v31;
        if (v13)
        {
          v35 = v39;
          if (v31 >= 0)
          {
            v36 = v30;
          }

          else
          {
            v36 = v32;
          }

          if (v31 >= 0)
          {
            v35 = &v39;
          }

          *buf = 136316674;
          v43 = v35;
          v37 = "";
          v44 = 2080;
          if (v36)
          {
            v37 = " ";
          }

          v45 = v37;
          v46 = 1024;
          v47 = 41;
          v48 = 1040;
          v49 = 40;
          v50 = 2080;
          v51 = "Ref_Port_Is_Apple_Made_Bluetooth_Product]";
          v52 = 1024;
          v53 = v10;
          v54 = 1024;
          LODWORD(v55) = v14;
          _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u with status %u", buf, 0x38u);
          v34 = v41;
        }

        if (v34 < 0)
        {
          operator delete(v39);
        }
      }
    }

    LOBYTE(v14) = *(a1 + 16);
  }

  v15 = v14 & 1;
  if (v10)
  {
    v16 = vp::get_log(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = vp::get_log_context_info(&v39, v11, "vp::vx::Voice_Processor]", 23);
      v18 = v41;
      if ((v41 & 0x80u) == 0)
      {
        v19 = v41;
      }

      else
      {
        v19 = v40;
      }

      v20 = vp::get_log(v17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v39;
        std::to_string(&__p, v15);
        v22 = &v39;
        if (v18 < 0)
        {
          v22 = v21;
        }

        v43 = v22;
        v23 = " ";
        *buf = 136316674;
        if (!v19)
        {
          v23 = "";
        }

        v44 = 2080;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v45 = v23;
        v46 = 1024;
        v47 = 41;
        v48 = 1040;
        v49 = 40;
        v50 = 2080;
        v51 = "Ref_Port_Is_Apple_Made_Bluetooth_Product]";
        v52 = 1024;
        v53 = v10;
        v54 = 2080;
        v55 = p_p;
        _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u is %s", buf, 0x3Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LOBYTE(v18) = v41;
      }

      if ((v18 & 0x80) != 0)
      {
        operator delete(v39);
      }
    }
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v25);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v15;
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2727370C8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (v3 < 0)
    {
      operator delete(v2);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272736F58);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIbZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE41EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIbZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE41EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIbZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE41EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C2E80;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIbZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE41EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED0Ev(void *a1)
{
  *a1 = &unk_2881C2E80;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIbZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE41EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED1Ev(void *a1)
{
  *a1 = &unk_2881C2E80;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)40>(uint64_t a1, __n128 *a2)
{
  default_resource = std::pmr::get_default_resource(a1);
  v17 = 0;
  v18 = &vp::vx::data_flow::Value::type_id<vp::vx::Port_Endpoint_Type>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(&default_resource) = 0;
  vp::vx::data_flow::State_Manager::create_state(&v12, a2 + 4, &default_resource);
  v4 = v12;
  v10 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::Value::~Value(&default_resource);
  v8 = v4;
  v9 = v7;
  v11 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v10);
  vp::vx::data_flow::State<void>::State(&v10, &v8);
  LODWORD(default_resource) = v10;
  v5 = v11;
  v11 = 0uLL;
  v12 = v10;
  v13 = v5;
  v17 = 0;
  v18 = 0;
  v14 = 1;
  v15 = &vp::vx::Voice_Processor::Type_Converter<vp::vx::Port_Endpoint_Type>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x28u, &v12);
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::State<void>::~State(&v10);
  *a1 = v8;
  *(a1 + 8) = v9;
  v9 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v8);
}

void sub_272737400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::vx::Port_Endpoint_Type>::convert_to_string(uint64_t a1, int *a2, void *a3)
{
  v4 = *a2;
  v5[0] = 5;
  v6 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::operator<<(a3);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::vx::Port_Endpoint_Type>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Port_Endpoint_Type>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Port_Endpoint_Type>::convert_to_plist(uint64_t a1, int *a2, const void **a3)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Port_Endpoint_Type>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<vp::vx::Port_Endpoint_Type>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Port_Endpoint_Type>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Property_List_Type_Converter<vp::vx::Port_Endpoint_Type>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Port_Endpoint_Type>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Port_Endpoint_Type>::convert_to_blob(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = vp::vx::Legacy<vp::vx::Port_Endpoint_Type>::cast(*a2);

  return vp::Blob_Setter<vp::Mutable_Blob>::set<unsigned int>(a3 + 2, v4);
}

void sub_272737958(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
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

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Port_Endpoint_Type>::convert_from_blob(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v4 = vp::Blob_Getter<vp::Blob>::get<unsigned int>(a3 + 1);
  result = vp::vx::Legacy<vp::vx::Port_Endpoint_Type>::cast(v4);
  *a2 = result;
  return result;
}

void sub_2727379E4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
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

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Port_Endpoint_Type>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Port_Endpoint_Type>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Port_Endpoint_Type>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Port_Endpoint_Type>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Blob_Type_Converter<vp::vx::Port_Endpoint_Type>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Port_Endpoint_Type>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_18Port_Endpoint_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE40ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EEclEOS1O_OS1P_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v70 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id)
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
    vp::vx::data_flow::Value::view_storage(v10);
  }

  v11 = v4[3];
  if (v11[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v11);
  }

  v12 = *v7;
  v13 = *v9;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  v18 = vp::vx::legacy_cast<vp::vx::Output_Port_Type>(v13);
  v19 = v17(v16, v12, v18);
  v20 = v19;
  if ((v19 & 0x100000000) != 0)
  {
    v21 = v19;
    if (!v12)
    {
      goto LABEL_45;
    }

    goto LABEL_16;
  }

  if (v12)
  {
    log = vp::get_log(v19);
    v19 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      log_context_info = vp::get_log_context_info(&__p, v14, "vp::vx::Voice_Processor]", 23);
      v41 = v53;
      v42 = v53;
      if ((v53 & 0x80u) != 0)
      {
        v41 = v52;
      }

      v48 = v41;
      v43 = vp::get_log(log_context_info);
      v19 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
      if (v19)
      {
        v47 = __p;
        vp::vx::detail::to_string<vp::vx::Output_Port_Type>(&v50, v13);
        p_p = &__p;
        if (v42 < 0)
        {
          p_p = v47;
        }

        v55 = p_p;
        v45 = "";
        *buf = 136316930;
        if (v48)
        {
          v45 = " ";
        }

        v56 = 2080;
        v46 = &v50;
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v46 = v50.__r_.__value_.__r.__words[0];
        }

        v57 = v45;
        v58 = 1024;
        v59 = 40;
        v60 = 1040;
        v61 = 22;
        v62 = 2080;
        v63 = "Ref_Port_Endpoint_Type]";
        v64 = 1024;
        v65 = v12;
        v66 = 2080;
        v67 = v46;
        v68 = 1024;
        LODWORD(v69) = v20;
        _os_log_impl(&dword_2724B4000, v43, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u, port type %s with status %u", buf, 0x42u);
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        LOBYTE(v42) = v53;
      }

      if ((v42 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }
  }

  v21 = *(a1 + 16);
  if (v12)
  {
LABEL_16:
    v22 = vp::get_log(v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = vp::get_log_context_info(&__p, v14, "vp::vx::Voice_Processor]", 23);
      v24 = v53;
      v25 = v52;
      v26 = vp::get_log(v23);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if ((v24 & 0x80u) == 0)
        {
          v27 = v24;
        }

        else
        {
          v27 = v25;
        }

        if ((v53 & 0x80u) == 0)
        {
          v28 = &__p;
        }

        else
        {
          v28 = __p;
        }

        if (v27)
        {
          v29 = " ";
        }

        else
        {
          v29 = "";
        }

        v30 = vp::vx::Legacy<vp::vx::Output_Port_Type>::cast(v13) | 0x100000000;
        if ((v30 & 0x100000000) != 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = 0;
        }

        std::to_string(&v50, v31);
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v50;
        }

        else
        {
          v32 = v50.__r_.__value_.__r.__words[0];
        }

        v33 = vp::vx::Legacy<vp::vx::Port_Endpoint_Type>::cast(v21) | 0x100000000;
        if ((v33 & 0x100000000) != 0)
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        std::to_string(&v49, v34);
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v49;
        }

        else
        {
          v35 = v49.__r_.__value_.__r.__words[0];
        }

        *buf = 136316930;
        v55 = v28;
        v56 = 2080;
        v57 = v29;
        v58 = 1024;
        v59 = 40;
        v60 = 1040;
        v61 = 22;
        v62 = 2080;
        v63 = "Ref_Port_Endpoint_Type]";
        v64 = 1024;
        v65 = v12;
        v66 = 2080;
        v67 = v32;
        v68 = 2080;
        v69 = v35;
        _os_log_impl(&dword_2724B4000, v26, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u, port type %s is %s", buf, 0x46u);
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }
      }

      if (v53 < 0)
      {
        operator delete(__p);
      }
    }
  }

LABEL_45:
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v36);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Port_Endpoint_Type>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v21;
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272738218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    if (a26 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272738064);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_18Port_Endpoint_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE40ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_18Port_Endpoint_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE40ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_18Port_Endpoint_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE40ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EE7__cloneEPNS0_6__baseIS1T_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C2E38;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_18Port_Endpoint_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE40ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EED0Ev(void *a1)
{
  *a1 = &unk_2881C2E38;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_18Port_Endpoint_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE40ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EED1Ev(void *a1)
{
  *a1 = &unk_2881C2E38;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZZZN2vp2vx15Voice_Processor22create_property_statesEvENK3__0clEvENUlDpT_E1_8__invokeIJRKNS_8services14Audio_HardwareEjjEEENS_8ExpectedINS0_18Port_Endpoint_TypeEiEES4_(uint64_t a1, uint64_t a2, int a3)
{
  port_id = vp::vx::get_port_id(a1, a2, 1735159650, a3);
  v5 = port_id;
  v10 = port_id;
  v11 = BYTE4(port_id);
  if ((port_id & 0x100000000) != 0)
  {
    caulk::expected<unsigned int,int>::value(&v10);
    v12 = 0x6F75747070657074;
    v13 = 0;
    if ((*(*a1 + 16))(a1, v5, &v12))
    {
      v15 = 0;
      v14 = 4;
      v7 = (*(*a1 + 24))(a1, v5, &v12, 0, 0, &v14, &v15);
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v15;
      }

      v6 = v8 | ((v7 == 0) << 32);
    }

    else
    {
      v6 = 0x100000000;
    }

    v12 = v6;
    LOBYTE(v13) = 1;
    caulk::expected<CA::AudioSampleRateConverter,int>::value(&v12);
  }

  else
  {
    v6 = port_id;
  }

  LODWORD(v12) = v6;
  BYTE4(v12) = BYTE4(v6);
  if ((v6 & 0x100000000) == 0)
  {
    return v6;
  }

  caulk::expected<unsigned int,int>::value(&v12);
  return vp::vx::Legacy<vp::vx::Port_Endpoint_Type>::cast(v6) | 0x100000000;
}

void sub_272738624(int a1)
{
  if (a1)
  {
    __cxa_end_catch();
  }

  else
  {
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x2727385FCLL);
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)39>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<vp::vx::Port_Sub_Type>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<vp::vx::Port_Sub_Type>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x27u, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_27273870C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::vx::Port_Sub_Type>::convert_to_string(uint64_t a1, int *a2, void *a3)
{
  v4 = *a2;
  v5[0] = 5;
  v6 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::operator<<(a3);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::vx::Port_Sub_Type>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Port_Sub_Type>::convert_to_plist(uint64_t a1, int *a2, const void **a3)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Port_Sub_Type>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<vp::vx::Port_Sub_Type>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Property_List_Type_Converter<vp::vx::Port_Sub_Type>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Port_Sub_Type>::convert_to_blob(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = vp::vx::Legacy<vp::vx::Port_Sub_Type>::cast(*a2);

  return vp::Blob_Setter<vp::Mutable_Blob>::set<unsigned int>(a3 + 2, v4);
}

void sub_272738C60(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
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

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Port_Sub_Type>::convert_from_blob(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v4 = vp::Blob_Getter<vp::Blob>::get<unsigned int>(a3 + 1);
  result = vp::vx::Legacy<vp::vx::Port_Sub_Type>::cast(v4);
  *a2 = result;
  return result;
}

void sub_272738CEC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
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

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Port_Sub_Type>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Port_Sub_Type>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Blob_Type_Converter<vp::vx::Port_Sub_Type>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_13Port_Sub_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE39ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EEclEOS1O_OS1P_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v70 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id)
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
    vp::vx::data_flow::Value::view_storage(v10);
  }

  v11 = v4[3];
  if (v11[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v11);
  }

  v12 = *v7;
  v13 = *v9;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  v18 = vp::vx::legacy_cast<vp::vx::Output_Port_Type>(v13);
  v19 = v17(v16, v12, v18);
  v20 = v19;
  if ((v19 & 0x100000000) != 0)
  {
    v21 = v19;
    if (!v12)
    {
      goto LABEL_45;
    }

    goto LABEL_16;
  }

  if (v12)
  {
    log = vp::get_log(v19);
    v19 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      log_context_info = vp::get_log_context_info(&__p, v14, "vp::vx::Voice_Processor]", 23);
      v41 = v53;
      v42 = v53;
      if ((v53 & 0x80u) != 0)
      {
        v41 = v52;
      }

      v48 = v41;
      v43 = vp::get_log(log_context_info);
      v19 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
      if (v19)
      {
        v47 = __p;
        vp::vx::detail::to_string<vp::vx::Output_Port_Type>(&v50, v13);
        p_p = &__p;
        if (v42 < 0)
        {
          p_p = v47;
        }

        v55 = p_p;
        v45 = "";
        *buf = 136316930;
        if (v48)
        {
          v45 = " ";
        }

        v56 = 2080;
        v46 = &v50;
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v46 = v50.__r_.__value_.__r.__words[0];
        }

        v57 = v45;
        v58 = 1024;
        v59 = 39;
        v60 = 1040;
        v61 = 17;
        v62 = 2080;
        v63 = "Ref_Port_Sub_Type]";
        v64 = 1024;
        v65 = v12;
        v66 = 2080;
        v67 = v46;
        v68 = 1024;
        LODWORD(v69) = v20;
        _os_log_impl(&dword_2724B4000, v43, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u, port type %s with status %u", buf, 0x42u);
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        LOBYTE(v42) = v53;
      }

      if ((v42 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }
  }

  v21 = *(a1 + 16);
  if (v12)
  {
LABEL_16:
    v22 = vp::get_log(v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = vp::get_log_context_info(&__p, v14, "vp::vx::Voice_Processor]", 23);
      v24 = v53;
      v25 = v52;
      v26 = vp::get_log(v23);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if ((v24 & 0x80u) == 0)
        {
          v27 = v24;
        }

        else
        {
          v27 = v25;
        }

        if ((v53 & 0x80u) == 0)
        {
          v28 = &__p;
        }

        else
        {
          v28 = __p;
        }

        if (v27)
        {
          v29 = " ";
        }

        else
        {
          v29 = "";
        }

        v30 = vp::vx::Legacy<vp::vx::Output_Port_Type>::cast(v13) | 0x100000000;
        if ((v30 & 0x100000000) != 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = 0;
        }

        std::to_string(&v50, v31);
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v50;
        }

        else
        {
          v32 = v50.__r_.__value_.__r.__words[0];
        }

        v33 = vp::vx::Legacy<vp::vx::Port_Sub_Type>::cast(v21) | 0x100000000;
        if ((v33 & 0x100000000) != 0)
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        std::to_string(&v49, v34);
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v49;
        }

        else
        {
          v35 = v49.__r_.__value_.__r.__words[0];
        }

        *buf = 136316930;
        v55 = v28;
        v56 = 2080;
        v57 = v29;
        v58 = 1024;
        v59 = 39;
        v60 = 1040;
        v61 = 17;
        v62 = 2080;
        v63 = "Ref_Port_Sub_Type]";
        v64 = 1024;
        v65 = v12;
        v66 = 2080;
        v67 = v32;
        v68 = 2080;
        v69 = v35;
        _os_log_impl(&dword_2724B4000, v26, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u, port type %s is %s", buf, 0x46u);
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }
      }

      if (v53 < 0)
      {
        operator delete(__p);
      }
    }
  }

LABEL_45:
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v36);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v21;
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272739520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    if (a26 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x27273936CLL);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_13Port_Sub_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE39ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_13Port_Sub_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE39ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_13Port_Sub_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE39ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EE7__cloneEPNS0_6__baseIS1T_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C2CC0;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_13Port_Sub_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE39ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EED0Ev(void *a1)
{
  *a1 = &unk_2881C2CC0;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_13Port_Sub_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE39ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EED1Ev(void *a1)
{
  *a1 = &unk_2881C2CC0;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor_State_Manager::create_state<vp::vx::Port_Sub_Type>(uint64_t a1, __n128 *a2, _DWORD *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v11) = *a3;
  vp::vx::data_flow::State_Manager::create_state(&v12, a2 + 3, v11);
  LODWORD(a2) = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::Value::~Value(v11);
  *a1 = a2;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  return vp::vx::data_flow::State<void>::~State(&v8);
}

uint64_t _ZZZN2vp2vx15Voice_Processor22create_property_statesEvENK3__0clEvENUlDpT_E0_8__invokeIJRKNS_8services14Audio_HardwareEjjEEENS_8ExpectedINS0_13Port_Sub_TypeEiEES4_(uint64_t a1, uint64_t a2, int a3)
{
  port_id = vp::vx::get_port_id(a1, a2, 1735159650, a3);
  v5 = port_id;
  v11 = port_id;
  v12 = BYTE4(port_id);
  if ((port_id & 0x100000000) != 0)
  {
    caulk::expected<unsigned int,int>::value(&v11);
    v13 = 0x6F75747070737562;
    v14 = 0;
    if ((*(*a1 + 16))(a1, v5, &v13))
    {
      v16 = 0;
      v15 = 4;
      v7 = (*(*a1 + 24))(a1, v5, &v13, 0, 0, &v15, &v16);
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v16;
      }

      v6 = v8 | ((v7 == 0) << 32);
    }

    else
    {
      v6 = 0x100000000;
    }

    v13 = v6;
    LOBYTE(v14) = 1;
    caulk::expected<CA::AudioSampleRateConverter,int>::value(&v13);
  }

  else
  {
    v6 = port_id;
  }

  LODWORD(v13) = v6;
  BYTE4(v13) = BYTE4(v6);
  if ((v6 & 0x100000000) == 0)
  {
    return v6;
  }

  caulk::expected<unsigned int,int>::value(&v13);
  v10 = vp::vx::legacy_cast_noexcept<vp::vx::Port_Sub_Type>(v6);
  if (HIDWORD(v10))
  {
    return v10 | 0x100000000;
  }

  else
  {
    return 0x100000000;
  }
}

void sub_2727399F8(int a1)
{
  if (a1)
  {
    __cxa_end_catch();
  }

  else
  {
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x2727399E8);
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)28>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x1Cu, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_272739ADC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE28EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EEclEOS1J_OS1K_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v54 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(*(a1 + 32), v10);
  v14 = v13;
  if ((v13 & 0x100000000) == 0)
  {
    if (v10)
    {
      log = vp::get_log(v13);
      v13 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        log_context_info = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
        v29 = v39;
        v30 = v39;
        v31 = v38;
        v32 = vp::get_log(log_context_info);
        v13 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          v33 = v37;
          if (v30 >= 0)
          {
            v34 = v29;
          }

          else
          {
            v34 = v31;
          }

          if (v30 >= 0)
          {
            v33 = &v37;
          }

          *buf = 136316674;
          v41 = v33;
          v35 = "";
          v42 = 2080;
          if (v34)
          {
            v35 = " ";
          }

          v43 = v35;
          v44 = 1024;
          v45 = 28;
          v46 = 1040;
          v47 = 22;
          v48 = 2080;
          v49 = "Ref_Physical_Device_ID]";
          v50 = 1024;
          v51 = v10;
          v52 = 1024;
          LODWORD(v53) = v14;
          _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u with status %u", buf, 0x38u);
          LOBYTE(v30) = v39;
        }

        if ((v30 & 0x80) != 0)
        {
          operator delete(v37);
        }
      }
    }

    v14 = *(a1 + 16);
  }

  if (v10)
  {
    v15 = vp::get_log(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
      v17 = v39;
      if ((v39 & 0x80u) == 0)
      {
        v18 = v39;
      }

      else
      {
        v18 = v38;
      }

      v19 = vp::get_log(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v37;
        std::to_string(&__p, v14);
        v21 = &v37;
        if (v17 < 0)
        {
          v21 = v20;
        }

        v41 = v21;
        v22 = " ";
        *buf = 136316674;
        if (!v18)
        {
          v22 = "";
        }

        v42 = 2080;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v43 = v22;
        v44 = 1024;
        v45 = 28;
        v46 = 1040;
        v47 = 22;
        v48 = 2080;
        v49 = "Ref_Physical_Device_ID]";
        v50 = 1024;
        v51 = v10;
        v52 = 2080;
        v53 = p_p;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u is %s", buf, 0x3Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LOBYTE(v17) = v39;
      }

      if ((v17 & 0x80) != 0)
      {
        operator delete(v37);
      }
    }
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v24);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v14;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272739E60(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (v3 < 0)
    {
      operator delete(v2);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272739CF4);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE28EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE28EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE28EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C2C78;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE28EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED0Ev(void *a1)
{
  *a1 = &unk_2881C2C78;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE28EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED1Ev(void *a1)
{
  *a1 = &unk_2881C2C78;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::vx::Output_Port_Type>::convert_to_string(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *a2;
  v5[0] = 5;
  v6 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::operator<<(a3);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::vx::Output_Port_Type>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Output_Port_Type>::convert_to_plist(uint64_t a1, int *a2, const void **a3)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Output_Port_Type>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<vp::vx::Output_Port_Type>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Property_List_Type_Converter<vp::vx::Output_Port_Type>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Output_Port_Type>::convert_to_blob(int a1, _DWORD *a2, vp::Mutable_Blob *this)
{
  if (*(this + 1) <= 3uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  **this = *a2;

  return vp::Mutable_Blob::set_size(this, 4uLL);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Output_Port_Type>::convert_from_blob(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*(a3 + 8) != 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
  }

  *a2 = **a3;
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Output_Port_Type>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Output_Port_Type>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Blob_Type_Converter<vp::vx::Output_Port_Type>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

float *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIfZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE73EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EEclEOS1J_OS1K_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v56 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(*(a1 + 32), v10);
  v14 = v13;
  if ((v13 & 0x100000000) != 0)
  {
    v15 = *&v13;
    if (!v10)
    {
      goto LABEL_30;
    }

    goto LABEL_13;
  }

  if (v10)
  {
    log = vp::get_log(v13);
    v13 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      log_context_info = vp::get_log_context_info(&v39, v11, "vp::vx::Voice_Processor]", 23);
      v30 = v41;
      v31 = v41;
      v32 = v40;
      v33 = vp::get_log(log_context_info);
      v13 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
      v34 = v31;
      if (v13)
      {
        v35 = v39;
        if (v31 >= 0)
        {
          v36 = v30;
        }

        else
        {
          v36 = v32;
        }

        if (v31 >= 0)
        {
          v35 = &v39;
        }

        *buf = 136316674;
        v43 = v35;
        v37 = "";
        v44 = 2080;
        if (v36)
        {
          v37 = " ";
        }

        v45 = v37;
        v46 = 1024;
        v47 = 73;
        v48 = 1040;
        v49 = 14;
        v50 = 2080;
        v51 = "IO_Cycle_Usage]";
        v52 = 1024;
        v53 = v10;
        v54 = 1024;
        LODWORD(v55) = v14;
        _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u with status %u", buf, 0x38u);
        v34 = v41;
      }

      if (v34 < 0)
      {
        operator delete(v39);
      }
    }
  }

  v15 = *(a1 + 16);
  if (v10)
  {
LABEL_13:
    v16 = vp::get_log(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = vp::get_log_context_info(&v39, v11, "vp::vx::Voice_Processor]", 23);
      v18 = v41;
      if ((v41 & 0x80u) == 0)
      {
        v19 = v41;
      }

      else
      {
        v19 = v40;
      }

      v20 = vp::get_log(v17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v39;
        std::to_string(&__p, v15);
        v22 = &v39;
        if (v18 < 0)
        {
          v22 = v21;
        }

        v43 = v22;
        v23 = " ";
        *buf = 136316674;
        if (!v19)
        {
          v23 = "";
        }

        v44 = 2080;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v45 = v23;
        v46 = 1024;
        v47 = 73;
        v48 = 1040;
        v49 = 14;
        v50 = 2080;
        v51 = "IO_Cycle_Usage]";
        v52 = 1024;
        v53 = v10;
        v54 = 2080;
        v55 = p_p;
        _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u is %s", buf, 0x3Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LOBYTE(v18) = v41;
      }

      if ((v18 & 0x80) != 0)
      {
        operator delete(v39);
      }
    }
  }

LABEL_30:
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v25);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v15;
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27273AD10(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (v3 < 0)
    {
      operator delete(v2);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x27273AB9CLL);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIfZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE73EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIfZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE73EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIfZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE73EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C2770;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIfZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE73EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED0Ev(void *a1)
{
  *a1 = &unk_2881C2770;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIfZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE73EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED1Ev(void *a1)
{
  *a1 = &unk_2881C2770;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)16>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<vp::vx::Port_Sub_Type>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<vp::vx::Port_Sub_Type>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0x10u, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_27273AFE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_13Port_Sub_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE16ENS3_15Input_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EEclEOS1O_OS1P_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v70 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Input_Port_Type>(void)::s_type_id)
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
    vp::vx::data_flow::Value::view_storage(v10);
  }

  v11 = v4[3];
  if (v11[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v11);
  }

  v12 = *v7;
  v13 = *v9;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  v18 = vp::vx::Legacy<vp::vx::Input_Port_Type>::cast(v13);
  v19 = v17(v16, v12, v18);
  v20 = v19;
  if ((v19 & 0x100000000) != 0)
  {
    v21 = v19;
    if (!v12)
    {
      goto LABEL_45;
    }

    goto LABEL_16;
  }

  if (v12)
  {
    log = vp::get_log(v19);
    v19 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      log_context_info = vp::get_log_context_info(&__p, v14, "vp::vx::Voice_Processor]", 23);
      v41 = v53;
      v42 = v53;
      if ((v53 & 0x80u) != 0)
      {
        v41 = v52;
      }

      v48 = v41;
      v43 = vp::get_log(log_context_info);
      v19 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
      if (v19)
      {
        v47 = __p;
        vp::vx::detail::to_string<vp::vx::Input_Port_Type>(&v50, v13);
        p_p = &__p;
        if (v42 < 0)
        {
          p_p = v47;
        }

        v55 = p_p;
        v45 = "";
        *buf = 136316930;
        if (v48)
        {
          v45 = " ";
        }

        v56 = 2080;
        v46 = &v50;
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v46 = v50.__r_.__value_.__r.__words[0];
        }

        v57 = v45;
        v58 = 1024;
        v59 = 16;
        v60 = 1040;
        v61 = 17;
        v62 = 2080;
        v63 = "Mic_Port_Sub_Type]";
        v64 = 1024;
        v65 = v12;
        v66 = 2080;
        v67 = v46;
        v68 = 1024;
        LODWORD(v69) = v20;
        _os_log_impl(&dword_2724B4000, v43, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u, port type %s with status %u", buf, 0x42u);
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        LOBYTE(v42) = v53;
      }

      if ((v42 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }
  }

  v21 = *(a1 + 16);
  if (v12)
  {
LABEL_16:
    v22 = vp::get_log(v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = vp::get_log_context_info(&__p, v14, "vp::vx::Voice_Processor]", 23);
      v24 = v53;
      v25 = v52;
      v26 = vp::get_log(v23);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if ((v24 & 0x80u) == 0)
        {
          v27 = v24;
        }

        else
        {
          v27 = v25;
        }

        if ((v53 & 0x80u) == 0)
        {
          v28 = &__p;
        }

        else
        {
          v28 = __p;
        }

        if (v27)
        {
          v29 = " ";
        }

        else
        {
          v29 = "";
        }

        v30 = vp::vx::Legacy<vp::vx::Input_Port_Type>::cast(v13) | 0x100000000;
        if ((v30 & 0x100000000) != 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = 0;
        }

        std::to_string(&v50, v31);
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v50;
        }

        else
        {
          v32 = v50.__r_.__value_.__r.__words[0];
        }

        v33 = vp::vx::Legacy<vp::vx::Port_Sub_Type>::cast(v21) | 0x100000000;
        if ((v33 & 0x100000000) != 0)
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        std::to_string(&v49, v34);
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v49;
        }

        else
        {
          v35 = v49.__r_.__value_.__r.__words[0];
        }

        *buf = 136316930;
        v55 = v28;
        v56 = 2080;
        v57 = v29;
        v58 = 1024;
        v59 = 16;
        v60 = 1040;
        v61 = 17;
        v62 = 2080;
        v63 = "Mic_Port_Sub_Type]";
        v64 = 1024;
        v65 = v12;
        v66 = 2080;
        v67 = v32;
        v68 = 2080;
        v69 = v35;
        _os_log_impl(&dword_2724B4000, v26, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u, port type %s is %s", buf, 0x46u);
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }
      }

      if (v53 < 0)
      {
        operator delete(__p);
      }
    }
  }

LABEL_45:
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v36);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v21;
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27273B460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::exception_ptr a27)
{
  if (a2)
  {
    if (a26 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x27273B2ACLL);
  }

  _Unwind_Resume(a1);
}

void sub_27273B58C(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x27273B520);
}

std::string *vp::vx::detail::to_string<vp::vx::Input_Port_Type>(std::string *a1, int a2)
{
  v3 = vp::vx::Legacy<vp::vx::Input_Port_Type>::cast(a2) | 0x100000000;
  if ((v3 & 0x100000000) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return std::to_string(a1, v4);
}

void sub_27273B5F4(int a1)
{
  if (a1)
  {
    __cxa_end_catch();
  }

  else
  {
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x27273B5C4);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_13Port_Sub_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE16ENS3_15Input_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_13Port_Sub_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE16ENS3_15Input_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_13Port_Sub_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE16ENS3_15Input_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EE7__cloneEPNS0_6__baseIS1T_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C25F8;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_13Port_Sub_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE16ENS3_15Input_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EED0Ev(void *a1)
{
  *a1 = &unk_2881C25F8;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_13Port_Sub_TypeEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE16ENS3_15Input_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISI_iEERKNS2_8services14Audio_HardwareEjjERKNSF_IjEERKNSF_IT0_EESI_EUlT_SV_DpT1_E_JjSE_jjEEEDaOSV_DpRKNSF_IS10_EEEUlDpRKT_E_JjSE_jjEEERNS4_13State_ManagerESZ_DpRKNSF_IT0_EEEUlPPKNS4_5ValueEPS1L_E_NS_9allocatorIS1Q_EEFvS1O_S1P_EED1Ev(void *a1)
{
  *a1 = &unk_2881C25F8;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZZZN2vp2vx15Voice_Processor22create_property_statesEvENK3__0clEvENUlDpT_E_8__invokeIJRKNS_8services14Audio_HardwareEjjEEENS_8ExpectedINS0_13Port_Sub_TypeEiEES4_(uint64_t a1, uint64_t a2, int a3)
{
  port_id = vp::vx::get_port_id(a1, a2, 1735159650, a3);
  v5 = port_id;
  v11 = port_id;
  v12 = BYTE4(port_id);
  if ((port_id & 0x100000000) != 0)
  {
    caulk::expected<unsigned int,int>::value(&v11);
    v13 = 0x696E707470737562;
    v14 = 0;
    if ((*(*a1 + 16))(a1, v5, &v13))
    {
      v16 = 0;
      v15 = 4;
      v7 = (*(*a1 + 24))(a1, v5, &v13, 0, 0, &v15, &v16);
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v16;
      }

      v6 = v8 | ((v7 == 0) << 32);
    }

    else
    {
      v6 = 0x100000000;
    }

    v13 = v6;
    LOBYTE(v14) = 1;
    caulk::expected<CA::AudioSampleRateConverter,int>::value(&v13);
  }

  else
  {
    v6 = port_id;
  }

  LODWORD(v13) = v6;
  BYTE4(v13) = BYTE4(v6);
  if ((v6 & 0x100000000) == 0)
  {
    return v6;
  }

  caulk::expected<unsigned int,int>::value(&v13);
  v10 = vp::vx::legacy_cast_noexcept<vp::vx::Port_Sub_Type>(v6);
  if (HIDWORD(v10))
  {
    return v10 | 0x100000000;
  }

  else
  {
    return 0x100000000;
  }
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)15>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0xFu, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_27273BA00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE15EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EEclEOS1J_OS1K_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v54 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(*(a1 + 32), v10);
  v14 = v13;
  if ((v13 & 0x100000000) == 0)
  {
    if (v10)
    {
      log = vp::get_log(v13);
      v13 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        log_context_info = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
        v29 = v39;
        v30 = v39;
        v31 = v38;
        v32 = vp::get_log(log_context_info);
        v13 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          v33 = v37;
          if (v30 >= 0)
          {
            v34 = v29;
          }

          else
          {
            v34 = v31;
          }

          if (v30 >= 0)
          {
            v33 = &v37;
          }

          *buf = 136316674;
          v41 = v33;
          v35 = "";
          v42 = 2080;
          if (v34)
          {
            v35 = " ";
          }

          v43 = v35;
          v44 = 1024;
          v45 = 15;
          v46 = 1040;
          v47 = 32;
          v48 = 2080;
          v49 = "Mic_Hardware_Input_Safety_Offset]";
          v50 = 1024;
          v51 = v10;
          v52 = 1024;
          LODWORD(v53) = v14;
          _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u with status %u", buf, 0x38u);
          LOBYTE(v30) = v39;
        }

        if ((v30 & 0x80) != 0)
        {
          operator delete(v37);
        }
      }
    }

    v14 = *(a1 + 16);
  }

  if (v10)
  {
    v15 = vp::get_log(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
      v17 = v39;
      if ((v39 & 0x80u) == 0)
      {
        v18 = v39;
      }

      else
      {
        v18 = v38;
      }

      v19 = vp::get_log(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v37;
        std::to_string(&__p, v14);
        v21 = &v37;
        if (v17 < 0)
        {
          v21 = v20;
        }

        v41 = v21;
        v22 = " ";
        *buf = 136316674;
        if (!v18)
        {
          v22 = "";
        }

        v42 = 2080;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v43 = v22;
        v44 = 1024;
        v45 = 15;
        v46 = 1040;
        v47 = 32;
        v48 = 2080;
        v49 = "Mic_Hardware_Input_Safety_Offset]";
        v50 = 1024;
        v51 = v10;
        v52 = 2080;
        v53 = p_p;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u is %s", buf, 0x3Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LOBYTE(v17) = v39;
      }

      if ((v17 & 0x80) != 0)
      {
        operator delete(v37);
      }
    }
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v24);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v14;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27273BD84(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (v3 < 0)
    {
      operator delete(v2);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x27273BC18);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE15EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE15EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE15EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C2480;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE15EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED0Ev(void *a1)
{
  *a1 = &unk_2881C2480;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE15EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED1Ev(void *a1)
{
  *a1 = &unk_2881C2480;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)14>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0xEu, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_27273C058(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE14EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EEclEOS1J_OS1K_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v54 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(*(a1 + 32), v10);
  v14 = v13;
  if ((v13 & 0x100000000) == 0)
  {
    if (v10)
    {
      log = vp::get_log(v13);
      v13 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        log_context_info = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
        v29 = v39;
        v30 = v39;
        v31 = v38;
        v32 = vp::get_log(log_context_info);
        v13 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          v33 = v37;
          if (v30 >= 0)
          {
            v34 = v29;
          }

          else
          {
            v34 = v31;
          }

          if (v30 >= 0)
          {
            v33 = &v37;
          }

          *buf = 136316674;
          v41 = v33;
          v35 = "";
          v42 = 2080;
          if (v34)
          {
            v35 = " ";
          }

          v43 = v35;
          v44 = 1024;
          v45 = 14;
          v46 = 1040;
          v47 = 26;
          v48 = 2080;
          v49 = "Mic_Hardware_Input_Latency]";
          v50 = 1024;
          v51 = v10;
          v52 = 1024;
          LODWORD(v53) = v14;
          _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u with status %u", buf, 0x38u);
          LOBYTE(v30) = v39;
        }

        if ((v30 & 0x80) != 0)
        {
          operator delete(v37);
        }
      }
    }

    v14 = *(a1 + 16);
  }

  if (v10)
  {
    v15 = vp::get_log(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
      v17 = v39;
      if ((v39 & 0x80u) == 0)
      {
        v18 = v39;
      }

      else
      {
        v18 = v38;
      }

      v19 = vp::get_log(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v37;
        std::to_string(&__p, v14);
        v21 = &v37;
        if (v17 < 0)
        {
          v21 = v20;
        }

        v41 = v21;
        v22 = " ";
        *buf = 136316674;
        if (!v18)
        {
          v22 = "";
        }

        v42 = 2080;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v43 = v22;
        v44 = 1024;
        v45 = 14;
        v46 = 1040;
        v47 = 26;
        v48 = 2080;
        v49 = "Mic_Hardware_Input_Latency]";
        v50 = 1024;
        v51 = v10;
        v52 = 2080;
        v53 = p_p;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u is %s", buf, 0x3Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LOBYTE(v17) = v39;
      }

      if ((v17 & 0x80) != 0)
      {
        operator delete(v37);
      }
    }
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v24);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v14;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27273C3DC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (v3 < 0)
    {
      operator delete(v2);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x27273C270);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE14EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE14EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE14EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C2438;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE14EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED0Ev(void *a1)
{
  *a1 = &unk_2881C2438;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE14EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED1Ev(void *a1)
{
  *a1 = &unk_2881C2438;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)13>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<double>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<double>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0xDu, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_27273C6B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

double *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE13EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EEclEOS1J_OS1K_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v57 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = COERCE_DOUBLE((*(a1 + 24))(*(a1 + 32), v10));
  v14 = LODWORD(v13);
  if (v15)
  {
    v16 = v13;
    if (!v10)
    {
      goto LABEL_30;
    }

    goto LABEL_13;
  }

  if (v10)
  {
    log = vp::get_log(*&v13);
    *&v13 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (LODWORD(v13))
    {
      log_context_info = vp::get_log_context_info(&v40, v11, "vp::vx::Voice_Processor]", 23);
      v31 = v42;
      v32 = v42;
      v33 = v41;
      v34 = vp::get_log(log_context_info);
      *&v13 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
      v35 = v32;
      if (LODWORD(v13))
      {
        v36 = v40;
        if (v32 >= 0)
        {
          v37 = v31;
        }

        else
        {
          v37 = v33;
        }

        if (v32 >= 0)
        {
          v36 = &v40;
        }

        *buf = 136316674;
        v44 = v36;
        v38 = "";
        v45 = 2080;
        if (v37)
        {
          v38 = " ";
        }

        v46 = v38;
        v47 = 1024;
        v48 = 13;
        v49 = 1040;
        v50 = 33;
        v51 = 2080;
        v52 = "Mic_Hardware_Physical_Sample_Rate]";
        v53 = 1024;
        v54 = v10;
        v55 = 1024;
        LODWORD(v56) = v14;
        _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u with status %u", buf, 0x38u);
        v35 = v42;
      }

      if (v35 < 0)
      {
        operator delete(v40);
      }
    }
  }

  v16 = *(a1 + 16);
  if (v10)
  {
LABEL_13:
    v17 = vp::get_log(*&v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = vp::get_log_context_info(&v40, v11, "vp::vx::Voice_Processor]", 23);
      v19 = v42;
      if ((v42 & 0x80u) == 0)
      {
        v20 = v42;
      }

      else
      {
        v20 = v41;
      }

      v21 = vp::get_log(v18);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v40;
        std::to_string(&__p, v16);
        v23 = &v40;
        if (v19 < 0)
        {
          v23 = v22;
        }

        v44 = v23;
        v24 = " ";
        *buf = 136316674;
        if (!v20)
        {
          v24 = "";
        }

        v45 = 2080;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v46 = v24;
        v47 = 1024;
        v48 = 13;
        v49 = 1040;
        v50 = 33;
        v51 = 2080;
        v52 = "Mic_Hardware_Physical_Sample_Rate]";
        v53 = 1024;
        v54 = v10;
        v55 = 2080;
        v56 = p_p;
        _os_log_impl(&dword_2724B4000, v21, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u is %s", buf, 0x3Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LOBYTE(v19) = v42;
      }

      if ((v19 & 0x80) != 0)
      {
        operator delete(v40);
      }
    }
  }

LABEL_30:
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v26);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v16;
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27273CA4C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (v3 < 0)
    {
      operator delete(v2);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x27273C8D8);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE13EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE13EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE13EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C23F0;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE13EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED0Ev(void *a1)
{
  *a1 = &unk_2881C23F0;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE13EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED1Ev(void *a1)
{
  *a1 = &unk_2881C23F0;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)12>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i64[1], 0xCu, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_27273CD20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE12EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EEclEOS1J_OS1K_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v54 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(*(a1 + 32), v10);
  v14 = v13;
  if ((v13 & 0x100000000) == 0)
  {
    if (v10)
    {
      log = vp::get_log(v13);
      v13 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        log_context_info = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
        v29 = v39;
        v30 = v39;
        v31 = v38;
        v32 = vp::get_log(log_context_info);
        v13 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          v33 = v37;
          if (v30 >= 0)
          {
            v34 = v29;
          }

          else
          {
            v34 = v31;
          }

          if (v30 >= 0)
          {
            v33 = &v37;
          }

          *buf = 136316674;
          v41 = v33;
          v35 = "";
          v42 = 2080;
          if (v34)
          {
            v35 = " ";
          }

          v43 = v35;
          v44 = 1024;
          v45 = 12;
          v46 = 1040;
          v47 = 22;
          v48 = 2080;
          v49 = "Mic_Physical_Device_ID]";
          v50 = 1024;
          v51 = v10;
          v52 = 1024;
          LODWORD(v53) = v14;
          _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u with status %u", buf, 0x38u);
          LOBYTE(v30) = v39;
        }

        if ((v30 & 0x80) != 0)
        {
          operator delete(v37);
        }
      }
    }

    v14 = *(a1 + 16);
  }

  if (v10)
  {
    v15 = vp::get_log(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = vp::get_log_context_info(&v37, v11, "vp::vx::Voice_Processor]", 23);
      v17 = v39;
      if ((v39 & 0x80u) == 0)
      {
        v18 = v39;
      }

      else
      {
        v18 = v38;
      }

      v19 = vp::get_log(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v37;
        std::to_string(&__p, v14);
        v21 = &v37;
        if (v17 < 0)
        {
          v21 = v20;
        }

        v41 = v21;
        v22 = " ";
        *buf = 136316674;
        if (!v18)
        {
          v22 = "";
        }

        v42 = 2080;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v43 = v22;
        v44 = 1024;
        v45 = 12;
        v46 = 1040;
        v47 = 22;
        v48 = 2080;
        v49 = "Mic_Physical_Device_ID]";
        v50 = 1024;
        v51 = v10;
        v52 = 2080;
        v53 = p_p;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u is %s", buf, 0x3Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LOBYTE(v17) = v39;
      }

      if ((v17 & 0x80) != 0)
      {
        operator delete(v37);
      }
    }
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v24);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v14;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27273D0A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (v3 < 0)
    {
      operator delete(v2);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x27273CF38);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE12EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE12EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE12EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C2278;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE12EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED0Ev(void *a1)
{
  *a1 = &unk_2881C2278;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE12EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EED1Ev(void *a1)
{
  *a1 = &unk_2881C2278;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::vx::Input_Port_Type>::convert_to_string(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *a2;
  v5[0] = 5;
  v6 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::operator<<(a3);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::vx::Input_Port_Type>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Input_Port_Type>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Input_Port_Type>::convert_to_plist(uint64_t a1, int *a2, const void **a3)
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

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Input_Port_Type>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<vp::vx::Input_Port_Type>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Input_Port_Type>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Property_List_Type_Converter<vp::vx::Input_Port_Type>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Input_Port_Type>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Input_Port_Type>::convert_to_blob(int a1, _DWORD *a2, vp::Mutable_Blob *this)
{
  if (*(this + 1) <= 3uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  **this = *a2;

  return vp::Mutable_Blob::set_size(this, 4uLL);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Input_Port_Type>::convert_from_blob(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*(a3 + 8) != 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
  }

  *a2 = **a3;
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Input_Port_Type>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v7 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Input_Port_Type>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Input_Port_Type>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Input_Port_Type>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
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

_DWORD *vp::vx::Property::Blob_Type_Converter<vp::vx::Input_Port_Type>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Input_Port_Type>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_orientation_manager(void)::$_0>(uint64_t **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  if ((*(v1 + 360) & 1) == 0 && (*(v1 + 361) & 1) == 0)
  {
    v2 = *(v1 + 456);
    boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::find(&__p, v2 + 16, &vp::Service_Interface<1869770356u>::k_service_type_id);
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

    v6 = __p;
    if (__p != (v3 + 16 * v4))
    {
      std::shared_ptr<vp::Service_Provider const>::shared_ptr[abi:ne200100]<vp::Service_Provider,0>(&v9, *v2, *(v2 + 8));
      if (v6[1])
      {
        operator new();
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_27273E120(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_system_status_manager(void)::$_0>(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(**a1 + 456);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::find(buf, v1 + 16, &vp::Service_Interface<1937339252u>::k_service_type_id);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
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

  v5 = *buf;
  if (*buf != v2 + 16 * v3)
  {
    std::shared_ptr<vp::Service_Provider const>::shared_ptr[abi:ne200100]<vp::Service_Provider,0>(&v8, *v1, *(v1 + 8));
    if (*(v5 + 8))
    {
      operator new();
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_27273E684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_control_center_manager(void)::$_0>(uint64_t **a1)
{
  v1 = **a1;
  if ((*(v1 + 360) & 1) == 0 && (*(v1 + 361) & 1) == 0)
  {
    v2 = *(v1 + 456);
    boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::find(&v7, v2 + 16, &vp::Service_Interface<1668574307u>::k_service_type_id);
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

    v6 = v7;
    if (v7 != (v3 + 16 * v4))
    {
      std::shared_ptr<vp::Service_Provider const>::shared_ptr[abi:ne200100]<vp::Service_Provider,0>(&v8, *v2, *(v2 + 8));
      if (*(v6 + 1))
      {
        operator new();
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }
  }
}

void sub_27273EAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, uint64_t a10, int *a11)
{
  vp::vx::data_flow::State<void>::~State(v15 + 24);
  vp::vx::data_flow::State<void>::~State(v15 + 18);
  vp::vx::data_flow::State<void>::~State(v17);
  vp::vx::data_flow::State<void>::~State(v16);
  vp::vx::data_flow::State<void>::~State(v15);
  vp::vx::data_flow::State<void>::~State((v12 + 160));
  vp::vx::data_flow::State<void>::~State(v14);
  vp::vx::data_flow::State<void>::~State(v13);
  vp::vx::data_flow::State<void>::~State(a9);
  vp::vx::data_flow::State<void>::~State(a11);
  v19 = *(v12 + 56);
  if (v19)
  {
    dispatch_release(v19);
  }

  v20 = *(v12 + 48);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = *(v12 + 32);
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v22);
  MEMORY[0x2743CBFA0](a10, 0x20C40A4A59CD2, 0);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

int *caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_initialization_counts(void)::$_0>(uint64_t **a1)
{
  v1 = **a1;
  v3 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v4, (v1 + 16), &v3);
  vp::vx::data_flow::State<void>::~State((v1 + 808));
  *(v1 + 808) = v4;
  *(v1 + 816) = v5;
  v5 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v4);
  v3 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v4, (v1 + 16), &v3);
  vp::vx::data_flow::State<void>::~State((v1 + 832));
  *(v1 + 832) = v4;
  *(v1 + 840) = v5;
  v5 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v4);
}

void vp::vx::create_voice_processor(std::pmr *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v79 = *MEMORY[0x277D85DE8];
  v56 = a4;
  std::pmr::get_default_resource(a1);
  __p[0] = &unk_2881C5E68;
  __p[1] = &v56;
  *(&v77 + 1) = __p;
  v75[3] = v75;
  _ZNKSt3__110__function6__funcIZZN2vp2vx22create_voice_processorERKNS2_7ContextERKNS_10shared_ptrINS2_16Service_ProviderEEENS2_9AllocatorISt4byteEEENK3__0clEvEUlT_T0_RKT1_RKT2_E_NS_9allocatorISO_EEFNS_10unique_ptrINS3_22Configuration_DatabaseENS2_16Allocator_DeleteISS_EEEEjjRKNS_4__fs10filesystem4pathES6_EE7__cloneEPNS0_6__baseIS11_EE(__p, v75);
  v5 = std::__function::__value_func<std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>> ()(unsigned int,unsigned int,std::__fs::filesystem::path const&,vp::Context const&)>::~__value_func[abi:ne200100](__p);
  v6 = v56;
  v57 = 0;
  default_resource = std::pmr::get_default_resource(v5);
  v59 = 0;
  v58 = default_resource;
  LODWORD(__ec) = 0;
  v8 = std::system_category();
  *&__ec_8.__val_ = v8;
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v67, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *&v67.version = *(a2 + 24);
    v67.key_is_equal_cb = *(a2 + 40);
  }

  if (*a2 >= 3u)
  {
    if (*a2 != 3)
    {
      goto LABEL_18;
    }

    if (*(a2 + 152) != 1)
    {
      if (*(a2 + 132) != 1)
      {
        std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(&v67, "Generic");
        goto LABEL_18;
      }

      std::to_string(&v78, *(a2 + 128));
      v11 = std::string::insert(&v78, 0, "CFG", 3uLL);
      v12 = *&v11->__r_.__value_.__l.__data_;
      *&v77 = *(&v11->__r_.__value_.__l + 2);
      *__p = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v67, __p);
LABEL_13:
      if (SBYTE7(v77) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

LABEL_18:
      if (std::__fs::filesystem::path::__filename(&v67).__size_)
      {
        std::string::push_back(&v67, 47);
      }

      std::string::append[abi:ne200100]<char const*,0>(&v67, "VPVX", "");
      std::__fs::filesystem::__status(&v67, &__ec);
      if (LOBYTE(__p[0]) && (LODWORD(__ec) = 0, *&__ec_8.__val_ = v8, LOBYTE(__p[0]) != 255))
      {
        MEMORY[0x2743CBCC0](&v65, &v67, &__ec, 0);
        v13 = v57;
        if (v65)
        {
          v14 = __ec == 0;
        }

        else
        {
          v14 = 0;
        }

        if (v14 && v57 == 0)
        {
          std::regex_traits<char>::regex_traits(&v60);
          v63 = 0;
          v62 = 0u;
          v61 = 0u;
          std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>();
        }

        if (*v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v66);
        }
      }

      else
      {
        v13 = 0;
      }

      if (SHIBYTE(v67.key_is_equal_cb) < 0)
      {
        operator delete(*&v67.version);
      }

      __ec = v6;
      __p[0] = 0;
      __p[1] = v6;
      v77 = xmmword_2727566C0;
      v16 = (*(*v6 + 16))(v6, 64, 8);
      v64 = v16;
      v65 = v13;
      v78.__r_.__value_.__r.__words[0] = &v64;
      v78.__r_.__value_.__l.__size_ = &__ec;
      v78.__r_.__value_.__s.__data_[16] = 0;
      v57 = 0;
      v54 = v58;
      *v66 = v58;
      *&v66[16] = v59;
      *v16 = &unk_2881B4A40;
      *(v16 + 8) = v6;
      *&v67.version = 2;
      v67.key_hash_cb = vp::containers::Cache<vp::vx::Configuration_Context,vp::vx::database::Cache::Entry,vp::vx::Configuration_Context_Hash,std::equal_to<vp::vx::Configuration_Context>>::Cache(char const*,std::pmr::memory_resource *)::{lambda(void *,void *)#1}::__invoke;
      v67.key_is_equal_cb = vp::containers::Cache<vp::vx::Configuration_Context,vp::vx::database::Cache::Entry,vp::vx::Configuration_Context_Hash,std::equal_to<vp::vx::Configuration_Context>>::Cache(char const*,std::pmr::memory_resource *)::{lambda(void *,void *,void *)#1}::__invoke;
      v67.key_retain_cb = vp::containers::Cache<vp::vx::Configuration_Context,vp::vx::database::Cache::Entry,vp::vx::Configuration_Context_Hash,std::equal_to<vp::vx::Configuration_Context>>::Cache(char const*,std::pmr::memory_resource *)::{lambda(void *,void **,void *)#1}::__invoke;
      v67.key_release_cb = vp::containers::Cache<vp::vx::Configuration_Context,vp::vx::database::Cache::Entry,vp::vx::Configuration_Context_Hash,std::equal_to<vp::vx::Configuration_Context>>::release;
      v67.value_release_cb = vp::containers::Cache<vp::vx::Configuration_Context,vp::vx::database::Cache::Entry,vp::vx::Configuration_Context_Hash,std::equal_to<vp::vx::Configuration_Context>>::release;
      v67.value_make_nonpurgeable_cb = 0;
      v67.value_make_purgeable_cb = 0;
      v67.user_data = v6;
      v67.value_retain_cb = vp::containers::Cache<vp::vx::Configuration_Context,vp::vx::database::Cache::Entry,vp::vx::Configuration_Context_Hash,std::equal_to<vp::vx::Configuration_Context>>::Cache(char const*,std::pmr::memory_resource *)::{lambda(void *,void *)#2}::__invoke;
      cache_create("com.apple.coreaudio.VoiceProcessor", &v67, (v16 + 16));
      v65 = 0;
      *(v16 + 24) = v13;
      *(v16 + 32) = v54;
      *(v16 + 40) = *&v66[8];
      *(v16 + 56) = 0;
      if (v13)
      {
        *(v16 + 56) = ((*v13)[2])(v13);
      }

      std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>::reset[abi:ne200100](&v65, 0);
      v78.__r_.__value_.__s.__data_[16] = 1;
      v17 = v64;
      std::__exception_guard_exceptions<vp::vx::database::Cache * std::pmr::polymorphic_allocator<vp::vx::database::Cache>::new_object[abi:ne200100]<vp::vx::database::Cache,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>,vp::Allocator<std::byte> &>(std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>,vp::Allocator<std::byte> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](&v78);
      std::unique_ptr<vp::vx::database::Cache,vp::Allocator_Delete<vp::vx::database::Cache>>::reset[abi:ne200100](__p, v17);
      v18 = *(&v77 + 1);
      v19 = *__p;
      __p[0] = 0;
      v55 = v19;
      *v71 = v19;
      *&v71[16] = v77;
      std::unique_ptr<vp::vx::database::Cache,vp::Allocator_Delete<vp::vx::database::Cache>>::reset[abi:ne200100](__p, 0);
      *buf = 0;
      v73 = v56;
      v74 = xmmword_2727567D0;
      v20 = (*(*v56 + 16))(v56, 2808, 8);
      v21 = v20;
      if (*(a3 + 8))
      {
        atomic_fetch_add_explicit(((*(a3 + 8) >> 64) + 8), 1uLL, memory_order_relaxed);
      }

      *v71 = 0;
      __ec_8 = *&v71[8];
      __ec = v55;
      v70 = v18;
      *v20 = &unk_2881BEEE0;
      v20[1] = &unk_2881BEF90;
      v20[2] = dispatch_queue_create("com.apple.coreaudio.VoiceProcessor", MEMORY[0x277D85CD8]);
      v22 = dispatch_queue_create("com.apple.coreaudio.VoiceProcessor", 0);
      v21[3] = v22;
      v21[4] = 0;
      *(v21 + 10) = 0;
      v21[6] = 0;
      v21[7] = 0;
      v23 = std::pmr::get_default_resource(v22);
      v24 = (*(*v23 + 16))(v23, 704, 64);
      *(v24 + 8) = 0;
      *(v24 + 16) = 0;
      *v24 = &unk_2881BE9A8;
      *(v24 + 64) = v23;
      v25 = v24 + 128;
      v26 = std::__shared_mutex_base::__shared_mutex_base((v24 + 128));
      *(v24 + 296) = 850045863;
      *(v24 + 304) = 0u;
      *(v24 + 320) = 0u;
      *(v24 + 336) = 0u;
      *(v24 + 352) = 0;
      *(v24 + 360) = 850045863;
      *(v24 + 456) = 0;
      *(v24 + 464) = 0;
      *(v24 + 368) = 0u;
      *(v24 + 384) = 0u;
      *(v24 + 400) = 0u;
      *(v24 + 416) = 0u;
      *(v24 + 432) = 0u;
      *(v24 + 448) = 0;
      v27 = std::pmr::get_default_resource(v26);
      *(v24 + 472) = v27;
      *(v24 + 480) = 0;
      v28 = std::pmr::get_default_resource(v27);
      *(v24 + 488) = v28;
      *(v24 + 496) = 0;
      *(v24 + 504) = 1065353216;
      v29 = std::pmr::get_default_resource(v28);
      *(v24 + 512) = v29;
      *(v24 + 520) = v24 + 576;
      *(v24 + 528) = xmmword_2727564E0;
      log = vp::get_log(v29);
      v31 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
      if (v31)
      {
        log_context_info = vp::get_log_context_info(__p, v25, "vp::vx::data_flow::Engine]", 25);
        v33 = BYTE7(v77);
        v34 = __p[1];
        v35 = vp::get_log(log_context_info);
        v31 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        if (v31)
        {
          if (v33 >= 0)
          {
            v36 = v33;
          }

          else
          {
            v36 = v34;
          }

          v37 = __p[0];
          if ((SBYTE7(v77) & 0x80u) == 0)
          {
            v37 = __p;
          }

          if (v36)
          {
            v38 = " ";
          }

          else
          {
            v38 = "";
          }

          LODWORD(v78.__r_.__value_.__l.__data_) = 136315394;
          *(v78.__r_.__value_.__r.__words + 4) = v37;
          WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
          *(&v78.__r_.__value_.__r.__words[1] + 6) = v38;
          _os_log_impl(&dword_2724B4000, v35, OS_LOG_TYPE_DEFAULT, "%s%screated", &v78, 0x16u);
        }

        if (SBYTE7(v77) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v21[8] = v25;
      v21[9] = v24;
      v39 = vp::get_log(v31);
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
      if (v40)
      {
        v41 = vp::get_log_context_info(__p, (v21 + 8), "vp::vx::data_flow::State_Manager]", 32);
        v42 = BYTE7(v77);
        v43 = __p[1];
        v44 = vp::get_log(v41);
        v40 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
        if (v40)
        {
          if (v42 >= 0)
          {
            v45 = v42;
          }

          else
          {
            v45 = v43;
          }

          v46 = __p[0];
          if ((SBYTE7(v77) & 0x80u) == 0)
          {
            v46 = __p;
          }

          if (v45)
          {
            v47 = " ";
          }

          else
          {
            v47 = "";
          }

          LODWORD(v78.__r_.__value_.__l.__data_) = 136315394;
          *(v78.__r_.__value_.__r.__words + 4) = v46;
          WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
          *(&v78.__r_.__value_.__r.__words[1] + 6) = v47;
          _os_log_impl(&dword_2724B4000, v44, OS_LOG_TYPE_DEFAULT, "%s%screated", &v78, 0x16u);
        }

        if (SBYTE7(v77) < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(v21 + 5) = 0u;
      *(v21 + 6) = 0u;
      v48 = v21[3];
      if (v48)
      {
        dispatch_retain(v21[3]);
      }

      v49 = std::pmr::get_default_resource(v40);
      v50 = (*(*v49 + 16))(v49, 184, 8);
      *(v50 + 8) = 0u;
      *v50 = &unk_2881B6320;
      *(v50 + 24) = v49;
      *(v50 + 32) = 0u;
      *(v50 + 48) = v49;
      *(v50 + 56) = 0;
      *(v50 + 64) = 0u;
      *(v50 + 80) = v49;
      *(v50 + 88) = 0;
      *(v50 + 96) = v49;
      *(v50 + 104) = 0;
      *(v50 + 112) = 1065353216;
      *(v50 + 120) = 0u;
      *(v50 + 136) = v49;
      *(v50 + 144) = 0;
      *(v50 + 152) = v49;
      *(v50 + 160) = 0;
      *(v50 + 168) = 1065353216;
      *(v50 + 176) = v48;
      v21[14] = v50 + 32;
      v21[15] = v50;
      atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit((v50 + 16), 1uLL, memory_order_relaxed);
      *(v50 + 32) = v50 + 32;
      *(v50 + 40) = v50;
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      *(v21 + 8) = 0u;
      v52 = std::pmr::get_default_resource(v51);
      v21[18] = v52;
      v21[19] = 0;
      v21[20] = std::pmr::get_default_resource(v52);
      v21[21] = 0;
      *(v21 + 44) = 1065353216;
      MEMORY[0x2743CBBC0](v21 + 23);
      operator new();
    }
  }

  else if (*(a2 + 152) != 1)
  {
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v67, a2 + 104);
    goto LABEL_18;
  }

  std::to_string(&v78, *(a2 + 148));
  v9 = std::string::insert(&v78, 0, "AID", 3uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  *&v77 = *(&v9->__r_.__value_.__l + 2);
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v67, __p);
  goto LABEL_13;
}

void sub_272743DA0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>> ()(unsigned int,unsigned int,std::__fs::filesystem::path const&,vp::Context const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void (****std::unique_ptr<vp::vx::Voice_Processor,vp::Allocator_Delete<vp::vx::Voice_Processor>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

void (****std::unique_ptr<vp::vx::Component,vp::Allocator_Delete<vp::vx::Component>>::reset[abi:ne200100](void (****result)(void)))(void)
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

vp::vx::components::Property_List_Writer **std::unique_ptr<vp::vx::components::Property_List_Writer,vp::Allocator_Delete<vp::vx::components::Property_List_Writer>>::reset[abi:ne200100](vp::vx::components::Property_List_Writer **result, vp::vx::components::Property_List_Writer *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Property_List_Writer::~Property_List_Writer(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

vp::vx::components::Audio_Capturer **std::unique_ptr<vp::vx::components::Audio_Capturer,vp::Allocator_Delete<vp::vx::components::Audio_Capturer>>::reset[abi:ne200100](vp::vx::components::Audio_Capturer **result, vp::vx::components::Audio_Capturer *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Audio_Capturer::~Audio_Capturer(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

vp::vx::components::Audio_Injector **std::unique_ptr<vp::vx::components::Audio_Injector,vp::Allocator_Delete<vp::vx::components::Audio_Injector>>::reset[abi:ne200100](vp::vx::components::Audio_Injector **result, vp::vx::components::Audio_Injector *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Audio_Injector::~Audio_Injector(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

std::__shared_weak_count ***std::unique_ptr<vp::vx::components::CPU_Profiler,vp::Allocator_Delete<vp::vx::components::CPU_Profiler>>::reset[abi:ne200100](std::__shared_weak_count ***result, std::__shared_weak_count **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::CPU_Profiler::~CPU_Profiler(v2);
    return ((*v3[1])[1].__vftable)(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

std::__shared_weak_count ***std::unique_ptr<vp::vx::components::Parameter_Logger,vp::Allocator_Delete<vp::vx::components::Parameter_Logger>>::reset[abi:ne200100](std::__shared_weak_count ***result, std::__shared_weak_count **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Parameter_Logger::~Parameter_Logger(v2);
    return ((*v3[1])[1].__vftable)(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

std::__shared_weak_count ***std::unique_ptr<vp::vx::components::Property_Logger,vp::Allocator_Delete<vp::vx::components::Property_Logger>>::reset[abi:ne200100](std::__shared_weak_count ***result, std::__shared_weak_count **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Property_Logger::~Property_Logger(v2);
    return ((*v3[1])[1].__vftable)(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void *vp::Service_Provider::get<vp::services::Audio_Data_Analysis,(decltype(nullptr))0>(void *a1, uint64_t a2)
{
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::find(&v11, a2 + 16, &vp::Service_Interface<1633971571u>::k_service_type_id);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
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

  v8 = v11;
  if (v11 == (v5 + 16 * v6))
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    result = std::shared_ptr<vp::Service_Provider const>::shared_ptr[abi:ne200100]<vp::Service_Provider,0>(v10, *a2, *(a2 + 8));
    v9 = v10[1];
    *a1 = *(v8 + 1);
    a1[1] = v9;
  }

  return result;
}

vp::vx::components::Audio_Data_Analysis **std::unique_ptr<vp::vx::components::Audio_Data_Analysis,vp::Allocator_Delete<vp::vx::components::Audio_Data_Analysis>>::reset[abi:ne200100](vp::vx::components::Audio_Data_Analysis **result, vp::vx::components::Audio_Data_Analysis *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Audio_Data_Analysis::~Audio_Data_Analysis(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

std::__shared_weak_count ***std::unique_ptr<vp::vx::components::Audio_Issue_Detector,vp::Allocator_Delete<vp::vx::components::Audio_Issue_Detector>>::reset[abi:ne200100](std::__shared_weak_count ***result, std::__shared_weak_count **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Audio_Issue_Detector::~Audio_Issue_Detector(v2);
    return ((*v3[1])[1].__vftable)(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

vp::vx::components::Audio_Statistics **std::unique_ptr<vp::vx::components::Audio_Statistics,vp::Allocator_Delete<vp::vx::components::Audio_Statistics>>::reset[abi:ne200100](vp::vx::components::Audio_Statistics **result, vp::vx::components::Audio_Statistics *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Audio_Statistics::~Audio_Statistics(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

vp::vx::components::Phone_Proximity_Detector **std::unique_ptr<vp::vx::components::Phone_Proximity_Detector,vp::Allocator_Delete<vp::vx::components::Phone_Proximity_Detector>>::reset[abi:ne200100](vp::vx::components::Phone_Proximity_Detector **result, vp::vx::components::Phone_Proximity_Detector *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Phone_Proximity_Detector::~Phone_Proximity_Detector(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

std::__shared_weak_count ***std::unique_ptr<vp::vx::components::GM_Coex_Noise_Mitigator,vp::Allocator_Delete<vp::vx::components::GM_Coex_Noise_Mitigator>>::reset[abi:ne200100](std::__shared_weak_count ***result, std::__shared_weak_count **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::GM_Coex_Noise_Mitigator::~GM_Coex_Noise_Mitigator(v2);
    return ((*v3[1])[1].__vftable)(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

std::__shared_weak_count ***std::unique_ptr<vp::vx::components::DSP_Settings,vp::Allocator_Delete<vp::vx::components::DSP_Settings>>::reset[abi:ne200100](std::__shared_weak_count ***result, std::__shared_weak_count **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::DSP_Settings::~DSP_Settings(v2);
    return ((*v3[1])[1].__vftable)(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

std::__shared_weak_count ***std::unique_ptr<vp::vx::components::Power_Log,vp::Allocator_Delete<vp::vx::components::Power_Log>>::reset[abi:ne200100](std::__shared_weak_count ***result, std::__shared_weak_count **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Power_Log::~Power_Log(v2);
    return ((*v3[1])[1].__vftable)(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

std::__shared_weak_count ***std::unique_ptr<vp::vx::components::Share_Play,vp::Allocator_Delete<vp::vx::components::Share_Play>>::reset[abi:ne200100](std::__shared_weak_count ***result, std::__shared_weak_count **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Share_Play::~Share_Play(v2);
    return ((*v3[1])[1].__vftable)(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

std::__shared_weak_count ***std::unique_ptr<vp::vx::components::Smart_Cover_Detector,vp::Allocator_Delete<vp::vx::components::Smart_Cover_Detector>>::reset[abi:ne200100](std::__shared_weak_count ***result, std::__shared_weak_count **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Smart_Cover_Detector::~Smart_Cover_Detector(v2);
    return ((*v3[1])[1].__vftable)(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

std::__shared_weak_count ***std::unique_ptr<vp::vx::components::Speech_Activity_Event_Listener,vp::Allocator_Delete<vp::vx::components::Speech_Activity_Event_Listener>>::reset[abi:ne200100](std::__shared_weak_count ***result, std::__shared_weak_count **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Speech_Activity_Event_Listener::~Speech_Activity_Event_Listener(v2);
    return ((*v3[1])[1].__vftable)(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

std::__shared_weak_count ***std::unique_ptr<vp::vx::components::Volume_Limit,vp::Allocator_Delete<vp::vx::components::Volume_Limit>>::reset[abi:ne200100](std::__shared_weak_count ***result, std::__shared_weak_count **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Volume_Limit::~Volume_Limit(v2);
    return ((*v3[1])[1].__vftable)(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

std::__shared_weak_count ***std::unique_ptr<vp::vx::components::Wireless_Charging_Detector,vp::Allocator_Delete<vp::vx::components::Wireless_Charging_Detector>>::reset[abi:ne200100](std::__shared_weak_count ***result, std::__shared_weak_count **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Wireless_Charging_Detector::~Wireless_Charging_Detector(v2);
    return ((*v3[1])[1].__vftable)(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

std::__shared_weak_count ***std::unique_ptr<vp::vx::components::Audio_Reblocker,vp::Allocator_Delete<vp::vx::components::Audio_Reblocker>>::reset[abi:ne200100](std::__shared_weak_count ***result, std::__shared_weak_count **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Audio_Reblocker::~Audio_Reblocker(v2);
    return ((*v3[1])[1].__vftable)(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<vp::vx::components::Speech_Activity_Event_Listener * std::pmr::polymorphic_allocator<vp::vx::components::Speech_Activity_Event_Listener>::new_object[abi:ne200100]<vp::vx::components::Speech_Activity_Event_Listener,vp::Context const&,vp::Allocator<std::byte> &>(vp::Context const&,vp::Allocator<std::byte> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 304, 8);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<vp::vx::components::Share_Play * std::pmr::polymorphic_allocator<vp::vx::components::Share_Play>::new_object[abi:ne200100]<vp::vx::components::Share_Play,vp::Context const&,vp::Allocator<std::byte> &>(vp::Context const&,vp::Allocator<std::byte> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 272, 8);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<vp::vx::components::GM_Coex_Noise_Mitigator * std::pmr::polymorphic_allocator<vp::vx::components::GM_Coex_Noise_Mitigator>::new_object[abi:ne200100]<vp::vx::components::GM_Coex_Noise_Mitigator,std::shared_ptr<vp::services::Model_Manager> &,vp::Allocator<std::byte> &>(std::shared_ptr<vp::services::Model_Manager> &,vp::Allocator<std::byte> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 24, 8);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<vp::vx::components::Phone_Proximity_Detector * std::pmr::polymorphic_allocator<vp::vx::components::Phone_Proximity_Detector>::new_object[abi:ne200100]<vp::vx::components::Phone_Proximity_Detector,std::shared_ptr<vp::services::Backboard> &,vp::Allocator<std::byte> &>(std::shared_ptr<vp::services::Backboard> &,vp::Allocator<std::byte> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 144, 8);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<vp::vx::components::Audio_Statistics * std::pmr::polymorphic_allocator<vp::vx::components::Audio_Statistics>::new_object[abi:ne200100]<vp::vx::components::Audio_Statistics,vp::Context const&,std::shared_ptr<vp::services::Audio_Statistics> &,vp::Allocator<std::byte> &>(vp::Context const&,std::shared_ptr<vp::services::Audio_Statistics> &,vp::Allocator<std::byte> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 512, 8);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<vp::vx::components::Audio_Data_Analysis * std::pmr::polymorphic_allocator<vp::vx::components::Audio_Data_Analysis>::new_object[abi:ne200100]<vp::vx::components::Audio_Data_Analysis,std::shared_ptr<vp::services::Audio_Data_Analysis> &,vp::Allocator<std::byte> &>(std::shared_ptr<vp::services::Audio_Data_Analysis> &,vp::Allocator<std::byte> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 176, 8);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<vp::vx::components::Property_Logger * std::pmr::polymorphic_allocator<vp::vx::components::Property_Logger>::new_object[abi:ne200100]<vp::vx::components::Property_Logger,vp::Context const&>(vp::Context const&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 296, 8);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<vp::vx::components::Parameter_Logger * std::pmr::polymorphic_allocator<vp::vx::components::Parameter_Logger>::new_object[abi:ne200100]<vp::vx::components::Parameter_Logger,vp::Context const&>(vp::Context const&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 296, 8);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<vp::vx::components::CPU_Profiler * std::pmr::polymorphic_allocator<vp::vx::components::CPU_Profiler>::new_object[abi:ne200100]<vp::vx::components::CPU_Profiler,vp::Context const&>(vp::Context const&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 312, 8);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<vp::vx::components::Audio_Injector * std::pmr::polymorphic_allocator<vp::vx::components::Audio_Injector>::new_object[abi:ne200100]<vp::vx::components::Audio_Injector,vp::Context const&,vp::Allocator<std::byte> &>(vp::Context const&,vp::Allocator<std::byte> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 448, 8);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<vp::vx::components::Audio_Capturer * std::pmr::polymorphic_allocator<vp::vx::components::Audio_Capturer>::new_object[abi:ne200100]<vp::vx::components::Audio_Capturer,vp::Context const&,vp::Allocator<std::byte> &>(vp::Context const&,vp::Allocator<std::byte> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 384, 8);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<vp::vx::components::Property_List_Writer * std::pmr::polymorphic_allocator<vp::vx::components::Property_List_Writer>::new_object[abi:ne200100]<vp::vx::components::Property_List_Writer,vp::Context const&,vp::Allocator<std::byte> &>(vp::Context const&,vp::Allocator<std::byte> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 768, 64);
  }

  return a1;
}

void ***_ZNSt3__110__function6__funcIZZN2vp2vx22create_voice_processorERKNS2_7ContextERKNS_10shared_ptrINS2_16Service_ProviderEEENS2_9AllocatorISt4byteEEENK3__0clEvEUlT_T0_RKT1_RKT2_E_NS_9allocatorISO_EEFNS_10unique_ptrINS3_22Configuration_DatabaseENS2_16Allocator_DeleteISS_EEEEjjRKNS_4__fs10filesystem4pathES6_EEclEOjS13_S10_S6_@<X0>(std::pmr *a1@<X0>, _DWORD *a2@<X1>, std::__fs::filesystem::path *a3@<X3>, const Context *a4@<X4>, uint64_t a5@<X8>)
{
  if (*a2 == 1)
  {
    v6 = **(a1 + 1);

    return vp::vx::database::v1::load(a5, v6, a3, a4);
  }

  else
  {
    *a5 = 0;
    result = std::pmr::get_default_resource(a1);
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 8) = result;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN2vp2vx22create_voice_processorERKNS2_7ContextERKNS_10shared_ptrINS2_16Service_ProviderEEENS2_9AllocatorISt4byteEEENK3__0clEvEUlT_T0_RKT1_RKT2_E_NS_9allocatorISO_EEFNS_10unique_ptrINS3_22Configuration_DatabaseENS2_16Allocator_DeleteISS_EEEEjjRKNS_4__fs10filesystem4pathES6_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C5E68;
  a2[1] = v2;
  return result;
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::RunUplinkDynamicsDSP(vp::vx::Voice_Processor_Interface_Adapter *this, AudioBufferList *a2, const AudioTimeStamp *a3, int a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = 1937006964;
  v5 = (this + 44);
  v6 = atomic_load(this + 11);
  if (v6 <= 0x7FFFFFFE)
  {
    v8 = v6;
    while (1)
    {
      atomic_compare_exchange_strong(v5, &v8, v6 + 1);
      if (v8 == v6)
      {
        break;
      }

      v6 = v8;
      if (v8 >= 0x7FFFFFFF)
      {
        goto LABEL_56;
      }
    }

    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v9 = 9;
LABEL_55:
          v4 = dword_27275B40C[v9];
          caulk::concurrent::shared_spin_lock::unlock_shared(v5);
          goto LABEL_56;
        }

        log = vp::get_log(this);
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v11 = &v34;
          log_context_info = vp::get_log_context_info(&v34, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
          v27 = v36;
          v14 = v36;
          v28 = v35;
          v16 = vp::get_log(log_context_info);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            if (v14 >= 0)
            {
              v29 = v27;
            }

            else
            {
              v29 = v28;
            }

            if (v14 < 0)
            {
              v11 = v34;
            }

            if (v29)
            {
              v18 = " ";
            }

            else
            {
              v18 = "";
            }

            caulk::make_string("frame count is zero", __p);
            if (v33 >= 0)
            {
              v19 = __p;
            }

            else
            {
              v19 = __p[0];
            }

LABEL_49:
            *buf = 136315906;
            v38 = v11;
            v39 = 2080;
            v40 = v18;
            v41 = 2080;
            v42 = v19;
            v43 = 2080;
            v44 = "bad argument";
            _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", buf, 0x2Au);
            if (v33 < 0)
            {
              operator delete(__p[0]);
            }

            LOBYTE(v14) = v36;
            goto LABEL_52;
          }

          goto LABEL_52;
        }
      }

      else
      {
        v20 = vp::get_log(this);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v11 = &v34;
          v21 = vp::get_log_context_info(&v34, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
          v22 = v36;
          v14 = v36;
          v23 = v35;
          v16 = vp::get_log(v21);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            if (v14 >= 0)
            {
              v24 = v22;
            }

            else
            {
              v24 = v23;
            }

            if (v14 < 0)
            {
              v11 = v34;
            }

            if (v24)
            {
              v18 = " ";
            }

            else
            {
              v18 = "";
            }

            caulk::make_string("microphone audio time stamp is null", __p);
            if (v33 >= 0)
            {
              v19 = __p;
            }

            else
            {
              v19 = __p[0];
            }

            goto LABEL_49;
          }

LABEL_52:
          if ((v14 & 0x80) != 0)
          {
            operator delete(v34);
          }
        }
      }
    }

    else
    {
      v10 = vp::get_log(this);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = &v34;
        v12 = vp::get_log_context_info(&v34, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
        v13 = v36;
        v14 = v36;
        v15 = v35;
        v16 = vp::get_log(v12);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          if (v14 >= 0)
          {
            v17 = v13;
          }

          else
          {
            v17 = v15;
          }

          if (v14 < 0)
          {
            v11 = v34;
          }

          if (v17)
          {
            v18 = " ";
          }

          else
          {
            v18 = "";
          }

          caulk::make_string("microphone audio buffer list is null", __p);
          if (v33 >= 0)
          {
            v19 = __p;
          }

          else
          {
            v19 = __p[0];
          }

          goto LABEL_49;
        }

        goto LABEL_52;
      }
    }

    v9 = 0;
    goto LABEL_55;
  }

LABEL_56:
  v30 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_272745CDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::RunUplinkEchoDSP(vp::vx::Voice_Processor_Interface_Adapter *this, const AudioTimeStamp *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = 1937006964;
  v3 = (this + 44);
  v4 = atomic_load(this + 11);
  if (v4 <= 0x7FFFFFFE)
  {
    v6 = v4;
    while (1)
    {
      atomic_compare_exchange_strong(v3, &v6, v4 + 1);
      if (v6 == v4)
      {
        break;
      }

      v4 = v6;
      if (v6 >= 0x7FFFFFFF)
      {
        goto LABEL_29;
      }
    }

    if (a2)
    {
      v7 = 9;
    }

    else
    {
      log = vp::get_log(this);
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        log_context_info = vp::get_log_context_info(v22, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
        v10 = v23;
        v11 = v23;
        v12 = v22[1];
        v13 = vp::get_log(log_context_info);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          if (v11 >= 0)
          {
            v14 = v10;
          }

          else
          {
            v14 = v12;
          }

          if (v11 >= 0)
          {
            v15 = v22;
          }

          else
          {
            v15 = v22[0];
          }

          if (v14)
          {
            v16 = " ";
          }

          else
          {
            v16 = "";
          }

          caulk::make_string("microphone audio time stamp is null", __p);
          if (v21 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          *buf = 136315906;
          v25 = v15;
          v26 = 2080;
          v27 = v16;
          v28 = 2080;
          v29 = v17;
          v30 = 2080;
          v31 = "bad argument";
          _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", buf, 0x2Au);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          LOBYTE(v11) = v23;
        }

        if ((v11 & 0x80) != 0)
        {
          operator delete(v22[0]);
        }
      }

      v7 = 0;
    }

    v2 = dword_27275B40C[v7];
    caulk::concurrent::shared_spin_lock::unlock_shared(v3);
  }

LABEL_29:
  v18 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_272745EC8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::RunUplinkHardwareDSP(vp::vx::Voice_Processor_Interface_Adapter *this, const AudioBufferList *a2, const AudioTimeStamp *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = 1937006964;
  v4 = (this + 44);
  v5 = atomic_load(this + 11);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = v5;
    while (1)
    {
      atomic_compare_exchange_strong(v4, &v7, v5 + 1);
      if (v7 == v5)
      {
        break;
      }

      v5 = v7;
      if (v7 >= 0x7FFFFFFF)
      {
        goto LABEL_42;
      }
    }

    if (a2)
    {
      if (a3)
      {
        v8 = 9;
LABEL_41:
        v3 = dword_27275B40C[v8];
        caulk::concurrent::shared_spin_lock::unlock_shared(v4);
        goto LABEL_42;
      }

      log = vp::get_log(this);
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v10 = &v28;
        log_context_info = vp::get_log_context_info(&v28, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
        v21 = v30;
        v13 = v30;
        v22 = v29;
        v15 = vp::get_log(log_context_info);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          if (v13 >= 0)
          {
            v23 = v21;
          }

          else
          {
            v23 = v22;
          }

          if (v13 < 0)
          {
            v10 = v28;
          }

          if (v23)
          {
            v17 = " ";
          }

          else
          {
            v17 = "";
          }

          caulk::make_string("microphone audio time stamp is null", __p);
          if (v27 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

LABEL_35:
          *buf = 136315906;
          v32 = v10;
          v33 = 2080;
          v34 = v17;
          v35 = 2080;
          v36 = v18;
          v37 = 2080;
          v38 = "bad argument";
          _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", buf, 0x2Au);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }

          LOBYTE(v13) = v30;
          goto LABEL_38;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v9 = vp::get_log(this);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = &v28;
        v11 = vp::get_log_context_info(&v28, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
        v12 = v30;
        v13 = v30;
        v14 = v29;
        v15 = vp::get_log(v11);
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

          if (v13 < 0)
          {
            v10 = v28;
          }

          if (v16)
          {
            v17 = " ";
          }

          else
          {
            v17 = "";
          }

          caulk::make_string("microphone audio buffer list is null", __p);
          if (v27 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          goto LABEL_35;
        }

LABEL_38:
        if ((v13 & 0x80) != 0)
        {
          operator delete(v28);
        }
      }
    }

    v8 = 0;
    goto LABEL_41;
  }

LABEL_42:
  v24 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_272746198(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::WriteBuffer(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = 1937006964;
  v4 = (a1 + 11);
  v5 = atomic_load(a1 + 11);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = v5;
    while (1)
    {
      atomic_compare_exchange_strong(v4, &v7, v5 + 1);
      if (v7 == v5)
      {
        break;
      }

      v5 = v7;
      if (v7 >= 0x7FFFFFFF)
      {
        goto LABEL_29;
      }
    }

    if (a3)
    {
      v8 = 9;
    }

    else
    {
      log = vp::get_log(a1);
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        log_context_info = vp::get_log_context_info(v23, a1, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
        v11 = v24;
        v12 = v24;
        v13 = v23[1];
        v14 = vp::get_log(log_context_info);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          if (v12 >= 0)
          {
            v15 = v11;
          }

          else
          {
            v15 = v13;
          }

          if (v12 >= 0)
          {
            v16 = v23;
          }

          else
          {
            v16 = v23[0];
          }

          if (v15)
          {
            v17 = " ";
          }

          else
          {
            v17 = "";
          }

          caulk::make_string("audio buffer list is null", __p);
          if (v22 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          *buf = 136315906;
          v26 = v16;
          v27 = 2080;
          v28 = v17;
          v29 = 2080;
          v30 = v18;
          v31 = 2080;
          v32 = "bad argument";
          _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", buf, 0x2Au);
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }

          LOBYTE(v12) = v24;
        }

        if ((v12 & 0x80) != 0)
        {
          operator delete(v23[0]);
        }
      }

      v8 = 0;
    }

    v3 = dword_27275B40C[v8];
    caulk::concurrent::shared_spin_lock::unlock_shared(v4);
  }

LABEL_29:
  v19 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_272746384(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::ReadBuffer(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = 1937006964;
  v4 = (a1 + 11);
  v5 = atomic_load(a1 + 11);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = v5;
    while (1)
    {
      atomic_compare_exchange_strong(v4, &v7, v5 + 1);
      if (v7 == v5)
      {
        break;
      }

      v5 = v7;
      if (v7 >= 0x7FFFFFFF)
      {
        goto LABEL_29;
      }
    }

    if (a3)
    {
      v8 = 9;
    }

    else
    {
      log = vp::get_log(a1);
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        log_context_info = vp::get_log_context_info(v23, a1, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
        v11 = v24;
        v12 = v24;
        v13 = v23[1];
        v14 = vp::get_log(log_context_info);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          if (v12 >= 0)
          {
            v15 = v11;
          }

          else
          {
            v15 = v13;
          }

          if (v12 >= 0)
          {
            v16 = v23;
          }

          else
          {
            v16 = v23[0];
          }

          if (v15)
          {
            v17 = " ";
          }

          else
          {
            v17 = "";
          }

          caulk::make_string("audio buffer list is null", __p);
          if (v22 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          *buf = 136315906;
          v26 = v16;
          v27 = 2080;
          v28 = v17;
          v29 = 2080;
          v30 = v18;
          v31 = 2080;
          v32 = "bad argument";
          _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", buf, 0x2Au);
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }

          LOBYTE(v12) = v24;
        }

        if ((v12 & 0x80) != 0)
        {
          operator delete(v23[0]);
        }
      }

      v8 = 0;
    }

    v3 = dword_27275B40C[v8];
    caulk::concurrent::shared_spin_lock::unlock_shared(v4);
  }

LABEL_29:
  v19 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_272746570(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::PreflightDownlink(vp::vx::Voice_Processor_Interface_Adapter *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  result = 1937006964;
  v6 = (this + 44);
  v7 = atomic_load(v6);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = v7;
    while (1)
    {
      atomic_compare_exchange_strong(v6, &v8, v7 + 1);
      if (v8 == v7)
      {
        break;
      }

      v7 = v8;
      if (v8 >= 0x7FFFFFFF)
      {
        return result;
      }
    }

    caulk::concurrent::shared_spin_lock::unlock_shared(v6);
    return 1768779884;
  }

  return result;
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::PreflightUplink(vp::vx::Voice_Processor_Interface_Adapter *this, unsigned int a2, unsigned int *a3)
{
  result = 1937006964;
  v5 = (this + 44);
  v6 = atomic_load(v5);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = v6;
    while (1)
    {
      atomic_compare_exchange_strong(v5, &v7, v6 + 1);
      if (v7 == v6)
      {
        break;
      }

      v6 = v7;
      if (v7 >= 0x7FFFFFFF)
      {
        return result;
      }
    }

    caulk::concurrent::shared_spin_lock::unlock_shared(v5);
    return 1768779884;
  }

  return result;
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::GetPropertyInfo(vp::vx::Voice_Processor_Interface_Adapter *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  if (!(vp::vx::legacy_cast_noexcept<vp::vx::Property_ID>(a2) >> 32))
  {
    return 2003332927;
  }

  caulk::concurrent::shared_spin_lock::lock_shared(this + 11);
  (*(**(this + 1) + 32))(&v9);
  if (v11 == 1)
  {
    if (a3)
    {
      *a3 = v9;
    }

    if (a4)
    {
      *a4 = v10;
    }
  }

  v5 = 0;
  if ((v11 & 1) == 0 && v9 <= 0xB)
  {
    v5 = dword_27275B40C[v9];
  }

  caulk::concurrent::shared_spin_lock::unlock_shared(this + 11);
  return v5;
}

uint64_t vp::vx::legacy_cast_noexcept<vp::vx::Property_ID>(int a1)
{
  v1 = 0;
  while (vp::vx::g_property_id_lut[v1 + 72] != a1)
  {
    if (++v1 == 72)
    {
      exception = __cxa_allocate_exception(8uLL);
      v3 = std::bad_cast::bad_cast(exception);
    }
  }

  return vp::vx::g_property_id_lut[v1] | 0x100000000;
}

void sub_2727467B8(int a1)
{
  if (a1)
  {
    __cxa_end_catch();
  }

  else
  {
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x2727467A8);
}

unsigned int *caulk::concurrent::shared_spin_lock::lock_shared(unsigned int *this)
{
  v1 = this;
  for (i = 0; ; ++i)
  {
    v3 = atomic_load(v1);
    if (v3 <= 0x7FFFFFFE)
    {
      break;
    }

LABEL_6:
    if (i >= 0x65)
    {
      v5 = mach_absolute_time();
      this = mach_wait_until(v5 + 24000);
    }
  }

  v4 = v3;
  while (1)
  {
    atomic_compare_exchange_strong(v1, &v4, v3 + 1);
    if (v4 == v3)
    {
      return this;
    }

    v3 = v4;
    if (v4 >= 0x7FFFFFFF)
    {
      goto LABEL_6;
    }
  }
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::RemovePropertyListenerBlock(vp::vx::Voice_Processor_Interface_Adapter *this, int a2)
{
  if (!(vp::vx::legacy_cast_noexcept<vp::vx::Property_ID>(a2) >> 32))
  {
    return 2003332927;
  }

  v5[1] = this + 44;
  v6 = 1;
  caulk::concurrent::shared_spin_lock::lock_shared(this + 11);
  (*(**(this + 1) + 56))(v5);
  if ((v5[0] & 0x100000000) != 0 || LODWORD(v5[0]) > 0xB)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_27275B40C[LODWORD(v5[0])];
  }

  caulk::concurrent::shared_spin_lock::unlock_shared(this + 11);
  return v3;
}

void sub_272746940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_lock<caulk::concurrent::shared_spin_lock>::~shared_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::AddPropertyListenerBlock(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v7 = vp::vx::legacy_cast_noexcept<vp::vx::Property_ID>(a2);
  if (!HIDWORD(v7))
  {
    return 2003332927;
  }

  v8 = v7;
  caulk::concurrent::shared_spin_lock::lock_shared((a1 + 44));
  v9 = (*(**(a1 + 8) + 48))(*(a1 + 8), v8, a3);
  if (v10)
  {
    v11 = 0;
    *a4 = v9;
  }

  else if (v9 > 0xB)
  {
    v11 = 0;
  }

  else
  {
    v11 = dword_27275B40C[v9 & 0xF];
  }

  caulk::concurrent::shared_spin_lock::unlock_shared((a1 + 44));
  return v11;
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::AppendReferenceSignal(vp::vx::Voice_Processor_Interface_Adapter *this, const AudioBufferList *a2, const AudioTimeStamp *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = 1937006964;
  v4 = (this + 44);
  v5 = atomic_load(this + 11);
  if (v5 <= 0x7FFFFFFE)
  {
    v9 = v5;
    while (1)
    {
      atomic_compare_exchange_strong(v4, &v9, v5 + 1);
      if (v9 == v5)
      {
        break;
      }

      v5 = v9;
      if (v9 >= 0x7FFFFFFF)
      {
        goto LABEL_37;
      }
    }

    bad_argument_status_if_null = vp::vx::Voice_Processor_Interface_Adapter::make_bad_argument_status_if_null(buf, a2);
    if (v32)
    {
      if ((*(**(this + 1) + 144))(*(this + 1)))
      {
        v3 = 0;
        *buf = 0;
LABEL_36:
        caulk::concurrent::shared_spin_lock::unlock_shared(v4);
        goto LABEL_37;
      }

      frame_count = vp::vx::Voice_Processor_Interface_Adapter::make_frame_count(a2, v11);
      (*(**(this + 1) + 80))(buf, *(this + 1), 1, a2, a3, frame_count | 0x100000000);
      if (v32)
      {
LABEL_35:
        v3 = 0;
        goto LABEL_36;
      }

      v12 = *buf;
    }

    else
    {
      v12 = *buf;
      log = vp::get_log(bad_argument_status_if_null);
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v14 = v29;
        log_context_info = vp::get_log_context_info(v29, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
        v16 = v30;
        v17 = v30;
        v18 = v29[1];
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

          if (v17 < 0)
          {
            v14 = v29[0];
          }

          if (v20)
          {
            v21 = " ";
          }

          else
          {
            v21 = "";
          }

          caulk::make_string("uplink reference input audio buffer list is null", __p);
          if (v28 >= 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = __p[0];
          }

          if (v12 - 1 > 0xA)
          {
            v23 = "bad argument";
          }

          else
          {
            v23 = off_279E4A470[v12 - 1];
          }

          *buf = 136315906;
          v32 = v14;
          v33 = 2080;
          v34 = v21;
          v35 = 2080;
          v36 = v22;
          v37 = 2080;
          v38 = v23;
          _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", buf, 0x2Au);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          LOBYTE(v17) = v30;
        }

        if ((v17 & 0x80) != 0)
        {
          operator delete(v29[0]);
        }
      }

      *buf = v12;
    }

    if (v12 <= 0xB)
    {
      v3 = dword_27275B40C[v12];
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_37:
  v25 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_272746D0C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::make_bad_argument_status_if_null(uint64_t this, const AudioBufferList *a2)
{
  if (!a2 || (mNumberBuffers = a2->mNumberBuffers, !mNumberBuffers))
  {
LABEL_9:
    v5 = 0;
    *this = 0;
    goto LABEL_10;
  }

  mBuffers = a2->mBuffers;
  v4 = 16 * mNumberBuffers;
  if (v4)
  {
    while (mBuffers->mData && mBuffers->mDataByteSize && mBuffers->mNumberChannels)
    {
      ++mBuffers;
      v4 -= 16;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_9;
  }

LABEL_8:
  *this = 0;
  v5 = 1;
LABEL_10:
  *(this + 4) = v5;
  return this;
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::make_frame_count(uint64_t this, const AudioBufferList *a2)
{
  if (this)
  {
    v2 = *this;
    if (v2)
    {
      v3 = (this + 8);
      v4 = 16 * v2;
      for (this = 0xFFFFFFFFLL; v4; v4 -= 16)
      {
        v6 = *v3;
        v5 = v3[1];
        v3 += 4;
        v7 = (v5 >> 2) / v6;
        if (v7 >= this)
        {
          this = this;
        }

        else
        {
          this = v7;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return this;
}

void vp::vx::Voice_Processor_Interface_Adapter::DumpState(vp::vx::Voice_Processor_Interface_Adapter *this, __sFILE *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    log = vp::get_log(this);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(__p, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
      v6 = v14;
      v7 = v14;
      v8 = __p[1];
      v9 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        if (v7 >= 0)
        {
          v10 = v6;
        }

        else
        {
          v10 = v8;
        }

        v11 = __p[0];
        if (v7 >= 0)
        {
          v11 = __p;
        }

        if (v10)
        {
          v12 = " ";
        }

        else
        {
          v12 = "";
        }

        *buf = 136315394;
        v16 = v11;
        v17 = 2080;
        v18 = v12;
        _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_ERROR, "%s%sfile handle is null", buf, 0x16u);
        LOBYTE(v7) = v14;
      }

      if ((v7 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::GetMaxOutputPacketInfo(os_unfair_lock_s *this, AudioStreamBasicDescription *a2, AudioChannelLayout *a3, unsigned int *a4, unsigned int *a5, const char *a6)
{
  v80 = *MEMORY[0x277D85DE8];
  v71[0] = this + 10;
  v71[1] = this + 11;
  std::lock[abi:ne200100]<caulk::mach::unfair_lock,caulk::concurrent::shared_spin_lock>(this + 10, &this[11]);
  if (a2->mSampleRate <= 0.0)
  {
    log = vp::get_log(v11);
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    v32 = buf;
    log_context_info = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v34 = buf[23];
    v35 = buf[23];
    v36 = *&buf[8];
    v37 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      if (v35 >= 0)
      {
        v38 = v34;
      }

      else
      {
        v38 = v36;
      }

      if (v35 < 0)
      {
        v32 = *buf;
      }

      if (v38)
      {
        v39 = " ";
      }

      else
      {
        v39 = "";
      }

      caulk::make_string("output sample rate %f is not supported", v73, *&a2->mSampleRate);
      if (v74 >= 0)
      {
        v40 = v73;
      }

      else
      {
        v40 = *v73;
      }

      LODWORD(__p[0]) = 136315906;
      *(__p + 4) = v32;
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = v39;
      HIWORD(__p[2]) = 2080;
      __p[3] = v40;
      LOWORD(v76) = 2080;
      *(&v76 + 2) = "bad argument";
      _os_log_impl(&dword_2724B4000, v37, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", __p, 0x2Au);
      if (v74 < 0)
      {
        operator delete(*v73);
      }

      LOBYTE(v35) = buf[23];
    }

    if ((v35 & 0x80) == 0)
    {
      goto LABEL_69;
    }

LABEL_68:
    operator delete(*buf);
LABEL_69:
    v27 = 0;
LABEL_70:
    v30 = dword_27275B40C[v27];
    goto LABEL_71;
  }

  mChannelsPerFrame = a2->mChannelsPerFrame;
  v13 = vp::get_log(v11);
  if (!mChannelsPerFrame)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    v41 = buf;
    v42 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v43 = buf[23];
    v44 = buf[23];
    v45 = *&buf[8];
    v46 = vp::get_log(v42);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      if (v44 >= 0)
      {
        v47 = v43;
      }

      else
      {
        v47 = v45;
      }

      if (v44 < 0)
      {
        v41 = *buf;
      }

      if (v47)
      {
        v48 = " ";
      }

      else
      {
        v48 = "";
      }

      caulk::make_string("output channel count is zero", v73);
      if (v74 >= 0)
      {
        v49 = v73;
      }

      else
      {
        v49 = *v73;
      }

      LODWORD(__p[0]) = 136315906;
      *(__p + 4) = v41;
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = v48;
      HIWORD(__p[2]) = 2080;
      __p[3] = v49;
      LOWORD(v76) = 2080;
      *(&v76 + 2) = "bad argument";
      _os_log_impl(&dword_2724B4000, v46, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", __p, 0x2Au);
      if (v74 < 0)
      {
        operator delete(*v73);
      }

      LOBYTE(v44) = buf[23];
    }

    if ((v44 & 0x80) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = vp::get_log_context_info(__p, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v15 = HIBYTE(__p[2]);
    v16 = SHIBYTE(__p[2]);
    v17 = __p[1];
    v18 = vp::get_log(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (v16 >= 0)
      {
        v19 = v15;
      }

      else
      {
        v19 = v17;
      }

      v20 = __p[0];
      if (v16 >= 0)
      {
        v20 = __p;
      }

      if (v19)
      {
        v21 = " ";
      }

      else
      {
        v21 = "";
      }

      *buf = 136315394;
      *&buf[4] = v20;
      *&buf[12] = 2080;
      *&buf[14] = v21;
      _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_DEFAULT, "%s%sgetting maximum number of output frames", buf, 0x16u);
      LOBYTE(v16) = HIBYTE(__p[2]);
    }

    if ((v16 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  if (LOBYTE(this[12]._os_unfair_lock_opaque) == 1)
  {
    v22 = (*(**&this[2]._os_unfair_lock_opaque + 64))(__p);
    if ((BYTE4(__p[0]) & 1) == 0)
    {
      v27 = __p[0];
      v52 = vp::get_log(v22);
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_93;
      }

      a2 = buf;
      v53 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
      v54 = buf[23];
      v55 = buf[23];
      v56 = *&buf[8];
      v57 = vp::get_log(v53);
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_91;
      }

      if (v55 >= 0)
      {
        v58 = v54;
      }

      else
      {
        v58 = v56;
      }

      if (v55 < 0)
      {
        a2 = *buf;
      }

      if (v58)
      {
        a6 = " ";
      }

      else
      {
        a6 = "";
      }

      caulk::make_string("failed to begin uplink initialization", v73);
      if (v74 >= 0)
      {
        v59 = v73;
      }

      else
      {
        v59 = *v73;
      }

      if (v27 - 1 > 0xA)
      {
        v60 = "bad argument";
      }

      else
      {
        v60 = off_279E4A470[v27 - 1];
      }

      goto LABEL_88;
    }
  }

  LOBYTE(this[12]._os_unfair_lock_opaque) = 0;
  v23 = *&this[2]._os_unfair_lock_opaque;
  __p[0] = a2;
  __p[1] = 40;
  v24 = (*(*v23 + 40))(buf);
  v25 = *buf >> 8;
  if (buf[4])
  {
    v26 = 1;
  }

  else
  {
    v26 = buf[4];
  }

  if (buf[4])
  {
    v27 = 0;
  }

  else
  {
    v27 = *buf;
  }

  if ((v26 & 1) == 0)
  {
    v27 = v27 | (v25 << 8);
    v61 = vp::get_log(v24);
    if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_93;
    }

    a2 = buf;
    v62 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v63 = buf[23];
    v55 = buf[23];
    v64 = *&buf[8];
    v57 = vp::get_log(v62);
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_91;
    }

    if (v55 >= 0)
    {
      v65 = v63;
    }

    else
    {
      v65 = v64;
    }

    if (v55 < 0)
    {
      a2 = *buf;
    }

    if (v65)
    {
      a6 = " ";
    }

    else
    {
      a6 = "";
    }

    caulk::make_string("failed to set uplink client near end voice output stream format", v73);
    if (v74 >= 0)
    {
      v59 = v73;
    }

    else
    {
      v59 = *v73;
    }

    if (v27 - 1 > 0xA)
    {
      goto LABEL_126;
    }

    v60 = off_279E4A470[v27 - 1];
LABEL_88:
    LODWORD(__p[0]) = 136315906;
    *(__p + 4) = a2;
    WORD2(__p[1]) = 2080;
    *(&__p[1] + 6) = a6;
    HIWORD(__p[2]) = 2080;
    __p[3] = v59;
    LOWORD(v76) = 2080;
    *(&v76 + 2) = v60;
    _os_log_impl(&dword_2724B4000, v57, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", __p, 0x2Au);
    if (v74 < 0)
    {
      operator delete(*v73);
    }

    LOBYTE(v55) = buf[23];
    goto LABEL_91;
  }

  v28 = (*(**&this[2]._os_unfair_lock_opaque + 72))(__p);
  if (BYTE4(__p[0]))
  {
    v29 = v25;
  }

  else
  {
    v27 = __p[0];
    v29 = LODWORD(__p[0]) >> 8;
  }

  if ((BYTE4(__p[0]) & 1 & v26) == 0)
  {
    v27 = v27 | (v29 << 8);
    v66 = vp::get_log(v28);
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_93;
    }

    a2 = buf;
    v67 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v68 = buf[23];
    v55 = buf[23];
    v69 = *&buf[8];
    v57 = vp::get_log(v67);
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
LABEL_91:
      if ((v55 & 0x80) != 0)
      {
        operator delete(*buf);
      }

LABEL_93:
      if (v27 > 0xB)
      {
        v30 = 0;
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    if (v55 >= 0)
    {
      v70 = v68;
    }

    else
    {
      v70 = v69;
    }

    if (v55 < 0)
    {
      a2 = *buf;
    }

    if (v70)
    {
      a6 = " ";
    }

    else
    {
      a6 = "";
    }

    caulk::make_string("failed to end uplink initialization", v73);
    if (v74 >= 0)
    {
      v59 = v73;
    }

    else
    {
      v59 = *v73;
    }

    if (v27 - 1 > 0xA)
    {
      v60 = "bad argument";
    }

    else
    {
      v60 = off_279E4A470[v27 - 1];
    }

    goto LABEL_88;
  }

  LOBYTE(this[12]._os_unfair_lock_opaque) = 1;
  if (LOBYTE(this[34]._os_unfair_lock_opaque) == 1)
  {
    LOBYTE(this[34]._os_unfair_lock_opaque) = 0;
  }

  *&this[36]._os_unfair_lock_opaque = a2->mSampleRate;
  v72 = 0;
  *buf = &v72;
  *&buf[8] = xmmword_2727567B0;
  (*(**&this[2]._os_unfair_lock_opaque + 24))(__p);
  if ((BYTE4(__p[0]) & 1) == 0)
  {
    v71[2] = 0;
    v77 = 0u;
    v78 = 0u;
    v76 = 0u;
    memset(__p, 0, sizeof(__p));
    v57 = MEMORY[0x277D86220];
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    *v73 = 134217984;
    *&v73[4] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v60 = "bad argument";
    goto LABEL_88;
  }

  v30 = 0;
  *a4 = v72;
  *a5 = 4;
  *a6 = 0;
LABEL_71:
  std::scoped_lock<caulk::mach::unfair_lock,caulk::concurrent::shared_spin_lock>::~scoped_lock[abi:ne200100](v71);
  v50 = *MEMORY[0x277D85DE8];
  return v30;
}

void sub_2727477EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::scoped_lock<caulk::mach::unfair_lock,caulk::concurrent::shared_spin_lock>::~scoped_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::lock[abi:ne200100]<caulk::mach::unfair_lock,caulk::concurrent::shared_spin_lock>(os_unfair_lock_t lock, atomic_uint *a2)
{
  while (1)
  {
    os_unfair_lock_lock(lock);
    v4 = 0;
    atomic_compare_exchange_strong(a2, &v4, 0x80000000);
    if (!v4)
    {
      break;
    }

    os_unfair_lock_unlock(lock);
    sched_yield();
    caulk::concurrent::shared_spin_lock::lock(a2);
    if (os_unfair_lock_trylock(lock))
    {
      break;
    }

    caulk::concurrent::shared_spin_lock::unlock(a2);
    sched_yield();
  }
}

uint64_t std::scoped_lock<caulk::mach::unfair_lock,caulk::concurrent::shared_spin_lock>::~scoped_lock[abi:ne200100](uint64_t a1)
{
  os_unfair_lock_unlock(*a1);
  caulk::concurrent::shared_spin_lock::unlock(*(a1 + 8));
  return a1;
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::SetProperty(vp::vx::Voice_Processor_Interface_Adapter *this, int a2, void *a3, unsigned int a4)
{
  v12 = a3;
  if (!(vp::vx::legacy_cast_noexcept<vp::vx::Property_ID>(a2) >> 32))
  {
    return 2003332927;
  }

  if (!a3)
  {
    return 1650553447;
  }

  if (!a4)
  {
    return 561211770;
  }

  if (a2 == 32798)
  {
    v8 = &v12;
  }

  else
  {
    v8 = a3;
  }

  vp::Blob::Blob(&v11, v8, a4);
  caulk::concurrent::shared_spin_lock::lock_shared(this + 11);
  (*(**(this + 1) + 40))(&v13);
  if ((v13 & 0x100000000) != 0 || v13 > 0xB)
  {
    v9 = 0;
  }

  else
  {
    v9 = dword_27275B40C[v13];
  }

  caulk::concurrent::shared_spin_lock::unlock_shared(this + 11);
  return v9;
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::SetDownLinkVolume(vp::vx::Voice_Processor_Interface_Adapter *this, float a2)
{
  v2 = 1937006964;
  v8 = a2;
  v3 = (this + 44);
  v4 = atomic_load(this + 11);
  if (v4 <= 0x7FFFFFFE)
  {
    v6 = v4;
    while (1)
    {
      atomic_compare_exchange_strong(v3, &v6, v4 + 1);
      if (v6 == v4)
      {
        break;
      }

      v4 = v6;
      if (v6 >= 0x7FFFFFFF)
      {
        return v2;
      }
    }

    vp::Blob::Blob(&v10, &v8, 4);
    (*(**(this + 1) + 40))(&v9);
    if ((v9 & 0x100000000) != 0 || v9 > 0xB)
    {
      v2 = 0;
    }

    else
    {
      v2 = dword_27275B40C[v9];
    }

    caulk::concurrent::shared_spin_lock::unlock_shared(v3);
  }

  return v2;
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::AppendSpeakerTelemetryData(vp::vx::Voice_Processor_Interface_Adapter *this, const AudioBufferList *a2, unsigned int a3, const AudioTimeStamp *a4)
{
  v4 = 1937006964;
  v5 = (this + 44);
  v6 = atomic_load(this + 11);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = v6;
    while (1)
    {
      atomic_compare_exchange_strong(v5, &v7, v6 + 1);
      if (v7 == v6)
      {
        break;
      }

      v6 = v7;
      if (v7 >= 0x7FFFFFFF)
      {
        return v4;
      }
    }

    (*(**(this + 1) + 88))(&v9);
    if ((v9 & 0x100000000) != 0 || v9 > 0xB)
    {
      v4 = 0;
    }

    else
    {
      v4 = dword_27275B40C[v9];
    }

    caulk::concurrent::shared_spin_lock::unlock_shared(v5);
  }

  return v4;
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::ProcessDownlinkAudio(vp::vx::Voice_Processor_Interface_Adapter *this, AudioBufferList *a2, AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, unsigned int a6, const AudioTimeStamp *a7)
{
  v108 = *MEMORY[0x277D85DE8];
  v7 = 1937006964;
  v94 = (this + 44);
  v8 = atomic_load(this + 11);
  if (v8 <= 0x7FFFFFFE)
  {
    v13 = v8;
    while (1)
    {
      atomic_compare_exchange_strong(this + 11, &v13, v8 + 1);
      if (v13 == v8)
      {
        break;
      }

      v8 = v13;
      if (v13 >= 0x7FFFFFFF)
      {
        goto LABEL_78;
      }
    }

    bad_argument_status_if_null = vp::vx::Voice_Processor_Interface_Adapter::make_bad_argument_status_if_null(buf, a5);
    if ((buf[4] & 1) == 0)
    {
      v17 = *buf;
      log = vp::get_log(bad_argument_status_if_null);
      if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      v19 = v100;
      log_context_info = vp::get_log_context_info(v100, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
      v21 = HIBYTE(v101);
      v22 = SHIBYTE(v101);
      v23 = *&v100[8];
      v24 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        if (v22 >= 0)
        {
          v25 = v21;
        }

        else
        {
          v25 = v23;
        }

        if (v22 < 0)
        {
          v19 = *v100;
        }

        if (v25)
        {
          v26 = " ";
        }

        else
        {
          v26 = "";
        }

        caulk::make_string("downlink hardware output audio buffer list is null", &__p, v94, 1);
        if ((v99 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v17 - 1 > 0xA)
        {
          v28 = "bad argument";
        }

        else
        {
          v28 = off_279E4A470[v17 - 1];
        }

        *buf = 136315906;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = v26;
        *&buf[22] = 2080;
        *&buf[24] = p_p;
        LOWORD(v106) = 2080;
        *(&v106 + 2) = v28;
        _os_log_impl(&dword_2724B4000, v24, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", buf, 0x2Au);
        if (v99 < 0)
        {
          operator delete(__p);
        }

        LOBYTE(v22) = HIBYTE(v101);
      }

      if ((v22 & 0x80) == 0)
      {
        goto LABEL_66;
      }

LABEL_64:
      v40 = *v100;
      goto LABEL_65;
    }

    if (*(*(**(this + 1) + 16))(*(this + 1)) == 3)
    {
      v15 = 0;
      v16 = 1;
    }

    else
    {
      v29 = (*(**(this + 1) + 88))(buf);
      v30 = *buf >> 8;
      if (buf[4])
      {
        v31 = 1;
      }

      else
      {
        v31 = buf[4];
      }

      if (buf[4])
      {
        v15 = 0;
      }

      else
      {
        v15 = buf[0];
      }

      if ((v31 & 1) == 0)
      {
        v17 = v15 | (v30 << 8);
        v69 = vp::get_log(v29);
        if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_66;
        }

        v49 = v100;
        v70 = vp::get_log_context_info(v100, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
        v71 = HIBYTE(v101);
        v72 = *&v100[8];
        v53 = vp::get_log(v70);
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_181;
        }

        if ((v71 & 0x80u) == 0)
        {
          v73 = v71;
        }

        else
        {
          v73 = v72;
        }

        if (v101 < 0)
        {
          v49 = *v100;
        }

        if (v73)
        {
          v55 = " ";
        }

        else
        {
          v55 = "";
        }

        caulk::make_string("failed to write downlink default audio input signal", &__p, v94, 1);
        if ((v99 & 0x80u) == 0)
        {
          v56 = &__p;
        }

        else
        {
          v56 = __p;
        }

        if (v17 - 1 > 0xA)
        {
          v57 = "bad argument";
        }

        else
        {
          v57 = off_279E4A470[v17 - 1];
        }

        goto LABEL_179;
      }

      v32 = (*(**(this + 1) + 88))(buf);
      if (buf[4])
      {
        v16 = v31;
      }

      else
      {
        v16 = buf[4];
      }

      if ((buf[4] & 1) == 0)
      {
        v15 = buf[0];
        v30 = *buf >> 8;
      }

      if ((v16 & 1) == 0)
      {
        v17 = v15 | (v30 << 8);
        v74 = vp::get_log(v32);
        if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_66;
        }

        v49 = v100;
        v75 = vp::get_log_context_info(v100, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
        v76 = HIBYTE(v101);
        v77 = *&v100[8];
        v53 = vp::get_log(v75);
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_181;
        }

        if ((v76 & 0x80u) == 0)
        {
          v78 = v76;
        }

        else
        {
          v78 = v77;
        }

        if (v101 < 0)
        {
          v49 = *v100;
        }

        if (v78)
        {
          v55 = " ";
        }

        else
        {
          v55 = "";
        }

        caulk::make_string("failed to write downlink system audio input signal", &__p, v94, 1);
        if ((v99 & 0x80u) == 0)
        {
          v56 = &__p;
        }

        else
        {
          v56 = __p;
        }

        if (v17 - 1 > 0xA)
        {
          v57 = "bad argument";
        }

        else
        {
          v57 = off_279E4A470[v17 - 1];
        }

        goto LABEL_179;
      }

      v33 = (*(**(this + 1) + 88))(buf);
      if (buf[4])
      {
        LODWORD(v7) = v30;
      }

      else
      {
        v16 = buf[4];
        v15 = buf[0];
        LODWORD(v7) = *buf >> 8;
      }

      if ((v16 & 1) == 0)
      {
        v17 = v15 | (v7 << 8);
        v79 = vp::get_log(v33);
        if (!os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_66;
        }

        v49 = v100;
        v80 = vp::get_log_context_info(v100, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
        v81 = HIBYTE(v101);
        v82 = *&v100[8];
        v53 = vp::get_log(v80);
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_181;
        }

        if ((v81 & 0x80u) == 0)
        {
          v83 = v81;
        }

        else
        {
          v83 = v82;
        }

        if (v101 < 0)
        {
          v49 = *v100;
        }

        if (v83)
        {
          v55 = " ";
        }

        else
        {
          v55 = "";
        }

        caulk::make_string("failed to write downlink other audio input signal", &__p, v94, 1);
        if ((v99 & 0x80u) == 0)
        {
          v56 = &__p;
        }

        else
        {
          v56 = __p;
        }

        if (v17 - 1 > 0xA)
        {
          v57 = "bad argument";
        }

        else
        {
          v57 = off_279E4A470[v17 - 1];
        }

LABEL_179:
        *buf = 136315906;
        *&buf[4] = v49;
        *&buf[12] = 2080;
        *&buf[14] = v55;
        *&buf[22] = 2080;
        *&buf[24] = v56;
        LOWORD(v106) = 2080;
        *(&v106 + 2) = v57;
        _os_log_impl(&dword_2724B4000, v53, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", buf, 0x2Au);
        if (v99 < 0)
        {
          operator delete(__p);
        }

LABEL_181:
        if ((SHIBYTE(v101) & 0x80000000) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_64;
      }
    }

    v34 = (*(**(this + 1) + 128))(buf);
    if (buf[4])
    {
      if (v16)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v15 = buf[0];
      LODWORD(v7) = *buf >> 8;
      if ((v16 & 1) == 0)
      {
LABEL_46:
        if (v16)
        {
          v35 = *&a7->mRateScalar;
          *buf = *&a7->mSampleTime;
          *&buf[16] = v35;
          v36 = *&a7->mSMPTETime.mHours;
          v106 = *&a7->mSMPTETime.mSubframes;
          v107 = v36;
          v37 = (*(**(this + 1) + 104))(*(this + 1), 0, a5, buf, a6 | 0x100000000);
          if ((v37 & 0x100000000) == 0)
          {
            v58 = v37;
            v59 = vp::get_log(v37);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              v60 = &__p;
              v61 = vp::get_log_context_info(&__p, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
              v62 = v99;
              v63 = v98;
              v64 = vp::get_log(v61);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                if ((v62 & 0x80u) == 0)
                {
                  v65 = v62;
                }

                else
                {
                  v65 = v63;
                }

                if ((v99 & 0x80u) != 0)
                {
                  v60 = __p;
                }

                if (v65)
                {
                  v66 = " ";
                }

                else
                {
                  v66 = "";
                }

                caulk::make_string("failed to read downlink hardware output signal", v95, v94, 1);
                if (v96 >= 0)
                {
                  v67 = v95;
                }

                else
                {
                  v67 = v95[0];
                }

                if (v58 - 1 > 0xA)
                {
                  v68 = "bad argument";
                }

                else
                {
                  v68 = off_279E4A470[v58 - 1];
                }

                *v100 = 136315906;
                *&v100[4] = v60;
                *&v100[12] = 2080;
                *&v100[14] = v66;
                v101 = 2080;
                v102 = v67;
                v103 = 2080;
                v104 = v68;
                _os_log_impl(&dword_2724B4000, v64, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", v100, 0x2Au);
                if (v96 < 0)
                {
                  operator delete(v95[0]);
                }
              }

              if (v99 < 0)
              {
                operator delete(__p);
              }
            }

            v17 = v58;
            goto LABEL_66;
          }

          if (!(*(**(this + 1) + 144))(*(this + 1)) || ((v38 = (*(**(this + 1) + 80))(v100), (v100[4] & 1) != 0) ? (v39 = v7) : (v15 = v100[0], v39 = *v100 >> 8), (v100[4] & 1 & v16) != 0))
          {
            if ((*(**(this + 1) + 152))(*(this + 1)))
            {
              if (*(this + 92) & 1) != 0 || (vp::utility::Audio_Buffer_Fader::fade_in_over_few_frames((this + 80), a5), (*(this + 92)))
              {
                vp::utility::Audio_Buffer_Fader::cache_audio_buffers(*(this + 12), a5);
              }

              v7 = 0;
              *(this + 22) = a6;
            }

            else
            {
              v7 = 0;
            }

LABEL_77:
            caulk::concurrent::shared_spin_lock::unlock_shared(v94);
            goto LABEL_78;
          }

          v17 = v15 | (v39 << 8);
          v84 = vp::get_log(v38);
          if (!os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_66;
          }

          v85 = &__p;
          v86 = vp::get_log_context_info(&__p, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
          v87 = v99;
          v88 = v98;
          v89 = vp::get_log(v86);
          if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
          {
            if ((v87 & 0x80u) == 0)
            {
              v90 = v87;
            }

            else
            {
              v90 = v88;
            }

            if ((v99 & 0x80u) != 0)
            {
              v85 = __p;
            }

            if (v90)
            {
              v91 = " ";
            }

            else
            {
              v91 = "";
            }

            caulk::make_string("failed to write uplink hardware DSP reference input signal", v95, v94, 1);
            if (v96 >= 0)
            {
              v92 = v95;
            }

            else
            {
              v92 = v95[0];
            }

            if (v17 - 1 > 0xA)
            {
              v93 = "bad argument";
            }

            else
            {
              v93 = off_279E4A470[v17 - 1];
            }

            *v100 = 136315906;
            *&v100[4] = v85;
            *&v100[12] = 2080;
            *&v100[14] = v91;
            v101 = 2080;
            v102 = v92;
            v103 = 2080;
            v104 = v93;
            _os_log_impl(&dword_2724B4000, v89, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", v100, 0x2Au);
            if (v96 < 0)
            {
              operator delete(v95[0]);
            }
          }

          if ((v99 & 0x80000000) == 0)
          {
LABEL_66:
            (*(**(this + 1) + 136))(buf);
            if ((*(**(this + 1) + 152))(*(this + 1)))
            {
              *(this + 20) = 0;
              v41 = this + 80;
              v41[12] = 0;
              vp::utility::Audio_Buffer_Fader::fade_out_over_one_frame(v41, a5);
            }

            else if (a5)
            {
              mNumberBuffers = a5->mNumberBuffers;
              if (mNumberBuffers)
              {
                v43 = 0;
                p_mData = &a5->mBuffers[0].mData;
                do
                {
                  if (*p_mData)
                  {
                    v45 = *(p_mData - 1);
                    if (v45)
                    {
                      bzero(*p_mData, v45);
                      mNumberBuffers = a5->mNumberBuffers;
                    }
                  }

                  ++v43;
                  p_mData += 2;
                }

                while (v43 < mNumberBuffers);
              }
            }

            v7 = 0;
            if (v17 <= 0xB)
            {
              v7 = dword_27275B40C[v17];
            }

            goto LABEL_77;
          }

          v40 = __p;
LABEL_65:
          operator delete(v40);
          goto LABEL_66;
        }

        v17 = v15 | (v7 << 8);
        v48 = vp::get_log(v34);
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_66;
        }

        v49 = v100;
        v50 = vp::get_log_context_info(v100, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
        v51 = HIBYTE(v101);
        v52 = *&v100[8];
        v53 = vp::get_log(v50);
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_181;
        }

        if ((v51 & 0x80u) == 0)
        {
          v54 = v51;
        }

        else
        {
          v54 = v52;
        }

        if (v101 < 0)
        {
          v49 = *v100;
        }

        if (v54)
        {
          v55 = " ";
        }

        else
        {
          v55 = "";
        }

        caulk::make_string("failed to run downlink DSP", &__p, v94, 1);
        if ((v99 & 0x80u) == 0)
        {
          v56 = &__p;
        }

        else
        {
          v56 = __p;
        }

        if (v17 - 1 > 0xA)
        {
          v57 = "bad argument";
        }

        else
        {
          v57 = off_279E4A470[v17 - 1];
        }

        goto LABEL_179;
      }
    }

    v16 = buf[4];
    goto LABEL_46;
  }

LABEL_78:
  v46 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::Process(vp::vx::Voice_Processor_Interface_Adapter *this, const AudioBufferList *a2, const AudioTimeStamp *a3, AudioBufferList *a4, AudioTimeStamp *a5, unsigned int *a6, void *a7, unsigned int *a8, AudioStreamPacketDescription *a9)
{
  v102 = *MEMORY[0x277D85DE8];
  v9 = 1937006964;
  v89 = (this + 44);
  v10 = atomic_load(this + 11);
  if (v10 <= 0x7FFFFFFE)
  {
    v17 = v10;
    while (1)
    {
      atomic_compare_exchange_strong(this + 11, &v17, v10 + 1);
      if (v17 == v10)
      {
        break;
      }

      v10 = v17;
      if (v17 >= 0x7FFFFFFF)
      {
        goto LABEL_92;
      }
    }

    v19 = *&a3->mSampleTime;
    v18 = *&a3->mRateScalar;
    v20 = *&a3->mSMPTETime.mHours;
    *&a5->mSMPTETime.mSubframes = *&a3->mSMPTETime.mSubframes;
    *&a5->mSMPTETime.mHours = v20;
    *&a5->mSampleTime = v19;
    *&a5->mRateScalar = v18;
    a5->mFlags &= ~1u;
    a5->mSampleTime = 0.0;
    bad_argument_status_if_null = vp::vx::Voice_Processor_Interface_Adapter::make_bad_argument_status_if_null(buf, a2);
    if (buf[4])
    {
      v22 = vp::vx::Voice_Processor_Interface_Adapter::make_bad_argument_status_if_null(buf, a4);
      v24 = *buf >> 8;
      if (buf[4])
      {
        v25 = 1;
      }

      else
      {
        v25 = buf[4];
      }

      if (buf[4])
      {
        v26 = 0;
      }

      else
      {
        v26 = buf[0];
      }

      if (v25)
      {
        frame_count = vp::vx::Voice_Processor_Interface_Adapter::make_frame_count(a2, v23);
        v28 = (*(**(this + 1) + 80))(buf);
        if (buf[4])
        {
          v29 = v25;
        }

        else
        {
          v29 = buf[4];
        }

        if (buf[4])
        {
          v30 = v24;
        }

        else
        {
          v26 = buf[0];
          v30 = *buf >> 8;
        }

        if ((v29 & 1) == 0)
        {
          v35 = v26 | (v30 << 8);
          log = vp::get_log(v28);
          if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_75;
          }

          v75 = v94;
          log_context_info = vp::get_log_context_info(v94, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
          v77 = HIBYTE(v95);
          v78 = *&v94[8];
          v79 = vp::get_log(log_context_info);
          if (!os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_150;
          }

          if ((v77 & 0x80u) == 0)
          {
            v80 = v77;
          }

          else
          {
            v80 = v78;
          }

          if (v95 < 0)
          {
            v75 = *v94;
          }

          if (v80)
          {
            v81 = " ";
          }

          else
          {
            v81 = "";
          }

          caulk::make_string("failed to write uplink microphone input signal", __p, v89, 1);
          if ((v93 & 0x80u) == 0)
          {
            v82 = __p;
          }

          else
          {
            v82 = __p[0];
          }

          if (v35 - 1 > 0xA)
          {
            v83 = "bad argument";
          }

          else
          {
            v83 = off_279E4A470[v35 - 1];
          }

          goto LABEL_148;
        }

        v31 = (*(**(this + 1) + 112))(buf);
        if (buf[4])
        {
          v32 = v30;
        }

        else
        {
          v26 = buf[0];
          v32 = *buf >> 8;
        }

        if ((buf[4] & 1 & v29) != 0)
        {
          v100 = 0u;
          v101 = 0u;
          memset(buf, 0, sizeof(buf));
          v33 = (*(**(this + 1) + 96))(*(this + 1), 4, a4, buf, 0);
          v35 = v33;
          if ((v33 & 0x100000000) != 0)
          {
            *a6 = v33;
            mSampleTime = a3->mSampleTime;
            if ((a3->mFlags & 1) == 0)
            {
              v34.n128_f64[0] = 0.0;
LABEL_33:
              if ((*(**(this + 1) + 152))(*(this + 1), v34))
              {
                if (*(this + 68) & 1) != 0 || (vp::utility::Audio_Buffer_Fader::fade_in_over_few_frames((this + 56), a4), (*(this + 68)))
                {
                  vp::utility::Audio_Buffer_Fader::cache_audio_buffers(*(this + 9), a4);
                }

                *(this + 16) = *a6;
              }

              v9 = 0;
              a4->mBuffers[0].mDataByteSize = 4 * *a6;
LABEL_91:
              caulk::concurrent::shared_spin_lock::unlock_shared(v89);
              goto LABEL_92;
            }

            if (*(this + 112) == (a3->mFlags & 1) && mSampleTime == *(this + 13))
            {
              if (*(this + 136))
              {
                v37 = *(this + 16);
                goto LABEL_32;
              }
            }

            else
            {
              *(this + 13) = mSampleTime;
              *(this + 112) = 1;
            }

            v37 = mSampleTime / *(this + 15) * *(this + 18);
            *(this + 16) = v37;
            *(this + 136) = 1;
LABEL_32:
            a5->mFlags |= 1u;
            a5->mSampleTime = ceil(v37);
            v38 = *(this + 13) + frame_count;
            *(this + 13) = v38;
            LODWORD(v38) = *a6;
            v34.n128_f64[0] = *(this + 16) + *&v38;
            *(this + 16) = v34.n128_u64[0];
            goto LABEL_33;
          }

          v50 = HIDWORD(v33) & 1;
          v51 = vp::get_log(v33);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v52 = __p;
            v53 = vp::get_log_context_info(__p, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
            v54 = v93;
            v55 = __p[1];
            v56 = vp::get_log(v53);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              if ((v54 & 0x80u) == 0)
              {
                v57 = v54;
              }

              else
              {
                v57 = v55;
              }

              if ((v93 & 0x80u) != 0)
              {
                v52 = __p[0];
              }

              if (v57)
              {
                v58 = " ";
              }

              else
              {
                v58 = "";
              }

              caulk::make_string("failed to read uplink client output signal", v90, v89, 1);
              if (v91 >= 0)
              {
                v59 = v90;
              }

              else
              {
                v59 = v90[0];
              }

              if (v35 - 1 > 0xA)
              {
                v60 = "bad argument";
              }

              else
              {
                v60 = off_279E4A470[v35 - 1];
              }

              *v94 = 136315906;
              *&v94[4] = v52;
              *&v94[12] = 2080;
              *&v94[14] = v58;
              v95 = 2080;
              v96 = v59;
              v97 = 2080;
              v98 = v60;
              _os_log_impl(&dword_2724B4000, v56, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", v94, 0x2Au);
              if (v91 < 0)
              {
                operator delete(v90[0]);
              }
            }

            if (v93 < 0)
            {
              operator delete(__p[0]);
            }
          }

LABEL_76:
          (*(**(this + 1) + 120))(buf);
          if ((*(**(this + 1) + 152))(*(this + 1)))
          {
            *(this + 14) = 0;
            *(this + 68) = 0;
            vp::utility::Audio_Buffer_Fader::fade_out_over_one_frame(this + 56, a4);
            if (*(this + 136) == 1)
            {
              v61 = ceil(*(this + 16));
              a5->mFlags |= 1u;
              a5->mSampleTime = v61;
              *(this + 136) = 0;
            }
          }

          else
          {
            mNumberBuffers = a4->mNumberBuffers;
            if (mNumberBuffers)
            {
              v63 = 0;
              p_mData = &a4->mBuffers[0].mData;
              do
              {
                if (*p_mData)
                {
                  v65 = *(p_mData - 1);
                  if (v65)
                  {
                    bzero(*p_mData, v65);
                    mNumberBuffers = a4->mNumberBuffers;
                  }
                }

                ++v63;
                p_mData += 2;
              }

              while (v63 < mNumberBuffers);
            }
          }

          a4->mBuffers[0].mDataByteSize = 4 * *a6;
          if (v35 > 0xB)
          {
            v66 = 1;
          }

          else
          {
            v66 = v50;
          }

          if (v66)
          {
            v9 = 0;
          }

          else
          {
            v9 = dword_27275B40C[v35];
          }

          goto LABEL_91;
        }

        v35 = v26 | (v32 << 8);
        v84 = vp::get_log(v31);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v75 = v94;
          v85 = vp::get_log_context_info(v94, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
          v86 = HIBYTE(v95);
          v87 = *&v94[8];
          v79 = vp::get_log(v85);
          if (!os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_150;
          }

          if ((v86 & 0x80u) == 0)
          {
            v88 = v86;
          }

          else
          {
            v88 = v87;
          }

          if (v95 < 0)
          {
            v75 = *v94;
          }

          if (v88)
          {
            v81 = " ";
          }

          else
          {
            v81 = "";
          }

          caulk::make_string("failed to run uplink DSP", __p, v89, 1);
          if ((v93 & 0x80u) == 0)
          {
            v82 = __p;
          }

          else
          {
            v82 = __p[0];
          }

          if (v35 - 1 > 0xA)
          {
            v83 = "bad argument";
          }

          else
          {
            v83 = off_279E4A470[v35 - 1];
          }

LABEL_148:
          *buf = 136315906;
          *&buf[4] = v75;
          *&buf[12] = 2080;
          *&buf[14] = v81;
          *&buf[22] = 2080;
          *&buf[24] = v82;
          LOWORD(v100) = 2080;
          *(&v100 + 2) = v83;
          _os_log_impl(&dword_2724B4000, v79, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", buf, 0x2Au);
          if (v93 < 0)
          {
            operator delete(__p[0]);
          }

LABEL_150:
          if ((SHIBYTE(v95) & 0x80000000) == 0)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        }

LABEL_75:
        LOBYTE(v50) = 0;
        goto LABEL_76;
      }

      v35 = v26 | (v24 << 8);
      v69 = vp::get_log(v22);
      if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }

      v40 = v94;
      v70 = vp::get_log_context_info(v94, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
      v71 = HIBYTE(v95);
      v43 = SHIBYTE(v95);
      v72 = *&v94[8];
      v45 = vp::get_log(v70);
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
LABEL_73:
        if ((v43 & 0x80) != 0)
        {
LABEL_74:
          operator delete(*v94);
          goto LABEL_75;
        }

        goto LABEL_75;
      }

      if (v43 >= 0)
      {
        v73 = v71;
      }

      else
      {
        v73 = v72;
      }

      if (v43 < 0)
      {
        v40 = *v94;
      }

      if (v73)
      {
        v47 = " ";
      }

      else
      {
        v47 = "";
      }

      caulk::make_string("uplink client output audio buffer list is null", __p, v89, 1);
      if ((v93 & 0x80u) == 0)
      {
        v48 = __p;
      }

      else
      {
        v48 = __p[0];
      }

      if (v35 - 1 > 0xA)
      {
        v49 = "bad argument";
      }

      else
      {
        v49 = off_279E4A470[v35 - 1];
      }
    }

    else
    {
      v35 = *buf;
      v39 = vp::get_log(bad_argument_status_if_null);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }

      v40 = v94;
      v41 = vp::get_log_context_info(v94, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
      v42 = HIBYTE(v95);
      v43 = SHIBYTE(v95);
      v44 = *&v94[8];
      v45 = vp::get_log(v41);
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      if (v43 >= 0)
      {
        v46 = v42;
      }

      else
      {
        v46 = v44;
      }

      if (v43 < 0)
      {
        v40 = *v94;
      }

      if (v46)
      {
        v47 = " ";
      }

      else
      {
        v47 = "";
      }

      caulk::make_string("uplink microphone input audio buffer list is null", __p, v89, 1);
      if ((v93 & 0x80u) == 0)
      {
        v48 = __p;
      }

      else
      {
        v48 = __p[0];
      }

      if (v35 - 1 > 0xA)
      {
        v49 = "bad argument";
      }

      else
      {
        v49 = off_279E4A470[v35 - 1];
      }
    }

    *buf = 136315906;
    *&buf[4] = v40;
    *&buf[12] = 2080;
    *&buf[14] = v47;
    *&buf[22] = 2080;
    *&buf[24] = v48;
    LOWORD(v100) = 2080;
    *(&v100 + 2) = v49;
    _os_log_impl(&dword_2724B4000, v45, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", buf, 0x2Au);
    if (v93 < 0)
    {
      operator delete(__p[0]);
    }

    LOBYTE(v43) = HIBYTE(v95);
    goto LABEL_73;
  }

LABEL_92:
  v67 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::GetProperty(vp::vx::Voice_Processor_Interface_Adapter *this, int a2, void *a3, unsigned int a4, unsigned int *a5)
{
  if (!(vp::vx::legacy_cast_noexcept<vp::vx::Property_ID>(a2) >> 32))
  {
    return 2003332927;
  }

  if (a3)
  {
    if (!a4)
    {
      return 561211770;
    }

    vp::Mutable_Blob::Mutable_Blob(&v13, a3, a4);
    caulk::concurrent::shared_spin_lock::lock_shared(this + 11);
    (*(**(this + 1) + 24))(&v15);
    v10 = BYTE4(v15);
    if (a5 && BYTE4(v15))
    {
      *a5 = v14;
    }

    v11 = 0;
    if ((v10 & 1) == 0 && v15 <= 0xB)
    {
      v11 = dword_27275B40C[v15];
    }

    caulk::concurrent::shared_spin_lock::unlock_shared(this + 11);
    return v11;
  }

  v11 = 1650553447;
  if (a4 || !a5)
  {
    return v11;
  }

  return vp::vx::Voice_Processor_Interface_Adapter::GetPropertyInfo(this, a2, a5, 0);
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::InitializeSpeakerTelemetryInput(os_unfair_lock_s *this, const AudioStreamBasicDescription *a2, int a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v67 = a3;
  v68[0] = this + 10;
  v68[1] = this + 11;
  std::lock[abi:ne200100]<caulk::mach::unfair_lock,caulk::concurrent::shared_spin_lock>(this + 10, &this[11]);
  log = vp::get_log(v6);
  v8 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v10 = HIBYTE(v72);
    v11 = SHIBYTE(v72);
    v12 = *&__p[8];
    v13 = vp::get_log(log_context_info);
    v8 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v8)
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

      if (v14)
      {
        v16 = " ";
      }

      else
      {
        v16 = "";
      }

      *buf = 136315394;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = v16;
      _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEFAULT, "%s%sinitialize downlink speaker telemetry input", buf, 0x16u);
      LOBYTE(v11) = HIBYTE(v72);
    }

    if ((v11 & 0x80) != 0)
    {
      operator delete(*__p);
    }
  }

  mSampleRate = a2->mSampleRate;
  if (a2->mSampleRate <= 0.0)
  {
    v34 = vp::get_log(v8);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    v35 = buf;
    v36 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v37 = v77;
    v38 = v77;
    v39 = *&buf[8];
    v40 = vp::get_log(v36);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      if (v38 >= 0)
      {
        v41 = v37;
      }

      else
      {
        v41 = v39;
      }

      if (v38 < 0)
      {
        v35 = *buf;
      }

      if (v41)
      {
        v42 = " ";
      }

      else
      {
        v42 = "";
      }

      caulk::make_string("speaker telemetry input sample rate %f is not supported", v69, *&a2->mSampleRate);
      if (v70 >= 0)
      {
        v43 = v69;
      }

      else
      {
        v43 = v69[0];
      }

      *__p = 136315906;
      *&__p[4] = v35;
      *&__p[12] = 2080;
      *&__p[14] = v42;
      v72 = 2080;
      v73 = v43;
      v74 = 2080;
      v75 = "bad argument";
      _os_log_impl(&dword_2724B4000, v40, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", __p, 0x2Au);
      if (v70 < 0)
      {
        operator delete(v69[0]);
      }

      LOBYTE(v38) = v77;
    }

    if ((v38 & 0x80) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  if (!a2->mChannelsPerFrame)
  {
    v44 = vp::get_log(v8);
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    v45 = buf;
    v46 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v47 = v77;
    v48 = v77;
    v49 = *&buf[8];
    v50 = vp::get_log(v46);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
LABEL_84:
      if ((v48 & 0x80) != 0)
      {
LABEL_85:
        operator delete(*buf);
      }

LABEL_86:
      v22 = 0;
      goto LABEL_87;
    }

    if (v48 >= 0)
    {
      v51 = v47;
    }

    else
    {
      v51 = v49;
    }

    if (v48 < 0)
    {
      v45 = *buf;
    }

    if (v51)
    {
      v52 = " ";
    }

    else
    {
      v52 = "";
    }

    caulk::make_string("speaker telemetry input channel count is zero", v69);
    if (v70 >= 0)
    {
      v53 = v69;
    }

    else
    {
      v53 = v69[0];
    }

LABEL_81:
    *__p = 136315906;
    *&__p[4] = v45;
    *&__p[12] = 2080;
    *&__p[14] = v52;
    v72 = 2080;
    v73 = v53;
    v74 = 2080;
    v75 = "bad argument";
    _os_log_impl(&dword_2724B4000, v50, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", __p, 0x2Au);
    if (v70 < 0)
    {
      operator delete(v69[0]);
    }

    LOBYTE(v48) = v77;
    goto LABEL_84;
  }

  if (!a3)
  {
    v54 = vp::get_log(v8);
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    v45 = buf;
    v55 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v56 = v77;
    v48 = v77;
    v57 = *&buf[8];
    v50 = vp::get_log(v55);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_84;
    }

    if (v48 >= 0)
    {
      v58 = v56;
    }

    else
    {
      v58 = v57;
    }

    if (v48 < 0)
    {
      v45 = *buf;
    }

    if (v58)
    {
      v52 = " ";
    }

    else
    {
      v52 = "";
    }

    caulk::make_string("speaker telemetry input block size is zero", v69);
    if (v70 >= 0)
    {
      v53 = v69;
    }

    else
    {
      v53 = v69[0];
    }

    goto LABEL_81;
  }

  v18 = *&this[2]._os_unfair_lock_opaque;
  *__p = a2;
  *&__p[8] = 40;
  v19 = (*(*v18 + 40))(buf, mSampleRate);
  if (buf[4])
  {
    v20 = *&this[2]._os_unfair_lock_opaque;
    *__p = &v67;
    *&__p[8] = 4;
    v21 = (*(*v20 + 40))(buf);
    if (buf[4])
    {
      v22 = 0;
    }

    else
    {
      v22 = *buf;
    }

    if (buf[4])
    {
      goto LABEL_111;
    }

    v23 = vp::get_log(v21);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_110;
    }

    v24 = buf;
    v25 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v26 = v77;
    v27 = v77;
    v28 = *&buf[8];
    v29 = vp::get_log(v25);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_108;
    }

    if (v27 >= 0)
    {
      v30 = v26;
    }

    else
    {
      v30 = v28;
    }

    if (v27 < 0)
    {
      v24 = *buf;
    }

    if (v30)
    {
      v31 = " ";
    }

    else
    {
      v31 = "";
    }

    caulk::make_string("failed to set downlink speaker telemetry input block size", v69);
    if (v70 >= 0)
    {
      v32 = v69;
    }

    else
    {
      v32 = v69[0];
    }

    if (v22 - 1 > 0xA)
    {
      v33 = "bad argument";
    }

    else
    {
      v33 = off_279E4A470[v22 - 1];
    }

    goto LABEL_105;
  }

  v22 = *buf;
  v62 = vp::get_log(v19);
  if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_110;
  }

  v24 = buf;
  v63 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
  v64 = v77;
  v27 = v77;
  v65 = *&buf[8];
  v29 = vp::get_log(v63);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    if (v27 >= 0)
    {
      v66 = v64;
    }

    else
    {
      v66 = v65;
    }

    if (v27 < 0)
    {
      v24 = *buf;
    }

    if (v66)
    {
      v31 = " ";
    }

    else
    {
      v31 = "";
    }

    caulk::make_string("failed to set downlink speaker telemetry input stream format", v69);
    if (v70 >= 0)
    {
      v32 = v69;
    }

    else
    {
      v32 = v69[0];
    }

    if (v22 - 1 > 0xA)
    {
      v33 = "bad argument";
    }

    else
    {
      v33 = off_279E4A470[v22 - 1];
    }

LABEL_105:
    *__p = 136315906;
    *&__p[4] = v24;
    *&__p[12] = 2080;
    *&__p[14] = v31;
    v72 = 2080;
    v73 = v32;
    v74 = 2080;
    v75 = v33;
    _os_log_impl(&dword_2724B4000, v29, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", __p, 0x2Au);
    if (v70 < 0)
    {
      operator delete(v69[0]);
    }

    LOBYTE(v27) = v77;
  }

LABEL_108:
  if ((v27 & 0x80) != 0)
  {
    operator delete(*buf);
  }

LABEL_110:
  if (v22 > 0xB)
  {
LABEL_111:
    v59 = 0;
    goto LABEL_88;
  }

LABEL_87:
  v59 = dword_27275B40C[v22];
LABEL_88:
  std::scoped_lock<caulk::mach::unfair_lock,caulk::concurrent::shared_spin_lock>::~scoped_lock[abi:ne200100](v68);
  v60 = *MEMORY[0x277D85DE8];
  return v59;
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::InitializeDownlinkProcessing(uint64_t a1, double *a2, int a3, uint64_t a4, uint64_t a5)
{
  v113 = *MEMORY[0x277D85DE8];
  v102 = a3;
  v101 = a5;
  v103[0] = a1 + 40;
  v103[1] = a1 + 44;
  std::lock[abi:ne200100]<caulk::mach::unfair_lock,caulk::concurrent::shared_spin_lock>((a1 + 40), (a1 + 44));
  log = vp::get_log(v9);
  v11 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    log_context_info = vp::get_log_context_info(__p, a1, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v13 = HIBYTE(v107);
    v14 = SHIBYTE(v107);
    v15 = *&__p[8];
    v16 = vp::get_log(log_context_info);
    v11 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
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

      v18 = *__p;
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
      *&buf[12] = 2080;
      *&buf[14] = v19;
      _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_DEFAULT, "%s%sinitialize downlink inputs and outputs", buf, 0x16u);
      LOBYTE(v14) = HIBYTE(v107);
    }

    if ((v14 & 0x80) != 0)
    {
      operator delete(*__p);
    }
  }

  if (*a2 <= 0.0)
  {
    v48 = vp::get_log(v11);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_106;
    }

    v49 = buf;
    v50 = vp::get_log_context_info(buf, a1, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v51 = v112;
    v52 = v112;
    v53 = *&buf[8];
    v54 = vp::get_log(v50);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      if (v52 >= 0)
      {
        v55 = v51;
      }

      else
      {
        v55 = v53;
      }

      if (v52 < 0)
      {
        v49 = *buf;
      }

      if (v55)
      {
        v56 = " ";
      }

      else
      {
        v56 = "";
      }

      caulk::make_string("hardware mix output sample rate %f is not supported", v104, *a2, v101);
      if (v105 >= 0)
      {
        v57 = v104;
      }

      else
      {
        v57 = v104[0];
      }

      *__p = 136315906;
      *&__p[4] = v49;
      *&__p[12] = 2080;
      *&__p[14] = v56;
      v107 = 2080;
      v108 = v57;
      v109 = 2080;
      v110 = "bad argument";
      _os_log_impl(&dword_2724B4000, v54, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", __p, 0x2Au);
      if (v105 < 0)
      {
        operator delete(v104[0]);
      }

      LOBYTE(v52) = v112;
    }

    if ((v52 & 0x80) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_105;
  }

  if (!v102)
  {
    v58 = vp::get_log(v11);
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_106;
    }

    v59 = buf;
    v60 = vp::get_log_context_info(buf, a1, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v61 = v112;
    v62 = v112;
    v63 = *&buf[8];
    v64 = vp::get_log(v60);
    if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
LABEL_104:
      if ((v62 & 0x80) != 0)
      {
LABEL_105:
        operator delete(*buf);
      }

LABEL_106:
      v36 = 0;
      goto LABEL_107;
    }

    if (v62 >= 0)
    {
      v65 = v61;
    }

    else
    {
      v65 = v63;
    }

    if (v62 < 0)
    {
      v59 = *buf;
    }

    if (v65)
    {
      v66 = " ";
    }

    else
    {
      v66 = "";
    }

    caulk::make_string("hardware mix output block size is zero", v104);
    if (v105 >= 0)
    {
      v67 = v104;
    }

    else
    {
      v67 = v104[0];
    }

LABEL_101:
    *__p = 136315906;
    *&__p[4] = v59;
    *&__p[12] = 2080;
    *&__p[14] = v66;
    v107 = 2080;
    v108 = v67;
    v109 = 2080;
    v110 = "bad argument";
    _os_log_impl(&dword_2724B4000, v64, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", __p, 0x2Au);
    if (v105 < 0)
    {
      operator delete(v104[0]);
    }

    LOBYTE(v62) = v112;
    goto LABEL_104;
  }

  if (!a5)
  {
    v68 = vp::get_log(v11);
    if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_106;
    }

    v59 = buf;
    v69 = vp::get_log_context_info(buf, a1, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v70 = v112;
    v62 = v112;
    v71 = *&buf[8];
    v64 = vp::get_log(v69);
    if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_104;
    }

    if (v62 >= 0)
    {
      v72 = v70;
    }

    else
    {
      v72 = v71;
    }

    if (v62 < 0)
    {
      v59 = *buf;
    }

    if (v72)
    {
      v66 = " ";
    }

    else
    {
      v66 = "";
    }

    caulk::make_string("far end voice input callback is null", v104);
    if (v105 >= 0)
    {
      v67 = v104;
    }

    else
    {
      v67 = v104[0];
    }

    goto LABEL_101;
  }

  v20 = (*(**(a1 + 8) + 64))(__p, *a2);
  if ((__p[4] & 1) == 0)
  {
    v36 = *__p;
    v76 = vp::get_log(v20);
    if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_130;
    }

    v38 = buf;
    v77 = vp::get_log_context_info(buf, a1, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v78 = v112;
    v41 = v112;
    v79 = *&buf[8];
    v43 = vp::get_log(v77);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_128;
    }

    if (v41 >= 0)
    {
      v80 = v78;
    }

    else
    {
      v80 = v79;
    }

    if (v41 < 0)
    {
      v38 = *buf;
    }

    if (v80)
    {
      v45 = " ";
    }

    else
    {
      v45 = "";
    }

    caulk::make_string("failed to begin downlink initialization", v104);
    if (v105 >= 0)
    {
      v46 = v104;
    }

    else
    {
      v46 = v104[0];
    }

    if (v36 - 1 > 0xA)
    {
      v47 = "bad argument";
    }

    else
    {
      v47 = off_279E4A470[v36 - 1];
    }

    goto LABEL_125;
  }

  v21 = *(a1 + 8);
  *__p = a2;
  *&__p[8] = 40;
  v22 = (*(*v21 + 40))(buf);
  v23 = *buf >> 8;
  if (buf[4])
  {
    v24 = 1;
  }

  else
  {
    v24 = buf[4];
  }

  if (buf[4])
  {
    v25 = 0;
  }

  else
  {
    v25 = buf[0];
  }

  if ((v24 & 1) == 0)
  {
    v36 = v25 | (v23 << 8);
    v81 = vp::get_log(v22);
    if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_130;
    }

    v38 = buf;
    v82 = vp::get_log_context_info(buf, a1, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v83 = v112;
    v41 = v112;
    v84 = *&buf[8];
    v43 = vp::get_log(v82);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_128;
    }

    if (v41 >= 0)
    {
      v85 = v83;
    }

    else
    {
      v85 = v84;
    }

    if (v41 < 0)
    {
      v38 = *buf;
    }

    if (v85)
    {
      v45 = " ";
    }

    else
    {
      v45 = "";
    }

    caulk::make_string("failed to set hardware mix output stream format", v104);
    if (v105 >= 0)
    {
      v46 = v104;
    }

    else
    {
      v46 = v104[0];
    }

    if (v36 - 1 > 0xA)
    {
      v47 = "bad argument";
    }

    else
    {
      v47 = off_279E4A470[v36 - 1];
    }

    goto LABEL_125;
  }

  v26 = *(a1 + 8);
  *__p = &v102;
  *&__p[8] = 4;
  v27 = (*(*v26 + 40))(buf);
  if ((buf[4] & 1) == 0)
  {
    v24 = buf[4];
    v25 = buf[0];
    v23 = *buf >> 8;
  }

  if ((v24 & 1) == 0)
  {
    v36 = v25 | (v23 << 8);
    v86 = vp::get_log(v27);
    if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_130;
    }

    v38 = buf;
    v87 = vp::get_log_context_info(buf, a1, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v88 = v112;
    v41 = v112;
    v89 = *&buf[8];
    v43 = vp::get_log(v87);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_128;
    }

    if (v41 >= 0)
    {
      v90 = v88;
    }

    else
    {
      v90 = v89;
    }

    if (v41 < 0)
    {
      v38 = *buf;
    }

    if (v90)
    {
      v45 = " ";
    }

    else
    {
      v45 = "";
    }

    caulk::make_string("failed to set hardware mix output block size", v104);
    if (v105 >= 0)
    {
      v46 = v104;
    }

    else
    {
      v46 = v104[0];
    }

    if (v36 - 1 > 0xA)
    {
      v47 = "bad argument";
    }

    else
    {
      v47 = off_279E4A470[v36 - 1];
    }

    goto LABEL_125;
  }

  v28 = *(a1 + 8);
  *__p = a4;
  *&__p[8] = 40;
  v29 = (*(*v28 + 40))(buf);
  if (buf[4])
  {
    v30 = v23;
  }

  else
  {
    v24 = buf[4];
    v25 = buf[0];
    v30 = *buf >> 8;
  }

  if ((v24 & 1) == 0)
  {
    v36 = v25 | (v30 << 8);
    v91 = vp::get_log(v29);
    if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_130;
    }

    v38 = buf;
    v92 = vp::get_log_context_info(buf, a1, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v93 = v112;
    v41 = v112;
    v94 = *&buf[8];
    v43 = vp::get_log(v92);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_128;
    }

    if (v41 >= 0)
    {
      v95 = v93;
    }

    else
    {
      v95 = v94;
    }

    if (v41 < 0)
    {
      v38 = *buf;
    }

    if (v95)
    {
      v45 = " ";
    }

    else
    {
      v45 = "";
    }

    caulk::make_string("failed to set client far end voice input stream format", v104);
    if (v105 >= 0)
    {
      v46 = v104;
    }

    else
    {
      v46 = v104[0];
    }

    if (v36 - 1 > 0xA)
    {
      v47 = "bad argument";
    }

    else
    {
      v47 = off_279E4A470[v36 - 1];
    }

    goto LABEL_125;
  }

  v31 = *(a1 + 8);
  *__p = &v101;
  *&__p[8] = 8;
  v32 = (*(*v31 + 40))(buf);
  if (buf[4])
  {
    v33 = v24;
  }

  else
  {
    v33 = buf[4];
  }

  if ((buf[4] & 1) == 0)
  {
    v25 = buf[0];
    v30 = *buf >> 8;
  }

  if (v33)
  {
    v34 = (*(**(a1 + 8) + 72))(__p);
    if (__p[4])
    {
      v35 = v30;
    }

    else
    {
      v25 = __p[0];
      v35 = *__p >> 8;
    }

    if ((__p[4] & 1 & v33) != 0)
    {
      goto LABEL_131;
    }

    v36 = v25 | (v35 << 8);
    v37 = vp::get_log(v34);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_130;
    }

    v38 = buf;
    v39 = vp::get_log_context_info(buf, a1, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v40 = v112;
    v41 = v112;
    v42 = *&buf[8];
    v43 = vp::get_log(v39);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_128;
    }

    if (v41 >= 0)
    {
      v44 = v40;
    }

    else
    {
      v44 = v42;
    }

    if (v41 < 0)
    {
      v38 = *buf;
    }

    if (v44)
    {
      v45 = " ";
    }

    else
    {
      v45 = "";
    }

    caulk::make_string("failed to end downlink initialization", v104);
    if (v105 >= 0)
    {
      v46 = v104;
    }

    else
    {
      v46 = v104[0];
    }

    if (v36 - 1 > 0xA)
    {
      v47 = "bad argument";
    }

    else
    {
      v47 = off_279E4A470[v36 - 1];
    }

    goto LABEL_125;
  }

  v36 = v25 | (v30 << 8);
  v96 = vp::get_log(v32);
  if (!os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_130;
  }

  v38 = buf;
  v97 = vp::get_log_context_info(buf, a1, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
  v98 = v112;
  v41 = v112;
  v99 = *&buf[8];
  v43 = vp::get_log(v97);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    if (v41 >= 0)
    {
      v100 = v98;
    }

    else
    {
      v100 = v99;
    }

    if (v41 < 0)
    {
      v38 = *buf;
    }

    if (v100)
    {
      v45 = " ";
    }

    else
    {
      v45 = "";
    }

    caulk::make_string("failed to set client far end voice input block", v104);
    if (v105 >= 0)
    {
      v46 = v104;
    }

    else
    {
      v46 = v104[0];
    }

    if (v36 - 1 > 0xA)
    {
      v47 = "bad argument";
    }

    else
    {
      v47 = off_279E4A470[v36 - 1];
    }

LABEL_125:
    *__p = 136315906;
    *&__p[4] = v38;
    *&__p[12] = 2080;
    *&__p[14] = v45;
    v107 = 2080;
    v108 = v46;
    v109 = 2080;
    v110 = v47;
    _os_log_impl(&dword_2724B4000, v43, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", __p, 0x2Au);
    if (v105 < 0)
    {
      operator delete(v104[0]);
    }

    LOBYTE(v41) = v112;
  }

LABEL_128:
  if ((v41 & 0x80) != 0)
  {
    operator delete(*buf);
  }

LABEL_130:
  if (v36 > 0xB)
  {
LABEL_131:
    v73 = 0;
    goto LABEL_108;
  }

LABEL_107:
  v73 = dword_27275B40C[v36];
LABEL_108:
  std::scoped_lock<caulk::mach::unfair_lock,caulk::concurrent::shared_spin_lock>::~scoped_lock[abi:ne200100](v103);
  v74 = *MEMORY[0x277D85DE8];
  return v73;
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::InitializeOutput(os_unfair_lock_s *this, AudioStreamBasicDescription *a2, AudioChannelLayout *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v11 = buf;
  v75 = *MEMORY[0x277D85DE8];
  v66[0] = this + 10;
  v66[1] = this + 11;
  std::lock[abi:ne200100]<caulk::mach::unfair_lock,caulk::concurrent::shared_spin_lock>(this + 10, &this[11]);
  log = vp::get_log(v12);
  v14 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    v15 = a5;
    v16 = a6;
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v18 = HIBYTE(__p[2]);
    v19 = SHIBYTE(__p[2]);
    v20 = __p[1];
    v21 = vp::get_log(log_context_info);
    v14 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v14)
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
      *&buf[4] = v23;
      *&buf[12] = 2080;
      *&buf[14] = v24;
      _os_log_impl(&dword_2724B4000, v21, OS_LOG_TYPE_DEFAULT, "%s%sinitialize uplink output", buf, 0x16u);
      LOBYTE(v19) = HIBYTE(__p[2]);
    }

    if ((v19 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }

    a6 = v16;
    a5 = v15;
  }

  mSampleRate = a2->mSampleRate;
  if (a2->mSampleRate <= 0.0)
  {
    v31 = vp::get_log(v14);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    v32 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v33 = buf[23];
    v34 = buf[23];
    v35 = *&buf[8];
    v36 = vp::get_log(v32);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      if (v34 >= 0)
      {
        v37 = v33;
      }

      else
      {
        v37 = v35;
      }

      if (v34 < 0)
      {
        v11 = *buf;
      }

      if (v37)
      {
        v38 = " ";
      }

      else
      {
        v38 = "";
      }

      caulk::make_string("output sample rate %f is not supported", v68, *&a2->mSampleRate);
      if (v69 >= 0)
      {
        v39 = v68;
      }

      else
      {
        v39 = *v68;
      }

      LODWORD(__p[0]) = 136315906;
      *(__p + 4) = v11;
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = v38;
      HIWORD(__p[2]) = 2080;
      __p[3] = v39;
      LOWORD(v71) = 2080;
      *(&v71 + 2) = "bad argument";
      _os_log_impl(&dword_2724B4000, v36, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", __p, 0x2Au);
      if (v69 < 0)
      {
        operator delete(*v68);
      }

      LOBYTE(v34) = buf[23];
    }

    if ((v34 & 0x80) == 0)
    {
      goto LABEL_62;
    }

LABEL_61:
    operator delete(*buf);
LABEL_62:
    v29 = 0;
LABEL_63:
    v30 = dword_27275B40C[v29];
    goto LABEL_64;
  }

  if (!a2->mChannelsPerFrame)
  {
    v40 = vp::get_log(v14);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    v41 = buf;
    v42 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v43 = buf[23];
    v44 = buf[23];
    v45 = *&buf[8];
    v46 = vp::get_log(v42);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      if (v44 >= 0)
      {
        v47 = v43;
      }

      else
      {
        v47 = v45;
      }

      if (v44 < 0)
      {
        v41 = *buf;
      }

      if (v47)
      {
        v48 = " ";
      }

      else
      {
        v48 = "";
      }

      caulk::make_string("output channel count is zero", v68);
      if (v69 >= 0)
      {
        v49 = v68;
      }

      else
      {
        v49 = *v68;
      }

      LODWORD(__p[0]) = 136315906;
      *(__p + 4) = v41;
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = v48;
      HIWORD(__p[2]) = 2080;
      __p[3] = v49;
      LOWORD(v71) = 2080;
      *(&v71 + 2) = "bad argument";
      _os_log_impl(&dword_2724B4000, v46, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", __p, 0x2Au);
      if (v69 < 0)
      {
        operator delete(*v68);
      }

      LOBYTE(v44) = buf[23];
    }

    if ((v44 & 0x80) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v26 = *&this[2]._os_unfair_lock_opaque;
  __p[0] = a2;
  __p[1] = 40;
  v27 = (*(*v26 + 40))(buf, mSampleRate);
  if ((buf[4] & 1) == 0)
  {
    v29 = *buf;
    v52 = vp::get_log(v27);
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    a2 = buf;
    v53 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v54 = buf[23];
    v55 = buf[23];
    v56 = *&buf[8];
    v57 = vp::get_log(v53);
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_84;
    }

    if (v55 >= 0)
    {
      v58 = v54;
    }

    else
    {
      v58 = v56;
    }

    if (v55 < 0)
    {
      a2 = *buf;
    }

    if (v58)
    {
      v11 = " ";
    }

    else
    {
      v11 = "";
    }

    caulk::make_string("failed to set uplink client near end voice output stream format", v68);
    if (v69 >= 0)
    {
      v59 = v68;
    }

    else
    {
      v59 = *v68;
    }

    if (v29 - 1 > 0xA)
    {
      v60 = "bad argument";
    }

    else
    {
      v60 = off_279E4A470[v29 - 1];
    }

    goto LABEL_81;
  }

  v28 = (*(**&this[2]._os_unfair_lock_opaque + 72))(__p);
  if (BYTE4(__p[0]))
  {
    v29 = 0;
  }

  else
  {
    v29 = __p[0];
  }

  if ((BYTE4(__p[0]) & 1) == 0)
  {
    v61 = vp::get_log(v28);
    if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    a2 = buf;
    v62 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v63 = buf[23];
    v55 = buf[23];
    v64 = *&buf[8];
    v57 = vp::get_log(v62);
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
LABEL_84:
      if ((v55 & 0x80) != 0)
      {
        operator delete(*buf);
      }

LABEL_86:
      if (v29 > 0xB)
      {
        v30 = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (v55 >= 0)
    {
      v65 = v63;
    }

    else
    {
      v65 = v64;
    }

    if (v55 < 0)
    {
      a2 = *buf;
    }

    if (v65)
    {
      v11 = " ";
    }

    else
    {
      v11 = "";
    }

    caulk::make_string("failed to end uplink initialization", v68);
    if (v69 >= 0)
    {
      v59 = v68;
    }

    else
    {
      v59 = *v68;
    }

    if (v29 - 1 <= 0xA)
    {
      v60 = off_279E4A470[v29 - 1];
LABEL_81:
      LODWORD(__p[0]) = 136315906;
      *(__p + 4) = a2;
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = v11;
      HIWORD(__p[2]) = 2080;
      __p[3] = v59;
      LOWORD(v71) = 2080;
      *(&v71 + 2) = v60;
      _os_log_impl(&dword_2724B4000, v57, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", __p, 0x2Au);
      if (v69 < 0)
      {
        operator delete(*v68);
      }

      LOBYTE(v55) = buf[23];
      goto LABEL_84;
    }

LABEL_104:
    v60 = "bad argument";
    goto LABEL_81;
  }

  LOBYTE(this[12]._os_unfair_lock_opaque) = 1;
  if (LOBYTE(this[34]._os_unfair_lock_opaque) == 1)
  {
    LOBYTE(this[34]._os_unfair_lock_opaque) = 0;
  }

  *&this[36]._os_unfair_lock_opaque = a2->mSampleRate;
  v67 = 0;
  *buf = &v67;
  *&buf[8] = xmmword_2727567B0;
  (*(**&this[2]._os_unfair_lock_opaque + 24))(__p);
  if ((BYTE4(__p[0]) & 1) == 0)
  {
    v66[2] = 0;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    memset(__p, 0, sizeof(__p));
    v57 = MEMORY[0x277D86220];
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    *v68 = 134217984;
    *&v68[4] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_104;
  }

  v30 = 0;
  *a4 = v67;
  *a5 = 4;
  *a6 = 0;
LABEL_64:
  std::scoped_lock<caulk::mach::unfair_lock,caulk::concurrent::shared_spin_lock>::~scoped_lock[abi:ne200100](v66);
  v50 = *MEMORY[0x277D85DE8];
  return v30;
}

void sub_27274B00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::scoped_lock<caulk::mach::unfair_lock,caulk::concurrent::shared_spin_lock>::~scoped_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Voice_Processor_Interface_Adapter::InitializeHWInput(os_unfair_lock_s *this, const AudioStreamBasicDescription *a2, const AudioChannelLayout *a3, int a4, int a5, int a6, const unsigned int *a7, const AudioStreamBasicDescription *a8, const AudioChannelLayout *a9, unsigned int a10, unsigned int a11, unsigned int a12, unsigned int *a13)
{
  v185 = *MEMORY[0x277D85DE8];
  v173 = a5;
  v174 = a4;
  v175[0] = this + 10;
  v175[1] = this + 11;
  std::lock[abi:ne200100]<caulk::mach::unfair_lock,caulk::concurrent::shared_spin_lock>(this + 10, &this[11]);
  log = vp::get_log(v18);
  v20 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v22 = HIBYTE(v179);
    v23 = SHIBYTE(v179);
    v24 = *&__p[8];
    v25 = vp::get_log(log_context_info);
    v20 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v23 >= 0)
      {
        v26 = v22;
      }

      else
      {
        v26 = v24;
      }

      v27 = *__p;
      if (v23 >= 0)
      {
        v27 = __p;
      }

      if (v26)
      {
        v28 = " ";
      }

      else
      {
        v28 = "";
      }

      *buf = 136315394;
      *&buf[4] = v27;
      *&buf[12] = 2080;
      *&buf[14] = v28;
      _os_log_impl(&dword_2724B4000, v25, OS_LOG_TYPE_DEFAULT, "%s%sinitialize uplink inputs", buf, 0x16u);
      LOBYTE(v23) = HIBYTE(v179);
    }

    if ((v23 & 0x80) != 0)
    {
      operator delete(*__p);
    }
  }

  if (a8->mSampleRate <= 0.0)
  {
    v59 = vp::get_log(v20);
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_212;
    }

    v60 = buf;
    v61 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v62 = v184;
    v63 = v184;
    v64 = *&buf[8];
    v65 = vp::get_log(v61);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      if (v63 >= 0)
      {
        v66 = v62;
      }

      else
      {
        v66 = v64;
      }

      if (v63 < 0)
      {
        v60 = *buf;
      }

      if (v66)
      {
        v67 = " ";
      }

      else
      {
        v67 = "";
      }

      caulk::make_string("microphone input sample rate %f is not supported", v176, *&a8->mSampleRate);
      if (v177 >= 0)
      {
        v68 = v176;
      }

      else
      {
        v68 = v176[0];
      }

      *__p = 136315906;
      *&__p[4] = v60;
      *&__p[12] = 2080;
      *&__p[14] = v67;
      v179 = 2080;
      v180 = v68;
      v181 = 2080;
      v182 = "bad argument";
      _os_log_impl(&dword_2724B4000, v65, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", __p, 0x2Au);
      if (v177 < 0)
      {
        operator delete(v176[0]);
      }

      LOBYTE(v63) = v184;
    }

    if ((v63 & 0x80) == 0)
    {
      goto LABEL_212;
    }

    goto LABEL_211;
  }

  if (!a8->mChannelsPerFrame)
  {
    v69 = vp::get_log(v20);
    if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_212;
    }

    v70 = buf;
    v71 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v72 = v184;
    v73 = v184;
    v74 = *&buf[8];
    v75 = vp::get_log(v71);
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
LABEL_210:
      if ((v73 & 0x80) != 0)
      {
LABEL_211:
        operator delete(*buf);
      }

LABEL_212:
      v119 = 0;
LABEL_213:
      v58 = dword_27275B40C[v119];
      goto LABEL_214;
    }

    if (v73 >= 0)
    {
      v76 = v72;
    }

    else
    {
      v76 = v74;
    }

    if (v73 < 0)
    {
      v70 = *buf;
    }

    if (v76)
    {
      v77 = " ";
    }

    else
    {
      v77 = "";
    }

    caulk::make_string("microphone input channel count is zero", v176);
    if (v177 >= 0)
    {
      v78 = v176;
    }

    else
    {
      v78 = v176[0];
    }

LABEL_207:
    *__p = 136315906;
    *&__p[4] = v70;
    *&__p[12] = 2080;
    *&__p[14] = v77;
    v179 = 2080;
    v180 = v78;
    v181 = 2080;
    v182 = "bad argument";
    _os_log_impl(&dword_2724B4000, v75, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", __p, 0x2Au);
    if (v177 < 0)
    {
      operator delete(v176[0]);
    }

    LOBYTE(v73) = v184;
    goto LABEL_210;
  }

  if (!a10)
  {
    v79 = vp::get_log(v20);
    if (!os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_212;
    }

    v70 = buf;
    v80 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v81 = v184;
    v73 = v184;
    v82 = *&buf[8];
    v75 = vp::get_log(v80);
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_210;
    }

    if (v73 >= 0)
    {
      v83 = v81;
    }

    else
    {
      v83 = v82;
    }

    if (v73 < 0)
    {
      v70 = *buf;
    }

    if (v83)
    {
      v77 = " ";
    }

    else
    {
      v77 = "";
    }

    caulk::make_string("microphone input block size is zero", v176);
    if (v177 >= 0)
    {
      v78 = v176;
    }

    else
    {
      v78 = v176[0];
    }

    goto LABEL_207;
  }

  v29 = a13;
  if (!a13)
  {
    v84 = vp::get_log(v20);
    if (!os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_212;
    }

    v70 = buf;
    v85 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v86 = v184;
    v73 = v184;
    v87 = *&buf[8];
    v75 = vp::get_log(v85);
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_210;
    }

    if (v73 >= 0)
    {
      v88 = v86;
    }

    else
    {
      v88 = v87;
    }

    if (v73 < 0)
    {
      v70 = *buf;
    }

    if (v88)
    {
      v77 = " ";
    }

    else
    {
      v77 = "";
    }

    caulk::make_string("microphone input port types array is null", v176);
    if (v177 >= 0)
    {
      v78 = v176;
    }

    else
    {
      v78 = v176[0];
    }

    goto LABEL_207;
  }

  if (!a12)
  {
    v89 = vp::get_log(v20);
    if (!os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_212;
    }

    v70 = buf;
    v90 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v91 = v184;
    v73 = v184;
    v92 = *&buf[8];
    v75 = vp::get_log(v90);
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_210;
    }

    if (v73 >= 0)
    {
      v93 = v91;
    }

    else
    {
      v93 = v92;
    }

    if (v73 < 0)
    {
      v70 = *buf;
    }

    if (v93)
    {
      v77 = " ";
    }

    else
    {
      v77 = "";
    }

    caulk::make_string("microphone input port types array is empty", v176);
    if (v177 >= 0)
    {
      v78 = v176;
    }

    else
    {
      v78 = v176[0];
    }

    goto LABEL_207;
  }

  if (a2->mSampleRate <= 0.0)
  {
    v94 = vp::get_log(v20);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_212;
    }

    v70 = buf;
    v95 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v96 = v184;
    v73 = v184;
    v97 = *&buf[8];
    v75 = vp::get_log(v95);
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_210;
    }

    if (v73 >= 0)
    {
      v98 = v96;
    }

    else
    {
      v98 = v97;
    }

    if (v73 < 0)
    {
      v70 = *buf;
    }

    if (v98)
    {
      v77 = " ";
    }

    else
    {
      v77 = "";
    }

    caulk::make_string("reference input sample rate %f is not supported", v176, *&a2->mSampleRate);
    if (v177 >= 0)
    {
      v78 = v176;
    }

    else
    {
      v78 = v176[0];
    }

    goto LABEL_207;
  }

  if (!a2->mChannelsPerFrame)
  {
    v99 = vp::get_log(v20);
    if (!os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_212;
    }

    v70 = buf;
    v100 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v101 = v184;
    v73 = v184;
    v102 = *&buf[8];
    v75 = vp::get_log(v100);
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_210;
    }

    if (v73 >= 0)
    {
      v103 = v101;
    }

    else
    {
      v103 = v102;
    }

    if (v73 < 0)
    {
      v70 = *buf;
    }

    if (v103)
    {
      v77 = " ";
    }

    else
    {
      v77 = "";
    }

    caulk::make_string("reference input channel count is zero", v176);
    if (v177 >= 0)
    {
      v78 = v176;
    }

    else
    {
      v78 = v176[0];
    }

    goto LABEL_207;
  }

  if (!v174)
  {
    v104 = vp::get_log(v20);
    if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_212;
    }

    v70 = buf;
    v105 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v106 = v184;
    v73 = v184;
    v107 = *&buf[8];
    v75 = vp::get_log(v105);
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_210;
    }

    if (v73 >= 0)
    {
      v108 = v106;
    }

    else
    {
      v108 = v107;
    }

    if (v73 < 0)
    {
      v70 = *buf;
    }

    if (v108)
    {
      v77 = " ";
    }

    else
    {
      v77 = "";
    }

    caulk::make_string("reference input block size is zero", v176);
    if (v177 >= 0)
    {
      v78 = v176;
    }

    else
    {
      v78 = v176[0];
    }

    goto LABEL_207;
  }

  if (!a7)
  {
    v109 = vp::get_log(v20);
    if (!os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_212;
    }

    v70 = buf;
    v110 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v111 = v184;
    v73 = v184;
    v112 = *&buf[8];
    v75 = vp::get_log(v110);
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_210;
    }

    if (v73 >= 0)
    {
      v113 = v111;
    }

    else
    {
      v113 = v112;
    }

    if (v73 < 0)
    {
      v70 = *buf;
    }

    if (v113)
    {
      v77 = " ";
    }

    else
    {
      v77 = "";
    }

    caulk::make_string("reference input port types array is null", v176);
    if (v177 >= 0)
    {
      v78 = v176;
    }

    else
    {
      v78 = v176[0];
    }

    goto LABEL_207;
  }

  if (!a6)
  {
    v114 = vp::get_log(v20);
    if (!os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_212;
    }

    v70 = buf;
    v115 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v116 = v184;
    v73 = v184;
    v117 = *&buf[8];
    v75 = vp::get_log(v115);
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_210;
    }

    if (v73 >= 0)
    {
      v118 = v116;
    }

    else
    {
      v118 = v117;
    }

    if (v73 < 0)
    {
      v70 = *buf;
    }

    if (v118)
    {
      v77 = " ";
    }

    else
    {
      v77 = "";
    }

    caulk::make_string("reference input port types array is empty", v176);
    if (v177 >= 0)
    {
      v78 = v176;
    }

    else
    {
      v78 = v176[0];
    }

    goto LABEL_207;
  }

  v30 = (*(**&this[2]._os_unfair_lock_opaque + 64))(__p, a2->mSampleRate);
  if ((__p[4] & 1) == 0)
  {
    v119 = *__p;
    v122 = vp::get_log(v30);
    if (!os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_236;
    }

    v123 = buf;
    v124 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v125 = v184;
    v126 = v184;
    v127 = *&buf[8];
    v128 = vp::get_log(v124);
    if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_234;
    }

    if (v126 >= 0)
    {
      v129 = v125;
    }

    else
    {
      v129 = v127;
    }

    if (v126 < 0)
    {
      v123 = *buf;
    }

    if (v129)
    {
      v130 = " ";
    }

    else
    {
      v130 = "";
    }

    caulk::make_string("failed to begin uplink initialization", v176);
    if (v177 >= 0)
    {
      v131 = v176;
    }

    else
    {
      v131 = v176[0];
    }

    if (v119 - 1 > 0xA)
    {
      v132 = "bad argument";
    }

    else
    {
      v132 = off_279E4A470[v119 - 1];
    }

    goto LABEL_231;
  }

  LOBYTE(this[12]._os_unfair_lock_opaque) = 0;
  v31 = *&this[2]._os_unfair_lock_opaque;
  *__p = a8;
  *&__p[8] = 40;
  v32 = (*(*v31 + 40))(buf);
  v33 = *buf >> 8;
  if (buf[4])
  {
    v34 = 1;
  }

  else
  {
    v34 = buf[4];
  }

  if (buf[4])
  {
    v35 = 0;
  }

  else
  {
    v35 = buf[0];
  }

  if ((v34 & 1) == 0)
  {
    v119 = v35 | (v33 << 8);
    v133 = vp::get_log(v32);
    if (!os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_236;
    }

    v123 = buf;
    v134 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v135 = v184;
    v126 = v184;
    v136 = *&buf[8];
    v128 = vp::get_log(v134);
    if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_234;
    }

    if (v126 >= 0)
    {
      v137 = v135;
    }

    else
    {
      v137 = v136;
    }

    if (v126 < 0)
    {
      v123 = *buf;
    }

    if (v137)
    {
      v130 = " ";
    }

    else
    {
      v130 = "";
    }

    caulk::make_string("failed to set microphone stream format", v176);
    if (v177 >= 0)
    {
      v131 = v176;
    }

    else
    {
      v131 = v176[0];
    }

    if (v119 - 1 > 0xA)
    {
      v132 = "bad argument";
    }

    else
    {
      v132 = off_279E4A470[v119 - 1];
    }

    goto LABEL_231;
  }

  v36 = *&this[2]._os_unfair_lock_opaque;
  *__p = &a10;
  *&__p[8] = 4;
  v37 = (*(*v36 + 40))(buf);
  if ((buf[4] & 1) == 0)
  {
    v34 = buf[4];
    v35 = buf[0];
    v33 = *buf >> 8;
  }

  if ((v34 & 1) == 0)
  {
    v119 = v35 | (v33 << 8);
    v138 = vp::get_log(v37);
    if (!os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_236;
    }

    v123 = buf;
    v139 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v140 = v184;
    v126 = v184;
    v141 = *&buf[8];
    v128 = vp::get_log(v139);
    if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_234;
    }

    if (v126 >= 0)
    {
      v142 = v140;
    }

    else
    {
      v142 = v141;
    }

    if (v126 < 0)
    {
      v123 = *buf;
    }

    if (v142)
    {
      v130 = " ";
    }

    else
    {
      v130 = "";
    }

    caulk::make_string("failed to set microphone block size", v176);
    if (v177 >= 0)
    {
      v131 = v176;
    }

    else
    {
      v131 = v176[0];
    }

    if (v119 - 1 > 0xA)
    {
      v132 = "bad argument";
    }

    else
    {
      v132 = off_279E4A470[v119 - 1];
    }

    goto LABEL_231;
  }

  v38 = vp::vx::Legacy<vp::vx::Input_Port_Type>::cast(*v29) | 0x100000000;
  if ((v38 & 0x100000000) == 0)
  {
    LODWORD(v38) = 0;
  }

  LODWORD(v176[0]) = v38;
  v39 = *&this[2]._os_unfair_lock_opaque;
  *__p = v176;
  *&__p[8] = 4;
  v40 = (*(*v39 + 40))(buf);
  if (buf[4])
  {
    v41 = v33;
  }

  else
  {
    v34 = buf[4];
    v35 = buf[0];
    v41 = *buf >> 8;
  }

  if ((v34 & 1) == 0)
  {
    v119 = v35 | (v41 << 8);
    v143 = vp::get_log(v40);
    if (!os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_236;
    }

    v123 = buf;
    v144 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v145 = v184;
    v126 = v184;
    v146 = *&buf[8];
    v128 = vp::get_log(v144);
    if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_234;
    }

    if (v126 >= 0)
    {
      v147 = v145;
    }

    else
    {
      v147 = v146;
    }

    if (v126 < 0)
    {
      v123 = *buf;
    }

    if (v147)
    {
      v130 = " ";
    }

    else
    {
      v130 = "";
    }

    caulk::make_string("failed to set microphone port type", v176);
    if (v177 >= 0)
    {
      v131 = v176;
    }

    else
    {
      v131 = v176[0];
    }

    if (v119 - 1 > 0xA)
    {
      v132 = "bad argument";
    }

    else
    {
      v132 = off_279E4A470[v119 - 1];
    }

    goto LABEL_231;
  }

  v42 = *&this[2]._os_unfair_lock_opaque;
  *__p = &a11;
  *&__p[8] = 4;
  v43 = (*(*v42 + 40))(buf);
  if (buf[4])
  {
    v44 = v34;
  }

  else
  {
    v44 = buf[4];
  }

  if ((buf[4] & 1) == 0)
  {
    v35 = buf[0];
    v41 = *buf >> 8;
  }

  if ((v44 & 1) == 0)
  {
    v119 = v35 | (v41 << 8);
    v148 = vp::get_log(v43);
    if (!os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_236;
    }

    v123 = buf;
    v149 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v150 = v184;
    v126 = v184;
    v151 = *&buf[8];
    v128 = vp::get_log(v149);
    if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_234;
    }

    if (v126 >= 0)
    {
      v152 = v150;
    }

    else
    {
      v152 = v151;
    }

    if (v126 < 0)
    {
      v123 = *buf;
    }

    if (v152)
    {
      v130 = " ";
    }

    else
    {
      v130 = "";
    }

    caulk::make_string("failed to set microphone device ID", v176);
    if (v177 >= 0)
    {
      v131 = v176;
    }

    else
    {
      v131 = v176[0];
    }

    if (v119 - 1 > 0xA)
    {
      v132 = "bad argument";
    }

    else
    {
      v132 = off_279E4A470[v119 - 1];
    }

    goto LABEL_231;
  }

  v45 = *&this[2]._os_unfair_lock_opaque;
  *__p = a2;
  *&__p[8] = 40;
  v46 = (*(*v45 + 40))(buf);
  if (buf[4])
  {
    v47 = v41;
  }

  else
  {
    v44 = buf[4];
    v35 = buf[0];
    v47 = *buf >> 8;
  }

  if ((v44 & 1) == 0)
  {
    v119 = v35 | (v47 << 8);
    v153 = vp::get_log(v46);
    if (!os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_236;
    }

    v123 = buf;
    v154 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v155 = v184;
    v126 = v184;
    v156 = *&buf[8];
    v128 = vp::get_log(v154);
    if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_234;
    }

    if (v126 >= 0)
    {
      v157 = v155;
    }

    else
    {
      v157 = v156;
    }

    if (v126 < 0)
    {
      v123 = *buf;
    }

    if (v157)
    {
      v130 = " ";
    }

    else
    {
      v130 = "";
    }

    caulk::make_string("failed to set reference stream format", v176);
    if (v177 >= 0)
    {
      v131 = v176;
    }

    else
    {
      v131 = v176[0];
    }

    if (v119 - 1 > 0xA)
    {
      v132 = "bad argument";
    }

    else
    {
      v132 = off_279E4A470[v119 - 1];
    }

    goto LABEL_231;
  }

  v48 = *&this[2]._os_unfair_lock_opaque;
  *__p = &v174;
  *&__p[8] = 4;
  v49 = (*(*v48 + 40))(buf);
  if (buf[4])
  {
    v50 = v44;
  }

  else
  {
    v50 = buf[4];
  }

  if ((buf[4] & 1) == 0)
  {
    v35 = buf[0];
    v47 = *buf >> 8;
  }

  if ((v50 & 1) == 0)
  {
    v119 = v35 | (v47 << 8);
    v158 = vp::get_log(v49);
    if (!os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_236;
    }

    v123 = buf;
    v159 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v160 = v184;
    v126 = v184;
    v161 = *&buf[8];
    v128 = vp::get_log(v159);
    if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_234;
    }

    if (v126 >= 0)
    {
      v162 = v160;
    }

    else
    {
      v162 = v161;
    }

    if (v126 < 0)
    {
      v123 = *buf;
    }

    if (v162)
    {
      v130 = " ";
    }

    else
    {
      v130 = "";
    }

    caulk::make_string("failed to set reference block size", v176);
    if (v177 >= 0)
    {
      v131 = v176;
    }

    else
    {
      v131 = v176[0];
    }

    if (v119 - 1 > 0xA)
    {
      v132 = "bad argument";
    }

    else
    {
      v132 = off_279E4A470[v119 - 1];
    }

    goto LABEL_231;
  }

  v51 = vp::vx::Legacy<vp::vx::Output_Port_Type>::cast(*a7) | 0x100000000;
  if ((v51 & 0x100000000) == 0)
  {
    LODWORD(v51) = 0;
  }

  LODWORD(v176[0]) = v51;
  v52 = *&this[2]._os_unfair_lock_opaque;
  *__p = v176;
  *&__p[8] = 4;
  v53 = (*(*v52 + 40))(buf);
  if (buf[4])
  {
    v54 = v50;
  }

  else
  {
    v54 = buf[4];
  }

  if ((buf[4] & 1) == 0)
  {
    v35 = buf[0];
    v47 = *buf >> 8;
  }

  if ((v54 & 1) == 0)
  {
    v119 = v35 | (v47 << 8);
    v163 = vp::get_log(v53);
    if (!os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_236;
    }

    v123 = buf;
    v164 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v165 = v184;
    v126 = v184;
    v166 = *&buf[8];
    v128 = vp::get_log(v164);
    if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_234;
    }

    if (v126 >= 0)
    {
      v167 = v165;
    }

    else
    {
      v167 = v166;
    }

    if (v126 < 0)
    {
      v123 = *buf;
    }

    if (v167)
    {
      v130 = " ";
    }

    else
    {
      v130 = "";
    }

    caulk::make_string("failed to set reference port type", v176);
    if (v177 >= 0)
    {
      v131 = v176;
    }

    else
    {
      v131 = v176[0];
    }

    if (v119 - 1 > 0xA)
    {
      v132 = "bad argument";
    }

    else
    {
      v132 = off_279E4A470[v119 - 1];
    }

    goto LABEL_231;
  }

  v55 = *&this[2]._os_unfair_lock_opaque;
  *__p = &v173;
  *&__p[8] = 4;
  v56 = (*(*v55 + 40))(buf);
  if (buf[4])
  {
    v57 = v47;
  }

  else
  {
    v35 = buf[0];
    v57 = *buf >> 8;
  }

  if ((buf[4] & 1 & v54) == 0)
  {
    v119 = v35 | (v57 << 8);
    v168 = vp::get_log(v56);
    if (!os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_236;
    }

    v123 = buf;
    v169 = vp::get_log_context_info(buf, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v170 = v184;
    v126 = v184;
    v171 = *&buf[8];
    v128 = vp::get_log(v169);
    if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
LABEL_234:
      if ((v126 & 0x80) != 0)
      {
        operator delete(*buf);
      }

LABEL_236:
      if (v119 > 0xB)
      {
        v58 = 0;
        goto LABEL_214;
      }

      goto LABEL_213;
    }

    if (v126 >= 0)
    {
      v172 = v170;
    }

    else
    {
      v172 = v171;
    }

    if (v126 < 0)
    {
      v123 = *buf;
    }

    if (v172)
    {
      v130 = " ";
    }

    else
    {
      v130 = "";
    }

    caulk::make_string("failed to set reference device ID", v176);
    if (v177 >= 0)
    {
      v131 = v176;
    }

    else
    {
      v131 = v176[0];
    }

    if (v119 - 1 > 0xA)
    {
      v132 = "bad argument";
    }

    else
    {
      v132 = off_279E4A470[v119 - 1];
    }

LABEL_231:
    *__p = 136315906;
    *&__p[4] = v123;
    *&__p[12] = 2080;
    *&__p[14] = v130;
    v179 = 2080;
    v180 = v131;
    v181 = 2080;
    v182 = v132;
    _os_log_impl(&dword_2724B4000, v128, OS_LOG_TYPE_ERROR, "%s%s%s (%s)", __p, 0x2Au);
    if (v177 < 0)
    {
      operator delete(v176[0]);
    }

    LOBYTE(v126) = v184;
    goto LABEL_234;
  }

  if (LOBYTE(this[28]._os_unfair_lock_opaque) == 1)
  {
    LOBYTE(this[28]._os_unfair_lock_opaque) = 0;
  }

  v58 = 0;
  *&this[30]._os_unfair_lock_opaque = a8->mSampleRate;
LABEL_214:
  std::scoped_lock<caulk::mach::unfair_lock,caulk::concurrent::shared_spin_lock>::~scoped_lock[abi:ne200100](v175);
  v120 = *MEMORY[0x277D85DE8];
  return v58;
}

void sub_27274C7DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    vp::utility::exception_match<std::bad_cast>();
  }

  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor_Interface_Adapter::~Voice_Processor_Interface_Adapter(vp::vx::Voice_Processor_Interface_Adapter *this)
{
  vp::vx::Voice_Processor_Interface_Adapter::~Voice_Processor_Interface_Adapter(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v19 = *MEMORY[0x277D85DE8];
  v2 = std::unique_ptr<vp::vx::Voice_Processor_Interface,vp::Allocator_Delete<vp::vx::Voice_Processor_Interface>>::reset[abi:ne200100](this + 1);
  log = vp::get_log(v2);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::Voice_Processor_Interface_Adapter]", 41);
    v5 = v14;
    v6 = v14;
    v7 = __p[1];
    v8 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
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
      v16 = v10;
      v17 = 2080;
      v18 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v6) = v14;
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 12, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 9, 0);
  caulk::concurrent::shared_spin_lock::~shared_spin_lock((this + 44));
  std::unique_ptr<vp::vx::Voice_Processor_Interface,vp::Allocator_Delete<vp::vx::Voice_Processor_Interface>>::reset[abi:ne200100](this + 1);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t vp::vx::Legacy<vp::vx::Input_Port_Type>::cast(int a1)
{
  v1 = 0;
  while (vp::vx::g_input_port_type_lut[v1] != a1)
  {
    if (++v1 == 9)
    {
      exception = __cxa_allocate_exception(8uLL);
      v3 = std::bad_cast::bad_cast(exception);
    }
  }

  return vp::vx::g_input_port_type_lut[v1 + 9];
}

{
  v1 = 0;
  while (vp::vx::g_input_port_type_lut[v1 + 9] != a1)
  {
    if (++v1 == 9)
    {
      exception = __cxa_allocate_exception(8uLL);
      v3 = std::bad_cast::bad_cast(exception);
    }
  }

  return vp::vx::g_input_port_type_lut[v1];
}

uint64_t vp::vx::Legacy<vp::vx::Output_Port_Type>::cast(int a1)
{
  v1 = 0;
  while (vp::vx::g_output_port_type_lut[v1] != a1)
  {
    if (++v1 == 17)
    {
      exception = __cxa_allocate_exception(8uLL);
      v3 = std::bad_cast::bad_cast(exception);
    }
  }

  return vp::vx::g_output_port_type_lut[v1 + 17];
}

{
  v1 = 0;
  while (vp::vx::g_output_port_type_lut[v1 + 17] != a1)
  {
    if (++v1 == 17)
    {
      exception = __cxa_allocate_exception(8uLL);
      v3 = std::bad_cast::bad_cast(exception);
    }
  }

  return vp::vx::g_output_port_type_lut[v1];
}

uint64_t vp::vx::Legacy<vp::vx::Operation_Mode>::cast(uint64_t result)
{
  if (result > 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v2 = std::bad_cast::bad_cast(exception);
  }

  return result;
}

uint64_t vp::vx::Legacy<vp::vx::Chat_Flavor>::cast(uint64_t result)
{
  if (result > 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v2 = std::bad_cast::bad_cast(exception);
  }

  return result;
}

uint64_t vp::vx::Legacy<vp::vx::Port_Sub_Type>::cast(int a1)
{
  v1 = 0;
  while (vp::vx::g_port_subtype_lut[v1] != a1)
  {
    if (++v1 == 16)
    {
      exception = __cxa_allocate_exception(8uLL);
      v3 = std::bad_cast::bad_cast(exception);
    }
  }

  return vp::vx::g_port_subtype_lut[v1 + 16];
}

{
  v1 = 0;
  while (vp::vx::g_port_subtype_lut[v1 + 16] != a1)
  {
    if (++v1 == 16)
    {
      exception = __cxa_allocate_exception(8uLL);
      v3 = std::bad_cast::bad_cast(exception);
    }
  }

  return vp::vx::g_port_subtype_lut[v1];
}

uint64_t vp::vx::Legacy<vp::vx::Port_Endpoint_Type>::cast(int a1)
{
  v1 = 0;
  while (vp::vx::g_port_endpoint_type_lut[v1] != a1)
  {
    if (++v1 == 6)
    {
      exception = __cxa_allocate_exception(8uLL);
      v3 = std::bad_cast::bad_cast(exception);
    }
  }

  return vp::vx::g_port_endpoint_type_lut[v1 + 6];
}

{
  v1 = 0;
  while (vp::vx::g_port_endpoint_type_lut[v1 + 6] != a1)
  {
    if (++v1 == 6)
    {
      exception = __cxa_allocate_exception(8uLL);
      v3 = std::bad_cast::bad_cast(exception);
    }
  }

  return vp::vx::g_port_endpoint_type_lut[v1];
}

uint64_t vp::vx::Voice_Processor_State_Manager::Observer::observe_state_change_end(uint64_t this)
{
  v2 = *(this + 80);
  v1 = *(this + 88);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (!v3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v1)
  {
    v4 = v2 + 32 * v1;
    do
    {
      if (!v2)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = *(v2 + 24);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      this = (*(*v5 + 48))(v5);
      v2 += 32;
    }

    while (v2 != v4);
  }

  return this;
}

uint64_t vp::vx::Voice_Processor_State_Manager::Observer::observe_state_change_begin(uint64_t this)
{
  v2 = *(this + 16);
  v1 = *(this + 24);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (!v3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v1)
  {
    v4 = v2 + 32 * v1;
    do
    {
      if (!v2)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = *(v2 + 24);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      this = (*(*v5 + 48))(v5);
      v2 += 32;
    }

    while (v2 != v4);
  }

  return this;
}

void vp::vx::Voice_Processor_State_Manager::Observer::~Observer(vp::vx::Voice_Processor_State_Manager::Observer *this)
{
  boost::container::vector<std::function<void ()(void)>,boost::container::small_vector_allocator<std::function<void ()(void)>,vp::Allocator<void>,void>,void>::~vector(this + 9);
  boost::container::vector<std::function<void ()(void)>,boost::container::small_vector_allocator<std::function<void ()(void)>,vp::Allocator<void>,void>,void>::~vector(this + 1);

  JUMPOUT(0x2743CBFA0);
}

{
  boost::container::vector<std::function<void ()(void)>,boost::container::small_vector_allocator<std::function<void ()(void)>,vp::Allocator<void>,void>,void>::~vector(this + 9);
  boost::container::vector<std::function<void ()(void)>,boost::container::small_vector_allocator<std::function<void ()(void)>,vp::Allocator<void>,void>,void>::~vector(this + 1);
}

uint64_t boost::container::vector<std::function<void ()(void)>,boost::container::small_vector_allocator<std::function<void ()(void)>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<std::function<void ()(void)>,vp::Allocator<void>,void>,std::function<void ()(void)>*,std::function<void ()(void)>>>(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0x7FFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (v4 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v4 / 5;
  }

  v8 = v4 + 1;
  if (v7 < 0x7FFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 59)
  {
LABEL_27:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *(a2 + 1);
  v15 = (*(**a2 + 16))(*a2, 32 * v9, 8);
  v16 = v15;
  v17 = *(a2 + 1);
  v18 = v17 + 32 * *(a2 + 2);
  if (v17 != a3)
  {
    v19 = *(a2 + 1);
    do
    {
      v20 = std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v15, v19);
      v19 += 32;
      v15 = v20 + 32;
    }

    while (v19 != a3);
  }

  result = std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v15, a4);
  if (v18 != a3)
  {
    result += 32;
    v22 = a3;
    do
    {
      v23 = std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](result, v22);
      v22 += 32;
      result = v23 + 32;
    }

    while (v22 != v18);
  }

  if (v17)
  {
    for (i = *(a2 + 2); i; v17 += 32)
    {
      --i;
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v17);
    }

    v25 = *(a2 + 3);
    result = boost::container::small_vector_allocator<std::function<void ()(void)>,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 1));
  }

  v26 = *(a2 + 2) + 1;
  *(a2 + 1) = v16;
  *(a2 + 2) = v26;
  *(a2 + 3) = v9;
  *a1 = v16 + a3 - v14;
  return result;
}

uint64_t boost::container::vec_iterator<std::function<void ()(void)> *,false>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

uint64_t vp::vx::components::Volume_Limit::as_io_node_delegate_factory(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return *(a1 + 32);
  }

  else
  {
    return 0;
  }
}

void *vp::vx::components::Volume_Limit::configure(vp::vx::components::Volume_Limit *this)
{
  v24 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&__p, this, "vp::vx::components::Volume_Limit]", 32);
    v4 = BYTE7(v16);
    v5 = SBYTE7(v16);
    v6 = v15;
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

      buf[0] = 136315394;
      *&buf[1] = p_p;
      v22 = 2080;
      v23 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = BYTE7(v16);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  result = (*(**(this + 2) + 24))(&v17);
  if (v17)
  {
    v18[0] = *(this + 1);
    __p = 0;
    v15 = v18[0];
    v16 = xmmword_2727565C0;
    v12 = (*(*v18[0] + 16))(v18[0], 48, 8);
    v20 = v12;
    v18[1] = &v20;
    v18[2] = v18;
    v19 = 0;
    if (v17)
    {
      operator new();
    }

    v17 = 0;
    *(v12 + 24) = &unk_2881C6630;
    operator new();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27274D604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, vp::vx::components::Volume_Limit::Node_Delegate_Factory *a11, uint64_t default_resource, __int128 a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    std::__exception_guard_exceptions<vp::vx::components::Volume_Limit::Node_Delegate_Factory * std::pmr::polymorphic_allocator<vp::vx::components::Volume_Limit::Node_Delegate_Factory>::new_object[abi:ne200100]<vp::vx::components::Volume_Limit::Node_Delegate_Factory,std::unique_ptr<vp::services::Audio_Data_Analysis::Settings_Manager>>(std::unique_ptr<vp::services::Audio_Data_Analysis::Settings_Manager> &&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](&a16);
    std::unique_ptr<vp::vx::components::Volume_Limit::Node_Delegate_Factory,vp::Allocator_Delete<vp::vx::components::Volume_Limit::Node_Delegate_Factory>>::reset[abi:ne200100](&a11, 0);
    v17 = __cxa_begin_catch(exception_object);
    default_resource = std::pmr::get_default_resource(v17);
    a13 = 0u;
    __cxa_end_catch();
    JUMPOUT(0x27274D568);
  }

  _Unwind_Resume(exception_object);
}

vp::vx::components::Volume_Limit::Node_Delegate_Factory **std::unique_ptr<vp::vx::components::Volume_Limit::Node_Delegate_Factory,vp::Allocator_Delete<vp::vx::components::Volume_Limit::Node_Delegate_Factory>>::reset[abi:ne200100](vp::vx::components::Volume_Limit::Node_Delegate_Factory **result, vp::vx::components::Volume_Limit::Node_Delegate_Factory *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Volume_Limit::Node_Delegate_Factory::~Node_Delegate_Factory(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<vp::vx::components::Volume_Limit::Node_Delegate_Factory * std::pmr::polymorphic_allocator<vp::vx::components::Volume_Limit::Node_Delegate_Factory>::new_object[abi:ne200100]<vp::vx::components::Volume_Limit::Node_Delegate_Factory,std::unique_ptr<vp::services::Audio_Data_Analysis::Settings_Manager>>(std::unique_ptr<vp::services::Audio_Data_Analysis::Settings_Manager> &&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 48, 8);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<vp::services::Audio_Data_Analysis::Settings_Manager  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<vp::services::Audio_Data_Analysis::Settings_Manager  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::components::Volume_Limit::~Volume_Limit(std::__shared_weak_count **this)
{
  vp::vx::components::Volume_Limit::~Volume_Limit(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v19 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Volume_Limit]", 32);
    v4 = v14;
    v5 = v14;
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
      v16 = v9;
      v17 = 2080;
      v18 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v14;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  std::unique_ptr<vp::vx::io::Node_Delegate_Factory,vp::Allocator_Delete<vp::vx::io::Node_Delegate_Factory>>::reset[abi:ne200100](this + 4, 0);
  v11 = this[3];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void virtual thunk tovp::vx::components::Volume_Limit::Node_Delegate::~Node_Delegate(vp::vx::components::Volume_Limit::Node_Delegate *this)
{
  vp::vx::components::Volume_Limit::Node_Delegate::~Node_Delegate((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::components::Volume_Limit::Node_Delegate::~Node_Delegate((this + *(*this - 24)));
}

void vp::vx::components::Volume_Limit::Node_Delegate::~Node_Delegate(vp::vx::components::Volume_Limit::Node_Delegate *this)
{
  v20 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    if (this)
    {
      v3 = this + 24;
    }

    else
    {
      v3 = 0;
    }

    vp::vx::io::get_log_context_info(__p, v3, "vp::vx::components::Volume_Limit::Node_Delegate]", 47);
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

  *(this + 3) = &unk_2881C6630;
  v12 = *(this + 5);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::components::Volume_Limit::Node_Delegate::~Node_Delegate(this);

  JUMPOUT(0x2743CBFA0);
}

float *vp::vx::components::Volume_Limit::Node_Delegate::process(float *result, int a2, uint64_t (***a3)(void))
{
  if ((result[2] & 1) == 0)
  {
    v4 = result;
    result = (**a3)(a3);
    if (result)
    {
      if (!a2)
      {
        v5 = result;
        (*(*result + 24))(v13);
        v6 = v18;
        if (v18 != 1)
        {
          goto LABEL_19;
        }

        result = caulk::expected<float,vp::vx::io::Error>::value(v13);
        v7 = v13[0];
        if (*(v4 + 20) != 1 || v4[4] != *v13)
        {
          (*(*v5 + 24))(v19, v5, 1685482599);
          v8 = v24;
          if (v24 != 1)
          {
            goto LABEL_13;
          }

          caulk::expected<float,vp::vx::io::Error>::value(v19);
          result = (*(*v5 + 32))(v25, v5, 1685482604, (v4[3] - *v19) + -2.5);
          if ((v28 & 1) == 0 && SHIBYTE(v26) < 0)
          {
            result = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v27, v25[2], v26 & 0x7FFFFFFFFFFFFFFFLL);
          }

          v8 = v24;
          if ((v24 & 1) == 0)
          {
LABEL_13:
            v9 = v20;
            v10 = v22;
            result = v23;
            v21 = 0;
            v22 = 0;
            v20 = 0;
            if (v10 < 0)
            {
              result = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v23, v9, v10 & 0x7FFFFFFFFFFFFFFFLL);
              v8 = v24;
            }

            if ((v8 & 1) == 0 && SHIBYTE(v22) < 0)
            {
              result = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v23, v20, v22 & 0x7FFFFFFFFFFFFFFFLL);
            }
          }
        }

        *(v4 + 4) = v7;
        *(v4 + 20) = 1;
        v6 = v18;
        if ((v18 & 1) == 0)
        {
LABEL_19:
          v11 = v14;
          v12 = v16;
          result = v17;
          v15 = 0;
          v16 = 0;
          v14 = 0;
          if (v12 < 0)
          {
            result = (*(*v17 + 24))(v17, v11, v12 & 0x7FFFFFFFFFFFFFFFLL, 1);
            v6 = v18;
          }

          if ((v6 & 1) == 0 && SHIBYTE(v16) < 0)
          {
            return std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v17, v14, v16 & 0x7FFFFFFFFFFFFFFFLL);
          }
        }
      }
    }

    else
    {
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

void sub_27274DDD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if ((a23 & 1) == 0 && SHIBYTE(a21) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a22, a19, a21 & 0x7FFFFFFFFFFFFFFFLL);
  }

  __clang_call_terminate(a1);
}

void *vp::vx::components::Volume_Limit::Node_Delegate::notify(uint64_t a1, int a2, uint64_t a3)
{
  result = (*(*a3 + 16))(a3);
  if (result)
  {
    if (!a2)
    {
      v12 = *(a1 + 8);
      v10 = &v12;
      v11 = 4;
      result = (*(*result + 40))(v6);
      if ((v9 & 1) == 0 && SHIBYTE(v7) < 0)
      {
        return (*(*v8 + 24))(v8, v6[2], v7 & 0x7FFFFFFFFFFFFFFFLL, 1);
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

uint64_t vp::vx::components::Volume_Limit::Node_Delegate::get_property_ids@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if (a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v3 = 1685480048;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v3, &vars0, 1uLL);
  }

  return result;
}

uint64_t vp::vx::components::Volume_Limit::Node_Delegate::get_parameter_ids@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(result + 8) == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else if (a2)
  {
    v4 = 0x64766C67646C6876;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a3, &v4, &v5, 2uLL);
  }

  else
  {
    LODWORD(v4) = 1685482604;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a3, &v4, &v4 + 4, 1uLL);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27274E02C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void virtual thunk tovp::vx::components::Volume_Limit::Node_Delegate_Factory::~Node_Delegate_Factory(vp::vx::components::Volume_Limit::Node_Delegate_Factory *this)
{
  vp::vx::components::Volume_Limit::Node_Delegate_Factory::~Node_Delegate_Factory((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::components::Volume_Limit::Node_Delegate_Factory::~Node_Delegate_Factory((this + *(*this - 24)));
}

void vp::vx::components::Volume_Limit::Node_Delegate_Factory::~Node_Delegate_Factory(vp::vx::components::Volume_Limit::Node_Delegate_Factory *this)
{
  v21 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    if (this)
    {
      v3 = this + 24;
    }

    else
    {
      v3 = 0;
    }

    vp::vx::io::get_log_context_info(__p, v3, "vp::vx::components::Volume_Limit::Node_Delegate_Factory]", 55);
    v4 = v16;
    v5 = v16;
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
      v18 = v10;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v16;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = *(this + 2);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  *(this + 3) = &unk_2881C6630;
  v13 = *(this + 5);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::components::Volume_Limit::Node_Delegate_Factory::~Node_Delegate_Factory(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Volume_Limit::Node_Delegate_Factory::new_node_delegate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = *MEMORY[0x277D85DE8];
  v38 = a4;
  v39 = a5;
  result = (*(*a2 + 24))(a2);
  if (result)
  {
    result = (*(*result + 8))(result, 1685480048, 0);
    if (result)
    {
      result = (*(*a2 + 8))(a2);
      if (result)
      {
        result = (**result)(result, 1684826230);
        if (result)
        {
          result = (*(*a2 + 8))(a2);
          if (result)
          {
            result = (*(*result + 8))(result, 1685482604, 0);
            if (result)
            {
              result = (*(*a2 + 8))(a2);
              if (result)
              {
                result = (*(*result + 8))(result, 1685482599, 1);
                if (result)
                {
                  v9 = (*(**(a1 + 8) + 16))(*(a1 + 8));
                  v10 = v9;
                  log = vp::get_log(v9);
                  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                  {
                    vp::vx::io::get_log_context_info(&__p, a1 + 24, "vp::vx::components::Volume_Limit::Node_Delegate_Factory]", 55);
                    v12 = v37;
                    v13 = v37;
                    v14 = v36;
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

                      *buf = 136315650;
                      *&buf[4] = p_p;
                      *&buf[12] = 2080;
                      *&buf[14] = v19;
                      if (v10)
                      {
                        v20 = "enabled";
                      }

                      else
                      {
                        v20 = "disabled";
                      }

                      v41 = 2080;
                      v42 = *&v20;
                      _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_DEFAULT, "%s%svolume limit is %s", buf, 0x20u);
                      LOBYTE(v13) = v37;
                    }

                    if ((v13 & 0x80) != 0)
                    {
                      operator delete(__p);
                    }
                  }

                  v21 = (*(**(a1 + 8) + 24))(*(a1 + 8));
                  v23 = *&v22;
                  v34 = v22;
                  v24 = vp::get_log(v21);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    vp::vx::io::get_log_context_info(&__p, a1 + 24, "vp::vx::components::Volume_Limit::Node_Delegate_Factory]", 55);
                    v25 = v37;
                    v26 = v37;
                    v27 = v36;
                    v29 = vp::get_log(v28);
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      if (v26 >= 0)
                      {
                        v30 = v25;
                      }

                      else
                      {
                        v30 = v27;
                      }

                      v31 = __p;
                      if (v26 >= 0)
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

                      *buf = 136315650;
                      *&buf[4] = v31;
                      *&buf[12] = 2080;
                      *&buf[14] = v32;
                      v41 = 2048;
                      v42 = v23;
                      _os_log_impl(&dword_2724B4000, v29, OS_LOG_TYPE_DEFAULT, "%s%svolume limit threshold is %.2f dBA", buf, 0x20u);
                      LOBYTE(v26) = v37;
                    }

                    if ((v26 & 0x80) != 0)
                    {
                      operator delete(__p);
                    }
                  }

                  if (v23 <= 0.0)
                  {
                    v34 = 1120403456;
                  }

                  LOBYTE(__p) = v10 ^ 1;
                  vp::allocate_unique<vp::vx::components::Volume_Limit::Node_Delegate,BOOL,float &>(buf, a3, &__p, &v34);
                }
              }
            }
          }
        }
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27274E6C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::allocate_unique<vp::vx::components::Volume_Limit::Node_Delegate,BOOL,float &>(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int *a4)
{
  v9 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = xmmword_2727565C0;
  v6 = (*(*a2 + 16))(a2, 48, 8);
  v7 = *a3;
  v8 = *a4;
  *(v6 + 24) = &unk_2881C6630;
  operator new();
}

vp::vx::components::Volume_Limit::Node_Delegate **std::unique_ptr<vp::vx::components::Volume_Limit::Node_Delegate,vp::Allocator_Delete<vp::vx::components::Volume_Limit::Node_Delegate>>::reset[abi:ne200100](vp::vx::components::Volume_Limit::Node_Delegate **result, vp::vx::components::Volume_Limit::Node_Delegate *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Volume_Limit::Node_Delegate::~Node_Delegate(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t vp::vx::database::v1::syntax::conditions::When::visit(void *a1, uint64_t a2)
{
  result = a1[2];
  if (result)
  {
    result = (*(*result + 32))(result, a2);
  }

  v6 = a1[3];
  v5 = a1[4];
  while (v6 != v5)
  {
    result = *(v6 + 8);
    if (result)
    {
      result = (*(*result + 32))(result, a2);
    }

    v6 += 16;
  }

  return result;
}

uint64_t vp::vx::database::v1::syntax::conditions::When::evaluate(vp::vx::database::v1::syntax::conditions::When *this, const vp::vx::database::v1::Request *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    v5 = (*(*v4 + 24))(v4, a2);
  }

  else
  {
    v5 = 0;
  }

  v7 = *(this + 3);
  v6 = *(this + 4);
  while (v7 != v6)
  {
    v8 = *(v7 + 1);
    if (v8)
    {
      LODWORD(v8) = (*(*v8 + 24))(v8, a2);
    }

    v10 = *v7;
    v7 += 4;
    v9 = v10;
    v11 = v5 & v8;
    if (v10)
    {
      v11 = v9;
    }

    if (v9 == 1)
    {
      v5 |= v8;
    }

    else
    {
      v5 = v11;
    }
  }

  return v5 & 1;
}

uint64_t vp::vx::database::v1::syntax::conditions::When::build(vp::vx::database::v1::syntax::conditions::When *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    v4 = (*(*v4 + 16))(v4, a2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v42;
  default_resource = std::pmr::get_default_resource(v4);
  v40 = v42;
  v41 = xmmword_272756790;
  v7 = *(this + 3);
  v8 = *(this + 4);
  if (v7 != v8)
  {
    while (*v7 != 1)
    {
      if (!*v7)
      {
        v9 = (*(**(v7 + 8) + 16))(*(v7 + 8), a2);
        apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
        v10 = v9;
        *(a2 + 70) = 1;
        v11 = *(a2 + 8);
        v12 = *(a2 + 12);
        v13 = *(a2 + 10);
        apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 6, v10);
        apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<signed char>(a2, 0);
        v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v11 - v12 + v13);
        apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::decisions::detail::Then>(*(a2 + 4), *(a2 + 5), v14);
        v38 = v14;
        v15 = v41;
        v16 = v40 + 4 * v41;
        if (v41 == *(&v41 + 1))
        {
          goto LABEL_13;
        }

LABEL_10:
        *v16 = v14;
        *&v41 = v15 + 1;
      }

LABEL_11:
      v7 += 16;
      if (v7 == v8)
      {
        v6 = v40;
        v22 = v41;
        goto LABEL_15;
      }
    }

    v17 = (*(**(v7 + 8) + 16))(*(v7 + 8), a2);
    apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
    v18 = v17;
    *(a2 + 70) = 1;
    v19 = *(a2 + 8);
    v20 = *(a2 + 12);
    v21 = *(a2 + 10);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 6, v18);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<signed char>(a2, 1);
    v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v19 - v20 + v21);
    apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::decisions::detail::Then>(*(a2 + 4), *(a2 + 5), v14);
    v38 = v14;
    v15 = v41;
    v16 = v40 + 4 * v41;
    if (v41 == *(&v41 + 1))
    {
LABEL_13:
      boost::container::vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::conditions::detail::When>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::conditions::detail::When>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::conditions::detail::When>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::conditions::detail::When>*,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::conditions::detail::When>>>(&v43, &default_resource, v16, &v38);
      boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::conditions::detail::When> *,false>::operator*(v43);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v22 = 0;
LABEL_15:
  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(a2, v22, 4uLL);
  if (v22)
  {
    v23 = v22;
    do
    {
      v24 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a2, *&v6[4 * v23 - 4]);
      apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(a2, v24);
      --v23;
    }

    while (v23);
  }

  v25 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(a2, v22);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  *(a2 + 70) = 1;
  v26 = *(a2 + 8);
  v27 = *(a2 + 12);
  v28 = *(a2 + 10);
  if (v25)
  {
    v29 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a2, v25);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a2, 6, v29);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 4, v5);
  v30 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v26 - v27 + v28);
  v31 = *(this + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v32 = v30;
  *(a2 + 70) = 1;
  v33 = *(a2 + 8);
  v34 = *(a2 + 12);
  v35 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v32);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v31);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 7);
  v36 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v33 - v34 + v35);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v36);
  if (*(&v41 + 1))
  {
    boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::conditions::detail::When>,vp::Allocator<void>,void>::deallocate(&default_resource, v40);
  }

  return v36;
}

_DWORD *boost::container::vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::conditions::detail::When>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::conditions::detail::When>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::conditions::detail::When>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::conditions::detail::When>*,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::conditions::detail::When>>>(void *a1, uint64_t a2, char *a3, _DWORD *a4)
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
    result = boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::conditions::detail::When>,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 8));
  }

  v20 = *(a2 + 16) + 1;
  *(a2 + 8) = v14;
  *(a2 + 16) = v20;
  *(a2 + 24) = v10;
  *a1 = &a3[v14 - v9];
  return result;
}

uint64_t boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::conditions::detail::When> *,false>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

void *boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::conditions::detail::When>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void vp::vx::database::v1::syntax::conditions::When::~When(vp::vx::database::v1::syntax::conditions::When *this)
{
  *this = &unk_2881C6470;
  v3 = (this + 24);
  std::vector<std::tuple<vp::vx::database::v1::syntax::Logic,std::unique_ptr<vp::vx::database::v1::syntax::Decision>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881C6470;
  v3 = (this + 24);
  std::vector<std::tuple<vp::vx::database::v1::syntax::Logic,std::unique_ptr<vp::vx::database::v1::syntax::Decision>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void vp::vx::database::v1::syntax::conditions::When::add_condition(void *a1, uint64_t a2, uint64_t *a3)
{
  if ((a2 & 0x100000000) != 0)
  {
    v8 = a1[4];
    v9 = a1[5];
    if (v8 >= v9)
    {
      v12 = a1[3];
      v13 = v8 - v12;
      v14 = (v8 - v12) >> 4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 60)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v16 = v9 - v12;
      if (v16 >> 3 > v15)
      {
        v15 = v16 >> 3;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF0)
      {
        v17 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v18 = 16 * v14;
      *v18 = a2;
      v19 = *a3;
      *a3 = 0;
      *(v18 + 8) = v19;
      v11 = 16 * v14 + 16;
      memcpy(0, v12, v13);
      a1[3] = 0;
      a1[4] = v11;
      a1[5] = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v8 = a2;
      v10 = *a3;
      *a3 = 0;
      *(v8 + 8) = v10;
      v11 = v8 + 16;
    }

    a1[4] = v11;
  }

  else
  {
    v5 = *a3;
    *a3 = 0;
    v6 = a1[2];
    a1[2] = v5;
    if (v6)
    {
      v7 = *(*v6 + 8);

      v7();
    }
  }
}

uint64_t vp::vx::database::v1::syntax::conditions::When::When(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  v8 = (a1 + 16);
  *a1 = &unk_2881C6470;
  *(a1 + 32) = 0u;
  v9 = &a2[-*a2];
  if (*v9 >= 5u)
  {
    v10 = *(v9 + 2);
    if (v10)
    {
      (*(*a3 + 16))(&v33, a3, &a2[v10 + *&a2[v10]], a4);
      v11 = v33;
      v33 = 0;
      v12 = *v8;
      *v8 = v11;
      if (v12)
      {
        (*(*v12 + 8))(v12);
        v13 = v33;
        v33 = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }
    }
  }

  v14 = &a2[-*a2];
  if (*v14 >= 7u)
  {
    v15 = *(v14 + 3);
    if (v15)
    {
      v16 = *&a2[v15];
      v17 = &a2[v15 + v16];
      v18 = *v17;
      if (v18)
      {
        v19 = 0;
        v20 = 4 * v18;
        v21 = &a2[v15 + v16];
        do
        {
          v22 = *&v17[v19 + 4];
          v23 = v22 - *&v17[v19 + 4 + v22];
          v24 = &v21[v19 + v23];
          v25 = *(v24 + 2);
          if (v25 >= 5 && (v26 = *(v24 + 4)) != 0 && v21[v19 + 4 + v22 + v26])
          {
            v27 = 0x100000001;
          }

          else
          {
            v27 = 0x100000000;
          }

          if (v25 >= 7 && (v28 = *&v21[v19 + 10 + v23]) != 0)
          {
            v29 = &v21[v19 + 4 + v22 + v28 + *&v21[v19 + 4 + v22 + v28]];
          }

          else
          {
            v29 = 0;
          }

          (*(*a3 + 16))(&v32, a3, v29, a4);
          vp::vx::database::v1::syntax::conditions::When::add_condition(a1, v27, &v32);
          v30 = v32;
          v32 = 0;
          if (v30)
          {
            (*(*v30 + 8))(v30);
          }

          v19 += 4;
        }

        while (v20 != v19);
      }
    }
  }

  return a1;
}

uint64_t vp::vx::database::v1::syntax::conditions::When_Not::build(vp::vx::database::v1::syntax::conditions::When_Not *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2)
{
  v3 = this;
  v4 = vp::vx::database::v1::syntax::conditions::When::build((this + 16), a2);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v5 = v4;
  *(a2 + 70) = 1;
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  v8 = *(a2 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 4, v5);
  LODWORD(v6) = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v8 - v7 + v6);
  LODWORD(v3) = *(v3 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v9 = v6;
  *(a2 + 70) = 1;
  LODWORD(v7) = *(a2 + 8);
  LODWORD(v8) = *(a2 + 12);
  LODWORD(v6) = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v9);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v3);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 8);
  v10 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v7 - v8 + v6);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v10);
  return v10;
}

void vp::vx::database::v1::syntax::conditions::When_Not::~When_Not(vp::vx::database::v1::syntax::conditions::When_Not *this)
{
  *this = &unk_2881C6410;
  *(this + 2) = &unk_2881C6470;
  v3 = (this + 40);
  std::vector<std::tuple<vp::vx::database::v1::syntax::Logic,std::unique_ptr<vp::vx::database::v1::syntax::Decision>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881C6410;
  *(this + 2) = &unk_2881C6470;
  v3 = (this + 40);
  std::vector<std::tuple<vp::vx::database::v1::syntax::Logic,std::unique_ptr<vp::vx::database::v1::syntax::Decision>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

vp::rpb::Wire *vp::rpb::Wire::Wire(vp::rpb::Wire *this, id *a2, uint64_t a3, id *a4, uint64_t a5)
{
  v10 = objc_alloc(MEMORY[0x277D46140]);
  v11 = *a2;
  v12 = *a4;
  v13 = [v10 initWithSource:v11 terminal:a3 andDestination:v12 terminal:a5];
  *this = v13;

  return this;
}

void vp::vx::components::Wireless_Charging_Detector::~Wireless_Charging_Detector(std::__shared_weak_count **this)
{
  vp::vx::components::Wireless_Charging_Detector::~Wireless_Charging_Detector(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v20 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Wireless_Charging_Detector]", 46);
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

  v11 = this[3];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  this[4] = &unk_2881C6630;
  v12 = this[6];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t vp::decorators::Xcode_Instruments::GetMaxOutputPacketInfo(vp::decorators::Xcode_Instruments *this, AudioStreamBasicDescription *a2, AudioChannelLayout *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  log = vp::get_log(this);
  v13 = os_signpost_id_generate(log);
  if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = *(**(this + 1) + 104);

    return v17();
  }

  else
  {
    v14 = v13;
    if (os_signpost_enabled(log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2724B4000, log, OS_SIGNPOST_INTERVAL_BEGIN, v14, "GetMaxOutputPacketInfo", "Begin", buf, 2u);
    }

    v15 = (*(**(this + 1) + 104))(*(this + 1), a2, a3, a4, a5, a6);
    if (os_signpost_enabled(log))
    {
      *v18 = 0;
      _os_signpost_emit_with_name_impl(&dword_2724B4000, log, OS_SIGNPOST_INTERVAL_END, v14, "GetMaxOutputPacketInfo", "End", v18, 2u);
    }

    return v15;
  }
}

uint64_t vp::decorators::Xcode_Instruments::ProcessDownlinkAudio(vp::decorators::Xcode_Instruments *this, AudioBufferList *a2, AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, uint64_t a6, const AudioTimeStamp *a7)
{
  mSampleTime = a7->mSampleTime;
  mHostTime = a7->mHostTime;
  mFlags = a7->mFlags;
  kdebug_trace();
  v17 = (*(**(this + 1) + 72))(*(this + 1), a2, a3, a4, a5, a6, a7);
  kdebug_trace();
  return v17;
}

uint64_t vp::decorators::Xcode_Instruments::Process(vp::decorators::Xcode_Instruments *this, const AudioBufferList *a2, const AudioTimeStamp *a3, AudioBufferList *a4, AudioTimeStamp *a5, unsigned int *a6, void *a7, unsigned int *a8, AudioStreamPacketDescription *a9)
{
  mSampleTime = a3->mSampleTime;
  mHostTime = a3->mHostTime;
  mFlags = a3->mFlags;
  kdebug_trace();
  v20 = (*(**(this + 1) + 64))(*(this + 1), a2, a3, a4, a5, a6, a7, a8, a9);
  v21 = a5->mSampleTime;
  v22 = a5->mHostTime;
  v23 = a5->mFlags;
  kdebug_trace();
  return v20;
}

void vp::decorators::Xcode_Instruments::SetProperty(vp::decorators::Xcode_Instruments *this, int a2, const void *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  os_signpost_id_generate(log);
}

void sub_2727505DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

void vp::decorators::anonymous namespace::create_property_pretty_printer(vp::decorators::_anonymous_namespace_ *this, int a2)
{
  if (a2 > 1634300530)
  {
    if (a2 > 1836278116)
    {
      if (a2 <= 1936747875)
      {
        switch(a2)
        {
          case 1836278117:
            operator new();
          case 1936744803:
            operator new();
          case 1936746595:
            operator new();
        }
      }

      else if (a2 > 1953915761)
      {
        if (a2 == 1953915762)
        {
          operator new();
        }

        if (a2 == 1953915764)
        {
          operator new();
        }
      }

      else
      {
        if (a2 == 1936747876)
        {
          operator new();
        }

        if (a2 == 1937141091)
        {
          operator new();
        }
      }
    }

    else if (a2 <= 1769169760)
    {
      switch(a2)
      {
        case 1634300531:
          operator new();
        case 1635085677:
          operator new();
        case 1718384242:
          operator new();
      }
    }

    else if (a2 > 1836082531)
    {
      if (a2 == 1836082532)
      {
        operator new();
      }

      if (a2 == 1836266093)
      {
        operator new();
      }
    }

    else
    {
      if (a2 == 1769169761)
      {
        operator new();
      }

      if (a2 == 1835361379)
      {
        operator new();
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 32768:
        operator new();
      case 32769:
        operator new();
      case 32772:
        operator new();
      case 32773:
        operator new();
      case 32780:
        operator new();
      case 32781:
        operator new();
      case 32783:
        operator new();
      case 32784:
        operator new();
      case 32786:
        operator new();
      case 32787:
        operator new();
      case 32788:
        operator new();
      case 32790:
        operator new();
      case 32792:
        operator new();
      case 32794:
        operator new();
      case 32795:
        operator new();
      case 32796:
        operator new();
      case 32797:
        operator new();
      case 32798:
        operator new();
      case 32799:
        operator new();
      case 32800:
        operator new();
      case 32801:
        operator new();
      default:
        break;
    }
  }

  operator new();
}

_BYTE *vp::decorators::anonymous namespace::Chat_Flavor_Property_Pretty_Printer::print_value@<X0>(unsigned int *a1@<X1>, unint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v6 = "Uknown";
  if (a1)
  {
    if (a2 >= 4)
    {
      v7 = *a1;
      if (v7 <= 2)
      {
        v6 = off_279E4A540[v7];
      }
    }
  }

  return std::string::basic_string[abi:ne200100]<0>(a3, v6);
}

_BYTE *vp::decorators::anonymous namespace::Operation_Mode_Property_Pretty_Printer::print_value@<X0>(unsigned int *a1@<X1>, unint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v6 = "Uknown Call";
  if (a1)
  {
    if (a2 >= 4)
    {
      v7 = *a1;
      if (v7 <= 8)
      {
        v6 = off_279E4A4F8[v7];
      }
    }
  }

  return std::string::basic_string[abi:ne200100]<0>(a3, v6);
}

void vp::decorators::anonymous namespace::Operation_Mode_Property_Pretty_Printer::~Operation_Mode_Property_Pretty_Printer(void **this)
{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

std::string *vp::decorators::anonymous namespace::To_String_Property_Pretty_Printer<long long []>::print_value@<X0>(uint64_t *a1@<X1>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  v3 = a3;
  if (!a1 || a2 < 8)
  {
    return std::string::basic_string[abi:ne200100]<0>(a3, "???");
  }

  v4 = a1;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  v5 = a2 >> 3;
  a3->__r_.__value_.__r.__words[2] = 0;
  do
  {
    v6 = *v4++;
    std::to_string(&v15, v6);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v15;
    }

    else
    {
      v7 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    std::string::append(v3, v7, size);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    result = std::string::append(v3, ", ", 2uLL);
    --v5;
  }

  while (v5);
  v10 = SHIBYTE(v3->__r_.__value_.__r.__words[2]);
  if (v10 < 0)
  {
    v12 = v3->__r_.__value_.__r.__words[0];
    v11 = v3->__r_.__value_.__l.__size_ - 1;
    v3->__r_.__value_.__l.__size_ = v11;
  }

  else
  {
    v11 = v10 - 1;
    *(&v3->__r_.__value_.__s + 23) = v11 & 0x7F;
    v12 = v3;
  }

  v12->__r_.__value_.__s.__data_[v11] = 0;
  v13 = SHIBYTE(v3->__r_.__value_.__r.__words[2]);
  if (v13 < 0)
  {
    v14 = v3->__r_.__value_.__l.__size_ - 1;
    v3->__r_.__value_.__l.__size_ = v14;
    v3 = v3->__r_.__value_.__r.__words[0];
  }

  else
  {
    v14 = v13 - 1;
    *(&v3->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  v3->__r_.__value_.__s.__data_[v14] = 0;
  return result;
}

std::string *vp::decorators::anonymous namespace::To_String_Property_Pretty_Printer<double>::print_value@<X0>(double *a1@<X1>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  if (a1 && a2 >= 8)
  {
    return std::to_string(a3, *a1);
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a3, "???");
  }
}

void vp::decorators::anonymous namespace::CF_Property_Pretty_Printer::print_value(CFTypeRef *a1@<X1>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  if (a1 && a2 >= 8 && (v5 = *a1) != 0)
  {
    CFRetain(*a1);
    v6 = CFCopyDescription(v5);
    applesauce::CF::details::CFString_get_value<true>(a3, v6);
    if (v6)
    {
      CFRelease(v6);
    }

    size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    if (size >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = a3->__r_.__value_.__r.__words[0];
    }

    if (size < 0)
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    v9 = &v8[size];
    v10 = size - 2;
    if (size >= 2)
    {
      v11 = v8 + 1;
      v12 = MEMORY[0x277D85DE0];
      while (1)
      {
        v13 = *v8;
        v14 = *v11;
        if ((v13 & 0x80000000) != 0 ? __maskrune(v13, 0x4000uLL) : *(v12 + 4 * v13 + 60) & 0x4000)
        {
          if ((v14 & 0x80000000) != 0 ? __maskrune(v14, 0x4000uLL) : *(v12 + 4 * v14 + 60) & 0x4000)
          {
            break;
          }
        }

        ++v11;
        --v10;
        ++v8;
        if (v11 == v9)
        {
          goto LABEL_40;
        }
      }

      if (v8 != v9)
      {
        if (v8 + 2 == v9)
        {
          v18 = v8;
        }

        else
        {
          v17 = 2;
          v18 = v8;
          do
          {
            v19 = *v18;
            v20 = v8[v17];
            if ((v19 & 0x80000000) != 0)
            {
              v21 = __maskrune(v19, 0x4000uLL);
            }

            else
            {
              v21 = *(v12 + 4 * v19 + 60) & 0x4000;
            }

            if (!v21 || ((v20 & 0x80000000) != 0 ? (v22 = __maskrune(v20, 0x4000uLL)) : (v22 = *(v12 + 4 * v20 + 60) & 0x4000), !v22))
            {
              *++v18 = v8[v17];
            }

            ++v17;
            --v10;
          }

          while (v10);
        }

        v9 = v18 + 1;
      }
    }

LABEL_40:
    v23 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    if ((v23 & 0x80u) == 0)
    {
      v24 = a3;
    }

    else
    {
      v24 = a3->__r_.__value_.__r.__words[0];
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = a3->__r_.__value_.__l.__size_;
    }

    std::string::erase(a3, v9 - v24, v24 + v23 - v9);
    CFRelease(v5);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }
}

void sub_272751560(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

void vp::decorators::anonymous namespace::CF_Literal_Property_Pretty_Printer::print_value(CFTypeRef cf@<X1>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  if (a2 >= 8 && cf)
  {
    CFRetain(cf);
    v6 = CFCopyDescription(cf);
    applesauce::CF::details::CFString_get_value<true>(a3, v6);
    if (v6)
    {
      CFRelease(v6);
    }

    size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    if (size >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = a3->__r_.__value_.__r.__words[0];
    }

    if (size < 0)
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    v9 = &v8[size];
    v10 = size - 2;
    if (size >= 2)
    {
      v11 = v8 + 1;
      v12 = MEMORY[0x277D85DE0];
      while (1)
      {
        v13 = *v8;
        v14 = *v11;
        if ((v13 & 0x80000000) != 0 ? __maskrune(v13, 0x4000uLL) : *(v12 + 4 * v13 + 60) & 0x4000)
        {
          if ((v14 & 0x80000000) != 0 ? __maskrune(v14, 0x4000uLL) : *(v12 + 4 * v14 + 60) & 0x4000)
          {
            break;
          }
        }

        ++v11;
        --v10;
        ++v8;
        if (v11 == v9)
        {
          goto LABEL_39;
        }
      }

      if (v8 != v9)
      {
        if (v8 + 2 == v9)
        {
          v18 = v8;
        }

        else
        {
          v17 = 2;
          v18 = v8;
          do
          {
            v19 = *v18;
            v20 = v8[v17];
            if ((v19 & 0x80000000) != 0)
            {
              v21 = __maskrune(v19, 0x4000uLL);
            }

            else
            {
              v21 = *(v12 + 4 * v19 + 60) & 0x4000;
            }

            if (!v21 || ((v20 & 0x80000000) != 0 ? (v22 = __maskrune(v20, 0x4000uLL)) : (v22 = *(v12 + 4 * v20 + 60) & 0x4000), !v22))
            {
              *++v18 = v8[v17];
            }

            ++v17;
            --v10;
          }

          while (v10);
        }

        v9 = v18 + 1;
      }
    }

LABEL_39:
    v23 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    if ((v23 & 0x80u) == 0)
    {
      v24 = a3;
    }

    else
    {
      v24 = a3->__r_.__value_.__r.__words[0];
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = a3->__r_.__value_.__l.__size_;
    }

    std::string::erase(a3, v9 - v24, v24 + v23 - v9);
    CFRelease(cf);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }
}

void sub_2727517B0(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

std::string *vp::decorators::anonymous namespace::To_String_Property_Pretty_Printer<float>::print_value@<X0>(float *a1@<X1>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  if (a1 && a2 >= 4)
  {
    return std::to_string(a3, *a1);
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a3, "???");
  }
}

std::string *vp::decorators::anonymous namespace::To_String_Property_Pretty_Printer<unsigned int []>::print_value@<X0>(unsigned int *a1@<X1>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  v3 = a3;
  if (!a1 || a2 < 4)
  {
    return std::string::basic_string[abi:ne200100]<0>(a3, "???");
  }

  v4 = a1;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  v5 = a2 >> 2;
  a3->__r_.__value_.__r.__words[2] = 0;
  do
  {
    v6 = *v4++;
    std::to_string(&v15, v6);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v15;
    }

    else
    {
      v7 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    std::string::append(v3, v7, size);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    result = std::string::append(v3, ", ", 2uLL);
    --v5;
  }

  while (v5);
  v10 = SHIBYTE(v3->__r_.__value_.__r.__words[2]);
  if (v10 < 0)
  {
    v12 = v3->__r_.__value_.__r.__words[0];
    v11 = v3->__r_.__value_.__l.__size_ - 1;
    v3->__r_.__value_.__l.__size_ = v11;
  }

  else
  {
    v11 = v10 - 1;
    *(&v3->__r_.__value_.__s + 23) = v11 & 0x7F;
    v12 = v3;
  }

  v12->__r_.__value_.__s.__data_[v11] = 0;
  v13 = SHIBYTE(v3->__r_.__value_.__r.__words[2]);
  if (v13 < 0)
  {
    v14 = v3->__r_.__value_.__l.__size_ - 1;
    v3->__r_.__value_.__l.__size_ = v14;
    v3 = v3->__r_.__value_.__r.__words[0];
  }

  else
  {
    v14 = v13 - 1;
    *(&v3->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  v3->__r_.__value_.__s.__data_[v14] = 0;
  return result;
}

std::string *vp::decorators::anonymous namespace::To_String_Property_Pretty_Printer<unsigned int>::print_value@<X0>(unsigned int *a1@<X1>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  if (a1 && a2 >= 4)
  {
    return std::to_string(a3, *a1);
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a3, "???");
  }
}

void vp::decorators::anonymous namespace::Base_64_Property_Pretty_Printer::print_value(const unsigned __int8 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  vp::utility::encode_to_base_64(&v5, a1, a2);
  if (v7 == 1)
  {
    *a3 = v5;
    *(a3 + 16) = v6;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a3, "???");
  }
}

std::string *vp::decorators::anonymous namespace::To_String_Property_Pretty_Printer<float []>::print_value@<X0>(float *a1@<X1>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  v3 = a3;
  if (!a1 || a2 < 4)
  {
    return std::string::basic_string[abi:ne200100]<0>(a3, "???");
  }

  v4 = a1;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  v5 = a2 >> 2;
  a3->__r_.__value_.__r.__words[2] = 0;
  do
  {
    std::to_string(&v14, *v4);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v14;
    }

    else
    {
      v6 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    std::string::append(v3, v6, size);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    result = std::string::append(v3, ", ", 2uLL);
    ++v4;
    --v5;
  }

  while (v5);
  v9 = SHIBYTE(v3->__r_.__value_.__r.__words[2]);
  if (v9 < 0)
  {
    v11 = v3->__r_.__value_.__r.__words[0];
    v10 = v3->__r_.__value_.__l.__size_ - 1;
    v3->__r_.__value_.__l.__size_ = v10;
  }

  else
  {
    v10 = v9 - 1;
    *(&v3->__r_.__value_.__s + 23) = v10 & 0x7F;
    v11 = v3;
  }

  v11->__r_.__value_.__s.__data_[v10] = 0;
  v12 = SHIBYTE(v3->__r_.__value_.__r.__words[2]);
  if (v12 < 0)
  {
    v13 = v3->__r_.__value_.__l.__size_ - 1;
    v3->__r_.__value_.__l.__size_ = v13;
    v3 = v3->__r_.__value_.__r.__words[0];
  }

  else
  {
    v13 = v12 - 1;
    *(&v3->__r_.__value_.__s + 23) = v13 & 0x7F;
  }

  v3->__r_.__value_.__s.__data_[v13] = 0;
  return result;
}

_BYTE *vp::decorators::anonymous namespace::Boolean_Property_Pretty_Printer::print_value@<X0>(int *a1@<X1>, unint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v6 = "Unknown";
  if (a1 && a2 >= 4)
  {
    v7 = *a1;
    v8 = "Yes";
    if (v7 != 1)
    {
      v8 = "Unknown";
    }

    if (v7)
    {
      v6 = v8;
    }

    else
    {
      v6 = "No";
    }
  }

  return std::string::basic_string[abi:ne200100]<0>(a3, v6);
}

void vp::decorators::Xcode_Instruments::GetProperty(vp::decorators::Xcode_Instruments *this, int a2, void *a3, unsigned int a4, unsigned int *a5)
{
  v8 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  os_signpost_id_generate(log);
}

void sub_272751FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::decorators::Xcode_Instruments::InitializeSpeakerTelemetryInput(vp::decorators::Xcode_Instruments *this, const AudioStreamBasicDescription *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  v7 = os_signpost_id_generate(log);
  if (v7 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = *(**(this + 1) + 40);
    v15 = *MEMORY[0x277D85DE8];

    return v14();
  }

  else
  {
    v8 = v7;
    if (os_signpost_enabled(log))
    {
      v9 = *&a2->mBytesPerPacket;
      v16[0] = *&a2->mSampleRate;
      v16[1] = v9;
      v17 = *&a2->mBitsPerChannel;
      CA::StreamDescription::AsString(__p, v16, *v16, *&v9);
      v10 = v19 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v21 = v10;
      v22 = 1024;
      v23 = a3;
      _os_signpost_emit_with_name_impl(&dword_2724B4000, log, OS_SIGNPOST_INTERVAL_BEGIN, v8, "InitializeSpeakerTelemetryInput", "Begin SPEAKER_TELEMETRY_ASBD:%s SPEAKER_TELEMETRY_FRAME_SIZE:%u", buf, 0x12u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v11 = (*(**(this + 1) + 40))(*(this + 1), a2, a3);
    if (os_signpost_enabled(log))
    {
      LOWORD(v16[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_2724B4000, log, OS_SIGNPOST_INTERVAL_END, v8, "InitializeSpeakerTelemetryInput", "End", v16, 2u);
    }

    v12 = *MEMORY[0x277D85DE8];
    return v11;
  }
}

uint64_t vp::decorators::Xcode_Instruments::InitializeDownlinkProcessing(vp *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x277D85DE8];
  log = vp::get_log(a1);
  v11 = os_signpost_id_generate(log);
  if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = *(**(a1 + 1) + 32);
    v21 = *MEMORY[0x277D85DE8];

    return v20();
  }

  else
  {
    v12 = v11;
    if (os_signpost_enabled(log))
    {
      v13 = *(a2 + 16);
      *v26 = *a2;
      v27 = v13;
      v28 = *(a2 + 32);
      v14 = v29;
      CA::StreamDescription::AsString(v29, v26, *v26, *&v13);
      if (v30 < 0)
      {
        v14 = v29[0];
      }

      v15 = *(a4 + 16);
      v22[0] = *a4;
      v22[1] = v15;
      v23 = *(a4 + 32);
      CA::StreamDescription::AsString(__p, v22, *v22, *&v15);
      if (v25 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 136315650;
      v32 = v14;
      v33 = 1024;
      v34 = a3;
      v35 = 2080;
      v36 = v16;
      _os_signpost_emit_with_name_impl(&dword_2724B4000, log, OS_SIGNPOST_INTERVAL_BEGIN, v12, "InitializeDownlinkProcessing", "Begin HW_MIX_ASBD:%s HW_MIX_FRAME_SIZE:%u FEV_ASBD:%s", buf, 0x1Cu);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }
    }

    v17 = (*(**(a1 + 1) + 32))(*(a1 + 1), a2, a3, a4, a5);
    if (os_signpost_enabled(log))
    {
      *v26 = 0;
      _os_signpost_emit_with_name_impl(&dword_2724B4000, log, OS_SIGNPOST_INTERVAL_END, v12, "InitializeDownlinkProcessing", "End", v26, 2u);
    }

    v18 = *MEMORY[0x277D85DE8];
    return v17;
  }
}

uint64_t vp::decorators::Xcode_Instruments::InitializeOutput(vp::decorators::Xcode_Instruments *this, AudioStreamBasicDescription *a2, AudioChannelLayout *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  v13 = os_signpost_id_generate(log);
  if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = *(**(this + 1) + 24);
    v21 = *MEMORY[0x277D85DE8];

    return v20();
  }

  else
  {
    v14 = v13;
    if (os_signpost_enabled(log))
    {
      v15 = *&a2->mBytesPerPacket;
      v22[0] = *&a2->mSampleRate;
      v22[1] = v15;
      v23 = *&a2->mBitsPerChannel;
      CA::StreamDescription::AsString(__p, v22, *v22, *&v15);
      v16 = v25 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v27 = v16;
      _os_signpost_emit_with_name_impl(&dword_2724B4000, log, OS_SIGNPOST_INTERVAL_BEGIN, v14, "InitializeOutput", "Begin OUTPUT_ASBD:%s", buf, 0xCu);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v17 = (*(**(this + 1) + 24))(*(this + 1), a2, a3, a4, a5, a6);
    if (os_signpost_enabled(log))
    {
      LOWORD(v22[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_2724B4000, log, OS_SIGNPOST_INTERVAL_END, v14, "InitializeOutput", "End", v22, 2u);
    }

    v18 = *MEMORY[0x277D85DE8];
    return v17;
  }
}

uint64_t vp::decorators::Xcode_Instruments::InitializeHWInput(vp::decorators::Xcode_Instruments *this, const AudioStreamBasicDescription *a2, const AudioChannelLayout *a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int *a7, const AudioStreamBasicDescription *a8, const AudioChannelLayout *a9, uint64_t a10, unsigned int a11, unsigned int *a12)
{
  v69 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  v17 = os_signpost_id_generate(log);
  if (v17 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v28 = *(this + 1);
    v29 = *(*v28 + 16);
    v30 = *MEMORY[0x277D85DE8];

    return v29(v28, a2, a3, a4);
  }

  else
  {
    spid = v17;
    v18 = a7;
    if (os_signpost_enabled(log))
    {
      v19 = *&a2->mBytesPerPacket;
      v49[0] = *&a2->mSampleRate;
      v49[1] = v19;
      v50 = *&a2->mBitsPerChannel;
      CA::StreamDescription::AsString(v51, v49, *v49, *&v19);
      if (v52 >= 0)
      {
        v20 = v51;
      }

      else
      {
        v20 = v51[0];
      }

      v34 = v20;
      if (a6)
      {
        v21 = a7 == 0;
      }

      else
      {
        v21 = 1;
      }

      v22 = !v21;
      v35 = v22;
      v23 = "????";
      if (!v21)
      {
        v24 = *v18;
        v48 = 4;
        LODWORD(v47) = bswap32(v24);
        BYTE4(v47) = 0;
        v23 = &v47;
      }

      v25 = *&a8->mBytesPerPacket;
      v43[0] = *&a8->mSampleRate;
      v43[1] = v25;
      v44 = *&a8->mBitsPerChannel;
      CA::StreamDescription::AsString(v45, v43, *v43, *&v25);
      v26 = v45;
      if (v46 < 0)
      {
        v26 = v45[0];
      }

      if (a11 && a12)
      {
        v27 = *a12;
        v42 = 4;
        LODWORD(__p) = bswap32(v27);
        BYTE4(__p) = 0;
        *buf = 136316930;
        v54 = v34;
        v55 = 1024;
        v56 = a4;
        v57 = 1024;
        v58 = a5;
        v59 = 2080;
        v60 = v23;
        v61 = 2080;
        v62 = v26;
        v63 = 1024;
        v64 = a10;
        v65 = 1024;
        v66 = HIDWORD(a10);
        v67 = 2080;
        p_p = &__p;
        _os_signpost_emit_with_name_impl(&dword_2724B4000, log, OS_SIGNPOST_INTERVAL_BEGIN, spid, "InitializeHWInput", "Begin REF_ASBD:%s REF_FRAME_SIZE:%u REF_DEVICE_ID:%u REF_PORT_TYPE:%s MIC_ASBD:%s MIC_FRAME_SIZE:%u MIC_DEVICE_ID:%u MIC_PORT_TYPE:%s", buf, 0x42u);
        if (v42 < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        *buf = 136316930;
        v54 = v34;
        v55 = 1024;
        v56 = a4;
        v57 = 1024;
        v58 = a5;
        v59 = 2080;
        v60 = v23;
        v61 = 2080;
        v62 = v26;
        v63 = 1024;
        v64 = a10;
        v65 = 1024;
        v66 = HIDWORD(a10);
        v67 = 2080;
        p_p = "????";
        _os_signpost_emit_with_name_impl(&dword_2724B4000, log, OS_SIGNPOST_INTERVAL_BEGIN, spid, "InitializeHWInput", "Begin REF_ASBD:%s REF_FRAME_SIZE:%u REF_DEVICE_ID:%u REF_PORT_TYPE:%s MIC_ASBD:%s MIC_FRAME_SIZE:%u MIC_DEVICE_ID:%u MIC_PORT_TYPE:%s", buf, 0x42u);
      }

      if (v46 < 0)
      {
        operator delete(v45[0]);
      }

      if (v35 && v48 < 0)
      {
        operator delete(v47);
      }

      if (v52 < 0)
      {
        operator delete(v51[0]);
      }
    }

    v32 = (*(**(this + 1) + 16))(*(this + 1), a2, a3, a4, a5, a6, v18, a8, a9, a10, a11, a12);
    if (os_signpost_enabled(log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2724B4000, log, OS_SIGNPOST_INTERVAL_END, spid, "InitializeHWInput", "End", buf, 2u);
    }

    v33 = *MEMORY[0x277D85DE8];
    return v32;
  }
}

void vp::decorators::Xcode_Instruments::~Xcode_Instruments(vp::decorators::Xcode_Instruments *this)
{
  vp::decorators::Xcode_Instruments::~Xcode_Instruments(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v23 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  v3 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v3)
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::decorators::Xcode_Instruments]", 33);
    v5 = v18;
    v6 = v18;
    v7 = __p[1];
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
      v20 = v10;
      v21 = 2080;
      v22 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_INFO, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v6) = v18;
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = vp::get_log(v3);
  v13 = os_signpost_id_make_with_pointer(v12, this);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      LOWORD(__p[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_2724B4000, v12, OS_SIGNPOST_INTERVAL_END, v14, "VoiceProcessor", "End", __p, 2u);
    }
  }

  v15 = *(this + 1);
  *this = &unk_2881C6738;
  *(this + 1) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void std::unique_ptr<_xmlDoc,applesauce::raii::v1::detail::opaque_deletion_functor<_xmlDoc*,&(xmlFreeDoc)>>::reset[abi:ne200100](xmlDoc **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xmlFreeDoc(v2);
  }
}

void std::unique_ptr<_xmlParserCtxt,applesauce::raii::v1::detail::opaque_deletion_functor<_xmlParserCtxt*,&(xmlFreeParserCtxt)>>::reset[abi:ne200100](xmlParserCtxt **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xmlFreeParserCtxt(v2);
  }
}

void std::__shared_ptr_pointer<_xmlDoc *,applesauce::raii::v1::detail::opaque_deletion_functor<_xmlDoc *,&(xmlFreeDoc)>,std::allocator<_xmlDoc>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

const char *vp::xml::Node::name(vp::xml::Node *this, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(this + 2);
    strlen(v3);
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  else
  {
    v3 = *(this + 2);
    strlen(v3);
  }

  return v3;
}

void vp::xml::Node::children(vp::xml::Node *this, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = a2[1];
    v6 = *(v3 + 24);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    *this = v6;
    *(this + 1) = v5;

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    *this = *(v3 + 24);
    *(this + 1) = 0;
  }
}

const char *vp::xml::Node::content(vp::xml::Node *this, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(this + 10);
    strlen(v3);
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  else
  {
    v3 = *(this + 10);
    strlen(v3);
  }

  return v3;
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v2 = MEMORY[0x28210EEA0](tz, at);
  result.second = v3;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__extension(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F0](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7400](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

uint64_t std::filebuf::basic_filebuf()
{
  return MEMORY[0x2821F77A0]();
}

{
  return MEMORY[0x2821F77A8]();
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7830]();
}

{
  return MEMORY[0x2821F7848]();
}

{
  return MEMORY[0x2821F7870]();
}

uint64_t std::ostream::~ostream()
{
  return MEMORY[0x2821F78C0]();
}

{
  return MEMORY[0x2821F78C8]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7938]();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, uint64_t __val)
{
  return MEMORY[0x2821F7F20](retstr, __val);
}

{
  return MEMORY[0x2821F7F30](retstr, __val);
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x2821F7F28](retstr, __val);
}

{
  return MEMORY[0x2821F7F38](retstr, __val);
}

std::bad_cast *__cdecl std::bad_cast::bad_cast(std::bad_cast *this)
{
  return MEMORY[0x2821F7F48](this);
}

{
  return MEMORY[0x2821F7F50](this);
}

void std::exception::~exception(std::exception *this)
{
  MEMORY[0x2821F7F88](this);
}

{
  MEMORY[0x2821F7F90](this);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}