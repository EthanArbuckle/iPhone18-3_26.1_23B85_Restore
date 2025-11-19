void std::vector<nl_featurization::beam_search::BeamSequence>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 6);
        if (v7)
        {
          *(v4 - 5) = v7;
          operator delete(v7);
        }

        v8 = *(v4 - 9);
        if (v8)
        {
          *(v4 - 8) = v8;
          operator delete(v8);
        }

        std::__tree<unsigned long>::destroy(*(v4 - 11));
        v4 -= 128;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_222927C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  UPInferenceResult::~UPInferenceResult(v28);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a11);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a17);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a23);
  if (*(v29 - 113) < 0)
  {
    operator delete(*(v29 - 136));
  }

  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
  }

  if (*(v29 - 65) < 0)
  {
    operator delete(*(v29 - 88));
  }

  _Unwind_Resume(a1);
}

uint64_t snlp::ssu::trigger::SSUTriggerDisjunction::isTriggered(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    LODWORD(v5) = 0;
LABEL_6:
    v6 = 0;
    v7 = 0;
  }

  else
  {
    while (1)
    {
      v5 = (*(**v2 + 16))(*v2, a2);
      if ((v5 & 0x100000000) != 0)
      {
        break;
      }

      v2 += 2;
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    v7 = v5 & 0xFF00000000;
    v6 = v5;
  }

  return v5 & 0xFFFFFF00 | v6 | v7;
}

void snlp::ssu::trigger::SSUTriggerDisjunction::~SSUTriggerDisjunction(snlp::ssu::trigger::SSUTriggerDisjunction *this)
{
  *this = &unk_2835E4240;
  v1 = (this + 8);
  std::vector<std::shared_ptr<snlp::ssu::trigger::SSUTrigger>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E4240;
  v1 = (this + 8);
  std::vector<std::shared_ptr<snlp::ssu::trigger::SSUTrigger>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void *snlp::ssu::trigger::SSUTriggerDisjunction::SSUTriggerDisjunction(void *result, uint64_t a2)
{
  *result = &unk_2835E4240;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  *(result + 1) = *a2;
  result[3] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  for (i = result[1]; i != result[2]; i += 2)
  {
    if (!*i)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Cannot construct SSUTriggerDisjunction with nullptr");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_222928864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  a10 = a9;
  std::vector<std::shared_ptr<snlp::ssu::trigger::SSUTrigger>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t snlp::ssu::trigger::SSUTriggerDisjunction::subTriggers@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 8);
  v3 = *(this + 16);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

uint64_t nlv4_inference_orchestrator::inference_engine::Trail::getTokenHistory@<X0>(nlv4_inference_orchestrator::inference_engine::Trail *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a2, *(this + 25), *(this + 26), (*(this + 26) - *(this + 25)) >> 3);
}

uint64_t *uaap::EspressoModule::EspressoModule(uint64_t *a1, uint64_t *a2)
{
  uaap::EspressoModule::deserializeModule(a1, a2);
  return a1;
}

{
  uaap::EspressoModule::deserializeModule(a1, a2);
  return a1;
}

uint64_t uaap::EspressoModule::deserializeModule(uint64_t *a1, uint64_t *a2)
{
  context = espresso_create_context();
  *a1 = context;
  if (!context)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Espresso context is nil.");
    goto LABEL_10;
  }

  plan = espresso_create_plan();
  a1[1] = plan;
  if (!plan)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Espresso plan is nil.");
    goto LABEL_10;
  }

  if (*(a2 + 23) < 0)
  {
    v6 = *a2;
  }

  result = espresso_plan_add_network();
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not create espresso plan.");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void uaap::EspressoModule::~EspressoModule(uaap::EspressoModule *this)
{
  v2 = *(this + 1);
  espresso_plan_destroy();
  v3 = *this;
  espresso_context_destroy();
}

uint64_t uaap::EspressoModule::buildPlan(uaap::EspressoModule *this)
{
  v1 = *(this + 1);
  result = espresso_plan_build();
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to build espresso plan.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t uaap::EspressoModule::executePlan(uaap::EspressoModule *this)
{
  v1 = *(this + 1);
  result = espresso_plan_execute_sync();
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to execute espresso plan.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t uaap::EspressoModule::cleanPlan(uaap::EspressoModule *this)
{
  v1 = *(this + 1);
  result = espresso_plan_build_clean();
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to clean up espresso plan.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t uaap::EspressoModule::reshape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = SNLPOSLoggerForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "Reshaping network to handle current request inputs", buf, 2u);
  }

  v47 = xmmword_2784B69F8;
  v6 = *a2;
  v7 = *a3;
  v8 = *(*a3 + 8);
  v45 = *(*a2 + 16);
  v46 = v8;
  v9 = 1;
  v43 = 1;
  v44 = *v7;
  v41 = *v6;
  v42 = 1;
  v40 = 0x100000001;
  v39 = -1;
  v38 = 0x300000003;
  v10 = &v47;
  v11 = &v45;
  v12 = &v43;
  v13 = &v41;
  v14 = &v40;
  do
  {
    v15 = v9;
    v16 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = *v10;
      v18 = *v11;
      v19 = *v12;
      v20 = *v13;
      v21 = *v14;
      *buf = 136316162;
      v29 = v17;
      v30 = 1024;
      v31 = v18;
      v32 = 1024;
      v33 = v19;
      v34 = 1024;
      v35 = v20;
      v36 = 1024;
      v37 = v21;
      _os_log_impl(&dword_22284A000, v16, OS_LOG_TYPE_DEBUG, "Reshaping blob '%s' to w=%d, h=%d, k=%d, n=%d", buf, 0x24u);
    }

    v9 = 0;
    v13 = &v42;
    v14 = (&v40 + 4);
    v12 = &v44;
    v11 = &v46;
    v10 = (&v47 + 8);
  }

  while ((v15 & 1) != 0);
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  result = espresso_network_change_input_blob_shapes_seq_rank();
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to reshape espresso blob.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t uaap::EspressoModule::setInput(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v13 = *a3;
  v6 = a4[1] - *a4;
  espresso_buffer_pack_tensor_shape();
  v14 = 65568;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  result = espresso_network_bind_buffer();
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_222929008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void uaap::EspressoModule::getOutput(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 65568;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  v8 = *(a1 + 16);
  v9 = v21;
  if (espresso_network_bind_buffer())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v23);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v20 = 0;
  espresso_buffer_unpack_tensor_shape();
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v19 = 0uLL;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, &v23, &v23 + 8 * v20, v20);
  v10 = __p;
  v11 = v21;
  *a3 = __p;
  v12 = v19;
  *(a3 + 8) = v19;
  if (v12 == v10)
  {
    v14 = 1;
  }

  else
  {
    v13 = v12 - v10;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v14 = 1;
    do
    {
      v15 = *v10++;
      v14 *= v15;
      --v13;
    }

    while (v13);
  }

  __p = 0;
  v19 = 0uLL;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v11, v11 + 4 * v14, v14);
  if ((a3 + 24) != &__p)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a3 + 24), __p, v19, (v19 - __p) >> 2);
  }

  if (__p)
  {
    *&v19 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    free(v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_222929218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (*(v13 - 113) < 0)
  {
    operator delete(*(v13 - 136));
    if ((v12 & 1) == 0)
    {
LABEL_6:
      if (v10)
      {
        free(v10);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v12)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v11);
  goto LABEL_6;
}

char **uaap::DateDurationHandler::handle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = DDResultHasType();
  if (result)
  {

    return uaap::mapDateDurationToItemizedUsos(a3);
  }

  return result;
}

char **uaap::mapDateDurationToItemizedUsos(uint64_t a1)
{
  CFHash(@"DateDuration");
  uaap::DateSpanHandler::mapDateSpanToItemizedUsos(a1);
  uaap::DateHandler::mapDateToItemizedUsos(a1);
  uaap::mapTimeSpansToItemizedUsos(a1);

  return uaap::mapTimeSpanSpansToItemizedUsos(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>>::find<unsigned long>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a3)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= a2)
          {
            v7 %= a2;
          }
        }

        else
        {
          v7 &= a2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,nlv4_inference_orchestrator::inference_engine::TokenIndexAndScore *,0>(__n128 *a1, __n128 *a2, float *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2->n128_f32[2];
  v6 = a3[2];
  if (v5 >= a1->n128_f32[2])
  {
    if (v6 < v5)
    {
      result = *a2;
      v21 = *a2;
      v9 = *(a3 + 2);
      a2->n128_u64[0] = *a3;
      a2->n128_u32[2] = v9;
      *a3 = v21.n128_u64[0];
      a3[2] = v21.n128_f32[2];
      if (a2->n128_f32[2] < a1->n128_f32[2])
      {
        result = *a1;
        v22 = *a1;
        v10 = a2->n128_u32[2];
        a1->n128_u64[0] = a2->n128_u64[0];
        a1->n128_u32[2] = v10;
        a2->n128_u64[0] = v22.n128_u64[0];
        a2->n128_u32[2] = v22.n128_u32[2];
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      result = *a1;
      v20 = *a1;
      v8 = *(a3 + 2);
      a1->n128_u64[0] = *a3;
      a1->n128_u32[2] = v8;
LABEL_9:
      *a3 = v20.n128_u64[0];
      a3[2] = v20.n128_f32[2];
      goto LABEL_10;
    }

    result = *a1;
    v23 = *a1;
    v11 = a2->n128_u32[2];
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u32[2] = v11;
    a2->n128_u64[0] = v23.n128_u64[0];
    a2->n128_u32[2] = v23.n128_u32[2];
    if (a3[2] < a2->n128_f32[2])
    {
      result = *a2;
      v20 = *a2;
      v12 = *(a3 + 2);
      a2->n128_u64[0] = *a3;
      a2->n128_u32[2] = v12;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 2) < a3[2])
  {
    result = *a3;
    v24 = *a3;
    v13 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 2) = v13;
    *a4 = v24;
    *(a4 + 2) = DWORD2(v24);
    if (a3[2] < a2->n128_f32[2])
    {
      result = *a2;
      v25 = *a2;
      v14 = *(a3 + 2);
      a2->n128_u64[0] = *a3;
      a2->n128_u32[2] = v14;
      *a3 = v25.n128_u64[0];
      a3[2] = v25.n128_f32[2];
      if (a2->n128_f32[2] < a1->n128_f32[2])
      {
        result = *a1;
        v26 = *a1;
        v15 = a2->n128_u32[2];
        a1->n128_u64[0] = a2->n128_u64[0];
        a1->n128_u32[2] = v15;
        a2->n128_u64[0] = v26.n128_u64[0];
        a2->n128_u32[2] = v26.n128_u32[2];
      }
    }
  }

  result.n128_u32[0] = *(a5 + 8);
  if (result.n128_f32[0] < *(a4 + 2))
  {
    result = *a4;
    v27 = *a4;
    v16 = *(a5 + 8);
    *a4 = *a5;
    *(a4 + 2) = v16;
    *a5 = v27;
    *(a5 + 8) = DWORD2(v27);
    result.n128_u32[0] = *(a4 + 2);
    if (result.n128_f32[0] < a3[2])
    {
      result = *a3;
      v28 = *a3;
      v17 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 2) = v17;
      *a4 = v28;
      *(a4 + 2) = DWORD2(v28);
      result.n128_f32[0] = a3[2];
      if (result.n128_f32[0] < a2->n128_f32[2])
      {
        result = *a2;
        v29 = *a2;
        v18 = *(a3 + 2);
        a2->n128_u64[0] = *a3;
        a2->n128_u32[2] = v18;
        *a3 = v29.n128_u64[0];
        a3[2] = v29.n128_f32[2];
        result.n128_u32[0] = a2->n128_u32[2];
        if (result.n128_f32[0] < a1->n128_f32[2])
        {
          result = *a1;
          v30 = *a1;
          v19 = a2->n128_u32[2];
          a1->n128_u64[0] = a2->n128_u64[0];
          a1->n128_u32[2] = v19;
          a2->n128_u64[0] = v30.n128_u64[0];
          a2->n128_u32[2] = v30.n128_u32[2];
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,nlv4_inference_orchestrator::inference_engine::TokenIndexAndScore *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = (a2 - 16);
      v5 = *(a1 + 24);
      v6 = *(a2 - 8);
      if (v5 < *(a1 + 8))
      {
        if (v6 >= v5)
        {
          v37 = *a1;
          *a1 = *(a1 + 16);
          *(a1 + 8) = *(a1 + 24);
          *(a1 + 16) = v37.n128_u64[0];
          *(a1 + 24) = v37.n128_u32[2];
          if (*(a2 - 8) >= *(a1 + 24))
          {
            return 1;
          }

          v29 = *(a1 + 16);
          v16 = *(a2 - 8);
          *(a1 + 16) = *v4;
          *(a1 + 24) = v16;
        }

        else
        {
          v29 = *a1;
          v7 = *(a2 - 8);
          *a1 = *v4;
          *(a1 + 8) = v7;
        }

        *v4 = v29.n128_u64[0];
        *(a2 - 8) = v29.n128_u32[2];
        return 1;
      }

      if (v6 >= v5)
      {
        return 1;
      }

      v32 = *(a1 + 16);
      v15 = *(a2 - 8);
      *(a1 + 16) = *v4;
      *(a1 + 24) = v15;
      *v4 = v32;
      *(a2 - 8) = DWORD2(v32);
LABEL_50:
      if (*(a1 + 24) < *(a1 + 8))
      {
        v42 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 8) = *(a1 + 24);
        *(a1 + 16) = v42.n128_u64[0];
        *(a1 + 24) = v42.n128_u32[2];
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,nlv4_inference_orchestrator::inference_engine::TokenIndexAndScore *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2 - 16);
      return 1;
    }

    v12 = *(a1 + 24);
    v13 = *(a1 + 8);
    v14 = *(a1 + 40);
    if (v12 >= v13)
    {
      if (v14 < v12)
      {
        v35 = *(a1 + 16);
        *(a1 + 16) = *(a1 + 32);
        *(a1 + 24) = *(a1 + 40);
        *(a1 + 32) = v35;
        *(a1 + 40) = DWORD2(v35);
        if (*(a1 + 24) < v13)
        {
          v36 = *a1;
          *a1 = *(a1 + 16);
          *(a1 + 8) = *(a1 + 24);
          *(a1 + 16) = v36.n128_u64[0];
          *(a1 + 24) = v36.n128_u32[2];
        }
      }

      goto LABEL_47;
    }

    if (v14 >= v12)
    {
      v39 = *a1;
      *a1 = *(a1 + 16);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 16) = v39.n128_u64[0];
      *(a1 + 24) = v39.n128_u32[2];
      if (v14 >= *(a1 + 24))
      {
        goto LABEL_47;
      }

      v31 = *(a1 + 16);
      *(a1 + 16) = *(a1 + 32);
      *(a1 + 24) = *(a1 + 40);
    }

    else
    {
      v31 = *a1;
      *a1 = *(a1 + 32);
      *(a1 + 8) = *(a1 + 40);
    }

    *(a1 + 32) = v31.n128_u64[0];
    *(a1 + 40) = v31.n128_u32[2];
LABEL_47:
    if (*(a2 - 8) >= *(a1 + 40))
    {
      return 1;
    }

    v25 = a2 - 16;
    v40 = *(a1 + 32);
    v26 = *(a2 - 8);
    *(a1 + 32) = *(a2 - 16);
    *(a1 + 40) = v26;
    *v25 = v40;
    *(v25 + 8) = DWORD2(v40);
    if (*(a1 + 40) >= *(a1 + 24))
    {
      return 1;
    }

    v41 = *(a1 + 16);
    *(a1 + 16) = *(a1 + 32);
    *(a1 + 24) = *(a1 + 40);
    *(a1 + 32) = v41;
    *(a1 + 40) = DWORD2(v41);
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 8) < *(a1 + 8))
    {
      v28 = *a1;
      v3 = *(a2 - 8);
      *a1 = *(a2 - 16);
      *(a1 + 8) = v3;
      *(a2 - 16) = v28.n128_u64[0];
      *(a2 - 8) = v28.n128_u32[2];
    }

    return 1;
  }

LABEL_13:
  v8 = a1 + 32;
  v9 = *(a1 + 24);
  v10 = *(a1 + 8);
  v11 = *(a1 + 40);
  if (v9 >= v10)
  {
    if (v11 < v9)
    {
      v33 = *(a1 + 16);
      *(a1 + 16) = *v8;
      *(a1 + 24) = *(a1 + 40);
      *v8 = v33;
      *(a1 + 40) = DWORD2(v33);
      if (*(a1 + 24) < v10)
      {
        v34 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 8) = *(a1 + 24);
        *(a1 + 16) = v34.n128_u64[0];
        *(a1 + 24) = v34.n128_u32[2];
      }
    }
  }

  else
  {
    if (v11 >= v9)
    {
      v38 = *a1;
      *a1 = *(a1 + 16);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 16) = v38.n128_u64[0];
      *(a1 + 24) = v38.n128_u32[2];
      if (v11 >= *(a1 + 24))
      {
        goto LABEL_33;
      }

      v30 = *(a1 + 16);
      *(a1 + 16) = *v8;
      *(a1 + 24) = *(a1 + 40);
    }

    else
    {
      v30 = *a1;
      *a1 = *v8;
      *(a1 + 8) = *(a1 + 40);
    }

    *v8 = v30.n128_u64[0];
    *(a1 + 40) = v30.n128_u32[2];
  }

LABEL_33:
  v17 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = *(v17 + 8);
    if (v20 < *(v8 + 8))
    {
      v21 = *v17;
      v22 = v18;
      while (1)
      {
        v23 = a1 + v22;
        *(v23 + 48) = *(a1 + v22 + 32);
        *(v23 + 56) = *(a1 + v22 + 40);
        if (v22 == -32)
        {
          break;
        }

        v22 -= 16;
        if (v20 >= *(v23 + 24))
        {
          v24 = a1 + v22 + 48;
          goto LABEL_41;
        }
      }

      v24 = a1;
LABEL_41:
      *v24 = v21;
      *(v24 + 8) = v20;
      if (++v19 == 8)
      {
        return v17 + 16 == a2;
      }
    }

    v8 = v17;
    v18 += 16;
    v17 += 16;
    if (v17 == a2)
    {
      return 1;
    }
  }
}

void sub_222929E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void snlp::ssu::app::SSUFileWrapper::SSUFileWrapper(snlp::ssu::app::SSUFileWrapper *this, const std::__fs::filesystem::path *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *this = 0;
  v3 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_22284A000, v3, OS_LOG_TYPE_DEBUG, "Loading SSUFile...", __p, 2u);
  }

  snlp::ssu::app::SSUFileWrapper::openFileHandle(&a2->__pn_, v4);
  operator new();
}

void sub_22292A87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x223DC4D00](v24, 0x1070C400E7C11DFLL);
  std::unique_ptr<snlp::ssu::app::file_wrapper_utils::SSUMappedFileData>::reset[abi:ne200100](v23, 0);
  _Unwind_Resume(a1);
}

uint64_t snlp::ssu::app::SSUFileWrapper::openFileHandle(std::string *this, const std::__fs::filesystem::path *a2)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    *&__p.st_dev = *&this->__r_.__value_.__l.__data_;
    *&__p.st_uid = *(&this->__r_.__value_.__l + 2);
  }

  if ((__p.st_gid & 0x80000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = *&__p.st_dev;
  }

  v4 = open(p_p, 0, *&__p.st_dev, __p.st_ino, *&__p.st_uid);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  if (v4 == -1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
    }

    else
    {
      v11 = *this;
    }

    v8 = std::string::insert(&v11, 0, "Unable to open file: ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    *&__p.st_uid = *(&v8->__r_.__value_.__l + 2);
    *&__p.st_dev = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &__p);
    exception->__vftable = &unk_2835E9238;
  }

  if (fstat(v4, &__p) < 0)
  {
    v7 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "Unable to gather stats on file");
    std::runtime_error::runtime_error(v7, &v11);
    v7->__vftable = &unk_2835E9238;
  }

  return v4;
}

