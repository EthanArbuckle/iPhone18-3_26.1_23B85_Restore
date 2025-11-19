void sub_2726CEDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(uint64_t a1, const void **a2, uint64_t a3)
{
  v7 = std::hash<applesauce::CF::StringRef>::operator()(*a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          result = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(i[2], a2);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  result = (*(**(a1 + 32) + 16))(*(a1 + 32), 32, 8);
  v16 = result;
  *result = 0;
  *(result + 8) = v8;
  *(result + 16) = *a3;
  *a3 = 0;
  *(result + 24) = *(a3 + 8);
  v17 = (*(a1 + 40) + 1);
  v18 = *(a1 + 48);
  if (!v9 || (v18 * v9) < v17)
  {
    v19 = 1;
    if (v9 >= 3)
    {
      v19 = (v9 & (v9 - 1)) != 0;
    }

    v20 = v19 | (2 * v9);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    if (v22 == 1)
    {
      v22 = 2;
    }

    else if ((v22 & (v22 - 1)) != 0)
    {
      result = std::__next_prime(v22);
      v22 = result;
    }

    v23 = *(a1 + 8);
    if (v22 > *&v23)
    {
LABEL_30:
      if (v22 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      result = (*(**(a1 + 16) + 16))(*(a1 + 16), 8 * v22, 8);
      v24 = *a1;
      *a1 = result;
      if (v24)
      {
        result = std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,void *> *> *>>::deallocate[abi:ne200100](*(a1 + 16), v24, *(a1 + 8));
      }

      v25 = 0;
      *(a1 + 8) = v22;
      do
      {
        *(*a1 + 8 * v25++) = 0;
      }

      while (v22 != v25);
      v26 = *(a1 + 24);
      if (v26)
      {
        v27 = v26[1];
        v28 = vcnt_s8(v22);
        v28.i16[0] = vaddlv_u8(v28);
        if (v28.u32[0] > 1uLL)
        {
          if (v27 >= v22)
          {
            v27 %= v22;
          }
        }

        else
        {
          v27 &= v22 - 1;
        }

        *(*a1 + 8 * v27) = a1 + 24;
        v31 = *v26;
        if (*v26)
        {
          while (1)
          {
            v32 = v31[1];
            if (v28.u32[0] > 1uLL)
            {
              if (v32 >= v22)
              {
                v32 %= v22;
              }
            }

            else
            {
              v32 &= v22 - 1;
            }

            if (v32 != v27)
            {
              v33 = *a1;
              if (!*(*a1 + 8 * v32))
              {
                *(v33 + 8 * v32) = v26;
                goto LABEL_55;
              }

              *v26 = *v31;
              *v31 = **(v33 + 8 * v32);
              **(v33 + 8 * v32) = v31;
              v31 = v26;
            }

            v32 = v27;
LABEL_55:
            v26 = v31;
            v31 = *v31;
            v27 = v32;
            if (!v31)
            {
              goto LABEL_66;
            }
          }
        }
      }

      goto LABEL_66;
    }

    if (v22 < *&v23)
    {
      result = vcvtps_u32_f32(*(a1 + 40) / *(a1 + 48));
      if (*&v23 < 3uLL || (v29 = vcnt_s8(v23), v29.i16[0] = vaddlv_u8(v29), v29.u32[0] > 1uLL))
      {
        result = std::__next_prime(result);
      }

      else
      {
        v30 = 1 << -__clz(result - 1);
        if (result >= 2)
        {
          result = v30;
        }
      }

      if (v22 <= result)
      {
        v22 = result;
      }

      if (v22 < *&v23)
      {
        if (v22)
        {
          goto LABEL_30;
        }

        v34 = *a1;
        *a1 = 0;
        if (v34)
        {
          result = std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,void *> *> *>>::deallocate[abi:ne200100](*(a1 + 16), v34, *(a1 + 8));
        }

        *(a1 + 8) = 0;
      }
    }

LABEL_66:
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v35 = *a1;
  v36 = *(*a1 + 8 * v3);
  if (v36)
  {
    *v16 = *v36;
LABEL_79:
    *v36 = v16;
    goto LABEL_80;
  }

  *v16 = *(a1 + 24);
  *(a1 + 24) = v16;
  *(v35 + 8 * v3) = a1 + 24;
  if (*v16)
  {
    v37 = *(*v16 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v37 >= v9)
      {
        v37 %= v9;
      }
    }

    else
    {
      v37 &= v9 - 1;
    }

    v36 = (*a1 + 8 * v37);
    goto LABEL_79;
  }

LABEL_80:
  ++*(a1 + 40);
  return result;
}

void sub_2726CF278(_Unwind_Exception *a1)
{
  std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,void *>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef const,unsigned int>>(*(v2 + 16));
  std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,void *>>>::deallocate[abi:ne200100](*(v1 + 32), v2);
  _Unwind_Resume(a1);
}

const void **std::pair<applesauce::CF::StringRef,unsigned int>::~pair(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,void *>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef const,unsigned int>>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E0_JdjdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JdjdEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
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
  v11 = (*(**(a1 + 8) + 40))(*(a1 + 8), *v9, *v7, *v10);
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v12);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v11;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E0_JdjdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JdjdEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881BFFB0;
  a2[1] = v2;
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JNS3_30DSP_Node_Configuration_OptionsEdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_dEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
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

  v10 = v7[1];
  v19[0] = *v7;
  v19[1] = v10;
  v11 = v7[2];
  v12 = v7[3];
  v13 = v7[4];
  *&v20[9] = *(v7 + 73);
  v19[3] = v12;
  *v20 = v13;
  v19[2] = v11;
  std::unordered_map<std::string,unsigned int>::unordered_map(v21, (v7 + 6));
  std::unordered_map<std::string,unsigned int>::unordered_map(__p, v7 + 136);
  v14 = (*(**(a1 + 8) + 32))(*(a1 + 8), v19, a1 + 16, *v9);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(__p[2]);
  v15 = __p[0];
  __p[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v21[2]);
  v16 = v21[0];
  v21[0] = 0;
  if (v16)
  {
    operator delete(v16);
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v17);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v14;
  return result;
}

unint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration_Options>::compare_value(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(*a2 + 8);
  v6 = *(*a3 + 8);
  if (v5 != v6 || v5 == 0)
  {
    if (v5 != v6)
    {
      return 0;
    }
  }

  else if (*v3 != *v4)
  {
    return 0;
  }

  v8 = *(v3 + 24);
  v9 = *(v4 + 24);
  if (v8 != v9 || v8 == 0)
  {
    if (v8 != v9)
    {
      return 0;
    }
  }

  else if (*(v3 + 16) != *(v4 + 16))
  {
    return 0;
  }

  v11 = *(v3 + 40);
  v12 = *(v4 + 40);
  if (v11 != v12 || v11 == 0)
  {
    if (v11 != v12)
    {
      return 0;
    }
  }

  else if (*(v3 + 32) != *(v4 + 32))
  {
    return 0;
  }

  v14 = *(v3 + 56);
  v15 = *(v4 + 56);
  if (v14 != v15 || v14 == 0)
  {
    if (v14 != v15)
    {
      return 0;
    }
  }

  else if (*(v3 + 48) != *(v4 + 48))
  {
    return 0;
  }

  v17 = *(v3 + 72);
  v18 = *(v4 + 72);
  if (v17 == v18 && *(v3 + 72))
  {
    if (*(v3 + 64) != *(v4 + 64))
    {
      return 0;
    }
  }

  else if (v17 != v18)
  {
    return 0;
  }

  v19 = *(v3 + 88);
  v20 = *(v4 + 88);
  if (v19 != v20 || !*(v3 + 88))
  {
    if (v19 == v20)
    {
      goto LABEL_43;
    }

    return 0;
  }

  if (*(v3 + 80) != *(v4 + 80))
  {
    return 0;
  }

LABEL_43:
  if (!std::operator==[abi:ne200100]<std::string,unsigned int,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,unsigned int>>>(v3 + 96, (v4 + 96)))
  {
    return 0;
  }

  return std::operator==[abi:ne200100]<std::string,unsigned int,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,unsigned int>>>(v3 + 136, (v4 + 136));
}

unint64_t std::operator==[abi:ne200100]<std::string,unsigned int,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,unsigned int>>>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  while (1)
  {
    v3 = *v3;
    result = v3 == 0;
    if (!v3)
    {
      break;
    }

    result = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(a2, v3 + 2);
    if (!result)
    {
      break;
    }

    v5 = result;
    v6 = *(v3 + 39);
    if (v6 >= 0)
    {
      v7 = *(v3 + 39);
    }

    else
    {
      v7 = v3[3];
    }

    v8 = *(result + 39);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(result + 24);
    }

    if (v7 == v8)
    {
      v10 = v6 >= 0 ? v3 + 2 : v3[2];
      v13 = *(v5 + 16);
      v12 = v5 + 16;
      v11 = v13;
      v14 = (v9 >= 0 ? v12 : v11);
      if (!memcmp(v10, v14, v7) && *(v3 + 10) == *(v12 + 24))
      {
        continue;
      }
    }

    return 0;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
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

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
        {
          return v11;
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

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration_Options>::destroy_value(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(*a2 + 136);

  return std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v2 + 96);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration_Options>::move_value(uint64_t a1, _OWORD **a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(*a3 + 48);
  v5 = *(*a3 + 64);
  v7 = *(*a3 + 32);
  *(v3 + 73) = *(*a3 + 73);
  v3[3] = v6;
  v3[4] = v5;
  v3[2] = v7;
  v8 = *(v4 + 16);
  *v3 = *v4;
  v3[1] = v8;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table((v3 + 6), (v4 + 96));

  return std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table(v3 + 136, (v4 + 136));
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration_Options>::copy_value(uint64_t a1, _OWORD **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(*a3 + 48);
  v5 = *(*a3 + 64);
  v7 = *(*a3 + 32);
  *(v3 + 73) = *(*a3 + 73);
  v3[3] = v6;
  v3[4] = v5;
  v3[2] = v7;
  v8 = v4[1];
  *v3 = *v4;
  v3[1] = v8;
  std::unordered_map<std::string,unsigned int>::unordered_map((v3 + 6), (v4 + 6));
  return std::unordered_map<std::string,unsigned int>::unordered_map(v3 + 136, v4 + 136);
}

void sub_2726CFAB4(_Unwind_Exception *a1)
{
  v2 = v1;
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v2 + 96);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration_Options>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration_Options>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 176, 8);
  *a2 = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JNS3_30DSP_Node_Configuration_OptionsEdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_dEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    __p[3] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JNS3_30DSP_Node_Configuration_OptionsEdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_dEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JNS3_30DSP_Node_Configuration_OptionsEdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_dEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(void *a1, void *a2)
{
  v2 = a1[1];
  *a2 = &unk_2881BFF68;
  a2[1] = v2;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a2 + 2), a1[2], a1[3], (a1[3] - a1[2]) >> 2);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JNS3_30DSP_Node_Configuration_OptionsEdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_dEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EED0Ev(void *a1)
{
  *a1 = &unk_2881BFF68;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JNS3_30DSP_Node_Configuration_OptionsEdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_dEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EED1Ev(void *a1)
{
  *a1 = &unk_2881BFF68;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void vp::vx::Voice_Processor::get_configuration_context(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v164 = *MEMORY[0x277D85DE8];
  v26 = CFStringCreateWithBytes(0, "configuration context", 21, 0x8000100u, 0);
  if (!v26)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v29 = 0;
  v30 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &v26);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v158, (a2 + 64), *(v4 + 6));
    LODWORD(v124) = v158;
    v125 = v159;
    v159 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v29);
    v29 = v124;
    v30 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    vp::vx::data_flow::State<void>::~State(&v158);
  }

  if (!v30)
  {
    v5 = a2 + 8;
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 58);
    v118 = v124;
    v119 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 59);
    v114 = v124;
    v115 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    cf = CFStringCreateWithBytes(0, "vp_chat_flavor", 14, 0x8000100u, 0);
    if (!cf)
    {
      v22 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v22, "Could not construct");
    }

    vp::Service_Provider::get<vp::services::User_Defaults,(decltype(nullptr))0>(&v120, *(a2 + 456));
    if (v120)
    {
      if (cf)
      {
        CFRetain(cf);
      }

      if (v121)
      {
        atomic_fetch_add_explicit((v121 + 8), 1uLL, memory_order_relaxed);
      }

      vp::vx::Voice_Processor_State_Manager::create_state_for_SIGHUP_signal(&v161, a2 + 16);
      operator new();
    }

    if (v121)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v121);
    }

    v158 = 0;
    vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::StringRef>(&v124, (a2 + 16), &v158);
    v112 = v124;
    v113 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    if (v158)
    {
      CFRelease(v158);
    }

    v124 = &unk_2881BF8E8;
    LOBYTE(v125) = 0;
    v126 = &v124;
    v161 = v114;
    v162 = v112;
    vp::vx::data_flow::State_Manager::create_state(&v158, (a2 + 64), &v124);
    v122 = v158;
    v123 = v159;
    v159 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v158);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v124);
    v116 = v122;
    v117 = v123;
    v123 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v122);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 10);
    v109 = v124;
    v110 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 16);
    v107 = v124;
    v108 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 17);
    v105 = v124;
    v106 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 18);
    v103 = v124;
    v104 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 19);
    v101 = v124;
    v102 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 20);
    v99 = v124;
    v100 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 26);
    v97 = v124;
    v98 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 39);
    v95 = v124;
    v96 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 40);
    v93 = v124;
    v94 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 41);
    v91 = v124;
    v92 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 44);
    v89 = v124;
    v90 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 45);
    v87 = v124;
    v88 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 46);
    v85 = v124;
    v86 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 47);
    v83 = v124;
    v84 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 77);
    v81 = v124;
    v82 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    vp::vx::Voice_Processor::get_spatial_head_tracking_enabled(v80, a2);
    (*(*v5 + 16))(&v124, a2 + 8, 80);
    v78 = v124;
    v79 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*v5 + 16))(&v124, a2 + 8, 88);
    v76 = v124;
    v77 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*v5 + 16))(&v124, a2 + 8, 0);
    v74 = v124;
    v75 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*v5 + 16))(&v124, a2 + 8, 1);
    v72 = v124;
    v73 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*v5 + 16))(&v124, a2 + 8, 61);
    v70 = v124;
    v71 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    v66 = CFStringCreateWithBytes(0, "spatial mode", 12, 0x8000100u, 0);
    if (!v66)
    {
      v23 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v23, "Could not construct");
    }

    LODWORD(v120) = 0;
    v121 = 0uLL;
    std::recursive_mutex::lock((a2 + 184));
    v6 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &v66);
    if (v6)
    {
      vp::vx::data_flow::State_Manager::find_state(&v158, (a2 + 64), *(v6 + 6));
      LODWORD(v124) = v158;
      v125 = v159;
      v159 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v120);
      LODWORD(v120) = v124;
      v121 = v125;
      v125 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v124);
      vp::vx::data_flow::State<void>::~State(&v158);
    }

    if (!v121)
    {
      (*(*v5 + 16))(&v124, a2 + 8, 79);
      v161 = v124;
      v163 = v125;
      v125 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v124);
      v124 = &unk_2881C0930;
      LOBYTE(v125) = 0;
      v126 = &v124;
      v65[0] = v161;
      vp::vx::data_flow::State_Manager::create_state(&v158, (a2 + 64), &v124);
      v122 = v158;
      v123 = v159;
      v159 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v158);
      std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v124);
      LODWORD(v124) = v122;
      v125 = v123;
      v123 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v122);
      vp::vx::data_flow::State<void>::~State(&v161);
      vp::vx::data_flow::State<void>::~State(&v120);
      LODWORD(v120) = v124;
      v121 = v125;
      v125 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v124);
      v7 = v120;
      v8 = v66;
      if (v66)
      {
        CFRetain(v66);
      }

      v124 = v8;
      LODWORD(v125) = v7;
      std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v124, &v124);
      if (v124)
      {
        CFRelease(v124);
      }
    }

    v68 = v120;
    v69 = v121;
    v121 = 0uLL;
    std::recursive_mutex::unlock((a2 + 184));
    vp::vx::data_flow::State<void>::~State(&v120);
    if (v66)
    {
      CFRelease(v66);
    }

    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 8);
    v9 = v124;
    LODWORD(v66) = v124;
    v67 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS7_DpRKNS0_9data_flow5StateIT0_EE(&v120, a2 + 16, v9);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 24);
    v10 = v124;
    v63 = v124;
    v64 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS7_DpRKNS0_9data_flow5StateIT0_EE(v65, a2 + 16, v10);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 51);
    v11 = v124;
    v60 = v124;
    v61 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS7_DpRKNS0_9data_flow5StateIT0_EE(v62, a2 + 16, v11);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 52);
    v12 = v124;
    v57 = v124;
    v58 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS7_DpRKNS0_9data_flow5StateIT0_EE(v59, a2 + 16, v12);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 54);
    v13 = v124;
    v54 = v124;
    v55 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS7_DpRKNS0_9data_flow5StateIT0_EE(v56, a2 + 16, v13);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 69);
    v52 = v124;
    v53 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 70);
    v50 = v124;
    v51 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 62);
    v48 = v124;
    v49 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*(a2 + 8) + 16))(&v124, a2 + 8, 89);
    v46 = v124;
    v47 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    vp::vx::Voice_Processor::get_other_audio_advanced_ducking_enabled(v45, a2);
    (*(*v5 + 16))(&v124, a2 + 8, 91);
    v43 = v124;
    v44 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*v5 + 16))(&v124, a2 + 8, 92);
    v41 = v124;
    v42 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*v5 + 16))(&v124, a2 + 8, 93);
    v14 = v124;
    v37 = v124;
    v38 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*v5 + 16))(&v124, a2 + 8, 94);
    v15 = v124;
    v35 = v124;
    v36 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    v124 = &unk_2881BFA28;
    LOBYTE(v125) = 0;
    v126 = &v124;
    v161 = v14;
    v162 = v15;
    vp::vx::data_flow::State_Manager::create_state(&v158, (a2 + 64), &v124);
    v16 = v158;
    v122 = v158;
    v24 = v159;
    v159 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v158);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v124);
    v39 = v16;
    v40 = v24;
    v123 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v122);
    (*(*v5 + 16))(&v124, a2 + 8, 95);
    v33 = v124;
    v34 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    (*(*v5 + 16))(&v124, a2 + 8, 94);
    v31 = v124;
    v32 = v125;
    v125 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v124);
    v158 = &unk_2881BF490;
    LOBYTE(v159) = 0;
    v160 = &v158;
    v124 = __PAIR64__(v116, v118);
    *&v125 = __PAIR64__(v107, v109);
    *(&v125 + 1) = __PAIR64__(v103, v105);
    v126 = __PAIR64__(v99, v101);
    v127 = v97;
    v128 = v95;
    v129 = v93;
    v130 = v91;
    v131 = v89;
    v132 = v87;
    v133 = v85;
    v134 = v83;
    v135 = v81;
    v136 = v80[0];
    v137 = v78;
    v138 = v76;
    v139 = v74;
    v140 = v72;
    v141 = v70;
    v142 = v68;
    v143 = v120;
    v144 = v65[0];
    v145 = v62[0];
    v146 = v59[0];
    v147 = v56[0];
    v148 = v52;
    v149 = v50;
    v150 = v48;
    v151 = v46;
    v152 = v45[0];
    v153 = v43;
    v154 = v41;
    v155 = v39;
    v156 = v33;
    v157 = v31;
    vp::vx::data_flow::State_Manager::create_state(&v122, (a2 + 64), &v158);
    v17 = v122;
    v161 = v122;
    v25 = v123;
    v123 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v122);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v158);
    v27 = v17;
    v28 = v25;
    v163 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v161);
    vp::vx::data_flow::State<void>::~State(&v31);
    vp::vx::data_flow::State<void>::~State(&v33);
    vp::vx::data_flow::State<void>::~State(&v39);
    vp::vx::data_flow::State<void>::~State(&v35);
    vp::vx::data_flow::State<void>::~State(&v37);
    vp::vx::data_flow::State<void>::~State(&v41);
    vp::vx::data_flow::State<void>::~State(&v43);
    vp::vx::data_flow::State<void>::~State(v45);
    vp::vx::data_flow::State<void>::~State(&v46);
    vp::vx::data_flow::State<void>::~State(&v48);
    vp::vx::data_flow::State<void>::~State(&v50);
    vp::vx::data_flow::State<void>::~State(&v52);
    vp::vx::data_flow::State<void>::~State(v56);
    vp::vx::data_flow::State<void>::~State(&v54);
    vp::vx::data_flow::State<void>::~State(v59);
    vp::vx::data_flow::State<void>::~State(&v57);
    vp::vx::data_flow::State<void>::~State(v62);
    vp::vx::data_flow::State<void>::~State(&v60);
    vp::vx::data_flow::State<void>::~State(v65);
    vp::vx::data_flow::State<void>::~State(&v63);
    vp::vx::data_flow::State<void>::~State(&v120);
    vp::vx::data_flow::State<void>::~State(&v66);
    vp::vx::data_flow::State<void>::~State(&v68);
    vp::vx::data_flow::State<void>::~State(&v70);
    vp::vx::data_flow::State<void>::~State(&v72);
    vp::vx::data_flow::State<void>::~State(&v74);
    vp::vx::data_flow::State<void>::~State(&v76);
    vp::vx::data_flow::State<void>::~State(&v78);
    vp::vx::data_flow::State<void>::~State(v80);
    vp::vx::data_flow::State<void>::~State(&v81);
    vp::vx::data_flow::State<void>::~State(&v83);
    vp::vx::data_flow::State<void>::~State(&v85);
    vp::vx::data_flow::State<void>::~State(&v87);
    vp::vx::data_flow::State<void>::~State(&v89);
    vp::vx::data_flow::State<void>::~State(&v91);
    vp::vx::data_flow::State<void>::~State(&v93);
    vp::vx::data_flow::State<void>::~State(&v95);
    vp::vx::data_flow::State<void>::~State(&v97);
    vp::vx::data_flow::State<void>::~State(&v99);
    vp::vx::data_flow::State<void>::~State(&v101);
    vp::vx::data_flow::State<void>::~State(&v103);
    vp::vx::data_flow::State<void>::~State(&v105);
    vp::vx::data_flow::State<void>::~State(&v107);
    vp::vx::data_flow::State<void>::~State(&v109);
    vp::vx::data_flow::State<void>::~State(&v116);
    vp::vx::data_flow::State<void>::~State(&v112);
    if (cf)
    {
      CFRelease(cf);
    }

    vp::vx::data_flow::State<void>::~State(&v114);
    vp::vx::data_flow::State<void>::~State(&v118);
    vp::vx::data_flow::State<void>::~State(&v29);
    v29 = v17;
    v30 = v25;
    v28 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v27);
    v18 = v29;
    v19 = v26;
    if (v26)
    {
      CFRetain(v26);
    }

    v124 = v19;
    LODWORD(v125) = v18;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v124, &v124);
    if (v124)
    {
      CFRelease(v124);
    }
  }

  *this = v29;
  *(this + 8) = v30;
  v30 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v29);
  if (v26)
  {
    CFRelease(v26);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2726D13E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v65 = *MEMORY[0x277D85DE8];
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
    goto LABEL_41;
  }

  v8 = *(a1 + 8);
  LOBYTE(v48) = 0;
  BYTE8(v48) = 0;
  LOBYTE(v49) = 0;
  BYTE8(v49) = 0;
  LOBYTE(v50) = 0;
  BYTE8(v50) = 0;
  LOBYTE(v51) = 0;
  BYTE8(v51) = 0;
  v52[0] = 0;
  v52[8] = 0;
  v52[16] = 0;
  v52[24] = 0;
  *v53 = 0u;
  *v54 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 1065353216;
  v58 = 1065353216;
  v9 = (*(*v7 + 56))(v7, v6, *(a1 + 32), &v48);
  v10 = v9;
  if (v9)
  {
    v37 = v50;
    v38 = v51;
    *v39 = *v52;
    *&v39[9] = *&v52[9];
    v35 = v48;
    v36 = v49;
    v11 = v53[0];
    v12 = v53[1];
    v53[0] = 0;
    v53[1] = 0;
    v40[0] = v11;
    v40[1] = v12;
    v41[0] = v54[0];
    v41[1] = v54[1];
    v42 = v55;
    if (v54[1])
    {
      v13 = *(v54[0] + 1);
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

      *(v11 + v13) = v41;
      v54[0] = 0;
      v54[1] = 0;
    }

    v26 = v56;
    v56 = 0uLL;
    *v43 = v26;
    *v44 = v57;
    v45 = v58;
    if (*(&v57 + 1))
    {
      v27 = *(v57 + 8);
      if ((*(&v26 + 1) & (*(&v26 + 1) - 1)) != 0)
      {
        if (v27 >= *(&v26 + 1))
        {
          v27 %= *(&v26 + 1);
        }
      }

      else
      {
        v27 &= *(&v26 + 1) - 1;
      }

      *(v26 + 8 * v27) = v44;
      v57 = 0uLL;
    }
  }

  else
  {
    log = vp::get_log(v9);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(__p, v8, "vp::vx::Voice_Processor]", 23);
      v16 = v47;
      v17 = v47;
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

        v23 = "hardware";
        v24 = *(a1 + 32);
        if (v24 == 1)
        {
          v23 = "echo";
        }

        *buf = 136315650;
        v60 = v21;
        v61 = 2080;
        v62 = v22;
        if (v24 == 2)
        {
          v25 = "content";
        }

        else
        {
          v25 = v23;
        }

        v63 = 2080;
        v64 = v25;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_ERROR, "%s%sfailed to get configuration options for uplink %s DSP node", buf, 0x20u);
        LOBYTE(v17) = v47;
      }

      if ((v17 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v57);
  v28 = v56;
  *&v56 = 0;
  if (v28)
  {
    operator delete(v28);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v54[0]);
  v29 = v53[0];
  v53[0] = 0;
  if (v29)
  {
    operator delete(v29);
  }

  if ((v10 & 1) == 0)
  {
LABEL_41:
    LOBYTE(v35) = 0;
    BYTE8(v35) = 0;
    LOBYTE(v36) = 0;
    BYTE8(v36) = 0;
    LOBYTE(v37) = 0;
    BYTE8(v37) = 0;
    LOBYTE(v38) = 0;
    BYTE8(v38) = 0;
    v39[0] = 0;
    v39[8] = 0;
    v39[16] = 0;
    v39[24] = 0;
    *v40 = 0u;
    *v41 = 0u;
    *v43 = 0u;
    *v44 = 0u;
    v42 = 1065353216;
    v45 = 1065353216;
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v30);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  *storage = v35;
  storage[1] = v36;
  *(storage + 73) = *&v39[9];
  storage[3] = v38;
  storage[4] = *v39;
  storage[2] = v37;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table((storage + 6), v40);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table(storage + 136, v43);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v44[0]);
  v32 = v43[0];
  v43[0] = 0;
  if (v32)
  {
    operator delete(v32);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v41[0]);
  v33 = v40[0];
  v40[0] = 0;
  if (v33)
  {
    operator delete(v33);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_2726D1A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&a26);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&a21);
  _Unwind_Resume(a1);
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Configuration_Context>::destroy_value(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 72);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(v2 + 32);
  if (v4)
  {
    CFRelease(v4);
  }
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Configuration_Context>::move_value(uint64_t a1, uint64_t *a2, __int128 **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a3;
  *(v3 + 12) = *(*a3 + 12);
  *v3 = v5;
  *(v3 + 32) = *(v4 + 4);
  *(v4 + 4) = 0;
  v6 = *(v4 + 40);
  *(v3 + 52) = *(v4 + 52);
  *(v3 + 40) = v6;
  *(v3 + 72) = *(v4 + 9);
  *(v4 + 9) = 0;
  result = v4[5];
  v8 = v4[6];
  v9 = v4[8];
  *(v3 + 112) = v4[7];
  *(v3 + 128) = v9;
  *(v3 + 80) = result;
  *(v3 + 96) = v8;
  return result;
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Configuration_Context>::copy_value(uint64_t a1, uint64_t *a2, __int128 **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a3;
  *(v3 + 12) = *(*a3 + 12);
  *v3 = v5;
  v6 = *(v4 + 4);
  if (v6)
  {
    CFRetain(*(v4 + 4));
  }

  *(v3 + 32) = v6;
  v7 = *(v4 + 40);
  *(v3 + 52) = *(v4 + 52);
  *(v3 + 40) = v7;
  v8 = *(v4 + 9);
  if (v8)
  {
    CFRetain(*(v4 + 9));
  }

  *(v3 + 72) = v8;
  result = v4[5];
  v10 = v4[6];
  v11 = v4[8];
  *(v3 + 112) = v4[7];
  *(v3 + 128) = v11;
  *(v3 + 80) = result;
  *(v3 + 96) = v10;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Configuration_Context>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Configuration_Context>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 144, 8);
  *a2 = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BFE70;
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

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EED0Ev(void *a1)
{
  *a1 = &unk_2881BFE70;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EED1Ev(void *a1)
{
  *a1 = &unk_2881BFE70;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::Voice_Processor::get_spatial_head_tracking_enabled(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "spatial head-tracking enabled", 29, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v15 = 0;
  v16 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v23, (a2 + 64), *(v4 + 6));
    v5 = v23;
    LODWORD(v25) = v23;
    v12 = v24;
    v24 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v15);
    v15 = v5;
    v16 = v12;
    v26 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v25);
    vp::vx::data_flow::State<void>::~State(&v23);
  }

  if (!v16)
  {
    (*(*(a2 + 8) + 16))(&v25, a2 + 8, 79);
    v6 = v25;
    v17 = v25;
    v18 = v26;
    v26 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v25);
    v25 = &unk_2881C0A28;
    LOBYTE(v26) = 0;
    v27 = &v25;
    v22 = v6;
    vp::vx::data_flow::State_Manager::create_state(&v23, (a2 + 64), &v25);
    v7 = v23;
    v19 = v23;
    v13 = v24;
    v24 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v23);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v25);
    LODWORD(v25) = v7;
    v20 = 0;
    v21 = 0;
    vp::vx::data_flow::State<void>::~State(&v19);
    vp::vx::data_flow::State<void>::~State(&v17);
    vp::vx::data_flow::State<void>::~State(&v15);
    v15 = v7;
    v16 = v13;
    v26 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v25);
    v8 = v15;
    v9 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v25 = v9;
    LODWORD(v26) = v8;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v25, &v25);
    if (v25)
    {
      CFRelease(v25);
    }
  }

  *this = v15;
  *(this + 8) = v16;
  v16 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v15);
  if (cf)
  {
    CFRelease(cf);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2726D20C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

int *_ZN2vp2vx29Voice_Processor_State_Manager12create_stateIRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS7_DpRKNS0_9data_flow5StateIT0_EE(uint64_t a1, uint64_t a2, int a3)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v14[0] = &unk_2881BF978;
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

void vp::vx::Voice_Processor::get_other_audio_advanced_ducking_enabled(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "other audio advanced ducking enabled", 36, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v15 = 0;
  v16 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v23, (a2 + 64), *(v4 + 6));
    v5 = v23;
    LODWORD(v25) = v23;
    v12 = v24;
    v24 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v15);
    v15 = v5;
    v16 = v12;
    v26 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v25);
    vp::vx::data_flow::State<void>::~State(&v23);
  }

  if (!v16)
  {
    (*(*(a2 + 8) + 16))(&v25, a2 + 8, 90);
    v6 = v25;
    v17 = v25;
    v18 = v26;
    v26 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v25);
    v25 = &unk_2881C0A70;
    LOBYTE(v26) = 0;
    v27 = &v25;
    v22 = v6;
    vp::vx::data_flow::State_Manager::create_state(&v23, (a2 + 64), &v25);
    v7 = v23;
    v19 = v23;
    v13 = v24;
    v24 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v23);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v25);
    LODWORD(v25) = v7;
    v20 = 0;
    v21 = 0;
    vp::vx::data_flow::State<void>::~State(&v19);
    vp::vx::data_flow::State<void>::~State(&v17);
    vp::vx::data_flow::State<void>::~State(&v15);
    v15 = v7;
    v16 = v13;
    v26 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v25);
    v8 = v15;
    v9 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v25 = v9;
    LODWORD(v26) = v8;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v25, &v25);
    if (v25)
    {
      CFRelease(v25);
    }
  }

  *this = v15;
  *(this + 8) = v16;
  v16 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v15);
  if (cf)
  {
    CFRelease(cf);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2726D24A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_21Configuration_ContextEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_12_GLOBAL__N_123make_constructor_lambdaIS6_EEDavEUlDpRKT_E_JNS3_14Operation_ModeENS3_11Chat_FlavorENS3_15Input_Port_TypeENS3_13Port_Sub_TypeEjjjN10applesauce2CF9StringRefENS3_16Output_Port_TypeESM_NS3_18Port_Endpoint_TypeEbjjjSP_bbbbbbbjjjjjjjdbbbbjbbNS3_20AirPods_Offload_ModeEEEESD_OT0_DpRKNS4_5StateIT1_EEEUlSH_E_JSJ_SK_SL_SM_jjjSP_SQ_SM_SR_bjjjSP_bbbbbbbjjjjjjjdbbbbjbbSS_EEERNS4_13State_ManagerET_DpRKNSV_IT0_EEEUlPPKNS4_5ValueEPS1A_E_NS_9allocatorIS1F_EEFvS1D_S1E_EEclEOS1D_OS1E_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v71 = *a3;
  if (*(**a2 + 2) == &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id)
  {
    v4 = vp::vx::data_flow::Value::view_storage(**a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = v3[1];
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id)
  {
    v86 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v86 = 0;
  }

  v6 = v3[2];
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Input_Port_Type>(void)::s_type_id)
  {
    v85 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v85 = 0;
  }

  v7 = v3[3];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id)
  {
    v84 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v84 = 0;
  }

  v8 = v3[4];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v83 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v83 = 0;
  }

  v9 = v3[5];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v82 = vp::vx::data_flow::Value::view_storage(v9);
  }

  else
  {
    v82 = 0;
  }

  v10 = v3[6];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v81 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v81 = 0;
  }

  v11 = v3[7];
  if (v11[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v80 = vp::vx::data_flow::Value::view_storage(v11);
  }

  else
  {
    v80 = 0;
  }

  v12 = v3[8];
  if (v12[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id)
  {
    v79 = vp::vx::data_flow::Value::view_storage(v12);
  }

  else
  {
    v79 = 0;
  }

  v13 = v3[9];
  if (v13[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id)
  {
    v78 = vp::vx::data_flow::Value::view_storage(v13);
  }

  else
  {
    v78 = 0;
  }

  v14 = v3[10];
  if (v14[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Port_Endpoint_Type>(void)::s_type_id)
  {
    v77 = vp::vx::data_flow::Value::view_storage(v14);
  }

  else
  {
    v77 = 0;
  }

  v15 = v3[11];
  if (v15[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v76 = vp::vx::data_flow::Value::view_storage(v15);
  }

  else
  {
    v76 = 0;
  }

  v16 = v3[12];
  if (v16[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v75 = vp::vx::data_flow::Value::view_storage(v16);
  }

  else
  {
    v75 = 0;
  }

  v17 = v3[13];
  if (v17[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v74 = vp::vx::data_flow::Value::view_storage(v17);
  }

  else
  {
    v74 = 0;
  }

  v18 = v3[14];
  if (v18[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v73 = vp::vx::data_flow::Value::view_storage(v18);
  }

  else
  {
    v73 = 0;
  }

  v19 = v3[15];
  if (v19[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v72 = vp::vx::data_flow::Value::view_storage(v19);
  }

  else
  {
    v72 = 0;
  }

  v20 = v3[16];
  if (v20[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v70 = vp::vx::data_flow::Value::view_storage(v20);
  }

  else
  {
    v70 = 0;
  }

  v21 = v3[17];
  if (v21[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v69 = vp::vx::data_flow::Value::view_storage(v21);
  }

  else
  {
    v69 = 0;
  }

  v22 = v3[18];
  if (v22[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v68 = vp::vx::data_flow::Value::view_storage(v22);
  }

  else
  {
    v68 = 0;
  }

  v23 = v3[19];
  if (v23[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v67 = vp::vx::data_flow::Value::view_storage(v23);
  }

  else
  {
    v67 = 0;
  }

  v24 = v3[20];
  if (v24[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v66 = vp::vx::data_flow::Value::view_storage(v24);
  }

  else
  {
    v66 = 0;
  }

  v25 = v3[21];
  if (v25[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v65 = vp::vx::data_flow::Value::view_storage(v25);
  }

  else
  {
    v65 = 0;
  }

  v26 = v3[22];
  if (v26[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v64 = vp::vx::data_flow::Value::view_storage(v26);
  }

  else
  {
    v64 = 0;
  }

  v27 = v3[23];
  if (v27[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v63 = vp::vx::data_flow::Value::view_storage(v27);
  }

  else
  {
    v63 = 0;
  }

  v28 = v3[24];
  if (v28[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v62 = vp::vx::data_flow::Value::view_storage(v28);
  }

  else
  {
    v62 = 0;
  }

  v29 = v3[25];
  if (v29[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v61 = vp::vx::data_flow::Value::view_storage(v29);
  }

  else
  {
    v61 = 0;
  }

  v30 = v3[26];
  if (v30[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v60 = vp::vx::data_flow::Value::view_storage(v30);
  }

  else
  {
    v60 = 0;
  }

  v31 = v3[27];
  if (v31[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v59 = vp::vx::data_flow::Value::view_storage(v31);
  }

  else
  {
    v59 = 0;
  }

  v32 = v3[28];
  if (v32[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v58 = vp::vx::data_flow::Value::view_storage(v32);
  }

  else
  {
    v58 = 0;
  }

  v33 = v3[29];
  if (v33[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v57 = vp::vx::data_flow::Value::view_storage(v33);
  }

  else
  {
    v57 = 0;
  }

  v34 = v3[30];
  if (v34[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v56 = vp::vx::data_flow::Value::view_storage(v34);
  }

  else
  {
    v56 = 0;
  }

  v35 = v3[31];
  if (v35[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v36 = vp::vx::data_flow::Value::view_storage(v35);
  }

  else
  {
    v36 = 0;
  }

  v37 = v3[32];
  if (v37[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v38 = vp::vx::data_flow::Value::view_storage(v37);
  }

  else
  {
    v38 = 0;
  }

  v39 = v3[33];
  if (v39[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v40 = vp::vx::data_flow::Value::view_storage(v39);
  }

  else
  {
    v40 = 0;
  }

  v41 = v3[34];
  if (v41[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v42 = vp::vx::data_flow::Value::view_storage(v41);
  }

  else
  {
    v42 = 0;
  }

  v43 = v3[35];
  if (v43[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v44 = vp::vx::data_flow::Value::view_storage(v43);
  }

  else
  {
    v44 = 0;
  }

  v45 = v3[36];
  if (v45[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v46 = vp::vx::data_flow::Value::view_storage(v45);
  }

  else
  {
    v46 = 0;
  }

  v47 = v3[37];
  if (v47[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v48 = vp::vx::data_flow::Value::view_storage(v47);
  }

  else
  {
    v48 = 0;
  }

  v49 = v3[38];
  if (v49[2] == &vp::vx::data_flow::Value::type_id<vp::vx::AirPods_Offload_Mode>(void)::s_type_id)
  {
    v50 = vp::vx::data_flow::Value::view_storage(v49);
  }

  else
  {
    v50 = 0;
  }

  *v87 = *v4;
  *&v87[4] = *v86;
  *&v87[8] = *v85;
  *&v87[12] = *v84;
  *&v87[16] = *v83;
  *&v87[20] = *v82;
  *&v87[24] = *v81;
  v51 = *v80;
  if (*v80)
  {
    CFRetain(*v80);
  }

  *v88 = *v79;
  *&v88[4] = *v78;
  *&v88[8] = *v77;
  v88[12] = *v76;
  *&v88[16] = *v75;
  *&v88[20] = *v74;
  *&v88[24] = *v73;
  v52 = *v72;
  if (*v72)
  {
    CFRetain(*v72);
  }

  v89.n128_u8[0] = *v70;
  v89.n128_u8[1] = *v69;
  v89.n128_u8[2] = *v68;
  v89.n128_u8[3] = *v67;
  v89.n128_u8[4] = *v66;
  v89.n128_u8[5] = *v65;
  v89.n128_u8[6] = *v64;
  v89.n128_u32[2] = *v63;
  v89.n128_u32[3] = *v62;
  LODWORD(v90) = *v61;
  DWORD1(v90) = *v60;
  DWORD2(v90) = *v59;
  HIDWORD(v90) = *v58;
  LODWORD(v91) = *v57;
  *(&v91 + 1) = *v56;
  LOBYTE(v92) = *v36;
  BYTE1(v92) = *v38;
  BYTE2(v92) = *v40;
  BYTE3(v92) = *v42;
  DWORD1(v92) = *v44;
  BYTE8(v92) = *v46;
  BYTE9(v92) = *v48;
  HIDWORD(v92) = *v50;
  vp::vx::data_flow::Value::~Value(v71);
  *v71 = std::pmr::get_default_resource(v53);
  *(v71 + 1) = 0;
  *(v71 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Configuration_Context>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v71);
  *(storage + 12) = *&v87[12];
  *storage = *v87;
  *(storage + 32) = v51;
  *(storage + 52) = *&v88[12];
  *(storage + 40) = *v88;
  *(storage + 72) = v52;
  result = v89;
  *(storage + 112) = v91;
  *(storage + 128) = v92;
  *(storage + 80) = v89;
  *(storage + 96) = v90;
  return result;
}

void vp::vx::Configuration_Context::~Configuration_Context(vp::vx::Configuration_Context *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_21Configuration_ContextEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_12_GLOBAL__N_123make_constructor_lambdaIS6_EEDavEUlDpRKT_E_JNS3_14Operation_ModeENS3_11Chat_FlavorENS3_15Input_Port_TypeENS3_13Port_Sub_TypeEjjjN10applesauce2CF9StringRefENS3_16Output_Port_TypeESM_NS3_18Port_Endpoint_TypeEbjjjSP_bbbbbbbjjjjjjjdbbbbjbbNS3_20AirPods_Offload_ModeEEEESD_OT0_DpRKNS4_5StateIT1_EEEUlSH_E_JSJ_SK_SL_SM_jjjSP_SQ_SM_SR_bjjjSP_bbbbbbbjjjjjjjdbbbbjbbSS_EEERNS4_13State_ManagerET_DpRKNSV_IT0_EEEUlPPKNS4_5ValueEPS1A_E_NS_9allocatorIS1F_EEFvS1D_S1E_EE7__cloneEPNS0_6__baseIS1I_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BF490;
  *(a2 + 8) = *(result + 8);
  return result;
}

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_contextEvENK3__0clEvEUlT_T0_E0_JbNS3_20AirPods_Offload_ModeEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbSF_EEERNS4_13State_ManagerESC_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
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

  v7 = (*vp::vx::data_flow::Value::view_storage(v3[1]) != 0) | *v6;
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v7;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_contextEvENK3__0clEvEUlT_T0_E0_JbNS3_20AirPods_Offload_ModeEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbSF_EEERNS4_13State_ManagerESC_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BFA28;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor40get_other_audio_advanced_ducking_enabledEvENK3__0clEvEUlRK39AUVoiceIOOtherAudioDuckingConfigurationE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2) != 0;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor40get_other_audio_advanced_ducking_enabledEvENK3__0clEvEUlRK39AUVoiceIOOtherAudioDuckingConfigurationE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0A70;
  *(a2 + 8) = *(result + 8);
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKSC_E_JN2CA17StreamDescriptionEEEESD_OSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSN_EEERNS4_13State_ManagerESE_SU_EUlPPKNS4_5ValueEPS12_E_NS_9allocatorIS17_EEFvS15_S16_EEclEOS15_OS16_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
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

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKSC_E_JN2CA17StreamDescriptionEEEESD_OSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSN_EEERNS4_13State_ManagerESE_SU_EUlPPKNS4_5ValueEPS12_E_NS_9allocatorIS17_EEFvS15_S16_EE7__cloneEPNS0_6__baseIS1A_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881BF978;
  a2[1] = v2;
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor16get_spatial_modeEvENK3__0clEvEUlNS3_35Spatial_Head_Tracking_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor16get_spatial_modeEvENK3__0clEvEUlNS3_35Spatial_Head_Tracking_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0930;
  *(a2 + 8) = *(result + 8);
  return result;
}

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor33get_spatial_head_tracking_enabledEvENK3__0clEvEUlNS3_35Spatial_Head_Tracking_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *(vp::vx::data_flow::Value::view_storage(**a2) + 4) & 1;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor33get_spatial_head_tracking_enabledEvENK3__0clEvEUlNS3_35Spatial_Head_Tracking_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0A28;
  *(a2 + 8) = *(result + 8);
  return result;
}

int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_11Chat_FlavorEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_contextEvENK3__0clEvEUlT_T0_E_JS6_N10applesauce2CF9StringRefEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS6_SI_EEERNS4_13State_ManagerESD_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id)
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
  if (*v7)
  {
    CFRetain(*v7);
    v10 = CFStringCreateWithBytes(0, "Standard", 8, 0x8000100u, 0);
    v21 = v10;
    if (!v10)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v11 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v9, &v21);
    CFRelease(v10);
    if (v11)
    {
      v12 = CFStringCreateWithBytes(0, "VoiceIsolation", 14, 0x8000100u, 0);
      v21 = v12;
      if (!v12)
      {
        v19 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v19, "Could not construct");
      }

      v13 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v9, &v21);
      CFRelease(v12);
      if (v13)
      {
        v14 = CFStringCreateWithBytes(0, "WideSpectrum", 12, 0x8000100u, 0);
        v21 = v14;
        if (!v14)
        {
          v20 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v20, "Could not construct");
        }

        v15 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v9, &v21);
        CFRelease(v14);
        if (v15 == kCFCompareEqualTo)
        {
          v8 = 1;
        }
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v9);
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v16);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v8;
  return result;
}

void sub_2726D3510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  applesauce::CF::StringRef::~StringRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_11Chat_FlavorEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_contextEvENK3__0clEvEUlT_T0_E_JS6_N10applesauce2CF9StringRefEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS6_SI_EEERNS4_13State_ManagerESD_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BF8E8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *vp::Service_Provider::get<vp::services::User_Defaults,(decltype(nullptr))0>(void *a1, uint64_t a2)
{
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::find(&v11, a2 + 16, &vp::Service_Interface<1970496627u>::k_service_type_id);
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

int *vp::vx::Voice_Processor_State_Manager::create_state_for_SIGHUP_signal(vp::vx::Voice_Processor_State_Manager *this, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    v4 = dispatch_source_create(MEMORY[0x277D85D30], 1uLL, 0, *(a2 + 8));
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
    if (v5)
    {
      dispatch_release(v5);
    }

    v11 = 0;
    v12 = &v11;
    v13 = 0x4002000000;
    v14 = __Block_byref_object_copy__10728;
    v15 = __Block_byref_object_dispose__10729;
    v10 = 0;
    vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(v16, a2, &v10);
    v6 = *(a2 + 16);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = ___ZN2vp2vx29Voice_Processor_State_Manager30create_state_for_SIGHUP_signalEv_block_invoke;
    v9[3] = &unk_279E4A438;
    v9[4] = &v11;
    dispatch_source_set_event_handler(v6, v9);
    v7 = v12;
    vp::vx::data_flow::State<void>::~State((a2 + 24));
    vp::vx::data_flow::State<void>::State((a2 + 24), v7 + 10);
    dispatch_resume(*(a2 + 16));
    _Block_object_dispose(&v11, 8);
    vp::vx::data_flow::State<void>::~State(v16);
  }

  return vp::vx::data_flow::State<void>::State(this, (a2 + 24));
}

int *vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::StringRef>(uint64_t a1, __n128 *a2, void *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
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

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_S8_EENS4_5StateIT_EEOT0_EUlSG_E_JjEEEDaOSG_DpRKNSF_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EEclEOS12_OS13_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v5);
  }

  v6.n128_f64[0] = vp::services::User_Defaults::default_app(&v13, *(a1 + 16));
  v7 = *(a1 + 8);
  if (v7)
  {
    CFRetain(v7);
  }

  v17 = v7;
  (*(*v13 + 32))(&cf, v6);
  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    applesauce::CF::StringRef::from_get(&v12, cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v12 = 0;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v9);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v12;
  return result;
}

void sub_2726D3A30(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726D397CLL);
}

double vp::services::User_Defaults::default_app(vp::services::User_Defaults *this, void *a2)
{
  (*(*a2 + 16))(&cf, a2);
  v4 = a2[1];
  vp::Service::get_service_provider(v4);
  vp::Service_Provider::get<vp::services::User_Defaults,(decltype(nullptr))0>(&v9, v4);
  v5 = cf;
  if (cf)
  {
    CFRetain(cf);
    v6 = cf;
    result = *&v9;
    *this = v9;
    *(this + 2) = v5;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    result = *&v9;
    *this = v9;
    *(this + 2) = 0;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_S8_EENS4_5StateIT_EEOT0_EUlSG_E_JjEEEDaOSG_DpRKNSF_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE18destroy_deallocateEv(void *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_S8_EENS4_5StateIT_EEOT0_EUlSG_E_JjEEEDaOSG_DpRKNSF_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE7destroyB8ne200100Ev(a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function12__alloc_funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_S8_EENS4_5StateIT_EEOT0_EUlSG_E_JjEEEDaOSG_DpRKNSF_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE7destroyB8ne200100Ev(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

CFTypeRef *_ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_S8_EENS4_5StateIT_EEOT0_EUlSG_E_JjEEEDaOSG_DpRKNSF_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE7__cloneEPNS0_6__baseIS17_EE(CFTypeRef *result, void *a2)
{
  v3 = result;
  *a2 = &unk_2881BF930;
  v4 = result[1];
  if (v4)
  {
    result = CFRetain(result[1]);
  }

  v6 = v3[2];
  v5 = v3[3];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_S8_EENS4_5StateIT_EEOT0_EUlSG_E_JjEEEDaOSG_DpRKNSF_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EED0Ev(void *a1)
{
  *a1 = &unk_2881BF930;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_S8_EENS4_5StateIT_EEOT0_EUlSG_E_JjEEEDaOSG_DpRKNSF_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EED1Ev(void *a1)
{
  *a1 = &unk_2881BF930;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

__n128 __Block_byref_object_copy__10728(__n128 *a1, __n128 *a2)
{
  a1[2].n128_u32[2] = a2[2].n128_u32[2];
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

int *vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(uint64_t a1, __n128 *a2, _DWORD *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
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

void ___ZN2vp2vx29Voice_Processor_State_Manager30create_state_for_SIGHUP_signalEv_block_invoke(std::pmr *a1)
{
  v1 = *(*(a1 + 4) + 8);
  v5 = 0;
  v6 = 0;
  default_resource = std::pmr::get_default_resource(a1);
  vp::vx::data_flow::State<void>::get_value((v1 + 40), &default_resource);
  v2 = *vp::vx::data_flow::Value::view_storage(&default_resource);
  vp::vx::data_flow::Value::~Value(&default_resource);
  default_resource = std::pmr::get_default_resource(v3);
  v5 = 0;
  v6 = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(&default_resource) = v2 + 1;
  vp::vx::data_flow::State<void>::set_value((v1 + 40), &default_resource);
  vp::vx::data_flow::Value::~Value(&default_resource);
}

void sub_2726D3EF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::data_flow::Value::~Value(va);
  _Unwind_Resume(a1);
}

void sub_2726D3F08(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::data_flow::Value::~Value(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726D3EB0);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUljjE_JjjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JjjEEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
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

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUljjE_JjjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JjjEEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881BFF20;
  a2[1] = v2;
  return result;
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor30get_dsp_node_property_overrideENS_7variantIJNS3_18Uplink_DSP_Node_IDENS3_20Downlink_DSP_Node_IDEEEENS3_17Graph_Property_IDEE3__0JdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JdEEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  applesauce::CF::TypeRef::TypeRef(&v12, "Float64");
  valuePtr = v4;
  cf = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v10[0] = &v12;
  v10[1] = 1;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v10);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = CFDictionaryRef;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726D42A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va1);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor30get_dsp_node_property_overrideENS_7variantIJNS3_18Uplink_DSP_Node_IDENS3_20Downlink_DSP_Node_IDEEEENS3_17Graph_Property_IDEE3__0JdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JdEEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C16B0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void vp::vx::Voice_Processor::get_uplink_mic_sample_rate(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "uplink microphone sample rate (Hz)", 34, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v15 = 0;
  v16 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v23, (a2 + 64), *(v4 + 6));
    v5 = v23;
    LODWORD(v25) = v23;
    v12 = v24;
    v24 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v15);
    v15 = v5;
    v16 = v12;
    v26 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v25);
    vp::vx::data_flow::State<void>::~State(&v23);
  }

  if (!v16)
  {
    (*(*(a2 + 8) + 16))(&v25, a2 + 8, 8);
    v6 = v25;
    v17 = v25;
    v18 = v26;
    v26 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v25);
    v25 = &unk_2881C03B8;
    LOBYTE(v26) = 0;
    v27 = &v25;
    v22 = v6;
    vp::vx::data_flow::State_Manager::create_state(&v23, (a2 + 64), &v25);
    v7 = v23;
    v19 = v23;
    v13 = v24;
    v24 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v23);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v25);
    LODWORD(v25) = v7;
    v20 = 0;
    v21 = 0;
    vp::vx::data_flow::State<void>::~State(&v19);
    vp::vx::data_flow::State<void>::~State(&v17);
    vp::vx::data_flow::State<void>::~State(&v15);
    v15 = v7;
    v16 = v13;
    v26 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v25);
    v8 = v15;
    v9 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v25 = v9;
    LODWORD(v26) = v8;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v25, &v25);
    if (v25)
    {
      CFRelease(v25);
    }
  }

  *this = v15;
  *(this + 8) = v16;
  v16 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v15);
  if (cf)
  {
    CFRelease(cf);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2726D4658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::get_client_sample_rate(uint64_t a1, uint64_t a2, int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = "downlink";
  if (!a3)
  {
    v6 = "uplink";
  }

  applesauce::CF::make_StringRef(@"%s client sample rate (Hz)", &cf, v6);
  v18 = 0;
  v19 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v7 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v7)
  {
    vp::vx::data_flow::State_Manager::find_state(&v26, (a2 + 64), *(v7 + 6));
    v8 = v26;
    LODWORD(v28) = v26;
    v15 = v27;
    v27 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v18);
    v18 = v8;
    v19 = v15;
    v29 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v28);
    vp::vx::data_flow::State<void>::~State(&v26);
  }

  if (!v19)
  {
    (*(*(a2 + 8) + 16))(&v28);
    v9 = v28;
    v20 = v28;
    v21 = v29;
    v29 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v28);
    if (a3)
    {
      v10 = &unk_2881BFC18;
    }

    else
    {
      v10 = &unk_2881BFBD0;
    }

    v28 = v10;
    LOBYTE(v29) = 0;
    v30 = &v28;
    v25 = v9;
    vp::vx::data_flow::State_Manager::create_state(&v26, (a2 + 64), &v28);
    v11 = v26;
    v22 = v26;
    v16 = v27;
    v27 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v26);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v28);
    LODWORD(v28) = v11;
    v23 = 0;
    v24 = 0;
    vp::vx::data_flow::State<void>::~State(&v22);
    vp::vx::data_flow::State<void>::~State(&v20);
    vp::vx::data_flow::State<void>::~State(&v18);
    v18 = v11;
    v19 = v16;
    v29 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v28);
    v12 = v18;
    v13 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v28 = v13;
    LODWORD(v29) = v12;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v28, &v28);
    if (v28)
    {
      CFRelease(v28);
    }
  }

  *a1 = v18;
  *(a1 + 8) = v19;
  v19 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v18);
  if (cf)
  {
    CFRelease(cf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2726D498C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::get_client_sample_rate_preference(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "client sample rate preference (Hz)", 34, 0x8000100u, 0);
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
    vp::vx::Voice_Processor::get_global_configuration(v19, a2);
    v26 = &unk_2881BFC60;
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

void sub_2726D4C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor15get_sample_rateENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JdjNS3_30DSP_Node_Configuration_OptionsEddNS_8optionalIdEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JdjSG_ddSI_EEERNS4_13State_ManagerESK_SR_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
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

  v16 = v4[5];
  if (v16[2] == &vp::vx::data_flow::Value::type_id<std::optional<double>>(void)::s_type_id)
  {
    v17 = vp::vx::data_flow::Value::view_storage(v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = *v7;
  v19 = *v9;
  v21 = v11[3];
  v20 = v11[4];
  v22 = v11[2];
  *&v30[9] = *(v11 + 73);
  v29[3] = v21;
  *v30 = v20;
  v29[2] = v22;
  v23 = v11[1];
  v29[0] = *v11;
  v29[1] = v23;
  std::unordered_map<std::string,unsigned int>::unordered_map(v31, (v11 + 6));
  std::unordered_map<std::string,unsigned int>::unordered_map(__p, v11 + 136);
  v24 = (*(**(a1 + 8) + 24))(*(a1 + 8), 1, v19, v29, *v17, v17[1], v18, *v13, *v15);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(__p[2]);
  v25 = __p[0];
  __p[0] = 0;
  if (v25)
  {
    operator delete(v25);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v31[2]);
  v26 = v31[0];
  v31[0] = 0;
  if (v26)
  {
    operator delete(v26);
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v27);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v24;
  return result;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<double>>::compare_value(uint64_t a1, uint64_t a2, uint64_t a3)
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

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<double>>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  result = **a3;
  **a2 = result;
  return result;
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<double>>::copy_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  result = **a3;
  **a2 = result;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<double>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<double>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 16, 8);
  *a2 = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor15get_sample_rateENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JdjNS3_30DSP_Node_Configuration_OptionsEddNS_8optionalIdEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JdjSG_ddSI_EEERNS4_13State_ManagerESK_SR_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C0040;
  a2[1] = v2;
  return result;
}

void vp::vx::Voice_Processor::get_global_configuration(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "global configuration", 20, 0x8000100u, 0);
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

void sub_2726D52F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalIdEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor33get_client_sample_rate_preferenceEvENK3__0clEvEUlRKNS3_20Global_ConfigurationEE_JSE_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSE_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
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

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Global_Configuration>::compare_value(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(*a2 + 8);
  v6 = *(*a3 + 8);
  if (v5 != v6 || v5 == 0)
  {
    if (v5 != v6)
    {
      return 0;
    }
  }

  else if (*v3 != *v4)
  {
    return 0;
  }

  v8 = *(v3 + 32);
  if (v8 != *(v4 + 32))
  {
    return 0;
  }

  v9 = *(v3 + 24);
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v11 = *(v4 + 24);
  v17 = &v9[v8];
  v18 = v9;
  v16 = v11;
  result = boost::intrusive::algo_equal<boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::intrusive::algo_pred_equal>(&v18, &v17, &v16);
  if (!result)
  {
    return result;
  }

  v13 = *(v3 + 72);
  if (v13 != *(v4 + 72))
  {
    return 0;
  }

  v14 = *(v3 + 64);
  if (v13 && !v14)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v15 = *(v4 + 64);
  v17 = &v14[v13];
  v18 = v14;
  v16 = v15;
  result = boost::intrusive::algo_equal<boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::intrusive::algo_pred_equal>(&v18, &v17, &v16);
  if (result)
  {
    if (*(v3 + 96) == *(v4 + 96) && ((*(v4 + 100) ^ *(v3 + 100)) & 1) == 0)
    {
      return *(v3 + 104) == *(v4 + 104);
    }

    return 0;
  }

  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Global_Configuration>::destroy_value(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 80))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate((v2 + 56), *(v2 + 64));
  }

  if (*(v2 + 40))
  {
    v3 = *(v2 + 24);

    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate((v2 + 16), v3);
  }
}

char *vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Global_Configuration>::move_value(uint64_t a1, uint64_t *a2, _OWORD **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = **a3;
  *(v3 + 16) = *(v4 + 2);
  *(v3 + 24) = v3 + 48;
  *(v3 + 32) = xmmword_2727565D0;
  boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl((v3 + 16), (v4 + 1));
  *(v3 + 56) = *(v4 + 7);
  *(v3 + 64) = v3 + 88;
  *(v3 + 72) = xmmword_2727565D0;
  result = boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl((v3 + 56), v4 + 56);
  v6 = *(v4 + 12);
  *(v3 + 104) = *(v4 + 26);
  *(v3 + 96) = v6;
  return result;
}

char *vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Global_Configuration>::copy_value(uint64_t a1, uint64_t *a2, _OWORD **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = **a3;
  *(v3 + 16) = *(v4 + 2);
  *(v3 + 24) = v3 + 48;
  *(v3 + 32) = xmmword_2727565D0;
  v5 = *(v4 + 3);
  v6 = *(v4 + 4);
  v13 = v5;
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

  v12 = &v5[4 * v6];
  boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>((v3 + 16), &v13, &v12);
  *(v3 + 56) = *(v4 + 7);
  *(v3 + 64) = v3 + 88;
  *(v3 + 72) = xmmword_2727565D0;
  v8 = *(v4 + 8);
  v9 = *(v4 + 9);
  v13 = v8;
  if (!v8 && v9)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v12 = &v8[4 * v9];
  result = boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>((v3 + 56), &v13, &v12);
  v11 = *(v4 + 12);
  *(v3 + 104) = *(v4 + 26);
  *(v3 + 96) = v11;
  return result;
}

void sub_2726D576C(_Unwind_Exception *exception_object)
{
  v4 = v2;
  v6 = v4;
  if (*(v4 + 80))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v3, *(v4 + 64));
  }

  if (*(v6 + 40))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v1, *(v6 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Global_Configuration>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Global_Configuration>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 112, 8);
  *a2 = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalIdEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor33get_client_sample_rate_preferenceEvENK3__0clEvEUlRKNS3_20Global_ConfigurationEE_JSE_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSE_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BFC60;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Global_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_global_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EEclEOS10_OS11_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Configuration_Context>(void)::s_type_id)
  {
    v5 = vp::vx::data_flow::Value::view_storage(v5);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_25;
  }

  v7 = *(a1 + 8);
  LOBYTE(__src) = 0;
  BYTE8(__src) = 0;
  default_resource = std::pmr::get_default_resource(v5);
  v40 = &v42;
  v41 = xmmword_2727565D0;
  LODWORD(__p[0]) = 0;
  v43 = std::pmr::get_default_resource(default_resource);
  v44 = &v46;
  v45 = xmmword_2727565D0;
  boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<vp::vx::Chat_Flavor*>(&v43, __p, __p + 4);
  LODWORD(v47) = 0;
  BYTE4(v47) |= 1u;
  v48 = 1065353216;
  v8 = (*(**(a1 + 16) + 24))(*(a1 + 16), v6, &__src);
  v9 = v8;
  if (v8)
  {
    v25 = __src;
    v26 = default_resource;
    v27 = &v29;
    v28 = xmmword_2727565D0;
    boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl(&v26, &default_resource);
    v30 = v43;
    v31 = &v33;
    v32 = xmmword_2727565D0;
    v5 = boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl(&v30, &v43);
    v34 = v47;
    v35 = v48;
  }

  else
  {
    log = vp::get_log(v8);
    v5 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      log_context_info = vp::get_log_context_info(__p, v7, "vp::vx::Voice_Processor]", 23);
      v12 = v37;
      v13 = v37;
      v14 = __p[1];
      v15 = vp::get_log(log_context_info);
      v5 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (v5)
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
        v50 = v17;
        v51 = 2080;
        v52 = v18;
        _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%s%sfailed to get global configuration", buf, 0x16u);
        LOBYTE(v13) = v37;
      }

      if ((v13 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (*(&v45 + 1))
  {
    v5 = boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&v43, v44);
  }

  if (*(&v41 + 1))
  {
    v5 = boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&default_resource, v40);
  }

  if ((v9 & 1) == 0)
  {
LABEL_25:
    LOBYTE(v25) = 0;
    BYTE8(v25) = 0;
    v26 = std::pmr::get_default_resource(v5);
    v27 = &v29;
    v28 = xmmword_2727565D0;
    LODWORD(__src) = 0;
    v30 = std::pmr::get_default_resource(v26);
    v31 = &v33;
    v32 = xmmword_2727565D0;
    boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<vp::vx::Chat_Flavor*>(&v30, &__src, &__src + 4);
    LODWORD(v34) = 0;
    BYTE4(v34) |= 1u;
    v35 = 1065353216;
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v19);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Global_Configuration>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  *storage = v25;
  *(storage + 16) = v26;
  *(storage + 24) = storage + 48;
  *(storage + 32) = xmmword_2727565D0;
  boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl((storage + 16), &v26);
  *(storage + 56) = v30;
  *(storage + 64) = storage + 88;
  *(storage + 72) = xmmword_2727565D0;
  result = boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl((storage + 56), &v30);
  v22 = v34;
  v23 = *(&v32 + 1);
  *(storage + 104) = v35;
  *(storage + 96) = v22;
  if (v23)
  {
    result = boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&v30, v31);
  }

  if (*(&v28 + 1))
  {
    result = boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&v26, v27);
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726D5CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Global_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_global_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Global_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_global_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Global_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_global_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7__cloneEPNS0_6__baseIS15_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BFA70;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Global_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_global_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EED0Ev(void *a1)
{
  *a1 = &unk_2881BFA70;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Global_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_global_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EED1Ev(void *a1)
{
  *a1 = &unk_2881BFA70;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor22get_client_sample_rateENS2_6DomainEENK3__0clEvEUlRKT_E0_JN2CA17StreamDescriptionEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESD_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
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

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor22get_client_sample_rateENS2_6DomainEENK3__0clEvEUlRKT_E0_JN2CA17StreamDescriptionEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESD_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BFC18;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor22get_client_sample_rateENS2_6DomainEENK3__0clEvEUlRKT_E_JN2CA17StreamDescriptionEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESD_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
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

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor22get_client_sample_rateENS2_6DomainEENK3__0clEvEUlRKT_E_JN2CA17StreamDescriptionEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESD_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BFBD0;
  *(a2 + 8) = *(result + 8);
  return result;
}

double *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor15get_sample_rateENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlddE_JddEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JddEEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
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

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor15get_sample_rateENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlddE_JddEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JddEEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881BFFF8;
  a2[1] = v2;
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor26get_uplink_ref_sample_rateEvENK3__0clEvEUlT_E_JN2CA17StreamDescriptionEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_EEERNS4_13State_ManagerESC_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
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

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor26get_uplink_ref_sample_rateEvENK3__0clEvEUlT_E_JN2CA17StreamDescriptionEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_EEERNS4_13State_ManagerESC_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0400;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor26get_uplink_mic_sample_rateEvENK3__0clEvEUlT_E_JN2CA17StreamDescriptionEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_EEERNS4_13State_ManagerESC_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
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

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor26get_uplink_mic_sample_rateEvENK3__0clEvEUlT_E_JN2CA17StreamDescriptionEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_EEERNS4_13State_ManagerESC_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C03B8;
  *(a2 + 8) = *(result + 8);
  return result;
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor60create_spatial_head_tracking_enabled_property_override_stateEvE3__0JbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  applesauce::CF::TypeRef::TypeRef(&v11, "UInt32");
  v5 = MEMORY[0x277CBED28];
  if ((v4 & 1) == 0)
  {
    v5 = MEMORY[0x277CBED10];
  }

  cf = *v5;
  v10[0] = &v11;
  v10[1] = 1;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v10);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = CFDictionaryRef;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726D6678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor60create_spatial_head_tracking_enabled_property_override_stateEvE3__0JbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C15E0;
  *(a2 + 8) = *(result + 8);
  return result;
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor57create_spatial_head_tracking_mode_property_override_stateEvE3__0JjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v9 = *vp::vx::data_flow::Value::view_storage(**a2);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int &>(&v10, &v9);
  v8[0] = &v10;
  v8[1] = 1;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = CFDictionaryRef;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726D682C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor57create_spatial_head_tracking_mode_property_override_stateEvE3__0JjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C1598;
  *(a2 + 8) = *(result + 8);
  return result;
}

int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor30get_spatial_head_tracking_modeEvENK3__0clEvEUlNS3_14Operation_ModeENS3_35Spatial_Head_Tracking_ConfigurationEE_JSC_SD_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_SD_EEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *vp::vx::data_flow::Value::view_storage(v3[1]);
  if (*v6 == 4)
  {
    v8 = 5;
  }

  else
  {
    v8 = 0;
  }

  if (*v6 == 2)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  if ((v7 & 0x100000000) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v11);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v10;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor30get_spatial_head_tracking_modeEvENK3__0clEvEUlNS3_14Operation_ModeENS3_35Spatial_Head_Tracking_ConfigurationEE_JSC_SD_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_SD_EEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C09E0;
  *(a2 + 8) = *(result + 8);
  return result;
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor54create_metric_reporter_ids_dsp_property_override_stateEvE3__0JNS_6vectorIxNS_9allocatorIxEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESK_SR_EUlPPKNS4_5ValueEPSZ_E_NSG_IS14_EEFvS12_S13_EEclEOS12_OS13_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  applesauce::CF::make_DataRef(&v9, *v4, *(v4 + 8) - *v4);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef>(&v11, "Data", &v9);
  v10[0] = &v11;
  v10[1] = 1;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v10);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = CFDictionaryRef;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726D6B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor54create_metric_reporter_ids_dsp_property_override_stateEvE3__0JNS_6vectorIxNS_9allocatorIxEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESK_SR_EUlPPKNS4_5ValueEPSZ_E_NSG_IS14_EEFvS12_S13_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C14A0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_2726D6CA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor49create_mic_trim_gains_dsp_property_override_stateEvE3__0JNS3_15Input_Port_TypeEN2CA17StreamDescriptionENS_6vectorIfNS_9allocatorIfEEEENS7_8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SH_SL_SM_EEERNS4_13State_ManagerESO_SV_EUlPPKNS4_5ValueEPS13_E_NSJ_IS18_EEFvS16_S17_EEclEOS16_OS17_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Input_Port_Type>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[2];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v4[3];
  if (v12[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id)
  {
    v13 = vp::vx::data_flow::Value::view_storage(v12);
  }

  else
  {
    v13 = 0;
  }

  if (*v7 != 1)
  {
    goto LABEL_52;
  }

  if (*(a1 + 32) != 1 || ((v14 = *(a1 + 8), v15 = *(a1 + 16) - v14, LODWORD(v16) = *(v9 + 28), (*(v9 + 12) & 0x20) == 0) ? (v16 = 1) : (v16 = v16), v16 != v15 >> 2))
  {
    if (*v13)
    {
      vp::vx::trim_gains_parse_cf(&v29, v13);
      if (v31 == 1)
      {
        v19 = v29;
        v20 = v30 - v29;
        LODWORD(v21) = *(v9 + 28);
        if ((*(v9 + 12) & 0x20) != 0)
        {
          v21 = v21;
        }

        else
        {
          v21 = 1;
        }

        if (v21 == v20 >> 2)
        {
          applesauce::CF::make_DataRef(&v28, v29, v20);
          applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef>(&v32, "Data", &v28);
          v34 = &v32;
          cf = 1;
          CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v34);
          if (v33)
          {
            CFRelease(v33);
          }

          if (v32)
          {
            CFRelease(v32);
          }

          if (v28)
          {
            CFRelease(v28);
          }

          if (v19)
          {
            operator delete(v19);
          }

          goto LABEL_53;
        }

        if (v29)
        {
          operator delete(v29);
        }
      }
    }

    v22 = *v11;
    v23 = *(v11 + 8);
    if (*v11 != v23)
    {
      v24 = v23 - v22;
      LODWORD(v23) = *(v9 + 28);
      v23 = (*(v9 + 12) & 0x20) != 0 ? v23 : 1;
      if (v23 == v24 >> 2)
      {
        applesauce::CF::make_DataRef(&v32, v22, v24);
        applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef>(&v34, "Data", &v32);
        v29 = &v34;
        v30 = 1;
        CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v29);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v34)
        {
          CFRelease(v34);
        }

        v18 = v32;
        if (v32)
        {
          goto LABEL_24;
        }

        goto LABEL_53;
      }
    }

LABEL_52:
    CFDictionaryRef = 0;
    goto LABEL_53;
  }

  applesauce::CF::make_DataRef(&v32, v14, v15);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef>(&v34, "Data", &v32);
  v29 = &v34;
  v30 = 1;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v29);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  v18 = v32;
  if (v32)
  {
LABEL_24:
    CFRelease(v18);
  }

LABEL_53:
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v25);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = CFDictionaryRef;
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726D6FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor49create_mic_trim_gains_dsp_property_override_stateEvE3__0JNS3_15Input_Port_TypeEN2CA17StreamDescriptionENS_6vectorIfNS_9allocatorIfEEEENS7_8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SH_SL_SM_EEERNS4_13State_ManagerESO_SV_EUlPPKNS4_5ValueEPS13_E_NSJ_IS18_EEFvS16_S17_EE18destroy_deallocateEv(void *__p)
{
  if (*(__p + 32) == 1)
  {
    v2 = __p[1];
    if (v2)
    {
      __p[2] = v2;
      operator delete(v2);
    }
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor49create_mic_trim_gains_dsp_property_override_stateEvE3__0JNS3_15Input_Port_TypeEN2CA17StreamDescriptionENS_6vectorIfNS_9allocatorIfEEEENS7_8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SH_SL_SM_EEERNS4_13State_ManagerESO_SV_EUlPPKNS4_5ValueEPS13_E_NSJ_IS18_EEFvS16_S17_EE7destroyEv(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      *(a1 + 16) = v1;
      operator delete(v1);
    }
  }
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor49create_mic_trim_gains_dsp_property_override_stateEvE3__0JNS3_15Input_Port_TypeEN2CA17StreamDescriptionENS_6vectorIfNS_9allocatorIfEEEENS7_8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SH_SL_SM_EEERNS4_13State_ManagerESO_SV_EUlPPKNS4_5ValueEPS13_E_NSJ_IS18_EEFvS16_S17_EED0Ev(uint64_t a1)
{
  *a1 = &unk_2881C0F30;
  if (*(a1 + 32) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      *(a1 + 16) = v2;
      operator delete(v2);
    }
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor49create_mic_trim_gains_dsp_property_override_stateEvE3__0JNS3_15Input_Port_TypeEN2CA17StreamDescriptionENS_6vectorIfNS_9allocatorIfEEEENS7_8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SH_SL_SM_EEERNS4_13State_ManagerESO_SV_EUlPPKNS4_5ValueEPS13_E_NSJ_IS18_EEFvS16_S17_EED1Ev(uint64_t a1)
{
  *a1 = &unk_2881C0F30;
  if (*(a1 + 32) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      *(a1 + 16) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

void vp::vx::Voice_Processor::get_dsp_node_parameter_override(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  v29 = a2;
  if (a3 == 1885433961)
  {
    if (*(a1 + 264))
    {
      goto LABEL_13;
    }

    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v39, *(a1 + 456));
    v19 = v39;
    if (v39)
    {
      v20 = v40;
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*(a1 + 8) + 16))(&v44, a1 + 8, 26);
      v21 = v44;
      LODWORD(p_cf) = v44;
      v35 = v45;
      v45 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v44);
      (*(*(a1 + 8) + 16))(&v44, a1 + 8, 39);
      v22 = v44;
      v32 = v44;
      v33 = v45;
      v45 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v44);
      (*(*(a1 + 8) + 16))(&v44, a1 + 8, 27);
      v23 = v44;
      LODWORD(v30) = v44;
      v31 = v45;
      v45 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v44);
      v44 = &unk_2881C1458;
      *&v45 = v19;
      *(&v45 + 1) = v20;
      v46 = &v44;
      v41 = v21;
      v42 = v22;
      v43 = v23;
      vp::vx::data_flow::State_Manager::create_state(&v26, (a1 + 64), &v44);
      v4 = v26;
      LODWORD(cf) = v26;
      v25 = v27;
      v27 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v26);
      std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v44);
      LODWORD(v44) = v4;
      v37 = 0;
      v38 = 0;
      vp::vx::data_flow::State<void>::~State(&cf);
      LODWORD(v26) = v4;
      v27 = v25;
      v45 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v44);
      vp::vx::data_flow::State<void>::~State(&v30);
      vp::vx::data_flow::State<void>::~State(&v32);
      vp::vx::data_flow::State<void>::~State(&p_cf);
    }

    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    if (!v19)
    {
LABEL_13:
      cf = 0;
      vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::NumberRef>(&v44, (a1 + 16), &cf);
      v4 = v44;
      LODWORD(v26) = v44;
      v25 = v45;
      v27 = v45;
      v45 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v44);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    *a4 = v4;
    goto LABEL_53;
  }

  if (a3 == 1684829029)
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v30, *(a1 + 456));
    v9 = v30;
    if (v30)
    {
      v10 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
      }

      (*(*(a1 + 8) + 16))(&v44, a1 + 8, 39);
      v11 = v44;
      LODWORD(p_cf) = v44;
      v35 = v45;
      v45 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v44);
      (*(*(a1 + 8) + 16))(&v44, a1 + 8, 27);
      v12 = v44;
      v32 = v44;
      v33 = v45;
      v45 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v44);
      v44 = &unk_2881C10B0;
      *&v45 = v9;
      *(&v45 + 1) = v10;
      v46 = &v44;
      v39 = __PAIR64__(v12, v11);
      vp::vx::data_flow::State_Manager::create_state(&v26, (a1 + 64), &v44);
      v5 = v26;
      LODWORD(cf) = v26;
      v25 = v27;
      v27 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v26);
      std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v44);
      LODWORD(v44) = v5;
      v37 = 0;
      v38 = 0;
      vp::vx::data_flow::State<void>::~State(&cf);
      LODWORD(v26) = v5;
      v45 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v44);
      vp::vx::data_flow::State<void>::~State(&v32);
      vp::vx::data_flow::State<void>::~State(&p_cf);
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = v31;
      if (!v31)
      {
LABEL_8:
        if (!v9)
        {
          cf = 0;
          vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::NumberRef>(&v44, (a1 + 16), &cf);
          v5 = v44;
          LODWORD(v26) = v44;
          v25 = v45;
          v27 = v45;
          v45 = 0uLL;
          vp::vx::data_flow::State<void>::~State(&v44);
          if (cf)
          {
            CFRelease(cf);
          }
        }

        *a4 = v5;
LABEL_53:
        *(a4 + 8) = v25;
        v27 = 0uLL;
        *(a4 + 24) = 1;
        vp::vx::data_flow::State<void>::~State(&v26);
        goto LABEL_54;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    goto LABEL_8;
  }

  v13 = *(a1 + 520);
  v14 = *(a1 + 528);
  if (v13 == v14)
  {
LABEL_42:
    *a4 = 0;
    *(a4 + 24) = 0;
  }

  else
  {
    while (1)
    {
      v15 = *v13;
      v16 = *(v13 + 8);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v28 = 0;
        v37 = v16;
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v28 = 0;
        v37 = 0;
      }

      cf = v15;
      LODWORD(v38) = a3;
      if (HIDWORD(v29) == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      p_cf = &cf;
      (off_2881C1678[HIDWORD(v29)])(&v44, &p_cf, &v29);
      if (v28 != -1 || v46 != -1)
      {
        if (v46 == -1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v26);
        }

        else
        {
          p_cf = &v26;
          (off_2881C1688[v46])(&p_cf, &v26, &v44);
        }
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v44);
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      if (v28)
      {
        if (v28 == 2)
        {
          vp::vx::data_flow::State<void>::State(a4, &v26);
          v18 = 1;
          *(a4 + 24) = 1;
        }

        else if (v28 == 1)
        {
          v17 = v26;
          if (v26)
          {
            CFRetain(v26);
          }

          *a4 = v17;
          *(a4 + 24) = 0;
          v18 = 1;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 4;
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v26);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if ((v18 | 4) != 4)
      {
        break;
      }

      v13 += 16;
      if (v13 == v14)
      {
        goto LABEL_42;
      }
    }
  }

