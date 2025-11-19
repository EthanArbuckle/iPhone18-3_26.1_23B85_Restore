void sub_297006FE0(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v1 - 176));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v1 - 192));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v1 - 168));
  _Block_object_dispose((v1 - 160), 8);
  xpc_release(*(v1 - 120));
  _Unwind_Resume(a1);
}

uint64_t ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  v10[0] = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v10, a2);
  Int = ctu::cf::map_adapter::getInt(v10, *MEMORY[0x29EDC8778]);
  v4 = xpc_int64_create(Int);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_ULBandInfo_CenterFreq", v4);
  v5 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v5);
  ctu::cf::map_adapter::getDouble(v10, *MEMORY[0x29EDC8658], 0.0);
  v7 = xpc_double_create(v6);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_ULBandInfo_BandWidth", v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  return MEMORY[0x29C26B180](v10);
}

uint64_t ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_2(uint64_t a1, const __CFDictionary *a2)
{
  v10[0] = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v10, a2);
  Int = ctu::cf::map_adapter::getInt(v10, *MEMORY[0x29EDC8778]);
  v4 = xpc_int64_create(Int);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_DLBandInfo_CenterFreq", v4);
  v5 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v5);
  ctu::cf::map_adapter::getDouble(v10, *MEMORY[0x29EDC8658], 0.0);
  v7 = xpc_double_create(v6);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_DLBandInfo_BandWidth", v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  return MEMORY[0x29C26B180](v10);
}

void coex::Module::State::fetchBandInfoSet_sync(uint64_t a1, CFArrayRef *a2, const char *a3, xpc_object_t *a4)
{
  if (a3)
  {
    if (*a2)
    {
      if (MEMORY[0x29C26CE60](*a4) == MEMORY[0x29EDCAA00])
      {
        Count = CFArrayGetCount(*a2);
        if (Count >= 1)
        {
          v8 = Count;
          v9 = xpc_array_create(0, 0);
          v10 = MEMORY[0x29EDCA9E0];
          if (v9 || (v9 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x29C26CE60](v9) == v10)
            {
              xpc_retain(v9);
              v11 = v9;
            }

            else
            {
              v11 = xpc_null_create();
            }
          }

          else
          {
            v11 = xpc_null_create();
            v9 = 0;
          }

          v35 = a4;
          xarray = v11;
          xpc_release(v9);
          v12 = 0;
          v13 = *MEMORY[0x29EDC8778];
          v14 = *MEMORY[0x29EDC8658];
          v15 = *MEMORY[0x29EDC8720];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*a2, v12);
            v17 = ValueAtIndex;
            if (ValueAtIndex)
            {
              v18 = CFGetTypeID(ValueAtIndex);
              if (v18 == CFDictionaryGetTypeID())
              {
                v39 = v17;
                CFRetain(v17);
                v38[0] = 0xAAAAAAAAAAAAAAAALL;
                v38[1] = 0xAAAAAAAAAAAAAAAALL;
                ctu::cf::dict_adapter::dict_adapter(v38, v17);
                v19 = xpc_dictionary_create(0, 0, 0);
                if (v19 || (v19 = xpc_null_create()) != 0)
                {
                  if (MEMORY[0x29C26CE60](v19) == MEMORY[0x29EDCAA00])
                  {
                    xpc_retain(v19);
                    v20 = v19;
                  }

                  else
                  {
                    v20 = xpc_null_create();
                  }
                }

                else
                {
                  v20 = xpc_null_create();
                  v19 = 0;
                }

                xpc_release(v19);
                Int = ctu::cf::map_adapter::getInt(v38, v13);
                v22 = xpc_int64_create(Int);
                if (!v22)
                {
                  v22 = xpc_null_create();
                }

                xpc_dictionary_set_value(v20, "kWCMCellularNetworkConfiguration_BandInfoSet_CenterFreq", v22);
                v23 = xpc_null_create();
                xpc_release(v22);
                xpc_release(v23);
                ctu::cf::map_adapter::getDouble(v38, v14, 0.0);
                v25 = xpc_double_create(v24);
                if (!v25)
                {
                  v25 = xpc_null_create();
                }

                xpc_dictionary_set_value(v20, "kWCMCellularNetworkConfiguration_BandInfoSet_Bandwidth", v25);
                v26 = xpc_null_create();
                xpc_release(v25);
                xpc_release(v26);
                v27 = ctu::cf::map_adapter::copyCFDataRef(v38, v15);
                v28 = v27;
                cf = v27;
                if (v27)
                {
                  CFRetain(v27);
                  *buffer = 0;
                  v41.length = CFDataGetLength(v28);
                  v41.location = 0;
                  CFDataGetBytes(v28, v41, buffer);
                  v29 = *buffer;
                  CFRelease(v28);
                  v30 = xpc_uint64_create(v29);
                  if (!v30)
                  {
                    v30 = xpc_null_create();
                  }
                }

                else
                {
                  v31 = ctu::cf::map_adapter::getInt(v38, v15);
                  v30 = xpc_uint64_create(v31);
                  if (!v30)
                  {
                    v30 = xpc_null_create();
                  }
                }

                xpc_dictionary_set_value(v20, "kWCMCellularNetworkConfiguration_BandInfoSet_DirectionMask", v30);
                v32 = xpc_null_create();
                xpc_release(v30);
                xpc_release(v32);
                xpc_array_append_value(xarray, v20);
                if (cf)
                {
                  CFRelease(cf);
                }

                xpc_release(v20);
                MEMORY[0x29C26B180](v38);
                if (v39)
                {
                  CFRelease(v39);
                }
              }
            }

            ++v12;
          }

          while (v8 != v12);
          if (MEMORY[0x29C26CE60](xarray) == MEMORY[0x29EDCA9E0])
          {
            if (xarray)
            {
              xpc_retain(xarray);
              v33 = xarray;
            }

            else
            {
              v33 = xpc_null_create();
            }

            xpc_dictionary_set_value(*v35, a3, v33);
            v34 = xpc_null_create();
            xpc_release(v33);
            xpc_release(v34);
          }

          xpc_release(xarray);
        }
      }
    }
  }
}

void coex::Module::State::fetchCarrierIdSet_sync(uint64_t a1, CFArrayRef *a2, const char *a3, xpc_object_t *a4)
{
  if (a3)
  {
    if (*a2)
    {
      if (MEMORY[0x29C26CE60](*a4) == MEMORY[0x29EDCAA00])
      {
        Count = CFArrayGetCount(*a2);
        if (Count >= 1)
        {
          v8 = Count;
          v9 = xpc_array_create(0, 0);
          v10 = MEMORY[0x29EDCA9E0];
          if (v9 || (v9 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x29C26CE60](v9) == v10)
            {
              xpc_retain(v9);
              v11 = v9;
            }

            else
            {
              v11 = xpc_null_create();
            }
          }

          else
          {
            v11 = xpc_null_create();
            v9 = 0;
          }

          xpc_release(v9);
          for (i = 0; i != v8; ++i)
          {
            LODWORD(value) = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(*a2, i);
            v14 = ValueAtIndex;
            if (ValueAtIndex)
            {
              v15 = CFGetTypeID(ValueAtIndex);
              if (v15 == CFNumberGetTypeID())
              {
                if (ctu::cf::assign(&value, v14, v16))
                {
                  v17 = xpc_int64_create(value);
                  if (!v17)
                  {
                    v17 = xpc_null_create();
                  }

                  xpc_array_append_value(v11, v17);
                  xpc_release(v17);
                }
              }
            }
          }

          if (MEMORY[0x29C26CE60](v11) == v10 && xpc_array_get_count(v11))
          {
            if (v11)
            {
              xpc_retain(v11);
              v18 = v11;
            }

            else
            {
              v18 = xpc_null_create();
            }

            xpc_dictionary_set_value(*a4, a3, v18);
            v19 = xpc_null_create();
            xpc_release(v18);
            xpc_release(v19);
          }

          xpc_release(v11);
        }
      }
    }
  }
}

void ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_36(void *a1, uint64_t a2, int *a3)
{
  v50 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_58;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v47 = v8;
  if (!v8)
  {
    goto LABEL_58;
  }

  if (!a1[5])
  {
    goto LABEL_56;
  }

  v9 = *(v7 + 104);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a3;
    *buf = 67109120;
    *&buf[4] = v10;
    _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Received trigger 0x%x", buf, 8u);
  }

  *buf = 0;
  v49 = 0;
  v11 = a1[8];
  if (v11)
  {
    v49 = std::__shared_weak_count::lock(v11);
    if (v49)
    {
      *buf = a1[7];
    }
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v12) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v12);
      v13 = v12;
    }

    else
    {
      v13 = xpc_null_create();
    }
  }

  else
  {
    v13 = xpc_null_create();
    v12 = 0;
  }

  xpc_release(v12);
  AppID = awd::AppContext::getAppID(*buf);
  v15 = xpc_int64_create(AppID);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF8B0], v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = xpc_int64_create(a3[1]);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE5E8], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = xpc_int64_create(a3[2]);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE680], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v21 = xpc_int64_create(*a3);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE5A0], v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = xpc_int64_create(*(a3 + 2));
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE678], v23);
  v24 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v24);
  v25 = xpc_int64_create(*(a2 + 12));
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE6D8], v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = xpc_int64_create(*(a2 + 8));
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE640], v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
  v29 = *MEMORY[0x29EDBE538];
  v30 = strlen(*MEMORY[0x29EDBE538]);
  if (v30 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v31 = v30;
  if (v30 >= 0x17)
  {
    if ((v30 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v30 | 7) + 1;
    }

    v32 = operator new(v34);
    __dst[1] = v31;
    v45 = v34 | 0x8000000000000000;
    __dst[0] = v32;
LABEL_38:
    memmove(v32, v29, v31);
    *(v31 + v32) = 0;
    object = v13;
    if (v13)
    {
      goto LABEL_33;
    }

LABEL_39:
    object = xpc_null_create();
    goto LABEL_40;
  }

  HIBYTE(v45) = v30;
  v32 = __dst;
  if (v30)
  {
    goto LABEL_38;
  }

  LOBYTE(__dst[0]) = 0;
  object = v13;
  if (!v13)
  {
    goto LABEL_39;
  }

LABEL_33:
  xpc_retain(v13);
LABEL_40:
  xpc::bridge(&cf, &object, v33);
  v35 = cf;
  if (cf && (v36 = CFGetTypeID(cf), v36 == CFDictionaryGetTypeID()))
  {
    v43 = v35;
    CFRetain(v35);
  }

  else
  {
    v43 = 0;
  }

  aBlock = 0;
  Service::broadcastEvent(v7, __dst, &v43, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst[0]);
  }

  xpc_release(v13);
  v37 = v49;
  if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  v8 = v47;
  if (v47)
  {
LABEL_56:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v38 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v38);
    }
  }

LABEL_58:
  v39 = *MEMORY[0x29EDCA608];
}

void sub_2970082C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, xpc_object_t object, char a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void boost::detail::function::functor_manager<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>::manage(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == (0x8000000297224516 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, (0x8000000297224516 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      v7 = *a2;
      if (*a2)
      {
LABEL_9:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_9;
      }
    }
  }
}

void std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(*a1);
    std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a1[1]);
    if (a1[7])
    {
      v2 = a1[6];
      v3 = *(a1[5] + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[7] = 0;
      if (v2 != a1 + 5)
      {
        do
        {
          v5 = v2[1];
          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1 + 5);
      }
    }

    operator delete(a1);
  }
}

void ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvNSt3__13mapIPKcNS3_4listINS3_4pairIyjEENS3_9allocatorIS9_EEEENS3_4lessIS6_EENSA_INS8_IKS6_SC_EEEEEEN4coex5SubIdEEEESI_SK__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v18.__imp_.__imp_ = 0;
  v19 = 0;
  v18.__vftable = &v18.__imp_;
  v6 = *v3;
  v4 = v3 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(&v18, &v18.__imp_, v5[4], v5 + 4);
      v9 = v5[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
    }

    while (v10 != v4);
  }

  if (!*v2)
  {
    std::runtime_error::runtime_error(&v20, "call to empty boost::function");
    v20.__vftable = &unk_2A1E24E88;
    boost::throw_exception<boost::bad_function_call>(&v20);
  }

  v7 = **(a1 + 48);
  v8 = *((*v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v20 = v18;
  v21 = v19;
  if (v19)
  {
    *(v18.__imp_.__imp_ + 2) = &v20.__imp_;
    v18.__vftable = &v18.__imp_;
    v18.__imp_.__imp_ = 0;
    v19 = 0;
  }

  else
  {
    v20.__vftable = &v20.__imp_;
  }

  v8(v2 + 1, &v20, v7);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v20.__imp_.__imp_);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v18.__imp_.__imp_);
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *v12;
    if (*v12)
    {
      if ((v13 & 1) == 0)
      {
        v14 = *v13;
        if (v14)
        {
          v15 = *(a1 + 32);
          v14(v12 + 1, v15 + 1, 2);
          v12 = v15;
        }
      }

      *v12 = 0;
    }

    operator delete(v12);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v16[1]);
    operator delete(v16);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    operator delete(v17);
  }
}

void sub_297008918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, std::runtime_error a12)
{
  std::runtime_error::~runtime_error(&a12);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a10);
  _Unwind_Resume(a1);
}

void sub_297008948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a13);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a10);
  _Unwind_Resume(a1);
}

void boost::detail::function::void_function_obj_invoker2<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::invoke(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2 + 1;
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (a2[2])
  {
    v4[2] = &v6;
    *a2 = v3;
    *v3 = 0;
    a2[2] = 0;
  }

  else
  {
    v5 = &v6;
  }

  (*(v2 + 16))(v2, &v5);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v6);
}

void ___ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE13connect_eventIN5boost8signals26signalIFvNSt3__13mapIPKcNS9_4listINS9_4pairIyjEENS9_9allocatorISF_EEEENS9_4lessISC_EENSG_INSE_IKSC_SI_EEEEEENS1_5SubIdEENS7_19optional_last_valueIvEEiNSJ_IiEENS6_8functionISQ_EENSU_IFvRKNS7_10connectionESO_SP_EEENS7_5mutexEEES3_vJSO_SP_EEEDTcl7connectfp_cvNS9_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FS17_S19_E_block_invoke(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[5];
  v5 = a1[6];
  v6 = (a1[4] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v7 = a2 + 1;
  v8 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(&v12, v13, v8[4], v8 + 4);
      v9 = v8[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != v7);
  }

  v4(v6, &v12, a3);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v13[0]);
}