uint64_t *std::unique_ptr<snlp::ssu::app::file_wrapper_utils::SSUMappedFileData>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if ((*v2 + 1) >= 2 && munmap(*v2, *(v2 + 8)) == -1)
    {
      v3 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_impl(&dword_22284A000, v3, OS_LOG_TYPE_ERROR, "Error when unmapping the memory for SSU file", v4, 2u);
      }
    }

    *(v2 + 24) = 0;
    *v2 = 0;

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::Verifier::VerifyOffset(apple::aiml::flatbuffers2::Verifier *this, unint64_t a2)
{
  if (a2 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v2 = *(this + 1);
  if (v2 < 5 || v2 - 4 < a2)
  {
    return 0;
  }

  v4 = *(*this + a2);
  if (v4 < 1)
  {
    return 0;
  }

  if (v2 - 1 >= v4 + a2)
  {
    return v4;
  }

  return 0;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyTableStart(apple::aiml::flatbuffers2::Verifier *this, const unsigned __int8 *a2)
{
  v2 = *this;
  v3 = &a2[-*this];
  if (v3 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(this + 5);
  v8 = *(this + 4) + 1;
  *(this + 4) = v8;
  v9 = *(this + 6) + 1;
  *(this + 6) = v9;
  if (v8 > v7 || v9 > *(this + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((*(this + 40) & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyString(apple::aiml::flatbuffers2::Verifier *a1, const unsigned __int8 *a2)
{
  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a1, a2, 1uLL, &v6);
  if (result)
  {
    v4 = *(a1 + 1);
    return v4 >= 2 && v4 - 1 >= v6 && *(*a1 + v6) == 0;
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(apple::aiml::flatbuffers2::Verifier *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v4 = &a2[-*this];
  if (v4 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = *(this + 1);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(this + 1);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<SSUCategory>(apple::aiml::flatbuffers2::Verifier *this, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (*a2)
  {
    v4 = 0;
    v5 = a2 + 1;
    v6 = a2 + 4;
    do
    {
      v7 = &v5[v4];
      v8 = *v7;
      v9 = &v7[v8];
      result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(this, &v7[v8]);
      if (!result)
      {
        return result;
      }

      v11 = *v9;
      v12 = v9 - v11;
      v13 = *(v9 - v11);
      if (v13 >= 5)
      {
        if (*(v12 + 2))
        {
          result = 0;
          v14 = *(this + 1);
          if (v14 < 2 || v14 - 1 < v9 + *(v12 + 2) - *this)
          {
            return result;
          }
        }
      }

      result = apple::aiml::flatbuffers2::Table::VerifyOffset(v9, this, 6u);
      if (!result)
      {
        return result;
      }

      if (v13 >= 7)
      {
        if (*(v12 + 3))
        {
          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(this, v9 + *(v12 + 3) + *(v9 + *(v12 + 3)), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v15 = *v9;
          if (*(v9 - v15) < 7u)
          {
            goto LABEL_84;
          }

          v16 = -v15;
        }

        else
        {
          v16 = -v11;
        }

        v17 = *(v9 + v16 + 6);
        if (v17)
        {
          v18 = *(v9 + v17);
          v19 = (v9 + v17 + v18);
          if (*v19)
          {
            v20 = 0;
            v21 = v19 + 1;
            v63 = v6 + v8 + v18 + v17;
            do
            {
              v22 = &v21[v20];
              v23 = *v22;
              v24 = &v22[v23];
              result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(this, &v22[v23]);
              if (!result)
              {
                return result;
              }

              result = apple::aiml::flatbuffers2::Table::VerifyOffset(v24, this, 4u);
              if (!result)
              {
                return result;
              }

              v25 = (v24 - *v24);
              if (*v25 >= 5u && (v26 = v25[2]) != 0)
              {
                v27 = v24 + v26 + *(v24 + v26);
              }

              else
              {
                v27 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(this, v27);
              if (!result)
              {
                return result;
              }

              result = apple::aiml::flatbuffers2::Table::VerifyOffset(v24, this, 6u);
              if (!result)
              {
                return result;
              }

              v28 = *v24;
              if (*(v24 - v28) >= 7u)
              {
                if (!*(v24 - v28 + 6))
                {
                  goto LABEL_91;
                }

                result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(this, v24 + *(v24 - v28 + 6) + *(v24 + *(v24 - v28 + 6)), 4uLL, 0);
                if (!result)
                {
                  return result;
                }

                v28 = *v24;
                if (*(v24 - v28) >= 7u)
                {
LABEL_91:
                  v29 = *(v24 - v28 + 6);
                  if (v29)
                  {
                    v30 = *(v24 + v29);
                    v60 = (v24 + v29 + v30);
                    if (*v60)
                    {
                      v31 = 0;
                      v59 = v19;
                      v62 = &v63[v23 + v30 + v29];
                      v58 = v21;
                      do
                      {
                        v61 = v31;
                        v32 = &v60[v31 + 1];
                        v33 = *v32;
                        v34 = &v32[v33];
                        result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(this, &v32[v33]);
                        if (!result)
                        {
                          return result;
                        }

                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(v34, this, 4u);
                        if (!result)
                        {
                          return result;
                        }

                        v35 = (v34 - *v34);
                        if (*v35 >= 5u && (v36 = v35[2]) != 0)
                        {
                          v37 = v34 + v36 + *(v34 + v36);
                        }

                        else
                        {
                          v37 = 0;
                        }

                        result = apple::aiml::flatbuffers2::Verifier::VerifyString(this, v37);
                        if (!result)
                        {
                          return result;
                        }

                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(v34, this, 6u);
                        if (!result)
                        {
                          return result;
                        }

                        v38 = *v34;
                        if (*(v34 - v38) >= 7u)
                        {
                          if (!*(v34 - v38 + 6))
                          {
                            goto LABEL_92;
                          }

                          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(this, v34 + *(v34 - v38 + 6) + *(v34 + *(v34 - v38 + 6)), 4uLL, 0);
                          if (!result)
                          {
                            return result;
                          }

                          v38 = *v34;
                          if (*(v34 - v38) >= 7u)
                          {
LABEL_92:
                            v39 = *(v34 - v38 + 6);
                            if (v39)
                            {
                              v56 = v34 + v39;
                              v57 = *(v34 + v39);
                              if (*(v34 + v39 + v57))
                              {
                                v40 = 0;
                                v41 = &v62[v33 + v57 + v39];
                                v55 = v5;
                                do
                                {
                                  v42 = *v41;
                                  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(this, &v41[v42]);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(&v41[v42], this, 4u);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v43 = v42 - *&v41[v42];
                                  if (*&v41[v43] >= 5u && (v44 = *&v41[v43 + 4]) != 0)
                                  {
                                    v45 = &v41[v42 + v44 + *&v41[v42 + v44]];
                                  }

                                  else
                                  {
                                    v45 = 0;
                                  }

                                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(this, v45);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(&v41[v42], this, 6u);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v46 = v42 - *&v41[v42];
                                  if (*&v41[v46] >= 7u && (v47 = *&v41[v46 + 6]) != 0)
                                  {
                                    v48 = &v41[v42 + v47 + *&v41[v42 + v47]];
                                  }

                                  else
                                  {
                                    v48 = 0;
                                  }

                                  v5 = v55;
                                  if (!apple::aiml::flatbuffers2::Verifier::VerifyString(this, v48))
                                  {
                                    return 0;
                                  }

                                  --*(this + 4);
                                  ++v40;
                                  v41 += 4;
                                }

                                while (v40 < *&v56[v57]);
                              }
                            }
                          }
                        }

                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(v34, this, 8u);
                        if (!result)
                        {
                          return result;
                        }

                        v49 = *v34;
                        if (*(v34 - v49) < 9u)
                        {
                          v51 = 0;
                          v21 = v58;
                          v19 = v59;
                        }

                        else
                        {
                          v21 = v58;
                          v19 = v59;
                          if (*(v34 - v49 + 8))
                          {
                            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(this, v34 + *(v34 - v49 + 8) + *(v34 + *(v34 - v49 + 8)), 4uLL, 0);
                            if (!result)
                            {
                              return result;
                            }

                            v49 = *v34;
                            if (*(v34 - v49) < 9u)
                            {
                              goto LABEL_71;
                            }
                          }

                          v50 = *(v34 - v49 + 8);
                          if (!v50)
                          {
LABEL_71:
                            v51 = 0;
                          }

                          else
                          {
                            v51 = (v34 + v50 + *(v34 + v50));
                          }
                        }

                        if (!apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<SSUExample>(this, v51))
                        {
                          return 0;
                        }

                        --*(this + 4);
                        v31 = v61 + 1;
                        v62 += 4;
                      }

                      while (v61 + 1 < *v60);
                    }
                  }
                }
              }

              result = apple::aiml::flatbuffers2::Table::VerifyOffset(v24, this, 8u);
              if (!result)
              {
                return result;
              }

              v52 = *v24;
              if (*(v24 - v52) < 9u)
              {
                goto LABEL_81;
              }

              if (*(v24 - v52 + 8))
              {
                result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(this, v24 + *(v24 - v52 + 8) + *(v24 + *(v24 - v52 + 8)), 4uLL, 0);
                if (!result)
                {
                  return result;
                }

                v52 = *v24;
                if (*(v24 - v52) < 9u)
                {
                  goto LABEL_81;
                }
              }

              v53 = *(v24 - v52 + 8);
              if (!v53)
              {
LABEL_81:
                v54 = 0;
              }

              else
              {
                v54 = (v24 + v53 + *(v24 + v53));
              }

              if (!apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<SSUExample>(this, v54))
              {
                return 0;
              }

              --*(this + 4);
              ++v20;
              v63 += 4;
            }

            while (v20 < *v19);
          }
        }
      }

LABEL_84:
      --*(this + 4);
      ++v4;
      ++v6;
    }

    while (v4 < *a2);
  }

  return 1;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<SSUExample>(apple::aiml::flatbuffers2::Verifier *this, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (*a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = a2 + 1;
    do
    {
      v7 = a2[v4 + 1];
      v8 = &a2[v4] + v7;
      result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(this, v8 + 4);
      if (!result)
      {
        return result;
      }

      v10 = v7 - *(v8 + 1);
      v11 = *(&a2[v4 + 1] + v10);
      if (v11 >= 5)
      {
        if (*(&a2[v4 + 2] + v10))
        {
          result = 0;
          v12 = *(this + 1);
          if (v12 < 2 || v12 - 1 < v6 + v7 + *(&a2[v4 + 2] + v10) - *this)
          {
            return result;
          }
        }
      }

      result = apple::aiml::flatbuffers2::Table::VerifyOffset((v8 + 4), this, 6u);
      if (!result)
      {
        return result;
      }

      if (v11 < 7)
      {
        if (v11 < 5)
        {
          goto LABEL_36;
        }
      }

      else if (*(&a2[v4 + 2] + v10 + 2))
      {
        v13 = v7 + *(&a2[v4 + 2] + v10 + 2);
        v14 = &a2[v4 + 1] + v13 + *(&a2[v4 + 1] + v13);
        goto LABEL_15;
      }

      v14 = 0;
LABEL_15:
      if (*(&a2[v4 + 2] + v10))
      {
        v15 = *(&a2[v4 + 1] + v7 + *(&a2[v4 + 2] + v10));
        if (v15 != 2)
        {
          if (v15 != 1 || v14 == 0)
          {
            goto LABEL_36;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(this, v14);
          if (!result)
          {
            return result;
          }

          result = apple::aiml::flatbuffers2::Table::VerifyOffset(v14, this, 4u);
          if (!result)
          {
            return result;
          }

          v17 = &v14[-*v14];
          if (*v17 >= 5u && (v18 = *(v17 + 2)) != 0)
          {
            v19 = &v14[v18 + *&v14[v18]];
          }

          else
          {
            v19 = 0;
          }

          if (!apple::aiml::flatbuffers2::Verifier::VerifyString(this, v19))
          {
            return 0;
          }

          goto LABEL_35;
        }

        if (v14)
        {
          result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(this, v14);
          if (!result)
          {
            return result;
          }

          result = apple::aiml::flatbuffers2::Table::VerifyOffset(v14, this, 4u);
          if (!result)
          {
            return result;
          }

          v20 = &v14[-*v14];
          if (*v20 >= 5u)
          {
            v21 = *(v20 + 2);
            if (v21)
            {
              if (!apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(this, &v14[v21 + *&v14[v21]], 4uLL, 0))
              {
                return 0;
              }
            }
          }

LABEL_35:
          --*(this + 4);
        }
      }

LABEL_36:
      --*(this + 4);
      ++v5;
      ++v6;
      ++v4;
    }

    while (v5 < *a2);
  }

  return 1;
}

void snlp::ssu::app::SSUFileWrapper::~SSUFileWrapper(snlp::ssu::app::SSUFileWrapper *this)
{
  close(*(*this + 16));
  std::unique_ptr<snlp::ssu::app::file_wrapper_utils::SSUMappedFileData>::reset[abi:ne200100](this, 0);
  v2 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_DEBUG, "SSUFile relinquished", v3, 2u);
  }

  std::unique_ptr<snlp::ssu::app::file_wrapper_utils::SSUMappedFileData>::reset[abi:ne200100](this, 0);
}

uint64_t snlp::ssu::app::SSUFileWrapper::getAssetDirectoryFormatVersion(snlp::ssu::app::SSUFileWrapper *this)
{
  v1 = *(*this + 24);
  v2 = (v1 - *v1);
  if (*v2 >= 5u && (v3 = v2[2]) != 0)
  {
    return *(v1 + v3);
  }

  else
  {
    return 0;
  }
}

_BYTE *snlp::ssu::app::SSUFileWrapper::getLocale@<X0>(snlp::ssu::app::SSUFileWrapper *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(*this + 24);
  v5 = (v4 - *v4);
  if (*v5 >= 9u && (v6 = v5[4]) != 0)
  {
    v7 = (v4 + v6 + *(v4 + v6));
  }

  else
  {
    v7 = 0;
  }

  return apple::aiml::flatbuffers2::String::str(a2, v7);
}

_BYTE *apple::aiml::flatbuffers2::String::str(_BYTE *this, unsigned int *a2)
{
  v2 = this;
  v3 = *a2;
  if (v3 >= 0x17)
  {
    operator new();
  }

  this[23] = v3;
  if (v3)
  {
    this = memcpy(this, a2 + 1, v3);
  }

  v2[v3] = 0;
  return this;
}

_BYTE *snlp::ssu::app::SSUFileWrapper::getDataVersion@<X0>(snlp::ssu::app::SSUFileWrapper *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(*this + 24);
  v5 = (v4 - *v4);
  if (*v5 >= 7u && (v6 = v5[3]) != 0)
  {
    v7 = (v4 + v6 + *(v4 + v6));
  }

  else
  {
    v7 = 0;
  }

  v8 = (v7 - *v7);
  if (*v8 >= 5u && (v9 = v8[2]) != 0)
  {
    v10 = (v7 + v9 + *(v7 + v9));
  }

  else
  {
    v10 = 0;
  }

  return apple::aiml::flatbuffers2::String::str(a2, v10);
}

void snlp::ssu::app::SSUFileWrapper::getAllCategoriesWithGroup(void *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v3 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *(*a1 + 24);
  v5 = *(v4 - *v4 + 10);
  v6 = *(v4 + v5);
  v7 = (v4 + v5 + v6);
  v8 = *v7;
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v26 = v3;
    v12 = 4 * v8;
    v13 = v4 + v5 + v6;
    do
    {
      v14 = v7[v10 / 4 + 1];
      v15 = (&v7[v10 / 4] + v14);
      a1 = snlp::ssu::app::SSUFileWrapper::lookupGroup(a1, v15 + 1, a2);
      if (a1)
      {
        v16 = &v13[v10 + v14 - v15[1]];
        if (*(v16 + 2) >= 5u && (v17 = *(v16 + 4)) != 0)
        {
          v18 = v13[v10 + 4 + v14 + v17];
        }

        else
        {
          v18 = 0;
        }

        v19 = v3[2];
        if (v11 >= v19)
        {
          v20 = v11;
          v21 = (v11 + 1);
          if ((v11 + 1) < 0)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v22 = v13;
          v23 = v7;
          v24 = v12;
          if (2 * v19 > v21)
          {
            v21 = 2 * v19;
          }

          if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v25 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v21;
          }

          if (v25)
          {
            operator new();
          }

          *v11++ = v18;
          a1 = memcpy(0, 0, v20);
          *v26 = 0;
          v26[1] = v20 + 1;
          v26[2] = 0;
          v12 = v24;
          v7 = v23;
          v13 = v22;
          v3 = v26;
        }

        else
        {
          *v11++ = v18;
        }

        v3[1] = v11;
      }

      v10 += 4;
    }

    while (v12 != v10);
  }
}

void sub_22292BB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v10 = *a9;
  if (*a9)
  {
    *(a9 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

char *snlp::ssu::app::SSUFileWrapper::lookupGroup(uint64_t a1, int *a2, const void **a3)
{
  v3 = (a2 + *(a2 - *a2 + 6));
  v4 = (v3 + *v3);
  v5 = v4 + 1;
  v6 = &v4[*v4 + 1];
  if (*v4)
  {
    v7 = 0;
    v8 = 4 * *v4;
    v9 = *(a3 + 23);
    if (v9 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = a3[1];
    }

    if (v9 >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    do
    {
      v12 = v4[v7 / 4 + 1] + *(&v4[v7 / 4 + 2] + v4[v7 / 4 + 1] - *(&v4[v7 / 4 + 1] + v4[v7 / 4 + 1]));
      v13 = *(&v4[v7 / 4 + 1] + v12);
      if (v10 == *(&v4[v7 / 4 + 1] + v12 + v13) && !memcmp(v11, &v4[v7 / 4 + 2] + v12 + v13, v10))
      {
        break;
      }

      v7 += 4;
    }

    while (v8 != v7);
    v5 = &v4[v7 / 4 + 1];
  }

  if (v6 == v5)
  {
    return 0;
  }

  else
  {
    return v5 + *v5;
  }
}

void snlp::ssu::app::SSUFileWrapper::getNegativeExampleEncodedVectors(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  Group = snlp::ssu::app::SSUFileWrapper::getGroup(a1, a2, a3);
  v6 = &Group[-*Group];
  if (*v6 >= 9u && (v7 = *(v6 + 4)) != 0)
  {
    v8 = &Group[v7 + *&Group[v7]];
  }

  else
  {
    v8 = 0;
  }

  v9 = *v8;
  if (v9)
  {
    v10 = (v8 + 4);
    v11 = SSUExample::data_as_encoded_vector(&v8[*(v8 + 1) + 4]);
    v12 = (v11 + *(v11 - *v11 + 4));
    v13 = *(v12 + *v12);
    memset(&v36, 0, sizeof(v36));
    v34 = v13;
    std::vector<float>::reserve(&v36, v13 * v9);
    v14 = *v8;
    if (v14)
    {
      v15 = &v8[4 * v14 + 4];
      do
      {
        v16 = SSUExample::data_as_encoded_vector((v10 + *v10));
        v17 = *(v16 - *v16 + 4);
        v18 = *(v16 + v17);
        v19 = *(v16 + v17 + v18);
        if (v19)
        {
          v20 = 4 * v19;
          end = v36.__end_;
          v22 = (v16 + v18 + v17 + 4);
          do
          {
            v23 = *v22;
            if (end >= v36.__end_cap_.__value_)
            {
              begin = v36.__begin_;
              v25 = end - v36.__begin_;
              v26 = end - v36.__begin_;
              v27 = v26 + 1;
              if ((v26 + 1) >> 62)
              {
                std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
              }

              v28 = v36.__end_cap_.__value_ - v36.__begin_;
              if ((v36.__end_cap_.__value_ - v36.__begin_) >> 1 > v27)
              {
                v27 = v28 >> 1;
              }

              if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v29 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v27;
              }

              if (v29)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v36, v29);
              }

              v30 = end - v36.__begin_;
              v31 = (4 * v26);
              v32 = (4 * v26 - 4 * v30);
              *v31 = v23;
              end = v31 + 1;
              memcpy(v32, begin, v25);
              v33 = v36.__begin_;
              v36.__begin_ = v32;
              v36.__end_ = end;
              v36.__end_cap_.__value_ = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *end++ = v23;
            }

            v36.__end_ = end;
            ++v22;
            v20 -= 4;
          }

          while (v20);
        }

        ++v10;
      }

      while (v10 != v15);
    }

    v35[0] = v9;
    v35[1] = v34;
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a4, v35, &v36, 2uLL);
  }

  v36.__begin_ = 0;
  v36.__end_ = 0;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a4, &v36, &v36.__end_cap_, 2uLL);
}

char *snlp::ssu::app::SSUFileWrapper::getGroup(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = (*(*a1 + 24) + *(*(*a1 + 24) - **(*a1 + 24) + 10));
  v6 = (v5 + *v5);
  v7 = v6 + 1;
  if (*v6)
  {
    v8 = 0;
    do
    {
      v9 = v6[v8 + 1];
      v10 = &v6[v8] + v9 - *(&v6[v8 + 1] + v9);
      if (*(v10 + 2) >= 5u && (v11 = *(v10 + 4)) != 0)
      {
        v12 = *(&v6[v8 + 1] + v9 + v11);
      }

      else
      {
        v12 = 0;
      }

      if (v12 == a2)
      {
        break;
      }

      ++v8;
    }

    while (*v6 != v8);
    v7 = &v6[v8 + 1];
  }

  if (&v6[*v6 + 1] == v7)
  {
    v15 = std::string::basic_string[abi:ne200100]<0>(&buf, "No such category in the SSU file: ");
    if (v4 <= 3)
    {
      v16 = EnumNamesSSUCategoryType(void)::names[v4];
    }

    else
    {
      v16 = "";
    }

    v18 = std::string::append(v15, v16);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v20 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = &v37;
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v37.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v21;
      _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &v37);
    exception->__vftable = &unk_2835E9238;
  }

  result = snlp::ssu::app::SSUFileWrapper::lookupGroup(a1, (v7 + *v7), a3);
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(&v35, "No such group in the SSU file category ");
    if (v4 <= 3)
    {
      v17 = EnumNamesSSUCategoryType(void)::names[v4];
    }

    else
    {
      v17 = "";
    }

    v23 = std::string::append(&v35, v17);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v36, " and group ");
    v26 = *&v25->__r_.__value_.__l.__data_;
    buf.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&buf.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = *(a3 + 23);
    if (v27 >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    if (v27 >= 0)
    {
      v29 = *(a3 + 23);
    }

    else
    {
      v29 = *(a3 + 8);
    }

    v30 = std::string::append(&buf, v28, v29);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    v32 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = &v37;
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v33 = v37.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v33;
      _os_log_impl(&dword_22284A000, v32, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
    }

    v34 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v34, &v37);
    v34->__vftable = &unk_2835E9238;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22292C2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SSUExample::data_as_encoded_vector(SSUExample *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 2) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

void snlp::ssu::app::SSUFileWrapper::getNegativeExampleUtterances(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, std::vector<std::string> *a4@<X8>)
{
  Group = snlp::ssu::app::SSUFileWrapper::getGroup(a1, a2, a3);
  v6 = &Group[-*Group];
  if (*v6 >= 9u && (v7 = *(v6 + 4)) != 0)
  {
    v8 = &Group[v7 + *&Group[v7]];
  }

  else
  {
    v8 = 0;
  }

  a4->__begin_ = 0;
  a4->__end_ = 0;
  a4->__end_cap_.__value_ = 0;
  std::vector<std::string>::reserve(a4, *v8);
  v9 = *v8;
  if (v9)
  {
    v10 = 4 * v9;
    v11 = (v8 + 4);
    do
    {
      v12 = SSUExample::data_as_utterance((v11 + *v11));
      v13 = (v12 - *v12);
      if (*v13 >= 5u && (v14 = v13[2]) != 0)
      {
        v15 = (v12 + v14 + *(v12 + v14));
      }

      else
      {
        v15 = 0;
      }

      apple::aiml::flatbuffers2::String::str(&v28, v15);
      end = a4->__end_;
      value = a4->__end_cap_.__value_;
      if (end >= value)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((end - a4->__begin_) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((value - a4->__begin_) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        v30.__end_cap_.__value_ = a4;
        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a4, v22);
        }

        v23 = 24 * v19;
        *v23 = v28;
        *(v23 + 16) = v29;
        v29 = 0;
        v28 = 0uLL;
        v18 = 24 * v19 + 24;
        v24 = a4->__end_ - a4->__begin_;
        v25 = (24 * v19 - v24);
        memcpy((v23 - v24), a4->__begin_, v24);
        begin = a4->__begin_;
        a4->__begin_ = v25;
        a4->__end_ = v18;
        v27 = a4->__end_cap_.__value_;
        a4->__end_cap_.__value_ = 0;
        v30.__end_ = begin;
        v30.__end_cap_.__value_ = v27;
        v30.__first_ = begin;
        v30.__begin_ = begin;
        std::__split_buffer<std::string>::~__split_buffer(&v30);
      }

      else
      {
        *&end->__r_.__value_.__l.__data_ = v28;
        end->__r_.__value_.__r.__words[2] = v29;
        v18 = &end[1];
      }

      a4->__end_ = v18;
      ++v11;
      v10 -= 4;
    }

    while (v10);
  }
}

uint64_t SSUExample::data_as_utterance(SSUExample *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 1) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

void snlp::ssu::app::SSUFileWrapper::getPositiveExamples(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  Group = snlp::ssu::app::SSUFileWrapper::getGroup(a1, a2, a3);
  v5 = &Group[-*Group];
  if (*v5 >= 7u && (v6 = *(v5 + 3)) != 0)
  {
    v7 = &Group[v6 + *&Group[v6]];
  }

  else
  {
    v7 = 0;
  }

  v79 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<snlp::ssu::app::SSUAppIntent>::reserve(&v79, *v7);
  v8 = *v7;
  if (v8)
  {
    v9 = (v7 + 4);
    v65 = &v7[4 * v8 + 4];
    v68 = (v7 + 8);
    do
    {
      v66 = v9;
      v67 = *v9;
      v10 = (v9 + v67);
      v11 = (v9 + v67 - *(v9 + v67));
      if (*v11 >= 5u && (v12 = v11[2]) != 0)
      {
        v13 = (v10 + v12 + *(v10 + v12));
      }

      else
      {
        v13 = 0;
      }

      apple::aiml::flatbuffers2::String::str(&v77, v13);
      v75 = 0;
      v76 = 0uLL;
      v14 = *v10;
      v15 = (v10 + *(v10 - v14 + 6));
      v16 = *(v15 + *v15);
      if (v16)
      {
        v70.__end_cap_.__value_ = &v75;
        std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>>(v16);
      }

      v17 = *(v10 - v14 + 6);
      v18 = *(v10 + v17);
      v19 = *(v10 + v17 + v18);
      if (v19)
      {
        v20 = 0;
        v21 = 4 * v19;
        v22 = v68 + v17 + v67 + v18;
        do
        {
          v23 = *&v22[v20];
          v24 = v23 - *&v22[v23 + v20];
          if (*&v22[v20 + v24] >= 5u && (v25 = *&v22[v20 + 4 + v24]) != 0)
          {
            v26 = &v22[v20 + v23 + v25 + *&v22[v23 + v25 + v20]];
          }

          else
          {
            v26 = 0;
          }

          apple::aiml::flatbuffers2::String::str(&v70, v26);
          v27 = v23 - *&v22[v23 + v20];
          if (*&v22[v20 + v27] >= 7u && (v28 = *&v22[v20 + 6 + v27]) != 0)
          {
            v29 = &v22[v20 + v23 + v28 + *&v22[v23 + v28 + v20]];
          }

          else
          {
            v29 = 0;
          }

          apple::aiml::flatbuffers2::String::str(&v70.__end_cap_, v29);
          v30 = v76;
          if (v76 >= *(&v76 + 1))
          {
            v33 = 0xAAAAAAAAAAAAAAABLL * ((v76 - v75) >> 4);
            v34 = v33 + 1;
            if (v33 + 1 > 0x555555555555555)
            {
              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((*(&v76 + 1) - v75) >> 4) > v34)
            {
              v34 = 0x5555555555555556 * ((*(&v76 + 1) - v75) >> 4);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*(&v76 + 1) - v75) >> 4) >= 0x2AAAAAAAAAAAAAALL)
            {
              v35 = 0x555555555555555;
            }

            else
            {
              v35 = v34;
            }

            v83 = &v75;
            if (v35)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>>(v35);
            }

            v36 = 16 * ((v76 - v75) >> 4);
            *v82 = 0;
            *&v82[8] = v36;
            *&v82[24] = 0;
            v37 = *&v70.__first_;
            *(v36 + 16) = v70.__end_;
            *v36 = v37;
            memset(&v70, 0, 24);
            end_cap = v70.__end_cap_;
            *(v36 + 40) = v71;
            *(v36 + 24) = end_cap;
            v70.__end_cap_.__value_ = 0;
            v71 = 0;
            v70.__end_cap_.__value_ = 0;
            *&v82[16] = 48 * v33 + 48;
            v39 = 48 * v33 + v75 - v76;
            std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>,snlp::ssu::cache::SSUCacheObjectParameter*>(&v75, v75, v76, v39);
            v40 = v75;
            v41 = *(&v76 + 1);
            v75 = v39;
            v69 = *&v82[16];
            v76 = *&v82[16];
            *&v82[16] = v40;
            *&v82[24] = v41;
            *v82 = v40;
            *&v82[8] = v40;
            std::__split_buffer<snlp::ssu::cache::SSUCacheObjectParameter>::~__split_buffer(v82);
            *&v76 = v69;
            if (SHIBYTE(v71) < 0)
            {
              operator delete(v70.__end_cap_.__value_);
            }
          }

          else
          {
            v31 = *&v70.__first_;
            *(v76 + 16) = v70.__end_;
            *v30 = v31;
            memset(&v70, 0, 24);
            v32 = v71;
            *(v30 + 24) = v70.__end_cap_;
            *(v30 + 40) = v32;
            *&v76 = v30 + 48;
          }

          if (SHIBYTE(v70.__end_) < 0)
          {
            operator delete(v70.__first_);
          }

          v20 += 4;
        }

        while (v21 != v20);
      }

      memset(v82, 0, 24);
      v42 = (v10 + *(v10 - *v10 + 8));
      std::vector<std::string>::reserve(v82, *(v42 + *v42));
      v43 = *(v10 - *v10 + 8);
      v44 = *(v10 + v43);
      v45 = *(v10 + v43 + v44);
      if (v45)
      {
        v46 = 4 * v45;
        v47 = (v68 + v67 + v44 + v43);
        do
        {
          v48 = SSUExample::data_as_utterance((v47 + *v47));
          v49 = (v48 - *v48);
          if (*v49 >= 5u && (v50 = v49[2]) != 0)
          {
            v51 = (v48 + v50 + *(v48 + v50));
          }

          else
          {
            v51 = 0;
          }

          apple::aiml::flatbuffers2::String::str(&v73, v51);
          v52 = *&v82[8];
          if (*&v82[8] >= *&v82[16])
          {
            v54 = 0xAAAAAAAAAAAAAAABLL * ((*&v82[8] - *v82) >> 3);
            v55 = v54 + 1;
            if (v54 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((*&v82[16] - *v82) >> 3) > v55)
            {
              v55 = 0x5555555555555556 * ((*&v82[16] - *v82) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*&v82[16] - *v82) >> 3) >= 0x555555555555555)
            {
              v56 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v56 = v55;
            }

            v70.__end_cap_.__value_ = v82;
            if (v56)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v82, v56);
            }

            v57 = 8 * ((*&v82[8] - *v82) >> 3);
            *v57 = v73;
            *(v57 + 16) = v74;
            v74 = 0;
            v73 = 0uLL;
            v53 = 24 * v54 + 24;
            v58 = (v57 - (*&v82[8] - *v82));
            memcpy(v58, *v82, *&v82[8] - *v82);
            v59 = *v82;
            v60 = *&v82[16];
            *v82 = v58;
            *&v82[8] = v53;
            *&v82[16] = 0;
            v70.__end_ = v59;
            v70.__end_cap_.__value_ = v60;
            v70.__first_ = v59;
            v70.__begin_ = v59;
            std::__split_buffer<std::string>::~__split_buffer(&v70);
          }

          else
          {
            **&v82[8] = v73;
            *(v52 + 16) = v74;
            v53 = v52 + 24;
          }

          *&v82[8] = v53;
          ++v47;
          v46 -= 4;
        }

        while (v46);
      }

      v61 = SHIBYTE(v78);
      if (SHIBYTE(v78) < 0)
      {
        std::string::__init_copy_ctor_external(&v70, v77, *(&v77 + 1));
      }

      else
      {
        *&v70.__first_ = v77;
        v70.__end_ = v78;
      }

      v70.__end_cap_.__value_ = 0;
      v70.__end_cap_.__value_ = 0;
      v71 = 0;
      std::vector<snlp::ssu::app::SSUAppParameter>::__init_with_size[abi:ne200100]<snlp::ssu::app::SSUAppParameter*,snlp::ssu::app::SSUAppParameter*>(&v70.__end_cap_, v75, v76, 0xAAAAAAAAAAAAAAABLL * ((v76 - v75) >> 4));
      memset(v72, 0, 24);
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v72, *v82, *&v82[8], 0xAAAAAAAAAAAAAAABLL * ((*&v82[8] - *v82) >> 3));
      v62 = v80;
      if (v80 >= v81)
      {
        v63 = std::vector<snlp::ssu::app::SSUAppIntent>::__emplace_back_slow_path<snlp::ssu::app::SSUAppIntent>(&v79, &v70);
      }

      else
      {
        std::vector<snlp::ssu::app::SSUAppIntent>::__construct_one_at_end[abi:ne200100]<snlp::ssu::app::SSUAppIntent>(&v79, &v70);
        v63 = v62 + 72;
      }

      v80 = v63;
      *&v73 = v72;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v73);
      *&v73 = &v70.__end_cap_;
      std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v73);
      if (SHIBYTE(v70.__end_) < 0)
      {
        operator delete(v70.__first_);
      }

      v70.__first_ = v82;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v70);
      v70.__first_ = &v75;
      std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v70);
      if (v61 < 0)
      {
        operator delete(v77);
      }

      v9 = v66 + 1;
      ++v68;
    }

    while (v66 + 1 != v65);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<snlp::ssu::app::SSUAppIntent>::__init_with_size[abi:ne200100]<snlp::ssu::app::SSUAppIntent*,snlp::ssu::app::SSUAppIntent*>(a4, v79, v80, 0x8E38E38E38E38E39 * ((v80 - v79) >> 3));
  v70.__first_ = &v79;
  std::vector<snlp::ssu::app::SSUAppIntent>::__destroy_vector::operator()[abi:ne200100](&v70);
}

