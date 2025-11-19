double std::__function::__func<RuntimeTaskRunner,std::allocator<RuntimeTaskRunner>,void ()(gdc::Context &)>::operator()(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>(a2, 0xD60F4F992ECB1F94);
  if (v3)
  {
    v5 = v3[5];
    if (*(v5 + 8) == 0xD60F4F992ECB1F94)
    {
      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(a1 + 8);
        v8 = *(v6 + 16);
        v9 = *(v8 + 232);
        v10 = ecs2::BasicRegistry<void>::storage<ecs2::FunctionHandle>(v9);
        v11 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v10, v7, HIWORD(v7));
        v12 = v11 == v10[5] ? 0 : *(v10[7] + ((((v11 - v10[4]) >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((8 * (v11 - v10[4])) & 0x7E0);
        v13 = ecs2::BasicRegistry<void>::storage<ecs2::TaskMetadata>(v9);
        v14 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v13, v7, HIWORD(v7));
        v15 = v14 == v13[5] ? 0 : *(v13[7] + ((((v14 - v13[4]) >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 40 * (((v14 - v13[4]) >> 2) & 0x3F);
        v16 = ecs2::BasicRegistry<void>::storage<ecs2::TaskState>(v9);
        v17 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v16, v7, HIWORD(v7));
        if (v17 != v16[5])
        {
          if (v12)
          {
            if (v15)
            {
              v18 = v17 - v16[4];
              v19 = *(v16[7] + (((v18 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
              if (v19)
              {
                if ((*(v19 + (v18 >> 2)) & 1) == 0)
                {
                  ++*(v6 + 56);
                  v20 = ecs2::Runtime::_stackIndex();
                  ++*v20;
                  v21 = ecs2::Runtime::_localState();
                  v23 = v21 + 104 * v22;
                  *v23 = v6;
                  *(v23 + 8) = v24;
                  *(v23 + 10) = v25;
                  *(v23 + 12) = v26;
                  *(v23 + 16) = 0;
                  *(v23 + 24) = -65536;
                  *(v23 + 28) = 0u;
                  *(v23 + 44) = 0u;
                  *(v23 + 60) = 0u;
                  *(v23 + 76) = 0u;
                  *(v23 + 92) = 0;
                  *(v23 + 96) = v27;
                  *(*(v6 + 8) + 4096) = v27;
                  v28 = *(v15 + 32);
                  if (v28 == 1)
                  {
                    v29 = *(v15 + 4);
                    v43 = &unk_1F2A60A68;
                    v44 = v6;
                    v45 = v6;
                    v46 = &v43;
                    ecs2::Flow::visitDebugTasks(v8, v29, 2, &v43);
                    std::__function::__value_func<void ()(std::function<void ()(ecs2::ExecutionDebugTaskContext)> const&)>::~__value_func[abi:nn200100](&v43);
                    v30 = *(v6 + 48);
                    v32 = *(v6 + 24);
                    v31 = *(v6 + 32);
                    v33 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v32) >> 3);
                    if (v33 <= v30)
                    {
                      v34 = (v30 + 1);
                      v35 = v34 - v33;
                      if (v34 <= v33)
                      {
                        if (v34 < v33)
                        {
                          v37 = (v32 + 24 * v34);
                          while (v31 != v37)
                          {
                            v31 -= 3;
                            v43 = v31;
                            std::vector<std::variant<ecs2::AddComponent,ecs2::AddComponentBundle,ecs2::RemoveComponent,ecs2::DestroyEntity,ecs2::ClearComponent>>::__destroy_vector::operator()[abi:nn200100](&v43);
                          }

                          *(v6 + 32) = v37;
                        }
                      }

                      else
                      {
                        v36 = *(v6 + 40);
                        if (0xAAAAAAAAAAAAAAABLL * ((v36 - v31) >> 3) < v35)
                        {
                          if (0x5555555555555556 * ((v36 - v32) >> 3) > v34)
                          {
                            v34 = 0x5555555555555556 * ((v36 - v32) >> 3);
                          }

                          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v32) >> 3) >= 0x555555555555555)
                          {
                            v34 = 0xAAAAAAAAAAAAAAALL;
                          }

                          if (v34 <= 0xAAAAAAAAAAAAAAALL)
                          {
                            operator new();
                          }

LABEL_40:
                          std::__throw_bad_array_new_length[abi:nn200100]();
                        }

                        v38 = 24 * ((24 * v35 - 24) / 0x18) + 24;
                        bzero(*(v6 + 32), v38);
                        *(v6 + 32) = v31 + v38;
                      }

                      v30 = *(v6 + 48);
                    }

                    *(v6 + 48) = v30 + 1;
                    *(v21 + 104 * *v20 + 16) = v30;
                    v28 = *(v15 + 32);
                  }

                  if (v28 <= 1)
                  {
                    v39 = *(v12 + 24);
                    if (!v39)
                    {
                      std::__throw_bad_function_call[abi:nn200100]();
                      goto LABEL_40;
                    }

                    (*(*v39 + 48))(v39, v6);
                    if (*(v15 + 32) == 1)
                    {
                      v40 = *(v15 + 4);
                      v43 = &unk_1F2A60AB0;
                      v44 = v6;
                      v45 = v6;
                      v46 = &v43;
                      ecs2::Flow::visitDebugTasks(v8, v40, 4, &v43);
                      std::__function::__value_func<void ()(std::function<void ()(ecs2::ExecutionDebugTaskContext)> const&)>::~__value_func[abi:nn200100](&v43);
                    }
                  }

                  v41 = *v20;
                  v42 = v21 + 104 * *v20;
                  *(v42 + 6) = 0;
                  *v42 = 0;
                  *(v42 + 16) = 0;
                  *(v42 + 24) = -65536;
                  *(v42 + 96) = 0;
                  result = 0.0;
                  *(v42 + 28) = 0u;
                  *(v42 + 44) = 0u;
                  *(v42 + 60) = 0u;
                  *(v42 + 76) = 0u;
                  *(v42 + 92) = 0;
                  *v20 = v41 - 1;
                  *(*(v6 + 8) + 4096) = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void gdc::tf::Executor::invokeNode(void *a1, uint64_t a2)
{
  v45[19] = *MEMORY[0x1E69E9840];
  for (i = a1[3]; i; i = *i)
  {
    std::function<void ()(gdc::tf::Task)>::operator()(i[6], a2);
  }

  v5 = *(a2 + 64);
  if (v5 <= 2)
  {
    switch(v5)
    {
      case 0:
        goto LABEL_53;
      case 1:
        v9 = *(a2 + 24);
        if (v9)
        {
          (*(*v9 + 48))(v9);
          goto LABEL_22;
        }

LABEL_72:
        std::__throw_bad_function_call[abi:nn200100]();
        goto LABEL_73;
      case 2:
        v6 = *(a2 + 24);
        if (v6)
        {
          (*(*v6 + 48))(v6, a1[18]);
LABEL_22:
          v11 = a1[16];
          v10 = a1[17];
          if (v11 < v10)
          {
            *v11 = a2;
            v12 = (v11 + 1);
LABEL_52:
            a1[16] = v12;
            goto LABEL_53;
          }

          v14 = a1[15];
          v15 = (v11 - v14) >> 3;
          if (!((v15 + 1) >> 61))
          {
            v16 = v10 - v14;
            v17 = v16 >> 2;
            if (v16 >> 2 <= (v15 + 1))
            {
              v17 = v15 + 1;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFF8)
            {
              v18 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v17;
            }

            if (v18)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v18);
            }

            *(8 * v15) = a2;
            v12 = 8 * v15 + 8;
            v27 = a1[15];
            v28 = a1[16] - v27;
            v29 = (8 * v15 - v28);
            memcpy(v29, v27, v28);
            v30 = a1[15];
            a1[15] = v29;
            a1[16] = v12;
            a1[17] = 0;
            if (v30)
            {
              operator delete(v30);
            }

            goto LABEL_52;
          }

LABEL_73:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        goto LABEL_72;
    }

    goto LABEL_16;
  }

  if (v5 == 3)
  {
    gdc::tf::Executor::consumeGraph(a1, *a2);
    goto LABEL_53;
  }

  if (v5 == 4)
  {
    memset(buf, 0, sizeof(buf));
    LODWORD(v39[0].__locale_) = 1065353216;
    __dst[0] = buf;
    __dst[1] = (a2 + 32);
    v13 = *(a2 + 24);
    if (v13)
    {
      (*(*v13 + 48))(v13, __dst);
      gdc::tf::Executor::consumeGraph(a1, a2 + 32);
      std::__hash_table<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>>>::~__hash_table(buf);
      goto LABEL_53;
    }

    goto LABEL_72;
  }

  if (v5 != 5)
  {
LABEL_16:
    if (GEOGetGeoDisplayCoreTaskflowLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoDisplayCoreTaskflowLog::onceToken, &__block_literal_global_21_56400);
    }

    v8 = GEOGetGeoDisplayCoreTaskflowLog::log;
    if (os_log_type_enabled(GEOGetGeoDisplayCoreTaskflowLog::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "false";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/Executor.cpp";
      *&buf[22] = 1024;
      *&buf[24] = 81;
      _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_ERROR, "Unhandled node type: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }

    goto LABEL_53;
  }

  if (a1[18])
  {
    *buf = 0;
    v7 = *(a2 + 24);
    if (v7)
    {
      (*(*v7 + 48))(v7);
      goto LABEL_53;
    }

    goto LABEL_72;
  }

  if (GEOGetGeoDisplayCoreTaskflowLog::onceToken != -1)
  {
    dispatch_once(&GEOGetGeoDisplayCoreTaskflowLog::onceToken, &__block_literal_global_21_56400);
  }

  v19 = GEOGetGeoDisplayCoreTaskflowLog::log;
  if (os_log_type_enabled(GEOGetGeoDisplayCoreTaskflowLog::log, OS_LOG_TYPE_ERROR))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](buf);
    v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&buf[16], "{ id:", 5);
    MEMORY[0x1B8C61CB0](v20, *(a2 + 96));
    v21 = *(a2 + 95);
    if (v21 < 0)
    {
      v21 = *(a2 + 80);
    }

    if (v21)
    {
      v22 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&buf[16], ", name:", 7);
      v23 = *(a2 + 95);
      if (v23 >= 0)
      {
        v24 = a2 + 72;
      }

      else
      {
        v24 = *(a2 + 72);
      }

      if (v23 >= 0)
      {
        v25 = *(a2 + 95);
      }

      else
      {
        v25 = *(a2 + 80);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, v24, v25);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&buf[16], " }", 2);
    if ((v44 & 0x10) != 0)
    {
      v32 = v43;
      if (v43 < v40)
      {
        v43 = v40;
        v32 = v40;
      }

      locale = v39[4].__locale_;
    }

    else
    {
      if ((v44 & 8) == 0)
      {
        v26 = 0;
        v37 = 0;
LABEL_66:
        *(__dst + v26) = 0;
        *buf = *MEMORY[0x1E69E54D8];
        v34 = *(MEMORY[0x1E69E54D8] + 72);
        *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
        *&buf[16] = v34;
        *&buf[24] = MEMORY[0x1E69E5548] + 16;
        if (v42 < 0)
        {
          operator delete(__p);
        }

        *&buf[24] = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v39);
        std::iostream::~basic_iostream();
        MEMORY[0x1B8C620C0](v45);
        v35 = __dst;
        if (v37 < 0)
        {
          v35 = __dst[0];
        }

        *buf = 136315906;
        *&buf[4] = v35;
        *&buf[12] = 2080;
        *&buf[14] = "false";
        *&buf[22] = 2080;
        *&buf[24] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/Executor.cpp";
        LOWORD(v39[0].__locale_) = 1024;
        *(&v39[0].__locale_ + 2) = 76;
        _os_log_impl(&dword_1B2754000, v19, OS_LOG_TYPE_ERROR, "No context provided to execute node %s: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
        if (v37 < 0)
        {
          operator delete(__dst[0]);
        }

        goto LABEL_53;
      }

      locale = v39[1].__locale_;
      v32 = v39[3].__locale_;
    }

    v26 = v32 - locale;
    if ((v32 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (v26 >= 0x17)
    {
      operator new();
    }

    v37 = v32 - locale;
    if (v26)
    {
      memmove(__dst, locale, v26);
    }

    goto LABEL_66;
  }

LABEL_53:
  for (j = a1[9]; j; j = *j)
  {
    std::function<void ()(gdc::tf::Task)>::operator()(j[6], a2);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
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
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
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
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t ecs2::sparse_set<ecs2::Entity,64ul>::find(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = a1[1];
  if (v3 < (a1[2] - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && (v6 = (v5 + 4 * (a3 & 0x3F)), *v6 == a2))
  {
    return a1[4] + 4 * v6[1];
  }

  else
  {
    return a1[5];
  }
}

void std::__function::__func<ecs2::ForwardToExecute<Commit>,std::allocator<ecs2::ForwardToExecute<Commit>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
LABEL_2:
  if (v4 == v5)
  {
    *(a2 + 48) = 0;
    *(a1 + 8) = 0;
    return;
  }

  v6 = *v4;
  v7 = v4[1];
  while (1)
  {
    if (v6 == v7)
    {
      std::vector<std::variant<ecs2::AddComponent,ecs2::AddComponentBundle,ecs2::RemoveComponent,ecs2::DestroyEntity,ecs2::ClearComponent>>::clear[abi:nn200100](v4);
      v4 += 3;
      goto LABEL_2;
    }

    v8 = *(v6 + 32);
    v9 = v8 == -1 ? -1 : *(v6 + 32);
    if (v9 <= 1)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_24;
        }

        v10 = v8 == 1;
      }

      else
      {
        v10 = v8 == 0;
      }
    }

    else
    {
      switch(v9)
      {
        case 2:
          v10 = v8 == 2;
          break;
        case 3:
          v10 = v8 == 3;
          break;
        case 4:
          v10 = v8 == 4;
          break;
        default:
          goto LABEL_24;
      }
    }

    v11 = v10 ? v6 : 0;
    v12 = *(v11 + 24);
    if (!v12)
    {
      break;
    }

    (*(*v12 + 48))(v12, *(a2 + 8));
LABEL_24:
    v6 += 40;
  }

  v13 = std::__throw_bad_function_call[abi:nn200100]();
  [(VKMapView *)v13 closeLoaderConnection];
}

void *std::vector<std::variant<ecs2::AddComponent,ecs2::AddComponentBundle,ecs2::RemoveComponent,ecs2::DestroyEntity,ecs2::ClearComponent>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = v3 - 40;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        result = (off_1F2A2D268[v5])(&v6, v3 - 40);
      }

      *(v3 - 8) = -1;
      v3 -= 40;
    }

    while (v4 != v2);
  }

  v1[1] = v2;
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,geo::graph::views::VisitationState>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,geo::graph::views::VisitationState>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,geo::graph::views::VisitationState>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,geo::graph::views::VisitationState>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t a2)
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

void ggl::RenderQueue::setRenderTransaction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 144);
  *(a1 + 136) = a2;
  *(a1 + 144) = a3;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

uint64_t std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_16;
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
LABEL_16:
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
      goto LABEL_16;
    }

LABEL_10:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_10;
  }

  return 0;
}

void std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t std::__shared_ptr_pointer<ggl::RenderTransaction *,std::shared_ptr<ggl::RenderTransaction>::__shared_ptr_default_delete<ggl::RenderTransaction,ggl::RenderTransaction>,std::allocator<ggl::RenderTransaction>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v1 + 64);
    std::__function::__value_func<void ()(unsigned long,double,ggl::RenderTransactionErrorStatus)>::~__value_func[abi:nn200100](v1 + 32);
    v2 = *(v1 + 24);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

int64x2_t std::deque<geo::graph::views::TopologicalSortViewBase<geo::IntrusiveNodeGraph<gdc::tf::TaskData> const>::StackItem,std::allocator<geo::graph::views::TopologicalSortViewBase<geo::IntrusiveNodeGraph<gdc::tf::TaskData> const>::StackItem>>::emplace_front<geo::graph::views::TopologicalSortViewBase<geo::IntrusiveNodeGraph<gdc::tf::TaskData> const>::StackItem>(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    v7 = 32 * (v5 - v6) - 1;
    v8 = v5 - v6;
    if (v5 == v6)
    {
      v7 = 0;
    }

    if ((v7 - *(a1 + 40)) < 0x100)
    {
      v9 = *(a1 + 24);
      v10 = v9 - *a1;
      if (v8 < v10)
      {
        operator new();
      }

      if (v9 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v11);
    }

    *(a1 + 32) = 256;
    v16 = *(v5 - 8);
    *(a1 + 16) = v5 - 8;
    std::__split_buffer<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *,std::allocator<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *>>::emplace_front<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *&>(a1, &v16);
    v4 = *(a1 + 32);
  }

  v12 = *(a1 + 8);
  v13 = (v12 + 8 * (v4 >> 8));
  v14 = *v13 + 16 * v4;
  if (*(a1 + 16) == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4096;
  }

  *(v14 - 16) = *a2;
  result = vaddq_s64(*(a1 + 32), xmmword_1B33B15E0);
  *(a1 + 32) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned long,double,ggl::RenderTransactionErrorStatus)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t ecs2::Flow::visitDebugTasks(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 272);
  v9 = *(result + 280);
  while (v8 != v9)
  {
    if ((*v8 & a3) != 0)
    {
      v10 = *(a4 + 24);
      if (!v10)
      {
LABEL_29:
        v20 = std::__throw_bad_function_call[abi:nn200100]();
        return std::__function::__value_func<void ()(std::function<void ()(ecs2::ExecutionDebugTaskContext)> const&)>::~__value_func[abi:nn200100](v20);
      }

      result = (*(*v10 + 48))(v10, v8 + 2);
    }

    v8 += 10;
  }

  v11 = *(v7 + 304);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = a2;
      if (v11 <= a2)
      {
        v13 = a2 % *(v7 + 304);
      }
    }

    else
    {
      v13 = (v11 - 1) & a2;
    }

    v14 = *(*(v7 + 296) + 8 * v13);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == a2)
        {
          if (*(i + 8) == a2)
          {
            v17 = i[3];
            v18 = i[4];
            while (v17 != v18)
            {
              if ((*v17 & a3) != 0)
              {
                v19 = *(a4 + 24);
                if (!v19)
                {
                  goto LABEL_29;
                }

                result = (*(*v19 + 48))(v19, v17 + 2);
              }

              v17 += 5;
            }

            return result;
          }
        }

        else
        {
          if (v12.u32[0] > 1uLL)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v13)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(ecs2::ExecutionDebugTaskContext)> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::StandardPassList::~StandardPassList(md::StandardPassList *this)
{
  *this = &unk_1F2A35DC8;
  v2 = *(this + 44);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 42);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 40);
  *(this + 40) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 39);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 37);
  *(this + 37) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 26);
  *(this + 26) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 25);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 8);
  *(this + 8) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 7);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(this + 5);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  *this = &unk_1F2A36F90;
  std::unique_ptr<ggl::RenderQueue>::reset[abi:nn200100](this + 2, 0);
  std::unique_ptr<md::FrameGraph>::reset[abi:nn200100](this + 1, 0);
}

{
  md::StandardPassList::~StandardPassList(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::ita::CheckIfRenderableIsUnique::operator()(uint64_t **a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v32 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(v32 + 9);
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(v32 + 14);
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(v32 + 19);
  v40[0] = &unk_1F2A35090;
  v40[1] = &v32;
  v40[2] = a1;
  v41 = v40;
  v4 = *(a2 + 8);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueRenderArrayID>(v4);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::SharedUniqueID>(v4);
  v7 = v6;
  if (*(v6 + 40) - *(v6 + 32) >= *(v5 + 40) - *(v5 + 32))
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v8 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v37, *(v8 + 32), v9, v5, v6);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v36, v9, v9, v5, v7);
  v10 = v37;
  v35 = v39;
  v33 = v37;
  v34 = v38;
  v11 = v36;
  if (v37 == v36)
  {
    v13 = _ZTWN4ecs27Runtime11_localStateE();
    v14 = _ZTWN4ecs27Runtime11_stackIndexE();
    v15 = 0;
  }

  else
  {
    v12 = v38;
    v13 = _ZTWN4ecs27Runtime11_localStateE();
    v14 = _ZTWN4ecs27Runtime11_stackIndexE();
    v15 = 0;
    v16 = *(&v37 + 1);
    do
    {
      v17 = v10[1];
      v18 = (v17 >> 3) & 0x1FF8;
      v19 = v17 & 0x3F;
      v20 = *(*(*(v12 + 8) + v18) + 4 * v19 + 2);
      v21 = *(*(v12 + 56) + ((v20 >> 3) & 0x1FF8));
      v22 = *(*(*(*(&v12 + 1) + 8) + v18) + 4 * v19 + 2);
      v23 = *(*(*(&v12 + 1) + 56) + ((v22 >> 3) & 0x1FF8));
      *(v13 + 104 * *v14 + 24) = *v10;
      if (!v41)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v41 + 48))(v41, v21 + 8 * (v20 & 0x3F), v23 + 16 * (v22 & 0x3F));
      ++v15;
      v24 = v10 + 2;
      do
      {
        v10 = v24;
        *&v37 = v24;
        if (v24 == v16)
        {
          break;
        }

        v25 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v37, *v24, v24[1]);
        v24 = v10 + 2;
      }

      while (!v25);
    }

    while (v10 != v11);
  }

  *(v13 + 104 * *v14 + 24) = -65536;
  v26 = v13 + 104 * *v14;
  v27 = *(v26 + 92);
  *(v26 + 92) = v27 + 1;
  *(v26 + 4 * v27 + 28) = v15;
  v28 = v13 + 104 * *v14;
  v30 = *(v28 + 92);
  v29 = (v28 + 92);
  if (v30 > 0xF)
  {
    *v29 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::UniqueRenderArrayID const&,md::ls::SharedUniqueID const&)>::~__value_func[abi:nn200100](v40);
}

