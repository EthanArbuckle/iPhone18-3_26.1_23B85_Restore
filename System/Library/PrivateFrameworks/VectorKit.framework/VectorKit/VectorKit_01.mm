void sub_1B276A468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::locale a19, std::locale a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::locale a36, unint64_t a37, void *__p)
{
  if (a37 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::__format::__parse_arg_id[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *result;
  if (v4 == 125 || (v5 = v4 - 58, v4 == 58))
  {
    v7 = *(a3 + 16);
    if (!v7)
    {
LABEL_14:
      *(a3 + 16) = 2;
      goto LABEL_15;
    }

    if (v7 != 1)
    {
LABEL_15:
      ++*(a3 + 24);
      return result;
    }

    result = std::__throw_format_error[abi:nn200100]("Using automatic argument numbering in manual argument numbering mode");
  }

  else if (v4 == 48)
  {
    v6 = *(a3 + 16);
    if (v6)
    {
      if (v6 == 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    return ++result;
  }

  if (v5 <= 0xFFFFFFF5)
  {
    v9 = std::__throw_format_error[abi:nn200100]("The argument index starts with an invalid character");
    return std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v9, v10, v11);
  }

  else
  {
    result = std::__format::__parse_number[abi:nn200100]<char const*>(result, a2);
    v8 = *(a3 + 16);
    if (v8)
    {
      if (v8 == 2)
      {
LABEL_13:
        result = std::__throw_format_error[abi:nn200100]("Using manual argument numbering in automatic argument numbering mode");
        goto LABEL_14;
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }
  }

  return result;
}

void *std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(void *result, char *__src, size_t a3)
{
  v4 = result;
  v5 = result[4];
  if (v5)
  {
    v7 = *v5;
    v6 = v5[1];
    if (*v5 - v6 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *v5 - v6;
    }

    v5[1] = v6 + a3;
    if (v7 <= v6 || v8 == 0)
    {
      return result;
    }
  }

  else
  {
    v8 = a3;
  }

  v10 = result[2];
  do
  {
    v11 = *(v4 + 8) - v10;
    if (v11 < v8 + 1)
    {
      result = (*(v4 + 24))(v4, v8 + 2);
      v10 = *(v4 + 16);
      v11 = *(v4 + 8) - v10;
    }

    if (v11 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      result = memmove((*v4 + v10), __src, v12);
      v10 = *(v4 + 16);
    }

    v10 += v12;
    *(v4 + 16) = v10;
    __src += v12;
    v13 = v8 > v11;
    v8 -= v12;
  }

  while (v13);
  return result;
}

void *std::__formatter::__write_string_no_precision[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a4 <= 0)
  {
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a3, __src, a2);
  }

  else
  {
    v10 = std::__format_spec::__estimate_column_width[abi:nn200100]<char,char const*>(__src, a2, HIDWORD(a4), 1);
    std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5, v10);
  }

  return a3;
}

void *std::__formatter::__write_string[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x80000000) != 0)
  {

    return std::__formatter::__write_string_no_precision[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5);
  }

  else
  {
    v9 = std::__format_spec::__estimate_column_width[abi:nn200100]<char,char const*>(__src, a2, a5 & 0x7FFFFFFF, 0);
    v11 = v10 - __src;

    return std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, v11, a3, a4, a5, v9);
  }
}

uint64_t ecs2::BasicRegistry<void>::create(uint64_t a1)
{
  v2 = *(a1 + 4112);
  v3 = *(a1 + 4128);
  if (*(a1 + 4104) == v2)
  {
    HIWORD(v8) = (*(a1 + 4136) - v3) >> 2;
    LOWORD(v8) = 1;
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(a1 + 4128, &v8);
    v4 = v8;
    v6 = *(a1 + 41024);
    if (v6 >= *(a1 + 41032))
    {
      v7 = std::vector<ecs2::EntityArchetype<512ul>>::__emplace_back_slow_path<>(a1 + 41016);
    }

    else
    {
      v6[2] = 0u;
      v6[3] = 0u;
      *v6 = 0u;
      v6[1] = 0u;
      v7 = (v6 + 4);
    }

    *(a1 + 41024) = v7;
  }

  else
  {
    v4 = *(v3 + 4 * *(v2 - 8));
    *(a1 + 4112) = v2 - 8;
  }

  return v4;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void ecs2::BasicRegistry<void>::add<ecs2::GraphHandle>(uint64_t a1, int a2, void *a3)
{
  v37 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::GraphHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::GraphHandle>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<ecs2::GraphHandle>(a1);
  v9 = ecs2::sparse_set<ecs2::Entity,64ul>::insert(v7, &v37) - *(v7 + 32);
  v10 = (v9 >> 2) >> 6;
  if ((v8 & 1) == 0)
  {
    *(*(*(v7 + 56) + 8 * v10) + 8 * (v9 >> 2)) = *a3;
    goto LABEL_35;
  }

  v12 = *(v7 + 56);
  v11 = *(v7 + 64);
  v13 = v11 - v12;
  if (v10 < (v11 - v12) >> 3)
  {
    *(*(v12 + 8 * v10) + 8 * (v9 >> 2)) = *a3;
LABEL_33:
    v32 = *(v7 + 152);
    for (i = *(v7 + 160); v32 != i; v32 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v32 + 24), a2);
    }

    goto LABEL_35;
  }

  v34 = v8;
  v14 = v10 + 1 - (v13 >> 3);
  v15 = *(v7 + 72);
  v35 = v11 - v12;
  v36 = v10 + 1;
  if (v14 > (v15 - v11) >> 3)
  {
    v16 = v15 - v12;
    v17 = (v15 - v12) >> 2;
    if (v17 <= v10 + 1)
    {
      v17 = v10 + 1;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    if (!(v18 >> 61))
    {
      operator new();
    }

    goto LABEL_36;
  }

  v19 = 0;
  v20 = (v14 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v21 = vdupq_n_s64(v20);
  do
  {
    v22 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(vdupq_n_s64(v19), xmmword_1B33B0560)));
    if (v22.i8[0])
    {
      *(v11 + 8 * v19) = 0;
    }

    if (v22.i8[4])
    {
      *(v11 + 8 * v19 + 8) = 0;
    }

    v19 += 2;
  }

  while (v20 - ((v14 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v19);
  *(v7 + 64) = v11 + 8 * v14;
  v23 = *(v7 + 80);
  v24 = *(v7 + 88);
  v25 = (v24 - v23) >> 4;
  if (v25 <= v10)
  {
    v26 = v36 - v25;
    v27 = *(v7 + 96);
    if (v26 > (v27 - v24) >> 4)
    {
      v28 = v27 - v23;
      v29 = v28 >> 3;
      if (v28 >> 3 <= v36)
      {
        v29 = v10 + 1;
      }

      if (v28 >= 0x7FFFFFFFFFFFFFF0)
      {
        v29 = 0xFFFFFFFFFFFFFFFLL;
      }

      if (!(v29 >> 60))
      {
        operator new();
      }

LABEL_36:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(*(v7 + 88), 16 * v26);
    *(v7 + 88) = v24 + 16 * v26;
    v13 = v35;
  }

  else if (v36 < v25)
  {
    *(v7 + 88) = v23 + 16 * v36;
  }

  v30 = *(v7 + 56);
  if (v13 < (*(v7 + 64) - v30))
  {
    operator new();
  }

  *(*(v30 + 8 * v10) + 8 * (v9 >> 2)) = *a3;
  if (v34)
  {
    goto LABEL_33;
  }

LABEL_35:
  v33 = *(a1 + 41016) + (HIWORD(a2) << 6);
  *(v33 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::GraphHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::GraphHandle>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::GraphHandle>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<ecs2::GraphHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::GraphHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<ecs2::GraphHandle>(void)::localId;
    *algn_1EB83B798 = 0x15E974F8019C956ALL;
    qword_1EB83B7A0 = "ecs2::GraphHandle]";
    qword_1EB83B7A8 = 17;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::ExecutionMetadata>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<ecs2::ExecutionMetadata>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::ExecutionMetadata>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<ecs2::ExecutionMetadata>(void)::localId;
    unk_1EB83B700 = 0x6106C25540188653;
    qword_1EB83B708 = "ecs2::ExecutionMetadata]";
    qword_1EB83B710 = 23;
  }
}

void geo::linear_set<geo::WrappedIntrusiveNode<gdc::tf::TaskData>,std::less<geo::WrappedIntrusiveNode<gdc::tf::TaskData>>,std::allocator<geo::WrappedIntrusiveNode<gdc::tf::TaskData>>,std::vector<geo::WrappedIntrusiveNode<gdc::tf::TaskData>>>::insert(void *a1, char *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4;
  if (*a1 == v4)
  {
    goto LABEL_8;
  }

  v7 = *a2;
  v6 = *a1;
  while (*v6 < v7)
  {
    v6 += 8;
    if (v6 == v4)
    {
      v6 = a1[1];
      goto LABEL_8;
    }
  }

  if (v6 == v4 || v7 != *v6)
  {
LABEL_8:
    v8 = a1[2];
    if (v4 >= v8)
    {
      v11 = ((v4 - v5) >> 3) + 1;
      if (v11 >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v12 = v6 - v5;
      v13 = v8 - v5;
      if (v13 >> 2 > v11)
      {
        v11 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v11;
      }

      v15 = v12 >> 3;
      if (v14)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v14);
      }

      v16 = (8 * v15);
      v17 = 8 * v15;
      if (!v15)
      {
        if (v12 < 1)
        {
          if (v6 == v5)
          {
            v20 = 1;
          }

          else
          {
            v20 = v12 >> 2;
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v20);
        }

        v16 = (v16 - (((v12 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
        v17 = v16;
      }

      *v16 = *a2;
      v21 = v17 + 8;
      memcpy((v17 + 8), v6, a1[1] - v6);
      v22 = *a1;
      v26 = (v21 + a1[1] - v6);
      a1[1] = v6;
      v23 = v6 - v22;
      v24 = v16 - (v6 - v22);
      memcpy(v24, v22, v23);
      v25 = *a1;
      *a1 = v24;
      *(a1 + 1) = v26;
      if (v25)
      {

        operator delete(v25);
      }
    }

    else if (v6 == v4)
    {
      *v4 = *a2;
      a1[1] = v4 + 8;
    }

    else
    {
      v9 = v6 + 8;
      if (v4 < 8)
      {
        v10 = a1[1];
      }

      else
      {
        *v4 = *(v4 - 1);
        v10 = v4 + 8;
      }

      a1[1] = v10;
      if (v4 != v9)
      {
        memmove(v6 + 8, v6, v4 - v9);
        v10 = a1[1];
      }

      v18 = v10 <= a2 || v6 > a2;
      v19 = 8;
      if (v18)
      {
        v19 = 0;
      }

      *v6 = *&a2[v19];
    }
  }
}

uint64_t ecs2::Flow::addTask(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, __int16 a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = gdc::tf::TaskflowBuilder::placeholder(*(a3 + 48));
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v19, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    *v19 = *(a2 + 40);
    *&v19[16] = *(a2 + 56);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 72));
  }

  *(v10 + 72) = *v19;
  *(v10 + 88) = *&v19[16];
  v11 = ecs2::BasicRegistry<void>::create(*(a3 + 8));
  v12 = *(a3 + 8);
  *v19 = v10;
  ecs2::BasicRegistry<void>::add<ecs2::TaskHandle>(v12, v11, v19);
  v13 = *(a3 + 8);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::__value_func[abi:nn200100](v19, a2 + 8);
  ecs2::BasicRegistry<void>::add<ecs2::FunctionHandle>(v13, v11, v19);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v19);
  v14 = *(a3 + 8);
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  ecs2::BasicRegistry<void>::add<ecs2::TaskDependencies>(v14, v11, v19);
  if (*&v19[24])
  {
    operator delete(*&v19[24]);
  }

  if (*v19)
  {
    operator delete(*v19);
  }

  *v19 = &unk_1F2A60E48;
  *&v19[8] = v11;
  *&v19[24] = v19;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,gdc::tf::TaskData::Static,gdc::tf::TaskData::StaticWithContext,gdc::tf::TaskData::StaticModule,gdc::tf::TaskData::DynamicModule,gdc::tf::TaskData::ModuleFactory>>::__assign_alt[abi:nn200100]<2ul,gdc::tf::TaskData::StaticWithContext,gdc::tf::TaskData::StaticWithContext>(v10, v10, v19);
  std::__function::__value_func<void ()(gdc::Context &)>::~__value_func[abi:nn200100](v19);
  v15 = *(a1 + 232);
  *v19 = a4;
  *&v19[2] = a5;
  *&v19[4] = *a2;
  memset(&v19[8], 0, 24);
  LOBYTE(v20) = 0;
  ecs2::BasicRegistry<void>::add<ecs2::TaskMetadata>(v15, v11, v19);
  if ((v19[31] & 0x80000000) != 0)
  {
    operator delete(*&v19[8]);
  }

  v16 = *(a1 + 232);
  *v19 = *a2;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v19[8], *(a2 + 40), *(a2 + 48));
  }

  else
  {
    *&v19[8] = *(a2 + 40);
    *&v19[24] = *(a2 + 56);
  }

  ecs2::BasicRegistry<void>::add<ecs2::TaskDescriptor>(v16, v11, v19);
  if ((v19[31] & 0x80000000) != 0)
  {
    operator delete(*&v19[8]);
  }

  v17 = *(a1 + 232);
  v19[0] = 0;
  ecs2::BasicRegistry<void>::add<ecs2::TaskState>(v17, v11, v19);
  return v11;
}

