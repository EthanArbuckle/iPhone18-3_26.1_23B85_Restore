void awd::AppContext::operator()(dispatch_queue_t *a1, __int128 *a2, __int128 *a3)
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK3awd10AppContextclENS_10MetricInfoENS_11TriggerInfoE_block_invoke;
  v4[3] = &__block_descriptor_tmp_38;
  v4[4] = a1;
  v3 = a2[1];
  v7 = *a2;
  v8 = v3;
  v5 = *a3;
  v6 = *(a3 + 2);
  dispatch_async(*a1, v4);
}

void ___ZNK3awd10AppContextclENS_10MetricInfoEjNSt3__16vectorIhNS2_9allocatorIhEEEE_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  if (v1)
  {
    v2 = *(a1 + 96);
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 80);
    v12[0] = *(a1 + 64);
    v12[1] = v5;
    v10 = 0;
    v11 = 0;
    __p = 0;
    v6 = v3 - v4;
    if (v3 != v4)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v7 = operator new(v3 - v4);
      v8 = &v7[v6];
      __p = v7;
      v11 = &v7[v6];
      memcpy(v7, v4, v6);
      v10 = v8;
    }

    (*(v1 + 16))(v1, v12, v2, &__p);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }
  }
}

void sub_296D5FB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void awd::AppContext::operator()(dispatch_queue_t *a1, __int128 *a2, int a3, uint64_t a4)
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3awd10AppContextclENS_10MetricInfoEjNSt3__16vectorIhNS2_9allocatorIhEEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_39;
  v5 = a2[1];
  v13 = *a2;
  v14 = v5;
  v15 = a3;
  block[4] = a1;
  __p = 0;
  v11 = 0;
  v12 = 0;
  v7 = *a4;
  v6 = *(a4 + 8);
  v8 = v6 - *a4;
  if (v6 != *a4)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(v6 - *a4);
    v12 = __p + v8;
    memcpy(__p, v7, v8);
    v11 = __p + v8;
  }

  dispatch_async(*a1, block);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_296D5FC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_40c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(void *result, uint64_t a2)
{
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  v3 = *(a2 + 40);
  v2 = *(a2 + 48);
  v4 = v2 - v3;
  if (v2 != v3)
  {
    v5 = result;
    if ((v4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v2 - v3);
    v5[5] = v6;
    v5[6] = v6;
    v7 = &v6[v4];
    v5[7] = &v6[v4];
    result = memcpy(v6, v3, v4);
    v5[6] = v7;
  }

  return result;
}

void sub_296D5FCB4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void awd::AppContext::operator()(dispatch_queue_t *a1, __int128 *a2, __int16 a3)
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v3 = a2[1];
  v5 = *a2;
  v4[2] = ___ZNK3awd10AppContextclENS_10MetricInfoEt_block_invoke;
  v4[3] = &__block_descriptor_tmp_40;
  v4[4] = a1;
  v6 = v3;
  v7 = a3;
  dispatch_async(*a1, v4);
}

uint64_t ___ZNK3awd10AppContextclENS_10MetricInfoEt_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 56);
  if (result)
  {
    v3 = *(a1 + 56);
    v4[0] = *(a1 + 40);
    v4[1] = v3;
    return (*(result + 16))(result, v4, *(a1 + 72));
  }

  return result;
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t ___ZNK3awd10AppContextclENS_10MetricInfoENS_11TriggerInfoE_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  if (result)
  {
    v3 = *(a1 + 80);
    v6[0] = *(a1 + 64);
    v6[1] = v3;
    v5 = *(a1 + 56);
    v4 = *(a1 + 40);
    return (*(result + 16))(result, v6, &v4);
  }

  return result;
}

void awd::AwdCommandDriver::broadcastState_sync(void *a1, char a2)
{
  v3 = a1[2];
  if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a2;
  v8[1] = a1;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::AwdCommandDriver::broadcastState_sync(awd::ClientState)::$_0>(awd::AwdCommandDriver::broadcastState_sync(awd::ClientState)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::AwdCommandDriver::broadcastState_sync(awd::ClientState)::$_0,dispatch_queue_s *::default_delete<awd::AwdCommandDriver::broadcastState_sync(awd::ClientState)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::AwdCommandDriver::broadcastState_sync(awd::ClientState)::$_0>(awd::AwdCommandDriver::broadcastState_sync(awd::ClientState)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::AwdCommandDriver::broadcastState_sync(awd::ClientState)::$_0,dispatch_queue_s *::default_delete<awd::AwdCommandDriver::broadcastState_sync(awd::ClientState)::$_0>>)::{lambda(void *)#1}::__invoke(char **__p)
{
  v2 = *__p;
  v3 = *(*__p + 1);
  v4 = *(v3 + 64);
  v5 = (v3 + 72);
  if (v4 == (v3 + 72))
  {
LABEL_18:
    operator delete(v2);
    goto LABEL_19;
  }

  do
  {
    v6 = v4[5];
    v7 = v4[6];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v6)
    {
      v8 = *v2;
      v13[0] = MEMORY[0x29EDCA5F8];
      v13[1] = 0x40000000;
      v13[2] = ___ZNK3awd10AppContextclENS_11ClientStateE_block_invoke;
      v13[3] = &__block_descriptor_tmp_36;
      v13[4] = v6;
      v14 = v8;
      dispatch_async(*v6, v13);
    }

    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v9 = v4[1];
      if (v9)
      {
        do
        {
LABEL_11:
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
        goto LABEL_3;
      }
    }

    else
    {
      v9 = v4[1];
      if (v9)
      {
        goto LABEL_11;
      }
    }

    do
    {
      v10 = v4[2];
      v11 = *v10 == v4;
      v4 = v10;
    }

    while (!v11);
LABEL_3:
    v4 = v10;
  }

  while (v10 != v5);
  if (v2)
  {
    goto LABEL_18;
  }

LABEL_19:
  v12 = __p[2];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  operator delete(__p);
}

uint64_t ___ZNK3awd10AppContextclENS_11ClientStateE_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

char *abm::data::getDataPropertyNameFromDict(xpc_object_t *a1)
{
  if (MEMORY[0x29C263580](*a1) != MEMORY[0x29EDCAA00])
  {
    return "Unknown";
  }

  value = xpc_dictionary_get_value(*a1, "kDataProperty");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v3 = xpc::dyn_cast_or_default();
  xpc_release(object);
  if (v3 < 5)
  {
    return off_29EE59A58[v3 & 7];
  }

  else
  {
    return "Unknown";
  }
}

uint64_t abm::data::getDataPropertyTypeFromDict(xpc_object_t *a1)
{
  if (MEMORY[0x29C263580](*a1) != MEMORY[0x29EDCAA00])
  {
    return 5;
  }

  value = xpc_dictionary_get_value(*a1, "kDataProperty");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v4 = xpc::dyn_cast_or_default();
  xpc_release(object);
  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

void abm::data::DataAggregationProtocol::toDict(abm::data::DataAggregationProtocol *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C263580](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(0);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationProtocol", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationProtocol::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(a1 + 12));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationProtocol", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

const char *abm::data::DataAggregationProtocol::asString(abm::data::DataAggregationProtocol *this)
{
  v1 = *(this + 3);
  if (v1 > 2)
  {
    return "unknown";
  }

  else
  {
    return off_29EE59A80[v1];
  }
}

void abm::data::DataProperty<abm::data::DataAggregationProtocol>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C263580](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(0);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationProtocol>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E03EB8;
  *(a2 + 8) = 0x3AAAAAA01;
  if (MEMORY[0x29C263580](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataAggregationProtocol"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationProtocol");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    v5 = xpc::dyn_cast_or_default();
    xpc_release(object);
    if (v5)
    {
      if (v5 == 1)
      {
        *(a2 + 12) = 1;
      }

      else if (v5 == 2)
      {
        *(a2 + 12) = 2;
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 12) = 3;
      }
    }

    else
    {
      *(a2 + 12) = 0;
    }
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationProtocol>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E03EB8;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  if (result >= 3)
  {
    *(a2 + 8) = 0;
    result = 3;
  }

  *(a2 + 12) = result;
  return result;
}

void abm::data::DataAggregationMaxDatagrams::toDict(abm::data::DataAggregationMaxDatagrams *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C263580](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(1);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationMaxDatagrams", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationMaxDatagrams::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(a1 + 12));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationMaxDatagrams", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C263580](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(1);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E03F00;
  *(a2 + 8) = 2863311361;
  if (MEMORY[0x29C263580](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataAggregationMaxDatagrams"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationMaxDatagrams");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 12) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E03F00;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 12) = result;
  return result;
}

void abm::data::DataAggregationMaxSize::toDict(abm::data::DataAggregationMaxSize *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C263580](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(2);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationMaxSize", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationMaxSize::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(a1 + 12));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationMaxSize", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxSize>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C263580](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(2);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxSize>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E03F48;
  *(a2 + 8) = 2863311361;
  if (MEMORY[0x29C263580](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataAggregationMaxSize"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationMaxSize");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 12) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationMaxSize>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E03F48;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 12) = result;
  return result;
}

void abm::data::DataFlowControl::toDict(abm::data::DataFlowControl *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C263580](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(3);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_BOOL_create(*(this + 9));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataFlowControl", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataFlowControl::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_BOOL_create(*(a1 + 9));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataFlowControl", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataFlowControl>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C263580](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(3);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataFlowControl>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E03F90;
  *(a2 + 8) = 0xAAAAAAAAAAAA0001;
  if (MEMORY[0x29C263580](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataFlowControl"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataFlowControl");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 9) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataFlowControl>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E03F90;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 9) = result != 0;
  return result;
}

void abm::data::DataPowerSave::toDict(abm::data::DataPowerSave *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C263580](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(4);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_BOOL_create(*(this + 9));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataPowerSave", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataPowerSave::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_BOOL_create(*(a1 + 9));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataPowerSave", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataPowerSave>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C263580](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(4);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataPowerSave>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E03FD8;
  *(a2 + 8) = 0xAAAAAAAAAAAA0001;
  if (MEMORY[0x29C263580](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataPowerSave"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataPowerSave");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 9) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataPowerSave>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E03FD8;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 9) = result != 0;
  return result;
}

const char *trace::toString(unsigned int a1)
{
  if (a1 > 8)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE59AF8[a1];
  }
}

{
  if (a1 > 3)
  {
    return "unknown";
  }

  else
  {
    return off_29EE59B40[a1];
  }
}

{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE59B60[a1];
  }
}

{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE59B78[a1];
  }
}

{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE59B98[a1];
  }
}

{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE59BC0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE59BD8[a1];
  }
}

uint64_t trace::toLogLevel(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 23) < 0)
  {
    v4 = *(a1 + 8);
    result = 7;
    if (v4 <= 5)
    {
      if (v4 != 4)
      {
        if (v4 != 5)
        {
          return result;
        }

        v1 = *v1;
        goto LABEL_10;
      }

      v1 = *v1;
      goto LABEL_45;
    }

    if (v4 == 6)
    {
      v21 = *v1;
      v22 = *v21;
      v23 = *(v21 + 2);
      if (v22 == 1332505665 && v23 == 26214)
      {
        return 0;
      }
    }

    else
    {
      if (v4 != 7)
      {
        return result;
      }

      v9 = *v1;
      if (*v9 == 1651664214 && *(v9 + 3) == 1702063970)
      {
        return 1;
      }

      v11 = *v9;
      v12 = *(v9 + 3);
      if (v11 == 1634100548 && v12 == 1953264993)
      {
        return 3;
      }
    }
  }

  else
  {
    v2 = *(a1 + 23);
    result = 7;
    if (v2 <= 5)
    {
      if (v2 != 4)
      {
        if (v2 != 5)
        {
          return result;
        }

LABEL_10:
        v5 = *v1;
        v6 = *(v1 + 4);
        if (v5 == 1969382724 && v6 == 103)
        {
          return 2;
        }

        return result;
      }

LABEL_45:
      v17 = bswap32(*v1);
      v18 = v17 >= 0x4C697465;
      v19 = v17 > 0x4C697465;
      v20 = !v18;
      if (v19 == v20)
      {
        return 4;
      }

      else
      {
        return 7;
      }
    }

    if (v2 != 6)
    {
      if (v2 != 7)
      {
        return result;
      }

      if (*v1 != 1651664214 || *(v1 + 3) != 1702063970)
      {
        if (*v1 ^ 0x61666544 | *(v1 + 3) ^ 0x746C7561)
        {
          return 7;
        }

        else
        {
          return 3;
        }
      }

      return 1;
    }

    v14 = *v1;
    v15 = *(v1 + 2);
    if (v14 == 1332505665 && v15 == 26214)
    {
      return 0;
    }
  }

  return result;
}

const char *trace::toString(int a1)
{
  v1 = "Unknown";
  if (a1 == 1)
  {
    v1 = "Verbose";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Default";
  }
}