LABEL_54:
  v24 = *MEMORY[0x277D85DE8];
}

void sub_2726D78C0(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2726D78D8);
  }

  __clang_call_terminate(a1);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN10applesauce2CF9NumberRefEN2vp2vx9data_flow5StateISB_EEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISH_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSL_1EJS8_SB_SG_EEEOSV_EEEDcSN_DpT0_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(*a1 + 24) == 2)
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
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    *v4 = *a3;
    result = *(a3 + 8);
    *(v4 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(v4 + 24) = 2;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN10applesauce2CF9NumberRefEN2vp2vx9data_flow5StateISB_EEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISH_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSL_1EJS8_SB_SG_EEEOSV_EEEDcSN_DpT0_(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v4 = *result;
  if (*(*result + 24) == 1)
  {
    v5 = *a2;
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    v5 = 0;
    *v4 = *a3;
    *(v4 + 24) = 1;
  }

  *a3 = v5;
  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN10applesauce2CF9NumberRefEN2vp2vx9data_flow5StateISB_EEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISH_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSL_1EJS8_SB_SG_EEEOSV_EEEDcSN_DpT0_(uint64_t *result)
{
  v1 = *result;
  if (*(*result + 24))
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *(v1 + 24) = 0;
  }

  return result;
}

int *vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::NumberRef>(uint64_t a1, __n128 *a2, void *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<applesauce::CF::NumberRef>(void)::s_type_id;
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

CFNumberRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor61create_personal_audio_HLC_product_id_parameter_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EEclEOS10_OS11_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = vp::vx::data_flow::Value::view_storage(v4[2]);
  v11 = *v9;
  if (*v7 - 3) <= 1 && (v12 = *v10, v13 = *(a1 + 8), is_apple_made_bluetooth_product = vp::vx::get_output_device_is_apple_made_bluetooth_product(v13, v12), (is_apple_made_bluetooth_product & 0x100000000) != 0) && (is_apple_made_bluetooth_product)
  {
    port_owning_device_id = vp::vx::get_port_owning_device_id(v13, v12, 1869968496);
    v16 = port_owning_device_id;
    v29 = port_owning_device_id;
    v30 = BYTE4(port_owning_device_id);
    if ((port_owning_device_id & 0x100000000) != 0)
    {
      caulk::expected<unsigned int,int>::value(&v29);
      valuePtr = 0x676C6F6262616964;
      v32 = 0;
      v33 = 4;
      v34 = 0;
      v19 = (*(*v13 + 24))(v13, v16, &valuePtr, 0, 0, &v33, &v34);
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v34;
      }

      v17 = v20 | ((v19 == 0) << 32);
      valuePtr = v17;
      LOBYTE(v32) = 1;
      caulk::expected<CA::AudioSampleRateConverter,int>::value(&valuePtr);
    }

    else
    {
      v17 = port_owning_device_id;
    }

    v27 = v17;
    v28 = BYTE4(v17);
    if ((v17 & 0x100000000) == 0)
    {
      goto LABEL_20;
    }

    caulk::expected<unsigned int,int>::value(&v27);
    v29 = v17;
    v23 = CFNumberCreate(0, kCFNumberIntType, &v29);
    valuePtr = v23;
    if (!v23)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v24 = v23;
    caulk::__expected_detail::destroy<applesauce::CF::NumberRef,(void *)0>(0);
    v26 = v24;
    caulk::__expected_detail::destroy<applesauce::CF::NumberRef,(void *)0>(0);
  }

  else
  {
    if ((v11 & 0xFFFFFFFE) != 6)
    {
LABEL_20:
      v26 = 0;
      goto LABEL_21;
    }

    LODWORD(valuePtr) = 8210;
    v26 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!v26)
    {
      v18 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v18, "Could not construct");
    }
  }