void coex::Module::State::handleDesenseFrequencyReport_sync(uint64_t a1, void *a2, int a3)
{
  v167 = *MEMORY[0x29EDCA608];
  if (a2[2])
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = v6;
    v8 = MEMORY[0x29EDCAA00];
    if (v6)
    {
      v164 = v6;
    }

    else
    {
      v7 = xpc_null_create();
      v164 = v7;
      if (!v7)
      {
        v10 = xpc_null_create();
        v7 = 0;
        goto LABEL_11;
      }
    }

    if (MEMORY[0x29C26CE60](v7) == v8)
    {
      xpc_retain(v7);
      goto LABEL_12;
    }

    v10 = xpc_null_create();
LABEL_11:
    v164 = v10;
LABEL_12:
    v148 = a3;
    xpc_release(v7);
    v11 = a2 + 1;
    v12 = *a2;
    v153 = v11;
    if (v12 != v11)
    {
      __s = *MEMORY[0x29EDC9118];
      v154 = *MEMORY[0x29EDC9110];
      v151 = *MEMORY[0x29EDC9130];
      v152 = *MEMORY[0x29EDC9120];
      v13 = *MEMORY[0x29EDC9128];
      v149 = *MEMORY[0x29EDC9128];
      v150 = *MEMORY[0x29EDC9108];
      while (1)
      {
        v161 = &v161;
        v162 = &v161;
        v163 = 0;
        v14 = v12[6];
        if (v14 != v12 + 5)
        {
          v15 = &v161;
          v16 = 1;
          do
          {
            v17 = operator new(0x20uLL);
            v17[1] = *(v14 + 16);
            *v17 = v15;
            *(v17 + 1) = &v161;
            v15[1] = v17;
            v161 = v17;
            v163 = v16;
            v14 = *(v14 + 8);
            ++v16;
            v15 = v17;
          }

          while (v14 != v12 + 5);
        }

        v18 = xpc_array_create(0, 0);
        if (v18 || (v18 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26CE60](v18) == MEMORY[0x29EDCA9E0])
          {
            xpc_retain(v18);
            v19 = v18;
          }

          else
          {
            v19 = xpc_null_create();
          }
        }

        else
        {
          v19 = xpc_null_create();
          v18 = 0;
        }

        xpc_release(v18);
        for (i = v162; i != &v161; i = i[1])
        {
          v21 = xpc_dictionary_create(0, 0, 0);
          if (v21 || (v21 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x29C26CE60](v21) == v8)
            {
              xpc_retain(v21);
              v22 = v21;
            }

            else
            {
              v22 = xpc_null_create();
            }
          }

          else
          {
            v22 = xpc_null_create();
            v21 = 0;
          }

          xpc_release(v21);
          v23 = xpc_uint64_create(i[2]);
          if (!v23)
          {
            v23 = xpc_null_create();
          }

          xpc_dictionary_set_value(v22, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq", v23);
          v24 = xpc_null_create();
          xpc_release(v23);
          xpc_release(v24);
          v25 = xpc_int64_create(*(i + 6));
          if (!v25)
          {
            v25 = xpc_null_create();
          }

          xpc_dictionary_set_value(v22, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth", v25);
          v26 = xpc_null_create();
          xpc_release(v25);
          xpc_release(v26);
          xpc_array_append_value(v19, v22);
          xpc_release(v22);
        }

        if (MEMORY[0x29C26CE60](v19) == MEMORY[0x29EDCA9E0] && xpc_array_get_count(v19))
        {
          object = v19;
          v19 = xpc_null_create();
        }

        else
        {
          object = xpc_null_create();
        }

        xpc_release(v19);
        if (v163)
        {
          v27 = v162;
          v28 = *(v161 + 1);
          v29 = *v162;
          *(v29 + 8) = v28;
          *v28 = v29;
          v163 = 0;
          if (v27 != &v161)
          {
            do
            {
              v30 = v27[1];
              operator delete(v27);
              v27 = v30;
            }

            while (v30 != &v161);
          }
        }

        v31 = v12[4];
        v32 = strlen(v31);
        if (v32 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v33 = v32;
        if (v32 >= 0x17)
        {
          break;
        }

        HIBYTE(v160) = v32;
        v34 = buf;
        if (v32)
        {
          goto LABEL_51;
        }

LABEL_52:
        v34[v33] = 0;
        v36 = strlen(__s);
        if (v36 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v37 = v36;
        if (v36 >= 0x17)
        {
          if ((v36 | 7) == 0x17)
          {
            v39 = 25;
          }

          else
          {
            v39 = (v36 | 7) + 1;
          }

          p_dst = operator new(v39);
          *(&__dst + 1) = v37;
          v166 = v39 | 0x8000000000000000;
          *&__dst = p_dst;
LABEL_60:
          memmove(p_dst, __s, v37);
          goto LABEL_61;
        }

        HIBYTE(v166) = v36;
        p_dst = &__dst;
        if (v36)
        {
          goto LABEL_60;
        }

LABEL_61:
        *(p_dst + v37) = 0;
        v40 = SHIBYTE(v160);
        v41 = *buf;
        if (v160 >= 0)
        {
          v42 = buf;
        }

        else
        {
          v42 = *buf;
        }

        v43 = SHIBYTE(v166);
        v44 = __dst;
        if (v166 >= 0)
        {
          v45 = &__dst;
        }

        else
        {
          v45 = __dst;
        }

        v46 = strcasecmp(v42, v45);
        if (v43 < 0)
        {
          operator delete(v44);
          if ((v40 & 0x80000000) == 0)
          {
LABEL_69:
            if (!v46)
            {
              goto LABEL_76;
            }

            goto LABEL_70;
          }
        }

        else if ((v40 & 0x80000000) == 0)
        {
          goto LABEL_69;
        }

        operator delete(v41);
        if (!v46)
        {
LABEL_76:
          v51 = object;
          if (object)
          {
            xpc_retain(object);
            v52 = object;
          }

          else
          {
            v52 = xpc_null_create();
          }

          xpc_dictionary_set_value(v164, "kWCMCellular_DesenseFreqReport_UplinkFrequency", v52);
          v87 = xpc_null_create();
          xpc_release(v52);
          xpc_release(v87);
          goto LABEL_242;
        }

LABEL_70:
        v47 = v12[4];
        v48 = strlen(v47);
        if (v48 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v49 = v48;
        if (v48 >= 0x17)
        {
          if ((v48 | 7) == 0x17)
          {
            v53 = 25;
          }

          else
          {
            v53 = (v48 | 7) + 1;
          }

          v50 = operator new(v53);
          v159 = v49;
          v160 = v53 | 0x8000000000000000;
          *buf = v50;
LABEL_82:
          memmove(v50, v47, v49);
          goto LABEL_83;
        }

        HIBYTE(v160) = v48;
        v50 = buf;
        if (v48)
        {
          goto LABEL_82;
        }

LABEL_83:
        *(v50 + v49) = 0;
        v54 = strlen(v154);
        if (v54 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v55 = v54;
        if (v54 >= 0x17)
        {
          if ((v54 | 7) == 0x17)
          {
            v57 = 25;
          }

          else
          {
            v57 = (v54 | 7) + 1;
          }

          v56 = operator new(v57);
          *(&__dst + 1) = v55;
          v166 = v57 | 0x8000000000000000;
          *&__dst = v56;
LABEL_91:
          memmove(v56, v154, v55);
          goto LABEL_92;
        }

        HIBYTE(v166) = v54;
        v56 = &__dst;
        if (v54)
        {
          goto LABEL_91;
        }

LABEL_92:
        *(v56 + v55) = 0;
        v58 = SHIBYTE(v160);
        v59 = *buf;
        if (v160 >= 0)
        {
          v60 = buf;
        }

        else
        {
          v60 = *buf;
        }

        v61 = SHIBYTE(v166);
        v62 = __dst;
        if (v166 >= 0)
        {
          v63 = &__dst;
        }

        else
        {
          v63 = __dst;
        }

        v64 = strcasecmp(v60, v63);
        if (v61 < 0)
        {
          operator delete(v62);
          if ((v58 & 0x80000000) == 0)
          {
LABEL_100:
            if (!v64)
            {
              goto LABEL_107;
            }

            goto LABEL_101;
          }
        }

        else if ((v58 & 0x80000000) == 0)
        {
          goto LABEL_100;
        }

        operator delete(v59);
        if (!v64)
        {
LABEL_107:
          v51 = object;
          if (object)
          {
            xpc_retain(object);
            v69 = object;
          }

          else
          {
            v69 = xpc_null_create();
          }

          xpc_dictionary_set_value(v164, "kWCMCellular_DesenseFreqReport_SearchFrequency", v69);
          v105 = xpc_null_create();
          xpc_release(v69);
          xpc_release(v105);
          goto LABEL_242;
        }

LABEL_101:
        v65 = v12[4];
        v66 = strlen(v65);
        if (v66 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v67 = v66;
        if (v66 >= 0x17)
        {
          if ((v66 | 7) == 0x17)
          {
            v70 = 25;
          }

          else
          {
            v70 = (v66 | 7) + 1;
          }

          v68 = operator new(v70);
          v159 = v67;
          v160 = v70 | 0x8000000000000000;
          *buf = v68;
LABEL_113:
          memmove(v68, v65, v67);
          goto LABEL_114;
        }

        HIBYTE(v160) = v66;
        v68 = buf;
        if (v66)
        {
          goto LABEL_113;
        }

LABEL_114:
        *(v68 + v67) = 0;
        v71 = strlen(v152);
        if (v71 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v72 = v71;
        if (v71 >= 0x17)
        {
          if ((v71 | 7) == 0x17)
          {
            v74 = 25;
          }

          else
          {
            v74 = (v71 | 7) + 1;
          }

          v73 = operator new(v74);
          *(&__dst + 1) = v72;
          v166 = v74 | 0x8000000000000000;
          *&__dst = v73;
LABEL_122:
          memmove(v73, v152, v72);
          goto LABEL_123;
        }

        HIBYTE(v166) = v71;
        v73 = &__dst;
        if (v71)
        {
          goto LABEL_122;
        }

LABEL_123:
        *(v73 + v72) = 0;
        v75 = SHIBYTE(v160);
        v76 = *buf;
        if (v160 >= 0)
        {
          v77 = buf;
        }

        else
        {
          v77 = *buf;
        }

        v78 = SHIBYTE(v166);
        v79 = __dst;
        if (v166 >= 0)
        {
          v80 = &__dst;
        }

        else
        {
          v80 = __dst;
        }

        v81 = strcasecmp(v77, v80);
        if (v78 < 0)
        {
          operator delete(v79);
          if ((v75 & 0x80000000) == 0)
          {
LABEL_131:
            if (!v81)
            {
              goto LABEL_138;
            }

            goto LABEL_132;
          }
        }

        else if ((v75 & 0x80000000) == 0)
        {
          goto LABEL_131;
        }

        operator delete(v76);
        if (!v81)
        {
LABEL_138:
          v51 = object;
          if (object)
          {
            xpc_retain(object);
            v86 = object;
          }

          else
          {
            v86 = xpc_null_create();
          }

          xpc_dictionary_set_value(v164, "kWCMCellular_DesenseFreqReport_HoppingFrequency", v86);
          v123 = xpc_null_create();
          xpc_release(v86);
          xpc_release(v123);
          goto LABEL_242;
        }

LABEL_132:
        v82 = v12[4];
        v83 = strlen(v82);
        if (v83 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v84 = v83;
        if (v83 >= 0x17)
        {
          if ((v83 | 7) == 0x17)
          {
            v88 = 25;
          }

          else
          {
            v88 = (v83 | 7) + 1;
          }

          v85 = operator new(v88);
          v159 = v84;
          v160 = v88 | 0x8000000000000000;
          *buf = v85;
LABEL_146:
          memmove(v85, v82, v84);
          goto LABEL_147;
        }

        HIBYTE(v160) = v83;
        v85 = buf;
        if (v83)
        {
          goto LABEL_146;
        }

LABEL_147:
        *(v85 + v84) = 0;
        v89 = strlen(v151);
        if (v89 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v90 = v89;
        if (v89 >= 0x17)
        {
          if ((v89 | 7) == 0x17)
          {
            v92 = 25;
          }

          else
          {
            v92 = (v89 | 7) + 1;
          }

          v91 = operator new(v92);
          *(&__dst + 1) = v90;
          v166 = v92 | 0x8000000000000000;
          *&__dst = v91;
LABEL_155:
          memmove(v91, v151, v90);
          goto LABEL_156;
        }

        HIBYTE(v166) = v89;
        v91 = &__dst;
        if (v89)
        {
          goto LABEL_155;
        }

LABEL_156:
        *(v91 + v90) = 0;
        v93 = SHIBYTE(v160);
        v94 = *buf;
        if (v160 >= 0)
        {
          v95 = buf;
        }

        else
        {
          v95 = *buf;
        }

        v96 = SHIBYTE(v166);
        v97 = __dst;
        if (v166 >= 0)
        {
          v98 = &__dst;
        }

        else
        {
          v98 = __dst;
        }

        v99 = strcasecmp(v95, v98);
        if (v96 < 0)
        {
          operator delete(v97);
          if ((v93 & 0x80000000) == 0)
          {
LABEL_164:
            if (!v99)
            {
              goto LABEL_171;
            }

            goto LABEL_165;
          }
        }

        else if ((v93 & 0x80000000) == 0)
        {
          goto LABEL_164;
        }

        operator delete(v94);
        if (!v99)
        {
LABEL_171:
          v51 = object;
          if (object)
          {
            xpc_retain(object);
            v104 = object;
          }

          else
          {
            v104 = xpc_null_create();
          }

          xpc_dictionary_set_value(v164, "kWCMCellular_DesenseFreqReport_NeighborFrequency", v104);
          v137 = xpc_null_create();
          xpc_release(v104);
          xpc_release(v137);
          goto LABEL_242;
        }

LABEL_165:
        v100 = v12[4];
        v101 = strlen(v100);
        if (v101 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v102 = v101;
        if (v101 >= 0x17)
        {
          if ((v101 | 7) == 0x17)
          {
            v106 = 25;
          }

          else
          {
            v106 = (v101 | 7) + 1;
          }

          v103 = operator new(v106);
          v159 = v102;
          v160 = v106 | 0x8000000000000000;
          *buf = v103;
LABEL_179:
          memmove(v103, v100, v102);
          goto LABEL_180;
        }

        HIBYTE(v160) = v101;
        v103 = buf;
        if (v101)
        {
          goto LABEL_179;
        }

LABEL_180:
        *(v103 + v102) = 0;
        v107 = strlen(v150);
        if (v107 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v108 = v107;
        if (v107 >= 0x17)
        {
          if ((v107 | 7) == 0x17)
          {
            v110 = 25;
          }

          else
          {
            v110 = (v107 | 7) + 1;
          }

          v109 = operator new(v110);
          *(&__dst + 1) = v108;
          v166 = v110 | 0x8000000000000000;
          *&__dst = v109;
LABEL_188:
          memmove(v109, v150, v108);
          goto LABEL_189;
        }

        HIBYTE(v166) = v107;
        v109 = &__dst;
        if (v107)
        {
          goto LABEL_188;
        }

LABEL_189:
        *(v109 + v108) = 0;
        v111 = SHIBYTE(v160);
        v112 = *buf;
        if (v160 >= 0)
        {
          v113 = buf;
        }

        else
        {
          v113 = *buf;
        }

        v114 = SHIBYTE(v166);
        v115 = __dst;
        if (v166 >= 0)
        {
          v116 = &__dst;
        }

        else
        {
          v116 = __dst;
        }

        v117 = strcasecmp(v113, v116);
        if (v114 < 0)
        {
          operator delete(v115);
          if ((v111 & 0x80000000) == 0)
          {
LABEL_197:
            if (!v117)
            {
              goto LABEL_204;
            }

            goto LABEL_198;
          }
        }

        else if ((v111 & 0x80000000) == 0)
        {
          goto LABEL_197;
        }

        operator delete(v112);
        if (!v117)
        {
LABEL_204:
          v51 = object;
          if (object)
          {
            xpc_retain(object);
            v122 = object;
          }

          else
          {
            v122 = xpc_null_create();
          }

          xpc_dictionary_set_value(v164, "kWCMCellular_DesenseFreqReport_RplmnFrequency", v122);
          v138 = xpc_null_create();
          xpc_release(v122);
          xpc_release(v138);
          goto LABEL_242;
        }

LABEL_198:
        v118 = v12[4];
        v119 = strlen(v118);
        if (v119 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v120 = v119;
        if (v119 >= 0x17)
        {
          if ((v119 | 7) == 0x17)
          {
            v124 = 25;
          }

          else
          {
            v124 = (v119 | 7) + 1;
          }

          v121 = operator new(v124);
          v159 = v120;
          v160 = v124 | 0x8000000000000000;
          *buf = v121;
LABEL_212:
          memmove(v121, v118, v120);
          goto LABEL_213;
        }

        HIBYTE(v160) = v119;
        v121 = buf;
        if (v119)
        {
          goto LABEL_212;
        }

LABEL_213:
        *(v121 + v120) = 0;
        v125 = strlen(v149);
        if (v125 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v126 = v125;
        if (v125 >= 0x17)
        {
          if ((v125 | 7) == 0x17)
          {
            v128 = 25;
          }

          else
          {
            v128 = (v125 | 7) + 1;
          }

          v127 = operator new(v128);
          *(&__dst + 1) = v126;
          v166 = v128 | 0x8000000000000000;
          *&__dst = v127;
LABEL_221:
          memmove(v127, v149, v126);
          goto LABEL_222;
        }

        HIBYTE(v166) = v125;
        v127 = &__dst;
        if (v125)
        {
          goto LABEL_221;
        }

LABEL_222:
        *(v127 + v126) = 0;
        v129 = SHIBYTE(v160);
        v130 = *buf;
        if (v160 >= 0)
        {
          v131 = buf;
        }

        else
        {
          v131 = *buf;
        }

        v132 = SHIBYTE(v166);
        v133 = __dst;
        if (v166 >= 0)
        {
          v134 = &__dst;
        }

        else
        {
          v134 = __dst;
        }

        v135 = strcasecmp(v131, v134);
        if (v132 < 0)
        {
          operator delete(v133);
          if ((v129 & 0x80000000) == 0)
          {
LABEL_230:
            v51 = object;
            if (!v135)
            {
              goto LABEL_234;
            }

            goto LABEL_242;
          }
        }

        else if ((v129 & 0x80000000) == 0)
        {
          goto LABEL_230;
        }

        operator delete(v130);
        v51 = object;
        if (!v135)
        {
LABEL_234:
          if (v51)
          {
            xpc_retain(v51);
            v136 = v51;
          }

          else
          {
            v136 = xpc_null_create();
          }

          xpc_dictionary_set_value(v164, "kWCMCellular_DesenseFreqReport_DownlinkFrequency", v136);
          v139 = xpc_null_create();
          xpc_release(v136);
          xpc_release(v139);
        }

LABEL_242:
        xpc_release(v51);
        v140 = v12[1];
        if (v140)
        {
          do
          {
            v141 = v140;
            v140 = *v140;
          }

          while (v140);
        }

        else
        {
          do
          {
            v141 = v12[2];
            v142 = *v141 == v12;
            v12 = v141;
          }

          while (!v142);
        }

        v12 = v141;
        if (v141 == v153)
        {
          goto LABEL_248;
        }
      }

      if ((v32 | 7) == 0x17)
      {
        v35 = 25;
      }

      else
      {
        v35 = (v32 | 7) + 1;
      }

      v34 = operator new(v35);
      v159 = v33;
      v160 = v35 | 0x8000000000000000;
      *buf = v34;
LABEL_51:
      memmove(v34, v31, v33);
      goto LABEL_52;
    }

LABEL_248:
    v143 = *(a1 + 32);
    if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT) && ((xpc::object::to_string(buf, &v164), v160 >= 0) ? (v144 = buf) : (v144 = *buf), LODWORD(__dst) = 136315138, *(&__dst + 4) = v144, _os_log_impl(&dword_296FF7000, v143, OS_LOG_TYPE_DEFAULT, "#I Desense frequency report -> %s", &__dst, 0xCu), SHIBYTE(v160) < 0))
    {
      operator delete(*buf);
      v145 = *(a1 + 56);
      if (v145)
      {
        goto LABEL_254;
      }
    }

    else
    {
      v145 = *(a1 + 56);
      if (v145)
      {
LABEL_254:
        v146 = v164;
        v157 = v164;
        if (v164)
        {
          xpc_retain(v164);
        }

        else
        {
          v146 = xpc_null_create();
          v157 = v146;
        }

        coex::XpcClient::sendMessage(v145, 399, &v157, v148);
        xpc_release(v146);
        v157 = 0;
      }
    }

    xpc_release(v164);
    goto LABEL_259;
  }

  v9 = *(a1 + 32);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEBUG, "#D Empty report passed; ignoring it", buf, 2u);
  }

LABEL_259:
  v147 = *MEMORY[0x29EDCA608];
}

void sub_2970099E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<ServiceCtrl>::execute_wrapped<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1}>(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x30uLL);
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  *(a2 + 24) = 0;
  *(v8 + 3) = v9;
  *(v8 + 4) = v10;
  v11 = xpc_null_create();
  *(v8 + 5) = *(a2 + 40);
  *(a2 + 32) = v11;
  *(a2 + 40) = 0;
  v12 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = operator new(0x18uLL);
  *v13 = v8;
  v13[1] = v5;
  v13[2] = v7;
  dispatch_async_f(v12, v13, dispatch::async<void ctu::SharedSynchronizable<ServiceCtrl>::execute_wrapped<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1}>(ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1},std::default_delete<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<ServiceCtrl>::execute_wrapped<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1}>(ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1},std::default_delete<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::find<std::string>(v3 + 64, *a1 + 1);
  v5 = v2[5];
  if ((v3 + 72) == v4)
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = xpc_null_create();
    v7 = v2[5];
    v15[0] = v6;
    v8 = xpc_null_create();
    (*(v7 + 16))(v7, 3760250882, v15);
    xpc_release(v15[0]);
    xpc_release(v8);
  }

  else if (v5)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3002000000;
    v15[3] = __Block_byref_object_copy__3;
    v15[4] = __Block_byref_object_dispose__3;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZZN11ServiceCtrl13handleCommandERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictEN8dispatch5blockIU13block_pointerFviSA_EEEENKUlvE_clEv_block_invoke_33;
    aBlock[3] = &__block_descriptor_tmp_34_1;
    v14 = _Block_copy(v5);
    v16 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 0x40000000;
    v11[2] = ___ZZN11ServiceCtrl13handleCommandERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictEN8dispatch5blockIU13block_pointerFviSA_EEEENKUlvE_clEv_block_invoke_35;
    v11[3] = &unk_29EE64C20;
    v11[4] = v15;
    v12 = v11;
    dispatch::block<void({block_pointer})(xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)>::operator()<xpc::dict const&,void({block_pointer})(int,xpc::dict)>(v4[7], v2[4], &v12);
    _Block_object_dispose(v15, 8);
    if (v16)
    {
      _Block_release(v16);
    }

    if (v14)
    {
      _Block_release(v14);
    }
  }

  else
  {
    v15[0] = &__block_literal_global_14;
    dispatch::block<void({block_pointer})(xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)>::operator()<xpc::dict const&,void({block_pointer})(int,xpc::dict)>(v4[7], v2[4], v15);
  }

  v9 = v2[5];
  if (v9)
  {
    _Block_release(v9);
  }

LABEL_12:
  xpc_release(v2[4]);
  v2[4] = 0;
  if (*(v2 + 31) < 0)
  {
    operator delete(v2[1]);
  }

  operator delete(v2);
  v10 = a1[2];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  operator delete(a1);
}

void sub_29700A068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *aBlock)
{
  xpc_release(*(v23 - 80));
  xpc_release(v22);
  std::unique_ptr<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1},std::default_delete<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::block<void({block_pointer})(xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)>::operator()<xpc::dict const&,void({block_pointer})(int,xpc::dict)>(uint64_t a1, xpc_object_t object, void **a3)
{
  objecta = object;
  if (!object)
  {
    objecta = xpc_null_create();
    v5 = *a3;
    if (!*a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  xpc_retain(object);
  v5 = *a3;
  if (*a3)
  {
LABEL_5:
    v5 = _Block_copy(v5);
  }

LABEL_6:
  aBlock = v5;
  (*(a1 + 16))(a1, &objecta, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(objecta);
}

void sub_29700A1A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, xpc_object_t object)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void AudioManager::setAudioState(uint64_t a1, xpc::object *a2)
{
  v59 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEBUG))
  {
    xpc::object::to_string(object, a2);
    v24 = SHIBYTE(object[2]) >= 0 ? object : object[0];
    *xdict = 136315138;
    *&xdict[4] = v24;
    _os_log_debug_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEBUG, "#D Setting Audio State: %s", xdict, 0xCu);
    if (SHIBYTE(object[2]) < 0)
    {
      operator delete(object[0]);
    }
  }

  *xdict = 0xAAAAAAAAAAAAAAAALL;
  v5 = *MEMORY[0x29EDBE6B0];
  object[0] = a2;
  object[1] = v5;
  xpc::dict::object_proxy::operator xpc::dict(object, xdict);
  value = xpc_dictionary_get_value(*xdict, *MEMORY[0x29EDBEED0]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v7 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  if (v7)
  {
    v8 = 0;
    LOBYTE(v9) = 1;
    if (*(a1 + 56) == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v10 = xpc_dictionary_get_value(*xdict, *MEMORY[0x29EDBED70]);
  object[0] = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v11 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  if (v11)
  {
    LOBYTE(v9) = 2;
    v8 = 1;
    if (*(a1 + 56) == 2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v18 = xpc_dictionary_get_value(*xdict, *MEMORY[0x29EDBEAF0]);
  object[0] = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v21 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  v8 = 0;
  if (v21)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 56) != v9)
  {
LABEL_13:
    *(a1 + 56) = v9;
    AudioManager::notifyAudioOutputClients(a1);
  }

LABEL_14:
  v12 = v8 & (v8 & (*(a1 + 88) == 0) | *(a1 + 88)) & 1;
  if (*(a1 + 88) != v12)
  {
    *(a1 + 88) = v12;
    AudioManager::notifyAudioSpeakerClients(a1);
  }

  v56 = 0xAAAAAAAAAAAAAAAALL;
  v13 = *MEMORY[0x29EDBE628];
  object[0] = a2;
  object[1] = v13;
  xpc::dict::object_proxy::operator xpc::dict(object, &v56);
  v14 = xpc_dictionary_get_value(v56, *MEMORY[0x29EDBE800]);
  object[0] = v14;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v15 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  if (v15)
  {
    v16 = 1;
  }

  else
  {
    v17 = xpc_dictionary_get_value(v56, *MEMORY[0x29EDBE808]);
    object[0] = v17;
    if (v17)
    {
      xpc_retain(v17);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v19 = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    if (v19)
    {
      v16 = 2;
    }

    else
    {
      v20 = xpc_dictionary_get_value(v56, *MEMORY[0x29EDBE810]);
      object[0] = v20;
      if (v20)
      {
        xpc_retain(v20);
      }

      else
      {
        object[0] = xpc_null_create();
      }

      v22 = xpc::dyn_cast_or_default(object, 0);
      xpc_release(object[0]);
      if (v22)
      {
        v16 = 3;
      }

      else
      {
        v23 = xpc_dictionary_get_value(v56, *MEMORY[0x29EDBE818]);
        object[0] = v23;
        if (v23)
        {
          xpc_retain(v23);
        }

        else
        {
          object[0] = xpc_null_create();
        }

        v25 = xpc::dyn_cast_or_default(object, 0);
        xpc_release(object[0]);
        if (v25)
        {
          v16 = 4;
        }

        else
        {
          v26 = xpc_dictionary_get_value(v56, *MEMORY[0x29EDBE820]);
          object[0] = v26;
          if (v26)
          {
            xpc_retain(v26);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          v27 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(object[0]);
          if (v27)
          {
            v16 = 5;
          }

          else
          {
            v28 = xpc_dictionary_get_value(v56, *MEMORY[0x29EDBE828]);
            object[0] = v28;
            if (v28)
            {
              xpc_retain(v28);
            }

            else
            {
              object[0] = xpc_null_create();
            }

            v29 = xpc::dyn_cast_or_default(object, 0);
            xpc_release(object[0]);
            if (v29)
            {
              v16 = 6;
            }

            else
            {
              v16 = 0;
            }
          }
        }
      }
    }
  }

  if (*(a1 + 24) != v16)
  {
    *(a1 + 24) = v16;
    AudioManager::notifyAudioInputClients(a1);
  }

  xarray = 0xAAAAAAAAAAAAAAAALL;
  v30 = *MEMORY[0x29EDBEC30];
  object[0] = a2;
  object[1] = v30;
  xpc::dict::object_proxy::operator xpc::array(object, &xarray);
  v31 = *(a1 + 120);
  v32 = xarray;
  if (xarray)
  {
    xpc_retain(xarray);
LABEL_65:
    xpc_retain(v32);
    v33 = v32;
    goto LABEL_66;
  }

  v32 = xpc_null_create();
  if (v32)
  {
    goto LABEL_65;
  }

  v32 = xpc_null_create();
  v33 = 0;
LABEL_66:
  xpc_release(v33);
  v34 = xarray;
  if (xarray)
  {
    xpc_retain(xarray);
  }

  else
  {
    v34 = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60](xarray) == MEMORY[0x29EDCA9E0])
  {
    count = xpc_array_get_count(xarray);
    v52 = a1;
    if (v34)
    {
      goto LABEL_71;
    }

LABEL_73:
    v53 = xpc_null_create();
    goto LABEL_74;
  }

  count = 0;
  v52 = a1;
  if (!v34)
  {
    goto LABEL_73;
  }

LABEL_71:
  xpc_retain(v34);
  v53 = v34;
LABEL_74:
  xpc_release(v34);
  if (count || v32 != v53)
  {
    v36 = 0;
    v37 = *MEMORY[0x29EDBE830];
    v38 = count - 1;
    while (1)
    {
      while (1)
      {
        memset(object, 170, sizeof(object));
        v39 = xpc_array_get_value(v32, v36);
        v54 = v39;
        if (v39)
        {
          xpc_retain(v39);
        }

        else
        {
          v54 = xpc_null_create();
        }

        xpc::dyn_cast_or_default(object, &v54, "", v40);
        xpc_release(v54);
        v41 = strlen(v37);
        v42 = v41;
        v43 = SHIBYTE(object[2]);
        if ((SHIBYTE(object[2]) & 0x8000000000000000) != 0)
        {
          if (v41 == -1)
          {
LABEL_101:
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v44 = object[0];
          v45 = object[1];
        }

        else
        {
          if (v41 == -1)
          {
            goto LABEL_101;
          }

          v44 = object;
          v45 = SHIBYTE(object[2]);
        }

        v46 = v45 >= v42 ? v42 : v45;
        v47 = memcmp(v44, v37, v46) == 0;
        v48 = v45 == v42 && v47;
        if ((v43 & 0x80000000) == 0)
        {
          break;
        }

        operator delete(object[0]);
        v31 |= v48;
        v49 = v36 + 1;
        v50 = v38 == v36++;
        if (v50)
        {
          goto LABEL_96;
        }
      }

      v31 |= v48;
      v49 = v36 + 1;
      v50 = v38 == v36++;
      if (v50)
      {
LABEL_96:
        v36 = v49;
        if (v32 == v53)
        {
          break;
        }
      }
    }
  }

  xpc_release(v53);
  xpc_release(v32);
  if (*(v52 + 120) != (v31 & 1))
  {
    *(v52 + 120) = v31 & 1;
    AudioManager::notifyAudioWiredPortClients(v52);
  }

  xpc_release(xarray);
  xpc_release(v56);
  xpc_release(*xdict);
  v51 = *MEMORY[0x29EDCA608];
}

void sub_29700A898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t a13, xpc_object_t object, uint64_t a15, uint64_t a16, xpc_object_t a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void xpc::dict::object_proxy::operator xpc::dict(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v4) != MEMORY[0x29EDCAA00])
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
}

void AudioManager::notifyAudioOutputClients(os_log_t *this)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 56);
    if (v3 > 3)
    {
      v4 = "Unknown Audio Output";
    }

    else
    {
      v4 = off_29EE64C80[v3];
    }

    LODWORD(v14) = 136315138;
    *(&v14 + 4) = v4;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Notifying Audio Output: %s", &v14, 0xCu);
  }

  v5 = this[8];
  v6 = this[9];
  if (v5 != v6)
  {
    while (!v5->isa)
    {
      v7 = 0;
      isa = v5[1].isa;
      if (isa)
      {
        goto LABEL_11;
      }

LABEL_12:
      v9 = *(this + 56);
      if (!v7)
      {
        v11 = 0;
        *&v14 = MEMORY[0x29EDCA5F8];
        *(&v14 + 1) = 3321888768;
        v15 = ___ZNK8dispatch8callbackIU13block_pointerFvN12AudioManager16AudioOutputStateEEEclIJS2_EEEvDpT__block_invoke;
        v16 = &__block_descriptor_41_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12AudioManager16AudioOutputStateEEEE_e5_v8__0l;
LABEL_18:
        v12 = 0;
        goto LABEL_19;
      }

      v10 = _Block_copy(v7);
      v11 = v10;
      *&v14 = MEMORY[0x29EDCA5F8];
      *(&v14 + 1) = 3321888768;
      v15 = ___ZNK8dispatch8callbackIU13block_pointerFvN12AudioManager16AudioOutputStateEEEclIJS2_EEEvDpT__block_invoke;
      v16 = &__block_descriptor_41_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12AudioManager16AudioOutputStateEEEE_e5_v8__0l;
      if (!v10)
      {
        goto LABEL_18;
      }

      v12 = _Block_copy(v10);
LABEL_19:
      aBlock = v12;
      v18 = v9;
      dispatch_async(isa, &v14);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v11)
      {
        _Block_release(v11);
      }

      if (isa)
      {
        dispatch_release(isa);
      }

      if (v7)
      {
        _Block_release(v7);
      }

      v5 += 2;
      if (v5 == v6)
      {
        goto LABEL_27;
      }
    }

    v7 = _Block_copy(v5->isa);
    isa = v5[1].isa;
    if (!isa)
    {
      goto LABEL_12;
    }

LABEL_11:
    dispatch_retain(isa);
    goto LABEL_12;
  }