uint64_t coex::CommandDriver::CommandDriver(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1E04020;
  v4 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v42, "com.apple.telephony.abm", "coex.drv");
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v6 = dispatch_queue_create("coex.drv", v5);
  *v4 = 0;
  v4[1] = 0;
  *(a1 + 24) = v6;
  if (v6)
  {
    v7 = v6;
    dispatch_retain(v6);
    *(a1 + 32) = 0;
    dispatch_release(v7);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C263000](a1 + 40, v41);
  MEMORY[0x29C263010](v41);
  ctu::OsLogContext::~OsLogContext(&v42);
  *a1 = &unk_2A1E04020;
  *(a1 + 48) = *a2;
  v8 = a2[1];
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = &unk_2A1E04100;
  v9 = operator new(0x28uLL);
  v10 = operator new(0x20uLL);
  v42.__r_.__value_.__r.__words[0] = &v42;
  *&v42.__r_.__value_.__r.__words[1] = &v42;
  v44 = 0;
  v45 = 0;
  v43 = &v44;
  v11 = operator new(0x40uLL);
  *v11 = v11;
  v11[1] = v11;
  v11[5] = 0;
  v11[4] = 0;
  v11[2] = 0;
  v11[3] = v11 + 4;
  *v10 = v11;
  *(v10 + 1) = 0;
  v12 = operator new(0x18uLL);
  v12[1] = 0x100000001;
  *v12 = &unk_2A1E04230;
  v12[2] = v11;
  *(v10 + 1) = v12;
  v13 = operator new(1uLL);
  *(v10 + 2) = v13;
  *(v10 + 3) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::optional_last_value<void>,boost::signals2::optional_last_value<void>>(v10 + 16, v13, v10 + 3);
  *v9 = v10;
  v9[1] = 0;
  v14 = operator new(0x18uLL);
  *(v14 + 1) = 0x100000001;
  *v14 = &unk_2A1E04300;
  *(v14 + 2) = v10;
  v9[1] = v14;
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v44);
  if (v42.__r_.__value_.__r.__words[2])
  {
    size = v42.__r_.__value_.__l.__size_;
    v16 = *(v42.__r_.__value_.__r.__words[0] + 8);
    v17 = *v42.__r_.__value_.__l.__size_;
    *(v17 + 8) = v16;
    *v16 = v17;
    v42.__r_.__value_.__r.__words[2] = 0;
    if (size != &v42)
    {
      do
      {
        v18 = size->__r_.__value_.__l.__size_;
        data = size[1].__r_.__value_.__l.__data_;
        if (data)
        {
          if (atomic_fetch_add(data + 2, 0xFFFFFFFF) == 1)
          {
            (*(*data + 16))(data);
            if (atomic_fetch_add(data + 3, 0xFFFFFFFF) == 1)
            {
              (*(*data + 24))(data);
            }
          }
        }

        operator delete(size);
        size = v18;
      }

      while (v18 != &v42);
    }
  }

  v9[2] = **v9;
  v20 = operator new(0x40uLL);
  pthread_mutex_init(v20, 0);
  v9[4] = 0;
  v9[3] = v20;
  boost::detail::sp_pointer_construct<boost::signals2::mutex,boost::signals2::mutex>((v9 + 3), v20, v9 + 4);
  *(a1 + 80) = 0;
  *(a1 + 72) = v9;
  v21 = operator new(0x18uLL);
  v21[1] = 0x100000001;
  *v21 = &unk_2A1E043C0;
  v21[2] = v9;
  *(a1 + 80) = v21;
  *(a1 + 88) = &unk_2A1E041C0;
  v22 = operator new(0x28uLL);
  v23 = operator new(0x20uLL);
  v42.__r_.__value_.__r.__words[0] = &v42;
  *&v42.__r_.__value_.__r.__words[1] = &v42;
  v44 = 0;
  v45 = 0;
  v43 = &v44;
  v24 = operator new(0x40uLL);
  *v24 = v24;
  v24[1] = v24;
  v24[5] = 0;
  v24[4] = 0;
  v24[2] = 0;
  v24[3] = v24 + 4;
  *v23 = v24;
  *(v23 + 1) = 0;
  v25 = operator new(0x18uLL);
  v25[1] = 0x100000001;
  *v25 = &unk_2A1E04420;
  v25[2] = v24;
  *(v23 + 1) = v25;
  v26 = operator new(1uLL);
  *(v23 + 2) = v26;
  *(v23 + 3) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::optional_last_value<void>,boost::signals2::optional_last_value<void>>(v23 + 16, v26, v23 + 3);
  *v22 = v23;
  v22[1] = 0;
  v27 = operator new(0x18uLL);
  *(v27 + 1) = 0x100000001;
  *v27 = &unk_2A1E04480;
  *(v27 + 2) = v23;
  v22[1] = v27;
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v44);
  if (v42.__r_.__value_.__r.__words[2])
  {
    v28 = v42.__r_.__value_.__l.__size_;
    v29 = *(v42.__r_.__value_.__r.__words[0] + 8);
    v30 = *v42.__r_.__value_.__l.__size_;
    *(v30 + 8) = v29;
    *v29 = v30;
    v42.__r_.__value_.__r.__words[2] = 0;
    if (v28 != &v42)
    {
      do
      {
        v31 = v28->__r_.__value_.__l.__size_;
        v32 = v28[1].__r_.__value_.__l.__data_;
        if (v32)
        {
          if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v32 + 16))(v32);
            if (atomic_fetch_add(v32 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v32 + 24))(v32);
            }
          }
        }

        operator delete(v28);
        v28 = v31;
      }

      while (v31 != &v42);
    }
  }

  v22[2] = **v22;
  v33 = operator new(0x40uLL);
  pthread_mutex_init(v33, 0);
  v22[4] = 0;
  v22[3] = v33;
  boost::detail::sp_pointer_construct<boost::signals2::mutex,boost::signals2::mutex>((v22 + 3), v33, v22 + 4);
  *(a1 + 104) = 0;
  *(a1 + 96) = v22;
  v34 = operator new(0x18uLL);
  v34[1] = 0x100000001;
  *v34 = &unk_2A1E044E0;
  v34[2] = v22;
  *(a1 + 104) = v34;
  strcpy(&v42, "coex.drv.");
  *(&v42.__r_.__value_.__s + 23) = 9;
  v35 = getprogname();
  v36 = strlen(v35);
  v37 = std::string::append(&v42, v35, v36);
  v38 = *&v37->__r_.__value_.__l.__data_;
  *(a1 + 128) = *(&v37->__r_.__value_.__l + 2);
  *(a1 + 112) = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v39 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296D6211C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>>(v17);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void *boost::signals2::signal<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E041C0;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

{
  *result = &unk_2A1E041C0;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void *boost::signals2::signal<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E04100;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

{
  *result = &unk_2A1E04100;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

uint64_t coex::CommandDriver::getName(coex::CommandDriver *this)
{
  result = this + 112;
  if (*(this + 135) < 0)
  {
    return *result;
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE59A38, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void *ctu::SharedSynchronizable<coex::CommandDriver>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void boost::signals2::signal<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E04100;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (*this && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

void boost::signals2::signal<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E041C0;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
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

void std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
    if (a1[2])
    {
      v2 = a1[1];
      v3 = *(*a1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[2] = 0;
      if (v2 != a1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::optional_last_value<void>,boost::signals2::optional_last_value<void>>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E042A0;
  *(result + 2) = a2;
  v6 = *a3;
  *a3 = result;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v6 + 16))(v6);
    if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v6 + 24))(v6);
    }
  }

  return result;
}

void sub_296D630DC(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete(v1);
  }

  __cxa_rethrow();
}

void boost::detail::sp_counted_impl_p<boost::signals2::optional_last_value<void>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

uint64_t *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::~grouped_list(uint64_t *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::mutex,boost::signals2::mutex>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E04360;
  *(result + 2) = a2;
  v6 = *a3;
  *a3 = result;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v6 + 16))(v6);
    if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v6 + 24))(v6);
    }
  }

  return result;
}

void sub_296D6368C(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::mutex>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::mutex>(pthread_mutex_t *a1)
{
  if (a1)
  {
    pthread_mutex_destroy(a1);

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::mutex>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    pthread_mutex_destroy(*(a1 + 16));

    operator delete(v1);
  }
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>>(void *a1)
{
  if (a1)
  {
    v1 = a1[4];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[4];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
    if (a1[2])
    {
      v2 = a1[1];
      v3 = *(*a1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[2] = 0;
      if (v2 != a1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

uint64_t *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::~grouped_list(uint64_t *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>>(void *a1)
{
  if (a1)
  {
    v1 = a1[4];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[4];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

const char *awd::asString(char a1)
{
  if ((a1 + 1) > 6u)
  {
    return "AppID::kWirelessTelemetry";
  }

  else
  {
    return off_29EE5A200[(a1 + 1)];
  }
}

const char *awd::asString(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "ClientState::kStopped";
  }

  else
  {
    return off_29EE5A1E8[(a1 - 1)];
  }
}

{
  v1 = "PayloadType::kDeviceConfig";
  if (a1 == 1)
  {
    v1 = "PayloadType::kComponentConfig";
  }

  if (a1 == 2)
  {
    return "PayloadType::kProfileConfig";
  }

  else
  {
    return v1;
  }
}

uint64_t awd::asString@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  v41 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40[7] = v4;
  v40[8] = v4;
  v40[5] = v4;
  v40[6] = v4;
  v40[3] = v4;
  v40[4] = v4;
  v40[1] = v4;
  v40[2] = v4;
  v39 = v4;
  v40[0] = v4;
  *__p = v4;
  v38 = v4;
  v35 = v4;
  *__src = v4;
  v33 = v4;
  v34 = v4;
  v32 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v32);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "Profile: 0x", 11);
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = *a1;
  v7 = MEMORY[0x29C2631C0]();
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", Metric: 0x", 12);
  *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v9 = a1[1];
  v10 = MEMORY[0x29C2631C0]();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", Component: 0x", 15);
  *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 8;
  v12 = a1[2];
  v13 = MEMORY[0x29C2631C0]();
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", Submission: 0x", 16);
  *(v14 + *(*v14 - 24) + 8) = *(v14 + *(*v14 - 24) + 8) & 0xFFFFFFB5 | 8;
  v15 = a1[3];
  v16 = MEMORY[0x29C2631C0]();
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", Trigger: 0x", 13);
  *(v17 + *(*v17 - 24) + 8) = *(v17 + *(*v17 - 24) + 8) & 0xFFFFFFB5 | 8;
  v18 = a1[4];
  v19 = MEMORY[0x29C2631C0]();
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", PII: ", 7);
  *(v20 + *(*v20 - 24) + 8) |= 1u;
  v21 = *(a1 + 20);
  v22 = MEMORY[0x29C2631B0]();
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", Location: ", 12);
  *(v23 + *(*v23 - 24) + 8) |= 1u;
  v24 = *(a1 + 21);
  MEMORY[0x29C2631B0]();
  if ((BYTE8(v39) & 0x10) != 0)
  {
    v26 = v39;
    if (v39 < __src[1])
    {
      *&v39 = __src[1];
      v26 = __src[1];
    }

    v27 = __src[0];
    v25 = v26 - __src[0];
    if ((v26 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if ((BYTE8(v39) & 8) == 0)
    {
      v25 = 0;
      a2[23] = 0;
      goto LABEL_15;
    }

    v27 = *(&v34 + 1);
    v25 = *(&v35 + 1) - *(&v34 + 1);
    if (*(&v35 + 1) - *(&v34 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_19:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

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

    v29 = operator new(v28);
    *(a2 + 1) = v25;
    *(a2 + 2) = v28 | 0x8000000000000000;
    *a2 = v29;
    a2 = v29;
    goto LABEL_14;
  }

  a2[23] = v25;
  if (v25)
  {
LABEL_14:
    memmove(a2, v27, v25);
  }

LABEL_15:
  a2[v25] = 0;
  *&v32 = *MEMORY[0x29EDC9528];
  v30 = *(MEMORY[0x29EDC9528] + 72);
  *(&v32 + *(v32 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v33 = v30;
  *(&v33 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v33 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v34);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2632B0](v40);
}

{
  v31 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[7] = v4;
  v30[8] = v4;
  v30[5] = v4;
  v30[6] = v4;
  v30[3] = v4;
  v30[4] = v4;
  v30[1] = v4;
  v30[2] = v4;
  v29 = v4;
  v30[0] = v4;
  *__p = v4;
  v28 = v4;
  v25 = v4;
  *__src = v4;
  v23 = v4;
  v24 = v4;
  v22 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v22);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Trigger: 0x", 11);
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = *a1;
  v7 = MEMORY[0x29C2631C0]();
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", Reference: 0x", 15);
  *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v9 = a1[1];
  v10 = MEMORY[0x29C2631C0]();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", Type: ", 8);
  v12 = MEMORY[0x29C2631C0](v11, a1[2]);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", Time: ", 8);
  *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 2;
  v14 = *(a1 + 2);
  MEMORY[0x29C2631F0]();
  if ((BYTE8(v29) & 0x10) != 0)
  {
    v16 = v29;
    if (v29 < __src[1])
    {
      *&v29 = __src[1];
      v16 = __src[1];
    }

    v17 = __src[0];
    v15 = v16 - __src[0];
    if ((v16 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if ((BYTE8(v29) & 8) == 0)
    {
      v15 = 0;
      a2[23] = 0;
      goto LABEL_15;
    }

    v17 = *(&v24 + 1);
    v15 = *(&v25 + 1) - *(&v24 + 1);
    if (*(&v25 + 1) - *(&v24 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_19:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v15 | 7) + 1;
    }

    v19 = operator new(v18);
    *(a2 + 1) = v15;
    *(a2 + 2) = v18 | 0x8000000000000000;
    *a2 = v19;
    a2 = v19;
    goto LABEL_14;
  }

  a2[23] = v15;
  if (v15)
  {
LABEL_14:
    memmove(a2, v17, v15);
  }

LABEL_15:
  a2[v15] = 0;
  *&v22 = *MEMORY[0x29EDC9528];
  v20 = *(MEMORY[0x29EDC9528] + 72);
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v23 = v20;
  *(&v23 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v23 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v24);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2632B0](v30);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  *(a1 + 128) = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x29EDC9590] + 64;
  *(a1 + 16) = MEMORY[0x29EDC9590] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x29EDC9528];
  v7 = *(MEMORY[0x29EDC9528] + 24);
  v8 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x29EDC9590] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x29EDC9568] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x29C263260](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v5);
  return a1;
}

void sub_296D64CFC(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2632B0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2632B0](a1 + 128);
  return a1;
}