void md::MapEngine::prune(uint64_t a1, unsigned int a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a1 + 41640;
  md::HomeQueueScheduler::waitForSynchronization(*(a1 + 47360), "void md::MapEngine::prune(md::PruneLevel)");
  [*v4 didReceiveMemoryWarning];
  v5 = *(v4 + 32);
  if (v5)
  {
    if (*(v4 + 40) == v5)
    {
      v6 = a2;
    }

    else
    {
      v6 = 2;
    }

    (*(*v5 + 32))(v5, v6);
  }

  v7 = [*(v4 + 16) renderer];
  (*(*v7 + 16))(v7);
  v8 = *(*(a1 + 88) + 8);
  v11[0] = &unk_1F2A268B0;
  v11[1] = a1;
  LOBYTE(v12[0]) = a2;
  v12[1] = v11;
  memset(v12 + 1, 0, 7);
  geo::TaskQueue::barrierSync(v8, v11);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v11);
  md::MapEngine::updateLogicsFrequency(a1, 1, *(*(v4 + 248) + 8), 0, 0, 0);
  v9 = *(v4 + 288);
  if (*(v9 + 200) >= 2uLL)
  {
    *(v9 + 200) = 1;
  }

  v10 = 16;
  md::MapEngine::setNeedsTick(a1, &v10);
}

void sub_1B29275C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfRenderableIsUnique>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfRenderableIsUnique>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::CheckIfRenderableIsUnique::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t *ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(uint64_t **a1)
{
  v1 = a1[1];
  if (!v1)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0x41D4E9297E100630)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v1 = 0;
    }

    else
    {
      v1 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[1] = v1;
  }

  return v1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UniqueRenderArrayID>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueRenderArrayID>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueRenderArrayID>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueRenderArrayID>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueRenderArrayID>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueRenderArrayID>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueRenderArrayID>();
    unk_1EB83CFF0 = 0x4F0CC5B74BC3AC16;
    qword_1EB83CFF8 = "md::ls::UniqueRenderArrayID]";
    qword_1EB83D000 = 27;
  }
}

void *md::CartographicRenderer::prune(void *result, uint64_t a2)
{
  v2 = result[5];
  for (i = result[6]; v2 != i; ++v2)
  {
    result = *v2;
    if (*v2)
    {
      result = (*(*result + 56))(result, a2);
    }
  }

  return result;
}

void ggl::DaVinci::ScreenMesh::~ScreenMesh(ggl::DaVinci::ScreenMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueRenderArrayID>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueRenderArrayID>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[472];
}

void *md::PolygonRenderResources::prunePools(md::PolygonRenderResources *this)
{
  v2 = *(this + 22);
  v4 = *v2;
  v3 = *(v2 + 8);
  if (*v2 != v3)
  {
    do
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
        v3 = *(v2 + 8);
      }

      ++v4;
    }

    while (v4 != v3);
    v4 = *v2;
  }

  *(v2 + 8) = v4;
  v5 = *(this + 23);
  v7 = *v5;
  v6 = *(v5 + 8);
  if (*v5 != v6)
  {
    do
    {
      if (*v7)
      {
        (*(**v7 + 8))(*v7);
        v6 = *(v5 + 8);
      }

      ++v7;
    }

    while (v7 != v6);
    v7 = *v5;
  }

  *(v5 + 8) = v7;
  v8 = *(this + 24);
  v10 = *v8;
  v9 = *(v8 + 8);
  if (*v8 != v9)
  {
    do
    {
      if (*v10)
      {
        (*(**v10 + 8))(*v10);
        v9 = *(v8 + 8);
      }

      ++v10;
    }

    while (v10 != v9);
    v10 = *v8;
  }

  *(v8 + 8) = v10;
  v11 = *(this + 25);
  v13 = *v11;
  v12 = *(v11 + 8);
  if (*v11 != v12)
  {
    do
    {
      if (*v13)
      {
        (*(**v13 + 8))(*v13);
        v12 = *(v11 + 8);
      }

      ++v13;
    }

    while (v13 != v12);
    v13 = *v11;
  }

  *(v11 + 8) = v13;
  ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::shrink(*(this + 26));
  result = ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::shrink(*(this + 27));
  v15 = *(this + 28);
  v17 = *v15;
  v16 = *(v15 + 8);
  if (*v15 != v16)
  {
    do
    {
      result = *v17;
      if (*v17)
      {
        result = (*(*result + 8))(result);
        v16 = *(v15 + 8);
      }

      ++v17;
    }

    while (v17 != v16);
    v17 = *v15;
  }

  *(v15 + 8) = v17;
  v18 = *(this + 29);
  v20 = *v18;
  v19 = *(v18 + 8);
  if (*v18 != v19)
  {
    do
    {
      result = *v20;
      if (*v20)
      {
        result = (*(*result + 8))(result);
        v19 = *(v18 + 8);
      }

      ++v20;
    }

    while (v20 != v19);
    v20 = *v18;
  }

  *(v18 + 8) = v20;
  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls19UniqueRenderArrayIDEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4F280;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::ScreenVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::DaVinci::ScreenVbo>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19UniqueRenderArrayIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4F280;
  a2[1] = v2;
  return result;
}

void *md::CoastlineRenderLayer::prune(uint64_t a1)
{
  v1 = *(a1 + 368);
  ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::shrink(*(v1 + 16));
  v2 = *(v1 + 24);
  v4 = *v2;
  v3 = *(v2 + 8);
  if (*v2 != v3)
  {
    do
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
        v3 = *(v2 + 8);
      }

      ++v4;
    }

    while (v4 != v3);
    v4 = *v2;
  }

  *(v2 + 8) = v4;
  ggl::FragmentedPool<ggl::RenderItem>::shrink(*(v1 + 104));
  result = ggl::FragmentedPool<ggl::RenderItem>::shrink(*(v1 + 112));
  v6 = *v1;
  v8 = **v1;
  v7 = *(*v1 + 8);
  if (v8 != v7)
  {
    do
    {
      result = *v8;
      if (*v8)
      {
        result = (*(*result + 8))(result);
        v7 = v6[1];
      }

      ++v8;
    }

    while (v8 != v7);
    v8 = *v6;
  }

  v6[1] = v8;
  v9 = *(v1 + 8);
  v11 = *v9;
  v10 = v9[1];
  if (*v9 != v10)
  {
    do
    {
      result = *v11;
      if (*v11)
      {
        result = (*(*result + 8))(result);
        v10 = v9[1];
      }

      ++v11;
    }

    while (v11 != v10);
    v11 = *v9;
  }

  v9[1] = v11;
  return result;
}

void ggl::SamplerState::~SamplerState(ggl::SamplerState *this)
{
  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SharedUniqueID>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedUniqueID>();
    *algn_1EB83D7B8 = 0x7931433C9A6EB2C6;
    qword_1EB83D7C0 = "md::ls::SharedUniqueID]";
    qword_1EB83D7C8 = 22;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t std::__shared_ptr_pointer<ggl::SamplerState *,std::shared_ptr<ggl::SamplerState>::__shared_ptr_default_delete<ggl::SamplerState,ggl::SamplerState>,std::allocator<ggl::SamplerState>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

unsigned __int16 **ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(unsigned __int16 **a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      if (ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(a1, *v7, v7[1]))
      {
        break;
      }

      v7 += 2;
      *a1 = v7;
    }

    while (v7 != a3);
  }

  return a1;
}

