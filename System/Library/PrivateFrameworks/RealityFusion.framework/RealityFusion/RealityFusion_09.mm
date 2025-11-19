void __copy_helper_block_ea8_32c108_ZTSKZN2rf9data_flow8consumer24AnchorManagementConsumer23sceneRemovalEventHandleEP7RESceneP10REEventBusE3__0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v2 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v2;
  }
}

void __destroy_helper_block_ea8_32c108_ZTSKZN2rf9data_flow8consumer24AnchorManagementConsumer23sceneRemovalEventHandleEP7RESceneP10REEventBusE3__0(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::find<REScene *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_261855550(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,ARReferenceImage * {__strong}>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_0,std::allocator<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_0>,BOOL ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28740B138;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_0,std::allocator<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_0>,BOOL ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = *(a2 + 256);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_28740B1A8[v2])(&v5);
}

uint64_t std::__function::__func<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_0,std::allocator<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_0>,BOOL ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::__emplace_unique_key_args<REScene *,std::piecewise_construct_t const&,std::tuple<REScene * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_261855A30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::find<unsigned long>(a1, a2);
  if (result)
  {
    std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261856500(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261856764(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2618569C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<void ()(NSSet<ARReferenceImage *> *)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261856C2C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__emplace_unique_key_args<REScene *,std::piecewise_construct_t const&,std::tuple<REScene * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_261856EDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions::~SceneSubscriptions((v2 + 24));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__erase_unique<REScene *>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::find<REScene *>(a1, a2);
  if (result)
  {
    std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

void sub_261856FE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = a2 + 2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) >> 47));
  *(v4 - 1) = v6;
  v7 = std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__node_insert_unique_prepare[abi:ne200100](a1, v6, v4);
  if (v7)
  {
    return v7;
  }

  std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

void *std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (i[2] == *a3)
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__rehash<true>(a1, v15);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
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

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

uint64_t rf::data_flow::consumer::SyntheticEnvironmentConsumer::SyntheticEnvironmentConsumer(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28740B1F8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = *MEMORY[0x277D00848];
  *(a1 + 48) = *MEMORY[0x277D00848];
  *(a1 + 56) = v2;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 200) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  *(a1 + 208) = dispatch_queue_create("RealityFusionSyntheticEnvironmentConsumer", v4);

  *(a1 + 216) = dispatch_group_create();
  return a1;
}

void rf::data_flow::consumer::SyntheticEnvironmentConsumer::~SyntheticEnvironmentConsumer(rf::data_flow::consumer::SyntheticEnvironmentConsumer *this)
{
  *this = &unk_28740B1F8;
  v2 = *(this + 27);
  if (v2)
  {
    dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
    v3 = *(this + 27);
    *(this + 27) = 0;
  }

  v4 = *(this + 26);
  *(this + 26) = 0;

  rf::data_flow::consumer::SyntheticEnvironmentConsumer::removeAllSyntheticAssets(this);
  std::__function::__value_func<void ()(NSURL *,NSError *)>::~__value_func[abi:ne200100](this + 176);
  std::deque<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation>::~deque[abi:ne200100](this + 120);
  std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::~__hash_table(this + 80);
  RESharedPtr<REEntity>::~RESharedPtr(this + 9);
  RESharedPtr<REAsset>::~RESharedPtr(this + 8);
  RESharedPtr<REAsset>::~RESharedPtr(this + 5);
  RESharedPtr<REAsset>::~RESharedPtr(this + 4);
}

{
  rf::data_flow::consumer::SyntheticEnvironmentConsumer::~SyntheticEnvironmentConsumer(this);

  JUMPOUT(0x26670D060);
}

uint64_t rf::data_flow::consumer::SyntheticEnvironmentConsumer::removeAllSyntheticAssets(rf::data_flow::consumer::SyntheticEnvironmentConsumer *this)
{
  result = *(this + 9);
  if (result)
  {
    if (!REEntityGetSceneNullable())
    {
      rf::getMessage("Synthetic environments root entity has been removed from the scene!", __p);
      rf::internal::logAssert(__p);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }

      rf::internal::debugBreakHandler(v4);
    }

    std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::clear(this + 80);
    v3 = *(this + 9);
    REEntitySetParent();
    if (*(this + 9))
    {
      RERelease();
    }

    *(this + 9) = 0;
    return rf::data_flow::consumer::SyntheticEnvironmentConsumer::removeRenderGraphProviders(this);
  }

  return result;
}

void sub_26185754C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::data_flow::consumer::SyntheticEnvironmentConsumer::removeRenderGraphProviders(uint64_t result)
{
  v1 = result;
  v2 = *MEMORY[0x277D00848];
  if (*(result + 56) != *MEMORY[0x277D00848])
  {
    result = RESceneRenderGraphFileProviderArrayRemove();
    *(v1 + 56) = v2;
  }

  if (*(v1 + 48) != v2)
  {
    result = RESceneRenderGraphFileProviderArrayRemove();
    *(v1 + 48) = v2;
  }

  return result;
}

void std::function<void ()(NSURL *,NSError *)>::operator()(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v7, &v6);
}