uint64_t awd::asString@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v24 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[7] = v4;
  v23[8] = v4;
  v23[5] = v4;
  v23[6] = v4;
  v23[3] = v4;
  v23[4] = v4;
  v23[1] = v4;
  v23[2] = v4;
  v22 = v4;
  v23[0] = v4;
  *__p = v4;
  v21 = v4;
  v18 = v4;
  *__src = v4;
  v16 = v4;
  v17 = v4;
  v15 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v15);
  if (*a1)
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Application: ", 13);
    if ((*(*a1 + 8) + 1) > 6u)
    {
      v6 = "AppID::kWirelessTelemetry";
    }

    else
    {
      v6 = off_29EE5A200[(*(*a1 + 8) + 1)];
    }

    v7 = strlen(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
  }

  if ((BYTE8(v22) & 0x10) != 0)
  {
    v9 = v22;
    if (v22 < __src[1])
    {
      *&v22 = __src[1];
      v9 = __src[1];
    }

    v10 = __src[0];
    v8 = v9 - __src[0];
    if ((v9 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if ((BYTE8(v22) & 8) == 0)
    {
      v8 = 0;
      a2[23] = 0;
      goto LABEL_20;
    }

    v10 = *(&v17 + 1);
    v8 = *(&v18 + 1) - *(&v17 + 1);
    if (*(&v18 + 1) - *(&v17 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_24:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    v12 = operator new(v11);
    *(a2 + 1) = v8;
    *(a2 + 2) = v11 | 0x8000000000000000;
    *a2 = v12;
    a2 = v12;
    goto LABEL_19;
  }

  a2[23] = v8;
  if (v8)
  {
LABEL_19:
    memmove(a2, v10, v8);
  }

LABEL_20:
  a2[v8] = 0;
  *&v15 = *MEMORY[0x29EDC9528];
  v13 = *(MEMORY[0x29EDC9528] + 72);
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v16 = v13;
  *(&v16 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v16 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2632B0](v23);
}

uint64_t awd::operator<<(uint64_t result, uint64_t a2)
{
  if (*a2)
  {
    v3 = result;
    v4 = MEMORY[0x29C2630B0](result, "Application: ");
    if ((*(*a2 + 8) + 1) > 6u)
    {
      v5 = "AppID::kWirelessTelemetry";
    }

    else
    {
      v5 = off_29EE5A200[(*(*a2 + 8) + 1)];
    }

    MEMORY[0x29C2630B0](v4, v5);
    return v3;
  }

  return result;
}

uint64_t awd::operator<<(uint64_t a1, _BYTE *a2)
{
  v32 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31[7] = v4;
  v31[8] = v4;
  v31[5] = v4;
  v31[6] = v4;
  v31[3] = v4;
  v31[4] = v4;
  v31[1] = v4;
  v31[2] = v4;
  v30 = v4;
  v31[0] = v4;
  *__p = v4;
  v29 = v4;
  v26 = v4;
  v27 = v4;
  v24 = v4;
  v25 = v4;
  v23 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v23);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Application: ", 13);
  if ((*a2 + 1) > 6u)
  {
    v6 = "AppID::kWirelessTelemetry";
  }

  else
  {
    v6 = off_29EE5A200[(*a2 + 1)];
  }

  v7 = strlen(v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", PII allowed: ", 15);
  *(v9 + *(*v9 - 24) + 8) |= 1u;
  v10 = a2[1];
  v11 = MEMORY[0x29C2631B0]();
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", Location allowed: ", 20);
  *(v12 + *(*v12 - 24) + 8) |= 1u;
  v13 = a2[2];
  MEMORY[0x29C2631B0]();
  if ((BYTE8(v30) & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < *(&v27 + 1))
    {
      *&v30 = *(&v27 + 1);
      v16 = *(&v27 + 1);
    }

    v17 = v27;
    v14 = v16 - v27;
    if ((v16 - v27) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if ((BYTE8(v30) & 8) == 0)
    {
      v14 = 0;
      HIBYTE(v22) = 0;
      v15 = __dst;
      goto LABEL_18;
    }

    v17 = *(&v25 + 1);
    v14 = *(&v26 + 1) - *(&v25 + 1);
    if (*(&v26 + 1) - *(&v25 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_24:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    v15 = operator new(v18);
    __dst[1] = v14;
    v22 = v18 | 0x8000000000000000;
    __dst[0] = v15;
    goto LABEL_17;
  }

  HIBYTE(v22) = v14;
  v15 = __dst;
  if (v14)
  {
LABEL_17:
    memmove(v15, v17, v14);
  }

LABEL_18:
  *(v15 + v14) = 0;
  MEMORY[0x29C2630C0](a1, __dst);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst[0]);
  }

  *&v23 = *MEMORY[0x29EDC9528];
  v19 = *(MEMORY[0x29EDC9528] + 72);
  *(&v23 + *(v23 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v24 = v19;
  *(&v24 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v24 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v25);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2632B0](v31);
  return a1;
}

void sub_296D658D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
    _Unwind_Resume(a1);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t awd::operator<<(uint64_t a1, unsigned int *a2)
{
  v43 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42[7] = v4;
  v42[8] = v4;
  v42[5] = v4;
  v42[6] = v4;
  v42[3] = v4;
  v42[4] = v4;
  v42[1] = v4;
  v42[2] = v4;
  v41 = v4;
  v42[0] = v4;
  *__p = v4;
  v40 = v4;
  v37 = v4;
  v38 = v4;
  v35 = v4;
  v36 = v4;
  v34 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v34);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "Profile: 0x", 11);
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = *a2;
  v7 = MEMORY[0x29C2631C0]();
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", Metric: 0x", 12);
  *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v9 = a2[1];
  v10 = MEMORY[0x29C2631C0]();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", Component: 0x", 15);
  *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 8;
  v12 = a2[2];
  v13 = MEMORY[0x29C2631C0]();
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", Submission: 0x", 16);
  *(v14 + *(*v14 - 24) + 8) = *(v14 + *(*v14 - 24) + 8) & 0xFFFFFFB5 | 8;
  v15 = a2[3];
  v16 = MEMORY[0x29C2631C0]();
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", Trigger: 0x", 13);
  *(v17 + *(*v17 - 24) + 8) = *(v17 + *(*v17 - 24) + 8) & 0xFFFFFFB5 | 8;
  v18 = a2[4];
  v19 = MEMORY[0x29C2631C0]();
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", PII: ", 7);
  *(v20 + *(*v20 - 24) + 8) |= 1u;
  v21 = *(a2 + 20);
  v22 = MEMORY[0x29C2631B0]();
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", Location: ", 12);
  *(v23 + *(*v23 - 24) + 8) |= 1u;
  v24 = *(a2 + 21);
  MEMORY[0x29C2631B0]();
  if ((BYTE8(v41) & 0x10) != 0)
  {
    v27 = v41;
    if (v41 < *(&v38 + 1))
    {
      *&v41 = *(&v38 + 1);
      v27 = *(&v38 + 1);
    }

    v28 = v38;
    v25 = v27 - v38;
    if ((v27 - v38) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v41) & 8) == 0)
    {
      v25 = 0;
      HIBYTE(v33) = 0;
      v26 = __dst;
      goto LABEL_15;
    }

    v28 = *(&v36 + 1);
    v25 = *(&v37 + 1) - *(&v36 + 1);
    if (*(&v37 + 1) - *(&v36 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v25 >= 0x17)
  {
    if ((v25 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v25 | 7) + 1;
    }

    v26 = operator new(v29);
    __dst[1] = v25;
    v33 = v29 | 0x8000000000000000;
    __dst[0] = v26;
    goto LABEL_14;
  }

  HIBYTE(v33) = v25;
  v26 = __dst;
  if (v25)
  {
LABEL_14:
    memmove(v26, v28, v25);
  }

LABEL_15:
  *(v26 + v25) = 0;
  MEMORY[0x29C2630C0](a1, __dst);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__dst[0]);
  }

  *&v34 = *MEMORY[0x29EDC9528];
  v30 = *(MEMORY[0x29EDC9528] + 72);
  *(&v34 + *(v34 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v35 = v30;
  *(&v35 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v35 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v36);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2632B0](v42);
  return a1;
}

{
  v33 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32[7] = v4;
  v32[8] = v4;
  v32[5] = v4;
  v32[6] = v4;
  v32[3] = v4;
  v32[4] = v4;
  v32[1] = v4;
  v32[2] = v4;
  v31 = v4;
  v32[0] = v4;
  *__p = v4;
  v30 = v4;
  v27 = v4;
  v28 = v4;
  v25 = v4;
  v26 = v4;
  v24 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v24);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Trigger: 0x", 11);
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = *a2;
  v7 = MEMORY[0x29C2631C0]();
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", Reference: 0x", 15);
  *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v9 = a2[1];
  v10 = MEMORY[0x29C2631C0]();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", Type: ", 8);
  v12 = MEMORY[0x29C2631C0](v11, a2[2]);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", Time: ", 8);
  *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 2;
  v14 = *(a2 + 2);
  MEMORY[0x29C2631F0]();
  if ((BYTE8(v31) & 0x10) != 0)
  {
    v17 = v31;
    if (v31 < *(&v28 + 1))
    {
      *&v31 = *(&v28 + 1);
      v17 = *(&v28 + 1);
    }

    v18 = v28;
    v15 = v17 - v28;
    if ((v17 - v28) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v31) & 8) == 0)
    {
      v15 = 0;
      HIBYTE(v23) = 0;
      v16 = __dst;
      goto LABEL_15;
    }

    v18 = *(&v26 + 1);
    v15 = *(&v27 + 1) - *(&v26 + 1);
    if (*(&v27 + 1) - *(&v26 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v15 | 7) + 1;
    }

    v16 = operator new(v19);
    __dst[1] = v15;
    v23 = v19 | 0x8000000000000000;
    __dst[0] = v16;
    goto LABEL_14;
  }

  HIBYTE(v23) = v15;
  v16 = __dst;
  if (v15)
  {
LABEL_14:
    memmove(v16, v18, v15);
  }

LABEL_15:
  *(v16 + v15) = 0;
  MEMORY[0x29C2630C0](a1, __dst);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__dst[0]);
  }

  *&v24 = *MEMORY[0x29EDC9528];
  v20 = *(MEMORY[0x29EDC9528] + 72);
  *(&v24 + *(v24 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v25 = v20;
  *(&v25 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v25 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v26);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2632B0](v32);
  return a1;
}

void sub_296D65D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
    _Unwind_Resume(a1);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  _Unwind_Resume(a1);
}

void sub_296D66148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
    _Unwind_Resume(a1);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  _Unwind_Resume(a1);
}

void awd::AppContext::setHandler(dispatch_queue_t *a1, void **a2)
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 1174405120;
  v4[2] = ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_11ClientStateEEEE_block_invoke;
  v4[3] = &__block_descriptor_tmp_0;
  v4[4] = a1;
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  dispatch_async(*a1, v4);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 1174405120;
  v4[2] = ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_10MetricInfoENS_13AppPropertiesEEEE_block_invoke;
  v4[3] = &__block_descriptor_tmp_30;
  v4[4] = a1;
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  dispatch_async(*a1, v4);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 1174405120;
  v4[2] = ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvjhEEE_block_invoke;
  v4[3] = &__block_descriptor_tmp_31;
  v4[4] = a1;
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  dispatch_async(*a1, v4);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 1174405120;
  v4[2] = ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_10MetricInfoENS_11TriggerInfoEEEE_block_invoke;
  v4[3] = &__block_descriptor_tmp_32;
  v4[4] = a1;
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  dispatch_async(*a1, v4);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 1174405120;
  v4[2] = ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_10MetricInfoEjNSt3__16vectorIhNS4_9allocatorIhEEEEEEE_block_invoke;
  v4[3] = &__block_descriptor_tmp_33;
  v4[4] = a1;
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  dispatch_async(*a1, v4);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 1174405120;
  v4[2] = ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_10MetricInfoEtEEE_block_invoke;
  v4[3] = &__block_descriptor_tmp_34;
  v4[4] = a1;
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  dispatch_async(*a1, v4);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_11ClientStateEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  if (v3)
  {
    _Block_release(v3);
  }
}

void *__copy_helper_block_e8_40c61_ZTSN8dispatch5blockIU13block_pointerFvN3awd11ClientStateEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c61_ZTSN8dispatch5blockIU13block_pointerFvN3awd11ClientStateEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_10MetricInfoENS_13AppPropertiesEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  v3 = *(v2 + 32);
  *(v2 + 32) = v1;
  if (v3)
  {
    _Block_release(v3);
  }
}

void *__copy_helper_block_e8_40c80_ZTSN8dispatch5blockIU13block_pointerFvN3awd10MetricInfoENS1_13AppPropertiesEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c80_ZTSN8dispatch5blockIU13block_pointerFvN3awd10MetricInfoENS1_13AppPropertiesEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvjhEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
  if (v3)
  {
    _Block_release(v3);
  }
}

void *__copy_helper_block_e8_40c44_ZTSN8dispatch5blockIU13block_pointerFvjhEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c44_ZTSN8dispatch5blockIU13block_pointerFvjhEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_10MetricInfoENS_11TriggerInfoEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  if (v3)
  {
    _Block_release(v3);
  }
}

void *__copy_helper_block_e8_40c78_ZTSN8dispatch5blockIU13block_pointerFvN3awd10MetricInfoENS1_11TriggerInfoEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c78_ZTSN8dispatch5blockIU13block_pointerFvN3awd10MetricInfoENS1_11TriggerInfoEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_10MetricInfoEjNSt3__16vectorIhNS4_9allocatorIhEEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  v3 = *(v2 + 48);
  *(v2 + 48) = v1;
  if (v3)
  {
    _Block_release(v3);
  }
}

void *__copy_helper_block_e8_40c97_ZTSN8dispatch5blockIU13block_pointerFvN3awd10MetricInfoEjNSt3__16vectorIhNS3_9allocatorIhEEEEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c97_ZTSN8dispatch5blockIU13block_pointerFvN3awd10MetricInfoEjNSt3__16vectorIhNS3_9allocatorIhEEEEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_10MetricInfoEtEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  v3 = *(v2 + 56);
  *(v2 + 56) = v1;
  if (v3)
  {
    _Block_release(v3);
  }
}

void *__copy_helper_block_e8_40c61_ZTSN8dispatch5blockIU13block_pointerFvN3awd10MetricInfoEtEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c61_ZTSN8dispatch5blockIU13block_pointerFvN3awd10MetricInfoEtEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void awd::AppContext::setProperties(dispatch_queue_t *a1, uint64_t a2)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3awd10AppContext13setPropertiesERKNS_13AppPropertiesE_block_invoke;
  v2[3] = &__block_descriptor_tmp_35;
  v2[4] = a1;
  v2[5] = a2;
  dispatch_async(*a1, v2);
}

uint64_t ___ZN3awd10AppContext13setPropertiesERKNS_13AppPropertiesE_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  v3 = *v2;
  *(v1 + 10) = *(v2 + 2);
  *(v1 + 8) = v3;
  return result;
}

void awd::AppContext::operator()(dispatch_queue_t *a1, char a2)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZNK3awd10AppContextclENS_11ClientStateE_block_invoke;
  v2[3] = &__block_descriptor_tmp_36;
  v2[4] = a1;
  v3 = a2;
  dispatch_async(*a1, v2);
}

void awd::AppContext::operator()(dispatch_queue_t *a1, int a2, char a3)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZNK3awd10AppContextclEjh_block_invoke;
  v3[3] = &__block_descriptor_tmp_37;
  v3[4] = a1;
  v4 = a2;
  v5 = a3;
  dispatch_async(*a1, v3);
}

uint64_t ___ZNK3awd10AppContextclEjh_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40), *(a1 + 44));
  }

  return result;
}

void awd::AppContext::operator()(dispatch_queue_t *a1, const void **a2, char a3)
{
  v4 = *a2;
  if (*a2)
  {
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 1174405120;
    v6[2] = ___ZNK3awd10AppContextclEN8dispatch5blockIU13block_pointerFvbEEEb_block_invoke;
    v6[3] = &__block_descriptor_tmp_41;
    aBlock = _Block_copy(v4);
    v8 = a3;
    dispatch_async(*a1, v6);
    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }
}

void *__copy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *awd::AwdCommandDriver::AwdCommandDriver(void *a1, void *a2)
{
  *a1 = &unk_2A1E046C0;
  ctu::OsLogContext::OsLogContext(v9, "com.apple.telephony.abm", "awd.driver");
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v5 = dispatch_queue_create("awd.driver", v4);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v5;
  if (v5)
  {
    v6 = v5;
    dispatch_retain(v5);
    a1[4] = 0;
    dispatch_release(v6);
  }

  else
  {
    a1[4] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C263000](a1 + 5, v10);
  MEMORY[0x29C263010](v10);
  ctu::OsLogContext::~OsLogContext(v9);
  *a1 = &unk_2A1E046C0;
  v7 = a2[1];
  a1[6] = *a2;
  a1[7] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  a1[10] = 0;
  a1[9] = 0;
  a1[8] = a1 + 9;
  return a1;
}