LABEL_21:
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v21);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::NumberRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v26;
  return result;
}

void sub_2726D7DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void caulk::__expected_detail::destroy<applesauce::CF::NumberRef,(void *)0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor61create_personal_audio_HLC_product_id_parameter_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor61create_personal_audio_HLC_product_id_parameter_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor61create_personal_audio_HLC_product_id_parameter_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7__cloneEPNS0_6__baseIS15_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881C1458;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor61create_personal_audio_HLC_product_id_parameter_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EED0Ev(void *a1)
{
  *a1 = &unk_2881C1458;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor61create_personal_audio_HLC_product_id_parameter_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EED1Ev(void *a1)
{
  *a1 = &unk_2881C1458;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor52create_ref_port_sensitivity_parameter_override_stateEvE3__0JNS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_jEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = vp::vx::data_flow::Value::view_storage(v4[1]);
  v9 = *v7;
  v10 = *(a1 + 8);
  port_owning_device_id = vp::vx::get_port_owning_device_id(v10, *v8, 1869968496);
  valuePtr = *&port_owning_device_id;
  v27 = BYTE4(port_owning_device_id);
  if ((port_owning_device_id & 0x100000000) == 0)
  {
    v12 = port_owning_device_id;
LABEL_6:
    LODWORD(v25) = v12;
    goto LABEL_18;
  }

  caulk::expected<unsigned int,int>::value(&valuePtr);
  cf = 0x676C6F62646F7365;
  v29 = 0;
  v31 = 0;
  v30 = 4;
  v13 = (*(*v10 + 24))(v10, LODWORD(valuePtr), &cf, 0, 0, &v30, &v31);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v31;
  }

  v12 = v14 | ((v13 == 0) << 32);
  if ((v12 & 0x100000000) == 0)
  {
    goto LABEL_6;
  }

  v15 = 150.0;
  if (*&v14 <= 150.0)
  {
    v15 = *&v14;
  }

  if (*&v14 >= 50.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 50.0;
  }

  valuePtr = v16;
  v17 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  cf = v17;
  if (!v17)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v25 = v17;
  caulk::__expected_detail::destroy<applesauce::CF::NumberRef,(void *)0>(0);
LABEL_18:
  if ((v9 - 2) > 0xB)
  {
    v18 = 1121058816;
  }

  else
  {
    v18 = *&vp::Service_Interface<1668443507u>::k_service_type_id[4 * (v9 - 2) + 4];
  }

  valuePtr = *&v18;
  cf = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  if (!cf)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v23, "Could not construct");
  }

  p_cf = &v25;
  if ((v12 & 0x100000000) == 0)
  {
    p_cf = &cf;
  }

  v20 = *p_cf;
  *p_cf = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v12 & 0x100000000) != 0)
  {
    caulk::__expected_detail::destroy<applesauce::CF::NumberRef,(void *)0>(v25);
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v21);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::NumberRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v20;
  return result;
}

void sub_2726D8258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor52create_ref_port_sensitivity_parameter_override_stateEvE3__0JNS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_jEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor52create_ref_port_sensitivity_parameter_override_stateEvE3__0JNS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_jEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor52create_ref_port_sensitivity_parameter_override_stateEvE3__0JNS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_jEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881C10B0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor52create_ref_port_sensitivity_parameter_override_stateEvE3__0JNS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_jEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EED0Ev(void *a1)
{
  *a1 = &unk_2881C10B0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor52create_ref_port_sensitivity_parameter_override_stateEvE3__0JNS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_jEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EED1Ev(void *a1)
{
  *a1 = &unk_2881C10B0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void non-virtual thunk tovp::vx::Voice_Processor::~Voice_Processor(vp::vx::Voice_Processor *this)
{
  vp::vx::Voice_Processor::~Voice_Processor((this - 256));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::Voice_Processor::~Voice_Processor((this - 256));
}

{
  vp::vx::Voice_Processor::~Voice_Processor((this - 248));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::Voice_Processor::~Voice_Processor((this - 248));
}

{
  vp::vx::Voice_Processor::~Voice_Processor((this - 8));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::Voice_Processor::~Voice_Processor((this - 8));
}

void vp::vx::Voice_Processor::~Voice_Processor(vp::vx::Voice_Processor *this)
{
  v99 = *MEMORY[0x277D85DE8];
  *this = &unk_2881BEBF8;
  *(this + 1) = &unk_2881BECE8;
  *(this + 31) = &unk_2881BED18;
  *(this + 32) = &unk_2881BED50;
  if (*(this + 92))
  {
    _ZNSt3__18optionalIN5caulk9semaphoreEE7emplaceB8ne200100IJEvEERS2_DpOT_((this + 752));
    v2 = *(this + 93);
    *(this + 46) = 0u;
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    caulk::semaphore::timed_wait((this + 752), -1.0);
    __dmb(9u);
  }

  vp::rpb::Server::get_shared_instance(buf);
  if (*buf)
  {
    v89 = *buf;
    __p[0] = this;
    vp::vx::Voice_Processor::exception_guard(this, "disconnect RPB server", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::disconnect(vp::rpb::Server)::$_0>, __p);
    vp::objc::ID::~ID(&v89);
    v88 = *buf;
    __p[0] = this;
    vp::vx::Voice_Processor::exception_guard(this, "unregister RPB server listener", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::unregister_listener(vp::rpb::Server)::$_0>, __p);
    vp::objc::ID::~ID(&v88);
  }

  vp::objc::ID::~ID(buf);
  v3 = *(this + 190);
  if (v3)
  {
    v4 = (*(this + 189) + 16);
    do
    {
      if (*v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v4);
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  *(this + 190) = 0;
  v5 = *(this + 242);
  if (v5)
  {
    v6 = (*(this + 241) + 16);
    do
    {
      if (*v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v6);
      }

      v6 += 3;
      --v5;
    }

    while (v5);
  }

  *(this + 242) = 0;
  v7 = *(this + 300);
  *(this + 300) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 293);
  v9 = 0uLL;
  *(this + 146) = 0u;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    v9 = 0uLL;
  }

  v10 = *(this + 313);
  *(this + 156) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 293);
  *(this + 146) = 0u;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 323);
  *(this + 323) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 295);
  v14 = 0uLL;
  *(this + 147) = 0u;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    v14 = 0uLL;
  }

  v15 = *(this + 326);
  *(this + 2600) = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::vector<std::shared_ptr<vp::vx::io::Node_Delegate>>::clear[abi:ne200100](this + 65);
  log = vp::get_log(v16);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::Voice_Processor]", 23);
    v19 = BYTE7(v92);
    v20 = __p[1];
    v21 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      if (v19 >= 0)
      {
        v22 = v19;
      }

      else
      {
        v22 = v20;
      }

      v23 = __p[0];
      if ((SBYTE7(v92) & 0x80u) == 0)
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
      v97 = 2080;
      v98 = v24;
      _os_log_impl(&dword_2724B4000, v21, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
    }

    if (SBYTE7(v92) < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::unique_ptr<vp::vx::Orientation_Manager>::reset[abi:ne200100](this + 350, 0);
  std::unique_ptr<vp::vx::System_Status_Manager>::reset[abi:ne200100]((this + 2792), 0);
  v25 = *(this + 348);
  *(this + 348) = 0;
  if (v25)
  {
    std::default_delete<vp::vx::Control_Center_Manager>::operator()[abi:ne200100](v25);
  }

  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 347, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 346, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 345, 0);
  if (*(this + 2672) == 1)
  {
    vp::vx::IO_Personal_Audio_Command_Factory::~IO_Personal_Audio_Command_Factory((this + 2616));
  }

  v26 = *(this + 326);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = *(this + 323);
  *(this + 323) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(this + 313);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  vp::vx::data_flow::State<void>::~State(this + 618);
  vp::vx::data_flow::State<void>::~State(this + 610);
  vp::vx::data_flow::State<void>::~State(this + 602);
  v29 = *(this + 300);
  *(this + 300) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  vp::objc::ID::~ID(this + 299);
  vp::objc::ID::~ID(this + 298);
  vp::rpb::Connection::~Connection(this + 296);
  v30 = *(this + 295);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(this + 293);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(this + 242);
  if (v32)
  {
    v33 = (*(this + 241) + 16);
    do
    {
      if (*v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v33);
      }

      v33 += 3;
      --v32;
    }

    while (v32);
  }

  if (*(this + 243))
  {
    boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,vp::Allocator<void>,void>::deallocate(this + 240, *(this + 241));
  }

  v34 = *(this + 190);
  if (v34)
  {
    v35 = (*(this + 189) + 16);
    do
    {
      if (*v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v35);
      }

      v35 += 3;
      --v34;
    }

    while (v34);
  }

  if (*(this + 191))
  {
    boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>::deallocate(this + 188, *(this + 189));
  }

  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(this + 181);
  *(this + 185) = &unk_2881C6630;
  v36 = *(this + 187);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(this + 173);
  *(this + 177) = &unk_2881C6630;
  v37 = *(this + 179);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v38 = *(this + 168);
  if (v38)
  {
    do
    {
      v39 = *v38;
      v40 = v38[3];
      if (v40)
      {
        v38[4] = v40;
        std::allocator_traits<vp::Allocator<unsigned char>>::deallocate[abi:ne200100](v38[6], v40, v38[5] - v40);
      }

      std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::pair<std::vector<unsigned char,vp::Allocator<unsigned char>>,unsigned long>>,void *>>>::deallocate[abi:ne200100](*(this + 169), v38);
      v38 = v39;
    }

    while (v39);
  }

  v41 = *(this + 165);
  *(this + 165) = 0;
  if (v41)
  {
    std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::pair<std::vector<unsigned char,vp::Allocator<unsigned char>>,unsigned long>>,void *> *> *>>::deallocate[abi:ne200100](*(this + 167), v41, *(this + 166));
  }

  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(this + 158);
  *(this + 162) = &unk_2881C6630;
  v42 = *(this + 164);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(this + 150);
  *(this + 154) = &unk_2881C6630;
  v43 = *(this + 156);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  v44 = *(this + 145);
  if (v44)
  {
    do
    {
      v45 = *v44;
      std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<unsigned int,float>,void *>>>::deallocate[abi:ne200100](*(this + 146), v44);
      v44 = v45;
    }

    while (v45);
  }

  v46 = *(this + 142);
  *(this + 142) = 0;
  if (v46)
  {
    std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,float>,void *> *> *>>::deallocate[abi:ne200100](*(this + 144), v46, *(this + 143));
  }

  caulk::concurrent::shared_spin_lock::~shared_spin_lock((this + 1128));
  v47 = *(this + 130);
  v48 = *(this + 131);
  if (!v47 && v48)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v48)
  {
    v49 = &v47[2 * v48];
    do
    {
      if (!v47)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v50 = v47[1];
      v51 = boost::container::flat_map<vp::vx::Property_ID,vp::vx::Property,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,vp::vx::Property>>>::at(*(this + 122), *(this + 123), *v47);
      vp::vx::data_flow::State<void>::unregister_listener(v51, v50);
      v47 += 2;
    }

    while (v47 != v49);
  }

  v52 = *(this + 127);
  if (v52)
  {
    v53 = (*(this + 126) + 8);
    do
    {
      --v52;
      __p[0] = v53;
      std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__destroy_vector::operator()[abi:ne200100](__p);
      v53 += 40;
    }

    while (v52);
  }

  *(this + 127) = 0;
  std::__hash_table<vp::vx::Property_ID,std::hash<vp::vx::Property_ID>,std::equal_to<vp::vx::Property_ID>,vp::Allocator<vp::vx::Property_ID>>::~__hash_table(this + 133);
  v54 = *(this + 132);
  if (v54)
  {
    (*(**(this + 129) + 24))(*(this + 129), *(this + 130), 8 * v54, 4);
  }

  boost::container::vector<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>,void>::~vector(this + 125);
  boost::container::vector<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>>,void>::~vector(this + 121);
  std::__hash_table<std::__hash_value_type<unsigned int,std::optional<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<std::string>>>>::~__hash_table(this + 928);
  std::__hash_table<std::__hash_value_type<unsigned int,std::optional<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<std::string>>>>::~__hash_table(this + 888);
  v55 = *(this + 109);
  if (v55)
  {
    v56 = (*(this + 108) + 8);
    do
    {
      --v55;
      v56 = vp::vx::data_flow::State<void>::~State(v56) + 8;
    }

    while (v55);
  }

  v57 = *(this + 110);
  if (v57)
  {
    (*(**(this + 107) + 24))(*(this + 107), *(this + 108), 32 * v57, 8);
  }

  vp::vx::data_flow::State<void>::~State(this + 208);
  vp::vx::data_flow::State<void>::~State(this + 202);
  vp::vx::data_flow::State_Transaction::~State_Transaction((this + 784));
  if (*(this + 92))
  {
    *&v90 = 0;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    *__p = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    *buf = 134217984;
    *&buf[4] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(this + 768) == 1)
  {
    MEMORY[0x2743CB750](this + 752);
  }

  v58 = *(this + 93);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  v59 = *(this + 80);
  if (v59)
  {
    v60 = *(this + 79);
    do
    {
      if (*(v60 + 23) < 0)
      {
        operator delete(*v60);
      }

      v60 += 24;
      --v59;
    }

    while (v59);
  }

  if (*(this + 81))
  {
    boost::container::small_vector_allocator<std::__fs::filesystem::path,vp::Allocator<void>,void>::deallocate(this + 78, *(this + 79));
  }

  v61 = *(this + 77);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  if (*(this + 65))
  {
    std::vector<std::shared_ptr<vp::vx::io::Node_Delegate>>::clear[abi:ne200100](this + 65);
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::Component>>>::deallocate[abi:ne200100](*(this + 68), *(this + 65), (*(this + 67) - *(this + 65)) >> 4);
  }

  v62 = *(this + 62);
  if (v62)
  {
    *(this + 63) = v62;
    operator delete(v62);
  }

  v63 = *(this + 60);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  v64 = *(this + 58);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  vp::Context::~Context((this + 264));
  v65 = *(this + 4);
  if (v65)
  {
    dispatch_source_cancel(v65);
  }

  v66 = *(this + 11);
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
    v67 = *(this + 11);
    *&v90 = *(this + 10);
    *(&v90 + 1) = v67;
    if (v67)
    {
      atomic_fetch_add_explicit((v67 + 16), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v90 = 0uLL;
  }

  vp::vx::data_flow::State_Manager::set_delegate(*(this + 8), &v90);
  if (*(&v90 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v90 + 1));
  }

  std::recursive_mutex::~recursive_mutex((this + 184));
  v68 = *(this + 19);
  if (v68)
  {
    do
    {
      v69 = *v68;
      std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,void *>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef const,unsigned int>>(*(v68 + 16));
      std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,void *>>>::deallocate[abi:ne200100](*(this + 20), v68);
      v68 = v69;
    }

    while (v69);
  }

  v70 = *(this + 16);
  *(this + 16) = 0;
  if (v70)
  {
    std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,void *> *> *>>::deallocate[abi:ne200100](*(this + 18), v70, *(this + 17));
  }

  v71 = *(this + 15);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  v72 = *(this + 13);
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  v73 = *(this + 11);
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  v74 = vp::get_log(v73);
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    v75 = vp::get_log_context_info(__p, this + 64, "vp::vx::data_flow::State_Manager]", 32);
    v76 = BYTE7(v92);
    v77 = SBYTE7(v92);
    v78 = __p[1];
    v79 = vp::get_log(v75);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      if (v77 >= 0)
      {
        v80 = v76;
      }

      else
      {
        v80 = v78;
      }

      v81 = __p[0];
      if (v77 >= 0)
      {
        v81 = __p;
      }

      if (v80)
      {
        v82 = " ";
      }

      else
      {
        v82 = "";
      }

      *buf = 136315394;
      *&buf[4] = v81;
      v97 = 2080;
      v98 = v82;
      _os_log_impl(&dword_2724B4000, v79, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v77) = BYTE7(v92);
    }

    if ((v77 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v83 = *(this + 9);
  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  vp::vx::data_flow::State<void>::~State(this + 10);
  v84 = *(this + 4);
  if (v84)
  {
    dispatch_release(v84);
  }

  v85 = *(this + 3);
  if (v85)
  {
    dispatch_release(v85);
  }

  v86 = *(this + 2);
  if (v86)
  {
    dispatch_release(v86);
  }

  v87 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::Voice_Processor::~Voice_Processor(this);

  JUMPOUT(0x2743CBFA0);
}

void sub_2726D8FF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::vx::Voice_Processor::exception_guard(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v7[8] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7[0] = a4;
  result = a3(v7);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726D90A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(a1);
    log = vp::get_log(v20);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::vx::Voice_Processor]", 23);
      v23 = a19;
      v24 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (v23 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2726D906CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<vp::vx::Orientation_Manager>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (*(**v2 + 24))();
    if ((v3 & 1) == 0)
    {
      log = vp::get_log(v3);
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        log_context_info = vp::get_log_context_info(&__p, v2, "vp::vx::Orientation_Manager]", 27);
        v10 = v28;
        v11 = v28;
        v12 = v27;
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

          p_p = __p;
          if (v11 >= 0)
          {
            p_p = &__p;
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
          v30 = p_p;
          v31 = 2080;
          v32 = v16;
          _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_ERROR, "%s%sfailed to unregister device orientation listener", buf, 0x16u);
          LOBYTE(v11) = v28;
        }

        if ((v11 & 0x80) != 0)
        {
          operator delete(__p);
        }
      }
    }

    v4 = (*(**v2 + 40))();
    if ((v4 & 1) == 0)
    {
      v17 = vp::get_log(v4);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = vp::get_log_context_info(&__p, v2, "vp::vx::Orientation_Manager]", 27);
        v19 = v28;
        v20 = v28;
        v21 = v27;
        v22 = vp::get_log(v18);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          if (v20 >= 0)
          {
            v23 = v19;
          }

          else
          {
            v23 = v21;
          }

          v24 = __p;
          if (v20 >= 0)
          {
            v24 = &__p;
          }

          if (v23)
          {
            v25 = " ";
          }

          else
          {
            v25 = "";
          }

          *buf = 136315394;
          v30 = v24;
          v31 = 2080;
          v32 = v25;
          _os_log_impl(&dword_2724B4000, v22, OS_LOG_TYPE_ERROR, "%s%sfailed to unregister UI orientation listener", buf, 0x16u);
          LOBYTE(v20) = v28;
        }

        if ((v20 & 0x80) != 0)
        {
          operator delete(__p);
        }
      }
    }

    vp::vx::data_flow::State<void>::~State((v2 + 40));
    vp::vx::data_flow::State<void>::~State((v2 + 16));
    v5 = *(v2 + 8);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x2743CBFA0);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