void sub_22292CCA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36)
{
  a36 = v36 - 152;
  std::vector<snlp::ssu::app::SSUAppIntent>::__destroy_vector::operator()[abi:ne200100](&a36);
  _Unwind_Resume(a1);
}

void *std::vector<snlp::ssu::app::SSUAppIntent>::reserve(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::app::SSUAppIntent>>(a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_22292CE68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<snlp::ssu::app::SSUAppIntent>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<snlp::ssu::app::SSUAppIntent>::__construct_one_at_end[abi:ne200100]<snlp::ssu::app::SSUAppIntent>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *(v3 + 16) = *(a2 + 2);
  *v3 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = *(a2 + 24);
  *(v3 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 48) = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v3 + 48, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
  *(a1 + 8) = v3 + 72;
  return result;
}

void sub_22292CF20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v3;
  std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 8) = v4;
  _Unwind_Resume(a1);
}

uint64_t std::vector<snlp::ssu::app::SSUAppIntent>::__emplace_back_slow_path<snlp::ssu::app::SSUAppIntent>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::app::SSUAppIntent>>(v5);
  }

  v6 = 72 * v2;
  v14 = 0;
  v15 = v6;
  v16 = v6;
  v7 = *a2;
  *(v6 + 16) = *(a2 + 2);
  *v6 = v7;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 48) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v6 + 48, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
  *&v16 = v16 + 72;
  v8 = a1[1];
  v9 = (v15 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::app::SSUAppIntent>,snlp::ssu::app::SSUAppIntent*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<snlp::ssu::app::SSUAppIntent>::~__split_buffer(&v14);
  return v13;
}

void sub_22292D0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<snlp::ssu::app::SSUAppIntent>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void snlp::ssu::app::SSUAppIntent::~SSUAppIntent(void **this)
{
  v2 = this + 6;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::app::SSUAppIntent>,snlp::ssu::app::SSUAppIntent*>(uint64_t a1, uint64_t a2, uint64_t a3, std::string *this)
{
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = this;
    v6 = a2;
    v7 = a2;
    do
    {
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v7, *(v7 + 8));
      }

      else
      {
        v8 = *v7;
        v4->__r_.__value_.__r.__words[2] = *(v7 + 16);
        *&v4->__r_.__value_.__l.__data_ = v8;
      }

      v4[1].__r_.__value_.__r.__words[0] = 0;
      v4[1].__r_.__value_.__l.__size_ = 0;
      v4[1].__r_.__value_.__r.__words[2] = 0;
      std::vector<snlp::ssu::app::SSUAppParameter>::__init_with_size[abi:ne200100]<snlp::ssu::app::SSUAppParameter*,snlp::ssu::app::SSUAppParameter*>(&v4[1], *(v7 + 24), *(v7 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 32) - *(v7 + 24)) >> 4));
      v4[2].__r_.__value_.__r.__words[0] = 0;
      v4[2].__r_.__value_.__l.__size_ = 0;
      v4[2].__r_.__value_.__r.__words[2] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v4[2], *(v7 + 48), *(v7 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 56) - *(v7 + 48)) >> 3));
      v7 += 72;
      v4 = v13 + 3;
      v13 += 3;
    }

    while (v7 != a3);
    v11 = 1;
    do
    {
      std::allocator_traits<std::allocator<snlp::ssu::app::SSUAppIntent>>::destroy[abi:ne200100]<snlp::ssu::app::SSUAppIntent,0>(v6);
      v6 += 72;
    }

    while (v6 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<snlp::ssu::app::SSUAppIntent>,snlp::ssu::app::SSUAppIntent*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

void sub_22292D290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<snlp::ssu::app::SSUAppIntent>,snlp::ssu::app::SSUAppIntent*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<snlp::ssu::app::SSUAppIntent>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 72;
    std::allocator_traits<std::allocator<snlp::ssu::app::SSUAppIntent>>::destroy[abi:ne200100]<snlp::ssu::app::SSUAppIntent,0>(v3 - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<snlp::ssu::app::SSUAppIntent>>::destroy[abi:ne200100]<snlp::ssu::app::SSUAppIntent,0>(uint64_t a1)
{
  v2 = (a1 + 48);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 + 24);
  std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

BOOL nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::isUVPersonFullNameSpan(uint64_t a1, void *a2)
{
  v2 = a2[6];
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = *(v2 + 23);
  }

  else
  {
    v4 = v2[1];
  }

  v5 = *(a1 + 79);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 64);
  }

  if (v4 != v5)
  {
    return 0;
  }

  if (v3 < 0)
  {
    v2 = *v2;
  }

  v10 = *(a1 + 56);
  v8 = a1 + 56;
  v9 = v10;
  v11 = (v6 >= 0 ? v8 : v9);
  if (memcmp(v2, v11, v4))
  {
    return 0;
  }

  v13 = a2[1];
  v14 = a2[2];
  if (v13 != v14)
  {
    while (*v13 != 2)
    {
      if (++v13 == v14)
      {
        v13 = a2[2];
        return v13 != v14;
      }
    }
  }

  return v13 != v14;
}

uint64_t std::vector<sirinluinternal::MatchingSpan>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if (a1[1] >= a1[2])
  {
    result = std::vector<sirinluinternal::MatchingSpan>::__emplace_back_slow_path<sirinluinternal::MatchingSpan const&>(a1, a2);
  }

  else
  {
    result = MEMORY[0x223DC3160]() + 88;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<sirinluinternal::MatchingSpan>::__emplace_back_slow_path<sirinluinternal::MatchingSpan const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  v22 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<sirinluinternal::MatchingSpan>>(v5);
  }

  v6 = 88 * v2;
  MEMORY[0x223DC3160](v6, a2);
  v21 = (v6 + 88);
  v7 = *a1;
  v8 = a1[1];
  v9 = v6 + *a1 - v8;
  if (*a1 != v8)
  {
    v10 = *a1;
    v11 = v9;
    do
    {
      v12 = MEMORY[0x223DC3150](v11, v10);
      v10 += 11;
      v11 = v12 + 88;
    }

    while (v10 != v8);
    v13 = v7;
    v14 = v7;
    do
    {
      v15 = *v14;
      v14 += 11;
      (*v15)(v7);
      v13 += 11;
      v7 = v14;
    }

    while (v14 != v8);
  }

  v16 = *a1;
  *a1 = v9;
  v17 = a1[2];
  v19 = v21;
  *(a1 + 1) = v21;
  *&v21 = v16;
  *(&v21 + 1) = v17;
  v20[0] = v16;
  v20[1] = v16;
  std::__split_buffer<sirinluinternal::MatchingSpan>::~__split_buffer(v20);
  return v19;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<sirinluinternal::MatchingSpan>>(unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<sirinluinternal::MatchingSpan>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 88);
    *(a1 + 16) = i - 88;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::isUVSmsGroupNameSpan(uint64_t a1, void *a2)
{
  v2 = a2[6];
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = *(v2 + 23);
  }

  else
  {
    v4 = v2[1];
  }

  v5 = *(a1 + 55);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 40);
  }

  if (v4 != v5)
  {
    return 0;
  }

  if (v3 < 0)
  {
    v2 = *v2;
  }

  v10 = *(a1 + 32);
  v8 = a1 + 32;
  v9 = v10;
  v11 = (v6 >= 0 ? v8 : v9);
  if (memcmp(v2, v11, v4))
  {
    return 0;
  }

  v13 = a2[1];
  v14 = a2[2];
  if (v13 != v14)
  {
    while (*v13 != 2)
    {
      if (++v13 == v14)
      {
        v13 = a2[2];
        return v13 != v14;
      }
    }
  }

  return v13 != v14;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::IndexedToken>>(unint64_t a1)
{
  if (a1 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::getDescription(nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::transformTreeNode(nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform *this, std::string *a2, BOOL *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::isCommonPersonOrAgentNode(a2, a2))
  {
    v6 = a2[3].__r_.__value_.__r.__words[2];
    for (i = a2[4].__r_.__value_.__l.__data_; v6 != i; v6 = (v6 + 144))
    {
      v9 = *(this + 13);
      v8 = *(this + 14);
      while (v9 != v8)
      {
        if (nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::doesCharacterRangeMatch(this, v9, v6))
        {
          v10 = SNLPOSLoggerForCategory(1);
          doesCharacterRangeMatch = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
          if (doesCharacterRangeMatch)
          {
            v12 = *(this + 3);
            *buf = 136315138;
            v25 = v12;
            _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "[%s] Found an smsGroupName span that matches a common_Person or common_Agent node", buf, 0xCu);
          }

          v14 = *(this + 16);
          v13 = *(this + 17);
          while (v14 != v13)
          {
            doesCharacterRangeMatch = nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::doesCharacterRangeMatch(this, v14, v6);
            if (doesCharacterRangeMatch)
            {
              v21 = SNLPOSLoggerForCategory(1);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                v22 = *(this + 3);
                *buf = 136315138;
                v25 = v22;
                _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_DEBUG, "[%s] Found a personFullName span that matches a common_Person or common_Agent node, so skipping group_name_transform", buf, 0xCu);
              }

              goto LABEL_21;
            }

            v14 = (v14 + 88);
          }

          v15 = siri::ontology::oname::graph::ontology_init::common_Group(doesCharacterRangeMatch);
          v16 = (v15 + 8);
          v17 = SNLPOSLoggerForCategory(1);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v18 = a2;
            }

            else
            {
              v18 = a2->__r_.__value_.__r.__words[0];
            }

            v19 = v15 + 8;
            if (*(v15 + 31) < 0)
            {
              v19 = v16->__r_.__value_.__r.__words[0];
            }

            v20 = *(this + 3);
            *buf = 136315650;
            v25 = v20;
            v26 = 2080;
            v27 = v18;
            v28 = 2080;
            v29 = v19;
            _os_log_impl(&dword_22284A000, v17, OS_LOG_TYPE_DEBUG, "[%s] Replacing the node label %s with %s", buf, 0x20u);
          }

          std::string::operator=(a2, v16);
          *a3 = 1;
          break;
        }

        v9 = (v9 + 88);
      }

LABEL_21:
      ;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

BOOL nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::isCommonPersonOrAgentNode(size_t *this, const nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v3 = siri::ontology::oname::graph::ontology_init::common_Person(this);
  v4 = *(this + 23);
  if (v4 >= 0)
  {
    v5 = *(this + 23);
  }

  else
  {
    v5 = this[1];
  }

  v6 = *(v3 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v3 + 16);
  }

  if (v5 == v6)
  {
    if (v4 >= 0)
    {
      v8 = this;
    }

    else
    {
      v8 = *this;
    }

    v11 = *(v3 + 8);
    v9 = (v3 + 8);
    v10 = v11;
    if (v7 >= 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    v3 = memcmp(v8, v12, v5);
    v13 = v3 == 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = siri::ontology::oname::graph::ontology_init::common_Agent(v3);
  v15 = *(this + 23);
  if (v15 >= 0)
  {
    v16 = *(this + 23);
  }

  else
  {
    v16 = this[1];
  }

  v17 = *(v14 + 31);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(v14 + 16);
  }

  if (v16 == v17)
  {
    if (v15 >= 0)
    {
      v19 = this;
    }

    else
    {
      v19 = *this;
    }

    v22 = *(v14 + 8);
    v20 = (v14 + 8);
    v21 = v22;
    if (v18 >= 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = v21;
    }

    v24 = memcmp(v19, v23, v16) == 0;
  }

  else
  {
    v24 = 0;
  }

  return v13 || v24;
}

BOOL nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::doesCharacterRangeMatch(nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform *this, const sirinluinternal::MatchingSpan *a2, const nlv4_inference_orchestrator::trees::TreeNode *a3)
{
  v3 = *(a2 + 19);
  v4 = *(this + 10);
  v5 = 0x8E38E38E38E38E39 * ((*(this + 11) - v4) >> 4);
  if (v5 <= v3 || (v6 = (*(a2 + 18) - 1), v5 <= v6))
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  return *(a3 + 9) == *(v4 + 144 * v3 + 112) && *(a3 + 10) == *(v4 + 144 * v6 + 120);
}

void snlp::common::text_uso_graph::readUsoGraphFromText(uint64_t *a1)
{
  v1 = a1[1];
  v2[0] = *a1;
  v2[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  snlp::common::text_uso_graph::UsoGraphTextTreeParser::UsoGraphTextTreeParser(&v3, v2, 1, 0);
}

void sub_22292E0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      snlp::common::text_uso_graph::SpacedTextTreeLexer::~SpacedTextTreeLexer(&a16);
      snlp::common::text_uso_graph::UsoGraphTextTreeParser::~UsoGraphTextTreeParser((v18 - 248));
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void snlp::common::text_uso_graph::SpacedTextTreeLexer::SpacedTextTreeLexer(snlp::common::text_uso_graph::SpacedTextTreeLexer *this)
{
  *this = &unk_2835E8898;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]((this + 32), "^ *(.*)");
}

void sub_22292E20C(_Unwind_Exception *a1)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v1 + 352));
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v1 + 288));
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v1 + 224));
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v1 + 160));
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v1 + 96));
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v1 + 32));
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x223DC42A0]();
    MEMORY[0x223DC4D00](v3, 0x10A0C403D23BABBLL);
  }

  return a1;
}

void snlp::common::text_uso_graph::SpacedTextTreeLexer::~SpacedTextTreeLexer(std::locale *this)
{
  this->__locale_ = &unk_2835E8898;
  locale = this[58].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this + 52);
  v3 = this[50].__locale_;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::locale::~locale(this + 44);
  v4 = this[42].__locale_;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::locale::~locale(this + 36);
  v5 = this[34].__locale_;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::locale::~locale(this + 28);
  v6 = this[26].__locale_;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::locale::~locale(this + 20);
  v7 = this[18].__locale_;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::locale::~locale(this + 12);
  v8 = this[10].__locale_;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::locale::~locale(this + 4);
  if (SHIBYTE(this[3].__locale_) < 0)
  {
    operator delete(this[1].__locale_);
  }
}

void snlp::common::text_uso_graph::UsoGraphTextTreeParser::~UsoGraphTextTreeParser(snlp::common::text_uso_graph::UsoGraphTextTreeParser *this)
{
  *this = &unk_2835E90A8;
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(this + 112);
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  if (*(this + 72) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](this + 5);
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void snlp::common::text_uso_graph::UsoGraphTextTreeParseError::~UsoGraphTextTreeParseError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x223DC4D00);
}

void snlp::common::text_uso_graph::readUserDialogActFromText(void *a1)
{
  v1 = a1[1];
  v2[0] = *a1;
  v2[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  snlp::common::text_uso_graph::UDATextTreeParser::UDATextTreeParser(v3, v2);
}

void sub_22292E5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      snlp::common::text_uso_graph::SpacedTextTreeLexer::~SpacedTextTreeLexer(&a16);
      snlp::common::text_uso_graph::UDATextTreeParser::~UDATextTreeParser((v18 - 232));
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void snlp::common::text_uso_graph::UDATextTreeParser::~UDATextTreeParser(std::locale *this)
{
  this->__locale_ = &unk_2835E88D8;
  locale = this[21].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this + 15);
  v3 = this[14].__locale_;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[12].__locale_;
  this[12].__locale_ = 0;
  if (v4)
  {
    *v4 = &unk_2835E90A8;
    std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v4 + 112);
    v5 = *(v4 + 11);
    if (v5)
    {
      *(v4 + 12) = v5;
      operator delete(v5);
    }

    if (*(v4 + 72) == 1 && *(v4 + 71) < 0)
    {
      operator delete(*(v4 + 6));
    }

    std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](v4 + 5);
    v6 = *(v4 + 2);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    MEMORY[0x223DC4D00](v4, 0x10B3C404687FECELL);
  }

  if (LOBYTE(this[11].__locale_) == 1 && SHIBYTE(this[10].__locale_) < 0)
  {
    operator delete(this[8].__locale_);
  }

  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(&this[1]);
}

void snlp::common::text_uso_graph::UDATextTreeParseError::~UDATextTreeParseError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x223DC4D00);
}

char **uaap::TimeHandler::handle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = DDResultHasType();
  if (result)
  {
    uaap::mapTimeSpansToItemizedUsos(a3);

    return uaap::mapTimeSpanSpansToItemizedUsos(a3);
  }

  return result;
}

char **uaap::mapTimeSpansToItemizedUsos(uint64_t a1)
{
  v2 = CFHash(@"Time");
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>>::find<unsigned long>(*a1, *(a1 + 8), v2);
  if (result)
  {
    v5 = result[3];
    v4 = result[4];
    if (v4 != v5)
    {
      v6 = 0;
      do
      {
        result = *&v5[8 * v6];
        if (result)
        {
          v7 = **result;
          if (result)
          {
            operator new();
          }
        }

        ++v6;
      }

      while (v6 < (v4 - v5) >> 3);
    }
  }

  return result;
}

void sub_22292EA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<siri::ontology::UsoGraph>::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char **uaap::mapTimeSpanSpansToItemizedUsos(uint64_t a1)
{
  v2 = CFHash(@"TimeSpan");
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>>::find<unsigned long>(*a1, *(a1 + 8), v2);
  if (result)
  {
    v5 = result[3];
    v4 = result[4];
    if (v4 != v5)
    {
      v6 = 0;
      do
      {
        result = *&v5[8 * v6];
        if (result)
        {
          v7 = **result;
          if (result)
          {
            operator new();
          }
        }

        ++v6;
      }

      while (v6 < (v4 - v5) >> 3);
    }
  }

  return result;
}

const void *uaap::TimeHandler::resolveDateTimeQualifierListValue(uaap::TimeHandler *this, uaap::UPDDDateTimeBaseSpan *a2, siri::ontology::UsoGraph *a3, siri::ontology::UsoEntityNode *a4)
{
  v4 = 0;
  if (this && a2 && a3)
  {
    v7 = *(this + 6);
    if (!v7)
    {
      return 0;
    }

    v4 = *(v7 + 24);
    if (v4)
    {
      v8 = *(a3 + 3);
      siri::ontology::oname::graph::ontology_init::common_DateTime(this);
      v9 = siri::ontology::operator!=();
      if (!v9)
      {
        goto LABEL_14;
      }

      v10 = *(a3 + 3);
      siri::ontology::oname::graph::ontology_init::common_DateTimeRange(v9);
      v11 = siri::ontology::operator!=();
      if (!v11)
      {
        goto LABEL_14;
      }

      v12 = *(a3 + 3);
      siri::ontology::oname::graph::ontology_init::common_Date(v11);
      v13 = siri::ontology::operator!=();
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = *(a3 + 3);
      siri::ontology::oname::graph::ontology_init::common_Time(v13);
      v15 = siri::ontology::operator!=();
      if (!v15)
      {
        goto LABEL_14;
      }

      v16 = *(a3 + 3);
      siri::ontology::oname::graph::ontology_init::common_Integer(v15);
      v17 = siri::ontology::operator!=();
      if (!v17)
      {
        goto LABEL_14;
      }

      v18 = *(a3 + 3);
      siri::ontology::oname::graph::ontology_init::common_DayOfWeek(v17);
      v19 = siri::ontology::operator!=();
      if (!v19 || (v20 = *(a3 + 3), siri::ontology::oname::graph::ontology_init::common_MonthOfYear(v19), v21 = siri::ontology::operator!=(), !v21) || (v22 = *(a3 + 3), siri::ontology::oname::graph::ontology_init::Root(v21), (siri::ontology::operator!=() & 1) == 0))
      {
LABEL_14:
        v23 = CFEqual(v4, @"this");
        if (v23)
        {
          siri::ontology::oname::graph::ontology_init::common_ListPosition_Current(v23);
          goto LABEL_20;
        }

        v24 = CFEqual(v4, @"last");
        if (v24)
        {
          siri::ontology::oname::graph::ontology_init::common_ListPosition_Previous(v24);
          goto LABEL_20;
        }

        v25 = CFEqual(v4, @"next");
        if (v25)
        {
          siri::ontology::oname::graph::ontology_init::common_ListPosition_Next(v25);
LABEL_20:
          EntityNode = siri::ontology::UsoGraph::createEntityNode();
          siri::ontology::oname::graph::ontology_init::common_ListPosition(EntityNode);
          v27 = siri::ontology::UsoGraph::createEntityNode();
          v28 = *(a3 + 3);
          siri::ontology::oname::graph::ontology_init::Root(v27);
          v29 = siri::ontology::operator==();
          if (v29)
          {
            siri::ontology::oname::graph::ontology_init::Argument_entity(v29);
            siri::ontology::UsoGraphNode::setSuccessor();
            uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v27, *(this + 6), v30);
          }

          siri::ontology::oname::graph::ontology_init::Argument_usoListPosition(v29);
          v31 = siri::ontology::UsoGraphNode::setSuccessor();
          siri::ontology::oname::graph::ontology_init::Argument_definedValue(v31);
          siri::ontology::UsoGraphNode::setSuccessor();
          uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, *(this + 6), v32);
        }
      }

      return 0;
    }
  }

  return v4;
}

void uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(uaap::AbstractDateTimeHandler *this, siri::ontology::UsoEntityNode *a2, uaap::UPDDSpan *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = a2;
  memset(__p, 0, sizeof(__p));
  std::vector<uaap::UPDDSpan *>::__init_with_size[abi:ne200100]<uaap::UPDDSpan * const*,uaap::UPDDSpan * const*>(__p, &v4, &v5, 1uLL);
}