void awd::AwdCommandDriver::~AwdCommandDriver(awd::AwdCommandDriver *this)
{
  *this = &unk_2A1E046C0;
  std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(*(this + 9));
  v2 = *(this + 7);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x29C263010](this + 40);
  v3 = *(this + 4);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void awd::AwdCommandDriver::checkIn(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    v2 = a2[1];
    v6 = *a2;
    v7 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = a1;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN3awd16AwdCommandDriverEE20execute_wrapped_syncIZNS2_7checkInENSt3__110shared_ptrINS1_10AppContextEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSA__block_invoke;
    block[3] = &__block_descriptor_tmp_52;
    block[4] = a1 + 8;
    block[5] = &v6;
    v4 = a1 + 24;
    v3 = *(a1 + 24);
    if (*(v4 + 8))
    {
      dispatch_async_and_wait(v3, block);
      v5 = v7;
      if (!v7)
      {
        return;
      }
    }

    else
    {
      dispatch_sync(v3, block);
      v5 = v7;
      if (!v7)
      {
        return;
      }
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void awd::AwdCommandDriver::checkOut(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    v2 = a2[1];
    v6 = *a2;
    v7 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = a1;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN3awd16AwdCommandDriverEE20execute_wrapped_syncIZNS2_8checkOutENSt3__110shared_ptrINS1_10AppContextEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSA__block_invoke;
    block[3] = &__block_descriptor_tmp_53;
    block[4] = a1 + 8;
    block[5] = &v6;
    v4 = a1 + 24;
    v3 = *(a1 + 24);
    if (*(v4 + 8))
    {
      dispatch_async_and_wait(v3, block);
      v5 = v7;
      if (!v7)
      {
        return;
      }
    }

    else
    {
      dispatch_sync(v3, block);
      v5 = v7;
      if (!v7)
      {
        return;
      }
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

uint64_t std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C263190](v14, a1);
  if (LOBYTE(v14[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x29EDC93D0]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C2631A0](v14);
  return a1;
}

void sub_296D6729C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C2631A0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x296D6727CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        if ((v12 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v12 | 7) + 1;
        }

        v13 = operator new(v14);
        __b[1] = v12;
        __b[2] = (v14 | 0x8000000000000000);
        __b[0] = v13;
      }

      else
      {
        HIBYTE(__b[2]) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v15 = __b;
      }

      else
      {
        v15 = __b[0];
      }

      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        v17 = v16;
        operator delete(__b[0]);
        if (v17 != v12)
        {
          return 0;
        }
      }

      else if (v16 != v12)
      {
        return 0;
      }
    }

    v18 = a4 - a3;
    if (v18 < 1 || (*(*v6 + 96))(v6, a3, v18) == v18)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_296D674DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(*a1);
    std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void ___ZNK3ctu20SharedSynchronizableIN3awd16AwdCommandDriverEE20execute_wrapped_syncIZNS2_7checkInENSt3__110shared_ptrINS1_10AppContextEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSA__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  v2 = v1[2];
  v3 = *v1;
  v4 = *(*v1 + 8);
  v6 = (v2 + 72);
  v5 = *(v2 + 72);
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 32);
        if (v4 >= v8)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_8;
        }
      }

      if (v8 >= v4)
      {
        break;
      }

      v5 = *(v7 + 1);
      if (!v5)
      {
        v6 = v7 + 8;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v7 = (v2 + 72);
LABEL_8:
    v9 = v7;
    v7 = operator new(0x38uLL);
    v7[32] = v4;
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = v9;
    *v6 = v7;
    v10 = **(v2 + 64);
    if (v10)
    {
      *(v2 + 64) = v10;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 72), v7);
    ++*(v2 + 80);
    v3 = *v1;
  }

  v11 = v1[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(v7 + 6);
  *(v7 + 5) = v3;
  *(v7 + 6) = v11;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v1[1];
  v22 = *v1;
  v23 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 56))(v2, &v22);
  v14 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *(v2 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = v1[1];
    v19[0] = *v1;
    v19[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    awd::asString(v19, __p);
    if (v21 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    *buf = 136315138;
    v25 = v18;
    _os_log_debug_impl(&dword_296D5F000, v15, OS_LOG_TYPE_DEBUG, "#D %s checked in!", buf, 0xCu);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_296D67874(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296D67888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZNK3ctu20SharedSynchronizableIN3awd16AwdCommandDriverEE20execute_wrapped_syncIZNS2_8checkOutENSt3__110shared_ptrINS1_10AppContextEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSA__block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  v2 = v1[2];
  v3 = *(v2 + 9);
  if (!v3)
  {
    goto LABEL_111;
  }

  v4 = *(*v1 + 8);
  v5 = v2 + 72;
  do
  {
    v6 = v3[32];
    v7 = v6 >= v4;
    v8 = v6 < v4;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 == v2 + 72 || v4 < v5[32])
  {
    goto LABEL_111;
  }

  v9 = *(v5 + 6);
  v58 = *(v5 + 5);
  v59 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 64))(v2, &v58);
  v10 = v59;
  if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(v2 + 5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v43 = v1[1];
    v55[0] = *v1;
    v55[1] = v43;
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    awd::asString(v55, __p);
    if (v57 >= 0)
    {
      v44 = __p;
    }

    else
    {
      v44 = __p[0];
    }

    *buf = 136315138;
    v61 = v44;
    _os_log_debug_impl(&dword_296D5F000, v11, OS_LOG_TYPE_DEBUG, "#D %s  checked out!", buf, 0xCu);
    if (v57 < 0)
    {
      operator delete(__p[0]);
    }

    if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v43->__on_zero_shared)(v43);
      std::__shared_weak_count::__release_weak(v43);
    }
  }

  v12 = *(v5 + 1);
  if (v12)
  {
    v13 = *(v5 + 1);
    do
    {
      v14 = v13;
      v13 = *v13;
    }

    while (v13);
  }

  else
  {
    v15 = v5;
    do
    {
      v14 = *(v15 + 2);
      v27 = *v14 == v15;
      v15 = v14;
    }

    while (!v27);
  }

  if (*(v2 + 8) != v5)
  {
    v16 = *(v2 + 9);
    --*(v2 + 10);
    v17 = *v5;
    if (*v5)
    {
      goto LABEL_24;
    }

LABEL_31:
    v18 = v5;
    if (v12)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

  *(v2 + 8) = v14;
  v16 = *(v2 + 9);
  --*(v2 + 10);
  v17 = *v5;
  if (!*v5)
  {
    goto LABEL_31;
  }

LABEL_24:
  if (!v12)
  {
    v12 = v17;
    v18 = v5;
    v19 = 0;
    v20 = *(v5 + 2);
    v17[2] = v20;
    v21 = *v20;
    if (*v20 == v5)
    {
      goto LABEL_33;
    }

LABEL_28:
    v20[1] = v12;
    v22 = v18[24];
    if (v18 == v5)
    {
      goto LABEL_43;
    }

LABEL_39:
    v23 = *(v5 + 2);
    v23[*v23 != v5] = v18;
    *(v18 + 2) = v23;
    v25 = *v5;
    v24 = *(v5 + 1);
    v25[2] = v18;
    *v18 = v25;
    *(v18 + 1) = v24;
    if (v24)
    {
      *(v24 + 16) = v18;
    }

    v18[24] = v5[24];
    if (v16 == v5)
    {
      v16 = v18;
    }

    goto LABEL_43;
  }

  do
  {
    v18 = v12;
    v12 = *v12;
  }

  while (v12);
  v12 = *(v18 + 1);
  if (!v12)
  {
LABEL_32:
    v20 = *(v18 + 2);
    v19 = 1;
    v21 = *v20;
    if (*v20 == v18)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

LABEL_27:
  v19 = 0;
  v20 = *(v18 + 2);
  v12[2] = v20;
  v21 = *v20;
  if (*v20 != v18)
  {
    goto LABEL_28;
  }

LABEL_33:
  *v20 = v12;
  if (v18 == v16)
  {
    v21 = 0;
    v16 = v12;
    v22 = v18[24];
    if (v18 == v5)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  v21 = v20[1];
  v22 = v18[24];
  if (v18 != v5)
  {
    goto LABEL_39;
  }

LABEL_43:
  if (!v16 || !v22)
  {
    goto LABEL_107;
  }

  if (!v19)
  {
    *(v12 + 24) = 1;
    goto LABEL_107;
  }

  while (1)
  {
    v28 = *(v21 + 2);
    v29 = *v28;
    v30 = *(v21 + 24);
    if (*v28 == v21)
    {
      break;
    }

    if ((*(v21 + 24) & 1) == 0)
    {
      *(v21 + 24) = 1;
      *(v28 + 24) = 0;
      v31 = *(v28 + 8);
      v32 = *v31;
      *(v28 + 8) = *v31;
      if (v32)
      {
        *(v32 + 16) = v28;
      }

      v33 = *(v28 + 16);
      v31[2] = v33;
      v33[*v33 != v28] = v31;
      *v31 = v28;
      *(v28 + 16) = v31;
      if (v16 == *v21)
      {
        v16 = v21;
      }

      v21 = *(*v21 + 8);
    }

    v34 = *v21;
    if (*v21 && v34[24] != 1)
    {
      v35 = *(v21 + 1);
      if (v35 && (v35[24] & 1) == 0)
      {
LABEL_98:
        v34 = v21;
      }

      else
      {
        v34[24] = 1;
        *(v21 + 24) = 0;
        v45 = *(v34 + 1);
        *v21 = v45;
        if (v45)
        {
          *(v45 + 16) = v21;
        }

        v46 = *(v21 + 2);
        v46[*v46 != v21] = v34;
        *(v34 + 1) = v21;
        *(v34 + 2) = v46;
        *(v21 + 2) = v34;
        v35 = v21;
      }

      v47 = *(v34 + 2);
      v34[24] = *(v47 + 24);
      *(v47 + 24) = 1;
      v35[24] = 1;
      v48 = *(v47 + 8);
      v49 = *v48;
      *(v47 + 8) = *v48;
      if (v49)
      {
        *(v49 + 16) = v47;
      }

      v50 = *(v47 + 16);
      v48[2] = v50;
      v50[*v50 != v47] = v48;
      *v48 = v47;
      goto LABEL_106;
    }

    v35 = *(v21 + 1);
    if (v35 && v35[24] != 1)
    {
      goto LABEL_98;
    }

    *(v21 + 24) = 0;
    v26 = *(v21 + 2);
    if (v26 == v16 || (v26[3] & 1) == 0)
    {
      goto LABEL_82;
    }

LABEL_51:
    v21 = *(v26[2] + (*v26[2] == v26));
  }

  if ((*(v21 + 24) & 1) == 0)
  {
    *(v21 + 24) = 1;
    *(v28 + 24) = 0;
    v36 = v29[1];
    *v28 = v36;
    if (v36)
    {
      *(v36 + 16) = v28;
    }

    v37 = *(v28 + 16);
    v37[*v37 != v28] = v29;
    v29[1] = v28;
    v29[2] = v37;
    *(v28 + 16) = v29;
    v38 = *(v21 + 1);
    if (v16 == v38)
    {
      v16 = v21;
    }

    v21 = *v38;
  }

  v39 = *v21;
  if (*v21 && v39[24] != 1)
  {
    goto LABEL_102;
  }

  v40 = *(v21 + 1);
  if (!v40 || v40[24] == 1)
  {
    *(v21 + 24) = 0;
    v26 = *(v21 + 2);
    v27 = *(v26 + 24) != 1 || v26 == v16;
    if (v27)
    {
LABEL_82:
      *(v26 + 24) = 1;
      goto LABEL_107;
    }

    goto LABEL_51;
  }

  if (v39 && (v39[24] & 1) == 0)
  {
LABEL_102:
    v40 = v21;
    goto LABEL_103;
  }

  v40[24] = 1;
  *(v21 + 24) = 0;
  v41 = *v40;
  *(v21 + 1) = *v40;
  if (v41)
  {
    *(v41 + 16) = v21;
  }

  v42 = *(v21 + 2);
  *(v40 + 2) = v42;
  v42[*v42 != v21] = v40;
  *v40 = v21;
  *(v21 + 2) = v40;
  v39 = v21;
LABEL_103:
  v47 = *(v40 + 2);
  v40[24] = *(v47 + 24);
  *(v47 + 24) = 1;
  v39[24] = 1;
  v48 = *v47;
  v51 = *(*v47 + 8);
  *v47 = v51;
  if (v51)
  {
    *(v51 + 16) = v47;
  }

  v52 = *(v47 + 16);
  v52[*v52 != v47] = v48;
  v48[1] = v47;
  v48[2] = v52;
LABEL_106:
  *(v47 + 16) = v48;
LABEL_107:
  v53 = *(v5 + 6);
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v53->__on_zero_shared)(v53);
    std::__shared_weak_count::__release_weak(v53);
  }

  operator delete(v5);
LABEL_111:
  v54 = *MEMORY[0x29EDCA608];
}

void sub_296D67F08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296D67F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
}

void *cpms::CommandDriver::CommandDriver(void *a1, void *a2)
{
  *a1 = &unk_2A1E047C0;
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v5 = dispatch_queue_create("cpms.drv", v4);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v5;
  if (v5)
  {
    v6 = v5;
    dispatch_retain(v5);
    a1[4] = 0;
    dispatch_release(v6);
  }

  else
  {
    a1[4] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 5), "com.apple.telephony.abm", "cpms.drv");
  *a1 = &unk_2A1E047C0;
  v7 = a2[1];
  a1[6] = *a2;
  a1[7] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

const __CFData *coex::util::data_to_uint64(CFDataRef *a1)
{
  *buffer = 0;
  result = *a1;
  if (result)
  {
    v4.length = CFDataGetLength(result);
    v4.location = 0;
    CFDataGetBytes(*a1, v4, buffer);
    return *buffer;
  }

  return result;
}

CFDataRef coex::util::uint64_to_data@<X0>(coex::util *this@<X0>, CFDataRef *a2@<X8>)
{
  *bytes = this;
  result = CFDataCreate(*MEMORY[0x29EDB8ED8], bytes, 8);
  *a2 = result;
  return result;
}

uint64_t radio::DebugCommandDriver::DebugCommandDriver(uint64_t a1, void *a2)
{
  *a1 = &unk_2A1E048B8;
  ctu::OsLogContext::OsLogContext(&__p, "com.apple.telephony.abm", "debug.drv");
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v5 = dispatch_queue_create("debug.drv", v4);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  if (v5)
  {
    v6 = v5;
    dispatch_retain(v5);
    *(a1 + 32) = 0;
    dispatch_release(v6);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C263000](a1 + 40, v14);
  MEMORY[0x29C263010](v14);
  ctu::OsLogContext::~OsLogContext(&__p);
  *a1 = &unk_2A1E048B8;
  *(a1 + 48) = *a2;
  v7 = a2[1];
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  strcpy(&__p, "debug.drv.");
  *(&__p.__r_.__value_.__s + 23) = 10;
  v8 = getprogname();
  v9 = strlen(v8);
  v10 = std::string::append(&__p, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&v10->__r_.__value_.__l + 2);
  *(a1 + 64) = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

uint64_t radio::DebugCommandDriver::getName(radio::DebugCommandDriver *this)
{
  result = this + 64;
  if (*(this + 87) < 0)
  {
    return *result;
  }

  return result;
}

void CommandDriverFactory::createNullFactory(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x58uLL);
  *v3 = &unk_2A1E04998;
  _ZNSt3__115allocate_sharedB8ne200100I8RegistryNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v3 + 1);
  v3[3] = 850045863;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  v3[10] = 0;
  *a1 = v3;
  v7 = v3;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1E04AB8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = v3;
  a1[1] = v4;
  if ((atomic_load_explicit(&qword_2A18A5830, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A18A5830))
    {
      qword_2A18A5840 = 0;
      qword_2A18A5848 = 0;
      __cxa_guard_release(&qword_2A18A5830);
    }
  }

  if (qword_2A18A5828 == -1)
  {
    v5 = qword_2A18A5848;
    if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    goto LABEL_4;
  }

  dispatch_once(&qword_2A18A5828, &__block_literal_global);
  v5 = qword_2A18A5848;
  if (os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEFAULT))
  {
LABEL_4:
    *v6 = 0;
    _os_log_impl(&dword_296D5F000, v5, OS_LOG_TYPE_DEFAULT, "'NullFactory' instantiated!", v6, 2u);
  }
}