vp *std::unique_ptr<vp::vx::System_Status_Manager>::reset[abi:ne200100](vp *result, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *result;
  *result = a2;
  if (v2)
  {
    log = vp::get_log(result);
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      log_context_info = vp::get_log_context_info(__p, v2, "vp::vx::System_Status_Manager]", 29);
      v5 = v16;
      v6 = v16;
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
        v18 = v10;
        v19 = 2080;
        v20 = v11;
        _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
        LOBYTE(v6) = v16;
      }

      if ((v6 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }

    v12 = *(v2 + 8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v13 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x2743CBFA0);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void std::default_delete<vp::vx::Control_Center_Manager>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::optional<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<std::string>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::optional<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<std::string>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void *boost::container::small_vector_allocator<std::__fs::filesystem::path,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::optional<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<std::string>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = v1;
      v1 = *v1;
      if (*(v2 + 48) == 1 && *(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
    }

    while (v1);
  }
}

void *boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void *boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void **caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::disconnect(vp::rpb::Server)::$_0>(vp *a1)
{
  v77 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, v1, "vp::vx::Voice_Processor]", 23);
    v4 = HIBYTE(v66);
    v5 = SHIBYTE(v66);
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
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
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%s%sdisconnect RPB", buf, 0x16u);
      LOBYTE(v5) = HIBYTE(v66);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v62 = *(v1 + 2376);
  if (v62)
  {
    v11 = *(v1 + 2400);
    cf = CFStringCreateWithBytes(0, "Uplink", 6, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    vp::rpb::Host::find_item_by_name(&v61, v62, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v12 = *(v1 + 2584);
    v58 = CFStringCreateWithBytes(0, "Downlink", 8, 0x8000100u, 0);
    if (!v58)
    {
      v53 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v53, "Could not construct");
    }

    vp::rpb::Host::find_item_by_name(&v59, v62, &v58);
    v54 = v1;
    if (v58)
    {
      CFRelease(v58);
    }

    *buf = v61;
    v13 = 0;
    *&buf[8] = v59;
    v75 = 0x100000000;
    v55 = v12;
    v56 = v11;
    while (1)
    {
      v14 = *&buf[v13 - 8];
      if (v14)
      {
        v15 = v12;
      }

      else
      {
        v15 = v11;
      }

      if (v15)
      {
        v16 = (v14 ? &buf[8] : buf);
        v17 = *v16;
        if (v17)
        {
          v57 = v17;
          caulk::autorelease_pool::autorelease_pool(v73);
          v18 = *(v15 + 64);
          if (*(v15 + 72) != v18)
          {
            v19 = 0;
            v20 = 1;
            do
            {
              v21 = v18 + 304 * v19;
              v22 = *v21;
              v23 = *(v21 + 8);
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v24 = v22 + *(*v22 - 24);
              v25 = *(v24 + 1);
              v26 = *(v24 + 2);
              if (v26)
              {
                atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v27 = *(v25 + 23);
              if ((v27 & 0x80u) == 0)
              {
                v28 = v25;
              }

              else
              {
                v28 = *v25;
              }

              if (v28)
              {
                v29 = *(v25 + 8);
                if ((v27 & 0x80u) == 0)
                {
                  v30 = v27;
                }

                else
                {
                  v30 = v29;
                }

                v31 = CFStringCreateWithBytes(0, v28, v30, 0x8000100u, 0);
                v72 = v31;
                if (!v31)
                {
                  v50 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v50, "Could not construct");
                }

                if (!v26)
                {
                  goto LABEL_46;
                }
              }

              else
              {
                v31 = 0;
                v72 = 0;
                if (!v26)
                {
                  goto LABEL_46;
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
LABEL_46:
              if (v23)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v23);
              }

              vp::rpb::Item::get_sub_host(__p, v57);
              if (v31)
              {
                CFRetain(v31);
              }

              v70 = v31;
              vp::rpb::Host::find_item_by_name(&v71, __p[0], &v70);
              if (v31)
              {
                CFRelease(v31);
              }

              vp::objc::ID::~ID(__p);
              if (v71)
              {
                v32 = *(v15 + 64);
                v64 = v71;
                v33 = *(v32 + 304 * v19);
                v74 = v64;
                (*(*v33 + 104))(__p, v33, &v74);
                vp::objc::ID::~ID(&v74);
                if ((v69 & 1) == 0 && SHIBYTE(v67) < 0)
                {
                  (*(*v68 + 24))(v68, v66, v67 & 0x7FFFFFFFFFFFFFFFLL, 1);
                }

                vp::objc::ID::~ID(&v64);
              }

              vp::objc::ID::~ID(&v71);
              if (v31)
              {
                CFRelease(v31);
              }

              v19 = v20;
              v18 = *(v15 + 64);
            }

            while (0x86BCA1AF286BCA1BLL * ((*(v15 + 72) - v18) >> 4) > v20++);
          }

          v35 = *(v15 + 192);
          if (*(v15 + 200) != v35)
          {
            v36 = 0;
            v37 = 1;
            do
            {
              v38 = 16 * v36;
              v39 = *(v35 + 16 * v36) + *(**(v35 + 16 * v36) - 24);
              v40 = *(v39 + 8);
              v41 = *(v39 + 16);
              if (v41)
              {
                atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v42 = *(v40 + 23);
              if ((v42 & 0x80u) == 0)
              {
                v43 = v40;
              }

              else
              {
                v43 = *v40;
              }

              if (v43)
              {
                v44 = *(v40 + 8);
                if ((v42 & 0x80u) == 0)
                {
                  v45 = v42;
                }

                else
                {
                  v45 = v44;
                }

                v46 = CFStringCreateWithBytes(0, v43, v45, 0x8000100u, 0);
                v74 = v46;
                if (!v46)
                {
                  v51 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v51, "Could not construct");
                }

                if (!v41)
                {
                  goto LABEL_77;
                }
              }

              else
              {
                v46 = 0;
                v74 = 0;
                if (!v41)
                {
                  goto LABEL_77;
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v41);
LABEL_77:
              vp::rpb::Item::get_sub_host(__p, v57);
              if (v46)
              {
                CFRetain(v46);
              }

              v71 = v46;
              vp::rpb::Host::find_wire_by_name(&v72, __p[0], &v71);
              if (v46)
              {
                CFRelease(v46);
              }

              vp::objc::ID::~ID(__p);
              if (v72)
              {
                v47 = *(*(v15 + 192) + v38);
                v63 = v72;
                (*(*v47 + 40))(__p, v47, &v63);
                if ((v69 & 1) == 0 && SHIBYTE(v67) < 0)
                {
                  (*(*v68 + 24))(v68, v66, v67 & 0x7FFFFFFFFFFFFFFFLL, 1);
                }

                vp::objc::ID::~ID(&v63);
              }

              vp::objc::ID::~ID(&v72);
              if (v46)
              {
                CFRelease(v46);
              }

              v36 = v37;
              v35 = *(v15 + 192);
              ++v37;
            }

            while (v36 < (*(v15 + 200) - v35) >> 4);
          }

          vp::rpb::Connection::operator=((v15 + 256));
          caulk::autorelease_pool::~autorelease_pool(v73);
          vp::objc::ID::~ID(&v57);
          v12 = v55;
          v11 = v56;
        }
      }

      v13 += 4;
      if (v13 == 8)
      {
        vp::objc::ID::~ID(&buf[8]);
        vp::objc::ID::~ID(buf);
        vp::objc::ID::~ID(&v59);
        vp::objc::ID::~ID(&v61);
        v1 = v54;
        break;
      }
    }
  }

  vp::objc::ID::~ID(&v62);
  vp::rpb::Connection::operator=((v1 + 2368));
  result = vp::objc::ID::operator=((v1 + 2384));
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726D9FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, id);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  vp::objc::ID::~ID(va1);
  vp::objc::ID::~ID(va2);
  _Unwind_Resume(a1);
}

double vp::vx::Voice_Processor::observe_downlink_state_change(uint64_t a1, unsigned int a2, __n128 *a3)
{
  v6 = a2;
  v7 = &v6;
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,std::optional<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<std::string>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 928), a2);
  *&result = std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>((v4 + 3), a3).n128_u64[0];
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::optional<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<std::string>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
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
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

__n128 std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::optional<std::string>>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 48) == 1 && *(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

double vp::vx::Voice_Processor::observe_uplink_state_change(uint64_t a1, unsigned int a2, __n128 *a3)
{
  v6 = a2;
  v7 = &v6;
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,std::optional<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<std::string>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 888), a2);
  *&result = std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>((v4 + 3), a3).n128_u64[0];
  return result;
}

void vp::vx::Voice_Processor::observe_global_state_change(uint64_t a1, uint64_t a2, __int128 *a3)
{
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, a3);
  (*(*a1 + 184))(a1, a2, &__p);
  if (v9 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v6, a3);
  (*(*a1 + 192))(a1, a2, &v6);
  if (v7 == 1 && SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

int *vp::vx::Voice_Processor::find_user_defaults_state@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X8>)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v4 = *(a1 + 864);
  v20 = v4;
  v5 = *(a1 + 872);
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

  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>*,true>,vp::vx::User_Defaults_Key>(&v19, &v20, v4 + 32 * v5, a2);
  v10 = *(a1 + 864);
  v11 = *(a1 + 872);
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

  v13 = (v10 + 32 * v11);
  v14 = v19;
  if (v19 != v13)
  {
    if (!v19)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*v19 > a2)
    {
      v14 = v13;
    }
  }

  if (v14 == v13)
  {
    boost::container::throw_length_error("flat_map::at key not found", v9);
  }

  vp::vx::data_flow::State<void>::~State(&v16);
  vp::vx::data_flow::State<void>::State(&v16, v14 + 2);
  vp::vx::data_flow::State<void>::State(a3, &v16);
  return vp::vx::data_flow::State<void>::~State(&v16);
}

void sub_2726DA930(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726DA88CLL);
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>*,true>,vp::vx::User_Defaults_Key>(void *result, void *a2, uint64_t a3, int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = (a3 - v4) >> 5;
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
      if (*v7 < a4)
      {
        v4 = v7 + 8;
        *a2 = v7 + 8;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

int *vp::vx::Voice_Processor::find_property_state@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int *a3@<X8>)
{
  v6 = 0;
  v7 = 0uLL;
  v11 = a2;
  v4 = boost::container::flat_map<vp::vx::Property_ID,vp::vx::Property,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,vp::vx::Property>>>::at(a1 + 968, &v11);
  vp::vx::data_flow::State<void>::State(&v8, v4);
  v10 = 1;
  vp::vx::data_flow::State<void>::~State(&v6);
  v6 = v8;
  v7 = v9;
  v9 = 0uLL;
  if (v10 == 1)
  {
    vp::vx::data_flow::State<void>::~State(&v8);
  }

  vp::vx::data_flow::State<void>::State(a3, &v6);
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_2726DAAA4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_2881C5FF8;
  exception[2] = 2;
}

void sub_2726DAB04(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    vp::vx::data_flow::State<void>::~State(&a12);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726DAA80);
}

void caulk::bad_expected_access<vp::vx::Error_Code>::~bad_expected_access(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x2743CBFA0);
}

unsigned int *vp::vx::Voice_Processor::reset_dsp@<X0>(unsigned int *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v78 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = 9;
LABEL_3:
    *a3 = v4;
    *(a3 + 4) = 0;
    goto LABEL_13;
  }

  v5 = result;
  v60 = (result + 282);
  v6 = atomic_load(result + 282);
  if (v6 > 0x7FFFFFFE)
  {
LABEL_8:
    v4 = 8;
    goto LABEL_3;
  }

  v7 = v6;
  while (1)
  {
    atomic_compare_exchange_strong(result + 282, &v7, v6 + 1);
    if (v7 == v6)
    {
      break;
    }

    v6 = v7;
    if (v7 >= 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  v61 = 1;
  v8 = *(result + 323);
  if (v8)
  {
    *(result + 324) &= 0xFFFFFFFFFFFFFF00;
    vp::vx::io::Graph::reset(&v52, v8);
    v10 = v59;
    if (v59)
    {
      goto LABEL_11;
    }

    v12 = SHIBYTE(v57);
    if (v57 >= 0)
    {
      v13 = HIBYTE(v57);
    }

    else
    {
      v13 = v56[1];
    }

    log = vp::get_log(v9);
    v15 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (v15)
      {
        v46 = v10;
        log_context_info = vp::get_log_context_info(&v49, v5, "vp::vx::Voice_Processor]", 23);
        v17 = v51;
        if ((v51 & 0x80u) == 0)
        {
          v18 = v51;
        }

        else
        {
          v18 = v50;
        }

        v19 = vp::get_log(log_context_info);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = v49;
          v21 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v52);
          std::string::basic_string<std::string_view,0>(__p, v21, v22);
          if (v17 >= 0)
          {
            v24 = &v49;
          }

          else
          {
            v24 = v20;
          }

          if (v18)
          {
            v25 = " ";
          }

          else
          {
            v25 = "";
          }

          if (v48 >= 0)
          {
            v26 = __p;
          }

          else
          {
            v26 = __p[0];
          }

          v27 = v53;
          v28 = v54;
          log_source_file_path = vp::get_log_source_file_path(v55, v23);
          v30 = v56;
          *buf = 136316930;
          if (v12 < 0)
          {
            v30 = v56[0];
          }

          v63 = v24;
          v64 = 2080;
          v65 = v25;
          v66 = 2080;
          v67 = "reset downlink DSP";
          v68 = 2080;
          v69 = v26;
          v70 = 1024;
          v71 = v27;
          v72 = 1024;
          v73 = v28;
          v74 = 2080;
          v75 = log_source_file_path;
          v76 = 2080;
          v77 = v30;
          _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_ERROR, "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s", buf, 0x4Au);
          if (v48 < 0)
          {
            operator delete(__p[0]);
          }

          LOBYTE(v17) = v51;
        }

        if ((v17 & 0x80) != 0)
        {
          operator delete(v49);
        }

        v31 = v59;
        v10 = v46;
        goto LABEL_61;
      }
    }

    else if (v15)
    {
      v32 = vp::get_log_context_info(&v49, v5, "vp::vx::Voice_Processor]", 23);
      v33 = v51;
      if ((v51 & 0x80u) == 0)
      {
        v34 = v51;
      }

      else
      {
        v34 = v50;
      }

      v35 = vp::get_log(v32);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = v49;
        v37 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v52);
        std::string::basic_string<std::string_view,0>(__p, v37, v38);
        if (v33 >= 0)
        {
          v40 = &v49;
        }

        else
        {
          v40 = v36;
        }

        if (v34)
        {
          v41 = " ";
        }

        else
        {
          v41 = "";
        }

        if (v48 >= 0)
        {
          v42 = __p;
        }

        else
        {
          v42 = __p[0];
        }

        v43 = v53;
        v44 = v54;
        v45 = vp::get_log_source_file_path(v55, v39);
        *buf = 136316674;
        v63 = v40;
        v64 = 2080;
        v65 = v41;
        v66 = 2080;
        v67 = "reset downlink DSP";
        v68 = 2080;
        v69 = v42;
        v70 = 1024;
        v71 = v43;
        v72 = 1024;
        v73 = v44;
        v74 = 2080;
        v75 = v45;
        _os_log_impl(&dword_2724B4000, v35, OS_LOG_TYPE_ERROR, "%s%sfailed to %s due to '%s' error at line %u column %u in %s", buf, 0x40u);
        if (v48 < 0)
        {
          operator delete(__p[0]);
        }

        LOBYTE(v33) = v51;
      }

      if ((v33 & 0x80) != 0)
      {
        operator delete(v49);
      }
    }

    v31 = 0;
LABEL_61:
    *a3 = 5;
    *(a3 + 4) = 0;
    if ((v31 & 1) == 0 && SHIBYTE(v57) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v58, v56[0], v57 & 0x7FFFFFFFFFFFFFFFLL);
    }

    goto LABEL_11;
  }

  v10 = 0;
  *a3 = 8;
  *(a3 + 4) = 0;
LABEL_11:
  result = caulk::concurrent::shared_spin_lock::unlock_shared(v60);
  if (v10)
  {
    *a3 = 0;
    *(a3 + 4) = 1;
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v78 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = 9;
LABEL_3:
    *a3 = v4;
    *(a3 + 4) = 0;
    goto LABEL_13;
  }

  v5 = result;
  v60 = (result + 282);
  v6 = atomic_load(result + 282);
  if (v6 > 0x7FFFFFFE)
  {
LABEL_8:
    v4 = 8;
    goto LABEL_3;
  }

  v7 = v6;
  while (1)
  {
    atomic_compare_exchange_strong(result + 282, &v7, v6 + 1);
    if (v7 == v6)
    {
      break;
    }

    v6 = v7;
    if (v7 >= 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  v61 = 1;
  v8 = *(result + 300);
  if (v8)
  {
    *(result + 2433) = 0;
    vp::vx::io::Graph::reset(&v52, v8);
    v10 = v59;
    if (v59)
    {
      goto LABEL_11;
    }

    v12 = SHIBYTE(v57);
    if (v57 >= 0)
    {
      v13 = HIBYTE(v57);
    }

    else
    {
      v13 = v56[1];
    }

    log = vp::get_log(v9);
    v15 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (v15)
      {
        v46 = v10;
        log_context_info = vp::get_log_context_info(&v49, v5, "vp::vx::Voice_Processor]", 23);
        v17 = v51;
        if ((v51 & 0x80u) == 0)
        {
          v18 = v51;
        }

        else
        {
          v18 = v50;
        }

        v19 = vp::get_log(log_context_info);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = v49;
          v21 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v52);
          std::string::basic_string<std::string_view,0>(__p, v21, v22);
          if (v17 >= 0)
          {
            v24 = &v49;
          }

          else
          {
            v24 = v20;
          }

          if (v18)
          {
            v25 = " ";
          }

          else
          {
            v25 = "";
          }

          if (v48 >= 0)
          {
            v26 = __p;
          }

          else
          {
            v26 = __p[0];
          }

          v27 = v53;
          v28 = v54;
          log_source_file_path = vp::get_log_source_file_path(v55, v23);
          v30 = v56;
          *buf = 136316930;
          if (v12 < 0)
          {
            v30 = v56[0];
          }

          v63 = v24;
          v64 = 2080;
          v65 = v25;
          v66 = 2080;
          v67 = "reset uplink DSP";
          v68 = 2080;
          v69 = v26;
          v70 = 1024;
          v71 = v27;
          v72 = 1024;
          v73 = v28;
          v74 = 2080;
          v75 = log_source_file_path;
          v76 = 2080;
          v77 = v30;
          _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_ERROR, "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s", buf, 0x4Au);
          if (v48 < 0)
          {
            operator delete(__p[0]);
          }

          LOBYTE(v17) = v51;
        }

        if ((v17 & 0x80) != 0)
        {
          operator delete(v49);
        }

        v31 = v59;
        v10 = v46;
        goto LABEL_61;
      }
    }

    else if (v15)
    {
      v32 = vp::get_log_context_info(&v49, v5, "vp::vx::Voice_Processor]", 23);
      v33 = v51;
      if ((v51 & 0x80u) == 0)
      {
        v34 = v51;
      }

      else
      {
        v34 = v50;
      }

      v35 = vp::get_log(v32);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = v49;
        v37 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v52);
        std::string::basic_string<std::string_view,0>(__p, v37, v38);
        if (v33 >= 0)
        {
          v40 = &v49;
        }

        else
        {
          v40 = v36;
        }

        if (v34)
        {
          v41 = " ";
        }

        else
        {
          v41 = "";
        }

        if (v48 >= 0)
        {
          v42 = __p;
        }

        else
        {
          v42 = __p[0];
        }

        v43 = v53;
        v44 = v54;
        v45 = vp::get_log_source_file_path(v55, v39);
        *buf = 136316674;
        v63 = v40;
        v64 = 2080;
        v65 = v41;
        v66 = 2080;
        v67 = "reset uplink DSP";
        v68 = 2080;
        v69 = v42;
        v70 = 1024;
        v71 = v43;
        v72 = 1024;
        v73 = v44;
        v74 = 2080;
        v75 = v45;
        _os_log_impl(&dword_2724B4000, v35, OS_LOG_TYPE_ERROR, "%s%sfailed to %s due to '%s' error at line %u column %u in %s", buf, 0x40u);
        if (v48 < 0)
        {
          operator delete(__p[0]);
        }

        LOBYTE(v33) = v51;
      }

      if ((v33 & 0x80) != 0)
      {
        operator delete(v49);
      }
    }

    v31 = 0;
LABEL_61:
    *a3 = 5;
    *(a3 + 4) = 0;
    if ((v31 & 1) == 0 && SHIBYTE(v57) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v58, v56[0], v57 & 0x7FFFFFFFFFFFFFFFLL);
    }

    goto LABEL_11;
  }

  v10 = 0;
  *a3 = 8;
  *(a3 + 4) = 0;
LABEL_11:
  result = caulk::concurrent::shared_spin_lock::unlock_shared(v60);
  if (v10)
  {
    *a3 = 0;
    *(a3 + 4) = 1;
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726DB000(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(__pa, a3);
  va_start(va, a3);
  v14 = va_arg(__pa, void);
  v16 = va_arg(__pa, void);
  v17 = va_arg(__pa, void);
  v18 = va_arg(__pa, void *);
  v19 = va_arg(__pa, void);
  v20 = va_arg(__pa, void);
  va_copy(va2, __pa);
  __p = va_arg(va2, void *);
  v23 = va_arg(va2, void);
  v24 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  v26 = va_arg(va2, void);
  v27 = va_arg(va2, void);
  v28 = va_arg(va2, void);
  if (a2)
  {
    if (v7 < 0)
    {
      operator delete(v6);
    }

    if (v5 < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v27, v24, v26 & 0x7FFFFFFFFFFFFFFFLL);
    }

    std::shared_lock<caulk::concurrent::shared_spin_lock>::~shared_lock[abi:ne200100](va2);
    v9 = __cxa_begin_catch(a1);
    log = vp::get_log(v9);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(__pa, v4, "vp::vx::Voice_Processor]", 23);
      v12 = HIBYTE(v24);
      v13 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(va);
      }

      if (v12 < 0)
      {
        operator delete(__p);
      }
    }

    *v3 = 11;
    *(v3 + 4) = 0;
    __cxa_end_catch();
    JUMPOUT(0x2726DACA0);
  }

  _Unwind_Resume(a1);
}

char *vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(int a1)
{
  v1 = vp::detail::reflect_value_name<(vp::vx::io::Error_Code)0,128ul>(a1);
  if (v2)
  {
    v3 = &v1[v2];
    for (i = v2; i; --i)
    {
      v5 = *--v3;
      if (v5 == 58)
      {
        v6 = v3 - v1 + 1;
        if (v2 < v6)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v1[v6];
      }
    }
  }

  v6 = 0;
  return &v1[v6];
}

uint64_t std::shared_lock<caulk::concurrent::shared_spin_lock>::~shared_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    caulk::concurrent::shared_spin_lock::unlock_shared(*a1);
  }

  return a1;
}