void *ggl::FragmentedPool<ggl::RenderItem>::shrink(void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    do
    {
      result = *v3;
      if (*v3)
      {
        result = (*(*result + 8))(result);
        v2 = v1[1];
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *v1;
  }

  v1[1] = v3;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::UniqueRenderArrayID const&,md::ls::SharedUniqueID const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *md::BuildingRenderResources::resetPools(md::BuildingRenderResources *this)
{
  v1 = *(this + 60);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v271 = this;
  if (v2 == v3)
  {
    v19 = this;
  }

  else
  {
    v4 = *(v1 + 8);
    do
    {
      v5 = *v2;
      v6 = *(v1 + 16);
      if (v4 >= v6)
      {
        v7 = (v4 - *v1) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v8 = v6 - *v1;
        v9 = v8 >> 2;
        if (v8 >> 2 <= (v7 + 1))
        {
          v9 = v7 + 1;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        v276 = v1 + 24;
        if (v10)
        {
          v11 = ggl::zone_mallocator::instance(this);
          v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingFlat::CompressedMeshPipelineSetup *>(v11, v10);
        }

        else
        {
          v12 = 0;
        }

        v14 = &v12[8 * v10];
        v13 = &v12[8 * v7];
        *v13 = v5;
        v4 = v13 + 8;
        v15 = *(v1 + 8) - *v1;
        v16 = &v13[-v15];
        memcpy(&v13[-v15], *v1, v15);
        v17 = *v1;
        *v1 = v16;
        v272 = v17;
        v273 = v17;
        *(v1 + 8) = v4;
        v274 = v17;
        v18 = *(v1 + 16);
        *(v1 + 16) = v14;
        v275 = v18;
        this = std::__split_buffer<ggl::BuildingFlat::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingFlat::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v272);
      }

      else
      {
        *v4++ = v5;
      }

      *(v1 + 8) = v4;
      ++v2;
    }

    while (v2 != v3);
    v2 = *(v1 + 32);
    v3 = *(v1 + 40);
    v19 = v271;
  }

  if (v2 != v3)
  {
    *(v1 + 40) = v2;
  }

  v20 = *(v19 + 61);
  v21 = *(v20 + 32);
  v22 = *(v20 + 40);
  if (v21 != v22)
  {
    v23 = *(v20 + 8);
    do
    {
      v24 = *v21;
      v25 = *(v20 + 16);
      if (v23 >= v25)
      {
        v26 = (v23 - *v20) >> 3;
        if ((v26 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v27 = v25 - *v20;
        v28 = v27 >> 2;
        if (v27 >> 2 <= (v26 + 1))
        {
          v28 = v26 + 1;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v28;
        }

        v276 = v20 + 24;
        if (v29)
        {
          v30 = ggl::zone_mallocator::instance(this);
          v31 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingFacadeDepth::BuildingPipelineSetup *>(v30, v29);
        }

        else
        {
          v31 = 0;
        }

        v33 = &v31[8 * v29];
        v32 = &v31[8 * v26];
        *v32 = v24;
        v23 = v32 + 8;
        v34 = *(v20 + 8) - *v20;
        v35 = &v32[-v34];
        memcpy(&v32[-v34], *v20, v34);
        v36 = *v20;
        *v20 = v35;
        v272 = v36;
        v273 = v36;
        *(v20 + 8) = v23;
        v274 = v36;
        v37 = *(v20 + 16);
        *(v20 + 16) = v33;
        v275 = v37;
        this = std::__split_buffer<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v272);
      }

      else
      {
        *v23++ = v24;
      }

      *(v20 + 8) = v23;
      ++v21;
    }

    while (v21 != v22);
    v21 = *(v20 + 32);
    v22 = *(v20 + 40);
    v19 = v271;
  }

  if (v21 != v22)
  {
    *(v20 + 40) = v21;
  }

  v38 = *(v19 + 62);
  v39 = *(v38 + 32);
  v40 = *(v38 + 40);
  if (v39 != v40)
  {
    v41 = *(v38 + 8);
    do
    {
      v42 = *v39;
      v43 = *(v38 + 16);
      if (v41 >= v43)
      {
        v44 = (v41 - *v38) >> 3;
        if ((v44 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v45 = v43 - *v38;
        v46 = v45 >> 2;
        if (v45 >> 2 <= (v44 + 1))
        {
          v46 = v44 + 1;
        }

        if (v45 >= 0x7FFFFFFFFFFFFFF8)
        {
          v47 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v47 = v46;
        }

        v276 = v38 + 24;
        if (v47)
        {
          v48 = ggl::zone_mallocator::instance(this);
          v49 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *>(v48, v47);
        }

        else
        {
          v49 = 0;
        }

        v51 = &v49[8 * v47];
        v50 = &v49[8 * v44];
        *v50 = v42;
        v41 = v50 + 8;
        v52 = *(v38 + 8) - *v38;
        v53 = &v50[-v52];
        memcpy(&v50[-v52], *v38, v52);
        v54 = *v38;
        *v38 = v53;
        v272 = v54;
        v273 = v54;
        *(v38 + 8) = v41;
        v274 = v54;
        v55 = *(v38 + 16);
        *(v38 + 16) = v51;
        v275 = v55;
        this = std::__split_buffer<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v272);
      }

      else
      {
        *v41++ = v42;
      }

      *(v38 + 8) = v41;
      ++v39;
    }

    while (v39 != v40);
    v39 = *(v38 + 32);
    v40 = *(v38 + 40);
    v19 = v271;
  }

  if (v39 != v40)
  {
    *(v38 + 40) = v39;
  }

  v56 = *(v19 + 63);
  v57 = *(v56 + 32);
  v58 = *(v56 + 40);
  if (v57 != v58)
  {
    v59 = *(v56 + 8);
    do
    {
      v60 = *v57;
      v61 = *(v56 + 16);
      if (v59 >= v61)
      {
        v62 = (v59 - *v56) >> 3;
        if ((v62 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v63 = v61 - *v56;
        v64 = v63 >> 2;
        if (v63 >> 2 <= (v62 + 1))
        {
          v64 = v62 + 1;
        }

        if (v63 >= 0x7FFFFFFFFFFFFFF8)
        {
          v65 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v65 = v64;
        }

        v276 = v56 + 24;
        if (v65)
        {
          v66 = ggl::zone_mallocator::instance(this);
          v67 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *>(v66, v65);
        }

        else
        {
          v67 = 0;
        }

        v69 = &v67[8 * v65];
        v68 = &v67[8 * v62];
        *v68 = v60;
        v59 = v68 + 8;
        v70 = *(v56 + 8) - *v56;
        v71 = &v68[-v70];
        memcpy(&v68[-v70], *v56, v70);
        v72 = *v56;
        *v56 = v71;
        v272 = v72;
        v273 = v72;
        *(v56 + 8) = v59;
        v274 = v72;
        v73 = *(v56 + 16);
        *(v56 + 16) = v69;
        v275 = v73;
        this = std::__split_buffer<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v272);
      }

      else
      {
        *v59++ = v60;
      }

      *(v56 + 8) = v59;
      ++v57;
    }

    while (v57 != v58);
    v57 = *(v56 + 32);
    v58 = *(v56 + 40);
    v19 = v271;
  }

  if (v57 != v58)
  {
    *(v56 + 40) = v57;
  }

  v74 = *(v19 + 64);
  v75 = *(v74 + 32);
  v76 = *(v74 + 40);
  if (v75 != v76)
  {
    v77 = *(v74 + 8);
    do
    {
      v78 = *v75;
      v79 = *(v74 + 16);
      if (v77 >= v79)
      {
        v80 = (v77 - *v74) >> 3;
        if ((v80 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v81 = v79 - *v74;
        v82 = v81 >> 2;
        if (v81 >> 2 <= (v80 + 1))
        {
          v82 = v80 + 1;
        }

        if (v81 >= 0x7FFFFFFFFFFFFFF8)
        {
          v83 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v83 = v82;
        }

        v276 = v74 + 24;
        if (v83)
        {
          v84 = ggl::zone_mallocator::instance(this);
          v85 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseBuilding::BuildingPipelineSetup *>(v84, v83);
        }

        else
        {
          v85 = 0;
        }

        v87 = &v85[8 * v83];
        v86 = &v85[8 * v80];
        *v86 = v78;
        v77 = v86 + 8;
        v88 = *(v74 + 8) - *v74;
        v89 = &v86[-v88];
        memcpy(&v86[-v88], *v74, v88);
        v90 = *v74;
        *v74 = v89;
        v272 = v90;
        v273 = v90;
        *(v74 + 8) = v77;
        v274 = v90;
        v91 = *(v74 + 16);
        *(v74 + 16) = v87;
        v275 = v91;
        this = std::__split_buffer<ggl::DiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v272);
      }

      else
      {
        *v77++ = v78;
      }

      *(v74 + 8) = v77;
      ++v75;
    }

    while (v75 != v76);
    v75 = *(v74 + 32);
    v76 = *(v74 + 40);
    v19 = v271;
  }

  if (v75 != v76)
  {
    *(v74 + 40) = v75;
  }

  v92 = *(v19 + 66);
  v93 = *(v92 + 32);
  v94 = *(v92 + 40);
  if (v93 != v94)
  {
    v95 = *(v92 + 8);
    do
    {
      v96 = *v93;
      v97 = *(v92 + 16);
      if (v95 >= v97)
      {
        v98 = (v95 - *v92) >> 3;
        if ((v98 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v99 = v97 - *v92;
        v100 = v99 >> 2;
        if (v99 >> 2 <= (v98 + 1))
        {
          v100 = v98 + 1;
        }

        if (v99 >= 0x7FFFFFFFFFFFFFF8)
        {
          v101 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v101 = v100;
        }

        v276 = v92 + 24;
        if (v101)
        {
          v102 = ggl::zone_mallocator::instance(this);
          v103 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *>(v102, v101);
        }

        else
        {
          v103 = 0;
        }

        v105 = &v103[8 * v101];
        v104 = &v103[8 * v98];
        *v104 = v96;
        v95 = v104 + 8;
        v106 = *(v92 + 8) - *v92;
        v107 = &v104[-v106];
        memcpy(&v104[-v106], *v92, v106);
        v108 = *v92;
        *v92 = v107;
        v272 = v108;
        v273 = v108;
        *(v92 + 8) = v95;
        v274 = v108;
        v109 = *(v92 + 16);
        *(v92 + 16) = v105;
        v275 = v109;
        this = std::__split_buffer<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v272);
      }

      else
      {
        *v95++ = v96;
      }

      *(v92 + 8) = v95;
      ++v93;
    }

    while (v93 != v94);
    v93 = *(v92 + 32);
    v94 = *(v92 + 40);
    v19 = v271;
  }

  if (v93 != v94)
  {
    *(v92 + 40) = v93;
  }

  if (*(v19 + 772) == 1)
  {
    v110 = *(v19 + 70);
    v111 = *(v110 + 32);
    v112 = *(v110 + 40);
    if (v111 != v112)
    {
      v113 = *(v110 + 8);
      do
      {
        v114 = *v111;
        v115 = *(v110 + 16);
        if (v113 >= v115)
        {
          v116 = (v113 - *v110) >> 3;
          if ((v116 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v117 = v115 - *v110;
          v118 = v117 >> 2;
          if (v117 >> 2 <= (v116 + 1))
          {
            v118 = v116 + 1;
          }

          if (v117 >= 0x7FFFFFFFFFFFFFF8)
          {
            v119 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v119 = v118;
          }

          v276 = v110 + 24;
          if (v119)
          {
            v120 = ggl::zone_mallocator::instance(this);
            v121 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *>(v120, v119);
          }

          else
          {
            v121 = 0;
          }

          v123 = &v121[8 * v119];
          v122 = &v121[8 * v116];
          *v122 = v114;
          v113 = v122 + 8;
          v124 = *(v110 + 8) - *v110;
          v125 = &v122[-v124];
          memcpy(&v122[-v124], *v110, v124);
          v126 = *v110;
          *v110 = v125;
          v272 = v126;
          v273 = v126;
          *(v110 + 8) = v113;
          v274 = v126;
          v127 = *(v110 + 16);
          *(v110 + 16) = v123;
          v275 = v127;
          this = std::__split_buffer<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v272);
        }

        else
        {
          *v113++ = v114;
        }

        *(v110 + 8) = v113;
        ++v111;
      }

      while (v111 != v112);
      v111 = *(v110 + 32);
      v112 = *(v110 + 40);
      v19 = v271;
    }

    if (v111 != v112)
    {
      *(v110 + 40) = v111;
    }

    v128 = *(v19 + 72);
    v129 = *(v128 + 32);
    v130 = *(v128 + 40);
    if (v129 != v130)
    {
      v131 = *(v128 + 8);
      do
      {
        v132 = *v129;
        v133 = *(v128 + 16);
        if (v131 >= v133)
        {
          v134 = (v131 - *v128) >> 3;
          if ((v134 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v135 = v133 - *v128;
          v136 = v135 >> 2;
          if (v135 >> 2 <= (v134 + 1))
          {
            v136 = v134 + 1;
          }

          if (v135 >= 0x7FFFFFFFFFFFFFF8)
          {
            v137 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v137 = v136;
          }

          v276 = v128 + 24;
          if (v137)
          {
            v138 = ggl::zone_mallocator::instance(this);
            v139 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *>(v138, v137);
          }

          else
          {
            v139 = 0;
          }

          v141 = &v139[8 * v137];
          v140 = &v139[8 * v134];
          *v140 = v132;
          v131 = v140 + 8;
          v142 = *(v128 + 8) - *v128;
          v143 = &v140[-v142];
          memcpy(&v140[-v142], *v128, v142);
          v144 = *v128;
          *v128 = v143;
          v272 = v144;
          v273 = v144;
          *(v128 + 8) = v131;
          v274 = v144;
          v145 = *(v128 + 16);
          *(v128 + 16) = v141;
          v275 = v145;
          this = std::__split_buffer<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v272);
        }

        else
        {
          *v131++ = v132;
        }

        *(v128 + 8) = v131;
        ++v129;
      }

      while (v129 != v130);
      v129 = *(v128 + 32);
      v130 = *(v128 + 40);
      v19 = v271;
    }

    if (v129 != v130)
    {
      *(v128 + 40) = v129;
    }

    v146 = *(v19 + 73);
    v147 = *(v146 + 32);
    v148 = *(v146 + 40);
    if (v147 != v148)
    {
      v149 = *(v146 + 8);
      do
      {
        v150 = *v147;
        v151 = *(v146 + 16);
        if (v149 >= v151)
        {
          v152 = (v149 - *v146) >> 3;
          if ((v152 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v153 = v151 - *v146;
          v154 = v153 >> 2;
          if (v153 >> 2 <= (v152 + 1))
          {
            v154 = v152 + 1;
          }

          if (v153 >= 0x7FFFFFFFFFFFFFF8)
          {
            v155 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v155 = v154;
          }

          v276 = v146 + 24;
          if (v155)
          {
            v156 = ggl::zone_mallocator::instance(this);
            v157 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *>(v156, v155);
          }

          else
          {
            v157 = 0;
          }

          v159 = &v157[8 * v155];
          v158 = &v157[8 * v152];
          *v158 = v150;
          v149 = v158 + 8;
          v160 = *(v146 + 8) - *v146;
          v161 = &v158[-v160];
          memcpy(&v158[-v160], *v146, v160);
          v162 = *v146;
          *v146 = v161;
          v272 = v162;
          v273 = v162;
          *(v146 + 8) = v149;
          v274 = v162;
          v163 = *(v146 + 16);
          *(v146 + 16) = v159;
          v275 = v163;
          this = std::__split_buffer<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v272);
        }

        else
        {
          *v149++ = v150;
        }

        *(v146 + 8) = v149;
        ++v147;
      }

      while (v147 != v148);
LABEL_214:
      v147 = *(v146 + 32);
      v148 = *(v146 + 40);
      v19 = v271;
    }
  }

  else
  {
    v164 = *(v19 + 65);
    v165 = *(v164 + 32);
    v166 = *(v164 + 40);
    if (v165 != v166)
    {
      v167 = *(v164 + 8);
      do
      {
        v168 = *v165;
        v169 = *(v164 + 16);
        if (v167 >= v169)
        {
          v170 = (v167 - *v164) >> 3;
          if ((v170 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v171 = v169 - *v164;
          v172 = v171 >> 2;
          if (v171 >> 2 <= (v170 + 1))
          {
            v172 = v170 + 1;
          }

          if (v171 >= 0x7FFFFFFFFFFFFFF8)
          {
            v173 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v173 = v172;
          }

          v276 = v164 + 24;
          if (v173)
          {
            v174 = ggl::zone_mallocator::instance(this);
            v175 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *>(v174, v173);
          }

          else
          {
            v175 = 0;
          }

          v177 = &v175[8 * v173];
          v176 = &v175[8 * v170];
          *v176 = v168;
          v167 = v176 + 8;
          v178 = *(v164 + 8) - *v164;
          v179 = &v176[-v178];
          memcpy(&v176[-v178], *v164, v178);
          v180 = *v164;
          *v164 = v179;
          v272 = v180;
          v273 = v180;
          *(v164 + 8) = v167;
          v274 = v180;
          v181 = *(v164 + 16);
          *(v164 + 16) = v177;
          v275 = v181;
          this = std::__split_buffer<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v272);
        }

        else
        {
          *v167++ = v168;
        }

        *(v164 + 8) = v167;
        ++v165;
      }

      while (v165 != v166);
      v165 = *(v164 + 32);
      v166 = *(v164 + 40);
      v19 = v271;
    }

    if (v165 != v166)
    {
      *(v164 + 40) = v165;
    }

    v182 = *(v19 + 67);
    v183 = *(v182 + 32);
    v184 = *(v182 + 40);
    if (v183 != v184)
    {
      v185 = *(v182 + 8);
      do
      {
        v186 = *v183;
        v187 = *(v182 + 16);
        if (v185 >= v187)
        {
          v188 = (v185 - *v182) >> 3;
          if ((v188 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v189 = v187 - *v182;
          v190 = v189 >> 2;
          if (v189 >> 2 <= (v188 + 1))
          {
            v190 = v188 + 1;
          }

          if (v189 >= 0x7FFFFFFFFFFFFFF8)
          {
            v191 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v191 = v190;
          }

          v276 = v182 + 24;
          if (v191)
          {
            v192 = ggl::zone_mallocator::instance(this);
            v193 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *>(v192, v191);
          }

          else
          {
            v193 = 0;
          }

          v195 = &v193[8 * v191];
          v194 = &v193[8 * v188];
          *v194 = v186;
          v185 = v194 + 8;
          v196 = *(v182 + 8) - *v182;
          v197 = &v194[-v196];
          memcpy(&v194[-v196], *v182, v196);
          v198 = *v182;
          *v182 = v197;
          v272 = v198;
          v273 = v198;
          *(v182 + 8) = v185;
          v274 = v198;
          v199 = *(v182 + 16);
          *(v182 + 16) = v195;
          v275 = v199;
          this = std::__split_buffer<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v272);
        }

        else
        {
          *v185++ = v186;
        }

        *(v182 + 8) = v185;
        ++v183;
      }

      while (v183 != v184);
      v183 = *(v182 + 32);
      v184 = *(v182 + 40);
      v19 = v271;
    }

    if (v183 != v184)
    {
      *(v182 + 40) = v183;
    }

    v146 = *(v19 + 68);
    v147 = *(v146 + 32);
    v148 = *(v146 + 40);
    if (v147 != v148)
    {
      v200 = *(v146 + 8);
      do
      {
        v201 = *v147;
        v202 = *(v146 + 16);
        if (v200 >= v202)
        {
          v203 = (v200 - *v146) >> 3;
          if ((v203 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v204 = v202 - *v146;
          v205 = v204 >> 2;
          if (v204 >> 2 <= (v203 + 1))
          {
            v205 = v203 + 1;
          }

          if (v204 >= 0x7FFFFFFFFFFFFFF8)
          {
            v206 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v206 = v205;
          }

          v276 = v146 + 24;
          if (v206)
          {
            v207 = ggl::zone_mallocator::instance(this);
            v208 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *>(v207, v206);
          }

          else
          {
            v208 = 0;
          }

          v210 = &v208[8 * v206];
          v209 = &v208[8 * v203];
          *v209 = v201;
          v200 = v209 + 8;
          v211 = *(v146 + 8) - *v146;
          v212 = &v209[-v211];
          memcpy(&v209[-v211], *v146, v211);
          v213 = *v146;
          *v146 = v212;
          v272 = v213;
          v273 = v213;
          *(v146 + 8) = v200;
          v274 = v213;
          v214 = *(v146 + 16);
          *(v146 + 16) = v210;
          v275 = v214;
          this = std::__split_buffer<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v272);
        }

        else
        {
          *v200++ = v201;
        }

        *(v146 + 8) = v200;
        ++v147;
      }

      while (v147 != v148);
      goto LABEL_214;
    }
  }

  if (v147 != v148)
  {
    *(v146 + 40) = v147;
  }

  v215 = ggl::FragmentedPool<ggl::RenderItem>::pushAll(*(v19 + 93));
  if (*(v19 + 770) == 1)
  {
    v216 = *(v19 + 74);
    v217 = *(v216 + 32);
    v218 = *(v216 + 40);
    if (v217 != v218)
    {
      v219 = *(v216 + 8);
      do
      {
        v220 = *v217;
        v221 = *(v216 + 16);
        if (v219 >= v221)
        {
          v222 = (v219 - *v216) >> 3;
          if ((v222 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v223 = v221 - *v216;
          v224 = v223 >> 2;
          if (v223 >> 2 <= (v222 + 1))
          {
            v224 = v222 + 1;
          }

          if (v223 >= 0x7FFFFFFFFFFFFFF8)
          {
            v225 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v225 = v224;
          }

          v276 = v216 + 24;
          if (v225)
          {
            v226 = ggl::zone_mallocator::instance(v215);
            v227 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingShadow::MeshPipelineSetup *>(v226, v225);
          }

          else
          {
            v227 = 0;
          }

          v229 = &v227[8 * v225];
          v228 = &v227[8 * v222];
          *v228 = v220;
          v219 = v228 + 8;
          v230 = *(v216 + 8) - *v216;
          v231 = &v228[-v230];
          memcpy(&v228[-v230], *v216, v230);
          v232 = *v216;
          *v216 = v231;
          v272 = v232;
          v273 = v232;
          *(v216 + 8) = v219;
          v274 = v232;
          v233 = *(v216 + 16);
          *(v216 + 16) = v229;
          v275 = v233;
          v215 = std::__split_buffer<ggl::BuildingShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingShadow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v272);
        }

        else
        {
          *v219++ = v220;
        }

        *(v216 + 8) = v219;
        ++v217;
      }

      while (v217 != v218);
      v217 = *(v216 + 32);
      v218 = *(v216 + 40);
      v19 = v271;
    }

    if (v217 != v218)
    {
      *(v216 + 40) = v217;
    }

    v215 = ggl::FragmentedPool<ggl::RenderItem>::pushAll(*(v19 + 94));
  }

  if (*(v19 + 768) == 1)
  {
    v234 = *(v19 + 59);
    v235 = *(v234 + 32);
    v236 = *(v234 + 40);
    if (v235 != v236)
    {
      v237 = *(v234 + 8);
      do
      {
        v238 = *v235;
        v239 = *(v234 + 16);
        if (v237 >= v239)
        {
          v240 = (v237 - *v234) >> 3;
          if ((v240 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v241 = v239 - *v234;
          v242 = v241 >> 2;
          if (v241 >> 2 <= (v240 + 1))
          {
            v242 = v240 + 1;
          }

          if (v241 >= 0x7FFFFFFFFFFFFFF8)
          {
            v243 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v243 = v242;
          }

          v276 = v234 + 24;
          if (v243)
          {
            v244 = ggl::zone_mallocator::instance(v215);
            v245 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *>(v244, v243);
          }

          else
          {
            v245 = 0;
          }

          v247 = &v245[8 * v243];
          v246 = &v245[8 * v240];
          *v246 = v238;
          v237 = v246 + 8;
          v248 = *(v234 + 8) - *v234;
          v249 = &v246[-v248];
          memcpy(&v246[-v248], *v234, v248);
          v250 = *v234;
          *v234 = v249;
          v272 = v250;
          v273 = v250;
          *(v234 + 8) = v237;
          v274 = v250;
          v251 = *(v234 + 16);
          *(v234 + 16) = v247;
          v275 = v251;
          v215 = std::__split_buffer<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *,geo::allocator_adapter<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v272);
        }

        else
        {
          *v237++ = v238;
        }

        *(v234 + 8) = v237;
        ++v235;
      }

      while (v235 != v236);
      v235 = *(v234 + 32);
      v236 = *(v234 + 40);
      v19 = v271;
    }

    if (v235 != v236)
    {
      *(v234 + 40) = v235;
    }
  }

  if (*(v19 + 769) == 1)
  {
    v252 = *(v19 + 75);
    v253 = *(v252 + 32);
    v254 = *(v252 + 40);
    if (v253 != v254)
    {
      v255 = *(v252 + 8);
      do
      {
        v256 = *v253;
        v257 = *(v252 + 16);
        if (v255 >= v257)
        {
          v258 = (v255 - *v252) >> 3;
          if ((v258 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v259 = v257 - *v252;
          v260 = v259 >> 2;
          if (v259 >> 2 <= (v258 + 1))
          {
            v260 = v258 + 1;
          }

          if (v259 >= 0x7FFFFFFFFFFFFFF8)
          {
            v261 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v261 = v260;
          }

          v276 = v252 + 24;
          if (v261)
          {
            v262 = ggl::zone_mallocator::instance(v215);
            v263 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *>(v262, v261);
          }

          else
          {
            v263 = 0;
          }

          v265 = &v263[8 * v261];
          v264 = &v263[8 * v258];
          *v264 = v256;
          v255 = v264 + 8;
          v266 = *(v252 + 8) - *v252;
          v267 = &v264[-v266];
          memcpy(&v264[-v266], *v252, v266);
          v268 = *v252;
          *v252 = v267;
          v272 = v268;
          v273 = v268;
          *(v252 + 8) = v255;
          v274 = v268;
          v269 = *(v252 + 16);
          *(v252 + 16) = v265;
          v275 = v269;
          v215 = std::__split_buffer<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,geo::allocator_adapter<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v272);
        }

        else
        {
          *v255++ = v256;
        }

        *(v252 + 8) = v255;
        ++v253;
      }

      while (v253 != v254);
      v253 = *(v252 + 32);
      v254 = *(v252 + 40);
      v19 = v271;
    }

    if (v253 != v254)
    {
      *(v252 + 40) = v253;
    }

    ggl::FragmentedPool<ggl::RenderItem>::pushAll(*(v19 + 92));
  }

  ggl::Batcher::reset((v19 + 784));

  return md::RenderItemPool::reset(v19 + 108);
}

void ggl::RenderQueue::~RenderQueue(ggl::RenderQueue *this)
{
  v2 = *(this + 13);
  v3 = *(this + 14);
  while (v2 != v3)
  {
    if (*v2)
    {
      *(*v2 + 24) = 0;
    }

    v2 += 8;
  }

  if (*(this + 311) < 0)
  {
    operator delete(*(this + 36));
  }

  std::vector<ggl::Texture *,geo::allocator_adapter<ggl::Texture *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 248));
  std::vector<ggl::Texture *,geo::allocator_adapter<ggl::Texture *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 216));
  std::vector<ggl::Texture *,geo::allocator_adapter<ggl::Texture *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 184));
  std::vector<ggl::Buffer *,geo::allocator_adapter<ggl::Buffer *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 152));
  v4 = *(this + 18);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 14) = v5;
    v6 = ggl::zone_mallocator::instance(v4);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Texture *>(v6, v5);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    v8 = ggl::zone_mallocator::instance(v4);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ShaderLibrary::ComputeShaderEntry>(v8, v7);
  }
}

ggl::zone_mallocator *md::BuildingRenderLayer::prune(uint64_t a1)
{
  md::BuildingRenderResources::resetPools(*(a1 + 392));
  v2 = *(a1 + 400);

  return md::LandmarkRenderResources::resetPools(v2);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignRenderOrder>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignRenderOrder>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignRenderOrder::operator()((a1 + 8), a2, a2, a2, a2, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t md::ita::AssignRenderOrder::operator()(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v260 = *MEMORY[0x1E69E9840];
  v241 = ecs2::ExecutionTask<md::MaterialResourceStore *>::service<md::MaterialResourceStore>(a1);
  v248[0] = &unk_1F2A3F510;
  v249 = v248;
  v8 = *(a2 + 8);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::IsDecal>(v8);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(v8);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::RenderOrderToUse>(v8);
  *&v255 = v9;
  *(&v255 + 1) = v10;
  v12 = 8;
  v13 = v9;
  v14 = &v255;
  *&v256 = v11;
  do
  {
    if (*(*(&v255 + v12) + 40) - *(*(&v255 + v12) + 32) < *(v13 + 40) - *(v13 + 32))
    {
      v13 = *(&v255 + v12);
      v14 = &v255 + v12;
    }

    v12 += 8;
  }

  while (v12 != 24);
  v16 = *(*v14 + 32);
  v15 = *(*v14 + 40);
  *&v255 = v16;
  *(&v255 + 1) = v15;
  *&v256 = v9;
  *(&v256 + 1) = v10;
  *&v257 = v11;
  while (v16 != v15 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v255, *v16, v16[1]))
  {
    v16 += 2;
    *&v255 = v16;
  }

  v250 = v255;
  v251 = v256;
  v252 = v257;
  v17 = v255;
  if (v255 == v15)
  {
    v38 = _ZTWN4ecs27Runtime11_localStateE();
    v21 = _ZTWN4ecs27Runtime11_stackIndexE();
    v22 = 0;
  }

  else
  {
    v239 = a2;
    v18 = v251;
    v19 = v252;
    v20 = _ZTWN4ecs27Runtime11_localStateE();
    v21 = _ZTWN4ecs27Runtime11_stackIndexE();
    v22 = 0;
    v23 = *(&v250 + 1);
    do
    {
      v24 = *(v18 + 32);
      v25 = v17[1];
      v26 = v25 & 0x3F;
      v27 = (v25 >> 3) & 0x1FF8;
      v28 = *(*(v18 + 8) + v27) + 4 * v26;
      v29 = *(*(*(*(&v18 + 1) + 8) + v27) + 4 * v26 + 2);
      v30 = *(*(*(&v18 + 1) + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v19 + 8) + v27) + 4 * v26 + 2);
      v32 = *(*(v19 + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(v28 + 2);
      *(v20 + 104 * *v21 + 24) = *v17;
      if (!v249)
      {
LABEL_164:
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v249 + 48))(v249, v24 + 4 * v33, v30 + 24 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v22;
      v34 = v17 + 2;
      while (1)
      {
        v17 = v34;
        *&v250 = v34;
        if (v34 == v23)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v250, *v34, v34[1]);
        v34 = v17 + 2;
        if (v35)
        {
          v36 = v17;
          goto LABEL_17;
        }
      }

      v36 = v23;
LABEL_17:
      ;
    }

    while (v36 != v15);
    v37 = *(v239 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>();
    *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>(void)::metadata) = *(v37 + 4096);
    v38 = v20;
  }

  *(v38 + 104 * *v21 + 24) = -65536;
  v39 = v38 + 104 * *v21;
  v40 = *(v39 + 92);
  *(v39 + 92) = v40 + 1;
  *(v39 + 4 * v40 + 28) = v22;
  v240 = v21;
  v41 = v38 + 104 * *v21;
  v43 = *(v41 + 92);
  v42 = (v41 + 92);
  if (v43 >= 0x10)
  {
    *v42 = 0;
  }

  std::__function::__value_func<void ()(md::ls::IsDecal const&,md::ls::RenderItemID const&,md::ls::RenderOrderToUse &)>::~__value_func[abi:nn200100](v248);
  v248[0] = &unk_1F2A3F558;
  v249 = v248;
  v44 = *(a3 + 8);
  v45 = ecs2::BasicRegistry<void>::storage<md::ls::IsMaterial>(v44);
  v46 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(v44);
  v47 = ecs2::BasicRegistry<void>::storage<md::ls::CustomZIndex>(v44);
  v48 = ecs2::BasicRegistry<void>::storage<md::ls::IsOpaque>(v44);
  v49 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableHash>(v44);
  v50 = ecs2::BasicRegistry<void>::storage<md::ls::RenderOrderToUse>(v44);
  *&v255 = v45;
  *(&v255 + 1) = v46;
  *&v256 = v47;
  *(&v256 + 1) = v49;
  v51 = 8;
  v52 = v45;
  v53 = &v255;
  *&v257 = v50;
  do
  {
    if (*(*(&v255 + v51) + 40) - *(*(&v255 + v51) + 32) < *(v52 + 40) - *(v52 + 32))
    {
      v52 = *(&v255 + v51);
      v53 = &v255 + v51;
    }

    v51 += 8;
  }

  while (v51 != 40);
  v238 = v38;
  v54 = *(*v53 + 32);
  v55 = *(*v53 + 40);
  *&v255 = v54;
  *(&v255 + 1) = v55;
  *&v256 = v45;
  *(&v256 + 1) = v46;
  *&v257 = v47;
  *(&v257 + 1) = v48;
  *&v258 = v49;
  *(&v258 + 1) = v50;
  while (v54 != v55 && !ecs2::ViewIterator<void,std::tuple<md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::CustomZIndex const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &>,std::tuple<>>::containsAll<md::ls::IsMaterial const,md::ls::RenderItemID const,md::ls::CustomZIndex const,md::ls::RenderableHash const,md::ls::RenderOrderToUse>(&v255, *v54, v54[1]))
  {
    v54 += 2;
    *&v255 = v54;
  }

  v250 = v255;
  v251 = v256;
  v252 = v257;
  v253 = v258;
  v254 = v259;
  v56 = v255;
  if (v255 != v55)
  {
    v57 = 0;
    v58 = *(&v251 + 1);
    v59 = v252;
    v60 = v253;
    v62 = *(&v250 + 1);
    v61 = v251;
    while (1)
    {
      v63 = v56[1];
      v64 = v63 >> 6;
      v65 = v63 & 0x3F;
      v66 = *(*(&v59 + 1) + 8);
      if (v64 >= (*(*(&v59 + 1) + 16) - v66) >> 3)
      {
        break;
      }

      v67 = *(v66 + 8 * v64);
      if (v67)
      {
        if (*(v67 + 4 * v65) != *v56)
        {
          break;
        }

        v67 = *(*(&v59 + 1) + 32) + 4 * *(v67 + 4 * v65 + 2);
      }

LABEL_37:
      v68 = *(*(*(v61 + 8) + 8 * v64) + 4 * v65 + 2);
      v69 = *(*(v61 + 56) + ((v68 >> 3) & 0x1FF8));
      v70 = *(*(*(v58 + 8) + 8 * v64) + 4 * v65 + 2);
      v71 = *(*(v58 + 56) + ((v70 >> 3) & 0x1FF8));
      v72 = *(*(*(v59 + 8) + 8 * v64) + 4 * v65 + 2);
      v73 = *(*(v59 + 56) + ((v72 >> 3) & 0x1FF8));
      v74 = *(*(*(v60 + 8) + 8 * v64) + 4 * v65 + 2);
      v75 = *(*(v60 + 56) + ((v74 >> 3) & 0x1FF8));
      v76 = *(*(*(*(&v60 + 1) + 8) + 8 * v64) + 4 * v65 + 2);
      v77 = *(*(*(&v60 + 1) + 56) + ((v76 >> 3) & 0x1FF8));
      *(v238 + 104 * *v240 + 24) = *v56;
      *&v255 = v67;
      if (!v249)
      {
        goto LABEL_164;
      }

      (*(*v249 + 48))(v249, v69 + 8 * (v68 & 0x3F), v71 + 24 * (v70 & 0x3F), v73 + 8 * (v72 & 0x3F), &v255, v75 + 8 * (v74 & 0x3F), v77 + 8 * (v76 & 0x3F));
      ++v57;
      v78 = v56 + 2;
      while (1)
      {
        v56 = v78;
        *&v250 = v78;
        if (v78 == v62)
        {
          break;
        }

        v79 = ecs2::ViewIterator<void,std::tuple<md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::CustomZIndex const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &>,std::tuple<>>::containsAll<md::ls::IsMaterial const,md::ls::RenderItemID const,md::ls::CustomZIndex const,md::ls::RenderableHash const,md::ls::RenderOrderToUse>(&v250, *v78, v78[1]);
        v78 = v56 + 2;
        if (v79)
        {
          v80 = v56;
          goto LABEL_43;
        }
      }

      v80 = v62;
LABEL_43:
      if (v80 == v55)
      {
        v81 = *(a3 + 8);
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>();
        *(v81 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>(void)::metadata) = *(v81 + 4096);
        goto LABEL_46;
      }
    }

    v67 = 0;
    goto LABEL_37;
  }

  v57 = 0;
LABEL_46:
  *(v238 + 104 * *v240 + 24) = -65536;
  v82 = v238 + 104 * *v240;
  v83 = *(v82 + 92);
  *(v82 + 92) = v83 + 1;
  *(v82 + 4 * v83 + 28) = v57;
  v84 = v238 + 104 * *v240;
  v86 = *(v84 + 92);
  v85 = (v84 + 92);
  if (v86 >= 0x10)
  {
    *v85 = 0;
  }

  std::__function::__value_func<void ()(md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::CustomZIndex const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &)>::~__value_func[abi:nn200100](v248);
  *&v250 = &unk_1F2A3F5A0;
  *(&v250 + 1) = &v241;
  *(&v251 + 1) = &v250;
  v87 = *(a4 + 8);
  v88 = ecs2::BasicRegistry<void>::storage<md::ls::IsMaterial>(v87);
  v89 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(v87);
  v90 = ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialZIndexHandle>(v87);
  v234 = ecs2::BasicRegistry<void>::storage<md::ls::IsOpaque>(v87);
  v91 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableHash>(v87);
  v92 = ecs2::BasicRegistry<void>::storage<md::ls::RenderOrderToUse>(v87);
  v93 = v92;
  *&v255 = v88;
  *(&v255 + 1) = v89;
  *&v256 = v90;
  *(&v256 + 1) = v91;
  v94 = 8;
  v95 = v88;
  v96 = &v255;
  *&v257 = v92;
  do
  {
    if (*(*(&v255 + v94) + 40) - *(*(&v255 + v94) + 32) < v95[5] - v95[4])
    {
      v95 = *(&v255 + v94);
      v96 = &v255 + v94;
    }

    v94 += 8;
  }

  while (v94 != 40);
  v97 = *(*v96 + 32);
  v98 = *(*v96 + 40);
  if (v97 != v98)
  {
    v99 = v88[1];
    v100 = v89[1];
    v101 = v90[1];
    v102 = v91[1];
    v103 = *(v92 + 8);
    v104 = (*(v92 + 16) - v103) >> 3;
    do
    {
      v105 = v97[1];
      v106 = v105 >> 6;
      if (v105 >> 6 < (v88[2] - v99) >> 3)
      {
        v107 = *(v99 + 8 * v106);
        if (v107)
        {
          v108 = *v97;
          v109 = 4 * (v105 & 0x3F);
          if (*(v107 + v109) == v108 && v106 < (v89[2] - v100) >> 3)
          {
            v111 = *(v100 + 8 * v106);
            if (v111)
            {
              if (*(v111 + v109) == v108 && v106 < (v90[2] - v101) >> 3)
              {
                v113 = *(v101 + 8 * v106);
                if (v113)
                {
                  if (*(v113 + v109) == v108 && v106 < (v91[2] - v102) >> 3)
                  {
                    v115 = *(v102 + 8 * v106);
                    if (v115)
                    {
                      if (*(v115 + v109) == v108 && v106 < v104)
                      {
                        v117 = *(v103 + 8 * v106);
                        if (v117)
                        {
                          if (*(v117 + v109) == v108)
                          {
                            break;
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

      v97 += 2;
    }

    while (v97 != v98);
  }

  if (v97 != v98)
  {
    v118 = 0;
    while (1)
    {
      v119 = v97[1];
      v120 = v119 >> 6;
      v121 = v119 & 0x3F;
      v122 = v234[1];
      if (v120 >= (v234[2] - v122) >> 3)
      {
        break;
      }

      v123 = *(v122 + 8 * v120);
      if (v123)
      {
        if (*(v123 + 4 * v121) != *v97)
        {
          break;
        }

        v123 = v234[4] + 4 * *(v123 + 4 * v121 + 2);
      }

LABEL_87:
      v124 = *(*(v88[1] + 8 * v120) + 4 * v121 + 2);
      v125 = *(v88[7] + ((v124 >> 3) & 0x1FF8));
      v126 = *(*(v89[1] + 8 * v120) + 4 * v121 + 2);
      v127 = *(v89[7] + ((v126 >> 3) & 0x1FF8));
      v128 = *(*(v90[1] + 8 * v120) + 4 * v121 + 2);
      v129 = *(v90[7] + ((v128 >> 3) & 0x1FF8));
      v130 = *(*(v91[1] + 8 * v120) + 4 * v121 + 2);
      v131 = *(v91[7] + ((v130 >> 3) & 0x1FF8));
      v132 = *(*(v93[1] + 8 * v120) + 4 * v121 + 2);
      v133 = *(v93[7] + ((v132 >> 3) & 0x1FF8));
      *(v238 + 104 * *v240 + 24) = *v97;
      *&v255 = v123;
      if (!*(&v251 + 1))
      {
        goto LABEL_164;
      }

      (*(**(&v251 + 1) + 48))(*(&v251 + 1), v125 + 8 * (v124 & 0x3F), v127 + 24 * (v126 & 0x3F), v129 + 8 * (v128 & 0x3F), &v255, v131 + 8 * (v130 & 0x3F), v133 + 8 * (v132 & 0x3F));
      ++v118;
      v97 += 2;
      if (v97 != v98)
      {
        v134 = v88[1];
        v135 = v89[1];
        v136 = v90[1];
        v137 = v91[1];
        v138 = v93[1];
        while (1)
        {
          v139 = v97[1];
          v140 = v139 >> 6;
          if (v139 >> 6 < (v88[2] - v134) >> 3)
          {
            v141 = *(v134 + 8 * v140);
            if (v141)
            {
              v142 = *v97;
              v143 = 4 * (v139 & 0x3F);
              if (*(v141 + v143) == v142 && v140 < (v89[2] - v135) >> 3)
              {
                v145 = *(v135 + 8 * v140);
                if (v145)
                {
                  if (*(v145 + v143) == v142 && v140 < (v90[2] - v136) >> 3)
                  {
                    v147 = *(v136 + 8 * v140);
                    if (v147)
                    {
                      if (*(v147 + v143) == v142 && v140 < (v91[2] - v137) >> 3)
                      {
                        v149 = *(v137 + 8 * v140);
                        if (v149)
                        {
                          if (*(v149 + v143) == v142 && v140 < (v93[2] - v138) >> 3)
                          {
                            v151 = *(v138 + 8 * v140);
                            if (v151)
                            {
                              if (*(v151 + v143) == v142)
                              {
                                break;
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

          v97 += 2;
          if (v97 == v98)
          {
            goto LABEL_117;
          }
        }

        if (v97 != v98)
        {
          continue;
        }
      }

LABEL_117:
      v152 = *(a4 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>();
      *(v152 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>(void)::metadata) = *(v152 + 4096);
      goto LABEL_119;
    }

    v123 = 0;
    goto LABEL_87;
  }

  v118 = 0;
LABEL_119:
  *(v238 + 104 * *v240 + 24) = -65536;
  v153 = v238 + 104 * *v240;
  v154 = *(v153 + 92);
  *(v153 + 92) = v154 + 1;
  *(v153 + 4 * v154 + 28) = v118;
  v155 = v238 + 104 * *v240;
  v157 = *(v155 + 92);
  v156 = (v155 + 92);
  if (v157 >= 0x10)
  {
    *v156 = 0;
  }

  std::__function::__value_func<void ()(md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::SharedMaterialZIndexHandle const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &)>::~__value_func[abi:nn200100](&v250);
  v248[0] = &unk_1F2A3F5E8;
  v249 = v248;
  v158 = *(a5 + 8);
  v159 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(v158);
  v160 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableHash>(v158);
  v161 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedStandardPassShadow>(v158);
  v162 = ecs2::BasicRegistry<void>::storage<md::ls::RenderOrderToUse>(v158);
  *&v255 = v159;
  *(&v255 + 1) = v160;
  v163 = 8;
  v164 = v159;
  v165 = &v255;
  *&v256 = v161;
  *(&v256 + 1) = v162;
  do
  {
    if (*(*(&v255 + v163) + 40) - *(*(&v255 + v163) + 32) < *(v164 + 40) - *(v164 + 32))
    {
      v164 = *(&v255 + v163);
      v165 = &v255 + v163;
    }

    v163 += 8;
  }

  while (v163 != 32);
  v166 = *(*v165 + 32);
  v167 = *(*v165 + 40);
  *&v255 = v166;
  *(&v255 + 1) = v167;
  *&v256 = v159;
  *(&v256 + 1) = v160;
  *&v257 = v161;
  *(&v257 + 1) = v162;
  while (v166 != v167 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v255, *v166, v166[1]))
  {
    v166 += 2;
    *&v255 = v166;
  }

  v250 = v255;
  v251 = v256;
  v252 = v257;
  *&v253 = v258;
  v168 = v255;
  if (v255 == v167)
  {
    v169 = 0;
  }

  else
  {
    v169 = 0;
    v170 = *(&v251 + 1);
    v171 = v252;
    v173 = *(&v250 + 1);
    v172 = v251;
    do
    {
      v174 = v168[1];
      v175 = v174 & 0x3F;
      v176 = (v174 >> 3) & 0x1FF8;
      v177 = *(*(*(v172 + 8) + v176) + 4 * v175 + 2);
      v178 = *(*(v172 + 56) + ((v177 >> 3) & 0x1FF8));
      v179 = *(*(*(v170 + 8) + v176) + 4 * v175 + 2);
      v180 = *(*(v170 + 56) + ((v179 >> 3) & 0x1FF8));
      v181 = *(v171 + 32);
      v182 = *(*(v171 + 8) + v176) + 4 * v175;
      v183 = *(*(*(*(&v171 + 1) + 8) + v176) + 4 * v175 + 2);
      v184 = *(*(*(&v171 + 1) + 56) + ((v183 >> 3) & 0x1FF8));
      v185 = *(v182 + 2);
      *(v238 + 104 * *v240 + 24) = *v168;
      if (!v249)
      {
        goto LABEL_164;
      }

      (*(*v249 + 48))(v249, v178 + 24 * (v177 & 0x3F), v180 + 8 * (v179 & 0x3F), v181 + 4 * v185, v184 + 8 * (v183 & 0x3F));
      ++v169;
      v186 = v168 + 2;
      while (1)
      {
        v168 = v186;
        *&v250 = v186;
        if (v186 == v173)
        {
          break;
        }

        v187 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v250, *v186, v186[1]);
        v186 = v168 + 2;
        if (v187)
        {
          v188 = v168;
          goto LABEL_137;
        }
      }

      v188 = v173;
LABEL_137:
      ;
    }

    while (v188 != v167);
    v189 = *(a5 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>();
    *(v189 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>(void)::metadata) = *(v189 + 4096);
  }

  *(v238 + 104 * *v240 + 24) = -65536;
  v190 = v238 + 104 * *v240;
  v191 = *(v190 + 92);
  *(v190 + 92) = v191 + 1;
  *(v190 + 4 * v191 + 28) = v169;
  v192 = v238 + 104 * *v240;
  v194 = *(v192 + 92);
  v193 = (v192 + 92);
  if (v194 >= 0x10)
  {
    *v193 = 0;
  }

  std::__function::__value_func<void ()(md::ls::RenderItemID const&,md::ls::RenderableHash const&,md::ls::IntendedStandardPassShadow const&,md::ls::RenderOrderToUse &)>::~__value_func[abi:nn200100](v248);
  *&v250 = &unk_1F2A3F630;
  *(&v251 + 1) = &v250;
  v195 = *(a6 + 8);
  v196 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(v195);
  v197 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableHash>(v195);
  v198 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedStandardPassSceneDepth>(v195);
  v199 = ecs2::BasicRegistry<void>::storage<md::ls::RenderOrderToUse>(v195);
  *&v255 = v196;
  *(&v255 + 1) = v197;
  v200 = 8;
  v201 = v196;
  v202 = &v255;
  *&v256 = v198;
  *(&v256 + 1) = v199;
  do
  {
    if (*(*(&v255 + v200) + 40) - *(*(&v255 + v200) + 32) < *(v201 + 40) - *(v201 + 32))
    {
      v201 = *(&v255 + v200);
      v202 = &v255 + v200;
    }

    v200 += 8;
  }

  while (v200 != 32);
  v204 = *(*v202 + 32);
  v203 = *(*v202 + 40);
  v242 = v204;
  v243 = v203;
  v244 = v196;
  v245 = v197;
  v246 = v198;
  v247 = v199;
  while (v204 != v203 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v242, *v204, v204[1]))
  {
    v204 += 2;
    v242 = v204;
  }

  v205 = v242;
  if (v242 == v203)
  {
    v206 = 0;
  }

  else
  {
    v206 = 0;
    v207 = v245;
    v208 = v246;
    v209 = v247;
    v211 = v243;
    v210 = v244;
    do
    {
      v212 = v205[1];
      v213 = v212 & 0x3F;
      v214 = (v212 >> 3) & 0x1FF8;
      v215 = *(*(*(v210 + 8) + v214) + 4 * v213 + 2);
      v216 = *(*(v210 + 56) + ((v215 >> 3) & 0x1FF8));
      v217 = *(*(*(v207 + 8) + v214) + 4 * v213 + 2);
      v218 = *(*(v207 + 56) + ((v217 >> 3) & 0x1FF8));
      v219 = *(v208 + 32);
      v220 = *(*(v208 + 8) + v214) + 4 * v213;
      v221 = *(*(*(v209 + 8) + v214) + 4 * v213 + 2);
      v222 = *(*(v209 + 56) + ((v221 >> 3) & 0x1FF8));
      v223 = *(v220 + 2);
      *(v238 + 104 * *v240 + 24) = *v205;
      if (!*(&v251 + 1))
      {
        goto LABEL_164;
      }

      (*(**(&v251 + 1) + 48))(*(&v251 + 1), v216 + 24 * (v215 & 0x3F), v218 + 8 * (v217 & 0x3F), v219 + 4 * v223, v222 + 8 * (v221 & 0x3F));
      ++v206;
      v224 = v205 + 2;
      while (1)
      {
        v205 = v224;
        v242 = v224;
        if (v224 == v211)
        {
          break;
        }

        v225 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v242, *v224, v224[1]);
        v224 = v205 + 2;
        if (v225)
        {
          v226 = v205;
          goto LABEL_158;
        }
      }

      v226 = v211;
LABEL_158:
      ;
    }

    while (v226 != v203);
    v227 = *(a6 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>();
    *(v227 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>(void)::metadata) = *(v227 + 4096);
  }

  *(v238 + 104 * *v240 + 24) = -65536;
  v228 = v238 + 104 * *v240;
  v229 = *(v228 + 92);
  *(v228 + 92) = v229 + 1;
  *(v228 + 4 * v229 + 28) = v206;
  v230 = v238 + 104 * *v240;
  v232 = *(v230 + 92);
  v231 = (v230 + 92);
  if (v232 >= 0x10)
  {
    *v231 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::RenderItemID const&,md::ls::RenderableHash const&,md::ls::IntendedStandardPassSceneDepth const&,md::ls::RenderOrderToUse &)>::~__value_func[abi:nn200100](&v250);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IsDecal>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsDecal>();
    unk_1EB83B920 = 0x76B9BA390004E44ELL;
    qword_1EB83B928 = "md::ls::IsDecal]";
    qword_1EB83B930 = 15;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderItemID>();
    unk_1EB83DAB0 = 0xD68EA0DE832DEC03;
    qword_1EB83DAB8 = "md::ls::RenderItemID]";
    qword_1EB83DAC0 = 20;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderItemID>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderItemID>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[66];
}

void md::FlyoverRenderLayer::~FlyoverRenderLayer(md::FlyoverRenderLayer *this)
{
  *this = off_1F2A1F6C0;
  md::FlyoverRenderResources::~FlyoverRenderResources((this + 368));
  md::CartographicTiledVectorRenderLayer<md::FlyoverRenderable>::~CartographicTiledVectorRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A1F6C0;
  md::FlyoverRenderResources::~FlyoverRenderResources((this + 368));

  md::CartographicTiledVectorRenderLayer<md::FlyoverRenderable>::~CartographicTiledVectorRenderLayer(this);
}

void md::FlyoverRenderResources::~FlyoverRenderResources(md::FlyoverRenderResources *this)
{
  v2 = *(this + 158);
  *(this + 158) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C4049ECCB0CLL);
  }

  v3 = *(this + 157);
  *(this + 157) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::reset[abi:nn200100](this + 156, 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::reset[abi:nn200100](this + 155, 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::reset[abi:nn200100](this + 154, 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::reset[abi:nn200100](this + 153, 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::reset[abi:nn200100](this + 152, 0);
  v4 = *(this + 151);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::FlyoverNight::FlyoverPolarPipelineSetup>>::reset[abi:nn200100](this + 149, 0);
  v5 = *(this + 148);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::FlyoverNight::FlyoverPipelineSetup>>::reset[abi:nn200100](this + 146, 0);
  v6 = *(this + 145);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::Flyover::FlyoverPolarPipelineSetup>>::reset[abi:nn200100](this + 143, 0);
  v7 = *(this + 142);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::Flyover::FlyoverPipelineSetup>>::reset[abi:nn200100](this + 140, 0);
  v8 = *(this + 139);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  ggl::RenderDataHolder::~RenderDataHolder((this + 888));
  ggl::RenderDataHolder::~RenderDataHolder((this + 672));
  ggl::RenderDataHolder::~RenderDataHolder((this + 456));
  ggl::RenderDataHolder::~RenderDataHolder((this + 240));
  ggl::RenderDataHolder::~RenderDataHolder((this + 24));
  md::FrameAllocator<ggl::RenderItem>::reset(this);
  free(*this);
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::RenderItem>::pushAll(ggl::zone_mallocator *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 5);
  if (v2 != v3)
  {
    v4 = *(result + 1);
    do
    {
      v5 = *v2;
      v6 = *(v1 + 2);
      if (v4 >= v6)
      {
        v7 = (v4 - *v1) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v8 = v6 - *v1;
        v9 = v8 >> 2;
        if (v8 >> 2 <= (v7 + 1))
        {
          v9 = v7 + 1;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        v19[4] = v1 + 24;
        if (v10)
        {
          v11 = ggl::zone_mallocator::instance(result);
          v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(v11, v10);
        }

        else
        {
          v12 = 0;
        }

        v14 = &v12[8 * v10];
        v13 = &v12[8 * v7];
        *v13 = v5;
        v4 = v13 + 8;
        v15 = *(v1 + 1) - *v1;
        v16 = &v13[-v15];
        memcpy(&v13[-v15], *v1, v15);
        v17 = *v1;
        *v1 = v16;
        *(v1 + 1) = v4;
        v18 = *(v1 + 2);
        *(v1 + 2) = v14;
        v19[2] = v17;
        v19[3] = v18;
        v19[0] = v17;
        v19[1] = v17;
        result = std::__split_buffer<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator> &>::~__split_buffer(v19);
      }

      else
      {
        *v4++ = v5;
      }

      *(v1 + 1) = v4;
      ++v2;
    }

    while (v2 != v3);
    v2 = *(v1 + 4);
    v3 = *(v1 + 5);
  }

  if (v2 != v3)
  {
    *(v1 + 5) = v2;
  }

  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls12RenderItemIDEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4FE00;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12RenderItemIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4FE00;
  a2[1] = v2;
  return result;
}

void std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *>(v2, v1);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RenderOrderToUse>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderOrderToUse>();
    unk_1EB83D530 = 0x9158B59D97A4E38DLL;
    qword_1EB83D538 = "md::ls::RenderOrderToUse]";
    qword_1EB83D540 = 24;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> *>(v2, v1);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderOrderToUse>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderOrderToUse>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[14];
}

ggl::zone_mallocator *md::LandmarkRenderResources::resetPools(ggl::zone_mallocator **this)
{
  v1 = *this;
  v2 = *(*this + 4);
  v3 = *(*this + 5);
  v108 = this;
  if (v2 != v3)
  {
    v4 = *(v1 + 1);
    do
    {
      v5 = *v2;
      v6 = *(v1 + 2);
      if (v4 >= v6)
      {
        v7 = (v4 - *v1) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v8 = v6 - *v1;
        v9 = v8 >> 2;
        if (v8 >> 2 <= (v7 + 1))
        {
          v9 = v7 + 1;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        v113 = v1 + 24;
        if (v10)
        {
          v11 = ggl::zone_mallocator::instance(this);
          v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::LandmarkDepth::BuildingPipelineSetup *>(v11, v10);
        }

        else
        {
          v12 = 0;
        }

        v14 = &v12[8 * v10];
        v13 = &v12[8 * v7];
        *v13 = v5;
        v4 = v13 + 8;
        v15 = *(v1 + 1) - *v1;
        v16 = &v13[-v15];
        memcpy(&v13[-v15], *v1, v15);
        v17 = *v1;
        *v1 = v16;
        v109 = v17;
        v110 = v17;
        *(v1 + 1) = v4;
        v111 = v17;
        v18 = *(v1 + 2);
        *(v1 + 2) = v14;
        v112 = v18;
        this = std::__split_buffer<ggl::LandmarkDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::LandmarkDepth::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v109);
      }

      else
      {
        *v4++ = v5;
      }

      *(v1 + 1) = v4;
      ++v2;
    }

    while (v2 != v3);
    v2 = *(v1 + 4);
    v3 = *(v1 + 5);
    this = v108;
  }

  if (v2 != v3)
  {
    *(v1 + 5) = v2;
  }

  v19 = this[3];
  v20 = *(v19 + 4);
  v21 = *(v19 + 5);
  if (v20 != v21)
  {
    v22 = *(v19 + 1);
    do
    {
      v23 = *v20;
      v24 = *(v19 + 2);
      if (v22 >= v24)
      {
        v25 = (v22 - *v19) >> 3;
        if ((v25 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v26 = v24 - *v19;
        v27 = v26 >> 2;
        if (v26 >> 2 <= (v25 + 1))
        {
          v27 = v25 + 1;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v27;
        }

        v113 = v19 + 24;
        if (v28)
        {
          v29 = ggl::zone_mallocator::instance(this);
          v30 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::LandmarkFlat::LandmarkPipelineSetup *>(v29, v28);
        }

        else
        {
          v30 = 0;
        }

        v32 = &v30[8 * v28];
        v31 = &v30[8 * v25];
        *v31 = v23;
        v22 = v31 + 8;
        v33 = *(v19 + 1) - *v19;
        v34 = &v31[-v33];
        memcpy(&v31[-v33], *v19, v33);
        v35 = *v19;
        *v19 = v34;
        v109 = v35;
        v110 = v35;
        *(v19 + 1) = v22;
        v111 = v35;
        v36 = *(v19 + 2);
        *(v19 + 2) = v32;
        v112 = v36;
        this = std::__split_buffer<ggl::LandmarkFlat::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::LandmarkFlat::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v109);
      }

      else
      {
        *v22++ = v23;
      }

      *(v19 + 1) = v22;
      ++v20;
    }

    while (v20 != v21);
    v20 = *(v19 + 4);
    v21 = *(v19 + 5);
    this = v108;
  }

  if (v20 != v21)
  {
    *(v19 + 5) = v20;
  }

  if (*(this + 272) == 1)
  {
    v37 = this[2];
    v38 = *(v37 + 4);
    v39 = *(v37 + 5);
    if (v38 != v39)
    {
      v40 = *(v37 + 1);
      do
      {
        v41 = *v38;
        v42 = *(v37 + 2);
        if (v40 >= v42)
        {
          v43 = (v40 - *v37) >> 3;
          if ((v43 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v44 = v42 - *v37;
          v45 = v44 >> 2;
          if (v44 >> 2 <= (v43 + 1))
          {
            v45 = v43 + 1;
          }

          if (v44 >= 0x7FFFFFFFFFFFFFF8)
          {
            v46 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v46 = v45;
          }

          v113 = v37 + 24;
          if (v46)
          {
            v47 = ggl::zone_mallocator::instance(this);
            v48 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SpecularLandmark::LandmarkPipelineSetup *>(v47, v46);
          }

          else
          {
            v48 = 0;
          }

          v50 = &v48[8 * v46];
          v49 = &v48[8 * v43];
          *v49 = v41;
          v40 = v49 + 8;
          v51 = *(v37 + 1) - *v37;
          v52 = &v49[-v51];
          memcpy(&v49[-v51], *v37, v51);
          v53 = *v37;
          *v37 = v52;
          v109 = v53;
          v110 = v53;
          *(v37 + 1) = v40;
          v111 = v53;
          v54 = *(v37 + 2);
          *(v37 + 2) = v50;
          v112 = v54;
          this = std::__split_buffer<ggl::SpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::SpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v109);
        }

        else
        {
          *v40++ = v41;
        }

        *(v37 + 1) = v40;
        ++v38;
      }

      while (v38 != v39);
      v38 = *(v37 + 4);
      v39 = *(v37 + 5);
      this = v108;
    }

    if (v38 != v39)
    {
      *(v37 + 5) = v38;
    }

    v55 = this[5];
    v56 = *(v55 + 4);
    v57 = *(v55 + 5);
    if (v56 != v57)
    {
      v58 = *(v55 + 1);
      do
      {
        v59 = *v56;
        v60 = *(v55 + 2);
        if (v58 >= v60)
        {
          v61 = (v58 - *v55) >> 3;
          if ((v61 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v62 = v60 - *v55;
          v63 = v62 >> 2;
          if (v62 >> 2 <= (v61 + 1))
          {
            v63 = v61 + 1;
          }

          if (v62 >= 0x7FFFFFFFFFFFFFF8)
          {
            v64 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v64 = v63;
          }

          v113 = v55 + 24;
          if (v64)
          {
            v65 = ggl::zone_mallocator::instance(this);
            v66 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *>(v65, v64);
          }

          else
          {
            v66 = 0;
          }

          v68 = &v66[8 * v64];
          v67 = &v66[8 * v61];
          *v67 = v59;
          v58 = v67 + 8;
          v69 = *(v55 + 1) - *v55;
          v70 = &v67[-v69];
          memcpy(&v67[-v69], *v55, v69);
          v71 = *v55;
          *v55 = v70;
          v109 = v71;
          v110 = v71;
          *(v55 + 1) = v58;
          v111 = v71;
          v72 = *(v55 + 2);
          *(v55 + 2) = v68;
          v112 = v72;
          this = std::__split_buffer<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v109);
        }

        else
        {
          *v58++ = v59;
        }

        *(v55 + 1) = v58;
        ++v56;
      }

      while (v56 != v57);
LABEL_105:
      v56 = *(v55 + 4);
      v57 = *(v55 + 5);
      this = v108;
    }
  }

  else
  {
    v73 = this[1];
    v74 = *(v73 + 4);
    v75 = *(v73 + 5);
    if (v74 != v75)
    {
      v76 = *(v73 + 1);
      do
      {
        v77 = *v74;
        v78 = *(v73 + 2);
        if (v76 >= v78)
        {
          v79 = (v76 - *v73) >> 3;
          if ((v79 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v80 = v78 - *v73;
          v81 = v80 >> 2;
          if (v80 >> 2 <= (v79 + 1))
          {
            v81 = v79 + 1;
          }

          if (v80 >= 0x7FFFFFFFFFFFFFF8)
          {
            v82 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v82 = v81;
          }

          v113 = v73 + 24;
          if (v82)
          {
            v83 = ggl::zone_mallocator::instance(this);
            v84 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseLandmark::BuildingPipelineSetup *>(v83, v82);
          }

          else
          {
            v84 = 0;
          }

          v86 = &v84[8 * v82];
          v85 = &v84[8 * v79];
          *v85 = v77;
          v76 = v85 + 8;
          v87 = *(v73 + 1) - *v73;
          v88 = &v85[-v87];
          memcpy(&v85[-v87], *v73, v87);
          v89 = *v73;
          *v73 = v88;
          v109 = v89;
          v110 = v89;
          *(v73 + 1) = v76;
          v111 = v89;
          v90 = *(v73 + 2);
          *(v73 + 2) = v86;
          v112 = v90;
          this = std::__split_buffer<ggl::DiffuseLandmark::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseLandmark::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v109);
        }

        else
        {
          *v76++ = v77;
        }

        *(v73 + 1) = v76;
        ++v74;
      }

      while (v74 != v75);
      v74 = *(v73 + 4);
      v75 = *(v73 + 5);
      this = v108;
    }

    if (v74 != v75)
    {
      *(v73 + 5) = v74;
    }

    v55 = this[4];
    v56 = *(v55 + 4);
    v57 = *(v55 + 5);
    if (v56 != v57)
    {
      v91 = *(v55 + 1);
      do
      {
        v92 = *v56;
        v93 = *(v55 + 2);
        if (v91 >= v93)
        {
          v94 = (v91 - *v55) >> 3;
          if ((v94 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v95 = v93 - *v55;
          v96 = v95 >> 2;
          if (v95 >> 2 <= (v94 + 1))
          {
            v96 = v94 + 1;
          }

          if (v95 >= 0x7FFFFFFFFFFFFFF8)
          {
            v97 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v97 = v96;
          }

          v113 = v55 + 24;
          if (v97)
          {
            v98 = ggl::zone_mallocator::instance(this);
            v99 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *>(v98, v97);
          }

          else
          {
            v99 = 0;
          }

          v101 = &v99[8 * v97];
          v100 = &v99[8 * v94];
          *v100 = v92;
          v91 = v100 + 8;
          v102 = *(v55 + 1) - *v55;
          v103 = &v100[-v102];
          memcpy(&v100[-v102], *v55, v102);
          v104 = *v55;
          *v55 = v103;
          v109 = v104;
          v110 = v104;
          *(v55 + 1) = v91;
          v111 = v104;
          v105 = *(v55 + 2);
          *(v55 + 2) = v101;
          v112 = v105;
          this = std::__split_buffer<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v109);
        }

        else
        {
          *v91++ = v92;
        }

        *(v55 + 1) = v91;
        ++v56;
      }

      while (v56 != v57);
      goto LABEL_105;
    }
  }

  if (v56 != v57)
  {
    *(v55 + 5) = v56;
  }

  v106 = this[11];

  return ggl::FragmentedPool<ggl::RenderItem>::pushAll(v106);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16RenderOrderToUseEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A502D0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16RenderOrderToUseEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A502D0;
  a2[1] = v2;
  return result;
}

void std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> *>(v2, v1);
  }
}

void std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *>(v2, v1);
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::IsDecal const&,md::ls::RenderItemID const&,md::ls::RenderOrderToUse &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *md::LabelRenderLayer::prune(uint64_t a1)
{
  v2 = (a1 + 56);
  *(a1 + 160) = 0;
  v3 = *(a1 + 112);
  if (v3)
  {
    v4 = 0;
    do
    {
      while ((*(v3 + 72) & 1) == 0)
      {
        v5 = *(v3 + 56);
        if (!v5 || *(v5 + 8) == -1)
        {
          break;
        }

        *(v3 + 64) = v2;
        v3 = *v3;
        ++v4;
        if (!v3)
        {
          goto LABEL_11;
        }
      }

      v3 = std::__hash_table<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,geo::allocator_adapter<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,mdm::zone_mallocator>>::erase((a1 + 88), v3);
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

LABEL_11:
  *(a1 + 156) = v4;

  return std::__list_imp<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,mdm::zone_mallocator>>::clear(v2);
}

void std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *>(v2, v1);
  }
}

void *md::DebugRenderLayer::prune(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = v2[14];
  v5 = *v3;
  v4 = *(v3 + 8);
  if (*v3 != v4)
  {
    do
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
        v4 = *(v3 + 8);
      }

      ++v5;
    }

    while (v5 != v4);
    v5 = *v3;
    v2 = *(a1 + 48);
  }

  *(v3 + 8) = v5;
  v6 = v2[17];
  v8 = *v6;
  v7 = *(v6 + 8);
  if (*v6 != v7)
  {
    do
    {
      if (*v8)
      {
        (*(**v8 + 8))(*v8);
        v7 = *(v6 + 8);
      }

      ++v8;
    }

    while (v8 != v7);
    v8 = *v6;
    v2 = *(a1 + 48);
  }

  *(v6 + 8) = v8;
  v9 = v2[18];
  v11 = *v9;
  v10 = *(v9 + 8);
  if (*v9 != v10)
  {
    do
    {
      if (*v11)
      {
        (*(**v11 + 8))(*v11);
        v10 = *(v9 + 8);
      }

      ++v11;
    }

    while (v11 != v10);
    v11 = *v9;
    v2 = *(a1 + 48);
  }

  *(v9 + 8) = v11;
  v12 = v2[20];

  return ggl::FragmentedPool<ggl::RenderItem>::shrink(v12);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IsMaterial>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsMaterial>();
    *algn_1EB83DC78 = 0x3E8485C60908F920;
    qword_1EB83DC80 = "md::ls::IsMaterial]";
    qword_1EB83DC88 = 18;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IsOpaque>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsOpaque>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsOpaque>();
    *algn_1EB83B8F8 = 0x7087983DEF28DBFELL;
    qword_1EB83B900 = "md::ls::IsOpaque]";
    qword_1EB83B908 = 16;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsOpaque>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsOpaque>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::CustomZIndex>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CustomZIndex>();
    *algn_1EB83DB38 = 0x3EAAB620EAA88EC8;
    qword_1EB83DB40 = "md::ls::CustomZIndex]";
    qword_1EB83DB48 = 20;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void *md::ClientDrapedPolygonRenderLayer::prune(void *result)
{
  v1 = result[60];
  v2 = *v1;
  v4 = **v1;
  v3 = *(*v1 + 8);
  if (v4 != v3)
  {
    do
    {
      result = *v4;
      if (*v4)
      {
        result = (*(*result + 8))(result);
        v3 = v2[1];
      }

      ++v4;
    }

    while (v4 != v3);
    v4 = *v2;
  }

  v2[1] = v4;
  v5 = *(v1 + 8);
  v7 = *v5;
  v6 = v5[1];
  if (*v5 != v6)
  {
    do
    {
      result = *v7;
      if (*v7)
      {
        result = (*(*result + 8))(result);
        v6 = v5[1];
      }

      ++v7;
    }

    while (v7 != v6);
    v7 = *v5;
  }

  v5[1] = v7;
  v8 = *(v1 + 16);
  v10 = *v8;
  v9 = v8[1];
  if (*v8 != v9)
  {
    do
    {
      result = *v10;
      if (*v10)
      {
        result = (*(*result + 8))(result);
        v9 = v8[1];
      }

      ++v10;
    }

    while (v10 != v9);
    v10 = *v8;
  }

  v8[1] = v10;
  v11 = *(v1 + 24);
  v13 = *v11;
  v12 = v11[1];
  if (*v11 != v12)
  {
    do
    {
      result = *v13;
      if (*v13)
      {
        result = (*(*result + 8))(result);
        v12 = v11[1];
      }

      ++v13;
    }

    while (v13 != v12);
    v13 = *v11;
  }

  v11[1] = v13;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RenderableHash>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableHash>();
    unk_1EB83D7E0 = 0x763953A644184BA9;
    qword_1EB83D7E8 = "md::ls::RenderableHash]";
    qword_1EB83D7F0 = 22;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void std::vector<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,geo::allocator_adapter<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FlyoverNight::FlyoverPolarPipelineSetup *>(v2, v1);
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::CustomZIndex const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<md::MapEngine::prune(md::PruneLevel)::$_0,std::allocator<md::MapEngine::prune(md::PruneLevel)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A268B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void md::World::purge(md::World *this, unint64_t a2)
{
  v3 = *(this + 10);
  v4 = *(this + 11);
  if (v3 != v4)
  {
    v5 = a2;
    while (1)
    {
      v6 = *v3 - 11;
      if (v6 > 0x3D)
      {
        break;
      }

      if (((1 << (*v3 - 11)) & 0x3000000000000003) != 0)
      {
        v7 = 41943040.0;
      }

      else
      {
        if (v6 != 22)
        {
          break;
        }

        v7 = 62914560.0;
      }

LABEL_6:
      gdc::LayerDataStore::purge(v3[1], (*(this + 49) * v5), (v7 * *(this + 49)));
      v3 += 2;
      if (v3 == v4)
      {
        goto LABEL_11;
      }
    }

    v7 = 31457280.0;
    goto LABEL_6;
  }

LABEL_11:
  v8 = *(*(this + 3) + 56);

  gdc::ResourceManager::cleanupResources(v8);
}

void ggl::FlyoverNight::FlyoverPolarPipelineState::~FlyoverPolarPipelineState(ggl::FlyoverNight::FlyoverPolarPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialZIndexHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedMaterialZIndexHandle>();
    *algn_1EB83C588 = 0x9705908F280836EDLL;
    qword_1EB83C590 = "md::ls::SharedMaterialZIndexHandle]";
    qword_1EB83C598 = 34;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t std::__function::__func<md::MapEngine::prune(md::PruneLevel)::$_0,std::allocator<md::MapEngine::prune(md::PruneLevel)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = v2 + 40960;
  md::World::purge(*(v2 + 41704), 0);
  v4 = *(v3 + 968);
  v5 = *(a1 + 16);
  v8 = &unk_1F2A55D20;
  v9 = v5;
  v10 = &v8;
  for (i = *(v4 + 32); i; i = *i)
  {
    std::function<void ()(md::LogicBase *)>::operator()(v10, i[5]);
  }

  return std::__function::__value_func<void ()(md::LogicBase *)>::~__value_func[abi:nn200100](&v8);
}

void sub_1B292CFB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(md::LogicBase *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::vector<ggl::FlyoverNight::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::FlyoverNight::FlyoverPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FlyoverNight::FlyoverPipelineSetup *>(v2, v1);
  }
}

void gdc::LayerDataStore::purge(gdc::LayerDataStore *this, unint64_t a2, unint64_t a3)
{
  v3 = *(this + 6);
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(this + 8);
  v7 = *(this + 9);
  v4 = v7 >= a3;
  v9 = v7 - a3;
  if (v4)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 1);
  if (v11 != v8)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      if (v13 >= v6 && v14 >= v10)
      {
        break;
      }

      v15 = *(v11 + 18);
      v16 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>(this + 3, v11 + 16);
      if (v16)
      {
        std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::erase(this + 3, v16);
        v8 = *(this + 8);
      }

      v14 += v15;
      v11 = *(v11 + 1);
      ++v13;
    }

    while (v11 != v8);
    v17 = *(this + 1);
    if (v17 != v11)
    {
      v18 = *(*v11 + 8);
      v19 = *v17;
      *(v19 + 8) = v18;
      *v18 = v19;
      do
      {
        v20 = *(v17 + 1);
        --*(this + 2);
        std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>,0>(v17 + 2);
        operator delete(v17);
        v17 = v20;
      }

      while (v20 != v11);
    }

    v21 = *(this + 9);
    v4 = v21 >= v14;
    v22 = v21 - v14;
    if (!v4)
    {
      v22 = 0;
    }

    *(this + 9) = v22;
  }
}

void ggl::FlyoverNight::FlyoverPipelineState::~FlyoverPipelineState(ggl::FlyoverNight::FlyoverPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__value_func<void ()(md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::SharedMaterialZIndexHandle const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassShadow>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassShadow>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedStandardPassShadow>();
    unk_1EB83C670 = 0x3EB2A2A09E298E0ELL;
    qword_1EB83C678 = "md::ls::IntendedStandardPassShadow]";
    qword_1EB83C680 = 34;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IntendedStandardPassShadow>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassShadow>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassShadow>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassShadow>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void std::vector<ggl::Flyover::FlyoverPolarPipelineSetup *,geo::allocator_adapter<ggl::Flyover::FlyoverPolarPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Flyover::FlyoverPolarPipelineSetup *>(v2, v1);
  }
}

void ggl::Flyover::FlyoverPolarPipelineState::~FlyoverPolarPipelineState(ggl::Flyover::FlyoverPolarPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedStandardPassShadow>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedStandardPassShadow>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[368];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls26IntendedStandardPassShadowEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A53320;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26IntendedStandardPassShadowEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A53320;
  a2[1] = v2;
  return result;
}

void std::vector<ggl::Flyover::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::Flyover::FlyoverPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Flyover::FlyoverPipelineSetup *>(v2, v1);
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::RenderItemID const&,md::ls::RenderableHash const&,md::ls::IntendedStandardPassShadow const&,md::ls::RenderOrderToUse &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ggl::Flyover::FlyoverPipelineState::~FlyoverPipelineState(ggl::Flyover::FlyoverPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void md::OverlaysLogic::prune(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 10;
  }

  md::OverlaysLogic::pruneSurfacePool(*(a1 + 688), v2);
}

void *md::FrameAllocator<ggl::RenderItem>::reset(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    do
    {
      if (v2[1])
      {
        v3 = 0;
        v4 = v2 + 2;
        v5 = v2 + 2;
        v6 = (v2 + 2);
        do
        {
          v7 = *v6;
          v6 += 15;
          (*v7)(v5);
          ++v3;
          v4 += 15;
          v5 = v6;
        }

        while (v3 < v2[1]);
      }

      v2[1] = 0;
      v2 = *v2;
    }

    while (v2);
    v8 = *a1;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 8) = v8;
  result = *v8;
  *v8 = 0;
  if (result)
  {
    do
    {
      v10 = *result;
      free(result);
      result = v10;
    }

    while (v10);
  }

  return result;
}

void md::OverlaysLogic::pruneSurfacePool(md::OverlaysLogic *this, unint64_t a2)
{
  if (this)
  {
    v3 = this;
    do
    {
      v4 = *(v3 + 3);
      v5 = *(v3 + 4);
      while (v4 != v5)
      {
        v6 = *(v4 + 24);
        v7 = a2 - v6;
        if (a2 >= v6)
        {
          return;
        }

        do
        {
          std::list<std::shared_ptr<ggl::IOSurfaceTexture>>::pop_front(v4 + 8);
        }

        while (!__CFADD__(v7++, 1));
        v4 += 32;
      }

      v3 = *v3;
    }

    while (v3);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IntendedStandardPassSceneDepth>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedStandardPassSceneDepth>();
    unk_1EB83BCB0 = 0xE7D1C5E790E8E07;
    qword_1EB83BCB8 = "md::ls::IntendedStandardPassSceneDepth]";
    qword_1EB83BCC0 = 38;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void md::CartographicTiledRenderResources::~CartographicTiledRenderResources(void **this)
{
  md::FrameAllocator<ggl::RenderItem>::reset((this + 16));
  free(this[16]);
  v2 = this[13];
  this[13] = 0;
  if (v2)
  {
    v3 = ggl::FragmentedPool<ggl::PolygonSolidFill::MeshPipelineSetup>::~FragmentedPool(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C405CD4001ALL);
  }

  v4 = this[10];
  if (v4)
  {
    this[11] = v4;
    operator delete(v4);
  }

  v5 = this[7];
  if (v5)
  {
    this[8] = v5;
    operator delete(v5);
  }

  v6 = this[6];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = this[4];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = this[2];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *this;
  *this = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedStandardPassSceneDepth>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedStandardPassSceneDepth>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[266];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls30IntendedStandardPassSceneDepthEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A53040;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t md::CartographicTiledVectorRenderLayer<md::FlyoverRenderable>::~CartographicTiledVectorRenderLayer(void *a1)
{
  *a1 = &unk_1F2A2EF28;
  v2 = a1[44];
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = **v3;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      ggl::RenderItem::~RenderItem((v5 + 1));
      MEMORY[0x1B8C62190](v5, 0x10F0C40137B0629);
      ++v3;
    }

    while (v3 != v4);
    v2 = a1[44];
  }

  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  if (v7 == v8)
  {
    goto LABEL_11;
  }

  do
  {
    v9 = *v7;
    v10 = **v7;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    ggl::RenderItem::~RenderItem((v9 + 1));
    MEMORY[0x1B8C62190](v9, 0x10F0C40137B0629);
    ++v7;
  }

  while (v7 != v8);
  v2 = a1[44];
  if (v2)
  {
LABEL_11:
    md::CartographicTiledRenderResources::~CartographicTiledRenderResources(v2);
    MEMORY[0x1B8C62190]();
  }

  return md::CartographicTiledRenderLayer<md::FlyoverRenderable>::~CartographicTiledRenderLayer(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls30IntendedStandardPassSceneDepthEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A53040;
  a2[1] = v2;
  return result;
}

void *ggl::FragmentedPool<ggl::PolygonSolidFill::MeshPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::PolygonSolidFill::MeshPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::PolygonSolidFill::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::PolygonSolidFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::PolygonSolidFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::PolygonSolidFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonSolidFill::MeshPipelineSetup *>(v2, v1);
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::RenderItemID const&,md::ls::RenderableHash const&,md::ls::IntendedStandardPassSceneDepth const&,md::ls::RenderOrderToUse &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ecs2::Runtime::_entities<md::ita::PerformVisibilityTestOnRenderItem,md::ls::VisibilityGroupTest &,md::ls::AssociationHandle const*>(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupTest>(v3);
  ecs2::BasicRegistry<void>::storage<md::ls::AssociationHandle>(v3);
  v5 = v4[4];
  v6 = v4[5];
  if (v5 != v6)
  {
    v7 = v4[1];
    do
    {
      v8 = v5[1];
      if (v8 >> 6 < (v4[2] - v7) >> 3)
      {
        v9 = *(v7 + 8 * (v8 >> 6));
        if (v9)
        {
          if (*(v9 + 4 * (v8 & 0x3F)) == *v5)
          {
            break;
          }
        }
      }

      v5 += 2;
    }

    while (v5 != v6);
  }

  if (v5 != v6)
  {
    v53 = a1;
    v10 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
    v55 = v11;
    while (1)
    {
      v14 = v5[1];
      v15 = v14 >> 6;
      v16 = v14 & 0x3F;
      v17 = v11[1];
      if (v15 < (v11[2] - v17) >> 3 && (v18 = *(v17 + 8 * v15)) != 0 && *(v18 + 4 * v16) == *v5)
      {
        v19 = *(v18 + 4 * v16 + 2);
        v54 = *(v11[7] + ((v19 >> 3) & 0x1FF8)) + 24 * (v19 & 0x3F);
      }

      else
      {
        v54 = 0;
      }

      v20 = *(*(v4[1] + 8 * v15) + 4 * v16 + 2);
      v21 = *(v4[7] + ((v20 >> 3) & 0x1FF8));
      *(v10 + 104 * *v12 + 24) = *v5;
      v22 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v23 = a2;
      v24 = v22;
      v25 = a2[2];
      if (!v25)
      {
        v26 = **a2;
        v27 = *v26;
        v28 = *(v26 + 8);
        if (v27 == v28)
        {
          v25 = 0;
        }

        else
        {
          while (*v27 != 0x22D45F5AAD4BF408)
          {
            v25 = 0;
            v27 += 5;
            v23 = a2;
            if (v27 == v28)
            {
              goto LABEL_19;
            }
          }

          if (v27 == v28)
          {
            v25 = 0;
          }

          else
          {
            v25 = v27[3];
            v46 = v27[4];
            if (v46)
            {
              atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:nn200100](v46);
            }
          }

          v23 = a2;
        }

LABEL_19:
        v23[2] = v25;
      }

      v29 = (v21 + 16 * (v20 & 0x3F));
      v30 = (**v25)(v25);
      md::LayoutContext::frameState(v30);
      v32 = *(v31 + 624);
      v29[2] = v32;
      v33 = v24[1556];
      if (v33)
      {
        v34 = *v29;
        v35 = vcnt_s8(v33);
        v35.i16[0] = vaddlv_u8(v35);
        if (v35.u32[0] > 1uLL)
        {
          v36 = *v29;
          if (*&v33 <= v34)
          {
            v36 = v34 % v33.i32[0];
          }
        }

        else
        {
          v36 = (v33.i32[0] - 1) & v34;
        }

        i = *(*&v24[1555] + 8 * v36);
        if (i)
        {
          for (i = *i; i; i = *i)
          {
            v38 = i[1];
            if (v38 == v34)
            {
              if (*(i + 4) == v34)
              {
                break;
              }
            }

            else
            {
              if (v35.u32[0] > 1uLL)
              {
                if (v38 >= *&v33)
                {
                  v38 %= *&v33;
                }
              }

              else
              {
                v38 &= *&v33 - 1;
              }

              if (v38 != v36)
              {
                goto LABEL_37;
              }
            }
          }
        }
      }

      else
      {
LABEL_37:
        i = 0;
      }

      v11 = v55;
      if (*(v29 + 4) == 1)
      {
        if (i && i[7] != i[8])
        {
LABEL_48:
          v29[3] = v32;
        }
      }

      else if (!*(v29 + 4))
      {
        if (v54)
        {
          if (i)
          {
            v39 = *(v54 + 8);
            v41 = i + 4;
            v40 = i[4];
            if (v39 >> 6 < (v41[1] - v40) >> 3)
            {
              v42 = *(v40 + 8 * (v39 >> 6));
              if (v42)
              {
                if (*(v42 + 16 * (*(v54 + 8) & 0x3FLL)) == *(v54 + 16))
                {
                  goto LABEL_48;
                }
              }
            }
          }
        }
      }

      ++v13;
      v5 += 2;
      if (v5 != v6)
      {
        v43 = v4[1];
        while (1)
        {
          v44 = v5[1];
          if (v44 >> 6 < (v4[2] - v43) >> 3)
          {
            v45 = *(v43 + 8 * (v44 >> 6));
            if (v45)
            {
              if (*(v45 + 4 * (v44 & 0x3F)) == *v5)
              {
                break;
              }
            }
          }

          v5 += 2;
          if (v5 == v6)
          {
            goto LABEL_63;
          }
        }

        if (v5 != v6)
        {
          continue;
        }
      }

LABEL_63:
      v47 = *(v53 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>();
      *(v47 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>(void)::metadata) = *(v47 + 4096);
      goto LABEL_65;
    }
  }

  v10 = _ZTWN4ecs27Runtime11_localStateE();
  v12 = _ZTWN4ecs27Runtime11_stackIndexE();
  v13 = 0;
LABEL_65:
  *(v10 + 104 * *v12 + 24) = -65536;
  v48 = v10 + 104 * *v12;
  v49 = *(v48 + 92);
  *(v48 + 92) = v49 + 1;
  *(v48 + 4 * v49 + 28) = v13;
  v50 = v10 + 104 * *v12;
  v52 = *(v50 + 92);
  v51 = (v50 + 92);
  if (v52 >= 0x10)
  {
    *v51 = 0;
  }
}

void ggl::PolygonSolidFill::S2MeshPipelineState::~S2MeshPipelineState(ggl::PolygonSolidFill::S2MeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupTest>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::VisibilityGroupTest>();
    unk_1EB83CFD0 = 0xFA77EBF8E4CA45B8;
    qword_1EB83CFD8 = "md::ls::VisibilityGroupTest]";
    qword_1EB83CFE0 = 27;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ggl::PolygonSolidFill::MeshPipelineState::~MeshPipelineState(ggl::PolygonSolidFill::MeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PerformVisibilityTestOnRenderItem>,std::allocator<ecs2::ForwardToExecute<md::ita::PerformVisibilityTestOnRenderItem>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  ecs2::Runtime::_entities<md::ita::PerformVisibilityTestOnRenderItem,md::ls::VisibilityGroupTest &,md::ls::AssociationHandle const*>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::VisibilityGroupTest>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::VisibilityGroupTest>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[470];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls19VisibilityGroupTestEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A500F0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19VisibilityGroupTestEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A500F0;
  a2[1] = v2;
  return result;
}

uint64_t md::CartographicTiledRenderLayer<md::FlyoverRenderable>::~CartographicTiledRenderLayer(uint64_t a1)
{
  *a1 = &unk_1F2A2BF08;
  v2 = *(a1 + 320);
  if (v2)
  {
    *(a1 + 328) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 296);
  if (v3)
  {
    *(a1 + 304) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 272);
  if (v4)
  {
    *(a1 + 280) = v4;
    operator delete(v4);
  }

  geo::Pool<md::FlyoverRenderable>::~Pool(a1 + 224);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 160));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(*(a1 + 104));
  v5 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  std::__function::__value_func<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::~__value_func[abi:nn200100](a1 + 56);
  *a1 = &unk_1F2A16858;
  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 16) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t geo::Pool<md::FlyoverRenderable>::~Pool(uint64_t a1)
{
  geo::Pool<md::FlyoverRenderable>::disposeElements(a1);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::AssociationHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AssociationHandle>();
    unk_1EB83D350 = 0x523816724122CCE2;
    qword_1EB83D358 = "md::ls::AssociationHandle]";
    qword_1EB83D360 = 25;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t md::StyleLogic::prune(uint64_t a1)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A296A8;
  v4[3] = v4;
  md::StyleLogic::_applyWithActiveStyleManager(a1, v4);
  std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)>::~__value_func[abi:nn200100](v4);
  v3[0] = &unk_1F2A296F0;
  v3[3] = v3;
  md::StyleLogic::_applyWithActiveSceneManager(a1, v3);
  return std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)>::~__value_func[abi:nn200100](v3);
}

void sub_1B292F038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t md::StyleLogic::_applyWithActiveStyleManager(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 256))
  {
    md::StyleLogic::updateConfiguration(a1, *(a1 + 1096));
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v4 = *(*v3 + 48);

    return v4();
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();
    return md::ita::PrepareFunctionConstantDescriptorBlendedWater::operator()(v6);
  }
}

uint64_t md::ita::PrepareFunctionConstantDescriptorBlendedWater::operator()(uint64_t **a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  if (!v4)
  {
    v4 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, *(**a1 + 8));
    a1[1] = v4;
  }

  v5 = (**v4)(v4);
  v6 = atomic_load((gdc::Context::get<md::StyleLogicContext>(*(v5 + 8))[4] + 270));
  v40 = v6 & 1;
  v7 = a1[2];
  if (!v7)
  {
    v8 = **a1;
    v9 = *v8;
    v10 = *(v8 + 8);
    if (v9 == v10)
    {
      goto LABEL_5;
    }

    while (*v9 != 0x41D4E9297E100630)
    {
      v7 = 0;
      v9 += 5;
      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }

    if (v9 == v10)
    {
LABEL_5:
      v7 = 0;
    }

    else
    {
      v7 = v9[3];
      v37 = v9[4];
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v37);
      }
    }

LABEL_8:
    a1[2] = v7;
  }

  v39 = v7;
  v47[0] = &unk_1F2A35288;
  v47[1] = &v40;
  v47[2] = &v39;
  v48 = v47;
  v11 = *(a2 + 8);
  v12 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v11);
  v13 = ecs2::BasicRegistry<void>::storage<md::ls::ColorRampDataHandle>(v11);
  ecs2::View<void,md::ls::FunctionConstants,md::ls::HasMaterialRasterRenderItem const>::each<md::ls::FunctionConstants&,md::ls::HasMaterialRasterRenderItem const&>(v44, v12, v13);
  v41 = v44[0];
  v42 = v44[1];
  v14 = v46;
  v43 = v45;
  v15 = *&v44[0];
  if (*&v44[0] == v46)
  {
    v17 = _ZTWN4ecs27Runtime11_localStateE();
    v18 = _ZTWN4ecs27Runtime11_stackIndexE();
    v19 = 0;
  }

  else
  {
    v38 = a2;
    v16 = v42;
    v17 = _ZTWN4ecs27Runtime11_localStateE();
    v18 = _ZTWN4ecs27Runtime11_stackIndexE();
    v19 = 0;
    v20 = *(&v41 + 1);
    do
    {
      v21 = v15[1];
      v22 = (v21 >> 3) & 0x1FF8;
      v23 = v21 & 0x3F;
      v24 = *(*(*(v16 + 8) + v22) + 4 * v23 + 2);
      v25 = *(*(v16 + 56) + ((v24 >> 3) & 0x1FF8));
      v26 = *(*(*(*(&v16 + 1) + 8) + v22) + 4 * v23 + 2);
      v27 = *(*(*(&v16 + 1) + 56) + ((v26 >> 3) & 0x1FF8));
      *(v17 + 104 * *v18 + 24) = *v15;
      if (!v48)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v48 + 48))(v48, v25 + 70 * (v24 & 0x3F), v27 + 8 * (v26 & 0x3F));
      ++v19;
      v28 = v15 + 2;
      do
      {
        v15 = v28;
        *&v41 = v28;
        if (v28 == v20)
        {
          break;
        }

        v29 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v41, *v28, v28[1]);
        v28 = v15 + 2;
      }

      while (!v29);
    }

    while (v15 != v14);
    v30 = *(v38 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v30 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v30 + 4096);
  }

  *(v17 + 104 * *v18 + 24) = -65536;
  v31 = v17 + 104 * *v18;
  v32 = *(v31 + 92);
  *(v31 + 92) = v32 + 1;
  *(v31 + 4 * v32 + 28) = v19;
  v33 = v17 + 104 * *v18;
  v35 = *(v33 + 92);
  v34 = (v33 + 92);
  if (v35 >= 0x10)
  {
    *v34 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::ColorRampDataHandle const&)>::~__value_func[abi:nn200100](v47);
}

void gss::StylesheetManager<gss::PropertyID>::clearCaches(uint64_t a1)
{
  v2 = *(a1 + 16);
  v37 = (v2 + 2528);
  v3 = pthread_rwlock_wrlock((v2 + 2528));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "write lock", v4);
  }

  if (*(v2 + 2768))
  {
    std::__hash_table<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::__unordered_map_hasher<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::hash<gss::StyleSheetResultCacheKey>,std::equal_to<gss::StyleSheetResultCacheKey>,true>,std::__unordered_map_equal<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::equal_to<gss::StyleSheetResultCacheKey>,std::hash<gss::StyleSheetResultCacheKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,gss::zone_mallocator>>::__deallocate_node(*(v2 + 2752));
    *(v2 + 2752) = 0;
    v5 = *(v2 + 2736);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        *(*(v2 + 2728) + 8 * i) = 0;
      }
    }

    *(v2 + 2768) = 0;
  }

  geo::write_lock_guard::~write_lock_guard(&v37);
  v37 = (a1 + 120);
  v7 = pthread_rwlock_wrlock((a1 + 120));
  if (v7)
  {
    geo::read_write_lock::logFailure(v7, "write lock", v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    while (1)
    {
      v10 = v9[10];
      if (!v10)
      {
        break;
      }

      v11 = std::__shared_weak_count::lock(v10);
      if (!v11)
      {
        break;
      }

      v12 = v9[9];
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      if (!v12)
      {
        break;
      }

      v13 = *v9;
LABEL_42:
      v9 = v13;
      if (!v13)
      {
        goto LABEL_43;
      }
    }

    v14 = *(a1 + 40);
    v15 = v9[1];
    v16 = vcnt_s8(v14);
    v16.i16[0] = vaddlv_u8(v16);
    if (v16.u32[0] > 1uLL)
    {
      if (v15 >= *&v14)
      {
        v15 %= *&v14;
      }
    }

    else
    {
      v15 &= *&v14 - 1;
    }

    v13 = *v9;
    v17 = *(a1 + 32);
    v18 = *(v17 + 8 * v15);
    do
    {
      v19 = v18;
      v18 = *v18;
    }

    while (v18 != v9);
    if (v19 == (a1 + 56))
    {
      goto LABEL_68;
    }

    v20 = v19[1];
    if (v16.u32[0] > 1uLL)
    {
      if (v20 >= *&v14)
      {
        v20 %= *&v14;
      }
    }

    else
    {
      v20 &= *&v14 - 1;
    }

    v21 = *v9;
    if (v20 != v15)
    {
LABEL_68:
      if (v13)
      {
        v22 = v13[1];
        if (v16.u32[0] > 1uLL)
        {
          if (v22 >= *&v14)
          {
            v22 %= *&v14;
          }
        }

        else
        {
          v22 &= *&v14 - 1;
        }

        v21 = *v9;
        if (v22 == v15)
        {
          goto LABEL_35;
        }
      }

      *(v17 + 8 * v15) = 0;
      v21 = *v9;
    }

    if (!v21)
    {
LABEL_41:
      *v19 = v21;
      *v9 = 0;
      --*(a1 + 72);
      std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *>,gss::zone_mallocator>>::operator()[abi:nn200100](1, v9);
      goto LABEL_42;
    }

LABEL_35:
    v23 = v21[1];
    if (v16.u32[0] > 1uLL)
    {
      if (v23 >= *&v14)
      {
        v23 %= *&v14;
      }
    }

    else
    {
      v23 &= *&v14 - 1;
    }

    if (v23 != v15)
    {
      *(*(a1 + 32) + 8 * v23) = v19;
      v21 = *v9;
    }

    goto LABEL_41;
  }

LABEL_43:
  geo::write_lock_guard::~write_lock_guard(&v37);
  v37 = (a1 + 320);
  v24 = pthread_rwlock_wrlock((a1 + 320));
  if (v24)
  {
    geo::read_write_lock::logFailure(v24, "write lock", v25);
  }

  v26 = *(a1 + 88);
  v27 = *(a1 + 96);
  if (v26 != v27)
  {
    while (1)
    {
      v28 = v26[1];
      if (!v28)
      {
        goto LABEL_52;
      }

      v29 = std::__shared_weak_count::lock(v28);
      if (!v29)
      {
        break;
      }

      v30 = *v26;
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
      v31 = *(a1 + 96);
      if (!v30)
      {
        v27 = *(a1 + 96);
        goto LABEL_52;
      }

      v26 += 2;
LABEL_64:
      v27 = v31;
      if (v26 == v31)
      {
        goto LABEL_65;
      }
    }

    v27 = *(a1 + 96);
LABEL_52:
    if (v26 + 2 == v27)
    {
      v31 = v26;
    }

    else
    {
      v32 = v26;
      do
      {
        v33 = *(v32 + 1);
        v32[2] = 0;
        v32[3] = 0;
        v34 = v32[1];
        *v32 = v33;
        if (v34)
        {
          std::__shared_weak_count::__release_weak(v34);
        }

        v31 = v32 + 2;
        v35 = v32 + 4;
        v32 += 2;
      }

      while (v35 != v27);
      v27 = *(a1 + 96);
    }

    while (v27 != v31)
    {
      v36 = *(v27 - 1);
      if (v36)
      {
        std::__shared_weak_count::__release_weak(v36);
      }

      v27 -= 2;
    }

    *(a1 + 96) = v31;
    goto LABEL_64;
  }

LABEL_65:
  geo::write_lock_guard::~write_lock_guard(&v37);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorBlendedWater>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorBlendedWater>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareFunctionConstantDescriptorBlendedWater::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::PostchainRenderLayer::~PostchainRenderLayer(md::PostchainRenderLayer *this)
{
  *this = &unk_1F2A016B8;
  v2 = *(this + 109);
  *(this + 109) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 108);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 106);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 104);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  for (i = 816; i != 800; i -= 8)
  {
    v7 = *(this + i);
    *(this + i) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  do
  {
    v8 = *(this + i);
    *(this + i) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    i -= 8;
  }

  while (i != 784);
  do
  {
    v9 = *(this + i);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    i -= 16;
  }

  while (i != 752);
  do
  {
    v10 = *(this + i);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    i -= 16;
  }

  while (i != 720);
  do
  {
    v11 = *(this + i);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    i -= 16;
  }

  while (i != 688);
  v12 = *(this + 86);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(this + 84);
  *(this + 84) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 83);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = *(this + 81);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = *(this + 79);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  for (j = 616; j != 600; j -= 8)
  {
    v18 = *(this + j);
    *(this + j) = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  do
  {
    v19 = *(this + j);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    j -= 16;
  }

  while (j != 568);
  do
  {
    v20 = *(this + j);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v20);
    }

    j -= 16;
  }

  while (j != 536);
  v21 = *(this + 67);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  v22 = *(this + 65);
  *(this + 65) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(this + 64);
  *(this + 64) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(this + 63);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  v25 = *(this + 61);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  v26 = *(this + 59);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  v27 = *(this + 57);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  v28 = *(this + 55);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  v29 = *(this + 53);
  *(this + 53) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(this + 52);
  *(this + 52) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(this + 51);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  v32 = *(this + 49);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  v33 = *(this + 47);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  v34 = *(this + 45);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  v35 = *(this + 43);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  v36 = *(this + 41);
  *(this + 41) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  v37 = *(this + 40);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  v38 = *(this + 38);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  }

  v39 = *(this + 36);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  }

  v40 = *(this + 34);
  *(this + 34) = 0;
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  v41 = *(this + 33);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  }

  v42 = *(this + 31);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  v43 = *(this + 29);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v43);
  }

  v44 = *(this + 27);
  *(this + 27) = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  v45 = *(this + 26);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v45);
  }

  v46 = *(this + 24);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v46);
  }

  v47 = *(this + 22);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  v48 = *(this + 20);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v48);
  }

  v49 = *(this + 18);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v49);
  }

  v50 = *(this + 16);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v50);
  }

  v51 = *(this + 14);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v51);
  }

  v52 = *(this + 12);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v52);
  }

  v53 = *(this + 10);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
  }

  *this = &unk_1F2A16858;
  v54 = *(this + 1);
  if (v54)
  {
    *(this + 2) = v54;
    operator delete(v54);
  }
}