uint64_t gdc::tf::TaskflowBuilder::placeholder(gdc::tf::TaskflowBuilder *this)
{
  v2 = *(this + 3);
  v3 = (*(this + 1) - *this) >> 3;
  v4 = *(v2 + 40);
  if (!v4)
  {
    geo::Pool<geo::IntrusiveNode<gdc::tf::TaskData>>::allocateSlab(*(this + 3));
    v4 = *(v2 + 40);
  }

  *(v2 + 40) = *v4;
  *(v4 + 64) = 0;
  *(v4 + 95) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = v3;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  v6 = *(this + 1);
  v5 = *(this + 2);
  if (v6 >= v5)
  {
    v8 = *this;
    v9 = v6 - *this;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v5 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v13);
    }

    *(8 * v10) = v4;
    v7 = 8 * v10 + 8;
    memcpy(0, v8, v9);
    v14 = *this;
    *this = 0;
    *(this + 1) = v7;
    *(this + 2) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v6 = v4;
    v7 = (v6 + 1);
  }

  *(this + 1) = v7;
  v15 = *this;
  if (*this != v7)
  {
    while (*(*v15 + 96) != *(*(v7 - 8) + 96))
    {
      v15 += 8;
      if (v15 == v7)
      {
        v15 = v7;
        return *v15;
      }
    }
  }

  return *v15;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<Commit>,std::allocator<ecs2::ForwardToExecute<Commit>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A60EC0;
  a2[1] = *(result + 8);
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<ecs2::FunctionHandle>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::FunctionHandle>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::FunctionHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::FunctionHandle>(void)::metadata >= 0x200)
  {
    if (GEOGetGeoDisplayCoreDefaultLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoDisplayCoreDefaultLog::onceToken, &__block_literal_global_56374);
    }

    v3 = GEOGetGeoDisplayCoreDefaultLog::log;
    if (os_log_type_enabled(GEOGetGeoDisplayCoreDefaultLog::log, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t std::__function::__func<RuntimeTaskRunner,std::allocator<RuntimeTaskRunner>,void ()(gdc::Context &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A60E48;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<void ()(gdc::Context &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t ecs2::BasicRegistry<void>::storage<ecs2::TaskMetadata>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskMetadata>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskMetadata>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskMetadata>(void)::metadata >= 0x200)
  {
    if (GEOGetGeoDisplayCoreDefaultLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoDisplayCoreDefaultLog::onceToken, &__block_literal_global_56374);
    }

    v3 = GEOGetGeoDisplayCoreDefaultLog::log;
    if (os_log_type_enabled(GEOGetGeoDisplayCoreDefaultLog::log, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::BasicRegistry<void>::add<ecs2::TaskDescriptor>(uint64_t a1, int a2, uint64_t a3)
{
  v43 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskDescriptor>();
  v6 = &unk_1EB83B000;
  v7 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskDescriptor>(void)::metadata;
  v8 = ecs2::BasicRegistry<void>::storage<ecs2::TaskDescriptor>(a1);
  v9 = ecs2::sparse_set<ecs2::Entity,64ul>::insert(v8, &v43);
  v11 = v10;
  v12 = ((v9 - *(v8 + 32)) >> 2) & 0x3F;
  v13 = ((v9 - *(v8 + 32)) >> 2) >> 6;
  if (v10)
  {
    v15 = *(v8 + 56);
    v14 = *(v8 + 64);
    if (v13 >= (v14 - v15) >> 3)
    {
      v41 = ((v9 - *(v8 + 32)) >> 2) & 0x3F;
      v42 = v7;
      v39 = v14 - v15;
      v16 = v13 + 1 - ((v14 - v15) >> 3);
      v17 = *(v8 + 72);
      v40 = v13 + 1;
      if (v16 > (v17 - v14) >> 3)
      {
        v18 = v17 - v15;
        v19 = (v17 - v15) >> 2;
        if (v19 <= v13 + 1)
        {
          v19 = v13 + 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (!(v20 >> 61))
        {
          operator new();
        }

        goto LABEL_37;
      }

      v23 = 0;
      v24 = (v16 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v25 = vdupq_n_s64(v24);
      do
      {
        v26 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v23), xmmword_1B33B0560)));
        if (v26.i8[0])
        {
          *(v14 + 8 * v23) = 0;
        }

        if (v26.i8[4])
        {
          *(v14 + 8 * v23 + 8) = 0;
        }

        v23 += 2;
      }

      while (v24 - ((v16 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v23);
      *(v8 + 64) = v14 + 8 * v16;
      v27 = *(v8 + 80);
      v28 = *(v8 + 88);
      v29 = (v28 - v27) >> 4;
      if (v29 <= v13)
      {
        v30 = v40 - v29;
        v31 = *(v8 + 96);
        if (v30 > (v31 - v28) >> 4)
        {
          v32 = v31 - v27;
          v33 = v32 >> 3;
          if (v32 >> 3 <= v40)
          {
            v33 = v13 + 1;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFF0)
          {
            v33 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (!(v33 >> 60))
          {
            operator new();
          }

LABEL_37:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(*(v8 + 88), 16 * v30);
        *(v8 + 88) = v28 + 16 * v30;
        v6 = &unk_1EB83B000;
      }

      else if (v40 < v29)
      {
        *(v8 + 88) = v27 + 16 * v40;
      }

      v15 = *(v8 + 56);
      v12 = v41;
      v7 = v42;
      if (v39 < *(v8 + 64) - v15)
      {
        operator new();
      }
    }

    v34 = *(v15 + 8 * v13) + 32 * v12;
    *v34 = *a3;
    v35 = *(a3 + 8);
    *(v34 + 24) = *(a3 + 24);
    *(v34 + 8) = v35;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    if (v11)
    {
      v37 = *(v8 + 152);
      for (i = *(v8 + 160); v37 != i; v37 += 32)
      {
        std::function<void ()(ecs2::Entity)>::operator()(*(v37 + 24), a2);
      }
    }
  }

  else
  {
    v21 = *(*(v8 + 56) + 8 * v13) + 32 * v12;
    *v21 = *a3;
    if (*(v21 + 31) < 0)
    {
      operator delete(*(v21 + 8));
    }

    v22 = *(a3 + 8);
    *(v21 + 24) = *(a3 + 24);
    *(v21 + 8) = v22;
    *(a3 + 31) = 0;
    *(a3 + 8) = 0;
  }

  v38 = *(a1 + 41016) + (HIWORD(a2) << 6);
  *(v38 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v7;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskDescriptor>();
  *(a1 + 8 * v6[227]) = *(a1 + 4096);
}

uint64_t ecs2::BasicRegistry<void>::storage<ecs2::TaskState>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskState>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskState>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskState>(void)::metadata >= 0x200)
  {
    if (GEOGetGeoDisplayCoreDefaultLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoDisplayCoreDefaultLog::onceToken, &__block_literal_global_56374);
    }

    v3 = GEOGetGeoDisplayCoreDefaultLog::log;
    if (os_log_type_enabled(GEOGetGeoDisplayCoreDefaultLog::log, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void std::vector<ecs2::BucketDescriptor>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        if (*(v4 - 8) == 1)
        {
          v6 = v4 - 4;
          std::vector<ecs2::LayoutNode>::__destroy_vector::operator()[abi:nn200100](&v6);
        }

        if (*(v4 - 33) < 0)
        {
          operator delete(*(v4 - 7));
        }

        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::vector<ecs2::ExecutionTaskDescriptor>::__init_with_size[abi:nn200100]<ecs2::ExecutionTaskDescriptor*,ecs2::ExecutionTaskDescriptor*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ecs2::ExecutionTaskDescriptor>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<ecs2::ExecutionTaskDescriptor>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 7));
        std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 11));
        std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100]((v4 - 15));
        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<gdc::TypeInfo>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(a2);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::erq::EncodeRenderQueue>(md::erq::EncodeRenderQueue &&)::{lambda(void)#1},std::allocator<md::erq::EncodeRenderQueue &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::erq::EncodeRenderQueue>(md::erq::EncodeRenderQueue &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 3uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x17922920A08D336CLL;
    *(v9 + 8) = "md::erq::RenderQueueToSubmit]";
    *(v9 + 16) = 28;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x17922920A08D336CLL;
    v2[1] = "md::erq::RenderQueueToSubmit]";
    v2[2] = 28;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0x38B0ED5EA8D13426;
    v19[1] = "md::erq::RenderTargetToSubmit]";
    v19[2] = 29;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0x38B0ED5EA8D13426;
    v4[1] = "md::erq::RenderTargetToSubmit]";
    v4[2] = 29;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x3D9415B0404B6523;
    v14[1] = "md::erq::GPUWorkCallbacks]";
    v14[2] = 25;
    v24 = (v14 + 3);
    goto LABEL_37;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
  if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
  v27 = 2 * v26;
  if (2 * v26 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  if (v26 >= 0x555555555555555)
  {
    v28 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
  }

  v29 = (8 * ((v14 - *a1) >> 3));
  *v29 = 0x3D9415B0404B6523;
  v29[1] = "md::erq::GPUWorkCallbacks]";
  v29[2] = 25;
  v24 = 24 * v25 + 24;
  v30 = a1[1] - *a1;
  v31 = 24 * v25 - v30;
  memcpy(v29 - v30, *a1, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v24;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_37:
  a1[1] = v24;
}

void *std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::erq::EncodeRenderQueue>(md::erq::EncodeRenderQueue &&)::{lambda(void)#2},std::allocator<md::erq::EncodeRenderQueue &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::erq::EncodeRenderQueue>(md::erq::EncodeRenderQueue &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<gdc::TypeInfo>::reserve(a1, 0);
}

void *gdc::typelist_as_vector<std::tuple<>>(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<gdc::TypeInfo>::reserve(a1, 0);
}

void sub_1B276CDEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<md::BuildFrameGraphModule,std::allocator<md::BuildFrameGraphModule>,ecs2::ModuleDescriptor ()(void)>::operator()(uint64_t a1@<X8>)
{
  *a1 = atomic_fetch_add(gdc::FamilyInfo<ecs2::ModuleDescriptor,unsigned short>::Counter::nextId(void)::counter, 1u);
  *(a1 + 31) = 21;
  strcpy((a1 + 8), "BuildFrameGraphModule");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareBuildFrameGraph>();
  operator new();
}

void sub_1B276E47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  v49 = &STACK[0x5F0];
  v50 = -312;
  do
  {
    *(v47 - 232) = v49;
    std::vector<ecs2::UtilityTaskDescriptor>::__destroy_vector::operator()[abi:nn200100]((v47 - 232));
    *(v47 - 232) = v49 - 3;
    std::vector<ecs2::UtilityTaskDescriptor>::__destroy_vector::operator()[abi:nn200100]((v47 - 232));
    *(v47 - 232) = v49 - 6;
    std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100]((v47 - 232));
    *(v47 - 232) = v49 - 9;
    std::vector<ecs2::ExecutionTaskDescriptor>::__destroy_vector::operator()[abi:nn200100]((v47 - 232));
    v49 -= 13;
    v50 += 104;
  }

  while (v50);
  if (a39 < 0)
  {
    operator delete(__p);
  }

  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v44);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v46);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v45);
  if (a43)
  {
    operator delete(a43);
  }

  v51 = &STACK[0x398];
  v52 = -768;
  while (1)
  {
    if (*(v51 + 119) < 0)
    {
      operator delete(v51[12]);
    }

    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v51 + 8));
    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v51 + 4));
    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v51);
    v51 -= 16;
    v52 += 128;
    if (!v52)
    {
      if (SLOBYTE(STACK[0x44F]) < 0)
      {
        operator delete(STACK[0x438]);
      }

      std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](a14);
      if (SLOBYTE(STACK[0x4CF]) < 0)
      {
        operator delete(STACK[0x4B8]);
      }

      std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](a15);
      std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](a16);
      std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](a17);
      STACK[0x4D0] = a10;
      std::vector<ecs2::ExecutionDebugTaskDescriptor>::__destroy_vector::operator()[abi:nn200100](&STACK[0x4D0]);
      if (*(v43 + 31) < 0)
      {
        operator delete(*(v43 + 8));
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_1B276E764()
{
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v1);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v0);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v2);
  JUMPOUT(0x1B276E668);
}

void sub_1B276E7A8()
{
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v1);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v0);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v2);
  JUMPOUT(0x1B276E73CLL);
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareBuildFrameGraph>()
{
  v0 = &unk_1EB82C000;
  {
    v0 = &unk_1EB82C000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareBuildFrameGraph>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82C000;
    }
  }

  return v0[156];
}