char *vp::detail::reflect_value_name<(vp::vx::io::Error_Code)0,128ul>(int a1)
{
  result = "vp::vx::io::Error_Code::Unknown]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::io::Error_Code::Bad_Allocation]";
      break;
    case 2:
      result = "vp::vx::io::Error_Code::Bad_Frame_Count]";
      break;
    case 3:
      result = "vp::vx::io::Error_Code::Bad_Data]";
      break;
    case 4:
      result = "vp::vx::io::Error_Code::Bad_Direction]";
      break;
    case 5:
      result = "vp::vx::io::Error_Code::Bad_Sample_Time]";
      break;
    case 6:
      result = "vp::vx::io::Error_Code::Bad_Node_ID]";
      break;
    case 7:
      result = "vp::vx::io::Error_Code::Bad_Port_ID]";
      break;
    case 8:
      result = "vp::vx::io::Error_Code::Bad_Wire_ID]";
      break;
    case 9:
      result = "vp::vx::io::Error_Code::Bad_Terminal_Index]";
      break;
    case 10:
      result = "vp::vx::io::Error_Code::Bad_Parameter_ID]";
      break;
    case 11:
      result = "vp::vx::io::Error_Code::Bad_Property_ID]";
      break;
    case 12:
      result = "vp::vx::io::Error_Code::Operation_Not_Implemented]";
      break;
    case 13:
      result = "vp::vx::io::Error_Code::Operation_Not_Supported]";
      break;
    case 14:
      result = "(vp::vx::io::Error_Code)14]";
      break;
    case 15:
      result = "(vp::vx::io::Error_Code)15]";
      break;
    case 16:
      result = "(vp::vx::io::Error_Code)16]";
      break;
    case 17:
      result = "(vp::vx::io::Error_Code)17]";
      break;
    case 18:
      result = "(vp::vx::io::Error_Code)18]";
      break;
    case 19:
      result = "(vp::vx::io::Error_Code)19]";
      break;
    case 20:
      result = "(vp::vx::io::Error_Code)20]";
      break;
    case 21:
      result = "(vp::vx::io::Error_Code)21]";
      break;
    case 22:
      result = "(vp::vx::io::Error_Code)22]";
      break;
    case 23:
      result = "(vp::vx::io::Error_Code)23]";
      break;
    case 24:
      result = "(vp::vx::io::Error_Code)24]";
      break;
    case 25:
      result = "(vp::vx::io::Error_Code)25]";
      break;
    case 26:
      result = "(vp::vx::io::Error_Code)26]";
      break;
    case 27:
      result = "(vp::vx::io::Error_Code)27]";
      break;
    case 28:
      result = "(vp::vx::io::Error_Code)28]";
      break;
    case 29:
      result = "(vp::vx::io::Error_Code)29]";
      break;
    case 30:
      result = "(vp::vx::io::Error_Code)30]";
      break;
    case 31:
      result = "(vp::vx::io::Error_Code)31]";
      break;
    case 32:
      result = "(vp::vx::io::Error_Code)32]";
      break;
    case 33:
      result = "(vp::vx::io::Error_Code)33]";
      break;
    case 34:
      result = "(vp::vx::io::Error_Code)34]";
      break;
    case 35:
      result = "(vp::vx::io::Error_Code)35]";
      break;
    case 36:
      result = "(vp::vx::io::Error_Code)36]";
      break;
    case 37:
      result = "(vp::vx::io::Error_Code)37]";
      break;
    case 38:
      result = "(vp::vx::io::Error_Code)38]";
      break;
    case 39:
      result = "(vp::vx::io::Error_Code)39]";
      break;
    case 40:
      result = "(vp::vx::io::Error_Code)40]";
      break;
    case 41:
      result = "(vp::vx::io::Error_Code)41]";
      break;
    case 42:
      result = "(vp::vx::io::Error_Code)42]";
      break;
    case 43:
      result = "(vp::vx::io::Error_Code)43]";
      break;
    case 44:
      result = "(vp::vx::io::Error_Code)44]";
      break;
    case 45:
      result = "(vp::vx::io::Error_Code)45]";
      break;
    case 46:
      result = "(vp::vx::io::Error_Code)46]";
      break;
    case 47:
      result = "(vp::vx::io::Error_Code)47]";
      break;
    case 48:
      result = "(vp::vx::io::Error_Code)48]";
      break;
    case 49:
      result = "(vp::vx::io::Error_Code)49]";
      break;
    case 50:
      result = "(vp::vx::io::Error_Code)50]";
      break;
    case 51:
      result = "(vp::vx::io::Error_Code)51]";
      break;
    case 52:
      result = "(vp::vx::io::Error_Code)52]";
      break;
    case 53:
      result = "(vp::vx::io::Error_Code)53]";
      break;
    case 54:
      result = "(vp::vx::io::Error_Code)54]";
      break;
    case 55:
      result = "(vp::vx::io::Error_Code)55]";
      break;
    case 56:
      result = "(vp::vx::io::Error_Code)56]";
      break;
    case 57:
      result = "(vp::vx::io::Error_Code)57]";
      break;
    case 58:
      result = "(vp::vx::io::Error_Code)58]";
      break;
    case 59:
      result = "(vp::vx::io::Error_Code)59]";
      break;
    case 60:
      result = "(vp::vx::io::Error_Code)60]";
      break;
    case 61:
      result = "(vp::vx::io::Error_Code)61]";
      break;
    case 62:
      result = "(vp::vx::io::Error_Code)62]";
      break;
    case 63:
      result = "(vp::vx::io::Error_Code)63]";
      break;
    case 64:
      result = "(vp::vx::io::Error_Code)64]";
      break;
    case 65:
      result = "(vp::vx::io::Error_Code)65]";
      break;
    case 66:
      result = "(vp::vx::io::Error_Code)66]";
      break;
    case 67:
      result = "(vp::vx::io::Error_Code)67]";
      break;
    case 68:
      result = "(vp::vx::io::Error_Code)68]";
      break;
    case 69:
      result = "(vp::vx::io::Error_Code)69]";
      break;
    case 70:
      result = "(vp::vx::io::Error_Code)70]";
      break;
    case 71:
      result = "(vp::vx::io::Error_Code)71]";
      break;
    case 72:
      result = "(vp::vx::io::Error_Code)72]";
      break;
    case 73:
      result = "(vp::vx::io::Error_Code)73]";
      break;
    case 74:
      result = "(vp::vx::io::Error_Code)74]";
      break;
    case 75:
      result = "(vp::vx::io::Error_Code)75]";
      break;
    case 76:
      result = "(vp::vx::io::Error_Code)76]";
      break;
    case 77:
      result = "(vp::vx::io::Error_Code)77]";
      break;
    case 78:
      result = "(vp::vx::io::Error_Code)78]";
      break;
    case 79:
      result = "(vp::vx::io::Error_Code)79]";
      break;
    case 80:
      result = "(vp::vx::io::Error_Code)80]";
      break;
    case 81:
      result = "(vp::vx::io::Error_Code)81]";
      break;
    case 82:
      result = "(vp::vx::io::Error_Code)82]";
      break;
    case 83:
      result = "(vp::vx::io::Error_Code)83]";
      break;
    case 84:
      result = "(vp::vx::io::Error_Code)84]";
      break;
    case 85:
      result = "(vp::vx::io::Error_Code)85]";
      break;
    case 86:
      result = "(vp::vx::io::Error_Code)86]";
      break;
    case 87:
      result = "(vp::vx::io::Error_Code)87]";
      break;
    case 88:
      result = "(vp::vx::io::Error_Code)88]";
      break;
    case 89:
      result = "(vp::vx::io::Error_Code)89]";
      break;
    case 90:
      result = "(vp::vx::io::Error_Code)90]";
      break;
    case 91:
      result = "(vp::vx::io::Error_Code)91]";
      break;
    case 92:
      result = "(vp::vx::io::Error_Code)92]";
      break;
    case 93:
      result = "(vp::vx::io::Error_Code)93]";
      break;
    case 94:
      result = "(vp::vx::io::Error_Code)94]";
      break;
    case 95:
      result = "(vp::vx::io::Error_Code)95]";
      break;
    case 96:
      result = "(vp::vx::io::Error_Code)96]";
      break;
    case 97:
      result = "(vp::vx::io::Error_Code)97]";
      break;
    case 98:
      result = "(vp::vx::io::Error_Code)98]";
      break;
    case 99:
      result = "(vp::vx::io::Error_Code)99]";
      break;
    case 100:
      result = "(vp::vx::io::Error_Code)100]";
      break;
    case 101:
      result = "(vp::vx::io::Error_Code)101]";
      break;
    case 102:
      result = "(vp::vx::io::Error_Code)102]";
      break;
    case 103:
      result = "(vp::vx::io::Error_Code)103]";
      break;
    case 104:
      result = "(vp::vx::io::Error_Code)104]";
      break;
    case 105:
      result = "(vp::vx::io::Error_Code)105]";
      break;
    case 106:
      result = "(vp::vx::io::Error_Code)106]";
      break;
    case 107:
      result = "(vp::vx::io::Error_Code)107]";
      break;
    case 108:
      result = "(vp::vx::io::Error_Code)108]";
      break;
    case 109:
      result = "(vp::vx::io::Error_Code)109]";
      break;
    case 110:
      result = "(vp::vx::io::Error_Code)110]";
      break;
    case 111:
      result = "(vp::vx::io::Error_Code)111]";
      break;
    case 112:
      result = "(vp::vx::io::Error_Code)112]";
      break;
    case 113:
      result = "(vp::vx::io::Error_Code)113]";
      break;
    case 114:
      result = "(vp::vx::io::Error_Code)114]";
      break;
    case 115:
      result = "(vp::vx::io::Error_Code)115]";
      break;
    case 116:
      result = "(vp::vx::io::Error_Code)116]";
      break;
    case 117:
      result = "(vp::vx::io::Error_Code)117]";
      break;
    case 118:
      result = "(vp::vx::io::Error_Code)118]";
      break;
    case 119:
      result = "(vp::vx::io::Error_Code)119]";
      break;
    case 120:
      result = "(vp::vx::io::Error_Code)120]";
      break;
    case 121:
      result = "(vp::vx::io::Error_Code)121]";
      break;
    case 122:
      result = "(vp::vx::io::Error_Code)122]";
      break;
    case 123:
      result = "(vp::vx::io::Error_Code)123]";
      break;
    case 124:
      result = "(vp::vx::io::Error_Code)124]";
      break;
    case 125:
      result = "(vp::vx::io::Error_Code)125]";
      break;
    case 126:
      result = "(vp::vx::io::Error_Code)126]";
      break;
    case 127:
      result = "(vp::vx::io::Error_Code)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::io::Error_Code)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

void vp::vx::Voice_Processor::run_dsp(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 9;
  *(a3 + 4) = 0;
  v6 = *(a1 + 520);
  for (i = *(a1 + 528); v6 != i; v6 += 2)
  {
    v8 = *v6;
    v9 = v6[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v8 + 272))(v8, a2);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  if (!a2)
  {
    vp::vx::Voice_Processor::run_all_of_downlink_dsp(&v10, a1);
    if (v11)
    {
      *(a3 + 4) = v11;
    }

    else
    {
      *a3 = v10;
    }

    a2 = 0;
  }

  v10 = *a3;
  v11 = *(a3 + 4);
  vp::vx::Voice_Processor::components_end_process<vp::vx::Downlink_Node_ID,vp::Expected<void,vp::vx::Error_Code>>(*(a1 + 520), *(a1 + 528), a2, &v10);
}

{
  *a3 = 9;
  *(a3 + 4) = 0;
  v6 = *(a1 + 520);
  for (i = *(a1 + 528); v6 != i; v6 += 2)
  {
    v8 = *v6;
    v9 = v6[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v8 + 224))(v8, a2);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  if (!a2)
  {
    vp::vx::Voice_Processor::run_all_of_uplink_dsp(&v10, a1);
    if (v11)
    {
      *(a3 + 4) = v11;
    }

    else
    {
      *a3 = v10;
    }

    a2 = 0;
  }

  v10 = *a3;
  v11 = *(a3 + 4);
  vp::vx::Voice_Processor::components_end_process<vp::vx::Uplink_Node_ID,vp::Expected<void,vp::vx::Error_Code>>(*(a1 + 520), *(a1 + 528), a2, &v10);
}

void vp::vx::Voice_Processor::run_all_of_downlink_dsp(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v957 = *MEMORY[0x277D85DE8];
  v941 = (a2 + 1128);
  v3 = atomic_load((a2 + 1128));
  if (v3 > 0x7FFFFFFE)
  {
LABEL_5:
    *this = 8;
    *(this + 4) = 0;
    goto LABEL_105;
  }

  v5 = v3;
  while (1)
  {
    atomic_compare_exchange_strong((a2 + 1128), &v5, v3 + 1);
    if (v5 == v3)
    {
      break;
    }

    v3 = v5;
    if (v5 >= 0x7FFFFFFF)
    {
      goto LABEL_5;
    }
  }

  v942 = 1;
  v6 = *(a2 + 2584);
  if (!v6)
  {
    log = vp::get_log(this);
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      log_context_info = vp::get_log_context_info(v943, a2, "vp::vx::Voice_Processor]", 23);
      v49 = v943[23];
      v50 = v943[23];
      v51 = *&v943[8];
      v52 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
      {
        if (v50 >= 0)
        {
          v53 = v49;
        }

        else
        {
          v53 = v51;
        }

        v54 = *v943;
        if (v50 >= 0)
        {
          v54 = v943;
        }

        if (v53)
        {
          v55 = " ";
        }

        else
        {
          v55 = "";
        }

        *buf = 136315394;
        *&buf[4] = v54;
        *&buf[12] = 2080;
        *&buf[14] = v55;
        _os_log_impl(&dword_2724B4000, v52, OS_LOG_TYPE_FAULT, "%s%scannot run downlink DSP with uninitialized VoiceProcessor", buf, 0x16u);
        LOBYTE(v50) = v943[23];
      }

      if ((v50 & 0x80) != 0)
      {
        operator delete(*v943);
      }
    }

    goto LABEL_8;
  }

  v7 = *(a2 + 780);
  if (v7 >= 2)
  {
    if (v7 != 2 || *(a2 + 264) == 3)
    {
LABEL_11:
      v9 = *(a2 + 2696);
      v10 = v6[8];
      if (0x86BCA1AF286BCA1BLL * ((v6[9] - v10) >> 4) > v9)
      {
        v11 = (v10 + 304 * v9);
        v12 = *v11;
        v13 = v11[1];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *buf = (*(*v12 + 32))(v12);
        v956 = 1;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        goto LABEL_16;
      }

      *v943 = 0x10002800000006;
      *&v943[8] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
      v944 = 0;
      *&v945 = 0;
      *&v943[16] = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v945 + 1);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(buf, v943);
      if (SBYTE7(v945) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(&v945 + 1), *&v943[16], v945 & 0x7FFFFFFFFFFFFFFFLL);
      }

      if (v956)
      {
LABEL_16:
        v14 = *buf;
        vp::vx::io::Graph::get_buffered_frame_count(&v933, v6[8], v6[9], *(a2 + 2696), 0);
        if (v940)
        {
          if (v14 >= v933)
          {
            v15 = v14 - v933;
          }

          else
          {
            v15 = 0;
          }

          vp::vx::io::Graph::get_required_input_frame_count(&v927, v6[24], v6[25], *(a2 + 2752), v15);
          if (v932)
          {
            v16 = v927;
            vp::vx::io::Graph::get_buffered_frame_count(&__p, v6[8], v6[9], *(a2 + 2692), 1);
            if (v926)
            {
              if (v16 >= __p)
              {
                v17 = v16 - __p;
              }

              else
              {
                v17 = 0;
              }

              vp::vx::io::Graph::get_required_input_frame_count(&__dst, v6[8], v6[9], *(a2 + 2692), v17);
              if (v920)
              {
                v18 = __dst;
                vp::vx::io::Graph::get_buffered_frame_count(&v909, v6[8], v6[9], *(a2 + 2692), 0);
                if (v914)
                {
                  if (v18 >= v909)
                  {
                    v19 = v18 - v909;
                  }

                  else
                  {
                    v19 = 0;
                  }

                  vp::vx::io::Graph::get_required_input_frame_count(&v903, v6[24], v6[25], *(a2 + 2748), v19);
                  if (v908)
                  {
                    v20 = v903;
                    vp::vx::io::Graph::get_buffered_frame_count(&v897, v6[8], v6[9], *(a2 + 2688), 1);
                    if (v902)
                    {
                      if (v20 >= v897)
                      {
                        v21 = v20 - v897;
                      }

                      else
                      {
                        v21 = 0;
                      }

                      vp::vx::io::Graph::get_required_input_frame_count(&v891, v6[8], v6[9], *(a2 + 2688), v21);
                      if (v896)
                      {
                        v22 = v891;
                        vp::vx::io::Graph::get_buffered_frame_count(&v885, v6[8], v6[9], *(a2 + 2688), 0);
                        if (v890)
                        {
                          if (v22 >= v885)
                          {
                            v23 = v22 - v885;
                          }

                          else
                          {
                            v23 = 0;
                          }

                          vp::vx::io::Graph::get_required_input_frame_count(&v879, v6[24], v6[25], *(a2 + 2744), v23);
                          if (v884)
                          {
                            v24 = v879;
                            vp::vx::io::Graph::get_buffered_frame_count(&v873, v6[8], v6[9], *(a2 + 2684), 1);
                            if (v878)
                            {
                              if (v24 >= v873)
                              {
                                v25 = v24 - v873;
                              }

                              else
                              {
                                v25 = 0;
                              }

                              vp::vx::io::Graph::get_required_input_frame_count(&v867, v6[8], v6[9], *(a2 + 2684), v25);
                              if (v872)
                              {
                                v26 = v867;
                                vp::vx::io::Graph::get_buffered_frame_count(&v861, v6[8], v6[9], *(a2 + 2684), 0);
                                v27 = v866;
                                if (v866)
                                {
                                  if (v26 >= v861)
                                  {
                                    v28 = v26 - v861;
                                  }

                                  else
                                  {
                                    v28 = 0;
                                  }

                                  vp::vx::io::Graph::get_required_input_frame_count(&v855, v6[24], v6[25], *(a2 + 2740), v28);
                                  v29 = v860;
                                  if (v860)
                                  {
                                    v30 = v855;
                                    vp::vx::io::Graph::get_buffered_frame_count(&v849, v6[8], v6[9], *(a2 + 2680), 1);
                                    v31 = v854;
                                    if (v854)
                                    {
                                      v32 = v30 - v849;
                                      if (v30 < v849)
                                      {
                                        v32 = 0;
                                      }

                                      if (v30 <= v849)
                                      {
                                        v33 = 1;
                                      }

                                      else
                                      {
                                        v33 = v32;
                                      }

                                      vp::vx::io::Graph::process(&v843, v6, *(a2 + 2680), v33);
                                      v34 = v848;
                                      if (v848)
                                      {
                                        vp::vx::io::Graph::process(&v837, v6, *(a2 + 2684), v26);
                                        v35 = v842;
                                        if (v842)
                                        {
                                          vp::vx::io::Graph::process(&v831, v6, *(a2 + 2688), v22);
                                          v36 = v836;
                                          if (v836)
                                          {
                                            vp::vx::io::Graph::process(&v825, v6, *(a2 + 2692), v18);
                                            v37 = v830;
                                            if (v830)
                                            {
                                              vp::vx::io::Graph::process(&v816, v6, *(a2 + 2696), v14);
                                              v8 = v821;
                                              if (v821)
                                              {
                                                goto LABEL_62;
                                              }

                                              v496 = vp::vx::io::Error::Error(&v811, &v816);
                                              if (v814 >= 0)
                                              {
                                                v497 = HIBYTE(v814);
                                              }

                                              else
                                              {
                                                v497 = v813[1];
                                              }

                                              v498 = vp::get_log(v496);
                                              v499 = os_log_type_enabled(v498, OS_LOG_TYPE_ERROR);
                                              if (v497)
                                              {
                                                if (v499)
                                                {
                                                  v500 = vp::get_log_context_info(&v822, a2, "vp::vx::Voice_Processor]", 23);
                                                  if ((v824 & 0x80u) == 0)
                                                  {
                                                    v501 = v824;
                                                  }

                                                  else
                                                  {
                                                    v501 = v823;
                                                  }

                                                  v502 = vp::get_log(v500);
                                                  if (os_log_type_enabled(v502, OS_LOG_TYPE_ERROR))
                                                  {
                                                    v503 = v824;
                                                    v504 = v822;
                                                    v505 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v811);
                                                    std::string::basic_string<std::string_view,0>(v809, v505, v506);
                                                    if (v503 >= 0)
                                                    {
                                                      v508 = &v822;
                                                    }

                                                    else
                                                    {
                                                      v508 = v504;
                                                    }

                                                    if (v501)
                                                    {
                                                      v509 = " ";
                                                    }

                                                    else
                                                    {
                                                      v509 = "";
                                                    }

                                                    if (v810 >= 0)
                                                    {
                                                      v510 = v809;
                                                    }

                                                    else
                                                    {
                                                      v510 = v809[0];
                                                    }

                                                    v511 = WORD2(v811);
                                                    v512 = HIWORD(v811);
                                                    log_source_file_path = vp::get_log_source_file_path(v812, v507);
                                                    if (v814 >= 0)
                                                    {
                                                      v514 = v813;
                                                    }

                                                    else
                                                    {
                                                      v514 = v813[0];
                                                    }

                                                    *v943 = 136316930;
                                                    *&v943[4] = v508;
                                                    *&v943[12] = 2080;
                                                    *&v943[14] = v509;
                                                    *&v943[22] = 2080;
                                                    v944 = "process downlink hardware DSP";
                                                    LOWORD(v945) = 2080;
                                                    *(&v945 + 2) = v510;
                                                    WORD5(v945) = 1024;
                                                    HIDWORD(v945) = v511;
                                                    v946 = 1024;
                                                    v947 = v512;
                                                    v948 = 2080;
                                                    v949 = log_source_file_path;
                                                    v950 = 2080;
                                                    v951 = v514;
                                                    v515 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                                    v516 = v502;
                                                    v517 = 74;
                                                    goto LABEL_1074;
                                                  }

                                                  goto LABEL_1076;
                                                }
                                              }

                                              else if (v499)
                                              {
                                                v795 = vp::get_log_context_info(&v822, a2, "vp::vx::Voice_Processor]", 23);
                                                if ((v824 & 0x80u) == 0)
                                                {
                                                  v796 = v824;
                                                }

                                                else
                                                {
                                                  v796 = v823;
                                                }

                                                v797 = vp::get_log(v795);
                                                if (os_log_type_enabled(v797, OS_LOG_TYPE_ERROR))
                                                {
                                                  v798 = v824;
                                                  v799 = v822;
                                                  v800 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v811);
                                                  std::string::basic_string<std::string_view,0>(v809, v800, v801);
                                                  if (v798 >= 0)
                                                  {
                                                    v803 = &v822;
                                                  }

                                                  else
                                                  {
                                                    v803 = v799;
                                                  }

                                                  if (v796)
                                                  {
                                                    v804 = " ";
                                                  }

                                                  else
                                                  {
                                                    v804 = "";
                                                  }

                                                  if (v810 >= 0)
                                                  {
                                                    v805 = v809;
                                                  }

                                                  else
                                                  {
                                                    v805 = v809[0];
                                                  }

                                                  v806 = WORD2(v811);
                                                  v807 = HIWORD(v811);
                                                  v808 = vp::get_log_source_file_path(v812, v802);
                                                  *v943 = 136316674;
                                                  *&v943[4] = v803;
                                                  *&v943[12] = 2080;
                                                  *&v943[14] = v804;
                                                  *&v943[22] = 2080;
                                                  v944 = "process downlink hardware DSP";
                                                  LOWORD(v945) = 2080;
                                                  *(&v945 + 2) = v805;
                                                  WORD5(v945) = 1024;
                                                  HIDWORD(v945) = v806;
                                                  v946 = 1024;
                                                  v947 = v807;
                                                  v948 = 2080;
                                                  v949 = v808;
                                                  v515 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                                  v516 = v797;
                                                  v517 = 64;
LABEL_1074:
                                                  _os_log_impl(&dword_2724B4000, v516, OS_LOG_TYPE_ERROR, v515, v943, v517);
                                                  if (v810 < 0)
                                                  {
                                                    operator delete(v809[0]);
                                                  }
                                                }

LABEL_1076:
                                                if (v824 < 0)
                                                {
                                                  operator delete(v822);
                                                }
                                              }

                                              *this = 7;
                                              *(this + 4) = 0;
                                              if (SHIBYTE(v814) < 0)
                                              {
                                                std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v815, v813[0], v814 & 0x7FFFFFFFFFFFFFFFLL);
                                              }

                                              if (SHIBYTE(v819) < 0)
                                              {
                                                std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v820, v818[0], v819 & 0x7FFFFFFFFFFFFFFFLL);
                                              }

                                              goto LABEL_62;
                                            }

                                            v474 = vp::vx::io::Error::Error(&v816, &v825);
                                            if (v819 >= 0)
                                            {
                                              v475 = HIBYTE(v819);
                                            }

                                            else
                                            {
                                              v475 = v818[1];
                                            }

                                            v476 = vp::get_log(v474);
                                            v477 = os_log_type_enabled(v476, OS_LOG_TYPE_ERROR);
                                            if (v475)
                                            {
                                              if (!v477)
                                              {
                                                goto LABEL_1053;
                                              }

                                              v478 = vp::get_log_context_info(&v811, a2, "vp::vx::Voice_Processor]", 23);
                                              if (v813[0] >= 0)
                                              {
                                                v479 = HIBYTE(v813[0]);
                                              }

                                              else
                                              {
                                                v479 = v812;
                                              }

                                              v480 = vp::get_log(v478);
                                              if (!os_log_type_enabled(v480, OS_LOG_TYPE_ERROR))
                                              {
                                                goto LABEL_1051;
                                              }

                                              v481 = SHIBYTE(v813[0]);
                                              v482 = v811;
                                              v483 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v816);
                                              std::string::basic_string<std::string_view,0>(&v822, v483, v484);
                                              if (v481 >= 0)
                                              {
                                                v486 = &v811;
                                              }

                                              else
                                              {
                                                v486 = v482;
                                              }

                                              if (v479)
                                              {
                                                v487 = " ";
                                              }

                                              else
                                              {
                                                v487 = "";
                                              }

                                              if ((v824 & 0x80u) == 0)
                                              {
                                                v488 = &v822;
                                              }

                                              else
                                              {
                                                v488 = v822;
                                              }

                                              v489 = WORD2(v816);
                                              v490 = HIWORD(v816);
                                              v491 = vp::get_log_source_file_path(v817, v485);
                                              if (v819 >= 0)
                                              {
                                                v492 = v818;
                                              }

                                              else
                                              {
                                                v492 = v818[0];
                                              }

                                              *v943 = 136316930;
                                              *&v943[4] = v486;
                                              *&v943[12] = 2080;
                                              *&v943[14] = v487;
                                              *&v943[22] = 2080;
                                              v944 = "process downlink dynamics DSP";
                                              LOWORD(v945) = 2080;
                                              *(&v945 + 2) = v488;
                                              WORD5(v945) = 1024;
                                              HIDWORD(v945) = v489;
                                              v946 = 1024;
                                              v947 = v490;
                                              v948 = 2080;
                                              v949 = v491;
                                              v950 = 2080;
                                              v951 = v492;
                                              v493 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                              v494 = v480;
                                              v495 = 74;
                                            }

                                            else
                                            {
                                              if (!v477)
                                              {
                                                goto LABEL_1053;
                                              }

                                              v781 = vp::get_log_context_info(&v811, a2, "vp::vx::Voice_Processor]", 23);
                                              if (v813[0] >= 0)
                                              {
                                                v782 = HIBYTE(v813[0]);
                                              }

                                              else
                                              {
                                                v782 = v812;
                                              }

                                              v783 = vp::get_log(v781);
                                              if (!os_log_type_enabled(v783, OS_LOG_TYPE_ERROR))
                                              {
LABEL_1051:
                                                if (SHIBYTE(v813[0]) < 0)
                                                {
                                                  operator delete(v811);
                                                }

LABEL_1053:
                                                *this = 7;
                                                *(this + 4) = 0;
                                                if (SHIBYTE(v819) < 0)
                                                {
                                                  std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v820, v818[0], v819 & 0x7FFFFFFFFFFFFFFFLL);
                                                }

                                                v8 = 0;
                                                if ((v37 & 1) == 0 && SHIBYTE(v828) < 0)
                                                {
                                                  (*(*v829 + 24))(v829, v827[0], v828 & 0x7FFFFFFFFFFFFFFFLL, 1);
                                                  goto LABEL_1058;
                                                }

LABEL_62:
                                                if ((v872 & 1) == 0 && SHIBYTE(v870) < 0)
                                                {
                                                  (*(*v871 + 24))(v871, v869[0], v870 & 0x7FFFFFFFFFFFFFFFLL, 1);
                                                }

                                                if (v878)
                                                {
LABEL_68:
                                                  if (v884)
                                                  {
                                                    goto LABEL_71;
                                                  }

                                                  goto LABEL_69;
                                                }

LABEL_66:
                                                if (SHIBYTE(v876) < 0)
                                                {
                                                  (*(*v877 + 24))(v877, v875[0], v876 & 0x7FFFFFFFFFFFFFFFLL, 1);
                                                }

                                                goto LABEL_68;
                                              }

                                              v784 = SHIBYTE(v813[0]);
                                              v785 = v811;
                                              v786 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v816);
                                              std::string::basic_string<std::string_view,0>(&v822, v786, v787);
                                              if (v784 >= 0)
                                              {
                                                v789 = &v811;
                                              }

                                              else
                                              {
                                                v789 = v785;
                                              }

                                              if (v782)
                                              {
                                                v790 = " ";
                                              }

                                              else
                                              {
                                                v790 = "";
                                              }

                                              if ((v824 & 0x80u) == 0)
                                              {
                                                v791 = &v822;
                                              }

                                              else
                                              {
                                                v791 = v822;
                                              }

                                              v792 = WORD2(v816);
                                              v793 = HIWORD(v816);
                                              v794 = vp::get_log_source_file_path(v817, v788);
                                              *v943 = 136316674;
                                              *&v943[4] = v789;
                                              *&v943[12] = 2080;
                                              *&v943[14] = v790;
                                              *&v943[22] = 2080;
                                              v944 = "process downlink dynamics DSP";
                                              LOWORD(v945) = 2080;
                                              *(&v945 + 2) = v791;
                                              WORD5(v945) = 1024;
                                              HIDWORD(v945) = v792;
                                              v946 = 1024;
                                              v947 = v793;
                                              v948 = 2080;
                                              v949 = v794;
                                              v493 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                              v494 = v783;
                                              v495 = 64;
                                            }

                                            _os_log_impl(&dword_2724B4000, v494, OS_LOG_TYPE_ERROR, v493, v943, v495);
                                            if (v824 < 0)
                                            {
                                              operator delete(v822);
                                            }

                                            goto LABEL_1051;
                                          }

                                          v452 = vp::vx::io::Error::Error(&v825, &v831);
                                          if (v828 >= 0)
                                          {
                                            v453 = HIBYTE(v828);
                                          }

                                          else
                                          {
                                            v453 = v827[1];
                                          }

                                          v454 = vp::get_log(v452);
                                          v455 = os_log_type_enabled(v454, OS_LOG_TYPE_ERROR);
                                          if (v453)
                                          {
                                            if (v455)
                                            {
                                              v456 = vp::get_log_context_info(&v816, a2, "vp::vx::Voice_Processor]", 23);
                                              if (v818[0] >= 0)
                                              {
                                                v457 = HIBYTE(v818[0]);
                                              }

                                              else
                                              {
                                                v457 = v817;
                                              }

                                              v458 = vp::get_log(v456);
                                              if (os_log_type_enabled(v458, OS_LOG_TYPE_ERROR))
                                              {
                                                v459 = SHIBYTE(v818[0]);
                                                v460 = v816;
                                                v461 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v825);
                                                std::string::basic_string<std::string_view,0>(&v811, v461, v462);
                                                if (v459 >= 0)
                                                {
                                                  v464 = &v816;
                                                }

                                                else
                                                {
                                                  v464 = v460;
                                                }

                                                if (v457)
                                                {
                                                  v465 = " ";
                                                }

                                                else
                                                {
                                                  v465 = "";
                                                }

                                                if (v813[0] >= 0)
                                                {
                                                  v466 = &v811;
                                                }

                                                else
                                                {
                                                  v466 = v811;
                                                }

                                                v467 = WORD2(v825);
                                                v468 = HIWORD(v825);
                                                v469 = vp::get_log_source_file_path(v826, v463);
                                                if (v828 >= 0)
                                                {
                                                  v470 = v827;
                                                }

                                                else
                                                {
                                                  v470 = v827[0];
                                                }

                                                *v943 = 136316930;
                                                *&v943[4] = v464;
                                                *&v943[12] = 2080;
                                                *&v943[14] = v465;
                                                *&v943[22] = 2080;
                                                v944 = "process downlink voice DSP";
                                                LOWORD(v945) = 2080;
                                                *(&v945 + 2) = v466;
                                                WORD5(v945) = 1024;
                                                HIDWORD(v945) = v467;
                                                v946 = 1024;
                                                v947 = v468;
                                                v948 = 2080;
                                                v949 = v469;
                                                v950 = 2080;
                                                v951 = v470;
                                                v471 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                                v472 = v458;
                                                v473 = 74;
                                                goto LABEL_1025;
                                              }

                                              goto LABEL_1027;
                                            }
                                          }

                                          else if (v455)
                                          {
                                            v767 = vp::get_log_context_info(&v816, a2, "vp::vx::Voice_Processor]", 23);
                                            if (v818[0] >= 0)
                                            {
                                              v768 = HIBYTE(v818[0]);
                                            }

                                            else
                                            {
                                              v768 = v817;
                                            }

                                            v769 = vp::get_log(v767);
                                            if (os_log_type_enabled(v769, OS_LOG_TYPE_ERROR))
                                            {
                                              v770 = SHIBYTE(v818[0]);
                                              v771 = v816;
                                              v772 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v825);
                                              std::string::basic_string<std::string_view,0>(&v811, v772, v773);
                                              if (v770 >= 0)
                                              {
                                                v775 = &v816;
                                              }

                                              else
                                              {
                                                v775 = v771;
                                              }

                                              if (v768)
                                              {
                                                v776 = " ";
                                              }

                                              else
                                              {
                                                v776 = "";
                                              }

                                              if (v813[0] >= 0)
                                              {
                                                v777 = &v811;
                                              }

                                              else
                                              {
                                                v777 = v811;
                                              }

                                              v778 = WORD2(v825);
                                              v779 = HIWORD(v825);
                                              v780 = vp::get_log_source_file_path(v826, v774);
                                              *v943 = 136316674;
                                              *&v943[4] = v775;
                                              *&v943[12] = 2080;
                                              *&v943[14] = v776;
                                              *&v943[22] = 2080;
                                              v944 = "process downlink voice DSP";
                                              LOWORD(v945) = 2080;
                                              *(&v945 + 2) = v777;
                                              WORD5(v945) = 1024;
                                              HIDWORD(v945) = v778;
                                              v946 = 1024;
                                              v947 = v779;
                                              v948 = 2080;
                                              v949 = v780;
                                              v471 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                              v472 = v769;
                                              v473 = 64;
LABEL_1025:
                                              _os_log_impl(&dword_2724B4000, v472, OS_LOG_TYPE_ERROR, v471, v943, v473);
                                              if (SHIBYTE(v813[0]) < 0)
                                              {
                                                operator delete(v811);
                                              }
                                            }

LABEL_1027:
                                            if (SHIBYTE(v818[0]) < 0)
                                            {
                                              operator delete(v816);
                                            }
                                          }

                                          *this = 7;
                                          *(this + 4) = 0;
                                          if (SHIBYTE(v828) < 0)
                                          {
                                            std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v829, v827[0], v828 & 0x7FFFFFFFFFFFFFFFLL);
                                          }

                                          v8 = 0;
                                          if ((v36 & 1) != 0 || (SHIBYTE(v834) & 0x80000000) == 0)
                                          {
                                            goto LABEL_62;
                                          }

                                          (*(*v835 + 24))(v835, v833[0], v834 & 0x7FFFFFFFFFFFFFFFLL, 1);
                                          goto LABEL_1058;
                                        }

                                        v430 = vp::vx::io::Error::Error(&v831, &v837);
                                        if (v834 >= 0)
                                        {
                                          v431 = HIBYTE(v834);
                                        }

                                        else
                                        {
                                          v431 = v833[1];
                                        }

                                        v432 = vp::get_log(v430);
                                        v433 = os_log_type_enabled(v432, OS_LOG_TYPE_ERROR);
                                        if (v431)
                                        {
                                          if (v433)
                                          {
                                            v434 = vp::get_log_context_info(&v825, a2, "vp::vx::Voice_Processor]", 23);
                                            if (v827[0] >= 0)
                                            {
                                              v435 = HIBYTE(v827[0]);
                                            }

                                            else
                                            {
                                              v435 = v826;
                                            }

                                            v436 = vp::get_log(v434);
                                            if (os_log_type_enabled(v436, OS_LOG_TYPE_ERROR))
                                            {
                                              v437 = SHIBYTE(v827[0]);
                                              v438 = v825;
                                              v439 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v831);
                                              std::string::basic_string<std::string_view,0>(&v816, v439, v440);
                                              if (v437 >= 0)
                                              {
                                                v442 = &v825;
                                              }

                                              else
                                              {
                                                v442 = v438;
                                              }

                                              if (v435)
                                              {
                                                v443 = " ";
                                              }

                                              else
                                              {
                                                v443 = "";
                                              }

                                              if (v818[0] >= 0)
                                              {
                                                v444 = &v816;
                                              }

                                              else
                                              {
                                                v444 = v816;
                                              }

                                              v445 = WORD2(v831);
                                              v446 = HIWORD(v831);
                                              v447 = vp::get_log_source_file_path(v832, v441);
                                              if (v834 >= 0)
                                              {
                                                v448 = v833;
                                              }

                                              else
                                              {
                                                v448 = v833[0];
                                              }

                                              *v943 = 136316930;
                                              *&v943[4] = v442;
                                              *&v943[12] = 2080;
                                              *&v943[14] = v443;
                                              *&v943[22] = 2080;
                                              v944 = "process downlink voice mix DSP";
                                              LOWORD(v945) = 2080;
                                              *(&v945 + 2) = v444;
                                              WORD5(v945) = 1024;
                                              HIDWORD(v945) = v445;
                                              v946 = 1024;
                                              v947 = v446;
                                              v948 = 2080;
                                              v949 = v447;
                                              v950 = 2080;
                                              v951 = v448;
                                              v449 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                              v450 = v436;
                                              v451 = 74;
                                              goto LABEL_1001;
                                            }

                                            goto LABEL_1003;
                                          }
                                        }

                                        else if (v433)
                                        {
                                          v753 = vp::get_log_context_info(&v825, a2, "vp::vx::Voice_Processor]", 23);
                                          if (v827[0] >= 0)
                                          {
                                            v754 = HIBYTE(v827[0]);
                                          }

                                          else
                                          {
                                            v754 = v826;
                                          }

                                          v755 = vp::get_log(v753);
                                          if (os_log_type_enabled(v755, OS_LOG_TYPE_ERROR))
                                          {
                                            v756 = SHIBYTE(v827[0]);
                                            v757 = v825;
                                            v758 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v831);
                                            std::string::basic_string<std::string_view,0>(&v816, v758, v759);
                                            if (v756 >= 0)
                                            {
                                              v761 = &v825;
                                            }

                                            else
                                            {
                                              v761 = v757;
                                            }

                                            if (v754)
                                            {
                                              v762 = " ";
                                            }

                                            else
                                            {
                                              v762 = "";
                                            }

                                            if (v818[0] >= 0)
                                            {
                                              v763 = &v816;
                                            }

                                            else
                                            {
                                              v763 = v816;
                                            }

                                            v764 = WORD2(v831);
                                            v765 = HIWORD(v831);
                                            v766 = vp::get_log_source_file_path(v832, v760);
                                            *v943 = 136316674;
                                            *&v943[4] = v761;
                                            *&v943[12] = 2080;
                                            *&v943[14] = v762;
                                            *&v943[22] = 2080;
                                            v944 = "process downlink voice mix DSP";
                                            LOWORD(v945) = 2080;
                                            *(&v945 + 2) = v763;
                                            WORD5(v945) = 1024;
                                            HIDWORD(v945) = v764;
                                            v946 = 1024;
                                            v947 = v765;
                                            v948 = 2080;
                                            v949 = v766;
                                            v449 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                            v450 = v755;
                                            v451 = 64;
LABEL_1001:
                                            _os_log_impl(&dword_2724B4000, v450, OS_LOG_TYPE_ERROR, v449, v943, v451);
                                            if (SHIBYTE(v818[0]) < 0)
                                            {
                                              operator delete(v816);
                                            }
                                          }

LABEL_1003:
                                          if (SHIBYTE(v827[0]) < 0)
                                          {
                                            operator delete(v825);
                                          }
                                        }

                                        *this = 7;
                                        *(this + 4) = 0;
                                        if (SHIBYTE(v834) < 0)
                                        {
                                          std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v835, v833[0], v834 & 0x7FFFFFFFFFFFFFFFLL);
                                        }

                                        v8 = 0;
                                        if ((v35 & 1) != 0 || (SHIBYTE(v840) & 0x80000000) == 0)
                                        {
                                          goto LABEL_62;
                                        }

                                        (*(*v841 + 24))(v841, v839[0], v840 & 0x7FFFFFFFFFFFFFFFLL, 1);
                                        goto LABEL_1058;
                                      }

                                      v408 = vp::vx::io::Error::Error(&v837, &v843);
                                      if (v840 >= 0)
                                      {
                                        v409 = HIBYTE(v840);
                                      }

                                      else
                                      {
                                        v409 = v839[1];
                                      }

                                      v410 = vp::get_log(v408);
                                      v411 = os_log_type_enabled(v410, OS_LOG_TYPE_ERROR);
                                      if (v409)
                                      {
                                        if (v411)
                                        {
                                          v412 = vp::get_log_context_info(&v831, a2, "vp::vx::Voice_Processor]", 23);
                                          if (v833[0] >= 0)
                                          {
                                            v413 = HIBYTE(v833[0]);
                                          }

                                          else
                                          {
                                            v413 = v832;
                                          }

                                          v414 = vp::get_log(v412);
                                          if (os_log_type_enabled(v414, OS_LOG_TYPE_ERROR))
                                          {
                                            v415 = SHIBYTE(v833[0]);
                                            v416 = v831;
                                            v417 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v837);
                                            std::string::basic_string<std::string_view,0>(&v825, v417, v418);
                                            if (v415 >= 0)
                                            {
                                              v420 = &v831;
                                            }

                                            else
                                            {
                                              v420 = v416;
                                            }

                                            if (v413)
                                            {
                                              v421 = " ";
                                            }

                                            else
                                            {
                                              v421 = "";
                                            }

                                            if (v827[0] >= 0)
                                            {
                                              v422 = &v825;
                                            }

                                            else
                                            {
                                              v422 = v825;
                                            }

                                            v423 = WORD2(v837);
                                            v424 = HIWORD(v837);
                                            v425 = vp::get_log_source_file_path(v838, v419);
                                            if (v840 >= 0)
                                            {
                                              v426 = v839;
                                            }

                                            else
                                            {
                                              v426 = v839[0];
                                            }

                                            *v943 = 136316930;
                                            *&v943[4] = v420;
                                            *&v943[12] = 2080;
                                            *&v943[14] = v421;
                                            *&v943[22] = 2080;
                                            v944 = "process downlink voice proc";
                                            LOWORD(v945) = 2080;
                                            *(&v945 + 2) = v422;
                                            WORD5(v945) = 1024;
                                            HIDWORD(v945) = v423;
                                            v946 = 1024;
                                            v947 = v424;
                                            v948 = 2080;
                                            v949 = v425;
                                            v950 = 2080;
                                            v951 = v426;
                                            v427 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                            v428 = v414;
                                            v429 = 74;
                                            goto LABEL_977;
                                          }

                                          goto LABEL_979;
                                        }
                                      }

                                      else if (v411)
                                      {
                                        v739 = vp::get_log_context_info(&v831, a2, "vp::vx::Voice_Processor]", 23);
                                        if (v833[0] >= 0)
                                        {
                                          v740 = HIBYTE(v833[0]);
                                        }

                                        else
                                        {
                                          v740 = v832;
                                        }

                                        v741 = vp::get_log(v739);
                                        if (os_log_type_enabled(v741, OS_LOG_TYPE_ERROR))
                                        {
                                          v742 = SHIBYTE(v833[0]);
                                          v743 = v831;
                                          v744 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v837);
                                          std::string::basic_string<std::string_view,0>(&v825, v744, v745);
                                          if (v742 >= 0)
                                          {
                                            v747 = &v831;
                                          }

                                          else
                                          {
                                            v747 = v743;
                                          }

                                          if (v740)
                                          {
                                            v748 = " ";
                                          }

                                          else
                                          {
                                            v748 = "";
                                          }

                                          if (v827[0] >= 0)
                                          {
                                            v749 = &v825;
                                          }

                                          else
                                          {
                                            v749 = v825;
                                          }

                                          v750 = WORD2(v837);
                                          v751 = HIWORD(v837);
                                          v752 = vp::get_log_source_file_path(v838, v746);
                                          *v943 = 136316674;
                                          *&v943[4] = v747;
                                          *&v943[12] = 2080;
                                          *&v943[14] = v748;
                                          *&v943[22] = 2080;
                                          v944 = "process downlink voice proc";
                                          LOWORD(v945) = 2080;
                                          *(&v945 + 2) = v749;
                                          WORD5(v945) = 1024;
                                          HIDWORD(v945) = v750;
                                          v946 = 1024;
                                          v947 = v751;
                                          v948 = 2080;
                                          v949 = v752;
                                          v427 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                          v428 = v741;
                                          v429 = 64;
LABEL_977:
                                          _os_log_impl(&dword_2724B4000, v428, OS_LOG_TYPE_ERROR, v427, v943, v429);
                                          if (SHIBYTE(v827[0]) < 0)
                                          {
                                            operator delete(v825);
                                          }
                                        }

LABEL_979:
                                        if (SHIBYTE(v833[0]) < 0)
                                        {
                                          operator delete(v831);
                                        }
                                      }

                                      *this = 7;
                                      *(this + 4) = 0;
                                      if (SHIBYTE(v840) < 0)
                                      {
                                        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v841, v839[0], v840 & 0x7FFFFFFFFFFFFFFFLL);
                                      }

                                      v8 = 0;
                                      if ((v34 & 1) != 0 || (SHIBYTE(v846) & 0x80000000) == 0)
                                      {
                                        goto LABEL_62;
                                      }

                                      (*(*v847 + 24))(v847, v845[0], v846 & 0x7FFFFFFFFFFFFFFFLL, 1);
                                      goto LABEL_1058;
                                    }

                                    v386 = vp::vx::io::Error::Error(&v843, &v849);
                                    if (v846 >= 0)
                                    {
                                      v387 = HIBYTE(v846);
                                    }

                                    else
                                    {
                                      v387 = v845[1];
                                    }

                                    v388 = vp::get_log(v386);
                                    v389 = os_log_type_enabled(v388, OS_LOG_TYPE_ERROR);
                                    if (v387)
                                    {
                                      if (v389)
                                      {
                                        v390 = vp::get_log_context_info(&v837, a2, "vp::vx::Voice_Processor]", 23);
                                        if (v839[0] >= 0)
                                        {
                                          v391 = HIBYTE(v839[0]);
                                        }

                                        else
                                        {
                                          v391 = v838;
                                        }

                                        v392 = vp::get_log(v390);
                                        if (os_log_type_enabled(v392, OS_LOG_TYPE_ERROR))
                                        {
                                          v393 = SHIBYTE(v839[0]);
                                          v394 = v837;
                                          v395 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v843);
                                          std::string::basic_string<std::string_view,0>(&v831, v395, v396);
                                          if (v393 >= 0)
                                          {
                                            v398 = &v837;
                                          }

                                          else
                                          {
                                            v398 = v394;
                                          }

                                          if (v391)
                                          {
                                            v399 = " ";
                                          }

                                          else
                                          {
                                            v399 = "";
                                          }

                                          if (v833[0] >= 0)
                                          {
                                            v400 = &v831;
                                          }

                                          else
                                          {
                                            v400 = v831;
                                          }

                                          v401 = WORD2(v843);
                                          v402 = HIWORD(v843);
                                          v403 = vp::get_log_source_file_path(v844, v397);
                                          if (v846 >= 0)
                                          {
                                            v404 = v845;
                                          }

                                          else
                                          {
                                            v404 = v845[0];
                                          }

                                          *v943 = 136316930;
                                          *&v943[4] = v398;
                                          *&v943[12] = 2080;
                                          *&v943[14] = v399;
                                          *&v943[22] = 2080;
                                          v944 = "get buffered output frame count for downlink voice proc";
                                          LOWORD(v945) = 2080;
                                          *(&v945 + 2) = v400;
                                          WORD5(v945) = 1024;
                                          HIDWORD(v945) = v401;
                                          v946 = 1024;
                                          v947 = v402;
                                          v948 = 2080;
                                          v949 = v403;
                                          v950 = 2080;
                                          v951 = v404;
                                          v405 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                          v406 = v392;
                                          v407 = 74;
                                          goto LABEL_953;
                                        }

                                        goto LABEL_955;
                                      }
                                    }

                                    else if (v389)
                                    {
                                      v725 = vp::get_log_context_info(&v837, a2, "vp::vx::Voice_Processor]", 23);
                                      if (v839[0] >= 0)
                                      {
                                        v726 = HIBYTE(v839[0]);
                                      }

                                      else
                                      {
                                        v726 = v838;
                                      }

                                      v727 = vp::get_log(v725);
                                      if (os_log_type_enabled(v727, OS_LOG_TYPE_ERROR))
                                      {
                                        v728 = SHIBYTE(v839[0]);
                                        v729 = v837;
                                        v730 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v843);
                                        std::string::basic_string<std::string_view,0>(&v831, v730, v731);
                                        if (v728 >= 0)
                                        {
                                          v733 = &v837;
                                        }

                                        else
                                        {
                                          v733 = v729;
                                        }

                                        if (v726)
                                        {
                                          v734 = " ";
                                        }

                                        else
                                        {
                                          v734 = "";
                                        }

                                        if (v833[0] >= 0)
                                        {
                                          v735 = &v831;
                                        }

                                        else
                                        {
                                          v735 = v831;
                                        }

                                        v736 = WORD2(v843);
                                        v737 = HIWORD(v843);
                                        v738 = vp::get_log_source_file_path(v844, v732);
                                        *v943 = 136316674;
                                        *&v943[4] = v733;
                                        *&v943[12] = 2080;
                                        *&v943[14] = v734;
                                        *&v943[22] = 2080;
                                        v944 = "get buffered output frame count for downlink voice proc";
                                        LOWORD(v945) = 2080;
                                        *(&v945 + 2) = v735;
                                        WORD5(v945) = 1024;
                                        HIDWORD(v945) = v736;
                                        v946 = 1024;
                                        v947 = v737;
                                        v948 = 2080;
                                        v949 = v738;
                                        v405 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                        v406 = v727;
                                        v407 = 64;
LABEL_953:
                                        _os_log_impl(&dword_2724B4000, v406, OS_LOG_TYPE_ERROR, v405, v943, v407);
                                        if (SHIBYTE(v833[0]) < 0)
                                        {
                                          operator delete(v831);
                                        }
                                      }