LABEL_27:
  v13 = *MEMORY[0x29EDCA608];
}

void sub_29700AD3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12AudioManager16AudioOutputStateEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void AudioManager::notifyAudioSpeakerClients(NSObject **this)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 88))
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    LODWORD(v13) = 136315138;
    *(&v13 + 4) = v3;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Notifying Speaker State: %s", &v13, 0xCu);
  }

  v4 = this[12];
  v5 = this[13];
  if (v4 != v5)
  {
    while (!v4->isa)
    {
      v6 = 0;
      isa = v4[1].isa;
      if (isa)
      {
        goto LABEL_11;
      }

LABEL_12:
      v8 = *(this + 88);
      if (!v6)
      {
        v10 = 0;
        *&v13 = MEMORY[0x29EDCA5F8];
        *(&v13 + 1) = 3321888768;
        v14 = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke;
        v15 = &__block_descriptor_41_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE_e5_v8__0l;
LABEL_18:
        v11 = 0;
        goto LABEL_19;
      }

      v9 = _Block_copy(v6);
      v10 = v9;
      *&v13 = MEMORY[0x29EDCA5F8];
      *(&v13 + 1) = 3321888768;
      v14 = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke;
      v15 = &__block_descriptor_41_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE_e5_v8__0l;
      if (!v9)
      {
        goto LABEL_18;
      }

      v11 = _Block_copy(v9);
LABEL_19:
      aBlock = v11;
      v17 = v8;
      dispatch_async(isa, &v13);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v10)
      {
        _Block_release(v10);
      }

      if (isa)
      {
        dispatch_release(isa);
      }

      if (v6)
      {
        _Block_release(v6);
      }

      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_27;
      }
    }

    v6 = _Block_copy(v4->isa);
    isa = v4[1].isa;
    if (!isa)
    {
      goto LABEL_12;
    }

LABEL_11:
    dispatch_retain(isa);
    goto LABEL_12;
  }

LABEL_27:
  v12 = *MEMORY[0x29EDCA608];
}

void sub_29700AFB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int &,xpc::dict&>(uint64_t *a1, unsigned int *a2, void **a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v4, &object);
  xpc_release(object);
}

void ___ZN17ABMServerInternal24handlePublicMessage_syncEN3xpc10connectionERNS0_4dictE_block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = MEMORY[0x29C26CE60](*(a1 + 40));
  v8 = MEMORY[0x29EDCAA00];
  if (v7 != MEMORY[0x29EDCAA00])
  {
    return;
  }

  if (a2 != -534716414)
  {
    v11 = xpc_int64_create(a2);
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_11:
    v11 = xpc_null_create();
LABEL_12:
    xpc_dictionary_set_value(*(a1 + 40), kKeyCommandResult[0], v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    if (MEMORY[0x29C26CE60](*a3) == v8)
    {
      v13 = *a3;
      if (v13)
      {
        xpc_retain(v13);
      }

      else
      {
        v13 = xpc_null_create();
      }

      xpc_dictionary_set_value(*(a1 + 40), kKeyCommandData[0], v13);
      v14 = xpc_null_create();
      xpc_release(v13);
      xpc_release(v14);
    }

    goto LABEL_27;
  }

  if (*(v6 + 128) != 3)
  {
    v11 = xpc_int64_create(-534716414);
    if (v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v9) == v8)
    {
      xpc_retain(v9);
      v10 = v9;
    }

    else
    {
      v10 = xpc_null_create();
    }
  }

  else
  {
    v10 = xpc_null_create();
    v9 = 0;
  }

  xpc_release(v9);
  v15 = xpc_int64_create(-534716415);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(a1 + 40), kKeyCommandResult[0], v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = xpc_string_create("Server not available");
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, *MEMORY[0x29EDBE648], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  if (v10)
  {
    xpc_retain(v10);
    v19 = v10;
  }

  else
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(a1 + 40), kKeyCommandData[0], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  xpc_release(v10);
LABEL_27:
  v22 = *(a1 + 40);
  v21 = *(a1 + 48);

  xpc_connection_send_message(v21, v22);
}

void __destroy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void __destroy_helper_block_e8_40c15_ZTSN3xpc4dictE48c22_ZTSN3xpc10connectionE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void __Block_byref_object_dispose__3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN20HandDetectionManager4initEv_block_invoke_8(void *a1, unsigned int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7)
      {
        *(v5 + 88) = a2;
        v9 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          if (a2 > 3)
          {
            v10 = "Unknown Audio Output";
          }

          else
          {
            v10 = off_29EE643A0[a2];
          }

          v12 = 136315138;
          v13 = v10;
          _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Audio State: %s", &v12, 0xCu);
        }

        HandDetectionManager::updateHandDetection(v5);
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void HandDetectionManager::updateHandDetection(os_log_t *this)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = *(this + 88);
  if (v2 != 1 || *(this + 34) != 1 || *(this + 112) != 1 || *(this + 152) != 1)
  {
    v3 = 0;
    v4 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

LABEL_8:
    if (v2 > 3)
    {
      v5 = "Unknown Audio Output";
    }

    else
    {
      v5 = off_29EE643A0[v2];
    }

    v6 = "Off";
    if (*(this + 112))
    {
      v7 = "On";
    }

    else
    {
      v7 = "Off";
    }

    v8 = *(this + 34);
    if (v8 > 2)
    {
      v9 = "Unknown";
      if (*(this + 152))
      {
        v6 = "On";
      }

      if (v3 > 2)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v9 = off_29EE64370[v8];
      if (*(this + 152))
      {
        v6 = "On";
      }

      if (v3 > 2)
      {
LABEL_18:
        v10 = "Unknown Hand Detection";
LABEL_23:
        *v19 = 136316162;
        *&v19[4] = v5;
        *&v19[12] = 2080;
        *&v19[14] = v7;
        *&v19[22] = 2080;
        v20 = v9;
        *aBlock = 2080;
        *&aBlock[2] = v6;
        *&aBlock[10] = 2080;
        v22 = v10;
        _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Audio State: %s, Proximity Sensor: %s, Motion State: %s, Tx State: %s -> Notifying Hand Detection: %s", v19, 0x34u);
        goto LABEL_24;
      }
    }

    v10 = off_29EE64388[v3];
    goto LABEL_23;
  }

  v3 = *(this + 16);
  v4 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_8;
  }

LABEL_24:
  v11 = this[3];
  v12 = this[4];
  if (v11 != v12)
  {
    while (!v11->isa)
    {
      v13 = 0;
      isa = v11[1].isa;
      if (isa)
      {
        goto LABEL_29;
      }

LABEL_30:
      if (!v13)
      {
        v16 = 0;
        *v19 = MEMORY[0x29EDCA5F8];
        *&v19[8] = 1174405120;
        *&v19[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEclIJS2_EEEvDpT__block_invoke;
        v20 = &__block_descriptor_tmp_27_2;
LABEL_36:
        v17 = 0;
        goto LABEL_37;
      }

      v15 = _Block_copy(v13);
      v16 = v15;
      *v19 = MEMORY[0x29EDCA5F8];
      *&v19[8] = 1174405120;
      *&v19[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEclIJS2_EEEvDpT__block_invoke;
      v20 = &__block_descriptor_tmp_27_2;
      if (!v15)
      {
        goto LABEL_36;
      }

      v17 = _Block_copy(v15);
LABEL_37:
      *aBlock = v17;
      *&aBlock[8] = v3;
      dispatch_async(isa, v19);
      if (*aBlock)
      {
        _Block_release(*aBlock);
      }

      if (v16)
      {
        _Block_release(v16);
      }

      if (isa)
      {
        dispatch_release(isa);
      }

      if (v13)
      {
        _Block_release(v13);
      }

      v11 += 2;
      if (v11 == v12)
      {
        goto LABEL_45;
      }
    }

    v13 = _Block_copy(v11->isa);
    isa = v11[1].isa;
    if (!isa)
    {
      goto LABEL_30;
    }

LABEL_29:
    dispatch_retain(isa);
    goto LABEL_30;
  }

LABEL_45:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_29700B92C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c92_ZTSN8dispatch5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12AudioManager16AudioOutputStateEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN9SARModule28initializeHandDetection_syncEv_block_invoke(void *a1, unsigned __int8 a2)
{
  v33[1] = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_36;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
    goto LABEL_36;
  }

  v7 = a1[5];
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v7)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v8 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
    if (!v7)
    {
LABEL_36:
      v28 = *MEMORY[0x29EDCA608];
      return;
    }
  }

  if (*(v5 + 232))
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  *(v5 + 136) = v9;
  v10 = *(v5 + 104);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&dword_296FF7000, v10, OS_LOG_TYPE_DEFAULT, "#I Sending Grip State: 0x%x\n", buf, 8u);
  }

  v11 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v12 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v11);
    v13 = *buf;
    memset(buf, 0, sizeof(buf));
    v14 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v13;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v12 = off_2A18B7430;
  }

  v16 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v30 = *(v5 + 136);
  if (*(v12 + 1))
  {
    *buf = 0;
    v33[0] = 0;
    v31 = 1;
    v17 = AppleSARHelper::callUserClientMethod(v12, 9, buf, 1, &v30, 1, v33, &v31, &v30, 1uLL);
    if (!v16)
    {
LABEL_27:
      if (v17)
      {
        goto LABEL_28;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v17 = 0;
    if (!v16)
    {
      goto LABEL_27;
    }
  }

  if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_27;
  }

  v26 = v17;
  (v16->__on_zero_shared)(v16);
  std::__shared_weak_count::__release_weak(v16);
  if (v26)
  {
LABEL_28:
    if (*(v5 + 137) != *(v5 + 136) || !*(v5 + 272))
    {
      v18 = *(v5 + 80);
      if (!v18 || (v19 = *(v5 + 72), (v20 = std::__shared_weak_count::lock(v18)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v21 = v20;
      v22 = operator new(8uLL);
      *v22 = v5;
      v23 = *(v5 + 88);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = operator new(0x18uLL);
      *v24 = v22;
      v24[1] = v19;
      v24[2] = v21;
      dispatch_async_f(v23, v24, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28initializeHandDetection_syncEvEUb6_E4__14EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
        v25 = *MEMORY[0x29EDCA608];
        return;
      }
    }

    goto LABEL_36;
  }

LABEL_35:
  v27 = *(v5 + 104);
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_36;
  }

  *buf = 0;
  _os_log_error_impl(&dword_296FF7000, v27, OS_LOG_TYPE_ERROR, "Failed to set SAR Fusion State!", buf, 2u);
  v29 = *MEMORY[0x29EDCA608];
}

void sub_29700BDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __destroy_helper_block_e8_32c92_ZTSN8dispatch5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN4coex6Module5State32handleTransparentMessageReq_syncEN3xpc4dictENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (*a2)
  {
    v3 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to send transparent message req: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void __destroy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIN4coex6Module5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN20HandDetectionManager4initEv_block_invoke_13(void *a1, int a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7)
      {
        isProxCovered = ctu::iokit::IOHIDController::isProxCovered(*(v5 + 96));
        v10 = *v5;
        if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
        {
          if (*(v5 + 112) == isProxCovered)
          {
            goto LABEL_13;
          }

          goto LABEL_8;
        }

        v14 = "Off";
        if (isProxCovered)
        {
          v14 = "On";
        }

        v15 = 136315394;
        v16 = v14;
        v17 = 1024;
        v18 = a2;
        _os_log_debug_impl(&dword_296FF7000, v10, OS_LOG_TYPE_DEBUG, "#D Received proximity information: %s (mask: 0x%x)", &v15, 0x12u);
        if (*(v5 + 112) != isProxCovered)
        {
LABEL_8:
          *(v5 + 112) = isProxCovered;
          v11 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            v12 = "Off";
            if (isProxCovered)
            {
              v12 = "On";
            }

            v15 = 136315138;
            v16 = v12;
            _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I Proximity Sensor: %s", &v15, 0xCu);
          }

          HandDetectionManager::updateHandDetection(v5);
        }
      }
    }
  }

LABEL_13:
  v13 = *MEMORY[0x29EDCA608];
}

uint64_t abm::debug::handleDebugPrint(int a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x29EDCA608];
  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44[1] = v8;
  v44[2] = v8;
  v44[0] = v8;
  ctu::LogMessageBuffer::LogMessageBuffer(v44);
  if (a2 && *a2)
  {
    v9 = MEMORY[0x29C26B610](v44, a2);
    MEMORY[0x29C26B610](v9, ": ");
  }

  MEMORY[0x29C26B090](&v42, a3, a4);
  ctu::operator<<();
  v10 = MEMORY[0x29C26B0B0](&v42);
  ctu::Clock::now_in_nanoseconds(v10);
  v11 = operator new(0x60uLL);
  v12 = abm::debug::kLogDomainMap[a1];
  v13 = strlen(v12);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v15 = operator new(v16);
    __p[1] = v14;
    v41 = v16 | 0x8000000000000000;
    __p[0] = v15;
    goto LABEL_12;
  }

  HIBYTE(v41) = v13;
  v15 = __p;
  if (v13)
  {
LABEL_12:
    memmove(v15, v12, v14);
  }

  *(v14 + v15) = 0;
  MEMORY[0x29C26B070](v44);
  ctu::LogMessageBuffer::takeMetadata(v44);
  ctu::LogMessage::LogMessage();
  v42 = v11;
  v17 = operator new(0x20uLL);
  v17->__vftable = &unk_2A1E2C0C8;
  v17->__shared_owners_ = 0;
  v17->__shared_weak_owners_ = 0;
  v17[1].__vftable = v11;
  v43 = v17;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
    v18 = v11 + 2;
    v19 = SHIBYTE(v11[2].__r_.__value_.__r.__words[2]);
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = v11 + 2;
    v19 = SHIBYTE(v11[2].__r_.__value_.__r.__words[2]);
    if ((v19 & 0x8000000000000000) == 0)
    {
LABEL_15:
      data = v18;
      size = v19;
      goto LABEL_18;
    }
  }

  data = v11[2].__r_.__value_.__l.__data_;
  size = v11[2].__r_.__value_.__l.__size_;