void std::vector<ecs2::LayoutNode>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100]((v4 - 7));
        v4 -= 9;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B276EAC0(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v2);
  *(v1 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfLegacy>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfLegacy>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A54FD8;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::BuildSSAODOFCommonFrameGraph>,std::allocator<ecs2::ForwardToExecute<md::ita::BuildSSAODOFCommonFrameGraph>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A55020;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::BuildSSAOFrameGraph>,std::allocator<ecs2::ForwardToExecute<md::ita::BuildSSAOFrameGraph>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A550F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfShouldDeleteUniqueMaterial>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfShouldDeleteUniqueMaterial>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4060;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::BuildPrimaryFrameGraph>,std::allocator<ecs2::ForwardToExecute<md::ita::BuildPrimaryFrameGraph>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A55408;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<ecs2::GraphHandle>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::GraphHandle>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::GraphHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::GraphHandle>(void)::metadata >= 0x200)
  {
    if (GEOGetGeoDisplayCoreDefaultLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoDisplayCoreDefaultLog::onceToken, &__block_literal_global_56374);
    }

    v3 = GEOGetGeoDisplayCoreDefaultLog::log;
    if (os_log_type_enabled(GEOGetGeoDisplayCoreDefaultLog::log, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::BasicRegistry<void>::add<ecs2::TaskHandle>(uint64_t a1, int a2, void *a3)
{
  v37 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskHandle>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<ecs2::TaskHandle>(a1);
  v9 = ecs2::sparse_set<ecs2::Entity,64ul>::insert(v7, &v37) - *(v7 + 32);
  v10 = (v9 >> 2) >> 6;
  if ((v8 & 1) == 0)
  {
    *(*(*(v7 + 56) + 8 * v10) + 8 * (v9 >> 2)) = *a3;
    goto LABEL_35;
  }

  v12 = *(v7 + 56);
  v11 = *(v7 + 64);
  v13 = v11 - v12;
  if (v10 < (v11 - v12) >> 3)
  {
    *(*(v12 + 8 * v10) + 8 * (v9 >> 2)) = *a3;
LABEL_33:
    v32 = *(v7 + 152);
    for (i = *(v7 + 160); v32 != i; v32 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v32 + 24), a2);
    }

    goto LABEL_35;
  }

  v34 = v8;
  v14 = v10 + 1 - (v13 >> 3);
  v15 = *(v7 + 72);
  v35 = v11 - v12;
  v36 = v10 + 1;
  if (v14 > (v15 - v11) >> 3)
  {
    v16 = v15 - v12;
    v17 = (v15 - v12) >> 2;
    if (v17 <= v10 + 1)
    {
      v17 = v10 + 1;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    if (!(v18 >> 61))
    {
      operator new();
    }

    goto LABEL_36;
  }

  v19 = 0;
  v20 = (v14 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v21 = vdupq_n_s64(v20);
  do
  {
    v22 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(vdupq_n_s64(v19), xmmword_1B33B0560)));
    if (v22.i8[0])
    {
      *(v11 + 8 * v19) = 0;
    }

    if (v22.i8[4])
    {
      *(v11 + 8 * v19 + 8) = 0;
    }

    v19 += 2;
  }

  while (v20 - ((v14 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v19);
  *(v7 + 64) = v11 + 8 * v14;
  v23 = *(v7 + 80);
  v24 = *(v7 + 88);
  v25 = (v24 - v23) >> 4;
  if (v25 <= v10)
  {
    v26 = v36 - v25;
    v27 = *(v7 + 96);
    if (v26 > (v27 - v24) >> 4)
    {
      v28 = v27 - v23;
      v29 = v28 >> 3;
      if (v28 >> 3 <= v36)
      {
        v29 = v10 + 1;
      }

      if (v28 >= 0x7FFFFFFFFFFFFFF0)
      {
        v29 = 0xFFFFFFFFFFFFFFFLL;
      }

      if (!(v29 >> 60))
      {
        operator new();
      }

LABEL_36:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(*(v7 + 88), 16 * v26);
    *(v7 + 88) = v24 + 16 * v26;
    v13 = v35;
  }

  else if (v36 < v25)
  {
    *(v7 + 88) = v23 + 16 * v36;
  }

  v30 = *(v7 + 56);
  if (v13 < (*(v7 + 64) - v30))
  {
    operator new();
  }

  *(*(v30 + 8 * v10) + 8 * (v9 >> 2)) = *a3;
  if (v34)
  {
    goto LABEL_33;
  }

LABEL_35:
  v33 = *(a1 + 41016) + (HIWORD(a2) << 6);
  *(v33 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskHandle>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskDependencies>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<ecs2::TaskDependencies>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskDependencies>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<ecs2::TaskDependencies>(void)::localId;
    unk_1EB82B310 = 0xC19B2F8835424BB0;
    qword_1EB82B318 = "ecs2::TaskDependencies]";
    qword_1EB82B320 = 22;
  }
}

_DWORD *std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,gdc::tf::TaskData::Static,gdc::tf::TaskData::StaticWithContext,gdc::tf::TaskData::StaticModule,gdc::tf::TaskData::DynamicModule,gdc::tf::TaskData::ModuleFactory>>::__assign_alt[abi:nn200100]<2ul,gdc::tf::TaskData::StaticWithContext,gdc::tf::TaskData::StaticWithContext>(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = result[16];
  if (v5 == -1)
  {
LABEL_7:
    v4[16] = -1;
    v7 = *(a3 + 24);
    if (v7)
    {
      if (v7 == a3)
      {
        *(v4 + 3) = v4;
        result = (*(**(a3 + 24) + 24))(*(a3 + 24), v4);
      }

      else
      {
        *(v4 + 3) = v7;
        *(a3 + 24) = 0;
      }
    }

    else
    {
      *(v4 + 3) = 0;
    }

    v4[16] = 2;
    return result;
  }

  if (v5 != 2)
  {
    result = (off_1F2A60E80[v5])(&v10, result);
    goto LABEL_7;
  }

  result = *(a2 + 24);
  *(a2 + 24) = 0;
  if (result == a2)
  {
    result = (*(*result + 32))(result);
  }

  else if (result)
  {
    result = (*(*result + 40))(result);
  }

  v8 = *(a3 + 24);
  if (v8)
  {
    if (v8 == a3)
    {
      *(a2 + 24) = a2;
      v9 = *(**(a3 + 24) + 24);

      return v9();
    }

    else
    {
      *(a2 + 24) = v8;
      *(a3 + 24) = 0;
    }
  }

  else
  {
    *(a2 + 24) = 0;
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskMetadata>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<ecs2::TaskMetadata>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskMetadata>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<ecs2::TaskMetadata>(void)::localId;
    unk_1EB83B770 = 0x8FD425EC613C48D0;
    qword_1EB83B778 = "ecs2::TaskMetadata]";
    qword_1EB83B780 = 18;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageINS2_14TaskDescriptorEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESA_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISI_EEFvSH_EE7__cloneEPNS0_6__baseISL_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A60CF0;
  a2[1] = v2;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskState>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<ecs2::TaskState>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,ecs2::TaskState>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<ecs2::TaskState>(void)::localId;
    *algn_1EB83B6D8 = 0xB9ABC8B5D1B90006;
    qword_1EB83B6E0 = "ecs2::TaskState]";
    qword_1EB83B6E8 = 15;
  }
}

void std::__function::__func<md::EncodeModule,std::allocator<md::EncodeModule>,ecs2::ModuleDescriptor ()(void)>::operator()(uint64_t a1@<X8>)
{
  *a1 = atomic_fetch_add(gdc::FamilyInfo<ecs2::ModuleDescriptor,unsigned short>::Counter::nextId(void)::counter, 1u);
  *(a1 + 31) = 12;
  strcpy((a1 + 8), "EncodeModule");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  {
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::erq::EncodeRenderQueue>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
    }
  }

  operator new();
}

void std::vector<ecs2::UtilityTaskDescriptor>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::BuildShadowFrameGraph>,std::allocator<ecs2::ForwardToExecute<md::ita::BuildShadowFrameGraph>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A55280;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void *std::vector<unsigned long>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<gdc::Entity>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

void std::vector<gdc::Entity>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *std::vector<gdc::Entity>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<gdc::Entity>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 3);
  }

  return result;
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::BuildSSAOFrameGraph>(md::ita::BuildSSAOFrameGraph &&)::{lambda(void)#1},std::allocator<md::ita::BuildSSAOFrameGraph &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::BuildSSAOFrameGraph>(md::ita::BuildSSAOFrameGraph &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 3uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xD7B05696AE714D71;
    *(v9 + 8) = "md::ls::FrameBufferDesc]";
    *(v9 + 16) = 23;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xD7B05696AE714D71;
    v2[1] = "md::ls::FrameBufferDesc]";
    v2[2] = 23;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0x73C8822C1D168C4;
    v19[1] = "md::ls::PassSSAOConfiguration]";
    v19[2] = 29;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0x73C8822C1D168C4;
    v4[1] = "md::ls::PassSSAOConfiguration]";
    v4[2] = 29;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xC5E1935BF25B6EDALL;
    v14[1] = "md::ls::PassMapEngineCapabilities]";
    v14[2] = 33;
    v24 = (v14 + 3);
    goto LABEL_37;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
  if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
  v27 = 2 * v26;
  if (2 * v26 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  if (v26 >= 0x555555555555555)
  {
    v28 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
  }

  v29 = (8 * ((v14 - *a1) >> 3));
  *v29 = 0xC5E1935BF25B6EDALL;
  v29[1] = "md::ls::PassMapEngineCapabilities]";
  v29[2] = 33;
  v24 = 24 * v25 + 24;
  v30 = a1[1] - *a1;
  v31 = 24 * v25 - v30;
  memcpy(v29 - v30, *a1, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v24;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_37:
  a1[1] = v24;
}

void sub_1B2770194(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::BuildShadowFrameGraph>(md::ita::BuildShadowFrameGraph &&)::{lambda(void)#1},std::allocator<md::ita::BuildShadowFrameGraph &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::BuildShadowFrameGraph>(md::ita::BuildShadowFrameGraph &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0x7216A09FEC0661A6;
    v10[1] = "md::ls::PassShadowConfiguration]";
    v10[2] = 31;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0x7216A09FEC0661A6;
    v2[1] = "md::ls::PassShadowConfiguration]";
    v2[2] = 31;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27702F8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<CleanupEntities>,std::allocator<ecs2::ForwardToExecute<CleanupEntities>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1DCC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<PrepareFrameForEncode>(PrepareFrameForEncode &&)::{lambda(void)#1},std::allocator<PrepareFrameForEncode &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<PrepareFrameForEncode>(PrepareFrameForEncode &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x8004EB719AAADA5BLL;
    *(v9 + 8) = "md::ita::FrameHandle]";
    *(v9 + 16) = 20;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x8004EB719AAADA5BLL;
    v2[1] = "md::ita::FrameHandle]";
    v2[2] = 20;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0x90024251D45E5EE8;
    v4[1] = "md::ls::RenderTargetToPrepare]";
    v4[2] = 29;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0x90024251D45E5EE8;
  v19[1] = "md::ls::RenderTargetToPrepare]";
  v19[2] = 29;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B2770590(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2792620(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  STACK[0x270] = a1;
  v66 = &STACK[0x8230];
  v67 = -3120;
  do
  {
    *(v64 + 3184) = v66;
    std::vector<ecs2::UtilityTaskDescriptor>::__destroy_vector::operator()[abi:nn200100]((v65 - 232));
    *(v64 + 3184) = v66 - 3;
    std::vector<ecs2::UtilityTaskDescriptor>::__destroy_vector::operator()[abi:nn200100]((v65 - 232));
    *(v64 + 3184) = v66 - 6;
    std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100]((v65 - 232));
    *(v64 + 3184) = v66 - 9;
    std::vector<ecs2::ExecutionTaskDescriptor>::__destroy_vector::operator()[abi:nn200100]((v65 - 232));
    v66 -= 13;
    v67 += 104;
  }

  while (v67);
  if (SLOBYTE(STACK[0xC6F]) < 0)
  {
    operator delete(STACK[0xC58]);
  }

  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v62);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v61);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v63);
  if (SLOBYTE(STACK[0xCAF]) < 0)
  {
    operator delete(STACK[0xC98]);
  }

  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](STACK[0x280]);
  if (SLOBYTE(STACK[0xCEF]) < 0)
  {
    operator delete(STACK[0xCD8]);
  }

  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](STACK[0x290]);
  v68 = &STACK[0xE78];
  v69 = -512;
  while (1)
  {
    if (*(v68 + 119) < 0)
    {
      operator delete(v68[12]);
    }

    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v68 + 8));
    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v68 + 4));
    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v68);
    v68 -= 16;
    v69 += 128;
    if (!v69)
    {
      if (SLOBYTE(STACK[0xF6F]) < 0)
      {
        operator delete(STACK[0xF58]);
      }

      std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](STACK[0x210]);
      std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](STACK[0x240]);
      std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](STACK[0x250]);
      if (SLOBYTE(STACK[0xFEF]) < 0)
      {
        operator delete(STACK[0xFD8]);
      }

      std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](STACK[0x260]);
      std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](STACK[0x2A0]);
      std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](STACK[0x2B0]);
      v70 = 0;
      while (1)
      {
        v71 = (&STACK[0xFF0] + v70);
        if (*(&STACK[0xFF0] + v70 + 127) < 0)
        {
          operator delete(v71[13]);
        }

        std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100]((v71 + 9));
        v70 -= 64;
        if (v70 == -128)
        {
          v72 = &STACK[0x2DF8];
          v73 = -7680;
          while (1)
          {
            if (*(v72 + 119) < 0)
            {
              operator delete(v72[12]);
            }

            std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v72 + 8));
            std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v72 + 4));
            std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v72);
            v72 -= 16;
            v73 += 128;
            if (!v73)
            {
              v74 = &STACK[0x2EF8];
              v75 = -256;
              while (1)
              {
                if (*(v74 + 119) < 0)
                {
                  operator delete(v74[12]);
                }

                std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v74 + 8));
                std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v74 + 4));
                std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v74);
                v74 -= 16;
                v75 += 128;
                if (!v75)
                {
                  v76 = &STACK[0x2FF8];
                  v77 = -256;
                  while (1)
                  {
                    if (*(v76 + 119) < 0)
                    {
                      operator delete(v76[12]);
                    }

                    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v76 + 8));
                    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v76 + 4));
                    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v76);
                    v76 -= 16;
                    v77 += 128;
                    if (!v77)
                    {
                      v78 = &STACK[0x3178];
                      v79 = -384;
                      while (1)
                      {
                        if (*(v78 + 119) < 0)
                        {
                          operator delete(v78[12]);
                        }

                        std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v78 + 8));
                        std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v78 + 4));
                        std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v78);
                        v78 -= 16;
                        v79 += 128;
                        if (!v79)
                        {
                          if (SLOBYTE(STACK[0x322F]) < 0)
                          {
                            operator delete(STACK[0x3218]);
                          }

                          std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](a61);
                          v80 = &STACK[0x32B8];
                          v81 = -256;
                          while (1)
                          {
                            if (*(v80 + 119) < 0)
                            {
                              operator delete(v80[12]);
                            }

                            std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v80 + 8));
                            std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v80 + 4));
                            std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v80);
                            v80 -= 16;
                            v81 += 128;
                            if (!v81)
                            {
                              v82 = &STACK[0x46B8];
                              v83 = -5120;
                              while (1)
                              {
                                if (*(v82 + 119) < 0)
                                {
                                  operator delete(v82[12]);
                                }

                                std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v82 + 8));
                                std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v82 + 4));
                                std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v82);
                                v82 -= 16;
                                v83 += 128;
                                if (!v83)
                                {
                                  v84 = &STACK[0x4AB8];
                                  v85 = -1024;
                                  while (1)
                                  {
                                    if (*(v84 + 119) < 0)
                                    {
                                      operator delete(v84[12]);
                                    }

                                    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v84 + 8));
                                    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v84 + 4));
                                    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v84);
                                    v84 -= 16;
                                    v85 += 128;
                                    if (!v85)
                                    {
                                      if (SLOBYTE(STACK[0x4BAF]) < 0)
                                      {
                                        operator delete(STACK[0x4B98]);
                                      }

                                      std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](a16);
                                      std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](a17);
                                      std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](a18);
                                      v86 = &STACK[0x4D38];
                                      v87 = -512;
                                      while (1)
                                      {
                                        if (*(v86 + 119) < 0)
                                        {
                                          operator delete(v86[12]);
                                        }

                                        std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v86 + 8));
                                        std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v86 + 4));
                                        std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v86);
                                        v86 -= 16;
                                        v87 += 128;
                                        if (!v87)
                                        {
                                          v88 = &STACK[0x55B8];
                                          v89 = -2176;
                                          while (1)
                                          {
                                            if (*(v88 + 119) < 0)
                                            {
                                              operator delete(v88[12]);
                                            }

                                            std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v88 + 8));
                                            std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v88 + 4));
                                            std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v88);
                                            v88 -= 16;
                                            v89 += 128;
                                            if (!v89)
                                            {
                                              v90 = &STACK[0x56B8];
                                              v91 = -256;
                                              while (1)
                                              {
                                                if (*(v90 + 119) < 0)
                                                {
                                                  operator delete(v90[12]);
                                                }

                                                std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v90 + 8));
                                                std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v90 + 4));
                                                std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v90);
                                                v90 -= 16;
                                                v91 += 128;
                                                if (!v91)
                                                {
                                                  v92 = &STACK[0x57B8];
                                                  v93 = -256;
                                                  while (1)
                                                  {
                                                    if (*(v92 + 119) < 0)
                                                    {
                                                      operator delete(v92[12]);
                                                    }

                                                    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v92 + 8));
                                                    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v92 + 4));
                                                    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v92);
                                                    v92 -= 16;
                                                    v93 += 128;
                                                    if (!v93)
                                                    {
                                                      v94 = &STACK[0x59B8];
                                                      v95 = -512;
                                                      while (1)
                                                      {
                                                        if (*(v94 + 119) < 0)
                                                        {
                                                          operator delete(v94[12]);
                                                        }

                                                        std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v94 + 8));
                                                        std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v94 + 4));
                                                        std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v94);
                                                        v94 -= 16;
                                                        v95 += 128;
                                                        if (!v95)
                                                        {
                                                          v96 = &STACK[0x5B38];
                                                          v97 = -384;
                                                          while (1)
                                                          {
                                                            if (*(v96 + 119) < 0)
                                                            {
                                                              operator delete(v96[12]);
                                                            }

                                                            std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v96 + 8));
                                                            std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v96 + 4));
                                                            std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v96);
                                                            v96 -= 16;
                                                            v97 += 128;
                                                            if (!v97)
                                                            {
                                                              if (SLOBYTE(STACK[0x5C2F]) < 0)
                                                              {
                                                                operator delete(STACK[0x5C18]);
                                                              }

                                                              std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](a21);
                                                              std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](a22);
                                                              std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](&STACK[0x5BB8]);
                                                              v98 = &STACK[0x61B8];
                                                              v99 = -1536;
                                                              while (1)
                                                              {
                                                                if (*(v98 + 119) < 0)
                                                                {
                                                                  operator delete(v98[12]);
                                                                }

                                                                std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v98 + 8));
                                                                std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v98 + 4));
                                                                std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v98);
                                                                v98 -= 16;
                                                                v99 += 128;
                                                                if (!v99)
                                                                {
                                                                  if (SLOBYTE(STACK[0x62AF]) < 0)
                                                                  {
                                                                    operator delete(STACK[0x6298]);
                                                                  }

                                                                  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](a23);
                                                                  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](a24);
                                                                  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](a25);
                                                                  v100 = &STACK[0x6538];
                                                                  v101 = -768;
                                                                  while (1)
                                                                  {
                                                                    if (*(v100 + 119) < 0)
                                                                    {
                                                                      operator delete(v100[12]);
                                                                    }

                                                                    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v100 + 8));
                                                                    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v100 + 4));
                                                                    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v100);
                                                                    v100 -= 16;
                                                                    v101 += 128;
                                                                    if (!v101)
                                                                    {
                                                                      if (SLOBYTE(STACK[0x65EF]) < 0)
                                                                      {
                                                                        operator delete(STACK[0x65D8]);
                                                                      }

                                                                      std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](a26);
                                                                      v102 = &STACK[0x6678];
                                                                      v103 = -256;
                                                                      while (1)
                                                                      {
                                                                        if (*(v102 + 119) < 0)
                                                                        {
                                                                          operator delete(v102[12]);
                                                                        }

                                                                        std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v102 + 8));
                                                                        std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v102 + 4));
                                                                        std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v102);
                                                                        v102 -= 16;
                                                                        v103 += 128;
                                                                        if (!v103)
                                                                        {
                                                                          v104 = 0;
                                                                          while (1)
                                                                          {
                                                                            v105 = (&STACK[0x66F0] + v104);
                                                                            if (*(&STACK[0x66F0] + v104 + 191) < 0)
                                                                            {
                                                                              operator delete(v105[21]);
                                                                            }

                                                                            std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100]((v105 + 17));
                                                                            v104 -= 64;
                                                                            if (v104 == -192)
                                                                            {
                                                                              v106 = &STACK[0x6E38];
                                                                              v107 = -1792;
                                                                              while (1)
                                                                              {
                                                                                if (*(v106 + 119) < 0)
                                                                                {
                                                                                  operator delete(v106[12]);
                                                                                }

                                                                                std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v106 + 8));
                                                                                std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v106 + 4));
                                                                                std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v106);
                                                                                v106 -= 16;
                                                                                v107 += 128;
                                                                                if (!v107)
                                                                                {
                                                                                  if (SLOBYTE(STACK[0x6EEF]) < 0)
                                                                                  {
                                                                                    operator delete(STACK[0x6ED8]);
                                                                                  }

                                                                                  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](a27);
                                                                                  if (SLOBYTE(STACK[0x6F2F]) < 0)
                                                                                  {
                                                                                    operator delete(STACK[0x6F18]);
                                                                                  }

                                                                                  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](a28);
                                                                                  v108 = &STACK[0x7138];
                                                                                  v109 = -640;
                                                                                  while (1)
                                                                                  {
                                                                                    if (*(v108 + 119) < 0)
                                                                                    {
                                                                                      operator delete(v108[12]);
                                                                                    }

                                                                                    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v108 + 8));
                                                                                    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v108 + 4));
                                                                                    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v108);
                                                                                    v108 -= 16;
                                                                                    v109 += 128;
                                                                                    if (!v109)
                                                                                    {
                                                                                      if (SLOBYTE(STACK[0x722F]) < 0)
                                                                                      {
                                                                                        operator delete(STACK[0x7218]);
                                                                                      }

                                                                                      std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](a40);
                                                                                      std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](a41);
                                                                                      std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](a42);
                                                                                      v110 = STACK[0x7240];
                                                                                      if (STACK[0x7240])
                                                                                      {
                                                                                        STACK[0x7248] = v110;
                                                                                        operator delete(v110);
                                                                                      }

                                                                                      v111 = &STACK[0x72E0];
                                                                                      v112 = -256;
                                                                                      while (1)
                                                                                      {
                                                                                        if (*(v111 + 119) < 0)
                                                                                        {
                                                                                          operator delete(v111[12]);
                                                                                        }

                                                                                        std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v111 + 8));
                                                                                        std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v111 + 4));
                                                                                        std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v111);
                                                                                        v111 -= 16;
                                                                                        v112 += 128;
                                                                                        if (!v112)
                                                                                        {
                                                                                          if (SLOBYTE(STACK[0x73D7]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x73C0]);
                                                                                          }

                                                                                          std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](a29);
                                                                                          std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](a30);
                                                                                          std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](a31);
                                                                                          if (SLOBYTE(STACK[0x7417]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x7400]);
                                                                                          }

                                                                                          std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](a33);
                                                                                          if (SLOBYTE(STACK[0x7457]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x7440]);
                                                                                          }

                                                                                          std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](a34);
                                                                                          v113 = STACK[0x270];
                                                                                          v114 = &STACK[0x7560];
                                                                                          v115 = -384;
                                                                                          while (1)
                                                                                          {
                                                                                            if (*(v114 + 119) < 0)
                                                                                            {
                                                                                              operator delete(v114[12]);
                                                                                            }

                                                                                            std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v114 + 8));
                                                                                            std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v114 + 4));
                                                                                            std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v114);
                                                                                            v114 -= 16;
                                                                                            v115 += 128;
                                                                                            if (!v115)
                                                                                            {
                                                                                              if (SLOBYTE(STACK[0x7617]) < 0)
                                                                                              {
                                                                                                operator delete(STACK[0x7600]);
                                                                                              }

                                                                                              std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](a32);
                                                                                              STACK[0x3330] = a35;
                                                                                              std::vector<ecs2::ExecutionDebugTaskDescriptor>::__destroy_vector::operator()[abi:nn200100](&STACK[0x3330]);
                                                                                              if (*(a15 + 31) < 0)
                                                                                              {
                                                                                                operator delete(*a12);
                                                                                              }

                                                                                              _Unwind_Resume(v113);
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
            }
          }
        }
      }
    }
  }
}