LABEL_955:
                                      if (SHIBYTE(v839[0]) < 0)
                                      {
                                        operator delete(v837);
                                      }
                                    }

                                    *this = 7;
                                    *(this + 4) = 0;
                                    if (SHIBYTE(v846) < 0)
                                    {
                                      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v847, v845[0], v846 & 0x7FFFFFFFFFFFFFFFLL);
                                    }

                                    v8 = 0;
                                    if ((v31 & 1) != 0 || (SHIBYTE(v852) & 0x80000000) == 0)
                                    {
                                      goto LABEL_62;
                                    }

                                    (*(*v853 + 24))(v853, v851[0], v852 & 0x7FFFFFFFFFFFFFFFLL, 1);
                                    goto LABEL_1058;
                                  }

                                  v364 = vp::vx::io::Error::Error(&v849, &v855);
                                  if (v852 >= 0)
                                  {
                                    v365 = HIBYTE(v852);
                                  }

                                  else
                                  {
                                    v365 = v851[1];
                                  }

                                  v366 = vp::get_log(v364);
                                  v367 = os_log_type_enabled(v366, OS_LOG_TYPE_ERROR);
                                  if (v365)
                                  {
                                    if (v367)
                                    {
                                      v368 = vp::get_log_context_info(&v843, a2, "vp::vx::Voice_Processor]", 23);
                                      if (v845[0] >= 0)
                                      {
                                        v369 = HIBYTE(v845[0]);
                                      }

                                      else
                                      {
                                        v369 = v844;
                                      }

                                      v370 = vp::get_log(v368);
                                      if (os_log_type_enabled(v370, OS_LOG_TYPE_ERROR))
                                      {
                                        v371 = SHIBYTE(v845[0]);
                                        v372 = v843;
                                        v373 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v849);
                                        std::string::basic_string<std::string_view,0>(&v837, v373, v374);
                                        if (v371 >= 0)
                                        {
                                          v376 = &v843;
                                        }

                                        else
                                        {
                                          v376 = v372;
                                        }

                                        if (v369)
                                        {
                                          v377 = " ";
                                        }

                                        else
                                        {
                                          v377 = "";
                                        }

                                        if (v839[0] >= 0)
                                        {
                                          v378 = &v837;
                                        }

                                        else
                                        {
                                          v378 = v837;
                                        }

                                        v379 = WORD2(v849);
                                        v380 = HIWORD(v849);
                                        v381 = vp::get_log_source_file_path(v850, v375);
                                        if (v852 >= 0)
                                        {
                                          v382 = v851;
                                        }

                                        else
                                        {
                                          v382 = v851[0];
                                        }

                                        *v943 = 136316930;
                                        *&v943[4] = v376;
                                        *&v943[12] = 2080;
                                        *&v943[14] = v377;
                                        *&v943[22] = 2080;
                                        v944 = "get frame count deficit for downlink voice mix DSP";
                                        LOWORD(v945) = 2080;
                                        *(&v945 + 2) = v378;
                                        WORD5(v945) = 1024;
                                        HIDWORD(v945) = v379;
                                        v946 = 1024;
                                        v947 = v380;
                                        v948 = 2080;
                                        v949 = v381;
                                        v950 = 2080;
                                        v951 = v382;
                                        v383 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                        v384 = v370;
                                        v385 = 74;
                                        goto LABEL_929;
                                      }

                                      goto LABEL_931;
                                    }
                                  }

                                  else if (v367)
                                  {
                                    v711 = vp::get_log_context_info(&v843, a2, "vp::vx::Voice_Processor]", 23);
                                    if (v845[0] >= 0)
                                    {
                                      v712 = HIBYTE(v845[0]);
                                    }

                                    else
                                    {
                                      v712 = v844;
                                    }

                                    v713 = vp::get_log(v711);
                                    if (os_log_type_enabled(v713, OS_LOG_TYPE_ERROR))
                                    {
                                      v714 = SHIBYTE(v845[0]);
                                      v715 = v843;
                                      v716 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v849);
                                      std::string::basic_string<std::string_view,0>(&v837, v716, v717);
                                      if (v714 >= 0)
                                      {
                                        v719 = &v843;
                                      }

                                      else
                                      {
                                        v719 = v715;
                                      }

                                      if (v712)
                                      {
                                        v720 = " ";
                                      }

                                      else
                                      {
                                        v720 = "";
                                      }

                                      if (v839[0] >= 0)
                                      {
                                        v721 = &v837;
                                      }

                                      else
                                      {
                                        v721 = v837;
                                      }

                                      v722 = WORD2(v849);
                                      v723 = HIWORD(v849);
                                      v724 = vp::get_log_source_file_path(v850, v718);
                                      *v943 = 136316674;
                                      *&v943[4] = v719;
                                      *&v943[12] = 2080;
                                      *&v943[14] = v720;
                                      *&v943[22] = 2080;
                                      v944 = "get frame count deficit for downlink voice mix DSP";
                                      LOWORD(v945) = 2080;
                                      *(&v945 + 2) = v721;
                                      WORD5(v945) = 1024;
                                      HIDWORD(v945) = v722;
                                      v946 = 1024;
                                      v947 = v723;
                                      v948 = 2080;
                                      v949 = v724;
                                      v383 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                      v384 = v713;
                                      v385 = 64;
LABEL_929:
                                      _os_log_impl(&dword_2724B4000, v384, OS_LOG_TYPE_ERROR, v383, v943, v385);
                                      if (SHIBYTE(v839[0]) < 0)
                                      {
                                        operator delete(v837);
                                      }
                                    }

LABEL_931:
                                    if (SHIBYTE(v845[0]) < 0)
                                    {
                                      operator delete(v843);
                                    }
                                  }

                                  *this = 7;
                                  *(this + 4) = 0;
                                  if (SHIBYTE(v852) < 0)
                                  {
                                    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v853, v851[0], v852 & 0x7FFFFFFFFFFFFFFFLL);
                                  }

                                  v8 = 0;
                                  if ((v29 & 1) != 0 || (SHIBYTE(v858) & 0x80000000) == 0)
                                  {
                                    goto LABEL_62;
                                  }

                                  (*(*v859 + 24))(v859, v857[0], v858 & 0x7FFFFFFFFFFFFFFFLL, 1);
                                  goto LABEL_1058;
                                }

                                v342 = vp::vx::io::Error::Error(&v855, &v861);
                                if (v858 >= 0)
                                {
                                  v343 = HIBYTE(v858);
                                }

                                else
                                {
                                  v343 = v857[1];
                                }

                                v344 = vp::get_log(v342);
                                v345 = os_log_type_enabled(v344, OS_LOG_TYPE_ERROR);
                                if (v343)
                                {
                                  if (v345)
                                  {
                                    v346 = vp::get_log_context_info(&v849, a2, "vp::vx::Voice_Processor]", 23);
                                    if (v851[0] >= 0)
                                    {
                                      v347 = HIBYTE(v851[0]);
                                    }

                                    else
                                    {
                                      v347 = v850;
                                    }

                                    v348 = vp::get_log(v346);
                                    if (os_log_type_enabled(v348, OS_LOG_TYPE_ERROR))
                                    {
                                      v349 = SHIBYTE(v851[0]);
                                      v350 = v849;
                                      v351 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v855);
                                      std::string::basic_string<std::string_view,0>(&v843, v351, v352);
                                      if (v349 >= 0)
                                      {
                                        v354 = &v849;
                                      }

                                      else
                                      {
                                        v354 = v350;
                                      }

                                      if (v347)
                                      {
                                        v355 = " ";
                                      }

                                      else
                                      {
                                        v355 = "";
                                      }

                                      if (v845[0] >= 0)
                                      {
                                        v356 = &v843;
                                      }

                                      else
                                      {
                                        v356 = v843;
                                      }

                                      v357 = WORD2(v855);
                                      v358 = HIWORD(v855);
                                      v359 = vp::get_log_source_file_path(v856, v353);
                                      if (v858 >= 0)
                                      {
                                        v360 = v857;
                                      }

                                      else
                                      {
                                        v360 = v857[0];
                                      }

                                      *v943 = 136316930;
                                      *&v943[4] = v354;
                                      *&v943[12] = 2080;
                                      *&v943[14] = v355;
                                      *&v943[22] = 2080;
                                      v944 = "get buffered input frame count for downlink voice mix DSP";
                                      LOWORD(v945) = 2080;
                                      *(&v945 + 2) = v356;
                                      WORD5(v945) = 1024;
                                      HIDWORD(v945) = v357;
                                      v946 = 1024;
                                      v947 = v358;
                                      v948 = 2080;
                                      v949 = v359;
                                      v950 = 2080;
                                      v951 = v360;
                                      v361 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                      v362 = v348;
                                      v363 = 74;
                                      goto LABEL_905;
                                    }

                                    goto LABEL_907;
                                  }
                                }

                                else if (v345)
                                {
                                  v697 = vp::get_log_context_info(&v849, a2, "vp::vx::Voice_Processor]", 23);
                                  if (v851[0] >= 0)
                                  {
                                    v698 = HIBYTE(v851[0]);
                                  }

                                  else
                                  {
                                    v698 = v850;
                                  }

                                  v699 = vp::get_log(v697);
                                  if (os_log_type_enabled(v699, OS_LOG_TYPE_ERROR))
                                  {
                                    v700 = SHIBYTE(v851[0]);
                                    v701 = v849;
                                    v702 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v855);
                                    std::string::basic_string<std::string_view,0>(&v843, v702, v703);
                                    if (v700 >= 0)
                                    {
                                      v705 = &v849;
                                    }

                                    else
                                    {
                                      v705 = v701;
                                    }

                                    if (v698)
                                    {
                                      v706 = " ";
                                    }

                                    else
                                    {
                                      v706 = "";
                                    }

                                    if (v845[0] >= 0)
                                    {
                                      v707 = &v843;
                                    }

                                    else
                                    {
                                      v707 = v843;
                                    }

                                    v708 = WORD2(v855);
                                    v709 = HIWORD(v855);
                                    v710 = vp::get_log_source_file_path(v856, v704);
                                    *v943 = 136316674;
                                    *&v943[4] = v705;
                                    *&v943[12] = 2080;
                                    *&v943[14] = v706;
                                    *&v943[22] = 2080;
                                    v944 = "get buffered input frame count for downlink voice mix DSP";
                                    LOWORD(v945) = 2080;
                                    *(&v945 + 2) = v707;
                                    WORD5(v945) = 1024;
                                    HIDWORD(v945) = v708;
                                    v946 = 1024;
                                    v947 = v709;
                                    v948 = 2080;
                                    v949 = v710;
                                    v361 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                    v362 = v699;
                                    v363 = 64;
LABEL_905:
                                    _os_log_impl(&dword_2724B4000, v362, OS_LOG_TYPE_ERROR, v361, v943, v363);
                                    if (SHIBYTE(v845[0]) < 0)
                                    {
                                      operator delete(v843);
                                    }
                                  }

LABEL_907:
                                  if (SHIBYTE(v851[0]) < 0)
                                  {
                                    operator delete(v849);
                                  }
                                }

                                *this = 7;
                                *(this + 4) = 0;
                                if (SHIBYTE(v858) < 0)
                                {
                                  std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v859, v857[0], v858 & 0x7FFFFFFFFFFFFFFFLL);
                                }

                                v8 = 0;
                                if ((v27 & 1) != 0 || (SHIBYTE(v864) & 0x80000000) == 0)
                                {
                                  goto LABEL_62;
                                }

                                (*(*v865 + 24))(v865, v863[0], v864 & 0x7FFFFFFFFFFFFFFFLL, 1);