void ___ZN2rf9data_flow8consumer28SyntheticEnvironmentConsumer24addSyntheticAssetToSceneERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEP7RESceneP16REServiceLocator_block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v3 = rf::realityFusionLogObject(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 56);
      *buf = 136315138;
      *&buf[4] = REEntityGetName();
      _os_log_impl(&dword_2617CB000, v3, OS_LOG_TYPE_DEFAULT, "SyntheticEnvironmentConsumer failed importing asset at path %s", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v33 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 138412290;
      *&buf[4] = v33;
      _os_log_error_impl(&dword_2617CB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v5 = *(a1 + 64);
    RERelease();
    if (*(v2 + 200))
    {
      std::function<void ()(NSURL *,NSError *)>::operator()(v2 + 176, *(a1 + 32), *(*(*(a1 + 40) + 8) + 24));
    }

LABEL_8:
    CFRelease(*(*(*(a1 + 40) + 8) + 24));
    goto LABEL_40;
  }

  v6 = *(a1 + 64);
  v7 = RESceneImportOperationPublishToEngine();
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v8 = rf::realityFusionLogObject(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      *buf = 136315138;
      *&buf[4] = REEntityGetName();
      _os_log_impl(&dword_2617CB000, v8, OS_LOG_TYPE_DEFAULT, "SyntheticEnvironmentConsumer failed to publish imported asset at path %s", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v34 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 138412290;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_2617CB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v10 = *(a1 + 64);
    RERelease();
    if (*(v2 + 200))
    {
      std::function<void ()(NSURL *,NSError *)>::operator()(v2 + 176, *(a1 + 32), *(*(*(a1 + 40) + 8) + 24));
    }

    goto LABEL_8;
  }

  v11 = *(a1 + 64);
  if (RESceneImportOperationGetSceneAsset())
  {
    v12 = *(a1 + 56);
    ChildCount = REEntityGetChildCount();
    if (ChildCount >= 1)
    {
      v14 = (ChildCount & 0x7FFFFFFF) + 1;
      do
      {
        v15 = *(a1 + 56);
        Child = REEntityGetChild();
        MEMORY[0x26670C370](Child);
        --v14;
      }

      while (v14 > 1);
    }

    v17 = *(a1 + 56);
    v18 = *(a1 + 72);
    REEntitySubtreeLoadFromAsset();
    v19 = *(a1 + 56);
    v20 = *(a1 + 80);
    v38 = 0u;
    v39 = 0u;
    *buf = 0u;
    std::deque<REEntity *>::__add_back_capacity(buf);
    v21 = *(&v39 + 1);
    *(*(*&buf[8] + (((*(&v39 + 1) + v39) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v39 + 1) + v39) & 0x1FF)) = v19;
    v22 = __CFADD__(v21, 1);
    v23 = v21 + 1;
    *(&v39 + 1) = v23;
    if (!v22)
    {
      do
      {
        v24 = ((v38 - *&buf[8]) << 6) - 1;
        if (v38 == *&buf[8])
        {
          v24 = 0;
        }

        v25 = v23 - 1;
        v26 = *(*(*&buf[8] + (((v39 + v25) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v39 + v25) & 0x1FF));
        *(&v39 + 1) = v25;
        if ((v24 - (v39 + v25)) >= 0x400)
        {
          operator delete(*(v38 - 8));
          *&v38 = v38 - 8;
        }

        REMeshComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          if (REMeshComponentGetMaterialCount())
          {
            REMeshComponentGetMaterialAtIndex();
            if (REMaterialAssetGetTextureAsset())
            {
              REMeshComponentRemoveAllMaterials();
              v27 = *(v2 + 64);
              REMeshComponentAddMaterial();
              REMaterialParameterBlockArrayComponentGetComponentType();
              REEntityGetOrAddComponentByClass();
              if (!REMaterialParameterBlockArrayComponentGetBlockAtIndex())
              {
                v28 = *(v2 + 64);
                RERenderManagerMaterialParameterBlockCreateWithAsset();
                REMaterialParameterBlockArrayComponentSetBlockAtIndex();
                RERelease();
              }

              REMaterialParameterBlockSetTextureFromAsset();
            }
          }
        }

        v29 = REEntityGetChildCount();
        if (v29)
        {
          for (i = 0; i != v29; ++i)
          {
            v36 = REEntityGetChild();
            std::deque<REEntity *>::push_back(buf, &v36);
          }
        }

        v23 = *(&v39 + 1);
      }

      while (*(&v39 + 1));
    }

    std::deque<REEntity *>::~deque[abi:ne200100](buf);
  }

  else
  {
    rf::getMessage("Couldn't get scene asset from import operation", buf);
    rf::internal::logAssert(buf);
    if (SBYTE7(v38) < 0)
    {
      operator delete(*buf);
    }

    rf::internal::debugBreakHandler(v35);
  }

  v31 = *(a1 + 64);
  RERelease();
  if (*(v2 + 200))
  {
    std::function<void ()(NSURL *,NSError *)>::operator()(v2 + 176, *(a1 + 32), 0);
  }

  *(v2 + 168) = 0;
LABEL_40:
  v32 = *MEMORY[0x277D85DE8];
}

void sub_261857B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::consumer::SyntheticEnvironmentConsumer::consumeLatestUpdate(uint64_t a1, uint64_t a2)
{
  v111 = *MEMORY[0x277D85DE8];
  if (*(a2 + 32) == 1 && *(a2 + 16) == 1)
  {
    v4 = *(a1 + 16);
    std::mutex::lock(v4);
    if (*(v4 + 3832))
    {
      if (*(a2 + 32) != 1 || *(a2 + 16) != 1)
      {
        goto LABEL_138;
      }

      v5 = *(a2 + 24);
      v6 = MEMORY[0x26670CB10](*(a2 + 8));
      if (v6)
      {
        v7 = *(a1 + 64);
        if (REAssetGetAssetManager() != v6)
        {
          *buf = REAssetManagerCreateAssetHandle();
          v8 = *(a1 + 32);
          *(a1 + 32) = *buf;
          if (v8)
          {
            RERelease();
          }

          *buf = 0;
          RESharedPtr<REAsset>::~RESharedPtr(buf);
          v9 = *(a1 + 32);
          REAssetHandleLoadNow();
          v10 = *(a1 + 32);
          if ((REAssetHandleIsLoaded() & 1) == 0)
          {
            rf::getMessage("Loading renderSyntheticEnvironment provider failed!", buf);
            rf::internal::logAssert(buf);
            if (SBYTE7(v102) < 0)
            {
              operator delete(*buf);
            }

            rf::internal::debugBreakHandler(v88);
          }

          *buf = REAssetManagerCreateAssetHandle();
          v11 = *(a1 + 40);
          *(a1 + 40) = *buf;
          if (v11)
          {
            RERelease();
          }

          *buf = 0;
          RESharedPtr<REAsset>::~RESharedPtr(buf);
          v12 = *(a1 + 40);
          REAssetHandleLoadNow();
          v13 = *(a1 + 40);
          if ((REAssetHandleIsLoaded() & 1) == 0)
          {
            rf::getMessage("Loading composeSyntheticEnvironment provider failed!", buf);
            rf::internal::logAssert(buf);
            if (SBYTE7(v102) < 0)
            {
              operator delete(*buf);
            }

            rf::internal::debugBreakHandler(v89);
          }

          RESceneAddRenderGraphFileProviderArray();
          v14 = *(a1 + 32);
          *(a1 + 48) = RESceneRenderGraphFileProviderArrayAdd();
          v15 = *(a1 + 40);
          *(a1 + 56) = RESceneRenderGraphFileProviderArrayAdd();
          *buf = REAssetManagerCreateAssetHandle();
          v16 = *(a1 + 64);
          *(a1 + 64) = *buf;
          if (v16)
          {
            RERelease();
          }

          *buf = 0;
          RESharedPtr<REAsset>::~RESharedPtr(buf);
          v17 = *(a1 + 64);
          REAssetHandleLoadNow();
          v18 = *(a1 + 64);
          if ((REAssetHandleIsLoaded() & 1) == 0)
          {
            rf::getMessage("Loading syntheticEnvironmentUnlit material failed!", buf);
            rf::internal::logAssert(buf);
            if (SBYTE7(v102) < 0)
            {
              operator delete(*buf);
            }

            rf::internal::debugBreakHandler(v90);
          }
        }
      }
    }

    for (i = *(v4 + 3864); i; i = *i)
    {
      *buf = 1;
      std::deque<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation>::emplace_back<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation::Type,std::string const&>((a1 + 120), buf, (i + 2));
    }

    for (j = *(v4 + 3824); j; j = *j)
    {
      *buf = 0;
      std::deque<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation>::emplace_back<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation::Type,std::string const&>((a1 + 120), buf, (j + 2));
    }

    v21 = *(v4 + 3904);
    if (v21)
    {
      v22 = *(a1 + 160);
      do
      {
        v23 = *(a1 + 128);
        v24 = *(a1 + 136);
        v25 = 42 * ((v24 - v23) >> 3) - 1;
        if (v24 == v23)
        {
          v25 = 0;
        }

        if (v25 == v22 + *(a1 + 152))
        {
          std::deque<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation>::__add_back_capacity((a1 + 120));
          v23 = *(a1 + 128);
          v24 = *(a1 + 136);
        }

        if (v24 == v23)
        {
          v27 = 0;
        }

        else
        {
          v26 = *(a1 + 160) + *(a1 + 152);
          v27 = *(v23 + 8 * (v26 / 0x2A)) + 96 * (v26 % 0x2A);
        }

        if (*(v21 + 39) < 0)
        {
          std::string::__init_copy_ctor_external(&block, v21[2], v21[3]);
        }

        else
        {
          block = *(v21 + 2);
        }

        v28 = *(v21 + 4);
        *buf = *(v21 + 3);
        v102 = v28;
        v29 = *(v21 + 6);
        v103 = *(v21 + 5);
        v104 = v29;
        *v27 = 2;
        v30 = (v27 + 8);
        if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v30, block.__r_.__value_.__l.__data_, block.__r_.__value_.__l.__size_);
          v34 = SHIBYTE(block.__r_.__value_.__r.__words[2]);
          v35 = v102;
          *(v27 + 32) = *buf;
          *(v27 + 48) = v35;
          v36 = v104;
          *(v27 + 64) = v103;
          *(v27 + 80) = v36;
          if (v34 < 0)
          {
            operator delete(block.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v31 = *&block.__r_.__value_.__l.__data_;
          *(v27 + 24) = *(&block.__r_.__value_.__l + 2);
          *&v30->__r_.__value_.__l.__data_ = v31;
          v32 = v102;
          *(v27 + 32) = *buf;
          *(v27 + 48) = v32;
          v33 = v104;
          *(v27 + 64) = v103;
          *(v27 + 80) = v33;
        }

        v22 = *(a1 + 160) + 1;
        *(a1 + 160) = v22;
        v21 = *v21;
      }

      while (v21);
    }

    if (*(a2 + 32) & 1) != 0 && (*(a2 + 16))
    {
      if (*(a1 + 168))
      {
LABEL_41:
        std::mutex::unlock(v4);
        goto LABEL_42;
      }

      v95 = (a1 + 80);
      v94 = *(a2 + 24);
      v92 = *(a2 + 8);
      domain = *MEMORY[0x277D00860];
      while (1)
      {
        if (!*(a1 + 160))
        {
          goto LABEL_41;
        }

        v38 = *(*(a1 + 128) + 8 * (*(a1 + 152) / 0x2AuLL)) + 96 * (*(a1 + 152) % 0x2AuLL);
        v39 = *v38;
        if (*v38 == 2)
        {
          v51 = std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::find<std::string>(v95, (v38 + 8));
          if (v51)
          {
            v52 = v51[5];
            if (REEntityGetSceneNullable() != v94)
            {
              rf::getMessage("Asset entity doesn't belong to the right scene", buf);
              rf::internal::logAssert(buf);
              if (SBYTE7(v102) < 0)
              {
                operator delete(*buf);
              }

              rf::internal::debugBreakHandler(v87);
            }

            RETransformComponentGetComponentType();
            REEntityGetComponentByClass();
            v53 = *(v38 + 64);
            v54 = *(v38 + 80);
            v55 = *(v38 + 32);
            v56 = *(v38 + 48);
            RETransformComponentSetWorldMatrix4x4F();
            goto LABEL_117;
          }

          v57 = rf::realityFusionLogObject(0);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v38 + 31) >= 0)
            {
              v59 = v38 + 8;
            }

            else
            {
              v59 = *(v38 + 8);
            }

            *buf = 136315138;
            *&buf[4] = v59;
            _os_log_impl(&dword_2617CB000, v57, OS_LOG_TYPE_DEFAULT, "Trying to update unknown synthetic asset %s", buf, 0xCu);
          }
        }

        else
        {
          if (v39 != 1)
          {
            if (!v39)
            {
              v40 = *(v38 + 8);
              if (*(v38 + 31) >= 0)
              {
                v41 = v38 + 8;
              }

              else
              {
                v41 = *(v38 + 8);
              }

              v93 = [MEMORY[0x277CCACA8] stringWithUTF8String:v41];
              v42 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
              v43 = std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::find<std::string>(v95, (v38 + 8));
              if (!v43)
              {
                if (*(a1 + 72) && REEntityGetSceneNullable() == v94)
                {
                  v65 = *(a1 + 72);
                }

                else
                {
                  *&v108 = REEntityCreate();
                  v60 = *(a1 + 72);
                  *(a1 + 72) = v108;
                  if (v60)
                  {
                    RERelease();
                  }

                  *&v108 = 0;
                  RESharedPtr<REEntity>::~RESharedPtr(&v108);
                  REEntitySetName();
                  RETransformComponentGetComponentType();
                  REEntityAddComponentByClass();
                  REAnchorComponentGetComponentType();
                  REEntityAddComponentByClass();
                  REAnchorComponentSetAnchoredLocally();
                  RESceneAddEntity();
                  REHideEntity();
                }

                v66 = REEntityCreate();
                if (*(v38 + 31) < 0)
                {
                  v67 = *(v38 + 8);
                }

                REEntitySetName();
                RETransformComponentGetComponentType();
                REEntityAddComponentByClass();
                REEntitySetParent();
                REHideEntity();
                RERelease();
                RESharedPtr<REEntity>::fromGet(v66, &v100);
                operator new();
              }

              v44 = v43[5];
              RESubsceneComponentGetComponentType();
              ComponentByClass = REEntityGetComponentByClass();
              if (ComponentByClass)
              {
                v71 = rf::realityFusionLogObject(ComponentByClass);
                if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                {
                  if (*(v38 + 31) >= 0)
                  {
                    v72 = v38 + 8;
                  }

                  else
                  {
                    v72 = *(v38 + 8);
                  }

                  LODWORD(v108) = 136315138;
                  *(&v108 + 4) = v72;
                  _os_log_impl(&dword_2617CB000, v71, OS_LOG_TYPE_DEFAULT, "Synthetic asset at path %s is already loaded", &v108, 0xCu);
                }

                v73 = v93;
                if (*(a1 + 200))
                {
                  v74 = CFErrorCreate(0, domain, 1, 0);
                  std::function<void ()(NSURL *,NSError *)>::operator()(a1 + 176, v42, v74);
                  CFRelease(v74);
                }
              }

              else
              {
                v75 = RESceneImportOperationCreateWithURL();
                RESceneImportOperationSetUnitType();
                RESceneImportOperationSetIsolateFromEngine();
                RESceneImportOperationSetCompressTextures();
                *&v108 = 0;
                *(&v108 + 1) = &v108;
                v109 = 0x2020000000;
                v110 = 0;
                *(a1 + 168) = 1;
                v77 = *(a1 + 208);
                v76 = *(a1 + 216);
                block.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
                block.__r_.__value_.__l.__size_ = 3221225472;
                block.__r_.__value_.__r.__words[2] = ___ZN2rf9data_flow8consumer28SyntheticEnvironmentConsumer24addSyntheticAssetToSceneERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEP7RESceneP16REServiceLocator_block_invoke;
                v97 = &unk_279AED228;
                v98 = &v108;
                v99 = v75;
                dispatch_group_async(v76, v77, &block);
                v78 = MEMORY[0x26670CB70](v92);
                v79 = MEMORY[0x26670CB10](v92);
                v80 = REAssetManagerGetEngineQueue();
                v81 = *(a1 + 216);
                *buf = MEMORY[0x277D85DD0];
                *&buf[8] = 3221225472;
                *&v102 = ___ZN2rf9data_flow8consumer28SyntheticEnvironmentConsumer24addSyntheticAssetToSceneERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEP7RESceneP16REServiceLocator_block_invoke_2;
                *(&v102 + 1) = &unk_279AED250;
                *(&v103 + 1) = &v108;
                *&v104 = a1;
                *(&v104 + 1) = v44;
                v105 = v75;
                *&v103 = v42;
                v106 = v79;
                v107 = v78;
                dispatch_group_notify(v81, v80, buf);

                v73 = v93;
                _Block_object_dispose(&v108, 8);
              }
            }

            goto LABEL_117;
          }

          v45 = std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::find<std::string>(v95, (v38 + 8));
          if (v45)
          {
            v46 = v45[5];
            if (REEntityGetSceneNullable() != v94)
            {
              rf::getMessage("Asset entity doesn't belong to the right scene", buf);
              rf::internal::logAssert(buf);
              if (SBYTE7(v102) < 0)
              {
                operator delete(*buf);
              }

              rf::internal::debugBreakHandler(v86);
            }

            REEntitySetParent();
            v47 = std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::find<std::string>(v95, (v38 + 8));
            if (v47)
            {
              v48 = *(a1 + 88);
              v49 = v47[1];
              v50 = vcnt_s8(v48);
              v50.i16[0] = vaddlv_u8(v50);
              if (v50.u32[0] > 1uLL)
              {
                if (v49 >= *&v48)
                {
                  v49 %= *&v48;
                }
              }

              else
              {
                v49 &= *&v48 - 1;
              }

              v61 = *(*v95 + 8 * v49);
              do
              {
                v62 = v61;
                v61 = *v61;
              }

              while (v61 != v47);
              if (v62 == (a1 + 96))
              {
                goto LABEL_97;
              }

              v63 = v62[1];
              if (v50.u32[0] > 1uLL)
              {
                if (v63 >= *&v48)
                {
                  v63 %= *&v48;
                }
              }

              else
              {
                v63 &= *&v48 - 1;
              }

              if (v63 != v49)
              {
LABEL_97:
                if (!*v47)
                {
                  goto LABEL_98;
                }

                v64 = *(*v47 + 1);
                if (v50.u32[0] > 1uLL)
                {
                  if (v64 >= *&v48)
                  {
                    v64 %= *&v48;
                  }
                }

                else
                {
                  v64 &= *&v48 - 1;
                }

                if (v64 != v49)
                {
LABEL_98:
                  *(*v95 + 8 * v49) = 0;
                }
              }

              v68 = *v47;
              if (*v47)
              {
                v69 = v68[1];
                if (v50.u32[0] > 1uLL)
                {
                  if (v69 >= *&v48)
                  {
                    v69 %= *&v48;
                  }
                }

                else
                {
                  v69 &= *&v48 - 1;
                }

                if (v69 != v49)
                {
                  *(*v95 + 8 * v69) = v62;
                  v68 = *v47;
                }
              }

              *v62 = v68;
              *v47 = 0;
              --*(a1 + 104);
              *buf = v47;
              *&buf[8] = a1 + 80;
              LOBYTE(v102) = 1;
              *(&v102 + 1) = 0;
              DWORD1(v102) = 0;
              std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
            }

            goto LABEL_117;
          }

          v57 = rf::realityFusionLogObject(0);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v38 + 31) >= 0)
            {
              v58 = v38 + 8;
            }

            else
            {
              v58 = *(v38 + 8);
            }

            *buf = 136315138;
            *&buf[4] = v58;
            _os_log_impl(&dword_2617CB000, v57, OS_LOG_TYPE_DEFAULT, "Trying to remove unknown synthetic asset %s", buf, 0xCu);
          }
        }