void sub_1B27939C4(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B2793200);
}

void sub_1B27939F0(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  while (1)
  {
    if (*(v4 - 1) < 0)
    {
      operator delete(*(v4 - 3));
    }

    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 7));
    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 11));
    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100]((v4 - 15));
    v4 -= 16;
    if (v4 == &STACK[0x4730])
    {
      JUMPOUT(0x1B279325CLL);
    }
  }
}

void sub_1B2793AB0(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B2793A94);
}

void sub_1B2793AE0(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B279328CLL);
}

void sub_1B2793B24(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  while (1)
  {
    if (*(v4 - 1) < 0)
    {
      operator delete(*(v4 - 3));
    }

    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 7));
    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 11));
    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100]((v4 - 15));
    v4 -= 16;
    if (v4 == &STACK[0x4BB0])
    {
      JUMPOUT(0x1B27932D0);
    }
  }
}

void sub_1B2793BD4(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  while (1)
  {
    if (*(v4 - 1) < 0)
    {
      operator delete(*(v4 - 3));
    }

    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 7));
    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 11));
    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100]((v4 - 15));
    v4 -= 16;
    if (v4 == &STACK[0x4DB0])
    {
      JUMPOUT(0x1B2793314);
    }
  }
}

void sub_1B2793CC0(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B2793CA4);
}

void sub_1B2793CF0(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v6);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v5);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v3);
  if (*(v7 + 127) < 0)
  {
    operator delete(STACK[0x5698]);
  }

  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v4);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B2793358);
}

void sub_1B2793D8C(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v6);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v5);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v3);
  if (SLOBYTE(STACK[0x57AF]) < 0)
  {
    operator delete(STACK[0x5798]);
  }

  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v4);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B279339CLL);
}

void sub_1B2793E30(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  while (1)
  {
    if (*(v4 - 1) < 0)
    {
      operator delete(*(v4 - 3));
    }

    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 7));
    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 11));
    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100]((v4 - 15));
    v4 -= 16;
    if (v4 == &STACK[0x5830])
    {
      JUMPOUT(0x1B27933E0);
    }
  }
}

void sub_1B2793EF8(unint64_t a1)
{
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  STACK[0x270] = a1;
  while (1)
  {
    if (*(v4 - 1) < 0)
    {
      operator delete(*(v4 - 3));
    }

    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 7));
    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 11));
    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100]((v4 - 15));
    v4 -= 16;
    if (v4 == &STACK[0x5A30])
    {
      JUMPOUT(0x1B2793424);
    }
  }
}

void sub_1B2794004(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  while (1)
  {
    if (*(v4 - 1) < 0)
    {
      operator delete(*(v4 - 3));
    }

    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 7));
    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 11));
    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100]((v4 - 15));
    v4 -= 16;
    if (v4 == &STACK[0x5C30])
    {
      JUMPOUT(0x1B27934A0);
    }
  }
}

void sub_1B27940E0(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B27940C4);
}

void sub_1B2794110(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B27934D0);
}

void sub_1B2794158(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  while (1)
  {
    if (*(v4 - 1) < 0)
    {
      operator delete(*(v4 - 3));
    }

    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 7));
    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 11));
    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100]((v4 - 15));
    v4 -= 16;
    if (v4 == &STACK[0x62B0])
    {
      JUMPOUT(0x1B2793514);
    }
  }
}

void sub_1B27941FC(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B27941E0);
}

void sub_1B2794248(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B279353CLL);
}

void sub_1B2794290(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v6);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v5);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v3);
  if (*(v7 + 127) < 0)
  {
    operator delete(STACK[0x6658]);
  }

  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v4);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B27935C0);
}

void sub_1B2794340(unint64_t a1)
{
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  STACK[0x270] = a1;
  while (1)
  {
    if (*(v2 - 1) < 0)
    {
      operator delete(*(v2 - 3));
    }

    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100]((v2 - 7));
    v2 -= 8;
    if (v2 == &STACK[0x66F0])
    {
      JUMPOUT(0x1B27935FCLL);
    }
  }
}

void sub_1B27943E0(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  while (1)
  {
    if (*(v4 - 1) < 0)
    {
      operator delete(*(v4 - 3));
    }

    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 7));
    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 11));
    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100]((v4 - 15));
    v4 -= 16;
    if (v4 == &STACK[0x67B0])
    {
      JUMPOUT(0x1B2793678);
    }
  }
}

void sub_1B27944D0(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B27944B4);
}

void sub_1B2794530(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B2793698);
}

void sub_1B2794574(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B27936CCLL);
}

void sub_1B27945B4(unint64_t a1)
{
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  STACK[0x270] = a1;
  while (1)
  {
    if (*(v4 - 1) < 0)
    {
      operator delete(*(v4 - 3));
    }

    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 7));
    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v4 - 11));
    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100]((v4 - 15));
    v4 -= 16;
    if (v4 == &STACK[0x6F30])
    {
      JUMPOUT(0x1B2793738);
    }
  }
}

void sub_1B2794698(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B2793768);
}

void sub_1B2794734(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v5);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v4);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v3);
  if (*(v7 + 127) < 0)
  {
    operator delete(STACK[0x72C0]);
  }

  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v6);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B27937D8);
}

void sub_1B27947C8(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v3);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B2793800);
}

void sub_1B2794818(unint64_t a1)
{
  STACK[0x270] = a1;
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v1);
  JUMPOUT(0x1B2793820);
}

void sub_1B2794884()
{
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v1);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v0);
  while (1)
  {
    if (*(v3 - 1) < 0)
    {
      operator delete(*(v3 - 3));
    }

    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v3 - 7));
    std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100]((v3 - 11));
    std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100]((v3 - 15));
    v3 -= 16;
    if (v3 == &STACK[0x7458])
    {
      JUMPOUT(0x1B27938D4);
    }
  }
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::DeletePendingDeletion>,std::allocator<ecs2::ForwardToExecute<md::ita::DeletePendingDeletion>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4498;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CleanUpFrameGraphResources>,std::allocator<ecs2::ForwardToExecute<md::ita::CleanUpFrameGraphResources>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A55740;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::BuildSSAODOFCommonFrameGraph>(md::ita::BuildSSAODOFCommonFrameGraph &&)::{lambda(void)#1},std::allocator<md::ita::BuildSSAODOFCommonFrameGraph &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::BuildSSAODOFCommonFrameGraph>(md::ita::BuildSSAODOFCommonFrameGraph &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x73C8822C1D168C4;
    *(v9 + 8) = "md::ls::PassSSAOConfiguration]";
    *(v9 + 16) = 29;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x73C8822C1D168C4;
    v2[1] = "md::ls::PassSSAOConfiguration]";
    v2[2] = 29;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0xC5E1935BF25B6EDALL;
    v4[1] = "md::ls::PassMapEngineCapabilities]";
    v4[2] = 33;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0xC5E1935BF25B6EDALL;
  v19[1] = "md::ls::PassMapEngineCapabilities]";
  v19[2] = 33;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B2794D68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::BuildRouteLineFrameGraph>(md::ita::BuildRouteLineFrameGraph &&)::{lambda(void)#1},std::allocator<md::ita::BuildRouteLineFrameGraph &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::BuildRouteLineFrameGraph>(md::ita::BuildRouteLineFrameGraph &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 3uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xD7B05696AE714D71;
    *(v9 + 8) = "md::ls::FrameBufferDesc]";
    *(v9 + 16) = 23;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xD7B05696AE714D71;
    v2[1] = "md::ls::FrameBufferDesc]";
    v2[2] = 23;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0xCDD99CCED5CBB5CBLL;
    v19[1] = "md::ls::PassRoutelineMaskConfiguration]";
    v19[2] = 38;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0xCDD99CCED5CBB5CBLL;
    v4[1] = "md::ls::PassRoutelineMaskConfiguration]";
    v4[2] = 38;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x6738F9098C50E08CLL;
    v14[1] = "md::ls::PassDeviceCapabilities]";
    v14[2] = 30;
    v24 = (v14 + 3);
    goto LABEL_37;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
  if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
  v27 = 2 * v26;
  if (2 * v26 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  if (v26 >= 0x555555555555555)
  {
    v28 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
  }

  v29 = (8 * ((v14 - *a1) >> 3));
  *v29 = 0x6738F9098C50E08CLL;
  v29[1] = "md::ls::PassDeviceCapabilities]";
  v29[2] = 30;
  v24 = 24 * v25 + 24;
  v30 = a1[1] - *a1;
  v31 = 24 * v25 - v30;
  memcpy(v29 - v30, *a1, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v24;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_37:
  a1[1] = v24;
}

void sub_1B27950AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::EndFrameGraphPreparation>(md::ita::EndFrameGraphPreparation &&)::{lambda(void)#1},std::allocator<md::ita::EndFrameGraphPreparation &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::EndFrameGraphPreparation>(md::ita::EndFrameGraphPreparation &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xE0E0BD7780EC271BLL;
    *(v9 + 8) = "md::ls::PreviousResourceStamp]";
    *(v9 + 16) = 29;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xE0E0BD7780EC271BLL;
    v2[1] = "md::ls::PreviousResourceStamp]";
    v2[2] = 29;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0x256170776297ADC7;
    v4[1] = "md::ls::PassCount]";
    v4[2] = 17;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0x256170776297ADC7;
  v19[1] = "md::ls::PassCount]";
  v19[2] = 17;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B2795304(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<PrepareFrameForEncode>,std::allocator<ecs2::ForwardToExecute<PrepareFrameForEncode>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1D980;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<ToggleFeatureFlagTasks>,std::allocator<ecs2::ForwardToExecute<ToggleFeatureFlagTasks>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29F3F40;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareDepthPrePass>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareDepthPrePass>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F47F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareSSAOPasses>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareSSAOPasses>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F48D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareRouteLineMaskPass>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareRouteLineMaskPass>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F49A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[1100];
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIf_PrepareStyleConstantDataHandle>,std::allocator<ecs2::ForwardToExecute<md::DetermineIf_PrepareStyleConstantDataHandle>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29F57D0;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfShouldRun_StyleZChange>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfShouldRun_StyleZChange>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29F5860;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfShouldRun_NewMaterials>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfShouldRun_NewMaterials>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29F5A58;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ClearResolvedMaterialAlbedoTextureFallbacks>,std::allocator<ecs2::ForwardToExecute<md::ita::ClearResolvedMaterialAlbedoTextureFallbacks>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5AA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ApplyPositionScaleInfo>,std::allocator<ecs2::ForwardToExecute<md::ita::ApplyPositionScaleInfo>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5EB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void gdc::typelist_as_vector<std::tuple<md::ita::FrameHandle>>(void **a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0x8004EB719AAADA5BLL;
    v10[1] = "md::ita::FrameHandle]";
    v10[2] = 20;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0x8004EB719AAADA5BLL;
    v2[1] = "md::ita::FrameHandle]";
    v2[2] = 20;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B2796264(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void gdc::typelist_as_vector<std::tuple<md::ls::FrameGraphBuilder>>(void **a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0x9792F5BB2E6066F1;
    v10[1] = "md::ls::FrameGraphBuilder]";
    v10[2] = 25;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0x9792F5BB2E6066F1;
    v2[1] = "md::ls::FrameGraphBuilder]";
    v2[2] = 25;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27963D4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::CleanUpFrameGraphResources>(md::ita::CleanUpFrameGraphResources &&)::{lambda(void)#2},std::allocator<md::ita::CleanUpFrameGraphResources &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::CleanUpFrameGraphResources>(md::ita::CleanUpFrameGraphResources &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x9792F5BB2E6066F1;
    *(v9 + 8) = "md::ls::FrameGraphBuilder]";
    *(v9 + 16) = 25;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x9792F5BB2E6066F1;
    v2[1] = "md::ls::FrameGraphBuilder]";
    v2[2] = 25;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0x2CF7C0CBD63AB273;
    v4[1] = "md::ls::FrameGraphRenderTarget]";
    v4[2] = 30;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0x2CF7C0CBD63AB273;
  v19[1] = "md::ls::FrameGraphRenderTarget]";
  v19[2] = 30;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B2796644(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<md::MapEngineFrameModule,std::allocator<md::MapEngineFrameModule>,ecs2::ModuleDescriptor ()(void)>::operator()(uint64_t a1@<X8>)
{
  v18[7] = *MEMORY[0x1E69E9840];
  *a1 = atomic_fetch_add(gdc::FamilyInfo<ecs2::ModuleDescriptor,unsigned short>::Counter::nextId(void)::counter, 1u);
  std::string::basic_string[abi:nn200100]<0>((a1 + 8), "InteractiveFrameModule");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v10 = 1;
  {
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<PrepareFrameForRender>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
    }
  }

  LOWORD(v13) = ~gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<PrepareFrameForRender>(void)::localId;
  v15 = 0u;
  v14 = &unk_1F2A1D7B0;
  v16 = &v14;
  v17[0] = &unk_1F2A1D8F0;
  v17[3] = v17;
  v18[0] = &unk_1F2A1D938;
  v18[3] = v18;
  HIBYTE(v18[6]) = 21;
  strcpy(&v18[5] + 5, "orRender");
  v2 = ~gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<PrepareFrameForRender>(void)::localId;
  v5 = &v3;
  v3 = &unk_1F2A1D7B0;
  v4 = 0u;
  v6[3] = v6;
  v6[0] = &unk_1F2A1D8F0;
  v7[3] = v7;
  v7[0] = &unk_1F2A1D938;
  v9 = v18[6];
  v8 = *"PrepareFrameForRender]";
  memset(&v18[4], 0, 24);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v18);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v17);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](&v14);
  v11 = 0;
  v12 = 0u;
  std::vector<ecs2::ExecutionTaskDescriptor>::__init_with_size[abi:nn200100]<ecs2::ExecutionTaskDescriptor const*,ecs2::ExecutionTaskDescriptor const*>(&v11, &v2, &v10, 1uLL);
}

void sub_1B2796EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _Unwind_Exception *exception_objecta, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  v80 = v75 + 288;
  v81 = -312;
  do
  {
    *(v79 - 224) = v80;
    std::vector<ecs2::UtilityTaskDescriptor>::__destroy_vector::operator()[abi:nn200100]((v79 - 224));
    *(v79 - 224) = v80 - 24;
    std::vector<ecs2::UtilityTaskDescriptor>::__destroy_vector::operator()[abi:nn200100]((v79 - 224));
    *(v79 - 224) = v80 - 48;
    std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100]((v79 - 224));
    *(v79 - 224) = v80 - 72;
    std::vector<ecs2::ExecutionTaskDescriptor>::__destroy_vector::operator()[abi:nn200100]((v79 - 224));
    v80 -= 104;
    v81 += 104;
  }

  while (v81);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v73);
  if (a47 < 0)
  {
    operator delete(a42);
  }

  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v72);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v78);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](v77);
  if (a66 < 0)
  {
    operator delete(a61);
  }

  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](v76);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](a13);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](a14);
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a72);
  }

  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](a15);
  std::__function::__value_func<std::vector<gdc::TypeInfo> ()(void)>::~__value_func[abi:nn200100](a16);
  std::__function::__value_func<void ()(ecs2::Runtime &)>::~__value_func[abi:nn200100](a17);
  STACK[0x208] = v74;
  std::vector<ecs2::ExecutionDebugTaskDescriptor>::__destroy_vector::operator()[abi:nn200100](&STACK[0x208]);
  if (*(a12 + 31) < 0)
  {
    operator delete(*a11);
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<PrepareFrameForRender>,std::allocator<ecs2::ForwardToExecute<PrepareFrameForRender>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1D7B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<CleanupServices>,std::allocator<ecs2::ForwardToExecute<CleanupServices>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1DDA0;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfShouldRun_CustomRate>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfShouldRun_CustomRate>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29F4210;
  a2[1] = *(result + 8);
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareShadowPass>()
{
  v0 = &unk_1EB82C000;
  {
    v0 = &unk_1EB82C000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareShadowPass>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82C000;
    }
  }

  return v0[380];
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfShouldRun_SsaoEnabled>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfShouldRun_SsaoEnabled>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29F4AC8;
  a2[1] = *(result + 8);
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateShadowConstants>()
{
  v0 = &unk_1EB82C000;
  {
    v0 = &unk_1EB82C000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateShadowConstants>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82C000;
    }
  }

  return v0[188];
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfShouldRun_ElevationChanged>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfShouldRun_ElevationChanged>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29F5818;
  a2[1] = *(result + 8);
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ClearResolvedMaterialAlbedoTextureFallbacks>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ClearResolvedMaterialAlbedoTextureFallbacks>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[1244];
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ApplyWantsDynamicShadowBounds>,std::allocator<ecs2::ForwardToExecute<md::ita::ApplyWantsDynamicShadowBounds>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5D08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ResolveMaterialAlbedoTexture>,std::allocator<ecs2::ForwardToExecute<md::ita::ResolveMaterialAlbedoTexture>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F66D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ProcessMaterialPlanarParameters>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ProcessMaterialPlanarParameters>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[1612];
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ProcessMaterialPlanarParametersPendingOnly>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ProcessMaterialPlanarParametersPendingOnly>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[1252];
}