LABEL_18:
  v22 = data + size;
  v23 = memchr(data, 10, size);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  if (v24 == v22 || (v25 = v24 + 1, v24 + 1 == v22))
  {
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    do
    {
      v28 = *v25;
      if (v28 != 10)
      {
        *v24++ = v28;
      }

      ++v25;
    }

    while (v25 != v22);
    LOBYTE(v19) = *(&v11[2].__r_.__value_.__s + 23);
    if ((v19 & 0x80) == 0)
    {
LABEL_24:
      v26 = v18 + v19;
      v27 = v24 - v18;
      if (v19 >= (v24 - v18))
      {
        goto LABEL_25;
      }

LABEL_32:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  v30 = v11[2].__r_.__value_.__l.__data_;
  v29 = v11[2].__r_.__value_.__l.__size_;
  v26 = &v30[v29];
  v27 = v24 - v30;
  if (v29 < v24 - v30)
  {
    goto LABEL_32;
  }

LABEL_25:
  if (v26 - v24 != -1)
  {
    std::string::__erase_external_with_move(v18, v27, v26 - v24);
    goto LABEL_35;
  }

  if ((v19 & 0x80) == 0)
  {
    *(&v11[2].__r_.__value_.__s + 23) = v27 & 0x7F;
    v18->__r_.__value_.__s.__data_[v27] = 0;
LABEL_35:
    if (a1 <= 1)
    {
      goto LABEL_36;
    }

    goto LABEL_48;
  }

  v35 = v11[2].__r_.__value_.__l.__data_;
  v11[2].__r_.__value_.__l.__size_ = v27;
  v35[v27] = 0;
  if (a1 <= 1)
  {
LABEL_36:
    if (a1)
    {
      v33 = qword_2A18B7940;
      if (qword_2A18B7940 && os_log_type_enabled(qword_2A18B7940, OS_LOG_TYPE_DEBUG))
      {
        v34 = &v42[2];
        if (SHIBYTE(v42[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v34 = v34->__words[0];
        }

        *buf = 136315138;
        v47 = v34;
        _os_log_debug_impl(&dword_296FF7000, v33, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
      }
    }

    else
    {
      v31 = _MergedGlobals_13;
      if (_MergedGlobals_13 && os_log_type_enabled(_MergedGlobals_13, OS_LOG_TYPE_DEFAULT))
      {
        v32 = &v42[2];
        if (SHIBYTE(v42[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v32 = v32->__words[0];
        }

        *buf = 136315138;
        v47 = v32;
LABEL_54:
        _os_log_impl(&dword_296FF7000, v31, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        goto LABEL_55;
      }
    }

    goto LABEL_55;
  }

LABEL_48:
  if (a1 != 2)
  {
    v31 = qword_2A18B7948;
    if (qword_2A18B7948)
    {
      if (os_log_type_enabled(qword_2A18B7948, OS_LOG_TYPE_DEFAULT))
      {
        v36 = &v42[2];
        if (SHIBYTE(v42[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v36 = v36->__words[0];
        }

        *buf = 136315138;
        v47 = v36;
        goto LABEL_54;
      }
    }
  }

LABEL_55:
  v37 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  result = MEMORY[0x29C26B0B0](v44);
  v39 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ___ZN12PowerManager5State4initEv_block_invoke_2(void *a1, ctu::power::manager *a2, const void **a3)
{
  v68 = *MEMORY[0x29EDCA608];
  v5 = a1[4];
  v6 = a1[6];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = std::__shared_weak_count::lock(v6);
  if (!v8 || !a1[5])
  {
LABEL_7:
    (*(*a3 + 2))();
    if (!v8)
    {
      goto LABEL_91;
    }

    goto LABEL_89;
  }

  if (*a3)
  {
    v9 = _Block_copy(*a3);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v5 + 14);
  v11 = *(v5 + 60);
  v50 = v11;
  HIDWORD(v13) = a2 + 536870288;
  LODWORD(v13) = a2 + 536870288;
  v12 = v13 >> 4;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      if (v11)
      {
        goto LABEL_33;
      }

      v15 = 2;
    }

    else
    {
      if (v12 != 9)
      {
        if (v12 != 11 || v10 || v11 == 2)
        {
          goto LABEL_33;
        }

        v14 = 0;
        v15 = 2;
        goto LABEL_29;
      }

      if (v10)
      {
        goto LABEL_33;
      }

      v15 = v11;
      if (v11 != 2)
      {
        goto LABEL_33;
      }
    }

LABEL_28:
    v14 = 1;
    goto LABEL_29;
  }

  if (!v12)
  {
    if (v10 != 1)
    {
      goto LABEL_33;
    }

    v15 = 0;
    goto LABEL_28;
  }

  if (v12 != 1 || v10 != 1)
  {
    goto LABEL_33;
  }

  v14 = 0;
  v15 = v11 != 0;
LABEL_29:
  if (v5[19])
  {
    if (a2 == -536870288)
    {
      goto LABEL_33;
    }

    if (a2 == -536870272)
    {
      if (!v5[25])
      {
        if (v9)
        {
          v48 = _Block_copy(v9);
        }

        else
        {
          v48 = 0;
        }

        v49 = v5[12];
        v5[12] = v48;
        if (v49)
        {
          _Block_release(v49);
        }

        v16 = 1;
        v17 = v5[4];
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
LABEL_41:
          if (a2 == -536870144 || a2 == -536870256)
          {
            v23 = v5[25];
            if (v23)
            {
              v24 = v5[4];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&buf[4] = v23;
                _os_log_impl(&dword_296FF7000, v24, OS_LOG_TYPE_DEFAULT, "#I Allowing deferred work to run (skipping power event); count=%zd", buf, 0xCu);
              }

              v26 = v5[24];
              v25 = v5 + 24;
              std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(v26);
              *v25 = 0;
              v25[1] = 0;
              *(v25 - 1) = v25;
              if (!v9)
              {
                goto LABEL_89;
              }

              goto LABEL_88;
            }
          }

LABEL_87:
          if (!v9)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

LABEL_34:
        v18 = ctu::power::manager::asCString(a2);
        v19 = v5[19];
        v20 = "Unknown";
        v21 = v5[25];
        if (v10 == 1)
        {
          v20 = "PoweredOn";
        }

        *buf = 136316418;
        *&buf[4] = v18;
        v62 = 1024;
        if (!v10)
        {
          v20 = "LowPower";
        }

        *v63 = v50;
        v22 = "false";
        *&v63[4] = 2080;
        *&v63[6] = v20;
        *&v63[14] = 2048;
        if (v16)
        {
          v22 = "true";
        }

        *&v63[16] = v19;
        v64 = 2048;
        v65 = v21;
        v66 = 2080;
        v67 = v22;
        _os_log_impl(&dword_296FF7000, v17, OS_LOG_TYPE_DEFAULT, "#I Cannot accept notification: %s, SleepState: %u, PowerState: %s, Assertions: %lu, Assertions-deferred: %lu, Deferred-ack: %s", buf, 0x3Au);
        goto LABEL_41;
      }

LABEL_33:
      (*(v9 + 2))(v9, 0);
      v16 = 0;
      v17 = v5[4];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      goto LABEL_34;
    }
  }

  *(v5 + 14) = v14;
  *(v5 + 15) = v15;
  *(v5 + 16) = a2;
  v27 = v5[9];
  v58 = a2;
  v59 = v10;
  v60 = v11;
  v57 = __PAIR64__(v15, v14);
  PowerStats::reportSystemStateChange(v27, &v59, &v57);
  v28 = v5[4];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = ctu::power::manager::asCString(a2);
    v30 = "Unknown";
    v31 = "PoweredOn";
    v33 = *(v5 + 14);
    v32 = *(v5 + 15);
    if (v33 != 1)
    {
      v31 = "Unknown";
    }

    if (!v33)
    {
      v31 = "LowPower";
    }

    if (v32 <= 2)
    {
      v30 = off_29EE64A20[v32];
    }

    *buf = 136315650;
    *&buf[4] = v29;
    v62 = 2080;
    *v63 = v31;
    *&v63[8] = 2080;
    *&v63[10] = v30;
    _os_log_impl(&dword_296FF7000, v28, OS_LOG_TYPE_DEFAULT, "#I Power notification: %s, Power state: %s, Sleep state: %s", buf, 0x20u);
  }

  v34 = *(v5 + 16);
  switch(v34)
  {
    case -536870144:
LABEL_59:
      v35 = *(v5 + 14);
      v36 = dispatch_group_create();
      v37 = v5[11];
      if (v37)
      {
        if (v36)
        {
          dispatch_retain(v36);
          dispatch_group_enter(v36);
          v37 = v5[11];
        }

        *buf = v36;
        (*(v37 + 16))(v37, v35, buf);
        if (*buf)
        {
          dispatch_group_leave(*buf);
          if (*buf)
          {
            dispatch_release(*buf);
          }
        }
      }

      v38 = v5[1];
      if (!v38 || (v39 = *v5, (v40 = std::__shared_weak_count::lock(v38)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v41 = v40;
      atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v40->__on_zero_shared)(v40);
        std::__shared_weak_count::__release_weak(v41);
      }

      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN12PowerManager5State28handlePowerNotification_syncEN8dispatch5blockIU13block_pointerFvbEEEj_block_invoke;
      block[3] = &__block_descriptor_tmp_26;
      block[4] = v5;
      object = v36;
      if (v36)
      {
        dispatch_retain(v36);
      }

      if (v9)
      {
        v42 = _Block_copy(v9);
      }

      else
      {
        v42 = 0;
      }

      aBlock = v42;
      v54 = v39;
      v55 = v41;
      atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v56 = v35;
      dispatch_group_notify(v36, v5[2], block);
      if (v55)
      {
        std::__shared_weak_count::__release_weak(v55);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (object)
      {
        dispatch_release(object);
      }

      std::__shared_weak_count::__release_weak(v41);
      if (v36)
      {
        dispatch_release(v36);
      }

      goto LABEL_87;
    case -536870256:
      (*(v9 + 2))(v9, 1);
      v43 = v5[25];
      if (v43)
      {
        v44 = v5[4];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v43;
          _os_log_impl(&dword_296FF7000, v44, OS_LOG_TYPE_DEFAULT, "#I Allowing deferred work to run (after WillNotSleep); count=%zd", buf, 0xCu);
        }

        v46 = v5[24];
        v45 = v5 + 24;
        std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(v46);
        *v45 = 0;
        v45[1] = 0;
        *(v45 - 1) = v45;
      }

      break;
    case -536870272:
      goto LABEL_59;
    default:
      (*(v9 + 2))(v9, 1);
      break;
  }

LABEL_88:
  _Block_release(v9);
LABEL_89:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_91:
  v47 = *MEMORY[0x29EDCA608];
}

void sub_29700CD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, dispatch_group_t group)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void PowerStats::reportSystemStateChange(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(a1 + 100) = *(a3 + 2);
  *(a1 + 92) = v4;
  v5 = *(a3 + 2);
  if (v5 != -536870112)
  {
    if (v5 != -536870272)
    {
      return;
    }

    if (*(a3 + 1) == 1)
    {
      if (*(a1 + 88) == 1)
      {
        v6 = *a1;
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Forced sleep while power assertion(s) held ", buf, 2u);
        }

        ++*(a1 + 20);
        v16 = 0;
        LOBYTE(__p) = 0;
        PowerStats::submitLowPowerEventMetric_sync(a1, 1u, 1u, &__p);
        if (v16 < 0)
        {
          operator delete(__p);
        }
      }

      ++*(a1 + 28);
      SystemTime = TelephonyUtilGetSystemTime();
      *(a1 + 72) = SystemTime;
      v8 = *(a1 + 64);
      if (!v8)
      {
        return;
      }
    }

    else
    {
      ++*(a1 + 32);
      SystemTime = TelephonyUtilGetSystemTime();
      *(a1 + 72) = SystemTime;
      v8 = *(a1 + 64);
      if (!v8)
      {
        return;
      }
    }

    *(a1 + 80) = (SystemTime - v8) / 0x3E8u;
    return;
  }

  ++*(a1 + 24);
  v10 = TelephonyUtilGetSystemTime();
  *(a1 + 64) = v10;
  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = (v10 - v11) / 0x3E8u;
    *(a1 + 84) = v12;
  }

  else
  {
    v12 = *(a1 + 84);
  }

  v13 = *(a2 + 4) == 1;
  v14 = *(a1 + 80);

  PowerStats::submitWakeInfoMetric_sync(a1, v13, v12, v14);
}

void std::string::__erase_external_with_move(std::string *this, std::string::size_type __pos, std::string::size_type __n)
{
  if (__n)
  {
    v3 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    size = v3;
    v5 = this;
    if ((v3 & 0x8000000000000000) != 0)
    {
      v5 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
      v6 = size - __pos;
      if (size - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = size - __pos;
      }

      if (size - __pos <= __n)
      {
LABEL_7:
        v8 = size - v7;
        if ((v3 & 0x80) == 0)
        {
LABEL_8:
          *(&this->__r_.__value_.__s + 23) = v8 & 0x7F;
LABEL_15:
          v5->__r_.__value_.__s.__data_[v8] = 0;
          return;
        }

LABEL_14:
        this->__r_.__value_.__l.__size_ = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v3 - __pos;
      if (v3 - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = v3 - __pos;
      }

      if (v3 - __pos <= __n)
      {
        goto LABEL_7;
      }
    }

    v9 = this;
    memmove(v5 + __pos, v5 + __pos + v7, v6 - v7);
    this = v9;
    v8 = size - v7;
    if ((*(&v9->__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }
}

void PowerStats::submitWakeInfoMetric_sync(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30[0]) = 0;
    _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I Submitting AWD of wake info", v30, 2u);
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = MEMORY[0x29EDCAA00];
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v9) == v10)
    {
      xpc_retain(v9);
      v11 = v9;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v9 = 0;
  }

  xpc_release(v9);
  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v12) == v10)
    {
      xpc_retain(v12);
      v13 = v12;
    }

    else
    {
      v13 = xpc_null_create();
    }
  }

  else
  {
    v13 = xpc_null_create();
    v12 = 0;
  }

  xpc_release(v12);
  v14 = xpc_int64_create(a2);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF008], v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = xpc_int64_create(a3);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF468], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = xpc_int64_create(a4);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF358], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = xpc_string_create(*MEMORY[0x29EDBF880]);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE588], v20);
  v21 = xpc_null_create();
  xpc_release(v20);
  xpc_release(v21);
  v22 = xpc_int64_create(524465);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE660], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  if (v13)
  {
    xpc_retain(v13);
    v24 = v13;
  }

  else
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE580], v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  if (*(a1 + 104) && *(a1 + 112))
  {
    if (v11)
    {
      xpc_retain(v11);
      v26 = v11;
      v27 = *(a1 + 104);
      if (v27)
      {
LABEL_32:
        v28 = _Block_copy(v27);
        goto LABEL_35;
      }
    }

    else
    {
      v26 = xpc_null_create();
      v27 = *(a1 + 104);
      if (v27)
      {
        goto LABEL_32;
      }
    }

    v28 = 0;
LABEL_35:
    v29 = *(a1 + 112);
    v30[0] = MEMORY[0x29EDCA5F8];
    v30[1] = 1174405120;
    v30[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc4dictEEEclIJS2_EEEvDpT__block_invoke;
    v30[3] = &__block_descriptor_tmp_43;
    if (v28)
    {
      aBlock = _Block_copy(v28);
      object = v26;
      if (v26)
      {
LABEL_37:
        xpc_retain(v26);
LABEL_40:
        dispatch_async(v29, v30);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v28)
        {
          _Block_release(v28);
        }

        xpc_release(v26);
        goto LABEL_45;
      }
    }

    else
    {
      aBlock = 0;
      object = v26;
      if (v26)
      {
        goto LABEL_37;
      }
    }

    object = xpc_null_create();
    goto LABEL_40;
  }

LABEL_45:
  xpc_release(v13);
  xpc_release(v11);
}

xpc_object_t __copy_helper_block_e8_32c53_ZTSN8dispatch5blockIU13block_pointerFvN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = *(a2 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void dispatch::block<void({block_pointer})(xpc::dict)>::operator()<xpc::dict const&>(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v2 + 16))(v2, &object);
  xpc_release(object);
}

void ___ZN12PowerManager5State10initializeEv_block_invoke_49(void *a1, xpc_object_t *a2)
{
  v3 = a1[5];
  if (!v3)
  {
    return;
  }

  v5 = std::__shared_weak_count::lock(v3);
  v19 = v5;
  if (!v5)
  {
    return;
  }

  v18 = a1[4];
  if (!v18 || (v6 = a1[6]) == 0)
  {
LABEL_19:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v13 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v13);
    }

    return;
  }

  v7 = *MEMORY[0x29EDBEBD0];
  v8 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v8 | 7) + 1;
    }

    v10 = operator new(v12);
    __dst[1] = v9;
    v17 = v12 | 0x8000000000000000;
    __dst[0] = v10;
LABEL_14:
    memmove(v10, v7, v9);
    *(v9 + v10) = 0;
    v11 = *a2;
    v15 = v11;
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  HIBYTE(v17) = v8;
  v10 = __dst;
  if (v8)
  {
    goto LABEL_14;
  }

  LOBYTE(__dst[0]) = 0;
  v11 = *a2;
  v15 = v11;
  if (v11)
  {
LABEL_9:
    xpc_retain(v11);
    goto LABEL_16;
  }

LABEL_15:
  v11 = xpc_null_create();
  v15 = v11;
LABEL_16:
  v14 = 0;
  ServiceManager::runCommand(v6, __dst, &v15, &v14);
  xpc_release(v11);
  v15 = 0;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  v5 = v19;
  if (v19)
  {
    goto LABEL_19;
  }
}

void sub_29700D804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  xpc_release(v18);
  if (a17 < 0)
  {
    operator delete(__p);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c53_ZTSN8dispatch5blockIU13block_pointerFvN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void ___ZN11StatsModule28registerCommandHandlers_syncEv_block_invoke(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_20;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v28 = v8;
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = v8;
  v10 = a1[5];
  if (!v10)
  {
    goto LABEL_18;
  }

  if (MEMORY[0x29C26CE60](*a2) != MEMORY[0x29EDCAA00])
  {
    v11 = v7[13];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v27 = *MEMORY[0x29EDBEBD0];
      *object = 136315138;
      *&object[4] = v27;
      _os_log_error_impl(&dword_296FF7000, v11, OS_LOG_TYPE_ERROR, "No input is given for %s", object, 0xCu);
      if (!*a3)
      {
LABEL_18:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        goto LABEL_20;
      }
    }

    else if (!*a3)
    {
      goto LABEL_18;
    }

    v12 = xpc_null_create();
    v13 = *a3;
    *object = v12;
    v14 = xpc_null_create();
    v13[2](v13, 3760250880, object);
    xpc_release(*object);
    xpc_release(v14);
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = *a2;
  if (v15)
  {
    xpc_retain(v15);
    v16 = *a3;
    if (*a3)
    {
      goto LABEL_10;
    }

LABEL_13:
    v17 = 0;
    v18 = v7[10];
    if (!v18)
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  v15 = xpc_null_create();
  v16 = *a3;
  if (!*a3)
  {
    goto LABEL_13;
  }

LABEL_10:
  v17 = _Block_copy(v16);
  v18 = v7[10];
  if (!v18)
  {
LABEL_23:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

LABEL_14:
  v19 = v7[9];
  v20 = std::__shared_weak_count::lock(v18);
  if (!v20)
  {
    goto LABEL_23;
  }

  v21 = v20;
  v22 = operator new(0x28uLL);
  *v22 = v7;
  v22[1] = v10;
  v22[2] = v9;
  v22[3] = v15;
  v23 = xpc_null_create();
  v22[4] = v17;
  v24 = v7[11];
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  v25 = operator new(0x18uLL);
  *v25 = v22;
  v25[1] = v19;
  v25[2] = v21;
  dispatch_async_f(v24, v25, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11StatsModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__2EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  xpc_release(v23);
  v9 = v28;
  if (v28)
  {
    goto LABEL_18;
  }

LABEL_20:
  v26 = *MEMORY[0x29EDCA608];
}

void sub_29700DB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11StatsModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__2EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t *a1)
{
  v40 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v37 = v1;
  v2 = *v1;
  v3 = *MEMORY[0x29EDBE588];
  if (xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE588]))
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE580]);
    v5 = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      v5 = xpc_null_create();
    }

    v8 = MEMORY[0x29C26CE60](v5);
    v9 = MEMORY[0x29EDCAA00];
    if (v8 != MEMORY[0x29EDCAA00] && MEMORY[0x29C26CE60](v5) != MEMORY[0x29EDCA9E0])
    {
      v6 = 3760250880;
      v10 = *(v2 + 104);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_296FF7000, v10, OS_LOG_TYPE_ERROR, "Data type should be dictionary/array", buf, 2u);
      }

      goto LABEL_63;
    }

    memset(buf, 170, 24);
    v11 = xpc_dictionary_get_value(*(v1 + 24), v3);
    *object = v11;
    if (v11)
    {
      xpc_retain(v11);
    }

    else
    {
      *object = xpc_null_create();
    }

    xpc::dyn_cast_or_default(buf, object, "", v12);
    xpc_release(*object);
    v13 = *MEMORY[0x29EDBF8E0];
    v14 = strlen(*MEMORY[0x29EDBF8E0]);
    v15 = buf[23];
    if ((buf[23] & 0x8000000000000000) != 0)
    {
      if (v14 == *&buf[8])
      {
        if (v14 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(*buf, v13, v14))
        {
LABEL_41:
          v23 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE660]);
          *object = v23;
          if (v23)
          {
            xpc_retain(v23);
          }

          else
          {
            *object = xpc_null_create();
          }

          v25 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(*object);
          *object = v5;
          if (v5 && MEMORY[0x29C26CE60](v5) == v9)
          {
            xpc_retain(v5);
            v26 = v5;
          }

          else
          {
            v26 = xpc_null_create();
            *object = v26;
          }

          v35 = StatsModule::reportStats_sync(v2, v25, object);
          xpc_release(v26);
          *object = 0;
          if (v35)
          {
            v6 = 0;
          }

          else
          {
            v6 = 3760250880;
          }

          if ((buf[23] & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_62;
        }
      }
    }

    else if (v14 == buf[23] && !memcmp(buf, v13, v14))
    {
      goto LABEL_41;
    }

    v16 = *MEMORY[0x29EDBF880];
    v17 = strlen(*MEMORY[0x29EDBF880]);
    if ((v15 & 0x80000000) != 0)
    {
      if (v17 == *&buf[8])
      {
        if (v17 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(*buf, v16, v17))
        {
          goto LABEL_43;
        }
      }
    }

    else if (v17 == v15 && !memcmp(buf, v16, v17))
    {
LABEL_43:
      v24 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE660]);
      *object = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        *object = xpc_null_create();
      }

      v27 = xpc::dyn_cast_or_default(object, 0);
      xpc_release(*object);
      *object = v5;
      if (v5)
      {
        xpc_retain(v5);
        v28 = v5;
      }

      else
      {
        v28 = xpc_null_create();
        *object = v28;
      }

      StatsModule::reportAWD_sync(v2, v27, object);
      xpc_release(v28);