{
  md::PostchainRenderLayer::~PostchainRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*a1 != 0x22D45F5AAD4BF408)
  {
    a1 += 5;
    if (a1 == a2)
    {
      return 0;
    }
  }

  if (a1 == a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return v2;
}

void *gdc::Context::get<md::StyleLogicContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xE42D19AFCA302E68);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xE42D19AFCA302E68)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
    unk_1EB83D2C0 = 0xC62D89929260CB56;
    qword_1EB83D2C8 = "md::ls::FunctionConstants]";
    qword_1EB83D2D0 = 25;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void md::StyleLogic::_applyWithActiveSceneManager(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 272) || (md::StyleLogic::updateConfiguration(a1, *(a1 + 1096)), *(a1 + 272)))
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v5 = *(*v4 + 48);

      v5();
    }

    else
    {
      v6 = std::__throw_bad_function_call[abi:nn200100]();
      std::__shared_ptr_emplace<ggl::StandardPostchain::SSAOUpsamplePipelineSetup>::__on_zero_shared(v6);
    }
  }
}

void ggl::StandardPostchain::SSAOUpsamplePipelineState::~SSAOUpsamplePipelineState(ggl::StandardPostchain::SSAOUpsamplePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[502];
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls17FunctionConstantsEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A501E0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::__function::__func<md::StyleLogic::prune(md::PruneLevel)::$_1,std::allocator<md::StyleLogic::prune(md::PruneLevel)::$_1>,void ()(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 16);
  v38 = (v3 + 2528);
  v4 = pthread_rwlock_wrlock((v3 + 2528));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "write lock", v5);
  }

  if (*(v3 + 2768))
  {
    std::__hash_table<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,std::__unordered_map_hasher<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,std::hash<gss::StyleSheetResultCacheKey>,std::equal_to<gss::StyleSheetResultCacheKey>,true>,std::__unordered_map_equal<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,std::equal_to<gss::StyleSheetResultCacheKey>,std::hash<gss::StyleSheetResultCacheKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,gss::zone_mallocator>>::__deallocate_node(*(v3 + 2752));
    *(v3 + 2752) = 0;
    v6 = *(v3 + 2736);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        *(*(v3 + 2728) + 8 * i) = 0;
      }
    }

    *(v3 + 2768) = 0;
  }

  geo::write_lock_guard::~write_lock_guard(&v38);
  v38 = (v2 + 120);
  v8 = pthread_rwlock_wrlock((v2 + 120));
  if (v8)
  {
    geo::read_write_lock::logFailure(v8, "write lock", v9);
  }

  v10 = *(v2 + 56);
  if (v10)
  {
    while (1)
    {
      v11 = v10[10];
      if (!v11)
      {
        break;
      }

      v12 = std::__shared_weak_count::lock(v11);
      if (!v12)
      {
        break;
      }

      v13 = v10[9];
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      if (!v13)
      {
        break;
      }

      v14 = *v10;
LABEL_42:
      v10 = v14;
      if (!v14)
      {
        goto LABEL_43;
      }
    }

    v15 = *(v2 + 40);
    v16 = v10[1];
    v17 = vcnt_s8(v15);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      if (v16 >= *&v15)
      {
        v16 %= *&v15;
      }
    }

    else
    {
      v16 &= *&v15 - 1;
    }

    v14 = *v10;
    v18 = *(v2 + 32);
    v19 = *(v18 + 8 * v16);
    do
    {
      v20 = v19;
      v19 = *v19;
    }

    while (v19 != v10);
    if (v20 == (v2 + 56))
    {
      goto LABEL_68;
    }

    v21 = v20[1];
    if (v17.u32[0] > 1uLL)
    {
      if (v21 >= *&v15)
      {
        v21 %= *&v15;
      }
    }

    else
    {
      v21 &= *&v15 - 1;
    }

    v22 = *v10;
    if (v21 != v16)
    {
LABEL_68:
      if (v14)
      {
        v23 = v14[1];
        if (v17.u32[0] > 1uLL)
        {
          if (v23 >= *&v15)
          {
            v23 %= *&v15;
          }
        }

        else
        {
          v23 &= *&v15 - 1;
        }

        v22 = *v10;
        if (v23 == v16)
        {
          goto LABEL_35;
        }
      }

      *(v18 + 8 * v16) = 0;
      v22 = *v10;
    }

    if (!v22)
    {
LABEL_41:
      *v20 = v22;
      *v10 = 0;
      --*(v2 + 72);
      std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *>,gss::zone_mallocator>>::operator()[abi:nn200100](1, v10);
      goto LABEL_42;
    }