void gdc::typelist_as_vector<std::tuple<md::ls::FrameGraphBuilder,md::ls::PassCount>>(const void **a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x9792F5BB2E6066F1;
    *(v9 + 8) = "md::ls::FrameGraphBuilder]";
    *(v9 + 16) = 25;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x9792F5BB2E6066F1;
    v2[1] = "md::ls::FrameGraphBuilder]";
    v2[2] = 25;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0x256170776297ADC7;
    v4[1] = "md::ls::PassCount]";
    v4[2] = 17;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0x256170776297ADC7;
  v19[1] = "md::ls::PassCount]";
  v19[2] = 17;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B2797F5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[1084];
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessRenderableForLandCover>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessRenderableForLandCover>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5DE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateStyleEmmisiveColor>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateStyleEmmisiveColor>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[2036];
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateStyleEmmisiveColorPendingOnly>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateStyleEmmisiveColorPendingOnly>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[1428];
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateSSAOIntensityData>()
{
  v0 = &unk_1EB82C000;
  {
    v0 = &unk_1EB82C000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateSSAOIntensityData>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82C000;
    }
  }

  return v0[60];
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<CleanupEntities>(CleanupEntities &&)::{lambda(void)#1},std::allocator<CleanupEntities &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<CleanupEntities>(CleanupEntities &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0xC3545FB0365E4B12;
    v10[1] = "md::ls::MarkForEntityDeletion]";
    v10[2] = 29;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0xC3545FB0365E4B12;
    v2[1] = "md::ls::MarkForEntityDeletion]";
    v2[2] = 29;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27986A4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::BuildRouteLineFrameGraph>,std::allocator<ecs2::ForwardToExecute<md::ita::BuildRouteLineFrameGraph>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A55548;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::BuildPrimaryFrameGraph>(md::ita::BuildPrimaryFrameGraph &&)::{lambda(void)#1},std::allocator<md::ita::BuildPrimaryFrameGraph &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::BuildPrimaryFrameGraph>(md::ita::BuildPrimaryFrameGraph &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 5uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_62;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x2CF7C0CBD63AB273;
    *(v9 + 8) = "md::ls::FrameGraphRenderTarget]";
    *(v9 + 16) = 30;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x2CF7C0CBD63AB273;
    v2[1] = "md::ls::FrameGraphRenderTarget]";
    v2[2] = 30;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_62;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0x6738F9098C50E08CLL;
    v19[1] = "md::ls::PassDeviceCapabilities]";
    v19[2] = 30;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0x6738F9098C50E08CLL;
    v4[1] = "md::ls::PassDeviceCapabilities]";
    v4[2] = 30;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 >= v23)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
    if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_62;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
    v27 = 2 * v26;
    if (2 * v26 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x555555555555555)
    {
      v28 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
    }

    v29 = (8 * ((v14 - *a1) >> 3));
    *v29 = 0x937D85B25618F8B3;
    v29[1] = "md::ls::PassSSAODescriptor]";
    v29[2] = 26;
    v24 = (24 * v25 + 24);
    v30 = a1[1] - *a1;
    v31 = 24 * v25 - v30;
    memcpy(v29 - v30, *a1, v30);
    v32 = *a1;
    *a1 = v31;
    a1[1] = v24;
    a1[2] = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v14 = 0x937D85B25618F8B3;
    v14[1] = "md::ls::PassSSAODescriptor]";
    v14[2] = 26;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 >= v33)
  {
    v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3);
    if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_62;
    }

    v36 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *a1) >> 3);
    v37 = 2 * v36;
    if (2 * v36 <= v35 + 1)
    {
      v37 = v35 + 1;
    }

    if (v36 >= 0x555555555555555)
    {
      v38 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v38 = v37;
    }

    if (v38)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v38);
    }

    v39 = (8 * ((v24 - *a1) >> 3));
    *v39 = 0x73F7A94D4E0637DDLL;
    v39[1] = "md::ls::PassShadowDescriptor]";
    v39[2] = 28;
    v34 = (24 * v35 + 24);
    v40 = a1[1] - *a1;
    v41 = 24 * v35 - v40;
    memcpy(v39 - v40, *a1, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v34;
    a1[2] = 0;
    if (v42)
    {
      operator delete(v42);
    }
  }

  else
  {
    *v24 = 0x73F7A94D4E0637DDLL;
    v24[1] = "md::ls::PassShadowDescriptor]";
    v24[2] = 28;
    v34 = v24 + 3;
  }

  a1[1] = v34;
  v43 = a1[2];
  if (v34 < v43)
  {
    *v34 = 0x6D136A48B3800686;
    v34[1] = "md::ls::PassRouteLineDescriptor]";
    v34[2] = 31;
    v44 = (v34 + 3);
    goto LABEL_61;
  }

  v45 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *a1) >> 3);
  if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_62:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v46 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *a1) >> 3);
  v47 = 2 * v46;
  if (2 * v46 <= v45 + 1)
  {
    v47 = v45 + 1;
  }

  if (v46 >= 0x555555555555555)
  {
    v48 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v48 = v47;
  }

  if (v48)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v48);
  }

  v49 = (8 * ((v34 - *a1) >> 3));
  *v49 = 0x6D136A48B3800686;
  v49[1] = "md::ls::PassRouteLineDescriptor]";
  v49[2] = 31;
  v44 = 24 * v45 + 24;
  v50 = a1[1] - *a1;
  v51 = 24 * v45 - v50;
  memcpy(v49 - v50, *a1, v50);
  v52 = *a1;
  *a1 = v51;
  a1[1] = v44;
  a1[2] = 0;
  if (v52)
  {
    operator delete(v52);
  }

LABEL_61:
  a1[1] = v44;
}

void sub_1B2798C48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfShouldRun_FrameGraphChanges>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfShouldRun_FrameGraphChanges>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29F4A80;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareMainSlice>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareMainSlice>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6E70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareShadowSlice>()
{
  v0 = &unk_1EB82C000;
  {
    v0 = &unk_1EB82C000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareShadowSlice>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82C000;
    }
  }

  return v0[348];
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareShadowPassCommandBuffers>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareShadowPassCommandBuffers>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[1620];
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareMainPassCommandBuffers>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareMainPassCommandBuffers>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7530;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ApplyUsesIdentityMatrix>,std::allocator<ecs2::ForwardToExecute<md::ita::ApplyUsesIdentityMatrix>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7A40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ResolveRenderableAlbedoTextureFallbacks>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ResolveRenderableAlbedoTextureFallbacks>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[1300];
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ResolveRenderableAlbedoTextureFallbacks>,std::allocator<ecs2::ForwardToExecute<md::ita::ResolveRenderableAlbedoTextureFallbacks>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7B18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[1076];
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing>,std::allocator<ecs2::ForwardToExecute<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7BF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateStyleTextureIfNecessary>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateStyleTextureIfNecessary>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[1708];
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateStyleTextureIfNecessaryPendingOnly>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateStyleTextureIfNecessaryPendingOnly>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[1276];
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ApplyAlbedoTint>,std::allocator<ecs2::ForwardToExecute<md::ita::ApplyAlbedoTint>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8338;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::KeepMaterialAlbedoTextureAlive>,std::allocator<ecs2::ForwardToExecute<md::ita::KeepMaterialAlbedoTextureAlive>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8410;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfNeedsDepthPeel>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfNeedsDepthPeel>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8848;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfRenderableIsUnique>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfRenderableIsUnique>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8FE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignRenderOrder>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignRenderOrder>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F90B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorDualElevation>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorDualElevation>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F9418;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorStylizedShading>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorStylizedShading>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F9728;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorShadows>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorShadows>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F98D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorLightDebug>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorLightDebug>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F99B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorFog>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorFog>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F9A88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorAO>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorAO>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F9B60;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorECEF>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorECEF>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F9C38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorTileClipping>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorTileClipping>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F9DE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorIdentityMatrix>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorIdentityMatrix>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F9EC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorOutputLinearDepth>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorOutputLinearDepth>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F9F98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorPlanar>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorPlanar>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FA070;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorPreserveHeight>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorPreserveHeight>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FA2F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorEmmisiveEnabled>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorEmmisiveEnabled>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FA3D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorWater>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorWater>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FA8E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::SetupDefaultRenderState>,std::allocator<ecs2::ForwardToExecute<md::ita::SetupDefaultRenderState>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FAA90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::SetupRenderStatesForSeeThrough>,std::allocator<ecs2::ForwardToExecute<md::ita::SetupRenderStatesForSeeThrough>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FAD18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::SetupRenderStatesForDecals>,std::allocator<ecs2::ForwardToExecute<md::ita::SetupRenderStatesForDecals>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FADF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::DetermineDataIDsNeeded>,std::allocator<ecs2::ForwardToExecute<md::ita::DetermineDataIDsNeeded>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FB1D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareRasterOverlayDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareRasterOverlayDataHandle>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7CC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorOverlay>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorOverlay>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F94F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSpecularContribution>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSpecularContribution>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F95C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorLandCover>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorLandCover>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FA148;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorColorCorrection>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorColorCorrection>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FA220;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorUseCameraZBias>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorUseCameraZBias>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FA658;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::SetupCustomRenderState>,std::allocator<ecs2::ForwardToExecute<md::ita::SetupCustomRenderState>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FAB68;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::SetupRenderStates>,std::allocator<ecs2::ForwardToExecute<md::ita::SetupRenderStates>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FAEC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::DecidePipelineForMainPass>,std::allocator<ecs2::ForwardToExecute<md::ita::DecidePipelineForMainPass>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FB100;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfShouldRun_ModifiedRenderItems>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfShouldRun_ModifiedRenderItems>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29FB460;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::MarkPipelineDataRequirements>,std::allocator<ecs2::ForwardToExecute<md::ita::MarkPipelineDataRequirements>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FB8E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FBA90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignColorCorrectionFactor>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignColorCorrectionFactor>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FBB68;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleColorData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleColorData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FBFA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignRasterOverlayData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignRasterOverlayData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FC078;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleCameraLightingConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleCameraLightingConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FC738;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignTileTransformConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignTileTransformConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FC810;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleRouteLineMaskConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleRouteLineMaskConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD230;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignDepthPrePassConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignDepthPrePassConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FCDF8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverTransformConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverTransformConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FE598;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverS2TransformConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverS2TransformConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FE820;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ProcessRenderableForSSAOConstantData>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ProcessRenderableForSSAOConstantData>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[1380];
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CreatePipelines>,std::allocator<ecs2::ForwardToExecute<md::ita::CreatePipelines>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FB2B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignPositionScaleInfo>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignPositionScaleInfo>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FBDF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignTileViewData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignTileViewData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FBEC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignSRGBBlendStyleData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignSRGBBlendStyleData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FC150;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignClippingConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignClippingConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FC660;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignShadowConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignShadowConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FCD20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignLinearDepthConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignLinearDepthConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FCFA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignMaterialStyleConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignMaterialStyleConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD3E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::AssignAmbientTextureIndexFiltered>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::AssignAmbientTextureIndexFiltered>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[1556];
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareShadowBounds>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareShadowBounds>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6F48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareMainSliceWithCulled>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareMainSliceWithCulled>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7020;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareTileElevatedStrokeDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareTileElevatedStrokeDataHandle>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7E28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSplined>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSplined>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F9268;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareFunctionConstantDescriptorSSAO>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareFunctionConstantDescriptorSSAO>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[1348];
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorGlobeLight>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorGlobeLight>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F9800;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorPositionScale>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorPositionScale>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F9D10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorClimateTint>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorClimateTint>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FA808;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::SetupCustomRenderStateStencilRefValue>,std::allocator<ecs2::ForwardToExecute<md::ita::SetupCustomRenderStateStencilRefValue>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FAC40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::SetupPredefinedRenderState>,std::allocator<ecs2::ForwardToExecute<md::ita::SetupPredefinedRenderState>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FB028;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfPipelineStatesUpdateNeeded>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfPipelineStatesUpdateNeeded>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FB388;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CreatePipelineStates>,std::allocator<ecs2::ForwardToExecute<md::ita::CreatePipelineStates>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FB4A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateColorRampGradientResources>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateColorRampGradientResources>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FB580;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::TransferPipelines>,std::allocator<ecs2::ForwardToExecute<md::ita::TransferPipelines>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FB730;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssembleRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::AssembleRenderItems>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FB808;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::DetermineIfShouldRender>,std::allocator<ecs2::ForwardToExecute<md::ita::DetermineIfShouldRender>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FB9B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignTileElevatedStrokeData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignTileElevatedStrokeData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FC228;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignPlanarParametersConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignPlanarParametersConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FC8E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignLandCoverSettingsConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignLandCoverSettingsConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD080;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleEmissiveColorConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleEmissiveColorConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD158;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleGroundOcclusionConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleGroundOcclusionConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD308;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignGradientParametersConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignGradientParametersConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD4B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::AssignAmbientTextureIndexAll>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::AssignAmbientTextureIndexAll>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[1852];
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::DisconnectComponents>(md::ita::DisconnectComponents &&)::{lambda(void)#1},std::allocator<md::ita::DisconnectComponents &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::DisconnectComponents>(md::ita::DisconnectComponents &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 4uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xDACEFB85CDF2B135;
    *(v9 + 8) = "md::ls::RequestReset]";
    *(v9 + 16) = 20;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xDACEFB85CDF2B135;
    v2[1] = "md::ls::RequestReset]";
    v2[2] = 20;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0x34ACED59D994E35ELL;
    v19[1] = "md::ls::PendingDeletion]";
    v19[2] = 23;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0x34ACED59D994E35ELL;
    v4[1] = "md::ls::PendingDeletion]";
    v4[2] = 23;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 >= v23)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
    if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
    v27 = 2 * v26;
    if (2 * v26 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x555555555555555)
    {
      v28 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
    }

    v29 = (8 * ((v14 - *a1) >> 3));
    *v29 = 0x3209EBE3B62CF3D3;
    v29[1] = "md::ls::UniqueMaterialData]";
    v29[2] = 26;
    v24 = (24 * v25 + 24);
    v30 = a1[1] - *a1;
    v31 = 24 * v25 - v30;
    memcpy(v29 - v30, *a1, v30);
    v32 = *a1;
    *a1 = v31;
    a1[1] = v24;
    a1[2] = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v14 = 0x3209EBE3B62CF3D3;
    v14[1] = "md::ls::UniqueMaterialData]";
    v14[2] = 26;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 < v33)
  {
    *v24 = 0x310D7D3EDA4A50D3;
    v24[1] = "md::ls::RenderItemPendingDeletion]";
    v24[2] = 33;
    v34 = (v24 + 3);
    goto LABEL_49;
  }

  v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3);
  if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_50:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v36 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *a1) >> 3);
  v37 = 2 * v36;
  if (2 * v36 <= v35 + 1)
  {
    v37 = v35 + 1;
  }

  if (v36 >= 0x555555555555555)
  {
    v38 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v38 = v37;
  }

  if (v38)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v38);
  }

  v39 = (8 * ((v24 - *a1) >> 3));
  *v39 = 0x310D7D3EDA4A50D3;
  v39[1] = "md::ls::RenderItemPendingDeletion]";
  v39[2] = 33;
  v34 = 24 * v35 + 24;
  v40 = a1[1] - *a1;
  v41 = 24 * v35 - v40;
  memcpy(v39 - v40, *a1, v40);
  v42 = *a1;
  *a1 = v41;
  a1[1] = v34;
  a1[2] = 0;
  if (v42)
  {
    operator delete(v42);
  }