LABEL_60:
      v6 = 0;
      *object = 0;
LABEL_61:
      if (buf[23] < 0)
      {
LABEL_62:
        operator delete(*buf);
      }

LABEL_63:
      xpc_release(v5);
      goto LABEL_64;
    }

    v6 = 3760250880;
    v18 = *MEMORY[0x29EDBE550];
    v19 = strlen(*MEMORY[0x29EDBE550]);
    if ((v15 & 0x80000000) != 0)
    {
      if (v19 != *&buf[8])
      {
        v20 = *(v2 + 104);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }

        goto LABEL_46;
      }

      if (v19 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(*buf, v18, v19))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v19 != v15)
      {
        v20 = *(v2 + 104);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }

        goto LABEL_40;
      }

      if (memcmp(buf, v18, v19))
      {
LABEL_31:
        v20 = *(v2 + 104);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }

        if ((v15 & 0x80000000) != 0)
        {
LABEL_46:
          v22 = *buf;
LABEL_47:
          *object = 136315138;
          *&object[4] = v22;
          _os_log_impl(&dword_296FF7000, v20, OS_LOG_TYPE_DEFAULT, "#I Unrecognized stats type: %s", object, 0xCu);
          if (buf[23] < 0)
          {
            goto LABEL_62;
          }

          goto LABEL_63;
        }

LABEL_40:
        v22 = buf;
        goto LABEL_47;
      }
    }

    *object = v5;
    if (v5)
    {
      xpc_retain(v5);
      v21 = v5;
    }

    else
    {
      v21 = xpc_null_create();
      *object = v21;
    }

    StatsModule::updateAnalyticsData_sync(v2, object);
    xpc_release(v21);
    goto LABEL_60;
  }

  v6 = 3760250880;
  v7 = *(v2 + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Stats type is missing!", buf, 2u);
  }

LABEL_64:
  if (*(v1 + 32))
  {
    v29 = xpc_null_create();
    v30 = *(v1 + 32);
    *buf = v29;
    v31 = xpc_null_create();
    (*(v30 + 16))(v30, v6, buf);
    xpc_release(*buf);
    xpc_release(v31);
  }

  _ZNSt3__110unique_ptrIZZN11StatsModule28registerCommandHandlers_syncEvEUb_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(&v37);
  v32 = a1;
  if (a1)
  {
    v33 = a1[2];
    if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
      v32 = a1;
    }

    operator delete(v32);
  }

  v34 = *MEMORY[0x29EDCA608];
}

void sub_29700E17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void StatsModule::reportAWD_sync(uint64_t a1, int a2, void **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 160);
  if (v4)
  {
    v5 = *a3;
    object = v5;
    if (v5)
    {
      xpc_retain(v5);
    }

    else
    {
      object = xpc_null_create();
    }

    StatsAWD::submit(v4, a2, &object);
    xpc_release(object);
  }

  else
  {
    v6 = *(a1 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v10 = a2;
      _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "AWD object has not created yet. 0x%x metric ID cannot be submitted", buf, 8u);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_29700E3A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void StatsAWD::submit(uint64_t *a1, int a2, xpc_object_t *a3)
{
  v5 = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
    v6 = a1[1];
    if (!v6)
    {
LABEL_9:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v6 = a1[1];
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v7 = *a1;
  v8 = std::__shared_weak_count::lock(v6);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[2] = a2;
  *(v10 + 2) = v5;
  v11 = xpc_null_create();
  v12 = a1[2];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = operator new(0x18uLL);
  *v13 = v10;
  v13[1] = v7;
  v13[2] = v9;
  dispatch_async_f(v12, v13, dispatch::async<void ctu::SharedSynchronizable<StatsAWD>::execute_wrapped<StatsAWD::submit(unsigned int,xpc::object)::$_0>(StatsAWD::submit(unsigned int,xpc::object)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsAWD::submit(unsigned int,xpc::object)::$_0,dispatch_queue_s *::default_delete<StatsAWD::submit(unsigned int,xpc::object)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  xpc_release(v11);
}

uint64_t *_ZNSt3__110unique_ptrIZZN11StatsModule28registerCommandHandlers_syncEvEUb_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void dispatch::async<void ctu::SharedSynchronizable<StatsAWD>::execute_wrapped<StatsAWD::submit(unsigned int,xpc::object)::$_0>(StatsAWD::submit(unsigned int,xpc::object)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsAWD::submit(unsigned int,xpc::object)::$_0,dispatch_queue_s *::default_delete<StatsAWD::submit(unsigned int,xpc::object)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 40))
  {
    v4 = *(v2 + 2);
    v5 = v2[2];
    *buf = v5;
    if (v5)
    {
      xpc_retain(v5);
    }

    else
    {
      *buf = xpc_null_create();
    }

    StatsAWD::submit_sync(v3, v4, buf);
    xpc_release(*buf);
  }

  else
  {
    v6 = *(v3 + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "Failed: AWD connection setup failed", buf, 2u);
    }
  }

  xpc_release(v2[2]);
  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_29700E6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t *a10, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<StatsAWD::submit(unsigned int,xpc::object)::$_0,std::default_delete<StatsAWD::submit(unsigned int,xpc::object)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void StatsAWD::submit_sync(uint64_t a1, int a2, xpc_object_t *a3)
{
  v71 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 40))
  {
    v9 = *(a1 + 32);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_139;
    }

    *buf = 0;
    v10 = "Failed: AWD connection setup failed";
    v11 = v9;
    v12 = 2;
    goto LABEL_141;
  }

  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v7 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory);
  v65 = v7;
  if (!v7)
  {
    v13 = *(a1 + 32);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = a2;
      _os_log_debug_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEBUG, "#D Failed to get the metric of 0x%x", buf, 8u);
      v14 = *MEMORY[0x29EDCA608];
      return;
    }

    goto LABEL_139;
  }

  if (a2 <= 524464)
  {
    if (a2 > 524383)
    {
      if (a2 == 524384)
      {
        v8 = *a3;
        if (*a3)
        {
          xpc_retain(*a3);
        }

        else
        {
          v8 = xpc_null_create();
        }

        v18 = operator new(0x30uLL);
        *v18 = &unk_2A1E2D180;
        *(v18 + 1) = 0;
        *(v18 + 4) = 0;
        *(v18 + 10) = 0;
        *(v18 + 2) = 0;
        *(v18 + 21) = 0;
        *buf = v18;
        *v68 = v8;
        if (v8)
        {
          xpc_retain(v8);
          v24 = v8;
        }

        else
        {
          v24 = xpc_null_create();
          *v68 = v24;
        }

        v41 = StatsAWD::fillMetric_sync(a1, buf, v68);
        xpc_release(v24);
        if (v41)
        {
          if (v18[40])
          {
            WISTimestamp = *(v18 + 1);
          }

          else
          {
            WISTimestamp = wis::getWISTimestamp(v42);
            *(v18 + 10) |= 1u;
            *(v18 + 1) = WISTimestamp;
          }

          wis::MetricContainer::storeMetric(v65, WISTimestamp, *v65, v18);
        }

        goto LABEL_130;
      }

      if (a2 == 524464)
      {
        v8 = *a3;
        if (*a3)
        {
          xpc_retain(*a3);
        }

        else
        {
          v8 = xpc_null_create();
        }

        v18 = operator new(0x28uLL);
        *v18 = &unk_2A1E2E4C8;
        *(v18 + 1) = 0;
        v20 = MEMORY[0x29EDC9758];
        *(v18 + 2) = 0;
        *(v18 + 3) = v20;
        *(v18 + 4) = 0;
        *buf = v18;
        *v68 = v8;
        if (v8)
        {
          xpc_retain(v8);
          v21 = v8;
        }

        else
        {
          v21 = xpc_null_create();
          *v68 = v21;
        }

        v34 = StatsAWD::fillMetric_sync(a1, buf, v68);
        xpc_release(v21);
        if (v34)
        {
          if (v18[36])
          {
            v36 = *(v18 + 1);
          }

          else
          {
            v36 = wis::getWISTimestamp(v35);
            *(v18 + 9) |= 1u;
            *(v18 + 1) = v36;
          }

          wis::MetricContainer::storeMetric(v65, v36, *v65, v18);
        }

        goto LABEL_130;
      }
    }

    else
    {
      if (a2 == 524310)
      {
        v8 = *a3;
        if (*a3)
        {
          xpc_retain(*a3);
        }

        else
        {
          v8 = xpc_null_create();
        }

        v18 = operator new(0x48uLL);
        v23 = MEMORY[0x29EDC9758];
        *v18 = &unk_2A1E2D450;
        *(v18 + 1) = v23;
        *(v18 + 20) = 0;
        *(v18 + 2) = 0;
        *(v18 + 3) = v23;
        *(v18 + 4) = v23;
        *(v18 + 11) = 0;
        *(v18 + 7) = 0;
        *(v18 + 8) = 0;
        *(v18 + 6) = v23;
        *buf = v18;
        *v68 = v8;
        if (v8 && MEMORY[0x29C26CE60](v8) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v8);
          v40 = v8;
        }

        else
        {
          v40 = xpc_null_create();
          *v68 = v40;
        }

        v56 = StatsAWD::fillMetric_sync(a1, buf, v68);
        xpc_release(v40);
        if (v56)
        {
          if (v18[69])
          {
            v58 = *(v18 + 7);
          }

          else
          {
            v58 = wis::getWISTimestamp(v57);
            *(v18 + 17) |= 0x100u;
            *(v18 + 7) = v58;
          }

          wis::MetricContainer::storeMetric(v65, v58, *v65, v18);
        }

        goto LABEL_130;
      }

      if (a2 == 524365)
      {
        v8 = *a3;
        if (*a3)
        {
          xpc_retain(*a3);
        }

        else
        {
          v8 = xpc_null_create();
        }

        v18 = operator new(0x30uLL);
        *v18 = &unk_2A1E2D270;
        *(v18 + 1) = 0;
        *(v18 + 5) = 0;
        *(v18 + 2) = 0;
        *(v18 + 3) = 0;
        *(v18 + 8) = 0;
        *buf = v18;
        *v68 = v8;
        if (v8)
        {
          xpc_retain(v8);
          v19 = v8;
        }

        else
        {
          v19 = xpc_null_create();
          *v68 = v19;
        }

        v31 = StatsAWD::fillMetric_sync(a1, buf, v68);
        xpc_release(v19);
        if (v31)
        {
          if (v18[44])
          {
            v33 = *(v18 + 1);
          }

          else
          {
            v33 = wis::getWISTimestamp(v32);
            *(v18 + 11) |= 1u;
            *(v18 + 1) = v33;
          }

          wis::MetricContainer::storeMetric(v65, v33, *v65, v18);
        }

        goto LABEL_130;
      }
    }

    goto LABEL_36;
  }

  if (a2 <= 524466)
  {
    if (a2 == 524465)
    {
      v8 = *a3;
      if (*a3)
      {
        xpc_retain(*a3);
      }

      else
      {
        v8 = xpc_null_create();
      }

      v18 = operator new(0x28uLL);
      *(v18 + 1) = 0;
      *v18 = &unk_2A1E2E540;
      *(v18 + 2) = 0;
      *(v18 + 3) = 0;
      *(v18 + 8) = 0;
      *buf = v18;
      *v68 = v8;
      if (v8)
      {
        xpc_retain(v8);
        v27 = v8;
      }

      else
      {
        v27 = xpc_null_create();
        *v68 = v27;
      }

      v47 = StatsAWD::fillMetric_sync(a1, buf, v68);
      xpc_release(v27);
      if (v47)
      {
        if (v18[32])
        {
          v49 = *(v18 + 1);
        }

        else
        {
          v49 = wis::getWISTimestamp(v48);
          *(v18 + 8) |= 1u;
          *(v18 + 1) = v49;
        }

        wis::MetricContainer::storeMetric(v65, v49, *v65, v18);
      }
    }

    else
    {
      v8 = *a3;
      if (*a3)
      {
        xpc_retain(*a3);
      }

      else
      {
        v8 = xpc_null_create();
      }

      v18 = operator new(0x50uLL);
      *v18 = &unk_2A1E2E5B8;
      *(v18 + 8) = 0u;
      *(v18 + 8) = 0;
      *(v18 + 18) = 0;
      *(v18 + 24) = 0u;
      *(v18 + 40) = 0u;
      *(v18 + 14) = 0;
      *buf = v18;
      *v68 = v8;
      if (v8)
      {
        xpc_retain(v8);
        v22 = v8;
      }

      else
      {
        v22 = xpc_null_create();
        *v68 = v22;
      }

      v37 = StatsAWD::fillMetric_sync(a1, buf, v68);
      xpc_release(v22);
      if (v37)
      {
        if (v18[72])
        {
          v39 = *(v18 + 1);
        }

        else
        {
          v39 = wis::getWISTimestamp(v38);
          *(v18 + 18) |= 1u;
          *(v18 + 1) = v39;
        }

        wis::MetricContainer::storeMetric(v65, v39, *v65, v18);
      }
    }

    goto LABEL_130;
  }

  if (a2 == 524467)
  {
    v8 = *a3;
    if (*a3)
    {
      xpc_retain(*a3);
    }

    else
    {
      v8 = xpc_null_create();
    }

    v18 = operator new(0x68uLL);
    *v18 = &unk_2A1E2E630;
    *(v18 + 1) = 0;
    v25 = MEMORY[0x29EDC9758];
    *(v18 + 26) = 0;
    *(v18 + 2) = v25;
    *(v18 + 3) = v25;
    *(v18 + 12) = 0;
    *(v18 + 4) = v25;
    *(v18 + 5) = v25;
    *(v18 + 7) = v25;
    *(v18 + 8) = v25;
    *(v18 + 9) = v25;
    *(v18 + 10) = 0;
    *(v18 + 11) = 0;
    *(v18 + 24) = 0;
    *buf = v18;
    *v68 = v8;
    if (v8)
    {
      xpc_retain(v8);
      v26 = v8;
    }

    else
    {
      v26 = xpc_null_create();
      *v68 = v26;
    }

    v44 = StatsAWD::fillMetric_sync(a1, buf, v68);
    xpc_release(v26);
    if (v44)
    {
      if (v18[96])
      {
        v46 = *(v18 + 1);
      }

      else
      {
        v46 = wis::getWISTimestamp(v45);
        *(v18 + 24) |= 1u;
        *(v18 + 1) = v46;
      }

      wis::MetricContainer::storeMetric(v65, v46, *v65, v18);
    }

    goto LABEL_130;
  }

  if (a2 == 524539)
  {
    v8 = *a3;
    if (*a3)
    {
      xpc_retain(*a3);
    }

    else
    {
      v8 = xpc_null_create();
    }

    v18 = operator new(0x28uLL);
    *(v18 + 4) = 0;
    *v18 = &unk_2A1E2D2E8;
    *(v18 + 1) = 0;
    v29 = MEMORY[0x29EDC9758];
    *(v18 + 2) = MEMORY[0x29EDC9758];
    *(v18 + 3) = v29;
    *buf = v18;
    *v68 = v8;
    if (v8)
    {
      xpc_retain(v8);
      v30 = v8;
    }

    else
    {
      v30 = xpc_null_create();
      *v68 = v30;
    }

    v53 = StatsAWD::fillMetric_sync(a1, buf, v68);
    xpc_release(v30);
    if (v53)
    {
      if (v18[36])
      {
        v55 = *(v18 + 1);
      }

      else
      {
        v55 = wis::getWISTimestamp(v54);
        *(v18 + 9) |= 1u;
        *(v18 + 1) = v55;
      }

      wis::MetricContainer::storeMetric(v65, v55, *v65, v18);
    }

    goto LABEL_130;
  }

  if (a2 != 524584)
  {
LABEL_36:
    v15 = v7;
    v16 = *(a1 + 32);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = a2;
      _os_log_error_impl(&dword_296FF7000, v16, OS_LOG_TYPE_ERROR, "Failed to setup metric id (0x%x)", buf, 8u);
    }

    wis::MetricContainer::~MetricContainer(v15);
    goto LABEL_137;
  }

  v8 = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    v8 = xpc_null_create();
  }

  v18 = operator new(0x20uLL);
  *v18 = &unk_2A1E2D3D8;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *buf = v18;
  *v68 = v8;
  if (v8)
  {
    xpc_retain(v8);
    v28 = v8;
  }

  else
  {
    v28 = xpc_null_create();
    *v68 = v28;
  }

  v50 = StatsAWD::fillMetric_sync(a1, buf, v68);
  xpc_release(v28);
  if (v50)
  {
    if (v18[28])
    {
      v52 = *(v18 + 1);
    }

    else
    {
      v52 = wis::getWISTimestamp(v51);
      *(v18 + 7) |= 1u;
      *(v18 + 1) = v52;
    }

    wis::MetricContainer::storeMetric(v65, v52, *v65, v18);
  }

LABEL_130:
  (*(*v18 + 8))(v18);
  xpc_release(v8);
  v59 = wis::WISServerConnection::SubmitMetric(*(a1 + 40), v65);
  v60 = *(a1 + 32);
  if (v59)
  {
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(buf, a3);
      v61 = v67 >= 0 ? buf : *buf;
      *v68 = 67109378;
      *&v68[4] = a2;
      v69 = 2082;
      v70 = v61;
      _os_log_impl(&dword_296FF7000, v60, OS_LOG_TYPE_DEFAULT, "#I Submitted AWD metric (0x%x) with data: %{public}s", v68, 0x12u);
      if (v67 < 0)
      {
        v17 = *buf;
LABEL_137:
        operator delete(v17);
        v62 = *MEMORY[0x29EDCA608];
        return;
      }
    }

    goto LABEL_139;
  }

  if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
LABEL_139:
    v63 = *MEMORY[0x29EDCA608];
    return;
  }

  *buf = 67109120;
  *&buf[4] = a2;
  v10 = "Failed to submit metric id (0x%x)";
  v11 = v60;
  v12 = 8;
LABEL_141:
  _os_log_error_impl(&dword_296FF7000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
  v64 = *MEMORY[0x29EDCA608];
}

void sub_29700F430(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  (*(*v3 + 8))(v3);
  xpc_release(v2);
  std::unique_ptr<wis::MetricContainer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t StatsAWD::fillMetric_sync(uint64_t a1, uint64_t *a2, void *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = MEMORY[0x29EDCAA00];
  if (*a3 && MEMORY[0x29C26CE60](*a3) == v6)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60](v5) != v6)
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object[0]) = 0;
      _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Failed: Expected data needs to be dictionary in wake info handling", object, 2u);
    }

    goto LABEL_14;
  }

  v8 = *MEMORY[0x29EDBF008];
  if (!xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF008]) || (v9 = *MEMORY[0x29EDBF468], !xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF468])) || (v10 = *MEMORY[0x29EDBF358], !xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF358])))
  {
    v13 = *(a1 + 32);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      v14 = 0;
      goto LABEL_15;
    }

    v24 = MEMORY[0x29C26CD90](v5);
    memset(object, 170, 24);
    v25 = strlen(v24);
    if (v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v26 = v25;
    if (v25 >= 0x17)
    {
      if ((v25 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v25 | 7) + 1;
      }

      v27 = operator new(v28);
      object[1] = v26;
      object[2] = (v28 | 0x8000000000000000);
      object[0] = v27;
    }

    else
    {
      HIBYTE(object[2]) = v25;
      v27 = object;
      if (!v25)
      {
        goto LABEL_33;
      }
    }

    memcpy(v27, v24, v26);
LABEL_33:
    *(v26 + v27) = 0;
    free(v24);
    v29 = object;
    if (SHIBYTE(object[2]) < 0)
    {
      v29 = object[0];
    }

    *buf = 136315138;
    v32 = v29;
    _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Failed: One of elements of wake info is missing: %s", buf, 0xCu);
    if (SHIBYTE(object[2]) < 0)
    {
      operator delete(object[0]);
    }

    goto LABEL_14;
  }

  v11 = *a2;
  value = xpc_dictionary_get_value(v5, v8);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v17 = xpc::dyn_cast_or_default(object, 0);
  *(v11 + 32) |= 2u;
  *(v11 + 16) = v17;
  xpc_release(object[0]);
  v18 = *a2;
  v19 = xpc_dictionary_get_value(v5, v9);
  object[0] = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v20 = xpc::dyn_cast_or_default(object, 0);
  *(v18 + 32) |= 4u;
  *(v18 + 20) = v20;
  xpc_release(object[0]);
  v21 = *a2;
  v22 = xpc_dictionary_get_value(v5, v10);
  object[0] = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v23 = xpc::dyn_cast_or_default(object, 0);
  *(v21 + 32) |= 8u;
  *(v21 + 24) = v23;
  xpc_release(object[0]);
  v14 = 1;