LABEL_1058:
                                v8 = 0;
                                goto LABEL_62;
                              }

                              v320 = vp::vx::io::Error::Error(&v861, &v867);
                              if (v864 >= 0)
                              {
                                v321 = HIBYTE(v864);
                              }

                              else
                              {
                                v321 = v863[1];
                              }

                              v322 = vp::get_log(v320);
                              v323 = os_log_type_enabled(v322, OS_LOG_TYPE_ERROR);
                              if (v321)
                              {
                                if (v323)
                                {
                                  v324 = vp::get_log_context_info(&v855, a2, "vp::vx::Voice_Processor]", 23);
                                  if (v857[0] >= 0)
                                  {
                                    v325 = HIBYTE(v857[0]);
                                  }

                                  else
                                  {
                                    v325 = v856;
                                  }

                                  v326 = vp::get_log(v324);
                                  if (os_log_type_enabled(v326, OS_LOG_TYPE_ERROR))
                                  {
                                    v327 = SHIBYTE(v857[0]);
                                    v328 = v855;
                                    v329 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v861);
                                    std::string::basic_string<std::string_view,0>(&v849, v329, v330);
                                    if (v327 >= 0)
                                    {
                                      v332 = &v855;
                                    }

                                    else
                                    {
                                      v332 = v328;
                                    }

                                    if (v325)
                                    {
                                      v333 = " ";
                                    }

                                    else
                                    {
                                      v333 = "";
                                    }

                                    if (v851[0] >= 0)
                                    {
                                      v334 = &v849;
                                    }

                                    else
                                    {
                                      v334 = v849;
                                    }

                                    v335 = WORD2(v861);
                                    v336 = HIWORD(v861);
                                    v337 = vp::get_log_source_file_path(v862, v331);
                                    if (v864 >= 0)
                                    {
                                      v338 = v863;
                                    }

                                    else
                                    {
                                      v338 = v863[0];
                                    }

                                    *v943 = 136316930;
                                    *&v943[4] = v332;
                                    *&v943[12] = 2080;
                                    *&v943[14] = v333;
                                    *&v943[22] = 2080;
                                    v944 = "get required input frame count for downlink voice mix DSP";
                                    LOWORD(v945) = 2080;
                                    *(&v945 + 2) = v334;
                                    WORD5(v945) = 1024;
                                    HIDWORD(v945) = v335;
                                    v946 = 1024;
                                    v947 = v336;
                                    v948 = 2080;
                                    v949 = v337;
                                    v950 = 2080;
                                    v951 = v338;
                                    v339 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                    v340 = v326;
                                    v341 = 74;
                                    goto LABEL_884;
                                  }

                                  goto LABEL_886;
                                }
                              }

                              else if (v323)
                              {
                                v683 = vp::get_log_context_info(&v855, a2, "vp::vx::Voice_Processor]", 23);
                                if (v857[0] >= 0)
                                {
                                  v684 = HIBYTE(v857[0]);
                                }

                                else
                                {
                                  v684 = v856;
                                }

                                v685 = vp::get_log(v683);
                                if (os_log_type_enabled(v685, OS_LOG_TYPE_ERROR))
                                {
                                  v686 = SHIBYTE(v857[0]);
                                  v687 = v855;
                                  v688 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v861);
                                  std::string::basic_string<std::string_view,0>(&v849, v688, v689);
                                  if (v686 >= 0)
                                  {
                                    v691 = &v855;
                                  }

                                  else
                                  {
                                    v691 = v687;
                                  }

                                  if (v684)
                                  {
                                    v692 = " ";
                                  }

                                  else
                                  {
                                    v692 = "";
                                  }

                                  if (v851[0] >= 0)
                                  {
                                    v693 = &v849;
                                  }

                                  else
                                  {
                                    v693 = v849;
                                  }

                                  v694 = WORD2(v861);
                                  v695 = HIWORD(v861);
                                  v696 = vp::get_log_source_file_path(v862, v690);
                                  *v943 = 136316674;
                                  *&v943[4] = v691;
                                  *&v943[12] = 2080;
                                  *&v943[14] = v692;
                                  *&v943[22] = 2080;
                                  v944 = "get required input frame count for downlink voice mix DSP";
                                  LOWORD(v945) = 2080;
                                  *(&v945 + 2) = v693;
                                  WORD5(v945) = 1024;
                                  HIDWORD(v945) = v694;
                                  v946 = 1024;
                                  v947 = v695;
                                  v948 = 2080;
                                  v949 = v696;
                                  v339 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                  v340 = v685;
                                  v341 = 64;
LABEL_884:
                                  _os_log_impl(&dword_2724B4000, v340, OS_LOG_TYPE_ERROR, v339, v943, v341);
                                  if (SHIBYTE(v851[0]) < 0)
                                  {
                                    operator delete(v849);
                                  }
                                }

LABEL_886:
                                if (SHIBYTE(v857[0]) < 0)
                                {
                                  operator delete(v855);
                                }
                              }

                              *this = 7;
                              *(this + 4) = 0;
                              if (SHIBYTE(v864) < 0)
                              {
                                std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v865, v863[0], v864 & 0x7FFFFFFFFFFFFFFFLL);
                              }

                              goto LABEL_1058;
                            }

                            v298 = vp::vx::io::Error::Error(&v867, &v873);
                            if (v870 >= 0)
                            {
                              v299 = HIBYTE(v870);
                            }

                            else
                            {
                              v299 = v869[1];
                            }

                            v300 = vp::get_log(v298);
                            v301 = os_log_type_enabled(v300, OS_LOG_TYPE_ERROR);
                            if (v299)
                            {
                              if (v301)
                              {
                                v302 = vp::get_log_context_info(&v861, a2, "vp::vx::Voice_Processor]", 23);
                                if (v863[0] >= 0)
                                {
                                  v303 = HIBYTE(v863[0]);
                                }

                                else
                                {
                                  v303 = v862;
                                }

                                v304 = vp::get_log(v302);
                                if (os_log_type_enabled(v304, OS_LOG_TYPE_ERROR))
                                {
                                  v305 = SHIBYTE(v863[0]);
                                  v306 = v861;
                                  v307 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v867);
                                  std::string::basic_string<std::string_view,0>(&v855, v307, v308);
                                  if (v305 >= 0)
                                  {
                                    v310 = &v861;
                                  }

                                  else
                                  {
                                    v310 = v306;
                                  }

                                  if (v303)
                                  {
                                    v311 = " ";
                                  }

                                  else
                                  {
                                    v311 = "";
                                  }

                                  if (v857[0] >= 0)
                                  {
                                    v312 = &v855;
                                  }

                                  else
                                  {
                                    v312 = v855;
                                  }

                                  v313 = WORD2(v867);
                                  v314 = HIWORD(v867);
                                  v315 = vp::get_log_source_file_path(v868, v309);
                                  if (v870 >= 0)
                                  {
                                    v316 = v869;
                                  }

                                  else
                                  {
                                    v316 = v869[0];
                                  }

                                  *v943 = 136316930;
                                  *&v943[4] = v310;
                                  *&v943[12] = 2080;
                                  *&v943[14] = v311;
                                  *&v943[22] = 2080;
                                  v944 = "get buffered output frame count for downlink voice mix DSP";
                                  LOWORD(v945) = 2080;
                                  *(&v945 + 2) = v312;
                                  WORD5(v945) = 1024;
                                  HIDWORD(v945) = v313;
                                  v946 = 1024;
                                  v947 = v314;
                                  v948 = 2080;
                                  v949 = v315;
                                  v950 = 2080;
                                  v951 = v316;
                                  v317 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                  v318 = v304;
                                  v319 = 74;
                                  goto LABEL_862;
                                }

                                goto LABEL_864;
                              }
                            }

                            else if (v301)
                            {
                              v669 = vp::get_log_context_info(&v861, a2, "vp::vx::Voice_Processor]", 23);
                              if (v863[0] >= 0)
                              {
                                v670 = HIBYTE(v863[0]);
                              }

                              else
                              {
                                v670 = v862;
                              }

                              v671 = vp::get_log(v669);
                              if (os_log_type_enabled(v671, OS_LOG_TYPE_ERROR))
                              {
                                v672 = SHIBYTE(v863[0]);
                                v673 = v861;
                                v674 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v867);
                                std::string::basic_string<std::string_view,0>(&v855, v674, v675);
                                if (v672 >= 0)
                                {
                                  v677 = &v861;
                                }

                                else
                                {
                                  v677 = v673;
                                }

                                if (v670)
                                {
                                  v678 = " ";
                                }

                                else
                                {
                                  v678 = "";
                                }

                                if (v857[0] >= 0)
                                {
                                  v679 = &v855;
                                }

                                else
                                {
                                  v679 = v855;
                                }

                                v680 = WORD2(v867);
                                v681 = HIWORD(v867);
                                v682 = vp::get_log_source_file_path(v868, v676);
                                *v943 = 136316674;
                                *&v943[4] = v677;
                                *&v943[12] = 2080;
                                *&v943[14] = v678;
                                *&v943[22] = 2080;
                                v944 = "get buffered output frame count for downlink voice mix DSP";
                                LOWORD(v945) = 2080;
                                *(&v945 + 2) = v679;
                                WORD5(v945) = 1024;
                                HIDWORD(v945) = v680;
                                v946 = 1024;
                                v947 = v681;
                                v948 = 2080;
                                v949 = v682;
                                v317 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                v318 = v671;
                                v319 = 64;
LABEL_862:
                                _os_log_impl(&dword_2724B4000, v318, OS_LOG_TYPE_ERROR, v317, v943, v319);
                                if (SHIBYTE(v857[0]) < 0)
                                {
                                  operator delete(v855);
                                }
                              }

LABEL_864:
                              if (SHIBYTE(v863[0]) < 0)
                              {
                                operator delete(v861);
                              }
                            }

                            *this = 7;
                            *(this + 4) = 0;
                            if (SHIBYTE(v870) < 0)
                            {
                              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v871, v869[0], v870 & 0x7FFFFFFFFFFFFFFFLL);
                            }

                            v8 = 0;
                            goto LABEL_66;
                          }

                          v276 = vp::vx::io::Error::Error(&v873, &v879);
                          if (v876 >= 0)
                          {
                            v277 = HIBYTE(v876);
                          }

                          else
                          {
                            v277 = v875[1];
                          }

                          v278 = vp::get_log(v276);
                          v279 = os_log_type_enabled(v278, OS_LOG_TYPE_ERROR);
                          if (v277)
                          {
                            if (v279)
                            {
                              v280 = vp::get_log_context_info(&v867, a2, "vp::vx::Voice_Processor]", 23);
                              if (v869[0] >= 0)
                              {
                                v281 = HIBYTE(v869[0]);
                              }

                              else
                              {
                                v281 = v868;
                              }

                              v282 = vp::get_log(v280);
                              if (os_log_type_enabled(v282, OS_LOG_TYPE_ERROR))
                              {
                                v283 = SHIBYTE(v869[0]);
                                v284 = v867;
                                v285 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v873);
                                std::string::basic_string<std::string_view,0>(&v861, v285, v286);
                                if (v283 >= 0)
                                {
                                  v288 = &v867;
                                }

                                else
                                {
                                  v288 = v284;
                                }

                                if (v281)
                                {
                                  v289 = " ";
                                }

                                else
                                {
                                  v289 = "";
                                }

                                if (v863[0] >= 0)
                                {
                                  v290 = &v861;
                                }

                                else
                                {
                                  v290 = v861;
                                }

                                v291 = WORD2(v873);
                                v292 = HIWORD(v873);
                                v293 = vp::get_log_source_file_path(v874, v287);
                                if (v876 >= 0)
                                {
                                  v294 = v875;
                                }

                                else
                                {
                                  v294 = v875[0];
                                }

                                *v943 = 136316930;
                                *&v943[4] = v288;
                                *&v943[12] = 2080;
                                *&v943[14] = v289;
                                *&v943[22] = 2080;
                                v944 = "get frame count deficit for downlink voice DSP";
                                LOWORD(v945) = 2080;
                                *(&v945 + 2) = v290;
                                WORD5(v945) = 1024;
                                HIDWORD(v945) = v291;
                                v946 = 1024;
                                v947 = v292;
                                v948 = 2080;
                                v949 = v293;
                                v950 = 2080;
                                v951 = v294;
                                v295 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                v296 = v282;
                                v297 = 74;
                                goto LABEL_840;
                              }

                              goto LABEL_842;
                            }
                          }

                          else if (v279)
                          {
                            v655 = vp::get_log_context_info(&v867, a2, "vp::vx::Voice_Processor]", 23);
                            if (v869[0] >= 0)
                            {
                              v656 = HIBYTE(v869[0]);
                            }

                            else
                            {
                              v656 = v868;
                            }

                            v657 = vp::get_log(v655);
                            if (os_log_type_enabled(v657, OS_LOG_TYPE_ERROR))
                            {
                              v658 = SHIBYTE(v869[0]);
                              v659 = v867;
                              v660 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v873);
                              std::string::basic_string<std::string_view,0>(&v861, v660, v661);
                              if (v658 >= 0)
                              {
                                v663 = &v867;
                              }

                              else
                              {
                                v663 = v659;
                              }

                              if (v656)
                              {
                                v664 = " ";
                              }

                              else
                              {
                                v664 = "";
                              }

                              if (v863[0] >= 0)
                              {
                                v665 = &v861;
                              }

                              else
                              {
                                v665 = v861;
                              }

                              v666 = WORD2(v873);
                              v667 = HIWORD(v873);
                              v668 = vp::get_log_source_file_path(v874, v662);
                              *v943 = 136316674;
                              *&v943[4] = v663;
                              *&v943[12] = 2080;
                              *&v943[14] = v664;
                              *&v943[22] = 2080;
                              v944 = "get frame count deficit for downlink voice DSP";
                              LOWORD(v945) = 2080;
                              *(&v945 + 2) = v665;
                              WORD5(v945) = 1024;
                              HIDWORD(v945) = v666;
                              v946 = 1024;
                              v947 = v667;
                              v948 = 2080;
                              v949 = v668;
                              v295 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                              v296 = v657;
                              v297 = 64;
LABEL_840:
                              _os_log_impl(&dword_2724B4000, v296, OS_LOG_TYPE_ERROR, v295, v943, v297);
                              if (SHIBYTE(v863[0]) < 0)
                              {
                                operator delete(v861);
                              }
                            }

LABEL_842:
                            if (SHIBYTE(v869[0]) < 0)
                            {
                              operator delete(v867);
                            }
                          }

                          *this = 7;
                          *(this + 4) = 0;
                          if (SHIBYTE(v876) < 0)
                          {
                            std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v877, v875[0], v876 & 0x7FFFFFFFFFFFFFFFLL);
                          }

                          v8 = 0;
LABEL_69:
                          if (SHIBYTE(v882) < 0)
                          {
                            (*(*v883 + 24))(v883, v881[0], v882 & 0x7FFFFFFFFFFFFFFFLL, 1);
                          }

LABEL_71:
                          if (v890)
                          {
                            goto LABEL_74;
                          }

                          goto LABEL_72;
                        }

                        v254 = vp::vx::io::Error::Error(&v879, &v885);
                        if (v882 >= 0)
                        {
                          v255 = HIBYTE(v882);
                        }

                        else
                        {
                          v255 = v881[1];
                        }

                        v256 = vp::get_log(v254);
                        v257 = os_log_type_enabled(v256, OS_LOG_TYPE_ERROR);
                        if (v255)
                        {
                          if (v257)
                          {
                            v258 = vp::get_log_context_info(&v873, a2, "vp::vx::Voice_Processor]", 23);
                            if (v875[0] >= 0)
                            {
                              v259 = HIBYTE(v875[0]);
                            }

                            else
                            {
                              v259 = v874;
                            }

                            v260 = vp::get_log(v258);
                            if (os_log_type_enabled(v260, OS_LOG_TYPE_ERROR))
                            {
                              v261 = SHIBYTE(v875[0]);
                              v262 = v873;
                              v263 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v879);
                              std::string::basic_string<std::string_view,0>(&v867, v263, v264);
                              if (v261 >= 0)
                              {
                                v266 = &v873;
                              }

                              else
                              {
                                v266 = v262;
                              }

                              if (v259)
                              {
                                v267 = " ";
                              }

                              else
                              {
                                v267 = "";
                              }

                              if (v869[0] >= 0)
                              {
                                v268 = &v867;
                              }

                              else
                              {
                                v268 = v867;
                              }

                              v269 = WORD2(v879);
                              v270 = HIWORD(v879);
                              v271 = vp::get_log_source_file_path(v880, v265);
                              if (v882 >= 0)
                              {
                                v272 = v881;
                              }

                              else
                              {
                                v272 = v881[0];
                              }

                              *v943 = 136316930;
                              *&v943[4] = v266;
                              *&v943[12] = 2080;
                              *&v943[14] = v267;
                              *&v943[22] = 2080;
                              v944 = "get buffered input frame count for downlink voice DSP";
                              LOWORD(v945) = 2080;
                              *(&v945 + 2) = v268;
                              WORD5(v945) = 1024;
                              HIDWORD(v945) = v269;
                              v946 = 1024;
                              v947 = v270;
                              v948 = 2080;
                              v949 = v271;
                              v950 = 2080;
                              v951 = v272;
                              v273 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                              v274 = v260;
                              v275 = 74;
                              goto LABEL_818;
                            }

                            goto LABEL_820;
                          }
                        }

                        else if (v257)
                        {
                          v641 = vp::get_log_context_info(&v873, a2, "vp::vx::Voice_Processor]", 23);
                          if (v875[0] >= 0)
                          {
                            v642 = HIBYTE(v875[0]);
                          }

                          else
                          {
                            v642 = v874;
                          }

                          v643 = vp::get_log(v641);
                          if (os_log_type_enabled(v643, OS_LOG_TYPE_ERROR))
                          {
                            v644 = SHIBYTE(v875[0]);
                            v645 = v873;
                            v646 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v879);
                            std::string::basic_string<std::string_view,0>(&v867, v646, v647);
                            if (v644 >= 0)
                            {
                              v649 = &v873;
                            }

                            else
                            {
                              v649 = v645;
                            }

                            if (v642)
                            {
                              v650 = " ";
                            }

                            else
                            {
                              v650 = "";
                            }

                            if (v869[0] >= 0)
                            {
                              v651 = &v867;
                            }

                            else
                            {
                              v651 = v867;
                            }

                            v652 = WORD2(v879);
                            v653 = HIWORD(v879);
                            v654 = vp::get_log_source_file_path(v880, v648);
                            *v943 = 136316674;
                            *&v943[4] = v649;
                            *&v943[12] = 2080;
                            *&v943[14] = v650;
                            *&v943[22] = 2080;
                            v944 = "get buffered input frame count for downlink voice DSP";
                            LOWORD(v945) = 2080;
                            *(&v945 + 2) = v651;
                            WORD5(v945) = 1024;
                            HIDWORD(v945) = v652;
                            v946 = 1024;
                            v947 = v653;
                            v948 = 2080;
                            v949 = v654;
                            v273 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                            v274 = v643;
                            v275 = 64;
LABEL_818:
                            _os_log_impl(&dword_2724B4000, v274, OS_LOG_TYPE_ERROR, v273, v943, v275);
                            if (SHIBYTE(v869[0]) < 0)
                            {
                              operator delete(v867);
                            }
                          }

LABEL_820:
                          if (SHIBYTE(v875[0]) < 0)
                          {
                            operator delete(v873);
                          }
                        }

                        *this = 7;
                        *(this + 4) = 0;
                        if (SHIBYTE(v882) < 0)
                        {
                          std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v883, v881[0], v882 & 0x7FFFFFFFFFFFFFFFLL);
                        }

                        v8 = 0;
LABEL_72:
                        if (SHIBYTE(v888) < 0)
                        {
                          (*(*v889 + 24))(v889, v887[0], v888 & 0x7FFFFFFFFFFFFFFFLL, 1);
                        }

                        goto LABEL_74;
                      }

                      v232 = vp::vx::io::Error::Error(&v885, &v891);
                      if (v888 >= 0)
                      {
                        v233 = HIBYTE(v888);
                      }

                      else
                      {
                        v233 = v887[1];
                      }

                      v234 = vp::get_log(v232);
                      v235 = os_log_type_enabled(v234, OS_LOG_TYPE_ERROR);
                      if (v233)
                      {
                        if (v235)
                        {
                          v236 = vp::get_log_context_info(&v879, a2, "vp::vx::Voice_Processor]", 23);
                          if (v881[0] >= 0)
                          {
                            v237 = HIBYTE(v881[0]);
                          }

                          else
                          {
                            v237 = v880;
                          }

                          v238 = vp::get_log(v236);
                          if (os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
                          {
                            v239 = SHIBYTE(v881[0]);
                            v240 = v879;
                            v241 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v885);
                            std::string::basic_string<std::string_view,0>(&v873, v241, v242);
                            if (v239 >= 0)
                            {
                              v244 = &v879;
                            }

                            else
                            {
                              v244 = v240;
                            }

                            if (v237)
                            {
                              v245 = " ";
                            }

                            else
                            {
                              v245 = "";
                            }

                            if (v875[0] >= 0)
                            {
                              v246 = &v873;
                            }

                            else
                            {
                              v246 = v873;
                            }

                            v247 = WORD2(v885);
                            v248 = HIWORD(v885);
                            v249 = vp::get_log_source_file_path(v886, v243);
                            if (v888 >= 0)
                            {
                              v250 = v887;
                            }

                            else
                            {
                              v250 = v887[0];
                            }

                            *v943 = 136316930;
                            *&v943[4] = v244;
                            *&v943[12] = 2080;
                            *&v943[14] = v245;
                            *&v943[22] = 2080;
                            v944 = "get required input frame count for downlink voice DSP";
                            LOWORD(v945) = 2080;
                            *(&v945 + 2) = v246;
                            WORD5(v945) = 1024;
                            HIDWORD(v945) = v247;
                            v946 = 1024;
                            v947 = v248;
                            v948 = 2080;
                            v949 = v249;
                            v950 = 2080;
                            v951 = v250;
                            v251 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                            v252 = v238;
                            v253 = 74;
                            goto LABEL_796;
                          }

                          goto LABEL_798;
                        }
                      }

                      else if (v235)
                      {
                        v627 = vp::get_log_context_info(&v879, a2, "vp::vx::Voice_Processor]", 23);
                        if (v881[0] >= 0)
                        {
                          v628 = HIBYTE(v881[0]);
                        }

                        else
                        {
                          v628 = v880;
                        }

                        v629 = vp::get_log(v627);
                        if (os_log_type_enabled(v629, OS_LOG_TYPE_ERROR))
                        {
                          v630 = SHIBYTE(v881[0]);
                          v631 = v879;
                          v632 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v885);
                          std::string::basic_string<std::string_view,0>(&v873, v632, v633);
                          if (v630 >= 0)
                          {
                            v635 = &v879;
                          }

                          else
                          {
                            v635 = v631;
                          }

                          if (v628)
                          {
                            v636 = " ";
                          }

                          else
                          {
                            v636 = "";
                          }

                          if (v875[0] >= 0)
                          {
                            v637 = &v873;
                          }

                          else
                          {
                            v637 = v873;
                          }

                          v638 = WORD2(v885);
                          v639 = HIWORD(v885);
                          v640 = vp::get_log_source_file_path(v886, v634);
                          *v943 = 136316674;
                          *&v943[4] = v635;
                          *&v943[12] = 2080;
                          *&v943[14] = v636;
                          *&v943[22] = 2080;
                          v944 = "get required input frame count for downlink voice DSP";
                          LOWORD(v945) = 2080;
                          *(&v945 + 2) = v637;
                          WORD5(v945) = 1024;
                          HIDWORD(v945) = v638;
                          v946 = 1024;
                          v947 = v639;
                          v948 = 2080;
                          v949 = v640;
                          v251 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                          v252 = v629;
                          v253 = 64;
LABEL_796:
                          _os_log_impl(&dword_2724B4000, v252, OS_LOG_TYPE_ERROR, v251, v943, v253);
                          if (SHIBYTE(v875[0]) < 0)
                          {
                            operator delete(v873);
                          }
                        }

LABEL_798:
                        if (SHIBYTE(v881[0]) < 0)
                        {
                          operator delete(v879);
                        }
                      }

                      *this = 7;
                      *(this + 4) = 0;
                      if (SHIBYTE(v888) < 0)
                      {
                        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v889, v887[0], v888 & 0x7FFFFFFFFFFFFFFFLL);
                      }

                      v8 = 0;
LABEL_74:
                      if ((v896 & 1) == 0 && SHIBYTE(v894) < 0)
                      {
                        (*(*v895 + 24))(v895, v893[0], v894 & 0x7FFFFFFFFFFFFFFFLL, 1);
                      }

                      if (v902)
                      {
LABEL_80:
                        if (v908)
                        {
                          goto LABEL_83;
                        }

                        goto LABEL_81;
                      }

LABEL_78:
                      if (SHIBYTE(v900) < 0)
                      {
                        (*(*v901 + 24))(v901, v899[0], v900 & 0x7FFFFFFFFFFFFFFFLL, 1);
                      }

                      goto LABEL_80;
                    }

                    v210 = vp::vx::io::Error::Error(&v891, &v897);
                    if (v894 >= 0)
                    {
                      v211 = HIBYTE(v894);
                    }

                    else
                    {
                      v211 = v893[1];
                    }

                    v212 = vp::get_log(v210);
                    v213 = os_log_type_enabled(v212, OS_LOG_TYPE_ERROR);
                    if (v211)
                    {
                      if (v213)
                      {
                        v214 = vp::get_log_context_info(&v885, a2, "vp::vx::Voice_Processor]", 23);
                        if (v887[0] >= 0)
                        {
                          v215 = HIBYTE(v887[0]);
                        }

                        else
                        {
                          v215 = v886;
                        }

                        v216 = vp::get_log(v214);
                        if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
                        {
                          v217 = SHIBYTE(v887[0]);
                          v218 = v885;
                          v219 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v891);
                          std::string::basic_string<std::string_view,0>(&v879, v219, v220);
                          if (v217 >= 0)
                          {
                            v222 = &v885;
                          }

                          else
                          {
                            v222 = v218;
                          }

                          if (v215)
                          {
                            v223 = " ";
                          }

                          else
                          {
                            v223 = "";
                          }

                          if (v881[0] >= 0)
                          {
                            v224 = &v879;
                          }

                          else
                          {
                            v224 = v879;
                          }

                          v225 = WORD2(v891);
                          v226 = HIWORD(v891);
                          v227 = vp::get_log_source_file_path(v892, v221);
                          if (v894 >= 0)
                          {
                            v228 = v893;
                          }

                          else
                          {
                            v228 = v893[0];
                          }

                          *v943 = 136316930;
                          *&v943[4] = v222;
                          *&v943[12] = 2080;
                          *&v943[14] = v223;
                          *&v943[22] = 2080;
                          v944 = "get buffered output frame count for downlink voice DSP";
                          LOWORD(v945) = 2080;
                          *(&v945 + 2) = v224;
                          WORD5(v945) = 1024;
                          HIDWORD(v945) = v225;
                          v946 = 1024;
                          v947 = v226;
                          v948 = 2080;
                          v949 = v227;
                          v950 = 2080;
                          v951 = v228;
                          v229 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                          v230 = v216;
                          v231 = 74;
                          goto LABEL_774;
                        }

                        goto LABEL_776;
                      }
                    }

                    else if (v213)
                    {
                      v613 = vp::get_log_context_info(&v885, a2, "vp::vx::Voice_Processor]", 23);
                      if (v887[0] >= 0)
                      {
                        v614 = HIBYTE(v887[0]);
                      }

                      else
                      {
                        v614 = v886;
                      }

                      v615 = vp::get_log(v613);
                      if (os_log_type_enabled(v615, OS_LOG_TYPE_ERROR))
                      {
                        v616 = SHIBYTE(v887[0]);
                        v617 = v885;
                        v618 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v891);
                        std::string::basic_string<std::string_view,0>(&v879, v618, v619);
                        if (v616 >= 0)
                        {
                          v621 = &v885;
                        }

                        else
                        {
                          v621 = v617;
                        }

                        if (v614)
                        {
                          v622 = " ";
                        }

                        else
                        {
                          v622 = "";
                        }

                        if (v881[0] >= 0)
                        {
                          v623 = &v879;
                        }

                        else
                        {
                          v623 = v879;
                        }

                        v624 = WORD2(v891);
                        v625 = HIWORD(v891);
                        v626 = vp::get_log_source_file_path(v892, v620);
                        *v943 = 136316674;
                        *&v943[4] = v621;
                        *&v943[12] = 2080;
                        *&v943[14] = v622;
                        *&v943[22] = 2080;
                        v944 = "get buffered output frame count for downlink voice DSP";
                        LOWORD(v945) = 2080;
                        *(&v945 + 2) = v623;
                        WORD5(v945) = 1024;
                        HIDWORD(v945) = v624;
                        v946 = 1024;
                        v947 = v625;
                        v948 = 2080;
                        v949 = v626;
                        v229 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                        v230 = v615;
                        v231 = 64;
LABEL_774:
                        _os_log_impl(&dword_2724B4000, v230, OS_LOG_TYPE_ERROR, v229, v943, v231);
                        if (SHIBYTE(v881[0]) < 0)
                        {
                          operator delete(v879);
                        }
                      }

LABEL_776:
                      if (SHIBYTE(v887[0]) < 0)
                      {
                        operator delete(v885);
                      }
                    }

                    *this = 7;
                    *(this + 4) = 0;
                    if (SHIBYTE(v894) < 0)
                    {
                      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v895, v893[0], v894 & 0x7FFFFFFFFFFFFFFFLL);
                    }

                    v8 = 0;
                    goto LABEL_78;
                  }

                  v188 = vp::vx::io::Error::Error(&v897, &v903);
                  if (v900 >= 0)
                  {
                    v189 = HIBYTE(v900);
                  }

                  else
                  {
                    v189 = v899[1];
                  }

                  v190 = vp::get_log(v188);
                  v191 = os_log_type_enabled(v190, OS_LOG_TYPE_ERROR);
                  if (v189)
                  {
                    if (v191)
                    {
                      v192 = vp::get_log_context_info(&v891, a2, "vp::vx::Voice_Processor]", 23);
                      if (v893[0] >= 0)
                      {
                        v193 = HIBYTE(v893[0]);
                      }

                      else
                      {
                        v193 = v892;
                      }

                      v194 = vp::get_log(v192);
                      if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
                      {
                        v195 = SHIBYTE(v893[0]);
                        v196 = v891;
                        v197 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v897);
                        std::string::basic_string<std::string_view,0>(&v885, v197, v198);
                        if (v195 >= 0)
                        {
                          v200 = &v891;
                        }

                        else
                        {
                          v200 = v196;
                        }

                        if (v193)
                        {
                          v201 = " ";
                        }

                        else
                        {
                          v201 = "";
                        }

                        if (v887[0] >= 0)
                        {
                          v202 = &v885;
                        }

                        else
                        {
                          v202 = v885;
                        }

                        v203 = WORD2(v897);
                        v204 = HIWORD(v897);
                        v205 = vp::get_log_source_file_path(v898, v199);
                        if (v900 >= 0)
                        {
                          v206 = v899;
                        }

                        else
                        {
                          v206 = v899[0];
                        }

                        *v943 = 136316930;
                        *&v943[4] = v200;
                        *&v943[12] = 2080;
                        *&v943[14] = v201;
                        *&v943[22] = 2080;
                        v944 = "get frame deficit for downlink dynamics DSP";
                        LOWORD(v945) = 2080;
                        *(&v945 + 2) = v202;
                        WORD5(v945) = 1024;
                        HIDWORD(v945) = v203;
                        v946 = 1024;
                        v947 = v204;
                        v948 = 2080;
                        v949 = v205;
                        v950 = 2080;
                        v951 = v206;
                        v207 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                        v208 = v194;
                        v209 = 74;
                        goto LABEL_752;
                      }

                      goto LABEL_754;
                    }
                  }

                  else if (v191)
                  {
                    v599 = vp::get_log_context_info(&v891, a2, "vp::vx::Voice_Processor]", 23);
                    if (v893[0] >= 0)
                    {
                      v600 = HIBYTE(v893[0]);
                    }

                    else
                    {
                      v600 = v892;
                    }

                    v601 = vp::get_log(v599);
                    if (os_log_type_enabled(v601, OS_LOG_TYPE_ERROR))
                    {
                      v602 = SHIBYTE(v893[0]);
                      v603 = v891;
                      v604 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v897);
                      std::string::basic_string<std::string_view,0>(&v885, v604, v605);
                      if (v602 >= 0)
                      {
                        v607 = &v891;
                      }

                      else
                      {
                        v607 = v603;
                      }

                      if (v600)
                      {
                        v608 = " ";
                      }

                      else
                      {
                        v608 = "";
                      }

                      if (v887[0] >= 0)
                      {
                        v609 = &v885;
                      }

                      else
                      {
                        v609 = v885;
                      }

                      v610 = WORD2(v897);
                      v611 = HIWORD(v897);
                      v612 = vp::get_log_source_file_path(v898, v606);
                      *v943 = 136316674;
                      *&v943[4] = v607;
                      *&v943[12] = 2080;
                      *&v943[14] = v608;
                      *&v943[22] = 2080;
                      v944 = "get frame deficit for downlink dynamics DSP";
                      LOWORD(v945) = 2080;
                      *(&v945 + 2) = v609;
                      WORD5(v945) = 1024;
                      HIDWORD(v945) = v610;
                      v946 = 1024;
                      v947 = v611;
                      v948 = 2080;
                      v949 = v612;
                      v207 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                      v208 = v601;
                      v209 = 64;
LABEL_752:
                      _os_log_impl(&dword_2724B4000, v208, OS_LOG_TYPE_ERROR, v207, v943, v209);
                      if (SHIBYTE(v887[0]) < 0)
                      {
                        operator delete(v885);
                      }
                    }