LABEL_117:
        v82 = *(a1 + 152);
        v83 = *(*(a1 + 128) + 8 * (v82 / 0x2A)) + 96 * (v82 % 0x2A);
        if (*(v83 + 31) < 0)
        {
          operator delete(*(v83 + 8));
          v82 = *(a1 + 152);
        }

        v84 = *(a1 + 160) - 1;
        v85 = v82 + 1;
        *(a1 + 152) = v85;
        *(a1 + 160) = v84;
        if (v85 >= 0x54)
        {
          operator delete(**(a1 + 128));
          *(a1 + 128) += 8;
          *(a1 + 152) -= 42;
        }

        if (*(a1 + 168) == 1)
        {
          goto LABEL_41;
        }
      }
    }

LABEL_138:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

LABEL_42:
  v37 = *MEMORY[0x277D85DE8];
}

void sub_261858C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v39);
  _Unwind_Resume(a1);
}

uint64_t std::deque<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6;
    v8 = *v6 + 96 * (v5 % 0x2A);
    v9 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * ((*(a1 + 40) + v5) % 0x2A);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 31) < 0)
        {
          operator delete(*(v8 + 8));
          v7 = *v6;
        }

        v8 += 96;
        if (v8 - v7 == 4032)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 21;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 42;
  }

  *(a1 + 32) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::deque<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation>::emplace_back<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation::Type,std::string const&>(void *a1, int *a2, uint64_t a3)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = 42 * ((v7 - v6) >> 3) - 1;
  if (v7 == v6)
  {
    v8 = 0;
  }

  if (v8 == a1[5] + a1[4])
  {
    std::deque<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation>::__add_back_capacity(a1);
    v6 = a1[1];
    v7 = a1[2];
  }

  if (v7 == v6)
  {
    v10 = 0;
  }

  else
  {
    v9 = a1[5] + a1[4];
    v10 = *(v6 + 8 * (v9 / 0x2A)) + 96 * (v9 % 0x2A);
  }

  v11 = *a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  *v10 = v11;
  v12 = (v10 + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v12, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(v10 + 32) = xmmword_26185DD00;
    *(v10 + 48) = xmmword_26185DD10;
    *(v10 + 64) = xmmword_26185DD20;
    *(v10 + 80) = xmmword_26185E1B0;
    if (v14 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = *&__p.__r_.__value_.__l.__data_;
    *(v10 + 24) = *(&__p.__r_.__value_.__l + 2);
    *&v12->__r_.__value_.__l.__data_ = v13;
    *(v10 + 32) = xmmword_26185DD00;
    *(v10 + 48) = xmmword_26185DD10;
    *(v10 + 64) = xmmword_26185DD20;
    *(v10 + 80) = xmmword_26185E1B0;
  }

  ++a1[5];
}