LABEL_35:
    v24 = v22[1];
    if (v17.u32[0] > 1uLL)
    {
      if (v24 >= *&v15)
      {
        v24 %= *&v15;
      }
    }

    else
    {
      v24 &= *&v15 - 1;
    }

    if (v24 != v16)
    {
      *(*(v2 + 32) + 8 * v24) = v20;
      v22 = *v10;
    }

    goto LABEL_41;
  }

LABEL_43:
  geo::write_lock_guard::~write_lock_guard(&v38);
  v38 = (v2 + 320);
  v25 = pthread_rwlock_wrlock((v2 + 320));
  if (v25)
  {
    geo::read_write_lock::logFailure(v25, "write lock", v26);
  }

  v27 = *(v2 + 88);
  v28 = *(v2 + 96);
  if (v27 != v28)
  {
    while (1)
    {
      v29 = v27[1];
      if (!v29)
      {
        goto LABEL_52;
      }

      v30 = std::__shared_weak_count::lock(v29);
      if (!v30)
      {
        break;
      }

      v31 = *v27;
      std::__shared_weak_count::__release_shared[abi:nn200100](v30);
      v32 = *(v2 + 96);
      if (!v31)
      {
        v28 = *(v2 + 96);
        goto LABEL_52;
      }

      v27 += 2;
LABEL_64:
      v28 = v32;
      if (v27 == v32)
      {
        goto LABEL_65;
      }
    }

    v28 = *(v2 + 96);
LABEL_52:
    if (v27 + 2 == v28)
    {
      v32 = v27;
    }

    else
    {
      v33 = v27;
      do
      {
        v34 = *(v33 + 1);
        v33[2] = 0;
        v33[3] = 0;
        v35 = v33[1];
        *v33 = v34;
        if (v35)
        {
          std::__shared_weak_count::__release_weak(v35);
        }

        v32 = v33 + 2;
        v36 = v33 + 4;
        v33 += 2;
      }

      while (v36 != v28);
      v28 = *(v2 + 96);
    }

    while (v28 != v32)
    {
      v37 = *(v28 - 1);
      if (v37)
      {
        std::__shared_weak_count::__release_weak(v37);
      }

      v28 -= 2;
    }

    *(v2 + 96) = v32;
    goto LABEL_64;
  }