LABEL_15:
  xpc_release(v5);
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

{
  v33 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = MEMORY[0x29EDCAA00];
  if (*a3 && MEMORY[0x29C26CE60](*a3) == v6)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60](v5) != v6)
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object[0]) = 0;
      _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Failed: Expected data needs to be dictionary in boot time handling", object, 2u);
    }

    goto LABEL_14;
  }

  v8 = *MEMORY[0x29EDBE7E0];
  if (!xpc_dictionary_get_value(v5, *MEMORY[0x29EDBE7E0]) || (v9 = *MEMORY[0x29EDBE8D0], !xpc_dictionary_get_value(v5, *MEMORY[0x29EDBE8D0])) || (v10 = *MEMORY[0x29EDBE7E8], !xpc_dictionary_get_value(v5, *MEMORY[0x29EDBE7E8])))
  {
    v13 = *(a1 + 32);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      v14 = 0;
      goto LABEL_15;
    }

    v24 = MEMORY[0x29C26CD90](v5);
    memset(object, 170, 24);
    v25 = strlen(v24);
    if (v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v26 = v25;
    if (v25 >= 0x17)
    {
      if ((v25 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v25 | 7) + 1;
      }

      v27 = operator new(v28);
      object[1] = v26;
      object[2] = (v28 | 0x8000000000000000);
      object[0] = v27;
    }

    else
    {
      HIBYTE(object[2]) = v25;
      v27 = object;
      if (!v25)
      {
        goto LABEL_33;
      }
    }

    memcpy(v27, v24, v26);
LABEL_33:
    *(v26 + v27) = 0;
    free(v24);
    v29 = object;
    if (SHIBYTE(object[2]) < 0)
    {
      v29 = object[0];
    }

    *buf = 136315138;
    v32 = v29;
    _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Failed: One of elements of boot time is missing: %s", buf, 0xCu);
    if (SHIBYTE(object[2]) < 0)
    {
      operator delete(object[0]);
    }

    goto LABEL_14;
  }

  v11 = *a2;
  value = xpc_dictionary_get_value(v5, v8);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v17 = xpc::dyn_cast_or_default(object, 0);
  *(v11 + 40) |= 4u;
  *(v11 + 24) = v17;
  xpc_release(object[0]);
  v18 = *a2;
  v19 = xpc_dictionary_get_value(v5, v9);
  object[0] = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v20 = xpc::dyn_cast_or_default(object, 0);
  *(v18 + 40) |= 2u;
  *(v18 + 16) = v20;
  xpc_release(object[0]);
  v21 = *a2;
  v22 = xpc_dictionary_get_value(v5, v10);
  object[0] = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v23 = xpc::dyn_cast_or_default(object, 0);
  *(v21 + 40) |= 8u;
  *(v21 + 28) = v23;
  xpc_release(object[0]);
  v14 = 1;
LABEL_15:
  xpc_release(v5);
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

{
  v37 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = MEMORY[0x29EDCAA00];
  if (*a3 && MEMORY[0x29C26CE60](*a3) == v6)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60](v5) != v6)
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object[0]) = 0;
      _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Failed: Expected data needs to be dictionary in low power event handling", object, 2u);
    }

    goto LABEL_14;
  }

  v8 = *MEMORY[0x29EDBEAD8];
  if (!xpc_dictionary_get_value(v5, *MEMORY[0x29EDBEAD8]) || (v9 = *MEMORY[0x29EDBEAE8], !xpc_dictionary_get_value(v5, *MEMORY[0x29EDBEAE8])) || (v10 = *MEMORY[0x29EDBE7F0], !xpc_dictionary_get_value(v5, *MEMORY[0x29EDBE7F0])))
  {
    v13 = *(a1 + 32);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      v14 = 0;
      goto LABEL_15;
    }

    v29 = MEMORY[0x29C26CD90](v5);
    memset(object, 170, 24);
    v30 = strlen(v29);
    if (v30 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v31 = v30;
    if (v30 >= 0x17)
    {
      if ((v30 | 7) == 0x17)
      {
        v33 = 25;
      }

      else
      {
        v33 = (v30 | 7) + 1;
      }

      v32 = operator new(v33);
      object[1] = v31;
      object[2] = (v33 | 0x8000000000000000);
      object[0] = v32;
    }

    else
    {
      HIBYTE(object[2]) = v30;
      v32 = object;
      if (!v30)
      {
        goto LABEL_49;
      }
    }

    memcpy(v32, v29, v31);
LABEL_49:
    *(v31 + v32) = 0;
    free(v29);
    v34 = object;
    if (SHIBYTE(object[2]) < 0)
    {
      v34 = object[0];
    }

    *v36 = 136315138;
    *&v36[4] = v34;
    _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Failed: One of elements of low power event is missing: %s", v36, 0xCu);
    if (SHIBYTE(object[2]) < 0)
    {
      operator delete(object[0]);
    }

    goto LABEL_14;
  }

  v11 = *a2;
  value = xpc_dictionary_get_value(v5, v8);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v17 = xpc::dyn_cast_or_default(object, 0);
  *(v11 + 36) |= 2u;
  *(v11 + 16) = v17;
  xpc_release(object[0]);
  v18 = *a2;
  v19 = xpc_dictionary_get_value(v5, v9);
  object[0] = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v20 = xpc::dyn_cast_or_default(object, 0);
  *(v18 + 36) |= 4u;
  *(v18 + 20) = v20;
  xpc_release(object[0]);
  v21 = *a2;
  v22 = xpc_dictionary_get_value(v5, v10);
  *v36 = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    *v36 = xpc_null_create();
  }

  xpc::dyn_cast_or_default(object, v36, "", v23);
  *(v21 + 36) |= 8u;
  v24 = *(v21 + 24);
  if (v24 == MEMORY[0x29EDC9758])
  {
    v24 = operator new(0x18uLL);
    *v24 = 0;
    v24[1] = 0;
    v24[2] = 0;
    *(v21 + 24) = v24;
    v25 = HIBYTE(object[2]);
    if ((*(v24 + 23) & 0x80000000) == 0)
    {
LABEL_26:
      if ((v25 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v24, object[0], object[1]);
      }

      else
      {
        v26 = *object;
        v24[2] = object[2];
        *v24 = v26;
      }

      goto LABEL_41;
    }

LABEL_29:
    if (v25 >= 0)
    {
      v27 = object;
    }

    else
    {
      v27 = object[0];
    }

    if (v25 >= 0)
    {
      v28 = v25;
    }

    else
    {
      v28 = object[1];
    }

    std::string::__assign_no_alias<false>(v24, v27, v28);
    goto LABEL_41;
  }

  if (v24 != object)
  {
    v25 = HIBYTE(object[2]);
    if ((*(v24 + 23) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

LABEL_41:
  if (SHIBYTE(object[2]) < 0)
  {
    operator delete(object[0]);
  }

  xpc_release(*v36);
  v14 = 1;
LABEL_15:
  xpc_release(v5);
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

{
  v39 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = MEMORY[0x29EDCAA00];
  if (*a3 && MEMORY[0x29C26CE60](*a3) == v6)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60](v5) != v6)
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Failed: Expected data needs to be dictionary in bb trace handling", __p, 2u);
    }

    goto LABEL_13;
  }

  v8 = *MEMORY[0x29EDBED68];
  if (!xpc_dictionary_get_value(v5, *MEMORY[0x29EDBED68]) || (v9 = *MEMORY[0x29EDBF010], !xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF010])))
  {
    v13 = *(a1 + 32);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v14 = 0;
      goto LABEL_14;
    }

    v31 = MEMORY[0x29C26CD90](v5);
    memset(__p, 170, 24);
    v32 = strlen(v31);
    if (v32 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v33 = v32;
    if (v32 >= 0x17)
    {
      if ((v32 | 7) == 0x17)
      {
        v35 = 25;
      }

      else
      {
        v35 = (v32 | 7) + 1;
      }

      v34 = operator new(v35);
      __p[1] = v33;
      __p[2] = (v35 | 0x8000000000000000);
      __p[0] = v34;
    }

    else
    {
      HIBYTE(__p[2]) = v32;
      v34 = __p;
      if (!v32)
      {
        goto LABEL_61;
      }
    }

    memcpy(v34, v31, v33);
LABEL_61:
    *(v33 + v34) = 0;
    free(v31);
    v36 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v36 = __p[0];
    }

    *object = 136315138;
    *&object[4] = v36;
    _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Failed: One of elements of bb trace is missing: %s", object, 0xCu);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_13;
  }

  v10 = *a2;
  value = xpc_dictionary_get_value(v5, v8);
  *object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__p, object, "", v12);
  *(v10 + 36) |= 2u;
  v17 = *(v10 + 16);
  v18 = MEMORY[0x29EDC9758];
  if (v17 == MEMORY[0x29EDC9758])
  {
    v17 = operator new(0x18uLL);
    *v17 = 0;
    v17[1] = 0;
    v17[2] = 0;
    *(v10 + 16) = v17;
    v19 = HIBYTE(__p[2]);
    if ((*(v17 + 23) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v19 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v17, __p[0], __p[1]);
      }

      else
      {
        v20 = *__p;
        v17[2] = __p[2];
        *v17 = v20;
      }

      goto LABEL_30;
    }
  }

  else
  {
    if (v17 == __p)
    {
      goto LABEL_30;
    }

    v19 = HIBYTE(__p[2]);
    if ((*(v17 + 23) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  if (v19 >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  if (v19 >= 0)
  {
    v22 = v19;
  }

  else
  {
    v22 = __p[1];
  }

  std::string::__assign_no_alias<false>(v17, v21, v22);
LABEL_30:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(*object);
  v23 = *a2;
  v24 = xpc_dictionary_get_value(v5, v9);
  *object = v24;
  if (v24)
  {
    xpc_retain(v24);
  }

  else
  {
    *object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__p, object, "", v25);
  *(v23 + 36) |= 4u;
  v26 = *(v23 + 24);
  if (v26 == v18)
  {
    v26 = operator new(0x18uLL);
    *v26 = 0;
    v26[1] = 0;
    v26[2] = 0;
    *(v23 + 24) = v26;
    v27 = HIBYTE(__p[2]);
    if ((*(v26 + 23) & 0x80000000) == 0)
    {
LABEL_38:
      if ((v27 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v26, __p[0], __p[1]);
      }

      else
      {
        v28 = *__p;
        v26[2] = __p[2];
        *v26 = v28;
      }

      goto LABEL_49;
    }

LABEL_41:
    if (v27 >= 0)
    {
      v29 = __p;
    }

    else
    {
      v29 = __p[0];
    }

    if (v27 >= 0)
    {
      v30 = v27;
    }

    else
    {
      v30 = __p[1];
    }

    std::string::__assign_no_alias<false>(v26, v29, v30);
    goto LABEL_49;
  }

  if (v26 != __p)
  {
    v27 = HIBYTE(__p[2]);
    if ((*(v26 + 23) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_41;
  }

LABEL_49:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(*object);
  v14 = 1;
LABEL_14:
  xpc_release(v5);
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

{
  v29 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = MEMORY[0x29EDCAA00];
  if (*a3 && MEMORY[0x29C26CE60](*a3) == v6)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60](v5) != v6)
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object[0]) = 0;
      _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Failed: Expected data needs to be dictionary in Accessory Information reporting.", object, 2u);
    }

    goto LABEL_13;
  }

  v8 = *MEMORY[0x29EDBE998];
  if (!xpc_dictionary_get_value(v5, *MEMORY[0x29EDBE998]) || (v9 = *MEMORY[0x29EDBEAC0], !xpc_dictionary_get_value(v5, *MEMORY[0x29EDBEAC0])))
  {
    v12 = *(a1 + 32);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v13 = 0;
      goto LABEL_14;
    }

    v20 = MEMORY[0x29C26CD90](v5);
    memset(object, 170, 24);
    v21 = strlen(v20);
    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v22 = v21;
    if (v21 >= 0x17)
    {
      if ((v21 | 7) == 0x17)
      {
        v24 = 25;
      }

      else
      {
        v24 = (v21 | 7) + 1;
      }

      v23 = operator new(v24);
      object[1] = v22;
      object[2] = (v24 | 0x8000000000000000);
      object[0] = v23;
    }

    else
    {
      HIBYTE(object[2]) = v21;
      v23 = object;
      if (!v21)
      {
        goto LABEL_29;
      }
    }

    memcpy(v23, v20, v22);
LABEL_29:
    *(v22 + v23) = 0;
    free(v20);
    v25 = object;
    if (SHIBYTE(object[2]) < 0)
    {
      v25 = object[0];
    }

    *buf = 136315138;
    v28 = v25;
    _os_log_error_impl(&dword_296FF7000, v12, OS_LOG_TYPE_ERROR, "Failed: One of elements is missing in Accessory Information reporting: %s", buf, 0xCu);
    if (SHIBYTE(object[2]) < 0)
    {
      operator delete(object[0]);
    }

    goto LABEL_13;
  }

  v10 = *a2;
  value = xpc_dictionary_get_value(v5, v8);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v16 = xpc::dyn_cast_or_default(object, 0);
  *(v10 + 28) |= 2u;
  *(v10 + 16) = v16;
  xpc_release(object[0]);
  v17 = *a2;
  v18 = xpc_dictionary_get_value(v5, v9);
  object[0] = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v19 = xpc::dyn_cast_or_default(object, 0);
  *(v17 + 28) |= 4u;
  *(v17 + 20) = v19;
  xpc_release(object[0]);
  v13 = 1;
LABEL_14:
  xpc_release(v5);
  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_29700FB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t awd::metrics::CommCenterWakeInfo::ByteSize(awd::metrics::CommCenterWakeInfo *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_6;
  }

  if (*(this + 32))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_12:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) != 0)
    {
      goto LABEL_19;
    }