void sub_296D68498(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CommandDriverFactory>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CommandDriverFactory::CommandDriverFactory(CommandDriverFactory *this)
{
  *this = &unk_2A1E04998;
  _ZNSt3__115allocate_sharedB8ne200100I8RegistryNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(this + 1);
  *(this + 3) = 850045863;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
}

{
  *this = &unk_2A1E04998;
  _ZNSt3__115allocate_sharedB8ne200100I8RegistryNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(this + 1);
  *(this + 3) = 850045863;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
}

void CommandDriverFactory::create_default_global(CommandDriverFactory *this@<X0>, void *a2@<X8>)
{
  v28 = *MEMORY[0x29EDCA608];
  if (qword_2A18A5838 == -1)
  {
    if (_MergedGlobals)
    {
      goto LABEL_3;
    }

LABEL_55:
    if ((atomic_load_explicit(&qword_2A18A5830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5830))
    {
      qword_2A18A5840 = 0;
      qword_2A18A5848 = 0;
      __cxa_guard_release(&qword_2A18A5830);
    }

    if (qword_2A18A5828 == -1)
    {
      v24 = qword_2A18A5848;
      if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }
    }

    else
    {
      dispatch_once(&qword_2A18A5828, &__block_literal_global);
      v24 = qword_2A18A5848;
      if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_296D5F000, v24, OS_LOG_TYPE_DEFAULT, "No CommandDriver dylib was loaded!", buf, 2u);
    goto LABEL_59;
  }

  dispatch_once(&qword_2A18A5838, &__block_literal_global_9);
  if (!_MergedGlobals)
  {
    goto LABEL_55;
  }

LABEL_3:
  v3 = capabilities::radio::vendor(this);
  if ((v3 - 2) < 2)
  {
    v9 = dlsym(_MergedGlobals, "_ZN23ARICommandDriverFactory21create_default_globalEv");
    explicit = atomic_load_explicit(&qword_2A18A5830, memory_order_acquire);
    if (v9)
    {
      v6 = v9;
      if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5830))
      {
        qword_2A18A5840 = 0;
        qword_2A18A5848 = 0;
        __cxa_guard_release(&qword_2A18A5830);
      }

      if (qword_2A18A5828 == -1)
      {
        v7 = qword_2A18A5848;
        if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_22;
        }
      }

      else
      {
        dispatch_once(&qword_2A18A5828, &__block_literal_global);
        v7 = qword_2A18A5848;
        if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_22;
        }
      }

      *buf = 0;
      v8 = "Loaded ARICommandDriverFactory";
      goto LABEL_21;
    }

    if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5830))
    {
      qword_2A18A5840 = 0;
      qword_2A18A5848 = 0;
      __cxa_guard_release(&qword_2A18A5830);
    }

    if (qword_2A18A5828 == -1)
    {
      v23 = qword_2A18A5848;
      if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }
    }

    else
    {
      dispatch_once(&qword_2A18A5828, &__block_literal_global);
      v23 = qword_2A18A5848;
      if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }
    }

    *buf = 0;
    v18 = "Failed to load ARICommandDriverFactory!";
LABEL_51:
    v19 = v23;
    v20 = 2;
    goto LABEL_52;
  }

  if (v3 == 4)
  {
    v11 = dlsym(_MergedGlobals, "_ZN24MipcCommandDriverFactory21create_default_globalEv");
    v12 = atomic_load_explicit(&qword_2A18A5830, memory_order_acquire);
    if (v11)
    {
      v6 = v11;
      if ((v12 & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5830))
      {
        qword_2A18A5840 = 0;
        qword_2A18A5848 = 0;
        __cxa_guard_release(&qword_2A18A5830);
      }

      if (qword_2A18A5828 == -1)
      {
        v7 = qword_2A18A5848;
        if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_22;
        }
      }

      else
      {
        dispatch_once(&qword_2A18A5828, &__block_literal_global);
        v7 = qword_2A18A5848;
        if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_22;
        }
      }

      *buf = 0;
      v8 = "Loaded MipcCommandDriverFactory";
      goto LABEL_21;
    }

    if ((v12 & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5830))
    {
      qword_2A18A5840 = 0;
      qword_2A18A5848 = 0;
      __cxa_guard_release(&qword_2A18A5830);
    }

    if (qword_2A18A5828 == -1)
    {
      v23 = qword_2A18A5848;
      if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }
    }

    else
    {
      dispatch_once(&qword_2A18A5828, &__block_literal_global);
      v23 = qword_2A18A5848;
      if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }
    }

    *buf = 0;
    v18 = "Failed to load MipcCommandDriverFactory!";
    goto LABEL_51;
  }

  if (v3 != 1)
  {
    v16 = v3;
    if ((atomic_load_explicit(&qword_2A18A5830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5830))
    {
      qword_2A18A5840 = 0;
      qword_2A18A5848 = 0;
      __cxa_guard_release(&qword_2A18A5830);
    }

    if (qword_2A18A5828 == -1)
    {
      v17 = qword_2A18A5848;
      if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }
    }

    else
    {
      dispatch_once(&qword_2A18A5828, &__block_literal_global);
      v17 = qword_2A18A5848;
      if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }
    }

    *buf = 67109120;
    *&buf[4] = v16;
    v18 = "Detected unknown or unsupported radio vendor: %d";
    v19 = v17;
    v20 = 8;
LABEL_52:
    _os_log_impl(&dword_296D5F000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    goto LABEL_59;
  }

  v4 = dlsym(_MergedGlobals, "_ZN23QMICommandDriverFactory21create_default_globalEv");
  v5 = atomic_load_explicit(&qword_2A18A5830, memory_order_acquire);
  if (!v4)
  {
    if ((v5 & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5830))
    {
      qword_2A18A5840 = 0;
      qword_2A18A5848 = 0;
      __cxa_guard_release(&qword_2A18A5830);
    }

    if (qword_2A18A5828 != -1)
    {
      dispatch_once(&qword_2A18A5828, &__block_literal_global);
      v23 = qword_2A18A5848;
      if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }

      goto LABEL_50;
    }

    v23 = qword_2A18A5848;
    if (os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEFAULT))
    {
LABEL_50:
      *buf = 0;
      v18 = "Failed to load QMICommandDriverFactory!";
      goto LABEL_51;
    }

LABEL_59:
    CommandDriverFactory::createNullFactory(a2);
    goto LABEL_60;
  }

  v6 = v4;
  if ((v5 & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5830))
  {
    qword_2A18A5840 = 0;
    qword_2A18A5848 = 0;
    __cxa_guard_release(&qword_2A18A5830);
  }

  if (qword_2A18A5828 == -1)
  {
    v7 = qword_2A18A5848;
    if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  dispatch_once(&qword_2A18A5828, &__block_literal_global);
  v7 = qword_2A18A5848;
  if (os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEBUG))
  {
LABEL_10:
    *buf = 0;
    v8 = "Loaded QMICommandDriverFactory";
LABEL_21:
    _os_log_debug_impl(&dword_296D5F000, v7, OS_LOG_TYPE_DEBUG, v8, buf, 2u);
  }

LABEL_22:
  memset(buf, 170, sizeof(buf));
  v6(buf);
  v13 = *buf;
  v14 = atomic_load_explicit(&qword_2A18A5830, memory_order_acquire);
  if (v13)
  {
    if ((v14 & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5830))
    {
      qword_2A18A5840 = 0;
      qword_2A18A5848 = 0;
      __cxa_guard_release(&qword_2A18A5830);
    }

    if (qword_2A18A5828 == -1)
    {
      v15 = qword_2A18A5848;
      if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEFAULT))
      {
LABEL_27:
        (*(**buf + 160))(*buf);
        *a2 = *buf;
        goto LABEL_60;
      }
    }

    else
    {
      dispatch_once(&qword_2A18A5828, &__block_literal_global);
      v15 = qword_2A18A5848;
      if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }
    }

    *v26 = 0;
    _os_log_impl(&dword_296D5F000, v15, OS_LOG_TYPE_DEFAULT, "Fully instantiated!", v26, 2u);
    goto LABEL_27;
  }

  if ((v14 & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5830))
  {
    qword_2A18A5840 = 0;
    qword_2A18A5848 = 0;
    __cxa_guard_release(&qword_2A18A5830);
  }

  if (qword_2A18A5828 != -1)
  {
    dispatch_once(&qword_2A18A5828, &__block_literal_global);
    v21 = qword_2A18A5848;
    if (!os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v21 = qword_2A18A5848;
  if (os_log_type_enabled(qword_2A18A5848, OS_LOG_TYPE_DEFAULT))
  {
LABEL_35:
    *v26 = 0;
    _os_log_impl(&dword_296D5F000, v21, OS_LOG_TYPE_DEFAULT, "Library loaded but failed to instantiate factory", v26, 2u);
  }

LABEL_36:
  CommandDriverFactory::createNullFactory(a2);
  v22 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

LABEL_60:
  v25 = *MEMORY[0x29EDCA608];
}

void sub_296D68D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CommandDriverFactory::setRegistry(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN12_GLOBAL__N_116sGetOsLogContextEv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "driver.factory");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void *___ZN12_GLOBAL__N_113sLoadTheDylibEv_block_invoke(capabilities::radio *a1)
{
  result = capabilities::radio::vendor(a1);
  if ((result - 1) <= 3)
  {
    result = dlopen(off_29EE5A278[result - 1], 1);
    _MergedGlobals = result;
  }

  return result;
}

void std::__shared_ptr_pointer<CommandDriverFactory *,std::shared_ptr<CommandDriverFactory>::__shared_ptr_default_delete<CommandDriverFactory,CommandDriverFactory>,std::allocator<CommandDriverFactory>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<CommandDriverFactory *,std::shared_ptr<CommandDriverFactory>::__shared_ptr_default_delete<CommandDriverFactory,CommandDriverFactory>,std::allocator<CommandDriverFactory>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    *v1 = &unk_2A1E04998;
    std::mutex::~mutex((v1 + 24));
    v2 = *(v1 + 2);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = v1;
    }

    else
    {
      v3 = v1;
    }

    operator delete(v3);
  }
}

uint64_t std::__shared_ptr_pointer<CommandDriverFactory *,std::shared_ptr<CommandDriverFactory>::__shared_ptr_default_delete<CommandDriverFactory,CommandDriverFactory>,std::allocator<CommandDriverFactory>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000296D75452)
  {
    if (((v2 & 0x8000000296D75452 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000296D75452))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000296D75452 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void **std::unique_ptr<CommandDriverFactory>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2A1E04998;
    std::mutex::~mutex((v1 + 24));
    v3 = *(v1 + 2);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__115allocate_sharedB8ne200100I8RegistryNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(void *a1)
{
  v2 = operator new(0x38uLL);
  v2->__shared_owners_ = 0;
  p_shared_owners = &v2->__shared_owners_;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A1E04B08;
  Registry::Registry(&v2[1]);
  *a1 = v4;
  a1[1] = v2;
  shared_owners = v2[1].__shared_owners_;
  if (shared_owners)
  {
    if (shared_owners->__shared_owners_ != -1)
    {
      return;
    }

    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2[1].__vftable = &v2[1];
    v2[1].__shared_owners_ = v2;
    std::__shared_weak_count::__release_weak(shared_owners);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2[1].__vftable = &v2[1];
    v2[1].__shared_owners_ = v2;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v2->__on_zero_shared)(v2);

  std::__shared_weak_count::__release_weak(v2);
}

void sub_296D692EC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<Registry>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E04B08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<Registry>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v2);
}

void CreateError(uint64_t a1@<X0>, CFIndex a2@<X1>, CFErrorRef *a3@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v5 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v14 = __p;
  }

  v12 = 0;
  v6 = SHIBYTE(v14.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = v14;
  }

  v13 = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  if (ctu::cf::convert_copy())
  {
    v8 = v13;
    v12 = v13;
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = 0;
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  operator delete(v15.__r_.__value_.__l.__data_);
LABEL_15:
  v11 = v8;
  if (v6 < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_17:
  v15.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDB8F38];
  v14.__r_.__value_.__r.__words[0] = v8;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  *a3 = CFErrorCreateWithUserInfoKeysAndValues(v7, *MEMORY[0x29EDB8F50], a2, &v15.__r_.__value_.__l.__data_, &v14.__r_.__value_.__l.__data_, 1);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_296D695B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, int a13, const void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a14);
  operator delete(v25);
  if ((v26 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

uint64_t logs::collectionStateAsString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result <= 1)
  {
    if (!result)
    {
      a2[23] = 7;
      strcpy(a2, "Started");
      return result;
    }

    if (result == 1)
    {
      a2[23] = 7;
      strcpy(a2, "Stopped");
      return result;
    }
  }

  else
  {
    switch(result)
    {
      case 2:
        a2[23] = 16;
        strcpy(a2, "EnteringLowPower");
        return result;
      case 3:
        a2[23] = 15;
        strcpy(a2, "ExitingLowPower");
        return result;
      case 4:
        a2[23] = 5;
        *a2 = 1869771333;
        a2[4] = 114;
        a2[5] = 0;
        return result;
    }
  }

  a2[23] = 7;
  strcpy(a2, "Unknown");
  return result;
}

const char *desense::asString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EE5A2C8[a1];
  }
}