LABEL_65:
  geo::write_lock_guard::~write_lock_guard(&v38);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17FunctionConstantsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A501E0;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::ColorRampDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ColorRampDataHandle>();
    unk_1EB83D0C0 = 0xE103B5C60804137ELL;
    qword_1EB83D0C8 = "md::ls::ColorRampDataHandle]";
    qword_1EB83D0D0 = 27;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::ColorRampDataHandle const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorWater,md::ls::FunctionConstants &,md::ls::ColorRampDataHandle const&>(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ColorRampDataHandle>(v3);
  ecs2::View<void,md::ls::FunctionConstants,md::ls::HasMaterialRasterRenderItem const>::each<md::ls::FunctionConstants&,md::ls::HasMaterialRasterRenderItem const&>(v42, v4, v5);
  v39 = v42[0];
  v40 = v42[1];
  v41 = v43;
  v6 = *&v42[0];
  v37 = v44;
  if (*&v42[0] == v44)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v9 = _ZTWN4ecs27Runtime11_stackIndexE();
    v10 = 0;
  }

  else
  {
    v36 = a1;
    v7 = v40;
    _ZTWN4ecs27Runtime11_localStateE();
    v9 = _ZTWN4ecs27Runtime11_stackIndexE();
    v10 = 0;
    v11 = *(&v39 + 1);
    do
    {
      v12 = v6[1];
      v13 = v12 & 0x3F;
      v14 = (v12 >> 3) & 0x1FF8;
      v15 = *(*(*(v7 + 8) + v14) + 4 * v13 + 2);
      v16 = v15 & 0x3F;
      v17 = *(*(v7 + 56) + ((v15 >> 3) & 0x1FF8));
      v18 = *(*(*(*(&v7 + 1) + 8) + v14) + 4 * v13 + 2);
      v19 = v18 & 0x3F;
      v20 = *(*(*(&v7 + 1) + 56) + ((v18 >> 3) & 0x1FF8));
      v21 = v9;
      v22 = v8;
      *(v8 + 104 * *v9 + 24) = *v6;
      v23 = v17 + 70 * v16;
      *(v23 + 5) = 0;
      v24 = (v23 + 5);
      v25 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      ColorRampData = md::VKMRenderResourcesStore::getColorRampData(v25, *(v20 + 8 * v19));
      if (ColorRampData && *(ColorRampData + 80) == 1 && *(ColorRampData + 16))
      {
        *v24 = 1;
      }

      ++v10;
      v27 = v6 + 2;
      do
      {
        v6 = v27;
        *&v39 = v27;
        if (v27 == v11)
        {
          break;
        }

        v28 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v39, *v27, v27[1]);
        v27 = v6 + 2;
      }

      while (!v28);
      v8 = v22;
      v9 = v21;
    }

    while (v6 != v37);
    v29 = *(v36 + 8);
    {
      v9 = v21;
      v8 = v22;
      if (v35)
      {
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
        unk_1EB83D2C0 = 0xC62D89929260CB56;
        qword_1EB83D2C8 = "md::ls::FunctionConstants]";
        qword_1EB83D2D0 = 25;
        v9 = v21;
        v8 = v22;
      }
    }

    *(v29 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v29 + 4096);
  }

  *(v8 + 104 * *v9 + 24) = -65536;
  v30 = v8 + 104 * *v9;
  v31 = *(v30 + 92);
  *(v30 + 92) = v31 + 1;
  *(v30 + 4 * v31 + 28) = v10;
  v32 = v8 + 104 * *v9;
  v34 = *(v32 + 92);
  v33 = (v32 + 92);
  if (v34 >= 0x10)
  {
    *v33 = 0;
  }
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorWater>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorWater>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorWater,md::ls::FunctionConstants &,md::ls::ColorRampDataHandle const&>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
}