void sub_22292EFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22292F024(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t uaap::TimeHandler::resolveRecurringTime(siri::ontology::UsoEntityNode ***a1, uaap::UPDDTimeSpan *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v7 = a1[15];
          if (v7)
          {
            v8 = v7[6];
            if (v8)
            {
              v9 = *(v8 + 3);
              if (v9)
              {
                v10 = CFEqual(@"every", v9);
                if (v10)
                {
                  v11 = *(a3 + 24);
                  siri::ontology::oname::graph::ontology_init::Root(v10);
                  v12 = siri::ontology::operator!=();
                  if ((v12 & 1) == 0)
                  {
                    siri::ontology::oname::graph::ontology_init::common_DateTime(v12);
                    EntityNode = siri::ontology::UsoGraph::createEntityNode();
                    if (uaap::TimeHandler::resolveDateTimeRangeValue(a1[15], a2, EntityNode, v14))
                    {
                      uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, a1, v15);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t uaap::TimeHandler::resolveTimeWithDateTimeRange(siri::ontology::oname::graph::ontology_init *a1, uaap::UPDDTimeSpan *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v6 = *(a1 + 15);
          if (v6)
          {
            if (*(v6 + 96))
            {
              v7 = *(a3 + 24);
              siri::ontology::oname::graph::ontology_init::Root(a1);
              v8 = siri::ontology::operator!=();
              if ((v8 & 1) == 0)
              {
                v9 = *(a1 + 15);
                siri::ontology::oname::graph::ontology_init::common_DateTime(v8);
                EntityNode = siri::ontology::UsoGraph::createEntityNode();
                if (uaap::TimeHandler::resolveDateTimeRangeValue(v9, a2, EntityNode, v11))
                {
                  uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, a1, v12);
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

siri::ontology::UsoGraph *uaap::TimeHandler::resolveTime(siri::ontology::oname::graph::ontology_init *a1, uaap::UPDDTimeSpan *a2, uint64_t a3, uint64_t a4)
{
  EntityNode = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    return EntityNode;
  }

  v6 = a1;
  if (!*(a1 + 7) && !*(a1 + 8) && !*(a1 + 10))
  {
    if (!*(a1 + 12))
    {
      return 0;
    }

LABEL_10:
    siri::ontology::oname::graph::ontology_init::common_Time(a1);
    EntityNode = siri::ontology::UsoGraph::createEntityNode();
    siri::ontology::UsoGraphNode::setSuccessor();
    uaap::TimeHandler::resolveDateTimeRangeValue(v6, a2, EntityNode, v9);
    goto LABEL_11;
  }

  a1 = uaap::TimeHandler::resolveTimeAndMeridian(a1, a2, a3, a4);
  EntityNode = a1;
  if (!v6[12])
  {
    if (!a1)
    {
      return EntityNode;
    }

    goto LABEL_13;
  }

  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_11:
  uaap::TimeHandler::resolveSpecialTimePeriod(v6, a2, EntityNode, v8);
LABEL_13:
  if (*(EntityNode + 7) == *(EntityNode + 8))
  {
    uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, v6, v7);
  }

  v10 = v6[6];
  if (v10 && *(v10 + 3))
  {
    uaap::TimeHandler::resolveDateTimeQualifierListValue(v6, a2, EntityNode, v8);
  }

  return EntityNode;
}

uint64_t uaap::mapNowAndTimeOffsetToItemizedUsos(uint64_t result)
{
  if (*(result + 112))
  {
    operator new();
  }

  if (*(result + 104))
  {
    operator new();
  }

  return result;
}

void sub_22292F550(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x223DC4D00](v3, v2);
  std::unique_ptr<siri::ontology::UsoGraph>::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t uaap::mapMinutesBeforeToItemizedUsos(uint64_t result)
{
  if (*(result + 72))
  {
    operator new();
  }

  return result;
}

void sub_22292F6C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x223DC4D00](v3, v2);
  std::unique_ptr<siri::ontology::UsoGraph>::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

siri::ontology::oname::graph::ontology_init *uaap::TimeHandler::resolveTimeOffsetGraph(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDTimeSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    v5 = *(a2 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::TimeHandler::resolveTimeWithOffsetValueAndDirection(v4, a2, v5, v6);
  }

  return this;
}

siri::ontology::oname::graph::ontology_init *uaap::TimeHandler::resolveOffsetDurationValueGraph(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDTimeSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = *(a2 + 11);
    v5 = *(this + 9);
    if (!v5)
    {
      if (!*(this + 14))
      {
        return this;
      }

      v5 = *(this + 13);
    }

    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::TimeHandler::resolveOffsetDurationValue(v5, a2, v4, v6);
  }

  return this;
}

uint64_t uaap::TimeHandler::resolveOffsetDurationValue(CFTypeRef *a1, uaap::UPDDSpan *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v7 = CFEqual(a1[1], @"MinutesBefore");
          if (v7 || (v7 = CFEqual(a1[1], @"TimeOffset"), v7) || (v7 = CFEqual(a1[1], @"TimeSpan"), v7))
          {
            v8 = *(a3 + 24);
            siri::ontology::oname::graph::ontology_init::Root(v7);
            v9 = siri::ontology::operator!=();
            if (!v9 || (v10 = *(a3 + 24), siri::ontology::oname::graph::ontology_init::common_DateTime(v9), v9 = siri::ontology::operator!=(), (v9 & 1) == 0))
            {
              siri::ontology::oname::graph::ontology_init::common_Duration(v9);
              EntityNode = siri::ontology::UsoGraph::createEntityNode();
              if (CFEqual(a1[1], @"MinutesBefore"))
              {
                uaap::TimeSpanHandler::resolveMinutesBeforeTimeSpanWithUnit(a1, a2, EntityNode, v12);
                goto LABEL_16;
              }

              if (CFEqual(a1[1], @"TimeOffset") || CFEqual(a1[1], @"TimeSpan"))
              {
                v14 = **a1;
                if (v15)
                {
                  uaap::TimeSpanHandler::resolveTimeSpanWithUnit(v15, a2, EntityNode, v16);
LABEL_16:
                  uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, a1, v13);
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t uaap::TimeHandler::resolveTimeWithOffsetValueAndDirection(siri::ontology::oname::graph::ontology_init *a1, uaap::UPDDSpan *a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2 && a3 && a4 && (*(a1 + 9) || *(a1 + 14) || *(a1 + 13)))
  {
    v6 = *(a3 + 24);
    siri::ontology::oname::graph::ontology_init::Root(a1);
    v7 = siri::ontology::operator!=();
    if ((v7 & 1) == 0)
    {
      siri::ontology::oname::graph::ontology_init::common_DateTime(v7);
      EntityNode = siri::ontology::UsoGraph::createEntityNode();
      v10 = EntityNode;
      v11 = *(a1 + 13);
      if (v11 && (v12 = siri::ontology::oname::graph::ontology_init::Argument_offsetValue(EntityNode), (EntityNode = uaap::TimeHandler::resolveOffsetDurationValue(v11, a2, v10, v12)) != 0))
      {
        v13 = 0;
        LODWORD(v14) = 1;
      }

      else
      {
        v14 = *(a1 + 9);
        if (v14)
        {
          v15 = siri::ontology::oname::graph::ontology_init::Argument_offsetValue(EntityNode);
          EntityNode = uaap::TimeHandler::resolveOffsetDurationValue(v14, a2, v10, v15);
          LODWORD(v14) = EntityNode != 0;
        }

        v13 = 1;
        if (!v11)
        {
LABEL_19:
          if (*(a1 + 9))
          {
LABEL_20:
            siri::ontology::oname::graph::ontology_init::common_OffsetDirection_Before(EntityNode);
            goto LABEL_28;
          }

          if (v11)
          {
            EntityNode = CFEqual(v11, @"after");
            if (EntityNode)
            {
LABEL_27:
              siri::ontology::oname::graph::ontology_init::common_OffsetDirection_After(EntityNode);
LABEL_28:
              v18 = siri::ontology::UsoGraph::createEntityNode();
              siri::ontology::oname::graph::ontology_init::common_OffsetDirection(v18);
              v19 = siri::ontology::UsoGraph::createEntityNode();
              siri::ontology::oname::graph::ontology_init::Argument_direction(v19);
              v20 = siri::ontology::UsoGraphNode::setSuccessor();
              siri::ontology::oname::graph::ontology_init::Argument_definedValue(v20);
              siri::ontology::UsoGraphNode::setSuccessor();
              v23 = *(a1 + 9);
              if (v23 || (v25 = *(a1 + 13)) != 0 && (v23 = *(v25 + 48)) != 0)
              {
                uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v18, v23, v21);
              }

              uaap::TimeHandler::resolveOffsetReference(a1, a2, v10, v22);
              goto LABEL_31;
            }

            EntityNode = CFEqual(v11, @"before");
            if (EntityNode)
            {
              goto LABEL_20;
            }
          }

          if (v13)
          {
            if (((uaap::TimeHandler::resolveOffsetReference(a1, a2, v10, v9) == 0) & ~v14) != 0)
            {
              return 0;
            }

LABEL_31:
            uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v10, a1, v17);
          }

          goto LABEL_27;
        }
      }

      v16 = v11[6];
      if (v16)
      {
        v11 = *(v16 + 24);
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_19;
    }
  }

  return 0;
}

siri::ontology::UsoGraph *uaap::TimeHandler::resolveOffsetReference(CFTypeRef **this, uaap::UPDDTimeSpan *a2, siri::ontology::UsoGraph *a3, siri::ontology::UsoEntityNode *a4)
{
  EntityNode = 0;
  if (this && a2 && a3)
  {
    v7 = *(a3 + 3);
    siri::ontology::oname::graph::ontology_init::common_DateTime(this);
    v8 = siri::ontology::operator!=();
    if ((v8 & 1) == 0 && ((siri::ontology::oname::graph::ontology_init::common_DateTime(v8), EntityNode = siri::ontology::UsoGraph::createEntityNode(), (v10 = this[14]) == 0) ? (v11 = 0) : (v10 = uaap::TimeHandler::resolveNow(v10, a2, EntityNode, v9), v11 = v10 != 0), (v12 = siri::ontology::oname::graph::ontology_init::Argument_time(v10), v13 = uaap::TimeHandler::resolveTimeAndMeridian(this, a2, EntityNode, v12), v11) || v13))
    {
      siri::ontology::oname::graph::ontology_init::Argument_offsetReference(v13);
      siri::ontology::UsoGraphNode::setSuccessor();
    }

    else
    {
      return 0;
    }
  }

  return EntityNode;
}

uint64_t uaap::TimeHandler::resolveNow(CFTypeRef *this, uaap::UPDDSpan *a2, siri::ontology::UsoGraph *a3, siri::ontology::UsoEntityNode *a4)
{
  if (this)
  {
    if (a2)
    {
      if (a3)
      {
        v6 = CFEqual(this[1], @"Now");
        if (v6)
        {
          v7 = *(a3 + 3);
          siri::ontology::oname::graph::ontology_init::Root(v6);
          v8 = siri::ontology::operator!=();
          if (!v8 || (v9 = *(a3 + 3), siri::ontology::oname::graph::ontology_init::common_DateTime(v8), v8 = siri::ontology::operator!=(), (v8 & 1) == 0))
          {
            v10 = *(a3 + 3);
            siri::ontology::oname::graph::ontology_init::Root(v8);
            v11 = siri::ontology::operator==();
            if (v11)
            {
              siri::ontology::oname::graph::ontology_init::common_DateTime(v11);
              EntityNode = siri::ontology::UsoGraph::createEntityNode();
              uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, this, v13);
            }

            siri::ontology::oname::graph::ontology_init::common_DateTime_Now(v11);
            v14 = siri::ontology::UsoGraph::createEntityNode();
            uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v14, this, v15);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t uaap::TimeHandler::resolveTimeAndMeridian(siri::ontology::oname::graph::ontology_init *IntValueFromCFStringRef, uint64_t a2, uint64_t a3, uint64_t a4)
{
  EntityNode = 0;
  if (IntValueFromCFStringRef && a2 && a3 && a4)
  {
    v6 = IntValueFromCFStringRef;
    v7 = *(IntValueFromCFStringRef + 7);
    if (v7 && (IntValueFromCFStringRef = CFStringGetLength(*(v7 + 24))) != 0 || *(v6 + 8) || *(v6 + 10))
    {
      v8 = *(v6 + 7);
      if (v8 && (IntValueFromCFStringRef = CFStringGetLength(*(v8 + 24))) != 0)
      {
        IntValueFromCFStringRef = uaap::UPDDSpan::extractIntValueFromCFStringRef(*(*(v6 + 7) + 24), v9);
        v10 = IntValueFromCFStringRef;
      }

      else
      {
        v10 = 0x7FFFFFFF;
      }

      __p = 0;
      v24 = 0;
      v25 = 0;
      if (*(v6 + 11))
      {
        operator new();
      }

      if (v10 && (v10 - 13) > 0xB)
      {
        siri::ontology::oname::graph::ontology_init::common_Time(IntValueFromCFStringRef);
        EntityNode = siri::ontology::UsoGraph::createEntityNode();
        siri::ontology::UsoGraphNode::setSuccessor();
      }

      else
      {
        siri::ontology::oname::graph::ontology_init::common_Time24HourClock(IntValueFromCFStringRef);
        EntityNode = siri::ontology::UsoGraph::createEntityNode();
        siri::ontology::UsoGraphNode::setSuccessor();
      }

      v11 = *(v6 + 7);
      if (v11 && CFStringGetLength(*(v11 + 24)))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(1uLL);
      }

      if (*(v6 + 8))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(1uLL);
      }

      v12 = *(v6 + 10);
      if (v12)
      {
        v13 = __p;
        v14 = -__p;
        v15 = -__p >> 3;
        v16 = v15 + 1;
        if ((v15 + 1) >> 61)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v17 = v25 - __p;
        if ((v25 - __p) >> 2 > v16)
        {
          v16 = v17 >> 2;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v18);
        }

        *(8 * v15) = v12;
        memcpy(0, v13, v14);
        __p = 0;
        v25 = 0;
        v24 = 8 * v15 + 8;
        v20 = uaap::UPDDSpan::extractIntValueFromCFStringRef(*(*(v6 + 10) + 24), v19);
        v21 = siri::ontology::oname::graph::ontology_init::Argument_second(v20);
        uaap::TimeHandler::_buildTimeWithUnit(v20, v21, a2, EntityNode, *(v6 + 10));
      }

      uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, &__p);
      if (__p)
      {
        operator delete(__p);
      }
    }

    else
    {
      return 0;
    }
  }

  return EntityNode;
}

void sub_222930244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t uaap::TimeHandler::_buildTimeWithUnit(siri::ontology::oname::graph::ontology_init *a1, uint64_t a2, uint64_t a3, uint64_t a4, siri::ontology::UsoEntityNode *a5)
{
  v7 = *(a4 + 24);
  siri::ontology::oname::graph::ontology_init::common_Time24HourClock(a1);
  v8 = siri::ontology::operator!=();
  if (!v8 || (v9 = *(a4 + 24), siri::ontology::oname::graph::ontology_init::common_Time12HourClock(v8), v8 = siri::ontology::operator!=(), !v8) || (v10 = *(a4 + 24), siri::ontology::oname::graph::ontology_init::common_Time(v8), v8 = siri::ontology::operator!=(), (v8 & 1) == 0))
  {
    siri::ontology::oname::graph::ontology_init::Argument_hour(v8);
    v11 = siri::ontology::operator!=();
    if (!v11 || (siri::ontology::oname::graph::ontology_init::Argument_minute(v11), v11 = siri::ontology::operator!=(), !v11) || (siri::ontology::oname::graph::ontology_init::Argument_second(v11), v11 = siri::ontology::operator!=(), (v11 & 1) == 0))
    {
      siri::ontology::oname::graph::ontology_init::common_Integer(v11);
      siri::ontology::UsoGraph::createEntityNode();
      siri::ontology::UsoGraphNode::setSuccessor();
      IntNode = siri::ontology::UsoGraph::createIntNode();
      siri::ontology::oname::graph::ontology_init::Argument_integerValue(IntNode);
      siri::ontology::UsoGraphNode::setSuccessor();
      uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(IntNode, a5, v13);
    }
  }

  return 0;
}

uint64_t uaap::TimeHandler::resolveDateTimeRangeValue(siri::ontology::UsoEntityNode **this, uaap::UPDDTimeSpan *a2, siri::ontology::UsoGraph *a3, siri::ontology::UsoEntityNode *a4)
{
  if (this)
  {
    if (a2)
    {
      if (a3)
      {
        if (this[12])
        {
          v6 = *(a3 + 3);
          siri::ontology::oname::graph::ontology_init::common_Time(this);
          v7 = siri::ontology::operator!=();
          if (!v7 || (v8 = *(a3 + 3), siri::ontology::oname::graph::ontology_init::common_DateTime(v7), (siri::ontology::operator!=() & 1) == 0))
          {
            if (uaap::TimeHandler::getSpecialTimeDefinedValue(this))
            {
              EntityNode = siri::ontology::UsoGraph::createEntityNode();
              siri::ontology::oname::graph::ontology_init::common_DateTimeRange(EntityNode);
              v10 = siri::ontology::UsoGraph::createEntityNode();
              siri::ontology::oname::graph::ontology_init::Argument_occurringIn(v10);
              v11 = siri::ontology::UsoGraphNode::setSuccessor();
              siri::ontology::oname::graph::ontology_init::Argument_definedValue(v11);
              siri::ontology::UsoGraphNode::setSuccessor();
              uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, this[12], v12);
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t uaap::TimeHandler::resolveSpecialTimePeriod(siri::ontology::UsoEntityNode **this, uaap::UPDDTimeSpan *a2, siri::ontology::UsoGraph *a3, siri::ontology::UsoEntityNode *a4)
{
  if (this)
  {
    if (a2)
    {
      if (a3)
      {
        if (this[12])
        {
          v5 = *(a3 + 3);
          siri::ontology::oname::graph::ontology_init::common_Time(this);
          if ((siri::ontology::operator!=() & 1) == 0)
          {
            v6 = CFEqual(*(this[12] + 3), @"midnight");
            if (v6)
            {
              siri::ontology::oname::graph::ontology_init::common_Time_Midnight(v6);
            }

            else
            {
              v7 = CFEqual(*(this[12] + 3), @"noon");
              if (!v7)
              {
                return 0;
              }

              siri::ontology::oname::graph::ontology_init::common_Time_Noon(v7);
            }

            EntityNode = siri::ontology::UsoGraph::createEntityNode();
            siri::ontology::oname::graph::ontology_init::Argument_definedValue(EntityNode);
            siri::ontology::UsoGraphNode::setSuccessor();
            uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, this[12], v9);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t uaap::TimeHandler::getSpecialTimeDefinedValue(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 96);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 24);
  if (!v2)
  {
    return 0;
  }

  if (CFEqual(*(v1 + 24), @"afternoon"))
  {

    return MEMORY[0x2821C3E58]();
  }

  if (CFEqual(v2, @"breakfast"))
  {

    return MEMORY[0x2821C3EF0]();
  }

  if (CFEqual(v2, @"brunch"))
  {

    return MEMORY[0x2821C3E90]();
  }

  if (CFEqual(v2, @"dinner"))
  {

    return MEMORY[0x2821C3E98]();
  }

  if (CFEqual(v2, @"evening"))
  {

    return MEMORY[0x2821C3DD8]();
  }

  if (CFEqual(v2, @"lunch"))
  {

    return MEMORY[0x2821C3E60]();
  }

  if (CFEqual(v2, @"morning"))
  {

    return MEMORY[0x2821C3DE0]();
  }

  if (!CFEqual(v2, @"night"))
  {
    return 0;
  }

  return MEMORY[0x2821C3D08]();
}

uint64_t uaap::TimeHandler::resolveDateTimeRangeQualifierValue(CFTypeRef *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v5 = *(a3 + 24);
          siri::ontology::oname::graph::ontology_init::common_DateTimeRange(a1);
          if ((siri::ontology::operator!=() & 1) == 0)
          {
            v6 = CFEqual(a1[3], @"restof");
            if (v6 || (v6 = CFEqual(a1[3], @"late"), v6))
            {
              siri::ontology::oname::graph::ontology_init::common_DateTimeRangeQualifier_RestOf(v6);
            }

            else
            {
              v11 = CFEqual(a1[3], @"early");
              if (v11)
              {
                siri::ontology::oname::graph::ontology_init::common_DateTimeRangeQualifier_EarlierPartOf(v11);
              }

              else
              {
                v12 = CFEqual(a1[3], @"middle");
                if (v12)
                {
                  siri::ontology::oname::graph::ontology_init::common_DateTimeRangeQualifier_MiddleOf(v12);
                }

                else
                {
                  v13 = CFEqual(a1[3], @"beginning");
                  if (!v13)
                  {
                    return 0;
                  }

                  siri::ontology::oname::graph::ontology_init::common_DateTimeRangeQualifier_StartOf(v13);
                }
              }
            }

            EntityNode = siri::ontology::UsoGraph::createEntityNode();
            siri::ontology::oname::graph::ontology_init::common_DateTimeRangeQualifier(EntityNode);
            siri::ontology::UsoGraph::createEntityNode();
            v8 = siri::ontology::UsoGraphNode::setSuccessor();
            siri::ontology::oname::graph::ontology_init::Argument_definedValue(v8);
            siri::ontology::UsoGraphNode::setSuccessor();
            uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, a1, v9);
          }
        }
      }
    }
  }

  return 0;
}

siri::ontology::oname::graph::ontology_init *uaap::TimeHandler::resolveTimeWithDateTimeRangeAndQualifier(siri::ontology::oname::graph::ontology_init *a1, uaap::UPDDTimeSpan *a2, uint64_t a3, uint64_t a4)
{
  EntityNode = 0;
  if (a1 && a2 && a3 && a4)
  {
    v8 = *(a3 + 24);
    siri::ontology::oname::graph::ontology_init::common_DateTimeRange(a1);
    v9 = siri::ontology::operator!=();
    if (v9)
    {
      v10 = *(a3 + 24);
      siri::ontology::oname::graph::ontology_init::common_DateTime(v9);
      v9 = siri::ontology::operator!=();
      if (v9)
      {
        return 0;
      }
    }

    siri::ontology::oname::graph::ontology_init::common_DateTime(v9);
    EntityNode = siri::ontology::UsoGraph::createEntityNode();
    v11 = siri::ontology::oname::graph::ontology_init::Argument_time(EntityNode);
    v12 = uaap::TimeHandler::resolveTime(a1, a2, EntityNode, v11);
    v14 = uaap::TimeHandler::resolveDateTimeRangeValue(a1, a2, EntityNode, v13);
    v16 = uaap::TimeHandler::resolveDateTimeQualifierListValue(a1, a2, EntityNode, v15);
    if (v12 || v14 || v16)
    {
      siri::ontology::UsoGraphNode::setSuccessor();
    }

    else
    {
      return 0;
    }
  }

  return EntityNode;
}

uint64_t uaap::TimeHandler::resolveNowGraph(uint64_t this, siri::ontology::UsoGraph **a2, siri::ontology::UsoGraph *a3, siri::ontology::UsoEntityNode *a4)
{
  if (this)
  {
    this = *(this + 112);
    if (this)
    {
      return uaap::TimeHandler::resolveNow(this, a2, a2[11], a4);
    }
  }

  return this;
}

siri::ontology::oname::graph::ontology_init *uaap::TimeHandler::resolveTimeGraph(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDTimeSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    v5 = *(a2 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::TimeHandler::resolveTime(v4, a2, v5, v6);
  }

  return this;
}

siri::ontology::oname::graph::ontology_init *uaap::TimeHandler::resolveRecurringTimeGraph(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDTimeSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    v5 = *(a2 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::TimeHandler::resolveRecurringTime(v4, a2, v5, v6);
  }

  return this;
}

uaap::TimeHandler *uaap::TimeHandler::resolveDateTimeQualifierListValueGraph(uaap::TimeHandler *this, siri::ontology::UsoGraph **a2, siri::ontology::UsoGraph *a3, siri::ontology::UsoEntityNode *a4)
{
  if (this)
  {
    return uaap::TimeHandler::resolveDateTimeQualifierListValue(this, a2, a2[11], a4);
  }

  return this;
}

siri::ontology::oname::graph::ontology_init *uaap::resolveTimeGraphWithDateTimeRange(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDTimeSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    v5 = *(a2 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::TimeHandler::resolveTimeWithDateTimeRange(v4, a2, v5, v6);
  }

  return this;
}

char **uaap::TimeHandler::mapTimeToItemizedUsos(uint64_t a1)
{
  uaap::mapTimeSpansToItemizedUsos(a1);

  return uaap::mapTimeSpanSpansToItemizedUsos(a1);
}

unsigned __int8 *nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(unsigned __int8 *result, int *a2)
{
  v2 = result;
  v3 = *result;
  if (v3 > 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_11;
    }

    if (v3 == 6)
    {
      goto LABEL_4;
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = *v2;
    if (v6 > 9)
    {
      v7 = "number";
    }

    else
    {
      v7 = off_2784B68D0[v6];
    }

    std::string::basic_string[abi:ne200100]<0>(&v10, v7);
    v8 = std::string::insert(&v10, 0, "type must be number, but is ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    v11 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(exception, 302, &v11);
  }

  if (v3 == 4)
  {
    v4 = result[8];
    goto LABEL_11;
  }

  if (v3 != 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = *(result + 2);
LABEL_11:
  *a2 = v4;
  return result;
}

void sub_22293131C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t std::pair<std::string const,std::variant<int,unsigned int,float,BOOL,std::string>>::~pair(uint64_t a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_222931574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 16))(a14);
  }

  _Unwind_Resume(a1);
}

void sub_2229316A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2229317AC(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);

  _Unwind_Resume(a1);
}

void itfm_inference_orchestrator::inference_engine::ITFMModule::forward(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v30, *a2, a2[1], (a2[1] - *a2) >> 3);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v33, a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::setInput(a1, a1 + 10, &v30);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v24, a2[6], a2[7], (a2[7] - a2[6]) >> 3);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v27, a2[9], a2[10], (a2[10] - a2[9]) >> 2);
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::setInput(a1, a1 + 13, &v24);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v18, a2[12], a2[13], (a2[13] - a2[12]) >> 3);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v21, a2[15], a2[16], (a2[16] - a2[15]) >> 2);
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::setInput(a1, a1 + 16, &v18);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v12, a2[18], a2[19], (a2[19] - a2[18]) >> 3);
  __p = 0;
  v16 = 0;
  v17 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, a2[21], a2[22], (a2[22] - a2[21]) >> 2);
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::setInput(a1, a1 + 19, &v12);
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::executePlan(a1);
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  itfm_inference_orchestrator::inference_engine::ITFMModule::getITFMOutput(a1, &v8);
  v6 = v9;
  *a3 = v8;
  *(a3 + 16) = v6;
  v7 = v11;
  *(a3 + 24) = v10;
  *(a3 + 40) = v7;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_222931BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v28);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&__p);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a21);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a27);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType((v29 - 96));
  _Unwind_Resume(a1);
}

void itfm_inference_orchestrator::inference_engine::ITFMModule::getITFMOutput(itfm_inference_orchestrator::inference_engine::ITFMModule *this@<X0>, void *a2@<X8>)
{
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::getOutput(this, this + 22, &v3);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a2, v3, v4, (v4 - v3) >> 3);
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a2 + 3), __p, v6, (v6 - __p) >> 2);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }
}

void sub_222931D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a9);
  _Unwind_Resume(a1);
}

char **uaap::DateSpanHandler::handle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = DDResultHasType();
  if (result)
  {

    return uaap::DateSpanHandler::mapDateSpanToItemizedUsos(a3);
  }

  return result;
}

char **uaap::DateSpanHandler::mapDateSpanToItemizedUsos(uint64_t a1)
{
  v2 = CFHash(@"DateSpan");
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>>::find<unsigned long>(*a1, *(a1 + 8), v2);
  if (result)
  {
    v5 = result[3];
    v4 = result[4];
    if (v4 != v5)
    {
      v6 = 0;
      do
      {
        result = *&v5[8 * v6];
        if (result)
        {
          v7 = **result;
          if (result)
          {
            v8 = result;
            if (uaap::DateSpanHandler::isRecurringDate(result))
            {
              operator new();
            }

            v9 = v8[16];
            if (v9 && *(v9 + 6))
            {
              operator new();
            }

            if (v8[10])
            {
              if (v8[16])
              {
                operator new();
              }
            }

            operator new();
          }
        }

        ++v6;
      }

      while (v6 < (v4 - v5) >> 3);
    }
  }

  return result;
}