LABEL_754:
                    if (SHIBYTE(v893[0]) < 0)
                    {
                      operator delete(v891);
                    }
                  }

                  *this = 7;
                  *(this + 4) = 0;
                  if (SHIBYTE(v900) < 0)
                  {
                    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v901, v899[0], v900 & 0x7FFFFFFFFFFFFFFFLL);
                  }

                  v8 = 0;
LABEL_81:
                  if (SHIBYTE(v906) < 0)
                  {
                    (*(*v907 + 24))(v907, v905[0], v906 & 0x7FFFFFFFFFFFFFFFLL, 1);
                  }

LABEL_83:
                  if (v914)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_84;
                }

                v166 = vp::vx::io::Error::Error(&v903, &v909);
                if (v906 >= 0)
                {
                  v167 = HIBYTE(v906);
                }

                else
                {
                  v167 = v905[1];
                }

                v168 = vp::get_log(v166);
                v169 = os_log_type_enabled(v168, OS_LOG_TYPE_ERROR);
                if (v167)
                {
                  if (v169)
                  {
                    v170 = vp::get_log_context_info(&v897, a2, "vp::vx::Voice_Processor]", 23);
                    if (v899[0] >= 0)
                    {
                      v171 = HIBYTE(v899[0]);
                    }

                    else
                    {
                      v171 = v898;
                    }

                    v172 = vp::get_log(v170);
                    if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
                    {
                      v173 = SHIBYTE(v899[0]);
                      v174 = v897;
                      v175 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v903);
                      std::string::basic_string<std::string_view,0>(&v891, v175, v176);
                      if (v173 >= 0)
                      {
                        v178 = &v897;
                      }

                      else
                      {
                        v178 = v174;
                      }

                      if (v171)
                      {
                        v179 = " ";
                      }

                      else
                      {
                        v179 = "";
                      }

                      if (v893[0] >= 0)
                      {
                        v180 = &v891;
                      }

                      else
                      {
                        v180 = v891;
                      }

                      v181 = WORD2(v903);
                      v182 = HIWORD(v903);
                      v183 = vp::get_log_source_file_path(v904, v177);
                      if (v906 >= 0)
                      {
                        v184 = v905;
                      }

                      else
                      {
                        v184 = v905[0];
                      }

                      *v943 = 136316930;
                      *&v943[4] = v178;
                      *&v943[12] = 2080;
                      *&v943[14] = v179;
                      *&v943[22] = 2080;
                      v944 = "get buffered input frame count for downlink dynamics DSP";
                      LOWORD(v945) = 2080;
                      *(&v945 + 2) = v180;
                      WORD5(v945) = 1024;
                      HIDWORD(v945) = v181;
                      v946 = 1024;
                      v947 = v182;
                      v948 = 2080;
                      v949 = v183;
                      v950 = 2080;
                      v951 = v184;
                      v185 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                      v186 = v172;
                      v187 = 74;
                      goto LABEL_730;
                    }

                    goto LABEL_732;
                  }
                }

                else if (v169)
                {
                  v585 = vp::get_log_context_info(&v897, a2, "vp::vx::Voice_Processor]", 23);
                  if (v899[0] >= 0)
                  {
                    v586 = HIBYTE(v899[0]);
                  }

                  else
                  {
                    v586 = v898;
                  }

                  v587 = vp::get_log(v585);
                  if (os_log_type_enabled(v587, OS_LOG_TYPE_ERROR))
                  {
                    v588 = SHIBYTE(v899[0]);
                    v589 = v897;
                    v590 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v903);
                    std::string::basic_string<std::string_view,0>(&v891, v590, v591);
                    if (v588 >= 0)
                    {
                      v593 = &v897;
                    }

                    else
                    {
                      v593 = v589;
                    }

                    if (v586)
                    {
                      v594 = " ";
                    }

                    else
                    {
                      v594 = "";
                    }

                    if (v893[0] >= 0)
                    {
                      v595 = &v891;
                    }

                    else
                    {
                      v595 = v891;
                    }

                    v596 = WORD2(v903);
                    v597 = HIWORD(v903);
                    v598 = vp::get_log_source_file_path(v904, v592);
                    *v943 = 136316674;
                    *&v943[4] = v593;
                    *&v943[12] = 2080;
                    *&v943[14] = v594;
                    *&v943[22] = 2080;
                    v944 = "get buffered input frame count for downlink dynamics DSP";
                    LOWORD(v945) = 2080;
                    *(&v945 + 2) = v595;
                    WORD5(v945) = 1024;
                    HIDWORD(v945) = v596;
                    v946 = 1024;
                    v947 = v597;
                    v948 = 2080;
                    v949 = v598;
                    v185 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                    v186 = v587;
                    v187 = 64;
LABEL_730:
                    _os_log_impl(&dword_2724B4000, v186, OS_LOG_TYPE_ERROR, v185, v943, v187);
                    if (SHIBYTE(v893[0]) < 0)
                    {
                      operator delete(v891);
                    }
                  }

LABEL_732:
                  if (SHIBYTE(v899[0]) < 0)
                  {
                    operator delete(v897);
                  }
                }

                *this = 7;
                *(this + 4) = 0;
                if (SHIBYTE(v906) < 0)
                {
                  std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v907, v905[0], v906 & 0x7FFFFFFFFFFFFFFFLL);
                }

                v8 = 0;
LABEL_84:
                if (SHIBYTE(v912) < 0)
                {
                  (*(*v913 + 24))(v913, v911[0], v912 & 0x7FFFFFFFFFFFFFFFLL, 1);
                }

                goto LABEL_86;
              }

              v144 = vp::vx::io::Error::Error(&v909, &__dst);
              if (v912 >= 0)
              {
                v145 = HIBYTE(v912);
              }

              else
              {
                v145 = v911[1];
              }

              v146 = vp::get_log(v144);
              v147 = os_log_type_enabled(v146, OS_LOG_TYPE_ERROR);
              if (v145)
              {
                if (v147)
                {
                  v148 = vp::get_log_context_info(&v903, a2, "vp::vx::Voice_Processor]", 23);
                  if (v905[0] >= 0)
                  {
                    v149 = HIBYTE(v905[0]);
                  }

                  else
                  {
                    v149 = v904;
                  }

                  v150 = vp::get_log(v148);
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                  {
                    v151 = SHIBYTE(v905[0]);
                    v152 = v903;
                    v153 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v909);
                    std::string::basic_string<std::string_view,0>(&v897, v153, v154);
                    if (v151 >= 0)
                    {
                      v156 = &v903;
                    }

                    else
                    {
                      v156 = v152;
                    }

                    if (v149)
                    {
                      v157 = " ";
                    }

                    else
                    {
                      v157 = "";
                    }

                    if (v899[0] >= 0)
                    {
                      v158 = &v897;
                    }

                    else
                    {
                      v158 = v897;
                    }

                    v159 = WORD2(v909);
                    v160 = HIWORD(v909);
                    v161 = vp::get_log_source_file_path(v910, v155);
                    if (v912 >= 0)
                    {
                      v162 = v911;
                    }

                    else
                    {
                      v162 = v911[0];
                    }

                    *v943 = 136316930;
                    *&v943[4] = v156;
                    *&v943[12] = 2080;
                    *&v943[14] = v157;
                    *&v943[22] = 2080;
                    v944 = "get required input frame count for downlink dynamics DSP";
                    LOWORD(v945) = 2080;
                    *(&v945 + 2) = v158;
                    WORD5(v945) = 1024;
                    HIDWORD(v945) = v159;
                    v946 = 1024;
                    v947 = v160;
                    v948 = 2080;
                    v949 = v161;
                    v950 = 2080;
                    v951 = v162;
                    v163 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                    v164 = v150;
                    v165 = 74;
                    goto LABEL_708;
                  }

                  goto LABEL_710;
                }
              }

              else if (v147)
              {
                v571 = vp::get_log_context_info(&v903, a2, "vp::vx::Voice_Processor]", 23);
                if (v905[0] >= 0)
                {
                  v572 = HIBYTE(v905[0]);
                }

                else
                {
                  v572 = v904;
                }

                v573 = vp::get_log(v571);
                if (os_log_type_enabled(v573, OS_LOG_TYPE_ERROR))
                {
                  v574 = SHIBYTE(v905[0]);
                  v575 = v903;
                  v576 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v909);
                  std::string::basic_string<std::string_view,0>(&v897, v576, v577);
                  if (v574 >= 0)
                  {
                    v579 = &v903;
                  }

                  else
                  {
                    v579 = v575;
                  }

                  if (v572)
                  {
                    v580 = " ";
                  }

                  else
                  {
                    v580 = "";
                  }

                  if (v899[0] >= 0)
                  {
                    v581 = &v897;
                  }

                  else
                  {
                    v581 = v897;
                  }

                  v582 = WORD2(v909);
                  v583 = HIWORD(v909);
                  v584 = vp::get_log_source_file_path(v910, v578);
                  *v943 = 136316674;
                  *&v943[4] = v579;
                  *&v943[12] = 2080;
                  *&v943[14] = v580;
                  *&v943[22] = 2080;
                  v944 = "get required input frame count for downlink dynamics DSP";
                  LOWORD(v945) = 2080;
                  *(&v945 + 2) = v581;
                  WORD5(v945) = 1024;
                  HIDWORD(v945) = v582;
                  v946 = 1024;
                  v947 = v583;
                  v948 = 2080;
                  v949 = v584;
                  v163 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                  v164 = v573;
                  v165 = 64;
LABEL_708:
                  _os_log_impl(&dword_2724B4000, v164, OS_LOG_TYPE_ERROR, v163, v943, v165);
                  if (SHIBYTE(v899[0]) < 0)
                  {
                    operator delete(v897);
                  }
                }

LABEL_710:
                if (SHIBYTE(v905[0]) < 0)
                {
                  operator delete(v903);
                }
              }

              *this = 7;
              *(this + 4) = 0;
              if (SHIBYTE(v912) < 0)
              {
                std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v913, v911[0], v912 & 0x7FFFFFFFFFFFFFFFLL);
              }

              v8 = 0;
LABEL_86:
              if ((v920 & 1) == 0 && SHIBYTE(v918) < 0)
              {
                (*(*v919 + 24))(v919, v917[0], v918 & 0x7FFFFFFFFFFFFFFFLL, 1);
              }

              if (v926)
              {
LABEL_92:
                if (v932)
                {
                  goto LABEL_95;
                }

                goto LABEL_93;
              }

LABEL_90:
              if (SHIBYTE(v924) < 0)
              {
                (*(*v925 + 24))(v925, v923[0], v924 & 0x7FFFFFFFFFFFFFFFLL, 1);
              }

              goto LABEL_92;
            }

            v122 = vp::vx::io::Error::Error(&__dst, &__p);
            if (v918 >= 0)
            {
              v123 = HIBYTE(v918);
            }

            else
            {
              v123 = v917[1];
            }

            v124 = vp::get_log(v122);
            v125 = os_log_type_enabled(v124, OS_LOG_TYPE_ERROR);
            if (v123)
            {
              if (v125)
              {
                v126 = vp::get_log_context_info(&v909, a2, "vp::vx::Voice_Processor]", 23);
                if (v911[0] >= 0)
                {
                  v127 = HIBYTE(v911[0]);
                }

                else
                {
                  v127 = v910;
                }

                v128 = vp::get_log(v126);
                if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                {
                  v129 = SHIBYTE(v911[0]);
                  v130 = v909;
                  v131 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(__dst);
                  std::string::basic_string<std::string_view,0>(&v903, v131, v132);
                  if (v129 >= 0)
                  {
                    v134 = &v909;
                  }

                  else
                  {
                    v134 = v130;
                  }

                  if (v127)
                  {
                    v135 = " ";
                  }

                  else
                  {
                    v135 = "";
                  }

                  if (v905[0] >= 0)
                  {
                    v136 = &v903;
                  }

                  else
                  {
                    v136 = v903;
                  }

                  v137 = WORD2(__dst);
                  v138 = HIWORD(__dst);
                  v139 = vp::get_log_source_file_path(v916, v133);
                  if (v918 >= 0)
                  {
                    v140 = v917;
                  }

                  else
                  {
                    v140 = v917[0];
                  }

                  *v943 = 136316930;
                  *&v943[4] = v134;
                  *&v943[12] = 2080;
                  *&v943[14] = v135;
                  *&v943[22] = 2080;
                  v944 = "get buffered output frame count for downlink dynamics DSP";
                  LOWORD(v945) = 2080;
                  *(&v945 + 2) = v136;
                  WORD5(v945) = 1024;
                  HIDWORD(v945) = v137;
                  v946 = 1024;
                  v947 = v138;
                  v948 = 2080;
                  v949 = v139;
                  v950 = 2080;
                  v951 = v140;
                  v141 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                  v142 = v128;
                  v143 = 74;
                  goto LABEL_686;
                }

                goto LABEL_688;
              }
            }

            else if (v125)
            {
              v557 = vp::get_log_context_info(&v909, a2, "vp::vx::Voice_Processor]", 23);
              if (v911[0] >= 0)
              {
                v558 = HIBYTE(v911[0]);
              }

              else
              {
                v558 = v910;
              }

              v559 = vp::get_log(v557);
              if (os_log_type_enabled(v559, OS_LOG_TYPE_ERROR))
              {
                v560 = SHIBYTE(v911[0]);
                v561 = v909;
                v562 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(__dst);
                std::string::basic_string<std::string_view,0>(&v903, v562, v563);
                if (v560 >= 0)
                {
                  v565 = &v909;
                }

                else
                {
                  v565 = v561;
                }

                if (v558)
                {
                  v566 = " ";
                }

                else
                {
                  v566 = "";
                }

                if (v905[0] >= 0)
                {
                  v567 = &v903;
                }

                else
                {
                  v567 = v903;
                }

                v568 = WORD2(__dst);
                v569 = HIWORD(__dst);
                v570 = vp::get_log_source_file_path(v916, v564);
                *v943 = 136316674;
                *&v943[4] = v565;
                *&v943[12] = 2080;
                *&v943[14] = v566;
                *&v943[22] = 2080;
                v944 = "get buffered output frame count for downlink dynamics DSP";
                LOWORD(v945) = 2080;
                *(&v945 + 2) = v567;
                WORD5(v945) = 1024;
                HIDWORD(v945) = v568;
                v946 = 1024;
                v947 = v569;
                v948 = 2080;
                v949 = v570;
                v141 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                v142 = v559;
                v143 = 64;
LABEL_686:
                _os_log_impl(&dword_2724B4000, v142, OS_LOG_TYPE_ERROR, v141, v943, v143);
                if (SHIBYTE(v905[0]) < 0)
                {
                  operator delete(v903);
                }
              }

LABEL_688:
              if (SHIBYTE(v911[0]) < 0)
              {
                operator delete(v909);
              }
            }

            *this = 7;
            *(this + 4) = 0;
            if (SHIBYTE(v918) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v919, v917[0], v918 & 0x7FFFFFFFFFFFFFFFLL);
            }

            v8 = 0;
            goto LABEL_90;
          }

          v100 = vp::vx::io::Error::Error(&__p, &v927);
          if (v924 >= 0)
          {
            v101 = HIBYTE(v924);
          }

          else
          {
            v101 = v923[1];
          }

          v102 = vp::get_log(v100);
          v103 = os_log_type_enabled(v102, OS_LOG_TYPE_ERROR);
          if (v101)
          {
            if (v103)
            {
              v104 = vp::get_log_context_info(&__dst, a2, "vp::vx::Voice_Processor]", 23);
              v105 = SHIBYTE(v917[0]);
              if (v917[0] >= 0)
              {
                v106 = HIBYTE(v917[0]);
              }

              else
              {
                v106 = v916;
              }

              v107 = vp::get_log(v104);
              if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
              {
                v108 = __dst;
                v109 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(__p);
                std::string::basic_string<std::string_view,0>(&v909, v109, v110);
                if (v105 >= 0)
                {
                  p_dst = &__dst;
                }

                else
                {
                  p_dst = v108;
                }

                if (v106)
                {
                  v113 = " ";
                }

                else
                {
                  v113 = "";
                }

                if (v911[0] >= 0)
                {
                  v114 = &v909;
                }

                else
                {
                  v114 = v909;
                }

                v115 = WORD2(__p);
                v116 = HIWORD(__p);
                v117 = vp::get_log_source_file_path(v922, v111);
                if (v924 >= 0)
                {
                  v118 = v923;
                }

                else
                {
                  v118 = v923[0];
                }

                *v943 = 136316930;
                *&v943[4] = p_dst;
                *&v943[12] = 2080;
                *&v943[14] = v113;
                *&v943[22] = 2080;
                v944 = "get required input frame count for downlink hardware DSP";
                LOWORD(v945) = 2080;
                *(&v945 + 2) = v114;
                WORD5(v945) = 1024;
                HIDWORD(v945) = v115;
                v946 = 1024;
                v947 = v116;
                v948 = 2080;
                v949 = v117;
                v950 = 2080;
                v951 = v118;
                v119 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                v120 = v107;
                v121 = 74;
LABEL_663:
                _os_log_impl(&dword_2724B4000, v120, OS_LOG_TYPE_ERROR, v119, v943, v121);
                if (SHIBYTE(v911[0]) < 0)
                {
                  operator delete(v909);
                }

                LOBYTE(v105) = HIBYTE(v917[0]);
                goto LABEL_666;
              }

              goto LABEL_666;
            }
          }

          else if (v103)
          {
            v544 = vp::get_log_context_info(&__dst, a2, "vp::vx::Voice_Processor]", 23);
            v105 = SHIBYTE(v917[0]);
            if (v917[0] >= 0)
            {
              v545 = HIBYTE(v917[0]);
            }

            else
            {
              v545 = v916;
            }

            v546 = vp::get_log(v544);
            if (os_log_type_enabled(v546, OS_LOG_TYPE_ERROR))
            {
              v547 = __dst;
              v548 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(__p);
              std::string::basic_string<std::string_view,0>(&v909, v548, v549);
              if (v105 >= 0)
              {
                v551 = &__dst;
              }

              else
              {
                v551 = v547;
              }

              if (v545)
              {
                v552 = " ";
              }

              else
              {
                v552 = "";
              }

              if (v911[0] >= 0)
              {
                v553 = &v909;
              }

              else
              {
                v553 = v909;
              }

              v554 = WORD2(__p);
              v555 = HIWORD(__p);
              v556 = vp::get_log_source_file_path(v922, v550);
              *v943 = 136316674;
              *&v943[4] = v551;
              *&v943[12] = 2080;
              *&v943[14] = v552;
              *&v943[22] = 2080;
              v944 = "get required input frame count for downlink hardware DSP";
              LOWORD(v945) = 2080;
              *(&v945 + 2) = v553;
              WORD5(v945) = 1024;
              HIDWORD(v945) = v554;
              v946 = 1024;
              v947 = v555;
              v948 = 2080;
              v949 = v556;
              v119 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
              v120 = v546;
              v121 = 64;
              goto LABEL_663;
            }

LABEL_666:
            if ((v105 & 0x80) != 0)
            {
              operator delete(__dst);
            }
          }

          *this = 7;
          *(this + 4) = 0;
          if (SHIBYTE(v924) < 0)
          {
            std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v925, v923[0], v924 & 0x7FFFFFFFFFFFFFFFLL);
          }

          v8 = 0;
LABEL_93:
          if (SHIBYTE(v930) < 0)
          {
            (*(*v931 + 24))(v931, v929[0], v930 & 0x7FFFFFFFFFFFFFFFLL, 1);
          }

LABEL_95:
          if (v940)
          {
            goto LABEL_98;
          }

          goto LABEL_96;
        }

        v78 = vp::vx::io::Error::Error(&v927, &v933);
        if (v930 >= 0)
        {
          v79 = HIBYTE(v930);
        }

        else
        {
          v79 = v929[1];
        }

        v80 = vp::get_log(v78);
        v81 = os_log_type_enabled(v80, OS_LOG_TYPE_ERROR);
        if (v79)
        {
          if (v81)
          {
            v82 = vp::get_log_context_info(&__p, a2, "vp::vx::Voice_Processor]", 23);
            v83 = SHIBYTE(v923[0]);
            if (v923[0] >= 0)
            {
              v84 = HIBYTE(v923[0]);
            }

            else
            {
              v84 = v922;
            }

            v85 = vp::get_log(v82);
            if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
            {
              v86 = __p;
              v87 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v927);
              std::string::basic_string<std::string_view,0>(&__dst, v87, v88);
              if (v83 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = v86;
              }

              if (v84)
              {
                v91 = " ";
              }

              else
              {
                v91 = "";
              }

              if (v917[0] >= 0)
              {
                v92 = &__dst;
              }

              else
              {
                v92 = __dst;
              }

              v93 = WORD2(v927);
              v94 = HIWORD(v927);
              v95 = vp::get_log_source_file_path(v928, v89);
              if (v930 >= 0)
              {
                v96 = v929;
              }

              else
              {
                v96 = v929[0];
              }

              *v943 = 136316930;
              *&v943[4] = p_p;
              *&v943[12] = 2080;
              *&v943[14] = v91;
              *&v943[22] = 2080;
              v944 = "get buffered input frame count for downlink hardware DSP";
              LOWORD(v945) = 2080;
              *(&v945 + 2) = v92;
              WORD5(v945) = 1024;
              HIDWORD(v945) = v93;
              v946 = 1024;
              v947 = v94;
              v948 = 2080;
              v949 = v95;
              v950 = 2080;
              v951 = v96;
              v97 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
              v98 = v85;
              v99 = 74;
LABEL_640:
              _os_log_impl(&dword_2724B4000, v98, OS_LOG_TYPE_ERROR, v97, v943, v99);
              if (SHIBYTE(v917[0]) < 0)
              {
                operator delete(__dst);
              }

              LOBYTE(v83) = HIBYTE(v923[0]);
              goto LABEL_643;
            }

            goto LABEL_643;
          }
        }

        else if (v81)
        {
          v531 = vp::get_log_context_info(&__p, a2, "vp::vx::Voice_Processor]", 23);
          v83 = SHIBYTE(v923[0]);
          if (v923[0] >= 0)
          {
            v532 = HIBYTE(v923[0]);
          }

          else
          {
            v532 = v922;
          }

          v533 = vp::get_log(v531);
          if (os_log_type_enabled(v533, OS_LOG_TYPE_ERROR))
          {
            v534 = __p;
            v535 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v927);
            std::string::basic_string<std::string_view,0>(&__dst, v535, v536);
            if (v83 >= 0)
            {
              v538 = &__p;
            }

            else
            {
              v538 = v534;
            }

            if (v532)
            {
              v539 = " ";
            }

            else
            {
              v539 = "";
            }

            if (v917[0] >= 0)
            {
              v540 = &__dst;
            }

            else
            {
              v540 = __dst;
            }

            v541 = WORD2(v927);
            v542 = HIWORD(v927);
            v543 = vp::get_log_source_file_path(v928, v537);
            *v943 = 136316674;
            *&v943[4] = v538;
            *&v943[12] = 2080;
            *&v943[14] = v539;
            *&v943[22] = 2080;
            v944 = "get buffered input frame count for downlink hardware DSP";
            LOWORD(v945) = 2080;
            *(&v945 + 2) = v540;
            WORD5(v945) = 1024;
            HIDWORD(v945) = v541;
            v946 = 1024;
            v947 = v542;
            v948 = 2080;
            v949 = v543;
            v97 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
            v98 = v533;
            v99 = 64;
            goto LABEL_640;
          }

LABEL_643:
          if ((v83 & 0x80) != 0)
          {
            operator delete(__p);
          }
        }

        *this = 7;
        *(this + 4) = 0;
        if (SHIBYTE(v930) < 0)
        {
          std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v931, v929[0], v930 & 0x7FFFFFFFFFFFFFFFLL);
        }

        v8 = 0;
LABEL_96:
        if (SHIBYTE(v938) < 0)
        {
          (*(*v939 + 24))(v939, v937[0], v938 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        goto LABEL_98;
      }

      v56 = vp::vx::io::Error::Error(&v933, buf);
      if (v938 >= 0)
      {
        v57 = HIBYTE(v938);
      }

      else
      {
        v57 = v937[1];
      }

      v58 = vp::get_log(v56);
      v59 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
      if (v57)
      {
        if (v59)
        {
          v60 = vp::get_log_context_info(&v927, a2, "vp::vx::Voice_Processor]", 23);
          v61 = SHIBYTE(v929[0]);
          if (v929[0] >= 0)
          {
            v62 = HIBYTE(v929[0]);
          }

          else
          {
            v62 = v928;
          }

          v63 = vp::get_log(v60);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            v64 = v927;
            v65 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v933);
            std::string::basic_string<std::string_view,0>(&__p, v65, v66);
            if (v61 >= 0)
            {
              v68 = &v927;
            }

            else
            {
              v68 = v64;
            }

            if (v62)
            {
              v69 = " ";
            }

            else
            {
              v69 = "";
            }

            if (v923[0] >= 0)
            {
              v70 = &__p;
            }

            else
            {
              v70 = __p;
            }

            v71 = v934;
            v72 = v935;
            v73 = vp::get_log_source_file_path(v936, v67);
            if (v938 >= 0)
            {
              v74 = v937;
            }

            else
            {
              v74 = v937[0];
            }

            *v943 = 136316930;
            *&v943[4] = v68;
            *&v943[12] = 2080;
            *&v943[14] = v69;
            *&v943[22] = 2080;
            v944 = "get downlink hardware DSP I/O block size";
            LOWORD(v945) = 2080;
            *(&v945 + 2) = v70;
            WORD5(v945) = 1024;
            HIDWORD(v945) = v71;
            v946 = 1024;
            v947 = v72;
            v948 = 2080;
            v949 = v73;
            v950 = 2080;
            v951 = v74;
            v75 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
            v76 = v63;
            v77 = 74;
LABEL_617:
            _os_log_impl(&dword_2724B4000, v76, OS_LOG_TYPE_ERROR, v75, v943, v77);
            if (SHIBYTE(v923[0]) < 0)
            {
              operator delete(__p);
            }

            LOBYTE(v61) = HIBYTE(v929[0]);
            goto LABEL_620;
          }

          goto LABEL_620;
        }
      }

      else if (v59)
      {
        v518 = vp::get_log_context_info(&v927, a2, "vp::vx::Voice_Processor]", 23);
        v61 = SHIBYTE(v929[0]);
        if (v929[0] >= 0)
        {
          v519 = HIBYTE(v929[0]);
        }

        else
        {
          v519 = v928;
        }

        v520 = vp::get_log(v518);
        if (os_log_type_enabled(v520, OS_LOG_TYPE_ERROR))
        {
          v521 = v927;
          v522 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v933);
          std::string::basic_string<std::string_view,0>(&__p, v522, v523);
          if (v61 >= 0)
          {
            v525 = &v927;
          }

          else
          {
            v525 = v521;
          }

          if (v519)
          {
            v526 = " ";
          }

          else
          {
            v526 = "";
          }

          if (v923[0] >= 0)
          {
            v527 = &__p;
          }

          else
          {
            v527 = __p;
          }

          v528 = v934;
          v529 = v935;
          v530 = vp::get_log_source_file_path(v936, v524);
          *v943 = 136316674;
          *&v943[4] = v525;
          *&v943[12] = 2080;
          *&v943[14] = v526;
          *&v943[22] = 2080;
          v944 = "get downlink hardware DSP I/O block size";
          LOWORD(v945) = 2080;
          *(&v945 + 2) = v527;
          WORD5(v945) = 1024;
          HIDWORD(v945) = v528;
          v946 = 1024;
          v947 = v529;
          v948 = 2080;
          v949 = v530;
          v75 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
          v76 = v520;
          v77 = 64;
          goto LABEL_617;
        }

LABEL_620:
        if ((v61 & 0x80) != 0)
        {
          operator delete(v927);
        }
      }

      *this = 7;
      *(this + 4) = 0;
      if (SHIBYTE(v938) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v939, v937[0], v938 & 0x7FFFFFFFFFFFFFFFLL);
      }

      v8 = 0;
LABEL_98:
      if ((v956 & 1) == 0 && SHIBYTE(v954) < 0)
      {
        (*(*v955 + 24))(v955, *&buf[16], v954 & 0x7FFFFFFFFFFFFFFFLL, 1);
      }

      if ((v942 & 1) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_102;
    }

    v39 = 0;
    v40 = a2 + 2700;
    while (1)
    {
      v41 = *(&xmmword_272756540 + v39);
      if (v41 > 3)
      {
        break;
      }

      v42 = 8 * v41;
      if (*(v40 + 8 * v41) != -1)
      {
        v43 = 1 << v41;
        v44 = *(a2 + 2592);
        if ((v44 & v43) == 0)
        {
          v45 = *(v40 + v42);
LABEL_115:
          v46 = v6[12];
          if (v45 >= (v6[13] - v46) >> 4)
          {
            *buf = 0x10012400000007;
            *&buf[8] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
            v953 = 0;
            v954 = 0;
            *&buf[16] = 0;
            vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v955);
            _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v943, buf);
            if (SHIBYTE(v954) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v955, *&buf[16], v954 & 0x7FFFFFFFFFFFFFFFLL);
            }
          }

          else
          {
            (*(**(v46 + 16 * v45) + 88))(v943);
          }

          if ((v946 & 1) == 0 && SBYTE7(v945) < 0)
          {
            (*(**(&v945 + 1) + 24))(*(&v945 + 1), *&v943[16], v945 & 0x7FFFFFFFFFFFFFFFLL, 1);
          }

          goto LABEL_120;
        }

LABEL_113:
        *(a2 + 2592) = v44 & ~v43;
      }

LABEL_120:
      v39 += 4;
      if (v39 == 16)
      {
        goto LABEL_11;
      }
    }

    if (v41 >= 8)
    {
      std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
    }

    v43 = 1 << v41;
    v44 = *(a2 + 2592);
    if ((v44 & v43) == 0)
    {
      v45 = 0;
      goto LABEL_115;
    }

    goto LABEL_113;
  }

LABEL_8:
  v8 = 0;
  *this = 8;
  *(this + 4) = 0;
LABEL_102:
  caulk::concurrent::shared_spin_lock::unlock_shared(v941);
LABEL_103:
  if (v8)
  {
    *this = 0;
    *(this + 4) = 1;
  }

LABEL_105:
  v38 = *MEMORY[0x277D85DE8];
}