LABEL_49:
  a1[1] = v34;
}

void sub_1B279D970(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe>(md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe &&)::{lambda(void)#1},std::allocator<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe>(md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x695C99F828CA9E84;
    *(v9 + 8) = "md::ls::BaseMapTileHandle]";
    *(v9 + 16) = 25;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x695C99F828CA9E84;
    v2[1] = "md::ls::BaseMapTileHandle]";
    v2[2] = 25;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0xF13A29B8320B78ALL;
    v4[1] = "md::ls::TileProjectionTypeT<md::ls::TileProjectionType::Mercator>]";
    v4[2] = 65;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0xF13A29B8320B78ALL;
  v19[1] = "md::ls::TileProjectionTypeT<md::ls::TileProjectionType::Mercator>]";
  v19[2] = 65;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B279DBD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateColorCorrectionData>(md::ita::UpdateColorCorrectionData &&)::{lambda(void)#1},std::allocator<md::ita::UpdateColorCorrectionData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateColorCorrectionData>(md::ita::UpdateColorCorrectionData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 3uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x3209EBE3B62CF3D3;
    *(v9 + 8) = "md::ls::UniqueMaterialData]";
    *(v9 + 16) = 26;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x3209EBE3B62CF3D3;
    v2[1] = "md::ls::UniqueMaterialData]";
    v2[2] = 26;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0x9B887E855861722BLL;
    v19[1] = "md::ls::UniqueColorCorrectionDataHandle]";
    v19[2] = 39;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0x9B887E855861722BLL;
    v4[1] = "md::ls::UniqueColorCorrectionDataHandle]";
    v4[2] = 39;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xCE1B2B8E676E76D8;
    v14[1] = "md::ls::MaterialPendingProcessing]";
    v14[2] = 33;
    v24 = (v14 + 3);
    goto LABEL_37;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
  if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
  v27 = 2 * v26;
  if (2 * v26 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  if (v26 >= 0x555555555555555)
  {
    v28 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
  }

  v29 = (8 * ((v14 - *a1) >> 3));
  *v29 = 0xCE1B2B8E676E76D8;
  v29[1] = "md::ls::MaterialPendingProcessing]";
  v29[2] = 33;
  v24 = 24 * v25 + 24;
  v30 = a1[1] - *a1;
  v31 = 24 * v25 - v30;
  memcpy(v29 - v30, *a1, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v24;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_37:
  a1[1] = v24;
}

void sub_1B279DF24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareMeshRenderableBounds>(md::ita::PrepareMeshRenderableBounds &&)::{lambda(void)#1},std::allocator<md::ita::PrepareMeshRenderableBounds &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareMeshRenderableBounds>(md::ita::PrepareMeshRenderableBounds &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 6uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_74;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x8DCCA4FD35258189;
    *(v9 + 8) = "md::ls::MeshRenderableID]";
    *(v9 + 16) = 24;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x8DCCA4FD35258189;
    v2[1] = "md::ls::MeshRenderableID]";
    v2[2] = 24;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_74;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0xC2ED2352B044903BLL;
    v19[1] = "md::ls::GeocentricBounds]";
    v19[2] = 24;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0xC2ED2352B044903BLL;
    v4[1] = "md::ls::GeocentricBounds]";
    v4[2] = 24;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 >= v23)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
    if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_74;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
    v27 = 2 * v26;
    if (2 * v26 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x555555555555555)
    {
      v28 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
    }

    v29 = (8 * ((v14 - *a1) >> 3));
    *v29 = 0xD15AF44EFDE875A7;
    v29[1] = "md::ls::SliceAssignmentT<md::SliceType::AllByPrimitiveAndVisibility>]";
    v29[2] = 68;
    v24 = (24 * v25 + 24);
    v30 = a1[1] - *a1;
    v31 = 24 * v25 - v30;
    memcpy(v29 - v30, *a1, v30);
    v32 = *a1;
    *a1 = v31;
    a1[1] = v24;
    a1[2] = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v14 = 0xD15AF44EFDE875A7;
    v14[1] = "md::ls::SliceAssignmentT<md::SliceType::AllByPrimitiveAndVisibility>]";
    v14[2] = 68;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 >= v33)
  {
    v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3);
    if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_74;
    }

    v36 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *a1) >> 3);
    v37 = 2 * v36;
    if (2 * v36 <= v35 + 1)
    {
      v37 = v35 + 1;
    }

    if (v36 >= 0x555555555555555)
    {
      v38 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v38 = v37;
    }

    if (v38)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v38);
    }

    v39 = (8 * ((v24 - *a1) >> 3));
    *v39 = 0x1DBDEAE2D8DF6302;
    v39[1] = "md::ls::MeshRenderableTransformConstantDataHandle]";
    v39[2] = 49;
    v34 = (24 * v35 + 24);
    v40 = a1[1] - *a1;
    v41 = 24 * v35 - v40;
    memcpy(v39 - v40, *a1, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v34;
    a1[2] = 0;
    if (v42)
    {
      operator delete(v42);
    }
  }

  else
  {
    *v24 = 0x1DBDEAE2D8DF6302;
    v24[1] = "md::ls::MeshRenderableTransformConstantDataHandle]";
    v24[2] = 49;
    v34 = v24 + 3;
  }

  a1[1] = v34;
  v43 = a1[2];
  if (v34 >= v43)
  {
    v45 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *a1) >> 3);
    if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_74;
    }

    v46 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *a1) >> 3);
    v47 = 2 * v46;
    if (2 * v46 <= v45 + 1)
    {
      v47 = v45 + 1;
    }

    if (v46 >= 0x555555555555555)
    {
      v48 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v48 = v47;
    }

    if (v48)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v48);
    }

    v49 = (8 * ((v34 - *a1) >> 3));
    *v49 = 0x6B3ACE485940A135;
    v49[1] = "md::ls::MeshRenderableBounds]";
    v49[2] = 28;
    v44 = (24 * v45 + 24);
    v50 = a1[1] - *a1;
    v51 = 24 * v45 - v50;
    memcpy(v49 - v50, *a1, v50);
    v52 = *a1;
    *a1 = v51;
    a1[1] = v44;
    a1[2] = 0;
    if (v52)
    {
      operator delete(v52);
    }
  }

  else
  {
    *v34 = 0x6B3ACE485940A135;
    v34[1] = "md::ls::MeshRenderableBounds]";
    v34[2] = 28;
    v44 = v34 + 3;
  }

  a1[1] = v44;
  v53 = a1[2];
  if (v44 < v53)
  {
    *v44 = 0x5EBA003AC7A96B8ALL;
    v44[1] = "md::ls::SharedRenderableDataHandle]";
    v44[2] = 34;
    v54 = (v44 + 3);
    goto LABEL_73;
  }

  v55 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *a1) >> 3);
  if (v55 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_74:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v56 = 0xAAAAAAAAAAAAAAABLL * ((v53 - *a1) >> 3);
  v57 = 2 * v56;
  if (2 * v56 <= v55 + 1)
  {
    v57 = v55 + 1;
  }

  if (v56 >= 0x555555555555555)
  {
    v58 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v58 = v57;
  }

  if (v58)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v58);
  }

  v59 = (8 * ((v44 - *a1) >> 3));
  *v59 = 0x5EBA003AC7A96B8ALL;
  v59[1] = "md::ls::SharedRenderableDataHandle]";
  v59[2] = 34;
  v54 = 24 * v55 + 24;
  v60 = a1[1] - *a1;
  v61 = 24 * v55 - v60;
  memcpy(v59 - v60, *a1, v60);
  v62 = *a1;
  *a1 = v61;
  a1[1] = v54;
  a1[2] = 0;
  if (v62)
  {
    operator delete(v62);
  }

LABEL_73:
  a1[1] = v54;
}