uint64_t uaap::DateSpanHandler::isRecurringDate(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 48);
    if (v2)
    {
      v3 = *(v2 + 24);
      if (v3)
      {
        if (CFEqual(@"every", v3))
        {
          return 1;
        }
      }
    }

    v4 = *(v1 + 128);
    if (v4 && (v5 = *(v4 + 96)) != 0)
    {
      if (CFEqual(@"every", v5))
      {
        return 1;
      }

      return CFEqual(@"potentialEvery", *(*(v1 + 128) + 96)) != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uaap::DateSpanHandler::resolveRecurringDateSpan(siri::ontology::oname::graph::ontology_init *a1, uaap *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        if (a4)
        {
          v6 = *(a3 + 24);
          siri::ontology::oname::graph::ontology_init::Root(a1);
          v7 = siri::ontology::operator!=();
          if ((v7 & 1) == 0)
          {
            siri::ontology::oname::graph::ontology_init::common_RecurringDateTime(v7);
            EntityNode = siri::ontology::UsoGraph::createEntityNode();
            v9 = siri::ontology::oname::graph::ontology_init::Argument_recurrencePeriod(EntityNode);
            v10 = uaap::DateHandler::resolveDurationValueAndUnit(a1, a2, EntityNode, v9);
            siri::ontology::oname::graph::ontology_init::common_DateTime(v10);
            v11 = siri::ontology::UsoGraph::createEntityNode();
            v13 = uaap::DateHandler::resolveDateTimeRangeValue(a1, a2, v11, v12);
            if (v13)
            {
              siri::ontology::oname::graph::ontology_init::Argument_recurrenceDateTimes(v13);
              siri::ontology::UsoGraphNode::setSuccessor();
              v16 = *(a1 + 6);
              if (v16 && *(v16 + 24))
              {
                uaap::TimeHandler::resolveDateTimeQualifierListValue(a1, a2, v11, v15);
              }
            }

            else if (!v10)
            {
              return 0;
            }

            uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, a1, v14);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t uaap::DateSpanHandler::resolveDateSpan(siri::ontology::oname::graph::ontology_init *a1, __CFString *a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    return 0;
  }

  siri::ontology::oname::graph::ontology_init::common_Date(a1);
  EntityNode = siri::ontology::UsoGraph::createEntityNode();
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(v9 + 48);
    v11 = *(v9 + 88) != 0;
    if (v10)
    {
      v12 = CFEqual(*(v10 + 24), @"week") != 0;
      v13 = CFEqual(*(*(*(a1 + 16) + 48) + 24), @"year") != 0;
      goto LABEL_11;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = 0;
LABEL_11:
  v14 = uaap::DateSpanHandler::resolveDateSpanMonthOfYear(a1, a2, EntityNode, v7);
  v17 = v14;
  v18 = v14 != 0;
  v19 = *(a1 + 6);
  if (v19)
  {
    if (*(v19 + 24) == 0 && !v11)
    {
      goto LABEL_24;
    }

LABEL_15:
    if (v12)
    {
      siri::ontology::oname::graph::ontology_init::common_Integer(v14);
      v17 = siri::ontology::UsoGraph::createEntityNode();
      siri::ontology::oname::graph::ontology_init::Argument_weekOfYear(v17);
      v14 = siri::ontology::UsoGraphNode::setSuccessor();
      v18 = 1;
    }

    if (v13)
    {
      siri::ontology::oname::graph::ontology_init::common_Integer(v14);
      v17 = siri::ontology::UsoGraph::createEntityNode();
      siri::ontology::oname::graph::ontology_init::Argument_year(v17);
      siri::ontology::UsoGraphNode::setSuccessor();
      v18 = 1;
    }

    else if (!v17)
    {
      goto LABEL_21;
    }

    if (uaap::TimeHandler::resolveDateTimeQualifierListValue(a1, a2, v17, v16))
    {
LABEL_23:
      v18 = 1;
      goto LABEL_24;
    }

LABEL_21:
    if (!uaap::TimeHandler::resolveDateTimeQualifierListValue(a1, a2, EntityNode, v16) && !uaap::DateSpanHandler::resolveDateSpanWithOrdinalCount(a1, a2, v17, v16))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v11)
  {
    goto LABEL_15;
  }

LABEL_24:
  if (v9)
  {
    if (uaap::DateHandler::resolveDateTimeRangeValue(a1, a2, EntityNode, v16))
    {
      v20 = 1;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
LABEL_29:
      uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, a1, v15);
    }
  }

  else if (v18)
  {
    goto LABEL_29;
  }

  return uaap::resolveDateSpanRelativeDay(a1, a2, a3, a4);
}

uaap::DateHandler *uaap::DateSpanHandler::resolveDateTimeRangeSpanGraph(uaap::DateHandler *this, uaap::UPDDDateSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v3 = this;
    v4 = *(this + 16);
    if (v4)
    {
      v5 = *(v4 + 48);
      if (v5)
      {
        if (*(v5 + 24))
        {
          v7 = *(a2 + 11);
          siri::ontology::oname::graph::ontology_init::common_DateTime(this);
          EntityNode = siri::ontology::UsoGraph::createEntityNode();
          this = uaap::DateHandler::resolveDateTimeRangeValue(v3, a2, EntityNode, v9);
          if (this)
          {
            uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, v3, v10);
          }
        }
      }
    }
  }

  return this;
}

siri::ontology::oname::graph::ontology_init *uaap::DateSpanHandler::resolveDateSpanMonthOfYear(__CFString *this, const __CFString *a2, siri::ontology::UsoGraph *a3, siri::ontology::UsoEntityNode *a4)
{
  EntityNode = 0;
  if (!this || !a2 || !a3)
  {
    return EntityNode;
  }

  v5 = this;
  isa = this[4].isa;
  if (!isa)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v7 = *(isa + 7);
  if (v7 && (this = *(v7 + 24)) != 0)
  {
    this = uaap::DateSpanHandler::getMonthOfYearDefinedValue(this, a2);
    v8 = this != 0;
    isa = v5[4].isa;
  }

  else
  {
    v8 = 0;
  }

  isa = *(isa + 6);
  if (isa)
  {
    this = CFEqual(*(isa + 3), @"month");
    LODWORD(isa) = this != 0;
  }

  if (!v8)
  {
LABEL_14:
    if (!isa)
    {
      return 0;
    }
  }

  siri::ontology::oname::graph::ontology_init::common_MonthOfYear(this);
  EntityNode = siri::ontology::UsoGraph::createEntityNode();
  siri::ontology::oname::graph::ontology_init::Argument_monthOfYear(EntityNode);
  siri::ontology::UsoGraphNode::setSuccessor();
  if (v8)
  {
    uaap::DateSpanHandler::getMonthOfYearDefinedValue(*(*(v5[4].isa + 7) + 24), v9);
    v10 = siri::ontology::UsoGraph::createEntityNode();
    siri::ontology::oname::graph::ontology_init::Argument_definedValue(v10);
    siri::ontology::UsoGraphNode::setSuccessor();
    uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v10, *(v5[4].isa + 7), v11);
  }

  return EntityNode;
}

uint64_t uaap::DateSpanHandler::resolveDateSpanWithOrdinalCount(uaap::DateSpanHandler *this, const __CFString *a2, siri::ontology::UsoGraph *a3, siri::ontology::UsoEntityNode *a4)
{
  if (this)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *(this + 16);
        if (v7)
        {
          if (*(v7 + 88))
          {
            v8 = *(a3 + 3);
            siri::ontology::oname::graph::ontology_init::common_DateTime(this);
            v9 = siri::ontology::operator!=();
            if (!v9)
            {
              goto LABEL_14;
            }

            v11 = *(a3 + 3);
            siri::ontology::oname::graph::ontology_init::common_DateTimeRange(v9);
            v12 = siri::ontology::operator!=();
            if (!v12)
            {
              goto LABEL_14;
            }

            v13 = *(a3 + 3);
            siri::ontology::oname::graph::ontology_init::common_Date(v12);
            v14 = siri::ontology::operator!=();
            if (!v14)
            {
              goto LABEL_14;
            }

            v15 = *(a3 + 3);
            siri::ontology::oname::graph::ontology_init::common_Time(v14);
            v16 = siri::ontology::operator!=();
            if (!v16)
            {
              goto LABEL_14;
            }

            v17 = *(a3 + 3);
            siri::ontology::oname::graph::ontology_init::common_Integer(v16);
            v18 = siri::ontology::operator!=();
            if (!v18)
            {
              goto LABEL_14;
            }

            v19 = *(a3 + 3);
            siri::ontology::oname::graph::ontology_init::common_DayOfWeek(v18);
            v20 = siri::ontology::operator!=();
            if (!v20 || (v21 = *(a3 + 3), siri::ontology::oname::graph::ontology_init::common_MonthOfYear(v20), v22 = siri::ontology::operator!=(), !v22) || (v23 = *(a3 + 3), siri::ontology::oname::graph::ontology_init::Root(v22), (siri::ontology::operator!=() & 1) == 0))
            {
LABEL_14:
              OrdinalCountAsListPositionVal = uaap::getOrdinalCountAsListPositionVal(this, a2, v10);
              if (OrdinalCountAsListPositionVal)
              {
                v25 = OrdinalCountAsListPositionVal;
                siri::ontology::oname::graph::ontology_init::common_ListPosition(OrdinalCountAsListPositionVal);
                EntityNode = siri::ontology::UsoGraph::createEntityNode();
                v27 = *(a3 + 3);
                siri::ontology::oname::graph::ontology_init::Root(EntityNode);
                v28 = siri::ontology::operator==();
                if (v28)
                {
                  siri::ontology::oname::graph::ontology_init::Argument_entity(v28);
                  siri::ontology::UsoGraphNode::setSuccessor();
                  uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, *(*(this + 16) + 88), v29);
                }

                siri::ontology::oname::graph::ontology_init::Argument_usoListPosition(v28);
                v30 = siri::ontology::UsoGraphNode::setSuccessor();
                siri::ontology::oname::graph::ontology_init::Argument_definedValue(v30);
                siri::ontology::UsoGraphNode::setSuccessor();
                uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v25, this, v31);
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t uaap::resolveDateSpanRelativeDay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a1 && a2 && a3 && a4)
  {
    v7 = *(a1 + 104);
    if (v7)
    {
      return uaap::DateHandler::resolveRelativeDayOfWeek(v7, a2, a3, a4);
    }

    else
    {
      result = *(a1 + 96);
      if (result)
      {

        return uaap::DateHandler::resolveRelativeDay(result, a2, a3, a4);
      }
    }
  }

  return result;
}

uint64_t uaap::getOrdinalCountAsListPositionVal(uaap *this, const __CFString *a2, siri::ontology::UsoGraph *a3)
{
  if (!this)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = *(this + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 88);
  if (!v4)
  {
    return 0;
  }

  IntValueFromCFStringRef = uaap::UPDDSpan::extractIntValueFromCFStringRef(*(v4 + 24), a2);
  switch(IntValueFromCFStringRef)
  {
    case -1:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Last(IntValueFromCFStringRef);
      break;
    case 0:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Current(IntValueFromCFStringRef);
      break;
    case 1:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_First(IntValueFromCFStringRef);
      break;
    case 2:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Second(IntValueFromCFStringRef);
      break;
    case 3:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Third(IntValueFromCFStringRef);
      break;
    case 4:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Fourth(IntValueFromCFStringRef);
      break;
    case 5:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Fifth(IntValueFromCFStringRef);
      break;
    case 6:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Sixth(IntValueFromCFStringRef);
      break;
    case 7:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Seventh(IntValueFromCFStringRef);
      break;
    case 8:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Eighth(IntValueFromCFStringRef);
      break;
    case 9:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Ninth(IntValueFromCFStringRef);
      break;
    case 10:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Tenth(IntValueFromCFStringRef);
      break;
    case 11:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Eleventh(IntValueFromCFStringRef);
      break;
    case 12:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Twelfth(IntValueFromCFStringRef);
      break;
    case 13:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Thirteenth(IntValueFromCFStringRef);
      break;
    case 14:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Fourteenth(IntValueFromCFStringRef);
      break;
    case 15:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Fifteenth(IntValueFromCFStringRef);
      break;
    case 16:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Sixteenth(IntValueFromCFStringRef);
      break;
    case 17:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Seventeenth(IntValueFromCFStringRef);
      break;
    case 18:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Eighteenth(IntValueFromCFStringRef);
      break;
    case 19:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Nineteenth(IntValueFromCFStringRef);
      break;
    case 20:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_Twentieth(IntValueFromCFStringRef);
      break;
    case 21:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_TwentyFirst(IntValueFromCFStringRef);
      break;
    case 22:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_TwentySecond(IntValueFromCFStringRef);
      break;
    case 23:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_TwentyThird(IntValueFromCFStringRef);
      break;
    case 24:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_TwentyFourth(IntValueFromCFStringRef);
      break;
    case 25:
      siri::ontology::oname::graph::ontology_init::common_ListPosition_TwentyFifth(IntValueFromCFStringRef);
      break;
    default:
      return 0;
  }

  return siri::ontology::UsoGraph::createEntityNode();
}

uint64_t uaap::DateSpanHandler::getMonthOfYearDefinedValue(const __CFString *this, const __CFString *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  IntValueFromCFStringRef = uaap::UPDDSpan::extractIntValueFromCFStringRef(this, a2);
  switch(IntValueFromCFStringRef)
  {
    case 0:
      v4 = SNLPOSLoggerForCategory(3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        applesauce::CF::convert_to<std::string,0>(__p, this);
        if (v22 >= 0)
        {
          v5 = __p;
        }

        else
        {
          v5 = __p[0];
        }

        *buf = 136315138;
        v24 = v5;
        _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEFAULT, "Warning: failed to parse month number string as an integer: '%s'. Returning nullptr.", buf, 0xCu);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }
      }

      goto LABEL_37;
    case 1:
      v13 = *MEMORY[0x277D85DE8];

      result = MEMORY[0x2821C3D40]();
      break;
    case 2:
      v10 = *MEMORY[0x277D85DE8];

      result = MEMORY[0x2821C3DB0]();
      break;
    case 3:
      v11 = *MEMORY[0x277D85DE8];

      result = MEMORY[0x2821C3C80]();
      break;
    case 4:
      v7 = *MEMORY[0x277D85DE8];

      result = MEMORY[0x2821C3C78]();
      break;
    case 5:
      v14 = *MEMORY[0x277D85DE8];

      result = MEMORY[0x2821C3BE0]();
      break;
    case 6:
      v17 = *MEMORY[0x277D85DE8];

      result = MEMORY[0x2821C3C40]();
      break;
    case 7:
      v12 = *MEMORY[0x277D85DE8];

      result = MEMORY[0x2821C3C38]();
      break;
    case 8:
      v19 = *MEMORY[0x277D85DE8];

      result = MEMORY[0x2821C3CF8]();
      break;
    case 9:
      v9 = *MEMORY[0x277D85DE8];

      result = MEMORY[0x2821C3E08]();
      break;
    case 10:
      v18 = *MEMORY[0x277D85DE8];

      result = MEMORY[0x2821C3D48]();
      break;
    case 11:
      v6 = *MEMORY[0x277D85DE8];

      result = MEMORY[0x2821C3DB8]();
      break;
    case 12:
      v8 = *MEMORY[0x277D85DE8];

      result = MEMORY[0x2821C3DA8]();
      break;
    default:
      v15 = SNLPOSLoggerForCategory(3);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 67109120;
        HIDWORD(__p[0]) = IntValueFromCFStringRef;
        _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_DEFAULT, "Warning: parsed month number not in [1, 12]: %u. Returning nullptr.", __p, 8u);
      }

LABEL_37:
      v16 = *MEMORY[0x277D85DE8];
      result = 0;
      break;
  }

  return result;
}

unint64_t applesauce::CF::convert_to<std::string,0>(_BYTE *a1, const __CFString *a2)
{
  if (!a2 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
  if (CStringPtr)
  {
    v6 = CStringPtr;
    result = strlen(CStringPtr);
    if (result <= 0x7FFFFFFFFFFFFFF7)
    {
      v8 = result;
      if (result >= 0x17)
      {
        operator new();
      }

      a1[23] = result;
      if (result)
      {
        result = memmove(a1, v6, result);
      }

      a1[v8] = 0;
      return result;
    }

LABEL_22:
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  Length = CFStringGetLength(a2);
  maxBufLen = 0;
  v14.location = 0;
  v14.length = Length;
  CFStringGetBytes(a2, v14, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  v10 = maxBufLen;
  if (maxBufLen > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_22;
  }

  if (maxBufLen >= 0x17)
  {
    operator new();
  }

  a1[23] = maxBufLen;
  if (v10)
  {
    bzero(a1, v10);
  }

  a1[v10] = 0;
  if (a1[23] >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  v15.location = 0;
  v15.length = Length;
  return CFStringGetBytes(a2, v15, 0x8000100u, 0, 0, v11, maxBufLen, &maxBufLen);
}

void sub_222933140(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL uaap::DateSpanHandler::isDateSpanWithUnit(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 128);
    return v1 && *(v1 + 48);
  }

  return result;
}

siri::ontology::UsoGraph *uaap::DateSpanHandler::resolveDateWithMonthOfYear(siri::ontology::oname::graph::ontology_init *a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  EntityNode = 0;
  if (a1 && a2 && a3 && a4)
  {
    siri::ontology::oname::graph::ontology_init::common_Date(a1);
    EntityNode = siri::ontology::UsoGraph::createEntityNode();
    if (uaap::DateSpanHandler::resolveDateSpanMonthOfYear(a1, a2, EntityNode, v7))
    {
      siri::ontology::UsoGraphNode::setSuccessor();
    }

    else
    {
      return 0;
    }
  }

  return EntityNode;
}

siri::ontology::oname::graph::ontology_init *uaap::DateSpanHandler::resolveDateSpanGraph(siri::ontology::oname::graph::ontology_init *this, __CFString *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    length = a2[2].length;
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::DateSpanHandler::resolveDateSpan(v4, a2, length, v6);
  }

  return this;
}

siri::ontology::oname::graph::ontology_init *uaap::DateSpanHandler::resolveRecurringDateSpanGraph(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDDateSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    v5 = *(a2 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::DateSpanHandler::resolveRecurringDateSpan(v4, a2, v5, v6);
  }

  return this;
}

void *snlp::ssu::parse::SSUParseBuilder::SSUParseBuilder(void *result, uint64_t *a2)
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

uint64_t snlp::ssu::app::SSUAppExamplesPositiveIterable::SSUAppExamplesPositiveIterable(uint64_t result, void *a2)
{
  *result = *a2;
  v2 = a2[1];
  *(result + 8) = v2;
  v3 = *a2;
  *(result + 16) = *a2;
  if (v3 == v2)
  {
    v4 = 0;
    *(result + 24) = 0;
  }

  else
  {
    *(result + 24) = *(v3 + 48);
    v4 = 1;
  }

  *(result + 32) = v4;
  return result;
}

{
  *result = *a2;
  v2 = a2[1];
  *(result + 8) = v2;
  v3 = *a2;
  *(result + 16) = *a2;
  if (v3 == v2)
  {
    v4 = 0;
    *(result + 24) = 0;
  }

  else
  {
    *(result + 24) = *(v3 + 48);
    v4 = 1;
  }

  *(result + 32) = v4;
  return result;
}

uint64_t snlp::ssu::app::SSUAppExamplesPositiveIterable::getNext@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 8);
  v2 = *(this + 16);
  v4 = *(this + 32);
  while (1)
  {
    while (1)
    {
      v5 = v2 == v3;
      if ((v4 & 1) == 0)
      {
        if (v2 == v3)
        {
          v4 = 0;
          v5 = 1;
          goto LABEL_18;
        }

        v10 = v2 + 72;
        *(this + 16) = v2 + 72;
        if (v2 + 72 == v3)
        {
          goto LABEL_19;
        }

        v11 = *(v2 + 120);
        v8 = 1;
        *(this + 32) = 1;
        goto LABEL_15;
      }

      v6 = *(v2 + 56);
      v7 = *(this + 24);
      v8 = v7 == v6;
      if (v7 != v6 || v2 == v3)
      {
        break;
      }

      v10 = v2 + 72;
      *(this + 16) = v2 + 72;
      if (v2 + 72 == v3)
      {
        goto LABEL_19;
      }

      v11 = *(v2 + 120);
LABEL_15:
      v2 = v10;
      v5 = 0;
      *(this + 24) = v11;
      v4 = 1;
      if (v8)
      {
        goto LABEL_18;
      }
    }

    if (v7 != v6)
    {
      break;
    }

    v4 = 1;
LABEL_18:
    if (v5)
    {
LABEL_19:
      v12 = 0;
      *a2 = 0;
      goto LABEL_20;
    }
  }

  *(this + 24) = v7 + 24;
  *a2 = 0x8E38E38E38E38E39 * ((v2 - *this) >> 3);
  *(a2 + 8) = v2;
  *(a2 + 16) = v7;
  v12 = 1;
LABEL_20:
  *(a2 + 24) = v12;
  return this;
}

uint64_t snlp::common::espresso_inference::e5ml::selflogging::convertAssetAcquisitionType(_DWORD *a1)
{
  if (*a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (*a1 == 2);
  }
}

uint64_t snlp::common::espresso_inference::e5ml::selflogging::convertErrorCode(unsigned int *a1)
{
  if (*a1 - 1 >= 7)
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

void sub_222934274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  std::unique_ptr<siri::ontology::UsoUtteranceAlignment>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<siri::ontology::UsoUtteranceAlignment>::~unique_ptr[abi:ne200100](&a27);

  _Unwind_Resume(a1);
}

void siri::ontology::UsoUtteranceAlignment::UsoUtteranceAlignment(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_2229344A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::unique_ptr<siri::ontology::UsoUtteranceSpan>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<siri::ontology::UsoUtteranceAlignment>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 8);
    std::vector<std::unique_ptr<siri::ontology::UsoUtteranceSpan>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x223DC4D00](v2, 0x1020C40E72D6CFBLL);
  }

  return a1;
}

void std::vector<std::unique_ptr<siri::ontology::UsoUtteranceSpan>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          MEMORY[0x223DC4D00](v6, 0x1000C405AAC83ABLL);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_222935054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  v27 = *(v25 - 104);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::reference_wrapper<siri::ontology::UsoGraphNode>,std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_222935500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a25);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

void sub_22293579C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char **uaap::DateHandler::handle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = DDResultHasType();
  if (result)
  {

    return uaap::DateHandler::mapDateToItemizedUsos(a3);
  }

  return result;
}

char **uaap::DateHandler::mapDateToItemizedUsos(uint64_t a1)
{
  v2 = CFHash(@"Date");
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>>::find<unsigned long>(*a1, *(a1 + 8), v2);
  if (result)
  {
    v4 = result;
    v5 = CFHash(@"DateTime");
    result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>>::find<unsigned long>(*a1, *(a1 + 8), v5);
    v6 = v4[3];
    if (v4[4] != v6)
    {
      v7 = result;
      v8 = 0;
      do
      {
        result = *&v6[8 * v8];
        if (result)
        {
          v9 = **result;
          if (result)
          {
            v10 = result;
            if (!v7)
            {
              result = uaap::DateSpanHandler::isRecurringDate(result);
              if (result)
              {
                operator new();
              }
            }

            if (v10[15])
            {
              operator new();
            }

            if (v10[13])
            {
              operator new();
            }

            if (v10[12])
            {
              operator new();
            }

            if (v10[14])
            {
              operator new();
            }

            if (v10[6])
            {
              operator new();
            }
          }
        }

        ++v8;
        v6 = v4[3];
      }

      while (v8 < (v4[4] - v6) >> 3);
    }
  }

  return result;
}

uint64_t uaap::DateHandler::resolveRecurringDateSpan(siri::ontology::oname::graph::ontology_init *a1, uaap::UPDDDateOffsetSpan *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v6 = *(a3 + 24);
          siri::ontology::oname::graph::ontology_init::Root(a1);
          v7 = siri::ontology::operator!=();
          if ((v7 & 1) == 0)
          {
            siri::ontology::oname::graph::ontology_init::common_RecurringDateTime(v7);
            EntityNode = siri::ontology::UsoGraph::createEntityNode();
            siri::ontology::oname::graph::ontology_init::common_DateTime(EntityNode);
            v9 = siri::ontology::UsoGraph::createEntityNode();
            v10 = siri::ontology::oname::graph::ontology_init::Argument_date(v9);
            if (uaap::DateHandler::resolveDate(a1, a2, v9, v10, v11))
            {
              uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, a1, v12);
            }
          }
        }
      }
    }
  }

  return 0;
}