void ggl::StandardPostchain::SSAOBlurPipelineState::~SSAOBlurPipelineState(ggl::StandardPostchain::SSAOBlurPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorClimateTint,md::ls::FunctionConstants &,md::ls::NeedsClimateTint const&>(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsClimateTint>(v3);
  v6 = v5;
  if (*(v5 + 40) - *(v5 + 32) >= *(v4 + 40) - *(v4 + 32))
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(v7 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v46, *(v7 + 32), v8, v4, v5);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v45, v8, v8, v4, v6);
  v9 = v46[0];
  v43 = v45;
  if (v46[0] == v45)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
  }

  else
  {
    v10 = v46[3];
    v41 = a1;
    v42 = v46[2];
    _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
    v14 = v46[1];
    do
    {
      v15 = v9[1];
      v16 = v15 & 0x3F;
      v17 = (v15 >> 3) & 0x1FF8;
      v18 = *(*(*(v42 + 1) + v17) + 4 * v16 + 2);
      v19 = *(*(v42 + 7) + ((v18 >> 3) & 0x1FF8));
      v20 = *(*(*(v10 + 1) + v17) + 4 * v16 + 2);
      v21 = *(*(v10 + 7) + ((v20 >> 3) & 0x1FF8));
      v22 = v12;
      v23 = v11;
      *(v11 + 104 * *v12 + 24) = *v9;
      v24 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v25 = v24[1743];
      if (v25)
      {
        v26 = *(v21 + 8 * (v20 & 0x3F));
        v27 = vcnt_s8(v25);
        v27.i16[0] = vaddlv_u8(v27);
        if (v27.u32[0] > 1uLL)
        {
          v28 = *(v21 + 8 * (v20 & 0x3F));
          if (v26 >= *&v25)
          {
            v28 = v26 % *&v25;
          }
        }

        else
        {
          v28 = (*&v25 - 1) & v26;
        }

        v29 = *(v24[1742] + 8 * v28);
        if (!v29 || (v30 = *v29) == 0)
        {
LABEL_22:
          v25.i8[0] = 0;
          goto LABEL_23;
        }

        while (1)
        {
          v31 = v30[1];
          if (v26 == v31)
          {
            if (v30[2] == v26)
            {
              v25.i8[0] = *(v30 + 24);
              break;
            }
          }

          else
          {
            if (v27.u32[0] > 1uLL)
            {
              if (v31 >= *&v25)
              {
                v31 %= *&v25;
              }
            }

            else
            {
              v31 &= *&v25 - 1;
            }

            if (v31 != v28)
            {
              goto LABEL_22;
            }
          }

          v30 = *v30;
          if (!v30)
          {
            goto LABEL_22;
          }
        }
      }

LABEL_23:
      *(v19 + 70 * (v18 & 0x3F) + 28) = v25.i8[0] & 1;
      ++v13;
      v32 = v9 + 2;
      do
      {
        v9 = v32;
        v46[0] = v32;
        if (v32 == v14)
        {
          break;
        }

        v33 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(v46, *v32, v32[1]);
        v32 = v9 + 2;
      }

      while (!v33);
      v11 = v23;
      v12 = v22;
    }

    while (v9 != v43);
    v34 = *(v41 + 8);
    {
      v12 = v22;
      v11 = v23;
      if (v40)
      {
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
        unk_1EB83D2C0 = 0xC62D89929260CB56;
        qword_1EB83D2C8 = "md::ls::FunctionConstants]";
        qword_1EB83D2D0 = 25;
        v12 = v22;
        v11 = v23;
      }
    }

    *(v34 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v34 + 4096);
  }

  *(v11 + 104 * *v12 + 24) = -65536;
  v35 = v11 + 104 * *v12;
  v36 = *(v35 + 92);
  *(v35 + 92) = v36 + 1;
  *(v35 + 4 * v36 + 28) = v13;
  v37 = v11 + 104 * *v12;
  v39 = *(v37 + 92);
  v38 = (v37 + 92);
  if (v39 >= 0x10)
  {
    *v38 = 0;
  }
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorClimateTint>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorClimateTint>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorClimateTint,md::ls::FunctionConstants &,md::ls::NeedsClimateTint const&>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::NeedsClimateTint>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsClimateTint>();
    *algn_1EB83D5A8 = 0x11BB47B172EB0B40;
    qword_1EB83D5B0 = "md::ls::NeedsClimateTint]";
    qword_1EB83D5B8 = 24;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t md::ita::PrepareFunctionConstantDescriptorRoutelineMask::operator()(uint64_t **a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v32 = ecs2::ExecutionTask<md::PassListProvider *,md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v40[0] = &unk_1F2A35240;
  v40[1] = &v32;
  v41 = v40;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleRouteLineMaskDataKeyHandle>(v3);
  v6 = v5;
  if (*(v5 + 40) - *(v5 + 32) >= *(v4 + 40) - *(v4 + 32))
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(v7 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v37, *(v7 + 32), v8, v4, v5);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v36, v8, v8, v4, v6);
  v9 = v37;
  v35 = v39;
  v33 = v37;
  v34 = v38;
  v10 = v36;
  if (v37 == v36)
  {
    v12 = _ZTWN4ecs27Runtime11_localStateE();
    v13 = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = 0;
  }

  else
  {
    v11 = v38;
    v12 = _ZTWN4ecs27Runtime11_localStateE();
    v13 = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = 0;
    v15 = *(&v37 + 1);
    do
    {
      v16 = v9[1];
      v17 = (v16 >> 3) & 0x1FF8;
      v18 = v16 & 0x3F;
      v19 = *(*(*(v11 + 8) + v17) + 4 * v18 + 2);
      v20 = *(*(v11 + 56) + ((v19 >> 3) & 0x1FF8));
      v21 = *(*(*(*(&v11 + 1) + 8) + v17) + 4 * v18 + 2);
      v22 = *(*(*(&v11 + 1) + 56) + ((v21 >> 3) & 0x1FF8));
      *(v12 + 104 * *v13 + 24) = *v9;
      if (!v41)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v41 + 48))(v41, v20 + 70 * (v19 & 0x3F), v22 + 8 * (v21 & 0x3F));
      ++v14;
      v23 = v9 + 2;
      do
      {
        v9 = v23;
        *&v37 = v23;
        if (v23 == v15)
        {
          break;
        }

        v24 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v37, *v23, v23[1]);
        v23 = v9 + 2;
      }

      while (!v24);
    }

    while (v9 != v10);
    v25 = *(a2 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v25 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v25 + 4096);
  }

  *(v12 + 104 * *v13 + 24) = -65536;
  v26 = v12 + 104 * *v13;
  v27 = *(v26 + 92);
  *(v26 + 92) = v27 + 1;
  *(v26 + 4 * v27 + 28) = v14;
  v28 = v12 + 104 * *v13;
  v30 = *(v28 + 92);
  v29 = (v28 + 92);
  if (v30 >= 0x10)
  {
    *v29 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::StyleRouteLineMaskDataKeyHandle const&)>::~__value_func[abi:nn200100](v40);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorRoutelineMask>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorRoutelineMask>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareFunctionConstantDescriptorRoutelineMask::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

void ggl::StandardPostchain::DownsampleDepthPipelineState::~DownsampleDepthPipelineState(ggl::StandardPostchain::DownsampleDepthPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t *ecs2::ExecutionTask<md::PassListProvider *,md::LayoutContextProvider *>::service<md::PassListProvider>(uint64_t **a1)
{
  v1 = a1[1];
  if (!v1)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0xD369A4D92C8FFE6CLL)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v1 = 0;
    }

    else
    {
      v1 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[1] = v1;
  }

  return v1;
}

void md::LabelsLogic::prune(uint64_t a1, int a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  for (i = *(a1 + 192); i; i = *i)
  {
    v4 = i[3];
    v5[0] = &unk_1F2A113D8;
    v5[1] = v4;
    v5[3] = v5;
    md::LabelManager::queueCommand(v4, 1, 1, v5);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
    if (a2 == 2)
    {
      if (md::LabelManager::tryWaitForBkgdUpdateComplete(v4, 0x1F4u))
      {
        md::LabelManager::flushCommandQueue(v4);
      }
    }
  }
}