void sub_1B279E52C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFlyoverTransformConstantDataHandle>(md::ita::PrepareFlyoverTransformConstantDataHandle &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFlyoverTransformConstantDataHandle &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFlyoverTransformConstantDataHandle>(md::ita::PrepareFlyoverTransformConstantDataHandle &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xBED6A4C8B7C54422;
    *(v9 + 8) = "md::ls::ModelTransformData]";
    *(v9 + 16) = 26;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xBED6A4C8B7C54422;
    v2[1] = "md::ls::ModelTransformData]";
    v2[2] = 26;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0x67D8808361DF5DBFLL;
    v4[1] = "md::ls::GlobeMatrix]";
    v4[2] = 19;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0x67D8808361DF5DBFLL;
  v19[1] = "md::ls::GlobeMatrix]";
  v19[2] = 19;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B279E794(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFlyoverTransformConstantDataHandle>(md::ita::PrepareFlyoverTransformConstantDataHandle &&)::{lambda(void)#2},std::allocator<md::ita::PrepareFlyoverTransformConstantDataHandle &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFlyoverTransformConstantDataHandle>(md::ita::PrepareFlyoverTransformConstantDataHandle &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0x7D9191A7B57B7B35;
    v10[1] = "md::ls::FlyoverCommonTransformConstantDataHandle]";
    v10[2] = 48;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0x7D9191A7B57B7B35;
    v2[1] = "md::ls::FlyoverCommonTransformConstantDataHandle]";
    v2[2] = 48;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B279E8F8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ResolveRenderableAlbedoTextureFallbacks>(md::ita::ResolveRenderableAlbedoTextureFallbacks &&)::{lambda(void)#1},std::allocator<md::ita::ResolveRenderableAlbedoTextureFallbacks &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ResolveRenderableAlbedoTextureFallbacks>(md::ita::ResolveRenderableAlbedoTextureFallbacks &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 3uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x8DCCA4FD35258189;
    *(v9 + 8) = "md::ls::MeshRenderableID]";
    *(v9 + 16) = 24;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x8DCCA4FD35258189;
    v2[1] = "md::ls::MeshRenderableID]";
    v2[2] = 24;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0x9AAE33FEB51FAC5BLL;
    v19[1] = "md::ls::SharedMaterialAlbedoTexture]";
    v19[2] = 35;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0x9AAE33FEB51FAC5BLL;
    v4[1] = "md::ls::SharedMaterialAlbedoTexture]";
    v4[2] = 35;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x28D6AB85FDB5A2BLL;
    v14[1] = "md::ls::RenderableAlbedoTexture]";
    v14[2] = 31;
    v24 = (v14 + 3);
    goto LABEL_37;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
  if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
  v27 = 2 * v26;
  if (2 * v26 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  if (v26 >= 0x555555555555555)
  {
    v28 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
  }

  v29 = (8 * ((v14 - *a1) >> 3));
  *v29 = 0x28D6AB85FDB5A2BLL;
  v29[1] = "md::ls::RenderableAlbedoTexture]";
  v29[2] = 31;
  v24 = 24 * v25 + 24;
  v30 = a1[1] - *a1;
  v31 = 24 * v25 - v30;
  memcpy(v29 - v30, *a1, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v24;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_37:
  a1[1] = v24;
}

void sub_1B279EC38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareTileElevatedStrokeDataHandle>(md::ita::PrepareTileElevatedStrokeDataHandle &&)::{lambda(void)#1},std::allocator<md::ita::PrepareTileElevatedStrokeDataHandle &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareTileElevatedStrokeDataHandle>(md::ita::PrepareTileElevatedStrokeDataHandle &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 3uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xA219A074B7259E0FLL;
    *(v9 + 8) = "md::ls::InView]";
    *(v9 + 16) = 14;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xA219A074B7259E0FLL;
    v2[1] = "md::ls::InView]";
    v2[2] = 14;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0x8D1BF84D316565E9;
    v19[1] = "md::ls::MercatorBounds]";
    v19[2] = 22;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0x8D1BF84D316565E9;
    v4[1] = "md::ls::MercatorBounds]";
    v4[2] = 22;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xB6C12FBB402E8E70;
    v14[1] = "md::ls::RenderableMaterialData]";
    v14[2] = 30;
    v24 = (v14 + 3);
    goto LABEL_37;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
  if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
  v27 = 2 * v26;
  if (2 * v26 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  if (v26 >= 0x555555555555555)
  {
    v28 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
  }

  v29 = (8 * ((v14 - *a1) >> 3));
  *v29 = 0xB6C12FBB402E8E70;
  v29[1] = "md::ls::RenderableMaterialData]";
  v29[2] = 30;
  v24 = 24 * v25 + 24;
  v30 = a1[1] - *a1;
  v31 = 24 * v25 - v30;
  memcpy(v29 - v30, *a1, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v24;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_37:
  a1[1] = v24;
}

void sub_1B279EF74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareMaterialStyleConstantDataHandle>(md::ita::PrepareMaterialStyleConstantDataHandle &&)::{lambda(void)#1},std::allocator<md::ita::PrepareMaterialStyleConstantDataHandle &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareMaterialStyleConstantDataHandle>(md::ita::PrepareMaterialStyleConstantDataHandle &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xA219A074B7259E0FLL;
    *(v9 + 8) = "md::ls::InView]";
    *(v9 + 16) = 14;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xA219A074B7259E0FLL;
    v2[1] = "md::ls::InView]";
    v2[2] = 14;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0xB6C12FBB402E8E70;
    v4[1] = "md::ls::RenderableMaterialData]";
    v4[2] = 30;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0xB6C12FBB402E8E70;
  v19[1] = "md::ls::RenderableMaterialData]";
  v19[2] = 30;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B279F1CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ApplyAlbedoTint>(md::ita::ApplyAlbedoTint &&)::{lambda(void)#1},std::allocator<md::ita::ApplyAlbedoTint &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ApplyAlbedoTint>(md::ita::ApplyAlbedoTint &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 4uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xA219A074B7259E0FLL;
    *(v9 + 8) = "md::ls::InView]";
    *(v9 + 16) = 14;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xA219A074B7259E0FLL;
    v2[1] = "md::ls::InView]";
    v2[2] = 14;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0xC893C1C4D3D90FF5;
    v19[1] = "md::ls::SharedColorDataHandle]";
    v19[2] = 29;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0xC893C1C4D3D90FF5;
    v4[1] = "md::ls::SharedColorDataHandle]";
    v4[2] = 29;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 >= v23)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
    if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
    v27 = 2 * v26;
    if (2 * v26 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x555555555555555)
    {
      v28 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
    }

    v29 = (8 * ((v14 - *a1) >> 3));
    *v29 = 0x60915CB292001F47;
    v29[1] = "md::ls::UniqueColorDataHandle]";
    v29[2] = 29;
    v24 = (24 * v25 + 24);
    v30 = a1[1] - *a1;
    v31 = 24 * v25 - v30;
    memcpy(v29 - v30, *a1, v30);
    v32 = *a1;
    *a1 = v31;
    a1[1] = v24;
    a1[2] = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v14 = 0x60915CB292001F47;
    v14[1] = "md::ls::UniqueColorDataHandle]";
    v14[2] = 29;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 < v33)
  {
    *v24 = 0x2906BE24995F2F60;
    v24[1] = "md::ls::AlbedoTintColor]";
    v24[2] = 23;
    v34 = (v24 + 3);
    goto LABEL_49;
  }

  v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3);
  if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_50:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v36 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *a1) >> 3);
  v37 = 2 * v36;
  if (2 * v36 <= v35 + 1)
  {
    v37 = v35 + 1;
  }

  if (v36 >= 0x555555555555555)
  {
    v38 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v38 = v37;
  }

  if (v38)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v38);
  }

  v39 = (8 * ((v24 - *a1) >> 3));
  *v39 = 0x2906BE24995F2F60;
  v39[1] = "md::ls::AlbedoTintColor]";
  v39[2] = 23;
  v34 = 24 * v35 + 24;
  v40 = a1[1] - *a1;
  v41 = 24 * v35 - v40;
  memcpy(v39 - v40, *a1, v40);
  v42 = *a1;
  *a1 = v41;
  a1[1] = v34;
  a1[2] = 0;
  if (v42)
  {
    operator delete(v42);
  }

LABEL_49:
  a1[1] = v34;
}

void sub_1B279F5FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::CreateShadowPassRenderItems>(md::ita::CreateShadowPassRenderItems &&)::{lambda(void)#1},std::allocator<md::ita::CreateShadowPassRenderItems &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::CreateShadowPassRenderItems>(md::ita::CreateShadowPassRenderItems &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 0x15uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x8DCCA4FD35258189;
    *(v9 + 8) = "md::ls::MeshRenderableID]";
    *(v9 + 16) = 24;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x8DCCA4FD35258189;
    v2[1] = "md::ls::MeshRenderableID]";
    v2[2] = 24;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0xBDB1DC42A0C30FD6;
    v19[1] = "md::ls::SliceAssignmentT<md::SliceType::CulledShadow>]";
    v19[2] = 53;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0xBDB1DC42A0C30FD6;
    v4[1] = "md::ls::SliceAssignmentT<md::SliceType::CulledShadow>]";
    v4[2] = 53;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 >= v23)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
    if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
    v27 = 2 * v26;
    if (2 * v26 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x555555555555555)
    {
      v28 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
    }

    v29 = (8 * ((v14 - *a1) >> 3));
    *v29 = 0xE8C803AC798645E1;
    v29[1] = "md::ls::RenderableMeshVertexFormat]";
    v29[2] = 34;
    v24 = (24 * v25 + 24);
    v30 = a1[1] - *a1;
    v31 = 24 * v25 - v30;
    memcpy(v29 - v30, *a1, v30);
    v32 = *a1;
    *a1 = v31;
    a1[1] = v24;
    a1[2] = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v14 = 0xE8C803AC798645E1;
    v14[1] = "md::ls::RenderableMeshVertexFormat]";
    v14[2] = 34;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 >= v33)
  {
    v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3);
    if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v36 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *a1) >> 3);
    v37 = 2 * v36;
    if (2 * v36 <= v35 + 1)
    {
      v37 = v35 + 1;
    }

    if (v36 >= 0x555555555555555)
    {
      v38 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v38 = v37;
    }

    if (v38)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v38);
    }

    v39 = (8 * ((v24 - *a1) >> 3));
    *v39 = 0x751B872B282C3971;
    v39[1] = "md::ls::TileType]";
    v39[2] = 16;
    v34 = (24 * v35 + 24);
    v40 = a1[1] - *a1;
    v41 = 24 * v35 - v40;
    memcpy(v39 - v40, *a1, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v34;
    a1[2] = 0;
    if (v42)
    {
      operator delete(v42);
    }
  }

  else
  {
    *v24 = 0x751B872B282C3971;
    v24[1] = "md::ls::TileType]";
    v24[2] = 16;
    v34 = v24 + 3;
  }

  a1[1] = v34;
  v43 = a1[2];
  if (v34 >= v43)
  {
    v45 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *a1) >> 3);
    if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v46 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *a1) >> 3);
    v47 = 2 * v46;
    if (2 * v46 <= v45 + 1)
    {
      v47 = v45 + 1;
    }

    if (v46 >= 0x555555555555555)
    {
      v48 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v48 = v47;
    }

    if (v48)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v48);
    }

    v49 = (8 * ((v34 - *a1) >> 3));
    *v49 = 0xECC498AF223943D5;
    v49[1] = "md::ls::MeshLayerTypeV]";
    v49[2] = 22;
    v44 = (24 * v45 + 24);
    v50 = a1[1] - *a1;
    v51 = 24 * v45 - v50;
    memcpy(v49 - v50, *a1, v50);
    v52 = *a1;
    *a1 = v51;
    a1[1] = v44;
    a1[2] = 0;
    if (v52)
    {
      operator delete(v52);
    }
  }

  else
  {
    *v34 = 0xECC498AF223943D5;
    v34[1] = "md::ls::MeshLayerTypeV]";
    v34[2] = 22;
    v44 = v34 + 3;
  }

  a1[1] = v44;
  v53 = a1[2];
  if (v44 >= v53)
  {
    v55 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *a1) >> 3);
    if (v55 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v56 = 0xAAAAAAAAAAAAAAABLL * ((v53 - *a1) >> 3);
    v57 = 2 * v56;
    if (2 * v56 <= v55 + 1)
    {
      v57 = v55 + 1;
    }

    if (v56 >= 0x555555555555555)
    {
      v58 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v58 = v57;
    }

    if (v58)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v58);
    }

    v59 = (8 * ((v44 - *a1) >> 3));
    *v59 = 0xEC85A518158AB507;
    v59[1] = "md::ls::PendingProcessingShadow]";
    v59[2] = 31;
    v54 = (24 * v55 + 24);
    v60 = a1[1] - *a1;
    v61 = 24 * v55 - v60;
    memcpy(v59 - v60, *a1, v60);
    v62 = *a1;
    *a1 = v61;
    a1[1] = v54;
    a1[2] = 0;
    if (v62)
    {
      operator delete(v62);
    }
  }

  else
  {
    *v44 = 0xEC85A518158AB507;
    v44[1] = "md::ls::PendingProcessingShadow]";
    v44[2] = 31;
    v54 = v44 + 3;
  }

  a1[1] = v54;
  v63 = a1[2];
  if (v54 >= v63)
  {
    v65 = 0xAAAAAAAAAAAAAAABLL * ((v54 - *a1) >> 3);
    if (v65 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v66 = 0xAAAAAAAAAAAAAAABLL * ((v63 - *a1) >> 3);
    v67 = 2 * v66;
    if (2 * v66 <= v65 + 1)
    {
      v67 = v65 + 1;
    }

    if (v66 >= 0x555555555555555)
    {
      v68 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v68 = v67;
    }

    if (v68)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v68);
    }

    v69 = (8 * ((v54 - *a1) >> 3));
    *v69 = 0xCD844FF303308290;
    v69[1] = "md::ls::HasMeshHandle]";
    v69[2] = 21;
    v64 = (24 * v65 + 24);
    v70 = a1[1] - *a1;
    v71 = 24 * v65 - v70;
    memcpy(v69 - v70, *a1, v70);
    v72 = *a1;
    *a1 = v71;
    a1[1] = v64;
    a1[2] = 0;
    if (v72)
    {
      operator delete(v72);
    }
  }

  else
  {
    *v54 = 0xCD844FF303308290;
    v54[1] = "md::ls::HasMeshHandle]";
    v54[2] = 21;
    v64 = v54 + 3;
  }

  a1[1] = v64;
  v73 = a1[2];
  if (v64 >= v73)
  {
    v75 = 0xAAAAAAAAAAAAAAABLL * ((v64 - *a1) >> 3);
    if (v75 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v76 = 0xAAAAAAAAAAAAAAABLL * ((v73 - *a1) >> 3);
    v77 = 2 * v76;
    if (2 * v76 <= v75 + 1)
    {
      v77 = v75 + 1;
    }

    if (v76 >= 0x555555555555555)
    {
      v78 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v78 = v77;
    }

    if (v78)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v78);
    }

    v79 = (8 * ((v64 - *a1) >> 3));
    *v79 = 0x6C7EE74910D42096;
    v79[1] = "md::ls::PositionScaleInfoConstantDataHandle]";
    v79[2] = 43;
    v74 = (24 * v75 + 24);
    v80 = a1[1] - *a1;
    v81 = 24 * v75 - v80;
    memcpy(v79 - v80, *a1, v80);
    v82 = *a1;
    *a1 = v81;
    a1[1] = v74;
    a1[2] = 0;
    if (v82)
    {
      operator delete(v82);
    }
  }

  else
  {
    *v64 = 0x6C7EE74910D42096;
    v64[1] = "md::ls::PositionScaleInfoConstantDataHandle]";
    v64[2] = 43;
    v74 = v64 + 3;
  }

  a1[1] = v74;
  v83 = a1[2];
  if (v74 >= v83)
  {
    v85 = 0xAAAAAAAAAAAAAAABLL * ((v74 - *a1) >> 3);
    if (v85 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v86 = 0xAAAAAAAAAAAAAAABLL * ((v83 - *a1) >> 3);
    v87 = 2 * v86;
    if (2 * v86 <= v85 + 1)
    {
      v87 = v85 + 1;
    }

    if (v86 >= 0x555555555555555)
    {
      v88 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v88 = v87;
    }

    if (v88)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v88);
    }

    v89 = (8 * ((v74 - *a1) >> 3));
    *v89 = 0xCFE242268B958ADALL;
    v89[1] = "md::ls::ViewConstantDataHandle]";
    v89[2] = 30;
    v84 = (24 * v85 + 24);
    v90 = a1[1] - *a1;
    v91 = 24 * v85 - v90;
    memcpy(v89 - v90, *a1, v90);
    v92 = *a1;
    *a1 = v91;
    a1[1] = v84;
    a1[2] = 0;
    if (v92)
    {
      operator delete(v92);
    }
  }

  else
  {
    *v74 = 0xCFE242268B958ADALL;
    v74[1] = "md::ls::ViewConstantDataHandle]";
    v74[2] = 30;
    v84 = v74 + 3;
  }

  a1[1] = v84;
  v93 = a1[2];
  if (v84 >= v93)
  {
    v95 = 0xAAAAAAAAAAAAAAABLL * ((v84 - *a1) >> 3);
    if (v95 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v96 = 0xAAAAAAAAAAAAAAABLL * ((v93 - *a1) >> 3);
    v97 = 2 * v96;
    if (2 * v96 <= v95 + 1)
    {
      v97 = v95 + 1;
    }

    if (v96 >= 0x555555555555555)
    {
      v98 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v98 = v97;
    }

    if (v98)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v98);
    }

    v99 = (8 * ((v84 - *a1) >> 3));
    *v99 = 0x74DC502726E97929;
    v99[1] = "md::ls::TransformConstantDataHandle]";
    v99[2] = 35;
    v94 = (24 * v95 + 24);
    v100 = a1[1] - *a1;
    v101 = 24 * v95 - v100;
    memcpy(v99 - v100, *a1, v100);
    v102 = *a1;
    *a1 = v101;
    a1[1] = v94;
    a1[2] = 0;
    if (v102)
    {
      operator delete(v102);
    }
  }

  else
  {
    *v84 = 0x74DC502726E97929;
    v84[1] = "md::ls::TransformConstantDataHandle]";
    v84[2] = 35;
    v94 = v84 + 3;
  }

  a1[1] = v94;
  v103 = a1[2];
  if (v94 >= v103)
  {
    v105 = 0xAAAAAAAAAAAAAAABLL * ((v94 - *a1) >> 3);
    if (v105 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v106 = 0xAAAAAAAAAAAAAAABLL * ((v103 - *a1) >> 3);
    v107 = 2 * v106;
    if (2 * v106 <= v105 + 1)
    {
      v107 = v105 + 1;
    }

    if (v106 >= 0x555555555555555)
    {
      v108 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v108 = v107;
    }

    if (v108)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v108);
    }

    v109 = (8 * ((v94 - *a1) >> 3));
    *v109 = 0x71CBA64B1A9CA230;
    v109[1] = "md::ls::IndexRange]";
    v109[2] = 18;
    v104 = (24 * v105 + 24);
    v110 = a1[1] - *a1;
    v111 = 24 * v105 - v110;
    memcpy(v109 - v110, *a1, v110);
    v112 = *a1;
    *a1 = v111;
    a1[1] = v104;
    a1[2] = 0;
    if (v112)
    {
      operator delete(v112);
    }
  }

  else
  {
    *v94 = 0x71CBA64B1A9CA230;
    v94[1] = "md::ls::IndexRange]";
    v94[2] = 18;
    v104 = v94 + 3;
  }

  a1[1] = v104;
  v113 = a1[2];
  if (v104 >= v113)
  {
    v115 = 0xAAAAAAAAAAAAAAABLL * ((v104 - *a1) >> 3);
    if (v115 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v116 = 0xAAAAAAAAAAAAAAABLL * ((v113 - *a1) >> 3);
    v117 = 2 * v116;
    if (2 * v116 <= v115 + 1)
    {
      v117 = v115 + 1;
    }

    if (v116 >= 0x555555555555555)
    {
      v118 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v118 = v117;
    }

    if (v118)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v118);
    }

    v119 = (8 * ((v104 - *a1) >> 3));
    *v119 = 0x3218EFD67197A145;
    v119[1] = "md::ls::NormalsHandle]";
    v119[2] = 21;
    v114 = (24 * v115 + 24);
    v120 = a1[1] - *a1;
    v121 = 24 * v115 - v120;
    memcpy(v119 - v120, *a1, v120);
    v122 = *a1;
    *a1 = v121;
    a1[1] = v114;
    a1[2] = 0;
    if (v122)
    {
      operator delete(v122);
    }
  }

  else
  {
    *v104 = 0x3218EFD67197A145;
    v104[1] = "md::ls::NormalsHandle]";
    v104[2] = 21;
    v114 = v104 + 3;
  }

  a1[1] = v114;
  v123 = a1[2];
  if (v114 >= v123)
  {
    v125 = 0xAAAAAAAAAAAAAAABLL * ((v114 - *a1) >> 3);
    if (v125 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v126 = 0xAAAAAAAAAAAAAAABLL * ((v123 - *a1) >> 3);
    v127 = 2 * v126;
    if (2 * v126 <= v125 + 1)
    {
      v127 = v125 + 1;
    }

    if (v126 >= 0x555555555555555)
    {
      v128 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v128 = v127;
    }

    if (v128)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v128);
    }

    v129 = (8 * ((v114 - *a1) >> 3));
    *v129 = 0xAF179EFD8A4C83D4;
    v129[1] = "md::ls::InstanceTransformHandle]";
    v129[2] = 31;
    v124 = (24 * v125 + 24);
    v130 = a1[1] - *a1;
    v131 = 24 * v125 - v130;
    memcpy(v129 - v130, *a1, v130);
    v132 = *a1;
    *a1 = v131;
    a1[1] = v124;
    a1[2] = 0;
    if (v132)
    {
      operator delete(v132);
    }
  }

  else
  {
    *v114 = 0xAF179EFD8A4C83D4;
    v114[1] = "md::ls::InstanceTransformHandle]";
    v114[2] = 31;
    v124 = v114 + 3;
  }

  a1[1] = v124;
  v133 = a1[2];
  if (v124 >= v133)
  {
    v135 = 0xAAAAAAAAAAAAAAABLL * ((v124 - *a1) >> 3);
    if (v135 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v136 = 0xAAAAAAAAAAAAAAABLL * ((v133 - *a1) >> 3);
    v137 = 2 * v136;
    if (2 * v136 <= v135 + 1)
    {
      v137 = v135 + 1;
    }

    if (v136 >= 0x555555555555555)
    {
      v138 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v138 = v137;
    }

    if (v138)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v138);
    }

    v139 = (8 * ((v124 - *a1) >> 3));
    *v139 = 0xCBB77B1CBD05D7C5;
    v139[1] = "md::ls::UVsHandle]";
    v139[2] = 17;
    v134 = (24 * v135 + 24);
    v140 = a1[1] - *a1;
    v141 = 24 * v135 - v140;
    memcpy(v139 - v140, *a1, v140);
    v142 = *a1;
    *a1 = v141;
    a1[1] = v134;
    a1[2] = 0;
    if (v142)
    {
      operator delete(v142);
    }
  }

  else
  {
    *v124 = 0xCBB77B1CBD05D7C5;
    v124[1] = "md::ls::UVsHandle]";
    v124[2] = 17;
    v134 = v124 + 3;
  }

  a1[1] = v134;
  v143 = a1[2];
  if (v134 >= v143)
  {
    v145 = 0xAAAAAAAAAAAAAAABLL * ((v134 - *a1) >> 3);
    if (v145 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v146 = 0xAAAAAAAAAAAAAAABLL * ((v143 - *a1) >> 3);
    v147 = 2 * v146;
    if (2 * v146 <= v145 + 1)
    {
      v147 = v145 + 1;
    }

    if (v146 >= 0x555555555555555)
    {
      v148 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v148 = v147;
    }

    if (v148)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v148);
    }

    v149 = (8 * ((v134 - *a1) >> 3));
    *v149 = 0x499CE17DBD9A1615;
    v149[1] = "md::ls::NeedsZBias]";
    v149[2] = 18;
    v144 = (24 * v145 + 24);
    v150 = a1[1] - *a1;
    v151 = 24 * v145 - v150;
    memcpy(v149 - v150, *a1, v150);
    v152 = *a1;
    *a1 = v151;
    a1[1] = v144;
    a1[2] = 0;
    if (v152)
    {
      operator delete(v152);
    }
  }

  else
  {
    *v134 = 0x499CE17DBD9A1615;
    v134[1] = "md::ls::NeedsZBias]";
    v134[2] = 18;
    v144 = v134 + 3;
  }

  a1[1] = v144;
  v153 = a1[2];
  if (v144 >= v153)
  {
    v155 = 0xAAAAAAAAAAAAAAABLL * ((v144 - *a1) >> 3);
    if (v155 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v156 = 0xAAAAAAAAAAAAAAABLL * ((v153 - *a1) >> 3);
    v157 = 2 * v156;
    if (2 * v156 <= v155 + 1)
    {
      v157 = v155 + 1;
    }

    if (v156 >= 0x555555555555555)
    {
      v158 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v158 = v157;
    }

    if (v158)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v158);
    }

    v159 = (8 * ((v144 - *a1) >> 3));
    *v159 = 0xE53EF176130D7769;
    v159[1] = "md::ls::InstanceCount]";
    v159[2] = 21;
    v154 = (24 * v155 + 24);
    v160 = a1[1] - *a1;
    v161 = 24 * v155 - v160;
    memcpy(v159 - v160, *a1, v160);
    v162 = *a1;
    *a1 = v161;
    a1[1] = v154;
    a1[2] = 0;
    if (v162)
    {
      operator delete(v162);
    }
  }

  else
  {
    *v144 = 0xE53EF176130D7769;
    v144[1] = "md::ls::InstanceCount]";
    v144[2] = 21;
    v154 = v144 + 3;
  }

  a1[1] = v154;
  v163 = a1[2];
  if (v154 >= v163)
  {
    v165 = 0xAAAAAAAAAAAAAAABLL * ((v154 - *a1) >> 3);
    if (v165 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v166 = 0xAAAAAAAAAAAAAAABLL * ((v163 - *a1) >> 3);
    v167 = 2 * v166;
    if (2 * v166 <= v165 + 1)
    {
      v167 = v165 + 1;
    }

    if (v166 >= 0x555555555555555)
    {
      v168 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v168 = v167;
    }

    if (v168)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v168);
    }

    v169 = (8 * ((v154 - *a1) >> 3));
    *v169 = 0xD443D3DCBB78491ALL;
    v169[1] = "md::ls::ElevationHandle]";
    v169[2] = 23;
    v164 = (24 * v165 + 24);
    v170 = a1[1] - *a1;
    v171 = 24 * v165 - v170;
    memcpy(v169 - v170, *a1, v170);
    v172 = *a1;
    *a1 = v171;
    a1[1] = v164;
    a1[2] = 0;
    if (v172)
    {
      operator delete(v172);
    }
  }

  else
  {
    *v154 = 0xD443D3DCBB78491ALL;
    v154[1] = "md::ls::ElevationHandle]";
    v154[2] = 23;
    v164 = v154 + 3;
  }

  a1[1] = v164;
  v173 = a1[2];
  if (v164 >= v173)
  {
    v175 = 0xAAAAAAAAAAAAAAABLL * ((v164 - *a1) >> 3);
    if (v175 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v176 = 0xAAAAAAAAAAAAAAABLL * ((v173 - *a1) >> 3);
    v177 = 2 * v176;
    if (2 * v176 <= v175 + 1)
    {
      v177 = v175 + 1;
    }

    if (v176 >= 0x555555555555555)
    {
      v178 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v178 = v177;
    }

    if (v178)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v178);
    }

    v179 = (8 * ((v164 - *a1) >> 3));
    *v179 = 0xEAA0B82FC49F7277;
    v179[1] = "md::ls::ShadowConstantDataHandle]";
    v179[2] = 32;
    v174 = (24 * v175 + 24);
    v180 = a1[1] - *a1;
    v181 = 24 * v175 - v180;
    memcpy(v179 - v180, *a1, v180);
    v182 = *a1;
    *a1 = v181;
    a1[1] = v174;
    a1[2] = 0;
    if (v182)
    {
      operator delete(v182);
    }
  }

  else
  {
    *v164 = 0xEAA0B82FC49F7277;
    v164[1] = "md::ls::ShadowConstantDataHandle]";
    v164[2] = 32;
    v174 = v164 + 3;
  }

  a1[1] = v174;
  v183 = a1[2];
  if (v174 >= v183)
  {
    v185 = 0xAAAAAAAAAAAAAAABLL * ((v174 - *a1) >> 3);
    if (v185 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v186 = 0xAAAAAAAAAAAAAAABLL * ((v183 - *a1) >> 3);
    v187 = 2 * v186;
    if (2 * v186 <= v185 + 1)
    {
      v187 = v185 + 1;
    }

    if (v186 >= 0x555555555555555)
    {
      v188 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v188 = v187;
    }

    if (v188)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v188);
    }

    v189 = (8 * ((v174 - *a1) >> 3));
    *v189 = 0x237F9D3BCC905318;
    v189[1] = "md::ls::IsMercator]";
    v189[2] = 18;
    v184 = (24 * v185 + 24);
    v190 = a1[1] - *a1;
    v191 = 24 * v185 - v190;
    memcpy(v189 - v190, *a1, v190);
    v192 = *a1;
    *a1 = v191;
    a1[1] = v184;
    a1[2] = 0;
    if (v192)
    {
      operator delete(v192);
    }
  }

  else
  {
    *v174 = 0x237F9D3BCC905318;
    v174[1] = "md::ls::IsMercator]";
    v174[2] = 18;
    v184 = v174 + 3;
  }

  a1[1] = v184;
  v193 = a1[2];
  if (v184 >= v193)
  {
    v195 = 0xAAAAAAAAAAAAAAABLL * ((v184 - *a1) >> 3);
    if (v195 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v196 = 0xAAAAAAAAAAAAAAABLL * ((v193 - *a1) >> 3);
    v197 = 2 * v196;
    if (2 * v196 <= v195 + 1)
    {
      v197 = v195 + 1;
    }

    if (v196 >= 0x555555555555555)
    {
      v198 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v198 = v197;
    }

    if (v198)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v198);
    }

    v199 = (8 * ((v184 - *a1) >> 3));
    *v199 = 0x98A9F01DBB8BCCCELL;
    v199[1] = "md::ls::PreserveHeight]";
    v199[2] = 22;
    v194 = (24 * v195 + 24);
    v200 = a1[1] - *a1;
    v201 = 24 * v195 - v200;
    memcpy(v199 - v200, *a1, v200);
    v202 = *a1;
    *a1 = v201;
    a1[1] = v194;
    a1[2] = 0;
    if (v202)
    {
      operator delete(v202);
    }
  }

  else
  {
    *v184 = 0x98A9F01DBB8BCCCELL;
    v184[1] = "md::ls::PreserveHeight]";
    v184[2] = 22;
    v194 = v184 + 3;
  }

  a1[1] = v194;
  v203 = a1[2];
  if (v194 < v203)
  {
    *v194 = 0x7931433C9A6EB2C6;
    v194[1] = "md::ls::SharedUniqueID]";
    v194[2] = 22;
    v204 = (v194 + 3);
    goto LABEL_253;
  }

  v205 = 0xAAAAAAAAAAAAAAABLL * ((v194 - *a1) >> 3);
  if (v205 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_254:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v206 = 0xAAAAAAAAAAAAAAABLL * ((v203 - *a1) >> 3);
  v207 = 2 * v206;
  if (2 * v206 <= v205 + 1)
  {
    v207 = v205 + 1;
  }

  if (v206 >= 0x555555555555555)
  {
    v208 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v208 = v207;
  }

  if (v208)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v208);
  }

  v209 = (8 * ((v194 - *a1) >> 3));
  *v209 = 0x7931433C9A6EB2C6;
  v209[1] = "md::ls::SharedUniqueID]";
  v209[2] = 22;
  v204 = 24 * v205 + 24;
  v210 = a1[1] - *a1;
  v211 = 24 * v205 - v210;
  memcpy(v209 - v210, *a1, v210);
  v212 = *a1;
  *a1 = v211;
  a1[1] = v204;
  a1[2] = 0;
  if (v212)
  {
    operator delete(v212);
  }