void sub_26185903C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    std::allocator<rf::data_flow::provider::InputData *>::allocate_at_least[abi:ne200100](v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<rf::data_flow::provider::InputData *>::emplace_back<rf::data_flow::provider::InputData *&>(a1, &v10);
}

void sub_261859480(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,RESharedPtr<REEntity>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,RESharedPtr<REEntity>>,0>(uint64_t a1)
{
  RESharedPtr<REEntity>::~RESharedPtr((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,RESharedPtr<REEntity>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void RFSceneQueryServiceCreate()
{
  v0 = *MEMORY[0x277CBECE8];
  if (qword_2810C4EE8 != -1)
  {
    dispatch_once(&qword_2810C4EE8, &__block_literal_global_19);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

void sub_2618597F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  rf::CFObjectRef<rf::SceneQueryManager>::~CFObjectRef(va);
  _Unwind_Resume(a1);
}

void RFServiceManagerSetSceneQueryService(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    v4 = *(cf + 2);
    operator new();
  }

  *(v3 + 4696) = 0;
  v5 = *(v3 + 4704);
  *(v3 + 4704) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_2618598F4(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

const void *RFServiceManagerGetSceneQueryService(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 4696);
  v3 = *(v1 + 4704);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    v4 = 0;
    if (!v3)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = *(v2 - 8);
  if (v4)
  {
    CFRetain(*(v2 - 8));
    CFRetain(v4);
    CFRelease(v4);
    CFRelease(v4);
  }

  if (v3)
  {
LABEL_7:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

void RFSceneQueryServiceIntersectVolumeFromBoundingBox()
{
  v0 = *MEMORY[0x277CBECE8];
  if (qword_2810C4EF8 != -1)
  {
    dispatch_once(&qword_2810C4EF8, &__block_literal_global_6);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

double RFSceneQuerySurfaceGetSurfaceData@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 48) = invalid_surface_transform;
  *(a1 + 64) = unk_2618665B0;
  *(a1 + 80) = xmmword_2618665C0;
  *(a1 + 96) = unk_2618665D0;
  result = *&invalid_surface_bounding_box;
  *(a1 + 16) = invalid_surface_bounding_box;
  *(a1 + 32) = unk_2618665F0;
  *(a1 + 112) = 0;
  return result;
}

const void **rf::CFObjectRef<rf::SceneQueryManager>::~CFObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_17SceneQueryManagerEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_29[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::SceneQueryManager]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4F00 = 0u;
  xmmword_2810C4F10 = 0u;
  xmmword_2810C4F20 = 0u;
  unk_2810C4F30 = 0u;
  xmmword_2810C4F40 = 0u;
  unk_2810C4F50 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4F00 + 1) = p_dst;
  *&xmmword_2810C4F10 = rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryManager>>::initCallback;
  *&xmmword_2810C4F20 = rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryManager>>::finalizeCallback;
  qword_2810C4F38 = rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryManager>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4F40 = rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryManager>>::copyDebugDescriptionCallback;
  _MergedGlobals_20 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_261859CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryManager>>::finalizeCallback(uint64_t a1)
{
  result = *(a1 + 16);
  *(a1 + 16) = 0;
  if (result)
  {
    JUMPOUT(0x26670D060);
  }

  return result;
}

void std::__shared_ptr_pointer<rf::SceneQueryManager *,rf::CustomCFObject<rf::SceneQueryManager>::makeSharedPtr(void)::{lambda(rf::SceneQueryManager *)#1},std::allocator<rf::SceneQueryManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::SceneQueryManager *,rf::CustomCFObject<rf::SceneQueryManager>::makeSharedPtr(void)::{lambda(rf::SceneQueryManager *)#1},std::allocator<rf::SceneQueryManager>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_34SceneQueryVolumeIntersectionResultEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_30[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::SceneQueryVolumeIntersectionResult]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4F60 = 0u;
  xmmword_2810C4F70 = 0u;
  xmmword_2810C4F80 = 0u;
  unk_2810C4F90 = 0u;
  xmmword_2810C4FA0 = 0u;
  unk_2810C4FB0 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4F60 + 1) = p_dst;
  *&xmmword_2810C4F70 = rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryVolumeIntersectionResult>>::initCallback;
  *&xmmword_2810C4F80 = rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryVolumeIntersectionResult>>::finalizeCallback;
  qword_2810C4F98 = rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryVolumeIntersectionResult>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4FA0 = rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryVolumeIntersectionResult>>::copyDebugDescriptionCallback;
  qword_2810C4EF0 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_261859F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryVolumeIntersectionResult>>::finalizeCallback(uint64_t a1)
{
  result = *(a1 + 16);
  *(a1 + 16) = 0;
  if (result)
  {
    JUMPOUT(0x26670D060);
  }

  return result;
}

void *rf::AnchorSourceComponent::instance(rf::AnchorSourceComponent *this)
{
  {
    rf::AnchorSourceComponent::AnchorSourceComponent(&rf::AnchorSourceComponent::instance(void)::instance);
  }

  return &rf::AnchorSourceComponent::instance(void)::instance;
}

rf::AnchorSourceComponent *rf::AnchorSourceComponent::AnchorSourceComponent(rf::AnchorSourceComponent *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 36) = 0;
  rf::AnchorSourceComponent::buildIntrospectionInfo(this);
  rf::AnchorSourceComponent::registerAnchorSourceComponent(this);
  return this;
}

void sub_26185A080(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 104);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t rf::AnchorSourceComponent::buildIntrospectionInfo(uint64_t this)
{
  if (!*(this + 136))
  {
    v1 = this;
    this = REStructBuilderCreate();
    if (this)
    {
      v2 = this;
      if (REStructBuilderInit())
      {
        *(v1 + 136) = RECIntrospectionStructRegister();
      }

      return MEMORY[0x282154E00](v2);
    }
  }

  return this;
}

void *rf::AnchorSourceComponent::registerAnchorSourceComponent(void *this)
{
  if (!*this)
  {
    v5[13] = v1;
    v5[14] = v2;
    v3 = this;
    v5[0] = 1;
    v5[1] = "RFAnchorSource";
    v5[2] = this;
    v5[3] = rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_0::__invoke;
    v5[4] = rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_1::__invoke;
    v5[5] = rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_2::__invoke;
    v5[6] = rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_3::__invoke;
    v5[7] = rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_4::__invoke;
    v4 = this[17];
    v5[8] = rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_5::__invoke;
    v5[9] = v4;
    v5[10] = 0;
    this = MEMORY[0x26670C120](v5, 1);
    *v3 = this;
  }

  return this;
}

void *rf::AnchorSourceComponent::retain(void *this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2 <= 0)
  {
    rf::AnchorSourceComponent::buildIntrospectionInfo(this);
    this = rf::AnchorSourceComponent::registerAnchorSourceComponent(v1);
    v2 = *(v1 + 36);
  }

  *(v1 + 36) = v2 + 1;
  return this;
}

void rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_1::__invoke(uint64_t a1, id *a2)
{
  if (a2)
  {

    JUMPOUT(0x26670D060);
  }
}

uint64_t rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_2::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 32))
  {
    v3 = result + 8;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_3::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 64))
  {
    v3 = result + 40;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_4::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 96))
  {
    v3 = result + 72;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_5::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 128))
  {
    v3 = result + 104;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

void RFSyntheticARDataProviderCreate(void *a1)
{
  v3[5] = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3[0] = &unk_28740B2E0;
  v3[1] = rf::data_flow::provider::SyntheticARData::sampleDataAllAtOnce;
  v3[3] = v3;
  v3[4] = 0;
  v1 = *MEMORY[0x277CBECE8];
  if (qword_2810C4FC8 != -1)
  {
    dispatch_once(&qword_2810C4FC8, &__block_literal_global_20);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

void sub_26185A548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void RFSyntheticARDataProviderAddSourceAsset(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = *(a1 + 16);
    v10 = CFURLCopyFileSystemPath(v5, kCFURLPOSIXPathStyle);
    v11 = v10;
    if (v10)
    {
      applesauce::CF::details::CFString_get_value<true>(v10, v17);
      CFRelease(v11);
      if (v18 >= 0)
      {
        v12 = v17;
      }

      else
      {
        v12 = v17[0];
      }

      v13 = strlen(v12);
      if (v13 < 0x7FFFFFFFFFFFFFF8)
      {
        v14 = v13;
        if (v13 < 0x17)
        {
          v16 = v13;
          if (v13)
          {
            memmove(&__p, v12, v13);
          }

          *(&__p + v14) = 0;
          rf::data_flow::provider::SyntheticARDataProvider::addData((v9 + 8), a2);
        }

        operator new();
      }

      std::string::__throw_length_error[abi:ne200100]();
    }
  }
}

void sub_26185A724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void RFSyntheticARDataProviderSetAssetTransform(uint64_t a1, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = *(a1 + 16);
  v7[0] = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  rf::data_flow::provider::SyntheticARDataProvider::setDataTransform(v6 + 8, a2, v7);
}

void RFSyntheticARDataProviderSetFrameInputFromARSession(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 16);
  v5 = v4[13];
  v6 = v4[12];
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v4[14];
  operator new();
}

void sub_26185A8B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v14);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void (*)(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData &,rf::data_flow::provider::InputData &),std::allocator<void (*)(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData &,rf::data_flow::provider::InputData &)>,void ()(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData &,rf::data_flow::provider::InputData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28740B2E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData &,rf::data_flow::provider::InputData &),std::allocator<void (*)(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData &,rf::data_flow::provider::InputData &)>,void ()(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData &,rf::data_flow::provider::InputData &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8provider23SyntheticARDataProviderEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_31[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::data_flow::provider::SyntheticARDataProvider]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4FD0 = 0u;
  xmmword_2810C4FE0 = 0u;
  xmmword_2810C4FF0 = 0u;
  unk_2810C5000 = 0u;
  xmmword_2810C5010 = 0u;
  unk_2810C5020 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4FD0 + 1) = p_dst;
  *&xmmword_2810C4FE0 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::SyntheticARDataProvider>>::initCallback;
  *&xmmword_2810C4FF0 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::SyntheticARDataProvider>>::finalizeCallback;
  qword_2810C5008 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::SyntheticARDataProvider>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C5010 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::SyntheticARDataProvider>>::copyDebugDescriptionCallback;
  _MergedGlobals_21 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_26185AB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<rf::CustomCFObject<rf::data_flow::provider::SyntheticARDataProvider>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::data_flow::provider::SyntheticARDataProvider>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    rf::data_flow::provider::SyntheticARDataProvider::~SyntheticARDataProvider((v2 + 8));

    JUMPOUT(0x26670D060);
  }

  return result;
}