LABEL_6:
    *(this + 7) = v3;
    return v3;
  }

  v7 = *(this + 5);
  if (v7 < 0x80)
  {
    v3 = (v3 + 2);
    if ((v2 & 8) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1 + v3;
  if ((*(this + 8) & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_19:
  v8 = *(this + 6);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1 + v3;
  }

  else
  {
    v9 = (v3 + 2);
  }

  *(this + 7) = v9;
  return v9;
}

uint64_t awd::metrics::CommCenterWakeInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
      if ((v5[8] & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[8];
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

void awd::metrics::CommCenterWakeInfo::~CommCenterWakeInfo(awd::metrics::CommCenterWakeInfo *this)
{
  *this = &unk_2A1E2E540;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v1);
}

void ResetDetection::sResetDetectCallback(ResetDetection *this, void *a2, int a3, unsigned int a4, void *a5)
{
  if (this)
  {
    v5 = *(this + 1);
    if (v5)
    {
      v7 = *this;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = std::__shared_weak_count::lock(v5);
      if (v8)
      {
        v9 = v8;
        if (v7)
        {
          v10[0] = MEMORY[0x29EDCA5F8];
          v10[1] = 0x40000000;
          v10[2] = ___ZN14ResetDetection19resetDetectCallbackEPvjjS0__block_invoke;
          v10[3] = &__block_descriptor_tmp_6_0;
          v10[4] = v7;
          v11 = a3;
          ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(v7, v10);
        }

        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }

      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI14ResetDetectionE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E2B2A0;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIK14ResetDetectionEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ResetDetection19resetDetectCallbackEPvjjS0__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2 == -469794815)
  {
    v5 = *(v1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_DEFAULT, "#I baseband alive detected", &state, 2u);
    }

    *(v1 + 64) = 0;
    ResetDetection::notifyResetDetectBlocks_sync(v1, v1 + 96);
  }

  else if (v2 == -469794816)
  {
    v3 = _os_activity_create(&dword_296FF7000, "Baseband state: reset detected", MEMORY[0x29EDCA978], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v3, &state);
    os_activity_scope_leave(&state);
    v4 = *(v1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I baseband reset detected", &state, 2u);
    }

    *(v1 + 64) = 1;
    ResetDetection::notifyResetDetectBlocks_sync(v1, v1 + 72);
    if (v3)
    {
      os_release(v3);
    }
  }
}

void sub_2970101B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::os::scoped_activity::~scoped_activity(va);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_40c21_ZTSN8dispatch5groupE48c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE56c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  v7 = a2[7];
  v6 = a2[8];
  a1[6] = result;
  a1[7] = v7;
  a1[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

__int128 *ctu::TrackedGroup::fork(NSObject **a1, uint64_t a2, uint64_t *a3)
{
  v48 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v40[0] = a3[1];
  *(v40 + 7) = *(a3 + 15);
  v6 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *object = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = dispatch_group_create();
  v8 = v7;
  *a1 = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v8);
    dispatch_release(v8);
  }

  v9 = operator new(0x30uLL);
  v9[1] = 0;
  v9[2] = 0;
  *v9 = &unk_2A1E2EAF8;
  v9[3] = v5;
  v9[4] = v40[0];
  *(v9 + 39) = *(v40 + 7);
  *(v9 + 47) = v6;
  v40[0] = 0;
  *(v40 + 7) = 0;
  *&v36 = v9 + 3;
  *(&v36 + 1) = v9;
  v10 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v10);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v12 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v41 = v9 + 3;
  v42 = v9;
  atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  v43 = v10;
  if (v10)
  {
    dispatch_retain(v10);
    dispatch_group_enter(v10);
  }

  v47 = 0;
  v44 = 0;
  v45 = 0;
  object[0] = 0;
  object[1] = 0;
  *(&v39 + 1) = 0;
  v13 = operator new(0x48uLL);
  *v13 = v9 + 3;
  v13[1] = v9;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = v10;
  v14 = v47;
  if (v47)
  {
    if (v47 == v46)
    {
      v13[8] = v13 + 5;
      (*(*v14 + 24))(v14);
    }

    else
    {
      v13[8] = v47;
      v47 = 0;
    }
  }

  else
  {
    v13[8] = 0;
  }

  v44 = 0;
  v45 = 0;
  v15 = v47;
  v47 = 0;
  if (v15 == v46)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  dispatch_group_notify_f(v8, v12, v13, dispatch::detail::group_notify<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(&v41);
  if (v12)
  {
    dispatch_release(v12);
  }

  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  if (v16 < v17)
  {
    *v16 = v36;
    v18 = *(&v36 + 1);
    *(v16 + 1) = *(&v36 + 1);
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
    }

    v19 = v16 + 16;
    goto LABEL_36;
  }

  v20 = *(a2 + 8);
  v21 = v16 - v20;
  v22 = (v16 - v20) >> 4;
  v23 = v22 + 1;
  if ((v22 + 1) >> 60)
  {
    std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
  }

  v24 = v17 - v20;
  if (v24 >> 3 > v23)
  {
    v23 = v24 >> 3;
  }

  if (v24 >= 0x7FFFFFFFFFFFFFF0)
  {
    v25 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = v23;
  }

  if (v25)
  {
    if (v25 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v26 = operator new(16 * v25);
    v27 = &v26[16 * v22];
    v28 = &v26[16 * v25];
    v29 = *(&v36 + 1);
    *v27 = v36;
    v30 = v29;
    if (!v29)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v27 = (16 * v22);
  v28 = 0;
  v35 = *(&v36 + 1);
  *(16 * v22) = v36;
  v30 = v35;
  if (v35)
  {
LABEL_33:
    atomic_fetch_add_explicit((v30 + 16), 1uLL, memory_order_relaxed);
    v20 = *(a2 + 8);
    v21 = *(a2 + 16) - v20;
    v22 = v21 >> 4;
  }

LABEL_34:
  v19 = v27 + 16;
  v31 = &v27[-16 * v22];
  memcpy(v31, v20, v21);
  *(a2 + 8) = v31;
  *(a2 + 16) = v19;
  *(a2 + 24) = v28;
  if (v20)
  {
    operator delete(v20);
  }

LABEL_36:
  *(a2 + 16) = v19;
  if (v10)
  {
    dispatch_group_leave(v10);
    dispatch_release(v10);
  }

  if (*(&v36 + 1) && !atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v36 + 1) + 16))(*(&v36 + 1));
    std::__shared_weak_count::__release_weak(*(&v36 + 1));
    v32 = *(&v39 + 1);
    if (!*(&v39 + 1))
    {
      goto LABEL_43;
    }
  }

  else
  {
    v32 = *(&v39 + 1);
    if (!*(&v39 + 1))
    {
      goto LABEL_43;
    }
  }

  if (object[0])
  {
    v41 = object[1];
    *&v36 = object[0];
    (*(*v32 + 48))(v32, &v41, &v36);
  }

LABEL_43:
  if (object[1])
  {
    os_release(object[1]);
  }

  result = *(&v39 + 1);
  object[1] = 0;
  *(&v39 + 1) = 0;
  if (result == &v38)
  {
    (*(*result + 32))(result);
    result = *(&v39 + 1);
    object[0] = 0;
    if (*(&v39 + 1) != &v38)
    {
      goto LABEL_48;
    }

LABEL_51:
    result = (*(*result + 32))(result);
    goto LABEL_52;
  }

  if (!result)
  {
    goto LABEL_52;
  }

  (*(*result + 40))(result);
  result = *(&v39 + 1);
  object[0] = 0;
  if (*(&v39 + 1) == &v38)
  {
    goto LABEL_51;
  }

LABEL_48:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_52:
  v34 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297010774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(void *a1)
{
  v2 = a1[8];
  if (v2 && a1[3])
  {
    v3 = a1[4];
    v12 = a1[3];
    v13 = v3;
    (*(*v2 + 48))(v2, &v13, &v12);
  }

  v4 = a1[4];
  if (v4)
  {
    os_release(v4);
  }

  v5 = a1 + 5;
  a1[4] = 0;
  v6 = a1[8];
  a1[8] = 0;
  if (v6 == a1 + 5)
  {
    (*(*v6 + 32))(v6);
    v7 = a1[8];
    a1[3] = 0;
    if (v7 != v5)
    {
LABEL_9:
      if (v7)
      {
        (*(*v7 + 40))(v7);
        v8 = a1[2];
        if (!v8)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_14:
      v8 = a1[2];
      if (!v8)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

LABEL_13:
    (*(*v7 + 32))(v7);
    goto LABEL_14;
  }

  if (v6)
  {
    (*(*v6 + 40))(v6);
    v7 = a1[8];
    a1[3] = 0;
    if (v7 != v5)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  a1[3] = 0;
  v8 = a1[2];
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_15:
  dispatch_group_leave(v8);
  v9 = a1[2];
  if (v9)
  {
    dispatch_release(v9);
  }

LABEL_17:
  v10 = a1[1];
  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  return a1;
}

void TransportModule::wake(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[10];
  if (!v4 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[11];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<TransportModule>::execute_wrapped<TransportModule::wake(dispatch::group_session)::$_0>(TransportModule::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TransportModule::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<TransportModule::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void TraceManager::wake(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[10];
  if (!v4 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[11];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<TraceManager>::execute_wrapped<TraceManager::wake(dispatch::group_session)::$_0>(TraceManager::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceManager::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<TraceManager::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<TransportModule>::execute_wrapped<TransportModule::wake(dispatch::group_session)::$_0>(TransportModule::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TransportModule::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<TransportModule::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 144);
  if (v4)
  {
    group = MEMORY[0x29EDCA5F8];
    v15 = 0x40000000;
    v16 = ___ZN4data16TransportService5State12exitLowPowerEv_block_invoke;
    v17 = &__block_descriptor_tmp_48;
    v18 = v4;
    ctu::SharedSynchronizable<data::TransportService::State>::execute_wrapped(v4, &group);
  }

  if (!*(v3 + 112))
  {
    v10 = *(v3 + 144);
    if (v10)
    {
      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 0x40000000;
      v12[2] = ___ZN4data16TransportService5State17unblockThrottlingEv_block_invoke;
      v12[3] = &__block_descriptor_tmp_53;
      v12[4] = v10;
      v13 = v12;
      group = MEMORY[0x29EDCA5F8];
      v15 = 0x40000000;
      v16 = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
      v17 = &__block_descriptor_tmp_47;
      v18 = v10;
      v19 = &v13;
      v11 = *(v10 + 16);
      if (*(v10 + 24))
      {
        dispatch_async_and_wait(v11, &group);
      }

      else
      {
        dispatch_sync(v11, &group);
      }
    }
  }

  v5 = *(v3 + 128);
  if (v5)
  {
    v6 = v2[1];
    group = v6;
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(v6);
    }

    (*(*v5 + 32))(v5, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  v7 = v2[1];
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = v2[1];
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_297010E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void QMITransportService::exitLowPower(uint64_t a1, NSObject **a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN19QMITransportService12exitLowPowerEN8dispatch13group_sessionE_block_invoke;
  v6[3] = &__block_descriptor_tmp_27_6;
  v3 = *a2;
  v6[4] = a1;
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(group);
  }

  v8 = v6;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19QMITransportServiceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_108_0;
  block[4] = a1 + 24;
  block[5] = &v8;
  v4 = *(a1 + 40);
  if (*(a1 + 48))
  {
    dispatch_async_and_wait(v4, block);
    v5 = group;
    if (!group)
    {
      return;
    }
  }

  else
  {
    dispatch_sync(v4, block);
    v5 = group;
    if (!group)
    {
      return;
    }
  }

  dispatch_group_leave(v5);
  if (group)
  {
    dispatch_release(group);
  }
}

void QMITransportService::updateWakeReason_sync(QMITransportService *this)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = (this + 328);
  if ((*(this + 351) & 0x80000000) == 0)
  {
    SystemWakeReason = TelephonyUtilGetSystemWakeReason();
    v4 = *(this + 7);
    if (SystemWakeReason)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_296FF7000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch system wake reason", &v9, 2u);
      if (!*(this + 38))
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

LABEL_10:
    if (!*(this + 38))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v5 = *(this + 41);
  v6 = *(this + 43) & 0x7FFFFFFFFFFFFFFFLL;
  v7 = TelephonyUtilGetSystemWakeReason();
  v4 = *(this + 7);
  if ((v7 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_10;
  }

  if (*(this + 351) < 0)
  {
    v2 = *v2;
  }

  v9 = 136315138;
  v10 = v2;
  _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I System wake reason: %s", &v9, 0xCu);
  if (*(this + 38))
  {
LABEL_11:
    if (*(this + 39))
    {
      QMITransportService::getWakeReason_sync(this, 2);
    }
  }

LABEL_13:
  v8 = *MEMORY[0x29EDCA608];
}

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIK14ResetDetectionEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ServiceManager::wake(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<ServiceManager>::execute_wrapped<ServiceManager::wake(dispatch::group_session)::$_0>(ServiceManager::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ServiceManager::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<ServiceManager::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void ctu::SharedSynchronizable<data::TransportService::State>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E2B530;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

void ___ZN19QMITransportService12exitLowPowerEN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 7);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I ----------------- Exiting Low Power ----------------", buf, 2u);
  }

  QMITransportService::updateWakeReason_sync(v2);
  v4 = dispatch_group_create();
  v5 = *(v2 + 4);
  if (!v5 || (v6 = *(v2 + 3), (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  v10 = *(v2 + 10);
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = *(a1 + 40);
  if (v11)
  {
    dispatch_retain(v11);
    dispatch_group_enter(v11);
  }

  if (v4)
  {
    dispatch_retain(v4);
  }

  v17 = 0;
  v12 = operator new(0x30uLL);
  *v12 = &unk_2A1E31CA0;
  v12[1] = v2;
  v12[2] = v6;
  v12[3] = v8;
  v12[4] = v11;
  if (v11)
  {
    dispatch_retain(v11);
    v13 = v12[4];
    if (v13)
    {
      dispatch_group_enter(v13);
    }
  }

  v12[5] = v4;
  v17 = v12;
  RouterIPCController::wake(v10, v16);
  if (v17 == v16)
  {
    (*(*v17 + 32))(v17);
    if (v11)
    {
LABEL_18:
      dispatch_group_leave(v11);
      dispatch_release(v11);
    }
  }

  else
  {
    if (v17)
    {
      (*(*v17 + 40))();
    }

    if (v11)
    {
      goto LABEL_18;
    }
  }

  std::__shared_weak_count::__release_weak(v8);
  if (v4)
  {
    dispatch_release(v4);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_29701169C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::function<void ()(BOOL)>::~function(va1);
  _ZZZN19QMITransportService12exitLowPowerEN8dispatch13group_sessionEEUb1_EN3__7D1Ev(va);
  std::__shared_weak_count::__release_weak(v3);
  if (!v2)
  {
    _Unwind_Resume(a1);
  }

  dispatch_release(v2);
  _Unwind_Resume(a1);
}

void ___ZN14ServiceManager4initENSt3__110shared_ptrI14PowerInterfaceEE_block_invoke(uint64_t a1, int a2, NSObject **a3)
{
  v3 = *(a1 + 32);
  if (a2 == 1)
  {
    v4 = *a3;
    v5 = v4;
    if (!v4)
    {
      ServiceManager::wake(v3, &v5);
      return;
    }

    dispatch_retain(v4);
    dispatch_group_enter(v4);
    ServiceManager::wake(v3, &v5);
  }

  else
  {
    if (a2)
    {
      return;
    }

    v4 = *a3;
    v6 = v4;
    if (!v4)
    {
      ServiceManager::sleep(v3, &v6);
      return;
    }

    dispatch_retain(v4);
    dispatch_group_enter(v4);
    ServiceManager::sleep(v3, &v6);
  }

  dispatch_group_leave(v4);

  dispatch_release(v4);
}

void dispatch::async<void ctu::SharedSynchronizable<ServiceManager>::execute_wrapped<ServiceManager::wake(dispatch::group_session)::$_0>(ServiceManager::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ServiceManager::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<ServiceManager::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v61 = *MEMORY[0x29EDCA608];
  __p = *a1;
  v1 = (*a1)->__vftable;
  v2 = atomic_load(&v1[3].__on_zero_shared);
  v3 = v1[1].~__shared_weak_count;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEBUG, "#D Server is down; ignoring wake request", &buf, 2u);
    }

    goto LABEL_65;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v1[2].__on_zero_shared - v1[2].~__shared_weak_count_0) >> 4;
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Request %zd services to wake", &buf, 0xCu);
  }

  v5 = dispatch_group_create();
  v6 = operator new(0x38uLL);
  v7 = v6;
  v6->__shared_owners_ = 0;
  v6->__shared_weak_owners_ = 0;
  v6->__vftable = &unk_2A1E2EAA8;
  v6[1].__vftable = v5;
  v8 = &v6[1].__vftable;
  if (!v5)
  {
    v6[1].__shared_owners_ = 0;
    v6[1].__shared_weak_owners_ = 0;
    v6[2].__vftable = 0;
    v51 = &v6[1].__vftable;
    v52 = v6;
    v9 = v1[2].~__shared_weak_count_0;
    on_zero_shared = v1[2].__on_zero_shared;
    if (v9 == on_zero_shared)
    {
      goto LABEL_35;
    }

    while (1)
    {
LABEL_12:
      v11 = v1[1].~__shared_weak_count;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = (*(**v9 + 16))();
        LODWORD(v57) = 136315138;
        *(&v57 + 4) = v12;
        _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I Requesting '%s' to wake", &v57, 0xCu);
      }

      *&v57 = 0xAAAAAAAAAAAAAAAALL;
      v13 = v51;
      v14 = (*(**v9 + 16))();
      v15 = strlen(v14);
      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v16 = v15;
      if (v15 >= 0x17)
      {
        break;
      }

      HIBYTE(v60) = v15;
      p_buf = &buf;
      if (v15)
      {
        goto LABEL_22;
      }

LABEL_23:
      *(p_buf + v16) = 0;
      ctu::TrackedGroup::fork(&v57, v13, &buf);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(buf);
        v19 = *v9;
        v20 = v57;
        group = v57;
        if (v57)
        {
LABEL_27:
          dispatch_retain(v20);
          if (group)
          {
            dispatch_group_enter(group);
          }
        }
      }

      else
      {
        v19 = *v9;
        v20 = v57;
        group = v57;
        if (v57)
        {
          goto LABEL_27;
        }
      }

      (*(*v19 + 64))(v19, &group);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      if (v20)
      {
        dispatch_group_leave(v20);
        dispatch_release(v20);
      }

      v9 = (v9 + 16);
      if (v9 == on_zero_shared)
      {
        v8 = v51;
        goto LABEL_35;
      }
    }

    if ((v15 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v15 | 7) + 1;
    }

    p_buf = operator new(v18);
    *(&buf + 1) = v16;
    v60 = v18 | 0x8000000000000000;
    *&buf = p_buf;
LABEL_22:
    memmove(p_buf, v14, v16);
    goto LABEL_23;
  }

  dispatch_retain(v5);
  v7[1].__shared_owners_ = 0;
  v7[1].__shared_weak_owners_ = 0;
  v7[2].__vftable = 0;
  dispatch_release(v5);
  v51 = v8;
  v52 = v7;
  v9 = v1[2].~__shared_weak_count_0;
  on_zero_shared = v1[2].__on_zero_shared;
  if (v9 != on_zero_shared)
  {
    goto LABEL_12;
  }

LABEL_35:
  v21 = *v8;
  v22 = (*(v1->~__shared_weak_count + 9))(v1);
  v23 = dispatch_time(0, 2000000000 * v22);
  if (!dispatch_group_wait(v21, v23))
  {
    goto LABEL_60;
  }

  v57 = 0uLL;
  v58 = 0;
  v24 = v8[1];
  v25 = v8[2];
  if (v24 == v25)
  {
    v33 = 0;
    v34 = v1[1].~__shared_weak_count;
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

LABEL_77:
    v45 = *(&v57 + 1);
    ctu::join<std::__wrap_iter<std::string *>>(&__dst, v33, *(&v57 + 1));
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    *v53 = 134218242;
    v54 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v33) >> 3);
    v55 = 2080;
    v56 = p_dst;
    _os_log_error_impl(&dword_296FF7000, v34, OS_LOG_TYPE_ERROR, "Wake TIMEOUT: %zd clients failed to complete wake request: %s", v53, 0x16u);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v33 = v57;
    if (!v57)
    {
      goto LABEL_60;
    }

    goto LABEL_53;
  }

  do
  {
    v26 = v24[1];
    if (v26)
    {
      v27 = std::__shared_weak_count::lock(v26);
      __dst.__r_.__value_.__l.__size_ = v27;
      if (v27)
      {
        v28 = v27;
        v29 = *v24;
        __dst.__r_.__value_.__r.__words[0] = v29;
        if (v29)
        {
          v30 = *(&v57 + 1);
          if (*(&v57 + 1) >= v58)
          {
            v32 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v57, v29);
          }

          else
          {
            if (*(v29 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(*(&v57 + 1), *v29, *(v29 + 8));
            }

            else
            {
              v31 = *v29;
              *(*(&v57 + 1) + 16) = *(v29 + 16);
              *v30 = v31;
            }

            v32 = v30 + 24;
          }

          *(&v57 + 1) = v32;
        }

        if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }
      }
    }

    v24 += 2;
  }

  while (v24 != v25);
  v33 = v57;
  v34 = v1[1].~__shared_weak_count;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_77;
  }

LABEL_52:
  if (v33)
  {
LABEL_53:
    v35 = *(&v57 + 1);
    v36 = v33;
    if (*(&v57 + 1) != v33)
    {
      do
      {
        v37 = *(v35 - 1);
        v35 -= 3;
        if (v37 < 0)
        {
          operator delete(*v35);
        }
      }

      while (v35 != v33);
      v36 = v57;
    }

    *(&v57 + 1) = v33;
    operator delete(v36);
  }

LABEL_60:
  v38 = v1[1].~__shared_weak_count;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v57) = 0;
    _os_log_impl(&dword_296FF7000, v38, OS_LOG_TYPE_DEFAULT, "#I All services acknowledged for wake request", &v57, 2u);
  }

  v39 = v52;
  if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

LABEL_65:
  if (__p)
  {
    shared_owners = __p->__shared_owners_;
    if (shared_owners)
    {
      dispatch_group_leave(shared_owners);
      v41 = __p->__shared_owners_;
      if (v41)
      {
        dispatch_release(v41);
      }
    }

    operator delete(__p);
  }

  v42 = a1;
  if (a1)
  {
    v43 = a1[2];
    if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v43->__on_zero_shared)(v43);
      std::__shared_weak_count::__release_weak(v43);
      v42 = a1;
    }

    operator delete(v42);
  }

  v44 = *MEMORY[0x29EDCA608];
}

void sub_297011E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, dispatch_group_t group, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a13);
  std::vector<std::string>::~vector[abi:ne200100](&a25);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a19);
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a12);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c58_ZTSNSt3__110shared_ptrIKN4data16TransportService5StateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void FSModule::wake(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[10];
  if (!v4 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[11];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<FSModule>::execute_wrapped<FSModule::wake(dispatch::group_session)::$_0>(FSModule::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModule::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<FSModule::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

uint64_t ABMServiceManager::getSleepTimeoutSec(Registry **this)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&v5, this[18]);
  if (v5)
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  else
  {
    ScaledTime = 29000000;
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = ScaledTime;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    ScaledTime = v3;
  }

  return ScaledTime / 1000000;
}

void QMITransportService::getWakeReason_sync(QMITransportService *this, int a2)
{
  v33 = *MEMORY[0x29EDCA608];
  v3 = *(this + 4);
  if (!v3 || (v5 = *(this + 3), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(buf, v8);
    v10 = *buf;
    memset(buf, 0, sizeof(buf));
    v11 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A18B7390;
  }

  v13 = *(&off_2A18B7390 + 1);
  v26 = v9;
  v27 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&v28, v9);
  v30 = 0;
  v31 = 0;
  if (v29)
  {
    v31 = std::__shared_weak_count::lock(v29);
    if (v31)
    {
      v30 = v28;
    }

    if (v29)
    {
      std::__shared_weak_count::__release_weak(v29);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = v30;
    v15 = *(this + 7);
    v16 = v15;
    if (v30)
    {
LABEL_23:
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        --a2;
        *buf = 67109120;
        *&buf[4] = a2;
        _os_log_impl(&dword_296FF7000, v15, OS_LOG_TYPE_DEFAULT, "#I Sending request to get wake reason. Remaining-attempts=%u", buf, 8u);
      }

      v21[0] = MEMORY[0x29EDCA5F8];
      v21[1] = 1174405120;
      v21[2] = ___ZN19QMITransportService18getWakeReason_syncEj_block_invoke;
      v21[3] = &__block_descriptor_tmp_37_2;
      v21[4] = this;
      v21[5] = v5;
      v22 = v7;
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v23 = a2;
      v17 = _Block_copy(v21);
      v18 = *(this + 5);
      if (v18)
      {
        dispatch_retain(v18);
      }

      aBlock = v17;
      object = v18;
      (*(*v14 + 88))(v14, &aBlock);
      if (object)
      {
        dispatch_release(object);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v22)
      {
        std::__shared_weak_count::__release_weak(v22);
        v19 = v31;
        if (!v31)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

LABEL_36:
      v19 = v31;
      if (!v31)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v14 = v30;
    v15 = *(this + 7);
    v16 = v15;
    if (v30)
    {
      goto LABEL_23;
    }
  }

  if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_36;
  }

  *buf = 0;
  _os_log_error_impl(&dword_296FF7000, v15, OS_LOG_TYPE_ERROR, "Failed to get radio command driver!", buf, 2u);
  v19 = v31;
  if (!v31)
  {
    goto LABEL_39;
  }

LABEL_37:
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

LABEL_39:
  std::__shared_weak_count::__release_weak(v7);
  v20 = *MEMORY[0x29EDCA608];
}

void sub_297012604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  std::__shared_weak_count::__release_weak(v19);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<TraceManager>::execute_wrapped<TraceManager::wake(dispatch::group_session)::$_0>(TraceManager::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceManager::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<TraceManager::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  get_deleter = v2[2].__get_deleter;
  if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_296FF7000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Helper wake requested", &buf, 2u);
  }

  v4 = *MEMORY[0x29EDBE590];
  v5 = strlen(*MEMORY[0x29EDBE590]);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_68:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    p_dst = operator new(v8);
    v39 = v6;
    v40 = v8 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_11;
  }

  HIBYTE(v40) = v5;
  p_dst = &__dst;
  if (v5)
  {
LABEL_11:
    memmove(p_dst, v4, v6);
  }

  *(p_dst + v6) = 0;
  memset(&buf, 0, sizeof(buf));
  if (!prop::bbtrace::get(&__dst, &buf))
  {
    v10 = 0;
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  LODWORD(object) = -1431655766;
  v9 = util::convert<int>(&buf, &object, 0);
  if (object == 4)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_19:
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__dst);
  }

  v11 = *MEMORY[0x29EDBE880];
  v12 = strlen(*MEMORY[0x29EDBE880]);
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_68;
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v12 | 7) + 1;
    }

    v14 = operator new(v15);
    v39 = v13;
    v40 = v15 | 0x8000000000000000;
    __dst = v14;
    goto LABEL_30;
  }

  HIBYTE(v40) = v12;
  v14 = &__dst;
  if (v12)
  {
LABEL_30:
    memmove(v14, v11, v13);
  }

  *(v14 + v13) = 0;
  memset(&buf, 0, sizeof(buf));
  if (!prop::bbtrace::get(&__dst, &buf))
  {
    v17 = 0;
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  LODWORD(object) = -1431655766;
  v16 = util::convert<int>(&buf, &object, 0);
  if (object == 1)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_38:
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_39:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__dst);
    if ((v10 & v17) == 1)
    {
      goto LABEL_41;
    }