siri::ontology::UsoGraph *uaap::DateHandler::resolveDateOffset(uint64_t a1, uaap::UPDDDateOffsetSpan *a2, siri::ontology::UsoGraph *a3, uint64_t a4)
{
  result = 0;
  if (a1 && a2 && a3 && a4)
  {
    v8 = CFEqual(*(a1 + 8), @"Date");
    if (v8 && *(a1 + 120) && ((v9 = *(a3 + 3), siri::ontology::oname::graph::ontology_init::Root(v8), v10 = siri::ontology::operator!=(), !v10) || (v11 = *(a3 + 3), siri::ontology::oname::graph::ontology_init::common_DateTime(v10), v10 = siri::ontology::operator!=(), (v10 & 1) == 0)))
    {
      v12 = *(a1 + 120);
      v13 = *(a3 + 3);
      siri::ontology::oname::graph::ontology_init::common_DateTime(v10);
      v14 = siri::ontology::operator==();
      if ((v14 & 1) == 0)
      {
        siri::ontology::oname::graph::ontology_init::common_DateTime(v14);
        EntityNode = siri::ontology::UsoGraph::createEntityNode();
        uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, v12, v17);
      }

      v18 = uaap::DateHandler::resolveOffsetDirection(v12, a2, a3, v15);
      v19 = siri::ontology::oname::graph::ontology_init::Argument_offsetValue(v18);
      uaap::DateHandler::resolveOffsetDurationValueAndUnit(v12, a2, a3, v19);
      uaap::resolveOffsetReference(a1, a2, a3, v20);
      return a3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

siri::ontology::oname::graph::ontology_init *uaap::DateHandler::resolveDateDurationGraphFromDateOffset(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDDateSpan *a2, siri::ontology::UsoGraph *a3)
{
  v3 = *(this + 15);
  if (v3)
  {
    v5 = *(a2 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::DateHandler::resolveOffsetDurationValueAndUnit(v3, a2, v5, v6);
  }

  return this;
}

uaap::DateHandler *uaap::DateHandler::resolveRelativeDayOfWeekGraph(uaap::DateHandler *this, uaap::UPDDDateSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    v5 = *(a2 + 11);
    v6 = *(this + 13);
    v7 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);
    v9 = uaap::DateHandler::resolveRelativeDayOfWeek(v6, a2, v5, v7);

    return uaap::DateHandler::updateDayOfWeekWithListValIfExists(v4, a2, v9, v8, v10);
  }

  return this;
}

siri::ontology::oname::graph::ontology_init *uaap::DateHandler::resolveRelativeDayGraph(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    v5 = *(a2 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::DateHandler::resolveRelativeDay(v4, a2, v5, v6);
  }

  return this;
}

siri::ontology::oname::graph::ontology_init *uaap::DateHandler::resolveAbsoluteDateGraph(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDAbsoluteDateSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    v5 = *(a2 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::DateHandler::resolveAbsoluteDate(v4, a2, v5, v6);
  }

  return this;
}

uint64_t uaap::DateHandler::resolveDateTimeRangeWithQualifier(siri::ontology::oname::graph::ontology_init *a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2 && a3 && a4 && *(a1 + 6) && (*(a1 + 16) || *(a1 + 12) || *(a1 + 13) || *(a1 + 14)))
  {
    v6 = *(a3 + 24);
    siri::ontology::oname::graph::ontology_init::Root(a1);
    v7 = siri::ontology::operator!=();
    if ((v7 & 1) == 0)
    {
      siri::ontology::oname::graph::ontology_init::common_DateTimeRange(v7);
      EntityNode = siri::ontology::UsoGraph::createEntityNode();
      v9 = *(a1 + 6);
      v10 = siri::ontology::oname::graph::ontology_init::Argument_qualifier(EntityNode);
      v11 = uaap::TimeHandler::resolveDateTimeRangeQualifierValue(v9, a2, EntityNode, v10);
      if (v11)
      {
        siri::ontology::oname::graph::ontology_init::common_DateTime(v11);
        v12 = siri::ontology::UsoGraph::createEntityNode();
        v13 = v12;
        v14 = *(a1 + 16);
        if (v14)
        {
          v15 = siri::ontology::oname::graph::ontology_init::Argument_date(v12);
          v12 = uaap::DateHandler::resolveSpecialDatePeriodUnit(v14, a2, v13, v15);
          if (v12)
          {
            v16 = 1;
          }

          else
          {
            v17 = siri::ontology::oname::graph::ontology_init::Argument_date(0);
            v12 = uaap::DateSpanHandler::resolveDateWithMonthOfYear(a1, a2, v13, v17);
            v16 = v12 != 0;
          }
        }

        else
        {
          v16 = 0;
        }

        v18 = *(a1 + 12);
        if (v18)
        {
          v19 = siri::ontology::oname::graph::ontology_init::Argument_date(v12);
          v12 = uaap::DateHandler::resolveRelativeDay(v18, a2, v13, v19);
          if (v12)
          {
            v16 = 1;
          }
        }

        v20 = *(a1 + 13);
        if (v20)
        {
          v21 = siri::ontology::oname::graph::ontology_init::Argument_date(v12);
          v12 = uaap::DateHandler::resolveRelativeDayOfWeek(v20, a2, v13, v21);
          if (v12)
          {
            v16 = 1;
          }
        }

        v22 = *(a1 + 14);
        if (v22)
        {
          v23 = siri::ontology::oname::graph::ontology_init::Argument_date(v12);
          v12 = uaap::DateHandler::resolveAbsoluteDate(v22, a2, v13, v23);
          if (v12 != 0 || v16)
          {
            goto LABEL_25;
          }
        }

        else if (v16)
        {
LABEL_25:
          siri::ontology::oname::graph::ontology_init::Argument_at(v12);
          siri::ontology::UsoGraphNode::setSuccessor();
          siri::ontology::UsoGraphNode::setSuccessor();
          uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, a1, v24);
        }
      }
    }
  }

  return 0;
}

uint64_t uaap::DateHandler::resolveSpecialDatePeriodUnit(siri::ontology::oname::graph::ontology_init *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (*(a1 + 6))
          {
            v5 = *(a3 + 24);
            siri::ontology::oname::graph::ontology_init::common_DateTime(a1);
            if ((siri::ontology::operator!=() & 1) == 0)
            {
              v6 = CFEqual(*(*(a1 + 6) + 24), @"day");
              if (v6)
              {
                siri::ontology::oname::graph::ontology_init::common_Date(v6);
                EntityNode = siri::ontology::UsoGraph::createEntityNode();
                siri::ontology::oname::graph::ontology_init::common_Integer(EntityNode);
                v8 = siri::ontology::UsoGraph::createEntityNode();
                siri::ontology::oname::graph::ontology_init::Argument_dayOfMonth(v8);
              }

              else
              {
                v9 = CFEqual(*(*(a1 + 6) + 24), @"week");
                if (v9)
                {
                  siri::ontology::oname::graph::ontology_init::common_Date(v9);
                  v10 = siri::ontology::UsoGraph::createEntityNode();
                  siri::ontology::oname::graph::ontology_init::common_Integer(v10);
                  v8 = siri::ontology::UsoGraph::createEntityNode();
                  siri::ontology::oname::graph::ontology_init::Argument_weekOfYear(v8);
                }

                else
                {
                  v11 = CFEqual(*(*(a1 + 6) + 24), @"month");
                  if (v11)
                  {
                    siri::ontology::oname::graph::ontology_init::common_Date(v11);
                    v12 = siri::ontology::UsoGraph::createEntityNode();
                    siri::ontology::oname::graph::ontology_init::common_MonthOfYear(v12);
                    v8 = siri::ontology::UsoGraph::createEntityNode();
                    siri::ontology::oname::graph::ontology_init::Argument_monthOfYear(v8);
                  }

                  else
                  {
                    v13 = CFEqual(*(*(a1 + 6) + 24), @"year");
                    if (!v13)
                    {
                      return 0;
                    }

                    siri::ontology::oname::graph::ontology_init::common_Date(v13);
                    v14 = siri::ontology::UsoGraph::createEntityNode();
                    siri::ontology::oname::graph::ontology_init::common_Integer(v14);
                    v8 = siri::ontology::UsoGraph::createEntityNode();
                    siri::ontology::oname::graph::ontology_init::Argument_year(v8);
                  }
                }
              }

              siri::ontology::UsoGraphNode::setSuccessor();
              uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v8, a1, v15);
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t uaap::DateHandler::resolveRelativeDay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (CFEqual(*(a1 + 8), @"RelativeDay"))
          {
            RelativeDayDefinedValue = uaap::getRelativeDayDefinedValue(*(a1 + 24), v5);
            if (RelativeDayDefinedValue)
            {
              siri::ontology::oname::graph::ontology_init::common_Date(RelativeDayDefinedValue);
              EntityNode = siri::ontology::UsoGraph::createEntityNode();
              uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, a1, v8);
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t uaap::DateHandler::resolveRelativeDayOfWeek(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2 && a3 && a4 && (CFEqual(*(a1 + 8), @"DayOfWeek") || CFEqual(*(a1 + 8), @"DayOfNextWeek") || CFEqual(*(a1 + 8), @"DayOfThisWeek")))
  {
    DayOfWeekDefinedValue = uaap::getDayOfWeekDefinedValue(*(a1 + 24), v5);
    if (DayOfWeekDefinedValue)
    {
      siri::ontology::oname::graph::ontology_init::common_Date(DayOfWeekDefinedValue);
      EntityNode = siri::ontology::UsoGraph::createEntityNode();
      uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, a1, v8);
    }
  }

  return 0;
}

uaap::AbstractDateTimeHandler *uaap::DateHandler::resolveAbsoluteDate(uint64_t a1, uint64_t a2, uaap::AbstractDateTimeHandler *a3, uint64_t a4)
{
  EntityNode = 0;
  if (a1 && a2 && a3 && a4)
  {
    if (!*(a1 + 24) || !*(a1 + 56) && !*(a1 + 64) && !*(a1 + 72) && !*(a1 + 80))
    {
      return 0;
    }

    v7 = *(a3 + 3);
    siri::ontology::oname::graph::ontology_init::Root(a1);
    v8 = siri::ontology::operator!=();
    if (!v8 || (v9 = *(a3 + 3), siri::ontology::oname::graph::ontology_init::common_DateTime(v8), v8 = siri::ontology::operator!=(), !v8) || (v10 = *(a3 + 3), siri::ontology::oname::graph::ontology_init::common_Date(v8), v8 = siri::ontology::operator!=(), (v8 & 1) == 0))
    {
      v11 = *(a3 + 3);
      siri::ontology::oname::graph::ontology_init::common_Date(v8);
      MonthOfYearDefinedValue = siri::ontology::operator!=();
      if (MonthOfYearDefinedValue)
      {
        siri::ontology::oname::graph::ontology_init::common_Date(MonthOfYearDefinedValue);
        EntityNode = siri::ontology::UsoGraph::createEntityNode();
        MonthOfYearDefinedValue = siri::ontology::UsoGraphNode::setSuccessor();
      }

      else
      {
        EntityNode = a3;
      }

      v15 = *(a1 + 56);
      if (v15 && *(v15 + 24))
      {
        uaap::toUTF8String(*(a1 + 24), v13);
      }

      v16 = *(a1 + 64);
      if (v16 && *(v16 + 24))
      {
        siri::ontology::oname::graph::ontology_init::common_Integer(MonthOfYearDefinedValue);
        v17 = siri::ontology::UsoGraph::createEntityNode();
        siri::ontology::oname::graph::ontology_init::Argument_dayOfMonth(v17);
        siri::ontology::UsoGraphNode::setSuccessor();
        uaap::UPDDSpan::extractIntValueFromCFStringRef(*(*(a1 + 64) + 24), v18);
        IntNode = siri::ontology::UsoGraph::createIntNode();
        siri::ontology::oname::graph::ontology_init::Argument_integerValue(IntNode);
        siri::ontology::UsoGraphNode::setSuccessor();
        uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(IntNode, *(a1 + 64), v20);
      }

      v21 = *(a1 + 72);
      if (v21)
      {
        MonthOfYearDefinedValue = *(v21 + 24);
        if (MonthOfYearDefinedValue)
        {
          MonthOfYearDefinedValue = uaap::DateSpanHandler::getMonthOfYearDefinedValue(MonthOfYearDefinedValue, v13);
          if (MonthOfYearDefinedValue)
          {
            siri::ontology::oname::graph::ontology_init::common_MonthOfYear(MonthOfYearDefinedValue);
            v22 = siri::ontology::UsoGraph::createEntityNode();
            siri::ontology::oname::graph::ontology_init::Argument_monthOfYear(v22);
            siri::ontology::UsoGraphNode::setSuccessor();
            uaap::DateSpanHandler::getMonthOfYearDefinedValue(*(*(a1 + 72) + 24), v23);
            v24 = siri::ontology::UsoGraph::createEntityNode();
            siri::ontology::oname::graph::ontology_init::Argument_definedValue(v24);
            siri::ontology::UsoGraphNode::setSuccessor();
            uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v24, *(a1 + 72), v25);
          }
        }
      }

      v26 = *(a1 + 80);
      if (v26 && *(v26 + 24))
      {
        siri::ontology::oname::graph::ontology_init::common_Integer(MonthOfYearDefinedValue);
        v27 = siri::ontology::UsoGraph::createEntityNode();
        siri::ontology::oname::graph::ontology_init::Argument_year(v27);
        siri::ontology::UsoGraphNode::setSuccessor();
        uaap::UPDDSpan::extractIntValueFromCFStringRef(*(*(a1 + 80) + 24), v28);
        v29 = siri::ontology::UsoGraph::createIntNode();
        siri::ontology::oname::graph::ontology_init::Argument_integerValue(v29);
        siri::ontology::UsoGraphNode::setSuccessor();
        uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v29, *(a1 + 80), v30);
      }

      v31 = *(a1 + 88);
      if (v31)
      {
        v32 = *(v31 + 24);
        if (v32)
        {
          DayOfWeekDefinedValue = uaap::getDayOfWeekDefinedValue(v32, v13);
          if (DayOfWeekDefinedValue)
          {
            siri::ontology::oname::graph::ontology_init::common_DayOfWeek(DayOfWeekDefinedValue);
            v34 = siri::ontology::UsoGraph::createEntityNode();
            siri::ontology::oname::graph::ontology_init::Argument_dayOfWeek(v34);
            siri::ontology::UsoGraphNode::setSuccessor();
            v35 = siri::ontology::UsoGraph::createEntityNode();
            siri::ontology::oname::graph::ontology_init::Argument_definedValue(v35);
            siri::ontology::UsoGraphNode::setSuccessor();
            uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v34, *(a1 + 88), v36);
          }
        }
      }

      if (*(EntityNode + 7) == *(EntityNode + 8))
      {
        uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, a1, v14);
      }
    }

    else
    {
      return 0;
    }
  }

  return EntityNode;
}

void sub_2229371A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a31 == 1 && a30 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t uaap::getDayOfWeekDefinedValue(const __CFString *this, const __CFString *a2)
{
  if (!this)
  {
    return 0;
  }

  IntValue = CFStringGetIntValue(this);
  if (IntValue <= 2)
  {
    if (IntValue)
    {
      if (IntValue == 1)
      {

        return MEMORY[0x2821C3C28]();
      }

      else
      {
        if (IntValue != 2)
        {
          return 0;
        }

        return MEMORY[0x2821C3C58]();
      }
    }

    else
    {

      return MEMORY[0x2821C3C30]();
    }
  }

  else
  {
    if (IntValue <= 4)
    {
      if (IntValue == 3)
      {

        return MEMORY[0x2821C3D10]();
      }

      else
      {

        return MEMORY[0x2821C3CB8]();
      }
    }

    if (IntValue != 5)
    {
      if (IntValue == 6)
      {

        return MEMORY[0x2821C3CB0]();
      }

      return 0;
    }

    return MEMORY[0x2821C3C20]();
  }
}

uint64_t uaap::getRelativeDayDefinedValue(const __CFString *this, const __CFString *a2)
{
  if (!this)
  {
    return 0;
  }

  IntValue = CFStringGetIntValue(this);
  if (IntValue < 0)
  {
    if (IntValue == -2)
    {

      return MEMORY[0x2821C3E68]();
    }

    else
    {
      if (IntValue != -1)
      {
        return 0;
      }

      return MEMORY[0x2821C3BA0]();
    }
  }

  else if (IntValue)
  {
    if (IntValue != 1)
    {
      if (IntValue == 2)
      {

        return MEMORY[0x2821C3DF0]();
      }

      return 0;
    }

    return MEMORY[0x2821C3B48]();
  }

  else
  {

    return MEMORY[0x2821C3A28]();
  }
}

const void *uaap::DateHandler::updateDayOfWeekWithListValIfExists(uaap::DateHandler *this, uaap::UPDDDateSpan *a2, siri::ontology::UsoGraph *a3, siri::ontology::UsoEntityNode *a4, siri::ontology::UsoEntityNode *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  result = uaap::TimeHandler::resolveDateTimeQualifierListValue(this, a2, a4, a4);
  if (a3 && result)
  {
    v8 = *(a3 + 7);
    v9 = *(a3 + 8);
    while (v9 != v8)
    {
      v11 = *--v9;
      v10 = v11;
      *v9 = 0;
      if (v11)
      {
        __p[0] = (v10 + 8);
        std::vector<std::unique_ptr<siri::ontology::UsoUtteranceSpan>>::__destroy_vector::operator()[abi:ne200100](__p);
        MEMORY[0x223DC4D00](v10, 0x1020C40E72D6CFBLL);
      }
    }

    *(a3 + 8) = v8;
    v12 = *(this + 13);
    v15[0] = *(this + 6);
    v15[1] = v12;
    memset(__p, 0, sizeof(__p));
    std::vector<uaap::UPDDSpan *>::__init_with_size[abi:ne200100]<uaap::UPDDSpan * const*,uaap::UPDDSpan * const*>(__p, v15, &v16, 2uLL);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_222937490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t uaap::DateHandler::resolveOffsetDurationValueAndUnit(uint64_t a1, uaap *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v7 = *(a3 + 24);
          siri::ontology::oname::graph::ontology_init::common_DateTime(a1);
          v8 = siri::ontology::operator!=();
          if (!v8 || (v11 = *(a3 + 24), siri::ontology::oname::graph::ontology_init::common_OffsetDateTime(v8), v8 = siri::ontology::operator!=(), !v8) || (v12 = *(a3 + 24), siri::ontology::oname::graph::ontology_init::Root(v8), v8 = siri::ontology::operator!=(), (v8 & 1) == 0))
          {
            v13 = *(a1 + 80);
            if (v13)
            {
              v8 = uaap::addSpecialDateUnit(a2, v13, v9);
              v15 = v8;
              if (v8)
              {
                uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v8, a1, v14);
              }
            }

            else
            {
              v15 = 0;
            }

            v16 = *(a1 + 56);
            if (v16 && *(v16 + 3))
            {
              v8 = uaap::addOccurrenceCount(a2, v16, *(a1 + 72), *(a1 + 64), v10);
              v17 = v8;
            }

            else
            {
              v17 = 0;
            }

            if (v15 | v17)
            {
              siri::ontology::oname::graph::ontology_init::common_Duration(v8);
              EntityNode = siri::ontology::UsoGraph::createEntityNode();
              uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, a1, v19);
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t uaap::addSpecialDateUnit(uaap *this, CFTypeRef *a2, const uaap::UPDDSpan *a3)
{
  v4 = CFEqual(a2[3], @"day");
  if (v4)
  {
    siri::ontology::oname::graph::ontology_init::common_TimeUnit_Day(v4);
  }

  else
  {
    v5 = CFEqual(a2[3], @"week");
    if (v5)
    {
      siri::ontology::oname::graph::ontology_init::common_TimeUnit_Week(v5);
    }

    else
    {
      v6 = CFEqual(a2[3], @"month");
      if (v6)
      {
        siri::ontology::oname::graph::ontology_init::common_TimeUnit_Month(v6);
      }

      else
      {
        v7 = CFEqual(a2[3], @"year");
        if (v7)
        {
          siri::ontology::oname::graph::ontology_init::common_TimeUnit_Year(v7);
        }

        else
        {
          v8 = CFEqual(a2[3], @"season");
          if (v8)
          {
            siri::ontology::oname::graph::ontology_init::common_TimeUnit_SeasonOfYear(v8);
          }

          else
          {
            v9 = CFEqual(a2[3], @"quarter");
            if (!v9)
            {
              return 0;
            }

            siri::ontology::oname::graph::ontology_init::common_TimeUnit_QuarterOfYear(v9);
          }
        }
      }
    }
  }

  return siri::ontology::UsoGraph::createEntityNode();
}

uint64_t uaap::addOccurrenceCount(uaap *this, siri::ontology::UsoGraph *a2, uaap::UPDDSpan *a3, uaap::UPDDSpan *a4, uaap::UPDDSpan *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = *(a2 + 3);
    if (v6)
    {
      if (uaap::UPDDSpan::extractIntValueFromCFStringRef(*(a2 + 3), a2) || CFEqual(@"0", v6))
      {
        IntNode = siri::ontology::UsoGraph::createIntNode();
        siri::ontology::oname::graph::ontology_init::common_Integer(IntNode);
        EntityNode = siri::ontology::UsoGraph::createEntityNode();
        siri::ontology::oname::graph::ontology_init::Argument_integerValue(EntityNode);
        siri::ontology::UsoGraphNode::setSuccessor();
        v13 = IntNode;
        goto LABEL_6;
      }

      if (a3 && (v14 = *(a3 + 3)) != 0)
      {
        IntValueFromCFStringRef = uaap::UPDDSpan::extractIntValueFromCFStringRef(v14, v9);
        if (!IntValueFromCFStringRef)
        {
          IntValueFromCFStringRef = CFEqual(@"0", v14);
          if (!IntValueFromCFStringRef)
          {
            v18 = SNLPOSLoggerForCategory(6);
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            *buf = 134217984;
            *&buf[4] = CFStringGetDoubleValue(v14);
            v20 = "Unsupported denominator in occurrence count with value: %.4f";
            goto LABEL_18;
          }
        }

        if (!a4 || !*(a4 + 3))
        {
          siri::ontology::oname::graph::ontology_init::common_MixedFraction(IntValueFromCFStringRef);
          siri::ontology::UsoGraph::createEntityNode();
          v23 = siri::ontology::UsoGraph::createIntNode();
          siri::ontology::oname::graph::ontology_init::Argument_numeratorValue(v23);
          siri::ontology::UsoGraphNode::setSuccessor();
          v26 = siri::ontology::UsoGraph::createIntNode();
          siri::ontology::oname::graph::ontology_init::Argument_denominatorValue(v26);
          siri::ontology::UsoGraphNode::setSuccessor();
          v13 = v26;
LABEL_6:
          uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v13, a2, v12);
        }

        str = *(a4 + 3);
        *buf = &str;
        v17 = uaap::addOccurrenceCount(siri::ontology::UsoGraph *,uaap::UPDDSpan *,uaap::UPDDSpan *,uaap::UPDDSpan *)::$_2::operator()(buf, v16);
        if (HIDWORD(v17))
        {
          siri::ontology::oname::graph::ontology_init::common_MixedFraction(v17);
          siri::ontology::UsoGraph::createEntityNode();
          v24 = siri::ontology::UsoGraph::createIntNode();
          siri::ontology::oname::graph::ontology_init::Argument_numeratorValue(v24);
          siri::ontology::UsoGraphNode::setSuccessor();
          uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v24, a2, v25);
        }

        v18 = SNLPOSLoggerForCategory(6);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          DoubleValue = CFStringGetDoubleValue(str);
          *buf = 134217984;
          *&buf[4] = DoubleValue;
          v20 = "Unsupported numerator in occurrence count with value: %.4f";
LABEL_18:
          _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
        }
      }

      else
      {
        v18 = SNLPOSLoggerForCategory(6);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = CFStringGetDoubleValue(v6);
          v20 = "Unsupported occurrence count with value: %.4f";
          goto LABEL_18;
        }
      }
    }
  }

LABEL_19:
  v21 = *MEMORY[0x277D85DE8];
  return 0;
}

siri::ontology::oname::graph::ontology_init *uaap::DateHandler::addUnitAndOccurance(uaap::DateHandler *this, siri::ontology::UsoEntityNode *a2, siri::ontology::UsoEntityNode *a3, siri::ontology::UsoGraph *a4, siri::ontology::UsoEntityNode *a5, uaap::UPDDSpan *a6)
{
  siri::ontology::oname::graph::ontology_init::common_DurationComponent(this);
  EntityNode = siri::ontology::UsoGraph::createEntityNode();
  siri::ontology::oname::graph::ontology_init::Argument_components(EntityNode);
  result = siri::ontology::UsoGraphNode::setSuccessor();
  if (a4)
  {
    siri::ontology::oname::graph::ontology_init::common_TimeUnit(result);
    v11 = siri::ontology::UsoGraph::createEntityNode();
    siri::ontology::oname::graph::ontology_init::Argument_unit(v11);
    v12 = siri::ontology::UsoGraphNode::setSuccessor();
    siri::ontology::oname::graph::ontology_init::Argument_definedValue(v12);
    siri::ontology::UsoGraphNode::setSuccessor();
    uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(a4, a5, v13);
  }

  if (a2)
  {
    siri::ontology::oname::graph::ontology_init::Argument_value(result);

    return siri::ontology::UsoGraphNode::setSuccessor();
  }

  return result;
}

uint64_t uaap::addOccurrenceCount(siri::ontology::UsoGraph *,uaap::UPDDSpan *,uaap::UPDDSpan *,uaap::UPDDSpan *)::$_2::operator()(const __CFString ***a1, const __CFString *a2)
{
  IntValueFromCFStringRef = uaap::UPDDSpan::extractIntValueFromCFStringRef(**a1, a2);
  if (IntValueFromCFStringRef || CFEqual(@"0", **a1))
  {
    v4 = IntValueFromCFStringRef & 0xFFFFFF00;
    v5 = IntValueFromCFStringRef;
    v6 = 0x100000000;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v4 = 0;
  }

  return v6 | v5 | v4;
}