void std::__shared_ptr_emplace<rf::data_flow::provider::ARSessionInputFrameProvider>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28740B3B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t rf::data_flow::provider::ARSessionInputFrameProvider::ARSessionInputFrameProvider(uint64_t a1, void *a2, uint64_t *a3)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v7 = *a3;
  v6 = a3[1];
  *a1 = &unk_28740A280;
  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = a3[2];
  *a1 = &unk_28740B400;
  v8 = v5;
  *(a1 + 32) = v8;
  v11[0] = &unk_28740B438;
  v11[1] = a1;
  v11[3] = v11;
  *(a1 + 40) = [[ARSessionFrameObserver alloc] initWithCallback:v11];
  std::__function::__value_func<void ()(rf::data_flow::provider::InputFrame &&)>::~__value_func[abi:ne200100](v11);
  [*(a1 + 32) _addObserver:*(a1 + 40)];

  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_26185ADC8(_Unwind_Exception *a1)
{
  *v1 = v2;
  v5 = *(v1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void rf::data_flow::provider::ARSessionInputFrameProvider::~ARSessionInputFrameProvider(id *this)
{
  [this[4] _removeObserver:this[5]];
  v2 = this[4];
  this[4] = 0;

  *this = &unk_28740A280;
  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  rf::data_flow::provider::ARSessionInputFrameProvider::~ARSessionInputFrameProvider(this);

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<rf::data_flow::provider::ARSessionInputFrameProvider::ARSessionInputFrameProvider(ARSession *,rf::data_flow::DataGraph::Evaluator<rf::data_flow::provider::InputFrame> const&)::$_0,std::allocator<rf::data_flow::provider::ARSessionInputFrameProvider::ARSessionInputFrameProvider(ARSession *,rf::data_flow::DataGraph::Evaluator<rf::data_flow::provider::InputFrame> const&)::$_0>,void ()(rf::data_flow::provider::InputFrame&&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28740B438;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<rf::data_flow::provider::ARSessionInputFrameProvider::ARSessionInputFrameProvider(ARSession *,rf::data_flow::DataGraph::Evaluator<rf::data_flow::provider::InputFrame> const&)::$_0,std::allocator<rf::data_flow::provider::ARSessionInputFrameProvider::ARSessionInputFrameProvider(ARSession *,rf::data_flow::DataGraph::Evaluator<rf::data_flow::provider::InputFrame> const&)::$_0>,void ()(rf::data_flow::provider::InputFrame&&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumerIOS::shouldUnanchorDueToAnchoringCapabilities(uint64_t a1, uint64_t a2, char a3)
{
  DescriptorType = REAnchoringComponentGetDescriptorType();
  v6 = 0;
  if ((a3 & 1) == 0 && DescriptorType != 1)
  {
    v6 = *(a1 + 240);
  }

  return v6 & 1;
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumerIOS::canNewAnchorDueToAnchoringCapabilities(uint64_t a1)
{
  if (*(a1 + 240) == 1)
  {
    DescriptorType = REAnchoringComponentGetDescriptorType();
    if (DescriptorType - 3 > 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = *(a1 + DescriptorType + 232);
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumerIOS::consumeLatestUpdate(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32) == 1)
  {
    v9[7] = v2;
    v9[8] = v3;
    v5 = result;
    v6 = *(result + 16);
    v7 = *(a2 + 24);
    v9[0] = v7;
    if ((*(result + 312) & 1) == 0 && *(a2 + 16) == 1)
    {
      rf::data_flow::consumer::AnchorManagementConsumer::registerShadowClusterUpdateHandler(result, a2);
    }

    if (*(a2 + 16) == 1)
    {
      rf::data_flow::consumer::AnchorManagementConsumer::setUpSceneEventSubscriptions(v5, *(a2 + 8), v7);
    }

    if (std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::find<REScene *>(&v5[31], v9))
    {
      v9[2] = v9;
      v8 = std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::__emplace_unique_key_args<REScene *,std::piecewise_construct_t const&,std::tuple<REScene * const&>,std::tuple<>>(&v5[31], v9);
      rf::data_flow::consumer::AnchorManagementConsumer::addAnchorSourceComponentDataForWorldAnchorEntities(v5, v8 + 3, (v6 + 64));
    }

    rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(v5, v9[0], (v6 + 144));
    rf::data_flow::consumer::AnchorManagementConsumer::updateImageAnchorReference(v5);
    return rf::data_flow::consumer::AnchorManagementConsumer::doAnchoring(v5, a2, v9[0], v6 + 64);
  }

  return result;
}

void rf::data_flow::consumer::AnchorManagementConsumerIOS::~AnchorManagementConsumerIOS(id *this)
{
  rf::data_flow::consumer::AnchorManagementConsumer::~AnchorManagementConsumer(this);

  JUMPOUT(0x26670D060);
}

uint64_t *re::foundationCoreLogObjects(re *this)
{
  {
    re::foundationCoreLogObjects(void)::logObjects = os_log_create("com.apple.re", "Foundation.Core");
  }

  return &re::foundationCoreLogObjects(void)::logObjects;
}

uint64_t re::internal::enableSignposts(re::internal *this, unsigned int a2)
{
  {
    v4 = a2;
    v5 = this;
    LOBYTE(a2) = v4;
    LOBYTE(this) = v5;
    if (v3)
    {
      re::Defaults::intValue("enableSignposts", v4, v6);
      re::internal::enableSignposts(BOOL,BOOL)::value = v6[0] ^ 1 | (v7 != 0);
      LOBYTE(a2) = v4;
      LOBYTE(this) = v5;
    }
  }

  if (this)
  {
    re::internal::enableSignposts(BOOL,BOOL)::value = a2;
  }

  else
  {
    LOBYTE(a2) = re::internal::enableSignposts(BOOL,BOOL)::value;
  }

  return a2 & 1;
}

void re::Defaults::intValue(re::Defaults *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
  v4 = {;
  if (v4)
  {
    v6 = v4;
    *(a3 + 4) = [v4 intValue];
    v4 = v6;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
}

id anonymous namespace::getValue(_anonymous_namespace_ *this, const char *a2)
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.%s", "com.apple.re", this];
  v5 = [v3 objectForKey:v4];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
    v7 = [v3 objectForKey:v6];
    if (v7)
    {
      v5 = v7;
    }

    else
    {
      v8 = [v4 rangeOfString:@"." options:4];
      v9 = [v4 substringToIndex:v8];
      v10 = [v4 substringFromIndex:v8 + 1];

      if ([(__CFString *)v9 isEqualToString:@"com.apple.re.network.multipeerservice"])
      {

        v9 = @"com.apple.renetwork.multipeerservice";
      }

      v11 = [v3 dictionaryForKey:v9];
      v5 = [v11 objectForKey:v10];

      if (!v5)
      {
        goto LABEL_11;
      }

      v6 = v10;
    }

    v12 = *re::foundationCoreLogObjects(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v10 = v6;
LABEL_11:
  }

  return v5;
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

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7400](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__stem(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7428](this);
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

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x2821F7E98](this, a2, a3, a4);
}

{
  return MEMORY[0x2821F7EB0](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x2821F7EA0]();
}

{
  return MEMORY[0x2821F7EA8]();
}

{
  return MEMORY[0x2821F7EB8]();
}

{
  return MEMORY[0x2821F7EC0]();
}

{
  return MEMORY[0x2821F7ED0]();
}

{
  return MEMORY[0x2821F7ED8]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}