LABEL_56:
    v24 = xpc_null_create();
    v25 = *MEMORY[0x29EDBD428];
    object = 0;
    __dst = v24;
    *&buf.__r_.__value_.__l.__data_ = 0uLL;
    TraceManager::runOnHelper_sync(v2, 9, v25, 0x1388u, 0, &__dst, &object, &buf.__r_.__value_.__l.__data_);
    xpc_release(__dst);
    goto LABEL_57;
  }

  if ((v10 & v17) != 1)
  {
    goto LABEL_56;
  }

LABEL_41:
  v18 = v2[2].__get_deleter;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_296FF7000, v18, OS_LOG_TYPE_DEFAULT, "#I The other traces will handle exit low power first, then the Cellular Logging should be resumed.", &buf, 2u);
  }

  v19 = xpc_null_create();
  v36 = 0;
  object = v19;
  buf.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  buf.__r_.__value_.__l.__size_ = 1174405120;
  buf.__r_.__value_.__r.__words[2] = ___ZZN12TraceManager4wakeEN8dispatch13group_sessionEENK3__0clEv_block_invoke;
  v33 = &__block_descriptor_tmp_178;
  v34 = v2;
  shared_owners = v1->__shared_owners_;
  group = shared_owners;
  if (shared_owners)
  {
    dispatch_retain(shared_owners);
    if (group)
    {
      dispatch_group_enter(group);
    }
  }

  v21 = _Block_copy(&buf);
  v22 = *MEMORY[0x29EDBD428];
  v23 = v2[2].~__shared_weak_count_0;
  if (v23)
  {
    dispatch_retain(v2[2].~__shared_weak_count_0);
  }

  __dst = v21;
  v39 = v23;
  TraceManager::runOnHelper_sync(v2, 9, v22, 0x1388u, 0, &object, &v36, &__dst);
  if (v23)
  {
    dispatch_release(v23);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  xpc_release(object);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

LABEL_57:
  if (__p)
  {
    v26 = __p->__shared_owners_;
    if (v26)
    {
      dispatch_group_leave(v26);
      v27 = __p->__shared_owners_;
      if (v27)
      {
        dispatch_release(v27);
      }
    }

    operator delete(__p);
  }

  v28 = a1;
  if (a1)
  {
    v29 = a1[2];
    if (v29)
    {
      if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
        v28 = a1;
      }
    }

    operator delete(v28);
  }
}

void sub_297012AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, dispatch_group_t group, uint64_t a20, uint64_t a21, xpc_object_t object, xpc_object_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a23);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  xpc_release(object);
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

BOOL prop::bbtrace::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBF8A0];
  v5 = strlen(*MEMORY[0x29EDBF8A0]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_297012CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL defaults::get(char *a1, char *a2, std::string *a3)
{
  v28 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v6 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(v6, *MEMORY[0x29EDBF8A0]) && strcasecmp(v6, *MEMORY[0x29EDBFC60]) && strcasecmp(v6, *MEMORY[0x29EDBFC58]))
    {
      if (strcasecmp(v6, *MEMORY[0x29EDBE5F8]))
      {
        if (strcasecmp(v6, *MEMORY[0x29EDBF8E8]) && strcasecmp(v6, *MEMORY[0x29EDBE690]))
        {
          if (strcasecmp(v6, *MEMORY[0x29EDBE7A8]))
          {
            if (strcasecmp(v6, *MEMORY[0x29EDBE7B0]))
            {
              if (strcasecmp(v6, *MEMORY[0x29EDBE718]))
              {
                if (strcasecmp(v6, *MEMORY[0x29EDBE528]))
                {
                  if (strcasecmp(v6, *MEMORY[0x29EDBE710]))
                  {
                    if (strcasecmp(v6, *MEMORY[0x29EDBE5B0]))
                    {
                      if (strcasecmp(v6, *MEMORY[0x29EDBE608]))
                      {
LABEL_16:
                        if (!strcasecmp(v6, *MEMORY[0x29EDBE600]))
                        {
                          v20 = *MEMORY[0x29EDCA608];

                          return defaults::tracesettings::get(a2, a3);
                        }

                        else
                        {
                          sGetOsLogContext();
                          v7 = qword_2A18B7750;
                          if (os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR))
                          {
                            if (a1[23] >= 0)
                            {
                              v21 = a1;
                            }

                            else
                            {
                              v21 = *a1;
                            }

                            if (a2[23] >= 0)
                            {
                              v22 = a2;
                            }

                            else
                            {
                              v22 = *a2;
                            }

                            v24 = 136315394;
                            v25 = v21;
                            v26 = 2080;
                            v27 = v22;
                            _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Invalid domain; domain='%s' key='%s'", &v24, 0x16u);
                            v23 = *MEMORY[0x29EDCA608];
                          }

                          else
                          {
                            v8 = *MEMORY[0x29EDCA608];
                          }

                          return 0;
                        }
                      }

                      goto LABEL_34;
                    }

                    goto LABEL_61;
                  }

                  goto LABEL_58;
                }

                goto LABEL_55;
              }

              goto LABEL_52;
            }

            goto LABEL_49;
          }

          goto LABEL_46;
        }

        goto LABEL_40;
      }

      goto LABEL_43;
    }
  }

  else if (strcasecmp(a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(a1, *MEMORY[0x29EDBF8A0]) && strcasecmp(a1, *MEMORY[0x29EDBFC60]) && strcasecmp(a1, *MEMORY[0x29EDBFC58]))
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE5F8]))
    {
      if (strcasecmp(a1, *MEMORY[0x29EDBF8E8]) && strcasecmp(a1, *MEMORY[0x29EDBE690]))
      {
        if (strcasecmp(a1, *MEMORY[0x29EDBE7A8]))
        {
          if (strcasecmp(a1, *MEMORY[0x29EDBE7B0]))
          {
            if (strcasecmp(a1, *MEMORY[0x29EDBE718]))
            {
              if (strcasecmp(a1, *MEMORY[0x29EDBE528]))
              {
                if (strcasecmp(a1, *MEMORY[0x29EDBE710]))
                {
                  if (strcasecmp(a1, *MEMORY[0x29EDBE5B0]))
                  {
                    v6 = a1;
                    if (strcasecmp(a1, *MEMORY[0x29EDBE608]))
                    {
                      goto LABEL_16;
                    }

LABEL_34:
                    v10 = *MEMORY[0x29EDCA608];

                    return defaults::tailspin::get(a2, a3);
                  }

LABEL_61:
                  v19 = *MEMORY[0x29EDCA608];

                  return defaults::profile::get(a2, a3);
                }

LABEL_58:
                v18 = *MEMORY[0x29EDCA608];

                return defaults::systemlogs::get(a2, a3);
              }

LABEL_55:
              v17 = *MEMORY[0x29EDCA608];

              return defaults::logfilter::get(a2, a3);
            }

LABEL_52:
            v16 = *MEMORY[0x29EDCA608];

            return defaults::ttr::get(a2, a3);
          }

LABEL_49:
          v15 = *MEMORY[0x29EDCA608];

          return defaults::compression::get(a2, a3);
        }

LABEL_46:
        v14 = *MEMORY[0x29EDCA608];

        return defaults::bbipc::get(a2, a3);
      }

LABEL_40:
      v12 = *MEMORY[0x29EDCA608];

      return defaults::ipc::get(a2, a3);
    }

LABEL_43:
    v13 = *MEMORY[0x29EDCA608];

    return defaults::coredump::get(a2, a3);
  }

  v11 = *MEMORY[0x29EDCA608];

  return defaults::bbtrace::get(a2, a3);
}

BOOL defaults::bbtrace::get(char *a1, std::string::size_type *a2)
{
  v64 = *MEMORY[0x29EDCA608];
  v4 = a1[23];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = strcasecmp(a1, *MEMORY[0x29EDBE6E0]);
    if (v5)
    {
      v6 = strcasecmp(a1, *MEMORY[0x29EDBE798]);
      if (v6)
      {
        v7 = strcasecmp(a1, *MEMORY[0x29EDBEA30]);
        if (v7)
        {
          if (strcasecmp(a1, *MEMORY[0x29EDBE590]) && strcasecmp(a1, *MEMORY[0x29EDBF208]))
          {
            if (!strcasecmp(a1, *MEMORY[0x29EDBE8F8]))
            {
              goto LABEL_128;
            }

            if (strcasecmp(a1, *MEMORY[0x29EDBE880]))
            {
              v8 = strcasecmp(a1, *MEMORY[0x29EDBE6E8]);
              v9 = a1;
              if (v8)
              {
                goto LABEL_10;
              }

LABEL_25:
              v17 = capabilities::trace::defaultHistorySizeMB(v8);
              if (v17 >= 0x7FFFFFFF)
              {
                v18 = 0x7FFFFFFF;
              }

              else
              {
                v18 = v17;
              }

              util::to_str<int>(&v63, v18);
LABEL_83:
              if (*(a2 + 23) < 0)
              {
                operator delete(*a2);
              }

              *a2 = v63;
              goto LABEL_36;
            }
          }

          goto LABEL_32;
        }

        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_29:
    v19 = capabilities::trace::enabledByDefault(v5);
    std::to_string(&v63, v19);
LABEL_33:
    *v62 = v63.__r_.__value_.__l.__size_;
    v22 = v63.__r_.__value_.__r.__words[0];
    *&v62[7] = *(&v63.__r_.__value_.__r.__words[1] + 7);
    v23 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v22;
    a2[1] = *v62;
    *(a2 + 15) = *&v62[7];
    *(a2 + 23) = v23;
    goto LABEL_36;
  }

  v9 = *a1;
  v5 = strcasecmp(*a1, *MEMORY[0x29EDBE6E0]);
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = strcasecmp(v9, *MEMORY[0x29EDBE798]);
  if (!v6)
  {
LABEL_30:
    v20 = capabilities::trace::supportsHighTPutByDefault(v6);
    std::to_string(&v63, v20);
    goto LABEL_33;
  }

  v7 = strcasecmp(v9, *MEMORY[0x29EDBEA30]);
  if (!v7)
  {
LABEL_31:
    v21 = capabilities::trace::supportsDataLoggingByDefault(v7);
    std::to_string(&v63, v21);
    goto LABEL_33;
  }

  if (!strcasecmp(v9, *MEMORY[0x29EDBE590]) || !strcasecmp(v9, *MEMORY[0x29EDBF208]))
  {
    goto LABEL_32;
  }

  if (!strcasecmp(v9, *MEMORY[0x29EDBE8F8]))
  {
    goto LABEL_128;
  }

  if (!strcasecmp(v9, *MEMORY[0x29EDBE880]))
  {
LABEL_32:
    std::to_string(&v63, 0);
    goto LABEL_33;
  }

  v8 = strcasecmp(v9, *MEMORY[0x29EDBE6E8]);
  if (!v8)
  {
    goto LABEL_25;
  }

LABEL_10:
  v10 = diag::config::kEnabledDuringSleepKey[0];
  v11 = strcasecmp(v9, diag::config::kEnabledDuringSleepKey[0]);
  if (!v11)
  {
    v26 = capabilities::radio::maverick(v11);
    if (v26 & 1) != 0 || (capabilities::radio::ice(v26))
    {
      util::to_str<diag::config::DuringAPSleep>(&v63);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
    v10 = diag::config::kEnabledDuringSleepKey[0];
  }

  v12 = *a1;
  if ((v4 & 0x80u) == 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = *a1;
  }

  v14 = strcasecmp(v13, v10);
  if (!v14)
  {
    v15 = capabilities::radio::initium(v14);
    if (v15)
    {
      v16 = capabilities::trace::defaultSleepTraceMode(v15);
      util::to_str<unsigned int>(&v63, v16);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
    v12 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v27 = a1;
  }

  else
  {
    v27 = v12;
  }

  v28 = strcasecmp(v27, diag::config::kBufferingOnAPAwake[0]);
  if (!v28)
  {
    if (capabilities::radio::maverick(v28))
    {
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
    v12 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v29 = a1;
  }

  else
  {
    v29 = v12;
  }

  v30 = strcasecmp(v29, diag::config::kStallDetectionKey[0]);
  if (!v30)
  {
    if (capabilities::radio::maverick(v30))
    {
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
    v12 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v31 = a1;
  }

  else
  {
    v31 = v12;
  }

  v32 = strcasecmp(v31, diag::config::kStallDetectionRetriesKey[0]);
  if (!v32)
  {
    if (capabilities::radio::maverick(v32))
    {
      util::to_str<unsigned int>(&v63, 3u);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
    v12 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v33 = a1;
  }

  else
  {
    v33 = v12;
  }

  v34 = strcasecmp(v33, diag::config::kStallDetectionRecoveryKey[0]);
  if (!v34)
  {
    if (capabilities::radio::maverick(v34))
    {
      util::to_str<diag::config::Recovery>(&v63);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) == 0)
  {
    v35 = a1;
    if (strcasecmp(a1, diag::config::kKeepScratchLogsKey[0]))
    {
      goto LABEL_72;
    }

LABEL_82:
    util::to_str<BOOL>(&v63, 0);
    goto LABEL_83;
  }

  v35 = *a1;
  if (!strcasecmp(*a1, diag::config::kKeepScratchLogsKey[0]))
  {
    goto LABEL_82;
  }

LABEL_72:
  v36 = strcasecmp(v35, *MEMORY[0x29EDBF200]);
  if (!v36)
  {
    v37 = capabilities::radio::maverick(v36);
    if (v37)
    {
      goto LABEL_88;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) == 0)
  {
    v38 = strcasecmp(a1, *MEMORY[0x29EDBF418]);
    v39 = a1;
    if (v38)
    {
      goto LABEL_77;
    }

LABEL_87:
    v37 = capabilities::radio::ice(v38);
    if (!v37)
    {
      v41 = "None";
LABEL_92:
      std::string::__assign_external(a2, v41);
LABEL_36:
      result = 1;
      goto LABEL_37;
    }

LABEL_88:
    if (config::hw::watch(v37))
    {
      v41 = "Lite";
    }

    else
    {
      v41 = "Default";
    }

    goto LABEL_92;
  }

  v39 = *a1;
  v38 = strcasecmp(*a1, *MEMORY[0x29EDBF418]);
  if (!v38)
  {
    goto LABEL_87;
  }

LABEL_77:
  v40 = strcasecmp(v39, diag::config::kExtraDMCFileKey[0]);
  if (!v40)
  {
    if (capabilities::radio::maverick(v40))
    {
      if (*(a2 + 23) < 0)
      {
        a2[1] = 4;
        a2 = *a2;
      }

      else
      {
        *(a2 + 23) = 4;
      }

      strcpy(a2, "None");
      goto LABEL_36;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80u) == 0)
  {
    v42 = a1;
  }

  else
  {
    v42 = *a1;
  }

  v43 = strcasecmp(v42, *MEMORY[0x29EDBEF70]);
  if (!v43)
  {
    if (capabilities::radio::maverick(v43))
    {
      if (*(a2 + 23) < 0)
      {
        a2[1] = 5;
        a2 = *a2;
      }

      else
      {
        *(a2 + 23) = 5;
      }

      strcpy(a2, "Sleep");
      goto LABEL_36;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE938]))
    {
      v44 = strcasecmp(a1, *MEMORY[0x29EDBF2E0]);
      if (v44)
      {
        if (!strcasecmp(a1, *MEMORY[0x29EDBF7F0]))
        {
          goto LABEL_82;
        }

        if (strcasecmp(a1, *MEMORY[0x29EDBF7B0]) && strcasecmp(a1, *MEMORY[0x29EDBF7B8]))
        {
          v45 = strcasecmp(a1, *MEMORY[0x29EDBE790]);
          if (v45)
          {
            v46 = strcasecmp(a1, *MEMORY[0x29EDBEDD8]);
            if (v46)
            {
              v47 = strcasecmp(a1, *MEMORY[0x29EDBEF80]);
              if (v47)
              {
                v48 = a1;
                if (strcasecmp(a1, *MEMORY[0x29EDBF410]))
                {
                  goto LABEL_112;
                }

LABEL_127:
                util::to_str<BOOL>(&v63, 1);
                goto LABEL_83;
              }

LABEL_144:
              count = defaults::bbtrace::transport_read_count(v47);
              util::to_str<unsigned int>(&v63, count);
              goto LABEL_83;
            }

LABEL_143:
            size = defaults::bbtrace::transport_read_size(v46);
            util::to_str<unsigned int>(&v63, size);
            goto LABEL_83;
          }

LABEL_142:
          v54 = capabilities::trace::defaultFileSizeBytes(v45);
          util::to_str<unsigned int>(&v63, v54);
          goto LABEL_83;
        }

LABEL_128:
        if (*(a2 + 23) < 0)
        {
          a2[1] = 0;
          a2 = *a2;
        }

        else
        {
          *(a2 + 23) = 0;
        }

        *a2 = 0;
        goto LABEL_36;
      }

LABEL_134:
      v53 = capabilities::trace::defaultMemoryFileMaxCount(v44);
      util::to_str<unsigned int>(&v63, v53);
      goto LABEL_83;
    }

LABEL_132:
    if (*(a2 + 23) < 0)
    {
      a2[1] = 17;
      a2 = *a2;
    }

    else
    {
      *(a2 + 23) = 17;
    }

    strcpy(a2, "/usr/lib/bbmasks/");
    goto LABEL_36;
  }

  v48 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE938]))
  {
    goto LABEL_132;
  }

  v44 = strcasecmp(v48, *MEMORY[0x29EDBF2E0]);
  if (!v44)
  {
    goto LABEL_134;
  }

  if (!strcasecmp(v48, *MEMORY[0x29EDBF7F0]))
  {
    goto LABEL_82;
  }

  if (!strcasecmp(v48, *MEMORY[0x29EDBF7B0]) || !strcasecmp(v48, *MEMORY[0x29EDBF7B8]))
  {
    goto LABEL_128;
  }

  v45 = strcasecmp(v48, *MEMORY[0x29EDBE790]);
  if (!v45)
  {
    goto LABEL_142;
  }

  v46 = strcasecmp(v48, *MEMORY[0x29EDBEDD8]);
  if (!v46)
  {
    goto LABEL_143;
  }

  v47 = strcasecmp(v48, *MEMORY[0x29EDBEF80]);
  if (!v47)
  {
    goto LABEL_144;
  }

  if (!strcasecmp(v48, *MEMORY[0x29EDBF410]))
  {
    goto LABEL_127;
  }

LABEL_112:
  v49 = strcasecmp(v48, *MEMORY[0x29EDBF1F8]);
  if (!v49)
  {
    v50 = capabilities::trace::supportsDataRateObserver(v49);
    if (v50)
    {
      v51 = capabilities::trace::defaultPeakBandwidthMbps(v50);
      if (v51 >= 0xFFFFFFFF)
      {
        v52 = -1;
      }

      else
      {
        v52 = v51;
      }

      util::to_str<unsigned int>(&v63, v52);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) != 0)
  {
    v57 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBFC80]))
    {
      if (strcasecmp(v57, *MEMORY[0x29EDBFC98]))
      {
        if (!strcasecmp(v57, *MEMORY[0x29EDBFC78]))
        {
          goto LABEL_163;
        }

        if (strcasecmp(v57, *MEMORY[0x29EDBFC90]))
        {
          if (strcasecmp(v57, *MEMORY[0x29EDBF2D8]))
          {
            goto LABEL_152;
          }

LABEL_160:
          util::to_str<unsigned int>(&v63, 0x1F4u);
          goto LABEL_83;
        }
      }

LABEL_162:
      util::to_str<trace::LogLevel>(&v63);
      goto LABEL_83;
    }

LABEL_161:
    util::to_str<trace::LogMode>(&v63, 1);
    goto LABEL_83;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC80]))
  {
    goto LABEL_161;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC98]))
  {
    goto LABEL_162;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC78]))
  {
LABEL_163:
    util::to_str<trace::LogMode>(&v63, 2);
    goto LABEL_83;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC90]))
  {
    goto LABEL_162;
  }

  v57 = a1;
  if (!strcasecmp(a1, *MEMORY[0x29EDBF2D8]))
  {
    goto LABEL_160;
  }

LABEL_152:
  v58 = strcasecmp(v57, *MEMORY[0x29EDBFCA8]);
  if (!v58 && capabilities::trace::supportsErrorHandling(v58))
  {
    util::to_str<int>(&v63, 0);
    goto LABEL_83;
  }

  sGetOsLogContext();
  v59 = qword_2A18B7750;
  result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v60 = *MEMORY[0x29EDBF8A0];
    if (a1[23] >= 0)
    {
      v61 = a1;
    }

    else
    {
      v61 = *a1;
    }

    LODWORD(v63.__r_.__value_.__l.__data_) = 136315394;
    *(v63.__r_.__value_.__r.__words + 4) = v60;
    WORD2(v63.__r_.__value_.__r.__words[1]) = 2080;
    *(&v63.__r_.__value_.__r.__words[1] + 6) = v61;
    _os_log_error_impl(&dword_296FF7000, v59, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &v63, 0x16u);
    result = 0;
  }

LABEL_37:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}