uint64_t RendererPassListProviderWrapper::standardPassList(RendererPassListProviderWrapper *this)
{
  if ((*(this + 17) | 2) == 2)
  {
    return *(*(this + 1) + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<md::LabelManager::didReceiveMemoryWarning(BOOL)::$_0,std::allocator<md::LabelManager::didReceiveMemoryWarning(BOOL)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A113D8;
  a2[1] = v2;
  return result;
}

void md::ita::PrepareFunctionConstantDescriptorGlobeLight::operator()(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = +[VKDebugSettings sharedSettings];
  if ([v2 daVinciGlobeLighting])
  {
    v3 = [v2 daVinciAdvancedLightingEnabled];
    v34 = v3;
    if (v3)
    {
      v42[0] = &unk_1F2A34E98;
      v42[1] = &v34;
      v43 = v42;
      v4 = *(a1 + 8);
      v5 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v4);
      v6 = ecs2::BasicRegistry<void>::storage<md::ls::UseGlobeLighting>(v4);
      v7 = v6;
      if (*(v6 + 40) - *(v6 + 32) >= *(v5 + 40) - *(v5 + 32))
      {
        v8 = v5;
      }

      else
      {
        v8 = v6;
      }

      v9 = *(v8 + 40);
      ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v39, *(v8 + 32), v9, v5, v6);
      ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v38, v9, v9, v5, v7);
      v10 = v39;
      v37 = v41;
      v35 = v39;
      v36 = v40;
      v11 = v38;
      if (v39 == v38)
      {
        v13 = _ZTWN4ecs27Runtime11_localStateE();
        v14 = _ZTWN4ecs27Runtime11_stackIndexE();
        v15 = 0;
      }

      else
      {
        v32 = a1;
        v33 = v2;
        v12 = v40;
        v13 = _ZTWN4ecs27Runtime11_localStateE();
        v14 = _ZTWN4ecs27Runtime11_stackIndexE();
        v15 = 0;
        v16 = *(&v39 + 1);
        do
        {
          v17 = v10[1];
          v18 = v17 & 0x3F;
          v19 = (v17 >> 3) & 0x1FF8;
          v20 = *(*(*(v12 + 8) + v19) + 4 * v18 + 2);
          v21 = *(*(v12 + 56) + ((v20 >> 3) & 0x1FF8));
          v22 = *(*(&v12 + 1) + 32);
          v23 = *(*(*(*(&v12 + 1) + 8) + v19) + 4 * v18 + 2);
          *(v13 + 104 * *v14 + 24) = *v10;
          if (!v43)
          {
            std::__throw_bad_function_call[abi:nn200100]();
          }

          (*(*v43 + 48))(v43, v21 + 70 * (v20 & 0x3F), v22 + 4 * v23);
          ++v15;
          v24 = v10 + 2;
          do
          {
            v10 = v24;
            *&v39 = v24;
            if (v24 == v16)
            {
              break;
            }

            v25 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v39, *v24, v24[1]);
            v24 = v10 + 2;
          }

          while (!v25);
        }

        while (v10 != v11);
        v26 = *(v32 + 8);
        {
          ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
          unk_1EB83D2C0 = 0xC62D89929260CB56;
          qword_1EB83D2C8 = "md::ls::FunctionConstants]";
          qword_1EB83D2D0 = 25;
        }

        *(v26 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v26 + 4096);
        v2 = v33;
      }

      *(v13 + 104 * *v14 + 24) = -65536;
      v27 = v13 + 104 * *v14;
      v28 = *(v27 + 92);
      *(v27 + 92) = v28 + 1;
      *(v27 + 4 * v28 + 28) = v15;
      v29 = v13 + 104 * *v14;
      v31 = *(v29 + 92);
      v30 = (v29 + 92);
      if (v31 >= 0x10)
      {
        *v30 = 0;
      }

      std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::UseGlobeLighting const&)>::~__value_func[abi:nn200100](v42);
    }
  }
}

void sub_1B2931E2C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::UseGlobeLighting const&)>::~__value_func[abi:nn200100](v2 - 136);

  _Unwind_Resume(a1);
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorGlobeLight>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorGlobeLight>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  md::ita::PrepareFunctionConstantDescriptorGlobeLight::operator()(a2);
  *(a1 + 8) = 0;
}

void ggl::StandardPostchain::SSAOPipelineState::~SSAOPipelineState(ggl::StandardPostchain::SSAOPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UseGlobeLighting>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseGlobeLighting>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseGlobeLighting>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseGlobeLighting>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ggl::StandardPostchain::TentBlurPipelineState::~TentBlurPipelineState(ggl::StandardPostchain::TentBlurPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseGlobeLighting>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseGlobeLighting>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UseGlobeLighting>();
    *algn_1EB83D378 = 0x97E77A2C4FA4C0B5;
    qword_1EB83D380 = "md::ls::UseGlobeLighting]";
    qword_1EB83D388 = 24;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UseGlobeLighting>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UseGlobeLighting>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[509];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16UseGlobeLightingEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A50248;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16UseGlobeLightingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A50248;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::UseGlobeLighting const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SupportsStylizedShading>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsStylizedShading>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsStylizedShading>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsStylizedShading>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
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

void ggl::StandardPostchain::BGBlurPipelineState::~BGBlurPipelineState(ggl::StandardPostchain::BGBlurPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorStylizedShading>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorStylizedShading>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v4 = (a1 + 8);
  v5 = *(a2 + 8);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v5);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsStylizedShading>(v5);
  v8 = v7;
  if (*(v7 + 40) - *(v7 + 32) >= *(v6 + 40) - *(v6 + 32))
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(v9 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v35, *(v9 + 32), v10, v6, v7);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v34, v10, v10, v6, v8);
  v11 = v35[0];
  v12 = v34;
  if (v35[0] == v34)
  {
    v14 = _ZTWN4ecs27Runtime11_localStateE();
    v15 = _ZTWN4ecs27Runtime11_stackIndexE();
    v16 = 0;
  }

  else
  {
    v32 = a2;
    v33 = v4;
    v13 = v35[2];
    v14 = _ZTWN4ecs27Runtime11_localStateE();
    v15 = _ZTWN4ecs27Runtime11_stackIndexE();
    v16 = 0;
    v17 = v35[1];
    do
    {
      v18 = *(*(*(v13 + 1) + ((v11[1] >> 3) & 0x1FF8)) + 4 * (v11[1] & 0x3FLL) + 2);
      v19 = *(*(v13 + 7) + ((v18 >> 3) & 0x1FF8));
      *(v14 + 104 * *v15 + 24) = *v11;
      v20 = *(a1 + 16);
      if (!v20)
      {
        v20 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***(a1 + 8), *(**(a1 + 8) + 8));
        *(a1 + 16) = v20;
      }

      v21 = (**v20)(v20);
      v22 = md::LayoutContext::get<md::LightingLogicContext>(*(v21 + 8));
      v23 = v22 && (*(v22 + 262) & 1) != 0;
      *(v19 + 70 * (v18 & 0x3F) + 33) = v23;
      ++v16;
      v24 = v11 + 2;
      do
      {
        v11 = v24;
        v35[0] = v24;
        if (v24 == v17)
        {
          break;
        }

        v25 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(v35, *v24, v24[1]);
        v24 = v11 + 2;
      }

      while (!v25);
    }

    while (v11 != v12);
    v26 = *(v32 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v26 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v26 + 4096);
    v4 = v33;
  }

  *(v14 + 104 * *v15 + 24) = -65536;
  v27 = v14 + 104 * *v15;
  v28 = *(v27 + 92);
  *(v27 + 92) = v28 + 1;
  *(v27 + 4 * v28 + 28) = v16;
  v29 = v14 + 104 * *v15;
  v31 = *(v29 + 92);
  v30 = (v29 + 92);
  if (v31 >= 0x10)
  {
    *v30 = 0;
  }

  *v4 = 0;
  v4[1] = 0;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsStylizedShading>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SupportsStylizedShading>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsStylizedShading>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SupportsStylizedShading>(void)::localId;
    unk_1EB82B490 = 0x6E6C3F5AAEB152E5;
    qword_1EB82B498 = "md::ls::SupportsStylizedShading]";
    qword_1EB82B4A0 = 31;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MaterialSpecularity>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialSpecularity>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialSpecularity>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialSpecularity>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorSpecularContribution,md::ls::FunctionConstants &,md::ls::MaterialSpecularity const&>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialSpecularity>(v2);
  v5 = v4;
  if (*(v4 + 40) - *(v4 + 32) >= *(v3 + 40) - *(v3 + 32))
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(v6 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v27, *(v6 + 32), v7, v3, v4);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v26, v7, v7, v3, v5);
  v8 = v27[0];
  v9 = v26;
  if (v27[0] == v26)
  {
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
  }

  else
  {
    v10 = v27[2];
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
    v14 = v27[1];
    do
    {
      v15 = *(*(*(v10 + 1) + ((v8[1] >> 3) & 0x1FF8)) + 4 * (v8[1] & 0x3FLL) + 2);
      v16 = v15 & 0x3F;
      v17 = *(*(v10 + 7) + ((v15 >> 3) & 0x1FF8));
      *(v11 + 104 * *v12 + 24) = *v8;
      *(v17 + 70 * v16 + 21) = 1;
      ++v13;
      v18 = v8 + 2;
      do
      {
        v8 = v18;
        v27[0] = v18;
        if (v18 == v14)
        {
          break;
        }

        v19 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(v27, *v18, v18[1]);
        v18 = v8 + 2;
      }

      while (!v19);
    }

    while (v8 != v9);
    v20 = *(a1 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v20 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v20 + 4096);
  }

  *(v11 + 104 * *v12 + 24) = -65536;
  v21 = v11 + 104 * *v12;
  v22 = *(v21 + 92);
  *(v21 + 92) = v22 + 1;
  *(v21 + 4 * v22 + 28) = v13;
  v23 = v11 + 104 * *v12;
  v25 = *(v23 + 92);
  v24 = (v23 + 92);
  if (v25 >= 0x10)
  {
    *v24 = 0;
  }
}

void ggl::StandardPostchain::FGBlurPipelineState::~FGBlurPipelineState(ggl::StandardPostchain::FGBlurPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSpecularContribution>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSpecularContribution>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorSpecularContribution,md::ls::FunctionConstants &,md::ls::MaterialSpecularity const&>(a2);
  *(a1 + 8) = 0;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialSpecularity>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialSpecularity>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MaterialSpecularity>();
    unk_1EB83D080 = 0x1631ACE79ACA9DD7;
    qword_1EB83D088 = "md::ls::MaterialSpecularity]";
    qword_1EB83D090 = 27;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MaterialSpecularity>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MaterialSpecularity>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[478];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls19MaterialSpecularityEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F9650;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19MaterialSpecularityEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F9650;
  a2[1] = v2;
  return result;
}

void ggl::StandardPostchain::DownsampleCoCPipelineState::~DownsampleCoCPipelineState(ggl::StandardPostchain::DownsampleCoCPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorOverlay,md::ls::FunctionConstants &,md::ls::HasOverlayPatch const&>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v2);
  HasOverlay = ecs2::BasicRegistry<void>::storage<md::ls::HasOverlayPatch>(v2);
  v5 = HasOverlay;
  if (*(HasOverlay + 40) - *(HasOverlay + 32) >= *(v3 + 40) - *(v3 + 32))
  {
    v6 = v3;
  }

  else
  {
    v6 = HasOverlay;
  }

  v7 = *(v6 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v27, *(v6 + 32), v7, v3, HasOverlay);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v26, v7, v7, v3, v5);
  v8 = v27[0];
  v9 = v26;
  if (v27[0] == v26)
  {
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
  }

  else
  {
    v10 = v27[2];
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
    v14 = v27[1];
    do
    {
      v15 = *(*(*(v10 + 1) + ((v8[1] >> 3) & 0x1FF8)) + 4 * (v8[1] & 0x3FLL) + 2);
      v16 = v15 & 0x3F;
      v17 = *(*(v10 + 7) + ((v15 >> 3) & 0x1FF8));
      *(v11 + 104 * *v12 + 24) = *v8;
      *(v17 + 70 * v16 + 19) = 1;
      ++v13;
      v18 = v8 + 2;
      do
      {
        v8 = v18;
        v27[0] = v18;
        if (v18 == v14)
        {
          break;
        }

        v19 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(v27, *v18, v18[1]);
        v18 = v8 + 2;
      }

      while (!v19);
    }

    while (v8 != v9);
    v20 = *(a1 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v20 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v20 + 4096);
  }

  *(v11 + 104 * *v12 + 24) = -65536;
  v21 = v11 + 104 * *v12;
  v22 = *(v21 + 92);
  *(v21 + 92) = v22 + 1;
  *(v21 + 4 * v22 + 28) = v13;
  v23 = v11 + 104 * *v12;
  v25 = *(v23 + 92);
  v24 = (v23 + 92);
  if (v25 >= 0x10)
  {
    *v24 = 0;
  }
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorOverlay>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorOverlay>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorOverlay,md::ls::FunctionConstants &,md::ls::HasOverlayPatch const&>(a2);
  *(a1 + 8) = 0;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::HasOverlayPatch>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasOverlayPatch>();
    unk_1EB83D6C0 = 0xE40027D1222182B5;
    qword_1EB83D6C8 = "md::ls::HasOverlayPatch]";
    qword_1EB83D6D0 = 23;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IsElevated>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsElevated>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsElevated>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsElevated>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ggl::StandardPostchain::DepthSplitPipelineState::~DepthSplitPipelineState(ggl::StandardPostchain::DepthSplitPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorDualElevation,md::ls::FunctionConstants &,md::ls::IsElevated const&>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::IsElevated>(v2);
  v5 = v4;
  if (*(v4 + 40) - *(v4 + 32) >= *(v3 + 40) - *(v3 + 32))
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(v6 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v27, *(v6 + 32), v7, v3, v4);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v26, v7, v7, v3, v5);
  v8 = v27[0];
  v9 = v26;
  if (v27[0] == v26)
  {
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
  }

  else
  {
    v10 = v27[2];
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
    v14 = v27[1];
    do
    {
      v15 = *(*(*(v10 + 1) + ((v8[1] >> 3) & 0x1FF8)) + 4 * (v8[1] & 0x3FLL) + 2);
      v16 = v15 & 0x3F;
      v17 = *(*(v10 + 7) + ((v15 >> 3) & 0x1FF8));
      *(v11 + 104 * *v12 + 24) = *v8;
      *(v17 + 70 * v16 + 12) = 1;
      ++v13;
      v18 = v8 + 2;
      do
      {
        v8 = v18;
        v27[0] = v18;
        if (v18 == v14)
        {
          break;
        }

        v19 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(v27, *v18, v18[1]);
        v18 = v8 + 2;
      }

      while (!v19);
    }

    while (v8 != v9);
    v20 = *(a1 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v20 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v20 + 4096);
  }

  *(v11 + 104 * *v12 + 24) = -65536;
  v21 = v11 + 104 * *v12;
  v22 = *(v21 + 92);
  *(v21 + 92) = v22 + 1;
  *(v21 + 4 * v22 + 28) = v13;
  v23 = v11 + 104 * *v12;
  v25 = *(v23 + 92);
  v24 = (v23 + 92);
  if (v25 >= 0x10)
  {
    *v24 = 0;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsElevated>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsElevated>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsElevated>();
    unk_1EB83DCA0 = 0x8261D2F258A435BBLL;
    qword_1EB83DCA8 = "md::ls::IsElevated]";
    qword_1EB83DCB0 = 18;
  }
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorDualElevation>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorDualElevation>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorDualElevation,md::ls::FunctionConstants &,md::ls::IsElevated const&>(a2);
  *(a1 + 8) = 0;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsElevated>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsElevated>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[88];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls10IsElevatedEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4F6A0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2UV>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2UV>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10IsElevatedEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4F6A0;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::PrepareFunctionConstantDescriptorSplined::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, *(**a1 + 8));
    *(a1 + 8) = v6;
  }

  v7 = (**v6)(v6);
  v8 = md::LayoutContext::get<md::CameraContext>(*(v7 + 8));
  result = md::CameraContext::isSplinedEnabled(v8, v9);
  if (result)
  {
    v74[0] = &unk_1F2A34DC0;
    v75 = v74;
    v11 = *(a2 + 8);
    v12 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v11);
    v13 = ecs2::BasicRegistry<void>::storage<md::ls::IsMercator>(v11);
    v14 = ecs2::BasicRegistry<void>::storage<md::ls::IsOpaque>(v11);
    *&v76 = v12;
    *(&v76 + 1) = v13;
    v15 = 8;
    v16 = v12;
    v17 = &v76;
    *&v77 = v14;
    do
    {
      if (*(*(&v76 + v15) + 40) - *(*(&v76 + v15) + 32) < *(v16 + 40) - *(v16 + 32))
      {
        v16 = *(&v76 + v15);
        v17 = &v76 + v15;
      }

      v15 += 8;
    }

    while (v15 != 24);
    v18 = *(*v17 + 32);
    v19 = *(*v17 + 40);
    *&v76 = v18;
    *(&v76 + 1) = v19;
    *&v77 = v12;
    *(&v77 + 1) = v13;
    *&v78 = v14;
    while (v18 != v19 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v76, *v18, v18[1]))
    {
      v18 += 2;
      *&v76 = v18;
    }

    v71 = v76;
    v72 = v77;
    v73 = v78;
    v20 = v76;
    if (v76 == v19)
    {
      v23 = _ZTWN4ecs27Runtime11_localStateE();
      v24 = _ZTWN4ecs27Runtime11_stackIndexE();
      v25 = 0;
    }

    else
    {
      v21 = v72;
      v22 = v73;
      v23 = _ZTWN4ecs27Runtime11_localStateE();
      v24 = _ZTWN4ecs27Runtime11_stackIndexE();
      v25 = 0;
      v26 = *(&v71 + 1);
      do
      {
        v27 = v20[1];
        v28 = v27 & 0x3F;
        v29 = (v27 >> 3) & 0x1FF8;
        v30 = *(*(*(v21 + 8) + v29) + 4 * v28 + 2);
        v31 = *(*(v21 + 56) + ((v30 >> 3) & 0x1FF8));
        v32 = *(*(&v21 + 1) + 32);
        v33 = *(*(*(*(&v21 + 1) + 8) + v29) + 4 * v28 + 2);
        v34 = *(v22 + 32);
        v35 = *(*(*(v22 + 8) + v29) + 4 * v28 + 2);
        *(v23 + 104 * *v24 + 24) = *v20;
        if (!v75)
        {
LABEL_43:
          std::__throw_bad_function_call[abi:nn200100]();
        }

        (*(*v75 + 48))(v75, v31 + 70 * (v30 & 0x3F), v32 + 4 * v33, v34 + 4 * v35);
        ++v25;
        v36 = v20 + 2;
        while (1)
        {
          v20 = v36;
          *&v71 = v36;
          if (v36 == v26)
          {
            break;
          }

          v37 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v71, *v36, v36[1]);
          v36 = v20 + 2;
          if (v37)
          {
            v38 = v20;
            goto LABEL_20;
          }
        }

        v38 = v26;
LABEL_20:
        ;
      }

      while (v38 != v19);
      v39 = *(a2 + 8);
      {
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
        unk_1EB83D2C0 = 0xC62D89929260CB56;
        qword_1EB83D2C8 = "md::ls::FunctionConstants]";
        qword_1EB83D2D0 = 25;
      }

      *(v39 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v39 + 4096);
    }

    *(v23 + 104 * *v24 + 24) = -65536;
    v40 = v23 + 104 * *v24;
    v41 = *(v40 + 92);
    *(v40 + 92) = v41 + 1;
    *(v40 + 4 * v41 + 28) = v25;
    v42 = v23 + 104 * *v24;
    v44 = *(v42 + 92);
    v43 = (v42 + 92);
    if (v44 >= 0x10)
    {
      *v43 = 0;
    }

    std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::IsOpaque const&)>::~__value_func[abi:nn200100](v74);
    v74[0] = &unk_1F2A34E08;
    v75 = v74;
    v45 = *(a3 + 8);
    v46 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v45);
    v47 = ecs2::BasicRegistry<void>::storage<md::ls::IsTransparent>(v45);
    v48 = v47;
    if (*(v47 + 40) - *(v47 + 32) >= *(v46 + 40) - *(v46 + 32))
    {
      v49 = v46;
    }

    else
    {
      v49 = v47;
    }

    v50 = *(v49 + 40);
    ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v71, *(v49 + 32), v50, v46, v47);
    ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v78 + 1, v50, v50, v46, v48);
    v51 = v71;
    *&v78 = v73;
    v76 = v71;
    v77 = v72;
    v52 = *(&v78 + 1);
    if (v71 == *(&v78 + 1))
    {
      v53 = 0;
    }

    else
    {
      v53 = 0;
      v54 = v72;
      v55 = *(&v71 + 1);
      do
      {
        v56 = v51[1];
        v57 = (v56 >> 3) & 0x1FF8;
        v58 = v56 & 0x3F;
        v59 = *(*(*(v54 + 8) + v57) + 4 * v58 + 2);
        v60 = *(*(v54 + 56) + ((v59 >> 3) & 0x1FF8));
        v61 = *(*(*(*(&v54 + 1) + 8) + v57) + 4 * v58 + 2);
        v62 = *(*(*(&v54 + 1) + 56) + ((v61 >> 3) & 0x1FF8));
        *(v23 + 104 * *v24 + 24) = *v51;
        if (!v75)
        {
          goto LABEL_43;
        }

        (*(*v75 + 48))(v75, v60 + 70 * (v59 & 0x3F), v62 + 4 * (v61 & 0x3F));
        ++v53;
        v63 = v51 + 2;
        do
        {
          v51 = v63;
          *&v71 = v63;
          if (v63 == v55)
          {
            break;
          }

          v64 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v71, *v63, v63[1]);
          v63 = v51 + 2;
        }

        while (!v64);
      }

      while (v51 != v52);
      v65 = *(a3 + 8);
      {
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
        unk_1EB83D2C0 = 0xC62D89929260CB56;
        qword_1EB83D2C8 = "md::ls::FunctionConstants]";
        qword_1EB83D2D0 = 25;
      }

      *(v65 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v65 + 4096);
    }

    *(v23 + 104 * *v24 + 24) = -65536;
    v66 = v23 + 104 * *v24;
    v67 = *(v66 + 92);
    *(v66 + 92) = v67 + 1;
    *(v66 + 4 * v67 + 28) = v53;
    v68 = v23 + 104 * *v24;
    v70 = *(v68 + 92);
    v69 = (v68 + 92);
    if (v70 >= 0x10)
    {
      *v69 = 0;
    }

    return std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsTransparent const&)>::~__value_func[abi:nn200100](v74);
  }

  return result;
}

void sub_1B2934718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsTransparent const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSplined>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSplined>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareFunctionConstantDescriptorSplined::operator()(a1 + 8, a2, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}