uint64_t uaap::DateHandler::resolveOffsetDirection(uint64_t this, uaap::UPDDDateOffsetSpan *a2, siri::ontology::UsoGraph *a3, siri::ontology::UsoEntityNode *a4)
{
  if (this)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = this;
        v6 = *(a3 + 3);
        siri::ontology::oname::graph::ontology_init::common_DateTime(this);
        this = siri::ontology::operator!=();
        if (!this || (v7 = *(a3 + 3), siri::ontology::oname::graph::ontology_init::common_OffsetDateTime(this), this = siri::ontology::operator!=(), (this & 1) == 0))
        {
          v8 = *(v5 + 48);
          if (v8)
          {
            v9 = *(v8 + 24);
            if (v9)
            {
              v10 = CFEqual(*(v8 + 24), @"before");
              if (v10)
              {
                siri::ontology::oname::graph::ontology_init::common_OffsetDirection_Before(v10);
                goto LABEL_12;
              }

              this = CFEqual(v9, @"after");
              if (this)
              {
                siri::ontology::oname::graph::ontology_init::common_OffsetDirection_After(this);
LABEL_12:
                EntityNode = siri::ontology::UsoGraph::createEntityNode();
                siri::ontology::oname::graph::ontology_init::common_OffsetDirection(EntityNode);
                v12 = siri::ontology::UsoGraph::createEntityNode();
                siri::ontology::oname::graph::ontology_init::Argument_direction(v12);
                v13 = siri::ontology::UsoGraphNode::setSuccessor();
                siri::ontology::oname::graph::ontology_init::Argument_definedValue(v13);
                siri::ontology::UsoGraphNode::setSuccessor();
                v15 = *(v5 + 48);

                uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, v15, v14);
              }
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t uaap::resolveOffsetReference(uint64_t this, uaap::UPDDDateSpan *a2, siri::ontology::UsoGraph *a3, siri::ontology::UsoEntityNode *a4)
{
  if (this)
  {
    if (a2)
    {
      if (a3)
      {
        v6 = this;
        v7 = *(a3 + 3);
        siri::ontology::oname::graph::ontology_init::common_DateTime(this);
        this = siri::ontology::operator!=();
        if (!this || (v8 = *(a3 + 3), siri::ontology::oname::graph::ontology_init::common_OffsetDateTime(this), this = siri::ontology::operator!=(), (this & 1) == 0))
        {
          v9 = *(v6 + 112);
          if (v9)
          {
            if (*(v9 + 24))
            {
              siri::ontology::oname::graph::ontology_init::common_DateTime(this);
              EntityNode = siri::ontology::UsoGraph::createEntityNode();
              siri::ontology::oname::graph::ontology_init::Argument_offsetReference(EntityNode);
              v11 = siri::ontology::UsoGraphNode::setSuccessor();
              v12 = *(v6 + 112);
              v13 = siri::ontology::oname::graph::ontology_init::Argument_date(v11);

              return uaap::DateHandler::resolveAbsoluteDate(v12, a2, EntityNode, v13);
            }
          }
        }
      }
    }
  }

  return this;
}

siri::ontology::UsoGraph *uaap::DateHandler::resolveDate(uaap::DateHandler *a1, uaap::UPDDDateOffsetSpan *a2, siri::ontology::UsoGraph *a3, uint64_t a4, siri::ontology::UsoEntityNode *a5)
{
  v5 = 0;
  if (a1 && a2 && a3 && a4)
  {
    v10 = *(a1 + 12);
    if (v10)
    {
      v5 = uaap::DateHandler::resolveRelativeDay(v10, a2, a3, a4);
    }

    else
    {
      v5 = 0;
    }

    if (*(a1 + 15))
    {
      v5 = uaap::DateHandler::resolveDateOffset(a1, a2, a3, a4);
    }

    v11 = *(a1 + 13);
    if (v11)
    {
      v5 = uaap::DateHandler::resolveRelativeDayOfWeek(v11, a2, a3, a4);
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(a1 + 14);
    if (v14)
    {
      v5 = uaap::DateHandler::resolveAbsoluteDate(v14, a2, a3, a4);
    }

    uaap::DateHandler::updateDayOfWeekWithListValIfExists(a1, a2, v5, v13, a5);
  }

  return v5;
}

uint64_t uaap::DateHandler::getSpecialDateUnitDefinedValue(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 128);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    return 0;
  }

  if (CFEqual(*(v3 + 24), @"weekend"))
  {

    return MEMORY[0x2821C3DE8]();
  }

  if (CFEqual(v4, @"weekday"))
  {

    return MEMORY[0x2821C3E28]();
  }

  if (CFEqual(v4, @"spring"))
  {

    return MEMORY[0x2821C3D70]();
  }

  if (CFEqual(v4, @"summer"))
  {

    return MEMORY[0x2821C3D78]();
  }

  if (CFEqual(v4, @"autumn"))
  {

    return MEMORY[0x2821C3D68]();
  }

  if (CFEqual(v4, @"winter"))
  {

    return MEMORY[0x2821C3D80]();
  }

  if ((uaap::DateSpanHandler::isRecurringDate(a1) & 1) != 0 || !CFEqual(v4, @"day"))
  {
    return 0;
  }

  return MEMORY[0x2821C3DD0]();
}

uint64_t uaap::DateHandler::resolveDateTimeRangeValue(uaap::DateHandler *this, uaap::UPDDDateSpan *a2, siri::ontology::UsoGraph *a3, siri::ontology::UsoEntityNode *a4)
{
  if (a2)
  {
    if (this)
    {
      if (a3)
      {
        v6 = *(this + 16);
        if (v6)
        {
          v7 = *(v6 + 48);
          if (v7)
          {
            if (*(v7 + 24))
            {
              v8 = *(a3 + 3);
              siri::ontology::oname::graph::ontology_init::common_Date(this);
              v9 = siri::ontology::operator!=();
              if (!v9 || (v10 = *(a3 + 3), siri::ontology::oname::graph::ontology_init::common_DateTime(v9), (siri::ontology::operator!=() & 1) == 0))
              {
                if (uaap::DateHandler::getSpecialDateUnitDefinedValue(this))
                {
                  EntityNode = siri::ontology::UsoGraph::createEntityNode();
                  siri::ontology::oname::graph::ontology_init::common_DateTimeRange(EntityNode);
                  v12 = siri::ontology::UsoGraph::createEntityNode();
                  siri::ontology::oname::graph::ontology_init::Argument_occurringIn(v12);
                  v13 = siri::ontology::UsoGraphNode::setSuccessor();
                  siri::ontology::oname::graph::ontology_init::Argument_definedValue(v13);
                  siri::ontology::UsoGraphNode::setSuccessor();
                  uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, *(this + 16), v14);
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

siri::ontology::oname::graph::ontology_init *uaap::DateHandler::resolveDurationValueAndUnitGraph(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDDateSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    v5 = *(a2 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::DateHandler::resolveDurationValueAndUnit(v4, a2, v5, v6);
  }

  return this;
}

uint64_t uaap::DateHandler::resolveDurationValueAndUnit(siri::ontology::oname::graph::ontology_init *a1, uaap *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v4 = *(a1 + 16);
          if (v4)
          {
            v8 = *(a3 + 24);
            siri::ontology::oname::graph::ontology_init::common_RecurringDateTime(a1);
            v9 = siri::ontology::operator!=();
            if (!v9 || (v12 = *(a3 + 24), siri::ontology::oname::graph::ontology_init::Root(v9), v9 = siri::ontology::operator!=(), (v9 & 1) == 0))
            {
              v13 = *(v4 + 48);
              if (v13)
              {
                v9 = uaap::addSpecialDateUnit(a2, v13, v10);
                v14 = v9;
              }

              else
              {
                v14 = 0;
              }

              v15 = *(v4 + 64);
              if (v15 && *(v15 + 3))
              {
                v9 = uaap::addOccurrenceCount(a2, v15, *(v4 + 80), *(v4 + 72), v11);
                v16 = v9;
              }

              else
              {
                v16 = 0;
              }

              if (v14 | v16)
              {
                siri::ontology::oname::graph::ontology_init::common_Duration(v9);
                EntityNode = siri::ontology::UsoGraph::createEntityNode();
                uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, a1, v18);
              }
            }

            return 0;
          }
        }
      }
    }
  }

  return v4;
}

siri::ontology::oname::graph::ontology_init *uaap::DateHandler::resolveAbsoluteDateWithSpecialPeriod(siri::ontology::oname::graph::ontology_init *a1, uint64_t a2, uaap::AbstractDateTimeHandler *a3, uint64_t a4)
{
  v4 = 0;
  if (a1 && a2 && a3 && a4)
  {
    if ((*(a1 + 7) || *(a1 + 8) || *(a1 + 9) || *(a1 + 10) || *(a1 + 16)) && (v9 = *(a3 + 3), siri::ontology::oname::graph::ontology_init::Root(a1), (siri::ontology::operator!=() & 1) == 0))
    {
      v10 = uaap::DateHandler::resolveAbsoluteDate(a1, a2, a3, a4);
      v4 = v10;
      if (v10)
      {
        v11 = *(a1 + 16);
        if (v11)
        {
          v12 = *(v11 + 56);
          if (v12)
          {
            if (*(v12 + 24))
            {
              siri::ontology::oname::graph::ontology_init::Argument_monthOfYear(v10);
              v13 = *(v4 + 1);
              siri::ontology::UsoGraph::getSuccessors();
              if (v20)
              {
                operator delete(v20);
              }

              MonthOfYearDefinedValue = uaap::DateSpanHandler::getMonthOfYearDefinedValue(*(*(*(a1 + 16) + 56) + 24), v14);
              if (v21 == v20 && MonthOfYearDefinedValue)
              {
                siri::ontology::oname::graph::ontology_init::common_MonthOfYear(MonthOfYearDefinedValue);
                EntityNode = siri::ontology::UsoGraph::createEntityNode();
                siri::ontology::oname::graph::ontology_init::Argument_monthOfYear(EntityNode);
                siri::ontology::UsoGraphNode::setSuccessor();
                v17 = siri::ontology::UsoGraph::createEntityNode();
                siri::ontology::oname::graph::ontology_init::Argument_definedValue(v17);
                siri::ontology::UsoGraphNode::setSuccessor();
                uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v17, *(*(a1 + 16) + 56), v18);
              }
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

siri::ontology::oname::graph::ontology_init *uaap::DateHandler::resolveDateOffsetGraph(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDDateSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    v5 = *(a2 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::DateHandler::resolveDateOffset(v4, a2, v5, v6);
  }

  return this;
}

siri::ontology::oname::graph::ontology_init *uaap::DateHandler::resolveAbsoluteDateWithSpecialDatePeriodGraph(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDDateSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    v5 = *(a2 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::DateHandler::resolveAbsoluteDateWithSpecialPeriod(v4, a2, v5, v6);
  }

  return this;
}

siri::ontology::oname::graph::ontology_init *uaap::DateHandler::resolveRecurringDateSpanGraph(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDDateSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    v5 = *(a2 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::DateHandler::resolveRecurringDateSpan(v4, a2, v5, v6);
  }

  return this;
}

siri::ontology::oname::graph::ontology_init *uaap::DateHandler::resolveDateTimeRangeWithQualifierGraph(siri::ontology::oname::graph::ontology_init *this, const __CFString *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    length = a2[2].length;
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::DateHandler::resolveDateTimeRangeWithQualifier(v4, a2, length, v6);
  }

  return this;
}

void std::vector<sirinluinternal::MatchingSpan>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<sirinluinternal::MatchingSpan>>(a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

void itfm_inference_orchestrator::inference_engine::ITFMModelBuilder::~ITFMModelBuilder(void **this)
{
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::~__hash_table((this + 3));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__shared_ptr_emplace<itfm_inference_orchestrator::vocabulary::Vocabulary>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2835E4368;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DC4D00);
}

void itfm_inference_orchestrator::orchestration::ITFMOrchestrator::ITFMOrchestrator(uint64_t a1, uint64_t a2, std::string *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  LOBYTE(v11) = 0;
  v12 = 0;
  LOBYTE(__p) = 0;
  v10 = 0;
  itfm_inference_orchestrator::orchestration::ITFMOrchestrator::ITFMOrchestrator(a1, a2, a3, a4, &v11, a5, a6, a7, a8, a9, &__p);
}

{
  LOBYTE(v11) = 0;
  v12 = 0;
  LOBYTE(__p) = 0;
  v10 = 0;
  itfm_inference_orchestrator::orchestration::ITFMOrchestrator::ITFMOrchestrator(a1, a2, a3, a4, &v11, a5, a6, a7, a8, a9, &__p);
}

void sub_222938770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 - 24) == 1 && *(v19 - 25) < 0)
  {
    operator delete(*(v19 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_222938850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 - 24) == 1 && *(v19 - 25) < 0)
  {
    operator delete(*(v19 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_22293899C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_222938AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_222938C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::getPersonMatchingSpans(std::vector<sirinluinternal::MatchingSpan> const&)::$_0 &,sirinluinternal::MatchingSpan*,false>(uint64_t result, sirinluinternal *a2, sirinluinternal::MatchingSpan *a3, char a4)
{
  v5 = a3;
  v6 = result;
LABEL_2:
  v7 = a2;
  v8 = (a2 - 88);
  v9 = v6;
  while (1)
  {
    v6 = v9;
    v10 = v7 - v9;
    v11 = 0x2E8BA2E8BA2E8BA3 * ((v7 - v9) >> 3);
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      v7 = a2;
      if (v11 == 2)
      {
        if (*(a2 - 4) - *(a2 - 3) <= (*(v6 + 18) - *(v6 + 19)))
        {
          return result;
        }

LABEL_112:
        v75 = v6;
LABEL_113:
        v76 = (a2 - 88);
        return sirinluinternal::swap(v75, v76, a3);
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::getPersonMatchingSpans(std::vector<sirinluinternal::MatchingSpan> const&)::$_0 &,sirinluinternal::MatchingSpan*,0>(v6, (v6 + 88), (v6 + 176), v8);
    }

    if (v11 == 5)
    {
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::getPersonMatchingSpans(std::vector<sirinluinternal::MatchingSpan> const&)::$_0 &,sirinluinternal::MatchingSpan*,0>(v6, (v6 + 88), (v6 + 176), (v6 + 264));
      if (*(v7 - 4) - *(v7 - 3) <= (*(v6 + 84) - *(v6 + 85)))
      {
        return result;
      }

      result = sirinluinternal::swap((v6 + 264), v8, v69);
      if (*(v6 + 84) - *(v6 + 85) <= (*(v6 + 62) - *(v6 + 63)))
      {
        return result;
      }

      result = sirinluinternal::swap((v6 + 176), (v6 + 264), v70);
      if (*(v6 + 62) - *(v6 + 63) <= (*(v6 + 40) - *(v6 + 41)))
      {
        return result;
      }

      v71 = (v6 + 88);
      v72 = (v6 + 176);
      goto LABEL_169;
    }

LABEL_10:
    if (v10 <= 2111)
    {
      if (a4)
      {
        if (v6 != v7)
        {
          v77 = (v6 + 88);
          if ((v6 + 88) != a2)
          {
            v78 = 0;
            v79 = v6;
            do
            {
              v80 = *(v79 + 40);
              v81 = *(v79 + 41);
              v82 = *(v79 + 18);
              v83 = *(v79 + 19);
              v79 = v77;
              if (v80 - v81 > (v82 - v83))
              {
                MEMORY[0x223DC3150](v117, v77);
                v84 = v78;
                do
                {
                  sirinluinternal::MatchingSpan::operator=();
                  if (!v84)
                  {
                    break;
                  }

                  v85 = *(v6 + v84 - 16) - *(v6 + v84 - 12);
                  v84 -= 88;
                }

                while (v118 - v119 > v85);
                sirinluinternal::MatchingSpan::operator=();
                result = MEMORY[0x223DC3180](v117);
              }

              v77 = (v79 + 88);
              v78 += 88;
            }

            while ((v79 + 88) != a2);
          }
        }
      }

      else if (v6 != v7)
      {
        v112 = (v6 + 88);
        if ((v6 + 88) != a2)
        {
          do
          {
            v113 = v112;
            if (*(v6 + 40) - *(v6 + 41) > (*(v6 + 18) - *(v6 + 19)))
            {
              MEMORY[0x223DC3150](v117, v112);
              do
              {
                v114 = v6;
                sirinluinternal::MatchingSpan::operator=();
                v6 = (v6 - 88);
              }

              while (v118 - v119 > (*(v114 - 4) - *(v114 - 3)));
              sirinluinternal::MatchingSpan::operator=();
              result = MEMORY[0x223DC3180](v117);
            }

            v112 = v113 + 22;
            v6 = v113;
          }

          while (v113 + 22 != a2);
        }
      }

      return result;
    }

    if (!v5)
    {
      if (v6 != v7)
      {
        v86 = v12 >> 1;
        v87 = v12 >> 1;
        do
        {
          v88 = v87;
          if (v86 >= v87)
          {
            v89 = (2 * v87) | 1;
            v90 = (v6 + 88 * v89);
            if (2 * v87 + 2 < v11)
            {
              v91 = v90[18] - v90[19];
              v92 = v90[40] - v90[41];
              v93 = v91 > v92;
              v94 = v91 <= v92 ? 0 : 88;
              v90 = (v90 + v94);
              if (v93)
              {
                v89 = 2 * v87 + 2;
              }
            }

            if (v90[18] - v90[19] <= (*(v6 + 22 * v87 + 18) - *(v6 + 22 * v87 + 19)))
            {
              MEMORY[0x223DC3150](v117, v6 + 88 * v87);
              do
              {
                sirinluinternal::MatchingSpan::operator=();
                if (v86 < v89)
                {
                  break;
                }

                v95 = (2 * v89) | 1;
                v96 = (v6 + 88 * v95);
                if (2 * v89 + 2 < v11)
                {
                  v97 = v96[18] - v96[19];
                  v98 = v96[40] - v96[41];
                  v99 = v97 > v98;
                  v100 = v97 <= v98 ? 0 : 88;
                  v96 = (v96 + v100);
                  if (v99)
                  {
                    v95 = 2 * v89 + 2;
                  }
                }

                v89 = v95;
              }

              while (v96[18] - v96[19] <= (v118 - v119));
              sirinluinternal::MatchingSpan::operator=();
              MEMORY[0x223DC3180](v117);
            }
          }

          v87 = v88 - 1;
        }

        while (v88);
        v101 = 0x2E8BA2E8BA2E8BA3 * (v10 >> 3);
        do
        {
          MEMORY[0x223DC3150](v116, v6);
          v102 = 0;
          v103 = v6;
          do
          {
            v104 = (v103 + 88 * v102);
            v105 = (v104 + 22);
            if (2 * v102 + 2 >= v101)
            {
              v102 = (2 * v102) | 1;
            }

            else
            {
              v106 = v104[40] - v104[41];
              v107 = v104[62] - v104[63];
              v108 = (v104 + 44);
              if (v106 <= v107)
              {
                v102 = (2 * v102) | 1;
              }

              else
              {
                v105 = v108;
                v102 = 2 * v102 + 2;
              }
            }

            sirinluinternal::MatchingSpan::operator=();
            v103 = v105;
          }

          while (v102 <= ((v101 - 2) >> 1));
          v109 = v105 == (a2 - 88);
          a2 = (a2 - 88);
          if (v109)
          {
            sirinluinternal::MatchingSpan::operator=();
          }

          else
          {
            sirinluinternal::MatchingSpan::operator=();
            sirinluinternal::MatchingSpan::operator=();
            v110 = v105 - v6 + 88;
            if (v110 >= 89)
            {
              v111 = (0x2E8BA2E8BA2E8BA3 * (v110 >> 3) - 2) >> 1;
              if (*(v6 + 22 * v111 + 18) - *(v6 + 22 * v111 + 19) > (*(v105 + 18) - *(v105 + 19)))
              {
                MEMORY[0x223DC3150](v117, v105);
                do
                {
                  sirinluinternal::MatchingSpan::operator=();
                  if (!v111)
                  {
                    break;
                  }

                  v111 = (v111 - 1) >> 1;
                }

                while (*(v6 + 22 * v111 + 18) - *(v6 + 22 * v111 + 19) > (v118 - v119));
                sirinluinternal::MatchingSpan::operator=();
                MEMORY[0x223DC3180](v117);
              }
            }
          }

          result = MEMORY[0x223DC3180](v116);
          v93 = v101-- <= 2;
        }

        while (!v93);
      }

      return result;
    }

    v13 = v11 >> 1;
    v14 = (v6 + 88 * (v11 >> 1));
    v15 = *(v7 - 4) - *(v7 - 3);
    if (v10 >= 0x2C01)
    {
      v16 = *(v14 + 18) - *(v14 + 19);
      if (v16 <= *(v6 + 18) - *(v6 + 19))
      {
        if (v15 > v16)
        {
          sirinluinternal::swap(v14, v8, a3);
          if (*(v14 + 18) - *(v14 + 19) > (*(v6 + 18) - *(v6 + 19)))
          {
            v17 = v6;
            v18 = v14;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v17 = v6;
        if (v15 > v16)
        {
          goto LABEL_17;
        }

        sirinluinternal::swap(v6, v14, a3);
        if (*(v7 - 4) - *(v7 - 3) > (*(v14 + 18) - *(v14 + 19)))
        {
          v17 = v14;
LABEL_17:
          v18 = (a2 - 88);
LABEL_26:
          sirinluinternal::swap(v17, v18, a3);
        }
      }

      v22 = (v6 + 88 * v13);
      v23 = (v22 - 22);
      v24 = *(v22 - 4) - *(v22 - 3);
      v25 = *(v7 - 26) - *(v7 - 25);
      if (v24 <= *(v6 + 40) - *(v6 + 41))
      {
        if (v25 > v24)
        {
          sirinluinternal::swap(v23, (a2 - 176), a3);
          if (*(v23 + 18) - *(v23 + 19) > (*(v6 + 40) - *(v6 + 41)))
          {
            v26 = (v6 + 88);
            v27 = v23;
            goto LABEL_38;
          }
        }
      }

      else
      {
        v26 = (v6 + 88);
        if (v25 > v24)
        {
          goto LABEL_31;
        }

        sirinluinternal::swap(v26, v23, a3);
        if (*(v7 - 26) - *(v7 - 25) > (*(v23 + 18) - *(v23 + 19)))
        {
          v26 = v23;
LABEL_31:
          v27 = (a2 - 176);
LABEL_38:
          sirinluinternal::swap(v26, v27, a3);
        }
      }

      v28 = (v6 + 88 * v13);
      v29 = v28[40] - v28[41];
      v30 = *(v7 - 48) - *(v7 - 47);
      if (v29 <= *(v6 + 62) - *(v6 + 63))
      {
        if (v30 > v29)
        {
          sirinluinternal::swap((v28 + 22), (a2 - 264), a3);
          if (v28[40] - v28[41] > (*(v6 + 62) - *(v6 + 63)))
          {
            v31 = (v6 + 176);
            v32 = (v28 + 22);
            goto LABEL_47;
          }
        }
      }

      else
      {
        v31 = (v6 + 176);
        if (v30 > v29)
        {
          goto LABEL_43;
        }

        sirinluinternal::swap(v31, (v28 + 22), a3);
        if (*(v7 - 48) - *(v7 - 47) > (v28[40] - v28[41]))
        {
          v31 = (v28 + 22);
LABEL_43:
          v32 = (a2 - 264);
LABEL_47:
          sirinluinternal::swap(v31, v32, a3);
        }
      }

      v33 = *(v14 + 18) - *(v14 + 19);
      v34 = v28[40] - v28[41];
      if (v33 <= *(v23 + 18) - *(v23 + 19))
      {
        if (v34 > v33)
        {
          sirinluinternal::swap(v14, (v28 + 22), a3);
          if (*(v14 + 18) - *(v14 + 19) > (*(v23 + 18) - *(v23 + 19)))
          {
            v36 = v23;
            v35 = v14;
            goto LABEL_56;
          }
        }
      }

      else
      {
        if (v34 > v33)
        {
          v35 = (v28 + 22);
          v36 = v23;
          goto LABEL_56;
        }

        sirinluinternal::swap(v23, v14, a3);
        if (v28[40] - v28[41] > (*(v14 + 18) - *(v14 + 19)))
        {
          v35 = (v28 + 22);
          v36 = v14;
LABEL_56:
          sirinluinternal::swap(v36, v35, a3);
        }
      }

      v20 = v6;
      v21 = v14;
      goto LABEL_58;
    }

    v19 = *(v6 + 18) - *(v6 + 19);
    if (v19 <= *(v14 + 18) - *(v14 + 19))
    {
      if (v15 <= v19)
      {
        goto LABEL_59;
      }

      sirinluinternal::swap(v6, v8, a3);
      if (*(v6 + 18) - *(v6 + 19) <= (*(v14 + 18) - *(v14 + 19)))
      {
        goto LABEL_59;
      }

      v20 = v14;
      v21 = v6;
    }

    else
    {
      v20 = v14;
      if (v15 <= v19)
      {
        sirinluinternal::swap(v14, v6, a3);
        if (*(v7 - 4) - *(v7 - 3) <= (*(v6 + 18) - *(v6 + 19)))
        {
          goto LABEL_59;
        }

        v20 = v6;
      }

      v21 = (a2 - 88);
    }

LABEL_58:
    sirinluinternal::swap(v20, v21, a3);
LABEL_59:
    v5 = (v5 - 1);
    if ((a4 & 1) != 0 || *(v6 - 4) - *(v6 - 3) > (*(v6 + 18) - *(v6 + 19)))
    {
      MEMORY[0x223DC3150](v117, v6);
      v38 = v118 - v119;
      v39 = v6;
      do
      {
        v40 = v39;
        v39 = (v39 + 88);
      }

      while (*(v40 + 40) - *(v40 + 41) > v38);
      v41 = v7;
      if (v40 == v6)
      {
        v44 = a2;
        while (v39 < v44)
        {
          v42 = (v44 - 88);
          v45 = *(v44 - 4) - *(v44 - 3);
          v44 = (v44 - 88);
          if (v45 > v38)
          {
            goto LABEL_71;
          }
        }

        v42 = v44;
      }

      else
      {
        do
        {
          v42 = (v41 - 88);
          v43 = *(v41 - 4) - *(v41 - 3);
          v41 = (v41 - 88);
        }

        while (v43 <= v38);
      }

LABEL_71:
      if (v39 < v42)
      {
        v46 = v39;
        v47 = v42;
        do
        {
          sirinluinternal::swap(v46, v47, v37);
          v48 = v118 - v119;
          do
          {
            v40 = v46;
            v46 = (v46 + 88);
          }

          while (*(v40 + 40) - *(v40 + 41) > v48);
          do
          {
            v49 = *(v47 - 4);
            v50 = *(v47 - 3);
            v47 = (v47 - 88);
          }

          while (v49 - v50 <= v48);
        }

        while (v46 < v47);
      }

      if (v40 != v6)
      {
        sirinluinternal::MatchingSpan::operator=();
      }

      sirinluinternal::MatchingSpan::operator=();
      MEMORY[0x223DC3180](v117);
      v52 = v39 >= v42;
      v7 = a2;
      if (!v52)
      {
        goto LABEL_83;
      }

      v53 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::getPersonMatchingSpans(std::vector<sirinluinternal::MatchingSpan> const&)::$_0 &,sirinluinternal::MatchingSpan*>(v6, v40, v51);
      v9 = (v40 + 88);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::getPersonMatchingSpans(std::vector<sirinluinternal::MatchingSpan> const&)::$_0 &,sirinluinternal::MatchingSpan*>((v40 + 88), a2, v54);
      if (result)
      {
        a2 = v40;
        if (!v53)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v53)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::getPersonMatchingSpans(std::vector<sirinluinternal::MatchingSpan> const&)::$_0 &,sirinluinternal::MatchingSpan*,false>(v6, v40, v5, a4 & 1);
        a4 = 0;
        v9 = (v40 + 88);
      }
    }

    else
    {
      MEMORY[0x223DC3150](v117, v6);
      v56 = v118 - v119;
      if (v118 - v119 <= (*(v7 - 4) - *(v7 - 3)))
      {
        v59 = (v6 + 88);
        do
        {
          v9 = v59;
          if (v59 >= v7)
          {
            break;
          }

          v60 = *(v59 + 18) - *(v59 + 19);
          v59 = (v59 + 88);
        }

        while (v56 <= v60);
      }

      else
      {
        v57 = v6;
        do
        {
          v9 = (v57 + 88);
          v58 = *(v57 + 40) - *(v57 + 41);
          v57 = (v57 + 88);
        }

        while (v56 <= v58);
      }

      v61 = v7;
      if (v9 < v7)
      {
        v62 = v7;
        do
        {
          v61 = (v62 - 88);
          v63 = *(v62 - 4) - *(v62 - 3);
          v62 = (v62 - 88);
        }

        while (v56 > v63);
      }

      while (v9 < v61)
      {
        sirinluinternal::swap(v9, v61, v55);
        v64 = v118 - v119;
        do
        {
          v65 = *(v9 + 40);
          v66 = *(v9 + 41);
          v9 = (v9 + 88);
        }

        while (v64 <= v65 - v66);
        do
        {
          v67 = *(v61 - 4);
          v68 = *(v61 - 3);
          v61 = (v61 - 88);
        }

        while (v64 > v67 - v68);
      }

      if ((v9 - 88) != v6)
      {
        sirinluinternal::MatchingSpan::operator=();
      }

      sirinluinternal::MatchingSpan::operator=();
      result = MEMORY[0x223DC3180](v117);
      a4 = 0;
    }
  }

  v73 = *(v6 + 40) - *(v6 + 41);
  v74 = *(v7 - 4) - *(v7 - 3);
  if (v73 > *(v6 + 18) - *(v6 + 19))
  {
    if (v74 > v73)
    {
      goto LABEL_112;
    }

    result = sirinluinternal::swap(v6, (v6 + 88), a3);
    if (*(v7 - 4) - *(v7 - 3) > (*(v6 + 40) - *(v6 + 41)))
    {
      v75 = (v6 + 88);
      goto LABEL_113;
    }

    return result;
  }

  if (v74 <= v73)
  {
    return result;
  }

  v71 = (v6 + 88);
  v72 = (a2 - 88);
LABEL_169:
  result = sirinluinternal::swap(v71, v72, a3);
  if (*(v6 + 40) - *(v6 + 41) > (*(v6 + 18) - *(v6 + 19)))
  {
    v76 = (v6 + 88);
    v75 = v6;
    return sirinluinternal::swap(v75, v76, a3);
  }

  return result;
}

sirinluinternal *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::getPersonMatchingSpans(std::vector<sirinluinternal::MatchingSpan> const&)::$_0 &,sirinluinternal::MatchingSpan*,0>(sirinluinternal *this, sirinluinternal *a2, sirinluinternal::MatchingSpan *a3, sirinluinternal::MatchingSpan *a4)
{
  v7 = this;
  v8 = *(a2 + 18) - *(a2 + 19);
  v9 = *(a3 + 18) - *(a3 + 19);
  if (v8 <= *(this + 18) - *(this + 19))
  {
    if (v9 > v8)
    {
      this = sirinluinternal::swap(a2, a3, a3);
      if (*(a2 + 18) - *(a2 + 19) > (*(v7 + 18) - *(v7 + 19)))
      {
        this = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 > v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      this = sirinluinternal::swap(this, v10, a3);
      goto LABEL_10;
    }

    this = sirinluinternal::swap(this, a2, a3);
    if (*(a3 + 18) - *(a3 + 19) > (*(a2 + 18) - *(a2 + 19)))
    {
      this = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 18) - *(a4 + 19) > (*(a3 + 18) - *(a3 + 19)))
  {
    this = sirinluinternal::swap(a3, a4, a3);
    if (*(a3 + 18) - *(a3 + 19) > (*(a2 + 18) - *(a2 + 19)))
    {
      this = sirinluinternal::swap(a2, a3, v11);
      if (*(a2 + 18) - *(a2 + 19) > (*(v7 + 18) - *(v7 + 19)))
      {

        return sirinluinternal::swap(v7, a2, v12);
      }
    }
  }

  return this;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::getPersonMatchingSpans(std::vector<sirinluinternal::MatchingSpan> const&)::$_0 &,sirinluinternal::MatchingSpan*>(sirinluinternal *this, sirinluinternal *a2, sirinluinternal::MatchingSpan *a3)
{
  v4 = this;
  v5 = 0x2E8BA2E8BA2E8BA3 * ((a2 - this) >> 3);
  if (v5 <= 2)
  {
    if (v5 < 2)
    {
      return 1;
    }

    if (v5 == 2)
    {
      if (*(a2 - 4) - *(a2 - 3) > (*(this + 18) - *(this + 19)))
      {
        v6 = (a2 - 88);
LABEL_24:
        this = v4;
LABEL_31:
        sirinluinternal::swap(this, v6, a3);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v13 = (this + 176);
    v14 = *(this + 40) - *(this + 41);
    v15 = *(this + 62) - *(this + 63);
    if (v14 <= *(this + 18) - *(this + 19))
    {
      if (v15 <= v14 || (sirinluinternal::swap((this + 88), (this + 176), a3), *(v4 + 40) - *(v4 + 41) <= (*(v4 + 18) - *(v4 + 19))))
      {
LABEL_36:
        v17 = (v4 + 264);
        if ((v4 + 264) != a2)
        {
          v18 = 0;
          v19 = 0;
          while (1)
          {
            if (*(v17 + 18) - *(v17 + 19) > (*(v13 + 18) - *(v13 + 19)))
            {
              MEMORY[0x223DC3150](v24, v17);
              v20 = v18;
              do
              {
                sirinluinternal::MatchingSpan::operator=();
                if (v20 == -176)
                {
                  break;
                }

                v21 = *(v4 + v20 + 160) - *(v4 + v20 + 164);
                v20 -= 88;
              }

              while (v25 - v26 > v21);
              sirinluinternal::MatchingSpan::operator=();
              if (++v19 == 8)
              {
                v22 = (v17 + 88) == a2;
                MEMORY[0x223DC3180](v24);
                return v22;
              }

              MEMORY[0x223DC3180](v24);
            }

            v13 = v17;
            v18 += 88;
            v17 = (v17 + 88);
            if (v17 == a2)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v16 = (v4 + 88);
      this = v4;
    }

    else
    {
      if (v15 <= v14)
      {
        sirinluinternal::swap(this, (this + 88), a3);
        if (*(v4 + 62) - *(v4 + 63) <= (*(v4 + 40) - *(v4 + 41)))
        {
          goto LABEL_36;
        }

        this = (v4 + 88);
      }

      v16 = (v4 + 176);
    }

    sirinluinternal::swap(this, v16, a3);
    goto LABEL_36;
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::getPersonMatchingSpans(std::vector<sirinluinternal::MatchingSpan> const&)::$_0 &,sirinluinternal::MatchingSpan*,0>(this, (this + 88), (this + 176), (a2 - 88));
      return 1;
    }

    if (v5 != 5)
    {
      goto LABEL_16;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::getPersonMatchingSpans(std::vector<sirinluinternal::MatchingSpan> const&)::$_0 &,sirinluinternal::MatchingSpan*,0>(this, (this + 88), (this + 176), (this + 264));
    if (*(a2 - 4) - *(a2 - 3) <= (*(v4 + 84) - *(v4 + 85)))
    {
      return 1;
    }

    sirinluinternal::swap((v4 + 264), (a2 - 88), v7);
    if (*(v4 + 84) - *(v4 + 85) <= (*(v4 + 62) - *(v4 + 63)))
    {
      return 1;
    }

    sirinluinternal::swap((v4 + 176), (v4 + 264), v8);
    if (*(v4 + 62) - *(v4 + 63) <= (*(v4 + 40) - *(v4 + 41)))
    {
      return 1;
    }

    v9 = (v4 + 88);
    v10 = (v4 + 176);
    goto LABEL_22;
  }

  v11 = *(this + 40) - *(this + 41);
  v12 = *(a2 - 4) - *(a2 - 3);
  if (v11 > *(this + 18) - *(this + 19))
  {
    if (v12 <= v11)
    {
      sirinluinternal::swap(this, (this + 88), a3);
      if (*(a2 - 4) - *(a2 - 3) <= (*(v4 + 40) - *(v4 + 41)))
      {
        return 1;
      }

      this = (v4 + 88);
    }

    v6 = (a2 - 88);
    goto LABEL_31;
  }

  if (v12 > v11)
  {
    v9 = (this + 88);
    v10 = (a2 - 88);
LABEL_22:
    sirinluinternal::swap(v9, v10, a3);
    if (*(v4 + 40) - *(v4 + 41) > (*(v4 + 18) - *(v4 + 19)))
    {
      v6 = (v4 + 88);
      goto LABEL_24;
    }
  }

  return 1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 3;
    std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::isContactTypeMatchingSpan(nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit *this, const sirinluinternal::MatchingSpan *a2)
{
  v4 = (this + 32);
  v5 = *(this + 55);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = *(this + 4);
    v7 = *(this + 5);
  }

  else
  {
    v6 = this + 32;
    v7 = v5;
  }

  v8 = nlv4_inference_orchestrator::post_processing::tree_manipulations::utils::doesMatchingSpanHaveLabelAndMatcher(v6, v7, 2, a2);
  v9 = *(a2 + 6);
  if ((v5 & 0x80000000) == 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = *(this + 5);
  }

  v11 = *(v9 + 23);
  if (v11 >= 0)
  {
    v12 = *(v9 + 23);
  }

  else
  {
    v12 = v9[1];
  }

  if (v10 == v12 && ((v5 & 0x80000000) == 0 ? (v13 = v4) : (v13 = *v4), (v14 = *v9, v11 >= 0) ? (v15 = *(a2 + 6)) : (v15 = *v9), !memcmp(v13, v15, v10)))
  {
    v28 = *(a2 + 1);
    v29 = *(a2 + 2);
    if (v28 != v29)
    {
      while (*v28 != 3 && *v28 != 8)
      {
        if (++v28 == v29)
        {
          v28 = *(a2 + 2);
          break;
        }
      }
    }

    v16 = v29 != v28;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(this + 79);
  if (v17 < 0)
  {
    v18 = *(this + 7);
    v19 = *(this + 8);
  }

  else
  {
    v18 = this + 56;
    v19 = *(this + 79);
  }

  v20 = nlv4_inference_orchestrator::post_processing::tree_manipulations::utils::doesMatchingSpanHaveLabelAndMatcher(v18, v19, 2, a2);
  v21 = *(this + 8);
  if (v17 >= 0)
  {
    v21 = v17;
  }

  if (v21 == v12 && (v17 >= 0 ? (v22 = this + 56) : (v22 = *(this + 7)), (v23 = *v9, v11 >= 0) ? (v24 = v9) : (v24 = *v9), !memcmp(v22, v24, v12)))
  {
    v31 = *(a2 + 1);
    v32 = *(a2 + 2);
    if (v31 != v32)
    {
      while (*v31 != 3 && *v31 != 8)
      {
        if (++v31 == v32)
        {
          v31 = *(a2 + 2);
          break;
        }
      }
    }

    v25 = v32 != v31;
  }

  else
  {
    v25 = 0;
  }

  v26 = v20 | v25;
  if ((v8 | v16))
  {
    return 1;
  }

  else
  {
    return v26;
  }
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::getDescription(nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::__wrap_iter<nlv4_inference_orchestrator::trees::TreeNode const*>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::__wrap_iter<nlv4_inference_orchestrator::trees::TreeNode const*> *>>,false>(unint64_t result, unint64_t *a2, uint64_t a3, unint64_t *a4, uint64_t a5, char a6)
{
  while (1)
  {
    v10 = a2 - a4;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      v74 = *(a2 - 1);
      if (*a4 < v74)
      {
        *(a2 - 1) = *a4;
        *a4 = v74;
      }

      return result;
    }

LABEL_8:
    if (v10 <= 23)
    {
      if (a6)
      {
        if (a2 != a4)
        {
          v81 = a2 - 1;
          if (a2 - 1 != a4)
          {
            v82 = 0;
            v83 = a2 - 1;
            do
            {
              v85 = *--v83;
              v84 = v85;
              v86 = *v81;
              if (v85 < *v81)
              {
                v87 = v82;
                do
                {
                  v88 = v81;
                  *(v81 - 1) = v86;
                  if (!v87)
                  {
                    break;
                  }

                  ++v81;
                  v86 = v88[1];
                  v87 -= 8;
                }

                while (v86 > v84);
                *v88 = v84;
              }

              v82 += 8;
              v81 = v83;
            }

            while (v83 != a4);
          }
        }
      }

      else if (a2 != a4)
      {
        v118 = a2 - 1;
        if (a2 - 1 != a4)
        {
          v119 = a2 - 1;
          do
          {
            v120 = v118 + 1;
            v122 = *--v119;
            v121 = v122;
            if (v122 < *v118)
            {
              v123 = v118;
              do
              {
                *(v118 - 1) = *v123;
                v118 = v120++;
                v124 = v123[1];
                ++v123;
              }

              while (v124 > v121);
              *(v123 - 1) = v121;
            }

            v118 = v119;
          }

          while (v119 != a4);
        }
      }

      return result;
    }

    if (!a5)
    {
      if (a2 != a4)
      {
        v89 = (v10 - 2) >> 1;
        v90 = v89;
        do
        {
          v91 = v90;
          v92 = 8 * v90;
          if (v89 >= v92 >> 3)
          {
            v93 = v92 >> 2;
            v94 = (v92 >> 2) | 1;
            v95 = &a2[-v94];
            v96 = v93 + 2;
            if (v96 < v10 && *(v95 - 1) < *(v95 - 2))
            {
              --v95;
              v94 = v96;
            }

            v97 = &a2[-v91];
            v98 = *(v95 - 1);
            v99 = *(v97 - 1);
            if (v98 >= v99)
            {
              do
              {
                *(v97 - 1) = v98;
                v97 = v95;
                if (v89 < v94)
                {
                  break;
                }

                v100 = (2 * v94) | 1;
                v95 = &a2[-v100];
                v94 = 2 * v94 + 2;
                if (v94 >= v10)
                {
                  v94 = v100;
                }

                else
                {
                  result = *(v95 - 2);
                  if (*(v95 - 1) >= result)
                  {
                    v94 = v100;
                  }

                  else
                  {
                    --v95;
                  }
                }

                v98 = *(v95 - 1);
              }

              while (v98 >= v99);
              *(v97 - 1) = v99;
            }
          }

          v90 = v91 - 1;
        }

        while (v91);
        do
        {
          v101 = 0;
          v102 = *(a2 - 1);
          v103 = a2;
          do
          {
            v104 = &v103[~v101];
            v105 = (2 * v101) | 1;
            v106 = 2 * v101 + 2;
            if (v106 < v10 && *(v104 - 1) < *(v104 - 2))
            {
              --v104;
              v105 = v106;
            }

            *(v103 - 1) = *(v104 - 1);
            v103 = v104;
            v101 = v105;
          }

          while (v105 <= (v10 - 2) / 2);
          v107 = v104 - 1;
          if (a4 + 1 == v104)
          {
            *v107 = v102;
          }

          else
          {
            *v107 = *a4;
            *a4 = v102;
            v108 = a2 - v107;
            v109 = v108 < 2;
            v110 = v108 - 2;
            if (!v109)
            {
              v111 = v110 >> 1;
              v112 = &a2[-(v110 >> 1)];
              v113 = *(v112 - 1);
              v114 = *v107;
              if (v113 < *v107)
              {
                do
                {
                  *(v104 - 1) = v113;
                  v104 = v112;
                  if (!v111)
                  {
                    break;
                  }

                  v111 = (v111 - 1) >> 1;
                  v112 = &a2[-v111];
                  v113 = *(v112 - 1);
                }

                while (v113 < v114);
                *(v104 - 1) = v114;
              }
            }
          }

          ++a4;
          v109 = v10-- <= 2;
        }

        while (!v109);
      }

      return result;
    }

    v11 = ((a2 - a4) >> 1) & 0xFFFFFFFFFFFFFFF8;
    v12 = (a2 - v11);
    v13 = a2 - v11;
    v14 = *a4;
    if (v10 >= 0x81)
    {
      v15 = *(v13 - 1);
      v16 = *(a2 - 1);
      if (v15 >= v16)
      {
        if (v14 < v15)
        {
          *(v13 - 1) = v14;
          *a4 = v15;
          v19 = *(v13 - 1);
          v20 = *(a2 - 1);
          if (v19 < v20)
          {
            *(a2 - 1) = v19;
            *(v13 - 1) = v20;
          }
        }
      }

      else
      {
        if (v14 < v15)
        {
          *(a2 - 1) = v14;
          goto LABEL_25;
        }

        *(a2 - 1) = v15;
        *(v13 - 1) = v16;
        if (*a4 < v16)
        {
          *(v13 - 1) = *a4;
LABEL_25:
          *a4 = v16;
        }
      }

      v25 = *v12;
      v23 = v12 + 1;
      v24 = v25;
      v26 = *(a2 - 2);
      v27 = a4[1];
      if (v25 >= v26)
      {
        if (v27 < v24)
        {
          *(v23 - 1) = v27;
          a4[1] = v24;
          v28 = *(v23 - 1);
          v29 = *(a2 - 2);
          if (v28 < v29)
          {
            *(a2 - 2) = v28;
            *(v23 - 1) = v29;
          }
        }
      }

      else
      {
        if (v27 < v24)
        {
          *(a2 - 2) = v27;
          goto LABEL_37;
        }

        *(a2 - 2) = v24;
        *(v23 - 1) = v26;
        v30 = a4[1];
        if (v30 < v26)
        {
          *(v23 - 1) = v30;
LABEL_37:
          a4[1] = v26;
        }
      }

      v31 = a2 - v11 - 8;
      v32 = *(v31 - 1);
      v33 = *(a2 - 3);
      v34 = a4[2];
      if (v32 >= v33)
      {
        if (v34 < v32)
        {
          *(v31 - 1) = v34;
          a4[2] = v32;
          v35 = *(v31 - 1);
          v36 = *(a2 - 3);
          if (v35 < v36)
          {
            *(a2 - 3) = v35;
            *(v31 - 1) = v36;
          }
        }
      }

      else
      {
        if (v34 < v32)
        {
          *(a2 - 3) = v34;
          goto LABEL_46;
        }

        *(a2 - 3) = v32;
        *(v31 - 1) = v33;
        v37 = a4[2];
        if (v37 < v33)
        {
          *(v31 - 1) = v37;
LABEL_46:
          a4[2] = v33;
        }
      }

      v38 = *(v13 - 1);
      v39 = *(v23 - 1);
      v40 = *(v31 - 1);
      if (v38 >= v39)
      {
        if (v40 < v38)
        {
          *(v13 - 1) = v40;
          *(v31 - 1) = v38;
          v41 = *(v13 - 1);
          v42 = *(v23 - 1);
          if (v41 < v42)
          {
            *(v23 - 1) = v41;
            *(v13 - 1) = v42;
          }
        }
      }

      else
      {
        if (v40 < v38)
        {
          *(v23 - 1) = v40;
          goto LABEL_55;
        }

        *(v23 - 1) = v38;
        *(v13 - 1) = v39;
        v43 = *(v31 - 1);
        if (v43 < v39)
        {
          *(v13 - 1) = v43;
LABEL_55:
          *(v31 - 1) = v39;
        }
      }

      v44 = *(a2 - 1);
      *(a2 - 1) = *(v13 - 1);
      *(v13 - 1) = v44;
      goto LABEL_57;
    }

    v17 = *(a2 - 1);
    v18 = *(v13 - 1);
    if (v17 >= v18)
    {
      if (v14 < v17)
      {
        *(a2 - 1) = v14;
        *a4 = v17;
        v21 = *(a2 - 1);
        v22 = *(v13 - 1);
        if (v21 < v22)
        {
          *(v13 - 1) = v21;
          *(a2 - 1) = v22;
        }
      }

      goto LABEL_57;
    }

    if (v14 < v17)
    {
      *(v13 - 1) = v14;
LABEL_34:
      *a4 = v18;
      goto LABEL_57;
    }

    *(v13 - 1) = v17;
    *(a2 - 1) = v18;
    if (*a4 < v18)
    {
      *(a2 - 1) = *a4;
      goto LABEL_34;
    }

LABEL_57:
    --a5;
    if (a6)
    {
      v45 = *(a2 - 1);
LABEL_77:
      v55 = a2;
      v56 = result;
      v57 = a2;
      do
      {
        v58 = *(v57 - 2);
        --v57;
      }

      while (v58 < v45);
      v59 = v57 + 1;
      v60 = a4;
      if (v57 + 1 == a2)
      {
        v60 = a4;
        do
        {
          if (v60 >= v57)
          {
            break;
          }

          v61 = *v60++;
        }

        while (v61 >= v45);
      }

      else
      {
        do
        {
          v62 = *v60++;
        }

        while (v62 >= v45);
      }

      if (v60 < v57)
      {
        v63 = v57;
        v64 = v60;
        do
        {
          v65 = *(v63 - 8);
          *(v63 - 8) = *(v64 - 1);
          *(v64 - 1) = v65;
          do
          {
            v66 = *(v63 - 16);
            v63 -= 8;
          }

          while (v66 < v45);
          do
          {
            v67 = *v64++;
          }

          while (v67 >= v45);
        }

        while (v64 < v63);
        v59 = (v63 + 8);
      }

      if (v59 != a2)
      {
        *(a2 - 1) = *(v59 - 1);
      }

      *(v59 - 1) = v45;
      if (v60 >= v57)
      {
        v132 = result;
        v133 = result;
        v69 = a3;
        v70 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::__wrap_iter<nlv4_inference_orchestrator::trees::TreeNode const*> *>>>(result, a2, v59, v59);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::__wrap_iter<nlv4_inference_orchestrator::trees::TreeNode const*> *>>>((v59 - 1), v59 - 1, v69, a4))
        {
          a3 = v59;
          a4 = v59;
          result = v133;
          if (v70)
          {
            return result;
          }
        }

        else
        {
          result = v59;
          a2 = v59 - 1;
          a3 = v69;
          v56 = v132;
          if ((v70 & 1) == 0)
          {
            goto LABEL_95;
          }
        }
      }

      else
      {
LABEL_95:
        v68 = a3;
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::__wrap_iter<nlv4_inference_orchestrator::trees::TreeNode const*> *>>,false>(v56, v55, v59, v59, a5, a6 & 1);
        a3 = v68;
        a6 = 0;
        result = v59;
        a2 = v59 - 1;
      }
    }

    else
    {
      v45 = *(a2 - 1);
      if (*a2 < v45)
      {
        goto LABEL_77;
      }

      v46 = a2 - 1;
      if (*a4 <= v45)
      {
        do
        {
          v48 = v46;
          if (v46 <= a4)
          {
            break;
          }

          --v46;
        }

        while (*(v48 - 1) <= v45);
      }

      else
      {
        v47 = a2;
        do
        {
          v48 = v47 - 1;
          v49 = *(v47 - 2);
          --v47;
        }

        while (v49 <= v45);
      }

      v50 = a4;
      if (v48 > a4)
      {
        v50 = a4;
        do
        {
          v51 = *v50++;
        }

        while (v51 > v45);
      }

      while (v50 < v48)
      {
        v52 = *(v48 - 1);
        *(v48 - 1) = *(v50 - 1);
        *(v50 - 1) = v52;
        do
        {
          v53 = *(v48 - 2);
          --v48;
        }

        while (v53 <= v45);
        do
        {
          v54 = *v50++;
        }

        while (v54 > v45);
      }

      if (v48 + 1 != a2)
      {
        *(a2 - 1) = *v48;
      }

      a6 = 0;
      *v48 = v45;
      a2 = v48;
    }
  }

  if (v10 == 3)
  {
    v76 = *(a2 - 2);
    v75 = *(a2 - 1);
    v77 = *a4;
    if (v76 < v75)
    {
      if (v77 >= v76)
      {
        *(a2 - 2) = v75;
        *(a2 - 1) = v76;
        if (*a4 >= v75)
        {
          return result;
        }

        *(a2 - 2) = *a4;
      }

      else
      {
        *(a2 - 1) = v77;
      }

      *a4 = v75;
      return result;
    }

    if (v77 >= v76)
    {
      return result;
    }

    *(a2 - 2) = v77;
    *a4 = v76;
    v116 = *(a2 - 2);
LABEL_193:
    v131 = *(a2 - 1);
    if (v116 < v131)
    {
      *(a2 - 2) = v131;
      *(a2 - 1) = v116;
    }

    return result;
  }

  if (v10 == 4)
  {
    v78 = *(a2 - 2);
    v79 = *(a2 - 1);
    v80 = *(a2 - 3);
    if (v78 >= v79)
    {
      if (v80 >= v78)
      {
        v78 = *(a2 - 3);
      }

      else
      {
        *(a2 - 3) = v78;
        *(a2 - 2) = v80;
        v117 = *(a2 - 1);
        if (v80 < v117)
        {
          *(a2 - 2) = v117;
          *(a2 - 1) = v80;
          v78 = *(a2 - 3);
        }
      }
    }

    else
    {
      if (v80 >= v78)
      {
        *(a2 - 2) = v79;
        *(a2 - 1) = v78;
        v78 = *(a2 - 3);
        if (v78 >= v79)
        {
          goto LABEL_189;
        }

        *(a2 - 2) = v78;
      }

      else
      {
        *(a2 - 1) = v80;
      }

      *(a2 - 3) = v79;
      v78 = v79;
    }

LABEL_189:
    if (*a4 >= v78)
    {
      return result;
    }

    *(a2 - 3) = *a4;
    *a4 = v78;
    v116 = *(a2 - 3);
LABEL_191:
    v130 = *(a2 - 2);
    if (v116 >= v130)
    {
      return result;
    }

    *(a2 - 3) = v130;
    *(a2 - 2) = v116;
    goto LABEL_193;
  }

  if (v10 != 5)
  {
    goto LABEL_8;
  }

  v71 = *(a2 - 2);
  v72 = *(a2 - 1);
  v73 = *(a2 - 3);
  if (v71 >= v72)
  {
    if (v73 >= v71)
    {
      v71 = *(a2 - 3);
    }

    else
    {
      *(a2 - 3) = v71;
      *(a2 - 2) = v73;
      v115 = *(a2 - 1);
      if (v73 < v115)
      {
        *(a2 - 2) = v115;
        *(a2 - 1) = v73;
        v71 = *(a2 - 3);
      }
    }
  }

  else
  {
    if (v73 < v71)
    {
      *(a2 - 1) = v73;
      goto LABEL_173;
    }

    *(a2 - 2) = v72;
    *(a2 - 1) = v71;
    v71 = *(a2 - 3);
    if (v71 < v72)
    {
      *(a2 - 2) = v71;
LABEL_173:
      *(a2 - 3) = v72;
      v71 = v72;
    }
  }

  v125 = *(a2 - 4);
  if (v125 < v71)
  {
    *(a2 - 4) = v71;
    *(a2 - 3) = v125;
    v126 = *(a2 - 2);
    if (v125 < v126)
    {
      *(a2 - 3) = v126;
      *(a2 - 2) = v125;
      v127 = *(a2 - 1);
      if (v125 < v127)
      {
        *(a2 - 2) = v127;
        *(a2 - 1) = v125;
      }
    }
  }

  v128 = *(a2 - 4);
  if (*a4 < v128)
  {
    *(a2 - 4) = *a4;
    *a4 = v128;
    v116 = *(a2 - 4);
    v129 = *(a2 - 3);
    if (v116 < v129)
    {
      *(a2 - 4) = v129;
      *(a2 - 3) = v116;
      goto LABEL_191;
    }
  }

  return result;
}