uint64_t desense::CommandDriver::CommandDriver(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1E04B58;
  v4 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v42, "com.apple.telephony.abm", "desense.drv");
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v6 = dispatch_queue_create("desense.drv", v5);
  *v4 = 0;
  v4[1] = 0;
  *(a1 + 24) = v6;
  if (v6)
  {
    v7 = v6;
    dispatch_retain(v6);
    *(a1 + 32) = 0;
    dispatch_release(v7);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C263000](a1 + 40, v41);
  MEMORY[0x29C263010](v41);
  ctu::OsLogContext::~OsLogContext(&v42);
  *a1 = &unk_2A1E04B58;
  *(a1 + 48) = &unk_2A1E04C28;
  v8 = operator new(0x28uLL);
  v9 = operator new(0x20uLL);
  v42.__r_.__value_.__r.__words[0] = &v42;
  *&v42.__r_.__value_.__r.__words[1] = &v42;
  v44 = 0;
  v45 = 0;
  v43 = &v44;
  v10 = operator new(0x40uLL);
  *v10 = v10;
  v10[1] = v10;
  v10[5] = 0;
  v10[4] = 0;
  v10[2] = 0;
  v10[3] = v10 + 4;
  *v9 = v10;
  *(v9 + 1) = 0;
  v11 = operator new(0x18uLL);
  v11[1] = 0x100000001;
  *v11 = &unk_2A1E04D08;
  v11[2] = v10;
  *(v9 + 1) = v11;
  v12 = operator new(1uLL);
  *(v9 + 2) = v12;
  *(v9 + 3) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::optional_last_value<void>,boost::signals2::optional_last_value<void>>(v9 + 16, v12, v9 + 3);
  *v8 = v9;
  v8[1] = 0;
  v13 = operator new(0x18uLL);
  *(v13 + 1) = 0x100000001;
  *v13 = &unk_2A1E04D68;
  *(v13 + 2) = v9;
  v8[1] = v13;
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v44);
  if (v42.__r_.__value_.__r.__words[2])
  {
    size = v42.__r_.__value_.__l.__size_;
    v15 = *(v42.__r_.__value_.__r.__words[0] + 8);
    v16 = *v42.__r_.__value_.__l.__size_;
    *(v16 + 8) = v15;
    *v15 = v16;
    v42.__r_.__value_.__r.__words[2] = 0;
    if (size != &v42)
    {
      do
      {
        v17 = size->__r_.__value_.__l.__size_;
        data = size[1].__r_.__value_.__l.__data_;
        if (data)
        {
          if (atomic_fetch_add(data + 2, 0xFFFFFFFF) == 1)
          {
            (*(*data + 16))(data);
            if (atomic_fetch_add(data + 3, 0xFFFFFFFF) == 1)
            {
              (*(*data + 24))(data);
            }
          }
        }

        operator delete(size);
        size = v17;
      }

      while (v17 != &v42);
    }
  }

  v8[2] = **v8;
  v19 = operator new(0x40uLL);
  pthread_mutex_init(v19, 0);
  v8[4] = 0;
  v8[3] = v19;
  boost::detail::sp_pointer_construct<boost::signals2::mutex,boost::signals2::mutex>((v8 + 3), v19, v8 + 4);
  *(a1 + 64) = 0;
  *(a1 + 56) = v8;
  v20 = operator new(0x18uLL);
  v20[1] = 0x100000001;
  *v20 = &unk_2A1E04DC8;
  v20[2] = v8;
  *(a1 + 64) = v20;
  *(a1 + 72) = &unk_2A1E04C98;
  v21 = operator new(0x28uLL);
  v22 = operator new(0x20uLL);
  v42.__r_.__value_.__r.__words[0] = &v42;
  *&v42.__r_.__value_.__r.__words[1] = &v42;
  v44 = 0;
  v45 = 0;
  v43 = &v44;
  v23 = operator new(0x40uLL);
  *v23 = v23;
  v23[1] = v23;
  v23[5] = 0;
  v23[4] = 0;
  v23[2] = 0;
  v23[3] = v23 + 4;
  *v22 = v23;
  *(v22 + 1) = 0;
  v24 = operator new(0x18uLL);
  v24[1] = 0x100000001;
  *v24 = &unk_2A1E04E28;
  v24[2] = v23;
  *(v22 + 1) = v24;
  v25 = operator new(1uLL);
  *(v22 + 2) = v25;
  *(v22 + 3) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::optional_last_value<void>,boost::signals2::optional_last_value<void>>(v22 + 16, v25, v22 + 3);
  *v21 = v22;
  v21[1] = 0;
  v26 = operator new(0x18uLL);
  *(v26 + 1) = 0x100000001;
  *v26 = &unk_2A1E04E88;
  *(v26 + 2) = v22;
  v21[1] = v26;
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v44);
  if (v42.__r_.__value_.__r.__words[2])
  {
    v27 = v42.__r_.__value_.__l.__size_;
    v28 = *(v42.__r_.__value_.__r.__words[0] + 8);
    v29 = *v42.__r_.__value_.__l.__size_;
    *(v29 + 8) = v28;
    *v28 = v29;
    v42.__r_.__value_.__r.__words[2] = 0;
    if (v27 != &v42)
    {
      do
      {
        v30 = v27->__r_.__value_.__l.__size_;
        v31 = v27[1].__r_.__value_.__l.__data_;
        if (v31)
        {
          if (atomic_fetch_add(v31 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v31 + 16))(v31);
            if (atomic_fetch_add(v31 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v31 + 24))(v31);
            }
          }
        }

        operator delete(v27);
        v27 = v30;
      }

      while (v30 != &v42);
    }
  }

  v21[2] = **v21;
  v32 = operator new(0x40uLL);
  pthread_mutex_init(v32, 0);
  v21[4] = 0;
  v21[3] = v32;
  boost::detail::sp_pointer_construct<boost::signals2::mutex,boost::signals2::mutex>((v21 + 3), v32, v21 + 4);
  *(a1 + 88) = 0;
  *(a1 + 80) = v21;
  v33 = operator new(0x18uLL);
  v33[1] = 0x100000001;
  *v33 = &unk_2A1E04EE8;
  v33[2] = v21;
  *(a1 + 96) = *a2;
  *(a1 + 88) = v33;
  v34 = a2[1];
  *(a1 + 104) = v34;
  if (v34)
  {
    atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
  }

  strcpy(&v42, "desense.drv.");
  *(&v42.__r_.__value_.__s + 23) = 12;
  v35 = getprogname();
  v36 = strlen(v35);
  v37 = std::string::append(&v42, v35, v36);
  v38 = *&v37->__r_.__value_.__l.__data_;
  *(a1 + 128) = *(&v37->__r_.__value_.__l + 2);
  *(a1 + 112) = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v39 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296D69EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>>(v17);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void *boost::signals2::signal<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E04C98;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