LABEL_253:
  a1[1] = v204;
}

void sub_1B27A09CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PerformVisibilityTestOnRenderItem>(md::ita::PerformVisibilityTestOnRenderItem &&)::{lambda(void)#2},std::allocator<md::ita::PerformVisibilityTestOnRenderItem &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PerformVisibilityTestOnRenderItem>(md::ita::PerformVisibilityTestOnRenderItem &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0xFA77EBF8E4CA45B8;
    v10[1] = "md::ls::VisibilityGroupTest]";
    v10[2] = 27;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0xFA77EBF8E4CA45B8;
    v2[1] = "md::ls::VisibilityGroupTest]";
    v2[2] = 27;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27A0B38(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorSplined>(md::ita::PrepareFunctionConstantDescriptorSplined &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorSplined &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorSplined>(md::ita::PrepareFunctionConstantDescriptorSplined &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 3uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x237F9D3BCC905318;
    *(v9 + 8) = "md::ls::IsMercator]";
    *(v9 + 16) = 18;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x237F9D3BCC905318;
    v2[1] = "md::ls::IsMercator]";
    v2[2] = 18;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0x7087983DEF28DBFELL;
    v19[1] = "md::ls::IsOpaque]";
    v19[2] = 16;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0x7087983DEF28DBFELL;
    v4[1] = "md::ls::IsOpaque]";
    v4[2] = 16;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x73F0259EC1934FB1;
    v14[1] = "md::ls::IsTransparent]";
    v14[2] = 21;
    v24 = (v14 + 3);
    goto LABEL_37;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
  if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
  v27 = 2 * v26;
  if (2 * v26 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  if (v26 >= 0x555555555555555)
  {
    v28 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
  }

  v29 = (8 * ((v14 - *a1) >> 3));
  *v29 = 0x73F0259EC1934FB1;
  v29[1] = "md::ls::IsTransparent]";
  v29[2] = 21;
  v24 = 24 * v25 + 24;
  v30 = a1[1] - *a1;
  v31 = 24 * v25 - v30;
  memcpy(v29 - v30, *a1, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v24;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_37:
  a1[1] = v24;
}

void sub_1B27A0E7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void gdc::typelist_as_vector<std::tuple<md::ls::FunctionConstants,md::ls::FunctionConstants>>(const void **a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xC62D89929260CB56;
    *(v9 + 8) = "md::ls::FunctionConstants]";
    *(v9 + 16) = 25;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xC62D89929260CB56;
    v2[1] = "md::ls::FunctionConstants]";
    v2[2] = 25;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0xC62D89929260CB56;
    v4[1] = "md::ls::FunctionConstants]";
    v4[2] = 25;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0xC62D89929260CB56;
  v19[1] = "md::ls::FunctionConstants]";
  v19[2] = 25;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B27A10A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorSSAO>(md::ita::PrepareFunctionConstantDescriptorSSAO &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorSSAO &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorSSAO>(md::ita::PrepareFunctionConstantDescriptorSSAO &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x237F9D3BCC905318;
    *(v9 + 8) = "md::ls::IsMercator]";
    *(v9 + 16) = 18;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x237F9D3BCC905318;
    v2[1] = "md::ls::IsMercator]";
    v2[2] = 18;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0x3AC919C8A5243F9;
    v4[1] = "md::ls::StyleSSAODataKeyHandle]";
    v4[2] = 30;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0x3AC919C8A5243F9;
  v19[1] = "md::ls::StyleSSAODataKeyHandle]";
  v19[2] = 30;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B27A1308(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void gdc::typelist_as_vector<std::tuple<md::ls::FunctionConstants>>(void **a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0xC62D89929260CB56;
    v10[1] = "md::ls::FunctionConstants]";
    v10[2] = 25;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0xC62D89929260CB56;
    v2[1] = "md::ls::FunctionConstants]";
    v2[2] = 25;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27A1468(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorDualElevation>(md::ita::PrepareFunctionConstantDescriptorDualElevation &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorDualElevation &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorDualElevation>(md::ita::PrepareFunctionConstantDescriptorDualElevation &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0x8261D2F258A435BBLL;
    v10[1] = "md::ls::IsElevated]";
    v10[2] = 18;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0x8261D2F258A435BBLL;
    v2[1] = "md::ls::IsElevated]";
    v2[2] = 18;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27A15DC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorOverlay>(md::ita::PrepareFunctionConstantDescriptorOverlay &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorOverlay &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorOverlay>(md::ita::PrepareFunctionConstantDescriptorOverlay &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0xE40027D1222182B5;
    v10[1] = "md::ls::HasOverlayPatch]";
    v10[2] = 23;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0xE40027D1222182B5;
    v2[1] = "md::ls::HasOverlayPatch]";
    v2[2] = 23;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27A1750(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorGlobeLight>(md::ita::PrepareFunctionConstantDescriptorGlobeLight &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorGlobeLight &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorGlobeLight>(md::ita::PrepareFunctionConstantDescriptorGlobeLight &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0x97E77A2C4FA4C0B5;
    v10[1] = "md::ls::UseGlobeLighting]";
    v10[2] = 24;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0x97E77A2C4FA4C0B5;
    v2[1] = "md::ls::UseGlobeLighting]";
    v2[2] = 24;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}