{
  *result = &unk_2A1E04C98;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void *boost::signals2::signal<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E04C28;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

{
  *result = &unk_2A1E04C28;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

uint64_t desense::CommandDriver::getName(desense::CommandDriver *this)
{
  result = this + 112;
  if (*(this + 135) < 0)
  {
    return *result;
  }

  return result;
}

void boost::signals2::signal<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E04C28;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void boost::signals2::signal<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E04C98;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
    if (a1[2])
    {
      v2 = a1[1];
      v3 = *(*a1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[2] = 0;
      if (v2 != a1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

uint64_t *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>::~grouped_list(uint64_t *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>>(void *a1)
{
  if (a1)
  {
    v1 = a1[4];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[4];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
    if (a1[2])
    {
      v2 = a1[1];
      v3 = *(*a1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[2] = 0;
      if (v2 != a1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

uint64_t *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>::~grouped_list(uint64_t *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>>(void *a1)
{
  if (a1)
  {
    v1 = a1[4];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[4];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

const char *radio::asString(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 7)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE5A710[v1];
  }
}

{
  v1 = *a1;
  if (v1 > 2)
  {
    return "FactoryCalibrationStatus::kUnknown";
  }

  else
  {
    return off_29EE5A808[v1];
  }
}

{
  v1 = *a1;
  if (v1 > 2)
  {
    return "RFCalibrationStatus::kUnknown";
  }

  else
  {
    return off_29EE5A838[v1];
  }
}

void radio::OpMode::~OpMode(radio::OpMode *this)
{
  v2 = *(this + 1);
  *(this + 2) = v2;
  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
    v2 = *(this + 1);
  }

  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  v2 = *(this + 1);
  *(this + 2) = v2;
  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
    v2 = *(this + 1);
  }

  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void radio::OpMode::create(void *a1@<X8>)
{
  v3 = operator new(0x50uLL);
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = &unk_2A1E04F48;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 9) = 0;
  a1[1] = v3;
  *(v3 + 24) = 0u;
  v3 += 24;
  *a1 = v3;
  radio::OpMode::init(v3);
}

void radio::OpMode::init(radio::OpMode *this)
{
  *this = 8;
  *(this + 1) = 0;
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if ((RadioVendor - 2) < 2)
  {
    v8 = operator new(7uLL);
    *v8 = 262657;
    v8[2] = 1536;
    *(v8 + 6) = 7;
    v5 = *(this + 1);
    *(this + 1) = v8;
    *(this + 2) = v8 + 7;
    *(this + 3) = v8 + 7;
    if (!v5)
    {
      return;
    }

    goto LABEL_9;
  }

  if (RadioVendor == 4)
  {
    v9 = operator new(2uLL);
    v5 = *(this + 1);
    *(this + 1) = v9;
    *v9++ = 1;
    *(this + 2) = v9;
    *(this + 3) = v9;
    if (!v5)
    {
      return;
    }

    goto LABEL_9;
  }

  if (RadioVendor == 1)
  {
    v3 = operator new(8uLL);
    *v3 = 0xB09050403020100;
    v4 = operator new(8uLL);
    *v4 = 0x3000200010000;
    v5 = *(this + 1);
    *(this + 1) = v3;
    *(this + 2) = v3 + 1;
    v6 = *(this + 4);
    *(this + 3) = v3 + 1;
    *(this + 4) = v4;
    *(this + 5) = v4 + 1;
    *(this + 6) = v4 + 1;
    if (v6)
    {
      v7 = v5;
      operator delete(v6);
      v5 = v7;
    }

    if (v5)
    {
LABEL_9:

      operator delete(v5);
    }
  }
}

uint64_t radio::OpMode::setMode(uint64_t this, int a2)
{
  v2 = *(this + 8);
  v3 = *(this + 16);
  if (v2 == v3)
  {
LABEL_5:
    v4 = 8;
  }

  else
  {
    v4 = 0;
    while (*v2 != a2)
    {
      ++v2;
      ++v4;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }
  }

  *this = v4;
  return this;
}

uint64_t radio::OpMode::convertMode(radio::OpMode *this, int a2)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 == v3)
  {
    return 8;
  }

  else
  {
    v4 = 0;
    while (*v2 != a2)
    {
      ++v2;
      ++v4;
      if (v2 == v3)
      {
        return 8;
      }
    }
  }

  return v4;
}

uint64_t radio::OpMode::getModeValue(radio::OpMode *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if (*(this + 2) - v2 <= v1)
  {
    return 255;
  }

  else
  {
    return *(v2 + v1);
  }
}

uint64_t radio::OpMode::convertMode(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (*(a1 + 16) - v2 <= a2)
  {
    return 255;
  }

  else
  {
    return *(v2 + a2);
  }
}

uint64_t radio::OpMode::setConfig(uint64_t this, int a2)
{
  v2 = *(this + 32);
  v3 = *(this + 40);
  if (v2 == v3)
  {
LABEL_5:
    v4 = 0;
  }

  else
  {
    v4 = 0;
    while (*v2 != a2)
    {
      ++v2;
      ++v4;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }
  }

  *(this + 2) = v4;
  return this;
}

uint64_t radio::OpMode::convertConfig(radio::OpMode *this, int a2)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    v4 = 0;
    while (*v2 != a2)
    {
      ++v2;
      ++v4;
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t radio::OpMode::getConfigValue(radio::OpMode *this)
{
  v1 = *(this + 2);
  v2 = *(this + 4);
  if (v1 >= (*(this + 5) - v2) >> 1)
  {
    return 0xFFFFLL;
  }

  else
  {
    return *(v2 + 2 * v1);
  }
}

uint64_t radio::OpMode::convertConfig(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 32);
  if (a2 >= ((*(a1 + 40) - v2) >> 1))
  {
    return 0xFFFFLL;
  }

  else
  {
    return *(v2 + 2 * a2);
  }
}

BOOL radio::OpMode::allowModeChange(radio::OpMode *this)
{
  v1 = *(this + 1);
  if (v1 < 2)
  {
    return 1;
  }

  if (v1 == 3)
  {
    v3 = *this;
    if ((v3 & 0xFE) == 4)
    {
      return 0;
    }
  }

  else
  {
    v3 = *this;
  }

  return v3 != 2;
}

uint64_t radio::OpMode::modeToString@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, _BYTE *a3@<X8>)
{
  v38 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37[7] = v6;
  v37[8] = v6;
  v37[5] = v6;
  v37[6] = v6;
  v37[3] = v6;
  v37[4] = v6;
  v37[1] = v6;
  v37[2] = v6;
  v36 = v6;
  v37[0] = v6;
  *__p = v6;
  v35 = v6;
  v32 = v6;
  *__src = v6;
  v30 = v6;
  v31 = v6;
  v29 = v6;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v29);
  if (a2 > 7)
  {
    v7 = "Unknown";
  }

  else
  {
    v7 = off_29EE5A710[a2];
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, v7, v8);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if ((RadioVendor - 2) < 2)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, " [ ", 3);
    v16 = *(a1 + 8);
    if (*(a1 + 16) - v16 <= a2 || (v17 = *(v16 + a2), v17 > 7))
    {
      v13 = "Unknown";
    }

    else
    {
      v13 = off_29EE5A7B0[v17];
    }
  }

  else if (RadioVendor == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, " [ ", 3);
    v18 = *(a1 + 8);
    if (*(a1 + 16) - v18 <= a2 || (v19 = *(v18 + a2), v19 > 0xB))
    {
      v13 = "Unknown";
    }

    else
    {
      v13 = off_29EE5A750[v19];
    }
  }

  else
  {
    if (RadioVendor != 4)
    {
      goto LABEL_23;
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, " [ ", 3);
    v11 = *(a1 + 8);
    v12 = a2;
    v13 = "Unknown";
    if (*(a1 + 16) - v11 > v12)
    {
      v14 = *(v11 + v12);
      v15 = "Online";
      if (v14 != 1)
      {
        v15 = "Unknown";
      }

      if (v14)
      {
        v13 = v15;
      }

      else
      {
        v13 = "Airplane";
      }
    }
  }

  v20 = strlen(v13);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v13, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " ]", 2);
LABEL_23:
  if ((BYTE8(v36) & 0x10) != 0)
  {
    v23 = v36;
    if (v36 < __src[1])
    {
      *&v36 = __src[1];
      v23 = __src[1];
    }

    v24 = __src[0];
    v22 = v23 - __src[0];
    if ((v23 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if ((BYTE8(v36) & 8) == 0)
    {
      v22 = 0;
      a3[23] = 0;
      goto LABEL_37;
    }

    v24 = *(&v31 + 1);
    v22 = *(&v32 + 1) - *(&v31 + 1);
    if (*(&v32 + 1) - *(&v31 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_41:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v22 | 7) + 1;
    }

    v26 = operator new(v25);
    *(a3 + 1) = v22;
    *(a3 + 2) = v25 | 0x8000000000000000;
    *a3 = v26;
    a3 = v26;
    goto LABEL_36;
  }

  a3[23] = v22;
  if (v22)
  {
LABEL_36:
    memmove(a3, v24, v22);
  }

LABEL_37:
  a3[v22] = 0;
  *&v29 = *MEMORY[0x29EDC9528];
  v27 = *(MEMORY[0x29EDC9528] + 72);
  *(&v29 + *(v29 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v30 = v27;
  *(&v30 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v30 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v31);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2632B0](v37);
}

uint64_t radio::OpMode::modeToString@<X0>(radio::OpMode *this@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  if (v3 == v4)
  {
LABEL_5:
    v5 = 8;
  }

  else
  {
    v5 = 0;
    while (*v3 != a2)
    {
      ++v3;
      ++v5;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }
  }

  return radio::OpMode::modeToString(this, v5, a3);
}

uint64_t radio::OpMode::configToString@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33[7] = v6;
  v33[8] = v6;
  v33[5] = v6;
  v33[6] = v6;
  v33[3] = v6;
  v33[4] = v6;
  v33[1] = v6;
  v33[2] = v6;
  v32 = v6;
  v33[0] = v6;
  *__p = v6;
  v31 = v6;
  v28 = v6;
  *__src = v6;
  v26 = v6;
  v27 = v6;
  v25 = v6;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v25);
  if ((a2 - 1) > 2)
  {
    v7 = "Unknown";
  }

  else
  {
    v7 = off_29EE5A7F0[(a2 - 1)];
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v7, v8);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if ((RadioVendor - 2) >= 2)
  {
    if (RadioVendor == 1)
    {
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, " [ ", 3);
      v13 = *(a1 + 32);
      if (a2 >= ((*(a1 + 40) - v13) >> 1) || (v14 = *(v13 + 2 * a2) - 1, v14 > 2))
      {
        v15 = "Unknown";
      }

      else
      {
        v15 = off_29EE5A7F0[v14];
      }

      v16 = strlen(v15);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v15, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " ]", 2);
    }
  }

  else
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, " [ ", 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Invalid for ICE", 15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ]", 2);
  }

  if ((BYTE8(v32) & 0x10) != 0)
  {
    v19 = v32;
    if (v32 < __src[1])
    {
      *&v32 = __src[1];
      v19 = __src[1];
    }

    v20 = __src[0];
    v18 = v19 - __src[0];
    if ((v19 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if ((BYTE8(v32) & 8) == 0)
    {
      v18 = 0;
      a3[23] = 0;
      goto LABEL_26;
    }

    v20 = *(&v27 + 1);
    v18 = *(&v28 + 1) - *(&v27 + 1);
    if (*(&v28 + 1) - *(&v27 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_30:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v18 | 7) + 1;
    }

    v22 = operator new(v21);
    *(a3 + 1) = v18;
    *(a3 + 2) = v21 | 0x8000000000000000;
    *a3 = v22;
    a3 = v22;
    goto LABEL_25;
  }

  a3[23] = v18;
  if (v18)
  {
LABEL_25:
    memmove(a3, v20, v18);
  }

LABEL_26:
  a3[v18] = 0;
  *&v25 = *MEMORY[0x29EDC9528];
  v23 = *(MEMORY[0x29EDC9528] + 72);
  *(&v25 + *(v25 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v26 = v23;
  *(&v26 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v26 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v27);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2632B0](v33);
}

uint64_t radio::OpMode::configToString@<X0>(radio::OpMode *this@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  if (v3 == v4)
  {
LABEL_5:
    v5 = 0;
  }

  else
  {
    v5 = 0;
    while (*v3 != a2)
    {
      ++v3;
      ++v5;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }
  }

  return radio::OpMode::configToString(this, v5, a3);
}

const char *radio::asStringV2(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 2)
  {
    return "FactoryCalibrationStatus::kUnknown";
  }

  else
  {
    return off_29EE5A820[v1];
  }
}

uint64_t radio::RFCalibration_t::toString@<X0>(radio::RFCalibration_t *this@<X0>, _BYTE *a2@<X8>)
{
  v74 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v73[7] = v4;
  v73[8] = v4;
  v73[5] = v4;
  v73[6] = v4;
  v73[3] = v4;
  v73[4] = v4;
  v73[1] = v4;
  v73[2] = v4;
  v72 = v4;
  v73[0] = v4;
  *__p = v4;
  v71 = v4;
  v68 = v4;
  *__src = v4;
  v66 = v4;
  v67 = v4;
  v65 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v65);
  v5 = *this;
  if (v5 > 2)
  {
    v6 = "RFCalibrationStatus::kUnknown";
  }

  else
  {
    v6 = off_29EE5A838[v5];
  }

  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, v6, v7);
  if (*this == 1)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\nGSM: ", 6);
    *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "0x", 2);
    v10 = MEMORY[0x29C2631E0](v9, *(this + 1));
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", mask: ", 8);
    *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 8;
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "0x", 2);
    v13 = MEMORY[0x29C2631E0](v12, *(this + 2));
    v14 = *(this + 1);
    v15 = *(this + 2);
    if (v14 == v15)
    {
      v16 = " - CORRECT";
    }

    else
    {
      v16 = " - INCORRECT";
    }

    if (v14 == v15)
    {
      v17 = 10;
    }

    else
    {
      v17 = 12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\nCDMA: ", 7);
    *(v18 + *(*v18 - 24) + 8) = *(v18 + *(*v18 - 24) + 8) & 0xFFFFFFB5 | 8;
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "0x", 2);
    v20 = MEMORY[0x29C2631D0](v19, *(this + 2));
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", mask: ", 8);
    *(v21 + *(*v21 - 24) + 8) = *(v21 + *(*v21 - 24) + 8) & 0xFFFFFFB5 | 8;
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "0x", 2);
    v23 = MEMORY[0x29C2631D0](v22, *(this + 3));
    v24 = *(this + 2);
    v25 = *(this + 3);
    if (v24 == v25)
    {
      v26 = " - CORRECT";
    }

    else
    {
      v26 = " - INCORRECT";
    }

    if (v24 == v25)
    {
      v27 = 10;
    }

    else
    {
      v27 = 12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v26, v27);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\nWCDMA: ", 8);
    *(v28 + *(*v28 - 24) + 8) = *(v28 + *(*v28 - 24) + 8) & 0xFFFFFFB5 | 8;
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "0x", 2);
    v30 = MEMORY[0x29C2631D0](v29, *(this + 4));
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ", mask: ", 8);
    *(v31 + *(*v31 - 24) + 8) = *(v31 + *(*v31 - 24) + 8) & 0xFFFFFFB5 | 8;
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "0x", 2);
    v33 = MEMORY[0x29C2631D0](v32, *(this + 5));
    v34 = *(this + 4);
    v35 = *(this + 5);
    if (v34 == v35)
    {
      v36 = " - CORRECT";
    }

    else
    {
      v36 = " - INCORRECT";
    }

    if (v34 == v35)
    {
      v37 = 10;
    }

    else
    {
      v37 = 12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v36, v37);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\nTDSCDMA: ", 10);
    *(v38 + *(*v38 - 24) + 8) = *(v38 + *(*v38 - 24) + 8) & 0xFFFFFFB5 | 8;
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "0x", 2);
    v40 = MEMORY[0x29C2631D0](v39, *(this + 6));
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ", mask: ", 8);
    *(v41 + *(*v41 - 24) + 8) = *(v41 + *(*v41 - 24) + 8) & 0xFFFFFFB5 | 8;
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "0x", 2);
    v43 = MEMORY[0x29C2631D0](v42, *(this + 7));
    v44 = *(this + 6);
    v45 = *(this + 7);
    if (v44 == v45)
    {
      v46 = " - CORRECT";
    }

    else
    {
      v46 = " - INCORRECT";
    }

    if (v44 == v45)
    {
      v47 = 10;
    }

    else
    {
      v47 = 12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v46, v47);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\nLTE: ", 6);
    *(v48 + *(*v48 - 24) + 8) = *(v48 + *(*v48 - 24) + 8) & 0xFFFFFFB5 | 8;
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "0x", 2);
    v50 = MEMORY[0x29C263200](v49, *(this + 4));
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, ", mask: ", 8);
    *(v51 + *(*v51 - 24) + 8) = *(v51 + *(*v51 - 24) + 8) & 0xFFFFFFB5 | 8;
    v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "0x", 2);
    v53 = MEMORY[0x29C263200](v52, *(this + 5));
    v54 = *(this + 4);
    v55 = *(this + 5);
    if (v54 == v55)
    {
      v56 = " - CORRECT";
    }

    else
    {
      v56 = " - INCORRECT";
    }

    if (v54 == v55)
    {
      v57 = 10;
    }

    else
    {
      v57 = 12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v56, v57);
  }

  if ((BYTE8(v72) & 0x10) != 0)
  {
    v59 = v72;
    if (v72 < __src[1])
    {
      *&v72 = __src[1];
      v59 = __src[1];
    }

    v60 = __src[0];
    v58 = v59 - __src[0];
    if ((v59 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if ((BYTE8(v72) & 8) == 0)
    {
      v58 = 0;
      a2[23] = 0;
      goto LABEL_50;
    }

    v60 = *(&v67 + 1);
    v58 = *(&v68 + 1) - *(&v67 + 1);
    if (*(&v68 + 1) - *(&v67 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_54:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v58 >= 0x17)
  {
    if ((v58 | 7) == 0x17)
    {
      v61 = 25;
    }

    else
    {
      v61 = (v58 | 7) + 1;
    }

    v62 = operator new(v61);
    *(a2 + 1) = v58;
    *(a2 + 2) = v61 | 0x8000000000000000;
    *a2 = v62;
    a2 = v62;
    goto LABEL_49;
  }

  a2[23] = v58;
  if (v58)
  {
LABEL_49:
    memmove(a2, v60, v58);
  }

LABEL_50:
  a2[v58] = 0;
  *&v65 = *MEMORY[0x29EDC9528];
  v63 = *(MEMORY[0x29EDC9528] + 72);
  *(&v65 + *(v65 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v66 = v63;
  *(&v66 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v71) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v66 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v67);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2632B0](v73);
}

_BYTE *radio::RFCalibration_t::RFCalibration_t(_BYTE *this)
{
  *this = 2;
  return this;
}

{
  *this = 2;
  return this;
}

BOOL radio::RFCalibration_t::fill(uint64_t a1, const __CFDictionary **a2)
{
  v2 = *a2;
  if (!v2)
  {
    return 0;
  }

  v13[0] = 0xAAAAAAAAAAAAAAAALL;
  v13[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v13, v2);
  Bool = ctu::cf::map_adapter::getBool(v13, @"BasebandRFCalibrationPresentStatus");
  *a1 = Bool;
  if (Bool)
  {
    *(a1 + 2) = ctu::cf::map_adapter::getInt(v13, @"BasebandGSMCalibrationStatus");
    *(a1 + 4) = ctu::cf::map_adapter::getInt(v13, @"BasebandGSMCalibrationMask");
    *(a1 + 8) = ctu::cf::map_adapter::getInt(v13, @"BasebandCDMACalibrationStatus");
    *(a1 + 12) = ctu::cf::map_adapter::getInt(v13, @"BasebandCDMACalibrationMask");
    *(a1 + 16) = ctu::cf::map_adapter::getInt(v13, @"BasebandWCDMACalibrationStatus");
    *(a1 + 20) = ctu::cf::map_adapter::getInt(v13, @"BasebandWCDMACalibrationMask");
    *(a1 + 24) = ctu::cf::map_adapter::getInt(v13, @"BasebandTDSCDMACalibrationStatus");
    *(a1 + 28) = ctu::cf::map_adapter::getInt(v13, @"BasebandTDSCDMACalibrationMask");
    valuePtr = 0xAAAAAAAAAAAAAAAALL;
    v5 = ctu::cf::map_adapter::copyCFNumberRef(v13, @"BasebandLTECalibrationStatus");
    v6 = v5;
    if (v5)
    {
      Value = CFNumberGetValue(v5, kCFNumberSInt64Type, &valuePtr);
      v8 = Value != 0;
      if (Value)
      {
        *(a1 + 32) = valuePtr;
      }

      CFRelease(v6);
      valuePtr = 0;
    }

    else
    {
      v8 = 1;
    }

    v10 = ctu::cf::map_adapter::copyCFNumberRef(v13, @"BasebandLTECalibrationMask");
    v11 = v10;
    if (v10)
    {
      if (CFNumberGetValue(v10, kCFNumberSInt64Type, &valuePtr))
      {
        *(a1 + 40) = valuePtr;
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v11);
    }
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x29C2630A0](v13);
  return v8;
}

const char *radio::asString(_DWORD *a1)
{
  v1 = *a1 - 1;
  if (v1 > 4)
  {
    return "Other";
  }

  else
  {
    return off_29EE5A850[v1];
  }
}

const char *radio::asString(_BYTE *a1)
{
  v1 = "Invalid";
  if (!*a1)
  {
    v1 = "Disabled";
  }

  if (*a1 == 1)
  {
    return "Enabled";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "Invalid";
  if (!*a1)
  {
    v1 = "Disabled";
  }

  if (*a1 == 1)
  {
    return "Enabled";
  }

  else
  {
    return v1;
  }
}

uint64_t radio::BasebandProperties::create(const __CFDictionary **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0xAAAAAAAAAAAAAA00;
  }

  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v7, v1);
  ctu::cf::MakeCFString::MakeCFString(&v8, "kBasebandPropertyCoredumpSupported");
  Bool = ctu::cf::map_adapter::getBool(v7, v8);
  MEMORY[0x29C263060](&v8);
  ctu::cf::MakeCFString::MakeCFString(&v8, "kBasebandPropertyPowerSequenceIndex");
  Int = ctu::cf::map_adapter::getInt(v7, v8);
  MEMORY[0x29C263060](&v8);
  ctu::cf::MakeCFString::MakeCFString(&v8, "kBasebandPropertyBasebandVersion");
  v4 = ctu::cf::map_adapter::getInt(v7, v8);
  MEMORY[0x29C263060](&v8);
  MEMORY[0x29C2630A0](v7);
  v5 = 256;
  if (!Bool)
  {
    v5 = 0;
  }

  return (Int << 16) | (v4 << 32) | v5 | 1;
}

void sub_296D6D438(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  MEMORY[0x29C263060](va1);
  MEMORY[0x29C2630A0](va);
  _Unwind_Resume(a1);
}

void radio::BasebandProperties::toDict(radio::BasebandProperties *this@<X0>, __CFDictionary **a2@<X8>)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  ctu::cf::insert<char const*,BOOL>(Mutable, "kBasebandPropertyCoredumpSupported", *(this + 1), v4, v6);
  v7 = *(this + 1);
  valuePtr = 0;
  ctu::cf::convert_copy(&valuePtr, "kBasebandPropertyPowerSequenceIndex", 0x8000100, v4, v8);
  v9 = valuePtr;
  valuePtr = v7;
  v10 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  v12 = v10;
  if (v9 && v10)
  {
    CFDictionaryAddValue(Mutable, v9, v10);
  }

  else if (!v10)
  {
    goto LABEL_6;
  }

  CFRelease(v12);
LABEL_6:
  if (v9)
  {
    CFRelease(v9);
  }

  v13 = *(this + 1);
  valuePtr = 0;
  ctu::cf::convert_copy(&valuePtr, "kBasebandPropertyBasebandVersion", 0x8000100, v4, v11);
  v14 = valuePtr;
  valuePtr = v13;
  v15 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  v16 = v15;
  if (v14 && v15)
  {
    CFDictionaryAddValue(Mutable, v14, v15);
  }

  else if (!v15)
  {
    goto LABEL_13;
  }

  CFRelease(v16);
LABEL_13:
  if (v14)
  {
    CFRelease(v14);
  }

  if (Mutable)
  {
    v17 = CFGetTypeID(Mutable);
    if (v17 == CFDictionaryGetTypeID())
    {
      *a2 = Mutable;
      CFRetain(Mutable);
    }

    else
    {
      *a2 = 0;
    }

    CFRelease(Mutable);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_296D6D644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a11);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a9);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<radio::OpMode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E04F48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::OpMode>::__on_zero_shared(void *a1)
{
  v2 = a1[4];
  a1[5] = v2;
  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
    v2 = a1[4];
  }

  if (v2)
  {
    a1[5] = v2;

    operator delete(v2);
  }
}

uint64_t ctu::cf::insert<char const*,BOOL>(__CFDictionary *a1, const __CFString **a2, int a3, uint64_t a4, const __CFAllocator *a5)
{
  key = 0;
  ctu::cf::convert_copy(&key, a2, 0x8000100, a4, a5);
  v7 = key;
  v8 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v8 = MEMORY[0x29EDB8EF8];
  }

  v9 = *v8;
  key = *v8;
  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v10)
  {
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, v7, v9);
  }

  CFRelease(v9);
LABEL_13:
  if (v7)
  {
    CFRelease(v7);
  }

  return v11;
}

void sub_296D6D850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  _Unwind_Resume(a1);
}

void ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t radio::CommandDriver::CommandDriver(uint64_t a1, dispatch_object_t *a2, void *a3)
{
  v46 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1E04F98;
  v5 = (a1 + 8);
  v6 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  ctu::OsLogContext::OsLogContext(&v40, "com.apple.telephony.abm", "radio.drv");
  if (v6)
  {
    dispatch_retain(v6);
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v8 = dispatch_queue_create_with_target_V2("radio.drv", initially_inactive, v6);
  dispatch_set_qos_class_floor(v8, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v8);
  *v5 = 0;
  v5[1] = 0;
  *(a1 + 24) = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  *(a1 + 32) = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C263000](a1 + 40, v39);
  MEMORY[0x29C263010](v39);
  ctu::OsLogContext::~OsLogContext(&v40);
  if (v6)
  {
    dispatch_release(v6);
  }

  *a1 = &unk_2A1E04F98;
  *(a1 + 48) = &unk_2A1E05270;
  v9 = operator new(0x28uLL);
  v10 = operator new(0x20uLL);
  v40 = &v40;
  v41 = &v40;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = &v44;
  v11 = operator new(0x40uLL);
  *v11 = v11;
  v11[1] = v11;
  v11[5] = 0;
  v11[4] = 0;
  v11[2] = 0;
  v11[3] = v11 + 4;
  *v10 = v11;
  *(v10 + 1) = 0;
  v12 = operator new(0x18uLL);
  v12[1] = 0x100000001;
  *v12 = &unk_2A1E05350;
  v12[2] = v11;
  *(v10 + 1) = v12;
  v13 = operator new(1uLL);
  *(v10 + 2) = v13;
  *(v10 + 3) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::optional_last_value<void>,boost::signals2::optional_last_value<void>>(v10 + 16, v13, v10 + 3);
  *v9 = v10;
  v9[1] = 0;
  v14 = operator new(0x18uLL);
  *(v14 + 1) = 0x100000001;
  *v14 = &unk_2A1E053B0;
  *(v14 + 2) = v10;
  v9[1] = v14;
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v44);
  if (v42)
  {
    v15 = v41;
    v16 = *(v40 + 8);
    v17 = *v41;
    *(v17 + 8) = v16;
    *v16 = v17;
    v42 = 0;
    if (v15 != &v40)
    {
      do
      {
        v18 = v15[1];
        v19 = v15[3];
        if (v19)
        {
          if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v19 + 16))(v19);
            if (atomic_fetch_add(v19 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v19 + 24))(v19);
            }
          }
        }

        operator delete(v15);
        v15 = v18;
      }

      while (v18 != &v40);
    }
  }

  v9[2] = **v9;
  v20 = operator new(0x40uLL);
  pthread_mutex_init(v20, 0);
  v9[4] = 0;
  v9[3] = v20;
  boost::detail::sp_pointer_construct<boost::signals2::mutex,boost::signals2::mutex>((v9 + 3), v20, v9 + 4);
  *(a1 + 64) = 0;
  *(a1 + 56) = v9;
  v21 = operator new(0x18uLL);
  v21[1] = 0x100000001;
  *v21 = &unk_2A1E05410;
  v21[2] = v9;
  *(a1 + 64) = v21;
  *(a1 + 72) = &unk_2A1E052E0;
  v22 = operator new(0x28uLL);
  v23 = operator new(0x20uLL);
  v40 = &v40;
  v41 = &v40;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = &v44;
  v24 = operator new(0x40uLL);
  *v24 = v24;
  v24[1] = v24;
  v24[5] = 0;
  v24[4] = 0;
  v24[2] = 0;
  v24[3] = v24 + 4;
  *v23 = v24;
  *(v23 + 1) = 0;
  v25 = operator new(0x18uLL);
  v25[1] = 0x100000001;
  *v25 = &unk_2A1E05470;
  v25[2] = v24;
  *(v23 + 1) = v25;
  v26 = operator new(1uLL);
  *(v23 + 2) = v26;
  *(v23 + 3) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::optional_last_value<void>,boost::signals2::optional_last_value<void>>(v23 + 16, v26, v23 + 3);
  *v22 = v23;
  v22[1] = 0;
  v27 = operator new(0x18uLL);
  *(v27 + 1) = 0x100000001;
  *v27 = &unk_2A1E054D0;
  *(v27 + 2) = v23;
  v22[1] = v27;
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v44);
  if (v42)
  {
    v28 = v41;
    v29 = *(v40 + 8);
    v30 = *v41;
    *(v30 + 8) = v29;
    *v29 = v30;
    v42 = 0;
    if (v28 != &v40)
    {
      do
      {
        v31 = v28[1];
        v32 = v28[3];
        if (v32)
        {
          if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v32 + 16))(v32);
            if (atomic_fetch_add(v32 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v32 + 24))(v32);
            }
          }
        }

        operator delete(v28);
        v28 = v31;
      }

      while (v31 != &v40);
    }
  }

  v22[2] = **v22;
  v33 = operator new(0x40uLL);
  pthread_mutex_init(v33, 0);
  v22[4] = 0;
  v22[3] = v33;
  boost::detail::sp_pointer_construct<boost::signals2::mutex,boost::signals2::mutex>((v22 + 3), v33, v22 + 4);
  *(a1 + 88) = 0;
  *(a1 + 80) = v22;
  v34 = operator new(0x18uLL);
  v34[1] = 0x100000001;
  *v34 = &unk_2A1E05530;
  v34[2] = v22;
  *(a1 + 88) = v34;
  *(a1 + 96) = a1 + 96;
  *(a1 + 104) = a1 + 96;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 120;
  *(a1 + 128) = a1 + 120;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  v35 = operator new(0x50uLL);
  *(v35 + 1) = 0;
  *(v35 + 2) = 0;
  *v35 = &unk_2A1E04F48;
  *(v35 + 40) = 0u;
  *(v35 + 56) = 0u;
  *(v35 + 9) = 0;
  *(v35 + 24) = 0u;
  *(a1 + 160) = v35 + 24;
  *(a1 + 168) = v35;
  radio::OpMode::init((v35 + 24));
  *(a1 + 176) = *a3;
  v36 = a3[1];
  *(a1 + 184) = v36;
  if (v36)
  {
    atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 231) = 9;
  strcpy((a1 + 208), "radio.drv");
  v37 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296D6DF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v10 + 160);
  dispatch::callback<void({block_pointer})(BOOL,std::vector<unsigned char>,std::vector<unsigned char>,std::vector<unsigned char>)>::~callback(v10 + 144);
  std::list<dispatch::block<BOOL({block_pointer})(BOOL)>>::~list(v14);
  std::list<dispatch::block<BOOL({block_pointer})(radio::OperatingMode)>>::~list(v12);
  boost::signals2::signal<void (),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::~signal(v13);
  boost::signals2::signal<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::~signal(a10);
  MEMORY[0x29C263010](v10 + 40);
  ctu::SharedSynchronizable<coex::CommandDriver>::~SharedSynchronizable(v11);
  _Unwind_Resume(a1);
}

uint64_t *std::list<dispatch::block<BOOL({block_pointer})(BOOL)>>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v7 = v2[1];
        v6 = v2[2];
        if (v6)
        {
          _Block_release(v6);
        }

        operator delete(v2);
        v2 = v7;
      }

      while (v7 != a1);
    }
  }

  return a1;
}

uint64_t *std::list<dispatch::block<BOOL({block_pointer})(radio::OperatingMode)>>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v7 = v2[1];
        v6 = v2[2];
        if (v6)
        {
          _Block_release(v6);
        }

        operator delete(v2);
        v2 = v7;
      }

      while (v7 != a1);
    }
  }

  return a1;
}

void *boost::signals2::signal<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E052E0;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

{
  *result = &unk_2A1E052E0;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void *boost::signals2::signal<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E05270;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

{
  *result = &unk_2A1E05270;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

uint64_t radio::CommandDriver::getName(radio::CommandDriver *this)
{
  result = this + 208;
  if (*(this + 231) < 0)
  {
    return *result;
  }

  return result;
}

void *radio::CommandDriver::watchOperatingMode_sync(uint64_t a1, void **a2)
{
  v4 = operator new(0x18uLL);
  *v4 = 0;
  v4[1] = 0;
  result = *a2;
  if (*a2)
  {
    result = _Block_copy(result);
  }

  v7 = *(a1 + 96);
  v6 = (a1 + 96);
  v4[1] = v6;
  v4[2] = result;
  *v4 = v7;
  *(v7 + 8) = v4;
  *v6 = v4;
  ++v6[2];
  return result;
}

void radio::CommandDriver::watchOperatingMode(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = _Block_copy(*a2);
    v5 = *(a2 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN5radio13CommandDriver18watchOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_1;
  if (v4)
  {
    v12 = _Block_copy(v4);
    object = v5;
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12 = 0;
  object = v5;
  if (v5)
  {
LABEL_6:
    dispatch_retain(v5);
  }

LABEL_7:
  v6 = _Block_copy(aBlock);
  v7 = v6;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN5radio13CommandDriver18watchOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_3;
  v9[3] = &__block_descriptor_tmp_5;
  v9[4] = a1;
  if (!v6)
  {
    v10 = 0;
    ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped((a1 + 8), v9);
    v8 = v10;
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v10 = _Block_copy(v6);
  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped((a1 + 8), v9);
  v8 = v10;
  if (v10)
  {
LABEL_15:
    _Block_release(v8);
  }

LABEL_16:
  if (v7)
  {
    _Block_release(v7);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v12)
  {
    _Block_release(v12);
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  if (v4)
  {
    _Block_release(v4);
  }
}

uint64_t ___ZN5radio13CommandDriver18watchOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(uint64_t a1, int a2)
{
  if (!*(a1 + 32) || !*(a1 + 40))
  {
    return 0;
  }

  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  block[0] = @"KeyBasebandOperatingMode";
  if (@"KeyBasebandOperatingMode")
  {
    CFRetain(@"KeyBasebandOperatingMode");
  }

  valuePtr = a2;
  v6 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
  v7 = v6;
  v17 = v6;
  if (@"KeyBasebandOperatingMode")
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    CFDictionaryAddValue(Mutable, @"KeyBasebandOperatingMode", v6);
LABEL_13:
    CFRelease(v7);
    goto LABEL_14;
  }

  if (v6)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (@"KeyBasebandOperatingMode")
  {
    CFRelease(@"KeyBasebandOperatingMode");
  }

  if (Mutable)
  {
    CFRetain(Mutable);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = _Block_copy(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 40);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_120;
  if (v11)
  {
    aBlock = _Block_copy(v11);
    v15 = 0;
    cf = Mutable;
    if (!Mutable)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  aBlock = 0;
  v15 = 0;
  cf = Mutable;
  if (Mutable)
  {
LABEL_25:
    CFRetain(Mutable);
  }

LABEL_26:
  dispatch_async(v12, block);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
    CFRelease(Mutable);
  }

  return 1;
}

void sub_296D6E974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, const void *a17)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a17);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a9);
  _Unwind_Resume(a1);
}

void sub_296D6E9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a9);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void __copy_helper_block_e8_32c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_32c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ___ZN5radio13CommandDriver18watchOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = _Block_copy(v1);
  }

  else
  {
    v3 = 0;
  }

  v4 = operator new(0x18uLL);
  *v4 = 0;
  v4[1] = 0;
  if (v3)
  {
    v5 = _Block_copy(v3);
  }

  else
  {
    v5 = 0;
  }

  v4[2] = v5;
  v7 = *(v2 + 96);
  v6 = (v2 + 96);
  *v4 = v7;
  v4[1] = v6;
  *(v7 + 8) = v4;
  *v6 = v4;
  ++v6[2];
  if (v3)
  {
    _Block_release(v3);
  }
}

void sub_296D6EBA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_40c65_ZTSN8dispatch5blockIU13block_pointerFbN5radio13OperatingModeEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c65_ZTSN8dispatch5blockIU13block_pointerFbN5radio13OperatingModeEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void radio::CommandDriver::handleOperatingModeChanged_sync(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2 > 7)
    {
      v21 = "Unknown";
    }

    else
    {
      v21 = off_29EE5A960[a2];
    }

    LODWORD(v22) = 136315138;
    *(&v22 + 4) = v21;
    _os_log_debug_impl(&dword_296D5F000, v4, OS_LOG_TYPE_DEBUG, "#D Notifying operating mode: %s", &v22, 0xCu);
  }

  v5 = a1 + 96;
  v23 = *(a1 + 112);
  v6 = v23;
  v22 = *(a1 + 96);
  *(a1 + 96) = &v22;
  *(a1 + 104) = &v22;
  *(a1 + 112) = 0;
  if (v6)
  {
    **(&v22 + 1) = &v22;
    v7 = (v22 + 8);
  }

  else
  {
    v7 = &v22 + 1;
    *&v22 = &v22;
  }

  *v7 = &v22;
  *(a1 + 96) = a1 + 96;
  *(a1 + 104) = v5;
  v8 = *(&v22 + 1);
  if (*(&v22 + 1) != &v22)
  {
    do
    {
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = _Block_copy(v9);
      }

      else
      {
        v10 = 0;
      }

      if ((*(v10 + 2))(v10, a2))
      {
        v11 = _Block_copy(v10);
        v12 = operator new(0x18uLL);
        *v12 = 0;
        v12[1] = 0;
        v13 = v11 ? _Block_copy(v11) : 0;
        v12[1] = v5;
        v12[2] = v13;
        v14 = *(a1 + 96);
        *v12 = v14;
        *(v14 + 8) = v12;
        *(a1 + 96) = v12;
        ++*(a1 + 112);
        if (v11)
        {
          _Block_release(v11);
        }
      }

      _Block_release(v10);
      v8 = *(v8 + 8);
    }

    while (v8 != &v22);
    v6 = v23;
  }

  if (v6)
  {
    v15 = *(&v22 + 1);
    v16 = *(v22 + 8);
    v17 = **(&v22 + 1);
    *(v17 + 8) = v16;
    *v16 = v17;
    v23 = 0;
    if (v15 != &v22)
    {
      do
      {
        v20 = *(v15 + 1);
        v19 = *(v15 + 2);
        if (v19)
        {
          _Block_release(v19);
        }

        operator delete(v15);
        v15 = v20;
      }

      while (v20 != &v22);
    }
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_296D6EE44(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *radio::CommandDriver::watchClientState_sync(void *result, const void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    v4 = operator new(0x18uLL);
    *v4 = 0;
    v4[1] = 0;
    result = _Block_copy(v2);
    v5 = v3[15];
    v3 += 15;
    v4[1] = v3;
    v4[2] = result;
    *v4 = v5;
    *(v5 + 8) = v4;
    *v3 = v4;
    ++v3[2];
  }

  return result;
}

void radio::CommandDriver::handleClientStateChanged_sync(radio::CommandDriver *this, uint64_t a2)
{
  v4 = this + 120;
  v21 = *(this + 17);
  v5 = v21;
  v20 = *(this + 120);
  *(this + 15) = &v20;
  *(this + 16) = &v20;
  *(this + 17) = 0;
  if (v5)
  {
    **(&v20 + 1) = &v20;
    v6 = (v20 + 8);
  }

  else
  {
    v6 = &v20 + 1;
    *&v20 = &v20;
  }

  *v6 = &v20;
  *(this + 15) = this + 120;
  *(this + 16) = v4;
  for (i = *(&v20 + 1); i != &v20; i = *(i + 8))
  {
    v8 = *(i + 16);
    if (v8)
    {
      v9 = _Block_copy(v8);
    }

    else
    {
      v9 = 0;
    }

    if ((*(v9 + 2))(v9, a2))
    {
      v10 = _Block_copy(v9);
      if (v10)
      {
        v11 = operator new(0x18uLL);
        *v11 = 0;
        v11[1] = 0;
        v12 = _Block_copy(v10);
        v11[1] = v4;
        v11[2] = v12;
        v13 = *(this + 15);
        *v11 = v13;
        *(v13 + 8) = v11;
        *(this + 15) = v11;
        ++*(this + 17);
        _Block_release(v10);
      }
    }

    _Block_release(v9);
  }

  if ((a2 & 1) == 0)
  {
    v14 = *(this + 20);
    *v14 = 8;
    *(v14 + 2) = 0;
  }

  if (v21)
  {
    v15 = *(&v20 + 1);
    v16 = *(v20 + 8);
    v17 = **(&v20 + 1);
    *(v17 + 8) = v16;
    *v16 = v17;
    v21 = 0;
    if (v15 != &v20)
    {
      do
      {
        v19 = *(v15 + 1);
        v18 = *(v15 + 2);
        if (v18)
        {
          _Block_release(v18);
        }

        operator delete(v15);
        v15 = v19;
      }

      while (v19 != &v20);
    }
  }
}